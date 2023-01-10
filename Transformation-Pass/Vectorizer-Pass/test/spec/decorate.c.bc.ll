; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/decorate.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/decorate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._FrameInfo = type { i64, i64, i64, i64, i64, i64 }
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

@.str = private unnamed_addr constant [87 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/decorate.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"FrameIsLessThanImageSize\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Frame/Image\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"ImageSizeMustExceedBevelWidth\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Raise/Image\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BorderImage(ptr noundef %image, ptr nocapture noundef readonly %border_info, ptr noundef %exception) local_unnamed_addr #0 !dbg !646 {
entry:
  %frame_info = alloca %struct._FrameInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !656, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata ptr %border_info, metadata !657, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata ptr %exception, metadata !658, metadata !DIExpression()), !dbg !672
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %frame_info) #7, !dbg !673
  call void @llvm.dbg.declare(metadata ptr %frame_info, metadata !661, metadata !DIExpression()), !dbg !674
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !675
  %0 = load i32, ptr %debug, align 8, !dbg !675, !tbaa !677
  %cmp.not = icmp eq i32 %0, 0, !dbg !696
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !697

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !698
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 115, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !699
  br label %if.end, !dbg !700

if.end:                                           ; preds = %if.then, %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !701
  %1 = load i64, ptr %columns, align 8, !dbg !701, !tbaa !702
  %2 = load i64, ptr %border_info, align 8, !dbg !703, !tbaa !704
  %shl = shl i64 %2, 1, !dbg !705
  %add = add i64 %shl, %1, !dbg !706
  store i64 %add, ptr %frame_info, align 8, !dbg !707, !tbaa !708
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !710
  %3 = load i64, ptr %rows, align 8, !dbg !710, !tbaa !711
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %border_info, i64 0, i32 1, !dbg !712
  %4 = load i64, ptr %height, align 8, !dbg !712, !tbaa !713
  %shl2 = shl i64 %4, 1, !dbg !714
  %add3 = add i64 %shl2, %3, !dbg !715
  %height4 = getelementptr inbounds %struct._FrameInfo, ptr %frame_info, i64 0, i32 1, !dbg !716
  store i64 %add3, ptr %height4, align 8, !dbg !717, !tbaa !718
  %x = getelementptr inbounds %struct._FrameInfo, ptr %frame_info, i64 0, i32 2, !dbg !719
  store i64 %2, ptr %x, align 8, !dbg !720, !tbaa !721
  %y = getelementptr inbounds %struct._FrameInfo, ptr %frame_info, i64 0, i32 3, !dbg !722
  store i64 %4, ptr %y, align 8, !dbg !723, !tbaa !724
  %inner_bevel = getelementptr inbounds %struct._FrameInfo, ptr %frame_info, i64 0, i32 4, !dbg !725
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %inner_bevel, i8 0, i64 16, i1 false), !dbg !726
  %call7 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #7, !dbg !727
  call void @llvm.dbg.value(metadata ptr %call7, metadata !660, metadata !DIExpression()), !dbg !672
  %cmp8 = icmp eq ptr %call7, null, !dbg !728
  br i1 %cmp8, label %cleanup, label %if.end10, !dbg !730

if.end10:                                         ; preds = %if.end
  %matte_color = getelementptr inbounds %struct._Image, ptr %call7, i64 0, i32 14, !dbg !731
  %border_color = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 13, !dbg !732
  %5 = load i64, ptr %border_color, align 8, !dbg !732
  store i64 %5, ptr %matte_color, align 8, !dbg !732
  %call11 = call ptr @FrameImage(ptr noundef nonnull %call7, ptr noundef nonnull %frame_info, ptr noundef %exception), !dbg !733
  call void @llvm.dbg.value(metadata ptr %call11, metadata !659, metadata !DIExpression()), !dbg !672
  %call12 = tail call ptr @DestroyImage(ptr noundef nonnull %call7) #7, !dbg !734
  call void @llvm.dbg.value(metadata ptr %call12, metadata !660, metadata !DIExpression()), !dbg !672
  %cmp13.not = icmp eq ptr %call11, null, !dbg !735
  br i1 %cmp13.not, label %cleanup, label %if.then14, !dbg !737

if.then14:                                        ; preds = %if.end10
  %matte_color15 = getelementptr inbounds %struct._Image, ptr %call11, i64 0, i32 14, !dbg !738
  %matte_color16 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 14, !dbg !739
  %6 = load i64, ptr %matte_color16, align 8, !dbg !739
  store i64 %6, ptr %matte_color15, align 8, !dbg !739
  br label %cleanup, !dbg !740

cleanup:                                          ; preds = %if.end10, %if.then14, %if.end
  %retval.0 = phi ptr [ null, %if.end ], [ %call11, %if.then14 ], [ null, %if.end10 ], !dbg !672
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %frame_info) #7, !dbg !741
  ret ptr %retval.0, !dbg !741
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !742 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !749 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local ptr @FrameImage(ptr noundef %image, ptr nocapture noundef readonly %frame_info, ptr noundef %exception) local_unnamed_addr #0 !dbg !753 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %accentuate = alloca %struct._MagickPixelPacket, align 8
  %border = alloca %struct._MagickPixelPacket, align 8
  %highlight = alloca %struct._MagickPixelPacket, align 8
  %interior = alloca %struct._MagickPixelPacket, align 8
  %matte = alloca %struct._MagickPixelPacket, align 8
  %shadow = alloca %struct._MagickPixelPacket, align 8
  %trough = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !759, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata ptr %frame_info, metadata !760, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata ptr %exception, metadata !761, metadata !DIExpression()), !dbg !821
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %accentuate) #7, !dbg !822
  call void @llvm.dbg.declare(metadata ptr %accentuate, metadata !771, metadata !DIExpression()), !dbg !823
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %border) #7, !dbg !822
  call void @llvm.dbg.declare(metadata ptr %border, metadata !785, metadata !DIExpression()), !dbg !824
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %highlight) #7, !dbg !822
  call void @llvm.dbg.declare(metadata ptr %highlight, metadata !786, metadata !DIExpression()), !dbg !825
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %interior) #7, !dbg !822
  call void @llvm.dbg.declare(metadata ptr %interior, metadata !787, metadata !DIExpression()), !dbg !826
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %matte) #7, !dbg !822
  call void @llvm.dbg.declare(metadata ptr %matte, metadata !788, metadata !DIExpression()), !dbg !827
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %shadow) #7, !dbg !822
  call void @llvm.dbg.declare(metadata ptr %shadow, metadata !789, metadata !DIExpression()), !dbg !828
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %trough) #7, !dbg !822
  call void @llvm.dbg.declare(metadata ptr %trough, metadata !790, metadata !DIExpression()), !dbg !829
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !830
  %0 = load i32, ptr %debug, align 8, !dbg !830, !tbaa !677
  %cmp.not = icmp eq i32 %0, 0, !dbg !832
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !833

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !834
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 209, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !835
  br label %if.end, !dbg !836

if.end:                                           ; preds = %if.then, %entry
  %outer_bevel = getelementptr inbounds %struct._FrameInfo, ptr %frame_info, i64 0, i32 5, !dbg !837
  %1 = load i64, ptr %outer_bevel, align 8, !dbg !837, !tbaa !839
  %cmp1 = icmp slt i64 %1, 0, !dbg !840
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !841

lor.lhs.false:                                    ; preds = %if.end
  %inner_bevel = getelementptr inbounds %struct._FrameInfo, ptr %frame_info, i64 0, i32 4, !dbg !842
  %2 = load i64, ptr %inner_bevel, align 8, !dbg !842, !tbaa !843
  %cmp2 = icmp slt i64 %2, 0, !dbg !844
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !845

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %filename4 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !846
  %call6 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 212, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename4) #7, !dbg !846
  br label %cleanup791, !dbg !846

if.end7:                                          ; preds = %lor.lhs.false
  %add = add nuw nsw i64 %2, %1, !dbg !848
  call void @llvm.dbg.value(metadata i64 %add, metadata !792, metadata !DIExpression()), !dbg !821
  %3 = load i64, ptr %frame_info, align 8, !dbg !849, !tbaa !708
  %x11 = getelementptr inbounds %struct._FrameInfo, ptr %frame_info, i64 0, i32 2, !dbg !850
  %4 = load i64, ptr %x11, align 8, !dbg !850, !tbaa !721
  %5 = add i64 %add, %4, !dbg !851
  %sub12 = sub i64 %3, %5, !dbg !851
  call void @llvm.dbg.value(metadata i64 %sub12, metadata !794, metadata !DIExpression()), !dbg !821
  %height13 = getelementptr inbounds %struct._FrameInfo, ptr %frame_info, i64 0, i32 1, !dbg !852
  %6 = load i64, ptr %height13, align 8, !dbg !852, !tbaa !718
  %y14 = getelementptr inbounds %struct._FrameInfo, ptr %frame_info, i64 0, i32 3, !dbg !853
  call void @llvm.dbg.value(metadata !DIArgList(i64 %6, i64 %add, i64 undef), metadata !793, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !821
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !854
  %7 = load i64, ptr %columns, align 8, !dbg !854, !tbaa !702
  %cmp17 = icmp ult i64 %sub12, %7, !dbg !856
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !857

lor.lhs.false18:                                  ; preds = %if.end7
  %8 = load i64, ptr %y14, align 8, !dbg !853, !tbaa !724
  call void @llvm.dbg.value(metadata !DIArgList(i64 %6, i64 %add, i64 %8), metadata !793, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !821
  %9 = add i64 %add, %8, !dbg !858
  %sub16 = sub i64 %6, %9, !dbg !858
  call void @llvm.dbg.value(metadata i64 %sub16, metadata !793, metadata !DIExpression()), !dbg !821
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !859
  %10 = load i64, ptr %rows, align 8, !dbg !859, !tbaa !711
  %cmp19 = icmp ult i64 %sub16, %10, !dbg !860
  br i1 %cmp19, label %if.then20, label %if.end24, !dbg !861

if.then20:                                        ; preds = %lor.lhs.false18, %if.end7
  %filename21 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !862
  %call23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 217, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename21) #7, !dbg !862
  br label %cleanup791, !dbg !862

if.end24:                                         ; preds = %lor.lhs.false18
  %call27 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %3, i64 noundef %6, i32 noundef 1, ptr noundef %exception) #7, !dbg !864
  call void @llvm.dbg.value(metadata ptr %call27, metadata !768, metadata !DIExpression()), !dbg !821
  %cmp28 = icmp eq ptr %call27, null, !dbg !865
  br i1 %cmp28, label %cleanup791, label %if.end30, !dbg !867

if.end30:                                         ; preds = %if.end24
  %call31 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %call27, i32 noundef 1) #7, !dbg !868
  %cmp32 = icmp eq i32 %call31, 0, !dbg !870
  br i1 %cmp32, label %if.then33, label %if.end36, !dbg !871

if.then33:                                        ; preds = %if.end30
  %exception34 = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 58, !dbg !872
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception34) #7, !dbg !874
  %call35 = tail call ptr @DestroyImage(ptr noundef nonnull %call27) #7, !dbg !875
  call void @llvm.dbg.value(metadata ptr %call35, metadata !768, metadata !DIExpression()), !dbg !821
  br label %cleanup791, !dbg !876

if.end36:                                         ; preds = %if.end30
  %border_color = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 13, !dbg !877
  call void @llvm.dbg.value(metadata ptr %border_color, metadata !879, metadata !DIExpression()), !dbg !888
  %red1.i = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 13, i32 2, !dbg !890
  %11 = load i16, ptr %red1.i, align 2, !dbg !890, !tbaa !891
  %conv.i = uitofp i16 %11 to float, !dbg !892
  call void @llvm.dbg.value(metadata float %conv.i, metadata !887, metadata !DIExpression()), !dbg !888
  %green2.i = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 13, i32 1, !dbg !893
  %12 = load i16, ptr %green2.i, align 2, !dbg !893, !tbaa !894
  %conv3.i = uitofp i16 %12 to float, !dbg !895
  call void @llvm.dbg.value(metadata float %conv3.i, metadata !886, metadata !DIExpression()), !dbg !888
  %13 = load i16, ptr %border_color, align 2, !dbg !896, !tbaa !897
  call void @llvm.dbg.value(metadata float undef, metadata !885, metadata !DIExpression()), !dbg !888
  %sub.i = fsub float %conv.i, %conv3.i, !dbg !898
  call void @llvm.dbg.value(metadata float %sub.i, metadata !900, metadata !DIExpression()), !dbg !906
  %cmp.i.i = fcmp olt float %sub.i, 0.000000e+00, !dbg !908
  br i1 %cmp.i.i, label %cond.true.i.i, label %AbsolutePixelValue.exit.i, !dbg !909

cond.true.i.i:                                    ; preds = %if.end36
  %fneg.i.i = fneg float %sub.i, !dbg !910
  br label %AbsolutePixelValue.exit.i, !dbg !909

AbsolutePixelValue.exit.i:                        ; preds = %cond.true.i.i, %if.end36
  %cond.i.i = phi float [ %fneg.i.i, %cond.true.i.i ], [ %sub.i, %if.end36 ], !dbg !909
  %conv6.i = fpext float %cond.i.i to double, !dbg !911
  %cmp.i = fcmp olt double %conv6.i, 1.000000e-15, !dbg !912
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true, !dbg !913

land.lhs.true.i:                                  ; preds = %AbsolutePixelValue.exit.i
  %conv5.i = uitofp i16 %13 to float, !dbg !914
  call void @llvm.dbg.value(metadata float %conv5.i, metadata !885, metadata !DIExpression()), !dbg !888
  %sub8.i = fsub float %conv3.i, %conv5.i, !dbg !915
  call void @llvm.dbg.value(metadata float %sub8.i, metadata !900, metadata !DIExpression()), !dbg !916
  %cmp.i18.i = fcmp olt float %sub8.i, 0.000000e+00, !dbg !918
  br i1 %cmp.i18.i, label %cond.true.i20.i, label %AbsolutePixelValue.exit22.i, !dbg !919

cond.true.i20.i:                                  ; preds = %land.lhs.true.i
  %fneg.i19.i = fneg float %sub8.i, !dbg !920
  br label %AbsolutePixelValue.exit22.i, !dbg !919

AbsolutePixelValue.exit22.i:                      ; preds = %cond.true.i20.i, %land.lhs.true.i
  %cond.i21.i = phi float [ %fneg.i19.i, %cond.true.i20.i ], [ %sub8.i, %land.lhs.true.i ], !dbg !919
  %conv10.i = fpext float %cond.i21.i to double, !dbg !921
  %cmp11.i = fcmp olt double %conv10.i, 1.000000e-15, !dbg !922
  br i1 %cmp11.i, label %if.end43, label %land.lhs.true, !dbg !923

land.lhs.true:                                    ; preds = %AbsolutePixelValue.exit.i, %AbsolutePixelValue.exit22.i
  %colorspace = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 1, !dbg !924
  %14 = load i32, ptr %colorspace, align 4, !dbg !924, !tbaa !925
  call void @llvm.dbg.value(metadata i32 %14, metadata !926, metadata !DIExpression()), !dbg !933
  switch i32 %14, label %if.end43 [
    i32 19, label %if.then41
    i32 17, label %if.then41
    i32 2, label %if.then41
  ], !dbg !935

if.then41:                                        ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true
  %call42 = tail call i32 @SetImageColorspace(ptr noundef nonnull %call27, i32 noundef 13) #7, !dbg !937
  br label %if.end43, !dbg !938

if.end43:                                         ; preds = %land.lhs.true, %AbsolutePixelValue.exit22.i, %if.then41
  %opacity = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 13, i32 3, !dbg !939
  %15 = load i16, ptr %opacity, align 2, !dbg !939, !tbaa !941
  %cmp45.not = icmp eq i16 %15, 0, !dbg !942
  br i1 %cmp45.not, label %if.end53, label %land.lhs.true47, !dbg !943

land.lhs.true47:                                  ; preds = %if.end43
  %matte48 = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 6, !dbg !944
  %16 = load i32, ptr %matte48, align 8, !dbg !944, !tbaa !945
  %cmp49 = icmp eq i32 %16, 0, !dbg !946
  br i1 %cmp49, label %if.then51, label %if.end53, !dbg !947

if.then51:                                        ; preds = %land.lhs.true47
  %call52 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %call27, i32 noundef 6) #7, !dbg !948
  br label %if.end53, !dbg !949

if.end53:                                         ; preds = %if.then51, %land.lhs.true47, %if.end43
  %page = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 26, !dbg !950
  %page54 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, !dbg !951
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %page, ptr noundef nonnull align 8 dereferenceable(32) %page54, i64 32, i1 false), !dbg !951, !tbaa.struct !952
  %17 = load i64, ptr %page54, align 8, !dbg !954, !tbaa !956
  %cmp57.not = icmp eq i64 %17, 0, !dbg !957
  br i1 %cmp57.not, label %if.end77, label %land.lhs.true59, !dbg !958

land.lhs.true59:                                  ; preds = %if.end53
  %height61 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 1, !dbg !959
  %18 = load i64, ptr %height61, align 8, !dbg !959, !tbaa !960
  %cmp62.not = icmp eq i64 %18, 0, !dbg !961
  br i1 %cmp62.not, label %if.end77, label %if.then64, !dbg !962

if.then64:                                        ; preds = %land.lhs.true59
  %columns65 = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 7, !dbg !963
  %19 = load i64, ptr %columns65, align 8, !dbg !963, !tbaa !702
  %20 = load i64, ptr %columns, align 8, !dbg !965, !tbaa !702
  %sub67 = sub i64 %19, %20, !dbg !966
  %21 = load i64, ptr %page, align 8, !dbg !967, !tbaa !956
  %add70 = add i64 %sub67, %21, !dbg !967
  store i64 %add70, ptr %page, align 8, !dbg !967, !tbaa !956
  %rows71 = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 8, !dbg !968
  %22 = load i64, ptr %rows71, align 8, !dbg !968, !tbaa !711
  %23 = load i64, ptr %rows, align 8, !dbg !969, !tbaa !711
  %sub73 = sub i64 %22, %23, !dbg !970
  %height75 = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 26, i32 1, !dbg !971
  %24 = load i64, ptr %height75, align 8, !dbg !972, !tbaa !960
  %add76 = add i64 %sub73, %24, !dbg !972
  store i64 %add76, ptr %height75, align 8, !dbg !972, !tbaa !960
  br label %if.end77, !dbg !973

if.end77:                                         ; preds = %if.then64, %land.lhs.true59, %if.end53
  call void @GetMagickPixelPacket(ptr noundef nonnull %call27, ptr noundef nonnull %interior) #7, !dbg !974
  %border_color78 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 13, !dbg !975
  call void @llvm.dbg.value(metadata ptr undef, metadata !976, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr %border_color78, metadata !983, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr null, metadata !984, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr %interior, metadata !985, metadata !DIExpression()), !dbg !986
  %red.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 13, i32 2, !dbg !988
  %25 = load i16, ptr %red.i, align 2, !dbg !988, !tbaa !891
  %conv.i1249 = uitofp i16 %25 to float, !dbg !989
  %red1.i1250 = getelementptr inbounds %struct._MagickPixelPacket, ptr %interior, i64 0, i32 5, !dbg !990
  store float %conv.i1249, ptr %red1.i1250, align 8, !dbg !991, !tbaa !992
  %green.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 13, i32 1, !dbg !995
  %26 = load i16, ptr %green.i, align 2, !dbg !995, !tbaa !894
  %conv2.i = uitofp i16 %26 to float, !dbg !996
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %interior, i64 0, i32 6, !dbg !997
  store float %conv2.i, ptr %green3.i, align 4, !dbg !998, !tbaa !999
  %27 = load i16, ptr %border_color78, align 2, !dbg !1000, !tbaa !897
  %conv4.i = uitofp i16 %27 to float, !dbg !1001
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %interior, i64 0, i32 7, !dbg !1002
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !1003, !tbaa !1004
  %opacity.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 13, i32 3, !dbg !1005
  %28 = load i16, ptr %opacity.i, align 2, !dbg !1005, !tbaa !1006
  %conv6.i1251 = uitofp i16 %28 to float, !dbg !1007
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %interior, i64 0, i32 8, !dbg !1008
  store float %conv6.i1251, ptr %opacity7.i, align 4, !dbg !1009, !tbaa !1010
  call void @GetMagickPixelPacket(ptr noundef nonnull %call27, ptr noundef nonnull %matte) #7, !dbg !1011
  %colorspace79 = getelementptr inbounds %struct._MagickPixelPacket, ptr %matte, i64 0, i32 1, !dbg !1012
  store i32 13, ptr %colorspace79, align 4, !dbg !1013, !tbaa !1014
  %matte_color = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 14, !dbg !1015
  call void @llvm.dbg.value(metadata ptr undef, metadata !976, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata ptr %matte_color, metadata !983, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata ptr null, metadata !984, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata ptr %matte, metadata !985, metadata !DIExpression()), !dbg !1016
  %red.i1252 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 14, i32 2, !dbg !1018
  %29 = load i16, ptr %red.i1252, align 2, !dbg !1018, !tbaa !891
  %conv.i1253 = uitofp i16 %29 to float, !dbg !1019
  %red1.i1254 = getelementptr inbounds %struct._MagickPixelPacket, ptr %matte, i64 0, i32 5, !dbg !1020
  store float %conv.i1253, ptr %red1.i1254, align 8, !dbg !1021, !tbaa !992
  %green.i1255 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 14, i32 1, !dbg !1022
  %30 = load i16, ptr %green.i1255, align 2, !dbg !1022, !tbaa !894
  %conv2.i1256 = uitofp i16 %30 to float, !dbg !1023
  %green3.i1257 = getelementptr inbounds %struct._MagickPixelPacket, ptr %matte, i64 0, i32 6, !dbg !1024
  store float %conv2.i1256, ptr %green3.i1257, align 4, !dbg !1025, !tbaa !999
  %31 = load i16, ptr %matte_color, align 2, !dbg !1026, !tbaa !897
  %conv4.i1258 = uitofp i16 %31 to float, !dbg !1027
  %blue5.i1259 = getelementptr inbounds %struct._MagickPixelPacket, ptr %matte, i64 0, i32 7, !dbg !1028
  store float %conv4.i1258, ptr %blue5.i1259, align 8, !dbg !1029, !tbaa !1004
  %opacity.i1260 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 14, i32 3, !dbg !1030
  %32 = load i16, ptr %opacity.i1260, align 2, !dbg !1030, !tbaa !1006
  %conv6.i1261 = uitofp i16 %32 to float, !dbg !1031
  %opacity7.i1262 = getelementptr inbounds %struct._MagickPixelPacket, ptr %matte, i64 0, i32 8, !dbg !1032
  store float %conv6.i1261, ptr %opacity7.i1262, align 4, !dbg !1033, !tbaa !1010
  call void @GetMagickPixelPacket(ptr noundef nonnull %call27, ptr noundef nonnull %border) #7, !dbg !1034
  %colorspace80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %border, i64 0, i32 1, !dbg !1035
  store i32 13, ptr %colorspace80, align 4, !dbg !1036, !tbaa !1014
  call void @llvm.dbg.value(metadata ptr undef, metadata !976, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata ptr %border_color78, metadata !983, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata ptr null, metadata !984, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata ptr %border, metadata !985, metadata !DIExpression()), !dbg !1037
  %33 = load i16, ptr %red.i, align 2, !dbg !1039, !tbaa !891
  %conv.i1264 = uitofp i16 %33 to float, !dbg !1040
  %red1.i1265 = getelementptr inbounds %struct._MagickPixelPacket, ptr %border, i64 0, i32 5, !dbg !1041
  store float %conv.i1264, ptr %red1.i1265, align 8, !dbg !1042, !tbaa !992
  %34 = load i16, ptr %green.i, align 2, !dbg !1043, !tbaa !894
  %conv2.i1267 = uitofp i16 %34 to float, !dbg !1044
  %green3.i1268 = getelementptr inbounds %struct._MagickPixelPacket, ptr %border, i64 0, i32 6, !dbg !1045
  store float %conv2.i1267, ptr %green3.i1268, align 4, !dbg !1046, !tbaa !999
  %35 = load i16, ptr %border_color78, align 2, !dbg !1047, !tbaa !897
  %conv4.i1269 = uitofp i16 %35 to float, !dbg !1048
  %blue5.i1270 = getelementptr inbounds %struct._MagickPixelPacket, ptr %border, i64 0, i32 7, !dbg !1049
  store float %conv4.i1269, ptr %blue5.i1270, align 8, !dbg !1050, !tbaa !1004
  %36 = load i16, ptr %opacity.i, align 2, !dbg !1051, !tbaa !1006
  %conv6.i1272 = uitofp i16 %36 to float, !dbg !1052
  %opacity7.i1273 = getelementptr inbounds %struct._MagickPixelPacket, ptr %border, i64 0, i32 8, !dbg !1053
  store float %conv6.i1272, ptr %opacity7.i1273, align 4, !dbg !1054, !tbaa !1010
  call void @GetMagickPixelPacket(ptr noundef nonnull %call27, ptr noundef nonnull %accentuate) #7, !dbg !1055
  %37 = load float, ptr %red1.i1254, align 8, !dbg !1056, !tbaa !992
  %38 = call float @llvm.fmuladd.f32(float %37, float 4.497500e+04, float 0x41D413EBE0000000), !dbg !1057
  %conv90 = fpext float %38 to double, !dbg !1058
  %mul = fmul double %conv90, 0x3EF0001000100010, !dbg !1059
  %conv91 = fptrunc double %mul to float, !dbg !1060
  %red92 = getelementptr inbounds %struct._MagickPixelPacket, ptr %accentuate, i64 0, i32 5, !dbg !1061
  store float %conv91, ptr %red92, align 8, !dbg !1062, !tbaa !992
  %39 = load float, ptr %green3.i1257, align 4, !dbg !1063, !tbaa !999
  %40 = call float @llvm.fmuladd.f32(float %39, float 4.497500e+04, float 0x41D413EBE0000000), !dbg !1064
  %conv102 = fpext float %40 to double, !dbg !1065
  %mul103 = fmul double %conv102, 0x3EF0001000100010, !dbg !1066
  %conv104 = fptrunc double %mul103 to float, !dbg !1067
  %green105 = getelementptr inbounds %struct._MagickPixelPacket, ptr %accentuate, i64 0, i32 6, !dbg !1068
  store float %conv104, ptr %green105, align 4, !dbg !1069, !tbaa !999
  %41 = load float, ptr %blue5.i1259, align 8, !dbg !1070, !tbaa !1004
  %42 = call float @llvm.fmuladd.f32(float %41, float 4.497500e+04, float 0x41D413EBE0000000), !dbg !1071
  %conv115 = fpext float %42 to double, !dbg !1072
  %mul116 = fmul double %conv115, 0x3EF0001000100010, !dbg !1073
  %conv117 = fptrunc double %mul116 to float, !dbg !1074
  %blue118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %accentuate, i64 0, i32 7, !dbg !1075
  store float %conv117, ptr %blue118, align 8, !dbg !1076, !tbaa !1004
  %43 = load float, ptr %opacity7.i1262, align 4, !dbg !1077, !tbaa !1010
  %opacity120 = getelementptr inbounds %struct._MagickPixelPacket, ptr %accentuate, i64 0, i32 8, !dbg !1078
  store float %43, ptr %opacity120, align 4, !dbg !1079, !tbaa !1010
  call void @GetMagickPixelPacket(ptr noundef nonnull %call27, ptr noundef nonnull %highlight) #7, !dbg !1080
  %44 = load float, ptr %red1.i1254, align 8, !dbg !1081, !tbaa !992
  %45 = call float @llvm.fmuladd.f32(float %44, float 3.341000e+04, float 0x41DF5F20A0000000), !dbg !1082
  %conv131 = fpext float %45 to double, !dbg !1083
  %mul132 = fmul double %conv131, 0x3EF0001000100010, !dbg !1084
  %conv133 = fptrunc double %mul132 to float, !dbg !1085
  %red134 = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 5, !dbg !1086
  store float %conv133, ptr %red134, align 8, !dbg !1087, !tbaa !992
  %46 = load float, ptr %green3.i1257, align 4, !dbg !1088, !tbaa !999
  %47 = call float @llvm.fmuladd.f32(float %46, float 3.341000e+04, float 0x41DF5F20A0000000), !dbg !1089
  %conv145 = fpext float %47 to double, !dbg !1090
  %mul146 = fmul double %conv145, 0x3EF0001000100010, !dbg !1091
  %conv147 = fptrunc double %mul146 to float, !dbg !1092
  %green148 = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 6, !dbg !1093
  store float %conv147, ptr %green148, align 4, !dbg !1094, !tbaa !999
  %48 = load float, ptr %blue5.i1259, align 8, !dbg !1095, !tbaa !1004
  %49 = call float @llvm.fmuladd.f32(float %48, float 3.341000e+04, float 0x41DF5F20A0000000), !dbg !1096
  %conv159 = fpext float %49 to double, !dbg !1097
  %mul160 = fmul double %conv159, 0x3EF0001000100010, !dbg !1098
  %conv161 = fptrunc double %mul160 to float, !dbg !1099
  %blue162 = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 7, !dbg !1100
  store float %conv161, ptr %blue162, align 8, !dbg !1101, !tbaa !1004
  %50 = load float, ptr %opacity7.i1262, align 4, !dbg !1102, !tbaa !1010
  %opacity164 = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 8, !dbg !1103
  store float %50, ptr %opacity164, align 4, !dbg !1104, !tbaa !1010
  call void @GetMagickPixelPacket(ptr noundef nonnull %call27, ptr noundef nonnull %shadow) #7, !dbg !1105
  %51 = load float, ptr %red1.i1254, align 8, !dbg !1106, !tbaa !992
  %conv166 = fpext float %51 to double, !dbg !1107
  %mul167 = fmul double %conv166, 0x3EF0001000100010, !dbg !1108
  %mul171 = fmul double %mul167, 3.469500e+04, !dbg !1109
  %conv172 = fptrunc double %mul171 to float, !dbg !1110
  %red173 = getelementptr inbounds %struct._MagickPixelPacket, ptr %shadow, i64 0, i32 5, !dbg !1111
  store float %conv172, ptr %red173, align 8, !dbg !1112, !tbaa !992
  %52 = load float, ptr %green3.i1257, align 4, !dbg !1113, !tbaa !999
  %conv175 = fpext float %52 to double, !dbg !1114
  %mul176 = fmul double %conv175, 0x3EF0001000100010, !dbg !1115
  %mul180 = fmul double %mul176, 3.469500e+04, !dbg !1116
  %conv181 = fptrunc double %mul180 to float, !dbg !1117
  %green182 = getelementptr inbounds %struct._MagickPixelPacket, ptr %shadow, i64 0, i32 6, !dbg !1118
  store float %conv181, ptr %green182, align 4, !dbg !1119, !tbaa !999
  %53 = load float, ptr %blue5.i1259, align 8, !dbg !1120, !tbaa !1004
  %conv184 = fpext float %53 to double, !dbg !1121
  %mul185 = fmul double %conv184, 0x3EF0001000100010, !dbg !1122
  %mul189 = fmul double %mul185, 3.469500e+04, !dbg !1123
  %conv190 = fptrunc double %mul189 to float, !dbg !1124
  %blue191 = getelementptr inbounds %struct._MagickPixelPacket, ptr %shadow, i64 0, i32 7, !dbg !1125
  store float %conv190, ptr %blue191, align 8, !dbg !1126, !tbaa !1004
  %54 = load float, ptr %opacity7.i1262, align 4, !dbg !1127, !tbaa !1010
  %opacity193 = getelementptr inbounds %struct._MagickPixelPacket, ptr %shadow, i64 0, i32 8, !dbg !1128
  store float %54, ptr %opacity193, align 4, !dbg !1129, !tbaa !1010
  call void @GetMagickPixelPacket(ptr noundef nonnull %call27, ptr noundef nonnull %trough) #7, !dbg !1130
  %55 = load float, ptr %red1.i1254, align 8, !dbg !1131, !tbaa !992
  %conv195 = fpext float %55 to double, !dbg !1132
  %mul196 = fmul double %conv195, 0x3EF0001000100010, !dbg !1133
  %mul200 = fmul double %mul196, 2.827000e+04, !dbg !1134
  %conv201 = fptrunc double %mul200 to float, !dbg !1135
  %red202 = getelementptr inbounds %struct._MagickPixelPacket, ptr %trough, i64 0, i32 5, !dbg !1136
  store float %conv201, ptr %red202, align 8, !dbg !1137, !tbaa !992
  %56 = load float, ptr %green3.i1257, align 4, !dbg !1138, !tbaa !999
  %conv204 = fpext float %56 to double, !dbg !1139
  %mul205 = fmul double %conv204, 0x3EF0001000100010, !dbg !1140
  %mul209 = fmul double %mul205, 2.827000e+04, !dbg !1141
  %conv210 = fptrunc double %mul209 to float, !dbg !1142
  %green211 = getelementptr inbounds %struct._MagickPixelPacket, ptr %trough, i64 0, i32 6, !dbg !1143
  store float %conv210, ptr %green211, align 4, !dbg !1144, !tbaa !999
  %57 = load float, ptr %blue5.i1259, align 8, !dbg !1145, !tbaa !1004
  %conv213 = fpext float %57 to double, !dbg !1146
  %mul214 = fmul double %conv213, 0x3EF0001000100010, !dbg !1147
  %mul218 = fmul double %mul214, 2.827000e+04, !dbg !1148
  %conv219 = fptrunc double %mul218 to float, !dbg !1149
  %blue220 = getelementptr inbounds %struct._MagickPixelPacket, ptr %trough, i64 0, i32 7, !dbg !1150
  store float %conv219, ptr %blue220, align 8, !dbg !1151, !tbaa !1004
  %58 = load float, ptr %opacity7.i1262, align 4, !dbg !1152, !tbaa !1010
  %opacity222 = getelementptr inbounds %struct._MagickPixelPacket, ptr %trough, i64 0, i32 8, !dbg !1153
  store float %58, ptr %opacity222, align 4, !dbg !1154, !tbaa !1010
  %colorspace223 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1155
  %59 = load i32, ptr %colorspace223, align 4, !dbg !1155, !tbaa !925
  %cmp224 = icmp eq i32 %59, 12, !dbg !1157
  br i1 %cmp224, label %if.then226, label %if.end227, !dbg !1158

if.then226:                                       ; preds = %if.end77
  call void @llvm.dbg.value(metadata ptr %interior, metadata !1159, metadata !DIExpression()) #7, !dbg !1171
  %colorspace.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %interior, i64 0, i32 1, !dbg !1174
  %60 = load i32, ptr %colorspace.i, align 4, !dbg !1174, !tbaa !1014
  %cmp.not.i = icmp eq i32 %60, 13, !dbg !1176
  %61 = load float, ptr %red1.i1250, align 8, !dbg !1177, !tbaa !992
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i, !dbg !1178

if.then.i:                                        ; preds = %if.then226
  %conv.i1274 = fpext float %61 to double, !dbg !1179
  %mul.i = fmul double %conv.i1274, 0x3EF0001000100010, !dbg !1181
  %conv2.i1275 = fptrunc double %mul.i to float, !dbg !1182
  call void @llvm.dbg.value(metadata float %conv2.i1275, metadata !1169, metadata !DIExpression()) #7, !dbg !1171
  %62 = load float, ptr %green3.i, align 4, !dbg !1183, !tbaa !999
  %conv4.i1277 = fpext float %62 to double, !dbg !1184
  %mul5.i = fmul double %conv4.i1277, 0x3EF0001000100010, !dbg !1185
  %conv6.i1278 = fptrunc double %mul5.i to float, !dbg !1186
  call void @llvm.dbg.value(metadata float %conv6.i1278, metadata !1167, metadata !DIExpression()) #7, !dbg !1171
  %63 = load float, ptr %blue5.i, align 8, !dbg !1187, !tbaa !1004
  %conv8.i = fpext float %63 to double, !dbg !1188
  %mul9.i = fmul double %conv8.i, 0x3EF0001000100010, !dbg !1189
  %conv10.i1279 = fptrunc double %mul9.i to float, !dbg !1190
  call void @llvm.dbg.value(metadata float %conv10.i1279, metadata !1165, metadata !DIExpression()) #7, !dbg !1171
  br label %if.end.i1280, !dbg !1191

if.else.i:                                        ; preds = %if.then226
  %call.i = call float @DecodePixelGamma(float noundef %61) #8, !dbg !1192
  call void @llvm.dbg.value(metadata float %call.i, metadata !1169, metadata !DIExpression()) #7, !dbg !1171
  %64 = load float, ptr %green3.i, align 4, !dbg !1194, !tbaa !999
  %call13.i = call float @DecodePixelGamma(float noundef %64) #8, !dbg !1195
  call void @llvm.dbg.value(metadata float %call13.i, metadata !1167, metadata !DIExpression()) #7, !dbg !1171
  %65 = load float, ptr %blue5.i, align 8, !dbg !1196, !tbaa !1004
  %call15.i = call float @DecodePixelGamma(float noundef %65) #8, !dbg !1197
  call void @llvm.dbg.value(metadata float %call15.i, metadata !1165, metadata !DIExpression()) #7, !dbg !1171
  br label %if.end.i1280

if.end.i1280:                                     ; preds = %if.else.i, %if.then.i
  %blue.0.i = phi float [ %conv10.i1279, %if.then.i ], [ %call15.i, %if.else.i ], !dbg !1177
  %green.0.i = phi float [ %conv6.i1278, %if.then.i ], [ %call13.i, %if.else.i ], !dbg !1177
  %red.0.i = phi float [ %conv2.i1275, %if.then.i ], [ %call.i, %if.else.i ], !dbg !1177
  call void @llvm.dbg.value(metadata float %red.0.i, metadata !1169, metadata !DIExpression()) #7, !dbg !1171
  call void @llvm.dbg.value(metadata float %green.0.i, metadata !1167, metadata !DIExpression()) #7, !dbg !1171
  call void @llvm.dbg.value(metadata float %blue.0.i, metadata !1165, metadata !DIExpression()) #7, !dbg !1171
  %66 = call float @llvm.fabs.f32(float %red.0.i) #7, !dbg !1198
  %67 = fpext float %66 to double, !dbg !1198
  %cmp17.i = fcmp olt double %67, 1.000000e-15, !dbg !1200
  br i1 %cmp17.i, label %land.lhs.true.i1281, label %if.end27.i, !dbg !1201

land.lhs.true.i1281:                              ; preds = %if.end.i1280
  %68 = call float @llvm.fabs.f32(float %green.0.i) #7, !dbg !1202
  %69 = fpext float %68 to double, !dbg !1202
  %cmp20.i = fcmp olt double %69, 1.000000e-15, !dbg !1203
  br i1 %cmp20.i, label %land.lhs.true22.i, label %if.end27.i, !dbg !1204

land.lhs.true22.i:                                ; preds = %land.lhs.true.i1281
  %70 = call float @llvm.fabs.f32(float %blue.0.i) #7, !dbg !1205
  %71 = fpext float %70 to double, !dbg !1205
  %cmp24.i = fcmp olt double %71, 1.000000e-15, !dbg !1206
  br i1 %cmp24.i, label %ConvertRGBToCMYK.exit, label %if.end27.i, !dbg !1207

if.end27.i:                                       ; preds = %land.lhs.true22.i, %land.lhs.true.i1281, %if.end.i1280
  %conv29.i = fsub float 1.000000e+00, %red.0.i, !dbg !1208
  call void @llvm.dbg.value(metadata float %conv29.i, metadata !1166, metadata !DIExpression()) #7, !dbg !1171
  %conv32.i = fsub float 1.000000e+00, %green.0.i, !dbg !1209
  call void @llvm.dbg.value(metadata float %conv32.i, metadata !1168, metadata !DIExpression()) #7, !dbg !1171
  %conv35.i = fsub float 1.000000e+00, %blue.0.i, !dbg !1210
  call void @llvm.dbg.value(metadata float %conv35.i, metadata !1170, metadata !DIExpression()) #7, !dbg !1171
  call void @llvm.dbg.value(metadata float %conv29.i, metadata !1164, metadata !DIExpression()) #7, !dbg !1171
  %cmp36.i = fcmp olt float %conv32.i, %conv29.i, !dbg !1211
  br i1 %cmp36.i, label %if.then38.i, label %if.end39.i, !dbg !1213

if.then38.i:                                      ; preds = %if.end27.i
  call void @llvm.dbg.value(metadata float %conv32.i, metadata !1164, metadata !DIExpression()) #7, !dbg !1171
  br label %if.end39.i, !dbg !1214

if.end39.i:                                       ; preds = %if.then38.i, %if.end27.i
  %black.0.i = phi float [ %conv32.i, %if.then38.i ], [ %conv29.i, %if.end27.i ], !dbg !1171
  call void @llvm.dbg.value(metadata float %black.0.i, metadata !1164, metadata !DIExpression()) #7, !dbg !1171
  %cmp40.i = fcmp olt float %conv35.i, %black.0.i, !dbg !1215
  br i1 %cmp40.i, label %if.then42.i, label %if.end43.i, !dbg !1217

if.then42.i:                                      ; preds = %if.end39.i
  call void @llvm.dbg.value(metadata float %conv35.i, metadata !1164, metadata !DIExpression()) #7, !dbg !1171
  br label %if.end43.i, !dbg !1218

if.end43.i:                                       ; preds = %if.then42.i, %if.end39.i
  %black.1.i = phi float [ %conv35.i, %if.then42.i ], [ %black.0.i, %if.end39.i ], !dbg !1171
  call void @llvm.dbg.value(metadata float %black.1.i, metadata !1164, metadata !DIExpression()) #7, !dbg !1171
  %sub44.i = fsub float %conv29.i, %black.1.i, !dbg !1219
  %conv45.i = fpext float %sub44.i to double, !dbg !1220
  %conv46.i = fpext float %black.1.i to double, !dbg !1221
  %sub47.i = fsub double 1.000000e+00, %conv46.i, !dbg !1222
  %div.i = fdiv double %conv45.i, %sub47.i, !dbg !1223
  %conv48.i = fptrunc double %div.i to float, !dbg !1224
  call void @llvm.dbg.value(metadata float %conv48.i, metadata !1166, metadata !DIExpression()) #7, !dbg !1171
  %sub49.i = fsub float %conv32.i, %black.1.i, !dbg !1225
  %conv50.i = fpext float %sub49.i to double, !dbg !1226
  %div53.i = fdiv double %conv50.i, %sub47.i, !dbg !1227
  %conv54.i = fptrunc double %div53.i to float, !dbg !1228
  call void @llvm.dbg.value(metadata float %conv54.i, metadata !1168, metadata !DIExpression()) #7, !dbg !1171
  %sub55.i = fsub float %conv35.i, %black.1.i, !dbg !1229
  %conv56.i = fpext float %sub55.i to double, !dbg !1230
  %div59.i = fdiv double %conv56.i, %sub47.i, !dbg !1231
  %conv60.i = fptrunc double %div59.i to float, !dbg !1232
  call void @llvm.dbg.value(metadata float %conv60.i, metadata !1170, metadata !DIExpression()) #7, !dbg !1171
  store i32 12, ptr %colorspace.i, align 4, !dbg !1233, !tbaa !1014
  %mul62.i = fmul float %conv48.i, 6.553500e+04, !dbg !1234
  store float %mul62.i, ptr %red1.i1250, align 8, !dbg !1235, !tbaa !992
  %mul64.i = fmul float %conv54.i, 6.553500e+04, !dbg !1236
  store float %mul64.i, ptr %green3.i, align 4, !dbg !1237, !tbaa !999
  %mul66.i = fmul float %conv60.i, 6.553500e+04, !dbg !1238
  store float %mul66.i, ptr %blue5.i, align 8, !dbg !1239, !tbaa !1004
  %mul68.i = fmul float %black.1.i, 6.553500e+04, !dbg !1240
  br label %ConvertRGBToCMYK.exit, !dbg !1241

ConvertRGBToCMYK.exit:                            ; preds = %land.lhs.true22.i, %if.end43.i
  %mul68.sink.i = phi float [ %mul68.i, %if.end43.i ], [ 6.553500e+04, %land.lhs.true22.i ]
  %index69.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %interior, i64 0, i32 9, !dbg !1171
  store float %mul68.sink.i, ptr %index69.i, align 8, !dbg !1171, !tbaa !1242
  call void @llvm.dbg.value(metadata ptr %matte, metadata !1159, metadata !DIExpression()) #7, !dbg !1243
  %72 = load i32, ptr %colorspace79, align 4, !dbg !1245, !tbaa !1014
  %cmp.not.i1283 = icmp eq i32 %72, 13, !dbg !1246
  %73 = load float, ptr %red1.i1254, align 8, !dbg !1247, !tbaa !992
  br i1 %cmp.not.i1283, label %if.else.i1302, label %if.then.i1296, !dbg !1248

if.then.i1296:                                    ; preds = %ConvertRGBToCMYK.exit
  %conv.i1285 = fpext float %73 to double, !dbg !1249
  %mul.i1286 = fmul double %conv.i1285, 0x3EF0001000100010, !dbg !1250
  %conv2.i1287 = fptrunc double %mul.i1286 to float, !dbg !1251
  call void @llvm.dbg.value(metadata float %conv2.i1287, metadata !1169, metadata !DIExpression()) #7, !dbg !1243
  %74 = load float, ptr %green3.i1257, align 4, !dbg !1252, !tbaa !999
  %conv4.i1289 = fpext float %74 to double, !dbg !1253
  %mul5.i1290 = fmul double %conv4.i1289, 0x3EF0001000100010, !dbg !1254
  %conv6.i1291 = fptrunc double %mul5.i1290 to float, !dbg !1255
  call void @llvm.dbg.value(metadata float %conv6.i1291, metadata !1167, metadata !DIExpression()) #7, !dbg !1243
  %75 = load float, ptr %blue5.i1259, align 8, !dbg !1256, !tbaa !1004
  %conv8.i1293 = fpext float %75 to double, !dbg !1257
  %mul9.i1294 = fmul double %conv8.i1293, 0x3EF0001000100010, !dbg !1258
  %conv10.i1295 = fptrunc double %mul9.i1294 to float, !dbg !1259
  call void @llvm.dbg.value(metadata float %conv10.i1295, metadata !1165, metadata !DIExpression()) #7, !dbg !1243
  br label %if.end.i1307, !dbg !1260

if.else.i1302:                                    ; preds = %ConvertRGBToCMYK.exit
  %call.i1297 = call float @DecodePixelGamma(float noundef %73) #8, !dbg !1261
  call void @llvm.dbg.value(metadata float %call.i1297, metadata !1169, metadata !DIExpression()) #7, !dbg !1243
  %76 = load float, ptr %green3.i1257, align 4, !dbg !1262, !tbaa !999
  %call13.i1299 = call float @DecodePixelGamma(float noundef %76) #8, !dbg !1263
  call void @llvm.dbg.value(metadata float %call13.i1299, metadata !1167, metadata !DIExpression()) #7, !dbg !1243
  %77 = load float, ptr %blue5.i1259, align 8, !dbg !1264, !tbaa !1004
  %call15.i1301 = call float @DecodePixelGamma(float noundef %77) #8, !dbg !1265
  call void @llvm.dbg.value(metadata float %call15.i1301, metadata !1165, metadata !DIExpression()) #7, !dbg !1243
  br label %if.end.i1307

if.end.i1307:                                     ; preds = %if.else.i1302, %if.then.i1296
  %blue.0.i1303 = phi float [ %conv10.i1295, %if.then.i1296 ], [ %call15.i1301, %if.else.i1302 ], !dbg !1247
  %green.0.i1304 = phi float [ %conv6.i1291, %if.then.i1296 ], [ %call13.i1299, %if.else.i1302 ], !dbg !1247
  %red.0.i1305 = phi float [ %conv2.i1287, %if.then.i1296 ], [ %call.i1297, %if.else.i1302 ], !dbg !1247
  call void @llvm.dbg.value(metadata float %red.0.i1305, metadata !1169, metadata !DIExpression()) #7, !dbg !1243
  call void @llvm.dbg.value(metadata float %green.0.i1304, metadata !1167, metadata !DIExpression()) #7, !dbg !1243
  call void @llvm.dbg.value(metadata float %blue.0.i1303, metadata !1165, metadata !DIExpression()) #7, !dbg !1243
  %78 = call float @llvm.fabs.f32(float %red.0.i1305) #7, !dbg !1266
  %79 = fpext float %78 to double, !dbg !1266
  %cmp17.i1306 = fcmp olt double %79, 1.000000e-15, !dbg !1267
  br i1 %cmp17.i1306, label %land.lhs.true.i1309, label %if.end27.i1316, !dbg !1268

land.lhs.true.i1309:                              ; preds = %if.end.i1307
  %80 = call float @llvm.fabs.f32(float %green.0.i1304) #7, !dbg !1269
  %81 = fpext float %80 to double, !dbg !1269
  %cmp20.i1308 = fcmp olt double %81, 1.000000e-15, !dbg !1270
  br i1 %cmp20.i1308, label %land.lhs.true22.i1311, label %if.end27.i1316, !dbg !1271

land.lhs.true22.i1311:                            ; preds = %land.lhs.true.i1309
  %82 = call float @llvm.fabs.f32(float %blue.0.i1303) #7, !dbg !1272
  %83 = fpext float %82 to double, !dbg !1272
  %cmp24.i1310 = fcmp olt double %83, 1.000000e-15, !dbg !1273
  br i1 %cmp24.i1310, label %ConvertRGBToCMYK.exit1347, label %if.end27.i1316, !dbg !1274

if.end27.i1316:                                   ; preds = %land.lhs.true22.i1311, %land.lhs.true.i1309, %if.end.i1307
  %conv29.i1312 = fsub float 1.000000e+00, %red.0.i1305, !dbg !1275
  call void @llvm.dbg.value(metadata float %conv29.i1312, metadata !1166, metadata !DIExpression()) #7, !dbg !1243
  %conv32.i1313 = fsub float 1.000000e+00, %green.0.i1304, !dbg !1276
  call void @llvm.dbg.value(metadata float %conv32.i1313, metadata !1168, metadata !DIExpression()) #7, !dbg !1243
  %conv35.i1314 = fsub float 1.000000e+00, %blue.0.i1303, !dbg !1277
  call void @llvm.dbg.value(metadata float %conv35.i1314, metadata !1170, metadata !DIExpression()) #7, !dbg !1243
  call void @llvm.dbg.value(metadata float %conv29.i1312, metadata !1164, metadata !DIExpression()) #7, !dbg !1243
  %cmp36.i1315 = fcmp olt float %conv32.i1313, %conv29.i1312, !dbg !1278
  br i1 %cmp36.i1315, label %if.then38.i1317, label %if.end39.i1320, !dbg !1279

if.then38.i1317:                                  ; preds = %if.end27.i1316
  call void @llvm.dbg.value(metadata float %conv32.i1313, metadata !1164, metadata !DIExpression()) #7, !dbg !1243
  br label %if.end39.i1320, !dbg !1280

if.end39.i1320:                                   ; preds = %if.then38.i1317, %if.end27.i1316
  %black.0.i1318 = phi float [ %conv32.i1313, %if.then38.i1317 ], [ %conv29.i1312, %if.end27.i1316 ], !dbg !1243
  call void @llvm.dbg.value(metadata float %black.0.i1318, metadata !1164, metadata !DIExpression()) #7, !dbg !1243
  %cmp40.i1319 = fcmp olt float %conv35.i1314, %black.0.i1318, !dbg !1281
  br i1 %cmp40.i1319, label %if.then42.i1321, label %if.end43.i1344, !dbg !1282

if.then42.i1321:                                  ; preds = %if.end39.i1320
  call void @llvm.dbg.value(metadata float %conv35.i1314, metadata !1164, metadata !DIExpression()) #7, !dbg !1243
  br label %if.end43.i1344, !dbg !1283

if.end43.i1344:                                   ; preds = %if.then42.i1321, %if.end39.i1320
  %black.1.i1322 = phi float [ %conv35.i1314, %if.then42.i1321 ], [ %black.0.i1318, %if.end39.i1320 ], !dbg !1243
  call void @llvm.dbg.value(metadata float %black.1.i1322, metadata !1164, metadata !DIExpression()) #7, !dbg !1243
  %sub44.i1323 = fsub float %conv29.i1312, %black.1.i1322, !dbg !1284
  %conv45.i1324 = fpext float %sub44.i1323 to double, !dbg !1285
  %conv46.i1325 = fpext float %black.1.i1322 to double, !dbg !1286
  %sub47.i1326 = fsub double 1.000000e+00, %conv46.i1325, !dbg !1287
  %div.i1327 = fdiv double %conv45.i1324, %sub47.i1326, !dbg !1288
  %conv48.i1328 = fptrunc double %div.i1327 to float, !dbg !1289
  call void @llvm.dbg.value(metadata float %conv48.i1328, metadata !1166, metadata !DIExpression()) #7, !dbg !1243
  %sub49.i1329 = fsub float %conv32.i1313, %black.1.i1322, !dbg !1290
  %conv50.i1330 = fpext float %sub49.i1329 to double, !dbg !1291
  %div53.i1331 = fdiv double %conv50.i1330, %sub47.i1326, !dbg !1292
  %conv54.i1332 = fptrunc double %div53.i1331 to float, !dbg !1293
  call void @llvm.dbg.value(metadata float %conv54.i1332, metadata !1168, metadata !DIExpression()) #7, !dbg !1243
  %sub55.i1333 = fsub float %conv35.i1314, %black.1.i1322, !dbg !1294
  %conv56.i1334 = fpext float %sub55.i1333 to double, !dbg !1295
  %div59.i1335 = fdiv double %conv56.i1334, %sub47.i1326, !dbg !1296
  %conv60.i1336 = fptrunc double %div59.i1335 to float, !dbg !1297
  call void @llvm.dbg.value(metadata float %conv60.i1336, metadata !1170, metadata !DIExpression()) #7, !dbg !1243
  store i32 12, ptr %colorspace79, align 4, !dbg !1298, !tbaa !1014
  %mul62.i1337 = fmul float %conv48.i1328, 6.553500e+04, !dbg !1299
  store float %mul62.i1337, ptr %red1.i1254, align 8, !dbg !1300, !tbaa !992
  %mul64.i1339 = fmul float %conv54.i1332, 6.553500e+04, !dbg !1301
  store float %mul64.i1339, ptr %green3.i1257, align 4, !dbg !1302, !tbaa !999
  %mul66.i1341 = fmul float %conv60.i1336, 6.553500e+04, !dbg !1303
  store float %mul66.i1341, ptr %blue5.i1259, align 8, !dbg !1304, !tbaa !1004
  %mul68.i1343 = fmul float %black.1.i1322, 6.553500e+04, !dbg !1305
  br label %ConvertRGBToCMYK.exit1347, !dbg !1306

ConvertRGBToCMYK.exit1347:                        ; preds = %land.lhs.true22.i1311, %if.end43.i1344
  %mul68.sink.i1345 = phi float [ %mul68.i1343, %if.end43.i1344 ], [ 6.553500e+04, %land.lhs.true22.i1311 ]
  %index69.i1346 = getelementptr inbounds %struct._MagickPixelPacket, ptr %matte, i64 0, i32 9, !dbg !1243
  store float %mul68.sink.i1345, ptr %index69.i1346, align 8, !dbg !1243, !tbaa !1242
  call void @llvm.dbg.value(metadata ptr %border, metadata !1159, metadata !DIExpression()) #7, !dbg !1307
  %84 = load i32, ptr %colorspace80, align 4, !dbg !1309, !tbaa !1014
  %cmp.not.i1349 = icmp eq i32 %84, 13, !dbg !1310
  %85 = load float, ptr %red1.i1265, align 8, !dbg !1311, !tbaa !992
  br i1 %cmp.not.i1349, label %if.else.i1368, label %if.then.i1362, !dbg !1312

if.then.i1362:                                    ; preds = %ConvertRGBToCMYK.exit1347
  %conv.i1351 = fpext float %85 to double, !dbg !1313
  %mul.i1352 = fmul double %conv.i1351, 0x3EF0001000100010, !dbg !1314
  %conv2.i1353 = fptrunc double %mul.i1352 to float, !dbg !1315
  call void @llvm.dbg.value(metadata float %conv2.i1353, metadata !1169, metadata !DIExpression()) #7, !dbg !1307
  %86 = load float, ptr %green3.i1268, align 4, !dbg !1316, !tbaa !999
  %conv4.i1355 = fpext float %86 to double, !dbg !1317
  %mul5.i1356 = fmul double %conv4.i1355, 0x3EF0001000100010, !dbg !1318
  %conv6.i1357 = fptrunc double %mul5.i1356 to float, !dbg !1319
  call void @llvm.dbg.value(metadata float %conv6.i1357, metadata !1167, metadata !DIExpression()) #7, !dbg !1307
  %87 = load float, ptr %blue5.i1270, align 8, !dbg !1320, !tbaa !1004
  %conv8.i1359 = fpext float %87 to double, !dbg !1321
  %mul9.i1360 = fmul double %conv8.i1359, 0x3EF0001000100010, !dbg !1322
  %conv10.i1361 = fptrunc double %mul9.i1360 to float, !dbg !1323
  call void @llvm.dbg.value(metadata float %conv10.i1361, metadata !1165, metadata !DIExpression()) #7, !dbg !1307
  br label %if.end.i1373, !dbg !1324

if.else.i1368:                                    ; preds = %ConvertRGBToCMYK.exit1347
  %call.i1363 = call float @DecodePixelGamma(float noundef %85) #8, !dbg !1325
  call void @llvm.dbg.value(metadata float %call.i1363, metadata !1169, metadata !DIExpression()) #7, !dbg !1307
  %88 = load float, ptr %green3.i1268, align 4, !dbg !1326, !tbaa !999
  %call13.i1365 = call float @DecodePixelGamma(float noundef %88) #8, !dbg !1327
  call void @llvm.dbg.value(metadata float %call13.i1365, metadata !1167, metadata !DIExpression()) #7, !dbg !1307
  %89 = load float, ptr %blue5.i1270, align 8, !dbg !1328, !tbaa !1004
  %call15.i1367 = call float @DecodePixelGamma(float noundef %89) #8, !dbg !1329
  call void @llvm.dbg.value(metadata float %call15.i1367, metadata !1165, metadata !DIExpression()) #7, !dbg !1307
  br label %if.end.i1373

if.end.i1373:                                     ; preds = %if.else.i1368, %if.then.i1362
  %blue.0.i1369 = phi float [ %conv10.i1361, %if.then.i1362 ], [ %call15.i1367, %if.else.i1368 ], !dbg !1311
  %green.0.i1370 = phi float [ %conv6.i1357, %if.then.i1362 ], [ %call13.i1365, %if.else.i1368 ], !dbg !1311
  %red.0.i1371 = phi float [ %conv2.i1353, %if.then.i1362 ], [ %call.i1363, %if.else.i1368 ], !dbg !1311
  call void @llvm.dbg.value(metadata float %red.0.i1371, metadata !1169, metadata !DIExpression()) #7, !dbg !1307
  call void @llvm.dbg.value(metadata float %green.0.i1370, metadata !1167, metadata !DIExpression()) #7, !dbg !1307
  call void @llvm.dbg.value(metadata float %blue.0.i1369, metadata !1165, metadata !DIExpression()) #7, !dbg !1307
  %90 = call float @llvm.fabs.f32(float %red.0.i1371) #7, !dbg !1330
  %91 = fpext float %90 to double, !dbg !1330
  %cmp17.i1372 = fcmp olt double %91, 1.000000e-15, !dbg !1331
  br i1 %cmp17.i1372, label %land.lhs.true.i1375, label %if.end27.i1382, !dbg !1332

land.lhs.true.i1375:                              ; preds = %if.end.i1373
  %92 = call float @llvm.fabs.f32(float %green.0.i1370) #7, !dbg !1333
  %93 = fpext float %92 to double, !dbg !1333
  %cmp20.i1374 = fcmp olt double %93, 1.000000e-15, !dbg !1334
  br i1 %cmp20.i1374, label %land.lhs.true22.i1377, label %if.end27.i1382, !dbg !1335

land.lhs.true22.i1377:                            ; preds = %land.lhs.true.i1375
  %94 = call float @llvm.fabs.f32(float %blue.0.i1369) #7, !dbg !1336
  %95 = fpext float %94 to double, !dbg !1336
  %cmp24.i1376 = fcmp olt double %95, 1.000000e-15, !dbg !1337
  br i1 %cmp24.i1376, label %ConvertRGBToCMYK.exit1413, label %if.end27.i1382, !dbg !1338

if.end27.i1382:                                   ; preds = %land.lhs.true22.i1377, %land.lhs.true.i1375, %if.end.i1373
  %conv29.i1378 = fsub float 1.000000e+00, %red.0.i1371, !dbg !1339
  call void @llvm.dbg.value(metadata float %conv29.i1378, metadata !1166, metadata !DIExpression()) #7, !dbg !1307
  %conv32.i1379 = fsub float 1.000000e+00, %green.0.i1370, !dbg !1340
  call void @llvm.dbg.value(metadata float %conv32.i1379, metadata !1168, metadata !DIExpression()) #7, !dbg !1307
  %conv35.i1380 = fsub float 1.000000e+00, %blue.0.i1369, !dbg !1341
  call void @llvm.dbg.value(metadata float %conv35.i1380, metadata !1170, metadata !DIExpression()) #7, !dbg !1307
  call void @llvm.dbg.value(metadata float %conv29.i1378, metadata !1164, metadata !DIExpression()) #7, !dbg !1307
  %cmp36.i1381 = fcmp olt float %conv32.i1379, %conv29.i1378, !dbg !1342
  br i1 %cmp36.i1381, label %if.then38.i1383, label %if.end39.i1386, !dbg !1343

if.then38.i1383:                                  ; preds = %if.end27.i1382
  call void @llvm.dbg.value(metadata float %conv32.i1379, metadata !1164, metadata !DIExpression()) #7, !dbg !1307
  br label %if.end39.i1386, !dbg !1344

if.end39.i1386:                                   ; preds = %if.then38.i1383, %if.end27.i1382
  %black.0.i1384 = phi float [ %conv32.i1379, %if.then38.i1383 ], [ %conv29.i1378, %if.end27.i1382 ], !dbg !1307
  call void @llvm.dbg.value(metadata float %black.0.i1384, metadata !1164, metadata !DIExpression()) #7, !dbg !1307
  %cmp40.i1385 = fcmp olt float %conv35.i1380, %black.0.i1384, !dbg !1345
  br i1 %cmp40.i1385, label %if.then42.i1387, label %if.end43.i1410, !dbg !1346

if.then42.i1387:                                  ; preds = %if.end39.i1386
  call void @llvm.dbg.value(metadata float %conv35.i1380, metadata !1164, metadata !DIExpression()) #7, !dbg !1307
  br label %if.end43.i1410, !dbg !1347

if.end43.i1410:                                   ; preds = %if.then42.i1387, %if.end39.i1386
  %black.1.i1388 = phi float [ %conv35.i1380, %if.then42.i1387 ], [ %black.0.i1384, %if.end39.i1386 ], !dbg !1307
  call void @llvm.dbg.value(metadata float %black.1.i1388, metadata !1164, metadata !DIExpression()) #7, !dbg !1307
  %sub44.i1389 = fsub float %conv29.i1378, %black.1.i1388, !dbg !1348
  %conv45.i1390 = fpext float %sub44.i1389 to double, !dbg !1349
  %conv46.i1391 = fpext float %black.1.i1388 to double, !dbg !1350
  %sub47.i1392 = fsub double 1.000000e+00, %conv46.i1391, !dbg !1351
  %div.i1393 = fdiv double %conv45.i1390, %sub47.i1392, !dbg !1352
  %conv48.i1394 = fptrunc double %div.i1393 to float, !dbg !1353
  call void @llvm.dbg.value(metadata float %conv48.i1394, metadata !1166, metadata !DIExpression()) #7, !dbg !1307
  %sub49.i1395 = fsub float %conv32.i1379, %black.1.i1388, !dbg !1354
  %conv50.i1396 = fpext float %sub49.i1395 to double, !dbg !1355
  %div53.i1397 = fdiv double %conv50.i1396, %sub47.i1392, !dbg !1356
  %conv54.i1398 = fptrunc double %div53.i1397 to float, !dbg !1357
  call void @llvm.dbg.value(metadata float %conv54.i1398, metadata !1168, metadata !DIExpression()) #7, !dbg !1307
  %sub55.i1399 = fsub float %conv35.i1380, %black.1.i1388, !dbg !1358
  %conv56.i1400 = fpext float %sub55.i1399 to double, !dbg !1359
  %div59.i1401 = fdiv double %conv56.i1400, %sub47.i1392, !dbg !1360
  %conv60.i1402 = fptrunc double %div59.i1401 to float, !dbg !1361
  call void @llvm.dbg.value(metadata float %conv60.i1402, metadata !1170, metadata !DIExpression()) #7, !dbg !1307
  store i32 12, ptr %colorspace80, align 4, !dbg !1362, !tbaa !1014
  %mul62.i1403 = fmul float %conv48.i1394, 6.553500e+04, !dbg !1363
  store float %mul62.i1403, ptr %red1.i1265, align 8, !dbg !1364, !tbaa !992
  %mul64.i1405 = fmul float %conv54.i1398, 6.553500e+04, !dbg !1365
  store float %mul64.i1405, ptr %green3.i1268, align 4, !dbg !1366, !tbaa !999
  %mul66.i1407 = fmul float %conv60.i1402, 6.553500e+04, !dbg !1367
  store float %mul66.i1407, ptr %blue5.i1270, align 8, !dbg !1368, !tbaa !1004
  %mul68.i1409 = fmul float %black.1.i1388, 6.553500e+04, !dbg !1369
  br label %ConvertRGBToCMYK.exit1413, !dbg !1370

ConvertRGBToCMYK.exit1413:                        ; preds = %land.lhs.true22.i1377, %if.end43.i1410
  %mul68.sink.i1411 = phi float [ %mul68.i1409, %if.end43.i1410 ], [ 6.553500e+04, %land.lhs.true22.i1377 ]
  %index69.i1412 = getelementptr inbounds %struct._MagickPixelPacket, ptr %border, i64 0, i32 9, !dbg !1307
  store float %mul68.sink.i1411, ptr %index69.i1412, align 8, !dbg !1307, !tbaa !1242
  call void @llvm.dbg.value(metadata ptr %accentuate, metadata !1159, metadata !DIExpression()) #7, !dbg !1371
  %colorspace.i1414 = getelementptr inbounds %struct._MagickPixelPacket, ptr %accentuate, i64 0, i32 1, !dbg !1373
  %96 = load i32, ptr %colorspace.i1414, align 4, !dbg !1373, !tbaa !1014
  %cmp.not.i1415 = icmp eq i32 %96, 13, !dbg !1374
  %97 = load float, ptr %red92, align 8, !dbg !1375, !tbaa !992
  br i1 %cmp.not.i1415, label %if.else.i1434, label %if.then.i1428, !dbg !1376

if.then.i1428:                                    ; preds = %ConvertRGBToCMYK.exit1413
  %conv.i1417 = fpext float %97 to double, !dbg !1377
  %mul.i1418 = fmul double %conv.i1417, 0x3EF0001000100010, !dbg !1378
  %conv2.i1419 = fptrunc double %mul.i1418 to float, !dbg !1379
  call void @llvm.dbg.value(metadata float %conv2.i1419, metadata !1169, metadata !DIExpression()) #7, !dbg !1371
  %98 = load float, ptr %green105, align 4, !dbg !1380, !tbaa !999
  %conv4.i1421 = fpext float %98 to double, !dbg !1381
  %mul5.i1422 = fmul double %conv4.i1421, 0x3EF0001000100010, !dbg !1382
  %conv6.i1423 = fptrunc double %mul5.i1422 to float, !dbg !1383
  call void @llvm.dbg.value(metadata float %conv6.i1423, metadata !1167, metadata !DIExpression()) #7, !dbg !1371
  %99 = load float, ptr %blue118, align 8, !dbg !1384, !tbaa !1004
  %conv8.i1425 = fpext float %99 to double, !dbg !1385
  %mul9.i1426 = fmul double %conv8.i1425, 0x3EF0001000100010, !dbg !1386
  %conv10.i1427 = fptrunc double %mul9.i1426 to float, !dbg !1387
  call void @llvm.dbg.value(metadata float %conv10.i1427, metadata !1165, metadata !DIExpression()) #7, !dbg !1371
  br label %if.end.i1439, !dbg !1388

if.else.i1434:                                    ; preds = %ConvertRGBToCMYK.exit1413
  %call.i1429 = call float @DecodePixelGamma(float noundef %97) #8, !dbg !1389
  call void @llvm.dbg.value(metadata float %call.i1429, metadata !1169, metadata !DIExpression()) #7, !dbg !1371
  %100 = load float, ptr %green105, align 4, !dbg !1390, !tbaa !999
  %call13.i1431 = call float @DecodePixelGamma(float noundef %100) #8, !dbg !1391
  call void @llvm.dbg.value(metadata float %call13.i1431, metadata !1167, metadata !DIExpression()) #7, !dbg !1371
  %101 = load float, ptr %blue118, align 8, !dbg !1392, !tbaa !1004
  %call15.i1433 = call float @DecodePixelGamma(float noundef %101) #8, !dbg !1393
  call void @llvm.dbg.value(metadata float %call15.i1433, metadata !1165, metadata !DIExpression()) #7, !dbg !1371
  br label %if.end.i1439

if.end.i1439:                                     ; preds = %if.else.i1434, %if.then.i1428
  %blue.0.i1435 = phi float [ %conv10.i1427, %if.then.i1428 ], [ %call15.i1433, %if.else.i1434 ], !dbg !1375
  %green.0.i1436 = phi float [ %conv6.i1423, %if.then.i1428 ], [ %call13.i1431, %if.else.i1434 ], !dbg !1375
  %red.0.i1437 = phi float [ %conv2.i1419, %if.then.i1428 ], [ %call.i1429, %if.else.i1434 ], !dbg !1375
  call void @llvm.dbg.value(metadata float %red.0.i1437, metadata !1169, metadata !DIExpression()) #7, !dbg !1371
  call void @llvm.dbg.value(metadata float %green.0.i1436, metadata !1167, metadata !DIExpression()) #7, !dbg !1371
  call void @llvm.dbg.value(metadata float %blue.0.i1435, metadata !1165, metadata !DIExpression()) #7, !dbg !1371
  %102 = call float @llvm.fabs.f32(float %red.0.i1437) #7, !dbg !1394
  %103 = fpext float %102 to double, !dbg !1394
  %cmp17.i1438 = fcmp olt double %103, 1.000000e-15, !dbg !1395
  br i1 %cmp17.i1438, label %land.lhs.true.i1441, label %if.end27.i1448, !dbg !1396

land.lhs.true.i1441:                              ; preds = %if.end.i1439
  %104 = call float @llvm.fabs.f32(float %green.0.i1436) #7, !dbg !1397
  %105 = fpext float %104 to double, !dbg !1397
  %cmp20.i1440 = fcmp olt double %105, 1.000000e-15, !dbg !1398
  br i1 %cmp20.i1440, label %land.lhs.true22.i1443, label %if.end27.i1448, !dbg !1399

land.lhs.true22.i1443:                            ; preds = %land.lhs.true.i1441
  %106 = call float @llvm.fabs.f32(float %blue.0.i1435) #7, !dbg !1400
  %107 = fpext float %106 to double, !dbg !1400
  %cmp24.i1442 = fcmp olt double %107, 1.000000e-15, !dbg !1401
  br i1 %cmp24.i1442, label %ConvertRGBToCMYK.exit1479, label %if.end27.i1448, !dbg !1402

if.end27.i1448:                                   ; preds = %land.lhs.true22.i1443, %land.lhs.true.i1441, %if.end.i1439
  %conv29.i1444 = fsub float 1.000000e+00, %red.0.i1437, !dbg !1403
  call void @llvm.dbg.value(metadata float %conv29.i1444, metadata !1166, metadata !DIExpression()) #7, !dbg !1371
  %conv32.i1445 = fsub float 1.000000e+00, %green.0.i1436, !dbg !1404
  call void @llvm.dbg.value(metadata float %conv32.i1445, metadata !1168, metadata !DIExpression()) #7, !dbg !1371
  %conv35.i1446 = fsub float 1.000000e+00, %blue.0.i1435, !dbg !1405
  call void @llvm.dbg.value(metadata float %conv35.i1446, metadata !1170, metadata !DIExpression()) #7, !dbg !1371
  call void @llvm.dbg.value(metadata float %conv29.i1444, metadata !1164, metadata !DIExpression()) #7, !dbg !1371
  %cmp36.i1447 = fcmp olt float %conv32.i1445, %conv29.i1444, !dbg !1406
  br i1 %cmp36.i1447, label %if.then38.i1449, label %if.end39.i1452, !dbg !1407

if.then38.i1449:                                  ; preds = %if.end27.i1448
  call void @llvm.dbg.value(metadata float %conv32.i1445, metadata !1164, metadata !DIExpression()) #7, !dbg !1371
  br label %if.end39.i1452, !dbg !1408

if.end39.i1452:                                   ; preds = %if.then38.i1449, %if.end27.i1448
  %black.0.i1450 = phi float [ %conv32.i1445, %if.then38.i1449 ], [ %conv29.i1444, %if.end27.i1448 ], !dbg !1371
  call void @llvm.dbg.value(metadata float %black.0.i1450, metadata !1164, metadata !DIExpression()) #7, !dbg !1371
  %cmp40.i1451 = fcmp olt float %conv35.i1446, %black.0.i1450, !dbg !1409
  br i1 %cmp40.i1451, label %if.then42.i1453, label %if.end43.i1476, !dbg !1410

if.then42.i1453:                                  ; preds = %if.end39.i1452
  call void @llvm.dbg.value(metadata float %conv35.i1446, metadata !1164, metadata !DIExpression()) #7, !dbg !1371
  br label %if.end43.i1476, !dbg !1411

if.end43.i1476:                                   ; preds = %if.then42.i1453, %if.end39.i1452
  %black.1.i1454 = phi float [ %conv35.i1446, %if.then42.i1453 ], [ %black.0.i1450, %if.end39.i1452 ], !dbg !1371
  call void @llvm.dbg.value(metadata float %black.1.i1454, metadata !1164, metadata !DIExpression()) #7, !dbg !1371
  %sub44.i1455 = fsub float %conv29.i1444, %black.1.i1454, !dbg !1412
  %conv45.i1456 = fpext float %sub44.i1455 to double, !dbg !1413
  %conv46.i1457 = fpext float %black.1.i1454 to double, !dbg !1414
  %sub47.i1458 = fsub double 1.000000e+00, %conv46.i1457, !dbg !1415
  %div.i1459 = fdiv double %conv45.i1456, %sub47.i1458, !dbg !1416
  %conv48.i1460 = fptrunc double %div.i1459 to float, !dbg !1417
  call void @llvm.dbg.value(metadata float %conv48.i1460, metadata !1166, metadata !DIExpression()) #7, !dbg !1371
  %sub49.i1461 = fsub float %conv32.i1445, %black.1.i1454, !dbg !1418
  %conv50.i1462 = fpext float %sub49.i1461 to double, !dbg !1419
  %div53.i1463 = fdiv double %conv50.i1462, %sub47.i1458, !dbg !1420
  %conv54.i1464 = fptrunc double %div53.i1463 to float, !dbg !1421
  call void @llvm.dbg.value(metadata float %conv54.i1464, metadata !1168, metadata !DIExpression()) #7, !dbg !1371
  %sub55.i1465 = fsub float %conv35.i1446, %black.1.i1454, !dbg !1422
  %conv56.i1466 = fpext float %sub55.i1465 to double, !dbg !1423
  %div59.i1467 = fdiv double %conv56.i1466, %sub47.i1458, !dbg !1424
  %conv60.i1468 = fptrunc double %div59.i1467 to float, !dbg !1425
  call void @llvm.dbg.value(metadata float %conv60.i1468, metadata !1170, metadata !DIExpression()) #7, !dbg !1371
  store i32 12, ptr %colorspace.i1414, align 4, !dbg !1426, !tbaa !1014
  %mul62.i1469 = fmul float %conv48.i1460, 6.553500e+04, !dbg !1427
  store float %mul62.i1469, ptr %red92, align 8, !dbg !1428, !tbaa !992
  %mul64.i1471 = fmul float %conv54.i1464, 6.553500e+04, !dbg !1429
  store float %mul64.i1471, ptr %green105, align 4, !dbg !1430, !tbaa !999
  %mul66.i1473 = fmul float %conv60.i1468, 6.553500e+04, !dbg !1431
  store float %mul66.i1473, ptr %blue118, align 8, !dbg !1432, !tbaa !1004
  %mul68.i1475 = fmul float %black.1.i1454, 6.553500e+04, !dbg !1433
  br label %ConvertRGBToCMYK.exit1479, !dbg !1434

ConvertRGBToCMYK.exit1479:                        ; preds = %land.lhs.true22.i1443, %if.end43.i1476
  %mul68.sink.i1477 = phi float [ %mul68.i1475, %if.end43.i1476 ], [ 6.553500e+04, %land.lhs.true22.i1443 ]
  %index69.i1478 = getelementptr inbounds %struct._MagickPixelPacket, ptr %accentuate, i64 0, i32 9, !dbg !1371
  store float %mul68.sink.i1477, ptr %index69.i1478, align 8, !dbg !1371, !tbaa !1242
  call void @llvm.dbg.value(metadata ptr %highlight, metadata !1159, metadata !DIExpression()) #7, !dbg !1435
  %colorspace.i1480 = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 1, !dbg !1437
  %108 = load i32, ptr %colorspace.i1480, align 4, !dbg !1437, !tbaa !1014
  %cmp.not.i1481 = icmp eq i32 %108, 13, !dbg !1438
  %109 = load float, ptr %red134, align 8, !dbg !1439, !tbaa !992
  br i1 %cmp.not.i1481, label %if.else.i1500, label %if.then.i1494, !dbg !1440

if.then.i1494:                                    ; preds = %ConvertRGBToCMYK.exit1479
  %conv.i1483 = fpext float %109 to double, !dbg !1441
  %mul.i1484 = fmul double %conv.i1483, 0x3EF0001000100010, !dbg !1442
  %conv2.i1485 = fptrunc double %mul.i1484 to float, !dbg !1443
  call void @llvm.dbg.value(metadata float %conv2.i1485, metadata !1169, metadata !DIExpression()) #7, !dbg !1435
  %110 = load float, ptr %green148, align 4, !dbg !1444, !tbaa !999
  %conv4.i1487 = fpext float %110 to double, !dbg !1445
  %mul5.i1488 = fmul double %conv4.i1487, 0x3EF0001000100010, !dbg !1446
  %conv6.i1489 = fptrunc double %mul5.i1488 to float, !dbg !1447
  call void @llvm.dbg.value(metadata float %conv6.i1489, metadata !1167, metadata !DIExpression()) #7, !dbg !1435
  %111 = load float, ptr %blue162, align 8, !dbg !1448, !tbaa !1004
  %conv8.i1491 = fpext float %111 to double, !dbg !1449
  %mul9.i1492 = fmul double %conv8.i1491, 0x3EF0001000100010, !dbg !1450
  %conv10.i1493 = fptrunc double %mul9.i1492 to float, !dbg !1451
  call void @llvm.dbg.value(metadata float %conv10.i1493, metadata !1165, metadata !DIExpression()) #7, !dbg !1435
  br label %if.end.i1505, !dbg !1452

if.else.i1500:                                    ; preds = %ConvertRGBToCMYK.exit1479
  %call.i1495 = call float @DecodePixelGamma(float noundef %109) #8, !dbg !1453
  call void @llvm.dbg.value(metadata float %call.i1495, metadata !1169, metadata !DIExpression()) #7, !dbg !1435
  %112 = load float, ptr %green148, align 4, !dbg !1454, !tbaa !999
  %call13.i1497 = call float @DecodePixelGamma(float noundef %112) #8, !dbg !1455
  call void @llvm.dbg.value(metadata float %call13.i1497, metadata !1167, metadata !DIExpression()) #7, !dbg !1435
  %113 = load float, ptr %blue162, align 8, !dbg !1456, !tbaa !1004
  %call15.i1499 = call float @DecodePixelGamma(float noundef %113) #8, !dbg !1457
  call void @llvm.dbg.value(metadata float %call15.i1499, metadata !1165, metadata !DIExpression()) #7, !dbg !1435
  br label %if.end.i1505

if.end.i1505:                                     ; preds = %if.else.i1500, %if.then.i1494
  %blue.0.i1501 = phi float [ %conv10.i1493, %if.then.i1494 ], [ %call15.i1499, %if.else.i1500 ], !dbg !1439
  %green.0.i1502 = phi float [ %conv6.i1489, %if.then.i1494 ], [ %call13.i1497, %if.else.i1500 ], !dbg !1439
  %red.0.i1503 = phi float [ %conv2.i1485, %if.then.i1494 ], [ %call.i1495, %if.else.i1500 ], !dbg !1439
  call void @llvm.dbg.value(metadata float %red.0.i1503, metadata !1169, metadata !DIExpression()) #7, !dbg !1435
  call void @llvm.dbg.value(metadata float %green.0.i1502, metadata !1167, metadata !DIExpression()) #7, !dbg !1435
  call void @llvm.dbg.value(metadata float %blue.0.i1501, metadata !1165, metadata !DIExpression()) #7, !dbg !1435
  %114 = call float @llvm.fabs.f32(float %red.0.i1503) #7, !dbg !1458
  %115 = fpext float %114 to double, !dbg !1458
  %cmp17.i1504 = fcmp olt double %115, 1.000000e-15, !dbg !1459
  br i1 %cmp17.i1504, label %land.lhs.true.i1507, label %if.end27.i1514, !dbg !1460

land.lhs.true.i1507:                              ; preds = %if.end.i1505
  %116 = call float @llvm.fabs.f32(float %green.0.i1502) #7, !dbg !1461
  %117 = fpext float %116 to double, !dbg !1461
  %cmp20.i1506 = fcmp olt double %117, 1.000000e-15, !dbg !1462
  br i1 %cmp20.i1506, label %land.lhs.true22.i1509, label %if.end27.i1514, !dbg !1463

land.lhs.true22.i1509:                            ; preds = %land.lhs.true.i1507
  %118 = call float @llvm.fabs.f32(float %blue.0.i1501) #7, !dbg !1464
  %119 = fpext float %118 to double, !dbg !1464
  %cmp24.i1508 = fcmp olt double %119, 1.000000e-15, !dbg !1465
  br i1 %cmp24.i1508, label %ConvertRGBToCMYK.exit1545, label %if.end27.i1514, !dbg !1466

if.end27.i1514:                                   ; preds = %land.lhs.true22.i1509, %land.lhs.true.i1507, %if.end.i1505
  %conv29.i1510 = fsub float 1.000000e+00, %red.0.i1503, !dbg !1467
  call void @llvm.dbg.value(metadata float %conv29.i1510, metadata !1166, metadata !DIExpression()) #7, !dbg !1435
  %conv32.i1511 = fsub float 1.000000e+00, %green.0.i1502, !dbg !1468
  call void @llvm.dbg.value(metadata float %conv32.i1511, metadata !1168, metadata !DIExpression()) #7, !dbg !1435
  %conv35.i1512 = fsub float 1.000000e+00, %blue.0.i1501, !dbg !1469
  call void @llvm.dbg.value(metadata float %conv35.i1512, metadata !1170, metadata !DIExpression()) #7, !dbg !1435
  call void @llvm.dbg.value(metadata float %conv29.i1510, metadata !1164, metadata !DIExpression()) #7, !dbg !1435
  %cmp36.i1513 = fcmp olt float %conv32.i1511, %conv29.i1510, !dbg !1470
  br i1 %cmp36.i1513, label %if.then38.i1515, label %if.end39.i1518, !dbg !1471

if.then38.i1515:                                  ; preds = %if.end27.i1514
  call void @llvm.dbg.value(metadata float %conv32.i1511, metadata !1164, metadata !DIExpression()) #7, !dbg !1435
  br label %if.end39.i1518, !dbg !1472

if.end39.i1518:                                   ; preds = %if.then38.i1515, %if.end27.i1514
  %black.0.i1516 = phi float [ %conv32.i1511, %if.then38.i1515 ], [ %conv29.i1510, %if.end27.i1514 ], !dbg !1435
  call void @llvm.dbg.value(metadata float %black.0.i1516, metadata !1164, metadata !DIExpression()) #7, !dbg !1435
  %cmp40.i1517 = fcmp olt float %conv35.i1512, %black.0.i1516, !dbg !1473
  br i1 %cmp40.i1517, label %if.then42.i1519, label %if.end43.i1542, !dbg !1474

if.then42.i1519:                                  ; preds = %if.end39.i1518
  call void @llvm.dbg.value(metadata float %conv35.i1512, metadata !1164, metadata !DIExpression()) #7, !dbg !1435
  br label %if.end43.i1542, !dbg !1475

if.end43.i1542:                                   ; preds = %if.then42.i1519, %if.end39.i1518
  %black.1.i1520 = phi float [ %conv35.i1512, %if.then42.i1519 ], [ %black.0.i1516, %if.end39.i1518 ], !dbg !1435
  call void @llvm.dbg.value(metadata float %black.1.i1520, metadata !1164, metadata !DIExpression()) #7, !dbg !1435
  %sub44.i1521 = fsub float %conv29.i1510, %black.1.i1520, !dbg !1476
  %conv45.i1522 = fpext float %sub44.i1521 to double, !dbg !1477
  %conv46.i1523 = fpext float %black.1.i1520 to double, !dbg !1478
  %sub47.i1524 = fsub double 1.000000e+00, %conv46.i1523, !dbg !1479
  %div.i1525 = fdiv double %conv45.i1522, %sub47.i1524, !dbg !1480
  %conv48.i1526 = fptrunc double %div.i1525 to float, !dbg !1481
  call void @llvm.dbg.value(metadata float %conv48.i1526, metadata !1166, metadata !DIExpression()) #7, !dbg !1435
  %sub49.i1527 = fsub float %conv32.i1511, %black.1.i1520, !dbg !1482
  %conv50.i1528 = fpext float %sub49.i1527 to double, !dbg !1483
  %div53.i1529 = fdiv double %conv50.i1528, %sub47.i1524, !dbg !1484
  %conv54.i1530 = fptrunc double %div53.i1529 to float, !dbg !1485
  call void @llvm.dbg.value(metadata float %conv54.i1530, metadata !1168, metadata !DIExpression()) #7, !dbg !1435
  %sub55.i1531 = fsub float %conv35.i1512, %black.1.i1520, !dbg !1486
  %conv56.i1532 = fpext float %sub55.i1531 to double, !dbg !1487
  %div59.i1533 = fdiv double %conv56.i1532, %sub47.i1524, !dbg !1488
  %conv60.i1534 = fptrunc double %div59.i1533 to float, !dbg !1489
  call void @llvm.dbg.value(metadata float %conv60.i1534, metadata !1170, metadata !DIExpression()) #7, !dbg !1435
  store i32 12, ptr %colorspace.i1480, align 4, !dbg !1490, !tbaa !1014
  %mul62.i1535 = fmul float %conv48.i1526, 6.553500e+04, !dbg !1491
  store float %mul62.i1535, ptr %red134, align 8, !dbg !1492, !tbaa !992
  %mul64.i1537 = fmul float %conv54.i1530, 6.553500e+04, !dbg !1493
  store float %mul64.i1537, ptr %green148, align 4, !dbg !1494, !tbaa !999
  %mul66.i1539 = fmul float %conv60.i1534, 6.553500e+04, !dbg !1495
  store float %mul66.i1539, ptr %blue162, align 8, !dbg !1496, !tbaa !1004
  %mul68.i1541 = fmul float %black.1.i1520, 6.553500e+04, !dbg !1497
  br label %ConvertRGBToCMYK.exit1545, !dbg !1498

ConvertRGBToCMYK.exit1545:                        ; preds = %land.lhs.true22.i1509, %if.end43.i1542
  %mul68.sink.i1543 = phi float [ %mul68.i1541, %if.end43.i1542 ], [ 6.553500e+04, %land.lhs.true22.i1509 ]
  %index69.i1544 = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 9, !dbg !1435
  store float %mul68.sink.i1543, ptr %index69.i1544, align 8, !dbg !1435, !tbaa !1242
  call void @llvm.dbg.value(metadata ptr %shadow, metadata !1159, metadata !DIExpression()) #7, !dbg !1499
  %colorspace.i1546 = getelementptr inbounds %struct._MagickPixelPacket, ptr %shadow, i64 0, i32 1, !dbg !1501
  %120 = load i32, ptr %colorspace.i1546, align 4, !dbg !1501, !tbaa !1014
  %cmp.not.i1547 = icmp eq i32 %120, 13, !dbg !1502
  %121 = load float, ptr %red173, align 8, !dbg !1503, !tbaa !992
  br i1 %cmp.not.i1547, label %if.else.i1566, label %if.then.i1560, !dbg !1504

if.then.i1560:                                    ; preds = %ConvertRGBToCMYK.exit1545
  %conv.i1549 = fpext float %121 to double, !dbg !1505
  %mul.i1550 = fmul double %conv.i1549, 0x3EF0001000100010, !dbg !1506
  %conv2.i1551 = fptrunc double %mul.i1550 to float, !dbg !1507
  call void @llvm.dbg.value(metadata float %conv2.i1551, metadata !1169, metadata !DIExpression()) #7, !dbg !1499
  %122 = load float, ptr %green182, align 4, !dbg !1508, !tbaa !999
  %conv4.i1553 = fpext float %122 to double, !dbg !1509
  %mul5.i1554 = fmul double %conv4.i1553, 0x3EF0001000100010, !dbg !1510
  %conv6.i1555 = fptrunc double %mul5.i1554 to float, !dbg !1511
  call void @llvm.dbg.value(metadata float %conv6.i1555, metadata !1167, metadata !DIExpression()) #7, !dbg !1499
  %123 = load float, ptr %blue191, align 8, !dbg !1512, !tbaa !1004
  %conv8.i1557 = fpext float %123 to double, !dbg !1513
  %mul9.i1558 = fmul double %conv8.i1557, 0x3EF0001000100010, !dbg !1514
  %conv10.i1559 = fptrunc double %mul9.i1558 to float, !dbg !1515
  call void @llvm.dbg.value(metadata float %conv10.i1559, metadata !1165, metadata !DIExpression()) #7, !dbg !1499
  br label %if.end.i1571, !dbg !1516

if.else.i1566:                                    ; preds = %ConvertRGBToCMYK.exit1545
  %call.i1561 = call float @DecodePixelGamma(float noundef %121) #8, !dbg !1517
  call void @llvm.dbg.value(metadata float %call.i1561, metadata !1169, metadata !DIExpression()) #7, !dbg !1499
  %124 = load float, ptr %green182, align 4, !dbg !1518, !tbaa !999
  %call13.i1563 = call float @DecodePixelGamma(float noundef %124) #8, !dbg !1519
  call void @llvm.dbg.value(metadata float %call13.i1563, metadata !1167, metadata !DIExpression()) #7, !dbg !1499
  %125 = load float, ptr %blue191, align 8, !dbg !1520, !tbaa !1004
  %call15.i1565 = call float @DecodePixelGamma(float noundef %125) #8, !dbg !1521
  call void @llvm.dbg.value(metadata float %call15.i1565, metadata !1165, metadata !DIExpression()) #7, !dbg !1499
  br label %if.end.i1571

if.end.i1571:                                     ; preds = %if.else.i1566, %if.then.i1560
  %blue.0.i1567 = phi float [ %conv10.i1559, %if.then.i1560 ], [ %call15.i1565, %if.else.i1566 ], !dbg !1503
  %green.0.i1568 = phi float [ %conv6.i1555, %if.then.i1560 ], [ %call13.i1563, %if.else.i1566 ], !dbg !1503
  %red.0.i1569 = phi float [ %conv2.i1551, %if.then.i1560 ], [ %call.i1561, %if.else.i1566 ], !dbg !1503
  call void @llvm.dbg.value(metadata float %red.0.i1569, metadata !1169, metadata !DIExpression()) #7, !dbg !1499
  call void @llvm.dbg.value(metadata float %green.0.i1568, metadata !1167, metadata !DIExpression()) #7, !dbg !1499
  call void @llvm.dbg.value(metadata float %blue.0.i1567, metadata !1165, metadata !DIExpression()) #7, !dbg !1499
  %126 = call float @llvm.fabs.f32(float %red.0.i1569) #7, !dbg !1522
  %127 = fpext float %126 to double, !dbg !1522
  %cmp17.i1570 = fcmp olt double %127, 1.000000e-15, !dbg !1523
  br i1 %cmp17.i1570, label %land.lhs.true.i1573, label %if.end27.i1580, !dbg !1524

land.lhs.true.i1573:                              ; preds = %if.end.i1571
  %128 = call float @llvm.fabs.f32(float %green.0.i1568) #7, !dbg !1525
  %129 = fpext float %128 to double, !dbg !1525
  %cmp20.i1572 = fcmp olt double %129, 1.000000e-15, !dbg !1526
  br i1 %cmp20.i1572, label %land.lhs.true22.i1575, label %if.end27.i1580, !dbg !1527

land.lhs.true22.i1575:                            ; preds = %land.lhs.true.i1573
  %130 = call float @llvm.fabs.f32(float %blue.0.i1567) #7, !dbg !1528
  %131 = fpext float %130 to double, !dbg !1528
  %cmp24.i1574 = fcmp olt double %131, 1.000000e-15, !dbg !1529
  br i1 %cmp24.i1574, label %ConvertRGBToCMYK.exit1611, label %if.end27.i1580, !dbg !1530

if.end27.i1580:                                   ; preds = %land.lhs.true22.i1575, %land.lhs.true.i1573, %if.end.i1571
  %conv29.i1576 = fsub float 1.000000e+00, %red.0.i1569, !dbg !1531
  call void @llvm.dbg.value(metadata float %conv29.i1576, metadata !1166, metadata !DIExpression()) #7, !dbg !1499
  %conv32.i1577 = fsub float 1.000000e+00, %green.0.i1568, !dbg !1532
  call void @llvm.dbg.value(metadata float %conv32.i1577, metadata !1168, metadata !DIExpression()) #7, !dbg !1499
  %conv35.i1578 = fsub float 1.000000e+00, %blue.0.i1567, !dbg !1533
  call void @llvm.dbg.value(metadata float %conv35.i1578, metadata !1170, metadata !DIExpression()) #7, !dbg !1499
  call void @llvm.dbg.value(metadata float %conv29.i1576, metadata !1164, metadata !DIExpression()) #7, !dbg !1499
  %cmp36.i1579 = fcmp olt float %conv32.i1577, %conv29.i1576, !dbg !1534
  br i1 %cmp36.i1579, label %if.then38.i1581, label %if.end39.i1584, !dbg !1535

if.then38.i1581:                                  ; preds = %if.end27.i1580
  call void @llvm.dbg.value(metadata float %conv32.i1577, metadata !1164, metadata !DIExpression()) #7, !dbg !1499
  br label %if.end39.i1584, !dbg !1536

if.end39.i1584:                                   ; preds = %if.then38.i1581, %if.end27.i1580
  %black.0.i1582 = phi float [ %conv32.i1577, %if.then38.i1581 ], [ %conv29.i1576, %if.end27.i1580 ], !dbg !1499
  call void @llvm.dbg.value(metadata float %black.0.i1582, metadata !1164, metadata !DIExpression()) #7, !dbg !1499
  %cmp40.i1583 = fcmp olt float %conv35.i1578, %black.0.i1582, !dbg !1537
  br i1 %cmp40.i1583, label %if.then42.i1585, label %if.end43.i1608, !dbg !1538

if.then42.i1585:                                  ; preds = %if.end39.i1584
  call void @llvm.dbg.value(metadata float %conv35.i1578, metadata !1164, metadata !DIExpression()) #7, !dbg !1499
  br label %if.end43.i1608, !dbg !1539

if.end43.i1608:                                   ; preds = %if.then42.i1585, %if.end39.i1584
  %black.1.i1586 = phi float [ %conv35.i1578, %if.then42.i1585 ], [ %black.0.i1582, %if.end39.i1584 ], !dbg !1499
  call void @llvm.dbg.value(metadata float %black.1.i1586, metadata !1164, metadata !DIExpression()) #7, !dbg !1499
  %sub44.i1587 = fsub float %conv29.i1576, %black.1.i1586, !dbg !1540
  %conv45.i1588 = fpext float %sub44.i1587 to double, !dbg !1541
  %conv46.i1589 = fpext float %black.1.i1586 to double, !dbg !1542
  %sub47.i1590 = fsub double 1.000000e+00, %conv46.i1589, !dbg !1543
  %div.i1591 = fdiv double %conv45.i1588, %sub47.i1590, !dbg !1544
  %conv48.i1592 = fptrunc double %div.i1591 to float, !dbg !1545
  call void @llvm.dbg.value(metadata float %conv48.i1592, metadata !1166, metadata !DIExpression()) #7, !dbg !1499
  %sub49.i1593 = fsub float %conv32.i1577, %black.1.i1586, !dbg !1546
  %conv50.i1594 = fpext float %sub49.i1593 to double, !dbg !1547
  %div53.i1595 = fdiv double %conv50.i1594, %sub47.i1590, !dbg !1548
  %conv54.i1596 = fptrunc double %div53.i1595 to float, !dbg !1549
  call void @llvm.dbg.value(metadata float %conv54.i1596, metadata !1168, metadata !DIExpression()) #7, !dbg !1499
  %sub55.i1597 = fsub float %conv35.i1578, %black.1.i1586, !dbg !1550
  %conv56.i1598 = fpext float %sub55.i1597 to double, !dbg !1551
  %div59.i1599 = fdiv double %conv56.i1598, %sub47.i1590, !dbg !1552
  %conv60.i1600 = fptrunc double %div59.i1599 to float, !dbg !1553
  call void @llvm.dbg.value(metadata float %conv60.i1600, metadata !1170, metadata !DIExpression()) #7, !dbg !1499
  store i32 12, ptr %colorspace.i1546, align 4, !dbg !1554, !tbaa !1014
  %mul62.i1601 = fmul float %conv48.i1592, 6.553500e+04, !dbg !1555
  store float %mul62.i1601, ptr %red173, align 8, !dbg !1556, !tbaa !992
  %mul64.i1603 = fmul float %conv54.i1596, 6.553500e+04, !dbg !1557
  store float %mul64.i1603, ptr %green182, align 4, !dbg !1558, !tbaa !999
  %mul66.i1605 = fmul float %conv60.i1600, 6.553500e+04, !dbg !1559
  store float %mul66.i1605, ptr %blue191, align 8, !dbg !1560, !tbaa !1004
  %mul68.i1607 = fmul float %black.1.i1586, 6.553500e+04, !dbg !1561
  br label %ConvertRGBToCMYK.exit1611, !dbg !1562

ConvertRGBToCMYK.exit1611:                        ; preds = %land.lhs.true22.i1575, %if.end43.i1608
  %mul68.sink.i1609 = phi float [ %mul68.i1607, %if.end43.i1608 ], [ 6.553500e+04, %land.lhs.true22.i1575 ]
  %index69.i1610 = getelementptr inbounds %struct._MagickPixelPacket, ptr %shadow, i64 0, i32 9, !dbg !1499
  store float %mul68.sink.i1609, ptr %index69.i1610, align 8, !dbg !1499, !tbaa !1242
  call void @llvm.dbg.value(metadata ptr %trough, metadata !1159, metadata !DIExpression()) #7, !dbg !1563
  %colorspace.i1612 = getelementptr inbounds %struct._MagickPixelPacket, ptr %trough, i64 0, i32 1, !dbg !1565
  %132 = load i32, ptr %colorspace.i1612, align 4, !dbg !1565, !tbaa !1014
  %cmp.not.i1613 = icmp eq i32 %132, 13, !dbg !1566
  %133 = load float, ptr %red202, align 8, !dbg !1567, !tbaa !992
  br i1 %cmp.not.i1613, label %if.else.i1632, label %if.then.i1626, !dbg !1568

if.then.i1626:                                    ; preds = %ConvertRGBToCMYK.exit1611
  %conv.i1615 = fpext float %133 to double, !dbg !1569
  %mul.i1616 = fmul double %conv.i1615, 0x3EF0001000100010, !dbg !1570
  %conv2.i1617 = fptrunc double %mul.i1616 to float, !dbg !1571
  call void @llvm.dbg.value(metadata float %conv2.i1617, metadata !1169, metadata !DIExpression()) #7, !dbg !1563
  %134 = load float, ptr %green211, align 4, !dbg !1572, !tbaa !999
  %conv4.i1619 = fpext float %134 to double, !dbg !1573
  %mul5.i1620 = fmul double %conv4.i1619, 0x3EF0001000100010, !dbg !1574
  %conv6.i1621 = fptrunc double %mul5.i1620 to float, !dbg !1575
  call void @llvm.dbg.value(metadata float %conv6.i1621, metadata !1167, metadata !DIExpression()) #7, !dbg !1563
  %135 = load float, ptr %blue220, align 8, !dbg !1576, !tbaa !1004
  %conv8.i1623 = fpext float %135 to double, !dbg !1577
  %mul9.i1624 = fmul double %conv8.i1623, 0x3EF0001000100010, !dbg !1578
  %conv10.i1625 = fptrunc double %mul9.i1624 to float, !dbg !1579
  call void @llvm.dbg.value(metadata float %conv10.i1625, metadata !1165, metadata !DIExpression()) #7, !dbg !1563
  br label %if.end.i1637, !dbg !1580

if.else.i1632:                                    ; preds = %ConvertRGBToCMYK.exit1611
  %call.i1627 = call float @DecodePixelGamma(float noundef %133) #8, !dbg !1581
  call void @llvm.dbg.value(metadata float %call.i1627, metadata !1169, metadata !DIExpression()) #7, !dbg !1563
  %136 = load float, ptr %green211, align 4, !dbg !1582, !tbaa !999
  %call13.i1629 = call float @DecodePixelGamma(float noundef %136) #8, !dbg !1583
  call void @llvm.dbg.value(metadata float %call13.i1629, metadata !1167, metadata !DIExpression()) #7, !dbg !1563
  %137 = load float, ptr %blue220, align 8, !dbg !1584, !tbaa !1004
  %call15.i1631 = call float @DecodePixelGamma(float noundef %137) #8, !dbg !1585
  call void @llvm.dbg.value(metadata float %call15.i1631, metadata !1165, metadata !DIExpression()) #7, !dbg !1563
  br label %if.end.i1637

if.end.i1637:                                     ; preds = %if.else.i1632, %if.then.i1626
  %blue.0.i1633 = phi float [ %conv10.i1625, %if.then.i1626 ], [ %call15.i1631, %if.else.i1632 ], !dbg !1567
  %green.0.i1634 = phi float [ %conv6.i1621, %if.then.i1626 ], [ %call13.i1629, %if.else.i1632 ], !dbg !1567
  %red.0.i1635 = phi float [ %conv2.i1617, %if.then.i1626 ], [ %call.i1627, %if.else.i1632 ], !dbg !1567
  call void @llvm.dbg.value(metadata float %red.0.i1635, metadata !1169, metadata !DIExpression()) #7, !dbg !1563
  call void @llvm.dbg.value(metadata float %green.0.i1634, metadata !1167, metadata !DIExpression()) #7, !dbg !1563
  call void @llvm.dbg.value(metadata float %blue.0.i1633, metadata !1165, metadata !DIExpression()) #7, !dbg !1563
  %138 = call float @llvm.fabs.f32(float %red.0.i1635) #7, !dbg !1586
  %139 = fpext float %138 to double, !dbg !1586
  %cmp17.i1636 = fcmp olt double %139, 1.000000e-15, !dbg !1587
  br i1 %cmp17.i1636, label %land.lhs.true.i1639, label %if.end27.i1646, !dbg !1588

land.lhs.true.i1639:                              ; preds = %if.end.i1637
  %140 = call float @llvm.fabs.f32(float %green.0.i1634) #7, !dbg !1589
  %141 = fpext float %140 to double, !dbg !1589
  %cmp20.i1638 = fcmp olt double %141, 1.000000e-15, !dbg !1590
  br i1 %cmp20.i1638, label %land.lhs.true22.i1641, label %if.end27.i1646, !dbg !1591

land.lhs.true22.i1641:                            ; preds = %land.lhs.true.i1639
  %142 = call float @llvm.fabs.f32(float %blue.0.i1633) #7, !dbg !1592
  %143 = fpext float %142 to double, !dbg !1592
  %cmp24.i1640 = fcmp olt double %143, 1.000000e-15, !dbg !1593
  br i1 %cmp24.i1640, label %ConvertRGBToCMYK.exit1677, label %if.end27.i1646, !dbg !1594

if.end27.i1646:                                   ; preds = %land.lhs.true22.i1641, %land.lhs.true.i1639, %if.end.i1637
  %conv29.i1642 = fsub float 1.000000e+00, %red.0.i1635, !dbg !1595
  call void @llvm.dbg.value(metadata float %conv29.i1642, metadata !1166, metadata !DIExpression()) #7, !dbg !1563
  %conv32.i1643 = fsub float 1.000000e+00, %green.0.i1634, !dbg !1596
  call void @llvm.dbg.value(metadata float %conv32.i1643, metadata !1168, metadata !DIExpression()) #7, !dbg !1563
  %conv35.i1644 = fsub float 1.000000e+00, %blue.0.i1633, !dbg !1597
  call void @llvm.dbg.value(metadata float %conv35.i1644, metadata !1170, metadata !DIExpression()) #7, !dbg !1563
  call void @llvm.dbg.value(metadata float %conv29.i1642, metadata !1164, metadata !DIExpression()) #7, !dbg !1563
  %cmp36.i1645 = fcmp olt float %conv32.i1643, %conv29.i1642, !dbg !1598
  br i1 %cmp36.i1645, label %if.then38.i1647, label %if.end39.i1650, !dbg !1599

if.then38.i1647:                                  ; preds = %if.end27.i1646
  call void @llvm.dbg.value(metadata float %conv32.i1643, metadata !1164, metadata !DIExpression()) #7, !dbg !1563
  br label %if.end39.i1650, !dbg !1600

if.end39.i1650:                                   ; preds = %if.then38.i1647, %if.end27.i1646
  %black.0.i1648 = phi float [ %conv32.i1643, %if.then38.i1647 ], [ %conv29.i1642, %if.end27.i1646 ], !dbg !1563
  call void @llvm.dbg.value(metadata float %black.0.i1648, metadata !1164, metadata !DIExpression()) #7, !dbg !1563
  %cmp40.i1649 = fcmp olt float %conv35.i1644, %black.0.i1648, !dbg !1601
  br i1 %cmp40.i1649, label %if.then42.i1651, label %if.end43.i1674, !dbg !1602

if.then42.i1651:                                  ; preds = %if.end39.i1650
  call void @llvm.dbg.value(metadata float %conv35.i1644, metadata !1164, metadata !DIExpression()) #7, !dbg !1563
  br label %if.end43.i1674, !dbg !1603

if.end43.i1674:                                   ; preds = %if.then42.i1651, %if.end39.i1650
  %black.1.i1652 = phi float [ %conv35.i1644, %if.then42.i1651 ], [ %black.0.i1648, %if.end39.i1650 ], !dbg !1563
  call void @llvm.dbg.value(metadata float %black.1.i1652, metadata !1164, metadata !DIExpression()) #7, !dbg !1563
  %sub44.i1653 = fsub float %conv29.i1642, %black.1.i1652, !dbg !1604
  %conv45.i1654 = fpext float %sub44.i1653 to double, !dbg !1605
  %conv46.i1655 = fpext float %black.1.i1652 to double, !dbg !1606
  %sub47.i1656 = fsub double 1.000000e+00, %conv46.i1655, !dbg !1607
  %div.i1657 = fdiv double %conv45.i1654, %sub47.i1656, !dbg !1608
  %conv48.i1658 = fptrunc double %div.i1657 to float, !dbg !1609
  call void @llvm.dbg.value(metadata float %conv48.i1658, metadata !1166, metadata !DIExpression()) #7, !dbg !1563
  %sub49.i1659 = fsub float %conv32.i1643, %black.1.i1652, !dbg !1610
  %conv50.i1660 = fpext float %sub49.i1659 to double, !dbg !1611
  %div53.i1661 = fdiv double %conv50.i1660, %sub47.i1656, !dbg !1612
  %conv54.i1662 = fptrunc double %div53.i1661 to float, !dbg !1613
  call void @llvm.dbg.value(metadata float %conv54.i1662, metadata !1168, metadata !DIExpression()) #7, !dbg !1563
  %sub55.i1663 = fsub float %conv35.i1644, %black.1.i1652, !dbg !1614
  %conv56.i1664 = fpext float %sub55.i1663 to double, !dbg !1615
  %div59.i1665 = fdiv double %conv56.i1664, %sub47.i1656, !dbg !1616
  %conv60.i1666 = fptrunc double %div59.i1665 to float, !dbg !1617
  call void @llvm.dbg.value(metadata float %conv60.i1666, metadata !1170, metadata !DIExpression()) #7, !dbg !1563
  store i32 12, ptr %colorspace.i1612, align 4, !dbg !1618, !tbaa !1014
  %mul62.i1667 = fmul float %conv48.i1658, 6.553500e+04, !dbg !1619
  store float %mul62.i1667, ptr %red202, align 8, !dbg !1620, !tbaa !992
  %mul64.i1669 = fmul float %conv54.i1662, 6.553500e+04, !dbg !1621
  store float %mul64.i1669, ptr %green211, align 4, !dbg !1622, !tbaa !999
  %mul66.i1671 = fmul float %conv60.i1666, 6.553500e+04, !dbg !1623
  store float %mul66.i1671, ptr %blue220, align 8, !dbg !1624, !tbaa !1004
  %mul68.i1673 = fmul float %black.1.i1652, 6.553500e+04, !dbg !1625
  br label %ConvertRGBToCMYK.exit1677, !dbg !1626

ConvertRGBToCMYK.exit1677:                        ; preds = %land.lhs.true22.i1641, %if.end43.i1674
  %mul68.sink.i1675 = phi float [ %mul68.i1673, %if.end43.i1674 ], [ 6.553500e+04, %land.lhs.true22.i1641 ]
  %index69.i1676 = getelementptr inbounds %struct._MagickPixelPacket, ptr %trough, i64 0, i32 9, !dbg !1563
  store float %mul68.sink.i1675, ptr %index69.i1676, align 8, !dbg !1563, !tbaa !1242
  br label %if.end227, !dbg !1627

if.end227:                                        ; preds = %ConvertRGBToCMYK.exit1677, %if.end77
  call void @llvm.dbg.value(metadata i32 1, metadata !769, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 0, metadata !770, metadata !DIExpression()), !dbg !821
  %call228 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #7, !dbg !1628
  call void @llvm.dbg.value(metadata ptr %call228, metadata !762, metadata !DIExpression()), !dbg !821
  %call229 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call27, ptr noundef %exception) #7, !dbg !1629
  call void @llvm.dbg.value(metadata ptr %call229, metadata !767, metadata !DIExpression()), !dbg !821
  %144 = load i64, ptr %outer_bevel, align 8, !dbg !1630, !tbaa !839
  %145 = load i64, ptr %y14, align 8, !dbg !1631, !tbaa !724
  %146 = load i64, ptr %inner_bevel, align 8, !dbg !1632, !tbaa !843
  %sub232 = sub i64 %144, %add, !dbg !1633
  %add233 = add i64 %sub232, %145, !dbg !1634
  %add235 = add i64 %add233, %146, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %add235, metadata !793, metadata !DIExpression()), !dbg !821
  %cmp236.not = icmp eq i64 %add235, 0, !dbg !1636
  br i1 %cmp236.not, label %if.end402, label %if.then238, !dbg !1637

if.then238:                                       ; preds = %if.end227
  %columns240 = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 7, !dbg !1638
  %147 = load i64, ptr %columns240, align 8, !dbg !1638, !tbaa !702
  %call241 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call229, i64 noundef 0, i64 noundef 0, i64 noundef %147, i64 noundef %add235, ptr noundef %exception) #8, !dbg !1639
  call void @llvm.dbg.value(metadata ptr %call241, metadata !801, metadata !DIExpression()), !dbg !1640
  %call242 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call229) #7, !dbg !1641
  call void @llvm.dbg.value(metadata ptr %call242, metadata !796, metadata !DIExpression()), !dbg !1640
  %cmp243.not = icmp eq ptr %call241, null, !dbg !1642
  br i1 %cmp243.not, label %if.end402, label %for.cond.preheader, !dbg !1644

for.cond.preheader:                               ; preds = %if.then238
  %148 = load i64, ptr %outer_bevel, align 8, !tbaa !839
  call void @llvm.dbg.value(metadata ptr %call241, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %call242, metadata !796, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 0, metadata !795, metadata !DIExpression()), !dbg !821
  %cmp2473606 = icmp sgt i64 %148, 0, !dbg !1645
  br i1 %cmp2473606, label %for.cond249.preheader.lr.ph, label %for.cond273.preheader, !dbg !1649

for.cond249.preheader.lr.ph:                      ; preds = %for.cond.preheader
  %149 = load i64, ptr %columns240, align 8, !tbaa !702
  %colorspace.i1726 = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 1
  %index11.i1735 = getelementptr inbounds %struct._MagickPixelPacket, ptr %accentuate, i64 0, i32 9
  %index11.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 9
  %150 = load float, ptr %red173, align 8
  %cmp.i.i1747 = fcmp ole float %150, 0.000000e+00
  %cmp1.i.i1748 = fcmp oge float %150, 6.553500e+04
  %add.i.i1750 = fadd float %150, 5.000000e-01
  %conv.i.i1751 = fptoui float %add.i.i1750 to i16
  %151 = load float, ptr %green182, align 4
  %cmp.i23.i1756 = fcmp ole float %151, 0.000000e+00
  %cmp1.i24.i1758 = fcmp oge float %151, 6.553500e+04
  %add.i26.i1760 = fadd float %151, 5.000000e-01
  %conv.i27.i1761 = fptoui float %add.i26.i1760 to i16
  %152 = load float, ptr %blue191, align 8
  %cmp.i31.i1766 = fcmp ole float %152, 0.000000e+00
  %cmp1.i32.i1768 = fcmp oge float %152, 6.553500e+04
  %add.i34.i1770 = fadd float %152, 5.000000e-01
  %conv.i35.i1771 = fptoui float %add.i34.i1770 to i16
  %153 = load float, ptr %opacity193, align 4
  %cmp.i39.i1775 = fcmp ole float %153, 0.000000e+00
  %cmp1.i40.i1777 = fcmp oge float %153, 6.553500e+04
  %add.i42.i1779 = fadd float %153, 5.000000e-01
  %conv.i43.i1780 = fptoui float %add.i42.i1779 to i16
  %index11.i1793 = getelementptr inbounds %struct._MagickPixelPacket, ptr %shadow, i64 0, i32 9
  %brmerge3897 = or i1 %cmp.i.i1747, %cmp1.i.i1748
  %not.cmp.i.i1747 = xor i1 %cmp.i.i1747, true
  %.mux3898 = sext i1 %not.cmp.i.i1747 to i16
  %spec.select4213 = select i1 %brmerge3897, i16 %.mux3898, i16 %conv.i.i1751
  %brmerge3899 = or i1 %cmp.i23.i1756, %cmp1.i24.i1758
  %not.cmp.i23.i1756 = xor i1 %cmp.i23.i1756, true
  %.mux3900 = sext i1 %not.cmp.i23.i1756 to i16
  %spec.select4308 = select i1 %brmerge3899, i16 %.mux3900, i16 %conv.i27.i1761
  %brmerge3901 = or i1 %cmp.i31.i1766, %cmp1.i32.i1768
  %not.cmp.i31.i1766 = xor i1 %cmp.i31.i1766, true
  %.mux3902 = sext i1 %not.cmp.i31.i1766 to i16
  %spec.select4214 = select i1 %brmerge3901, i16 %.mux3902, i16 %conv.i35.i1771
  %brmerge3903 = or i1 %cmp.i39.i1775, %cmp1.i40.i1777
  %not.cmp.i39.i1775 = xor i1 %cmp.i39.i1775, true
  %.mux3904 = sext i1 %not.cmp.i39.i1775 to i16
  %spec.select4341 = select i1 %brmerge3903, i16 %.mux3904, i16 %conv.i43.i1780
  br label %for.cond249.preheader, !dbg !1649

for.cond249.preheader:                            ; preds = %for.cond249.preheader.lr.ph, %for.inc270
  %indvars.iv = phi i64 [ %149, %for.cond249.preheader.lr.ph ], [ %indvars.iv.next, %for.inc270 ]
  %q.03610 = phi ptr [ %call241, %for.cond249.preheader.lr.ph ], [ %q.2.lcssa, %for.inc270 ]
  %frame_indexes.03609 = phi ptr [ %call242, %for.cond249.preheader.lr.ph ], [ %frame_indexes.2.lcssa, %for.inc270 ]
  %y.03607 = phi i64 [ 0, %for.cond249.preheader.lr.ph ], [ %inc271, %for.inc270 ]
  call void @llvm.dbg.value(metadata ptr %q.03610, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.03609, metadata !796, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %y.03607, metadata !795, metadata !DIExpression()), !dbg !821
  %sub251 = sub i64 %149, %y.03607
  call void @llvm.dbg.value(metadata ptr %q.03610, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 0, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.03609, metadata !796, metadata !DIExpression()), !dbg !1640
  %cmp2523587 = icmp sgt i64 %sub251, 0, !dbg !1650
  br i1 %cmp2523587, label %for.body254.lr.ph, label %for.cond260.preheader, !dbg !1654

for.body254.lr.ph:                                ; preds = %for.cond249.preheader
  %154 = load float, ptr %red92, align 8
  %cmp.i.i1689 = fcmp ole float %154, 0.000000e+00
  %cmp1.i.i1690 = fcmp oge float %154, 6.553500e+04
  %add.i.i1692 = fadd float %154, 5.000000e-01
  %conv.i.i1693 = fptoui float %add.i.i1692 to i16
  %155 = load float, ptr %green105, align 4
  %cmp.i23.i1698 = fcmp ole float %155, 0.000000e+00
  %cmp1.i24.i1700 = fcmp oge float %155, 6.553500e+04
  %add.i26.i1702 = fadd float %155, 5.000000e-01
  %conv.i27.i1703 = fptoui float %add.i26.i1702 to i16
  %156 = load float, ptr %blue118, align 8
  %cmp.i31.i1708 = fcmp ole float %156, 0.000000e+00
  %cmp1.i32.i1710 = fcmp oge float %156, 6.553500e+04
  %add.i34.i1712 = fadd float %156, 5.000000e-01
  %conv.i35.i1713 = fptoui float %add.i34.i1712 to i16
  %157 = load float, ptr %opacity120, align 4
  %cmp.i39.i1717 = fcmp ole float %157, 0.000000e+00
  %cmp1.i40.i1719 = fcmp oge float %157, 6.553500e+04
  %add.i42.i1721 = fadd float %157, 5.000000e-01
  %conv.i43.i1722 = fptoui float %add.i42.i1721 to i16
  %158 = load float, ptr %index11.i1735, align 8
  %cmp.i47.i1736 = fcmp ole float %158, 0.000000e+00
  %cmp1.i48.i1738 = fcmp oge float %158, 6.553500e+04
  %add.i50.i1740 = fadd float %158, 5.000000e-01
  %conv.i51.i1741 = fptoui float %add.i50.i1740 to i16
  %159 = load float, ptr %red134, align 8
  %cmp.i.i1679 = fcmp ole float %159, 0.000000e+00
  %cmp1.i.i = fcmp oge float %159, 6.553500e+04
  %add.i.i = fadd float %159, 5.000000e-01
  %conv.i.i = fptoui float %add.i.i to i16
  %160 = load float, ptr %green148, align 4
  %cmp.i23.i = fcmp ole float %160, 0.000000e+00
  %cmp1.i24.i = fcmp oge float %160, 6.553500e+04
  %add.i26.i = fadd float %160, 5.000000e-01
  %conv.i27.i = fptoui float %add.i26.i to i16
  %161 = load float, ptr %blue162, align 8
  %cmp.i31.i = fcmp ole float %161, 0.000000e+00
  %cmp1.i32.i = fcmp oge float %161, 6.553500e+04
  %add.i34.i = fadd float %161, 5.000000e-01
  %conv.i35.i = fptoui float %add.i34.i to i16
  %162 = load float, ptr %opacity164, align 4
  %cmp.i39.i = fcmp ole float %162, 0.000000e+00
  %cmp1.i40.i = fcmp oge float %162, 6.553500e+04
  %add.i42.i = fadd float %162, 5.000000e-01
  %conv.i43.i = fptoui float %add.i42.i to i16
  %163 = load float, ptr %index11.i, align 8
  %cmp.i47.i = fcmp ole float %163, 0.000000e+00
  %cmp1.i48.i = fcmp oge float %163, 6.553500e+04
  %add.i50.i = fadd float %163, 5.000000e-01
  %conv.i51.i = fptoui float %add.i50.i to i16
  %brmerge3887 = or i1 %cmp.i.i1689, %cmp1.i.i1690
  %not.cmp.i.i1689 = xor i1 %cmp.i.i1689, true
  %.mux3888 = sext i1 %not.cmp.i.i1689 to i16
  %spec.select4210 = select i1 %brmerge3887, i16 %.mux3888, i16 %conv.i.i1693
  %brmerge3889 = or i1 %cmp.i23.i1698, %cmp1.i24.i1700
  %not.cmp.i23.i1698 = xor i1 %cmp.i23.i1698, true
  %.mux3890 = sext i1 %not.cmp.i23.i1698 to i16
  %spec.select4307 = select i1 %brmerge3889, i16 %.mux3890, i16 %conv.i27.i1703
  %brmerge3891 = or i1 %cmp.i31.i1708, %cmp1.i32.i1710
  %not.cmp.i31.i1708 = xor i1 %cmp.i31.i1708, true
  %.mux3892 = sext i1 %not.cmp.i31.i1708 to i16
  %spec.select4211 = select i1 %brmerge3891, i16 %.mux3892, i16 %conv.i35.i1713
  %brmerge3893 = or i1 %cmp.i39.i1717, %cmp1.i40.i1719
  %not.cmp.i39.i1717 = xor i1 %cmp.i39.i1717, true
  %.mux3894 = sext i1 %not.cmp.i39.i1717 to i16
  %spec.select4340 = select i1 %brmerge3893, i16 %.mux3894, i16 %conv.i43.i1722
  %brmerge3895 = or i1 %cmp.i47.i1736, %cmp1.i48.i1738
  %not.cmp.i47.i1736 = xor i1 %cmp.i47.i1736, true
  %.mux3896 = sext i1 %not.cmp.i47.i1736 to i16
  %spec.select4212 = select i1 %brmerge3895, i16 %.mux3896, i16 %conv.i51.i1741
  %brmerge = or i1 %cmp.i.i1679, %cmp1.i.i
  %not.cmp.i.i1679 = xor i1 %cmp.i.i1679, true
  %.mux = sext i1 %not.cmp.i.i1679 to i16
  %spec.select4207 = select i1 %brmerge, i16 %.mux, i16 %conv.i.i
  %brmerge3879 = or i1 %cmp.i23.i, %cmp1.i24.i
  %not.cmp.i23.i = xor i1 %cmp.i23.i, true
  %.mux3880 = sext i1 %not.cmp.i23.i to i16
  %spec.select4306 = select i1 %brmerge3879, i16 %.mux3880, i16 %conv.i27.i
  %brmerge3881 = or i1 %cmp.i31.i, %cmp1.i32.i
  %not.cmp.i31.i = xor i1 %cmp.i31.i, true
  %.mux3882 = sext i1 %not.cmp.i31.i to i16
  %spec.select4208 = select i1 %brmerge3881, i16 %.mux3882, i16 %conv.i35.i
  %brmerge3883 = or i1 %cmp.i39.i, %cmp1.i40.i
  %not.cmp.i39.i = xor i1 %cmp.i39.i, true
  %.mux3884 = sext i1 %not.cmp.i39.i to i16
  %spec.select4339 = select i1 %brmerge3883, i16 %.mux3884, i16 %conv.i43.i
  %brmerge3885 = or i1 %cmp.i47.i, %cmp1.i48.i
  %not.cmp.i47.i = xor i1 %cmp.i47.i, true
  %.mux3886 = sext i1 %not.cmp.i47.i to i16
  %spec.select4209 = select i1 %brmerge3885, i16 %.mux3886, i16 %conv.i51.i
  br label %for.body254, !dbg !1654

for.cond273.preheader:                            ; preds = %for.inc270, %for.cond.preheader
  %frame_indexes.0.lcssa = phi ptr [ %call242, %for.cond.preheader ], [ %frame_indexes.2.lcssa, %for.inc270 ], !dbg !1655
  %q.0.lcssa = phi ptr [ %call241, %for.cond.preheader ], [ %q.2.lcssa, %for.inc270 ], !dbg !1656
  %164 = load i64, ptr %y14, align 8, !tbaa !724
  %sub275 = sub i64 %164, %add
  call void @llvm.dbg.value(metadata ptr %q.0.lcssa, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.0.lcssa, metadata !796, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 0, metadata !795, metadata !DIExpression()), !dbg !821
  %cmp2763638 = icmp sgt i64 %sub275, 0, !dbg !1657
  br i1 %cmp2763638, label %for.cond279.preheader.lr.ph, label %for.cond315.preheader, !dbg !1660

for.cond279.preheader.lr.ph:                      ; preds = %for.cond273.preheader
  %165 = load float, ptr %red134, align 8
  %cmp.i.i1805 = fcmp ole float %165, 0.000000e+00
  %cmp1.i.i1806 = fcmp oge float %165, 6.553500e+04
  %add.i.i1808 = fadd float %165, 5.000000e-01
  %conv.i.i1809 = fptoui float %add.i.i1808 to i16
  %166 = load float, ptr %green148, align 4
  %cmp.i23.i1814 = fcmp ole float %166, 0.000000e+00
  %cmp1.i24.i1816 = fcmp oge float %166, 6.553500e+04
  %add.i26.i1818 = fadd float %166, 5.000000e-01
  %conv.i27.i1819 = fptoui float %add.i26.i1818 to i16
  %167 = load float, ptr %blue162, align 8
  %cmp.i31.i1824 = fcmp ole float %167, 0.000000e+00
  %cmp1.i32.i1826 = fcmp oge float %167, 6.553500e+04
  %add.i34.i1828 = fadd float %167, 5.000000e-01
  %conv.i35.i1829 = fptoui float %add.i34.i1828 to i16
  %168 = load float, ptr %opacity164, align 4
  %cmp.i39.i1833 = fcmp ole float %168, 0.000000e+00
  %cmp1.i40.i1835 = fcmp oge float %168, 6.553500e+04
  %add.i42.i1837 = fadd float %168, 5.000000e-01
  %conv.i43.i1838 = fptoui float %add.i42.i1837 to i16
  %colorspace.i1842 = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 1
  %index11.i1851 = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 9
  %169 = load i64, ptr %columns240, align 8, !tbaa !702
  %mul291.neg = mul i64 %148, -2
  %sub292 = add i64 %169, %mul291.neg
  %cmp2943622 = icmp sgt i64 %sub292, 0
  %170 = load float, ptr %red1.i1254, align 8
  %cmp.i.i1863 = fcmp ole float %170, 0.000000e+00
  %cmp1.i.i1864 = fcmp oge float %170, 6.553500e+04
  %add.i.i1866 = fadd float %170, 5.000000e-01
  %conv.i.i1867 = fptoui float %add.i.i1866 to i16
  %171 = load float, ptr %green3.i1257, align 4
  %cmp.i23.i1872 = fcmp ole float %171, 0.000000e+00
  %cmp1.i24.i1874 = fcmp oge float %171, 6.553500e+04
  %add.i26.i1876 = fadd float %171, 5.000000e-01
  %conv.i27.i1877 = fptoui float %add.i26.i1876 to i16
  %172 = load float, ptr %blue5.i1259, align 8
  %cmp.i31.i1882 = fcmp ole float %172, 0.000000e+00
  %cmp1.i32.i1884 = fcmp oge float %172, 6.553500e+04
  %add.i34.i1886 = fadd float %172, 5.000000e-01
  %conv.i35.i1887 = fptoui float %add.i34.i1886 to i16
  %173 = load float, ptr %opacity7.i1262, align 4
  %cmp.i39.i1891 = fcmp ole float %173, 0.000000e+00
  %cmp1.i40.i1893 = fcmp oge float %173, 6.553500e+04
  %add.i42.i1895 = fadd float %173, 5.000000e-01
  %conv.i43.i1896 = fptoui float %add.i42.i1895 to i16
  %index11.i1909 = getelementptr inbounds %struct._MagickPixelPacket, ptr %matte, i64 0, i32 9
  %174 = load float, ptr %red173, align 8
  %cmp.i.i1921 = fcmp ole float %174, 0.000000e+00
  %cmp1.i.i1922 = fcmp oge float %174, 6.553500e+04
  %add.i.i1924 = fadd float %174, 5.000000e-01
  %conv.i.i1925 = fptoui float %add.i.i1924 to i16
  %175 = load float, ptr %green182, align 4
  %cmp.i23.i1930 = fcmp ole float %175, 0.000000e+00
  %cmp1.i24.i1932 = fcmp oge float %175, 6.553500e+04
  %add.i26.i1934 = fadd float %175, 5.000000e-01
  %conv.i27.i1935 = fptoui float %add.i26.i1934 to i16
  %176 = load float, ptr %blue191, align 8
  %cmp.i31.i1940 = fcmp ole float %176, 0.000000e+00
  %cmp1.i32.i1942 = fcmp oge float %176, 6.553500e+04
  %add.i34.i1944 = fadd float %176, 5.000000e-01
  %conv.i35.i1945 = fptoui float %add.i34.i1944 to i16
  %177 = load float, ptr %opacity193, align 4
  %cmp.i39.i1949 = fcmp ole float %177, 0.000000e+00
  %cmp1.i40.i1951 = fcmp oge float %177, 6.553500e+04
  %add.i42.i1953 = fadd float %177, 5.000000e-01
  %conv.i43.i1954 = fptoui float %add.i42.i1953 to i16
  %index11.i1967 = getelementptr inbounds %struct._MagickPixelPacket, ptr %shadow, i64 0, i32 9
  %brmerge3907 = or i1 %cmp.i.i1805, %cmp1.i.i1806
  %not.cmp.i.i1805 = xor i1 %cmp.i.i1805, true
  %.mux3908 = sext i1 %not.cmp.i.i1805 to i16
  %spec.select4216 = select i1 %brmerge3907, i16 %.mux3908, i16 %conv.i.i1809
  %brmerge3909 = or i1 %cmp.i23.i1814, %cmp1.i24.i1816
  %not.cmp.i23.i1814 = xor i1 %cmp.i23.i1814, true
  %.mux3910 = sext i1 %not.cmp.i23.i1814 to i16
  %spec.select4309 = select i1 %brmerge3909, i16 %.mux3910, i16 %conv.i27.i1819
  %brmerge3911 = or i1 %cmp.i31.i1824, %cmp1.i32.i1826
  %not.cmp.i31.i1824 = xor i1 %cmp.i31.i1824, true
  %.mux3912 = sext i1 %not.cmp.i31.i1824 to i16
  %spec.select4217 = select i1 %brmerge3911, i16 %.mux3912, i16 %conv.i35.i1829
  %brmerge3913 = or i1 %cmp.i39.i1833, %cmp1.i40.i1835
  %not.cmp.i39.i1833 = xor i1 %cmp.i39.i1833, true
  %.mux3914 = sext i1 %not.cmp.i39.i1833 to i16
  %spec.select4342 = select i1 %brmerge3913, i16 %.mux3914, i16 %conv.i43.i1838
  %brmerge3917 = or i1 %cmp.i.i1863, %cmp1.i.i1864
  %not.cmp.i.i1863 = xor i1 %cmp.i.i1863, true
  %.mux3918 = sext i1 %not.cmp.i.i1863 to i16
  %spec.select4219 = select i1 %brmerge3917, i16 %.mux3918, i16 %conv.i.i1867
  %brmerge3919 = or i1 %cmp.i23.i1872, %cmp1.i24.i1874
  %not.cmp.i23.i1872 = xor i1 %cmp.i23.i1872, true
  %.mux3920 = sext i1 %not.cmp.i23.i1872 to i16
  %spec.select4310 = select i1 %brmerge3919, i16 %.mux3920, i16 %conv.i27.i1877
  %brmerge3921 = or i1 %cmp.i31.i1882, %cmp1.i32.i1884
  %not.cmp.i31.i1882 = xor i1 %cmp.i31.i1882, true
  %.mux3922 = sext i1 %not.cmp.i31.i1882 to i16
  %spec.select4220 = select i1 %brmerge3921, i16 %.mux3922, i16 %conv.i35.i1887
  %brmerge3923 = or i1 %cmp.i39.i1891, %cmp1.i40.i1893
  %not.cmp.i39.i1891 = xor i1 %cmp.i39.i1891, true
  %.mux3924 = sext i1 %not.cmp.i39.i1891 to i16
  %spec.select4343 = select i1 %brmerge3923, i16 %.mux3924, i16 %conv.i43.i1896
  %brmerge3927 = or i1 %cmp.i.i1921, %cmp1.i.i1922
  %not.cmp.i.i1921 = xor i1 %cmp.i.i1921, true
  %.mux3928 = sext i1 %not.cmp.i.i1921 to i16
  %spec.select4222 = select i1 %brmerge3927, i16 %.mux3928, i16 %conv.i.i1925
  %brmerge3929 = or i1 %cmp.i23.i1930, %cmp1.i24.i1932
  %not.cmp.i23.i1930 = xor i1 %cmp.i23.i1930, true
  %.mux3930 = sext i1 %not.cmp.i23.i1930 to i16
  %spec.select4311 = select i1 %brmerge3929, i16 %.mux3930, i16 %conv.i27.i1935
  %brmerge3931 = or i1 %cmp.i31.i1940, %cmp1.i32.i1942
  %not.cmp.i31.i1940 = xor i1 %cmp.i31.i1940, true
  %.mux3932 = sext i1 %not.cmp.i31.i1940 to i16
  %spec.select4223 = select i1 %brmerge3931, i16 %.mux3932, i16 %conv.i35.i1945
  %brmerge3933 = or i1 %cmp.i39.i1949, %cmp1.i40.i1951
  %not.cmp.i39.i1949 = xor i1 %cmp.i39.i1949, true
  %.mux3934 = sext i1 %not.cmp.i39.i1949 to i16
  %spec.select4344 = select i1 %brmerge3933, i16 %.mux3934, i16 %conv.i43.i1954
  br label %for.cond279.preheader, !dbg !1660

for.cond260.preheader:                            ; preds = %if.end258, %for.cond249.preheader
  %frame_indexes.1.lcssa = phi ptr [ %frame_indexes.03609, %for.cond249.preheader ], [ %incdec.ptr259, %if.end258 ], !dbg !1640
  %x239.0.lcssa = phi i64 [ 0, %for.cond249.preheader ], [ %indvars.iv, %if.end258 ], !dbg !1661
  %q.1.lcssa = phi ptr [ %q.03610, %for.cond249.preheader ], [ %incdec.ptr, %if.end258 ], !dbg !1640
  call void @llvm.dbg.value(metadata ptr %q.1.lcssa, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %x239.0.lcssa, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.1.lcssa, metadata !796, metadata !DIExpression()), !dbg !1640
  %cmp2623598 = icmp slt i64 %x239.0.lcssa, %149, !dbg !1662
  br i1 %cmp2623598, label %for.body264.lr.ph, label %for.inc270, !dbg !1665

for.body264.lr.ph:                                ; preds = %for.cond260.preheader
  %178 = load i32, ptr %colorspace.i1726, align 4, !tbaa !925
  %cmp.i1785 = icmp eq i32 %178, 12
  %179 = load float, ptr %index11.i1793, align 8
  %cmp.i47.i1794 = fcmp ole float %179, 0.000000e+00
  %cmp1.i48.i1796 = fcmp oge float %179, 6.553500e+04
  %add.i50.i1798 = fadd float %179, 5.000000e-01
  %conv.i51.i1799 = fptoui float %add.i50.i1798 to i16
  %brmerge3905 = or i1 %cmp.i47.i1794, %cmp1.i48.i1796
  %not.cmp.i47.i1794 = xor i1 %cmp.i47.i1794, true
  %.mux3906 = sext i1 %not.cmp.i47.i1794 to i16
  %spec.select4215 = select i1 %brmerge3905, i16 %.mux3906, i16 %conv.i51.i1799
  br label %for.body264, !dbg !1665

for.body254:                                      ; preds = %for.body254.lr.ph, %if.end258
  %q.13593 = phi ptr [ %q.03610, %for.body254.lr.ph ], [ %incdec.ptr, %if.end258 ]
  %x239.03592 = phi i64 [ 0, %for.body254.lr.ph ], [ %inc, %if.end258 ]
  %frame_indexes.13588 = phi ptr [ %frame_indexes.03609, %for.body254.lr.ph ], [ %incdec.ptr259, %if.end258 ]
  call void @llvm.dbg.value(metadata ptr %q.13593, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %x239.03592, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.13588, metadata !796, metadata !DIExpression()), !dbg !1640
  %cmp255 = icmp ult i64 %x239.03592, %y.03607, !dbg !1666
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !1681
  %red1.i1680 = getelementptr inbounds %struct._PixelPacket, ptr %q.13593, i64 0, i32 2, !dbg !1683
  br i1 %cmp255, label %if.then257, label %if.else, !dbg !1684

if.then257:                                       ; preds = %for.body254
  call void @llvm.dbg.value(metadata ptr %highlight, metadata !1676, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata ptr %q.13593, metadata !1677, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata ptr %frame_indexes.13588, metadata !1678, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata float %159, metadata !1685, metadata !DIExpression()), !dbg !1690
  store i16 %spec.select4207, ptr %red1.i1680, align 2, !dbg !1692, !tbaa !891
  call void @llvm.dbg.value(metadata float %160, metadata !1685, metadata !DIExpression()), !dbg !1693
  %green3.i1682 = getelementptr inbounds %struct._PixelPacket, ptr %q.13593, i64 0, i32 1, !dbg !1695
  store i16 %spec.select4306, ptr %green3.i1682, align 2, !dbg !1695, !tbaa !894
  call void @llvm.dbg.value(metadata float %161, metadata !1685, metadata !DIExpression()), !dbg !1696
  store i16 %spec.select4208, ptr %q.13593, align 2, !dbg !1698, !tbaa !897
  call void @llvm.dbg.value(metadata float %162, metadata !1685, metadata !DIExpression()), !dbg !1699
  %opacity7.i1684 = getelementptr inbounds %struct._PixelPacket, ptr %q.13593, i64 0, i32 3, !dbg !1701
  store i16 %spec.select4339, ptr %opacity7.i1684, align 2, !dbg !1701, !tbaa !1006
  %180 = load i32, ptr %colorspace.i1726, align 4, !dbg !1702, !tbaa !925
  %cmp.i1686 = icmp eq i32 %180, 12, !dbg !1704
  br i1 %cmp.i1686, label %if.then.i1687, label %lor.lhs.false.i, !dbg !1705

lor.lhs.false.i:                                  ; preds = %if.then257
  %181 = load i32, ptr %call27, align 8, !dbg !1706, !tbaa !1707
  %cmp8.i = icmp eq i32 %181, 2, !dbg !1708
  %cmp9.i = icmp ne ptr %frame_indexes.13588, null
  %or.cond.i = and i1 %cmp9.i, %cmp8.i, !dbg !1709
  br i1 %or.cond.i, label %if.end258.sink.split, label %if.end258, !dbg !1709

if.then.i1687:                                    ; preds = %if.then257
  %cmp9.old.not.i = icmp eq ptr %frame_indexes.13588, null, !dbg !1710
  br i1 %cmp9.old.not.i, label %if.end258, label %if.end258.sink.split, !dbg !1713

if.else:                                          ; preds = %for.body254
  call void @llvm.dbg.value(metadata ptr %accentuate, metadata !1676, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata ptr %q.13593, metadata !1677, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata ptr %frame_indexes.13588, metadata !1678, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata float %154, metadata !1685, metadata !DIExpression()), !dbg !1714
  store i16 %spec.select4210, ptr %red1.i1680, align 2, !dbg !1716, !tbaa !891
  call void @llvm.dbg.value(metadata float %155, metadata !1685, metadata !DIExpression()), !dbg !1717
  %green3.i1706 = getelementptr inbounds %struct._PixelPacket, ptr %q.13593, i64 0, i32 1, !dbg !1719
  store i16 %spec.select4307, ptr %green3.i1706, align 2, !dbg !1719, !tbaa !894
  call void @llvm.dbg.value(metadata float %156, metadata !1685, metadata !DIExpression()), !dbg !1720
  store i16 %spec.select4211, ptr %q.13593, align 2, !dbg !1722, !tbaa !897
  call void @llvm.dbg.value(metadata float %157, metadata !1685, metadata !DIExpression()), !dbg !1723
  %opacity7.i1725 = getelementptr inbounds %struct._PixelPacket, ptr %q.13593, i64 0, i32 3, !dbg !1725
  store i16 %spec.select4340, ptr %opacity7.i1725, align 2, !dbg !1725, !tbaa !1006
  %182 = load i32, ptr %colorspace.i1726, align 4, !dbg !1726, !tbaa !925
  %cmp.i1727 = icmp eq i32 %182, 12, !dbg !1727
  br i1 %cmp.i1727, label %if.then.i1734, label %lor.lhs.false.i1732, !dbg !1728

lor.lhs.false.i1732:                              ; preds = %if.else
  %183 = load i32, ptr %call27, align 8, !dbg !1729, !tbaa !1707
  %cmp8.i1729 = icmp eq i32 %183, 2, !dbg !1730
  %cmp9.i1730 = icmp ne ptr %frame_indexes.13588, null
  %or.cond.i1731 = and i1 %cmp9.i1730, %cmp8.i1729, !dbg !1731
  br i1 %or.cond.i1731, label %if.end258.sink.split, label %if.end258, !dbg !1731

if.then.i1734:                                    ; preds = %if.else
  %cmp9.old.not.i1733 = icmp eq ptr %frame_indexes.13588, null, !dbg !1732
  br i1 %cmp9.old.not.i1733, label %if.end258, label %if.end258.sink.split, !dbg !1733

if.end258.sink.split:                             ; preds = %lor.lhs.false.i1732, %if.then.i1734, %lor.lhs.false.i, %if.then.i1687
  %spec.select4212.sink = phi i16 [ %spec.select4209, %if.then.i1687 ], [ %spec.select4209, %lor.lhs.false.i ], [ %spec.select4212, %if.then.i1734 ], [ %spec.select4212, %lor.lhs.false.i1732 ]
  store i16 %spec.select4212.sink, ptr %frame_indexes.13588, align 2, !dbg !1683, !tbaa !1734
  br label %if.end258, !dbg !1735

if.end258:                                        ; preds = %if.end258.sink.split, %if.then.i1734, %lor.lhs.false.i1732, %if.then.i1687, %lor.lhs.false.i
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.13593, i64 1, !dbg !1735
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !801, metadata !DIExpression()), !dbg !1640
  %incdec.ptr259 = getelementptr inbounds i16, ptr %frame_indexes.13588, i64 1, !dbg !1736
  call void @llvm.dbg.value(metadata ptr %incdec.ptr259, metadata !796, metadata !DIExpression()), !dbg !1640
  %inc = add nuw nsw i64 %x239.03592, 1, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %inc, metadata !800, metadata !DIExpression()), !dbg !1640
  %cmp252 = icmp slt i64 %inc, %sub251, !dbg !1650
  br i1 %cmp252, label %for.body254, label %for.cond260.preheader, !dbg !1654, !llvm.loop !1738

for.body264:                                      ; preds = %for.body264.lr.ph, %SetPixelPacket.exit1803
  %q.23603 = phi ptr [ %q.1.lcssa, %for.body264.lr.ph ], [ %incdec.ptr265, %SetPixelPacket.exit1803 ]
  %x239.13602 = phi i64 [ %x239.0.lcssa, %for.body264.lr.ph ], [ %inc268, %SetPixelPacket.exit1803 ]
  %frame_indexes.23599 = phi ptr [ %frame_indexes.1.lcssa, %for.body264.lr.ph ], [ %incdec.ptr266, %SetPixelPacket.exit1803 ]
  call void @llvm.dbg.value(metadata ptr %q.23603, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %x239.13602, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.23599, metadata !796, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata ptr %shadow, metadata !1676, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata ptr %q.23603, metadata !1677, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata ptr %frame_indexes.23599, metadata !1678, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata float %150, metadata !1685, metadata !DIExpression()), !dbg !1745
  %red1.i1754 = getelementptr inbounds %struct._PixelPacket, ptr %q.23603, i64 0, i32 2, !dbg !1747
  store i16 %spec.select4213, ptr %red1.i1754, align 2, !dbg !1747, !tbaa !891
  call void @llvm.dbg.value(metadata float %151, metadata !1685, metadata !DIExpression()), !dbg !1748
  %green3.i1764 = getelementptr inbounds %struct._PixelPacket, ptr %q.23603, i64 0, i32 1, !dbg !1750
  store i16 %spec.select4308, ptr %green3.i1764, align 2, !dbg !1750, !tbaa !894
  call void @llvm.dbg.value(metadata float %152, metadata !1685, metadata !DIExpression()), !dbg !1751
  store i16 %spec.select4214, ptr %q.23603, align 2, !dbg !1753, !tbaa !897
  call void @llvm.dbg.value(metadata float %153, metadata !1685, metadata !DIExpression()), !dbg !1754
  %opacity7.i1783 = getelementptr inbounds %struct._PixelPacket, ptr %q.23603, i64 0, i32 3, !dbg !1756
  store i16 %spec.select4341, ptr %opacity7.i1783, align 2, !dbg !1756, !tbaa !1006
  br i1 %cmp.i1785, label %if.then.i1792, label %lor.lhs.false.i1790, !dbg !1757

lor.lhs.false.i1790:                              ; preds = %for.body264
  %184 = load i32, ptr %call27, align 8, !dbg !1758, !tbaa !1707
  %cmp8.i1787 = icmp eq i32 %184, 2, !dbg !1759
  %cmp9.i1788 = icmp ne ptr %frame_indexes.23599, null
  %or.cond.i1789 = and i1 %cmp9.i1788, %cmp8.i1787, !dbg !1760
  br i1 %or.cond.i1789, label %if.then10.i1795, label %SetPixelPacket.exit1803, !dbg !1760

if.then.i1792:                                    ; preds = %for.body264
  %cmp9.old.not.i1791 = icmp eq ptr %frame_indexes.23599, null, !dbg !1761
  br i1 %cmp9.old.not.i1791, label %SetPixelPacket.exit1803, label %if.then10.i1795, !dbg !1762

if.then10.i1795:                                  ; preds = %if.then.i1792, %lor.lhs.false.i1790
  call void @llvm.dbg.value(metadata float %179, metadata !1685, metadata !DIExpression()), !dbg !1763
  store i16 %spec.select4215, ptr %frame_indexes.23599, align 2, !dbg !1761, !tbaa !1734
  br label %SetPixelPacket.exit1803, !dbg !1761

SetPixelPacket.exit1803:                          ; preds = %lor.lhs.false.i1790, %if.then.i1792, %if.then10.i1795
  %incdec.ptr265 = getelementptr inbounds %struct._PixelPacket, ptr %q.23603, i64 1, !dbg !1765
  call void @llvm.dbg.value(metadata ptr %incdec.ptr265, metadata !801, metadata !DIExpression()), !dbg !1640
  %incdec.ptr266 = getelementptr inbounds i16, ptr %frame_indexes.23599, i64 1, !dbg !1766
  call void @llvm.dbg.value(metadata ptr %incdec.ptr266, metadata !796, metadata !DIExpression()), !dbg !1640
  %inc268 = add nuw nsw i64 %x239.13602, 1, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %inc268, metadata !800, metadata !DIExpression()), !dbg !1640
  %cmp262 = icmp slt i64 %inc268, %149, !dbg !1662
  br i1 %cmp262, label %for.body264, label %for.inc270, !dbg !1665, !llvm.loop !1768

for.inc270:                                       ; preds = %SetPixelPacket.exit1803, %for.cond260.preheader
  %frame_indexes.2.lcssa = phi ptr [ %frame_indexes.1.lcssa, %for.cond260.preheader ], [ %incdec.ptr266, %SetPixelPacket.exit1803 ], !dbg !1640
  %q.2.lcssa = phi ptr [ %q.1.lcssa, %for.cond260.preheader ], [ %incdec.ptr265, %SetPixelPacket.exit1803 ], !dbg !1640
  %inc271 = add nuw nsw i64 %y.03607, 1, !dbg !1770
  call void @llvm.dbg.value(metadata ptr %q.2.lcssa, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.2.lcssa, metadata !796, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %inc271, metadata !795, metadata !DIExpression()), !dbg !821
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !1649
  %exitcond.not = icmp eq i64 %inc271, %148, !dbg !1645
  br i1 %exitcond.not, label %for.cond273.preheader, label %for.cond249.preheader, !dbg !1649, !llvm.loop !1771

for.cond279.preheader:                            ; preds = %for.cond279.preheader.lr.ph, %for.inc312
  %q.33641 = phi ptr [ %q.0.lcssa, %for.cond279.preheader.lr.ph ], [ %q.6.lcssa, %for.inc312 ]
  %frame_indexes.33640 = phi ptr [ %frame_indexes.0.lcssa, %for.cond279.preheader.lr.ph ], [ %frame_indexes.6.lcssa, %for.inc312 ]
  %y.13639 = phi i64 [ 0, %for.cond279.preheader.lr.ph ], [ %inc313, %for.inc312 ]
  call void @llvm.dbg.value(metadata i64 %y.13639, metadata !795, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata ptr %q.33641, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 0, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.33640, metadata !796, metadata !DIExpression()), !dbg !1640
  br i1 %cmp2473606, label %for.body283.lr.ph, label %for.end288, !dbg !1773

for.body283.lr.ph:                                ; preds = %for.cond279.preheader
  %185 = load i32, ptr %colorspace.i1842, align 4, !tbaa !925
  %cmp.i1843 = icmp eq i32 %185, 12
  %186 = load float, ptr %index11.i1851, align 8
  %cmp.i47.i1852 = fcmp ole float %186, 0.000000e+00
  %cmp1.i48.i1854 = fcmp oge float %186, 6.553500e+04
  %add.i50.i1856 = fadd float %186, 5.000000e-01
  %conv.i51.i1857 = fptoui float %add.i50.i1856 to i16
  %brmerge3915 = or i1 %cmp.i47.i1852, %cmp1.i48.i1854
  %not.cmp.i47.i1852 = xor i1 %cmp.i47.i1852, true
  %.mux3916 = sext i1 %not.cmp.i47.i1852 to i16
  %spec.select4218 = select i1 %brmerge3915, i16 %.mux3916, i16 %conv.i51.i1857
  br label %for.body283, !dbg !1773

for.cond315.preheader:                            ; preds = %for.inc312, %for.cond273.preheader
  %frame_indexes.3.lcssa = phi ptr [ %frame_indexes.0.lcssa, %for.cond273.preheader ], [ %frame_indexes.6.lcssa, %for.inc312 ], !dbg !1655
  %q.3.lcssa = phi ptr [ %q.0.lcssa, %for.cond273.preheader ], [ %q.6.lcssa, %for.inc312 ], !dbg !1656
  %187 = load i64, ptr %inner_bevel, align 8, !tbaa !843
  call void @llvm.dbg.value(metadata ptr %q.3.lcssa, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.3.lcssa, metadata !796, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 0, metadata !795, metadata !DIExpression()), !dbg !821
  %cmp3173696 = icmp sgt i64 %187, 0, !dbg !1776
  br i1 %cmp3173696, label %for.cond320.preheader.lr.ph, label %for.end399, !dbg !1779

for.cond320.preheader.lr.ph:                      ; preds = %for.cond315.preheader
  %188 = load float, ptr %red134, align 8
  %cmp.i.i1979 = fcmp ole float %188, 0.000000e+00
  %cmp1.i.i1980 = fcmp oge float %188, 6.553500e+04
  %add.i.i1982 = fadd float %188, 5.000000e-01
  %conv.i.i1983 = fptoui float %add.i.i1982 to i16
  %189 = load float, ptr %green148, align 4
  %cmp.i23.i1988 = fcmp ole float %189, 0.000000e+00
  %cmp1.i24.i1990 = fcmp oge float %189, 6.553500e+04
  %add.i26.i1992 = fadd float %189, 5.000000e-01
  %conv.i27.i1993 = fptoui float %add.i26.i1992 to i16
  %190 = load float, ptr %blue162, align 8
  %cmp.i31.i1998 = fcmp ole float %190, 0.000000e+00
  %cmp1.i32.i2000 = fcmp oge float %190, 6.553500e+04
  %add.i34.i2002 = fadd float %190, 5.000000e-01
  %conv.i35.i2003 = fptoui float %add.i34.i2002 to i16
  %191 = load float, ptr %opacity164, align 4
  %cmp.i39.i2007 = fcmp ole float %191, 0.000000e+00
  %cmp1.i40.i2009 = fcmp oge float %191, 6.553500e+04
  %add.i42.i2011 = fadd float %191, 5.000000e-01
  %conv.i43.i2012 = fptoui float %add.i42.i2011 to i16
  %colorspace.i2016 = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 1
  %index11.i2025 = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 9
  %192 = load i64, ptr %x11, align 8, !tbaa !721
  %sub332 = sub i64 %192, %add
  %cmp3333652 = icmp sgt i64 %sub332, 0
  %193 = load float, ptr %red1.i1254, align 8
  %cmp.i.i2037 = fcmp ole float %193, 0.000000e+00
  %cmp1.i.i2038 = fcmp oge float %193, 6.553500e+04
  %add.i.i2040 = fadd float %193, 5.000000e-01
  %conv.i.i2041 = fptoui float %add.i.i2040 to i16
  %194 = load float, ptr %green3.i1257, align 4
  %cmp.i23.i2046 = fcmp ole float %194, 0.000000e+00
  %cmp1.i24.i2048 = fcmp oge float %194, 6.553500e+04
  %add.i26.i2050 = fadd float %194, 5.000000e-01
  %conv.i27.i2051 = fptoui float %add.i26.i2050 to i16
  %195 = load float, ptr %blue5.i1259, align 8
  %cmp.i31.i2056 = fcmp ole float %195, 0.000000e+00
  %cmp1.i32.i2058 = fcmp oge float %195, 6.553500e+04
  %add.i34.i2060 = fadd float %195, 5.000000e-01
  %conv.i35.i2061 = fptoui float %add.i34.i2060 to i16
  %196 = load float, ptr %opacity7.i1262, align 4
  %cmp.i39.i2065 = fcmp ole float %196, 0.000000e+00
  %cmp1.i40.i2067 = fcmp oge float %196, 6.553500e+04
  %add.i42.i2069 = fadd float %196, 5.000000e-01
  %conv.i43.i2070 = fptoui float %add.i42.i2069 to i16
  %index11.i2083 = getelementptr inbounds %struct._MagickPixelPacket, ptr %matte, i64 0, i32 9
  %197 = load i64, ptr %columns, align 8, !tbaa !702
  %shl = shl nuw i64 %187, 1
  %add343 = add i64 %197, %shl
  %index11.i2199 = getelementptr inbounds %struct._MagickPixelPacket, ptr %trough, i64 0, i32 9
  %index11.i2141 = getelementptr inbounds %struct._MagickPixelPacket, ptr %shadow, i64 0, i32 9
  %198 = load i64, ptr %frame_info, align 8, !tbaa !708
  %199 = add i64 %192, %add
  %200 = add i64 %199, %197
  %sub377 = sub i64 %198, %200
  %cmp3793680 = icmp sgt i64 %sub377, 0
  %201 = load float, ptr %red173, align 8
  %cmp.i.i2327 = fcmp ole float %201, 0.000000e+00
  %cmp1.i.i2328 = fcmp oge float %201, 6.553500e+04
  %add.i.i2330 = fadd float %201, 5.000000e-01
  %conv.i.i2331 = fptoui float %add.i.i2330 to i16
  %202 = load float, ptr %green182, align 4
  %cmp.i23.i2336 = fcmp ole float %202, 0.000000e+00
  %cmp1.i24.i2338 = fcmp oge float %202, 6.553500e+04
  %add.i26.i2340 = fadd float %202, 5.000000e-01
  %conv.i27.i2341 = fptoui float %add.i26.i2340 to i16
  %203 = load float, ptr %blue191, align 8
  %cmp.i31.i2346 = fcmp ole float %203, 0.000000e+00
  %cmp1.i32.i2348 = fcmp oge float %203, 6.553500e+04
  %add.i34.i2350 = fadd float %203, 5.000000e-01
  %conv.i35.i2351 = fptoui float %add.i34.i2350 to i16
  %204 = load float, ptr %opacity193, align 4
  %cmp.i39.i2355 = fcmp ole float %204, 0.000000e+00
  %cmp1.i40.i2357 = fcmp oge float %204, 6.553500e+04
  %add.i42.i2359 = fadd float %204, 5.000000e-01
  %conv.i43.i2360 = fptoui float %add.i42.i2359 to i16
  %brmerge3937 = or i1 %cmp.i.i1979, %cmp1.i.i1980
  %not.cmp.i.i1979 = xor i1 %cmp.i.i1979, true
  %.mux3938 = sext i1 %not.cmp.i.i1979 to i16
  %spec.select4225 = select i1 %brmerge3937, i16 %.mux3938, i16 %conv.i.i1983
  %brmerge3939 = or i1 %cmp.i23.i1988, %cmp1.i24.i1990
  %not.cmp.i23.i1988 = xor i1 %cmp.i23.i1988, true
  %.mux3940 = sext i1 %not.cmp.i23.i1988 to i16
  %spec.select4312 = select i1 %brmerge3939, i16 %.mux3940, i16 %conv.i27.i1993
  %brmerge3941 = or i1 %cmp.i31.i1998, %cmp1.i32.i2000
  %not.cmp.i31.i1998 = xor i1 %cmp.i31.i1998, true
  %.mux3942 = sext i1 %not.cmp.i31.i1998 to i16
  %spec.select4226 = select i1 %brmerge3941, i16 %.mux3942, i16 %conv.i35.i2003
  %brmerge3943 = or i1 %cmp.i39.i2007, %cmp1.i40.i2009
  %not.cmp.i39.i2007 = xor i1 %cmp.i39.i2007, true
  %.mux3944 = sext i1 %not.cmp.i39.i2007 to i16
  %spec.select4345 = select i1 %brmerge3943, i16 %.mux3944, i16 %conv.i43.i2012
  %brmerge3947 = or i1 %cmp.i.i2037, %cmp1.i.i2038
  %not.cmp.i.i2037 = xor i1 %cmp.i.i2037, true
  %.mux3948 = sext i1 %not.cmp.i.i2037 to i16
  %spec.select4228 = select i1 %brmerge3947, i16 %.mux3948, i16 %conv.i.i2041
  %brmerge3949 = or i1 %cmp.i23.i2046, %cmp1.i24.i2048
  %not.cmp.i23.i2046 = xor i1 %cmp.i23.i2046, true
  %.mux3950 = sext i1 %not.cmp.i23.i2046 to i16
  %spec.select4313 = select i1 %brmerge3949, i16 %.mux3950, i16 %conv.i27.i2051
  %brmerge3951 = or i1 %cmp.i31.i2056, %cmp1.i32.i2058
  %not.cmp.i31.i2056 = xor i1 %cmp.i31.i2056, true
  %.mux3952 = sext i1 %not.cmp.i31.i2056 to i16
  %spec.select4229 = select i1 %brmerge3951, i16 %.mux3952, i16 %conv.i35.i2061
  %brmerge3953 = or i1 %cmp.i39.i2065, %cmp1.i40.i2067
  %not.cmp.i39.i2065 = xor i1 %cmp.i39.i2065, true
  %.mux3954 = sext i1 %not.cmp.i39.i2065 to i16
  %spec.select4346 = select i1 %brmerge3953, i16 %.mux3954, i16 %conv.i43.i2070
  %brmerge3977 = or i1 %cmp.i.i1979, %cmp1.i.i1980
  %not.cmp.i.i2211 = xor i1 %cmp.i.i1979, true
  %.mux3978 = sext i1 %not.cmp.i.i2211 to i16
  %spec.select4237 = select i1 %brmerge3977, i16 %.mux3978, i16 %conv.i.i1983
  %brmerge3979 = or i1 %cmp.i23.i1988, %cmp1.i24.i1990
  %not.cmp.i23.i2220 = xor i1 %cmp.i23.i1988, true
  %.mux3980 = sext i1 %not.cmp.i23.i2220 to i16
  %spec.select4316 = select i1 %brmerge3979, i16 %.mux3980, i16 %conv.i27.i1993
  %brmerge3981 = or i1 %cmp.i31.i1998, %cmp1.i32.i2000
  %not.cmp.i31.i2230 = xor i1 %cmp.i31.i1998, true
  %.mux3982 = sext i1 %not.cmp.i31.i2230 to i16
  %spec.select4238 = select i1 %brmerge3981, i16 %.mux3982, i16 %conv.i35.i2003
  %brmerge3983 = or i1 %cmp.i39.i2007, %cmp1.i40.i2009
  %not.cmp.i39.i2239 = xor i1 %cmp.i39.i2007, true
  %.mux3984 = sext i1 %not.cmp.i39.i2239 to i16
  %spec.select4349 = select i1 %brmerge3983, i16 %.mux3984, i16 %conv.i43.i2012
  %brmerge3987 = or i1 %cmp.i.i2037, %cmp1.i.i2038
  %not.cmp.i.i2269 = xor i1 %cmp.i.i2037, true
  %.mux3988 = sext i1 %not.cmp.i.i2269 to i16
  %spec.select4240 = select i1 %brmerge3987, i16 %.mux3988, i16 %conv.i.i2041
  %brmerge3989 = or i1 %cmp.i23.i2046, %cmp1.i24.i2048
  %not.cmp.i23.i2278 = xor i1 %cmp.i23.i2046, true
  %.mux3990 = sext i1 %not.cmp.i23.i2278 to i16
  %spec.select4317 = select i1 %brmerge3989, i16 %.mux3990, i16 %conv.i27.i2051
  %brmerge3991 = or i1 %cmp.i31.i2056, %cmp1.i32.i2058
  %not.cmp.i31.i2288 = xor i1 %cmp.i31.i2056, true
  %.mux3992 = sext i1 %not.cmp.i31.i2288 to i16
  %spec.select4241 = select i1 %brmerge3991, i16 %.mux3992, i16 %conv.i35.i2061
  %brmerge3993 = or i1 %cmp.i39.i2065, %cmp1.i40.i2067
  %not.cmp.i39.i2297 = xor i1 %cmp.i39.i2065, true
  %.mux3994 = sext i1 %not.cmp.i39.i2297 to i16
  %spec.select4350 = select i1 %brmerge3993, i16 %.mux3994, i16 %conv.i43.i2070
  %brmerge3997 = or i1 %cmp.i.i2327, %cmp1.i.i2328
  %not.cmp.i.i2327 = xor i1 %cmp.i.i2327, true
  %.mux3998 = sext i1 %not.cmp.i.i2327 to i16
  %spec.select4243 = select i1 %brmerge3997, i16 %.mux3998, i16 %conv.i.i2331
  %brmerge3999 = or i1 %cmp.i23.i2336, %cmp1.i24.i2338
  %not.cmp.i23.i2336 = xor i1 %cmp.i23.i2336, true
  %.mux4000 = sext i1 %not.cmp.i23.i2336 to i16
  %spec.select4318 = select i1 %brmerge3999, i16 %.mux4000, i16 %conv.i27.i2341
  %brmerge4001 = or i1 %cmp.i31.i2346, %cmp1.i32.i2348
  %not.cmp.i31.i2346 = xor i1 %cmp.i31.i2346, true
  %.mux4002 = sext i1 %not.cmp.i31.i2346 to i16
  %spec.select4244 = select i1 %brmerge4001, i16 %.mux4002, i16 %conv.i35.i2351
  %brmerge4003 = or i1 %cmp.i39.i2355, %cmp1.i40.i2357
  %not.cmp.i39.i2355 = xor i1 %cmp.i39.i2355, true
  %.mux4004 = sext i1 %not.cmp.i39.i2355 to i16
  %spec.select4351 = select i1 %brmerge4003, i16 %.mux4004, i16 %conv.i43.i2360
  br label %for.cond320.preheader, !dbg !1779

for.body283:                                      ; preds = %for.body283.lr.ph, %SetPixelPacket.exit1861
  %q.43619 = phi ptr [ %q.33641, %for.body283.lr.ph ], [ %incdec.ptr284, %SetPixelPacket.exit1861 ]
  %x239.23618 = phi i64 [ 0, %for.body283.lr.ph ], [ %inc287, %SetPixelPacket.exit1861 ]
  %frame_indexes.43615 = phi ptr [ %frame_indexes.33640, %for.body283.lr.ph ], [ %incdec.ptr285, %SetPixelPacket.exit1861 ]
  call void @llvm.dbg.value(metadata ptr %q.43619, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %x239.23618, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.43615, metadata !796, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata ptr %highlight, metadata !1676, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata ptr %q.43619, metadata !1677, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata ptr %frame_indexes.43615, metadata !1678, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata float %165, metadata !1685, metadata !DIExpression()), !dbg !1784
  %red1.i1812 = getelementptr inbounds %struct._PixelPacket, ptr %q.43619, i64 0, i32 2, !dbg !1786
  store i16 %spec.select4216, ptr %red1.i1812, align 2, !dbg !1786, !tbaa !891
  call void @llvm.dbg.value(metadata float %166, metadata !1685, metadata !DIExpression()), !dbg !1787
  %green3.i1822 = getelementptr inbounds %struct._PixelPacket, ptr %q.43619, i64 0, i32 1, !dbg !1789
  store i16 %spec.select4309, ptr %green3.i1822, align 2, !dbg !1789, !tbaa !894
  call void @llvm.dbg.value(metadata float %167, metadata !1685, metadata !DIExpression()), !dbg !1790
  store i16 %spec.select4217, ptr %q.43619, align 2, !dbg !1792, !tbaa !897
  call void @llvm.dbg.value(metadata float %168, metadata !1685, metadata !DIExpression()), !dbg !1793
  %opacity7.i1841 = getelementptr inbounds %struct._PixelPacket, ptr %q.43619, i64 0, i32 3, !dbg !1795
  store i16 %spec.select4342, ptr %opacity7.i1841, align 2, !dbg !1795, !tbaa !1006
  br i1 %cmp.i1843, label %if.then.i1850, label %lor.lhs.false.i1848, !dbg !1796

lor.lhs.false.i1848:                              ; preds = %for.body283
  %205 = load i32, ptr %call27, align 8, !dbg !1797, !tbaa !1707
  %cmp8.i1845 = icmp eq i32 %205, 2, !dbg !1798
  %cmp9.i1846 = icmp ne ptr %frame_indexes.43615, null
  %or.cond.i1847 = and i1 %cmp9.i1846, %cmp8.i1845, !dbg !1799
  br i1 %or.cond.i1847, label %if.then10.i1853, label %SetPixelPacket.exit1861, !dbg !1799

if.then.i1850:                                    ; preds = %for.body283
  %cmp9.old.not.i1849 = icmp eq ptr %frame_indexes.43615, null, !dbg !1800
  br i1 %cmp9.old.not.i1849, label %SetPixelPacket.exit1861, label %if.then10.i1853, !dbg !1801

if.then10.i1853:                                  ; preds = %if.then.i1850, %lor.lhs.false.i1848
  call void @llvm.dbg.value(metadata float %186, metadata !1685, metadata !DIExpression()), !dbg !1802
  store i16 %spec.select4218, ptr %frame_indexes.43615, align 2, !dbg !1800, !tbaa !1734
  br label %SetPixelPacket.exit1861, !dbg !1800

SetPixelPacket.exit1861:                          ; preds = %lor.lhs.false.i1848, %if.then.i1850, %if.then10.i1853
  %incdec.ptr284 = getelementptr inbounds %struct._PixelPacket, ptr %q.43619, i64 1, !dbg !1804
  call void @llvm.dbg.value(metadata ptr %incdec.ptr284, metadata !801, metadata !DIExpression()), !dbg !1640
  %incdec.ptr285 = getelementptr inbounds i16, ptr %frame_indexes.43615, i64 1, !dbg !1805
  call void @llvm.dbg.value(metadata ptr %incdec.ptr285, metadata !796, metadata !DIExpression()), !dbg !1640
  %inc287 = add nuw nsw i64 %x239.23618, 1, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %inc287, metadata !800, metadata !DIExpression()), !dbg !1640
  %exitcond4372.not = icmp eq i64 %inc287, %148, !dbg !1807
  br i1 %exitcond4372.not, label %for.end288, label %for.body283, !dbg !1773, !llvm.loop !1808

for.end288:                                       ; preds = %SetPixelPacket.exit1861, %for.cond279.preheader
  %frame_indexes.4.lcssa = phi ptr [ %frame_indexes.33640, %for.cond279.preheader ], [ %incdec.ptr285, %SetPixelPacket.exit1861 ], !dbg !1640
  %q.4.lcssa = phi ptr [ %q.33641, %for.cond279.preheader ], [ %incdec.ptr284, %SetPixelPacket.exit1861 ], !dbg !1640
  call void @llvm.dbg.value(metadata i64 %sub292, metadata !794, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 0, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %q.4.lcssa, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.4.lcssa, metadata !796, metadata !DIExpression()), !dbg !1640
  br i1 %cmp2943622, label %for.body296.lr.ph, label %for.cond302.preheader, !dbg !1810

for.body296.lr.ph:                                ; preds = %for.end288
  %206 = load i32, ptr %colorspace.i1842, align 4, !tbaa !925
  %cmp.i1901 = icmp eq i32 %206, 12
  %207 = load float, ptr %index11.i1909, align 8
  %cmp.i47.i1910 = fcmp ole float %207, 0.000000e+00
  %cmp1.i48.i1912 = fcmp oge float %207, 6.553500e+04
  %add.i50.i1914 = fadd float %207, 5.000000e-01
  %conv.i51.i1915 = fptoui float %add.i50.i1914 to i16
  %brmerge3925 = or i1 %cmp.i47.i1910, %cmp1.i48.i1912
  %not.cmp.i47.i1910 = xor i1 %cmp.i47.i1910, true
  %.mux3926 = sext i1 %not.cmp.i47.i1910 to i16
  %spec.select4221 = select i1 %brmerge3925, i16 %.mux3926, i16 %conv.i51.i1915
  br label %for.body296, !dbg !1810

for.cond302.preheader:                            ; preds = %SetPixelPacket.exit1919, %for.end288
  %frame_indexes.5.lcssa = phi ptr [ %frame_indexes.4.lcssa, %for.end288 ], [ %incdec.ptr298, %SetPixelPacket.exit1919 ], !dbg !1640
  %q.5.lcssa = phi ptr [ %q.4.lcssa, %for.end288 ], [ %incdec.ptr297, %SetPixelPacket.exit1919 ], !dbg !1640
  call void @llvm.dbg.value(metadata ptr %q.5.lcssa, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 0, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.5.lcssa, metadata !796, metadata !DIExpression()), !dbg !1640
  br i1 %cmp2473606, label %for.body306.lr.ph, label %for.inc312, !dbg !1812

for.body306.lr.ph:                                ; preds = %for.cond302.preheader
  %208 = load i32, ptr %colorspace.i1842, align 4, !tbaa !925
  %cmp.i1959 = icmp eq i32 %208, 12
  %209 = load float, ptr %index11.i1967, align 8
  %cmp.i47.i1968 = fcmp ole float %209, 0.000000e+00
  %cmp1.i48.i1970 = fcmp oge float %209, 6.553500e+04
  %add.i50.i1972 = fadd float %209, 5.000000e-01
  %conv.i51.i1973 = fptoui float %add.i50.i1972 to i16
  %brmerge3935 = or i1 %cmp.i47.i1968, %cmp1.i48.i1970
  %not.cmp.i47.i1968 = xor i1 %cmp.i47.i1968, true
  %.mux3936 = sext i1 %not.cmp.i47.i1968 to i16
  %spec.select4224 = select i1 %brmerge3935, i16 %.mux3936, i16 %conv.i51.i1973
  br label %for.body306, !dbg !1812

for.body296:                                      ; preds = %for.body296.lr.ph, %SetPixelPacket.exit1919
  %q.53627 = phi ptr [ %q.4.lcssa, %for.body296.lr.ph ], [ %incdec.ptr297, %SetPixelPacket.exit1919 ]
  %x239.33626 = phi i64 [ 0, %for.body296.lr.ph ], [ %inc300, %SetPixelPacket.exit1919 ]
  %frame_indexes.53623 = phi ptr [ %frame_indexes.4.lcssa, %for.body296.lr.ph ], [ %incdec.ptr298, %SetPixelPacket.exit1919 ]
  call void @llvm.dbg.value(metadata ptr %q.53627, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %x239.33626, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.53623, metadata !796, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata ptr %matte, metadata !1676, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata ptr %q.53627, metadata !1677, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata ptr %frame_indexes.53623, metadata !1678, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata float %170, metadata !1685, metadata !DIExpression()), !dbg !1818
  %red1.i1870 = getelementptr inbounds %struct._PixelPacket, ptr %q.53627, i64 0, i32 2, !dbg !1820
  store i16 %spec.select4219, ptr %red1.i1870, align 2, !dbg !1820, !tbaa !891
  call void @llvm.dbg.value(metadata float %171, metadata !1685, metadata !DIExpression()), !dbg !1821
  %green3.i1880 = getelementptr inbounds %struct._PixelPacket, ptr %q.53627, i64 0, i32 1, !dbg !1823
  store i16 %spec.select4310, ptr %green3.i1880, align 2, !dbg !1823, !tbaa !894
  call void @llvm.dbg.value(metadata float %172, metadata !1685, metadata !DIExpression()), !dbg !1824
  store i16 %spec.select4220, ptr %q.53627, align 2, !dbg !1826, !tbaa !897
  call void @llvm.dbg.value(metadata float %173, metadata !1685, metadata !DIExpression()), !dbg !1827
  %opacity7.i1899 = getelementptr inbounds %struct._PixelPacket, ptr %q.53627, i64 0, i32 3, !dbg !1829
  store i16 %spec.select4343, ptr %opacity7.i1899, align 2, !dbg !1829, !tbaa !1006
  br i1 %cmp.i1901, label %if.then.i1908, label %lor.lhs.false.i1906, !dbg !1830

lor.lhs.false.i1906:                              ; preds = %for.body296
  %210 = load i32, ptr %call27, align 8, !dbg !1831, !tbaa !1707
  %cmp8.i1903 = icmp eq i32 %210, 2, !dbg !1832
  %cmp9.i1904 = icmp ne ptr %frame_indexes.53623, null
  %or.cond.i1905 = and i1 %cmp9.i1904, %cmp8.i1903, !dbg !1833
  br i1 %or.cond.i1905, label %if.then10.i1911, label %SetPixelPacket.exit1919, !dbg !1833

if.then.i1908:                                    ; preds = %for.body296
  %cmp9.old.not.i1907 = icmp eq ptr %frame_indexes.53623, null, !dbg !1834
  br i1 %cmp9.old.not.i1907, label %SetPixelPacket.exit1919, label %if.then10.i1911, !dbg !1835

if.then10.i1911:                                  ; preds = %if.then.i1908, %lor.lhs.false.i1906
  call void @llvm.dbg.value(metadata float %207, metadata !1685, metadata !DIExpression()), !dbg !1836
  store i16 %spec.select4221, ptr %frame_indexes.53623, align 2, !dbg !1834, !tbaa !1734
  br label %SetPixelPacket.exit1919, !dbg !1834

SetPixelPacket.exit1919:                          ; preds = %lor.lhs.false.i1906, %if.then.i1908, %if.then10.i1911
  %incdec.ptr297 = getelementptr inbounds %struct._PixelPacket, ptr %q.53627, i64 1, !dbg !1838
  call void @llvm.dbg.value(metadata ptr %incdec.ptr297, metadata !801, metadata !DIExpression()), !dbg !1640
  %incdec.ptr298 = getelementptr inbounds i16, ptr %frame_indexes.53623, i64 1, !dbg !1839
  call void @llvm.dbg.value(metadata ptr %incdec.ptr298, metadata !796, metadata !DIExpression()), !dbg !1640
  %inc300 = add nuw nsw i64 %x239.33626, 1, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %inc300, metadata !800, metadata !DIExpression()), !dbg !1640
  %exitcond4373.not = icmp eq i64 %inc300, %sub292, !dbg !1841
  br i1 %exitcond4373.not, label %for.cond302.preheader, label %for.body296, !dbg !1810, !llvm.loop !1842

for.body306:                                      ; preds = %for.body306.lr.ph, %SetPixelPacket.exit1977
  %q.63635 = phi ptr [ %q.5.lcssa, %for.body306.lr.ph ], [ %incdec.ptr307, %SetPixelPacket.exit1977 ]
  %x239.43634 = phi i64 [ 0, %for.body306.lr.ph ], [ %inc310, %SetPixelPacket.exit1977 ]
  %frame_indexes.63631 = phi ptr [ %frame_indexes.5.lcssa, %for.body306.lr.ph ], [ %incdec.ptr308, %SetPixelPacket.exit1977 ]
  call void @llvm.dbg.value(metadata ptr %q.63635, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %x239.43634, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.63631, metadata !796, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata ptr %shadow, metadata !1676, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata ptr %q.63635, metadata !1677, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata ptr %frame_indexes.63631, metadata !1678, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata float %174, metadata !1685, metadata !DIExpression()), !dbg !1848
  %red1.i1928 = getelementptr inbounds %struct._PixelPacket, ptr %q.63635, i64 0, i32 2, !dbg !1850
  store i16 %spec.select4222, ptr %red1.i1928, align 2, !dbg !1850, !tbaa !891
  call void @llvm.dbg.value(metadata float %175, metadata !1685, metadata !DIExpression()), !dbg !1851
  %green3.i1938 = getelementptr inbounds %struct._PixelPacket, ptr %q.63635, i64 0, i32 1, !dbg !1853
  store i16 %spec.select4311, ptr %green3.i1938, align 2, !dbg !1853, !tbaa !894
  call void @llvm.dbg.value(metadata float %176, metadata !1685, metadata !DIExpression()), !dbg !1854
  store i16 %spec.select4223, ptr %q.63635, align 2, !dbg !1856, !tbaa !897
  call void @llvm.dbg.value(metadata float %177, metadata !1685, metadata !DIExpression()), !dbg !1857
  %opacity7.i1957 = getelementptr inbounds %struct._PixelPacket, ptr %q.63635, i64 0, i32 3, !dbg !1859
  store i16 %spec.select4344, ptr %opacity7.i1957, align 2, !dbg !1859, !tbaa !1006
  br i1 %cmp.i1959, label %if.then.i1966, label %lor.lhs.false.i1964, !dbg !1860

lor.lhs.false.i1964:                              ; preds = %for.body306
  %211 = load i32, ptr %call27, align 8, !dbg !1861, !tbaa !1707
  %cmp8.i1961 = icmp eq i32 %211, 2, !dbg !1862
  %cmp9.i1962 = icmp ne ptr %frame_indexes.63631, null
  %or.cond.i1963 = and i1 %cmp9.i1962, %cmp8.i1961, !dbg !1863
  br i1 %or.cond.i1963, label %if.then10.i1969, label %SetPixelPacket.exit1977, !dbg !1863

if.then.i1966:                                    ; preds = %for.body306
  %cmp9.old.not.i1965 = icmp eq ptr %frame_indexes.63631, null, !dbg !1864
  br i1 %cmp9.old.not.i1965, label %SetPixelPacket.exit1977, label %if.then10.i1969, !dbg !1865

if.then10.i1969:                                  ; preds = %if.then.i1966, %lor.lhs.false.i1964
  call void @llvm.dbg.value(metadata float %209, metadata !1685, metadata !DIExpression()), !dbg !1866
  store i16 %spec.select4224, ptr %frame_indexes.63631, align 2, !dbg !1864, !tbaa !1734
  br label %SetPixelPacket.exit1977, !dbg !1864

SetPixelPacket.exit1977:                          ; preds = %lor.lhs.false.i1964, %if.then.i1966, %if.then10.i1969
  %incdec.ptr307 = getelementptr inbounds %struct._PixelPacket, ptr %q.63635, i64 1, !dbg !1868
  call void @llvm.dbg.value(metadata ptr %incdec.ptr307, metadata !801, metadata !DIExpression()), !dbg !1640
  %incdec.ptr308 = getelementptr inbounds i16, ptr %frame_indexes.63631, i64 1, !dbg !1869
  call void @llvm.dbg.value(metadata ptr %incdec.ptr308, metadata !796, metadata !DIExpression()), !dbg !1640
  %inc310 = add nuw nsw i64 %x239.43634, 1, !dbg !1870
  call void @llvm.dbg.value(metadata i64 %inc310, metadata !800, metadata !DIExpression()), !dbg !1640
  %exitcond4374.not = icmp eq i64 %inc310, %148, !dbg !1871
  br i1 %exitcond4374.not, label %for.inc312, label %for.body306, !dbg !1812, !llvm.loop !1872

for.inc312:                                       ; preds = %SetPixelPacket.exit1977, %for.cond302.preheader
  %frame_indexes.6.lcssa = phi ptr [ %frame_indexes.5.lcssa, %for.cond302.preheader ], [ %incdec.ptr308, %SetPixelPacket.exit1977 ], !dbg !1640
  %q.6.lcssa = phi ptr [ %q.5.lcssa, %for.cond302.preheader ], [ %incdec.ptr307, %SetPixelPacket.exit1977 ], !dbg !1640
  %inc313 = add nuw nsw i64 %y.13639, 1, !dbg !1874
  call void @llvm.dbg.value(metadata ptr %q.6.lcssa, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.6.lcssa, metadata !796, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %inc313, metadata !795, metadata !DIExpression()), !dbg !821
  %exitcond4375.not = icmp eq i64 %inc313, %sub275, !dbg !1657
  br i1 %exitcond4375.not, label %for.cond315.preheader, label %for.cond279.preheader, !dbg !1660, !llvm.loop !1875

for.cond320.preheader:                            ; preds = %for.cond320.preheader.lr.ph, %for.inc397
  %indvars.iv4378 = phi i64 [ %add343, %for.cond320.preheader.lr.ph ], [ %indvars.iv.next4379, %for.inc397 ]
  %q.73700 = phi ptr [ %q.3.lcssa, %for.cond320.preheader.lr.ph ], [ %q.13.lcssa, %for.inc397 ]
  %frame_indexes.73699 = phi ptr [ %frame_indexes.3.lcssa, %for.cond320.preheader.lr.ph ], [ %frame_indexes.13.lcssa, %for.inc397 ]
  %y.23697 = phi i64 [ 0, %for.cond320.preheader.lr.ph ], [ %inc398, %for.inc397 ]
  call void @llvm.dbg.value(metadata i64 %y.23697, metadata !795, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata ptr %q.73700, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 0, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.73699, metadata !796, metadata !DIExpression()), !dbg !1640
  br i1 %cmp2473606, label %for.body324.lr.ph, label %for.cond330.preheader, !dbg !1877

for.body324.lr.ph:                                ; preds = %for.cond320.preheader
  %212 = load i32, ptr %colorspace.i2016, align 4, !tbaa !925
  %cmp.i2017 = icmp eq i32 %212, 12
  %213 = load float, ptr %index11.i2025, align 8
  %cmp.i47.i2026 = fcmp ole float %213, 0.000000e+00
  %cmp1.i48.i2028 = fcmp oge float %213, 6.553500e+04
  %add.i50.i2030 = fadd float %213, 5.000000e-01
  %conv.i51.i2031 = fptoui float %add.i50.i2030 to i16
  %brmerge3945 = or i1 %cmp.i47.i2026, %cmp1.i48.i2028
  %not.cmp.i47.i2026 = xor i1 %cmp.i47.i2026, true
  %.mux3946 = sext i1 %not.cmp.i47.i2026 to i16
  %spec.select4227 = select i1 %brmerge3945, i16 %.mux3946, i16 %conv.i51.i2031
  br label %for.body324, !dbg !1877

for.cond330.preheader:                            ; preds = %SetPixelPacket.exit2035, %for.cond320.preheader
  %frame_indexes.8.lcssa = phi ptr [ %frame_indexes.73699, %for.cond320.preheader ], [ %incdec.ptr326, %SetPixelPacket.exit2035 ], !dbg !1640
  %q.8.lcssa = phi ptr [ %q.73700, %for.cond320.preheader ], [ %incdec.ptr325, %SetPixelPacket.exit2035 ], !dbg !1640
  call void @llvm.dbg.value(metadata ptr %q.8.lcssa, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 0, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.8.lcssa, metadata !796, metadata !DIExpression()), !dbg !1640
  br i1 %cmp3333652, label %for.body335.lr.ph, label %for.end340, !dbg !1880

for.body335.lr.ph:                                ; preds = %for.cond330.preheader
  %214 = load i32, ptr %colorspace.i2016, align 4, !tbaa !925
  %cmp.i2075 = icmp eq i32 %214, 12
  %215 = load float, ptr %index11.i2083, align 8
  %cmp.i47.i2084 = fcmp ole float %215, 0.000000e+00
  %cmp1.i48.i2086 = fcmp oge float %215, 6.553500e+04
  %add.i50.i2088 = fadd float %215, 5.000000e-01
  %conv.i51.i2089 = fptoui float %add.i50.i2088 to i16
  %brmerge3955 = or i1 %cmp.i47.i2084, %cmp1.i48.i2086
  %not.cmp.i47.i2084 = xor i1 %cmp.i47.i2084, true
  %.mux3956 = sext i1 %not.cmp.i47.i2084 to i16
  %spec.select4230 = select i1 %brmerge3955, i16 %.mux3956, i16 %conv.i51.i2089
  br label %for.body335, !dbg !1880

for.body324:                                      ; preds = %for.body324.lr.ph, %SetPixelPacket.exit2035
  %q.83649 = phi ptr [ %q.73700, %for.body324.lr.ph ], [ %incdec.ptr325, %SetPixelPacket.exit2035 ]
  %x239.53648 = phi i64 [ 0, %for.body324.lr.ph ], [ %inc328, %SetPixelPacket.exit2035 ]
  %frame_indexes.83645 = phi ptr [ %frame_indexes.73699, %for.body324.lr.ph ], [ %incdec.ptr326, %SetPixelPacket.exit2035 ]
  call void @llvm.dbg.value(metadata ptr %q.83649, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %x239.53648, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.83645, metadata !796, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata ptr %highlight, metadata !1676, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata ptr %q.83649, metadata !1677, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata ptr %frame_indexes.83645, metadata !1678, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata float %188, metadata !1685, metadata !DIExpression()), !dbg !1886
  %red1.i1986 = getelementptr inbounds %struct._PixelPacket, ptr %q.83649, i64 0, i32 2, !dbg !1888
  store i16 %spec.select4225, ptr %red1.i1986, align 2, !dbg !1888, !tbaa !891
  call void @llvm.dbg.value(metadata float %189, metadata !1685, metadata !DIExpression()), !dbg !1889
  %green3.i1996 = getelementptr inbounds %struct._PixelPacket, ptr %q.83649, i64 0, i32 1, !dbg !1891
  store i16 %spec.select4312, ptr %green3.i1996, align 2, !dbg !1891, !tbaa !894
  call void @llvm.dbg.value(metadata float %190, metadata !1685, metadata !DIExpression()), !dbg !1892
  store i16 %spec.select4226, ptr %q.83649, align 2, !dbg !1894, !tbaa !897
  call void @llvm.dbg.value(metadata float %191, metadata !1685, metadata !DIExpression()), !dbg !1895
  %opacity7.i2015 = getelementptr inbounds %struct._PixelPacket, ptr %q.83649, i64 0, i32 3, !dbg !1897
  store i16 %spec.select4345, ptr %opacity7.i2015, align 2, !dbg !1897, !tbaa !1006
  br i1 %cmp.i2017, label %if.then.i2024, label %lor.lhs.false.i2022, !dbg !1898

lor.lhs.false.i2022:                              ; preds = %for.body324
  %216 = load i32, ptr %call27, align 8, !dbg !1899, !tbaa !1707
  %cmp8.i2019 = icmp eq i32 %216, 2, !dbg !1900
  %cmp9.i2020 = icmp ne ptr %frame_indexes.83645, null
  %or.cond.i2021 = and i1 %cmp9.i2020, %cmp8.i2019, !dbg !1901
  br i1 %or.cond.i2021, label %if.then10.i2027, label %SetPixelPacket.exit2035, !dbg !1901

if.then.i2024:                                    ; preds = %for.body324
  %cmp9.old.not.i2023 = icmp eq ptr %frame_indexes.83645, null, !dbg !1902
  br i1 %cmp9.old.not.i2023, label %SetPixelPacket.exit2035, label %if.then10.i2027, !dbg !1903

if.then10.i2027:                                  ; preds = %if.then.i2024, %lor.lhs.false.i2022
  call void @llvm.dbg.value(metadata float %213, metadata !1685, metadata !DIExpression()), !dbg !1904
  store i16 %spec.select4227, ptr %frame_indexes.83645, align 2, !dbg !1902, !tbaa !1734
  br label %SetPixelPacket.exit2035, !dbg !1902

SetPixelPacket.exit2035:                          ; preds = %lor.lhs.false.i2022, %if.then.i2024, %if.then10.i2027
  %incdec.ptr325 = getelementptr inbounds %struct._PixelPacket, ptr %q.83649, i64 1, !dbg !1906
  call void @llvm.dbg.value(metadata ptr %incdec.ptr325, metadata !801, metadata !DIExpression()), !dbg !1640
  %incdec.ptr326 = getelementptr inbounds i16, ptr %frame_indexes.83645, i64 1, !dbg !1907
  call void @llvm.dbg.value(metadata ptr %incdec.ptr326, metadata !796, metadata !DIExpression()), !dbg !1640
  %inc328 = add nuw nsw i64 %x239.53648, 1, !dbg !1908
  call void @llvm.dbg.value(metadata i64 %inc328, metadata !800, metadata !DIExpression()), !dbg !1640
  %exitcond4376.not = icmp eq i64 %inc328, %148, !dbg !1909
  br i1 %exitcond4376.not, label %for.cond330.preheader, label %for.body324, !dbg !1877, !llvm.loop !1910

for.body335:                                      ; preds = %for.body335.lr.ph, %SetPixelPacket.exit2093
  %q.93657 = phi ptr [ %q.8.lcssa, %for.body335.lr.ph ], [ %incdec.ptr336, %SetPixelPacket.exit2093 ]
  %x239.63656 = phi i64 [ 0, %for.body335.lr.ph ], [ %inc339, %SetPixelPacket.exit2093 ]
  %frame_indexes.93653 = phi ptr [ %frame_indexes.8.lcssa, %for.body335.lr.ph ], [ %incdec.ptr337, %SetPixelPacket.exit2093 ]
  call void @llvm.dbg.value(metadata ptr %q.93657, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %x239.63656, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.93653, metadata !796, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata ptr %matte, metadata !1676, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata ptr %q.93657, metadata !1677, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata ptr %frame_indexes.93653, metadata !1678, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata float %193, metadata !1685, metadata !DIExpression()), !dbg !1916
  %red1.i2044 = getelementptr inbounds %struct._PixelPacket, ptr %q.93657, i64 0, i32 2, !dbg !1918
  store i16 %spec.select4228, ptr %red1.i2044, align 2, !dbg !1918, !tbaa !891
  call void @llvm.dbg.value(metadata float %194, metadata !1685, metadata !DIExpression()), !dbg !1919
  %green3.i2054 = getelementptr inbounds %struct._PixelPacket, ptr %q.93657, i64 0, i32 1, !dbg !1921
  store i16 %spec.select4313, ptr %green3.i2054, align 2, !dbg !1921, !tbaa !894
  call void @llvm.dbg.value(metadata float %195, metadata !1685, metadata !DIExpression()), !dbg !1922
  store i16 %spec.select4229, ptr %q.93657, align 2, !dbg !1924, !tbaa !897
  call void @llvm.dbg.value(metadata float %196, metadata !1685, metadata !DIExpression()), !dbg !1925
  %opacity7.i2073 = getelementptr inbounds %struct._PixelPacket, ptr %q.93657, i64 0, i32 3, !dbg !1927
  store i16 %spec.select4346, ptr %opacity7.i2073, align 2, !dbg !1927, !tbaa !1006
  br i1 %cmp.i2075, label %if.then.i2082, label %lor.lhs.false.i2080, !dbg !1928

lor.lhs.false.i2080:                              ; preds = %for.body335
  %217 = load i32, ptr %call27, align 8, !dbg !1929, !tbaa !1707
  %cmp8.i2077 = icmp eq i32 %217, 2, !dbg !1930
  %cmp9.i2078 = icmp ne ptr %frame_indexes.93653, null
  %or.cond.i2079 = and i1 %cmp9.i2078, %cmp8.i2077, !dbg !1931
  br i1 %or.cond.i2079, label %if.then10.i2085, label %SetPixelPacket.exit2093, !dbg !1931

if.then.i2082:                                    ; preds = %for.body335
  %cmp9.old.not.i2081 = icmp eq ptr %frame_indexes.93653, null, !dbg !1932
  br i1 %cmp9.old.not.i2081, label %SetPixelPacket.exit2093, label %if.then10.i2085, !dbg !1933

if.then10.i2085:                                  ; preds = %if.then.i2082, %lor.lhs.false.i2080
  call void @llvm.dbg.value(metadata float %215, metadata !1685, metadata !DIExpression()), !dbg !1934
  store i16 %spec.select4230, ptr %frame_indexes.93653, align 2, !dbg !1932, !tbaa !1734
  br label %SetPixelPacket.exit2093, !dbg !1932

SetPixelPacket.exit2093:                          ; preds = %lor.lhs.false.i2080, %if.then.i2082, %if.then10.i2085
  %incdec.ptr336 = getelementptr inbounds %struct._PixelPacket, ptr %q.93657, i64 1, !dbg !1936
  call void @llvm.dbg.value(metadata ptr %incdec.ptr336, metadata !801, metadata !DIExpression()), !dbg !1640
  %incdec.ptr337 = getelementptr inbounds i16, ptr %frame_indexes.93653, i64 1, !dbg !1937
  call void @llvm.dbg.value(metadata ptr %incdec.ptr337, metadata !796, metadata !DIExpression()), !dbg !1640
  %inc339 = add nuw nsw i64 %x239.63656, 1, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %inc339, metadata !800, metadata !DIExpression()), !dbg !1640
  %exitcond4377.not = icmp eq i64 %inc339, %sub332, !dbg !1939
  br i1 %exitcond4377.not, label %for.end340, label %for.body335, !dbg !1880, !llvm.loop !1940

for.end340:                                       ; preds = %SetPixelPacket.exit2093, %for.cond330.preheader
  %frame_indexes.9.lcssa = phi ptr [ %frame_indexes.8.lcssa, %for.cond330.preheader ], [ %incdec.ptr337, %SetPixelPacket.exit2093 ], !dbg !1640
  %q.9.lcssa = phi ptr [ %q.8.lcssa, %for.cond330.preheader ], [ %incdec.ptr336, %SetPixelPacket.exit2093 ], !dbg !1640
  %sub344 = sub i64 %add343, %y.23697, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %sub344, metadata !794, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 0, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %q.9.lcssa, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.9.lcssa, metadata !796, metadata !DIExpression()), !dbg !1640
  %cmp3463661 = icmp sgt i64 %sub344, 0, !dbg !1943
  br i1 %cmp3463661, label %for.body348.lr.ph, label %for.cond359.preheader, !dbg !1946

for.body348.lr.ph:                                ; preds = %for.end340
  %218 = load float, ptr %red202, align 8
  %cmp.i.i2153 = fcmp ole float %218, 0.000000e+00
  %cmp1.i.i2154 = fcmp oge float %218, 6.553500e+04
  %add.i.i2156 = fadd float %218, 5.000000e-01
  %conv.i.i2157 = fptoui float %add.i.i2156 to i16
  %219 = load float, ptr %green211, align 4
  %cmp.i23.i2162 = fcmp ole float %219, 0.000000e+00
  %cmp1.i24.i2164 = fcmp oge float %219, 6.553500e+04
  %add.i26.i2166 = fadd float %219, 5.000000e-01
  %conv.i27.i2167 = fptoui float %add.i26.i2166 to i16
  %220 = load float, ptr %blue220, align 8
  %cmp.i31.i2172 = fcmp ole float %220, 0.000000e+00
  %cmp1.i32.i2174 = fcmp oge float %220, 6.553500e+04
  %add.i34.i2176 = fadd float %220, 5.000000e-01
  %conv.i35.i2177 = fptoui float %add.i34.i2176 to i16
  %221 = load float, ptr %opacity222, align 4
  %cmp.i39.i2181 = fcmp ole float %221, 0.000000e+00
  %cmp1.i40.i2183 = fcmp oge float %221, 6.553500e+04
  %add.i42.i2185 = fadd float %221, 5.000000e-01
  %conv.i43.i2186 = fptoui float %add.i42.i2185 to i16
  %222 = load float, ptr %index11.i2199, align 8
  %cmp.i47.i2200 = fcmp ole float %222, 0.000000e+00
  %cmp1.i48.i2202 = fcmp oge float %222, 6.553500e+04
  %add.i50.i2204 = fadd float %222, 5.000000e-01
  %conv.i51.i2205 = fptoui float %add.i50.i2204 to i16
  %223 = load float, ptr %red173, align 8
  %cmp.i.i2095 = fcmp ole float %223, 0.000000e+00
  %cmp1.i.i2096 = fcmp oge float %223, 6.553500e+04
  %add.i.i2098 = fadd float %223, 5.000000e-01
  %conv.i.i2099 = fptoui float %add.i.i2098 to i16
  %224 = load float, ptr %green182, align 4
  %cmp.i23.i2104 = fcmp ole float %224, 0.000000e+00
  %cmp1.i24.i2106 = fcmp oge float %224, 6.553500e+04
  %add.i26.i2108 = fadd float %224, 5.000000e-01
  %conv.i27.i2109 = fptoui float %add.i26.i2108 to i16
  %225 = load float, ptr %blue191, align 8
  %cmp.i31.i2114 = fcmp ole float %225, 0.000000e+00
  %cmp1.i32.i2116 = fcmp oge float %225, 6.553500e+04
  %add.i34.i2118 = fadd float %225, 5.000000e-01
  %conv.i35.i2119 = fptoui float %add.i34.i2118 to i16
  %226 = load float, ptr %opacity193, align 4
  %cmp.i39.i2123 = fcmp ole float %226, 0.000000e+00
  %cmp1.i40.i2125 = fcmp oge float %226, 6.553500e+04
  %add.i42.i2127 = fadd float %226, 5.000000e-01
  %conv.i43.i2128 = fptoui float %add.i42.i2127 to i16
  %227 = load float, ptr %index11.i2141, align 8
  %cmp.i47.i2142 = fcmp ole float %227, 0.000000e+00
  %cmp1.i48.i2144 = fcmp oge float %227, 6.553500e+04
  %add.i50.i2146 = fadd float %227, 5.000000e-01
  %conv.i51.i2147 = fptoui float %add.i50.i2146 to i16
  %brmerge3967 = or i1 %cmp.i.i2153, %cmp1.i.i2154
  %not.cmp.i.i2153 = xor i1 %cmp.i.i2153, true
  %.mux3968 = sext i1 %not.cmp.i.i2153 to i16
  %spec.select4234 = select i1 %brmerge3967, i16 %.mux3968, i16 %conv.i.i2157
  %brmerge3969 = or i1 %cmp.i23.i2162, %cmp1.i24.i2164
  %not.cmp.i23.i2162 = xor i1 %cmp.i23.i2162, true
  %.mux3970 = sext i1 %not.cmp.i23.i2162 to i16
  %spec.select4315 = select i1 %brmerge3969, i16 %.mux3970, i16 %conv.i27.i2167
  %brmerge3971 = or i1 %cmp.i31.i2172, %cmp1.i32.i2174
  %not.cmp.i31.i2172 = xor i1 %cmp.i31.i2172, true
  %.mux3972 = sext i1 %not.cmp.i31.i2172 to i16
  %spec.select4235 = select i1 %brmerge3971, i16 %.mux3972, i16 %conv.i35.i2177
  %brmerge3973 = or i1 %cmp.i39.i2181, %cmp1.i40.i2183
  %not.cmp.i39.i2181 = xor i1 %cmp.i39.i2181, true
  %.mux3974 = sext i1 %not.cmp.i39.i2181 to i16
  %spec.select4348 = select i1 %brmerge3973, i16 %.mux3974, i16 %conv.i43.i2186
  %brmerge3975 = or i1 %cmp.i47.i2200, %cmp1.i48.i2202
  %not.cmp.i47.i2200 = xor i1 %cmp.i47.i2200, true
  %.mux3976 = sext i1 %not.cmp.i47.i2200 to i16
  %spec.select4236 = select i1 %brmerge3975, i16 %.mux3976, i16 %conv.i51.i2205
  %brmerge3957 = or i1 %cmp.i.i2095, %cmp1.i.i2096
  %not.cmp.i.i2095 = xor i1 %cmp.i.i2095, true
  %.mux3958 = sext i1 %not.cmp.i.i2095 to i16
  %spec.select4231 = select i1 %brmerge3957, i16 %.mux3958, i16 %conv.i.i2099
  %brmerge3959 = or i1 %cmp.i23.i2104, %cmp1.i24.i2106
  %not.cmp.i23.i2104 = xor i1 %cmp.i23.i2104, true
  %.mux3960 = sext i1 %not.cmp.i23.i2104 to i16
  %spec.select4314 = select i1 %brmerge3959, i16 %.mux3960, i16 %conv.i27.i2109
  %brmerge3961 = or i1 %cmp.i31.i2114, %cmp1.i32.i2116
  %not.cmp.i31.i2114 = xor i1 %cmp.i31.i2114, true
  %.mux3962 = sext i1 %not.cmp.i31.i2114 to i16
  %spec.select4232 = select i1 %brmerge3961, i16 %.mux3962, i16 %conv.i35.i2119
  %brmerge3963 = or i1 %cmp.i39.i2123, %cmp1.i40.i2125
  %not.cmp.i39.i2123 = xor i1 %cmp.i39.i2123, true
  %.mux3964 = sext i1 %not.cmp.i39.i2123 to i16
  %spec.select4347 = select i1 %brmerge3963, i16 %.mux3964, i16 %conv.i43.i2128
  %brmerge3965 = or i1 %cmp.i47.i2142, %cmp1.i48.i2144
  %not.cmp.i47.i2142 = xor i1 %cmp.i47.i2142, true
  %.mux3966 = sext i1 %not.cmp.i47.i2142 to i16
  %spec.select4233 = select i1 %brmerge3965, i16 %.mux3966, i16 %conv.i51.i2147
  br label %for.body348, !dbg !1946

for.cond359.preheader:                            ; preds = %if.end353, %for.end340
  %frame_indexes.10.lcssa = phi ptr [ %frame_indexes.9.lcssa, %for.end340 ], [ %incdec.ptr355, %if.end353 ], !dbg !1640
  %x239.7.lcssa = phi i64 [ 0, %for.end340 ], [ %indvars.iv4378, %if.end353 ], !dbg !1947
  %q.10.lcssa = phi ptr [ %q.9.lcssa, %for.end340 ], [ %incdec.ptr354, %if.end353 ], !dbg !1640
  call void @llvm.dbg.value(metadata ptr %q.10.lcssa, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %x239.7.lcssa, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.10.lcssa, metadata !796, metadata !DIExpression()), !dbg !1640
  %cmp3643672 = icmp slt i64 %x239.7.lcssa, %add343, !dbg !1948
  br i1 %cmp3643672, label %for.body366.lr.ph, label %for.end371, !dbg !1951

for.body366.lr.ph:                                ; preds = %for.cond359.preheader
  %228 = load i32, ptr %colorspace.i2016, align 4, !tbaa !925
  %cmp.i2249 = icmp eq i32 %228, 12
  %229 = load float, ptr %index11.i2025, align 8
  %cmp.i47.i2258 = fcmp ole float %229, 0.000000e+00
  %cmp1.i48.i2260 = fcmp oge float %229, 6.553500e+04
  %add.i50.i2262 = fadd float %229, 5.000000e-01
  %conv.i51.i2263 = fptoui float %add.i50.i2262 to i16
  %brmerge3985 = or i1 %cmp.i47.i2258, %cmp1.i48.i2260
  %not.cmp.i47.i2258 = xor i1 %cmp.i47.i2258, true
  %.mux3986 = sext i1 %not.cmp.i47.i2258 to i16
  %spec.select4239 = select i1 %brmerge3985, i16 %.mux3986, i16 %conv.i51.i2263
  br label %for.body366, !dbg !1951

for.body348:                                      ; preds = %for.body348.lr.ph, %if.end353
  %q.103667 = phi ptr [ %q.9.lcssa, %for.body348.lr.ph ], [ %incdec.ptr354, %if.end353 ]
  %x239.73666 = phi i64 [ 0, %for.body348.lr.ph ], [ %inc357, %if.end353 ]
  %frame_indexes.103662 = phi ptr [ %frame_indexes.9.lcssa, %for.body348.lr.ph ], [ %incdec.ptr355, %if.end353 ]
  call void @llvm.dbg.value(metadata ptr %q.103667, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %x239.73666, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.103662, metadata !796, metadata !DIExpression()), !dbg !1640
  %cmp349 = icmp ult i64 %x239.73666, %y.23697, !dbg !1952
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !1957
  %red1.i2102 = getelementptr inbounds %struct._PixelPacket, ptr %q.103667, i64 0, i32 2, !dbg !1959
  br i1 %cmp349, label %if.then351, label %if.else352, !dbg !1960

if.then351:                                       ; preds = %for.body348
  call void @llvm.dbg.value(metadata ptr %shadow, metadata !1676, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata ptr %q.103667, metadata !1677, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata ptr %frame_indexes.103662, metadata !1678, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata float %223, metadata !1685, metadata !DIExpression()), !dbg !1961
  store i16 %spec.select4231, ptr %red1.i2102, align 2, !dbg !1963, !tbaa !891
  call void @llvm.dbg.value(metadata float %224, metadata !1685, metadata !DIExpression()), !dbg !1964
  %green3.i2112 = getelementptr inbounds %struct._PixelPacket, ptr %q.103667, i64 0, i32 1, !dbg !1966
  store i16 %spec.select4314, ptr %green3.i2112, align 2, !dbg !1966, !tbaa !894
  call void @llvm.dbg.value(metadata float %225, metadata !1685, metadata !DIExpression()), !dbg !1967
  store i16 %spec.select4232, ptr %q.103667, align 2, !dbg !1969, !tbaa !897
  call void @llvm.dbg.value(metadata float %226, metadata !1685, metadata !DIExpression()), !dbg !1970
  %opacity7.i2131 = getelementptr inbounds %struct._PixelPacket, ptr %q.103667, i64 0, i32 3, !dbg !1972
  store i16 %spec.select4347, ptr %opacity7.i2131, align 2, !dbg !1972, !tbaa !1006
  %230 = load i32, ptr %colorspace.i2016, align 4, !dbg !1973, !tbaa !925
  %cmp.i2133 = icmp eq i32 %230, 12, !dbg !1974
  br i1 %cmp.i2133, label %if.then.i2140, label %lor.lhs.false.i2138, !dbg !1975

lor.lhs.false.i2138:                              ; preds = %if.then351
  %231 = load i32, ptr %call27, align 8, !dbg !1976, !tbaa !1707
  %cmp8.i2135 = icmp eq i32 %231, 2, !dbg !1977
  %cmp9.i2136 = icmp ne ptr %frame_indexes.103662, null
  %or.cond.i2137 = and i1 %cmp9.i2136, %cmp8.i2135, !dbg !1978
  br i1 %or.cond.i2137, label %if.end353.sink.split, label %if.end353, !dbg !1978

if.then.i2140:                                    ; preds = %if.then351
  %cmp9.old.not.i2139 = icmp eq ptr %frame_indexes.103662, null, !dbg !1979
  br i1 %cmp9.old.not.i2139, label %if.end353, label %if.end353.sink.split, !dbg !1980

if.else352:                                       ; preds = %for.body348
  call void @llvm.dbg.value(metadata ptr %trough, metadata !1676, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata ptr %q.103667, metadata !1677, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata ptr %frame_indexes.103662, metadata !1678, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata float %218, metadata !1685, metadata !DIExpression()), !dbg !1981
  store i16 %spec.select4234, ptr %red1.i2102, align 2, !dbg !1983, !tbaa !891
  call void @llvm.dbg.value(metadata float %219, metadata !1685, metadata !DIExpression()), !dbg !1984
  %green3.i2170 = getelementptr inbounds %struct._PixelPacket, ptr %q.103667, i64 0, i32 1, !dbg !1986
  store i16 %spec.select4315, ptr %green3.i2170, align 2, !dbg !1986, !tbaa !894
  call void @llvm.dbg.value(metadata float %220, metadata !1685, metadata !DIExpression()), !dbg !1987
  store i16 %spec.select4235, ptr %q.103667, align 2, !dbg !1989, !tbaa !897
  call void @llvm.dbg.value(metadata float %221, metadata !1685, metadata !DIExpression()), !dbg !1990
  %opacity7.i2189 = getelementptr inbounds %struct._PixelPacket, ptr %q.103667, i64 0, i32 3, !dbg !1992
  store i16 %spec.select4348, ptr %opacity7.i2189, align 2, !dbg !1992, !tbaa !1006
  %232 = load i32, ptr %colorspace.i2016, align 4, !dbg !1993, !tbaa !925
  %cmp.i2191 = icmp eq i32 %232, 12, !dbg !1994
  br i1 %cmp.i2191, label %if.then.i2198, label %lor.lhs.false.i2196, !dbg !1995

lor.lhs.false.i2196:                              ; preds = %if.else352
  %233 = load i32, ptr %call27, align 8, !dbg !1996, !tbaa !1707
  %cmp8.i2193 = icmp eq i32 %233, 2, !dbg !1997
  %cmp9.i2194 = icmp ne ptr %frame_indexes.103662, null
  %or.cond.i2195 = and i1 %cmp9.i2194, %cmp8.i2193, !dbg !1998
  br i1 %or.cond.i2195, label %if.end353.sink.split, label %if.end353, !dbg !1998

if.then.i2198:                                    ; preds = %if.else352
  %cmp9.old.not.i2197 = icmp eq ptr %frame_indexes.103662, null, !dbg !1999
  br i1 %cmp9.old.not.i2197, label %if.end353, label %if.end353.sink.split, !dbg !2000

if.end353.sink.split:                             ; preds = %lor.lhs.false.i2196, %if.then.i2198, %lor.lhs.false.i2138, %if.then.i2140
  %spec.select4236.sink = phi i16 [ %spec.select4233, %if.then.i2140 ], [ %spec.select4233, %lor.lhs.false.i2138 ], [ %spec.select4236, %if.then.i2198 ], [ %spec.select4236, %lor.lhs.false.i2196 ]
  store i16 %spec.select4236.sink, ptr %frame_indexes.103662, align 2, !dbg !1959, !tbaa !1734
  br label %if.end353, !dbg !2001

if.end353:                                        ; preds = %if.end353.sink.split, %if.then.i2198, %lor.lhs.false.i2196, %if.then.i2140, %lor.lhs.false.i2138
  %incdec.ptr354 = getelementptr inbounds %struct._PixelPacket, ptr %q.103667, i64 1, !dbg !2001
  call void @llvm.dbg.value(metadata ptr %incdec.ptr354, metadata !801, metadata !DIExpression()), !dbg !1640
  %incdec.ptr355 = getelementptr inbounds i16, ptr %frame_indexes.103662, i64 1, !dbg !2002
  call void @llvm.dbg.value(metadata ptr %incdec.ptr355, metadata !796, metadata !DIExpression()), !dbg !1640
  %inc357 = add nuw nsw i64 %x239.73666, 1, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %inc357, metadata !800, metadata !DIExpression()), !dbg !1640
  %cmp346 = icmp slt i64 %inc357, %sub344, !dbg !1943
  br i1 %cmp346, label %for.body348, label %for.cond359.preheader, !dbg !1946, !llvm.loop !2004

for.body366:                                      ; preds = %for.body366.lr.ph, %SetPixelPacket.exit2267
  %q.113677 = phi ptr [ %q.10.lcssa, %for.body366.lr.ph ], [ %incdec.ptr367, %SetPixelPacket.exit2267 ]
  %x239.83676 = phi i64 [ %x239.7.lcssa, %for.body366.lr.ph ], [ %inc370, %SetPixelPacket.exit2267 ]
  %frame_indexes.113673 = phi ptr [ %frame_indexes.10.lcssa, %for.body366.lr.ph ], [ %incdec.ptr368, %SetPixelPacket.exit2267 ]
  call void @llvm.dbg.value(metadata ptr %q.113677, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %x239.83676, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.113673, metadata !796, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata ptr %highlight, metadata !1676, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata ptr %q.113677, metadata !1677, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata ptr %frame_indexes.113673, metadata !1678, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata float %188, metadata !1685, metadata !DIExpression()), !dbg !2009
  %red1.i2218 = getelementptr inbounds %struct._PixelPacket, ptr %q.113677, i64 0, i32 2, !dbg !2011
  store i16 %spec.select4237, ptr %red1.i2218, align 2, !dbg !2011, !tbaa !891
  call void @llvm.dbg.value(metadata float %189, metadata !1685, metadata !DIExpression()), !dbg !2012
  %green3.i2228 = getelementptr inbounds %struct._PixelPacket, ptr %q.113677, i64 0, i32 1, !dbg !2014
  store i16 %spec.select4316, ptr %green3.i2228, align 2, !dbg !2014, !tbaa !894
  call void @llvm.dbg.value(metadata float %190, metadata !1685, metadata !DIExpression()), !dbg !2015
  store i16 %spec.select4238, ptr %q.113677, align 2, !dbg !2017, !tbaa !897
  call void @llvm.dbg.value(metadata float %191, metadata !1685, metadata !DIExpression()), !dbg !2018
  %opacity7.i2247 = getelementptr inbounds %struct._PixelPacket, ptr %q.113677, i64 0, i32 3, !dbg !2020
  store i16 %spec.select4349, ptr %opacity7.i2247, align 2, !dbg !2020, !tbaa !1006
  br i1 %cmp.i2249, label %if.then.i2256, label %lor.lhs.false.i2254, !dbg !2021

lor.lhs.false.i2254:                              ; preds = %for.body366
  %234 = load i32, ptr %call27, align 8, !dbg !2022, !tbaa !1707
  %cmp8.i2251 = icmp eq i32 %234, 2, !dbg !2023
  %cmp9.i2252 = icmp ne ptr %frame_indexes.113673, null
  %or.cond.i2253 = and i1 %cmp9.i2252, %cmp8.i2251, !dbg !2024
  br i1 %or.cond.i2253, label %if.then10.i2259, label %SetPixelPacket.exit2267, !dbg !2024

if.then.i2256:                                    ; preds = %for.body366
  %cmp9.old.not.i2255 = icmp eq ptr %frame_indexes.113673, null, !dbg !2025
  br i1 %cmp9.old.not.i2255, label %SetPixelPacket.exit2267, label %if.then10.i2259, !dbg !2026

if.then10.i2259:                                  ; preds = %if.then.i2256, %lor.lhs.false.i2254
  call void @llvm.dbg.value(metadata float %229, metadata !1685, metadata !DIExpression()), !dbg !2027
  store i16 %spec.select4239, ptr %frame_indexes.113673, align 2, !dbg !2025, !tbaa !1734
  br label %SetPixelPacket.exit2267, !dbg !2025

SetPixelPacket.exit2267:                          ; preds = %lor.lhs.false.i2254, %if.then.i2256, %if.then10.i2259
  %incdec.ptr367 = getelementptr inbounds %struct._PixelPacket, ptr %q.113677, i64 1, !dbg !2029
  call void @llvm.dbg.value(metadata ptr %incdec.ptr367, metadata !801, metadata !DIExpression()), !dbg !1640
  %incdec.ptr368 = getelementptr inbounds i16, ptr %frame_indexes.113673, i64 1, !dbg !2030
  call void @llvm.dbg.value(metadata ptr %incdec.ptr368, metadata !796, metadata !DIExpression()), !dbg !1640
  %inc370 = add nuw nsw i64 %x239.83676, 1, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %inc370, metadata !800, metadata !DIExpression()), !dbg !1640
  %cmp364 = icmp slt i64 %inc370, %add343, !dbg !1948
  br i1 %cmp364, label %for.body366, label %for.end371, !dbg !1951, !llvm.loop !2032

for.end371:                                       ; preds = %SetPixelPacket.exit2267, %for.cond359.preheader
  %frame_indexes.11.lcssa = phi ptr [ %frame_indexes.10.lcssa, %for.cond359.preheader ], [ %incdec.ptr368, %SetPixelPacket.exit2267 ], !dbg !1640
  %q.11.lcssa = phi ptr [ %q.10.lcssa, %for.cond359.preheader ], [ %incdec.ptr367, %SetPixelPacket.exit2267 ], !dbg !1640
  call void @llvm.dbg.value(metadata i64 %sub377, metadata !794, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 0, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %q.11.lcssa, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.11.lcssa, metadata !796, metadata !DIExpression()), !dbg !1640
  br i1 %cmp3793680, label %for.body381.lr.ph, label %for.cond387.preheader, !dbg !2034

for.body381.lr.ph:                                ; preds = %for.end371
  %235 = load i32, ptr %colorspace.i2016, align 4, !tbaa !925
  %cmp.i2307 = icmp eq i32 %235, 12
  %236 = load float, ptr %index11.i2083, align 8
  %cmp.i47.i2316 = fcmp ole float %236, 0.000000e+00
  %cmp1.i48.i2318 = fcmp oge float %236, 6.553500e+04
  %add.i50.i2320 = fadd float %236, 5.000000e-01
  %conv.i51.i2321 = fptoui float %add.i50.i2320 to i16
  %brmerge3995 = or i1 %cmp.i47.i2316, %cmp1.i48.i2318
  %not.cmp.i47.i2316 = xor i1 %cmp.i47.i2316, true
  %.mux3996 = sext i1 %not.cmp.i47.i2316 to i16
  %spec.select4242 = select i1 %brmerge3995, i16 %.mux3996, i16 %conv.i51.i2321
  br label %for.body381, !dbg !2034

for.cond387.preheader:                            ; preds = %SetPixelPacket.exit2325, %for.end371
  %frame_indexes.12.lcssa = phi ptr [ %frame_indexes.11.lcssa, %for.end371 ], [ %incdec.ptr383, %SetPixelPacket.exit2325 ], !dbg !1640
  %q.12.lcssa = phi ptr [ %q.11.lcssa, %for.end371 ], [ %incdec.ptr382, %SetPixelPacket.exit2325 ], !dbg !1640
  call void @llvm.dbg.value(metadata ptr %q.12.lcssa, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 0, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.12.lcssa, metadata !796, metadata !DIExpression()), !dbg !1640
  br i1 %cmp2473606, label %for.body391.lr.ph, label %for.inc397, !dbg !2036

for.body391.lr.ph:                                ; preds = %for.cond387.preheader
  %237 = load i32, ptr %colorspace.i2016, align 4, !tbaa !925
  %cmp.i2365 = icmp eq i32 %237, 12
  %238 = load float, ptr %index11.i2141, align 8
  %cmp.i47.i2374 = fcmp ole float %238, 0.000000e+00
  %cmp1.i48.i2376 = fcmp oge float %238, 6.553500e+04
  %add.i50.i2378 = fadd float %238, 5.000000e-01
  %conv.i51.i2379 = fptoui float %add.i50.i2378 to i16
  %brmerge4005 = or i1 %cmp.i47.i2374, %cmp1.i48.i2376
  %not.cmp.i47.i2374 = xor i1 %cmp.i47.i2374, true
  %.mux4006 = sext i1 %not.cmp.i47.i2374 to i16
  %spec.select4245 = select i1 %brmerge4005, i16 %.mux4006, i16 %conv.i51.i2379
  br label %for.body391, !dbg !2036

for.body381:                                      ; preds = %for.body381.lr.ph, %SetPixelPacket.exit2325
  %q.123685 = phi ptr [ %q.11.lcssa, %for.body381.lr.ph ], [ %incdec.ptr382, %SetPixelPacket.exit2325 ]
  %x239.93684 = phi i64 [ 0, %for.body381.lr.ph ], [ %inc385, %SetPixelPacket.exit2325 ]
  %frame_indexes.123681 = phi ptr [ %frame_indexes.11.lcssa, %for.body381.lr.ph ], [ %incdec.ptr383, %SetPixelPacket.exit2325 ]
  call void @llvm.dbg.value(metadata ptr %q.123685, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %x239.93684, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.123681, metadata !796, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata ptr %matte, metadata !1676, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata ptr %q.123685, metadata !1677, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata ptr %frame_indexes.123681, metadata !1678, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata float %193, metadata !1685, metadata !DIExpression()), !dbg !2042
  %red1.i2276 = getelementptr inbounds %struct._PixelPacket, ptr %q.123685, i64 0, i32 2, !dbg !2044
  store i16 %spec.select4240, ptr %red1.i2276, align 2, !dbg !2044, !tbaa !891
  call void @llvm.dbg.value(metadata float %194, metadata !1685, metadata !DIExpression()), !dbg !2045
  %green3.i2286 = getelementptr inbounds %struct._PixelPacket, ptr %q.123685, i64 0, i32 1, !dbg !2047
  store i16 %spec.select4317, ptr %green3.i2286, align 2, !dbg !2047, !tbaa !894
  call void @llvm.dbg.value(metadata float %195, metadata !1685, metadata !DIExpression()), !dbg !2048
  store i16 %spec.select4241, ptr %q.123685, align 2, !dbg !2050, !tbaa !897
  call void @llvm.dbg.value(metadata float %196, metadata !1685, metadata !DIExpression()), !dbg !2051
  %opacity7.i2305 = getelementptr inbounds %struct._PixelPacket, ptr %q.123685, i64 0, i32 3, !dbg !2053
  store i16 %spec.select4350, ptr %opacity7.i2305, align 2, !dbg !2053, !tbaa !1006
  br i1 %cmp.i2307, label %if.then.i2314, label %lor.lhs.false.i2312, !dbg !2054

lor.lhs.false.i2312:                              ; preds = %for.body381
  %239 = load i32, ptr %call27, align 8, !dbg !2055, !tbaa !1707
  %cmp8.i2309 = icmp eq i32 %239, 2, !dbg !2056
  %cmp9.i2310 = icmp ne ptr %frame_indexes.123681, null
  %or.cond.i2311 = and i1 %cmp9.i2310, %cmp8.i2309, !dbg !2057
  br i1 %or.cond.i2311, label %if.then10.i2317, label %SetPixelPacket.exit2325, !dbg !2057

if.then.i2314:                                    ; preds = %for.body381
  %cmp9.old.not.i2313 = icmp eq ptr %frame_indexes.123681, null, !dbg !2058
  br i1 %cmp9.old.not.i2313, label %SetPixelPacket.exit2325, label %if.then10.i2317, !dbg !2059

if.then10.i2317:                                  ; preds = %if.then.i2314, %lor.lhs.false.i2312
  call void @llvm.dbg.value(metadata float %236, metadata !1685, metadata !DIExpression()), !dbg !2060
  store i16 %spec.select4242, ptr %frame_indexes.123681, align 2, !dbg !2058, !tbaa !1734
  br label %SetPixelPacket.exit2325, !dbg !2058

SetPixelPacket.exit2325:                          ; preds = %lor.lhs.false.i2312, %if.then.i2314, %if.then10.i2317
  %incdec.ptr382 = getelementptr inbounds %struct._PixelPacket, ptr %q.123685, i64 1, !dbg !2062
  call void @llvm.dbg.value(metadata ptr %incdec.ptr382, metadata !801, metadata !DIExpression()), !dbg !1640
  %incdec.ptr383 = getelementptr inbounds i16, ptr %frame_indexes.123681, i64 1, !dbg !2063
  call void @llvm.dbg.value(metadata ptr %incdec.ptr383, metadata !796, metadata !DIExpression()), !dbg !1640
  %inc385 = add nuw nsw i64 %x239.93684, 1, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %inc385, metadata !800, metadata !DIExpression()), !dbg !1640
  %exitcond4380.not = icmp eq i64 %inc385, %sub377, !dbg !2065
  br i1 %exitcond4380.not, label %for.cond387.preheader, label %for.body381, !dbg !2034, !llvm.loop !2066

for.body391:                                      ; preds = %for.body391.lr.ph, %SetPixelPacket.exit2383
  %q.133693 = phi ptr [ %q.12.lcssa, %for.body391.lr.ph ], [ %incdec.ptr392, %SetPixelPacket.exit2383 ]
  %x239.103692 = phi i64 [ 0, %for.body391.lr.ph ], [ %inc395, %SetPixelPacket.exit2383 ]
  %frame_indexes.133689 = phi ptr [ %frame_indexes.12.lcssa, %for.body391.lr.ph ], [ %incdec.ptr393, %SetPixelPacket.exit2383 ]
  call void @llvm.dbg.value(metadata ptr %q.133693, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %x239.103692, metadata !800, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.133689, metadata !796, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata ptr %shadow, metadata !1676, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata ptr %q.133693, metadata !1677, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata ptr %frame_indexes.133689, metadata !1678, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata float %201, metadata !1685, metadata !DIExpression()), !dbg !2072
  %red1.i2334 = getelementptr inbounds %struct._PixelPacket, ptr %q.133693, i64 0, i32 2, !dbg !2074
  store i16 %spec.select4243, ptr %red1.i2334, align 2, !dbg !2074, !tbaa !891
  call void @llvm.dbg.value(metadata float %202, metadata !1685, metadata !DIExpression()), !dbg !2075
  %green3.i2344 = getelementptr inbounds %struct._PixelPacket, ptr %q.133693, i64 0, i32 1, !dbg !2077
  store i16 %spec.select4318, ptr %green3.i2344, align 2, !dbg !2077, !tbaa !894
  call void @llvm.dbg.value(metadata float %203, metadata !1685, metadata !DIExpression()), !dbg !2078
  store i16 %spec.select4244, ptr %q.133693, align 2, !dbg !2080, !tbaa !897
  call void @llvm.dbg.value(metadata float %204, metadata !1685, metadata !DIExpression()), !dbg !2081
  %opacity7.i2363 = getelementptr inbounds %struct._PixelPacket, ptr %q.133693, i64 0, i32 3, !dbg !2083
  store i16 %spec.select4351, ptr %opacity7.i2363, align 2, !dbg !2083, !tbaa !1006
  br i1 %cmp.i2365, label %if.then.i2372, label %lor.lhs.false.i2370, !dbg !2084

lor.lhs.false.i2370:                              ; preds = %for.body391
  %240 = load i32, ptr %call27, align 8, !dbg !2085, !tbaa !1707
  %cmp8.i2367 = icmp eq i32 %240, 2, !dbg !2086
  %cmp9.i2368 = icmp ne ptr %frame_indexes.133689, null
  %or.cond.i2369 = and i1 %cmp9.i2368, %cmp8.i2367, !dbg !2087
  br i1 %or.cond.i2369, label %if.then10.i2375, label %SetPixelPacket.exit2383, !dbg !2087

if.then.i2372:                                    ; preds = %for.body391
  %cmp9.old.not.i2371 = icmp eq ptr %frame_indexes.133689, null, !dbg !2088
  br i1 %cmp9.old.not.i2371, label %SetPixelPacket.exit2383, label %if.then10.i2375, !dbg !2089

if.then10.i2375:                                  ; preds = %if.then.i2372, %lor.lhs.false.i2370
  call void @llvm.dbg.value(metadata float %238, metadata !1685, metadata !DIExpression()), !dbg !2090
  store i16 %spec.select4245, ptr %frame_indexes.133689, align 2, !dbg !2088, !tbaa !1734
  br label %SetPixelPacket.exit2383, !dbg !2088

SetPixelPacket.exit2383:                          ; preds = %lor.lhs.false.i2370, %if.then.i2372, %if.then10.i2375
  %incdec.ptr392 = getelementptr inbounds %struct._PixelPacket, ptr %q.133693, i64 1, !dbg !2092
  call void @llvm.dbg.value(metadata ptr %incdec.ptr392, metadata !801, metadata !DIExpression()), !dbg !1640
  %incdec.ptr393 = getelementptr inbounds i16, ptr %frame_indexes.133689, i64 1, !dbg !2093
  call void @llvm.dbg.value(metadata ptr %incdec.ptr393, metadata !796, metadata !DIExpression()), !dbg !1640
  %inc395 = add nuw nsw i64 %x239.103692, 1, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %inc395, metadata !800, metadata !DIExpression()), !dbg !1640
  %exitcond4381.not = icmp eq i64 %inc395, %148, !dbg !2095
  br i1 %exitcond4381.not, label %for.inc397, label %for.body391, !dbg !2036, !llvm.loop !2096

for.inc397:                                       ; preds = %SetPixelPacket.exit2383, %for.cond387.preheader
  %frame_indexes.13.lcssa = phi ptr [ %frame_indexes.12.lcssa, %for.cond387.preheader ], [ %incdec.ptr393, %SetPixelPacket.exit2383 ], !dbg !1640
  %q.13.lcssa = phi ptr [ %q.12.lcssa, %for.cond387.preheader ], [ %incdec.ptr392, %SetPixelPacket.exit2383 ], !dbg !1640
  %inc398 = add nuw nsw i64 %y.23697, 1, !dbg !2098
  call void @llvm.dbg.value(metadata ptr %q.13.lcssa, metadata !801, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr %frame_indexes.13.lcssa, metadata !796, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %inc398, metadata !795, metadata !DIExpression()), !dbg !821
  %indvars.iv.next4379 = add i64 %indvars.iv4378, -1, !dbg !1779
  %exitcond4382.not = icmp eq i64 %inc398, %187, !dbg !1776
  br i1 %exitcond4382.not, label %for.end399, label %for.cond320.preheader, !dbg !1779, !llvm.loop !2099

for.end399:                                       ; preds = %for.inc397, %for.cond315.preheader
  %call400 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call229, ptr noundef %exception) #8, !dbg !2101
  br label %if.end402, !dbg !2102

if.end402:                                        ; preds = %if.then238, %for.end399, %if.end227
  call void @llvm.dbg.value(metadata i64 0, metadata !795, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i32 1, metadata !769, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 0, metadata !770, metadata !DIExpression()), !dbg !821
  %241 = load i64, ptr %rows, align 8, !dbg !2103, !tbaa !711
  %cmp4053755 = icmp sgt i64 %241, 0, !dbg !2104
  br i1 %cmp4053755, label %for.body407.lr.ph, label %for.end562, !dbg !2105

for.body407.lr.ph:                                ; preds = %if.end402
  %columns417 = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 7
  %colorspace.i2422 = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 1
  %index11.i2431 = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 9
  %index11.i2489 = getelementptr inbounds %struct._MagickPixelPacket, ptr %matte, i64 0, i32 9
  %index11.i2547 = getelementptr inbounds %struct._MagickPixelPacket, ptr %shadow, i64 0, i32 9
  %compose = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 36
  %matte462 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %index11.i2605 = getelementptr inbounds %struct._MagickPixelPacket, ptr %interior, i64 0, i32 9
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body407, !dbg !2105

for.body407:                                      ; preds = %for.body407.lr.ph, %cleanup555
  %y.33760 = phi i64 [ 0, %for.body407.lr.ph ], [ %inc561, %cleanup555 ]
  %status.03759 = phi i32 [ 1, %for.body407.lr.ph ], [ %status.6, %cleanup555 ]
  %progress.03756 = phi i64 [ 0, %for.body407.lr.ph ], [ %progress.2, %cleanup555 ]
  call void @llvm.dbg.value(metadata i64 %y.33760, metadata !795, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i32 %status.03759, metadata !769, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 %progress.03756, metadata !770, metadata !DIExpression()), !dbg !821
  %cmp411 = icmp eq i32 %status.03759, 0, !dbg !2106
  br i1 %cmp411, label %cleanup555, label %if.end414, !dbg !2108

if.end414:                                        ; preds = %for.body407
  %242 = load i64, ptr %y14, align 8, !dbg !2109, !tbaa !724
  %add416 = add nsw i64 %242, %y.33760, !dbg !2110
  %243 = load i64, ptr %columns417, align 8, !dbg !2111, !tbaa !702
  %call418 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call229, i64 noundef 0, i64 noundef %add416, i64 noundef %243, i64 noundef 1, ptr noundef %exception) #8, !dbg !2112
  call void @llvm.dbg.value(metadata ptr %call418, metadata !808, metadata !DIExpression()), !dbg !2113
  %cmp419 = icmp eq ptr %call418, null, !dbg !2114
  br i1 %cmp419, label %cleanup555, label %if.end422, !dbg !2116

if.end422:                                        ; preds = %if.end414
  %call423 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call229) #7, !dbg !2117
  call void @llvm.dbg.value(metadata ptr %call423, metadata !803, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 0, metadata !807, metadata !DIExpression()), !dbg !2113
  %244 = load i64, ptr %outer_bevel, align 8, !tbaa !839
  call void @llvm.dbg.value(metadata ptr %call418, metadata !808, metadata !DIExpression()), !dbg !2113
  %cmp4263701 = icmp sgt i64 %244, 0, !dbg !2118
  br i1 %cmp4263701, label %for.body428.lr.ph, label %for.cond434.preheader, !dbg !2121

for.body428.lr.ph:                                ; preds = %if.end422
  %245 = load float, ptr %red134, align 8, !tbaa !992
  %cmp.i.i2385 = fcmp ole float %245, 0.000000e+00
  %cmp1.i.i2386 = fcmp oge float %245, 6.553500e+04
  %add.i.i2388 = fadd float %245, 5.000000e-01
  %conv.i.i2389 = fptoui float %add.i.i2388 to i16
  %246 = load float, ptr %green148, align 4, !tbaa !999
  %cmp.i23.i2394 = fcmp ole float %246, 0.000000e+00
  %cmp1.i24.i2396 = fcmp oge float %246, 6.553500e+04
  %add.i26.i2398 = fadd float %246, 5.000000e-01
  %conv.i27.i2399 = fptoui float %add.i26.i2398 to i16
  %247 = load float, ptr %blue162, align 8, !tbaa !1004
  %cmp.i31.i2404 = fcmp ole float %247, 0.000000e+00
  %cmp1.i32.i2406 = fcmp oge float %247, 6.553500e+04
  %add.i34.i2408 = fadd float %247, 5.000000e-01
  %conv.i35.i2409 = fptoui float %add.i34.i2408 to i16
  %248 = load float, ptr %opacity164, align 4, !tbaa !1010
  %cmp.i39.i2413 = fcmp ole float %248, 0.000000e+00
  %cmp1.i40.i2415 = fcmp oge float %248, 6.553500e+04
  %add.i42.i2417 = fadd float %248, 5.000000e-01
  %conv.i43.i2418 = fptoui float %add.i42.i2417 to i16
  %249 = load i32, ptr %colorspace.i2422, align 4, !tbaa !925
  %cmp.i2423 = icmp eq i32 %249, 12
  %250 = load float, ptr %index11.i2431, align 8
  %cmp.i47.i2432 = fcmp ole float %250, 0.000000e+00
  %cmp1.i48.i2434 = fcmp oge float %250, 6.553500e+04
  %add.i50.i2436 = fadd float %250, 5.000000e-01
  %conv.i51.i2437 = fptoui float %add.i50.i2436 to i16
  %brmerge4007 = or i1 %cmp.i.i2385, %cmp1.i.i2386
  %not.cmp.i.i2385 = xor i1 %cmp.i.i2385, true
  %.mux4008 = sext i1 %not.cmp.i.i2385 to i16
  %spec.select4246 = select i1 %brmerge4007, i16 %.mux4008, i16 %conv.i.i2389
  %brmerge4009 = or i1 %cmp.i23.i2394, %cmp1.i24.i2396
  %not.cmp.i23.i2394 = xor i1 %cmp.i23.i2394, true
  %.mux4010 = sext i1 %not.cmp.i23.i2394 to i16
  %spec.select4319 = select i1 %brmerge4009, i16 %.mux4010, i16 %conv.i27.i2399
  %brmerge4011 = or i1 %cmp.i31.i2404, %cmp1.i32.i2406
  %not.cmp.i31.i2404 = xor i1 %cmp.i31.i2404, true
  %.mux4012 = sext i1 %not.cmp.i31.i2404 to i16
  %spec.select4247 = select i1 %brmerge4011, i16 %.mux4012, i16 %conv.i35.i2409
  %brmerge4013 = or i1 %cmp.i39.i2413, %cmp1.i40.i2415
  %not.cmp.i39.i2413 = xor i1 %cmp.i39.i2413, true
  %.mux4014 = sext i1 %not.cmp.i39.i2413 to i16
  %spec.select4352 = select i1 %brmerge4013, i16 %.mux4014, i16 %conv.i43.i2418
  %brmerge4015 = or i1 %cmp.i47.i2432, %cmp1.i48.i2434
  %not.cmp.i47.i2432 = xor i1 %cmp.i47.i2432, true
  %.mux4016 = sext i1 %not.cmp.i47.i2432 to i16
  %spec.select4248 = select i1 %brmerge4015, i16 %.mux4016, i16 %conv.i51.i2437
  br label %for.body428, !dbg !2121

for.cond434.preheader:                            ; preds = %SetPixelPacket.exit2441, %if.end422
  %frame_indexes408.0.lcssa = phi ptr [ %call423, %if.end422 ], [ %incdec.ptr430, %SetPixelPacket.exit2441 ], !dbg !2113
  %q410.0.lcssa = phi ptr [ %call418, %if.end422 ], [ %incdec.ptr429, %SetPixelPacket.exit2441 ], !dbg !2113
  %251 = load i64, ptr %x11, align 8, !tbaa !721
  %sub436 = sub i64 %251, %add
  call void @llvm.dbg.value(metadata ptr %q410.0.lcssa, metadata !808, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 0, metadata !807, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.0.lcssa, metadata !803, metadata !DIExpression()), !dbg !2113
  %cmp4373709 = icmp sgt i64 %sub436, 0, !dbg !2122
  br i1 %cmp4373709, label %for.body439.lr.ph, label %for.cond445.preheader, !dbg !2125

for.body439.lr.ph:                                ; preds = %for.cond434.preheader
  %252 = load float, ptr %red1.i1254, align 8, !tbaa !992
  %cmp.i.i2443 = fcmp ole float %252, 0.000000e+00
  %cmp1.i.i2444 = fcmp oge float %252, 6.553500e+04
  %add.i.i2446 = fadd float %252, 5.000000e-01
  %conv.i.i2447 = fptoui float %add.i.i2446 to i16
  %253 = load float, ptr %green3.i1257, align 4, !tbaa !999
  %cmp.i23.i2452 = fcmp ole float %253, 0.000000e+00
  %cmp1.i24.i2454 = fcmp oge float %253, 6.553500e+04
  %add.i26.i2456 = fadd float %253, 5.000000e-01
  %conv.i27.i2457 = fptoui float %add.i26.i2456 to i16
  %254 = load float, ptr %blue5.i1259, align 8, !tbaa !1004
  %cmp.i31.i2462 = fcmp ole float %254, 0.000000e+00
  %cmp1.i32.i2464 = fcmp oge float %254, 6.553500e+04
  %add.i34.i2466 = fadd float %254, 5.000000e-01
  %conv.i35.i2467 = fptoui float %add.i34.i2466 to i16
  %255 = load float, ptr %opacity7.i1262, align 4, !tbaa !1010
  %cmp.i39.i2471 = fcmp ole float %255, 0.000000e+00
  %cmp1.i40.i2473 = fcmp oge float %255, 6.553500e+04
  %add.i42.i2475 = fadd float %255, 5.000000e-01
  %conv.i43.i2476 = fptoui float %add.i42.i2475 to i16
  %256 = load i32, ptr %colorspace.i2422, align 4, !tbaa !925
  %cmp.i2481 = icmp eq i32 %256, 12
  %257 = load float, ptr %index11.i2489, align 8
  %cmp.i47.i2490 = fcmp ole float %257, 0.000000e+00
  %cmp1.i48.i2492 = fcmp oge float %257, 6.553500e+04
  %add.i50.i2494 = fadd float %257, 5.000000e-01
  %conv.i51.i2495 = fptoui float %add.i50.i2494 to i16
  %brmerge4017 = or i1 %cmp.i.i2443, %cmp1.i.i2444
  %not.cmp.i.i2443 = xor i1 %cmp.i.i2443, true
  %.mux4018 = sext i1 %not.cmp.i.i2443 to i16
  %spec.select4249 = select i1 %brmerge4017, i16 %.mux4018, i16 %conv.i.i2447
  %brmerge4019 = or i1 %cmp.i23.i2452, %cmp1.i24.i2454
  %not.cmp.i23.i2452 = xor i1 %cmp.i23.i2452, true
  %.mux4020 = sext i1 %not.cmp.i23.i2452 to i16
  %spec.select4320 = select i1 %brmerge4019, i16 %.mux4020, i16 %conv.i27.i2457
  %brmerge4021 = or i1 %cmp.i31.i2462, %cmp1.i32.i2464
  %not.cmp.i31.i2462 = xor i1 %cmp.i31.i2462, true
  %.mux4022 = sext i1 %not.cmp.i31.i2462 to i16
  %spec.select4250 = select i1 %brmerge4021, i16 %.mux4022, i16 %conv.i35.i2467
  %brmerge4023 = or i1 %cmp.i39.i2471, %cmp1.i40.i2473
  %not.cmp.i39.i2471 = xor i1 %cmp.i39.i2471, true
  %.mux4024 = sext i1 %not.cmp.i39.i2471 to i16
  %spec.select4353 = select i1 %brmerge4023, i16 %.mux4024, i16 %conv.i43.i2476
  %brmerge4025 = or i1 %cmp.i47.i2490, %cmp1.i48.i2492
  %not.cmp.i47.i2490 = xor i1 %cmp.i47.i2490, true
  %.mux4026 = sext i1 %not.cmp.i47.i2490 to i16
  %spec.select4251 = select i1 %brmerge4025, i16 %.mux4026, i16 %conv.i51.i2495
  br label %for.body439, !dbg !2125

for.body428:                                      ; preds = %for.body428.lr.ph, %SetPixelPacket.exit2441
  %q410.03706 = phi ptr [ %call418, %for.body428.lr.ph ], [ %incdec.ptr429, %SetPixelPacket.exit2441 ]
  %x409.03705 = phi i64 [ 0, %for.body428.lr.ph ], [ %inc432, %SetPixelPacket.exit2441 ]
  %frame_indexes408.03702 = phi ptr [ %call423, %for.body428.lr.ph ], [ %incdec.ptr430, %SetPixelPacket.exit2441 ]
  call void @llvm.dbg.value(metadata ptr %q410.03706, metadata !808, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %x409.03705, metadata !807, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.03702, metadata !803, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata ptr %highlight, metadata !1676, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata ptr %q410.03706, metadata !1677, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.03702, metadata !1678, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata float %245, metadata !1685, metadata !DIExpression()), !dbg !2129
  %red1.i2392 = getelementptr inbounds %struct._PixelPacket, ptr %q410.03706, i64 0, i32 2, !dbg !2131
  store i16 %spec.select4246, ptr %red1.i2392, align 2, !dbg !2131, !tbaa !891
  call void @llvm.dbg.value(metadata float %246, metadata !1685, metadata !DIExpression()), !dbg !2132
  %green3.i2402 = getelementptr inbounds %struct._PixelPacket, ptr %q410.03706, i64 0, i32 1, !dbg !2134
  store i16 %spec.select4319, ptr %green3.i2402, align 2, !dbg !2134, !tbaa !894
  call void @llvm.dbg.value(metadata float %247, metadata !1685, metadata !DIExpression()), !dbg !2135
  store i16 %spec.select4247, ptr %q410.03706, align 2, !dbg !2137, !tbaa !897
  call void @llvm.dbg.value(metadata float %248, metadata !1685, metadata !DIExpression()), !dbg !2138
  %opacity7.i2421 = getelementptr inbounds %struct._PixelPacket, ptr %q410.03706, i64 0, i32 3, !dbg !2140
  store i16 %spec.select4352, ptr %opacity7.i2421, align 2, !dbg !2140, !tbaa !1006
  br i1 %cmp.i2423, label %if.then.i2430, label %lor.lhs.false.i2428, !dbg !2141

lor.lhs.false.i2428:                              ; preds = %for.body428
  %258 = load i32, ptr %call27, align 8, !dbg !2142, !tbaa !1707
  %cmp8.i2425 = icmp eq i32 %258, 2, !dbg !2143
  %cmp9.i2426 = icmp ne ptr %frame_indexes408.03702, null
  %or.cond.i2427 = and i1 %cmp9.i2426, %cmp8.i2425, !dbg !2144
  br i1 %or.cond.i2427, label %if.then10.i2433, label %SetPixelPacket.exit2441, !dbg !2144

if.then.i2430:                                    ; preds = %for.body428
  %cmp9.old.not.i2429 = icmp eq ptr %frame_indexes408.03702, null, !dbg !2145
  br i1 %cmp9.old.not.i2429, label %SetPixelPacket.exit2441, label %if.then10.i2433, !dbg !2146

if.then10.i2433:                                  ; preds = %if.then.i2430, %lor.lhs.false.i2428
  call void @llvm.dbg.value(metadata float %250, metadata !1685, metadata !DIExpression()), !dbg !2147
  store i16 %spec.select4248, ptr %frame_indexes408.03702, align 2, !dbg !2145, !tbaa !1734
  br label %SetPixelPacket.exit2441, !dbg !2145

SetPixelPacket.exit2441:                          ; preds = %lor.lhs.false.i2428, %if.then.i2430, %if.then10.i2433
  %incdec.ptr429 = getelementptr inbounds %struct._PixelPacket, ptr %q410.03706, i64 1, !dbg !2149
  call void @llvm.dbg.value(metadata ptr %incdec.ptr429, metadata !808, metadata !DIExpression()), !dbg !2113
  %incdec.ptr430 = getelementptr inbounds i16, ptr %frame_indexes408.03702, i64 1, !dbg !2150
  call void @llvm.dbg.value(metadata ptr %incdec.ptr430, metadata !803, metadata !DIExpression()), !dbg !2113
  %inc432 = add nuw nsw i64 %x409.03705, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %inc432, metadata !807, metadata !DIExpression()), !dbg !2113
  %exitcond4383.not = icmp eq i64 %inc432, %244, !dbg !2118
  br i1 %exitcond4383.not, label %for.cond434.preheader, label %for.body428, !dbg !2121, !llvm.loop !2152

for.cond445.preheader:                            ; preds = %SetPixelPacket.exit2499, %for.cond434.preheader
  %frame_indexes408.1.lcssa = phi ptr [ %frame_indexes408.0.lcssa, %for.cond434.preheader ], [ %incdec.ptr441, %SetPixelPacket.exit2499 ], !dbg !2113
  %q410.1.lcssa = phi ptr [ %q410.0.lcssa, %for.cond434.preheader ], [ %incdec.ptr440, %SetPixelPacket.exit2499 ], !dbg !2113
  %259 = load i64, ptr %inner_bevel, align 8, !tbaa !843
  call void @llvm.dbg.value(metadata ptr %q410.1.lcssa, metadata !808, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 0, metadata !807, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.1.lcssa, metadata !803, metadata !DIExpression()), !dbg !2113
  %cmp4473717 = icmp sgt i64 %259, 0, !dbg !2154
  br i1 %cmp4473717, label %for.body449.lr.ph, label %for.end454, !dbg !2157

for.body449.lr.ph:                                ; preds = %for.cond445.preheader
  %260 = load float, ptr %red173, align 8, !tbaa !992
  %cmp.i.i2501 = fcmp ole float %260, 0.000000e+00
  %cmp1.i.i2502 = fcmp oge float %260, 6.553500e+04
  %add.i.i2504 = fadd float %260, 5.000000e-01
  %conv.i.i2505 = fptoui float %add.i.i2504 to i16
  %261 = load float, ptr %green182, align 4, !tbaa !999
  %cmp.i23.i2510 = fcmp ole float %261, 0.000000e+00
  %cmp1.i24.i2512 = fcmp oge float %261, 6.553500e+04
  %add.i26.i2514 = fadd float %261, 5.000000e-01
  %conv.i27.i2515 = fptoui float %add.i26.i2514 to i16
  %262 = load float, ptr %blue191, align 8, !tbaa !1004
  %cmp.i31.i2520 = fcmp ole float %262, 0.000000e+00
  %cmp1.i32.i2522 = fcmp oge float %262, 6.553500e+04
  %add.i34.i2524 = fadd float %262, 5.000000e-01
  %conv.i35.i2525 = fptoui float %add.i34.i2524 to i16
  %263 = load float, ptr %opacity193, align 4, !tbaa !1010
  %cmp.i39.i2529 = fcmp ole float %263, 0.000000e+00
  %cmp1.i40.i2531 = fcmp oge float %263, 6.553500e+04
  %add.i42.i2533 = fadd float %263, 5.000000e-01
  %conv.i43.i2534 = fptoui float %add.i42.i2533 to i16
  %264 = load i32, ptr %colorspace.i2422, align 4, !tbaa !925
  %cmp.i2539 = icmp eq i32 %264, 12
  %265 = load float, ptr %index11.i2547, align 8
  %cmp.i47.i2548 = fcmp ole float %265, 0.000000e+00
  %cmp1.i48.i2550 = fcmp oge float %265, 6.553500e+04
  %add.i50.i2552 = fadd float %265, 5.000000e-01
  %conv.i51.i2553 = fptoui float %add.i50.i2552 to i16
  %brmerge4027 = or i1 %cmp.i.i2501, %cmp1.i.i2502
  %not.cmp.i.i2501 = xor i1 %cmp.i.i2501, true
  %.mux4028 = sext i1 %not.cmp.i.i2501 to i16
  %spec.select4252 = select i1 %brmerge4027, i16 %.mux4028, i16 %conv.i.i2505
  %brmerge4029 = or i1 %cmp.i23.i2510, %cmp1.i24.i2512
  %not.cmp.i23.i2510 = xor i1 %cmp.i23.i2510, true
  %.mux4030 = sext i1 %not.cmp.i23.i2510 to i16
  %spec.select4321 = select i1 %brmerge4029, i16 %.mux4030, i16 %conv.i27.i2515
  %brmerge4031 = or i1 %cmp.i31.i2520, %cmp1.i32.i2522
  %not.cmp.i31.i2520 = xor i1 %cmp.i31.i2520, true
  %.mux4032 = sext i1 %not.cmp.i31.i2520 to i16
  %spec.select4253 = select i1 %brmerge4031, i16 %.mux4032, i16 %conv.i35.i2525
  %brmerge4033 = or i1 %cmp.i39.i2529, %cmp1.i40.i2531
  %not.cmp.i39.i2529 = xor i1 %cmp.i39.i2529, true
  %.mux4034 = sext i1 %not.cmp.i39.i2529 to i16
  %spec.select4354 = select i1 %brmerge4033, i16 %.mux4034, i16 %conv.i43.i2534
  %brmerge4035 = or i1 %cmp.i47.i2548, %cmp1.i48.i2550
  %not.cmp.i47.i2548 = xor i1 %cmp.i47.i2548, true
  %.mux4036 = sext i1 %not.cmp.i47.i2548 to i16
  %spec.select4254 = select i1 %brmerge4035, i16 %.mux4036, i16 %conv.i51.i2553
  br label %for.body449, !dbg !2157

for.body439:                                      ; preds = %for.body439.lr.ph, %SetPixelPacket.exit2499
  %q410.13714 = phi ptr [ %q410.0.lcssa, %for.body439.lr.ph ], [ %incdec.ptr440, %SetPixelPacket.exit2499 ]
  %x409.13713 = phi i64 [ 0, %for.body439.lr.ph ], [ %inc443, %SetPixelPacket.exit2499 ]
  %frame_indexes408.13710 = phi ptr [ %frame_indexes408.0.lcssa, %for.body439.lr.ph ], [ %incdec.ptr441, %SetPixelPacket.exit2499 ]
  call void @llvm.dbg.value(metadata ptr %q410.13714, metadata !808, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %x409.13713, metadata !807, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.13710, metadata !803, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata ptr %matte, metadata !1676, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata ptr %q410.13714, metadata !1677, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.13710, metadata !1678, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata float %252, metadata !1685, metadata !DIExpression()), !dbg !2161
  %red1.i2450 = getelementptr inbounds %struct._PixelPacket, ptr %q410.13714, i64 0, i32 2, !dbg !2163
  store i16 %spec.select4249, ptr %red1.i2450, align 2, !dbg !2163, !tbaa !891
  call void @llvm.dbg.value(metadata float %253, metadata !1685, metadata !DIExpression()), !dbg !2164
  %green3.i2460 = getelementptr inbounds %struct._PixelPacket, ptr %q410.13714, i64 0, i32 1, !dbg !2166
  store i16 %spec.select4320, ptr %green3.i2460, align 2, !dbg !2166, !tbaa !894
  call void @llvm.dbg.value(metadata float %254, metadata !1685, metadata !DIExpression()), !dbg !2167
  store i16 %spec.select4250, ptr %q410.13714, align 2, !dbg !2169, !tbaa !897
  call void @llvm.dbg.value(metadata float %255, metadata !1685, metadata !DIExpression()), !dbg !2170
  %opacity7.i2479 = getelementptr inbounds %struct._PixelPacket, ptr %q410.13714, i64 0, i32 3, !dbg !2172
  store i16 %spec.select4353, ptr %opacity7.i2479, align 2, !dbg !2172, !tbaa !1006
  br i1 %cmp.i2481, label %if.then.i2488, label %lor.lhs.false.i2486, !dbg !2173

lor.lhs.false.i2486:                              ; preds = %for.body439
  %266 = load i32, ptr %call27, align 8, !dbg !2174, !tbaa !1707
  %cmp8.i2483 = icmp eq i32 %266, 2, !dbg !2175
  %cmp9.i2484 = icmp ne ptr %frame_indexes408.13710, null
  %or.cond.i2485 = and i1 %cmp9.i2484, %cmp8.i2483, !dbg !2176
  br i1 %or.cond.i2485, label %if.then10.i2491, label %SetPixelPacket.exit2499, !dbg !2176

if.then.i2488:                                    ; preds = %for.body439
  %cmp9.old.not.i2487 = icmp eq ptr %frame_indexes408.13710, null, !dbg !2177
  br i1 %cmp9.old.not.i2487, label %SetPixelPacket.exit2499, label %if.then10.i2491, !dbg !2178

if.then10.i2491:                                  ; preds = %if.then.i2488, %lor.lhs.false.i2486
  call void @llvm.dbg.value(metadata float %257, metadata !1685, metadata !DIExpression()), !dbg !2179
  store i16 %spec.select4251, ptr %frame_indexes408.13710, align 2, !dbg !2177, !tbaa !1734
  br label %SetPixelPacket.exit2499, !dbg !2177

SetPixelPacket.exit2499:                          ; preds = %lor.lhs.false.i2486, %if.then.i2488, %if.then10.i2491
  %incdec.ptr440 = getelementptr inbounds %struct._PixelPacket, ptr %q410.13714, i64 1, !dbg !2181
  call void @llvm.dbg.value(metadata ptr %incdec.ptr440, metadata !808, metadata !DIExpression()), !dbg !2113
  %incdec.ptr441 = getelementptr inbounds i16, ptr %frame_indexes408.13710, i64 1, !dbg !2182
  call void @llvm.dbg.value(metadata ptr %incdec.ptr441, metadata !803, metadata !DIExpression()), !dbg !2113
  %inc443 = add nuw nsw i64 %x409.13713, 1, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %inc443, metadata !807, metadata !DIExpression()), !dbg !2113
  %exitcond4384.not = icmp eq i64 %inc443, %sub436, !dbg !2122
  br i1 %exitcond4384.not, label %for.cond445.preheader, label %for.body439, !dbg !2125, !llvm.loop !2184

for.body449:                                      ; preds = %for.body449.lr.ph, %SetPixelPacket.exit2557
  %q410.23722 = phi ptr [ %q410.1.lcssa, %for.body449.lr.ph ], [ %incdec.ptr450, %SetPixelPacket.exit2557 ]
  %x409.23721 = phi i64 [ 0, %for.body449.lr.ph ], [ %inc453, %SetPixelPacket.exit2557 ]
  %frame_indexes408.23718 = phi ptr [ %frame_indexes408.1.lcssa, %for.body449.lr.ph ], [ %incdec.ptr451, %SetPixelPacket.exit2557 ]
  call void @llvm.dbg.value(metadata ptr %q410.23722, metadata !808, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %x409.23721, metadata !807, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.23718, metadata !803, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata ptr %shadow, metadata !1676, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata ptr %q410.23722, metadata !1677, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.23718, metadata !1678, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata float %260, metadata !1685, metadata !DIExpression()), !dbg !2189
  %red1.i2508 = getelementptr inbounds %struct._PixelPacket, ptr %q410.23722, i64 0, i32 2, !dbg !2191
  store i16 %spec.select4252, ptr %red1.i2508, align 2, !dbg !2191, !tbaa !891
  call void @llvm.dbg.value(metadata float %261, metadata !1685, metadata !DIExpression()), !dbg !2192
  %green3.i2518 = getelementptr inbounds %struct._PixelPacket, ptr %q410.23722, i64 0, i32 1, !dbg !2194
  store i16 %spec.select4321, ptr %green3.i2518, align 2, !dbg !2194, !tbaa !894
  call void @llvm.dbg.value(metadata float %262, metadata !1685, metadata !DIExpression()), !dbg !2195
  store i16 %spec.select4253, ptr %q410.23722, align 2, !dbg !2197, !tbaa !897
  call void @llvm.dbg.value(metadata float %263, metadata !1685, metadata !DIExpression()), !dbg !2198
  %opacity7.i2537 = getelementptr inbounds %struct._PixelPacket, ptr %q410.23722, i64 0, i32 3, !dbg !2200
  store i16 %spec.select4354, ptr %opacity7.i2537, align 2, !dbg !2200, !tbaa !1006
  br i1 %cmp.i2539, label %if.then.i2546, label %lor.lhs.false.i2544, !dbg !2201

lor.lhs.false.i2544:                              ; preds = %for.body449
  %267 = load i32, ptr %call27, align 8, !dbg !2202, !tbaa !1707
  %cmp8.i2541 = icmp eq i32 %267, 2, !dbg !2203
  %cmp9.i2542 = icmp ne ptr %frame_indexes408.23718, null
  %or.cond.i2543 = and i1 %cmp9.i2542, %cmp8.i2541, !dbg !2204
  br i1 %or.cond.i2543, label %if.then10.i2549, label %SetPixelPacket.exit2557, !dbg !2204

if.then.i2546:                                    ; preds = %for.body449
  %cmp9.old.not.i2545 = icmp eq ptr %frame_indexes408.23718, null, !dbg !2205
  br i1 %cmp9.old.not.i2545, label %SetPixelPacket.exit2557, label %if.then10.i2549, !dbg !2206

if.then10.i2549:                                  ; preds = %if.then.i2546, %lor.lhs.false.i2544
  call void @llvm.dbg.value(metadata float %265, metadata !1685, metadata !DIExpression()), !dbg !2207
  store i16 %spec.select4254, ptr %frame_indexes408.23718, align 2, !dbg !2205, !tbaa !1734
  br label %SetPixelPacket.exit2557, !dbg !2205

SetPixelPacket.exit2557:                          ; preds = %lor.lhs.false.i2544, %if.then.i2546, %if.then10.i2549
  %incdec.ptr450 = getelementptr inbounds %struct._PixelPacket, ptr %q410.23722, i64 1, !dbg !2209
  call void @llvm.dbg.value(metadata ptr %incdec.ptr450, metadata !808, metadata !DIExpression()), !dbg !2113
  %incdec.ptr451 = getelementptr inbounds i16, ptr %frame_indexes408.23718, i64 1, !dbg !2210
  call void @llvm.dbg.value(metadata ptr %incdec.ptr451, metadata !803, metadata !DIExpression()), !dbg !2113
  %inc453 = add nuw nsw i64 %x409.23721, 1, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %inc453, metadata !807, metadata !DIExpression()), !dbg !2113
  %exitcond4385.not = icmp eq i64 %inc453, %259, !dbg !2154
  br i1 %exitcond4385.not, label %for.end454, label %for.body449, !dbg !2157, !llvm.loop !2212

for.end454:                                       ; preds = %SetPixelPacket.exit2557, %for.cond445.preheader
  %frame_indexes408.2.lcssa = phi ptr [ %frame_indexes408.1.lcssa, %for.cond445.preheader ], [ %incdec.ptr451, %SetPixelPacket.exit2557 ], !dbg !2113
  %q410.2.lcssa = phi ptr [ %q410.1.lcssa, %for.cond445.preheader ], [ %incdec.ptr450, %SetPixelPacket.exit2557 ], !dbg !2113
  %268 = load i32, ptr %compose, align 8, !dbg !2214, !tbaa !2215
  switch i32 %268, label %if.then465 [
    i32 13, label %if.else476
    i32 40, label %lor.lhs.false461
  ], !dbg !2216

lor.lhs.false461:                                 ; preds = %for.end454
  %269 = load i32, ptr %matte462, align 8, !dbg !2217, !tbaa !945
  %cmp463.not = icmp eq i32 %269, 0, !dbg !2218
  br i1 %cmp463.not, label %if.else476, label %if.then465, !dbg !2219

if.then465:                                       ; preds = %for.end454, %lor.lhs.false461
  call void @llvm.dbg.value(metadata i64 0, metadata !807, metadata !DIExpression()), !dbg !2113
  %270 = load i64, ptr %columns, align 8, !tbaa !702
  call void @llvm.dbg.value(metadata ptr %q410.2.lcssa, metadata !808, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.2.lcssa, metadata !803, metadata !DIExpression()), !dbg !2113
  %cmp4683725 = icmp sgt i64 %270, 0, !dbg !2220
  br i1 %cmp4683725, label %for.body470.lr.ph, label %if.end503, !dbg !2223

for.body470.lr.ph:                                ; preds = %if.then465
  %271 = load float, ptr %red1.i1250, align 8, !tbaa !992
  %cmp.i.i2559 = fcmp ole float %271, 0.000000e+00
  %cmp1.i.i2560 = fcmp oge float %271, 6.553500e+04
  %add.i.i2562 = fadd float %271, 5.000000e-01
  %conv.i.i2563 = fptoui float %add.i.i2562 to i16
  %272 = load float, ptr %green3.i, align 4, !tbaa !999
  %cmp.i23.i2568 = fcmp ole float %272, 0.000000e+00
  %cmp1.i24.i2570 = fcmp oge float %272, 6.553500e+04
  %add.i26.i2572 = fadd float %272, 5.000000e-01
  %conv.i27.i2573 = fptoui float %add.i26.i2572 to i16
  %273 = load float, ptr %blue5.i, align 8, !tbaa !1004
  %cmp.i31.i2578 = fcmp ole float %273, 0.000000e+00
  %cmp1.i32.i2580 = fcmp oge float %273, 6.553500e+04
  %add.i34.i2582 = fadd float %273, 5.000000e-01
  %conv.i35.i2583 = fptoui float %add.i34.i2582 to i16
  %274 = load float, ptr %opacity7.i, align 4, !tbaa !1010
  %cmp.i39.i2587 = fcmp ole float %274, 0.000000e+00
  %cmp1.i40.i2589 = fcmp oge float %274, 6.553500e+04
  %add.i42.i2591 = fadd float %274, 5.000000e-01
  %conv.i43.i2592 = fptoui float %add.i42.i2591 to i16
  %275 = load i32, ptr %colorspace.i2422, align 4, !tbaa !925
  %cmp.i2597 = icmp eq i32 %275, 12
  %276 = load float, ptr %index11.i2605, align 8
  %cmp.i47.i2606 = fcmp ole float %276, 0.000000e+00
  %cmp1.i48.i2608 = fcmp oge float %276, 6.553500e+04
  %add.i50.i2610 = fadd float %276, 5.000000e-01
  %conv.i51.i2611 = fptoui float %add.i50.i2610 to i16
  %brmerge4037 = or i1 %cmp.i.i2559, %cmp1.i.i2560
  %not.cmp.i.i2559 = xor i1 %cmp.i.i2559, true
  %.mux4038 = sext i1 %not.cmp.i.i2559 to i16
  %spec.select4255 = select i1 %brmerge4037, i16 %.mux4038, i16 %conv.i.i2563
  %brmerge4039 = or i1 %cmp.i23.i2568, %cmp1.i24.i2570
  %not.cmp.i23.i2568 = xor i1 %cmp.i23.i2568, true
  %.mux4040 = sext i1 %not.cmp.i23.i2568 to i16
  %spec.select4322 = select i1 %brmerge4039, i16 %.mux4040, i16 %conv.i27.i2573
  %brmerge4041 = or i1 %cmp.i31.i2578, %cmp1.i32.i2580
  %not.cmp.i31.i2578 = xor i1 %cmp.i31.i2578, true
  %.mux4042 = sext i1 %not.cmp.i31.i2578 to i16
  %spec.select4256 = select i1 %brmerge4041, i16 %.mux4042, i16 %conv.i35.i2583
  %brmerge4043 = or i1 %cmp.i39.i2587, %cmp1.i40.i2589
  %not.cmp.i39.i2587 = xor i1 %cmp.i39.i2587, true
  %.mux4044 = sext i1 %not.cmp.i39.i2587 to i16
  %spec.select4355 = select i1 %brmerge4043, i16 %.mux4044, i16 %conv.i43.i2592
  %brmerge4045 = or i1 %cmp.i47.i2606, %cmp1.i48.i2608
  %not.cmp.i47.i2606 = xor i1 %cmp.i47.i2606, true
  %.mux4046 = sext i1 %not.cmp.i47.i2606 to i16
  %spec.select4257 = select i1 %brmerge4045, i16 %.mux4046, i16 %conv.i51.i2611
  br label %for.body470, !dbg !2223

for.body470:                                      ; preds = %for.body470.lr.ph, %SetPixelPacket.exit2615
  %q410.33730 = phi ptr [ %q410.2.lcssa, %for.body470.lr.ph ], [ %incdec.ptr471, %SetPixelPacket.exit2615 ]
  %x409.33729 = phi i64 [ 0, %for.body470.lr.ph ], [ %inc474, %SetPixelPacket.exit2615 ]
  %frame_indexes408.33726 = phi ptr [ %frame_indexes408.2.lcssa, %for.body470.lr.ph ], [ %incdec.ptr472, %SetPixelPacket.exit2615 ]
  call void @llvm.dbg.value(metadata ptr %q410.33730, metadata !808, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %x409.33729, metadata !807, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.33726, metadata !803, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata ptr %interior, metadata !1676, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata ptr %q410.33730, metadata !1677, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.33726, metadata !1678, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata float %271, metadata !1685, metadata !DIExpression()), !dbg !2227
  %red1.i2566 = getelementptr inbounds %struct._PixelPacket, ptr %q410.33730, i64 0, i32 2, !dbg !2229
  store i16 %spec.select4255, ptr %red1.i2566, align 2, !dbg !2229, !tbaa !891
  call void @llvm.dbg.value(metadata float %272, metadata !1685, metadata !DIExpression()), !dbg !2230
  %green3.i2576 = getelementptr inbounds %struct._PixelPacket, ptr %q410.33730, i64 0, i32 1, !dbg !2232
  store i16 %spec.select4322, ptr %green3.i2576, align 2, !dbg !2232, !tbaa !894
  call void @llvm.dbg.value(metadata float %273, metadata !1685, metadata !DIExpression()), !dbg !2233
  store i16 %spec.select4256, ptr %q410.33730, align 2, !dbg !2235, !tbaa !897
  call void @llvm.dbg.value(metadata float %274, metadata !1685, metadata !DIExpression()), !dbg !2236
  %opacity7.i2595 = getelementptr inbounds %struct._PixelPacket, ptr %q410.33730, i64 0, i32 3, !dbg !2238
  store i16 %spec.select4355, ptr %opacity7.i2595, align 2, !dbg !2238, !tbaa !1006
  br i1 %cmp.i2597, label %if.then.i2604, label %lor.lhs.false.i2602, !dbg !2239

lor.lhs.false.i2602:                              ; preds = %for.body470
  %277 = load i32, ptr %call27, align 8, !dbg !2240, !tbaa !1707
  %cmp8.i2599 = icmp eq i32 %277, 2, !dbg !2241
  %cmp9.i2600 = icmp ne ptr %frame_indexes408.33726, null
  %or.cond.i2601 = and i1 %cmp9.i2600, %cmp8.i2599, !dbg !2242
  br i1 %or.cond.i2601, label %if.then10.i2607, label %SetPixelPacket.exit2615, !dbg !2242

if.then.i2604:                                    ; preds = %for.body470
  %cmp9.old.not.i2603 = icmp eq ptr %frame_indexes408.33726, null, !dbg !2243
  br i1 %cmp9.old.not.i2603, label %SetPixelPacket.exit2615, label %if.then10.i2607, !dbg !2244

if.then10.i2607:                                  ; preds = %if.then.i2604, %lor.lhs.false.i2602
  call void @llvm.dbg.value(metadata float %276, metadata !1685, metadata !DIExpression()), !dbg !2245
  store i16 %spec.select4257, ptr %frame_indexes408.33726, align 2, !dbg !2243, !tbaa !1734
  br label %SetPixelPacket.exit2615, !dbg !2243

SetPixelPacket.exit2615:                          ; preds = %lor.lhs.false.i2602, %if.then.i2604, %if.then10.i2607
  %incdec.ptr471 = getelementptr inbounds %struct._PixelPacket, ptr %q410.33730, i64 1, !dbg !2247
  call void @llvm.dbg.value(metadata ptr %incdec.ptr471, metadata !808, metadata !DIExpression()), !dbg !2113
  %incdec.ptr472 = getelementptr inbounds i16, ptr %frame_indexes408.33726, i64 1, !dbg !2248
  call void @llvm.dbg.value(metadata ptr %incdec.ptr472, metadata !803, metadata !DIExpression()), !dbg !2113
  %inc474 = add nuw nsw i64 %x409.33729, 1, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %inc474, metadata !807, metadata !DIExpression()), !dbg !2113
  %exitcond4386.not = icmp eq i64 %inc474, %270, !dbg !2220
  br i1 %exitcond4386.not, label %if.end503, label %for.body470, !dbg !2223, !llvm.loop !2250

if.else476:                                       ; preds = %for.end454, %lor.lhs.false461
  %278 = load i64, ptr %columns, align 8, !dbg !2252, !tbaa !702
  %call478 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call228, i64 noundef 0, i64 noundef %y.33760, i64 noundef %278, i64 noundef 1, ptr noundef %exception) #8, !dbg !2253
  call void @llvm.dbg.value(metadata ptr %call478, metadata !812, metadata !DIExpression()), !dbg !2254
  %cmp479 = icmp eq ptr %call478, null, !dbg !2255
  br i1 %cmp479, label %cleanup555, label %if.end482, !dbg !2257

if.end482:                                        ; preds = %if.else476
  %call483 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call228) #7, !dbg !2258
  call void @llvm.dbg.value(metadata ptr %call483, metadata !809, metadata !DIExpression()), !dbg !2254
  %279 = load i64, ptr %columns, align 8, !dbg !2259, !tbaa !702
  %mul485 = shl i64 %279, 3, !dbg !2260
  %call486 = call ptr @CopyMagickMemory(ptr noundef nonnull %q410.2.lcssa, ptr noundef nonnull %call478, i64 noundef %mul485) #7, !dbg !2261
  %280 = load i32, ptr %colorspace223, align 4, !dbg !2262, !tbaa !925
  %cmp488 = icmp eq i32 %280, 12, !dbg !2264
  br i1 %cmp488, label %land.lhs.true490, label %cleanup, !dbg !2265

land.lhs.true490:                                 ; preds = %if.end482
  %281 = load i32, ptr %colorspace.i2422, align 4, !dbg !2266, !tbaa !925
  %cmp492 = icmp eq i32 %281, 12, !dbg !2267
  br i1 %cmp492, label %if.then494, label %cleanup, !dbg !2268

if.then494:                                       ; preds = %land.lhs.true490
  %282 = load i64, ptr %columns, align 8, !dbg !2269, !tbaa !702
  %mul496 = shl i64 %282, 1, !dbg !2271
  %call497 = call ptr @CopyMagickMemory(ptr noundef %frame_indexes408.2.lcssa, ptr noundef %call483, i64 noundef %mul496) #7, !dbg !2272
  %283 = load i64, ptr %columns, align 8, !dbg !2273, !tbaa !702
  %add.ptr = getelementptr inbounds i16, ptr %frame_indexes408.2.lcssa, i64 %283, !dbg !2274
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !803, metadata !DIExpression()), !dbg !2113
  br label %cleanup, !dbg !2275

cleanup:                                          ; preds = %if.end482, %land.lhs.true490, %if.then494
  %frame_indexes408.4 = phi ptr [ %add.ptr, %if.then494 ], [ %frame_indexes408.2.lcssa, %land.lhs.true490 ], [ %frame_indexes408.2.lcssa, %if.end482 ], !dbg !2113
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.4, metadata !803, metadata !DIExpression()), !dbg !2113
  %284 = load i64, ptr %columns, align 8, !dbg !2276, !tbaa !702
  %add.ptr501 = getelementptr inbounds %struct._PixelPacket, ptr %q410.2.lcssa, i64 %284, !dbg !2277
  call void @llvm.dbg.value(metadata ptr %add.ptr501, metadata !808, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 1, metadata !769, metadata !DIExpression()), !dbg !821
  %.pre = load i64, ptr %inner_bevel, align 8, !tbaa !843
  br label %if.end503

if.end503:                                        ; preds = %SetPixelPacket.exit2615, %if.then465, %cleanup
  %285 = phi i64 [ %284, %cleanup ], [ %270, %if.then465 ], [ %270, %SetPixelPacket.exit2615 ]
  %286 = phi i64 [ %.pre, %cleanup ], [ %259, %if.then465 ], [ %259, %SetPixelPacket.exit2615 ]
  %frame_indexes408.6 = phi ptr [ %frame_indexes408.4, %cleanup ], [ %frame_indexes408.2.lcssa, %if.then465 ], [ %incdec.ptr472, %SetPixelPacket.exit2615 ], !dbg !2278
  %q410.5 = phi ptr [ %add.ptr501, %cleanup ], [ %q410.2.lcssa, %if.then465 ], [ %incdec.ptr471, %SetPixelPacket.exit2615 ], !dbg !2279
  call void @llvm.dbg.value(metadata i32 1, metadata !769, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata ptr %q410.5, metadata !808, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 0, metadata !807, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.6, metadata !803, metadata !DIExpression()), !dbg !2113
  %cmp5063733 = icmp sgt i64 %286, 0, !dbg !2280
  br i1 %cmp5063733, label %for.body508.lr.ph, label %for.end513, !dbg !2283

for.body508.lr.ph:                                ; preds = %if.end503
  %287 = load float, ptr %red134, align 8, !tbaa !992
  %cmp.i.i2617 = fcmp ole float %287, 0.000000e+00
  %cmp1.i.i2618 = fcmp oge float %287, 6.553500e+04
  %add.i.i2620 = fadd float %287, 5.000000e-01
  %conv.i.i2621 = fptoui float %add.i.i2620 to i16
  %288 = load float, ptr %green148, align 4, !tbaa !999
  %cmp.i23.i2626 = fcmp ole float %288, 0.000000e+00
  %cmp1.i24.i2628 = fcmp oge float %288, 6.553500e+04
  %add.i26.i2630 = fadd float %288, 5.000000e-01
  %conv.i27.i2631 = fptoui float %add.i26.i2630 to i16
  %289 = load float, ptr %blue162, align 8, !tbaa !1004
  %cmp.i31.i2636 = fcmp ole float %289, 0.000000e+00
  %cmp1.i32.i2638 = fcmp oge float %289, 6.553500e+04
  %add.i34.i2640 = fadd float %289, 5.000000e-01
  %conv.i35.i2641 = fptoui float %add.i34.i2640 to i16
  %290 = load float, ptr %opacity164, align 4, !tbaa !1010
  %cmp.i39.i2645 = fcmp ole float %290, 0.000000e+00
  %cmp1.i40.i2647 = fcmp oge float %290, 6.553500e+04
  %add.i42.i2649 = fadd float %290, 5.000000e-01
  %conv.i43.i2650 = fptoui float %add.i42.i2649 to i16
  %291 = load i32, ptr %colorspace.i2422, align 4, !tbaa !925
  %cmp.i2655 = icmp eq i32 %291, 12
  %292 = load float, ptr %index11.i2431, align 8
  %cmp.i47.i2664 = fcmp ole float %292, 0.000000e+00
  %cmp1.i48.i2666 = fcmp oge float %292, 6.553500e+04
  %add.i50.i2668 = fadd float %292, 5.000000e-01
  %conv.i51.i2669 = fptoui float %add.i50.i2668 to i16
  %brmerge4047 = or i1 %cmp.i.i2617, %cmp1.i.i2618
  %not.cmp.i.i2617 = xor i1 %cmp.i.i2617, true
  %.mux4048 = sext i1 %not.cmp.i.i2617 to i16
  %spec.select4258 = select i1 %brmerge4047, i16 %.mux4048, i16 %conv.i.i2621
  %brmerge4049 = or i1 %cmp.i23.i2626, %cmp1.i24.i2628
  %not.cmp.i23.i2626 = xor i1 %cmp.i23.i2626, true
  %.mux4050 = sext i1 %not.cmp.i23.i2626 to i16
  %spec.select4323 = select i1 %brmerge4049, i16 %.mux4050, i16 %conv.i27.i2631
  %brmerge4051 = or i1 %cmp.i31.i2636, %cmp1.i32.i2638
  %not.cmp.i31.i2636 = xor i1 %cmp.i31.i2636, true
  %.mux4052 = sext i1 %not.cmp.i31.i2636 to i16
  %spec.select4259 = select i1 %brmerge4051, i16 %.mux4052, i16 %conv.i35.i2641
  %brmerge4053 = or i1 %cmp.i39.i2645, %cmp1.i40.i2647
  %not.cmp.i39.i2645 = xor i1 %cmp.i39.i2645, true
  %.mux4054 = sext i1 %not.cmp.i39.i2645 to i16
  %spec.select4356 = select i1 %brmerge4053, i16 %.mux4054, i16 %conv.i43.i2650
  %brmerge4055 = or i1 %cmp.i47.i2664, %cmp1.i48.i2666
  %not.cmp.i47.i2664 = xor i1 %cmp.i47.i2664, true
  %.mux4056 = sext i1 %not.cmp.i47.i2664 to i16
  %spec.select4260 = select i1 %brmerge4055, i16 %.mux4056, i16 %conv.i51.i2669
  br label %for.body508, !dbg !2283

for.body508:                                      ; preds = %for.body508.lr.ph, %SetPixelPacket.exit2673
  %q410.63738 = phi ptr [ %q410.5, %for.body508.lr.ph ], [ %incdec.ptr509, %SetPixelPacket.exit2673 ]
  %x409.43737 = phi i64 [ 0, %for.body508.lr.ph ], [ %inc512, %SetPixelPacket.exit2673 ]
  %frame_indexes408.73734 = phi ptr [ %frame_indexes408.6, %for.body508.lr.ph ], [ %incdec.ptr510, %SetPixelPacket.exit2673 ]
  call void @llvm.dbg.value(metadata ptr %q410.63738, metadata !808, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %x409.43737, metadata !807, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.73734, metadata !803, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata ptr %highlight, metadata !1676, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata ptr %q410.63738, metadata !1677, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.73734, metadata !1678, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata float %287, metadata !1685, metadata !DIExpression()), !dbg !2287
  %red1.i2624 = getelementptr inbounds %struct._PixelPacket, ptr %q410.63738, i64 0, i32 2, !dbg !2289
  store i16 %spec.select4258, ptr %red1.i2624, align 2, !dbg !2289, !tbaa !891
  call void @llvm.dbg.value(metadata float %288, metadata !1685, metadata !DIExpression()), !dbg !2290
  %green3.i2634 = getelementptr inbounds %struct._PixelPacket, ptr %q410.63738, i64 0, i32 1, !dbg !2292
  store i16 %spec.select4323, ptr %green3.i2634, align 2, !dbg !2292, !tbaa !894
  call void @llvm.dbg.value(metadata float %289, metadata !1685, metadata !DIExpression()), !dbg !2293
  store i16 %spec.select4259, ptr %q410.63738, align 2, !dbg !2295, !tbaa !897
  call void @llvm.dbg.value(metadata float %290, metadata !1685, metadata !DIExpression()), !dbg !2296
  %opacity7.i2653 = getelementptr inbounds %struct._PixelPacket, ptr %q410.63738, i64 0, i32 3, !dbg !2298
  store i16 %spec.select4356, ptr %opacity7.i2653, align 2, !dbg !2298, !tbaa !1006
  br i1 %cmp.i2655, label %if.then.i2662, label %lor.lhs.false.i2660, !dbg !2299

lor.lhs.false.i2660:                              ; preds = %for.body508
  %293 = load i32, ptr %call27, align 8, !dbg !2300, !tbaa !1707
  %cmp8.i2657 = icmp eq i32 %293, 2, !dbg !2301
  %cmp9.i2658 = icmp ne ptr %frame_indexes408.73734, null
  %or.cond.i2659 = and i1 %cmp9.i2658, %cmp8.i2657, !dbg !2302
  br i1 %or.cond.i2659, label %if.then10.i2665, label %SetPixelPacket.exit2673, !dbg !2302

if.then.i2662:                                    ; preds = %for.body508
  %cmp9.old.not.i2661 = icmp eq ptr %frame_indexes408.73734, null, !dbg !2303
  br i1 %cmp9.old.not.i2661, label %SetPixelPacket.exit2673, label %if.then10.i2665, !dbg !2304

if.then10.i2665:                                  ; preds = %if.then.i2662, %lor.lhs.false.i2660
  call void @llvm.dbg.value(metadata float %292, metadata !1685, metadata !DIExpression()), !dbg !2305
  store i16 %spec.select4260, ptr %frame_indexes408.73734, align 2, !dbg !2303, !tbaa !1734
  br label %SetPixelPacket.exit2673, !dbg !2303

SetPixelPacket.exit2673:                          ; preds = %lor.lhs.false.i2660, %if.then.i2662, %if.then10.i2665
  %incdec.ptr509 = getelementptr inbounds %struct._PixelPacket, ptr %q410.63738, i64 1, !dbg !2307
  call void @llvm.dbg.value(metadata ptr %incdec.ptr509, metadata !808, metadata !DIExpression()), !dbg !2113
  %incdec.ptr510 = getelementptr inbounds i16, ptr %frame_indexes408.73734, i64 1, !dbg !2308
  call void @llvm.dbg.value(metadata ptr %incdec.ptr510, metadata !803, metadata !DIExpression()), !dbg !2113
  %inc512 = add nuw nsw i64 %x409.43737, 1, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %inc512, metadata !807, metadata !DIExpression()), !dbg !2113
  %exitcond4387.not = icmp eq i64 %inc512, %286, !dbg !2280
  br i1 %exitcond4387.not, label %for.end513, label %for.body508, !dbg !2283, !llvm.loop !2310

for.end513:                                       ; preds = %SetPixelPacket.exit2673, %if.end503
  %frame_indexes408.7.lcssa = phi ptr [ %frame_indexes408.6, %if.end503 ], [ %incdec.ptr510, %SetPixelPacket.exit2673 ], !dbg !2113
  %q410.6.lcssa = phi ptr [ %q410.5, %if.end503 ], [ %incdec.ptr509, %SetPixelPacket.exit2673 ], !dbg !2113
  %294 = load i64, ptr %frame_info, align 8, !dbg !2312, !tbaa !708
  %295 = load i64, ptr %x11, align 8, !dbg !2313, !tbaa !721
  %296 = add i64 %add, %295, !dbg !2314
  %297 = add i64 %296, %285, !dbg !2314
  %sub519 = sub i64 %294, %297, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %sub519, metadata !794, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 0, metadata !807, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %q410.6.lcssa, metadata !808, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.7.lcssa, metadata !803, metadata !DIExpression()), !dbg !2113
  %cmp5213741 = icmp sgt i64 %sub519, 0, !dbg !2315
  br i1 %cmp5213741, label %for.body523.lr.ph, label %for.cond529.preheader, !dbg !2318

for.body523.lr.ph:                                ; preds = %for.end513
  %298 = load float, ptr %red1.i1254, align 8, !tbaa !992
  %cmp.i.i2675 = fcmp ole float %298, 0.000000e+00
  %cmp1.i.i2676 = fcmp oge float %298, 6.553500e+04
  %add.i.i2678 = fadd float %298, 5.000000e-01
  %conv.i.i2679 = fptoui float %add.i.i2678 to i16
  %299 = load float, ptr %green3.i1257, align 4, !tbaa !999
  %cmp.i23.i2684 = fcmp ole float %299, 0.000000e+00
  %cmp1.i24.i2686 = fcmp oge float %299, 6.553500e+04
  %add.i26.i2688 = fadd float %299, 5.000000e-01
  %conv.i27.i2689 = fptoui float %add.i26.i2688 to i16
  %300 = load float, ptr %blue5.i1259, align 8, !tbaa !1004
  %cmp.i31.i2694 = fcmp ole float %300, 0.000000e+00
  %cmp1.i32.i2696 = fcmp oge float %300, 6.553500e+04
  %add.i34.i2698 = fadd float %300, 5.000000e-01
  %conv.i35.i2699 = fptoui float %add.i34.i2698 to i16
  %301 = load float, ptr %opacity7.i1262, align 4, !tbaa !1010
  %cmp.i39.i2703 = fcmp ole float %301, 0.000000e+00
  %cmp1.i40.i2705 = fcmp oge float %301, 6.553500e+04
  %add.i42.i2707 = fadd float %301, 5.000000e-01
  %conv.i43.i2708 = fptoui float %add.i42.i2707 to i16
  %302 = load i32, ptr %colorspace.i2422, align 4, !tbaa !925
  %cmp.i2713 = icmp eq i32 %302, 12
  %303 = load float, ptr %index11.i2489, align 8
  %cmp.i47.i2722 = fcmp ole float %303, 0.000000e+00
  %cmp1.i48.i2724 = fcmp oge float %303, 6.553500e+04
  %add.i50.i2726 = fadd float %303, 5.000000e-01
  %conv.i51.i2727 = fptoui float %add.i50.i2726 to i16
  %brmerge4057 = or i1 %cmp.i.i2675, %cmp1.i.i2676
  %not.cmp.i.i2675 = xor i1 %cmp.i.i2675, true
  %.mux4058 = sext i1 %not.cmp.i.i2675 to i16
  %spec.select4261 = select i1 %brmerge4057, i16 %.mux4058, i16 %conv.i.i2679
  %brmerge4059 = or i1 %cmp.i23.i2684, %cmp1.i24.i2686
  %not.cmp.i23.i2684 = xor i1 %cmp.i23.i2684, true
  %.mux4060 = sext i1 %not.cmp.i23.i2684 to i16
  %spec.select4324 = select i1 %brmerge4059, i16 %.mux4060, i16 %conv.i27.i2689
  %brmerge4061 = or i1 %cmp.i31.i2694, %cmp1.i32.i2696
  %not.cmp.i31.i2694 = xor i1 %cmp.i31.i2694, true
  %.mux4062 = sext i1 %not.cmp.i31.i2694 to i16
  %spec.select4262 = select i1 %brmerge4061, i16 %.mux4062, i16 %conv.i35.i2699
  %brmerge4063 = or i1 %cmp.i39.i2703, %cmp1.i40.i2705
  %not.cmp.i39.i2703 = xor i1 %cmp.i39.i2703, true
  %.mux4064 = sext i1 %not.cmp.i39.i2703 to i16
  %spec.select4357 = select i1 %brmerge4063, i16 %.mux4064, i16 %conv.i43.i2708
  %brmerge4065 = or i1 %cmp.i47.i2722, %cmp1.i48.i2724
  %not.cmp.i47.i2722 = xor i1 %cmp.i47.i2722, true
  %.mux4066 = sext i1 %not.cmp.i47.i2722 to i16
  %spec.select4263 = select i1 %brmerge4065, i16 %.mux4066, i16 %conv.i51.i2727
  br label %for.body523, !dbg !2318

for.cond529.preheader:                            ; preds = %SetPixelPacket.exit2731, %for.end513
  %frame_indexes408.8.lcssa = phi ptr [ %frame_indexes408.7.lcssa, %for.end513 ], [ %incdec.ptr525, %SetPixelPacket.exit2731 ], !dbg !2113
  %q410.7.lcssa = phi ptr [ %q410.6.lcssa, %for.end513 ], [ %incdec.ptr524, %SetPixelPacket.exit2731 ], !dbg !2113
  %304 = load i64, ptr %outer_bevel, align 8, !tbaa !839
  call void @llvm.dbg.value(metadata ptr %q410.7.lcssa, metadata !808, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 0, metadata !807, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.8.lcssa, metadata !803, metadata !DIExpression()), !dbg !2113
  %cmp5313749 = icmp sgt i64 %304, 0, !dbg !2319
  br i1 %cmp5313749, label %for.body533.lr.ph, label %for.end538, !dbg !2322

for.body533.lr.ph:                                ; preds = %for.cond529.preheader
  %305 = load float, ptr %red173, align 8, !tbaa !992
  %cmp.i.i2733 = fcmp ole float %305, 0.000000e+00
  %cmp1.i.i2734 = fcmp oge float %305, 6.553500e+04
  %add.i.i2736 = fadd float %305, 5.000000e-01
  %conv.i.i2737 = fptoui float %add.i.i2736 to i16
  %306 = load float, ptr %green182, align 4, !tbaa !999
  %cmp.i23.i2742 = fcmp ole float %306, 0.000000e+00
  %cmp1.i24.i2744 = fcmp oge float %306, 6.553500e+04
  %add.i26.i2746 = fadd float %306, 5.000000e-01
  %conv.i27.i2747 = fptoui float %add.i26.i2746 to i16
  %307 = load float, ptr %blue191, align 8, !tbaa !1004
  %cmp.i31.i2752 = fcmp ole float %307, 0.000000e+00
  %cmp1.i32.i2754 = fcmp oge float %307, 6.553500e+04
  %add.i34.i2756 = fadd float %307, 5.000000e-01
  %conv.i35.i2757 = fptoui float %add.i34.i2756 to i16
  %308 = load float, ptr %opacity193, align 4, !tbaa !1010
  %cmp.i39.i2761 = fcmp ole float %308, 0.000000e+00
  %cmp1.i40.i2763 = fcmp oge float %308, 6.553500e+04
  %add.i42.i2765 = fadd float %308, 5.000000e-01
  %conv.i43.i2766 = fptoui float %add.i42.i2765 to i16
  %309 = load i32, ptr %colorspace.i2422, align 4, !tbaa !925
  %cmp.i2771 = icmp eq i32 %309, 12
  %310 = load float, ptr %index11.i2547, align 8
  %cmp.i47.i2780 = fcmp ole float %310, 0.000000e+00
  %cmp1.i48.i2782 = fcmp oge float %310, 6.553500e+04
  %add.i50.i2784 = fadd float %310, 5.000000e-01
  %conv.i51.i2785 = fptoui float %add.i50.i2784 to i16
  %brmerge4067 = or i1 %cmp.i.i2733, %cmp1.i.i2734
  %not.cmp.i.i2733 = xor i1 %cmp.i.i2733, true
  %.mux4068 = sext i1 %not.cmp.i.i2733 to i16
  %spec.select4264 = select i1 %brmerge4067, i16 %.mux4068, i16 %conv.i.i2737
  %brmerge4069 = or i1 %cmp.i23.i2742, %cmp1.i24.i2744
  %not.cmp.i23.i2742 = xor i1 %cmp.i23.i2742, true
  %.mux4070 = sext i1 %not.cmp.i23.i2742 to i16
  %spec.select4325 = select i1 %brmerge4069, i16 %.mux4070, i16 %conv.i27.i2747
  %brmerge4071 = or i1 %cmp.i31.i2752, %cmp1.i32.i2754
  %not.cmp.i31.i2752 = xor i1 %cmp.i31.i2752, true
  %.mux4072 = sext i1 %not.cmp.i31.i2752 to i16
  %spec.select4265 = select i1 %brmerge4071, i16 %.mux4072, i16 %conv.i35.i2757
  %brmerge4073 = or i1 %cmp.i39.i2761, %cmp1.i40.i2763
  %not.cmp.i39.i2761 = xor i1 %cmp.i39.i2761, true
  %.mux4074 = sext i1 %not.cmp.i39.i2761 to i16
  %spec.select4358 = select i1 %brmerge4073, i16 %.mux4074, i16 %conv.i43.i2766
  %brmerge4075 = or i1 %cmp.i47.i2780, %cmp1.i48.i2782
  %not.cmp.i47.i2780 = xor i1 %cmp.i47.i2780, true
  %.mux4076 = sext i1 %not.cmp.i47.i2780 to i16
  %spec.select4266 = select i1 %brmerge4075, i16 %.mux4076, i16 %conv.i51.i2785
  br label %for.body533, !dbg !2322

for.body523:                                      ; preds = %for.body523.lr.ph, %SetPixelPacket.exit2731
  %q410.73746 = phi ptr [ %q410.6.lcssa, %for.body523.lr.ph ], [ %incdec.ptr524, %SetPixelPacket.exit2731 ]
  %x409.53745 = phi i64 [ 0, %for.body523.lr.ph ], [ %inc527, %SetPixelPacket.exit2731 ]
  %frame_indexes408.83742 = phi ptr [ %frame_indexes408.7.lcssa, %for.body523.lr.ph ], [ %incdec.ptr525, %SetPixelPacket.exit2731 ]
  call void @llvm.dbg.value(metadata ptr %q410.73746, metadata !808, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %x409.53745, metadata !807, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.83742, metadata !803, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata ptr %matte, metadata !1676, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata ptr %q410.73746, metadata !1677, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.83742, metadata !1678, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata float %298, metadata !1685, metadata !DIExpression()), !dbg !2326
  %red1.i2682 = getelementptr inbounds %struct._PixelPacket, ptr %q410.73746, i64 0, i32 2, !dbg !2328
  store i16 %spec.select4261, ptr %red1.i2682, align 2, !dbg !2328, !tbaa !891
  call void @llvm.dbg.value(metadata float %299, metadata !1685, metadata !DIExpression()), !dbg !2329
  %green3.i2692 = getelementptr inbounds %struct._PixelPacket, ptr %q410.73746, i64 0, i32 1, !dbg !2331
  store i16 %spec.select4324, ptr %green3.i2692, align 2, !dbg !2331, !tbaa !894
  call void @llvm.dbg.value(metadata float %300, metadata !1685, metadata !DIExpression()), !dbg !2332
  store i16 %spec.select4262, ptr %q410.73746, align 2, !dbg !2334, !tbaa !897
  call void @llvm.dbg.value(metadata float %301, metadata !1685, metadata !DIExpression()), !dbg !2335
  %opacity7.i2711 = getelementptr inbounds %struct._PixelPacket, ptr %q410.73746, i64 0, i32 3, !dbg !2337
  store i16 %spec.select4357, ptr %opacity7.i2711, align 2, !dbg !2337, !tbaa !1006
  br i1 %cmp.i2713, label %if.then.i2720, label %lor.lhs.false.i2718, !dbg !2338

lor.lhs.false.i2718:                              ; preds = %for.body523
  %311 = load i32, ptr %call27, align 8, !dbg !2339, !tbaa !1707
  %cmp8.i2715 = icmp eq i32 %311, 2, !dbg !2340
  %cmp9.i2716 = icmp ne ptr %frame_indexes408.83742, null
  %or.cond.i2717 = and i1 %cmp9.i2716, %cmp8.i2715, !dbg !2341
  br i1 %or.cond.i2717, label %if.then10.i2723, label %SetPixelPacket.exit2731, !dbg !2341

if.then.i2720:                                    ; preds = %for.body523
  %cmp9.old.not.i2719 = icmp eq ptr %frame_indexes408.83742, null, !dbg !2342
  br i1 %cmp9.old.not.i2719, label %SetPixelPacket.exit2731, label %if.then10.i2723, !dbg !2343

if.then10.i2723:                                  ; preds = %if.then.i2720, %lor.lhs.false.i2718
  call void @llvm.dbg.value(metadata float %303, metadata !1685, metadata !DIExpression()), !dbg !2344
  store i16 %spec.select4263, ptr %frame_indexes408.83742, align 2, !dbg !2342, !tbaa !1734
  br label %SetPixelPacket.exit2731, !dbg !2342

SetPixelPacket.exit2731:                          ; preds = %lor.lhs.false.i2718, %if.then.i2720, %if.then10.i2723
  %incdec.ptr524 = getelementptr inbounds %struct._PixelPacket, ptr %q410.73746, i64 1, !dbg !2346
  call void @llvm.dbg.value(metadata ptr %incdec.ptr524, metadata !808, metadata !DIExpression()), !dbg !2113
  %incdec.ptr525 = getelementptr inbounds i16, ptr %frame_indexes408.83742, i64 1, !dbg !2347
  call void @llvm.dbg.value(metadata ptr %incdec.ptr525, metadata !803, metadata !DIExpression()), !dbg !2113
  %inc527 = add nuw nsw i64 %x409.53745, 1, !dbg !2348
  call void @llvm.dbg.value(metadata i64 %inc527, metadata !807, metadata !DIExpression()), !dbg !2113
  %exitcond4388.not = icmp eq i64 %inc527, %sub519, !dbg !2315
  br i1 %exitcond4388.not, label %for.cond529.preheader, label %for.body523, !dbg !2318, !llvm.loop !2349

for.body533:                                      ; preds = %for.body533.lr.ph, %SetPixelPacket.exit2789
  %q410.83754 = phi ptr [ %q410.7.lcssa, %for.body533.lr.ph ], [ %incdec.ptr534, %SetPixelPacket.exit2789 ]
  %x409.63753 = phi i64 [ 0, %for.body533.lr.ph ], [ %inc537, %SetPixelPacket.exit2789 ]
  %frame_indexes408.93750 = phi ptr [ %frame_indexes408.8.lcssa, %for.body533.lr.ph ], [ %incdec.ptr535, %SetPixelPacket.exit2789 ]
  call void @llvm.dbg.value(metadata ptr %q410.83754, metadata !808, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %x409.63753, metadata !807, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.93750, metadata !803, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata ptr %shadow, metadata !1676, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata ptr %q410.83754, metadata !1677, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata ptr %frame_indexes408.93750, metadata !1678, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata float %305, metadata !1685, metadata !DIExpression()), !dbg !2354
  %red1.i2740 = getelementptr inbounds %struct._PixelPacket, ptr %q410.83754, i64 0, i32 2, !dbg !2356
  store i16 %spec.select4264, ptr %red1.i2740, align 2, !dbg !2356, !tbaa !891
  call void @llvm.dbg.value(metadata float %306, metadata !1685, metadata !DIExpression()), !dbg !2357
  %green3.i2750 = getelementptr inbounds %struct._PixelPacket, ptr %q410.83754, i64 0, i32 1, !dbg !2359
  store i16 %spec.select4325, ptr %green3.i2750, align 2, !dbg !2359, !tbaa !894
  call void @llvm.dbg.value(metadata float %307, metadata !1685, metadata !DIExpression()), !dbg !2360
  store i16 %spec.select4265, ptr %q410.83754, align 2, !dbg !2362, !tbaa !897
  call void @llvm.dbg.value(metadata float %308, metadata !1685, metadata !DIExpression()), !dbg !2363
  %opacity7.i2769 = getelementptr inbounds %struct._PixelPacket, ptr %q410.83754, i64 0, i32 3, !dbg !2365
  store i16 %spec.select4358, ptr %opacity7.i2769, align 2, !dbg !2365, !tbaa !1006
  br i1 %cmp.i2771, label %if.then.i2778, label %lor.lhs.false.i2776, !dbg !2366

lor.lhs.false.i2776:                              ; preds = %for.body533
  %312 = load i32, ptr %call27, align 8, !dbg !2367, !tbaa !1707
  %cmp8.i2773 = icmp eq i32 %312, 2, !dbg !2368
  %cmp9.i2774 = icmp ne ptr %frame_indexes408.93750, null
  %or.cond.i2775 = and i1 %cmp9.i2774, %cmp8.i2773, !dbg !2369
  br i1 %or.cond.i2775, label %if.then10.i2781, label %SetPixelPacket.exit2789, !dbg !2369

if.then.i2778:                                    ; preds = %for.body533
  %cmp9.old.not.i2777 = icmp eq ptr %frame_indexes408.93750, null, !dbg !2370
  br i1 %cmp9.old.not.i2777, label %SetPixelPacket.exit2789, label %if.then10.i2781, !dbg !2371

if.then10.i2781:                                  ; preds = %if.then.i2778, %lor.lhs.false.i2776
  call void @llvm.dbg.value(metadata float %310, metadata !1685, metadata !DIExpression()), !dbg !2372
  store i16 %spec.select4266, ptr %frame_indexes408.93750, align 2, !dbg !2370, !tbaa !1734
  br label %SetPixelPacket.exit2789, !dbg !2370

SetPixelPacket.exit2789:                          ; preds = %lor.lhs.false.i2776, %if.then.i2778, %if.then10.i2781
  %incdec.ptr534 = getelementptr inbounds %struct._PixelPacket, ptr %q410.83754, i64 1, !dbg !2374
  call void @llvm.dbg.value(metadata ptr %incdec.ptr534, metadata !808, metadata !DIExpression()), !dbg !2113
  %incdec.ptr535 = getelementptr inbounds i16, ptr %frame_indexes408.93750, i64 1, !dbg !2375
  call void @llvm.dbg.value(metadata ptr %incdec.ptr535, metadata !803, metadata !DIExpression()), !dbg !2113
  %inc537 = add nuw nsw i64 %x409.63753, 1, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %inc537, metadata !807, metadata !DIExpression()), !dbg !2113
  %exitcond4389.not = icmp eq i64 %inc537, %304, !dbg !2319
  br i1 %exitcond4389.not, label %for.end538, label %for.body533, !dbg !2322, !llvm.loop !2377

for.end538:                                       ; preds = %SetPixelPacket.exit2789, %for.cond529.preheader
  %call539 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call229, ptr noundef %exception) #8, !dbg !2379
  %cmp540 = icmp ne i32 %call539, 0, !dbg !2381
  %spec.select = zext i1 %cmp540 to i32, !dbg !2382
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !769, metadata !DIExpression()), !dbg !821
  %313 = load ptr, ptr %progress_monitor, align 8, !dbg !2383, !tbaa !2384
  %cmp544.not = icmp eq ptr %313, null, !dbg !2385
  br i1 %cmp544.not, label %cleanup555, label %SetImageProgress.exit, !dbg !2386

SetImageProgress.exit:                            ; preds = %for.end538
  %inc547 = add nsw i64 %progress.03756, 1, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %inc547, metadata !770, metadata !DIExpression()), !dbg !821
  %314 = load i64, ptr %rows, align 8, !dbg !2388, !tbaa !711
  call void @llvm.dbg.value(metadata ptr %image, metadata !2389, metadata !DIExpression()) #7, !dbg !2399
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !2395, metadata !DIExpression()) #7, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %progress.03756, metadata !2396, metadata !DIExpression()) #7, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %314, metadata !2397, metadata !DIExpression()) #7, !dbg !2399
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !2401
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2398, metadata !DIExpression()) #7, !dbg !2402
  %call.i2791 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename.i) #7, !dbg !2403
  %315 = load ptr, ptr %progress_monitor, align 8, !dbg !2404, !tbaa !2384
  %316 = load ptr, ptr %client_data.i, align 8, !dbg !2405, !tbaa !2406
  %call4.i = call i32 %315(ptr noundef nonnull %message.i, i64 noundef %progress.03756, i64 noundef %314, ptr noundef %316) #7, !dbg !2407
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !2408
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !813, metadata !DIExpression()), !dbg !2409
  %cmp550 = icmp eq i32 %call4.i, 0, !dbg !2410
  %spec.select1246 = select i1 %cmp550, i32 0, i32 %spec.select, !dbg !2412
  call void @llvm.dbg.value(metadata i32 %spec.select1246, metadata !769, metadata !DIExpression()), !dbg !821
  br label %cleanup555, !dbg !2413

cleanup555:                                       ; preds = %if.else476, %for.end538, %SetImageProgress.exit, %if.end414, %for.body407
  %progress.2 = phi i64 [ %progress.03756, %for.body407 ], [ %progress.03756, %if.end414 ], [ %inc547, %SetImageProgress.exit ], [ %progress.03756, %for.end538 ], [ %progress.03756, %if.else476 ], !dbg !821
  %status.6 = phi i32 [ 0, %for.body407 ], [ 0, %if.end414 ], [ %spec.select1246, %SetImageProgress.exit ], [ %spec.select, %for.end538 ], [ 0, %if.else476 ], !dbg !821
  call void @llvm.dbg.value(metadata i32 %status.6, metadata !769, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !770, metadata !DIExpression()), !dbg !821
  %inc561 = add nuw nsw i64 %y.33760, 1, !dbg !2414
  call void @llvm.dbg.value(metadata i64 %inc561, metadata !795, metadata !DIExpression()), !dbg !821
  %317 = load i64, ptr %rows, align 8, !dbg !2103, !tbaa !711
  %cmp405 = icmp slt i64 %inc561, %317, !dbg !2104
  br i1 %cmp405, label %for.body407, label %for.end562, !dbg !2105, !llvm.loop !2415

for.end562:                                       ; preds = %cleanup555, %if.end402
  %status.0.lcssa = phi i32 [ 1, %if.end402 ], [ %status.6, %cleanup555 ], !dbg !2417
  %.lcssa3583 = phi i64 [ %241, %if.end402 ], [ %317, %cleanup555 ], !dbg !2103
  %318 = load i64, ptr %inner_bevel, align 8, !dbg !2418, !tbaa !843
  %319 = load i64, ptr %height13, align 8, !dbg !2419, !tbaa !718
  %320 = load i64, ptr %y14, align 8, !dbg !2420, !tbaa !724
  %321 = load i64, ptr %outer_bevel, align 8, !dbg !2421, !tbaa !839
  %322 = add i64 %.lcssa3583, %add, !dbg !2422
  %323 = add i64 %318, %319, !dbg !2423
  %324 = add i64 %322, %320, !dbg !2423
  %sub570 = sub i64 %323, %324, !dbg !2423
  %add572 = add i64 %sub570, %321, !dbg !2424
  call void @llvm.dbg.value(metadata i64 %add572, metadata !793, metadata !DIExpression()), !dbg !821
  %cmp573.not = icmp eq i64 %add572, 0, !dbg !2425
  br i1 %cmp573.not, label %if.end756, label %if.then575, !dbg !2426

if.then575:                                       ; preds = %for.end562
  %rows579 = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 8, !dbg !2427
  %325 = load i64, ptr %rows579, align 8, !dbg !2427, !tbaa !711
  %sub580 = sub i64 %325, %add572, !dbg !2428
  %columns581 = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 7, !dbg !2429
  %326 = load i64, ptr %columns581, align 8, !dbg !2429, !tbaa !702
  %call582 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call229, i64 noundef 0, i64 noundef %sub580, i64 noundef %326, i64 noundef %add572, ptr noundef %exception) #8, !dbg !2430
  call void @llvm.dbg.value(metadata ptr %call582, metadata !820, metadata !DIExpression()), !dbg !2431
  %cmp583.not = icmp eq ptr %call582, null, !dbg !2432
  br i1 %cmp583.not, label %if.end756, label %if.then585, !dbg !2434

if.then585:                                       ; preds = %if.then575
  %call586 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call229) #7, !dbg !2435
  call void @llvm.dbg.value(metadata ptr %call586, metadata !816, metadata !DIExpression()), !dbg !2431
  %327 = load i64, ptr %inner_bevel, align 8, !dbg !2437, !tbaa !843
  call void @llvm.dbg.value(metadata ptr %call582, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %327, metadata !795, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !821
  %cmp5903818 = icmp sgt i64 %327, 0, !dbg !2439
  br i1 %cmp5903818, label %for.cond593.preheader.lr.ph, label %for.end672, !dbg !2441

for.cond593.preheader.lr.ph:                      ; preds = %if.then585
  call void @llvm.dbg.value(metadata i64 %327, metadata !795, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !821
  %328 = load i64, ptr %outer_bevel, align 8, !tbaa !839
  %cmp5953763 = icmp sgt i64 %328, 0
  %329 = load float, ptr %red134, align 8
  %cmp.i.i2795 = fcmp ole float %329, 0.000000e+00
  %cmp1.i.i2796 = fcmp oge float %329, 6.553500e+04
  %add.i.i2798 = fadd float %329, 5.000000e-01
  %conv.i.i2799 = fptoui float %add.i.i2798 to i16
  %330 = load float, ptr %green148, align 4
  %cmp.i23.i2804 = fcmp ole float %330, 0.000000e+00
  %cmp1.i24.i2806 = fcmp oge float %330, 6.553500e+04
  %add.i26.i2808 = fadd float %330, 5.000000e-01
  %conv.i27.i2809 = fptoui float %add.i26.i2808 to i16
  %331 = load float, ptr %blue162, align 8
  %cmp.i31.i2814 = fcmp ole float %331, 0.000000e+00
  %cmp1.i32.i2816 = fcmp oge float %331, 6.553500e+04
  %add.i34.i2818 = fadd float %331, 5.000000e-01
  %conv.i35.i2819 = fptoui float %add.i34.i2818 to i16
  %332 = load float, ptr %opacity164, align 4
  %cmp.i39.i2823 = fcmp ole float %332, 0.000000e+00
  %cmp1.i40.i2825 = fcmp oge float %332, 6.553500e+04
  %add.i42.i2827 = fadd float %332, 5.000000e-01
  %conv.i43.i2828 = fptoui float %add.i42.i2827 to i16
  %colorspace.i2832 = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 1
  %index11.i2841 = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 9
  %333 = load i64, ptr %x11, align 8, !tbaa !721
  %sub605 = sub i64 %333, %add
  %cmp6063772 = icmp sgt i64 %sub605, 0
  %334 = load float, ptr %red1.i1254, align 8
  %cmp.i.i2853 = fcmp ole float %334, 0.000000e+00
  %cmp1.i.i2854 = fcmp oge float %334, 6.553500e+04
  %add.i.i2856 = fadd float %334, 5.000000e-01
  %conv.i.i2857 = fptoui float %add.i.i2856 to i16
  %335 = load float, ptr %green3.i1257, align 4
  %cmp.i23.i2862 = fcmp ole float %335, 0.000000e+00
  %cmp1.i24.i2864 = fcmp oge float %335, 6.553500e+04
  %add.i26.i2866 = fadd float %335, 5.000000e-01
  %conv.i27.i2867 = fptoui float %add.i26.i2866 to i16
  %336 = load float, ptr %blue5.i1259, align 8
  %cmp.i31.i2872 = fcmp ole float %336, 0.000000e+00
  %cmp1.i32.i2874 = fcmp oge float %336, 6.553500e+04
  %add.i34.i2876 = fadd float %336, 5.000000e-01
  %conv.i35.i2877 = fptoui float %add.i34.i2876 to i16
  %337 = load float, ptr %opacity7.i1262, align 4
  %cmp.i39.i2881 = fcmp ole float %337, 0.000000e+00
  %cmp1.i40.i2883 = fcmp oge float %337, 6.553500e+04
  %add.i42.i2885 = fadd float %337, 5.000000e-01
  %conv.i43.i2886 = fptoui float %add.i42.i2885 to i16
  %index11.i2899 = getelementptr inbounds %struct._MagickPixelPacket, ptr %matte, i64 0, i32 9
  %338 = load float, ptr %red173, align 8
  %cmp.i.i2911 = fcmp ole float %338, 0.000000e+00
  %cmp1.i.i2912 = fcmp oge float %338, 6.553500e+04
  %add.i.i2914 = fadd float %338, 5.000000e-01
  %conv.i.i2915 = fptoui float %add.i.i2914 to i16
  %339 = load float, ptr %green182, align 4
  %cmp.i23.i2920 = fcmp ole float %339, 0.000000e+00
  %cmp1.i24.i2922 = fcmp oge float %339, 6.553500e+04
  %add.i26.i2924 = fadd float %339, 5.000000e-01
  %conv.i27.i2925 = fptoui float %add.i26.i2924 to i16
  %340 = load float, ptr %blue191, align 8
  %cmp.i31.i2930 = fcmp ole float %340, 0.000000e+00
  %cmp1.i32.i2932 = fcmp oge float %340, 6.553500e+04
  %add.i34.i2934 = fadd float %340, 5.000000e-01
  %conv.i35.i2935 = fptoui float %add.i34.i2934 to i16
  %341 = load float, ptr %opacity193, align 4
  %cmp.i39.i2939 = fcmp ole float %341, 0.000000e+00
  %cmp1.i40.i2941 = fcmp oge float %341, 6.553500e+04
  %add.i42.i2943 = fadd float %341, 5.000000e-01
  %conv.i43.i2944 = fptoui float %add.i42.i2943 to i16
  %index11.i2957 = getelementptr inbounds %struct._MagickPixelPacket, ptr %shadow, i64 0, i32 9
  %342 = load i64, ptr %columns, align 8, !tbaa !702
  %mul626 = shl nuw nsw i64 %327, 1
  %add627 = add i64 %342, %mul626
  %index11.i3073 = getelementptr inbounds %struct._MagickPixelPacket, ptr %accentuate, i64 0, i32 9
  %343 = load i64, ptr %frame_info, align 8, !tbaa !708
  %344 = add i64 %333, %add
  %345 = add i64 %344, %342
  %sub651 = sub i64 %343, %345
  %cmp6533801 = icmp sgt i64 %sub651, 0
  %brmerge4077 = or i1 %cmp.i.i2795, %cmp1.i.i2796
  %not.cmp.i.i2795 = xor i1 %cmp.i.i2795, true
  %.mux4078 = sext i1 %not.cmp.i.i2795 to i16
  %spec.select4267 = select i1 %brmerge4077, i16 %.mux4078, i16 %conv.i.i2799
  %brmerge4079 = or i1 %cmp.i23.i2804, %cmp1.i24.i2806
  %not.cmp.i23.i2804 = xor i1 %cmp.i23.i2804, true
  %.mux4080 = sext i1 %not.cmp.i23.i2804 to i16
  %spec.select4326 = select i1 %brmerge4079, i16 %.mux4080, i16 %conv.i27.i2809
  %brmerge4081 = or i1 %cmp.i31.i2814, %cmp1.i32.i2816
  %not.cmp.i31.i2814 = xor i1 %cmp.i31.i2814, true
  %.mux4082 = sext i1 %not.cmp.i31.i2814 to i16
  %spec.select4268 = select i1 %brmerge4081, i16 %.mux4082, i16 %conv.i35.i2819
  %brmerge4083 = or i1 %cmp.i39.i2823, %cmp1.i40.i2825
  %not.cmp.i39.i2823 = xor i1 %cmp.i39.i2823, true
  %.mux4084 = sext i1 %not.cmp.i39.i2823 to i16
  %spec.select4359 = select i1 %brmerge4083, i16 %.mux4084, i16 %conv.i43.i2828
  %brmerge4087 = or i1 %cmp.i.i2853, %cmp1.i.i2854
  %not.cmp.i.i2853 = xor i1 %cmp.i.i2853, true
  %.mux4088 = sext i1 %not.cmp.i.i2853 to i16
  %spec.select4270 = select i1 %brmerge4087, i16 %.mux4088, i16 %conv.i.i2857
  %brmerge4089 = or i1 %cmp.i23.i2862, %cmp1.i24.i2864
  %not.cmp.i23.i2862 = xor i1 %cmp.i23.i2862, true
  %.mux4090 = sext i1 %not.cmp.i23.i2862 to i16
  %spec.select4327 = select i1 %brmerge4089, i16 %.mux4090, i16 %conv.i27.i2867
  %brmerge4091 = or i1 %cmp.i31.i2872, %cmp1.i32.i2874
  %not.cmp.i31.i2872 = xor i1 %cmp.i31.i2872, true
  %.mux4092 = sext i1 %not.cmp.i31.i2872 to i16
  %spec.select4271 = select i1 %brmerge4091, i16 %.mux4092, i16 %conv.i35.i2877
  %brmerge4093 = or i1 %cmp.i39.i2881, %cmp1.i40.i2883
  %not.cmp.i39.i2881 = xor i1 %cmp.i39.i2881, true
  %.mux4094 = sext i1 %not.cmp.i39.i2881 to i16
  %spec.select4360 = select i1 %brmerge4093, i16 %.mux4094, i16 %conv.i43.i2886
  %brmerge4097 = or i1 %cmp.i.i2911, %cmp1.i.i2912
  %not.cmp.i.i2911 = xor i1 %cmp.i.i2911, true
  %.mux4098 = sext i1 %not.cmp.i.i2911 to i16
  %spec.select4273 = select i1 %brmerge4097, i16 %.mux4098, i16 %conv.i.i2915
  %brmerge4099 = or i1 %cmp.i23.i2920, %cmp1.i24.i2922
  %not.cmp.i23.i2920 = xor i1 %cmp.i23.i2920, true
  %.mux4100 = sext i1 %not.cmp.i23.i2920 to i16
  %spec.select4328 = select i1 %brmerge4099, i16 %.mux4100, i16 %conv.i27.i2925
  %brmerge4101 = or i1 %cmp.i31.i2930, %cmp1.i32.i2932
  %not.cmp.i31.i2930 = xor i1 %cmp.i31.i2930, true
  %.mux4102 = sext i1 %not.cmp.i31.i2930 to i16
  %spec.select4274 = select i1 %brmerge4101, i16 %.mux4102, i16 %conv.i35.i2935
  %brmerge4103 = or i1 %cmp.i39.i2939, %cmp1.i40.i2941
  %not.cmp.i39.i2939 = xor i1 %cmp.i39.i2939, true
  %.mux4104 = sext i1 %not.cmp.i39.i2939 to i16
  %spec.select4361 = select i1 %brmerge4103, i16 %.mux4104, i16 %conv.i43.i2944
  %brmerge4127 = or i1 %cmp.i.i2853, %cmp1.i.i2854
  %not.cmp.i.i3085 = xor i1 %cmp.i.i2853, true
  %.mux4128 = sext i1 %not.cmp.i.i3085 to i16
  %spec.select4282 = select i1 %brmerge4127, i16 %.mux4128, i16 %conv.i.i2857
  %brmerge4129 = or i1 %cmp.i23.i2862, %cmp1.i24.i2864
  %not.cmp.i23.i3094 = xor i1 %cmp.i23.i2862, true
  %.mux4130 = sext i1 %not.cmp.i23.i3094 to i16
  %spec.select4331 = select i1 %brmerge4129, i16 %.mux4130, i16 %conv.i27.i2867
  %brmerge4131 = or i1 %cmp.i31.i2872, %cmp1.i32.i2874
  %not.cmp.i31.i3104 = xor i1 %cmp.i31.i2872, true
  %.mux4132 = sext i1 %not.cmp.i31.i3104 to i16
  %spec.select4283 = select i1 %brmerge4131, i16 %.mux4132, i16 %conv.i35.i2877
  %brmerge4133 = or i1 %cmp.i39.i2881, %cmp1.i40.i2883
  %not.cmp.i39.i3113 = xor i1 %cmp.i39.i2881, true
  %.mux4134 = sext i1 %not.cmp.i39.i3113 to i16
  %spec.select4364 = select i1 %brmerge4133, i16 %.mux4134, i16 %conv.i43.i2886
  %brmerge4137 = or i1 %cmp.i.i2911, %cmp1.i.i2912
  %not.cmp.i.i3143 = xor i1 %cmp.i.i2911, true
  %.mux4138 = sext i1 %not.cmp.i.i3143 to i16
  %spec.select4285 = select i1 %brmerge4137, i16 %.mux4138, i16 %conv.i.i2915
  %brmerge4139 = or i1 %cmp.i23.i2920, %cmp1.i24.i2922
  %not.cmp.i23.i3152 = xor i1 %cmp.i23.i2920, true
  %.mux4140 = sext i1 %not.cmp.i23.i3152 to i16
  %spec.select4332 = select i1 %brmerge4139, i16 %.mux4140, i16 %conv.i27.i2925
  %brmerge4141 = or i1 %cmp.i31.i2930, %cmp1.i32.i2932
  %not.cmp.i31.i3162 = xor i1 %cmp.i31.i2930, true
  %.mux4142 = sext i1 %not.cmp.i31.i3162 to i16
  %spec.select4286 = select i1 %brmerge4141, i16 %.mux4142, i16 %conv.i35.i2935
  %brmerge4143 = or i1 %cmp.i39.i2939, %cmp1.i40.i2941
  %not.cmp.i39.i3171 = xor i1 %cmp.i39.i2939, true
  %.mux4144 = sext i1 %not.cmp.i39.i3171 to i16
  %spec.select4365 = select i1 %brmerge4143, i16 %.mux4144, i16 %conv.i43.i2944
  br label %for.cond593.preheader, !dbg !2441

for.cond589.loopexit:                             ; preds = %SetPixelPacket.exit3199, %for.cond661.preheader
  %frame_indexes576.6.lcssa = phi ptr [ %frame_indexes576.5.lcssa, %for.cond661.preheader ], [ %incdec.ptr667, %SetPixelPacket.exit3199 ], !dbg !2442
  %q578.6.lcssa = phi ptr [ %q578.5.lcssa, %for.cond661.preheader ], [ %incdec.ptr666, %SetPixelPacket.exit3199 ], !dbg !2431
  call void @llvm.dbg.value(metadata ptr %q578.6.lcssa, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.6.lcssa, metadata !816, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %y.43821, metadata !795, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !821
  br i1 %cmp6153781, label %for.cond593.preheader, label %for.end672, !dbg !2441, !llvm.loop !2443

for.cond593.preheader:                            ; preds = %for.cond593.preheader.lr.ph, %for.cond589.loopexit
  %indvars.iv4392.in = phi i64 [ %327, %for.cond593.preheader.lr.ph ], [ %indvars.iv4392, %for.cond589.loopexit ]
  %y.43821.in = phi i64 [ %327, %for.cond593.preheader.lr.ph ], [ %y.43821, %for.cond589.loopexit ]
  %q578.03820 = phi ptr [ %call582, %for.cond593.preheader.lr.ph ], [ %q578.6.lcssa, %for.cond589.loopexit ]
  %frame_indexes576.03819 = phi ptr [ %call586, %for.cond593.preheader.lr.ph ], [ %frame_indexes576.6.lcssa, %for.cond589.loopexit ]
  %indvars.iv4392 = add i64 %indvars.iv4392.in, -1, !dbg !2441
  %y.43821 = add nsw i64 %y.43821.in, -1, !dbg !2445
  call void @llvm.dbg.value(metadata ptr %q578.03820, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 0, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.03819, metadata !816, metadata !DIExpression()), !dbg !2431
  br i1 %cmp5953763, label %for.body597.lr.ph, label %for.cond603.preheader, !dbg !2446

for.body597.lr.ph:                                ; preds = %for.cond593.preheader
  %346 = load i32, ptr %colorspace.i2832, align 4, !tbaa !925
  %cmp.i2833 = icmp eq i32 %346, 12
  %347 = load float, ptr %index11.i2841, align 8
  %cmp.i47.i2842 = fcmp ole float %347, 0.000000e+00
  %cmp1.i48.i2844 = fcmp oge float %347, 6.553500e+04
  %add.i50.i2846 = fadd float %347, 5.000000e-01
  %conv.i51.i2847 = fptoui float %add.i50.i2846 to i16
  %brmerge4085 = or i1 %cmp.i47.i2842, %cmp1.i48.i2844
  %not.cmp.i47.i2842 = xor i1 %cmp.i47.i2842, true
  %.mux4086 = sext i1 %not.cmp.i47.i2842 to i16
  %spec.select4269 = select i1 %brmerge4085, i16 %.mux4086, i16 %conv.i51.i2847
  br label %for.body597, !dbg !2446

for.cond603.preheader:                            ; preds = %SetPixelPacket.exit2851, %for.cond593.preheader
  %frame_indexes576.1.lcssa = phi ptr [ %frame_indexes576.03819, %for.cond593.preheader ], [ %incdec.ptr599, %SetPixelPacket.exit2851 ], !dbg !2442
  %q578.1.lcssa = phi ptr [ %q578.03820, %for.cond593.preheader ], [ %incdec.ptr598, %SetPixelPacket.exit2851 ], !dbg !2431
  call void @llvm.dbg.value(metadata ptr %q578.1.lcssa, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 0, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.1.lcssa, metadata !816, metadata !DIExpression()), !dbg !2431
  br i1 %cmp6063772, label %for.body608.lr.ph, label %for.cond614.preheader, !dbg !2449

for.body608.lr.ph:                                ; preds = %for.cond603.preheader
  %348 = load i32, ptr %colorspace.i2832, align 4, !tbaa !925
  %cmp.i2891 = icmp eq i32 %348, 12
  %349 = load float, ptr %index11.i2899, align 8
  %cmp.i47.i2900 = fcmp ole float %349, 0.000000e+00
  %cmp1.i48.i2902 = fcmp oge float %349, 6.553500e+04
  %add.i50.i2904 = fadd float %349, 5.000000e-01
  %conv.i51.i2905 = fptoui float %add.i50.i2904 to i16
  %brmerge4095 = or i1 %cmp.i47.i2900, %cmp1.i48.i2902
  %not.cmp.i47.i2900 = xor i1 %cmp.i47.i2900, true
  %.mux4096 = sext i1 %not.cmp.i47.i2900 to i16
  %spec.select4272 = select i1 %brmerge4095, i16 %.mux4096, i16 %conv.i51.i2905
  br label %for.body608, !dbg !2449

for.body597:                                      ; preds = %for.body597.lr.ph, %SetPixelPacket.exit2851
  %q578.13768 = phi ptr [ %q578.03820, %for.body597.lr.ph ], [ %incdec.ptr598, %SetPixelPacket.exit2851 ]
  %x577.03767 = phi i64 [ 0, %for.body597.lr.ph ], [ %inc601, %SetPixelPacket.exit2851 ]
  %frame_indexes576.13764 = phi ptr [ %frame_indexes576.03819, %for.body597.lr.ph ], [ %incdec.ptr599, %SetPixelPacket.exit2851 ]
  call void @llvm.dbg.value(metadata ptr %q578.13768, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %x577.03767, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.13764, metadata !816, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata ptr %highlight, metadata !1676, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata ptr %q578.13768, metadata !1677, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.13764, metadata !1678, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata float %329, metadata !1685, metadata !DIExpression()), !dbg !2455
  %red1.i2802 = getelementptr inbounds %struct._PixelPacket, ptr %q578.13768, i64 0, i32 2, !dbg !2457
  store i16 %spec.select4267, ptr %red1.i2802, align 2, !dbg !2457, !tbaa !891
  call void @llvm.dbg.value(metadata float %330, metadata !1685, metadata !DIExpression()), !dbg !2458
  %green3.i2812 = getelementptr inbounds %struct._PixelPacket, ptr %q578.13768, i64 0, i32 1, !dbg !2460
  store i16 %spec.select4326, ptr %green3.i2812, align 2, !dbg !2460, !tbaa !894
  call void @llvm.dbg.value(metadata float %331, metadata !1685, metadata !DIExpression()), !dbg !2461
  store i16 %spec.select4268, ptr %q578.13768, align 2, !dbg !2463, !tbaa !897
  call void @llvm.dbg.value(metadata float %332, metadata !1685, metadata !DIExpression()), !dbg !2464
  %opacity7.i2831 = getelementptr inbounds %struct._PixelPacket, ptr %q578.13768, i64 0, i32 3, !dbg !2466
  store i16 %spec.select4359, ptr %opacity7.i2831, align 2, !dbg !2466, !tbaa !1006
  br i1 %cmp.i2833, label %if.then.i2840, label %lor.lhs.false.i2838, !dbg !2467

lor.lhs.false.i2838:                              ; preds = %for.body597
  %350 = load i32, ptr %call27, align 8, !dbg !2468, !tbaa !1707
  %cmp8.i2835 = icmp eq i32 %350, 2, !dbg !2469
  %cmp9.i2836 = icmp ne ptr %frame_indexes576.13764, null
  %or.cond.i2837 = and i1 %cmp9.i2836, %cmp8.i2835, !dbg !2470
  br i1 %or.cond.i2837, label %if.then10.i2843, label %SetPixelPacket.exit2851, !dbg !2470

if.then.i2840:                                    ; preds = %for.body597
  %cmp9.old.not.i2839 = icmp eq ptr %frame_indexes576.13764, null, !dbg !2471
  br i1 %cmp9.old.not.i2839, label %SetPixelPacket.exit2851, label %if.then10.i2843, !dbg !2472

if.then10.i2843:                                  ; preds = %if.then.i2840, %lor.lhs.false.i2838
  call void @llvm.dbg.value(metadata float %347, metadata !1685, metadata !DIExpression()), !dbg !2473
  store i16 %spec.select4269, ptr %frame_indexes576.13764, align 2, !dbg !2471, !tbaa !1734
  br label %SetPixelPacket.exit2851, !dbg !2471

SetPixelPacket.exit2851:                          ; preds = %lor.lhs.false.i2838, %if.then.i2840, %if.then10.i2843
  %incdec.ptr598 = getelementptr inbounds %struct._PixelPacket, ptr %q578.13768, i64 1, !dbg !2475
  call void @llvm.dbg.value(metadata ptr %incdec.ptr598, metadata !820, metadata !DIExpression()), !dbg !2431
  %incdec.ptr599 = getelementptr inbounds i16, ptr %frame_indexes576.13764, i64 1, !dbg !2476
  call void @llvm.dbg.value(metadata ptr %incdec.ptr599, metadata !816, metadata !DIExpression()), !dbg !2431
  %inc601 = add nuw nsw i64 %x577.03767, 1, !dbg !2477
  call void @llvm.dbg.value(metadata i64 %inc601, metadata !819, metadata !DIExpression()), !dbg !2431
  %exitcond4390.not = icmp eq i64 %inc601, %328, !dbg !2478
  br i1 %exitcond4390.not, label %for.cond603.preheader, label %for.body597, !dbg !2446, !llvm.loop !2479

for.cond614.preheader:                            ; preds = %SetPixelPacket.exit2909, %for.cond603.preheader
  %frame_indexes576.2.lcssa = phi ptr [ %frame_indexes576.1.lcssa, %for.cond603.preheader ], [ %incdec.ptr610, %SetPixelPacket.exit2909 ], !dbg !2442
  %q578.2.lcssa = phi ptr [ %q578.1.lcssa, %for.cond603.preheader ], [ %incdec.ptr609, %SetPixelPacket.exit2909 ], !dbg !2431
  call void @llvm.dbg.value(metadata ptr %q578.2.lcssa, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 0, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.2.lcssa, metadata !816, metadata !DIExpression()), !dbg !2431
  %cmp6153781 = icmp sgt i64 %y.43821.in, 1, !dbg !2481
  br i1 %cmp6153781, label %for.body617.lr.ph, label %for.cond623.preheader, !dbg !2484

for.body617.lr.ph:                                ; preds = %for.cond614.preheader
  %351 = load i32, ptr %colorspace.i2832, align 4, !tbaa !925
  %cmp.i2949 = icmp eq i32 %351, 12
  %352 = load float, ptr %index11.i2957, align 8
  %cmp.i47.i2958 = fcmp ole float %352, 0.000000e+00
  %cmp1.i48.i2960 = fcmp oge float %352, 6.553500e+04
  %add.i50.i2962 = fadd float %352, 5.000000e-01
  %conv.i51.i2963 = fptoui float %add.i50.i2962 to i16
  %brmerge4105 = or i1 %cmp.i47.i2958, %cmp1.i48.i2960
  %not.cmp.i47.i2958 = xor i1 %cmp.i47.i2958, true
  %.mux4106 = sext i1 %not.cmp.i47.i2958 to i16
  %spec.select4275 = select i1 %brmerge4105, i16 %.mux4106, i16 %conv.i51.i2963
  br label %for.body617, !dbg !2484

for.body608:                                      ; preds = %for.body608.lr.ph, %SetPixelPacket.exit2909
  %q578.23777 = phi ptr [ %q578.1.lcssa, %for.body608.lr.ph ], [ %incdec.ptr609, %SetPixelPacket.exit2909 ]
  %x577.13776 = phi i64 [ 0, %for.body608.lr.ph ], [ %inc612, %SetPixelPacket.exit2909 ]
  %frame_indexes576.23773 = phi ptr [ %frame_indexes576.1.lcssa, %for.body608.lr.ph ], [ %incdec.ptr610, %SetPixelPacket.exit2909 ]
  call void @llvm.dbg.value(metadata ptr %q578.23777, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %x577.13776, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.23773, metadata !816, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata ptr %matte, metadata !1676, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata ptr %q578.23777, metadata !1677, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.23773, metadata !1678, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata float %334, metadata !1685, metadata !DIExpression()), !dbg !2489
  %red1.i2860 = getelementptr inbounds %struct._PixelPacket, ptr %q578.23777, i64 0, i32 2, !dbg !2491
  store i16 %spec.select4270, ptr %red1.i2860, align 2, !dbg !2491, !tbaa !891
  call void @llvm.dbg.value(metadata float %335, metadata !1685, metadata !DIExpression()), !dbg !2492
  %green3.i2870 = getelementptr inbounds %struct._PixelPacket, ptr %q578.23777, i64 0, i32 1, !dbg !2494
  store i16 %spec.select4327, ptr %green3.i2870, align 2, !dbg !2494, !tbaa !894
  call void @llvm.dbg.value(metadata float %336, metadata !1685, metadata !DIExpression()), !dbg !2495
  store i16 %spec.select4271, ptr %q578.23777, align 2, !dbg !2497, !tbaa !897
  call void @llvm.dbg.value(metadata float %337, metadata !1685, metadata !DIExpression()), !dbg !2498
  %opacity7.i2889 = getelementptr inbounds %struct._PixelPacket, ptr %q578.23777, i64 0, i32 3, !dbg !2500
  store i16 %spec.select4360, ptr %opacity7.i2889, align 2, !dbg !2500, !tbaa !1006
  br i1 %cmp.i2891, label %if.then.i2898, label %lor.lhs.false.i2896, !dbg !2501

lor.lhs.false.i2896:                              ; preds = %for.body608
  %353 = load i32, ptr %call27, align 8, !dbg !2502, !tbaa !1707
  %cmp8.i2893 = icmp eq i32 %353, 2, !dbg !2503
  %cmp9.i2894 = icmp ne ptr %frame_indexes576.23773, null
  %or.cond.i2895 = and i1 %cmp9.i2894, %cmp8.i2893, !dbg !2504
  br i1 %or.cond.i2895, label %if.then10.i2901, label %SetPixelPacket.exit2909, !dbg !2504

if.then.i2898:                                    ; preds = %for.body608
  %cmp9.old.not.i2897 = icmp eq ptr %frame_indexes576.23773, null, !dbg !2505
  br i1 %cmp9.old.not.i2897, label %SetPixelPacket.exit2909, label %if.then10.i2901, !dbg !2506

if.then10.i2901:                                  ; preds = %if.then.i2898, %lor.lhs.false.i2896
  call void @llvm.dbg.value(metadata float %349, metadata !1685, metadata !DIExpression()), !dbg !2507
  store i16 %spec.select4272, ptr %frame_indexes576.23773, align 2, !dbg !2505, !tbaa !1734
  br label %SetPixelPacket.exit2909, !dbg !2505

SetPixelPacket.exit2909:                          ; preds = %lor.lhs.false.i2896, %if.then.i2898, %if.then10.i2901
  %incdec.ptr609 = getelementptr inbounds %struct._PixelPacket, ptr %q578.23777, i64 1, !dbg !2509
  call void @llvm.dbg.value(metadata ptr %incdec.ptr609, metadata !820, metadata !DIExpression()), !dbg !2431
  %incdec.ptr610 = getelementptr inbounds i16, ptr %frame_indexes576.23773, i64 1, !dbg !2510
  call void @llvm.dbg.value(metadata ptr %incdec.ptr610, metadata !816, metadata !DIExpression()), !dbg !2431
  %inc612 = add nuw nsw i64 %x577.13776, 1, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %inc612, metadata !819, metadata !DIExpression()), !dbg !2431
  %exitcond4391.not = icmp eq i64 %inc612, %sub605, !dbg !2512
  br i1 %exitcond4391.not, label %for.cond614.preheader, label %for.body608, !dbg !2449, !llvm.loop !2513

for.cond623.preheader:                            ; preds = %SetPixelPacket.exit2967, %for.cond614.preheader
  %frame_indexes576.3.lcssa = phi ptr [ %frame_indexes576.2.lcssa, %for.cond614.preheader ], [ %incdec.ptr619, %SetPixelPacket.exit2967 ], !dbg !2442
  %x577.2.lcssa = phi i64 [ 0, %for.cond614.preheader ], [ %indvars.iv4392, %SetPixelPacket.exit2967 ], !dbg !2515
  %q578.3.lcssa = phi ptr [ %q578.2.lcssa, %for.cond614.preheader ], [ %incdec.ptr618, %SetPixelPacket.exit2967 ], !dbg !2431
  call void @llvm.dbg.value(metadata ptr %q578.3.lcssa, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %x577.2.lcssa, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.3.lcssa, metadata !816, metadata !DIExpression()), !dbg !2431
  %cmp6283790 = icmp slt i64 %x577.2.lcssa, %add627, !dbg !2516
  br i1 %cmp6283790, label %for.body630.lr.ph, label %for.end645, !dbg !2519

for.body630.lr.ph:                                ; preds = %for.cond623.preheader
  %sub635 = sub i64 %add627, %y.43821
  %354 = load float, ptr %red134, align 8
  %cmp.i.i2969 = fcmp ole float %354, 0.000000e+00
  %cmp1.i.i2970 = fcmp oge float %354, 6.553500e+04
  %add.i.i2972 = fadd float %354, 5.000000e-01
  %conv.i.i2973 = fptoui float %add.i.i2972 to i16
  %355 = load float, ptr %green148, align 4
  %cmp.i23.i2978 = fcmp ole float %355, 0.000000e+00
  %cmp1.i24.i2980 = fcmp oge float %355, 6.553500e+04
  %add.i26.i2982 = fadd float %355, 5.000000e-01
  %conv.i27.i2983 = fptoui float %add.i26.i2982 to i16
  %356 = load float, ptr %blue162, align 8
  %cmp.i31.i2988 = fcmp ole float %356, 0.000000e+00
  %cmp1.i32.i2990 = fcmp oge float %356, 6.553500e+04
  %add.i34.i2992 = fadd float %356, 5.000000e-01
  %conv.i35.i2993 = fptoui float %add.i34.i2992 to i16
  %357 = load float, ptr %opacity164, align 4
  %cmp.i39.i2997 = fcmp ole float %357, 0.000000e+00
  %cmp1.i40.i2999 = fcmp oge float %357, 6.553500e+04
  %add.i42.i3001 = fadd float %357, 5.000000e-01
  %conv.i43.i3002 = fptoui float %add.i42.i3001 to i16
  %358 = load float, ptr %index11.i2841, align 8
  %cmp.i47.i3016 = fcmp ole float %358, 0.000000e+00
  %cmp1.i48.i3018 = fcmp oge float %358, 6.553500e+04
  %add.i50.i3020 = fadd float %358, 5.000000e-01
  %conv.i51.i3021 = fptoui float %add.i50.i3020 to i16
  %359 = load float, ptr %red92, align 8
  %cmp.i.i3027 = fcmp ole float %359, 0.000000e+00
  %cmp1.i.i3028 = fcmp oge float %359, 6.553500e+04
  %add.i.i3030 = fadd float %359, 5.000000e-01
  %conv.i.i3031 = fptoui float %add.i.i3030 to i16
  %360 = load float, ptr %green105, align 4
  %cmp.i23.i3036 = fcmp ole float %360, 0.000000e+00
  %cmp1.i24.i3038 = fcmp oge float %360, 6.553500e+04
  %add.i26.i3040 = fadd float %360, 5.000000e-01
  %conv.i27.i3041 = fptoui float %add.i26.i3040 to i16
  %361 = load float, ptr %blue118, align 8
  %cmp.i31.i3046 = fcmp ole float %361, 0.000000e+00
  %cmp1.i32.i3048 = fcmp oge float %361, 6.553500e+04
  %add.i34.i3050 = fadd float %361, 5.000000e-01
  %conv.i35.i3051 = fptoui float %add.i34.i3050 to i16
  %362 = load float, ptr %opacity120, align 4
  %cmp.i39.i3055 = fcmp ole float %362, 0.000000e+00
  %cmp1.i40.i3057 = fcmp oge float %362, 6.553500e+04
  %add.i42.i3059 = fadd float %362, 5.000000e-01
  %conv.i43.i3060 = fptoui float %add.i42.i3059 to i16
  %363 = load float, ptr %index11.i3073, align 8
  %cmp.i47.i3074 = fcmp ole float %363, 0.000000e+00
  %cmp1.i48.i3076 = fcmp oge float %363, 6.553500e+04
  %add.i50.i3078 = fadd float %363, 5.000000e-01
  %conv.i51.i3079 = fptoui float %add.i50.i3078 to i16
  %brmerge4107 = or i1 %cmp.i.i2969, %cmp1.i.i2970
  %not.cmp.i.i2969 = xor i1 %cmp.i.i2969, true
  %.mux4108 = sext i1 %not.cmp.i.i2969 to i16
  %spec.select4276 = select i1 %brmerge4107, i16 %.mux4108, i16 %conv.i.i2973
  %brmerge4109 = or i1 %cmp.i23.i2978, %cmp1.i24.i2980
  %not.cmp.i23.i2978 = xor i1 %cmp.i23.i2978, true
  %.mux4110 = sext i1 %not.cmp.i23.i2978 to i16
  %spec.select4329 = select i1 %brmerge4109, i16 %.mux4110, i16 %conv.i27.i2983
  %brmerge4111 = or i1 %cmp.i31.i2988, %cmp1.i32.i2990
  %not.cmp.i31.i2988 = xor i1 %cmp.i31.i2988, true
  %.mux4112 = sext i1 %not.cmp.i31.i2988 to i16
  %spec.select4277 = select i1 %brmerge4111, i16 %.mux4112, i16 %conv.i35.i2993
  %brmerge4113 = or i1 %cmp.i39.i2997, %cmp1.i40.i2999
  %not.cmp.i39.i2997 = xor i1 %cmp.i39.i2997, true
  %.mux4114 = sext i1 %not.cmp.i39.i2997 to i16
  %spec.select4362 = select i1 %brmerge4113, i16 %.mux4114, i16 %conv.i43.i3002
  %brmerge4115 = or i1 %cmp.i47.i3016, %cmp1.i48.i3018
  %not.cmp.i47.i3016 = xor i1 %cmp.i47.i3016, true
  %.mux4116 = sext i1 %not.cmp.i47.i3016 to i16
  %spec.select4278 = select i1 %brmerge4115, i16 %.mux4116, i16 %conv.i51.i3021
  %brmerge4117 = or i1 %cmp.i.i3027, %cmp1.i.i3028
  %not.cmp.i.i3027 = xor i1 %cmp.i.i3027, true
  %.mux4118 = sext i1 %not.cmp.i.i3027 to i16
  %spec.select4279 = select i1 %brmerge4117, i16 %.mux4118, i16 %conv.i.i3031
  %brmerge4119 = or i1 %cmp.i23.i3036, %cmp1.i24.i3038
  %not.cmp.i23.i3036 = xor i1 %cmp.i23.i3036, true
  %.mux4120 = sext i1 %not.cmp.i23.i3036 to i16
  %spec.select4330 = select i1 %brmerge4119, i16 %.mux4120, i16 %conv.i27.i3041
  %brmerge4121 = or i1 %cmp.i31.i3046, %cmp1.i32.i3048
  %not.cmp.i31.i3046 = xor i1 %cmp.i31.i3046, true
  %.mux4122 = sext i1 %not.cmp.i31.i3046 to i16
  %spec.select4280 = select i1 %brmerge4121, i16 %.mux4122, i16 %conv.i35.i3051
  %brmerge4123 = or i1 %cmp.i39.i3055, %cmp1.i40.i3057
  %not.cmp.i39.i3055 = xor i1 %cmp.i39.i3055, true
  %.mux4124 = sext i1 %not.cmp.i39.i3055 to i16
  %spec.select4363 = select i1 %brmerge4123, i16 %.mux4124, i16 %conv.i43.i3060
  %brmerge4125 = or i1 %cmp.i47.i3074, %cmp1.i48.i3076
  %not.cmp.i47.i3074 = xor i1 %cmp.i47.i3074, true
  %.mux4126 = sext i1 %not.cmp.i47.i3074 to i16
  %spec.select4281 = select i1 %brmerge4125, i16 %.mux4126, i16 %conv.i51.i3079
  br label %for.body630, !dbg !2519

for.body617:                                      ; preds = %for.body617.lr.ph, %SetPixelPacket.exit2967
  %q578.33786 = phi ptr [ %q578.2.lcssa, %for.body617.lr.ph ], [ %incdec.ptr618, %SetPixelPacket.exit2967 ]
  %x577.23785 = phi i64 [ 0, %for.body617.lr.ph ], [ %inc621, %SetPixelPacket.exit2967 ]
  %frame_indexes576.33782 = phi ptr [ %frame_indexes576.2.lcssa, %for.body617.lr.ph ], [ %incdec.ptr619, %SetPixelPacket.exit2967 ]
  call void @llvm.dbg.value(metadata ptr %q578.33786, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %x577.23785, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.33782, metadata !816, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata ptr %shadow, metadata !1676, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata ptr %q578.33786, metadata !1677, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.33782, metadata !1678, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata float %338, metadata !1685, metadata !DIExpression()), !dbg !2523
  %red1.i2918 = getelementptr inbounds %struct._PixelPacket, ptr %q578.33786, i64 0, i32 2, !dbg !2525
  store i16 %spec.select4273, ptr %red1.i2918, align 2, !dbg !2525, !tbaa !891
  call void @llvm.dbg.value(metadata float %339, metadata !1685, metadata !DIExpression()), !dbg !2526
  %green3.i2928 = getelementptr inbounds %struct._PixelPacket, ptr %q578.33786, i64 0, i32 1, !dbg !2528
  store i16 %spec.select4328, ptr %green3.i2928, align 2, !dbg !2528, !tbaa !894
  call void @llvm.dbg.value(metadata float %340, metadata !1685, metadata !DIExpression()), !dbg !2529
  store i16 %spec.select4274, ptr %q578.33786, align 2, !dbg !2531, !tbaa !897
  call void @llvm.dbg.value(metadata float %341, metadata !1685, metadata !DIExpression()), !dbg !2532
  %opacity7.i2947 = getelementptr inbounds %struct._PixelPacket, ptr %q578.33786, i64 0, i32 3, !dbg !2534
  store i16 %spec.select4361, ptr %opacity7.i2947, align 2, !dbg !2534, !tbaa !1006
  br i1 %cmp.i2949, label %if.then.i2956, label %lor.lhs.false.i2954, !dbg !2535

lor.lhs.false.i2954:                              ; preds = %for.body617
  %364 = load i32, ptr %call27, align 8, !dbg !2536, !tbaa !1707
  %cmp8.i2951 = icmp eq i32 %364, 2, !dbg !2537
  %cmp9.i2952 = icmp ne ptr %frame_indexes576.33782, null
  %or.cond.i2953 = and i1 %cmp9.i2952, %cmp8.i2951, !dbg !2538
  br i1 %or.cond.i2953, label %if.then10.i2959, label %SetPixelPacket.exit2967, !dbg !2538

if.then.i2956:                                    ; preds = %for.body617
  %cmp9.old.not.i2955 = icmp eq ptr %frame_indexes576.33782, null, !dbg !2539
  br i1 %cmp9.old.not.i2955, label %SetPixelPacket.exit2967, label %if.then10.i2959, !dbg !2540

if.then10.i2959:                                  ; preds = %if.then.i2956, %lor.lhs.false.i2954
  call void @llvm.dbg.value(metadata float %352, metadata !1685, metadata !DIExpression()), !dbg !2541
  store i16 %spec.select4275, ptr %frame_indexes576.33782, align 2, !dbg !2539, !tbaa !1734
  br label %SetPixelPacket.exit2967, !dbg !2539

SetPixelPacket.exit2967:                          ; preds = %lor.lhs.false.i2954, %if.then.i2956, %if.then10.i2959
  %incdec.ptr618 = getelementptr inbounds %struct._PixelPacket, ptr %q578.33786, i64 1, !dbg !2543
  call void @llvm.dbg.value(metadata ptr %incdec.ptr618, metadata !820, metadata !DIExpression()), !dbg !2431
  %incdec.ptr619 = getelementptr inbounds i16, ptr %frame_indexes576.33782, i64 1, !dbg !2544
  call void @llvm.dbg.value(metadata ptr %incdec.ptr619, metadata !816, metadata !DIExpression()), !dbg !2431
  %inc621 = add nuw nsw i64 %x577.23785, 1, !dbg !2545
  call void @llvm.dbg.value(metadata i64 %inc621, metadata !819, metadata !DIExpression()), !dbg !2431
  %cmp615 = icmp slt i64 %inc621, %y.43821, !dbg !2481
  br i1 %cmp615, label %for.body617, label %for.cond623.preheader, !dbg !2484, !llvm.loop !2546

for.body630:                                      ; preds = %for.body630.lr.ph, %if.end640
  %q578.43796 = phi ptr [ %q578.3.lcssa, %for.body630.lr.ph ], [ %incdec.ptr641, %if.end640 ]
  %x577.33795 = phi i64 [ %x577.2.lcssa, %for.body630.lr.ph ], [ %inc644, %if.end640 ]
  %frame_indexes576.43791 = phi ptr [ %frame_indexes576.3.lcssa, %for.body630.lr.ph ], [ %incdec.ptr642, %if.end640 ]
  call void @llvm.dbg.value(metadata ptr %q578.43796, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %x577.33795, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.43791, metadata !816, metadata !DIExpression()), !dbg !2431
  %cmp636.not = icmp slt i64 %x577.33795, %sub635, !dbg !2548
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2553
  %red1.i3034 = getelementptr inbounds %struct._PixelPacket, ptr %q578.43796, i64 0, i32 2, !dbg !2555
  br i1 %cmp636.not, label %if.else639, label %if.then638, !dbg !2556

if.then638:                                       ; preds = %for.body630
  call void @llvm.dbg.value(metadata ptr %highlight, metadata !1676, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata ptr %q578.43796, metadata !1677, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.43791, metadata !1678, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata float %354, metadata !1685, metadata !DIExpression()), !dbg !2557
  store i16 %spec.select4276, ptr %red1.i3034, align 2, !dbg !2559, !tbaa !891
  call void @llvm.dbg.value(metadata float %355, metadata !1685, metadata !DIExpression()), !dbg !2560
  %green3.i2986 = getelementptr inbounds %struct._PixelPacket, ptr %q578.43796, i64 0, i32 1, !dbg !2562
  store i16 %spec.select4329, ptr %green3.i2986, align 2, !dbg !2562, !tbaa !894
  call void @llvm.dbg.value(metadata float %356, metadata !1685, metadata !DIExpression()), !dbg !2563
  store i16 %spec.select4277, ptr %q578.43796, align 2, !dbg !2565, !tbaa !897
  call void @llvm.dbg.value(metadata float %357, metadata !1685, metadata !DIExpression()), !dbg !2566
  %opacity7.i3005 = getelementptr inbounds %struct._PixelPacket, ptr %q578.43796, i64 0, i32 3, !dbg !2568
  store i16 %spec.select4362, ptr %opacity7.i3005, align 2, !dbg !2568, !tbaa !1006
  %365 = load i32, ptr %colorspace.i2832, align 4, !dbg !2569, !tbaa !925
  %cmp.i3007 = icmp eq i32 %365, 12, !dbg !2570
  br i1 %cmp.i3007, label %if.then.i3014, label %lor.lhs.false.i3012, !dbg !2571

lor.lhs.false.i3012:                              ; preds = %if.then638
  %366 = load i32, ptr %call27, align 8, !dbg !2572, !tbaa !1707
  %cmp8.i3009 = icmp eq i32 %366, 2, !dbg !2573
  %cmp9.i3010 = icmp ne ptr %frame_indexes576.43791, null
  %or.cond.i3011 = and i1 %cmp9.i3010, %cmp8.i3009, !dbg !2574
  br i1 %or.cond.i3011, label %if.end640.sink.split, label %if.end640, !dbg !2574

if.then.i3014:                                    ; preds = %if.then638
  %cmp9.old.not.i3013 = icmp eq ptr %frame_indexes576.43791, null, !dbg !2575
  br i1 %cmp9.old.not.i3013, label %if.end640, label %if.end640.sink.split, !dbg !2576

if.else639:                                       ; preds = %for.body630
  call void @llvm.dbg.value(metadata ptr %accentuate, metadata !1676, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata ptr %q578.43796, metadata !1677, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.43791, metadata !1678, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata float %359, metadata !1685, metadata !DIExpression()), !dbg !2577
  store i16 %spec.select4279, ptr %red1.i3034, align 2, !dbg !2579, !tbaa !891
  call void @llvm.dbg.value(metadata float %360, metadata !1685, metadata !DIExpression()), !dbg !2580
  %green3.i3044 = getelementptr inbounds %struct._PixelPacket, ptr %q578.43796, i64 0, i32 1, !dbg !2582
  store i16 %spec.select4330, ptr %green3.i3044, align 2, !dbg !2582, !tbaa !894
  call void @llvm.dbg.value(metadata float %361, metadata !1685, metadata !DIExpression()), !dbg !2583
  store i16 %spec.select4280, ptr %q578.43796, align 2, !dbg !2585, !tbaa !897
  call void @llvm.dbg.value(metadata float %362, metadata !1685, metadata !DIExpression()), !dbg !2586
  %opacity7.i3063 = getelementptr inbounds %struct._PixelPacket, ptr %q578.43796, i64 0, i32 3, !dbg !2588
  store i16 %spec.select4363, ptr %opacity7.i3063, align 2, !dbg !2588, !tbaa !1006
  %367 = load i32, ptr %colorspace.i2832, align 4, !dbg !2589, !tbaa !925
  %cmp.i3065 = icmp eq i32 %367, 12, !dbg !2590
  br i1 %cmp.i3065, label %if.then.i3072, label %lor.lhs.false.i3070, !dbg !2591

lor.lhs.false.i3070:                              ; preds = %if.else639
  %368 = load i32, ptr %call27, align 8, !dbg !2592, !tbaa !1707
  %cmp8.i3067 = icmp eq i32 %368, 2, !dbg !2593
  %cmp9.i3068 = icmp ne ptr %frame_indexes576.43791, null
  %or.cond.i3069 = and i1 %cmp9.i3068, %cmp8.i3067, !dbg !2594
  br i1 %or.cond.i3069, label %if.end640.sink.split, label %if.end640, !dbg !2594

if.then.i3072:                                    ; preds = %if.else639
  %cmp9.old.not.i3071 = icmp eq ptr %frame_indexes576.43791, null, !dbg !2595
  br i1 %cmp9.old.not.i3071, label %if.end640, label %if.end640.sink.split, !dbg !2596

if.end640.sink.split:                             ; preds = %lor.lhs.false.i3070, %if.then.i3072, %lor.lhs.false.i3012, %if.then.i3014
  %spec.select4281.sink = phi i16 [ %spec.select4278, %if.then.i3014 ], [ %spec.select4278, %lor.lhs.false.i3012 ], [ %spec.select4281, %if.then.i3072 ], [ %spec.select4281, %lor.lhs.false.i3070 ]
  store i16 %spec.select4281.sink, ptr %frame_indexes576.43791, align 2, !dbg !2555, !tbaa !1734
  br label %if.end640, !dbg !2597

if.end640:                                        ; preds = %if.end640.sink.split, %if.then.i3072, %lor.lhs.false.i3070, %if.then.i3014, %lor.lhs.false.i3012
  %incdec.ptr641 = getelementptr inbounds %struct._PixelPacket, ptr %q578.43796, i64 1, !dbg !2597
  call void @llvm.dbg.value(metadata ptr %incdec.ptr641, metadata !820, metadata !DIExpression()), !dbg !2431
  %incdec.ptr642 = getelementptr inbounds i16, ptr %frame_indexes576.43791, i64 1, !dbg !2598
  call void @llvm.dbg.value(metadata ptr %incdec.ptr642, metadata !816, metadata !DIExpression()), !dbg !2431
  %inc644 = add nuw nsw i64 %x577.33795, 1, !dbg !2599
  call void @llvm.dbg.value(metadata i64 %inc644, metadata !819, metadata !DIExpression()), !dbg !2431
  %cmp628 = icmp slt i64 %inc644, %add627, !dbg !2516
  br i1 %cmp628, label %for.body630, label %for.end645, !dbg !2519, !llvm.loop !2600

for.end645:                                       ; preds = %if.end640, %for.cond623.preheader
  %frame_indexes576.4.lcssa = phi ptr [ %frame_indexes576.3.lcssa, %for.cond623.preheader ], [ %incdec.ptr642, %if.end640 ], !dbg !2442
  %q578.4.lcssa = phi ptr [ %q578.3.lcssa, %for.cond623.preheader ], [ %incdec.ptr641, %if.end640 ], !dbg !2431
  call void @llvm.dbg.value(metadata i64 %sub651, metadata !794, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 0, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %q578.4.lcssa, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.4.lcssa, metadata !816, metadata !DIExpression()), !dbg !2431
  br i1 %cmp6533801, label %for.body655.lr.ph, label %for.cond661.preheader, !dbg !2602

for.body655.lr.ph:                                ; preds = %for.end645
  %369 = load i32, ptr %colorspace.i2832, align 4, !tbaa !925
  %cmp.i3123 = icmp eq i32 %369, 12
  %370 = load float, ptr %index11.i2899, align 8
  %cmp.i47.i3132 = fcmp ole float %370, 0.000000e+00
  %cmp1.i48.i3134 = fcmp oge float %370, 6.553500e+04
  %add.i50.i3136 = fadd float %370, 5.000000e-01
  %conv.i51.i3137 = fptoui float %add.i50.i3136 to i16
  %brmerge4135 = or i1 %cmp.i47.i3132, %cmp1.i48.i3134
  %not.cmp.i47.i3132 = xor i1 %cmp.i47.i3132, true
  %.mux4136 = sext i1 %not.cmp.i47.i3132 to i16
  %spec.select4284 = select i1 %brmerge4135, i16 %.mux4136, i16 %conv.i51.i3137
  br label %for.body655, !dbg !2602

for.cond661.preheader:                            ; preds = %SetPixelPacket.exit3141, %for.end645
  %frame_indexes576.5.lcssa = phi ptr [ %frame_indexes576.4.lcssa, %for.end645 ], [ %incdec.ptr657, %SetPixelPacket.exit3141 ], !dbg !2442
  %q578.5.lcssa = phi ptr [ %q578.4.lcssa, %for.end645 ], [ %incdec.ptr656, %SetPixelPacket.exit3141 ], !dbg !2431
  call void @llvm.dbg.value(metadata ptr %q578.5.lcssa, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 0, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.5.lcssa, metadata !816, metadata !DIExpression()), !dbg !2431
  br i1 %cmp5953763, label %for.body665.lr.ph, label %for.cond589.loopexit, !dbg !2604

for.body665.lr.ph:                                ; preds = %for.cond661.preheader
  %371 = load i32, ptr %colorspace.i2832, align 4, !tbaa !925
  %cmp.i3181 = icmp eq i32 %371, 12
  %372 = load float, ptr %index11.i2957, align 8
  %cmp.i47.i3190 = fcmp ole float %372, 0.000000e+00
  %cmp1.i48.i3192 = fcmp oge float %372, 6.553500e+04
  %add.i50.i3194 = fadd float %372, 5.000000e-01
  %conv.i51.i3195 = fptoui float %add.i50.i3194 to i16
  %brmerge4145 = or i1 %cmp.i47.i3190, %cmp1.i48.i3192
  %not.cmp.i47.i3190 = xor i1 %cmp.i47.i3190, true
  %.mux4146 = sext i1 %not.cmp.i47.i3190 to i16
  %spec.select4287 = select i1 %brmerge4145, i16 %.mux4146, i16 %conv.i51.i3195
  br label %for.body665, !dbg !2604

for.body655:                                      ; preds = %for.body655.lr.ph, %SetPixelPacket.exit3141
  %q578.53806 = phi ptr [ %q578.4.lcssa, %for.body655.lr.ph ], [ %incdec.ptr656, %SetPixelPacket.exit3141 ]
  %x577.43805 = phi i64 [ 0, %for.body655.lr.ph ], [ %inc659, %SetPixelPacket.exit3141 ]
  %frame_indexes576.53802 = phi ptr [ %frame_indexes576.4.lcssa, %for.body655.lr.ph ], [ %incdec.ptr657, %SetPixelPacket.exit3141 ]
  call void @llvm.dbg.value(metadata ptr %q578.53806, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %x577.43805, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.53802, metadata !816, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata ptr %matte, metadata !1676, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata ptr %q578.53806, metadata !1677, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.53802, metadata !1678, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata float %334, metadata !1685, metadata !DIExpression()), !dbg !2610
  %red1.i3092 = getelementptr inbounds %struct._PixelPacket, ptr %q578.53806, i64 0, i32 2, !dbg !2612
  store i16 %spec.select4282, ptr %red1.i3092, align 2, !dbg !2612, !tbaa !891
  call void @llvm.dbg.value(metadata float %335, metadata !1685, metadata !DIExpression()), !dbg !2613
  %green3.i3102 = getelementptr inbounds %struct._PixelPacket, ptr %q578.53806, i64 0, i32 1, !dbg !2615
  store i16 %spec.select4331, ptr %green3.i3102, align 2, !dbg !2615, !tbaa !894
  call void @llvm.dbg.value(metadata float %336, metadata !1685, metadata !DIExpression()), !dbg !2616
  store i16 %spec.select4283, ptr %q578.53806, align 2, !dbg !2618, !tbaa !897
  call void @llvm.dbg.value(metadata float %337, metadata !1685, metadata !DIExpression()), !dbg !2619
  %opacity7.i3121 = getelementptr inbounds %struct._PixelPacket, ptr %q578.53806, i64 0, i32 3, !dbg !2621
  store i16 %spec.select4364, ptr %opacity7.i3121, align 2, !dbg !2621, !tbaa !1006
  br i1 %cmp.i3123, label %if.then.i3130, label %lor.lhs.false.i3128, !dbg !2622

lor.lhs.false.i3128:                              ; preds = %for.body655
  %373 = load i32, ptr %call27, align 8, !dbg !2623, !tbaa !1707
  %cmp8.i3125 = icmp eq i32 %373, 2, !dbg !2624
  %cmp9.i3126 = icmp ne ptr %frame_indexes576.53802, null
  %or.cond.i3127 = and i1 %cmp9.i3126, %cmp8.i3125, !dbg !2625
  br i1 %or.cond.i3127, label %if.then10.i3133, label %SetPixelPacket.exit3141, !dbg !2625

if.then.i3130:                                    ; preds = %for.body655
  %cmp9.old.not.i3129 = icmp eq ptr %frame_indexes576.53802, null, !dbg !2626
  br i1 %cmp9.old.not.i3129, label %SetPixelPacket.exit3141, label %if.then10.i3133, !dbg !2627

if.then10.i3133:                                  ; preds = %if.then.i3130, %lor.lhs.false.i3128
  call void @llvm.dbg.value(metadata float %370, metadata !1685, metadata !DIExpression()), !dbg !2628
  store i16 %spec.select4284, ptr %frame_indexes576.53802, align 2, !dbg !2626, !tbaa !1734
  br label %SetPixelPacket.exit3141, !dbg !2626

SetPixelPacket.exit3141:                          ; preds = %lor.lhs.false.i3128, %if.then.i3130, %if.then10.i3133
  %incdec.ptr656 = getelementptr inbounds %struct._PixelPacket, ptr %q578.53806, i64 1, !dbg !2630
  call void @llvm.dbg.value(metadata ptr %incdec.ptr656, metadata !820, metadata !DIExpression()), !dbg !2431
  %incdec.ptr657 = getelementptr inbounds i16, ptr %frame_indexes576.53802, i64 1, !dbg !2631
  call void @llvm.dbg.value(metadata ptr %incdec.ptr657, metadata !816, metadata !DIExpression()), !dbg !2431
  %inc659 = add nuw nsw i64 %x577.43805, 1, !dbg !2632
  call void @llvm.dbg.value(metadata i64 %inc659, metadata !819, metadata !DIExpression()), !dbg !2431
  %exitcond4394.not = icmp eq i64 %inc659, %sub651, !dbg !2633
  br i1 %exitcond4394.not, label %for.cond661.preheader, label %for.body655, !dbg !2602, !llvm.loop !2634

for.body665:                                      ; preds = %for.body665.lr.ph, %SetPixelPacket.exit3199
  %q578.63814 = phi ptr [ %q578.5.lcssa, %for.body665.lr.ph ], [ %incdec.ptr666, %SetPixelPacket.exit3199 ]
  %x577.53813 = phi i64 [ 0, %for.body665.lr.ph ], [ %inc669, %SetPixelPacket.exit3199 ]
  %frame_indexes576.63810 = phi ptr [ %frame_indexes576.5.lcssa, %for.body665.lr.ph ], [ %incdec.ptr667, %SetPixelPacket.exit3199 ]
  call void @llvm.dbg.value(metadata ptr %q578.63814, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %x577.53813, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.63810, metadata !816, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata ptr %shadow, metadata !1676, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata ptr %q578.63814, metadata !1677, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.63810, metadata !1678, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata float %338, metadata !1685, metadata !DIExpression()), !dbg !2640
  %red1.i3150 = getelementptr inbounds %struct._PixelPacket, ptr %q578.63814, i64 0, i32 2, !dbg !2642
  store i16 %spec.select4285, ptr %red1.i3150, align 2, !dbg !2642, !tbaa !891
  call void @llvm.dbg.value(metadata float %339, metadata !1685, metadata !DIExpression()), !dbg !2643
  %green3.i3160 = getelementptr inbounds %struct._PixelPacket, ptr %q578.63814, i64 0, i32 1, !dbg !2645
  store i16 %spec.select4332, ptr %green3.i3160, align 2, !dbg !2645, !tbaa !894
  call void @llvm.dbg.value(metadata float %340, metadata !1685, metadata !DIExpression()), !dbg !2646
  store i16 %spec.select4286, ptr %q578.63814, align 2, !dbg !2648, !tbaa !897
  call void @llvm.dbg.value(metadata float %341, metadata !1685, metadata !DIExpression()), !dbg !2649
  %opacity7.i3179 = getelementptr inbounds %struct._PixelPacket, ptr %q578.63814, i64 0, i32 3, !dbg !2651
  store i16 %spec.select4365, ptr %opacity7.i3179, align 2, !dbg !2651, !tbaa !1006
  br i1 %cmp.i3181, label %if.then.i3188, label %lor.lhs.false.i3186, !dbg !2652

lor.lhs.false.i3186:                              ; preds = %for.body665
  %374 = load i32, ptr %call27, align 8, !dbg !2653, !tbaa !1707
  %cmp8.i3183 = icmp eq i32 %374, 2, !dbg !2654
  %cmp9.i3184 = icmp ne ptr %frame_indexes576.63810, null
  %or.cond.i3185 = and i1 %cmp9.i3184, %cmp8.i3183, !dbg !2655
  br i1 %or.cond.i3185, label %if.then10.i3191, label %SetPixelPacket.exit3199, !dbg !2655

if.then.i3188:                                    ; preds = %for.body665
  %cmp9.old.not.i3187 = icmp eq ptr %frame_indexes576.63810, null, !dbg !2656
  br i1 %cmp9.old.not.i3187, label %SetPixelPacket.exit3199, label %if.then10.i3191, !dbg !2657

if.then10.i3191:                                  ; preds = %if.then.i3188, %lor.lhs.false.i3186
  call void @llvm.dbg.value(metadata float %372, metadata !1685, metadata !DIExpression()), !dbg !2658
  store i16 %spec.select4287, ptr %frame_indexes576.63810, align 2, !dbg !2656, !tbaa !1734
  br label %SetPixelPacket.exit3199, !dbg !2656

SetPixelPacket.exit3199:                          ; preds = %lor.lhs.false.i3186, %if.then.i3188, %if.then10.i3191
  %incdec.ptr666 = getelementptr inbounds %struct._PixelPacket, ptr %q578.63814, i64 1, !dbg !2660
  call void @llvm.dbg.value(metadata ptr %incdec.ptr666, metadata !820, metadata !DIExpression()), !dbg !2431
  %incdec.ptr667 = getelementptr inbounds i16, ptr %frame_indexes576.63810, i64 1, !dbg !2661
  call void @llvm.dbg.value(metadata ptr %incdec.ptr667, metadata !816, metadata !DIExpression()), !dbg !2431
  %inc669 = add nuw nsw i64 %x577.53813, 1, !dbg !2662
  call void @llvm.dbg.value(metadata i64 %inc669, metadata !819, metadata !DIExpression()), !dbg !2431
  %exitcond4395.not = icmp eq i64 %inc669, %328, !dbg !2663
  br i1 %exitcond4395.not, label %for.cond589.loopexit, label %for.body665, !dbg !2604, !llvm.loop !2664

for.end672:                                       ; preds = %for.cond589.loopexit, %if.then585
  %frame_indexes576.0.lcssa = phi ptr [ %call586, %if.then585 ], [ %frame_indexes576.6.lcssa, %for.cond589.loopexit ], !dbg !2666
  %q578.0.lcssa = phi ptr [ %call582, %if.then585 ], [ %q578.6.lcssa, %for.cond589.loopexit ], !dbg !2667
  %375 = load i64, ptr %height13, align 8, !dbg !2668, !tbaa !718
  %376 = load i64, ptr %y14, align 8, !dbg !2669, !tbaa !724
  %377 = load i64, ptr %rows, align 8, !dbg !2670, !tbaa !711
  %378 = add i64 %add, %376, !dbg !2671
  %379 = add i64 %378, %377, !dbg !2671
  %sub678 = sub i64 %375, %379, !dbg !2671
  call void @llvm.dbg.value(metadata i64 %sub678, metadata !793, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 0, metadata !795, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata ptr %q578.0.lcssa, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.0.lcssa, metadata !816, metadata !DIExpression()), !dbg !2431
  %cmp6803849 = icmp sgt i64 %sub678, 0, !dbg !2672
  %380 = load i64, ptr %outer_bevel, align 8, !tbaa !839
  br i1 %cmp6803849, label %for.cond683.preheader.lr.ph, label %for.end718, !dbg !2675

for.cond683.preheader.lr.ph:                      ; preds = %for.end672
  %cmp6853824 = icmp sgt i64 %380, 0
  %381 = load float, ptr %red134, align 8
  %cmp.i.i3201 = fcmp ole float %381, 0.000000e+00
  %cmp1.i.i3202 = fcmp oge float %381, 6.553500e+04
  %add.i.i3204 = fadd float %381, 5.000000e-01
  %conv.i.i3205 = fptoui float %add.i.i3204 to i16
  %382 = load float, ptr %green148, align 4
  %cmp.i23.i3210 = fcmp ole float %382, 0.000000e+00
  %cmp1.i24.i3212 = fcmp oge float %382, 6.553500e+04
  %add.i26.i3214 = fadd float %382, 5.000000e-01
  %conv.i27.i3215 = fptoui float %add.i26.i3214 to i16
  %383 = load float, ptr %blue162, align 8
  %cmp.i31.i3220 = fcmp ole float %383, 0.000000e+00
  %cmp1.i32.i3222 = fcmp oge float %383, 6.553500e+04
  %add.i34.i3224 = fadd float %383, 5.000000e-01
  %conv.i35.i3225 = fptoui float %add.i34.i3224 to i16
  %384 = load float, ptr %opacity164, align 4
  %cmp.i39.i3229 = fcmp ole float %384, 0.000000e+00
  %cmp1.i40.i3231 = fcmp oge float %384, 6.553500e+04
  %add.i42.i3233 = fadd float %384, 5.000000e-01
  %conv.i43.i3234 = fptoui float %add.i42.i3233 to i16
  %colorspace.i3238 = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 1
  %index11.i3247 = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 9
  %385 = load i64, ptr %columns581, align 8, !tbaa !702
  %mul695.neg = mul i64 %380, -2
  %sub696 = add i64 %385, %mul695.neg
  %cmp6983833 = icmp sgt i64 %sub696, 0
  %386 = load float, ptr %red1.i1254, align 8
  %cmp.i.i3259 = fcmp ole float %386, 0.000000e+00
  %cmp1.i.i3260 = fcmp oge float %386, 6.553500e+04
  %add.i.i3262 = fadd float %386, 5.000000e-01
  %conv.i.i3263 = fptoui float %add.i.i3262 to i16
  %387 = load float, ptr %green3.i1257, align 4
  %cmp.i23.i3268 = fcmp ole float %387, 0.000000e+00
  %cmp1.i24.i3270 = fcmp oge float %387, 6.553500e+04
  %add.i26.i3272 = fadd float %387, 5.000000e-01
  %conv.i27.i3273 = fptoui float %add.i26.i3272 to i16
  %388 = load float, ptr %blue5.i1259, align 8
  %cmp.i31.i3278 = fcmp ole float %388, 0.000000e+00
  %cmp1.i32.i3280 = fcmp oge float %388, 6.553500e+04
  %add.i34.i3282 = fadd float %388, 5.000000e-01
  %conv.i35.i3283 = fptoui float %add.i34.i3282 to i16
  %389 = load float, ptr %opacity7.i1262, align 4
  %cmp.i39.i3287 = fcmp ole float %389, 0.000000e+00
  %cmp1.i40.i3289 = fcmp oge float %389, 6.553500e+04
  %add.i42.i3291 = fadd float %389, 5.000000e-01
  %conv.i43.i3292 = fptoui float %add.i42.i3291 to i16
  %index11.i3305 = getelementptr inbounds %struct._MagickPixelPacket, ptr %matte, i64 0, i32 9
  %390 = load float, ptr %red173, align 8
  %cmp.i.i3317 = fcmp ole float %390, 0.000000e+00
  %cmp1.i.i3318 = fcmp oge float %390, 6.553500e+04
  %add.i.i3320 = fadd float %390, 5.000000e-01
  %conv.i.i3321 = fptoui float %add.i.i3320 to i16
  %391 = load float, ptr %green182, align 4
  %cmp.i23.i3326 = fcmp ole float %391, 0.000000e+00
  %cmp1.i24.i3328 = fcmp oge float %391, 6.553500e+04
  %add.i26.i3330 = fadd float %391, 5.000000e-01
  %conv.i27.i3331 = fptoui float %add.i26.i3330 to i16
  %392 = load float, ptr %blue191, align 8
  %cmp.i31.i3336 = fcmp ole float %392, 0.000000e+00
  %cmp1.i32.i3338 = fcmp oge float %392, 6.553500e+04
  %add.i34.i3340 = fadd float %392, 5.000000e-01
  %conv.i35.i3341 = fptoui float %add.i34.i3340 to i16
  %393 = load float, ptr %opacity193, align 4
  %cmp.i39.i3345 = fcmp ole float %393, 0.000000e+00
  %cmp1.i40.i3347 = fcmp oge float %393, 6.553500e+04
  %add.i42.i3349 = fadd float %393, 5.000000e-01
  %conv.i43.i3350 = fptoui float %add.i42.i3349 to i16
  %index11.i3363 = getelementptr inbounds %struct._MagickPixelPacket, ptr %shadow, i64 0, i32 9
  %brmerge4147 = or i1 %cmp.i.i3201, %cmp1.i.i3202
  %not.cmp.i.i3201 = xor i1 %cmp.i.i3201, true
  %.mux4148 = sext i1 %not.cmp.i.i3201 to i16
  %spec.select4288 = select i1 %brmerge4147, i16 %.mux4148, i16 %conv.i.i3205
  %brmerge4149 = or i1 %cmp.i23.i3210, %cmp1.i24.i3212
  %not.cmp.i23.i3210 = xor i1 %cmp.i23.i3210, true
  %.mux4150 = sext i1 %not.cmp.i23.i3210 to i16
  %spec.select4333 = select i1 %brmerge4149, i16 %.mux4150, i16 %conv.i27.i3215
  %brmerge4151 = or i1 %cmp.i31.i3220, %cmp1.i32.i3222
  %not.cmp.i31.i3220 = xor i1 %cmp.i31.i3220, true
  %.mux4152 = sext i1 %not.cmp.i31.i3220 to i16
  %spec.select4289 = select i1 %brmerge4151, i16 %.mux4152, i16 %conv.i35.i3225
  %brmerge4153 = or i1 %cmp.i39.i3229, %cmp1.i40.i3231
  %not.cmp.i39.i3229 = xor i1 %cmp.i39.i3229, true
  %.mux4154 = sext i1 %not.cmp.i39.i3229 to i16
  %spec.select4366 = select i1 %brmerge4153, i16 %.mux4154, i16 %conv.i43.i3234
  %brmerge4157 = or i1 %cmp.i.i3259, %cmp1.i.i3260
  %not.cmp.i.i3259 = xor i1 %cmp.i.i3259, true
  %.mux4158 = sext i1 %not.cmp.i.i3259 to i16
  %spec.select4291 = select i1 %brmerge4157, i16 %.mux4158, i16 %conv.i.i3263
  %brmerge4159 = or i1 %cmp.i23.i3268, %cmp1.i24.i3270
  %not.cmp.i23.i3268 = xor i1 %cmp.i23.i3268, true
  %.mux4160 = sext i1 %not.cmp.i23.i3268 to i16
  %spec.select4334 = select i1 %brmerge4159, i16 %.mux4160, i16 %conv.i27.i3273
  %brmerge4161 = or i1 %cmp.i31.i3278, %cmp1.i32.i3280
  %not.cmp.i31.i3278 = xor i1 %cmp.i31.i3278, true
  %.mux4162 = sext i1 %not.cmp.i31.i3278 to i16
  %spec.select4292 = select i1 %brmerge4161, i16 %.mux4162, i16 %conv.i35.i3283
  %brmerge4163 = or i1 %cmp.i39.i3287, %cmp1.i40.i3289
  %not.cmp.i39.i3287 = xor i1 %cmp.i39.i3287, true
  %.mux4164 = sext i1 %not.cmp.i39.i3287 to i16
  %spec.select4367 = select i1 %brmerge4163, i16 %.mux4164, i16 %conv.i43.i3292
  %brmerge4167 = or i1 %cmp.i.i3317, %cmp1.i.i3318
  %not.cmp.i.i3317 = xor i1 %cmp.i.i3317, true
  %.mux4168 = sext i1 %not.cmp.i.i3317 to i16
  %spec.select4294 = select i1 %brmerge4167, i16 %.mux4168, i16 %conv.i.i3321
  %brmerge4169 = or i1 %cmp.i23.i3326, %cmp1.i24.i3328
  %not.cmp.i23.i3326 = xor i1 %cmp.i23.i3326, true
  %.mux4170 = sext i1 %not.cmp.i23.i3326 to i16
  %spec.select4335 = select i1 %brmerge4169, i16 %.mux4170, i16 %conv.i27.i3331
  %brmerge4171 = or i1 %cmp.i31.i3336, %cmp1.i32.i3338
  %not.cmp.i31.i3336 = xor i1 %cmp.i31.i3336, true
  %.mux4172 = sext i1 %not.cmp.i31.i3336 to i16
  %spec.select4295 = select i1 %brmerge4171, i16 %.mux4172, i16 %conv.i35.i3341
  %brmerge4173 = or i1 %cmp.i39.i3345, %cmp1.i40.i3347
  %not.cmp.i39.i3345 = xor i1 %cmp.i39.i3345, true
  %.mux4174 = sext i1 %not.cmp.i39.i3345 to i16
  %spec.select4368 = select i1 %brmerge4173, i16 %.mux4174, i16 %conv.i43.i3350
  br label %for.cond683.preheader, !dbg !2675

for.cond683.preheader:                            ; preds = %for.cond683.preheader.lr.ph, %for.inc716
  %q578.73852 = phi ptr [ %q578.0.lcssa, %for.cond683.preheader.lr.ph ], [ %q578.10.lcssa, %for.inc716 ]
  %frame_indexes576.73851 = phi ptr [ %frame_indexes576.0.lcssa, %for.cond683.preheader.lr.ph ], [ %frame_indexes576.10.lcssa, %for.inc716 ]
  %y.53850 = phi i64 [ 0, %for.cond683.preheader.lr.ph ], [ %inc717, %for.inc716 ]
  call void @llvm.dbg.value(metadata i64 %y.53850, metadata !795, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata ptr %q578.73852, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 0, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.73851, metadata !816, metadata !DIExpression()), !dbg !2431
  br i1 %cmp6853824, label %for.body687.lr.ph, label %for.end692, !dbg !2676

for.body687.lr.ph:                                ; preds = %for.cond683.preheader
  %394 = load i32, ptr %colorspace.i3238, align 4, !tbaa !925
  %cmp.i3239 = icmp eq i32 %394, 12
  %395 = load float, ptr %index11.i3247, align 8
  %cmp.i47.i3248 = fcmp ole float %395, 0.000000e+00
  %cmp1.i48.i3250 = fcmp oge float %395, 6.553500e+04
  %add.i50.i3252 = fadd float %395, 5.000000e-01
  %conv.i51.i3253 = fptoui float %add.i50.i3252 to i16
  %brmerge4155 = or i1 %cmp.i47.i3248, %cmp1.i48.i3250
  %not.cmp.i47.i3248 = xor i1 %cmp.i47.i3248, true
  %.mux4156 = sext i1 %not.cmp.i47.i3248 to i16
  %spec.select4290 = select i1 %brmerge4155, i16 %.mux4156, i16 %conv.i51.i3253
  br label %for.body687, !dbg !2676

for.body687:                                      ; preds = %for.body687.lr.ph, %SetPixelPacket.exit3257
  %q578.83829 = phi ptr [ %q578.73852, %for.body687.lr.ph ], [ %incdec.ptr688, %SetPixelPacket.exit3257 ]
  %x577.63828 = phi i64 [ 0, %for.body687.lr.ph ], [ %inc691, %SetPixelPacket.exit3257 ]
  %frame_indexes576.83825 = phi ptr [ %frame_indexes576.73851, %for.body687.lr.ph ], [ %incdec.ptr689, %SetPixelPacket.exit3257 ]
  call void @llvm.dbg.value(metadata ptr %q578.83829, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %x577.63828, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.83825, metadata !816, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %highlight, metadata !1676, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %q578.83829, metadata !1677, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.83825, metadata !1678, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata float %381, metadata !1685, metadata !DIExpression()), !dbg !2683
  %red1.i3208 = getelementptr inbounds %struct._PixelPacket, ptr %q578.83829, i64 0, i32 2, !dbg !2685
  store i16 %spec.select4288, ptr %red1.i3208, align 2, !dbg !2685, !tbaa !891
  call void @llvm.dbg.value(metadata float %382, metadata !1685, metadata !DIExpression()), !dbg !2686
  %green3.i3218 = getelementptr inbounds %struct._PixelPacket, ptr %q578.83829, i64 0, i32 1, !dbg !2688
  store i16 %spec.select4333, ptr %green3.i3218, align 2, !dbg !2688, !tbaa !894
  call void @llvm.dbg.value(metadata float %383, metadata !1685, metadata !DIExpression()), !dbg !2689
  store i16 %spec.select4289, ptr %q578.83829, align 2, !dbg !2691, !tbaa !897
  call void @llvm.dbg.value(metadata float %384, metadata !1685, metadata !DIExpression()), !dbg !2692
  %opacity7.i3237 = getelementptr inbounds %struct._PixelPacket, ptr %q578.83829, i64 0, i32 3, !dbg !2694
  store i16 %spec.select4366, ptr %opacity7.i3237, align 2, !dbg !2694, !tbaa !1006
  br i1 %cmp.i3239, label %if.then.i3246, label %lor.lhs.false.i3244, !dbg !2695

lor.lhs.false.i3244:                              ; preds = %for.body687
  %396 = load i32, ptr %call27, align 8, !dbg !2696, !tbaa !1707
  %cmp8.i3241 = icmp eq i32 %396, 2, !dbg !2697
  %cmp9.i3242 = icmp ne ptr %frame_indexes576.83825, null
  %or.cond.i3243 = and i1 %cmp9.i3242, %cmp8.i3241, !dbg !2698
  br i1 %or.cond.i3243, label %if.then10.i3249, label %SetPixelPacket.exit3257, !dbg !2698

if.then.i3246:                                    ; preds = %for.body687
  %cmp9.old.not.i3245 = icmp eq ptr %frame_indexes576.83825, null, !dbg !2699
  br i1 %cmp9.old.not.i3245, label %SetPixelPacket.exit3257, label %if.then10.i3249, !dbg !2700

if.then10.i3249:                                  ; preds = %if.then.i3246, %lor.lhs.false.i3244
  call void @llvm.dbg.value(metadata float %395, metadata !1685, metadata !DIExpression()), !dbg !2701
  store i16 %spec.select4290, ptr %frame_indexes576.83825, align 2, !dbg !2699, !tbaa !1734
  br label %SetPixelPacket.exit3257, !dbg !2699

SetPixelPacket.exit3257:                          ; preds = %lor.lhs.false.i3244, %if.then.i3246, %if.then10.i3249
  %incdec.ptr688 = getelementptr inbounds %struct._PixelPacket, ptr %q578.83829, i64 1, !dbg !2703
  call void @llvm.dbg.value(metadata ptr %incdec.ptr688, metadata !820, metadata !DIExpression()), !dbg !2431
  %incdec.ptr689 = getelementptr inbounds i16, ptr %frame_indexes576.83825, i64 1, !dbg !2704
  call void @llvm.dbg.value(metadata ptr %incdec.ptr689, metadata !816, metadata !DIExpression()), !dbg !2431
  %inc691 = add nuw nsw i64 %x577.63828, 1, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %inc691, metadata !819, metadata !DIExpression()), !dbg !2431
  %exitcond4396.not = icmp eq i64 %inc691, %380, !dbg !2706
  br i1 %exitcond4396.not, label %for.end692, label %for.body687, !dbg !2676, !llvm.loop !2707

for.end692:                                       ; preds = %SetPixelPacket.exit3257, %for.cond683.preheader
  %frame_indexes576.8.lcssa = phi ptr [ %frame_indexes576.73851, %for.cond683.preheader ], [ %incdec.ptr689, %SetPixelPacket.exit3257 ], !dbg !2442
  %q578.8.lcssa = phi ptr [ %q578.73852, %for.cond683.preheader ], [ %incdec.ptr688, %SetPixelPacket.exit3257 ], !dbg !2431
  call void @llvm.dbg.value(metadata i64 %sub696, metadata !794, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 0, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %q578.8.lcssa, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.8.lcssa, metadata !816, metadata !DIExpression()), !dbg !2431
  br i1 %cmp6983833, label %for.body700.lr.ph, label %for.cond706.preheader, !dbg !2709

for.body700.lr.ph:                                ; preds = %for.end692
  %397 = load i32, ptr %colorspace.i3238, align 4, !tbaa !925
  %cmp.i3297 = icmp eq i32 %397, 12
  %398 = load float, ptr %index11.i3305, align 8
  %cmp.i47.i3306 = fcmp ole float %398, 0.000000e+00
  %cmp1.i48.i3308 = fcmp oge float %398, 6.553500e+04
  %add.i50.i3310 = fadd float %398, 5.000000e-01
  %conv.i51.i3311 = fptoui float %add.i50.i3310 to i16
  %brmerge4165 = or i1 %cmp.i47.i3306, %cmp1.i48.i3308
  %not.cmp.i47.i3306 = xor i1 %cmp.i47.i3306, true
  %.mux4166 = sext i1 %not.cmp.i47.i3306 to i16
  %spec.select4293 = select i1 %brmerge4165, i16 %.mux4166, i16 %conv.i51.i3311
  br label %for.body700, !dbg !2709

for.cond706.preheader:                            ; preds = %SetPixelPacket.exit3315, %for.end692
  %frame_indexes576.9.lcssa = phi ptr [ %frame_indexes576.8.lcssa, %for.end692 ], [ %incdec.ptr702, %SetPixelPacket.exit3315 ], !dbg !2442
  %q578.9.lcssa = phi ptr [ %q578.8.lcssa, %for.end692 ], [ %incdec.ptr701, %SetPixelPacket.exit3315 ], !dbg !2431
  call void @llvm.dbg.value(metadata ptr %q578.9.lcssa, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 0, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.9.lcssa, metadata !816, metadata !DIExpression()), !dbg !2431
  br i1 %cmp6853824, label %for.body710.lr.ph, label %for.inc716, !dbg !2711

for.body710.lr.ph:                                ; preds = %for.cond706.preheader
  %399 = load i32, ptr %colorspace.i3238, align 4, !tbaa !925
  %cmp.i3355 = icmp eq i32 %399, 12
  %400 = load float, ptr %index11.i3363, align 8
  %cmp.i47.i3364 = fcmp ole float %400, 0.000000e+00
  %cmp1.i48.i3366 = fcmp oge float %400, 6.553500e+04
  %add.i50.i3368 = fadd float %400, 5.000000e-01
  %conv.i51.i3369 = fptoui float %add.i50.i3368 to i16
  %brmerge4175 = or i1 %cmp.i47.i3364, %cmp1.i48.i3366
  %not.cmp.i47.i3364 = xor i1 %cmp.i47.i3364, true
  %.mux4176 = sext i1 %not.cmp.i47.i3364 to i16
  %spec.select4296 = select i1 %brmerge4175, i16 %.mux4176, i16 %conv.i51.i3369
  br label %for.body710, !dbg !2711

for.body700:                                      ; preds = %for.body700.lr.ph, %SetPixelPacket.exit3315
  %q578.93838 = phi ptr [ %q578.8.lcssa, %for.body700.lr.ph ], [ %incdec.ptr701, %SetPixelPacket.exit3315 ]
  %x577.73837 = phi i64 [ 0, %for.body700.lr.ph ], [ %inc704, %SetPixelPacket.exit3315 ]
  %frame_indexes576.93834 = phi ptr [ %frame_indexes576.8.lcssa, %for.body700.lr.ph ], [ %incdec.ptr702, %SetPixelPacket.exit3315 ]
  call void @llvm.dbg.value(metadata ptr %q578.93838, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %x577.73837, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.93834, metadata !816, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %matte, metadata !1676, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %q578.93838, metadata !1677, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.93834, metadata !1678, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata float %386, metadata !1685, metadata !DIExpression()), !dbg !2717
  %red1.i3266 = getelementptr inbounds %struct._PixelPacket, ptr %q578.93838, i64 0, i32 2, !dbg !2719
  store i16 %spec.select4291, ptr %red1.i3266, align 2, !dbg !2719, !tbaa !891
  call void @llvm.dbg.value(metadata float %387, metadata !1685, metadata !DIExpression()), !dbg !2720
  %green3.i3276 = getelementptr inbounds %struct._PixelPacket, ptr %q578.93838, i64 0, i32 1, !dbg !2722
  store i16 %spec.select4334, ptr %green3.i3276, align 2, !dbg !2722, !tbaa !894
  call void @llvm.dbg.value(metadata float %388, metadata !1685, metadata !DIExpression()), !dbg !2723
  store i16 %spec.select4292, ptr %q578.93838, align 2, !dbg !2725, !tbaa !897
  call void @llvm.dbg.value(metadata float %389, metadata !1685, metadata !DIExpression()), !dbg !2726
  %opacity7.i3295 = getelementptr inbounds %struct._PixelPacket, ptr %q578.93838, i64 0, i32 3, !dbg !2728
  store i16 %spec.select4367, ptr %opacity7.i3295, align 2, !dbg !2728, !tbaa !1006
  br i1 %cmp.i3297, label %if.then.i3304, label %lor.lhs.false.i3302, !dbg !2729

lor.lhs.false.i3302:                              ; preds = %for.body700
  %401 = load i32, ptr %call27, align 8, !dbg !2730, !tbaa !1707
  %cmp8.i3299 = icmp eq i32 %401, 2, !dbg !2731
  %cmp9.i3300 = icmp ne ptr %frame_indexes576.93834, null
  %or.cond.i3301 = and i1 %cmp9.i3300, %cmp8.i3299, !dbg !2732
  br i1 %or.cond.i3301, label %if.then10.i3307, label %SetPixelPacket.exit3315, !dbg !2732

if.then.i3304:                                    ; preds = %for.body700
  %cmp9.old.not.i3303 = icmp eq ptr %frame_indexes576.93834, null, !dbg !2733
  br i1 %cmp9.old.not.i3303, label %SetPixelPacket.exit3315, label %if.then10.i3307, !dbg !2734

if.then10.i3307:                                  ; preds = %if.then.i3304, %lor.lhs.false.i3302
  call void @llvm.dbg.value(metadata float %398, metadata !1685, metadata !DIExpression()), !dbg !2735
  store i16 %spec.select4293, ptr %frame_indexes576.93834, align 2, !dbg !2733, !tbaa !1734
  br label %SetPixelPacket.exit3315, !dbg !2733

SetPixelPacket.exit3315:                          ; preds = %lor.lhs.false.i3302, %if.then.i3304, %if.then10.i3307
  %incdec.ptr701 = getelementptr inbounds %struct._PixelPacket, ptr %q578.93838, i64 1, !dbg !2737
  call void @llvm.dbg.value(metadata ptr %incdec.ptr701, metadata !820, metadata !DIExpression()), !dbg !2431
  %incdec.ptr702 = getelementptr inbounds i16, ptr %frame_indexes576.93834, i64 1, !dbg !2738
  call void @llvm.dbg.value(metadata ptr %incdec.ptr702, metadata !816, metadata !DIExpression()), !dbg !2431
  %inc704 = add nuw nsw i64 %x577.73837, 1, !dbg !2739
  call void @llvm.dbg.value(metadata i64 %inc704, metadata !819, metadata !DIExpression()), !dbg !2431
  %exitcond4397.not = icmp eq i64 %inc704, %sub696, !dbg !2740
  br i1 %exitcond4397.not, label %for.cond706.preheader, label %for.body700, !dbg !2709, !llvm.loop !2741

for.body710:                                      ; preds = %for.body710.lr.ph, %SetPixelPacket.exit3373
  %q578.103846 = phi ptr [ %q578.9.lcssa, %for.body710.lr.ph ], [ %incdec.ptr711, %SetPixelPacket.exit3373 ]
  %x577.83845 = phi i64 [ 0, %for.body710.lr.ph ], [ %inc714, %SetPixelPacket.exit3373 ]
  %frame_indexes576.103842 = phi ptr [ %frame_indexes576.9.lcssa, %for.body710.lr.ph ], [ %incdec.ptr712, %SetPixelPacket.exit3373 ]
  call void @llvm.dbg.value(metadata ptr %q578.103846, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %x577.83845, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.103842, metadata !816, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %shadow, metadata !1676, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %q578.103846, metadata !1677, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.103842, metadata !1678, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata float %390, metadata !1685, metadata !DIExpression()), !dbg !2747
  %red1.i3324 = getelementptr inbounds %struct._PixelPacket, ptr %q578.103846, i64 0, i32 2, !dbg !2749
  store i16 %spec.select4294, ptr %red1.i3324, align 2, !dbg !2749, !tbaa !891
  call void @llvm.dbg.value(metadata float %391, metadata !1685, metadata !DIExpression()), !dbg !2750
  %green3.i3334 = getelementptr inbounds %struct._PixelPacket, ptr %q578.103846, i64 0, i32 1, !dbg !2752
  store i16 %spec.select4335, ptr %green3.i3334, align 2, !dbg !2752, !tbaa !894
  call void @llvm.dbg.value(metadata float %392, metadata !1685, metadata !DIExpression()), !dbg !2753
  store i16 %spec.select4295, ptr %q578.103846, align 2, !dbg !2755, !tbaa !897
  call void @llvm.dbg.value(metadata float %393, metadata !1685, metadata !DIExpression()), !dbg !2756
  %opacity7.i3353 = getelementptr inbounds %struct._PixelPacket, ptr %q578.103846, i64 0, i32 3, !dbg !2758
  store i16 %spec.select4368, ptr %opacity7.i3353, align 2, !dbg !2758, !tbaa !1006
  br i1 %cmp.i3355, label %if.then.i3362, label %lor.lhs.false.i3360, !dbg !2759

lor.lhs.false.i3360:                              ; preds = %for.body710
  %402 = load i32, ptr %call27, align 8, !dbg !2760, !tbaa !1707
  %cmp8.i3357 = icmp eq i32 %402, 2, !dbg !2761
  %cmp9.i3358 = icmp ne ptr %frame_indexes576.103842, null
  %or.cond.i3359 = and i1 %cmp9.i3358, %cmp8.i3357, !dbg !2762
  br i1 %or.cond.i3359, label %if.then10.i3365, label %SetPixelPacket.exit3373, !dbg !2762

if.then.i3362:                                    ; preds = %for.body710
  %cmp9.old.not.i3361 = icmp eq ptr %frame_indexes576.103842, null, !dbg !2763
  br i1 %cmp9.old.not.i3361, label %SetPixelPacket.exit3373, label %if.then10.i3365, !dbg !2764

if.then10.i3365:                                  ; preds = %if.then.i3362, %lor.lhs.false.i3360
  call void @llvm.dbg.value(metadata float %400, metadata !1685, metadata !DIExpression()), !dbg !2765
  store i16 %spec.select4296, ptr %frame_indexes576.103842, align 2, !dbg !2763, !tbaa !1734
  br label %SetPixelPacket.exit3373, !dbg !2763

SetPixelPacket.exit3373:                          ; preds = %lor.lhs.false.i3360, %if.then.i3362, %if.then10.i3365
  %incdec.ptr711 = getelementptr inbounds %struct._PixelPacket, ptr %q578.103846, i64 1, !dbg !2767
  call void @llvm.dbg.value(metadata ptr %incdec.ptr711, metadata !820, metadata !DIExpression()), !dbg !2431
  %incdec.ptr712 = getelementptr inbounds i16, ptr %frame_indexes576.103842, i64 1, !dbg !2768
  call void @llvm.dbg.value(metadata ptr %incdec.ptr712, metadata !816, metadata !DIExpression()), !dbg !2431
  %inc714 = add nuw nsw i64 %x577.83845, 1, !dbg !2769
  call void @llvm.dbg.value(metadata i64 %inc714, metadata !819, metadata !DIExpression()), !dbg !2431
  %exitcond4398.not = icmp eq i64 %inc714, %380, !dbg !2770
  br i1 %exitcond4398.not, label %for.inc716, label %for.body710, !dbg !2711, !llvm.loop !2771

for.inc716:                                       ; preds = %SetPixelPacket.exit3373, %for.cond706.preheader
  %frame_indexes576.10.lcssa = phi ptr [ %frame_indexes576.9.lcssa, %for.cond706.preheader ], [ %incdec.ptr712, %SetPixelPacket.exit3373 ], !dbg !2442
  %q578.10.lcssa = phi ptr [ %q578.9.lcssa, %for.cond706.preheader ], [ %incdec.ptr711, %SetPixelPacket.exit3373 ], !dbg !2431
  %inc717 = add nuw nsw i64 %y.53850, 1, !dbg !2773
  call void @llvm.dbg.value(metadata ptr %q578.10.lcssa, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.10.lcssa, metadata !816, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %inc717, metadata !795, metadata !DIExpression()), !dbg !821
  %exitcond4399.not = icmp eq i64 %inc717, %sub678, !dbg !2672
  br i1 %exitcond4399.not, label %for.end718, label %for.cond683.preheader, !dbg !2675, !llvm.loop !2774

for.end718:                                       ; preds = %for.inc716, %for.end672
  %frame_indexes576.7.lcssa = phi ptr [ %frame_indexes576.0.lcssa, %for.end672 ], [ %frame_indexes576.10.lcssa, %for.inc716 ], !dbg !2666
  %q578.7.lcssa = phi ptr [ %q578.0.lcssa, %for.end672 ], [ %q578.10.lcssa, %for.inc716 ], !dbg !2667
  call void @llvm.dbg.value(metadata ptr %q578.7.lcssa, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.7.lcssa, metadata !816, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %380, metadata !795, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !821
  %cmp7223875 = icmp sgt i64 %380, 0, !dbg !2776
  br i1 %cmp7223875, label %for.cond725.preheader.lr.ph, label %for.end753, !dbg !2779

for.cond725.preheader.lr.ph:                      ; preds = %for.end718
  call void @llvm.dbg.value(metadata i64 %380, metadata !795, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !821
  %403 = load float, ptr %red134, align 8
  %cmp.i.i3375 = fcmp ole float %403, 0.000000e+00
  %cmp1.i.i3376 = fcmp oge float %403, 6.553500e+04
  %add.i.i3378 = fadd float %403, 5.000000e-01
  %conv.i.i3379 = fptoui float %add.i.i3378 to i16
  %404 = load float, ptr %green148, align 4
  %cmp.i23.i3384 = fcmp ole float %404, 0.000000e+00
  %cmp1.i24.i3386 = fcmp oge float %404, 6.553500e+04
  %add.i26.i3388 = fadd float %404, 5.000000e-01
  %conv.i27.i3389 = fptoui float %add.i26.i3388 to i16
  %405 = load float, ptr %blue162, align 8
  %cmp.i31.i3394 = fcmp ole float %405, 0.000000e+00
  %cmp1.i32.i3396 = fcmp oge float %405, 6.553500e+04
  %add.i34.i3398 = fadd float %405, 5.000000e-01
  %conv.i35.i3399 = fptoui float %add.i34.i3398 to i16
  %406 = load float, ptr %opacity164, align 4
  %cmp.i39.i3403 = fcmp ole float %406, 0.000000e+00
  %cmp1.i40.i3405 = fcmp oge float %406, 6.553500e+04
  %add.i42.i3407 = fadd float %406, 5.000000e-01
  %conv.i43.i3408 = fptoui float %add.i42.i3407 to i16
  %colorspace.i3412 = getelementptr inbounds %struct._Image, ptr %call27, i64 0, i32 1
  %index11.i3421 = getelementptr inbounds %struct._MagickPixelPacket, ptr %highlight, i64 0, i32 9
  %407 = load i64, ptr %columns581, align 8, !tbaa !702
  %index11.i3479 = getelementptr inbounds %struct._MagickPixelPacket, ptr %shadow, i64 0, i32 9
  %index11.i3537 = getelementptr inbounds %struct._MagickPixelPacket, ptr %trough, i64 0, i32 9
  %brmerge4177 = or i1 %cmp.i.i3375, %cmp1.i.i3376
  %not.cmp.i.i3375 = xor i1 %cmp.i.i3375, true
  %.mux4178 = sext i1 %not.cmp.i.i3375 to i16
  %spec.select4297 = select i1 %brmerge4177, i16 %.mux4178, i16 %conv.i.i3379
  %brmerge4179 = or i1 %cmp.i23.i3384, %cmp1.i24.i3386
  %not.cmp.i23.i3384 = xor i1 %cmp.i23.i3384, true
  %.mux4180 = sext i1 %not.cmp.i23.i3384 to i16
  %spec.select4336 = select i1 %brmerge4179, i16 %.mux4180, i16 %conv.i27.i3389
  %brmerge4181 = or i1 %cmp.i31.i3394, %cmp1.i32.i3396
  %not.cmp.i31.i3394 = xor i1 %cmp.i31.i3394, true
  %.mux4182 = sext i1 %not.cmp.i31.i3394 to i16
  %spec.select4298 = select i1 %brmerge4181, i16 %.mux4182, i16 %conv.i35.i3399
  %brmerge4183 = or i1 %cmp.i39.i3403, %cmp1.i40.i3405
  %not.cmp.i39.i3403 = xor i1 %cmp.i39.i3403, true
  %.mux4184 = sext i1 %not.cmp.i39.i3403 to i16
  %spec.select4369 = select i1 %brmerge4183, i16 %.mux4184, i16 %conv.i43.i3408
  br label %for.cond725.preheader, !dbg !2779

for.cond721.loopexit:                             ; preds = %if.end745, %for.cond734.preheader
  %frame_indexes576.13.lcssa = phi ptr [ %frame_indexes576.12.lcssa, %for.cond734.preheader ], [ %incdec.ptr747, %if.end745 ], !dbg !2442
  %q578.13.lcssa = phi ptr [ %q578.12.lcssa, %for.cond734.preheader ], [ %incdec.ptr746, %if.end745 ], !dbg !2431
  call void @llvm.dbg.value(metadata ptr %q578.13.lcssa, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.13.lcssa, metadata !816, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %y.63878, metadata !795, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !821
  br i1 %cmp7263855, label %for.cond725.preheader, label %for.end753, !dbg !2779, !llvm.loop !2780

for.cond725.preheader:                            ; preds = %for.cond725.preheader.lr.ph, %for.cond721.loopexit
  %indvars.iv4400.in = phi i64 [ %380, %for.cond725.preheader.lr.ph ], [ %indvars.iv4400, %for.cond721.loopexit ]
  %y.63878.in = phi i64 [ %380, %for.cond725.preheader.lr.ph ], [ %y.63878, %for.cond721.loopexit ]
  %q578.113877 = phi ptr [ %q578.7.lcssa, %for.cond725.preheader.lr.ph ], [ %q578.13.lcssa, %for.cond721.loopexit ]
  %frame_indexes576.113876 = phi ptr [ %frame_indexes576.7.lcssa, %for.cond725.preheader.lr.ph ], [ %frame_indexes576.13.lcssa, %for.cond721.loopexit ]
  %indvars.iv4400 = add i64 %indvars.iv4400.in, -1, !dbg !2779
  %y.63878 = add nsw i64 %y.63878.in, -1, !dbg !2782
  call void @llvm.dbg.value(metadata ptr %q578.113877, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 0, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.113876, metadata !816, metadata !DIExpression()), !dbg !2431
  %cmp7263855 = icmp ugt i64 %y.63878.in, 1, !dbg !2783
  br i1 %cmp7263855, label %for.body728.lr.ph, label %for.cond734.preheader, !dbg !2787

for.body728.lr.ph:                                ; preds = %for.cond725.preheader
  %408 = load i32, ptr %colorspace.i3412, align 4, !tbaa !925
  %cmp.i3413 = icmp eq i32 %408, 12
  %409 = load float, ptr %index11.i3421, align 8
  %cmp.i47.i3422 = fcmp ole float %409, 0.000000e+00
  %cmp1.i48.i3424 = fcmp oge float %409, 6.553500e+04
  %add.i50.i3426 = fadd float %409, 5.000000e-01
  %conv.i51.i3427 = fptoui float %add.i50.i3426 to i16
  %brmerge4185 = or i1 %cmp.i47.i3422, %cmp1.i48.i3424
  %not.cmp.i47.i3422 = xor i1 %cmp.i47.i3422, true
  %.mux4186 = sext i1 %not.cmp.i47.i3422 to i16
  %spec.select4299 = select i1 %brmerge4185, i16 %.mux4186, i16 %conv.i51.i3427
  br label %for.body728, !dbg !2787

for.cond734.preheader:                            ; preds = %SetPixelPacket.exit3431, %for.cond725.preheader
  %frame_indexes576.12.lcssa = phi ptr [ %frame_indexes576.113876, %for.cond725.preheader ], [ %incdec.ptr730, %SetPixelPacket.exit3431 ], !dbg !2442
  %x577.9.lcssa = phi i64 [ 0, %for.cond725.preheader ], [ %indvars.iv4400, %SetPixelPacket.exit3431 ], !dbg !2788
  %q578.12.lcssa = phi ptr [ %q578.113877, %for.cond725.preheader ], [ %incdec.ptr729, %SetPixelPacket.exit3431 ], !dbg !2431
  call void @llvm.dbg.value(metadata ptr %q578.12.lcssa, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %x577.9.lcssa, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.12.lcssa, metadata !816, metadata !DIExpression()), !dbg !2431
  %cmp7363864 = icmp slt i64 %x577.9.lcssa, %407, !dbg !2789
  br i1 %cmp7363864, label %for.body738.lr.ph, label %for.cond721.loopexit, !dbg !2792

for.body738.lr.ph:                                ; preds = %for.cond734.preheader
  %sub740 = sub i64 %407, %y.63878
  %410 = load float, ptr %red173, align 8
  %cmp.i.i3433 = fcmp ole float %410, 0.000000e+00
  %cmp1.i.i3434 = fcmp oge float %410, 6.553500e+04
  %add.i.i3436 = fadd float %410, 5.000000e-01
  %conv.i.i3437 = fptoui float %add.i.i3436 to i16
  %411 = load float, ptr %green182, align 4
  %cmp.i23.i3442 = fcmp ole float %411, 0.000000e+00
  %cmp1.i24.i3444 = fcmp oge float %411, 6.553500e+04
  %add.i26.i3446 = fadd float %411, 5.000000e-01
  %conv.i27.i3447 = fptoui float %add.i26.i3446 to i16
  %412 = load float, ptr %blue191, align 8
  %cmp.i31.i3452 = fcmp ole float %412, 0.000000e+00
  %cmp1.i32.i3454 = fcmp oge float %412, 6.553500e+04
  %add.i34.i3456 = fadd float %412, 5.000000e-01
  %conv.i35.i3457 = fptoui float %add.i34.i3456 to i16
  %413 = load float, ptr %opacity193, align 4
  %cmp.i39.i3461 = fcmp ole float %413, 0.000000e+00
  %cmp1.i40.i3463 = fcmp oge float %413, 6.553500e+04
  %add.i42.i3465 = fadd float %413, 5.000000e-01
  %conv.i43.i3466 = fptoui float %add.i42.i3465 to i16
  %414 = load float, ptr %index11.i3479, align 8
  %cmp.i47.i3480 = fcmp ole float %414, 0.000000e+00
  %cmp1.i48.i3482 = fcmp oge float %414, 6.553500e+04
  %add.i50.i3484 = fadd float %414, 5.000000e-01
  %conv.i51.i3485 = fptoui float %add.i50.i3484 to i16
  %415 = load float, ptr %red202, align 8
  %cmp.i.i3491 = fcmp ole float %415, 0.000000e+00
  %cmp1.i.i3492 = fcmp oge float %415, 6.553500e+04
  %add.i.i3494 = fadd float %415, 5.000000e-01
  %conv.i.i3495 = fptoui float %add.i.i3494 to i16
  %416 = load float, ptr %green211, align 4
  %cmp.i23.i3500 = fcmp ole float %416, 0.000000e+00
  %cmp1.i24.i3502 = fcmp oge float %416, 6.553500e+04
  %add.i26.i3504 = fadd float %416, 5.000000e-01
  %conv.i27.i3505 = fptoui float %add.i26.i3504 to i16
  %417 = load float, ptr %blue220, align 8
  %cmp.i31.i3510 = fcmp ole float %417, 0.000000e+00
  %cmp1.i32.i3512 = fcmp oge float %417, 6.553500e+04
  %add.i34.i3514 = fadd float %417, 5.000000e-01
  %conv.i35.i3515 = fptoui float %add.i34.i3514 to i16
  %418 = load float, ptr %opacity222, align 4
  %cmp.i39.i3519 = fcmp ole float %418, 0.000000e+00
  %cmp1.i40.i3521 = fcmp oge float %418, 6.553500e+04
  %add.i42.i3523 = fadd float %418, 5.000000e-01
  %conv.i43.i3524 = fptoui float %add.i42.i3523 to i16
  %419 = load float, ptr %index11.i3537, align 8
  %cmp.i47.i3538 = fcmp ole float %419, 0.000000e+00
  %cmp1.i48.i3540 = fcmp oge float %419, 6.553500e+04
  %add.i50.i3542 = fadd float %419, 5.000000e-01
  %conv.i51.i3543 = fptoui float %add.i50.i3542 to i16
  %brmerge4187 = or i1 %cmp.i.i3433, %cmp1.i.i3434
  %not.cmp.i.i3433 = xor i1 %cmp.i.i3433, true
  %.mux4188 = sext i1 %not.cmp.i.i3433 to i16
  %spec.select4300 = select i1 %brmerge4187, i16 %.mux4188, i16 %conv.i.i3437
  %brmerge4189 = or i1 %cmp.i23.i3442, %cmp1.i24.i3444
  %not.cmp.i23.i3442 = xor i1 %cmp.i23.i3442, true
  %.mux4190 = sext i1 %not.cmp.i23.i3442 to i16
  %spec.select4337 = select i1 %brmerge4189, i16 %.mux4190, i16 %conv.i27.i3447
  %brmerge4191 = or i1 %cmp.i31.i3452, %cmp1.i32.i3454
  %not.cmp.i31.i3452 = xor i1 %cmp.i31.i3452, true
  %.mux4192 = sext i1 %not.cmp.i31.i3452 to i16
  %spec.select4301 = select i1 %brmerge4191, i16 %.mux4192, i16 %conv.i35.i3457
  %brmerge4193 = or i1 %cmp.i39.i3461, %cmp1.i40.i3463
  %not.cmp.i39.i3461 = xor i1 %cmp.i39.i3461, true
  %.mux4194 = sext i1 %not.cmp.i39.i3461 to i16
  %spec.select4370 = select i1 %brmerge4193, i16 %.mux4194, i16 %conv.i43.i3466
  %brmerge4195 = or i1 %cmp.i47.i3480, %cmp1.i48.i3482
  %not.cmp.i47.i3480 = xor i1 %cmp.i47.i3480, true
  %.mux4196 = sext i1 %not.cmp.i47.i3480 to i16
  %spec.select4302 = select i1 %brmerge4195, i16 %.mux4196, i16 %conv.i51.i3485
  %brmerge4197 = or i1 %cmp.i.i3491, %cmp1.i.i3492
  %not.cmp.i.i3491 = xor i1 %cmp.i.i3491, true
  %.mux4198 = sext i1 %not.cmp.i.i3491 to i16
  %spec.select4303 = select i1 %brmerge4197, i16 %.mux4198, i16 %conv.i.i3495
  %brmerge4199 = or i1 %cmp.i23.i3500, %cmp1.i24.i3502
  %not.cmp.i23.i3500 = xor i1 %cmp.i23.i3500, true
  %.mux4200 = sext i1 %not.cmp.i23.i3500 to i16
  %spec.select4338 = select i1 %brmerge4199, i16 %.mux4200, i16 %conv.i27.i3505
  %brmerge4201 = or i1 %cmp.i31.i3510, %cmp1.i32.i3512
  %not.cmp.i31.i3510 = xor i1 %cmp.i31.i3510, true
  %.mux4202 = sext i1 %not.cmp.i31.i3510 to i16
  %spec.select4304 = select i1 %brmerge4201, i16 %.mux4202, i16 %conv.i35.i3515
  %brmerge4203 = or i1 %cmp.i39.i3519, %cmp1.i40.i3521
  %not.cmp.i39.i3519 = xor i1 %cmp.i39.i3519, true
  %.mux4204 = sext i1 %not.cmp.i39.i3519 to i16
  %spec.select4371 = select i1 %brmerge4203, i16 %.mux4204, i16 %conv.i43.i3524
  %brmerge4205 = or i1 %cmp.i47.i3538, %cmp1.i48.i3540
  %not.cmp.i47.i3538 = xor i1 %cmp.i47.i3538, true
  %.mux4206 = sext i1 %not.cmp.i47.i3538 to i16
  %spec.select4305 = select i1 %brmerge4205, i16 %.mux4206, i16 %conv.i51.i3543
  br label %for.body738, !dbg !2792

for.body728:                                      ; preds = %for.body728.lr.ph, %SetPixelPacket.exit3431
  %q578.123860 = phi ptr [ %q578.113877, %for.body728.lr.ph ], [ %incdec.ptr729, %SetPixelPacket.exit3431 ]
  %x577.93859 = phi i64 [ 0, %for.body728.lr.ph ], [ %inc732, %SetPixelPacket.exit3431 ]
  %frame_indexes576.123856 = phi ptr [ %frame_indexes576.113876, %for.body728.lr.ph ], [ %incdec.ptr730, %SetPixelPacket.exit3431 ]
  call void @llvm.dbg.value(metadata ptr %q578.123860, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %x577.93859, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.123856, metadata !816, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata ptr %highlight, metadata !1676, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata ptr %q578.123860, metadata !1677, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.123856, metadata !1678, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata float %403, metadata !1685, metadata !DIExpression()), !dbg !2796
  %red1.i3382 = getelementptr inbounds %struct._PixelPacket, ptr %q578.123860, i64 0, i32 2, !dbg !2798
  store i16 %spec.select4297, ptr %red1.i3382, align 2, !dbg !2798, !tbaa !891
  call void @llvm.dbg.value(metadata float %404, metadata !1685, metadata !DIExpression()), !dbg !2799
  %green3.i3392 = getelementptr inbounds %struct._PixelPacket, ptr %q578.123860, i64 0, i32 1, !dbg !2801
  store i16 %spec.select4336, ptr %green3.i3392, align 2, !dbg !2801, !tbaa !894
  call void @llvm.dbg.value(metadata float %405, metadata !1685, metadata !DIExpression()), !dbg !2802
  store i16 %spec.select4298, ptr %q578.123860, align 2, !dbg !2804, !tbaa !897
  call void @llvm.dbg.value(metadata float %406, metadata !1685, metadata !DIExpression()), !dbg !2805
  %opacity7.i3411 = getelementptr inbounds %struct._PixelPacket, ptr %q578.123860, i64 0, i32 3, !dbg !2807
  store i16 %spec.select4369, ptr %opacity7.i3411, align 2, !dbg !2807, !tbaa !1006
  br i1 %cmp.i3413, label %if.then.i3420, label %lor.lhs.false.i3418, !dbg !2808

lor.lhs.false.i3418:                              ; preds = %for.body728
  %420 = load i32, ptr %call27, align 8, !dbg !2809, !tbaa !1707
  %cmp8.i3415 = icmp eq i32 %420, 2, !dbg !2810
  %cmp9.i3416 = icmp ne ptr %frame_indexes576.123856, null
  %or.cond.i3417 = and i1 %cmp9.i3416, %cmp8.i3415, !dbg !2811
  br i1 %or.cond.i3417, label %if.then10.i3423, label %SetPixelPacket.exit3431, !dbg !2811

if.then.i3420:                                    ; preds = %for.body728
  %cmp9.old.not.i3419 = icmp eq ptr %frame_indexes576.123856, null, !dbg !2812
  br i1 %cmp9.old.not.i3419, label %SetPixelPacket.exit3431, label %if.then10.i3423, !dbg !2813

if.then10.i3423:                                  ; preds = %if.then.i3420, %lor.lhs.false.i3418
  call void @llvm.dbg.value(metadata float %409, metadata !1685, metadata !DIExpression()), !dbg !2814
  store i16 %spec.select4299, ptr %frame_indexes576.123856, align 2, !dbg !2812, !tbaa !1734
  br label %SetPixelPacket.exit3431, !dbg !2812

SetPixelPacket.exit3431:                          ; preds = %lor.lhs.false.i3418, %if.then.i3420, %if.then10.i3423
  %incdec.ptr729 = getelementptr inbounds %struct._PixelPacket, ptr %q578.123860, i64 1, !dbg !2816
  call void @llvm.dbg.value(metadata ptr %incdec.ptr729, metadata !820, metadata !DIExpression()), !dbg !2431
  %incdec.ptr730 = getelementptr inbounds i16, ptr %frame_indexes576.123856, i64 1, !dbg !2817
  call void @llvm.dbg.value(metadata ptr %incdec.ptr730, metadata !816, metadata !DIExpression()), !dbg !2431
  %inc732 = add nuw nsw i64 %x577.93859, 1, !dbg !2818
  call void @llvm.dbg.value(metadata i64 %inc732, metadata !819, metadata !DIExpression()), !dbg !2431
  %cmp726 = icmp slt i64 %inc732, %y.63878, !dbg !2783
  br i1 %cmp726, label %for.body728, label %for.cond734.preheader, !dbg !2787, !llvm.loop !2819

for.body738:                                      ; preds = %for.body738.lr.ph, %if.end745
  %q578.133870 = phi ptr [ %q578.12.lcssa, %for.body738.lr.ph ], [ %incdec.ptr746, %if.end745 ]
  %x577.103869 = phi i64 [ %x577.9.lcssa, %for.body738.lr.ph ], [ %inc749, %if.end745 ]
  %frame_indexes576.133865 = phi ptr [ %frame_indexes576.12.lcssa, %for.body738.lr.ph ], [ %incdec.ptr747, %if.end745 ]
  call void @llvm.dbg.value(metadata ptr %q578.133870, metadata !820, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %x577.103869, metadata !819, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.133865, metadata !816, metadata !DIExpression()), !dbg !2431
  %cmp741.not = icmp slt i64 %x577.103869, %sub740, !dbg !2821
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1669, metadata !DIExpression()), !dbg !2826
  %red1.i3498 = getelementptr inbounds %struct._PixelPacket, ptr %q578.133870, i64 0, i32 2, !dbg !2828
  br i1 %cmp741.not, label %if.else744, label %if.then743, !dbg !2829

if.then743:                                       ; preds = %for.body738
  call void @llvm.dbg.value(metadata ptr %shadow, metadata !1676, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata ptr %q578.133870, metadata !1677, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.133865, metadata !1678, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata float %410, metadata !1685, metadata !DIExpression()), !dbg !2830
  store i16 %spec.select4300, ptr %red1.i3498, align 2, !dbg !2832, !tbaa !891
  call void @llvm.dbg.value(metadata float %411, metadata !1685, metadata !DIExpression()), !dbg !2833
  %green3.i3450 = getelementptr inbounds %struct._PixelPacket, ptr %q578.133870, i64 0, i32 1, !dbg !2835
  store i16 %spec.select4337, ptr %green3.i3450, align 2, !dbg !2835, !tbaa !894
  call void @llvm.dbg.value(metadata float %412, metadata !1685, metadata !DIExpression()), !dbg !2836
  store i16 %spec.select4301, ptr %q578.133870, align 2, !dbg !2838, !tbaa !897
  call void @llvm.dbg.value(metadata float %413, metadata !1685, metadata !DIExpression()), !dbg !2839
  %opacity7.i3469 = getelementptr inbounds %struct._PixelPacket, ptr %q578.133870, i64 0, i32 3, !dbg !2841
  store i16 %spec.select4370, ptr %opacity7.i3469, align 2, !dbg !2841, !tbaa !1006
  %421 = load i32, ptr %colorspace.i3412, align 4, !dbg !2842, !tbaa !925
  %cmp.i3471 = icmp eq i32 %421, 12, !dbg !2843
  br i1 %cmp.i3471, label %if.then.i3478, label %lor.lhs.false.i3476, !dbg !2844

lor.lhs.false.i3476:                              ; preds = %if.then743
  %422 = load i32, ptr %call27, align 8, !dbg !2845, !tbaa !1707
  %cmp8.i3473 = icmp eq i32 %422, 2, !dbg !2846
  %cmp9.i3474 = icmp ne ptr %frame_indexes576.133865, null
  %or.cond.i3475 = and i1 %cmp9.i3474, %cmp8.i3473, !dbg !2847
  br i1 %or.cond.i3475, label %if.end745.sink.split, label %if.end745, !dbg !2847

if.then.i3478:                                    ; preds = %if.then743
  %cmp9.old.not.i3477 = icmp eq ptr %frame_indexes576.133865, null, !dbg !2848
  br i1 %cmp9.old.not.i3477, label %if.end745, label %if.end745.sink.split, !dbg !2849

if.else744:                                       ; preds = %for.body738
  call void @llvm.dbg.value(metadata ptr %trough, metadata !1676, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata ptr %q578.133870, metadata !1677, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata ptr %frame_indexes576.133865, metadata !1678, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata float %415, metadata !1685, metadata !DIExpression()), !dbg !2850
  store i16 %spec.select4303, ptr %red1.i3498, align 2, !dbg !2852, !tbaa !891
  call void @llvm.dbg.value(metadata float %416, metadata !1685, metadata !DIExpression()), !dbg !2853
  %green3.i3508 = getelementptr inbounds %struct._PixelPacket, ptr %q578.133870, i64 0, i32 1, !dbg !2855
  store i16 %spec.select4338, ptr %green3.i3508, align 2, !dbg !2855, !tbaa !894
  call void @llvm.dbg.value(metadata float %417, metadata !1685, metadata !DIExpression()), !dbg !2856
  store i16 %spec.select4304, ptr %q578.133870, align 2, !dbg !2858, !tbaa !897
  call void @llvm.dbg.value(metadata float %418, metadata !1685, metadata !DIExpression()), !dbg !2859
  %opacity7.i3527 = getelementptr inbounds %struct._PixelPacket, ptr %q578.133870, i64 0, i32 3, !dbg !2861
  store i16 %spec.select4371, ptr %opacity7.i3527, align 2, !dbg !2861, !tbaa !1006
  %423 = load i32, ptr %colorspace.i3412, align 4, !dbg !2862, !tbaa !925
  %cmp.i3529 = icmp eq i32 %423, 12, !dbg !2863
  br i1 %cmp.i3529, label %if.then.i3536, label %lor.lhs.false.i3534, !dbg !2864

lor.lhs.false.i3534:                              ; preds = %if.else744
  %424 = load i32, ptr %call27, align 8, !dbg !2865, !tbaa !1707
  %cmp8.i3531 = icmp eq i32 %424, 2, !dbg !2866
  %cmp9.i3532 = icmp ne ptr %frame_indexes576.133865, null
  %or.cond.i3533 = and i1 %cmp9.i3532, %cmp8.i3531, !dbg !2867
  br i1 %or.cond.i3533, label %if.end745.sink.split, label %if.end745, !dbg !2867

if.then.i3536:                                    ; preds = %if.else744
  %cmp9.old.not.i3535 = icmp eq ptr %frame_indexes576.133865, null, !dbg !2868
  br i1 %cmp9.old.not.i3535, label %if.end745, label %if.end745.sink.split, !dbg !2869

if.end745.sink.split:                             ; preds = %lor.lhs.false.i3534, %if.then.i3536, %lor.lhs.false.i3476, %if.then.i3478
  %spec.select4305.sink = phi i16 [ %spec.select4302, %if.then.i3478 ], [ %spec.select4302, %lor.lhs.false.i3476 ], [ %spec.select4305, %if.then.i3536 ], [ %spec.select4305, %lor.lhs.false.i3534 ]
  store i16 %spec.select4305.sink, ptr %frame_indexes576.133865, align 2, !dbg !2828, !tbaa !1734
  br label %if.end745, !dbg !2870

if.end745:                                        ; preds = %if.end745.sink.split, %if.then.i3536, %lor.lhs.false.i3534, %if.then.i3478, %lor.lhs.false.i3476
  %incdec.ptr746 = getelementptr inbounds %struct._PixelPacket, ptr %q578.133870, i64 1, !dbg !2870
  call void @llvm.dbg.value(metadata ptr %incdec.ptr746, metadata !820, metadata !DIExpression()), !dbg !2431
  %incdec.ptr747 = getelementptr inbounds i16, ptr %frame_indexes576.133865, i64 1, !dbg !2871
  call void @llvm.dbg.value(metadata ptr %incdec.ptr747, metadata !816, metadata !DIExpression()), !dbg !2431
  %inc749 = add nuw nsw i64 %x577.103869, 1, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %inc749, metadata !819, metadata !DIExpression()), !dbg !2431
  %cmp736 = icmp slt i64 %inc749, %407, !dbg !2789
  br i1 %cmp736, label %for.body738, label %for.cond721.loopexit, !dbg !2792, !llvm.loop !2873

for.end753:                                       ; preds = %for.cond721.loopexit, %for.end718
  %call754 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call229, ptr noundef %exception) #8, !dbg !2875
  br label %if.end756, !dbg !2876

if.end756:                                        ; preds = %if.then575, %for.end753, %for.end562
  %call757 = call ptr @DestroyCacheView(ptr noundef %call229) #7, !dbg !2877
  call void @llvm.dbg.value(metadata ptr %call757, metadata !767, metadata !DIExpression()), !dbg !821
  %call758 = call ptr @DestroyCacheView(ptr noundef %call228) #7, !dbg !2878
  call void @llvm.dbg.value(metadata ptr %call758, metadata !762, metadata !DIExpression()), !dbg !821
  %compose759 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 36, !dbg !2879
  %425 = load i32, ptr %compose759, align 8, !dbg !2879, !tbaa !2215
  switch i32 %425, label %if.then770 [
    i32 13, label %if.end785
    i32 40, label %lor.lhs.false766
  ], !dbg !2881

lor.lhs.false766:                                 ; preds = %if.end756
  %matte767 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2882
  %426 = load i32, ptr %matte767, align 8, !dbg !2882, !tbaa !945
  %cmp768.not = icmp eq i32 %426, 0, !dbg !2883
  br i1 %cmp768.not, label %if.end785, label %if.then770, !dbg !2884

if.then770:                                       ; preds = %if.end756, %lor.lhs.false766
  %427 = load i64, ptr %outer_bevel, align 8, !dbg !2885, !tbaa !839
  %428 = load i64, ptr %x11, align 8, !dbg !2887, !tbaa !721
  %429 = load i64, ptr %inner_bevel, align 8, !dbg !2888, !tbaa !843
  %sub773 = add i64 %429, %427, !dbg !2889
  %add774 = sub i64 %sub773, %add, !dbg !2890
  %add776 = add i64 %add774, %428, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %add776, metadata !791, metadata !DIExpression()), !dbg !821
  %430 = load i64, ptr %y14, align 8, !dbg !2892, !tbaa !724
  %add782 = add i64 %add774, %430, !dbg !2893
  call void @llvm.dbg.value(metadata i64 %add782, metadata !795, metadata !DIExpression()), !dbg !821
  %call784 = call i32 @CompositeImage(ptr noundef %call27, i32 noundef %425, ptr noundef nonnull %image, i64 noundef %add776, i64 noundef %add782) #7, !dbg !2894
  br label %if.end785, !dbg !2895

if.end785:                                        ; preds = %if.end756, %if.then770, %lor.lhs.false766
  %cmp786 = icmp eq i32 %status.0.lcssa, 0, !dbg !2896
  br i1 %cmp786, label %if.then788, label %cleanup791, !dbg !2898

if.then788:                                       ; preds = %if.end785
  %call789 = call ptr @DestroyImage(ptr noundef %call27) #7, !dbg !2899
  call void @llvm.dbg.value(metadata ptr %call789, metadata !768, metadata !DIExpression()), !dbg !821
  br label %cleanup791, !dbg !2900

cleanup791:                                       ; preds = %if.end785, %if.then788, %if.end24, %if.then33, %if.then20, %if.then3
  %retval.0 = phi ptr [ null, %if.then3 ], [ null, %if.then20 ], [ null, %if.then33 ], [ null, %if.end24 ], [ %call789, %if.then788 ], [ %call27, %if.end785 ], !dbg !821
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %trough) #7, !dbg !2901
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %shadow) #7, !dbg !2901
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %matte) #7, !dbg !2901
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %interior) #7, !dbg !2901
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %highlight) #7, !dbg !2901
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %border) #7, !dbg !2901
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %accentuate) #7, !dbg !2901
  ret ptr %retval.0, !dbg !2901
}

declare !dbg !2902 ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !2905 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !2909 i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2913 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2918 i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2921 i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2927 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

declare !dbg !2930 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2933 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !2934 ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !2938 ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !2941 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: hot
declare !dbg !2944 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !2949 ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

declare !dbg !2952 ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !2958 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

declare !dbg !2961 i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @RaiseImage(ptr noundef %image, ptr nocapture noundef readonly %raise_info, i32 noundef %raise) local_unnamed_addr #0 !dbg !2965 {
entry:
  %message.i999 = alloca [4096 x i8], align 16
  %message.i917 = alloca [4096 x i8], align 16
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !2969, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %raise_info, metadata !2970, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i32 %raise, metadata !2971, metadata !DIExpression()), !dbg !3003
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !3004
  %0 = load i32, ptr %debug, align 8, !dbg !3004, !tbaa !677
  %cmp.not = icmp eq i32 %0, 0, !dbg !3006
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !3007

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3008
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 717, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #7, !dbg !3009
  br label %if.end, !dbg !3010

if.end:                                           ; preds = %if.then, %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !3011
  %1 = load i64, ptr %columns, align 8, !dbg !3011, !tbaa !702
  %2 = load i64, ptr %raise_info, align 8, !dbg !3013, !tbaa !704
  %shl = shl i64 %2, 1, !dbg !3014
  %cmp1.not = icmp ugt i64 %1, %shl, !dbg !3015
  br i1 %cmp1.not, label %lor.lhs.false, label %if.then6, !dbg !3016

lor.lhs.false:                                    ; preds = %if.end
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !3017
  %3 = load i64, ptr %rows, align 8, !dbg !3017, !tbaa !711
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %raise_info, i64 0, i32 1, !dbg !3018
  %4 = load i64, ptr %height, align 8, !dbg !3018, !tbaa !713
  %shl2 = shl i64 %4, 1, !dbg !3019
  %cmp3.not = icmp ugt i64 %3, %shl2, !dbg !3020
  br i1 %cmp3.not, label %if.end12, label %if.then6, !dbg !3021

if.then6:                                         ; preds = %if.end, %lor.lhs.false
  %exception7 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !3022
  %filename8 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3022
  %call10 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 722, i32 noundef 410, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename8) #7, !dbg !3022
  br label %cleanup626, !dbg !3022

if.end12:                                         ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i16 -1, metadata !2976, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i16 0, metadata !2977, metadata !DIExpression()), !dbg !3003
  %cmp13 = icmp eq i32 %raise, 0, !dbg !3025
  %spec.select = select i1 %cmp13, float 0.000000e+00, float 6.553500e+04, !dbg !3027
  %spec.select795 = select i1 %cmp13, float 6.553500e+04, float 0.000000e+00, !dbg !3027
  call void @llvm.dbg.value(metadata i16 undef, metadata !2977, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i16 undef, metadata !2976, metadata !DIExpression()), !dbg !3003
  %call16 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %image, i32 noundef 1) #7, !dbg !3028
  %cmp17 = icmp eq i32 %call16, 0, !dbg !3030
  br i1 %cmp17, label %cleanup626, label %if.end19, !dbg !3031

if.end19:                                         ; preds = %if.end12
  call void @llvm.dbg.value(metadata i32 1, metadata !2974, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 0, metadata !2975, metadata !DIExpression()), !dbg !3003
  %exception20 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !3032
  call void @llvm.dbg.value(metadata ptr %exception20, metadata !2973, metadata !DIExpression()), !dbg !3003
  %call21 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %image, ptr noundef nonnull %exception20) #7, !dbg !3033
  call void @llvm.dbg.value(metadata ptr %call21, metadata !2972, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 0, metadata !2978, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i32 1, metadata !2974, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 0, metadata !2975, metadata !DIExpression()), !dbg !3003
  %5 = load i64, ptr %height, align 8, !dbg !3034, !tbaa !713
  %cmp231027 = icmp sgt i64 %5, 0, !dbg !3035
  br i1 %cmp231027, label %for.body.lr.ph, label %for.cond221.preheader, !dbg !3036

for.body.lr.ph:                                   ; preds = %if.end19
  %mul42 = fmul float %spec.select, 1.670500e+04
  %mul96 = fmul float %spec.select, 3.084000e+04
  %mul156 = fmul float %spec.select795, 1.670500e+04
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !3036

for.cond221.preheader:                            ; preds = %cleanup, %if.end19
  %progress.0.lcssa = phi i64 [ 0, %if.end19 ], [ %progress.2, %cleanup ], !dbg !3037
  %status.0.lcssa = phi i32 [ 1, %if.end19 ], [ %status.4, %cleanup ], !dbg !3038
  %6 = phi i64 [ %5, %if.end19 ], [ %33, %cleanup ], !dbg !3039
  call void @llvm.dbg.value(metadata i32 %status.0.lcssa, metadata !2974, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %6, metadata !2978, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %progress.0.lcssa, metadata !2975, metadata !DIExpression()), !dbg !3003
  %7 = load i64, ptr %rows, align 8, !dbg !3040, !tbaa !711
  %sub2241051 = sub i64 %7, %6, !dbg !3041
  %cmp2251052 = icmp slt i64 %6, %sub2241051, !dbg !3042
  br i1 %cmp2251052, label %for.body227.lr.ph, label %for.cond399.preheader, !dbg !3043

for.body227.lr.ph:                                ; preds = %for.cond221.preheader
  %mul256 = fmul float %spec.select, 1.670500e+04
  %mul327 = fmul float %spec.select795, 1.670500e+04
  %progress_monitor376 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i920 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i922 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body227, !dbg !3043

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cleanup ]
  %status.01032 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %y.01029 = phi i64 [ 0, %for.body.lr.ph ], [ %inc218, %cleanup ]
  %progress.01028 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.01032, metadata !2974, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %y.01029, metadata !2978, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %progress.01028, metadata !2975, metadata !DIExpression()), !dbg !3003
  %cmp24 = icmp eq i32 %status.01032, 0, !dbg !3044
  br i1 %cmp24, label %cleanup, label %if.end26, !dbg !3046

if.end26:                                         ; preds = %for.body
  %8 = load i64, ptr %columns, align 8, !dbg !3047, !tbaa !702
  %call28 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call21, i64 noundef 0, i64 noundef %y.01029, i64 noundef %8, i64 noundef 1, ptr noundef nonnull %exception20) #8, !dbg !3048
  call void @llvm.dbg.value(metadata ptr %call28, metadata !2983, metadata !DIExpression()), !dbg !3049
  %cmp29 = icmp eq ptr %call28, null, !dbg !3050
  br i1 %cmp29, label %cleanup, label %for.cond32.preheader, !dbg !3052

for.cond32.preheader:                             ; preds = %if.end26
  call void @llvm.dbg.value(metadata ptr %call28, metadata !2983, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 0, metadata !2979, metadata !DIExpression()), !dbg !3049
  %cmp331014.not = icmp eq i64 %y.01029, 0, !dbg !3053
  br i1 %cmp331014.not, label %for.cond79.preheader, label %for.body34, !dbg !3056

for.cond79.preheader:                             ; preds = %ClampToQuantum.exit817, %for.cond32.preheader
  %q.0.lcssa = phi ptr [ %call28, %for.cond32.preheader ], [ %incdec.ptr, %ClampToQuantum.exit817 ], !dbg !3049
  %9 = load i64, ptr %columns, align 8, !tbaa !702
  %sub81 = sub i64 %9, %y.01029
  call void @llvm.dbg.value(metadata ptr %q.0.lcssa, metadata !2983, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %y.01029, metadata !2979, metadata !DIExpression()), !dbg !3049
  %cmp821018 = icmp slt i64 %y.01029, %sub81, !dbg !3057
  br i1 %cmp821018, label %for.body84, label %for.cond140.preheader, !dbg !3060

for.body34:                                       ; preds = %for.cond32.preheader, %ClampToQuantum.exit817
  %q.01016 = phi ptr [ %incdec.ptr, %ClampToQuantum.exit817 ], [ %call28, %for.cond32.preheader ]
  %x.01015 = phi i64 [ %inc, %ClampToQuantum.exit817 ], [ 0, %for.cond32.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.01016, metadata !2983, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %x.01015, metadata !2979, metadata !DIExpression()), !dbg !3049
  %red = getelementptr inbounds %struct._PixelPacket, ptr %q.01016, i64 0, i32 2, !dbg !3061
  %10 = load i16, ptr %red, align 2, !dbg !3061, !tbaa !891
  %conv = uitofp i16 %10 to float, !dbg !3061
  %11 = call float @llvm.fmuladd.f32(float %conv, float 4.883000e+04, float %mul42), !dbg !3061
  %conv43 = fpext float %11 to double, !dbg !3061
  %mul = fmul double %conv43, 0x3EF0001000100010, !dbg !3061
  %conv44 = fptrunc double %mul to float, !dbg !3061
  call void @llvm.dbg.value(metadata float %conv44, metadata !1685, metadata !DIExpression()), !dbg !3063
  %cmp.i = fcmp ugt float %conv44, 0.000000e+00, !dbg !3065
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !3067

if.end.i:                                         ; preds = %for.body34
  %cmp1.i = fcmp ult float %conv44, 6.553500e+04, !dbg !3068
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !3070

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv44, 5.000000e-01, !dbg !3071
  %conv.i = fptoui float %add.i to i16, !dbg !3072
  br label %ClampToQuantum.exit, !dbg !3073

ClampToQuantum.exit:                              ; preds = %for.body34, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %for.body34 ], [ -1, %if.end.i ], !dbg !3063
  store i16 %retval.0.i, ptr %red, align 2, !dbg !3061, !tbaa !891
  %green = getelementptr inbounds %struct._PixelPacket, ptr %q.01016, i64 0, i32 1, !dbg !3074
  %12 = load i16, ptr %green, align 2, !dbg !3074, !tbaa !894
  %conv47 = uitofp i16 %12 to float, !dbg !3074
  %13 = call float @llvm.fmuladd.f32(float %conv47, float 4.883000e+04, float %mul42), !dbg !3074
  %conv58 = fpext float %13 to double, !dbg !3074
  %mul59 = fmul double %conv58, 0x3EF0001000100010, !dbg !3074
  %conv60 = fptrunc double %mul59 to float, !dbg !3074
  call void @llvm.dbg.value(metadata float %conv60, metadata !1685, metadata !DIExpression()), !dbg !3075
  %cmp.i802 = fcmp ugt float %conv60, 0.000000e+00, !dbg !3077
  br i1 %cmp.i802, label %if.end.i804, label %ClampToQuantum.exit809, !dbg !3078

if.end.i804:                                      ; preds = %ClampToQuantum.exit
  %cmp1.i803 = fcmp ult float %conv60, 6.553500e+04, !dbg !3079
  br i1 %cmp1.i803, label %if.end3.i807, label %ClampToQuantum.exit809, !dbg !3080

if.end3.i807:                                     ; preds = %if.end.i804
  %add.i805 = fadd float %conv60, 5.000000e-01, !dbg !3081
  %conv.i806 = fptoui float %add.i805 to i16, !dbg !3082
  br label %ClampToQuantum.exit809, !dbg !3083

ClampToQuantum.exit809:                           ; preds = %ClampToQuantum.exit, %if.end.i804, %if.end3.i807
  %retval.0.i808 = phi i16 [ %conv.i806, %if.end3.i807 ], [ 0, %ClampToQuantum.exit ], [ -1, %if.end.i804 ], !dbg !3075
  store i16 %retval.0.i808, ptr %green, align 2, !dbg !3074, !tbaa !894
  %14 = load i16, ptr %q.01016, align 2, !dbg !3084, !tbaa !897
  %conv63 = uitofp i16 %14 to float, !dbg !3084
  %15 = call float @llvm.fmuladd.f32(float %conv63, float 4.883000e+04, float %mul42), !dbg !3084
  %conv74 = fpext float %15 to double, !dbg !3084
  %mul75 = fmul double %conv74, 0x3EF0001000100010, !dbg !3084
  %conv76 = fptrunc double %mul75 to float, !dbg !3084
  call void @llvm.dbg.value(metadata float %conv76, metadata !1685, metadata !DIExpression()), !dbg !3085
  %cmp.i810 = fcmp ugt float %conv76, 0.000000e+00, !dbg !3087
  br i1 %cmp.i810, label %if.end.i812, label %ClampToQuantum.exit817, !dbg !3088

if.end.i812:                                      ; preds = %ClampToQuantum.exit809
  %cmp1.i811 = fcmp ult float %conv76, 6.553500e+04, !dbg !3089
  br i1 %cmp1.i811, label %if.end3.i815, label %ClampToQuantum.exit817, !dbg !3090

if.end3.i815:                                     ; preds = %if.end.i812
  %add.i813 = fadd float %conv76, 5.000000e-01, !dbg !3091
  %conv.i814 = fptoui float %add.i813 to i16, !dbg !3092
  br label %ClampToQuantum.exit817, !dbg !3093

ClampToQuantum.exit817:                           ; preds = %ClampToQuantum.exit809, %if.end.i812, %if.end3.i815
  %retval.0.i816 = phi i16 [ %conv.i814, %if.end3.i815 ], [ 0, %ClampToQuantum.exit809 ], [ -1, %if.end.i812 ], !dbg !3085
  store i16 %retval.0.i816, ptr %q.01016, align 2, !dbg !3084, !tbaa !897
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.01016, i64 1, !dbg !3094
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2983, metadata !DIExpression()), !dbg !3049
  %inc = add nuw nsw i64 %x.01015, 1, !dbg !3095
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2979, metadata !DIExpression()), !dbg !3049
  %exitcond.not = icmp eq i64 %inc, %y.01029, !dbg !3053
  br i1 %exitcond.not, label %for.cond79.preheader, label %for.body34, !dbg !3056, !llvm.loop !3096

for.cond140.preheader.loopexit:                   ; preds = %ClampToQuantum.exit841
  %16 = add i64 %9, %indvars.iv, !dbg !3060
  br label %for.cond140.preheader, !dbg !3098

for.cond140.preheader:                            ; preds = %for.cond140.preheader.loopexit, %for.cond79.preheader
  %x.1.lcssa = phi i64 [ %y.01029, %for.cond79.preheader ], [ %16, %for.cond140.preheader.loopexit ], !dbg !3049
  %q.1.lcssa = phi ptr [ %q.0.lcssa, %for.cond79.preheader ], [ %incdec.ptr136, %for.cond140.preheader.loopexit ], !dbg !3049
  call void @llvm.dbg.value(metadata ptr %q.1.lcssa, metadata !2983, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %x.1.lcssa, metadata !2979, metadata !DIExpression()), !dbg !3049
  %cmp1421024 = icmp slt i64 %x.1.lcssa, %9, !dbg !3098
  br i1 %cmp1421024, label %for.body144, label %for.end199, !dbg !3101

for.body84:                                       ; preds = %for.cond79.preheader, %ClampToQuantum.exit841
  %q.11020 = phi ptr [ %incdec.ptr136, %ClampToQuantum.exit841 ], [ %q.0.lcssa, %for.cond79.preheader ]
  %x.11019 = phi i64 [ %inc138, %ClampToQuantum.exit841 ], [ %y.01029, %for.cond79.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.11020, metadata !2983, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %x.11019, metadata !2979, metadata !DIExpression()), !dbg !3049
  %red85 = getelementptr inbounds %struct._PixelPacket, ptr %q.11020, i64 0, i32 2, !dbg !3102
  %17 = load i16, ptr %red85, align 2, !dbg !3102, !tbaa !891
  %conv86 = uitofp i16 %17 to float, !dbg !3102
  %18 = call float @llvm.fmuladd.f32(float %conv86, float 3.469500e+04, float %mul96), !dbg !3102
  %conv97 = fpext float %18 to double, !dbg !3102
  %mul98 = fmul double %conv97, 0x3EF0001000100010, !dbg !3102
  %conv99 = fptrunc double %mul98 to float, !dbg !3102
  call void @llvm.dbg.value(metadata float %conv99, metadata !1685, metadata !DIExpression()), !dbg !3104
  %cmp.i818 = fcmp ugt float %conv99, 0.000000e+00, !dbg !3106
  br i1 %cmp.i818, label %if.end.i820, label %ClampToQuantum.exit825, !dbg !3107

if.end.i820:                                      ; preds = %for.body84
  %cmp1.i819 = fcmp ult float %conv99, 6.553500e+04, !dbg !3108
  br i1 %cmp1.i819, label %if.end3.i823, label %ClampToQuantum.exit825, !dbg !3109

if.end3.i823:                                     ; preds = %if.end.i820
  %add.i821 = fadd float %conv99, 5.000000e-01, !dbg !3110
  %conv.i822 = fptoui float %add.i821 to i16, !dbg !3111
  br label %ClampToQuantum.exit825, !dbg !3112

ClampToQuantum.exit825:                           ; preds = %for.body84, %if.end.i820, %if.end3.i823
  %retval.0.i824 = phi i16 [ %conv.i822, %if.end3.i823 ], [ 0, %for.body84 ], [ -1, %if.end.i820 ], !dbg !3104
  store i16 %retval.0.i824, ptr %red85, align 2, !dbg !3102, !tbaa !891
  %green102 = getelementptr inbounds %struct._PixelPacket, ptr %q.11020, i64 0, i32 1, !dbg !3113
  %19 = load i16, ptr %green102, align 2, !dbg !3113, !tbaa !894
  %conv103 = uitofp i16 %19 to float, !dbg !3113
  %20 = call float @llvm.fmuladd.f32(float %conv103, float 3.469500e+04, float %mul96), !dbg !3113
  %conv114 = fpext float %20 to double, !dbg !3113
  %mul115 = fmul double %conv114, 0x3EF0001000100010, !dbg !3113
  %conv116 = fptrunc double %mul115 to float, !dbg !3113
  call void @llvm.dbg.value(metadata float %conv116, metadata !1685, metadata !DIExpression()), !dbg !3114
  %cmp.i826 = fcmp ugt float %conv116, 0.000000e+00, !dbg !3116
  br i1 %cmp.i826, label %if.end.i828, label %ClampToQuantum.exit833, !dbg !3117

if.end.i828:                                      ; preds = %ClampToQuantum.exit825
  %cmp1.i827 = fcmp ult float %conv116, 6.553500e+04, !dbg !3118
  br i1 %cmp1.i827, label %if.end3.i831, label %ClampToQuantum.exit833, !dbg !3119

if.end3.i831:                                     ; preds = %if.end.i828
  %add.i829 = fadd float %conv116, 5.000000e-01, !dbg !3120
  %conv.i830 = fptoui float %add.i829 to i16, !dbg !3121
  br label %ClampToQuantum.exit833, !dbg !3122

ClampToQuantum.exit833:                           ; preds = %ClampToQuantum.exit825, %if.end.i828, %if.end3.i831
  %retval.0.i832 = phi i16 [ %conv.i830, %if.end3.i831 ], [ 0, %ClampToQuantum.exit825 ], [ -1, %if.end.i828 ], !dbg !3114
  store i16 %retval.0.i832, ptr %green102, align 2, !dbg !3113, !tbaa !894
  %21 = load i16, ptr %q.11020, align 2, !dbg !3123, !tbaa !897
  %conv120 = uitofp i16 %21 to float, !dbg !3123
  %22 = call float @llvm.fmuladd.f32(float %conv120, float 3.469500e+04, float %mul96), !dbg !3123
  %conv131 = fpext float %22 to double, !dbg !3123
  %mul132 = fmul double %conv131, 0x3EF0001000100010, !dbg !3123
  %conv133 = fptrunc double %mul132 to float, !dbg !3123
  call void @llvm.dbg.value(metadata float %conv133, metadata !1685, metadata !DIExpression()), !dbg !3124
  %cmp.i834 = fcmp ugt float %conv133, 0.000000e+00, !dbg !3126
  br i1 %cmp.i834, label %if.end.i836, label %ClampToQuantum.exit841, !dbg !3127

if.end.i836:                                      ; preds = %ClampToQuantum.exit833
  %cmp1.i835 = fcmp ult float %conv133, 6.553500e+04, !dbg !3128
  br i1 %cmp1.i835, label %if.end3.i839, label %ClampToQuantum.exit841, !dbg !3129

if.end3.i839:                                     ; preds = %if.end.i836
  %add.i837 = fadd float %conv133, 5.000000e-01, !dbg !3130
  %conv.i838 = fptoui float %add.i837 to i16, !dbg !3131
  br label %ClampToQuantum.exit841, !dbg !3132

ClampToQuantum.exit841:                           ; preds = %ClampToQuantum.exit833, %if.end.i836, %if.end3.i839
  %retval.0.i840 = phi i16 [ %conv.i838, %if.end3.i839 ], [ 0, %ClampToQuantum.exit833 ], [ -1, %if.end.i836 ], !dbg !3124
  store i16 %retval.0.i840, ptr %q.11020, align 2, !dbg !3123, !tbaa !897
  %incdec.ptr136 = getelementptr inbounds %struct._PixelPacket, ptr %q.11020, i64 1, !dbg !3133
  call void @llvm.dbg.value(metadata ptr %incdec.ptr136, metadata !2983, metadata !DIExpression()), !dbg !3049
  %inc138 = add nuw nsw i64 %x.11019, 1, !dbg !3134
  call void @llvm.dbg.value(metadata i64 %inc138, metadata !2979, metadata !DIExpression()), !dbg !3049
  %cmp82 = icmp slt i64 %inc138, %sub81, !dbg !3057
  br i1 %cmp82, label %for.body84, label %for.cond140.preheader.loopexit, !dbg !3060, !llvm.loop !3135

for.body144:                                      ; preds = %for.cond140.preheader, %ClampToQuantum.exit865
  %q.21026 = phi ptr [ %incdec.ptr196, %ClampToQuantum.exit865 ], [ %q.1.lcssa, %for.cond140.preheader ]
  %x.21025 = phi i64 [ %inc198, %ClampToQuantum.exit865 ], [ %x.1.lcssa, %for.cond140.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.21026, metadata !2983, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %x.21025, metadata !2979, metadata !DIExpression()), !dbg !3049
  %red145 = getelementptr inbounds %struct._PixelPacket, ptr %q.21026, i64 0, i32 2, !dbg !3137
  %23 = load i16, ptr %red145, align 2, !dbg !3137, !tbaa !891
  %conv146 = uitofp i16 %23 to float, !dbg !3137
  %24 = call float @llvm.fmuladd.f32(float %conv146, float 4.883000e+04, float %mul156), !dbg !3137
  %conv157 = fpext float %24 to double, !dbg !3137
  %mul158 = fmul double %conv157, 0x3EF0001000100010, !dbg !3137
  %conv159 = fptrunc double %mul158 to float, !dbg !3137
  call void @llvm.dbg.value(metadata float %conv159, metadata !1685, metadata !DIExpression()), !dbg !3139
  %cmp.i842 = fcmp ugt float %conv159, 0.000000e+00, !dbg !3141
  br i1 %cmp.i842, label %if.end.i844, label %ClampToQuantum.exit849, !dbg !3142

if.end.i844:                                      ; preds = %for.body144
  %cmp1.i843 = fcmp ult float %conv159, 6.553500e+04, !dbg !3143
  br i1 %cmp1.i843, label %if.end3.i847, label %ClampToQuantum.exit849, !dbg !3144

if.end3.i847:                                     ; preds = %if.end.i844
  %add.i845 = fadd float %conv159, 5.000000e-01, !dbg !3145
  %conv.i846 = fptoui float %add.i845 to i16, !dbg !3146
  br label %ClampToQuantum.exit849, !dbg !3147

ClampToQuantum.exit849:                           ; preds = %for.body144, %if.end.i844, %if.end3.i847
  %retval.0.i848 = phi i16 [ %conv.i846, %if.end3.i847 ], [ 0, %for.body144 ], [ -1, %if.end.i844 ], !dbg !3139
  store i16 %retval.0.i848, ptr %red145, align 2, !dbg !3137, !tbaa !891
  %green162 = getelementptr inbounds %struct._PixelPacket, ptr %q.21026, i64 0, i32 1, !dbg !3148
  %25 = load i16, ptr %green162, align 2, !dbg !3148, !tbaa !894
  %conv163 = uitofp i16 %25 to float, !dbg !3148
  %26 = call float @llvm.fmuladd.f32(float %conv163, float 4.883000e+04, float %mul156), !dbg !3148
  %conv174 = fpext float %26 to double, !dbg !3148
  %mul175 = fmul double %conv174, 0x3EF0001000100010, !dbg !3148
  %conv176 = fptrunc double %mul175 to float, !dbg !3148
  call void @llvm.dbg.value(metadata float %conv176, metadata !1685, metadata !DIExpression()), !dbg !3149
  %cmp.i850 = fcmp ugt float %conv176, 0.000000e+00, !dbg !3151
  br i1 %cmp.i850, label %if.end.i852, label %ClampToQuantum.exit857, !dbg !3152

if.end.i852:                                      ; preds = %ClampToQuantum.exit849
  %cmp1.i851 = fcmp ult float %conv176, 6.553500e+04, !dbg !3153
  br i1 %cmp1.i851, label %if.end3.i855, label %ClampToQuantum.exit857, !dbg !3154

if.end3.i855:                                     ; preds = %if.end.i852
  %add.i853 = fadd float %conv176, 5.000000e-01, !dbg !3155
  %conv.i854 = fptoui float %add.i853 to i16, !dbg !3156
  br label %ClampToQuantum.exit857, !dbg !3157

ClampToQuantum.exit857:                           ; preds = %ClampToQuantum.exit849, %if.end.i852, %if.end3.i855
  %retval.0.i856 = phi i16 [ %conv.i854, %if.end3.i855 ], [ 0, %ClampToQuantum.exit849 ], [ -1, %if.end.i852 ], !dbg !3149
  store i16 %retval.0.i856, ptr %green162, align 2, !dbg !3148, !tbaa !894
  %27 = load i16, ptr %q.21026, align 2, !dbg !3158, !tbaa !897
  %conv180 = uitofp i16 %27 to float, !dbg !3158
  %28 = call float @llvm.fmuladd.f32(float %conv180, float 4.883000e+04, float %mul156), !dbg !3158
  %conv191 = fpext float %28 to double, !dbg !3158
  %mul192 = fmul double %conv191, 0x3EF0001000100010, !dbg !3158
  %conv193 = fptrunc double %mul192 to float, !dbg !3158
  call void @llvm.dbg.value(metadata float %conv193, metadata !1685, metadata !DIExpression()), !dbg !3159
  %cmp.i858 = fcmp ugt float %conv193, 0.000000e+00, !dbg !3161
  br i1 %cmp.i858, label %if.end.i860, label %ClampToQuantum.exit865, !dbg !3162

if.end.i860:                                      ; preds = %ClampToQuantum.exit857
  %cmp1.i859 = fcmp ult float %conv193, 6.553500e+04, !dbg !3163
  br i1 %cmp1.i859, label %if.end3.i863, label %ClampToQuantum.exit865, !dbg !3164

if.end3.i863:                                     ; preds = %if.end.i860
  %add.i861 = fadd float %conv193, 5.000000e-01, !dbg !3165
  %conv.i862 = fptoui float %add.i861 to i16, !dbg !3166
  br label %ClampToQuantum.exit865, !dbg !3167

ClampToQuantum.exit865:                           ; preds = %ClampToQuantum.exit857, %if.end.i860, %if.end3.i863
  %retval.0.i864 = phi i16 [ %conv.i862, %if.end3.i863 ], [ 0, %ClampToQuantum.exit857 ], [ -1, %if.end.i860 ], !dbg !3159
  store i16 %retval.0.i864, ptr %q.21026, align 2, !dbg !3158, !tbaa !897
  %incdec.ptr196 = getelementptr inbounds %struct._PixelPacket, ptr %q.21026, i64 1, !dbg !3168
  call void @llvm.dbg.value(metadata ptr %incdec.ptr196, metadata !2983, metadata !DIExpression()), !dbg !3049
  %inc198 = add nuw nsw i64 %x.21025, 1, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %inc198, metadata !2979, metadata !DIExpression()), !dbg !3049
  %cmp142 = icmp slt i64 %inc198, %9, !dbg !3098
  br i1 %cmp142, label %for.body144, label %for.end199, !dbg !3101, !llvm.loop !3170

for.end199:                                       ; preds = %ClampToQuantum.exit865, %for.cond140.preheader
  %call200 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call21, ptr noundef nonnull %exception20) #8, !dbg !3172
  %cmp201 = icmp ne i32 %call200, 0, !dbg !3174
  %spec.select796 = zext i1 %cmp201 to i32, !dbg !3175
  call void @llvm.dbg.value(metadata i32 %spec.select796, metadata !2974, metadata !DIExpression()), !dbg !3003
  %29 = load ptr, ptr %progress_monitor, align 8, !dbg !3176, !tbaa !2384
  %cmp205.not = icmp eq ptr %29, null, !dbg !3177
  br i1 %cmp205.not, label %cleanup, label %SetImageProgress.exit, !dbg !3178

SetImageProgress.exit:                            ; preds = %for.end199
  %inc208 = add nsw i64 %progress.01028, 1, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %inc208, metadata !2975, metadata !DIExpression()), !dbg !3003
  %30 = load i64, ptr %rows, align 8, !dbg !3180, !tbaa !711
  call void @llvm.dbg.value(metadata ptr %image, metadata !2389, metadata !DIExpression()) #7, !dbg !3181
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !2395, metadata !DIExpression()) #7, !dbg !3181
  call void @llvm.dbg.value(metadata i64 %progress.01028, metadata !2396, metadata !DIExpression()) #7, !dbg !3181
  call void @llvm.dbg.value(metadata i64 %30, metadata !2397, metadata !DIExpression()) #7, !dbg !3181
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !3183
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2398, metadata !DIExpression()) #7, !dbg !3184
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename.i) #7, !dbg !3185
  %31 = load ptr, ptr %progress_monitor, align 8, !dbg !3186, !tbaa !2384
  %32 = load ptr, ptr %client_data.i, align 8, !dbg !3187, !tbaa !2406
  %call4.i = call i32 %31(ptr noundef nonnull %message.i, i64 noundef %progress.01028, i64 noundef %30, ptr noundef %32) #7, !dbg !3188
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #7, !dbg !3189
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2984, metadata !DIExpression()), !dbg !3190
  %cmp211 = icmp eq i32 %call4.i, 0, !dbg !3191
  %spec.select797 = select i1 %cmp211, i32 0, i32 %spec.select796, !dbg !3193
  call void @llvm.dbg.value(metadata i32 %spec.select797, metadata !2974, metadata !DIExpression()), !dbg !3003
  br label %cleanup, !dbg !3194

cleanup:                                          ; preds = %for.end199, %SetImageProgress.exit, %if.end26, %for.body
  %progress.2 = phi i64 [ %progress.01028, %for.body ], [ %progress.01028, %if.end26 ], [ %inc208, %SetImageProgress.exit ], [ %progress.01028, %for.end199 ], !dbg !3003
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end26 ], [ %spec.select797, %SetImageProgress.exit ], [ %spec.select796, %for.end199 ], !dbg !3003
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !2974, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !2975, metadata !DIExpression()), !dbg !3003
  %inc218 = add nuw nsw i64 %y.01029, 1, !dbg !3195
  call void @llvm.dbg.value(metadata i64 %inc218, metadata !2978, metadata !DIExpression()), !dbg !3003
  %33 = load i64, ptr %height, align 8, !dbg !3034, !tbaa !713
  %cmp23 = icmp slt i64 %inc218, %33, !dbg !3035
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3036
  br i1 %cmp23, label %for.body, label %for.cond221.preheader, !dbg !3036, !llvm.loop !3196

for.cond399.preheader:                            ; preds = %cleanup389, %for.cond221.preheader
  %34 = phi i64 [ %7, %for.cond221.preheader ], [ %58, %cleanup389 ], !dbg !3198
  %progress.3.lcssa = phi i64 [ %progress.0.lcssa, %for.cond221.preheader ], [ %progress.5, %cleanup389 ], !dbg !3037
  %status.5.lcssa = phi i32 [ %status.0.lcssa, %for.cond221.preheader ], [ %status.9, %cleanup389 ], !dbg !3038
  %sub224.lcssa = phi i64 [ %sub2241051, %for.cond221.preheader ], [ %sub224, %cleanup389 ], !dbg !3041
  call void @llvm.dbg.value(metadata i32 %status.5.lcssa, metadata !2974, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %sub224.lcssa, metadata !2978, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %progress.3.lcssa, metadata !2975, metadata !DIExpression()), !dbg !3003
  %cmp4011074 = icmp slt i64 %sub224.lcssa, %34, !dbg !3199
  br i1 %cmp4011074, label %for.body403.lr.ph, label %for.end624, !dbg !3200

for.body403.lr.ph:                                ; preds = %for.cond399.preheader
  %mul433 = fmul float %spec.select, 1.670500e+04
  %mul496 = fmul float %spec.select795, 3.084000e+04
  %mul556 = fmul float %spec.select795, 1.670500e+04
  %progress_monitor605 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i1002 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i1004 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  %35 = sub i64 0, %sub224.lcssa, !dbg !3200
  br label %for.body403, !dbg !3200

for.body227:                                      ; preds = %for.body227.lr.ph, %cleanup389
  %status.51055 = phi i32 [ %status.0.lcssa, %for.body227.lr.ph ], [ %status.9, %cleanup389 ]
  %y.11054 = phi i64 [ %6, %for.body227.lr.ph ], [ %inc394, %cleanup389 ]
  %progress.31053 = phi i64 [ %progress.0.lcssa, %for.body227.lr.ph ], [ %progress.5, %cleanup389 ]
  call void @llvm.dbg.value(metadata i32 %status.51055, metadata !2974, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %y.11054, metadata !2978, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %progress.31053, metadata !2975, metadata !DIExpression()), !dbg !3003
  %cmp230 = icmp eq i32 %status.51055, 0, !dbg !3201
  br i1 %cmp230, label %cleanup389, label %if.end233, !dbg !3203

if.end233:                                        ; preds = %for.body227
  %36 = load i64, ptr %columns, align 8, !dbg !3204, !tbaa !702
  %call235 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call21, i64 noundef 0, i64 noundef %y.11054, i64 noundef %36, i64 noundef 1, ptr noundef nonnull %exception20) #8, !dbg !3205
  call void @llvm.dbg.value(metadata ptr %call235, metadata !2991, metadata !DIExpression()), !dbg !3206
  %cmp236 = icmp eq ptr %call235, null, !dbg !3207
  br i1 %cmp236, label %cleanup389, label %for.cond240.preheader, !dbg !3209

for.cond240.preheader:                            ; preds = %if.end233
  %37 = load i64, ptr %raise_info, align 8, !tbaa !704
  call void @llvm.dbg.value(metadata ptr %call235, metadata !2991, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 0, metadata !2987, metadata !DIExpression()), !dbg !3206
  %cmp2421036 = icmp sgt i64 %37, 0, !dbg !3210
  br i1 %cmp2421036, label %for.body244, label %for.cond300.preheader, !dbg !3213

for.cond300.preheader:                            ; preds = %ClampToQuantum.exit892, %for.cond240.preheader
  %x228.0.lcssa = phi i64 [ 0, %for.cond240.preheader ], [ %37, %ClampToQuantum.exit892 ], !dbg !3214
  %q229.0.lcssa = phi ptr [ %call235, %for.cond240.preheader ], [ %incdec.ptr296, %ClampToQuantum.exit892 ], !dbg !3206
  %38 = load i64, ptr %columns, align 8, !tbaa !702
  %sub303 = sub i64 %38, %37
  call void @llvm.dbg.value(metadata ptr %q229.0.lcssa, metadata !2991, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %x228.0.lcssa, metadata !2987, metadata !DIExpression()), !dbg !3206
  %cmp3041042 = icmp slt i64 %x228.0.lcssa, %sub303, !dbg !3215
  br i1 %cmp3041042, label %for.body306.preheader, label %for.cond311.preheader, !dbg !3218

for.body306.preheader:                            ; preds = %for.cond300.preheader
  %39 = add i64 %37, %x228.0.lcssa, !dbg !3218
  %40 = sub i64 %38, %39, !dbg !3218
  %41 = shl i64 %40, 3, !dbg !3218
  call void @llvm.dbg.value(metadata i32 undef, metadata !2991, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !3206
  call void @llvm.dbg.value(metadata i32 undef, metadata !2987, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3206
  %uglygep = getelementptr i8, ptr %q229.0.lcssa, i64 %41, !dbg !3218
  br label %for.cond311.preheader, !dbg !3219

for.body244:                                      ; preds = %for.cond240.preheader, %ClampToQuantum.exit892
  %q229.01038 = phi ptr [ %incdec.ptr296, %ClampToQuantum.exit892 ], [ %call235, %for.cond240.preheader ]
  %x228.01037 = phi i64 [ %inc298, %ClampToQuantum.exit892 ], [ 0, %for.cond240.preheader ]
  call void @llvm.dbg.value(metadata ptr %q229.01038, metadata !2991, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %x228.01037, metadata !2987, metadata !DIExpression()), !dbg !3206
  %red245 = getelementptr inbounds %struct._PixelPacket, ptr %q229.01038, i64 0, i32 2, !dbg !3222
  %42 = load i16, ptr %red245, align 2, !dbg !3222, !tbaa !891
  %conv246 = uitofp i16 %42 to float, !dbg !3222
  %43 = call float @llvm.fmuladd.f32(float %conv246, float 4.883000e+04, float %mul256), !dbg !3222
  %conv257 = fpext float %43 to double, !dbg !3222
  %mul258 = fmul double %conv257, 0x3EF0001000100010, !dbg !3222
  %conv259 = fptrunc double %mul258 to float, !dbg !3222
  call void @llvm.dbg.value(metadata float %conv259, metadata !1685, metadata !DIExpression()), !dbg !3224
  %cmp.i869 = fcmp ugt float %conv259, 0.000000e+00, !dbg !3226
  br i1 %cmp.i869, label %if.end.i871, label %ClampToQuantum.exit876, !dbg !3227

if.end.i871:                                      ; preds = %for.body244
  %cmp1.i870 = fcmp ult float %conv259, 6.553500e+04, !dbg !3228
  br i1 %cmp1.i870, label %if.end3.i874, label %ClampToQuantum.exit876, !dbg !3229

if.end3.i874:                                     ; preds = %if.end.i871
  %add.i872 = fadd float %conv259, 5.000000e-01, !dbg !3230
  %conv.i873 = fptoui float %add.i872 to i16, !dbg !3231
  br label %ClampToQuantum.exit876, !dbg !3232

ClampToQuantum.exit876:                           ; preds = %for.body244, %if.end.i871, %if.end3.i874
  %retval.0.i875 = phi i16 [ %conv.i873, %if.end3.i874 ], [ 0, %for.body244 ], [ -1, %if.end.i871 ], !dbg !3224
  store i16 %retval.0.i875, ptr %red245, align 2, !dbg !3222, !tbaa !891
  %green262 = getelementptr inbounds %struct._PixelPacket, ptr %q229.01038, i64 0, i32 1, !dbg !3233
  %44 = load i16, ptr %green262, align 2, !dbg !3233, !tbaa !894
  %conv263 = uitofp i16 %44 to float, !dbg !3233
  %45 = call float @llvm.fmuladd.f32(float %conv263, float 4.883000e+04, float %mul256), !dbg !3233
  %conv274 = fpext float %45 to double, !dbg !3233
  %mul275 = fmul double %conv274, 0x3EF0001000100010, !dbg !3233
  %conv276 = fptrunc double %mul275 to float, !dbg !3233
  call void @llvm.dbg.value(metadata float %conv276, metadata !1685, metadata !DIExpression()), !dbg !3234
  %cmp.i877 = fcmp ugt float %conv276, 0.000000e+00, !dbg !3236
  br i1 %cmp.i877, label %if.end.i879, label %ClampToQuantum.exit884, !dbg !3237

if.end.i879:                                      ; preds = %ClampToQuantum.exit876
  %cmp1.i878 = fcmp ult float %conv276, 6.553500e+04, !dbg !3238
  br i1 %cmp1.i878, label %if.end3.i882, label %ClampToQuantum.exit884, !dbg !3239

if.end3.i882:                                     ; preds = %if.end.i879
  %add.i880 = fadd float %conv276, 5.000000e-01, !dbg !3240
  %conv.i881 = fptoui float %add.i880 to i16, !dbg !3241
  br label %ClampToQuantum.exit884, !dbg !3242

ClampToQuantum.exit884:                           ; preds = %ClampToQuantum.exit876, %if.end.i879, %if.end3.i882
  %retval.0.i883 = phi i16 [ %conv.i881, %if.end3.i882 ], [ 0, %ClampToQuantum.exit876 ], [ -1, %if.end.i879 ], !dbg !3234
  store i16 %retval.0.i883, ptr %green262, align 2, !dbg !3233, !tbaa !894
  %46 = load i16, ptr %q229.01038, align 2, !dbg !3243, !tbaa !897
  %conv280 = uitofp i16 %46 to float, !dbg !3243
  %47 = call float @llvm.fmuladd.f32(float %conv280, float 4.883000e+04, float %mul256), !dbg !3243
  %conv291 = fpext float %47 to double, !dbg !3243
  %mul292 = fmul double %conv291, 0x3EF0001000100010, !dbg !3243
  %conv293 = fptrunc double %mul292 to float, !dbg !3243
  call void @llvm.dbg.value(metadata float %conv293, metadata !1685, metadata !DIExpression()), !dbg !3244
  %cmp.i885 = fcmp ugt float %conv293, 0.000000e+00, !dbg !3246
  br i1 %cmp.i885, label %if.end.i887, label %ClampToQuantum.exit892, !dbg !3247

if.end.i887:                                      ; preds = %ClampToQuantum.exit884
  %cmp1.i886 = fcmp ult float %conv293, 6.553500e+04, !dbg !3248
  br i1 %cmp1.i886, label %if.end3.i890, label %ClampToQuantum.exit892, !dbg !3249

if.end3.i890:                                     ; preds = %if.end.i887
  %add.i888 = fadd float %conv293, 5.000000e-01, !dbg !3250
  %conv.i889 = fptoui float %add.i888 to i16, !dbg !3251
  br label %ClampToQuantum.exit892, !dbg !3252

ClampToQuantum.exit892:                           ; preds = %ClampToQuantum.exit884, %if.end.i887, %if.end3.i890
  %retval.0.i891 = phi i16 [ %conv.i889, %if.end3.i890 ], [ 0, %ClampToQuantum.exit884 ], [ -1, %if.end.i887 ], !dbg !3244
  store i16 %retval.0.i891, ptr %q229.01038, align 2, !dbg !3243, !tbaa !897
  %incdec.ptr296 = getelementptr inbounds %struct._PixelPacket, ptr %q229.01038, i64 1, !dbg !3253
  call void @llvm.dbg.value(metadata ptr %incdec.ptr296, metadata !2991, metadata !DIExpression()), !dbg !3206
  %inc298 = add nuw nsw i64 %x228.01037, 1, !dbg !3254
  call void @llvm.dbg.value(metadata i64 %inc298, metadata !2987, metadata !DIExpression()), !dbg !3206
  %exitcond1081.not = icmp eq i64 %inc298, %37, !dbg !3210
  br i1 %exitcond1081.not, label %for.cond300.preheader, label %for.body244, !dbg !3213, !llvm.loop !3255

for.cond311.preheader:                            ; preds = %for.body306.preheader, %for.cond300.preheader
  %x228.1.lcssa = phi i64 [ %x228.0.lcssa, %for.cond300.preheader ], [ %sub303, %for.body306.preheader ], !dbg !3206
  %q229.1.lcssa = phi ptr [ %q229.0.lcssa, %for.cond300.preheader ], [ %uglygep, %for.body306.preheader ], !dbg !3206
  call void @llvm.dbg.value(metadata ptr %q229.1.lcssa, metadata !2991, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %x228.1.lcssa, metadata !2987, metadata !DIExpression()), !dbg !3206
  %cmp3131048 = icmp slt i64 %x228.1.lcssa, %38, !dbg !3219
  br i1 %cmp3131048, label %for.body315, label %for.end370, !dbg !3257

for.body315:                                      ; preds = %for.cond311.preheader, %ClampToQuantum.exit916
  %q229.21050 = phi ptr [ %incdec.ptr367, %ClampToQuantum.exit916 ], [ %q229.1.lcssa, %for.cond311.preheader ]
  %x228.21049 = phi i64 [ %inc369, %ClampToQuantum.exit916 ], [ %x228.1.lcssa, %for.cond311.preheader ]
  call void @llvm.dbg.value(metadata ptr %q229.21050, metadata !2991, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %x228.21049, metadata !2987, metadata !DIExpression()), !dbg !3206
  %red316 = getelementptr inbounds %struct._PixelPacket, ptr %q229.21050, i64 0, i32 2, !dbg !3258
  %48 = load i16, ptr %red316, align 2, !dbg !3258, !tbaa !891
  %conv317 = uitofp i16 %48 to float, !dbg !3258
  %49 = call float @llvm.fmuladd.f32(float %conv317, float 4.883000e+04, float %mul327), !dbg !3258
  %conv328 = fpext float %49 to double, !dbg !3258
  %mul329 = fmul double %conv328, 0x3EF0001000100010, !dbg !3258
  %conv330 = fptrunc double %mul329 to float, !dbg !3258
  call void @llvm.dbg.value(metadata float %conv330, metadata !1685, metadata !DIExpression()), !dbg !3260
  %cmp.i893 = fcmp ugt float %conv330, 0.000000e+00, !dbg !3262
  br i1 %cmp.i893, label %if.end.i895, label %ClampToQuantum.exit900, !dbg !3263

if.end.i895:                                      ; preds = %for.body315
  %cmp1.i894 = fcmp ult float %conv330, 6.553500e+04, !dbg !3264
  br i1 %cmp1.i894, label %if.end3.i898, label %ClampToQuantum.exit900, !dbg !3265

if.end3.i898:                                     ; preds = %if.end.i895
  %add.i896 = fadd float %conv330, 5.000000e-01, !dbg !3266
  %conv.i897 = fptoui float %add.i896 to i16, !dbg !3267
  br label %ClampToQuantum.exit900, !dbg !3268

ClampToQuantum.exit900:                           ; preds = %for.body315, %if.end.i895, %if.end3.i898
  %retval.0.i899 = phi i16 [ %conv.i897, %if.end3.i898 ], [ 0, %for.body315 ], [ -1, %if.end.i895 ], !dbg !3260
  store i16 %retval.0.i899, ptr %red316, align 2, !dbg !3258, !tbaa !891
  %green333 = getelementptr inbounds %struct._PixelPacket, ptr %q229.21050, i64 0, i32 1, !dbg !3269
  %50 = load i16, ptr %green333, align 2, !dbg !3269, !tbaa !894
  %conv334 = uitofp i16 %50 to float, !dbg !3269
  %51 = call float @llvm.fmuladd.f32(float %conv334, float 4.883000e+04, float %mul327), !dbg !3269
  %conv345 = fpext float %51 to double, !dbg !3269
  %mul346 = fmul double %conv345, 0x3EF0001000100010, !dbg !3269
  %conv347 = fptrunc double %mul346 to float, !dbg !3269
  call void @llvm.dbg.value(metadata float %conv347, metadata !1685, metadata !DIExpression()), !dbg !3270
  %cmp.i901 = fcmp ugt float %conv347, 0.000000e+00, !dbg !3272
  br i1 %cmp.i901, label %if.end.i903, label %ClampToQuantum.exit908, !dbg !3273

if.end.i903:                                      ; preds = %ClampToQuantum.exit900
  %cmp1.i902 = fcmp ult float %conv347, 6.553500e+04, !dbg !3274
  br i1 %cmp1.i902, label %if.end3.i906, label %ClampToQuantum.exit908, !dbg !3275

if.end3.i906:                                     ; preds = %if.end.i903
  %add.i904 = fadd float %conv347, 5.000000e-01, !dbg !3276
  %conv.i905 = fptoui float %add.i904 to i16, !dbg !3277
  br label %ClampToQuantum.exit908, !dbg !3278

ClampToQuantum.exit908:                           ; preds = %ClampToQuantum.exit900, %if.end.i903, %if.end3.i906
  %retval.0.i907 = phi i16 [ %conv.i905, %if.end3.i906 ], [ 0, %ClampToQuantum.exit900 ], [ -1, %if.end.i903 ], !dbg !3270
  store i16 %retval.0.i907, ptr %green333, align 2, !dbg !3269, !tbaa !894
  %52 = load i16, ptr %q229.21050, align 2, !dbg !3279, !tbaa !897
  %conv351 = uitofp i16 %52 to float, !dbg !3279
  %53 = call float @llvm.fmuladd.f32(float %conv351, float 4.883000e+04, float %mul327), !dbg !3279
  %conv362 = fpext float %53 to double, !dbg !3279
  %mul363 = fmul double %conv362, 0x3EF0001000100010, !dbg !3279
  %conv364 = fptrunc double %mul363 to float, !dbg !3279
  call void @llvm.dbg.value(metadata float %conv364, metadata !1685, metadata !DIExpression()), !dbg !3280
  %cmp.i909 = fcmp ugt float %conv364, 0.000000e+00, !dbg !3282
  br i1 %cmp.i909, label %if.end.i911, label %ClampToQuantum.exit916, !dbg !3283

if.end.i911:                                      ; preds = %ClampToQuantum.exit908
  %cmp1.i910 = fcmp ult float %conv364, 6.553500e+04, !dbg !3284
  br i1 %cmp1.i910, label %if.end3.i914, label %ClampToQuantum.exit916, !dbg !3285

if.end3.i914:                                     ; preds = %if.end.i911
  %add.i912 = fadd float %conv364, 5.000000e-01, !dbg !3286
  %conv.i913 = fptoui float %add.i912 to i16, !dbg !3287
  br label %ClampToQuantum.exit916, !dbg !3288

ClampToQuantum.exit916:                           ; preds = %ClampToQuantum.exit908, %if.end.i911, %if.end3.i914
  %retval.0.i915 = phi i16 [ %conv.i913, %if.end3.i914 ], [ 0, %ClampToQuantum.exit908 ], [ -1, %if.end.i911 ], !dbg !3280
  store i16 %retval.0.i915, ptr %q229.21050, align 2, !dbg !3279, !tbaa !897
  %incdec.ptr367 = getelementptr inbounds %struct._PixelPacket, ptr %q229.21050, i64 1, !dbg !3289
  call void @llvm.dbg.value(metadata ptr %incdec.ptr367, metadata !2991, metadata !DIExpression()), !dbg !3206
  %inc369 = add nuw nsw i64 %x228.21049, 1, !dbg !3290
  call void @llvm.dbg.value(metadata i64 %inc369, metadata !2987, metadata !DIExpression()), !dbg !3206
  %exitcond1082.not = icmp eq i64 %inc369, %38, !dbg !3219
  br i1 %exitcond1082.not, label %for.end370, label %for.body315, !dbg !3257, !llvm.loop !3291

for.end370:                                       ; preds = %ClampToQuantum.exit916, %for.cond311.preheader
  %call371 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call21, ptr noundef nonnull %exception20) #8, !dbg !3293
  %cmp372 = icmp ne i32 %call371, 0, !dbg !3295
  %spec.select798 = zext i1 %cmp372 to i32, !dbg !3296
  call void @llvm.dbg.value(metadata i32 %spec.select798, metadata !2974, metadata !DIExpression()), !dbg !3003
  %54 = load ptr, ptr %progress_monitor376, align 8, !dbg !3297, !tbaa !2384
  %cmp377.not = icmp eq ptr %54, null, !dbg !3298
  br i1 %cmp377.not, label %cleanup389, label %SetImageProgress.exit926, !dbg !3299

SetImageProgress.exit926:                         ; preds = %for.end370
  %inc381 = add nsw i64 %progress.31053, 1, !dbg !3300
  call void @llvm.dbg.value(metadata i64 %inc381, metadata !2975, metadata !DIExpression()), !dbg !3003
  %55 = load i64, ptr %rows, align 8, !dbg !3301, !tbaa !711
  call void @llvm.dbg.value(metadata ptr %image, metadata !2389, metadata !DIExpression()) #7, !dbg !3302
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !2395, metadata !DIExpression()) #7, !dbg !3302
  call void @llvm.dbg.value(metadata i64 %progress.31053, metadata !2396, metadata !DIExpression()) #7, !dbg !3302
  call void @llvm.dbg.value(metadata i64 %55, metadata !2397, metadata !DIExpression()) #7, !dbg !3302
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i917) #7, !dbg !3304
  call void @llvm.dbg.declare(metadata ptr %message.i917, metadata !2398, metadata !DIExpression()) #7, !dbg !3305
  %call.i921 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i917, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename.i920) #7, !dbg !3306
  %56 = load ptr, ptr %progress_monitor376, align 8, !dbg !3307, !tbaa !2384
  %57 = load ptr, ptr %client_data.i922, align 8, !dbg !3308, !tbaa !2406
  %call4.i923 = call i32 %56(ptr noundef nonnull %message.i917, i64 noundef %progress.31053, i64 noundef %55, ptr noundef %57) #7, !dbg !3309
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i917) #7, !dbg !3310
  call void @llvm.dbg.value(metadata i32 %call4.i923, metadata !2992, metadata !DIExpression()), !dbg !3311
  %cmp384 = icmp eq i32 %call4.i923, 0, !dbg !3312
  %spec.select799 = select i1 %cmp384, i32 0, i32 %spec.select798, !dbg !3314
  call void @llvm.dbg.value(metadata i32 %spec.select799, metadata !2974, metadata !DIExpression()), !dbg !3003
  br label %cleanup389, !dbg !3315

cleanup389:                                       ; preds = %for.end370, %SetImageProgress.exit926, %if.end233, %for.body227
  %progress.5 = phi i64 [ %progress.31053, %for.body227 ], [ %progress.31053, %if.end233 ], [ %inc381, %SetImageProgress.exit926 ], [ %progress.31053, %for.end370 ], !dbg !3003
  %status.9 = phi i32 [ 0, %for.body227 ], [ 0, %if.end233 ], [ %spec.select799, %SetImageProgress.exit926 ], [ %spec.select798, %for.end370 ], !dbg !3003
  call void @llvm.dbg.value(metadata i32 %status.9, metadata !2974, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %progress.5, metadata !2975, metadata !DIExpression()), !dbg !3003
  %inc394 = add nsw i64 %y.11054, 1, !dbg !3316
  call void @llvm.dbg.value(metadata i64 %inc394, metadata !2978, metadata !DIExpression()), !dbg !3003
  %58 = load i64, ptr %rows, align 8, !dbg !3040, !tbaa !711
  %59 = load i64, ptr %height, align 8, !dbg !3039, !tbaa !713
  %sub224 = sub i64 %58, %59, !dbg !3041
  %cmp225 = icmp slt i64 %inc394, %sub224, !dbg !3042
  br i1 %cmp225, label %for.body227, label %for.cond399.preheader, !dbg !3043, !llvm.loop !3317

for.body403:                                      ; preds = %for.body403.lr.ph, %cleanup618
  %indvars.iv1083 = phi i64 [ %35, %for.body403.lr.ph ], [ %indvars.iv.next1084, %cleanup618 ]
  %status.101078 = phi i32 [ %status.5.lcssa, %for.body403.lr.ph ], [ %status.14, %cleanup618 ]
  %y.21076 = phi i64 [ %sub224.lcssa, %for.body403.lr.ph ], [ %inc623, %cleanup618 ]
  %progress.61075 = phi i64 [ %progress.3.lcssa, %for.body403.lr.ph ], [ %progress.8, %cleanup618 ]
  call void @llvm.dbg.value(metadata i32 %status.101078, metadata !2974, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %y.21076, metadata !2978, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %progress.61075, metadata !2975, metadata !DIExpression()), !dbg !3003
  %cmp406 = icmp eq i32 %status.101078, 0, !dbg !3319
  br i1 %cmp406, label %cleanup618, label %if.end409, !dbg !3321

if.end409:                                        ; preds = %for.body403
  %60 = load i64, ptr %columns, align 8, !dbg !3322, !tbaa !702
  %call411 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call21, i64 noundef 0, i64 noundef %y.21076, i64 noundef %60, i64 noundef 1, ptr noundef nonnull %exception20) #8, !dbg !3323
  call void @llvm.dbg.value(metadata ptr %call411, metadata !2999, metadata !DIExpression()), !dbg !3324
  %cmp412 = icmp eq ptr %call411, null, !dbg !3325
  br i1 %cmp412, label %cleanup618, label %for.cond416.preheader, !dbg !3327

for.cond416.preheader:                            ; preds = %if.end409
  %61 = load i64, ptr %rows, align 8, !tbaa !711
  %sub418 = sub i64 %61, %y.21076
  call void @llvm.dbg.value(metadata ptr %call411, metadata !2999, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64 0, metadata !2995, metadata !DIExpression()), !dbg !3324
  %cmp4191059 = icmp sgt i64 %sub418, 0, !dbg !3328
  br i1 %cmp4191059, label %for.body421, label %for.cond477.preheader, !dbg !3331

for.cond477.preheader.loopexit:                   ; preds = %ClampToQuantum.exit950
  %62 = add i64 %61, %indvars.iv1083, !dbg !3331
  br label %for.cond477.preheader

for.cond477.preheader:                            ; preds = %for.cond477.preheader.loopexit, %for.cond416.preheader
  %x404.0.lcssa = phi i64 [ 0, %for.cond416.preheader ], [ %62, %for.cond477.preheader.loopexit ], !dbg !3332
  %q405.0.lcssa = phi ptr [ %call411, %for.cond416.preheader ], [ %incdec.ptr473, %for.cond477.preheader.loopexit ], !dbg !3324
  %63 = load i64, ptr %columns, align 8, !tbaa !702
  %sub480.neg = sub i64 %y.21076, %61
  %sub481 = add i64 %sub480.neg, %63
  call void @llvm.dbg.value(metadata ptr %q405.0.lcssa, metadata !2999, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64 %x404.0.lcssa, metadata !2995, metadata !DIExpression()), !dbg !3324
  %cmp4821065 = icmp slt i64 %x404.0.lcssa, %sub481, !dbg !3333
  br i1 %cmp4821065, label %for.body484.preheader, label %for.cond540.preheader, !dbg !3336

for.body484.preheader:                            ; preds = %for.cond477.preheader
  %64 = add i64 %63, %y.21076, !dbg !3336
  br label %for.body484, !dbg !3336

for.body421:                                      ; preds = %for.cond416.preheader, %ClampToQuantum.exit950
  %q405.01061 = phi ptr [ %incdec.ptr473, %ClampToQuantum.exit950 ], [ %call411, %for.cond416.preheader ]
  %x404.01060 = phi i64 [ %inc475, %ClampToQuantum.exit950 ], [ 0, %for.cond416.preheader ]
  call void @llvm.dbg.value(metadata ptr %q405.01061, metadata !2999, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64 %x404.01060, metadata !2995, metadata !DIExpression()), !dbg !3324
  %red422 = getelementptr inbounds %struct._PixelPacket, ptr %q405.01061, i64 0, i32 2, !dbg !3337
  %65 = load i16, ptr %red422, align 2, !dbg !3337, !tbaa !891
  %conv423 = uitofp i16 %65 to float, !dbg !3337
  %66 = call float @llvm.fmuladd.f32(float %conv423, float 4.883000e+04, float %mul433), !dbg !3337
  %conv434 = fpext float %66 to double, !dbg !3337
  %mul435 = fmul double %conv434, 0x3EF0001000100010, !dbg !3337
  %conv436 = fptrunc double %mul435 to float, !dbg !3337
  call void @llvm.dbg.value(metadata float %conv436, metadata !1685, metadata !DIExpression()), !dbg !3339
  %cmp.i927 = fcmp ugt float %conv436, 0.000000e+00, !dbg !3341
  br i1 %cmp.i927, label %if.end.i929, label %ClampToQuantum.exit934, !dbg !3342

if.end.i929:                                      ; preds = %for.body421
  %cmp1.i928 = fcmp ult float %conv436, 6.553500e+04, !dbg !3343
  br i1 %cmp1.i928, label %if.end3.i932, label %ClampToQuantum.exit934, !dbg !3344

if.end3.i932:                                     ; preds = %if.end.i929
  %add.i930 = fadd float %conv436, 5.000000e-01, !dbg !3345
  %conv.i931 = fptoui float %add.i930 to i16, !dbg !3346
  br label %ClampToQuantum.exit934, !dbg !3347

ClampToQuantum.exit934:                           ; preds = %for.body421, %if.end.i929, %if.end3.i932
  %retval.0.i933 = phi i16 [ %conv.i931, %if.end3.i932 ], [ 0, %for.body421 ], [ -1, %if.end.i929 ], !dbg !3339
  store i16 %retval.0.i933, ptr %red422, align 2, !dbg !3337, !tbaa !891
  %green439 = getelementptr inbounds %struct._PixelPacket, ptr %q405.01061, i64 0, i32 1, !dbg !3348
  %67 = load i16, ptr %green439, align 2, !dbg !3348, !tbaa !894
  %conv440 = uitofp i16 %67 to float, !dbg !3348
  %68 = call float @llvm.fmuladd.f32(float %conv440, float 4.883000e+04, float %mul433), !dbg !3348
  %conv451 = fpext float %68 to double, !dbg !3348
  %mul452 = fmul double %conv451, 0x3EF0001000100010, !dbg !3348
  %conv453 = fptrunc double %mul452 to float, !dbg !3348
  call void @llvm.dbg.value(metadata float %conv453, metadata !1685, metadata !DIExpression()), !dbg !3349
  %cmp.i935 = fcmp ugt float %conv453, 0.000000e+00, !dbg !3351
  br i1 %cmp.i935, label %if.end.i937, label %ClampToQuantum.exit942, !dbg !3352

if.end.i937:                                      ; preds = %ClampToQuantum.exit934
  %cmp1.i936 = fcmp ult float %conv453, 6.553500e+04, !dbg !3353
  br i1 %cmp1.i936, label %if.end3.i940, label %ClampToQuantum.exit942, !dbg !3354

if.end3.i940:                                     ; preds = %if.end.i937
  %add.i938 = fadd float %conv453, 5.000000e-01, !dbg !3355
  %conv.i939 = fptoui float %add.i938 to i16, !dbg !3356
  br label %ClampToQuantum.exit942, !dbg !3357

ClampToQuantum.exit942:                           ; preds = %ClampToQuantum.exit934, %if.end.i937, %if.end3.i940
  %retval.0.i941 = phi i16 [ %conv.i939, %if.end3.i940 ], [ 0, %ClampToQuantum.exit934 ], [ -1, %if.end.i937 ], !dbg !3349
  store i16 %retval.0.i941, ptr %green439, align 2, !dbg !3348, !tbaa !894
  %69 = load i16, ptr %q405.01061, align 2, !dbg !3358, !tbaa !897
  %conv457 = uitofp i16 %69 to float, !dbg !3358
  %70 = call float @llvm.fmuladd.f32(float %conv457, float 4.883000e+04, float %mul433), !dbg !3358
  %conv468 = fpext float %70 to double, !dbg !3358
  %mul469 = fmul double %conv468, 0x3EF0001000100010, !dbg !3358
  %conv470 = fptrunc double %mul469 to float, !dbg !3358
  call void @llvm.dbg.value(metadata float %conv470, metadata !1685, metadata !DIExpression()), !dbg !3359
  %cmp.i943 = fcmp ugt float %conv470, 0.000000e+00, !dbg !3361
  br i1 %cmp.i943, label %if.end.i945, label %ClampToQuantum.exit950, !dbg !3362

if.end.i945:                                      ; preds = %ClampToQuantum.exit942
  %cmp1.i944 = fcmp ult float %conv470, 6.553500e+04, !dbg !3363
  br i1 %cmp1.i944, label %if.end3.i948, label %ClampToQuantum.exit950, !dbg !3364

if.end3.i948:                                     ; preds = %if.end.i945
  %add.i946 = fadd float %conv470, 5.000000e-01, !dbg !3365
  %conv.i947 = fptoui float %add.i946 to i16, !dbg !3366
  br label %ClampToQuantum.exit950, !dbg !3367

ClampToQuantum.exit950:                           ; preds = %ClampToQuantum.exit942, %if.end.i945, %if.end3.i948
  %retval.0.i949 = phi i16 [ %conv.i947, %if.end3.i948 ], [ 0, %ClampToQuantum.exit942 ], [ -1, %if.end.i945 ], !dbg !3359
  store i16 %retval.0.i949, ptr %q405.01061, align 2, !dbg !3358, !tbaa !897
  %incdec.ptr473 = getelementptr inbounds %struct._PixelPacket, ptr %q405.01061, i64 1, !dbg !3368
  call void @llvm.dbg.value(metadata ptr %incdec.ptr473, metadata !2999, metadata !DIExpression()), !dbg !3324
  %inc475 = add nuw nsw i64 %x404.01060, 1, !dbg !3369
  call void @llvm.dbg.value(metadata i64 %inc475, metadata !2995, metadata !DIExpression()), !dbg !3324
  %cmp419 = icmp slt i64 %inc475, %sub418, !dbg !3328
  br i1 %cmp419, label %for.body421, label %for.cond477.preheader.loopexit, !dbg !3331, !llvm.loop !3370

for.cond540.preheader.loopexit:                   ; preds = %ClampToQuantum.exit974
  %71 = sub i64 %64, %61, !dbg !3336
  br label %for.cond540.preheader, !dbg !3372

for.cond540.preheader:                            ; preds = %for.cond540.preheader.loopexit, %for.cond477.preheader
  %x404.1.lcssa = phi i64 [ %x404.0.lcssa, %for.cond477.preheader ], [ %71, %for.cond540.preheader.loopexit ], !dbg !3324
  %q405.1.lcssa = phi ptr [ %q405.0.lcssa, %for.cond477.preheader ], [ %incdec.ptr536, %for.cond540.preheader.loopexit ], !dbg !3324
  call void @llvm.dbg.value(metadata ptr %q405.1.lcssa, metadata !2999, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64 %x404.1.lcssa, metadata !2995, metadata !DIExpression()), !dbg !3324
  %cmp5421071 = icmp slt i64 %x404.1.lcssa, %63, !dbg !3372
  br i1 %cmp5421071, label %for.body544, label %for.end599, !dbg !3375

for.body484:                                      ; preds = %for.body484.preheader, %ClampToQuantum.exit974
  %q405.11067 = phi ptr [ %incdec.ptr536, %ClampToQuantum.exit974 ], [ %q405.0.lcssa, %for.body484.preheader ]
  %x404.11066 = phi i64 [ %inc538, %ClampToQuantum.exit974 ], [ %x404.0.lcssa, %for.body484.preheader ]
  call void @llvm.dbg.value(metadata ptr %q405.11067, metadata !2999, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64 %x404.11066, metadata !2995, metadata !DIExpression()), !dbg !3324
  %red485 = getelementptr inbounds %struct._PixelPacket, ptr %q405.11067, i64 0, i32 2, !dbg !3376
  %72 = load i16, ptr %red485, align 2, !dbg !3376, !tbaa !891
  %conv486 = uitofp i16 %72 to float, !dbg !3376
  %73 = call float @llvm.fmuladd.f32(float %conv486, float 3.469500e+04, float %mul496), !dbg !3376
  %conv497 = fpext float %73 to double, !dbg !3376
  %mul498 = fmul double %conv497, 0x3EF0001000100010, !dbg !3376
  %conv499 = fptrunc double %mul498 to float, !dbg !3376
  call void @llvm.dbg.value(metadata float %conv499, metadata !1685, metadata !DIExpression()), !dbg !3378
  %cmp.i951 = fcmp ugt float %conv499, 0.000000e+00, !dbg !3380
  br i1 %cmp.i951, label %if.end.i953, label %ClampToQuantum.exit958, !dbg !3381

if.end.i953:                                      ; preds = %for.body484
  %cmp1.i952 = fcmp ult float %conv499, 6.553500e+04, !dbg !3382
  br i1 %cmp1.i952, label %if.end3.i956, label %ClampToQuantum.exit958, !dbg !3383

if.end3.i956:                                     ; preds = %if.end.i953
  %add.i954 = fadd float %conv499, 5.000000e-01, !dbg !3384
  %conv.i955 = fptoui float %add.i954 to i16, !dbg !3385
  br label %ClampToQuantum.exit958, !dbg !3386

ClampToQuantum.exit958:                           ; preds = %for.body484, %if.end.i953, %if.end3.i956
  %retval.0.i957 = phi i16 [ %conv.i955, %if.end3.i956 ], [ 0, %for.body484 ], [ -1, %if.end.i953 ], !dbg !3378
  store i16 %retval.0.i957, ptr %red485, align 2, !dbg !3376, !tbaa !891
  %green502 = getelementptr inbounds %struct._PixelPacket, ptr %q405.11067, i64 0, i32 1, !dbg !3387
  %74 = load i16, ptr %green502, align 2, !dbg !3387, !tbaa !894
  %conv503 = uitofp i16 %74 to float, !dbg !3387
  %75 = call float @llvm.fmuladd.f32(float %conv503, float 3.469500e+04, float %mul496), !dbg !3387
  %conv514 = fpext float %75 to double, !dbg !3387
  %mul515 = fmul double %conv514, 0x3EF0001000100010, !dbg !3387
  %conv516 = fptrunc double %mul515 to float, !dbg !3387
  call void @llvm.dbg.value(metadata float %conv516, metadata !1685, metadata !DIExpression()), !dbg !3388
  %cmp.i959 = fcmp ugt float %conv516, 0.000000e+00, !dbg !3390
  br i1 %cmp.i959, label %if.end.i961, label %ClampToQuantum.exit966, !dbg !3391

if.end.i961:                                      ; preds = %ClampToQuantum.exit958
  %cmp1.i960 = fcmp ult float %conv516, 6.553500e+04, !dbg !3392
  br i1 %cmp1.i960, label %if.end3.i964, label %ClampToQuantum.exit966, !dbg !3393

if.end3.i964:                                     ; preds = %if.end.i961
  %add.i962 = fadd float %conv516, 5.000000e-01, !dbg !3394
  %conv.i963 = fptoui float %add.i962 to i16, !dbg !3395
  br label %ClampToQuantum.exit966, !dbg !3396

ClampToQuantum.exit966:                           ; preds = %ClampToQuantum.exit958, %if.end.i961, %if.end3.i964
  %retval.0.i965 = phi i16 [ %conv.i963, %if.end3.i964 ], [ 0, %ClampToQuantum.exit958 ], [ -1, %if.end.i961 ], !dbg !3388
  store i16 %retval.0.i965, ptr %green502, align 2, !dbg !3387, !tbaa !894
  %76 = load i16, ptr %q405.11067, align 2, !dbg !3397, !tbaa !897
  %conv520 = uitofp i16 %76 to float, !dbg !3397
  %77 = call float @llvm.fmuladd.f32(float %conv520, float 3.469500e+04, float %mul496), !dbg !3397
  %conv531 = fpext float %77 to double, !dbg !3397
  %mul532 = fmul double %conv531, 0x3EF0001000100010, !dbg !3397
  %conv533 = fptrunc double %mul532 to float, !dbg !3397
  call void @llvm.dbg.value(metadata float %conv533, metadata !1685, metadata !DIExpression()), !dbg !3398
  %cmp.i967 = fcmp ugt float %conv533, 0.000000e+00, !dbg !3400
  br i1 %cmp.i967, label %if.end.i969, label %ClampToQuantum.exit974, !dbg !3401

if.end.i969:                                      ; preds = %ClampToQuantum.exit966
  %cmp1.i968 = fcmp ult float %conv533, 6.553500e+04, !dbg !3402
  br i1 %cmp1.i968, label %if.end3.i972, label %ClampToQuantum.exit974, !dbg !3403

if.end3.i972:                                     ; preds = %if.end.i969
  %add.i970 = fadd float %conv533, 5.000000e-01, !dbg !3404
  %conv.i971 = fptoui float %add.i970 to i16, !dbg !3405
  br label %ClampToQuantum.exit974, !dbg !3406

ClampToQuantum.exit974:                           ; preds = %ClampToQuantum.exit966, %if.end.i969, %if.end3.i972
  %retval.0.i973 = phi i16 [ %conv.i971, %if.end3.i972 ], [ 0, %ClampToQuantum.exit966 ], [ -1, %if.end.i969 ], !dbg !3398
  store i16 %retval.0.i973, ptr %q405.11067, align 2, !dbg !3397, !tbaa !897
  %incdec.ptr536 = getelementptr inbounds %struct._PixelPacket, ptr %q405.11067, i64 1, !dbg !3407
  call void @llvm.dbg.value(metadata ptr %incdec.ptr536, metadata !2999, metadata !DIExpression()), !dbg !3324
  %inc538 = add nuw nsw i64 %x404.11066, 1, !dbg !3408
  call void @llvm.dbg.value(metadata i64 %inc538, metadata !2995, metadata !DIExpression()), !dbg !3324
  %cmp482 = icmp slt i64 %inc538, %sub481, !dbg !3333
  br i1 %cmp482, label %for.body484, label %for.cond540.preheader.loopexit, !dbg !3336, !llvm.loop !3409

for.body544:                                      ; preds = %for.cond540.preheader, %ClampToQuantum.exit998
  %q405.21073 = phi ptr [ %incdec.ptr596, %ClampToQuantum.exit998 ], [ %q405.1.lcssa, %for.cond540.preheader ]
  %x404.21072 = phi i64 [ %inc598, %ClampToQuantum.exit998 ], [ %x404.1.lcssa, %for.cond540.preheader ]
  call void @llvm.dbg.value(metadata ptr %q405.21073, metadata !2999, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64 %x404.21072, metadata !2995, metadata !DIExpression()), !dbg !3324
  %red545 = getelementptr inbounds %struct._PixelPacket, ptr %q405.21073, i64 0, i32 2, !dbg !3411
  %78 = load i16, ptr %red545, align 2, !dbg !3411, !tbaa !891
  %conv546 = uitofp i16 %78 to float, !dbg !3411
  %79 = call float @llvm.fmuladd.f32(float %conv546, float 4.883000e+04, float %mul556), !dbg !3411
  %conv557 = fpext float %79 to double, !dbg !3411
  %mul558 = fmul double %conv557, 0x3EF0001000100010, !dbg !3411
  %conv559 = fptrunc double %mul558 to float, !dbg !3411
  call void @llvm.dbg.value(metadata float %conv559, metadata !1685, metadata !DIExpression()), !dbg !3413
  %cmp.i975 = fcmp ugt float %conv559, 0.000000e+00, !dbg !3415
  br i1 %cmp.i975, label %if.end.i977, label %ClampToQuantum.exit982, !dbg !3416

if.end.i977:                                      ; preds = %for.body544
  %cmp1.i976 = fcmp ult float %conv559, 6.553500e+04, !dbg !3417
  br i1 %cmp1.i976, label %if.end3.i980, label %ClampToQuantum.exit982, !dbg !3418

if.end3.i980:                                     ; preds = %if.end.i977
  %add.i978 = fadd float %conv559, 5.000000e-01, !dbg !3419
  %conv.i979 = fptoui float %add.i978 to i16, !dbg !3420
  br label %ClampToQuantum.exit982, !dbg !3421

ClampToQuantum.exit982:                           ; preds = %for.body544, %if.end.i977, %if.end3.i980
  %retval.0.i981 = phi i16 [ %conv.i979, %if.end3.i980 ], [ 0, %for.body544 ], [ -1, %if.end.i977 ], !dbg !3413
  store i16 %retval.0.i981, ptr %red545, align 2, !dbg !3411, !tbaa !891
  %green562 = getelementptr inbounds %struct._PixelPacket, ptr %q405.21073, i64 0, i32 1, !dbg !3422
  %80 = load i16, ptr %green562, align 2, !dbg !3422, !tbaa !894
  %conv563 = uitofp i16 %80 to float, !dbg !3422
  %81 = call float @llvm.fmuladd.f32(float %conv563, float 4.883000e+04, float %mul556), !dbg !3422
  %conv574 = fpext float %81 to double, !dbg !3422
  %mul575 = fmul double %conv574, 0x3EF0001000100010, !dbg !3422
  %conv576 = fptrunc double %mul575 to float, !dbg !3422
  call void @llvm.dbg.value(metadata float %conv576, metadata !1685, metadata !DIExpression()), !dbg !3423
  %cmp.i983 = fcmp ugt float %conv576, 0.000000e+00, !dbg !3425
  br i1 %cmp.i983, label %if.end.i985, label %ClampToQuantum.exit990, !dbg !3426

if.end.i985:                                      ; preds = %ClampToQuantum.exit982
  %cmp1.i984 = fcmp ult float %conv576, 6.553500e+04, !dbg !3427
  br i1 %cmp1.i984, label %if.end3.i988, label %ClampToQuantum.exit990, !dbg !3428

if.end3.i988:                                     ; preds = %if.end.i985
  %add.i986 = fadd float %conv576, 5.000000e-01, !dbg !3429
  %conv.i987 = fptoui float %add.i986 to i16, !dbg !3430
  br label %ClampToQuantum.exit990, !dbg !3431

ClampToQuantum.exit990:                           ; preds = %ClampToQuantum.exit982, %if.end.i985, %if.end3.i988
  %retval.0.i989 = phi i16 [ %conv.i987, %if.end3.i988 ], [ 0, %ClampToQuantum.exit982 ], [ -1, %if.end.i985 ], !dbg !3423
  store i16 %retval.0.i989, ptr %green562, align 2, !dbg !3422, !tbaa !894
  %82 = load i16, ptr %q405.21073, align 2, !dbg !3432, !tbaa !897
  %conv580 = uitofp i16 %82 to float, !dbg !3432
  %83 = call float @llvm.fmuladd.f32(float %conv580, float 4.883000e+04, float %mul556), !dbg !3432
  %conv591 = fpext float %83 to double, !dbg !3432
  %mul592 = fmul double %conv591, 0x3EF0001000100010, !dbg !3432
  %conv593 = fptrunc double %mul592 to float, !dbg !3432
  call void @llvm.dbg.value(metadata float %conv593, metadata !1685, metadata !DIExpression()), !dbg !3433
  %cmp.i991 = fcmp ugt float %conv593, 0.000000e+00, !dbg !3435
  br i1 %cmp.i991, label %if.end.i993, label %ClampToQuantum.exit998, !dbg !3436

if.end.i993:                                      ; preds = %ClampToQuantum.exit990
  %cmp1.i992 = fcmp ult float %conv593, 6.553500e+04, !dbg !3437
  br i1 %cmp1.i992, label %if.end3.i996, label %ClampToQuantum.exit998, !dbg !3438

if.end3.i996:                                     ; preds = %if.end.i993
  %add.i994 = fadd float %conv593, 5.000000e-01, !dbg !3439
  %conv.i995 = fptoui float %add.i994 to i16, !dbg !3440
  br label %ClampToQuantum.exit998, !dbg !3441

ClampToQuantum.exit998:                           ; preds = %ClampToQuantum.exit990, %if.end.i993, %if.end3.i996
  %retval.0.i997 = phi i16 [ %conv.i995, %if.end3.i996 ], [ 0, %ClampToQuantum.exit990 ], [ -1, %if.end.i993 ], !dbg !3433
  store i16 %retval.0.i997, ptr %q405.21073, align 2, !dbg !3432, !tbaa !897
  %incdec.ptr596 = getelementptr inbounds %struct._PixelPacket, ptr %q405.21073, i64 1, !dbg !3442
  call void @llvm.dbg.value(metadata ptr %incdec.ptr596, metadata !2999, metadata !DIExpression()), !dbg !3324
  %inc598 = add nuw nsw i64 %x404.21072, 1, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %inc598, metadata !2995, metadata !DIExpression()), !dbg !3324
  %cmp542 = icmp slt i64 %inc598, %63, !dbg !3372
  br i1 %cmp542, label %for.body544, label %for.end599, !dbg !3375, !llvm.loop !3444

for.end599:                                       ; preds = %ClampToQuantum.exit998, %for.cond540.preheader
  %call600 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call21, ptr noundef nonnull %exception20) #8, !dbg !3446
  %cmp601 = icmp ne i32 %call600, 0, !dbg !3448
  %spec.select800 = zext i1 %cmp601 to i32, !dbg !3449
  call void @llvm.dbg.value(metadata i32 %spec.select800, metadata !2974, metadata !DIExpression()), !dbg !3003
  %84 = load ptr, ptr %progress_monitor605, align 8, !dbg !3450, !tbaa !2384
  %cmp606.not = icmp eq ptr %84, null, !dbg !3451
  br i1 %cmp606.not, label %cleanup618, label %SetImageProgress.exit1008, !dbg !3452

SetImageProgress.exit1008:                        ; preds = %for.end599
  %inc610 = add nsw i64 %progress.61075, 1, !dbg !3453
  call void @llvm.dbg.value(metadata i64 %inc610, metadata !2975, metadata !DIExpression()), !dbg !3003
  %85 = load i64, ptr %rows, align 8, !dbg !3454, !tbaa !711
  call void @llvm.dbg.value(metadata ptr %image, metadata !2389, metadata !DIExpression()) #7, !dbg !3455
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !2395, metadata !DIExpression()) #7, !dbg !3455
  call void @llvm.dbg.value(metadata i64 %progress.61075, metadata !2396, metadata !DIExpression()) #7, !dbg !3455
  call void @llvm.dbg.value(metadata i64 %85, metadata !2397, metadata !DIExpression()) #7, !dbg !3455
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i999) #7, !dbg !3457
  call void @llvm.dbg.declare(metadata ptr %message.i999, metadata !2398, metadata !DIExpression()) #7, !dbg !3458
  %call.i1003 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i999, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %filename.i1002) #7, !dbg !3459
  %86 = load ptr, ptr %progress_monitor605, align 8, !dbg !3460, !tbaa !2384
  %87 = load ptr, ptr %client_data.i1004, align 8, !dbg !3461, !tbaa !2406
  %call4.i1005 = call i32 %86(ptr noundef nonnull %message.i999, i64 noundef %progress.61075, i64 noundef %85, ptr noundef %87) #7, !dbg !3462
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i999) #7, !dbg !3463
  call void @llvm.dbg.value(metadata i32 %call4.i1005, metadata !3000, metadata !DIExpression()), !dbg !3464
  %cmp613 = icmp eq i32 %call4.i1005, 0, !dbg !3465
  %spec.select801 = select i1 %cmp613, i32 0, i32 %spec.select800, !dbg !3467
  call void @llvm.dbg.value(metadata i32 %spec.select801, metadata !2974, metadata !DIExpression()), !dbg !3003
  br label %cleanup618, !dbg !3468

cleanup618:                                       ; preds = %for.end599, %SetImageProgress.exit1008, %if.end409, %for.body403
  %progress.8 = phi i64 [ %progress.61075, %for.body403 ], [ %progress.61075, %if.end409 ], [ %inc610, %SetImageProgress.exit1008 ], [ %progress.61075, %for.end599 ], !dbg !3003
  %status.14 = phi i32 [ 0, %for.body403 ], [ 0, %if.end409 ], [ %spec.select801, %SetImageProgress.exit1008 ], [ %spec.select800, %for.end599 ], !dbg !3003
  call void @llvm.dbg.value(metadata i32 %status.14, metadata !2974, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %progress.8, metadata !2975, metadata !DIExpression()), !dbg !3003
  %inc623 = add nsw i64 %y.21076, 1, !dbg !3469
  call void @llvm.dbg.value(metadata i64 %inc623, metadata !2978, metadata !DIExpression()), !dbg !3003
  %88 = load i64, ptr %rows, align 8, !dbg !3198, !tbaa !711
  %cmp401 = icmp slt i64 %inc623, %88, !dbg !3199
  %indvars.iv.next1084 = add i64 %indvars.iv1083, -1, !dbg !3200
  br i1 %cmp401, label %for.body403, label %for.end624, !dbg !3200, !llvm.loop !3470

for.end624:                                       ; preds = %cleanup618, %for.cond399.preheader
  %status.10.lcssa = phi i32 [ %status.5.lcssa, %for.cond399.preheader ], [ %status.14, %cleanup618 ], !dbg !3038
  %call625 = call ptr @DestroyCacheView(ptr noundef %call21) #7, !dbg !3472
  call void @llvm.dbg.value(metadata ptr %call625, metadata !2972, metadata !DIExpression()), !dbg !3003
  br label %cleanup626, !dbg !3473

cleanup626:                                       ; preds = %if.end12, %if.then6, %for.end624
  %retval.0 = phi i32 [ %status.10.lcssa, %for.end624 ], [ 0, %if.then6 ], [ 0, %if.end12 ], !dbg !3003
  ret i32 %retval.0, !dbg !3474
}

; Function Attrs: hot
declare !dbg !3475 ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: hot
declare !dbg !3476 float @DecodePixelGamma(float noundef) local_unnamed_addr #5

declare !dbg !3477 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { hot nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!639, !640, !641, !642, !643, !644}
!llvm.ident = !{!645}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !408, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/decorate.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "9e525f7ade4e7c709fc5bbb3189906a0")
!2 = !{!3, !10, !47, !72, !84, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368, !393}
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
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 30, baseType: !5, size: 32, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407}
!395 = !DIEnumerator(name: "UndefinedAlphaChannel", value: 0)
!396 = !DIEnumerator(name: "ActivateAlphaChannel", value: 1)
!397 = !DIEnumerator(name: "BackgroundAlphaChannel", value: 2)
!398 = !DIEnumerator(name: "CopyAlphaChannel", value: 3)
!399 = !DIEnumerator(name: "DeactivateAlphaChannel", value: 4)
!400 = !DIEnumerator(name: "ExtractAlphaChannel", value: 5)
!401 = !DIEnumerator(name: "OpaqueAlphaChannel", value: 6)
!402 = !DIEnumerator(name: "ResetAlphaChannel", value: 7)
!403 = !DIEnumerator(name: "SetAlphaChannel", value: 8)
!404 = !DIEnumerator(name: "ShapeAlphaChannel", value: 9)
!405 = !DIEnumerator(name: "TransparentAlphaChannel", value: 10)
!406 = !DIEnumerator(name: "FlattenAlphaChannel", value: 11)
!407 = !DIEnumerator(name: "RemoveAlphaChannel", value: 12)
!408 = !{!409, !410, !415, !470, !426, !443, !631, !633, !452, !438, !635, !538, !637, !632}
!409 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !411, line: 77, baseType: !412)
!411 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !413, line: 193, baseType: !414)
!413 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!414 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !418)
!418 = !{!419, !421, !423, !425, !428, !430, !432, !433, !434, !435, !436, !437, !448, !449, !450, !451, !453, !467, !469, !471, !473, !476, !477, !478, !479, !480, !481, !489, !490, !491, !492, !493, !494, !496, !498, !500, !502, !504, !506, !508, !509, !510, !511, !512, !513, !514, !522, !537, !551, !552, !553, !554, !558, !562, !566, !567, !568, !569, !570, !588, !589, !591, !592, !602, !603, !605, !606, !607, !608, !609, !610, !612, !613, !614, !615, !616, !617, !618, !620, !621, !622, !623, !624, !628, !630}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !417, file: !73, line: 153, baseType: !420, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !417, file: !73, line: 156, baseType: !422, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !417, file: !73, line: 159, baseType: !424, size: 32, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !417, file: !73, line: 162, baseType: !426, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !427, line: 46, baseType: !409)
!427 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!428 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !417, file: !73, line: 165, baseType: !429, size: 32, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !417, file: !73, line: 168, baseType: !431, size: 32, offset: 224)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !417, file: !73, line: 169, baseType: !431, size: 32, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !417, file: !73, line: 172, baseType: !426, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !417, file: !73, line: 173, baseType: !426, size: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !417, file: !73, line: 174, baseType: !426, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !417, file: !73, line: 175, baseType: !426, size: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !417, file: !73, line: 178, baseType: !438, size: 64, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !441)
!441 = !{!442, !445, !446, !447}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !440, file: !326, line: 143, baseType: !443, size: 16)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !444)
!444 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !440, file: !326, line: 144, baseType: !443, size: 16, offset: 16)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !440, file: !326, line: 145, baseType: !443, size: 16, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !440, file: !326, line: 146, baseType: !443, size: 16, offset: 48)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !417, file: !73, line: 179, baseType: !439, size: 64, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !417, file: !73, line: 180, baseType: !439, size: 64, offset: 704)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !417, file: !73, line: 181, baseType: !439, size: 64, offset: 768)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !417, file: !73, line: 184, baseType: !452, size: 64, offset: 832)
!452 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !417, file: !73, line: 187, baseType: !454, size: 768, offset: 896)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !73, line: 128, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !73, line: 121, size: 768, elements: !456)
!456 = !{!457, !464, !465, !466}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !455, file: !73, line: 124, baseType: !458, size: 192)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !73, line: 101, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !73, line: 95, size: 192, elements: !460)
!460 = !{!461, !462, !463}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !459, file: !73, line: 98, baseType: !452, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !459, file: !73, line: 99, baseType: !452, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !459, file: !73, line: 100, baseType: !452, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !455, file: !73, line: 125, baseType: !458, size: 192, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !455, file: !73, line: 126, baseType: !458, size: 192, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !455, file: !73, line: 127, baseType: !458, size: 192, offset: 576)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !417, file: !73, line: 190, baseType: !468, size: 32, offset: 1664)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !417, file: !73, line: 193, baseType: !470, size: 64, offset: 1728)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !417, file: !73, line: 196, baseType: !472, size: 32, offset: 1792)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !73, line: 93, baseType: !96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !417, file: !73, line: 199, baseType: !474, size: 64, offset: 1856)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !417, file: !73, line: 200, baseType: !474, size: 64, offset: 1920)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !417, file: !73, line: 201, baseType: !474, size: 64, offset: 1984)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !417, file: !73, line: 204, baseType: !410, size: 64, offset: 2048)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !417, file: !73, line: 207, baseType: !452, size: 64, offset: 2112)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !417, file: !73, line: 208, baseType: !452, size: 64, offset: 2176)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !417, file: !73, line: 211, baseType: !482, size: 256, offset: 2240)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !484)
!484 = !{!485, !486, !487, !488}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !483, file: !153, line: 124, baseType: !426, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !483, file: !153, line: 125, baseType: !426, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !483, file: !153, line: 128, baseType: !410, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !483, file: !153, line: 129, baseType: !410, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !417, file: !73, line: 212, baseType: !482, size: 256, offset: 2496)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !417, file: !73, line: 213, baseType: !482, size: 256, offset: 2752)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !417, file: !73, line: 216, baseType: !452, size: 64, offset: 3008)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !417, file: !73, line: 217, baseType: !452, size: 64, offset: 3072)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !417, file: !73, line: 218, baseType: !452, size: 64, offset: 3136)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !417, file: !73, line: 221, baseType: !495, size: 32, offset: 3200)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !417, file: !73, line: 224, baseType: !497, size: 32, offset: 3232)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !73, line: 73, baseType: !136)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !417, file: !73, line: 227, baseType: !499, size: 32, offset: 3264)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !417, file: !73, line: 230, baseType: !501, size: 32, offset: 3296)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !417, file: !73, line: 233, baseType: !503, size: 32, offset: 3328)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !417, file: !73, line: 236, baseType: !505, size: 32, offset: 3360)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !417, file: !73, line: 239, baseType: !507, size: 64, offset: 3392)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !417, file: !73, line: 242, baseType: !426, size: 64, offset: 3456)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !417, file: !73, line: 243, baseType: !426, size: 64, offset: 3520)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !417, file: !73, line: 246, baseType: !410, size: 64, offset: 3584)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !417, file: !73, line: 249, baseType: !426, size: 64, offset: 3648)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !417, file: !73, line: 250, baseType: !426, size: 64, offset: 3712)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !417, file: !73, line: 253, baseType: !410, size: 64, offset: 3776)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !417, file: !73, line: 256, baseType: !515, size: 192, offset: 3840)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !516, line: 68, baseType: !517)
!516 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !516, line: 62, size: 192, elements: !518)
!518 = !{!519, !520, !521}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !517, file: !516, line: 65, baseType: !452, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !517, file: !516, line: 66, baseType: !452, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !517, file: !516, line: 67, baseType: !452, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !417, file: !73, line: 259, baseType: !523, size: 512, offset: 4032)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !525)
!525 = !{!526, !533, !534, !536}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !524, file: !247, line: 43, baseType: !527, size: 192)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !529)
!529 = !{!530, !531, !532}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !528, file: !247, line: 35, baseType: !452, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !528, file: !247, line: 36, baseType: !452, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !528, file: !247, line: 37, baseType: !452, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !524, file: !247, line: 44, baseType: !527, size: 192, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !524, file: !247, line: 47, baseType: !535, size: 32, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !524, file: !247, line: 50, baseType: !426, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !417, file: !73, line: 262, baseType: !538, size: 64, offset: 4544)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !539, line: 26, baseType: !540)
!539 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!431, !543, !545, !548, !470}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !547)
!547 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !550)
!550 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !417, file: !73, line: 265, baseType: !470, size: 64, offset: 4608)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !417, file: !73, line: 266, baseType: !470, size: 64, offset: 4672)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !417, file: !73, line: 267, baseType: !470, size: 64, offset: 4736)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !417, file: !73, line: 270, baseType: !555, size: 64, offset: 4800)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !48, line: 52, baseType: !557)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !48, line: 51, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !417, file: !73, line: 273, baseType: !559, size: 64, offset: 4864)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !561)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !417, file: !73, line: 276, baseType: !563, size: 32768, offset: 4928)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 32768, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 4096)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !417, file: !73, line: 277, baseType: !563, size: 32768, offset: 37696)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !417, file: !73, line: 278, baseType: !563, size: 32768, offset: 70464)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !417, file: !73, line: 281, baseType: !426, size: 64, offset: 103232)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !417, file: !73, line: 282, baseType: !426, size: 64, offset: 103296)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !417, file: !73, line: 285, baseType: !571, size: 448, offset: 103360)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !573)
!573 = !{!574, !576, !578, !579, !580, !581, !582, !587}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !572, file: !253, line: 105, baseType: !575, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !572, file: !253, line: 108, baseType: !577, size: 32, offset: 32)
!577 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !572, file: !253, line: 111, baseType: !474, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !572, file: !253, line: 112, baseType: !474, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !572, file: !253, line: 115, baseType: !470, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !572, file: !253, line: 118, baseType: !431, size: 32, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !572, file: !253, line: 121, baseType: !583, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !585, line: 26, baseType: !586)
!585 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !585, line: 25, flags: DIFlagFwdDecl)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !572, file: !253, line: 124, baseType: !426, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !417, file: !73, line: 288, baseType: !431, size: 32, offset: 103808)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !417, file: !73, line: 291, baseType: !590, size: 64, offset: 103872)
!590 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !410)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !417, file: !73, line: 294, baseType: !583, size: 64, offset: 103936)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !417, file: !73, line: 297, baseType: !593, size: 256, offset: 104000)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !595)
!595 = !{!596, !597, !598, !601}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !594, file: !89, line: 30, baseType: !474, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !594, file: !89, line: 33, baseType: !426, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !594, file: !89, line: 36, baseType: !599, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !594, file: !89, line: 39, baseType: !426, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !417, file: !73, line: 298, baseType: !593, size: 256, offset: 104256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !417, file: !73, line: 299, baseType: !604, size: 64, offset: 104512)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !417, file: !73, line: 302, baseType: !426, size: 64, offset: 104576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !417, file: !73, line: 305, baseType: !426, size: 64, offset: 104640)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !417, file: !73, line: 308, baseType: !507, size: 64, offset: 104704)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !417, file: !73, line: 309, baseType: !507, size: 64, offset: 104768)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !417, file: !73, line: 310, baseType: !507, size: 64, offset: 104832)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !417, file: !73, line: 313, baseType: !611, size: 32, offset: 104896)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !417, file: !73, line: 316, baseType: !431, size: 32, offset: 104928)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !417, file: !73, line: 319, baseType: !439, size: 64, offset: 104960)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !417, file: !73, line: 322, baseType: !507, size: 64, offset: 105024)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !417, file: !73, line: 325, baseType: !482, size: 256, offset: 105088)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !417, file: !73, line: 328, baseType: !470, size: 64, offset: 105344)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !417, file: !73, line: 329, baseType: !470, size: 64, offset: 105408)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !417, file: !73, line: 332, baseType: !619, size: 32, offset: 105472)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !417, file: !73, line: 335, baseType: !431, size: 32, offset: 105504)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !417, file: !73, line: 338, baseType: !549, size: 64, offset: 105536)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !417, file: !73, line: 341, baseType: !431, size: 32, offset: 105600)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !417, file: !73, line: 344, baseType: !426, size: 64, offset: 105664)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !417, file: !73, line: 347, baseType: !625, size: 64, offset: 105728)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !626, line: 7, baseType: !627)
!626 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !413, line: 160, baseType: !414)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !417, file: !73, line: 350, baseType: !629, size: 32, offset: 105792)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !417, file: !73, line: 353, baseType: !426, size: 64, offset: 105856)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !326, line: 129, baseType: !443)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !4, line: 78, baseType: !634)
!634 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!639 = !{i32 7, !"Dwarf Version", i32 5}
!640 = !{i32 2, !"Debug Info Version", i32 3}
!641 = !{i32 1, !"wchar_size", i32 4}
!642 = !{i32 7, !"PIC Level", i32 2}
!643 = !{i32 7, !"PIE Level", i32 2}
!644 = !{i32 7, !"uwtable", i32 2}
!645 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!646 = distinct !DISubprogram(name: "BorderImage", scope: !647, file: !647, line: 102, type: !648, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !655)
!647 = !DIFile(filename: "apps/538.imagick_r/src/magick/decorate.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9e525f7ade4e7c709fc5bbb3189906a0")
!648 = !DISubroutineType(types: !649)
!649 = !{!415, !650, !652, !654}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!655 = !{!656, !657, !658, !659, !660, !661}
!656 = !DILocalVariable(name: "image", arg: 1, scope: !646, file: !647, line: 102, type: !650)
!657 = !DILocalVariable(name: "border_info", arg: 2, scope: !646, file: !647, line: 103, type: !652)
!658 = !DILocalVariable(name: "exception", arg: 3, scope: !646, file: !647, line: 103, type: !654)
!659 = !DILocalVariable(name: "border_image", scope: !646, file: !647, line: 106, type: !415)
!660 = !DILocalVariable(name: "clone_image", scope: !646, file: !647, line: 107, type: !415)
!661 = !DILocalVariable(name: "frame_info", scope: !646, file: !647, line: 110, type: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameInfo", file: !663, line: 36, baseType: !664)
!663 = !DIFile(filename: "apps/538.imagick_r/src/magick/decorate.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "93180cd636c18c61cc22d09586313d94")
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FrameInfo", file: !663, line: 25, size: 384, elements: !665)
!665 = !{!666, !667, !668, !669, !670, !671}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !664, file: !663, line: 28, baseType: !426, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !664, file: !663, line: 29, baseType: !426, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !664, file: !663, line: 32, baseType: !410, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !664, file: !663, line: 33, baseType: !410, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "inner_bevel", scope: !664, file: !663, line: 34, baseType: !410, size: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "outer_bevel", scope: !664, file: !663, line: 35, baseType: !410, size: 64, offset: 320)
!672 = !DILocation(line: 0, scope: !646)
!673 = !DILocation(line: 109, column: 3, scope: !646)
!674 = !DILocation(line: 110, column: 5, scope: !646)
!675 = !DILocation(line: 114, column: 14, scope: !676)
!676 = distinct !DILexicalBlock(scope: !646, file: !647, line: 114, column: 7)
!677 = !{!678, !679, i64 12976}
!678 = !{!"_Image", !679, i64 0, !679, i64 4, !679, i64 8, !681, i64 16, !679, i64 24, !679, i64 28, !679, i64 32, !681, i64 40, !681, i64 48, !681, i64 56, !681, i64 64, !682, i64 72, !683, i64 80, !683, i64 88, !683, i64 96, !685, i64 104, !686, i64 112, !679, i64 208, !682, i64 216, !679, i64 224, !682, i64 232, !682, i64 240, !682, i64 248, !681, i64 256, !685, i64 264, !685, i64 272, !688, i64 280, !688, i64 312, !688, i64 344, !685, i64 376, !685, i64 384, !685, i64 392, !679, i64 400, !679, i64 404, !679, i64 408, !679, i64 412, !679, i64 416, !679, i64 420, !682, i64 424, !681, i64 432, !681, i64 440, !681, i64 448, !681, i64 456, !681, i64 464, !681, i64 472, !689, i64 480, !690, i64 504, !682, i64 568, !682, i64 576, !682, i64 584, !682, i64 592, !682, i64 600, !682, i64 608, !679, i64 616, !679, i64 4712, !679, i64 8808, !681, i64 12904, !681, i64 12912, !692, i64 12920, !679, i64 12976, !681, i64 12984, !682, i64 12992, !694, i64 13000, !694, i64 13032, !682, i64 13064, !681, i64 13072, !681, i64 13080, !682, i64 13088, !682, i64 13096, !682, i64 13104, !679, i64 13112, !679, i64 13116, !683, i64 13120, !682, i64 13128, !688, i64 13136, !682, i64 13168, !682, i64 13176, !679, i64 13184, !679, i64 13188, !695, i64 13192, !679, i64 13200, !681, i64 13208, !681, i64 13216, !679, i64 13224, !681, i64 13232}
!679 = !{!"omnipotent char", !680, i64 0}
!680 = !{!"Simple C/C++ TBAA"}
!681 = !{!"long", !679, i64 0}
!682 = !{!"any pointer", !679, i64 0}
!683 = !{!"_PixelPacket", !684, i64 0, !684, i64 2, !684, i64 4, !684, i64 6}
!684 = !{!"short", !679, i64 0}
!685 = !{!"double", !679, i64 0}
!686 = !{!"_ChromaticityInfo", !687, i64 0, !687, i64 24, !687, i64 48, !687, i64 72}
!687 = !{!"_PrimaryInfo", !685, i64 0, !685, i64 8, !685, i64 16}
!688 = !{!"_RectangleInfo", !681, i64 0, !681, i64 8, !681, i64 16, !681, i64 24}
!689 = !{!"_ErrorInfo", !685, i64 0, !685, i64 8, !685, i64 16}
!690 = !{!"_TimerInfo", !691, i64 0, !691, i64 24, !679, i64 48, !681, i64 56}
!691 = !{!"_Timer", !685, i64 0, !685, i64 8, !685, i64 16}
!692 = !{!"_ExceptionInfo", !679, i64 0, !693, i64 4, !682, i64 8, !682, i64 16, !682, i64 24, !679, i64 32, !682, i64 40, !681, i64 48}
!693 = !{!"int", !679, i64 0}
!694 = !{!"_ProfileInfo", !682, i64 0, !681, i64 8, !682, i64 16, !681, i64 24}
!695 = !{!"long long", !679, i64 0}
!696 = !DILocation(line: 114, column: 20, scope: !676)
!697 = !DILocation(line: 114, column: 7, scope: !646)
!698 = !DILocation(line: 115, column: 68, scope: !676)
!699 = !DILocation(line: 115, column: 12, scope: !676)
!700 = !DILocation(line: 115, column: 5, scope: !676)
!701 = !DILocation(line: 117, column: 27, scope: !646)
!702 = !{!678, !681, i64 40}
!703 = !DILocation(line: 117, column: 49, scope: !646)
!704 = !{!688, !681, i64 0}
!705 = !DILocation(line: 117, column: 55, scope: !646)
!706 = !DILocation(line: 117, column: 34, scope: !646)
!707 = !DILocation(line: 117, column: 19, scope: !646)
!708 = !{!709, !681, i64 0}
!709 = !{!"_FrameInfo", !681, i64 0, !681, i64 8, !681, i64 16, !681, i64 24, !681, i64 32, !681, i64 40}
!710 = !DILocation(line: 118, column: 28, scope: !646)
!711 = !{!678, !681, i64 48}
!712 = !DILocation(line: 118, column: 47, scope: !646)
!713 = !{!688, !681, i64 8}
!714 = !DILocation(line: 118, column: 54, scope: !646)
!715 = !DILocation(line: 118, column: 32, scope: !646)
!716 = !DILocation(line: 118, column: 14, scope: !646)
!717 = !DILocation(line: 118, column: 20, scope: !646)
!718 = !{!709, !681, i64 8}
!719 = !DILocation(line: 119, column: 14, scope: !646)
!720 = !DILocation(line: 119, column: 15, scope: !646)
!721 = !{!709, !681, i64 16}
!722 = !DILocation(line: 120, column: 14, scope: !646)
!723 = !DILocation(line: 120, column: 15, scope: !646)
!724 = !{!709, !681, i64 24}
!725 = !DILocation(line: 121, column: 14, scope: !646)
!726 = !DILocation(line: 122, column: 25, scope: !646)
!727 = !DILocation(line: 123, column: 15, scope: !646)
!728 = !DILocation(line: 124, column: 19, scope: !729)
!729 = distinct !DILexicalBlock(scope: !646, file: !647, line: 124, column: 7)
!730 = !DILocation(line: 124, column: 7, scope: !646)
!731 = !DILocation(line: 126, column: 16, scope: !646)
!732 = !DILocation(line: 126, column: 35, scope: !646)
!733 = !DILocation(line: 127, column: 16, scope: !646)
!734 = !DILocation(line: 128, column: 15, scope: !646)
!735 = !DILocation(line: 129, column: 20, scope: !736)
!736 = distinct !DILexicalBlock(scope: !646, file: !647, line: 129, column: 7)
!737 = !DILocation(line: 129, column: 7, scope: !646)
!738 = !DILocation(line: 130, column: 19, scope: !736)
!739 = !DILocation(line: 130, column: 38, scope: !736)
!740 = !DILocation(line: 130, column: 5, scope: !736)
!741 = !DILocation(line: 132, column: 1, scope: !646)
!742 = !DISubprogram(name: "LogMagickEvent", scope: !369, file: !369, line: 83, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!743 = !DISubroutineType(types: !744)
!744 = !{!431, !745, !543, !543, !747, !543, null}
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !369, line: 58, baseType: !368)
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!748 = !{}
!749 = !DISubprogram(name: "CloneImage", scope: !73, file: !73, line: 508, type: !750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!750 = !DISubroutineType(types: !751)
!751 = !{!415, !650, !747, !747, !752, !654}
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!753 = distinct !DISubprogram(name: "FrameImage", scope: !647, file: !647, line: 165, type: !754, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !758)
!754 = !DISubroutineType(types: !755)
!755 = !{!415, !650, !756, !654}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!758 = !{!759, !760, !761, !762, !767, !768, !769, !770, !771, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !800, !801, !803, !807, !808, !809, !812, !813, !816, !819, !820}
!759 = !DILocalVariable(name: "image", arg: 1, scope: !753, file: !647, line: 165, type: !650)
!760 = !DILocalVariable(name: "frame_info", arg: 2, scope: !753, file: !647, line: 165, type: !756)
!761 = !DILocalVariable(name: "exception", arg: 3, scope: !753, file: !647, line: 166, type: !654)
!762 = !DILocalVariable(name: "image_view", scope: !753, file: !647, line: 171, type: !763)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !765, line: 50, baseType: !766)
!765 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !326, line: 160, flags: DIFlagFwdDecl)
!767 = !DILocalVariable(name: "frame_view", scope: !753, file: !647, line: 172, type: !763)
!768 = !DILocalVariable(name: "frame_image", scope: !753, file: !647, line: 175, type: !415)
!769 = !DILocalVariable(name: "status", scope: !753, file: !647, line: 178, type: !431)
!770 = !DILocalVariable(name: "progress", scope: !753, file: !647, line: 181, type: !546)
!771 = !DILocalVariable(name: "accentuate", scope: !753, file: !647, line: 184, type: !772)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !326, line: 127, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !326, line: 104, size: 448, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780, !781, !782, !783, !784}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !773, file: !326, line: 107, baseType: !420, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !773, file: !326, line: 110, baseType: !422, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !773, file: !326, line: 113, baseType: !431, size: 32, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !773, file: !326, line: 116, baseType: !452, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !773, file: !326, line: 119, baseType: !426, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !773, file: !326, line: 122, baseType: !633, size: 32, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !773, file: !326, line: 123, baseType: !633, size: 32, offset: 288)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !773, file: !326, line: 124, baseType: !633, size: 32, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !773, file: !326, line: 125, baseType: !633, size: 32, offset: 352)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !773, file: !326, line: 126, baseType: !633, size: 32, offset: 384)
!785 = !DILocalVariable(name: "border", scope: !753, file: !647, line: 185, type: !772)
!786 = !DILocalVariable(name: "highlight", scope: !753, file: !647, line: 186, type: !772)
!787 = !DILocalVariable(name: "interior", scope: !753, file: !647, line: 187, type: !772)
!788 = !DILocalVariable(name: "matte", scope: !753, file: !647, line: 188, type: !772)
!789 = !DILocalVariable(name: "shadow", scope: !753, file: !647, line: 189, type: !772)
!790 = !DILocalVariable(name: "trough", scope: !753, file: !647, line: 190, type: !772)
!791 = !DILocalVariable(name: "x", scope: !753, file: !647, line: 193, type: !410)
!792 = !DILocalVariable(name: "bevel_width", scope: !753, file: !647, line: 196, type: !426)
!793 = !DILocalVariable(name: "height", scope: !753, file: !647, line: 197, type: !426)
!794 = !DILocalVariable(name: "width", scope: !753, file: !647, line: 198, type: !426)
!795 = !DILocalVariable(name: "y", scope: !753, file: !647, line: 201, type: !410)
!796 = !DILocalVariable(name: "frame_indexes", scope: !797, file: !647, line: 302, type: !799)
!797 = distinct !DILexicalBlock(scope: !798, file: !647, line: 300, column: 5)
!798 = distinct !DILexicalBlock(scope: !753, file: !647, line: 299, column: 7)
!799 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !631)
!800 = !DILocalVariable(name: "x", scope: !797, file: !647, line: 305, type: !410)
!801 = !DILocalVariable(name: "q", scope: !797, file: !647, line: 308, type: !802)
!802 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !438)
!803 = !DILocalVariable(name: "frame_indexes", scope: !804, file: !647, line: 419, type: !799)
!804 = distinct !DILexicalBlock(scope: !805, file: !647, line: 417, column: 3)
!805 = distinct !DILexicalBlock(scope: !806, file: !647, line: 416, column: 3)
!806 = distinct !DILexicalBlock(scope: !753, file: !647, line: 416, column: 3)
!807 = !DILocalVariable(name: "x", scope: !804, file: !647, line: 422, type: !410)
!808 = !DILocalVariable(name: "q", scope: !804, file: !647, line: 425, type: !802)
!809 = !DILocalVariable(name: "indexes", scope: !810, file: !647, line: 472, type: !637)
!810 = distinct !DILexicalBlock(scope: !811, file: !647, line: 470, column: 7)
!811 = distinct !DILexicalBlock(scope: !804, file: !647, line: 461, column: 9)
!812 = !DILocalVariable(name: "p", scope: !810, file: !647, line: 475, type: !635)
!813 = !DILocalVariable(name: "proceed", scope: !814, file: !647, line: 518, type: !431)
!814 = distinct !DILexicalBlock(scope: !815, file: !647, line: 516, column: 7)
!815 = distinct !DILexicalBlock(scope: !804, file: !647, line: 515, column: 9)
!816 = !DILocalVariable(name: "frame_indexes", scope: !817, file: !647, line: 533, type: !799)
!817 = distinct !DILexicalBlock(scope: !818, file: !647, line: 531, column: 5)
!818 = distinct !DILexicalBlock(scope: !753, file: !647, line: 530, column: 7)
!819 = !DILocalVariable(name: "x", scope: !817, file: !647, line: 536, type: !410)
!820 = !DILocalVariable(name: "q", scope: !817, file: !647, line: 539, type: !802)
!821 = !DILocation(line: 0, scope: !753)
!822 = !DILocation(line: 183, column: 3, scope: !753)
!823 = !DILocation(line: 184, column: 5, scope: !753)
!824 = !DILocation(line: 185, column: 5, scope: !753)
!825 = !DILocation(line: 186, column: 5, scope: !753)
!826 = !DILocation(line: 187, column: 5, scope: !753)
!827 = !DILocation(line: 188, column: 5, scope: !753)
!828 = !DILocation(line: 189, column: 5, scope: !753)
!829 = !DILocation(line: 190, column: 5, scope: !753)
!830 = !DILocation(line: 208, column: 14, scope: !831)
!831 = distinct !DILexicalBlock(scope: !753, file: !647, line: 208, column: 7)
!832 = !DILocation(line: 208, column: 20, scope: !831)
!833 = !DILocation(line: 208, column: 7, scope: !753)
!834 = !DILocation(line: 209, column: 68, scope: !831)
!835 = !DILocation(line: 209, column: 12, scope: !831)
!836 = !DILocation(line: 209, column: 5, scope: !831)
!837 = !DILocation(line: 211, column: 20, scope: !838)
!838 = distinct !DILexicalBlock(scope: !753, file: !647, line: 211, column: 7)
!839 = !{!709, !681, i64 40}
!840 = !DILocation(line: 211, column: 32, scope: !838)
!841 = !DILocation(line: 211, column: 37, scope: !838)
!842 = !DILocation(line: 211, column: 53, scope: !838)
!843 = !{!709, !681, i64 32}
!844 = !DILocation(line: 211, column: 65, scope: !838)
!845 = !DILocation(line: 211, column: 7, scope: !753)
!846 = !DILocation(line: 212, column: 5, scope: !847)
!847 = distinct !DILexicalBlock(scope: !838, file: !647, line: 212, column: 5)
!848 = !DILocation(line: 213, column: 48, scope: !753)
!849 = !DILocation(line: 214, column: 21, scope: !753)
!850 = !DILocation(line: 214, column: 39, scope: !753)
!851 = !DILocation(line: 214, column: 40, scope: !753)
!852 = !DILocation(line: 215, column: 22, scope: !753)
!853 = !DILocation(line: 215, column: 41, scope: !753)
!854 = !DILocation(line: 216, column: 23, scope: !855)
!855 = distinct !DILexicalBlock(scope: !753, file: !647, line: 216, column: 7)
!856 = !DILocation(line: 216, column: 14, scope: !855)
!857 = !DILocation(line: 216, column: 32, scope: !855)
!858 = !DILocation(line: 215, column: 42, scope: !753)
!859 = !DILocation(line: 216, column: 52, scope: !855)
!860 = !DILocation(line: 216, column: 43, scope: !855)
!861 = !DILocation(line: 216, column: 7, scope: !753)
!862 = !DILocation(line: 217, column: 5, scope: !863)
!863 = distinct !DILexicalBlock(scope: !855, file: !647, line: 217, column: 5)
!864 = !DILocation(line: 221, column: 15, scope: !753)
!865 = !DILocation(line: 223, column: 19, scope: !866)
!866 = distinct !DILexicalBlock(scope: !753, file: !647, line: 223, column: 7)
!867 = !DILocation(line: 223, column: 7, scope: !753)
!868 = !DILocation(line: 225, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !753, file: !647, line: 225, column: 7)
!870 = !DILocation(line: 225, column: 53, scope: !869)
!871 = !DILocation(line: 225, column: 7, scope: !753)
!872 = !DILocation(line: 227, column: 48, scope: !873)
!873 = distinct !DILexicalBlock(scope: !869, file: !647, line: 226, column: 5)
!874 = !DILocation(line: 227, column: 7, scope: !873)
!875 = !DILocation(line: 228, column: 19, scope: !873)
!876 = !DILocation(line: 229, column: 7, scope: !873)
!877 = !DILocation(line: 231, column: 34, scope: !878)
!878 = distinct !DILexicalBlock(scope: !753, file: !647, line: 231, column: 7)
!879 = !DILocalVariable(name: "pixel", arg: 1, scope: !880, file: !881, line: 158, type: !635)
!880 = distinct !DISubprogram(name: "IsPixelGray", scope: !881, file: !881, line: 158, type: !882, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !884)
!881 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-accessor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5a3f95523a4166f31b566bb4d0a07c1b")
!882 = !DISubroutineType(types: !883)
!883 = !{!431, !635}
!884 = !{!879, !885, !886, !887}
!885 = !DILocalVariable(name: "blue", scope: !880, file: !881, line: 161, type: !633)
!886 = !DILocalVariable(name: "green", scope: !880, file: !881, line: 162, type: !633)
!887 = !DILocalVariable(name: "red", scope: !880, file: !881, line: 163, type: !633)
!888 = !DILocation(line: 0, scope: !880, inlinedAt: !889)
!889 = distinct !DILocation(line: 231, column: 8, scope: !878)
!890 = !DILocation(line: 165, column: 31, scope: !880, inlinedAt: !889)
!891 = !{!683, !684, i64 4}
!892 = !DILocation(line: 165, column: 7, scope: !880, inlinedAt: !889)
!893 = !DILocation(line: 166, column: 33, scope: !880, inlinedAt: !889)
!894 = !{!683, !684, i64 2}
!895 = !DILocation(line: 166, column: 9, scope: !880, inlinedAt: !889)
!896 = !DILocation(line: 167, column: 32, scope: !880, inlinedAt: !889)
!897 = !{!683, !684, i64 0}
!898 = !DILocation(line: 168, column: 30, scope: !899, inlinedAt: !889)
!899 = distinct !DILexicalBlock(scope: !880, file: !881, line: 168, column: 7)
!900 = !DILocalVariable(name: "x", arg: 1, scope: !901, file: !881, line: 111, type: !904)
!901 = distinct !DISubprogram(name: "AbsolutePixelValue", scope: !881, file: !881, line: 111, type: !902, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !905)
!902 = !DISubroutineType(types: !903)
!903 = !{!633, !904}
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!905 = !{!900}
!906 = !DILocation(line: 0, scope: !901, inlinedAt: !907)
!907 = distinct !DILocation(line: 168, column: 8, scope: !899, inlinedAt: !889)
!908 = !DILocation(line: 113, column: 12, scope: !901, inlinedAt: !907)
!909 = !DILocation(line: 113, column: 10, scope: !901, inlinedAt: !907)
!910 = !DILocation(line: 113, column: 21, scope: !901, inlinedAt: !907)
!911 = !DILocation(line: 168, column: 8, scope: !899, inlinedAt: !889)
!912 = !DILocation(line: 168, column: 38, scope: !899, inlinedAt: !889)
!913 = !DILocation(line: 168, column: 55, scope: !899, inlinedAt: !889)
!914 = !DILocation(line: 167, column: 8, scope: !880, inlinedAt: !889)
!915 = !DILocation(line: 169, column: 32, scope: !899, inlinedAt: !889)
!916 = !DILocation(line: 0, scope: !901, inlinedAt: !917)
!917 = distinct !DILocation(line: 169, column: 8, scope: !899, inlinedAt: !889)
!918 = !DILocation(line: 113, column: 12, scope: !901, inlinedAt: !917)
!919 = !DILocation(line: 113, column: 10, scope: !901, inlinedAt: !917)
!920 = !DILocation(line: 113, column: 21, scope: !901, inlinedAt: !917)
!921 = !DILocation(line: 169, column: 8, scope: !899, inlinedAt: !889)
!922 = !DILocation(line: 169, column: 39, scope: !899, inlinedAt: !889)
!923 = !DILocation(line: 168, column: 7, scope: !880, inlinedAt: !889)
!924 = !DILocation(line: 232, column: 38, scope: !878)
!925 = !{!678, !679, i64 4}
!926 = !DILocalVariable(name: "colorspace", arg: 1, scope: !927, file: !928, line: 86, type: !931)
!927 = distinct !DISubprogram(name: "IsGrayColorspace", scope: !928, file: !928, line: 85, type: !929, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !932)
!928 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bac8bff1724649a3818d765f5f2e1482")
!929 = !DISubroutineType(types: !930)
!930 = !{!431, !931}
!931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!932 = !{!926}
!933 = !DILocation(line: 0, scope: !927, inlinedAt: !934)
!934 = distinct !DILocation(line: 232, column: 8, scope: !878)
!935 = !DILocation(line: 88, column: 38, scope: !936, inlinedAt: !934)
!936 = distinct !DILexicalBlock(scope: !927, file: !928, line: 88, column: 7)
!937 = !DILocation(line: 233, column: 12, scope: !878)
!938 = !DILocation(line: 233, column: 5, scope: !878)
!939 = !DILocation(line: 234, column: 34, scope: !940)
!940 = distinct !DILexicalBlock(scope: !753, file: !647, line: 234, column: 7)
!941 = !{!678, !684, i64 94}
!942 = !DILocation(line: 234, column: 42, scope: !940)
!943 = !DILocation(line: 234, column: 60, scope: !940)
!944 = !DILocation(line: 235, column: 21, scope: !940)
!945 = !{!678, !679, i64 32}
!946 = !DILocation(line: 235, column: 27, scope: !940)
!947 = !DILocation(line: 234, column: 7, scope: !753)
!948 = !DILocation(line: 236, column: 12, scope: !940)
!949 = !DILocation(line: 236, column: 5, scope: !940)
!950 = !DILocation(line: 237, column: 16, scope: !753)
!951 = !DILocation(line: 237, column: 28, scope: !753)
!952 = !{i64 0, i64 8, !953, i64 8, i64 8, !953, i64 16, i64 8, !953, i64 24, i64 8, !953}
!953 = !{!681, !681, i64 0}
!954 = !DILocation(line: 238, column: 20, scope: !955)
!955 = distinct !DILexicalBlock(scope: !753, file: !647, line: 238, column: 7)
!956 = !{!678, !681, i64 280}
!957 = !DILocation(line: 238, column: 26, scope: !955)
!958 = !DILocation(line: 238, column: 32, scope: !955)
!959 = !DILocation(line: 238, column: 48, scope: !955)
!960 = !{!678, !681, i64 288}
!961 = !DILocation(line: 238, column: 55, scope: !955)
!962 = !DILocation(line: 238, column: 7, scope: !753)
!963 = !DILocation(line: 240, column: 45, scope: !964)
!964 = distinct !DILexicalBlock(scope: !955, file: !647, line: 239, column: 5)
!965 = !DILocation(line: 240, column: 60, scope: !964)
!966 = !DILocation(line: 240, column: 52, scope: !964)
!967 = !DILocation(line: 240, column: 30, scope: !964)
!968 = !DILocation(line: 241, column: 46, scope: !964)
!969 = !DILocation(line: 241, column: 58, scope: !964)
!970 = !DILocation(line: 241, column: 50, scope: !964)
!971 = !DILocation(line: 241, column: 25, scope: !964)
!972 = !DILocation(line: 241, column: 31, scope: !964)
!973 = !DILocation(line: 242, column: 5, scope: !964)
!974 = !DILocation(line: 246, column: 3, scope: !753)
!975 = !DILocation(line: 247, column: 44, scope: !753)
!976 = !DILocalVariable(name: "image", arg: 1, scope: !977, file: !978, line: 92, type: !650)
!977 = distinct !DISubprogram(name: "SetMagickPixelPacket", scope: !978, file: !978, line: 92, type: !979, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !982)
!978 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!979 = !DISubroutineType(types: !980)
!980 = !{null, !650, !635, !637, !981}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!982 = !{!976, !983, !984, !985}
!983 = !DILocalVariable(name: "color", arg: 2, scope: !977, file: !978, line: 93, type: !635)
!984 = !DILocalVariable(name: "index", arg: 3, scope: !977, file: !978, line: 93, type: !637)
!985 = !DILocalVariable(name: "pixel", arg: 4, scope: !977, file: !978, line: 93, type: !981)
!986 = !DILocation(line: 0, scope: !977, inlinedAt: !987)
!987 = distinct !DILocation(line: 247, column: 3, scope: !753)
!988 = !DILocation(line: 95, column: 31, scope: !977, inlinedAt: !987)
!989 = !DILocation(line: 95, column: 14, scope: !977, inlinedAt: !987)
!990 = !DILocation(line: 95, column: 10, scope: !977, inlinedAt: !987)
!991 = !DILocation(line: 95, column: 13, scope: !977, inlinedAt: !987)
!992 = !{!993, !994, i64 32}
!993 = !{!"_MagickPixelPacket", !679, i64 0, !679, i64 4, !679, i64 8, !685, i64 16, !681, i64 24, !994, i64 32, !994, i64 36, !994, i64 40, !994, i64 44, !994, i64 48}
!994 = !{!"float", !679, i64 0}
!995 = !DILocation(line: 96, column: 33, scope: !977, inlinedAt: !987)
!996 = !DILocation(line: 96, column: 16, scope: !977, inlinedAt: !987)
!997 = !DILocation(line: 96, column: 10, scope: !977, inlinedAt: !987)
!998 = !DILocation(line: 96, column: 15, scope: !977, inlinedAt: !987)
!999 = !{!993, !994, i64 36}
!1000 = !DILocation(line: 97, column: 32, scope: !977, inlinedAt: !987)
!1001 = !DILocation(line: 97, column: 15, scope: !977, inlinedAt: !987)
!1002 = !DILocation(line: 97, column: 10, scope: !977, inlinedAt: !987)
!1003 = !DILocation(line: 97, column: 14, scope: !977, inlinedAt: !987)
!1004 = !{!993, !994, i64 40}
!1005 = !DILocation(line: 98, column: 35, scope: !977, inlinedAt: !987)
!1006 = !{!683, !684, i64 6}
!1007 = !DILocation(line: 98, column: 18, scope: !977, inlinedAt: !987)
!1008 = !DILocation(line: 98, column: 10, scope: !977, inlinedAt: !987)
!1009 = !DILocation(line: 98, column: 17, scope: !977, inlinedAt: !987)
!1010 = !{!993, !994, i64 44}
!1011 = !DILocation(line: 249, column: 3, scope: !753)
!1012 = !DILocation(line: 250, column: 9, scope: !753)
!1013 = !DILocation(line: 250, column: 19, scope: !753)
!1014 = !{!993, !679, i64 4}
!1015 = !DILocation(line: 251, column: 44, scope: !753)
!1016 = !DILocation(line: 0, scope: !977, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 251, column: 3, scope: !753)
!1018 = !DILocation(line: 95, column: 31, scope: !977, inlinedAt: !1017)
!1019 = !DILocation(line: 95, column: 14, scope: !977, inlinedAt: !1017)
!1020 = !DILocation(line: 95, column: 10, scope: !977, inlinedAt: !1017)
!1021 = !DILocation(line: 95, column: 13, scope: !977, inlinedAt: !1017)
!1022 = !DILocation(line: 96, column: 33, scope: !977, inlinedAt: !1017)
!1023 = !DILocation(line: 96, column: 16, scope: !977, inlinedAt: !1017)
!1024 = !DILocation(line: 96, column: 10, scope: !977, inlinedAt: !1017)
!1025 = !DILocation(line: 96, column: 15, scope: !977, inlinedAt: !1017)
!1026 = !DILocation(line: 97, column: 32, scope: !977, inlinedAt: !1017)
!1027 = !DILocation(line: 97, column: 15, scope: !977, inlinedAt: !1017)
!1028 = !DILocation(line: 97, column: 10, scope: !977, inlinedAt: !1017)
!1029 = !DILocation(line: 97, column: 14, scope: !977, inlinedAt: !1017)
!1030 = !DILocation(line: 98, column: 35, scope: !977, inlinedAt: !1017)
!1031 = !DILocation(line: 98, column: 18, scope: !977, inlinedAt: !1017)
!1032 = !DILocation(line: 98, column: 10, scope: !977, inlinedAt: !1017)
!1033 = !DILocation(line: 98, column: 17, scope: !977, inlinedAt: !1017)
!1034 = !DILocation(line: 253, column: 3, scope: !753)
!1035 = !DILocation(line: 254, column: 10, scope: !753)
!1036 = !DILocation(line: 254, column: 20, scope: !753)
!1037 = !DILocation(line: 0, scope: !977, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 255, column: 3, scope: !753)
!1039 = !DILocation(line: 95, column: 31, scope: !977, inlinedAt: !1038)
!1040 = !DILocation(line: 95, column: 14, scope: !977, inlinedAt: !1038)
!1041 = !DILocation(line: 95, column: 10, scope: !977, inlinedAt: !1038)
!1042 = !DILocation(line: 95, column: 13, scope: !977, inlinedAt: !1038)
!1043 = !DILocation(line: 96, column: 33, scope: !977, inlinedAt: !1038)
!1044 = !DILocation(line: 96, column: 16, scope: !977, inlinedAt: !1038)
!1045 = !DILocation(line: 96, column: 10, scope: !977, inlinedAt: !1038)
!1046 = !DILocation(line: 96, column: 15, scope: !977, inlinedAt: !1038)
!1047 = !DILocation(line: 97, column: 32, scope: !977, inlinedAt: !1038)
!1048 = !DILocation(line: 97, column: 15, scope: !977, inlinedAt: !1038)
!1049 = !DILocation(line: 97, column: 10, scope: !977, inlinedAt: !1038)
!1050 = !DILocation(line: 97, column: 14, scope: !977, inlinedAt: !1038)
!1051 = !DILocation(line: 98, column: 35, scope: !977, inlinedAt: !1038)
!1052 = !DILocation(line: 98, column: 18, scope: !977, inlinedAt: !1038)
!1053 = !DILocation(line: 98, column: 10, scope: !977, inlinedAt: !1038)
!1054 = !DILocation(line: 98, column: 17, scope: !977, inlinedAt: !1038)
!1055 = !DILocation(line: 257, column: 3, scope: !753)
!1056 = !DILocation(line: 259, column: 31, scope: !753)
!1057 = !DILocation(line: 259, column: 34, scope: !753)
!1058 = !DILocation(line: 258, column: 49, scope: !753)
!1059 = !DILocation(line: 258, column: 48, scope: !753)
!1060 = !DILocation(line: 258, column: 18, scope: !753)
!1061 = !DILocation(line: 258, column: 14, scope: !753)
!1062 = !DILocation(line: 258, column: 17, scope: !753)
!1063 = !DILocation(line: 261, column: 31, scope: !753)
!1064 = !DILocation(line: 261, column: 36, scope: !753)
!1065 = !DILocation(line: 260, column: 51, scope: !753)
!1066 = !DILocation(line: 260, column: 50, scope: !753)
!1067 = !DILocation(line: 260, column: 20, scope: !753)
!1068 = !DILocation(line: 260, column: 14, scope: !753)
!1069 = !DILocation(line: 260, column: 19, scope: !753)
!1070 = !DILocation(line: 263, column: 31, scope: !753)
!1071 = !DILocation(line: 263, column: 35, scope: !753)
!1072 = !DILocation(line: 262, column: 50, scope: !753)
!1073 = !DILocation(line: 262, column: 49, scope: !753)
!1074 = !DILocation(line: 262, column: 19, scope: !753)
!1075 = !DILocation(line: 262, column: 14, scope: !753)
!1076 = !DILocation(line: 262, column: 18, scope: !753)
!1077 = !DILocation(line: 264, column: 28, scope: !753)
!1078 = !DILocation(line: 264, column: 14, scope: !753)
!1079 = !DILocation(line: 264, column: 21, scope: !753)
!1080 = !DILocation(line: 265, column: 3, scope: !753)
!1081 = !DILocation(line: 267, column: 30, scope: !753)
!1082 = !DILocation(line: 267, column: 33, scope: !753)
!1083 = !DILocation(line: 266, column: 48, scope: !753)
!1084 = !DILocation(line: 266, column: 47, scope: !753)
!1085 = !DILocation(line: 266, column: 17, scope: !753)
!1086 = !DILocation(line: 266, column: 13, scope: !753)
!1087 = !DILocation(line: 266, column: 16, scope: !753)
!1088 = !DILocation(line: 269, column: 30, scope: !753)
!1089 = !DILocation(line: 269, column: 35, scope: !753)
!1090 = !DILocation(line: 268, column: 50, scope: !753)
!1091 = !DILocation(line: 268, column: 49, scope: !753)
!1092 = !DILocation(line: 268, column: 19, scope: !753)
!1093 = !DILocation(line: 268, column: 13, scope: !753)
!1094 = !DILocation(line: 268, column: 18, scope: !753)
!1095 = !DILocation(line: 271, column: 30, scope: !753)
!1096 = !DILocation(line: 271, column: 34, scope: !753)
!1097 = !DILocation(line: 270, column: 49, scope: !753)
!1098 = !DILocation(line: 270, column: 48, scope: !753)
!1099 = !DILocation(line: 270, column: 18, scope: !753)
!1100 = !DILocation(line: 270, column: 13, scope: !753)
!1101 = !DILocation(line: 270, column: 17, scope: !753)
!1102 = !DILocation(line: 272, column: 27, scope: !753)
!1103 = !DILocation(line: 272, column: 13, scope: !753)
!1104 = !DILocation(line: 272, column: 20, scope: !753)
!1105 = !DILocation(line: 273, column: 3, scope: !753)
!1106 = !DILocation(line: 274, column: 33, scope: !753)
!1107 = !DILocation(line: 274, column: 27, scope: !753)
!1108 = !DILocation(line: 274, column: 26, scope: !753)
!1109 = !DILocation(line: 274, column: 36, scope: !753)
!1110 = !DILocation(line: 274, column: 14, scope: !753)
!1111 = !DILocation(line: 274, column: 10, scope: !753)
!1112 = !DILocation(line: 274, column: 13, scope: !753)
!1113 = !DILocation(line: 275, column: 35, scope: !753)
!1114 = !DILocation(line: 275, column: 29, scope: !753)
!1115 = !DILocation(line: 275, column: 28, scope: !753)
!1116 = !DILocation(line: 275, column: 40, scope: !753)
!1117 = !DILocation(line: 275, column: 16, scope: !753)
!1118 = !DILocation(line: 275, column: 10, scope: !753)
!1119 = !DILocation(line: 275, column: 15, scope: !753)
!1120 = !DILocation(line: 276, column: 34, scope: !753)
!1121 = !DILocation(line: 276, column: 28, scope: !753)
!1122 = !DILocation(line: 276, column: 27, scope: !753)
!1123 = !DILocation(line: 276, column: 38, scope: !753)
!1124 = !DILocation(line: 276, column: 15, scope: !753)
!1125 = !DILocation(line: 276, column: 10, scope: !753)
!1126 = !DILocation(line: 276, column: 14, scope: !753)
!1127 = !DILocation(line: 277, column: 24, scope: !753)
!1128 = !DILocation(line: 277, column: 10, scope: !753)
!1129 = !DILocation(line: 277, column: 17, scope: !753)
!1130 = !DILocation(line: 278, column: 3, scope: !753)
!1131 = !DILocation(line: 279, column: 33, scope: !753)
!1132 = !DILocation(line: 279, column: 27, scope: !753)
!1133 = !DILocation(line: 279, column: 26, scope: !753)
!1134 = !DILocation(line: 279, column: 36, scope: !753)
!1135 = !DILocation(line: 279, column: 14, scope: !753)
!1136 = !DILocation(line: 279, column: 10, scope: !753)
!1137 = !DILocation(line: 279, column: 13, scope: !753)
!1138 = !DILocation(line: 280, column: 35, scope: !753)
!1139 = !DILocation(line: 280, column: 29, scope: !753)
!1140 = !DILocation(line: 280, column: 28, scope: !753)
!1141 = !DILocation(line: 280, column: 40, scope: !753)
!1142 = !DILocation(line: 280, column: 16, scope: !753)
!1143 = !DILocation(line: 280, column: 10, scope: !753)
!1144 = !DILocation(line: 280, column: 15, scope: !753)
!1145 = !DILocation(line: 281, column: 34, scope: !753)
!1146 = !DILocation(line: 281, column: 28, scope: !753)
!1147 = !DILocation(line: 281, column: 27, scope: !753)
!1148 = !DILocation(line: 281, column: 38, scope: !753)
!1149 = !DILocation(line: 281, column: 15, scope: !753)
!1150 = !DILocation(line: 281, column: 10, scope: !753)
!1151 = !DILocation(line: 281, column: 14, scope: !753)
!1152 = !DILocation(line: 282, column: 24, scope: !753)
!1153 = !DILocation(line: 282, column: 10, scope: !753)
!1154 = !DILocation(line: 282, column: 17, scope: !753)
!1155 = !DILocation(line: 283, column: 14, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !753, file: !647, line: 283, column: 7)
!1157 = !DILocation(line: 283, column: 25, scope: !1156)
!1158 = !DILocation(line: 283, column: 7, scope: !753)
!1159 = !DILocalVariable(name: "pixel", arg: 1, scope: !1160, file: !928, line: 30, type: !981)
!1160 = distinct !DISubprogram(name: "ConvertRGBToCMYK", scope: !928, file: !928, line: 30, type: !1161, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1163)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !981}
!1163 = !{!1159, !1164, !1165, !1166, !1167, !1168, !1169, !1170}
!1164 = !DILocalVariable(name: "black", scope: !1160, file: !928, line: 33, type: !633)
!1165 = !DILocalVariable(name: "blue", scope: !1160, file: !928, line: 34, type: !633)
!1166 = !DILocalVariable(name: "cyan", scope: !1160, file: !928, line: 35, type: !633)
!1167 = !DILocalVariable(name: "green", scope: !1160, file: !928, line: 36, type: !633)
!1168 = !DILocalVariable(name: "magenta", scope: !1160, file: !928, line: 37, type: !633)
!1169 = !DILocalVariable(name: "red", scope: !1160, file: !928, line: 38, type: !633)
!1170 = !DILocalVariable(name: "yellow", scope: !1160, file: !928, line: 39, type: !633)
!1171 = !DILocation(line: 0, scope: !1160, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 285, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1156, file: !647, line: 284, column: 5)
!1174 = !DILocation(line: 41, column: 14, scope: !1175, inlinedAt: !1172)
!1175 = distinct !DILexicalBlock(scope: !1160, file: !928, line: 41, column: 7)
!1176 = !DILocation(line: 41, column: 25, scope: !1175, inlinedAt: !1172)
!1177 = !DILocation(line: 0, scope: !1175, inlinedAt: !1172)
!1178 = !DILocation(line: 41, column: 7, scope: !1160, inlinedAt: !1172)
!1179 = !DILocation(line: 43, column: 24, scope: !1180, inlinedAt: !1172)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !928, line: 42, column: 5)
!1181 = !DILocation(line: 43, column: 23, scope: !1180, inlinedAt: !1172)
!1182 = !DILocation(line: 43, column: 11, scope: !1180, inlinedAt: !1172)
!1183 = !DILocation(line: 44, column: 33, scope: !1180, inlinedAt: !1172)
!1184 = !DILocation(line: 44, column: 26, scope: !1180, inlinedAt: !1172)
!1185 = !DILocation(line: 44, column: 25, scope: !1180, inlinedAt: !1172)
!1186 = !DILocation(line: 44, column: 13, scope: !1180, inlinedAt: !1172)
!1187 = !DILocation(line: 45, column: 32, scope: !1180, inlinedAt: !1172)
!1188 = !DILocation(line: 45, column: 25, scope: !1180, inlinedAt: !1172)
!1189 = !DILocation(line: 45, column: 24, scope: !1180, inlinedAt: !1172)
!1190 = !DILocation(line: 45, column: 12, scope: !1180, inlinedAt: !1172)
!1191 = !DILocation(line: 46, column: 5, scope: !1180, inlinedAt: !1172)
!1192 = !DILocation(line: 49, column: 11, scope: !1193, inlinedAt: !1172)
!1193 = distinct !DILexicalBlock(scope: !1175, file: !928, line: 48, column: 5)
!1194 = !DILocation(line: 50, column: 37, scope: !1193, inlinedAt: !1172)
!1195 = !DILocation(line: 50, column: 13, scope: !1193, inlinedAt: !1172)
!1196 = !DILocation(line: 51, column: 36, scope: !1193, inlinedAt: !1172)
!1197 = !DILocation(line: 51, column: 12, scope: !1193, inlinedAt: !1172)
!1198 = !DILocation(line: 53, column: 8, scope: !1199, inlinedAt: !1172)
!1199 = distinct !DILexicalBlock(scope: !1160, file: !928, line: 53, column: 7)
!1200 = !DILocation(line: 53, column: 18, scope: !1199, inlinedAt: !1172)
!1201 = !DILocation(line: 53, column: 35, scope: !1199, inlinedAt: !1172)
!1202 = !DILocation(line: 53, column: 39, scope: !1199, inlinedAt: !1172)
!1203 = !DILocation(line: 53, column: 51, scope: !1199, inlinedAt: !1172)
!1204 = !DILocation(line: 53, column: 68, scope: !1199, inlinedAt: !1172)
!1205 = !DILocation(line: 54, column: 8, scope: !1199, inlinedAt: !1172)
!1206 = !DILocation(line: 54, column: 19, scope: !1199, inlinedAt: !1172)
!1207 = !DILocation(line: 53, column: 7, scope: !1160, inlinedAt: !1172)
!1208 = !DILocation(line: 59, column: 8, scope: !1160, inlinedAt: !1172)
!1209 = !DILocation(line: 60, column: 11, scope: !1160, inlinedAt: !1172)
!1210 = !DILocation(line: 61, column: 10, scope: !1160, inlinedAt: !1172)
!1211 = !DILocation(line: 63, column: 15, scope: !1212, inlinedAt: !1172)
!1212 = distinct !DILexicalBlock(scope: !1160, file: !928, line: 63, column: 7)
!1213 = !DILocation(line: 63, column: 7, scope: !1160, inlinedAt: !1172)
!1214 = !DILocation(line: 64, column: 5, scope: !1212, inlinedAt: !1172)
!1215 = !DILocation(line: 65, column: 14, scope: !1216, inlinedAt: !1172)
!1216 = distinct !DILexicalBlock(scope: !1160, file: !928, line: 65, column: 7)
!1217 = !DILocation(line: 65, column: 7, scope: !1160, inlinedAt: !1172)
!1218 = !DILocation(line: 66, column: 5, scope: !1216, inlinedAt: !1172)
!1219 = !DILocation(line: 67, column: 31, scope: !1160, inlinedAt: !1172)
!1220 = !DILocation(line: 67, column: 26, scope: !1160, inlinedAt: !1172)
!1221 = !DILocation(line: 67, column: 44, scope: !1160, inlinedAt: !1172)
!1222 = !DILocation(line: 67, column: 43, scope: !1160, inlinedAt: !1172)
!1223 = !DILocation(line: 67, column: 38, scope: !1160, inlinedAt: !1172)
!1224 = !DILocation(line: 67, column: 8, scope: !1160, inlinedAt: !1172)
!1225 = !DILocation(line: 68, column: 37, scope: !1160, inlinedAt: !1172)
!1226 = !DILocation(line: 68, column: 29, scope: !1160, inlinedAt: !1172)
!1227 = !DILocation(line: 68, column: 44, scope: !1160, inlinedAt: !1172)
!1228 = !DILocation(line: 68, column: 11, scope: !1160, inlinedAt: !1172)
!1229 = !DILocation(line: 69, column: 35, scope: !1160, inlinedAt: !1172)
!1230 = !DILocation(line: 69, column: 28, scope: !1160, inlinedAt: !1172)
!1231 = !DILocation(line: 69, column: 42, scope: !1160, inlinedAt: !1172)
!1232 = !DILocation(line: 69, column: 10, scope: !1160, inlinedAt: !1172)
!1233 = !DILocation(line: 70, column: 20, scope: !1160, inlinedAt: !1172)
!1234 = !DILocation(line: 71, column: 26, scope: !1160, inlinedAt: !1172)
!1235 = !DILocation(line: 71, column: 13, scope: !1160, inlinedAt: !1172)
!1236 = !DILocation(line: 72, column: 28, scope: !1160, inlinedAt: !1172)
!1237 = !DILocation(line: 72, column: 15, scope: !1160, inlinedAt: !1172)
!1238 = !DILocation(line: 73, column: 27, scope: !1160, inlinedAt: !1172)
!1239 = !DILocation(line: 73, column: 14, scope: !1160, inlinedAt: !1172)
!1240 = !DILocation(line: 74, column: 28, scope: !1160, inlinedAt: !1172)
!1241 = !DILocation(line: 75, column: 1, scope: !1160, inlinedAt: !1172)
!1242 = !{!993, !994, i64 48}
!1243 = !DILocation(line: 0, scope: !1160, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 286, column: 7, scope: !1173)
!1245 = !DILocation(line: 41, column: 14, scope: !1175, inlinedAt: !1244)
!1246 = !DILocation(line: 41, column: 25, scope: !1175, inlinedAt: !1244)
!1247 = !DILocation(line: 0, scope: !1175, inlinedAt: !1244)
!1248 = !DILocation(line: 41, column: 7, scope: !1160, inlinedAt: !1244)
!1249 = !DILocation(line: 43, column: 24, scope: !1180, inlinedAt: !1244)
!1250 = !DILocation(line: 43, column: 23, scope: !1180, inlinedAt: !1244)
!1251 = !DILocation(line: 43, column: 11, scope: !1180, inlinedAt: !1244)
!1252 = !DILocation(line: 44, column: 33, scope: !1180, inlinedAt: !1244)
!1253 = !DILocation(line: 44, column: 26, scope: !1180, inlinedAt: !1244)
!1254 = !DILocation(line: 44, column: 25, scope: !1180, inlinedAt: !1244)
!1255 = !DILocation(line: 44, column: 13, scope: !1180, inlinedAt: !1244)
!1256 = !DILocation(line: 45, column: 32, scope: !1180, inlinedAt: !1244)
!1257 = !DILocation(line: 45, column: 25, scope: !1180, inlinedAt: !1244)
!1258 = !DILocation(line: 45, column: 24, scope: !1180, inlinedAt: !1244)
!1259 = !DILocation(line: 45, column: 12, scope: !1180, inlinedAt: !1244)
!1260 = !DILocation(line: 46, column: 5, scope: !1180, inlinedAt: !1244)
!1261 = !DILocation(line: 49, column: 11, scope: !1193, inlinedAt: !1244)
!1262 = !DILocation(line: 50, column: 37, scope: !1193, inlinedAt: !1244)
!1263 = !DILocation(line: 50, column: 13, scope: !1193, inlinedAt: !1244)
!1264 = !DILocation(line: 51, column: 36, scope: !1193, inlinedAt: !1244)
!1265 = !DILocation(line: 51, column: 12, scope: !1193, inlinedAt: !1244)
!1266 = !DILocation(line: 53, column: 8, scope: !1199, inlinedAt: !1244)
!1267 = !DILocation(line: 53, column: 18, scope: !1199, inlinedAt: !1244)
!1268 = !DILocation(line: 53, column: 35, scope: !1199, inlinedAt: !1244)
!1269 = !DILocation(line: 53, column: 39, scope: !1199, inlinedAt: !1244)
!1270 = !DILocation(line: 53, column: 51, scope: !1199, inlinedAt: !1244)
!1271 = !DILocation(line: 53, column: 68, scope: !1199, inlinedAt: !1244)
!1272 = !DILocation(line: 54, column: 8, scope: !1199, inlinedAt: !1244)
!1273 = !DILocation(line: 54, column: 19, scope: !1199, inlinedAt: !1244)
!1274 = !DILocation(line: 53, column: 7, scope: !1160, inlinedAt: !1244)
!1275 = !DILocation(line: 59, column: 8, scope: !1160, inlinedAt: !1244)
!1276 = !DILocation(line: 60, column: 11, scope: !1160, inlinedAt: !1244)
!1277 = !DILocation(line: 61, column: 10, scope: !1160, inlinedAt: !1244)
!1278 = !DILocation(line: 63, column: 15, scope: !1212, inlinedAt: !1244)
!1279 = !DILocation(line: 63, column: 7, scope: !1160, inlinedAt: !1244)
!1280 = !DILocation(line: 64, column: 5, scope: !1212, inlinedAt: !1244)
!1281 = !DILocation(line: 65, column: 14, scope: !1216, inlinedAt: !1244)
!1282 = !DILocation(line: 65, column: 7, scope: !1160, inlinedAt: !1244)
!1283 = !DILocation(line: 66, column: 5, scope: !1216, inlinedAt: !1244)
!1284 = !DILocation(line: 67, column: 31, scope: !1160, inlinedAt: !1244)
!1285 = !DILocation(line: 67, column: 26, scope: !1160, inlinedAt: !1244)
!1286 = !DILocation(line: 67, column: 44, scope: !1160, inlinedAt: !1244)
!1287 = !DILocation(line: 67, column: 43, scope: !1160, inlinedAt: !1244)
!1288 = !DILocation(line: 67, column: 38, scope: !1160, inlinedAt: !1244)
!1289 = !DILocation(line: 67, column: 8, scope: !1160, inlinedAt: !1244)
!1290 = !DILocation(line: 68, column: 37, scope: !1160, inlinedAt: !1244)
!1291 = !DILocation(line: 68, column: 29, scope: !1160, inlinedAt: !1244)
!1292 = !DILocation(line: 68, column: 44, scope: !1160, inlinedAt: !1244)
!1293 = !DILocation(line: 68, column: 11, scope: !1160, inlinedAt: !1244)
!1294 = !DILocation(line: 69, column: 35, scope: !1160, inlinedAt: !1244)
!1295 = !DILocation(line: 69, column: 28, scope: !1160, inlinedAt: !1244)
!1296 = !DILocation(line: 69, column: 42, scope: !1160, inlinedAt: !1244)
!1297 = !DILocation(line: 69, column: 10, scope: !1160, inlinedAt: !1244)
!1298 = !DILocation(line: 70, column: 20, scope: !1160, inlinedAt: !1244)
!1299 = !DILocation(line: 71, column: 26, scope: !1160, inlinedAt: !1244)
!1300 = !DILocation(line: 71, column: 13, scope: !1160, inlinedAt: !1244)
!1301 = !DILocation(line: 72, column: 28, scope: !1160, inlinedAt: !1244)
!1302 = !DILocation(line: 72, column: 15, scope: !1160, inlinedAt: !1244)
!1303 = !DILocation(line: 73, column: 27, scope: !1160, inlinedAt: !1244)
!1304 = !DILocation(line: 73, column: 14, scope: !1160, inlinedAt: !1244)
!1305 = !DILocation(line: 74, column: 28, scope: !1160, inlinedAt: !1244)
!1306 = !DILocation(line: 75, column: 1, scope: !1160, inlinedAt: !1244)
!1307 = !DILocation(line: 0, scope: !1160, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 287, column: 7, scope: !1173)
!1309 = !DILocation(line: 41, column: 14, scope: !1175, inlinedAt: !1308)
!1310 = !DILocation(line: 41, column: 25, scope: !1175, inlinedAt: !1308)
!1311 = !DILocation(line: 0, scope: !1175, inlinedAt: !1308)
!1312 = !DILocation(line: 41, column: 7, scope: !1160, inlinedAt: !1308)
!1313 = !DILocation(line: 43, column: 24, scope: !1180, inlinedAt: !1308)
!1314 = !DILocation(line: 43, column: 23, scope: !1180, inlinedAt: !1308)
!1315 = !DILocation(line: 43, column: 11, scope: !1180, inlinedAt: !1308)
!1316 = !DILocation(line: 44, column: 33, scope: !1180, inlinedAt: !1308)
!1317 = !DILocation(line: 44, column: 26, scope: !1180, inlinedAt: !1308)
!1318 = !DILocation(line: 44, column: 25, scope: !1180, inlinedAt: !1308)
!1319 = !DILocation(line: 44, column: 13, scope: !1180, inlinedAt: !1308)
!1320 = !DILocation(line: 45, column: 32, scope: !1180, inlinedAt: !1308)
!1321 = !DILocation(line: 45, column: 25, scope: !1180, inlinedAt: !1308)
!1322 = !DILocation(line: 45, column: 24, scope: !1180, inlinedAt: !1308)
!1323 = !DILocation(line: 45, column: 12, scope: !1180, inlinedAt: !1308)
!1324 = !DILocation(line: 46, column: 5, scope: !1180, inlinedAt: !1308)
!1325 = !DILocation(line: 49, column: 11, scope: !1193, inlinedAt: !1308)
!1326 = !DILocation(line: 50, column: 37, scope: !1193, inlinedAt: !1308)
!1327 = !DILocation(line: 50, column: 13, scope: !1193, inlinedAt: !1308)
!1328 = !DILocation(line: 51, column: 36, scope: !1193, inlinedAt: !1308)
!1329 = !DILocation(line: 51, column: 12, scope: !1193, inlinedAt: !1308)
!1330 = !DILocation(line: 53, column: 8, scope: !1199, inlinedAt: !1308)
!1331 = !DILocation(line: 53, column: 18, scope: !1199, inlinedAt: !1308)
!1332 = !DILocation(line: 53, column: 35, scope: !1199, inlinedAt: !1308)
!1333 = !DILocation(line: 53, column: 39, scope: !1199, inlinedAt: !1308)
!1334 = !DILocation(line: 53, column: 51, scope: !1199, inlinedAt: !1308)
!1335 = !DILocation(line: 53, column: 68, scope: !1199, inlinedAt: !1308)
!1336 = !DILocation(line: 54, column: 8, scope: !1199, inlinedAt: !1308)
!1337 = !DILocation(line: 54, column: 19, scope: !1199, inlinedAt: !1308)
!1338 = !DILocation(line: 53, column: 7, scope: !1160, inlinedAt: !1308)
!1339 = !DILocation(line: 59, column: 8, scope: !1160, inlinedAt: !1308)
!1340 = !DILocation(line: 60, column: 11, scope: !1160, inlinedAt: !1308)
!1341 = !DILocation(line: 61, column: 10, scope: !1160, inlinedAt: !1308)
!1342 = !DILocation(line: 63, column: 15, scope: !1212, inlinedAt: !1308)
!1343 = !DILocation(line: 63, column: 7, scope: !1160, inlinedAt: !1308)
!1344 = !DILocation(line: 64, column: 5, scope: !1212, inlinedAt: !1308)
!1345 = !DILocation(line: 65, column: 14, scope: !1216, inlinedAt: !1308)
!1346 = !DILocation(line: 65, column: 7, scope: !1160, inlinedAt: !1308)
!1347 = !DILocation(line: 66, column: 5, scope: !1216, inlinedAt: !1308)
!1348 = !DILocation(line: 67, column: 31, scope: !1160, inlinedAt: !1308)
!1349 = !DILocation(line: 67, column: 26, scope: !1160, inlinedAt: !1308)
!1350 = !DILocation(line: 67, column: 44, scope: !1160, inlinedAt: !1308)
!1351 = !DILocation(line: 67, column: 43, scope: !1160, inlinedAt: !1308)
!1352 = !DILocation(line: 67, column: 38, scope: !1160, inlinedAt: !1308)
!1353 = !DILocation(line: 67, column: 8, scope: !1160, inlinedAt: !1308)
!1354 = !DILocation(line: 68, column: 37, scope: !1160, inlinedAt: !1308)
!1355 = !DILocation(line: 68, column: 29, scope: !1160, inlinedAt: !1308)
!1356 = !DILocation(line: 68, column: 44, scope: !1160, inlinedAt: !1308)
!1357 = !DILocation(line: 68, column: 11, scope: !1160, inlinedAt: !1308)
!1358 = !DILocation(line: 69, column: 35, scope: !1160, inlinedAt: !1308)
!1359 = !DILocation(line: 69, column: 28, scope: !1160, inlinedAt: !1308)
!1360 = !DILocation(line: 69, column: 42, scope: !1160, inlinedAt: !1308)
!1361 = !DILocation(line: 69, column: 10, scope: !1160, inlinedAt: !1308)
!1362 = !DILocation(line: 70, column: 20, scope: !1160, inlinedAt: !1308)
!1363 = !DILocation(line: 71, column: 26, scope: !1160, inlinedAt: !1308)
!1364 = !DILocation(line: 71, column: 13, scope: !1160, inlinedAt: !1308)
!1365 = !DILocation(line: 72, column: 28, scope: !1160, inlinedAt: !1308)
!1366 = !DILocation(line: 72, column: 15, scope: !1160, inlinedAt: !1308)
!1367 = !DILocation(line: 73, column: 27, scope: !1160, inlinedAt: !1308)
!1368 = !DILocation(line: 73, column: 14, scope: !1160, inlinedAt: !1308)
!1369 = !DILocation(line: 74, column: 28, scope: !1160, inlinedAt: !1308)
!1370 = !DILocation(line: 75, column: 1, scope: !1160, inlinedAt: !1308)
!1371 = !DILocation(line: 0, scope: !1160, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 288, column: 7, scope: !1173)
!1373 = !DILocation(line: 41, column: 14, scope: !1175, inlinedAt: !1372)
!1374 = !DILocation(line: 41, column: 25, scope: !1175, inlinedAt: !1372)
!1375 = !DILocation(line: 0, scope: !1175, inlinedAt: !1372)
!1376 = !DILocation(line: 41, column: 7, scope: !1160, inlinedAt: !1372)
!1377 = !DILocation(line: 43, column: 24, scope: !1180, inlinedAt: !1372)
!1378 = !DILocation(line: 43, column: 23, scope: !1180, inlinedAt: !1372)
!1379 = !DILocation(line: 43, column: 11, scope: !1180, inlinedAt: !1372)
!1380 = !DILocation(line: 44, column: 33, scope: !1180, inlinedAt: !1372)
!1381 = !DILocation(line: 44, column: 26, scope: !1180, inlinedAt: !1372)
!1382 = !DILocation(line: 44, column: 25, scope: !1180, inlinedAt: !1372)
!1383 = !DILocation(line: 44, column: 13, scope: !1180, inlinedAt: !1372)
!1384 = !DILocation(line: 45, column: 32, scope: !1180, inlinedAt: !1372)
!1385 = !DILocation(line: 45, column: 25, scope: !1180, inlinedAt: !1372)
!1386 = !DILocation(line: 45, column: 24, scope: !1180, inlinedAt: !1372)
!1387 = !DILocation(line: 45, column: 12, scope: !1180, inlinedAt: !1372)
!1388 = !DILocation(line: 46, column: 5, scope: !1180, inlinedAt: !1372)
!1389 = !DILocation(line: 49, column: 11, scope: !1193, inlinedAt: !1372)
!1390 = !DILocation(line: 50, column: 37, scope: !1193, inlinedAt: !1372)
!1391 = !DILocation(line: 50, column: 13, scope: !1193, inlinedAt: !1372)
!1392 = !DILocation(line: 51, column: 36, scope: !1193, inlinedAt: !1372)
!1393 = !DILocation(line: 51, column: 12, scope: !1193, inlinedAt: !1372)
!1394 = !DILocation(line: 53, column: 8, scope: !1199, inlinedAt: !1372)
!1395 = !DILocation(line: 53, column: 18, scope: !1199, inlinedAt: !1372)
!1396 = !DILocation(line: 53, column: 35, scope: !1199, inlinedAt: !1372)
!1397 = !DILocation(line: 53, column: 39, scope: !1199, inlinedAt: !1372)
!1398 = !DILocation(line: 53, column: 51, scope: !1199, inlinedAt: !1372)
!1399 = !DILocation(line: 53, column: 68, scope: !1199, inlinedAt: !1372)
!1400 = !DILocation(line: 54, column: 8, scope: !1199, inlinedAt: !1372)
!1401 = !DILocation(line: 54, column: 19, scope: !1199, inlinedAt: !1372)
!1402 = !DILocation(line: 53, column: 7, scope: !1160, inlinedAt: !1372)
!1403 = !DILocation(line: 59, column: 8, scope: !1160, inlinedAt: !1372)
!1404 = !DILocation(line: 60, column: 11, scope: !1160, inlinedAt: !1372)
!1405 = !DILocation(line: 61, column: 10, scope: !1160, inlinedAt: !1372)
!1406 = !DILocation(line: 63, column: 15, scope: !1212, inlinedAt: !1372)
!1407 = !DILocation(line: 63, column: 7, scope: !1160, inlinedAt: !1372)
!1408 = !DILocation(line: 64, column: 5, scope: !1212, inlinedAt: !1372)
!1409 = !DILocation(line: 65, column: 14, scope: !1216, inlinedAt: !1372)
!1410 = !DILocation(line: 65, column: 7, scope: !1160, inlinedAt: !1372)
!1411 = !DILocation(line: 66, column: 5, scope: !1216, inlinedAt: !1372)
!1412 = !DILocation(line: 67, column: 31, scope: !1160, inlinedAt: !1372)
!1413 = !DILocation(line: 67, column: 26, scope: !1160, inlinedAt: !1372)
!1414 = !DILocation(line: 67, column: 44, scope: !1160, inlinedAt: !1372)
!1415 = !DILocation(line: 67, column: 43, scope: !1160, inlinedAt: !1372)
!1416 = !DILocation(line: 67, column: 38, scope: !1160, inlinedAt: !1372)
!1417 = !DILocation(line: 67, column: 8, scope: !1160, inlinedAt: !1372)
!1418 = !DILocation(line: 68, column: 37, scope: !1160, inlinedAt: !1372)
!1419 = !DILocation(line: 68, column: 29, scope: !1160, inlinedAt: !1372)
!1420 = !DILocation(line: 68, column: 44, scope: !1160, inlinedAt: !1372)
!1421 = !DILocation(line: 68, column: 11, scope: !1160, inlinedAt: !1372)
!1422 = !DILocation(line: 69, column: 35, scope: !1160, inlinedAt: !1372)
!1423 = !DILocation(line: 69, column: 28, scope: !1160, inlinedAt: !1372)
!1424 = !DILocation(line: 69, column: 42, scope: !1160, inlinedAt: !1372)
!1425 = !DILocation(line: 69, column: 10, scope: !1160, inlinedAt: !1372)
!1426 = !DILocation(line: 70, column: 20, scope: !1160, inlinedAt: !1372)
!1427 = !DILocation(line: 71, column: 26, scope: !1160, inlinedAt: !1372)
!1428 = !DILocation(line: 71, column: 13, scope: !1160, inlinedAt: !1372)
!1429 = !DILocation(line: 72, column: 28, scope: !1160, inlinedAt: !1372)
!1430 = !DILocation(line: 72, column: 15, scope: !1160, inlinedAt: !1372)
!1431 = !DILocation(line: 73, column: 27, scope: !1160, inlinedAt: !1372)
!1432 = !DILocation(line: 73, column: 14, scope: !1160, inlinedAt: !1372)
!1433 = !DILocation(line: 74, column: 28, scope: !1160, inlinedAt: !1372)
!1434 = !DILocation(line: 75, column: 1, scope: !1160, inlinedAt: !1372)
!1435 = !DILocation(line: 0, scope: !1160, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 289, column: 7, scope: !1173)
!1437 = !DILocation(line: 41, column: 14, scope: !1175, inlinedAt: !1436)
!1438 = !DILocation(line: 41, column: 25, scope: !1175, inlinedAt: !1436)
!1439 = !DILocation(line: 0, scope: !1175, inlinedAt: !1436)
!1440 = !DILocation(line: 41, column: 7, scope: !1160, inlinedAt: !1436)
!1441 = !DILocation(line: 43, column: 24, scope: !1180, inlinedAt: !1436)
!1442 = !DILocation(line: 43, column: 23, scope: !1180, inlinedAt: !1436)
!1443 = !DILocation(line: 43, column: 11, scope: !1180, inlinedAt: !1436)
!1444 = !DILocation(line: 44, column: 33, scope: !1180, inlinedAt: !1436)
!1445 = !DILocation(line: 44, column: 26, scope: !1180, inlinedAt: !1436)
!1446 = !DILocation(line: 44, column: 25, scope: !1180, inlinedAt: !1436)
!1447 = !DILocation(line: 44, column: 13, scope: !1180, inlinedAt: !1436)
!1448 = !DILocation(line: 45, column: 32, scope: !1180, inlinedAt: !1436)
!1449 = !DILocation(line: 45, column: 25, scope: !1180, inlinedAt: !1436)
!1450 = !DILocation(line: 45, column: 24, scope: !1180, inlinedAt: !1436)
!1451 = !DILocation(line: 45, column: 12, scope: !1180, inlinedAt: !1436)
!1452 = !DILocation(line: 46, column: 5, scope: !1180, inlinedAt: !1436)
!1453 = !DILocation(line: 49, column: 11, scope: !1193, inlinedAt: !1436)
!1454 = !DILocation(line: 50, column: 37, scope: !1193, inlinedAt: !1436)
!1455 = !DILocation(line: 50, column: 13, scope: !1193, inlinedAt: !1436)
!1456 = !DILocation(line: 51, column: 36, scope: !1193, inlinedAt: !1436)
!1457 = !DILocation(line: 51, column: 12, scope: !1193, inlinedAt: !1436)
!1458 = !DILocation(line: 53, column: 8, scope: !1199, inlinedAt: !1436)
!1459 = !DILocation(line: 53, column: 18, scope: !1199, inlinedAt: !1436)
!1460 = !DILocation(line: 53, column: 35, scope: !1199, inlinedAt: !1436)
!1461 = !DILocation(line: 53, column: 39, scope: !1199, inlinedAt: !1436)
!1462 = !DILocation(line: 53, column: 51, scope: !1199, inlinedAt: !1436)
!1463 = !DILocation(line: 53, column: 68, scope: !1199, inlinedAt: !1436)
!1464 = !DILocation(line: 54, column: 8, scope: !1199, inlinedAt: !1436)
!1465 = !DILocation(line: 54, column: 19, scope: !1199, inlinedAt: !1436)
!1466 = !DILocation(line: 53, column: 7, scope: !1160, inlinedAt: !1436)
!1467 = !DILocation(line: 59, column: 8, scope: !1160, inlinedAt: !1436)
!1468 = !DILocation(line: 60, column: 11, scope: !1160, inlinedAt: !1436)
!1469 = !DILocation(line: 61, column: 10, scope: !1160, inlinedAt: !1436)
!1470 = !DILocation(line: 63, column: 15, scope: !1212, inlinedAt: !1436)
!1471 = !DILocation(line: 63, column: 7, scope: !1160, inlinedAt: !1436)
!1472 = !DILocation(line: 64, column: 5, scope: !1212, inlinedAt: !1436)
!1473 = !DILocation(line: 65, column: 14, scope: !1216, inlinedAt: !1436)
!1474 = !DILocation(line: 65, column: 7, scope: !1160, inlinedAt: !1436)
!1475 = !DILocation(line: 66, column: 5, scope: !1216, inlinedAt: !1436)
!1476 = !DILocation(line: 67, column: 31, scope: !1160, inlinedAt: !1436)
!1477 = !DILocation(line: 67, column: 26, scope: !1160, inlinedAt: !1436)
!1478 = !DILocation(line: 67, column: 44, scope: !1160, inlinedAt: !1436)
!1479 = !DILocation(line: 67, column: 43, scope: !1160, inlinedAt: !1436)
!1480 = !DILocation(line: 67, column: 38, scope: !1160, inlinedAt: !1436)
!1481 = !DILocation(line: 67, column: 8, scope: !1160, inlinedAt: !1436)
!1482 = !DILocation(line: 68, column: 37, scope: !1160, inlinedAt: !1436)
!1483 = !DILocation(line: 68, column: 29, scope: !1160, inlinedAt: !1436)
!1484 = !DILocation(line: 68, column: 44, scope: !1160, inlinedAt: !1436)
!1485 = !DILocation(line: 68, column: 11, scope: !1160, inlinedAt: !1436)
!1486 = !DILocation(line: 69, column: 35, scope: !1160, inlinedAt: !1436)
!1487 = !DILocation(line: 69, column: 28, scope: !1160, inlinedAt: !1436)
!1488 = !DILocation(line: 69, column: 42, scope: !1160, inlinedAt: !1436)
!1489 = !DILocation(line: 69, column: 10, scope: !1160, inlinedAt: !1436)
!1490 = !DILocation(line: 70, column: 20, scope: !1160, inlinedAt: !1436)
!1491 = !DILocation(line: 71, column: 26, scope: !1160, inlinedAt: !1436)
!1492 = !DILocation(line: 71, column: 13, scope: !1160, inlinedAt: !1436)
!1493 = !DILocation(line: 72, column: 28, scope: !1160, inlinedAt: !1436)
!1494 = !DILocation(line: 72, column: 15, scope: !1160, inlinedAt: !1436)
!1495 = !DILocation(line: 73, column: 27, scope: !1160, inlinedAt: !1436)
!1496 = !DILocation(line: 73, column: 14, scope: !1160, inlinedAt: !1436)
!1497 = !DILocation(line: 74, column: 28, scope: !1160, inlinedAt: !1436)
!1498 = !DILocation(line: 75, column: 1, scope: !1160, inlinedAt: !1436)
!1499 = !DILocation(line: 0, scope: !1160, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 290, column: 7, scope: !1173)
!1501 = !DILocation(line: 41, column: 14, scope: !1175, inlinedAt: !1500)
!1502 = !DILocation(line: 41, column: 25, scope: !1175, inlinedAt: !1500)
!1503 = !DILocation(line: 0, scope: !1175, inlinedAt: !1500)
!1504 = !DILocation(line: 41, column: 7, scope: !1160, inlinedAt: !1500)
!1505 = !DILocation(line: 43, column: 24, scope: !1180, inlinedAt: !1500)
!1506 = !DILocation(line: 43, column: 23, scope: !1180, inlinedAt: !1500)
!1507 = !DILocation(line: 43, column: 11, scope: !1180, inlinedAt: !1500)
!1508 = !DILocation(line: 44, column: 33, scope: !1180, inlinedAt: !1500)
!1509 = !DILocation(line: 44, column: 26, scope: !1180, inlinedAt: !1500)
!1510 = !DILocation(line: 44, column: 25, scope: !1180, inlinedAt: !1500)
!1511 = !DILocation(line: 44, column: 13, scope: !1180, inlinedAt: !1500)
!1512 = !DILocation(line: 45, column: 32, scope: !1180, inlinedAt: !1500)
!1513 = !DILocation(line: 45, column: 25, scope: !1180, inlinedAt: !1500)
!1514 = !DILocation(line: 45, column: 24, scope: !1180, inlinedAt: !1500)
!1515 = !DILocation(line: 45, column: 12, scope: !1180, inlinedAt: !1500)
!1516 = !DILocation(line: 46, column: 5, scope: !1180, inlinedAt: !1500)
!1517 = !DILocation(line: 49, column: 11, scope: !1193, inlinedAt: !1500)
!1518 = !DILocation(line: 50, column: 37, scope: !1193, inlinedAt: !1500)
!1519 = !DILocation(line: 50, column: 13, scope: !1193, inlinedAt: !1500)
!1520 = !DILocation(line: 51, column: 36, scope: !1193, inlinedAt: !1500)
!1521 = !DILocation(line: 51, column: 12, scope: !1193, inlinedAt: !1500)
!1522 = !DILocation(line: 53, column: 8, scope: !1199, inlinedAt: !1500)
!1523 = !DILocation(line: 53, column: 18, scope: !1199, inlinedAt: !1500)
!1524 = !DILocation(line: 53, column: 35, scope: !1199, inlinedAt: !1500)
!1525 = !DILocation(line: 53, column: 39, scope: !1199, inlinedAt: !1500)
!1526 = !DILocation(line: 53, column: 51, scope: !1199, inlinedAt: !1500)
!1527 = !DILocation(line: 53, column: 68, scope: !1199, inlinedAt: !1500)
!1528 = !DILocation(line: 54, column: 8, scope: !1199, inlinedAt: !1500)
!1529 = !DILocation(line: 54, column: 19, scope: !1199, inlinedAt: !1500)
!1530 = !DILocation(line: 53, column: 7, scope: !1160, inlinedAt: !1500)
!1531 = !DILocation(line: 59, column: 8, scope: !1160, inlinedAt: !1500)
!1532 = !DILocation(line: 60, column: 11, scope: !1160, inlinedAt: !1500)
!1533 = !DILocation(line: 61, column: 10, scope: !1160, inlinedAt: !1500)
!1534 = !DILocation(line: 63, column: 15, scope: !1212, inlinedAt: !1500)
!1535 = !DILocation(line: 63, column: 7, scope: !1160, inlinedAt: !1500)
!1536 = !DILocation(line: 64, column: 5, scope: !1212, inlinedAt: !1500)
!1537 = !DILocation(line: 65, column: 14, scope: !1216, inlinedAt: !1500)
!1538 = !DILocation(line: 65, column: 7, scope: !1160, inlinedAt: !1500)
!1539 = !DILocation(line: 66, column: 5, scope: !1216, inlinedAt: !1500)
!1540 = !DILocation(line: 67, column: 31, scope: !1160, inlinedAt: !1500)
!1541 = !DILocation(line: 67, column: 26, scope: !1160, inlinedAt: !1500)
!1542 = !DILocation(line: 67, column: 44, scope: !1160, inlinedAt: !1500)
!1543 = !DILocation(line: 67, column: 43, scope: !1160, inlinedAt: !1500)
!1544 = !DILocation(line: 67, column: 38, scope: !1160, inlinedAt: !1500)
!1545 = !DILocation(line: 67, column: 8, scope: !1160, inlinedAt: !1500)
!1546 = !DILocation(line: 68, column: 37, scope: !1160, inlinedAt: !1500)
!1547 = !DILocation(line: 68, column: 29, scope: !1160, inlinedAt: !1500)
!1548 = !DILocation(line: 68, column: 44, scope: !1160, inlinedAt: !1500)
!1549 = !DILocation(line: 68, column: 11, scope: !1160, inlinedAt: !1500)
!1550 = !DILocation(line: 69, column: 35, scope: !1160, inlinedAt: !1500)
!1551 = !DILocation(line: 69, column: 28, scope: !1160, inlinedAt: !1500)
!1552 = !DILocation(line: 69, column: 42, scope: !1160, inlinedAt: !1500)
!1553 = !DILocation(line: 69, column: 10, scope: !1160, inlinedAt: !1500)
!1554 = !DILocation(line: 70, column: 20, scope: !1160, inlinedAt: !1500)
!1555 = !DILocation(line: 71, column: 26, scope: !1160, inlinedAt: !1500)
!1556 = !DILocation(line: 71, column: 13, scope: !1160, inlinedAt: !1500)
!1557 = !DILocation(line: 72, column: 28, scope: !1160, inlinedAt: !1500)
!1558 = !DILocation(line: 72, column: 15, scope: !1160, inlinedAt: !1500)
!1559 = !DILocation(line: 73, column: 27, scope: !1160, inlinedAt: !1500)
!1560 = !DILocation(line: 73, column: 14, scope: !1160, inlinedAt: !1500)
!1561 = !DILocation(line: 74, column: 28, scope: !1160, inlinedAt: !1500)
!1562 = !DILocation(line: 75, column: 1, scope: !1160, inlinedAt: !1500)
!1563 = !DILocation(line: 0, scope: !1160, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 291, column: 7, scope: !1173)
!1565 = !DILocation(line: 41, column: 14, scope: !1175, inlinedAt: !1564)
!1566 = !DILocation(line: 41, column: 25, scope: !1175, inlinedAt: !1564)
!1567 = !DILocation(line: 0, scope: !1175, inlinedAt: !1564)
!1568 = !DILocation(line: 41, column: 7, scope: !1160, inlinedAt: !1564)
!1569 = !DILocation(line: 43, column: 24, scope: !1180, inlinedAt: !1564)
!1570 = !DILocation(line: 43, column: 23, scope: !1180, inlinedAt: !1564)
!1571 = !DILocation(line: 43, column: 11, scope: !1180, inlinedAt: !1564)
!1572 = !DILocation(line: 44, column: 33, scope: !1180, inlinedAt: !1564)
!1573 = !DILocation(line: 44, column: 26, scope: !1180, inlinedAt: !1564)
!1574 = !DILocation(line: 44, column: 25, scope: !1180, inlinedAt: !1564)
!1575 = !DILocation(line: 44, column: 13, scope: !1180, inlinedAt: !1564)
!1576 = !DILocation(line: 45, column: 32, scope: !1180, inlinedAt: !1564)
!1577 = !DILocation(line: 45, column: 25, scope: !1180, inlinedAt: !1564)
!1578 = !DILocation(line: 45, column: 24, scope: !1180, inlinedAt: !1564)
!1579 = !DILocation(line: 45, column: 12, scope: !1180, inlinedAt: !1564)
!1580 = !DILocation(line: 46, column: 5, scope: !1180, inlinedAt: !1564)
!1581 = !DILocation(line: 49, column: 11, scope: !1193, inlinedAt: !1564)
!1582 = !DILocation(line: 50, column: 37, scope: !1193, inlinedAt: !1564)
!1583 = !DILocation(line: 50, column: 13, scope: !1193, inlinedAt: !1564)
!1584 = !DILocation(line: 51, column: 36, scope: !1193, inlinedAt: !1564)
!1585 = !DILocation(line: 51, column: 12, scope: !1193, inlinedAt: !1564)
!1586 = !DILocation(line: 53, column: 8, scope: !1199, inlinedAt: !1564)
!1587 = !DILocation(line: 53, column: 18, scope: !1199, inlinedAt: !1564)
!1588 = !DILocation(line: 53, column: 35, scope: !1199, inlinedAt: !1564)
!1589 = !DILocation(line: 53, column: 39, scope: !1199, inlinedAt: !1564)
!1590 = !DILocation(line: 53, column: 51, scope: !1199, inlinedAt: !1564)
!1591 = !DILocation(line: 53, column: 68, scope: !1199, inlinedAt: !1564)
!1592 = !DILocation(line: 54, column: 8, scope: !1199, inlinedAt: !1564)
!1593 = !DILocation(line: 54, column: 19, scope: !1199, inlinedAt: !1564)
!1594 = !DILocation(line: 53, column: 7, scope: !1160, inlinedAt: !1564)
!1595 = !DILocation(line: 59, column: 8, scope: !1160, inlinedAt: !1564)
!1596 = !DILocation(line: 60, column: 11, scope: !1160, inlinedAt: !1564)
!1597 = !DILocation(line: 61, column: 10, scope: !1160, inlinedAt: !1564)
!1598 = !DILocation(line: 63, column: 15, scope: !1212, inlinedAt: !1564)
!1599 = !DILocation(line: 63, column: 7, scope: !1160, inlinedAt: !1564)
!1600 = !DILocation(line: 64, column: 5, scope: !1212, inlinedAt: !1564)
!1601 = !DILocation(line: 65, column: 14, scope: !1216, inlinedAt: !1564)
!1602 = !DILocation(line: 65, column: 7, scope: !1160, inlinedAt: !1564)
!1603 = !DILocation(line: 66, column: 5, scope: !1216, inlinedAt: !1564)
!1604 = !DILocation(line: 67, column: 31, scope: !1160, inlinedAt: !1564)
!1605 = !DILocation(line: 67, column: 26, scope: !1160, inlinedAt: !1564)
!1606 = !DILocation(line: 67, column: 44, scope: !1160, inlinedAt: !1564)
!1607 = !DILocation(line: 67, column: 43, scope: !1160, inlinedAt: !1564)
!1608 = !DILocation(line: 67, column: 38, scope: !1160, inlinedAt: !1564)
!1609 = !DILocation(line: 67, column: 8, scope: !1160, inlinedAt: !1564)
!1610 = !DILocation(line: 68, column: 37, scope: !1160, inlinedAt: !1564)
!1611 = !DILocation(line: 68, column: 29, scope: !1160, inlinedAt: !1564)
!1612 = !DILocation(line: 68, column: 44, scope: !1160, inlinedAt: !1564)
!1613 = !DILocation(line: 68, column: 11, scope: !1160, inlinedAt: !1564)
!1614 = !DILocation(line: 69, column: 35, scope: !1160, inlinedAt: !1564)
!1615 = !DILocation(line: 69, column: 28, scope: !1160, inlinedAt: !1564)
!1616 = !DILocation(line: 69, column: 42, scope: !1160, inlinedAt: !1564)
!1617 = !DILocation(line: 69, column: 10, scope: !1160, inlinedAt: !1564)
!1618 = !DILocation(line: 70, column: 20, scope: !1160, inlinedAt: !1564)
!1619 = !DILocation(line: 71, column: 26, scope: !1160, inlinedAt: !1564)
!1620 = !DILocation(line: 71, column: 13, scope: !1160, inlinedAt: !1564)
!1621 = !DILocation(line: 72, column: 28, scope: !1160, inlinedAt: !1564)
!1622 = !DILocation(line: 72, column: 15, scope: !1160, inlinedAt: !1564)
!1623 = !DILocation(line: 73, column: 27, scope: !1160, inlinedAt: !1564)
!1624 = !DILocation(line: 73, column: 14, scope: !1160, inlinedAt: !1564)
!1625 = !DILocation(line: 74, column: 28, scope: !1160, inlinedAt: !1564)
!1626 = !DILocation(line: 75, column: 1, scope: !1160, inlinedAt: !1564)
!1627 = !DILocation(line: 292, column: 5, scope: !1173)
!1628 = !DILocation(line: 295, column: 14, scope: !753)
!1629 = !DILocation(line: 296, column: 14, scope: !753)
!1630 = !DILocation(line: 297, column: 32, scope: !753)
!1631 = !DILocation(line: 297, column: 57, scope: !753)
!1632 = !DILocation(line: 298, column: 17, scope: !753)
!1633 = !DILocation(line: 297, column: 58, scope: !753)
!1634 = !DILocation(line: 297, column: 43, scope: !753)
!1635 = !DILocation(line: 297, column: 71, scope: !753)
!1636 = !DILocation(line: 299, column: 14, scope: !798)
!1637 = !DILocation(line: 299, column: 7, scope: !753)
!1638 = !DILocation(line: 313, column: 67, scope: !797)
!1639 = !DILocation(line: 313, column: 9, scope: !797)
!1640 = !DILocation(line: 0, scope: !797)
!1641 = !DILocation(line: 315, column: 21, scope: !797)
!1642 = !DILocation(line: 316, column: 13, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !797, file: !647, line: 316, column: 11)
!1644 = !DILocation(line: 316, column: 11, scope: !797)
!1645 = !DILocation(line: 321, column: 23, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !647, line: 321, column: 11)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !647, line: 321, column: 11)
!1648 = distinct !DILexicalBlock(scope: !1643, file: !647, line: 317, column: 9)
!1649 = !DILocation(line: 321, column: 11, scope: !1647)
!1650 = !DILocation(line: 323, column: 25, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !647, line: 323, column: 13)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !647, line: 323, column: 13)
!1653 = distinct !DILexicalBlock(scope: !1646, file: !647, line: 322, column: 11)
!1654 = !DILocation(line: 323, column: 13, scope: !1652)
!1655 = !DILocation(line: 315, column: 20, scope: !797)
!1656 = !DILocation(line: 313, column: 8, scope: !797)
!1657 = !DILocation(line: 339, column: 23, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !647, line: 339, column: 11)
!1659 = distinct !DILexicalBlock(scope: !1648, file: !647, line: 339, column: 11)
!1660 = !DILocation(line: 339, column: 11, scope: !1659)
!1661 = !DILocation(line: 0, scope: !1652)
!1662 = !DILocation(line: 332, column: 23, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !647, line: 332, column: 13)
!1664 = distinct !DILexicalBlock(scope: !1653, file: !647, line: 332, column: 13)
!1665 = !DILocation(line: 332, column: 13, scope: !1664)
!1666 = !DILocation(line: 325, column: 21, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !647, line: 325, column: 19)
!1668 = distinct !DILexicalBlock(scope: !1651, file: !647, line: 324, column: 13)
!1669 = !DILocalVariable(name: "image", arg: 1, scope: !1670, file: !978, line: 117, type: !650)
!1670 = distinct !DISubprogram(name: "SetPixelPacket", scope: !978, file: !978, line: 117, type: !1671, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1675)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{null, !650, !1673, !438, !631}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !772)
!1675 = !{!1669, !1676, !1677, !1678}
!1676 = !DILocalVariable(name: "pixel", arg: 2, scope: !1670, file: !978, line: 118, type: !1673)
!1677 = !DILocalVariable(name: "color", arg: 3, scope: !1670, file: !978, line: 118, type: !438)
!1678 = !DILocalVariable(name: "index", arg: 4, scope: !1670, file: !978, line: 118, type: !631)
!1679 = !DILocation(line: 0, scope: !1670, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 326, column: 17, scope: !1667)
!1681 = !DILocation(line: 0, scope: !1670, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 328, column: 17, scope: !1667)
!1683 = !DILocation(line: 0, scope: !1667)
!1684 = !DILocation(line: 325, column: 19, scope: !1668)
!1685 = !DILocalVariable(name: "value", arg: 1, scope: !1686, file: !147, line: 87, type: !904)
!1686 = distinct !DISubprogram(name: "ClampToQuantum", scope: !147, file: !147, line: 87, type: !1687, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1689)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!443, !904}
!1689 = !{!1685}
!1690 = !DILocation(line: 0, scope: !1686, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1680)
!1692 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1680)
!1693 = !DILocation(line: 0, scope: !1686, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1680)
!1695 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1680)
!1696 = !DILocation(line: 0, scope: !1686, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1680)
!1698 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1680)
!1699 = !DILocation(line: 0, scope: !1686, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1680)
!1701 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1680)
!1702 = !DILocation(line: 124, column: 15, scope: !1703, inlinedAt: !1680)
!1703 = distinct !DILexicalBlock(scope: !1670, file: !978, line: 124, column: 7)
!1704 = !DILocation(line: 124, column: 26, scope: !1703, inlinedAt: !1680)
!1705 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !1680)
!1706 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !1680)
!1707 = !{!678, !679, i64 0}
!1708 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !1680)
!1709 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !1680)
!1710 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !1680)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !978, line: 126, column: 5)
!1712 = distinct !DILexicalBlock(scope: !1703, file: !978, line: 126, column: 5)
!1713 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !1680)
!1714 = !DILocation(line: 0, scope: !1686, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1682)
!1716 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1682)
!1717 = !DILocation(line: 0, scope: !1686, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1682)
!1719 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1682)
!1720 = !DILocation(line: 0, scope: !1686, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1682)
!1722 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1682)
!1723 = !DILocation(line: 0, scope: !1686, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1682)
!1725 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1682)
!1726 = !DILocation(line: 124, column: 15, scope: !1703, inlinedAt: !1682)
!1727 = !DILocation(line: 124, column: 26, scope: !1703, inlinedAt: !1682)
!1728 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !1682)
!1729 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !1682)
!1730 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !1682)
!1731 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !1682)
!1732 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !1682)
!1733 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !1682)
!1734 = !{!684, !684, i64 0}
!1735 = !DILocation(line: 329, column: 16, scope: !1668)
!1736 = !DILocation(line: 330, column: 28, scope: !1668)
!1737 = !DILocation(line: 323, column: 64, scope: !1651)
!1738 = distinct !{!1738, !1654, !1739, !1740, !1741}
!1739 = !DILocation(line: 331, column: 13, scope: !1652)
!1740 = !{!"llvm.loop.mustprogress"}
!1741 = !{!"llvm.loop.unroll.disable"}
!1742 = !DILocation(line: 0, scope: !1670, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 334, column: 15, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1663, file: !647, line: 333, column: 13)
!1745 = !DILocation(line: 0, scope: !1686, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1743)
!1747 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1743)
!1748 = !DILocation(line: 0, scope: !1686, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1743)
!1750 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1743)
!1751 = !DILocation(line: 0, scope: !1686, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1743)
!1753 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1743)
!1754 = !DILocation(line: 0, scope: !1686, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1743)
!1756 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1743)
!1757 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !1743)
!1758 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !1743)
!1759 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !1743)
!1760 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !1743)
!1761 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !1743)
!1762 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !1743)
!1763 = !DILocation(line: 0, scope: !1686, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !1743)
!1765 = !DILocation(line: 335, column: 16, scope: !1744)
!1766 = !DILocation(line: 336, column: 28, scope: !1744)
!1767 = !DILocation(line: 332, column: 58, scope: !1663)
!1768 = distinct !{!1768, !1665, !1769, !1740, !1741}
!1769 = !DILocation(line: 337, column: 13, scope: !1664)
!1770 = !DILocation(line: 321, column: 61, scope: !1646)
!1771 = distinct !{!1771, !1649, !1772, !1740, !1741}
!1772 = !DILocation(line: 338, column: 11, scope: !1647)
!1773 = !DILocation(line: 341, column: 13, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !647, line: 341, column: 13)
!1775 = distinct !DILexicalBlock(scope: !1658, file: !647, line: 340, column: 11)
!1776 = !DILocation(line: 361, column: 23, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !647, line: 361, column: 11)
!1778 = distinct !DILexicalBlock(scope: !1648, file: !647, line: 361, column: 11)
!1779 = !DILocation(line: 361, column: 11, scope: !1778)
!1780 = !DILocation(line: 0, scope: !1670, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 343, column: 15, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !647, line: 342, column: 13)
!1783 = distinct !DILexicalBlock(scope: !1774, file: !647, line: 341, column: 13)
!1784 = !DILocation(line: 0, scope: !1686, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1781)
!1786 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1781)
!1787 = !DILocation(line: 0, scope: !1686, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1781)
!1789 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1781)
!1790 = !DILocation(line: 0, scope: !1686, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1781)
!1792 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1781)
!1793 = !DILocation(line: 0, scope: !1686, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1781)
!1795 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1781)
!1796 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !1781)
!1797 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !1781)
!1798 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !1781)
!1799 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !1781)
!1800 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !1781)
!1801 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !1781)
!1802 = !DILocation(line: 0, scope: !1686, inlinedAt: !1803)
!1803 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !1781)
!1804 = !DILocation(line: 344, column: 16, scope: !1782)
!1805 = !DILocation(line: 345, column: 28, scope: !1782)
!1806 = !DILocation(line: 341, column: 63, scope: !1783)
!1807 = !DILocation(line: 341, column: 25, scope: !1783)
!1808 = distinct !{!1808, !1773, !1809, !1740, !1741}
!1809 = !DILocation(line: 346, column: 13, scope: !1774)
!1810 = !DILocation(line: 348, column: 13, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1775, file: !647, line: 348, column: 13)
!1812 = !DILocation(line: 354, column: 13, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1775, file: !647, line: 354, column: 13)
!1814 = !DILocation(line: 0, scope: !1670, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 350, column: 15, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !647, line: 349, column: 13)
!1817 = distinct !DILexicalBlock(scope: !1811, file: !647, line: 348, column: 13)
!1818 = !DILocation(line: 0, scope: !1686, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1815)
!1820 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1815)
!1821 = !DILocation(line: 0, scope: !1686, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1815)
!1823 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1815)
!1824 = !DILocation(line: 0, scope: !1686, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1815)
!1826 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1815)
!1827 = !DILocation(line: 0, scope: !1686, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1815)
!1829 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1815)
!1830 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !1815)
!1831 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !1815)
!1832 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !1815)
!1833 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !1815)
!1834 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !1815)
!1835 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !1815)
!1836 = !DILocation(line: 0, scope: !1686, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !1815)
!1838 = !DILocation(line: 351, column: 16, scope: !1816)
!1839 = !DILocation(line: 352, column: 28, scope: !1816)
!1840 = !DILocation(line: 348, column: 45, scope: !1817)
!1841 = !DILocation(line: 348, column: 25, scope: !1817)
!1842 = distinct !{!1842, !1810, !1843, !1740, !1741}
!1843 = !DILocation(line: 353, column: 13, scope: !1811)
!1844 = !DILocation(line: 0, scope: !1670, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 356, column: 15, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !647, line: 355, column: 13)
!1847 = distinct !DILexicalBlock(scope: !1813, file: !647, line: 354, column: 13)
!1848 = !DILocation(line: 0, scope: !1686, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1845)
!1850 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1845)
!1851 = !DILocation(line: 0, scope: !1686, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1845)
!1853 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1845)
!1854 = !DILocation(line: 0, scope: !1686, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1845)
!1856 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1845)
!1857 = !DILocation(line: 0, scope: !1686, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1845)
!1859 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1845)
!1860 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !1845)
!1861 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !1845)
!1862 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !1845)
!1863 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !1845)
!1864 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !1845)
!1865 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !1845)
!1866 = !DILocation(line: 0, scope: !1686, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !1845)
!1868 = !DILocation(line: 357, column: 16, scope: !1846)
!1869 = !DILocation(line: 358, column: 28, scope: !1846)
!1870 = !DILocation(line: 354, column: 63, scope: !1847)
!1871 = !DILocation(line: 354, column: 25, scope: !1847)
!1872 = distinct !{!1872, !1812, !1873, !1740, !1741}
!1873 = !DILocation(line: 359, column: 13, scope: !1813)
!1874 = !DILocation(line: 339, column: 65, scope: !1658)
!1875 = distinct !{!1875, !1660, !1876, !1740, !1741}
!1876 = !DILocation(line: 360, column: 11, scope: !1659)
!1877 = !DILocation(line: 363, column: 13, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !647, line: 363, column: 13)
!1879 = distinct !DILexicalBlock(scope: !1777, file: !647, line: 362, column: 11)
!1880 = !DILocation(line: 369, column: 13, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1879, file: !647, line: 369, column: 13)
!1882 = !DILocation(line: 0, scope: !1670, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 365, column: 15, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !647, line: 364, column: 13)
!1885 = distinct !DILexicalBlock(scope: !1878, file: !647, line: 363, column: 13)
!1886 = !DILocation(line: 0, scope: !1686, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1883)
!1888 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1883)
!1889 = !DILocation(line: 0, scope: !1686, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1883)
!1891 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1883)
!1892 = !DILocation(line: 0, scope: !1686, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1883)
!1894 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1883)
!1895 = !DILocation(line: 0, scope: !1686, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1883)
!1897 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1883)
!1898 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !1883)
!1899 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !1883)
!1900 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !1883)
!1901 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !1883)
!1902 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !1883)
!1903 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !1883)
!1904 = !DILocation(line: 0, scope: !1686, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !1883)
!1906 = !DILocation(line: 366, column: 16, scope: !1884)
!1907 = !DILocation(line: 367, column: 28, scope: !1884)
!1908 = !DILocation(line: 363, column: 63, scope: !1885)
!1909 = !DILocation(line: 363, column: 25, scope: !1885)
!1910 = distinct !{!1910, !1877, !1911, !1740, !1741}
!1911 = !DILocation(line: 368, column: 13, scope: !1878)
!1912 = !DILocation(line: 0, scope: !1670, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 371, column: 15, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !647, line: 370, column: 13)
!1915 = distinct !DILexicalBlock(scope: !1881, file: !647, line: 369, column: 13)
!1916 = !DILocation(line: 0, scope: !1686, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1913)
!1918 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1913)
!1919 = !DILocation(line: 0, scope: !1686, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1913)
!1921 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1913)
!1922 = !DILocation(line: 0, scope: !1686, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1913)
!1924 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1913)
!1925 = !DILocation(line: 0, scope: !1686, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1913)
!1927 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1913)
!1928 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !1913)
!1929 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !1913)
!1930 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !1913)
!1931 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !1913)
!1932 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !1913)
!1933 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !1913)
!1934 = !DILocation(line: 0, scope: !1686, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !1913)
!1936 = !DILocation(line: 372, column: 16, scope: !1914)
!1937 = !DILocation(line: 373, column: 28, scope: !1914)
!1938 = !DILocation(line: 369, column: 67, scope: !1915)
!1939 = !DILocation(line: 369, column: 25, scope: !1915)
!1940 = distinct !{!1940, !1880, !1941, !1740, !1741}
!1941 = !DILocation(line: 374, column: 13, scope: !1881)
!1942 = !DILocation(line: 375, column: 73, scope: !1879)
!1943 = !DILocation(line: 377, column: 25, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !647, line: 377, column: 13)
!1945 = distinct !DILexicalBlock(scope: !1879, file: !647, line: 377, column: 13)
!1946 = !DILocation(line: 377, column: 13, scope: !1945)
!1947 = !DILocation(line: 0, scope: !1945)
!1948 = !DILocation(line: 386, column: 23, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !647, line: 386, column: 13)
!1950 = distinct !DILexicalBlock(scope: !1879, file: !647, line: 386, column: 13)
!1951 = !DILocation(line: 386, column: 13, scope: !1950)
!1952 = !DILocation(line: 379, column: 21, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !647, line: 379, column: 19)
!1954 = distinct !DILexicalBlock(scope: !1944, file: !647, line: 378, column: 13)
!1955 = !DILocation(line: 0, scope: !1670, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 380, column: 17, scope: !1953)
!1957 = !DILocation(line: 0, scope: !1670, inlinedAt: !1958)
!1958 = distinct !DILocation(line: 382, column: 17, scope: !1953)
!1959 = !DILocation(line: 0, scope: !1953)
!1960 = !DILocation(line: 379, column: 19, scope: !1954)
!1961 = !DILocation(line: 0, scope: !1686, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1956)
!1963 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1956)
!1964 = !DILocation(line: 0, scope: !1686, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1956)
!1966 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1956)
!1967 = !DILocation(line: 0, scope: !1686, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1956)
!1969 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1956)
!1970 = !DILocation(line: 0, scope: !1686, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1956)
!1972 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1956)
!1973 = !DILocation(line: 124, column: 15, scope: !1703, inlinedAt: !1956)
!1974 = !DILocation(line: 124, column: 26, scope: !1703, inlinedAt: !1956)
!1975 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !1956)
!1976 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !1956)
!1977 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !1956)
!1978 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !1956)
!1979 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !1956)
!1980 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !1956)
!1981 = !DILocation(line: 0, scope: !1686, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1958)
!1983 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !1958)
!1984 = !DILocation(line: 0, scope: !1686, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1958)
!1986 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !1958)
!1987 = !DILocation(line: 0, scope: !1686, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1958)
!1989 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !1958)
!1990 = !DILocation(line: 0, scope: !1686, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1958)
!1992 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !1958)
!1993 = !DILocation(line: 124, column: 15, scope: !1703, inlinedAt: !1958)
!1994 = !DILocation(line: 124, column: 26, scope: !1703, inlinedAt: !1958)
!1995 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !1958)
!1996 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !1958)
!1997 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !1958)
!1998 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !1958)
!1999 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !1958)
!2000 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !1958)
!2001 = !DILocation(line: 383, column: 16, scope: !1954)
!2002 = !DILocation(line: 384, column: 28, scope: !1954)
!2003 = !DILocation(line: 377, column: 45, scope: !1944)
!2004 = distinct !{!2004, !1946, !2005, !1740, !1741}
!2005 = !DILocation(line: 385, column: 13, scope: !1945)
!2006 = !DILocation(line: 0, scope: !1670, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 388, column: 15, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1949, file: !647, line: 387, column: 13)
!2009 = !DILocation(line: 0, scope: !1686, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2007)
!2011 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2007)
!2012 = !DILocation(line: 0, scope: !1686, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2007)
!2014 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2007)
!2015 = !DILocation(line: 0, scope: !1686, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2007)
!2017 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2007)
!2018 = !DILocation(line: 0, scope: !1686, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2007)
!2020 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2007)
!2021 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2007)
!2022 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2007)
!2023 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2007)
!2024 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2007)
!2025 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2007)
!2026 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2007)
!2027 = !DILocation(line: 0, scope: !1686, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2007)
!2029 = !DILocation(line: 389, column: 16, scope: !2008)
!2030 = !DILocation(line: 390, column: 28, scope: !2008)
!2031 = !DILocation(line: 386, column: 80, scope: !1949)
!2032 = distinct !{!2032, !1951, !2033, !1740, !1741}
!2033 = !DILocation(line: 391, column: 13, scope: !1950)
!2034 = !DILocation(line: 393, column: 13, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1879, file: !647, line: 393, column: 13)
!2036 = !DILocation(line: 399, column: 13, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1879, file: !647, line: 399, column: 13)
!2038 = !DILocation(line: 0, scope: !1670, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 395, column: 15, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !647, line: 394, column: 13)
!2041 = distinct !DILexicalBlock(scope: !2035, file: !647, line: 393, column: 13)
!2042 = !DILocation(line: 0, scope: !1686, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2039)
!2044 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2039)
!2045 = !DILocation(line: 0, scope: !1686, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2039)
!2047 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2039)
!2048 = !DILocation(line: 0, scope: !1686, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2039)
!2050 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2039)
!2051 = !DILocation(line: 0, scope: !1686, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2039)
!2053 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2039)
!2054 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2039)
!2055 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2039)
!2056 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2039)
!2057 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2039)
!2058 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2039)
!2059 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2039)
!2060 = !DILocation(line: 0, scope: !1686, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2039)
!2062 = !DILocation(line: 396, column: 16, scope: !2040)
!2063 = !DILocation(line: 397, column: 28, scope: !2040)
!2064 = !DILocation(line: 393, column: 45, scope: !2041)
!2065 = !DILocation(line: 393, column: 25, scope: !2041)
!2066 = distinct !{!2066, !2034, !2067, !1740, !1741}
!2067 = !DILocation(line: 398, column: 13, scope: !2035)
!2068 = !DILocation(line: 0, scope: !1670, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 401, column: 15, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !647, line: 400, column: 13)
!2071 = distinct !DILexicalBlock(scope: !2037, file: !647, line: 399, column: 13)
!2072 = !DILocation(line: 0, scope: !1686, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2069)
!2074 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2069)
!2075 = !DILocation(line: 0, scope: !1686, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2069)
!2077 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2069)
!2078 = !DILocation(line: 0, scope: !1686, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2069)
!2080 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2069)
!2081 = !DILocation(line: 0, scope: !1686, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2069)
!2083 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2069)
!2084 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2069)
!2085 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2069)
!2086 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2069)
!2087 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2069)
!2088 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2069)
!2089 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2069)
!2090 = !DILocation(line: 0, scope: !1686, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2069)
!2092 = !DILocation(line: 402, column: 16, scope: !2070)
!2093 = !DILocation(line: 403, column: 28, scope: !2070)
!2094 = !DILocation(line: 399, column: 63, scope: !2071)
!2095 = !DILocation(line: 399, column: 25, scope: !2071)
!2096 = distinct !{!2096, !2036, !2097, !1740, !1741}
!2097 = !DILocation(line: 404, column: 13, scope: !2037)
!2098 = !DILocation(line: 361, column: 61, scope: !1777)
!2099 = distinct !{!2099, !1779, !2100, !1740, !1741}
!2100 = !DILocation(line: 405, column: 11, scope: !1778)
!2101 = !DILocation(line: 406, column: 18, scope: !1648)
!2102 = !DILocation(line: 407, column: 9, scope: !1648)
!2103 = !DILocation(line: 416, column: 34, scope: !805)
!2104 = !DILocation(line: 416, column: 15, scope: !805)
!2105 = !DILocation(line: 416, column: 3, scope: !806)
!2106 = !DILocation(line: 430, column: 16, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !804, file: !647, line: 430, column: 9)
!2108 = !DILocation(line: 430, column: 9, scope: !804)
!2109 = !DILocation(line: 432, column: 62, scope: !804)
!2110 = !DILocation(line: 432, column: 63, scope: !804)
!2111 = !DILocation(line: 433, column: 20, scope: !804)
!2112 = !DILocation(line: 432, column: 7, scope: !804)
!2113 = !DILocation(line: 0, scope: !804)
!2114 = !DILocation(line: 434, column: 11, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !804, file: !647, line: 434, column: 9)
!2116 = !DILocation(line: 434, column: 9, scope: !804)
!2117 = !DILocation(line: 439, column: 19, scope: !804)
!2118 = !DILocation(line: 440, column: 17, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !647, line: 440, column: 5)
!2120 = distinct !DILexicalBlock(scope: !804, file: !647, line: 440, column: 5)
!2121 = !DILocation(line: 440, column: 5, scope: !2120)
!2122 = !DILocation(line: 446, column: 17, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !647, line: 446, column: 5)
!2124 = distinct !DILexicalBlock(scope: !804, file: !647, line: 446, column: 5)
!2125 = !DILocation(line: 446, column: 5, scope: !2124)
!2126 = !DILocation(line: 0, scope: !1670, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 442, column: 7, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2119, file: !647, line: 441, column: 5)
!2129 = !DILocation(line: 0, scope: !1686, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2127)
!2131 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2127)
!2132 = !DILocation(line: 0, scope: !1686, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2127)
!2134 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2127)
!2135 = !DILocation(line: 0, scope: !1686, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2127)
!2137 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2127)
!2138 = !DILocation(line: 0, scope: !1686, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2127)
!2140 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2127)
!2141 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2127)
!2142 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2127)
!2143 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2127)
!2144 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2127)
!2145 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2127)
!2146 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2127)
!2147 = !DILocation(line: 0, scope: !1686, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2127)
!2149 = !DILocation(line: 443, column: 8, scope: !2128)
!2150 = !DILocation(line: 444, column: 20, scope: !2128)
!2151 = !DILocation(line: 440, column: 55, scope: !2119)
!2152 = distinct !{!2152, !2121, !2153, !1740, !1741}
!2153 = !DILocation(line: 445, column: 5, scope: !2120)
!2154 = !DILocation(line: 452, column: 17, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !647, line: 452, column: 5)
!2156 = distinct !DILexicalBlock(scope: !804, file: !647, line: 452, column: 5)
!2157 = !DILocation(line: 452, column: 5, scope: !2156)
!2158 = !DILocation(line: 0, scope: !1670, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 448, column: 7, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2123, file: !647, line: 447, column: 5)
!2161 = !DILocation(line: 0, scope: !1686, inlinedAt: !2162)
!2162 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2159)
!2163 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2159)
!2164 = !DILocation(line: 0, scope: !1686, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2159)
!2166 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2159)
!2167 = !DILocation(line: 0, scope: !1686, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2159)
!2169 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2159)
!2170 = !DILocation(line: 0, scope: !1686, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2159)
!2172 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2159)
!2173 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2159)
!2174 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2159)
!2175 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2159)
!2176 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2159)
!2177 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2159)
!2178 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2159)
!2179 = !DILocation(line: 0, scope: !1686, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2159)
!2181 = !DILocation(line: 449, column: 8, scope: !2160)
!2182 = !DILocation(line: 450, column: 20, scope: !2160)
!2183 = !DILocation(line: 446, column: 59, scope: !2123)
!2184 = distinct !{!2184, !2125, !2185, !1740, !1741}
!2185 = !DILocation(line: 451, column: 5, scope: !2124)
!2186 = !DILocation(line: 0, scope: !1670, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 454, column: 7, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2155, file: !647, line: 453, column: 5)
!2189 = !DILocation(line: 0, scope: !1686, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2187)
!2191 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2187)
!2192 = !DILocation(line: 0, scope: !1686, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2187)
!2194 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2187)
!2195 = !DILocation(line: 0, scope: !1686, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2187)
!2197 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2187)
!2198 = !DILocation(line: 0, scope: !1686, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2187)
!2200 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2187)
!2201 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2187)
!2202 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2187)
!2203 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2187)
!2204 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2187)
!2205 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2187)
!2206 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2187)
!2207 = !DILocation(line: 0, scope: !1686, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2187)
!2209 = !DILocation(line: 455, column: 8, scope: !2188)
!2210 = !DILocation(line: 456, column: 20, scope: !2188)
!2211 = !DILocation(line: 452, column: 55, scope: !2155)
!2212 = distinct !{!2212, !2157, !2213, !1740, !1741}
!2213 = !DILocation(line: 457, column: 5, scope: !2156)
!2214 = !DILocation(line: 461, column: 17, scope: !811)
!2215 = !{!678, !679, i64 416}
!2216 = !DILocation(line: 461, column: 45, scope: !811)
!2217 = !DILocation(line: 462, column: 57, scope: !811)
!2218 = !DILocation(line: 462, column: 63, scope: !811)
!2219 = !DILocation(line: 461, column: 9, scope: !804)
!2220 = !DILocation(line: 463, column: 19, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !647, line: 463, column: 7)
!2222 = distinct !DILexicalBlock(scope: !811, file: !647, line: 463, column: 7)
!2223 = !DILocation(line: 463, column: 7, scope: !2222)
!2224 = !DILocation(line: 0, scope: !1670, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 465, column: 9, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2221, file: !647, line: 464, column: 7)
!2227 = !DILocation(line: 0, scope: !1686, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2225)
!2229 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2225)
!2230 = !DILocation(line: 0, scope: !1686, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2225)
!2232 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2225)
!2233 = !DILocation(line: 0, scope: !1686, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2225)
!2235 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2225)
!2236 = !DILocation(line: 0, scope: !1686, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2225)
!2238 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2225)
!2239 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2225)
!2240 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2225)
!2241 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2225)
!2242 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2225)
!2243 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2225)
!2244 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2225)
!2245 = !DILocation(line: 0, scope: !1686, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2225)
!2247 = !DILocation(line: 466, column: 10, scope: !2226)
!2248 = !DILocation(line: 467, column: 22, scope: !2226)
!2249 = !DILocation(line: 463, column: 48, scope: !2221)
!2250 = distinct !{!2250, !2223, !2251, !1740, !1741}
!2251 = !DILocation(line: 468, column: 7, scope: !2222)
!2252 = !DILocation(line: 477, column: 59, scope: !810)
!2253 = !DILocation(line: 477, column: 11, scope: !810)
!2254 = !DILocation(line: 0, scope: !810)
!2255 = !DILocation(line: 478, column: 15, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !810, file: !647, line: 478, column: 13)
!2257 = !DILocation(line: 478, column: 13, scope: !810)
!2258 = !DILocation(line: 483, column: 17, scope: !810)
!2259 = !DILocation(line: 484, column: 44, scope: !810)
!2260 = !DILocation(line: 484, column: 51, scope: !810)
!2261 = !DILocation(line: 484, column: 16, scope: !810)
!2262 = !DILocation(line: 485, column: 21, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !810, file: !647, line: 485, column: 13)
!2264 = !DILocation(line: 485, column: 32, scope: !2263)
!2265 = !DILocation(line: 485, column: 51, scope: !2263)
!2266 = !DILocation(line: 486, column: 27, scope: !2263)
!2267 = !DILocation(line: 486, column: 38, scope: !2263)
!2268 = !DILocation(line: 485, column: 13, scope: !810)
!2269 = !DILocation(line: 488, column: 66, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2263, file: !647, line: 487, column: 11)
!2271 = !DILocation(line: 488, column: 73, scope: !2270)
!2272 = !DILocation(line: 488, column: 20, scope: !2270)
!2273 = !DILocation(line: 490, column: 35, scope: !2270)
!2274 = !DILocation(line: 490, column: 26, scope: !2270)
!2275 = !DILocation(line: 491, column: 11, scope: !2270)
!2276 = !DILocation(line: 492, column: 19, scope: !810)
!2277 = !DILocation(line: 492, column: 10, scope: !810)
!2278 = !DILocation(line: 439, column: 18, scope: !804)
!2279 = !DILocation(line: 432, column: 6, scope: !804)
!2280 = !DILocation(line: 494, column: 17, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !647, line: 494, column: 5)
!2282 = distinct !DILexicalBlock(scope: !804, file: !647, line: 494, column: 5)
!2283 = !DILocation(line: 494, column: 5, scope: !2282)
!2284 = !DILocation(line: 0, scope: !1670, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 496, column: 7, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2281, file: !647, line: 495, column: 5)
!2287 = !DILocation(line: 0, scope: !1686, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2285)
!2289 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2285)
!2290 = !DILocation(line: 0, scope: !1686, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2285)
!2292 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2285)
!2293 = !DILocation(line: 0, scope: !1686, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2285)
!2295 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2285)
!2296 = !DILocation(line: 0, scope: !1686, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2285)
!2298 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2285)
!2299 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2285)
!2300 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2285)
!2301 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2285)
!2302 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2285)
!2303 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2285)
!2304 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2285)
!2305 = !DILocation(line: 0, scope: !1686, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2285)
!2307 = !DILocation(line: 497, column: 8, scope: !2286)
!2308 = !DILocation(line: 498, column: 20, scope: !2286)
!2309 = !DILocation(line: 494, column: 55, scope: !2281)
!2310 = distinct !{!2310, !2283, !2311, !1740, !1741}
!2311 = !DILocation(line: 499, column: 5, scope: !2282)
!2312 = !DILocation(line: 500, column: 23, scope: !804)
!2313 = !DILocation(line: 500, column: 41, scope: !804)
!2314 = !DILocation(line: 500, column: 57, scope: !804)
!2315 = !DILocation(line: 501, column: 17, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !647, line: 501, column: 5)
!2317 = distinct !DILexicalBlock(scope: !804, file: !647, line: 501, column: 5)
!2318 = !DILocation(line: 501, column: 5, scope: !2317)
!2319 = !DILocation(line: 507, column: 17, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !647, line: 507, column: 5)
!2321 = distinct !DILexicalBlock(scope: !804, file: !647, line: 507, column: 5)
!2322 = !DILocation(line: 507, column: 5, scope: !2321)
!2323 = !DILocation(line: 0, scope: !1670, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 503, column: 7, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2316, file: !647, line: 502, column: 5)
!2326 = !DILocation(line: 0, scope: !1686, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2324)
!2328 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2324)
!2329 = !DILocation(line: 0, scope: !1686, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2324)
!2331 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2324)
!2332 = !DILocation(line: 0, scope: !1686, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2324)
!2334 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2324)
!2335 = !DILocation(line: 0, scope: !1686, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2324)
!2337 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2324)
!2338 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2324)
!2339 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2324)
!2340 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2324)
!2341 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2324)
!2342 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2324)
!2343 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2324)
!2344 = !DILocation(line: 0, scope: !1686, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2324)
!2346 = !DILocation(line: 504, column: 8, scope: !2325)
!2347 = !DILocation(line: 505, column: 20, scope: !2325)
!2348 = !DILocation(line: 501, column: 37, scope: !2316)
!2349 = distinct !{!2349, !2318, !2350, !1740, !1741}
!2350 = !DILocation(line: 506, column: 5, scope: !2317)
!2351 = !DILocation(line: 0, scope: !1670, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 509, column: 7, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2320, file: !647, line: 508, column: 5)
!2354 = !DILocation(line: 0, scope: !1686, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2352)
!2356 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2352)
!2357 = !DILocation(line: 0, scope: !1686, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2352)
!2359 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2352)
!2360 = !DILocation(line: 0, scope: !1686, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2352)
!2362 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2352)
!2363 = !DILocation(line: 0, scope: !1686, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2352)
!2365 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2352)
!2366 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2352)
!2367 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2352)
!2368 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2352)
!2369 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2352)
!2370 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2352)
!2371 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2352)
!2372 = !DILocation(line: 0, scope: !1686, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2352)
!2374 = !DILocation(line: 510, column: 8, scope: !2353)
!2375 = !DILocation(line: 511, column: 20, scope: !2353)
!2376 = !DILocation(line: 507, column: 55, scope: !2320)
!2377 = distinct !{!2377, !2322, !2378, !1740, !1741}
!2378 = !DILocation(line: 512, column: 5, scope: !2321)
!2379 = !DILocation(line: 513, column: 9, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !804, file: !647, line: 513, column: 9)
!2381 = !DILocation(line: 513, column: 60, scope: !2380)
!2382 = !DILocation(line: 513, column: 9, scope: !804)
!2383 = !DILocation(line: 515, column: 16, scope: !815)
!2384 = !{!678, !682, i64 568}
!2385 = !DILocation(line: 515, column: 33, scope: !815)
!2386 = !DILocation(line: 515, column: 9, scope: !804)
!2387 = !DILocation(line: 523, column: 62, scope: !814)
!2388 = !DILocation(line: 523, column: 72, scope: !814)
!2389 = !DILocalVariable(name: "image", arg: 1, scope: !2390, file: !2391, line: 27, type: !650)
!2390 = distinct !DISubprogram(name: "SetImageProgress", scope: !2391, file: !2391, line: 27, type: !2392, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2394)
!2391 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!431, !650, !543, !545, !548}
!2394 = !{!2389, !2395, !2396, !2397, !2398}
!2395 = !DILocalVariable(name: "tag", arg: 2, scope: !2390, file: !2391, line: 28, type: !543)
!2396 = !DILocalVariable(name: "offset", arg: 3, scope: !2390, file: !2391, line: 28, type: !545)
!2397 = !DILocalVariable(name: "extent", arg: 4, scope: !2390, file: !2391, line: 28, type: !548)
!2398 = !DILocalVariable(name: "message", scope: !2390, file: !2391, line: 31, type: !563)
!2399 = !DILocation(line: 0, scope: !2390, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 523, column: 17, scope: !814)
!2401 = !DILocation(line: 30, column: 3, scope: !2390, inlinedAt: !2400)
!2402 = !DILocation(line: 31, column: 5, scope: !2390, inlinedAt: !2400)
!2403 = !DILocation(line: 35, column: 10, scope: !2390, inlinedAt: !2400)
!2404 = !DILocation(line: 36, column: 17, scope: !2390, inlinedAt: !2400)
!2405 = !DILocation(line: 36, column: 63, scope: !2390, inlinedAt: !2400)
!2406 = !{!678, !682, i64 576}
!2407 = !DILocation(line: 36, column: 10, scope: !2390, inlinedAt: !2400)
!2408 = !DILocation(line: 37, column: 1, scope: !2390, inlinedAt: !2400)
!2409 = !DILocation(line: 0, scope: !814)
!2410 = !DILocation(line: 524, column: 21, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !814, file: !647, line: 524, column: 13)
!2412 = !DILocation(line: 524, column: 13, scope: !814)
!2413 = !DILocation(line: 526, column: 7, scope: !814)
!2414 = !DILocation(line: 416, column: 41, scope: !805)
!2415 = distinct !{!2415, !2105, !2416, !1740, !1741}
!2416 = !DILocation(line: 527, column: 3, scope: !806)
!2417 = !DILocation(line: 293, column: 9, scope: !753)
!2418 = !DILocation(line: 528, column: 32, scope: !753)
!2419 = !DILocation(line: 528, column: 56, scope: !753)
!2420 = !DILocation(line: 529, column: 17, scope: !753)
!2421 = !DILocation(line: 529, column: 55, scope: !753)
!2422 = !DILocation(line: 529, column: 18, scope: !753)
!2423 = !DILocation(line: 529, column: 30, scope: !753)
!2424 = !DILocation(line: 529, column: 42, scope: !753)
!2425 = !DILocation(line: 530, column: 14, scope: !818)
!2426 = !DILocation(line: 530, column: 7, scope: !753)
!2427 = !DILocation(line: 544, column: 76, scope: !817)
!2428 = !DILocation(line: 544, column: 80, scope: !817)
!2429 = !DILocation(line: 545, column: 30, scope: !817)
!2430 = !DILocation(line: 544, column: 9, scope: !817)
!2431 = !DILocation(line: 0, scope: !817)
!2432 = !DILocation(line: 546, column: 13, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !817, file: !647, line: 546, column: 11)
!2434 = !DILocation(line: 546, column: 11, scope: !817)
!2435 = !DILocation(line: 551, column: 25, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2433, file: !647, line: 547, column: 9)
!2437 = !DILocation(line: 552, column: 30, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2436, file: !647, line: 552, column: 11)
!2439 = !DILocation(line: 552, column: 47, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2438, file: !647, line: 552, column: 11)
!2441 = !DILocation(line: 552, column: 11, scope: !2438)
!2442 = !DILocation(line: 0, scope: !2436)
!2443 = distinct !{!2443, !2441, !2444, !1740, !1741}
!2444 = !DILocation(line: 594, column: 11, scope: !2438)
!2445 = !DILocation(line: 0, scope: !2438)
!2446 = !DILocation(line: 554, column: 13, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !647, line: 554, column: 13)
!2448 = distinct !DILexicalBlock(scope: !2440, file: !647, line: 553, column: 11)
!2449 = !DILocation(line: 560, column: 13, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2448, file: !647, line: 560, column: 13)
!2451 = !DILocation(line: 0, scope: !1670, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 556, column: 15, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !647, line: 555, column: 13)
!2454 = distinct !DILexicalBlock(scope: !2447, file: !647, line: 554, column: 13)
!2455 = !DILocation(line: 0, scope: !1686, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2452)
!2457 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2452)
!2458 = !DILocation(line: 0, scope: !1686, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2452)
!2460 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2452)
!2461 = !DILocation(line: 0, scope: !1686, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2452)
!2463 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2452)
!2464 = !DILocation(line: 0, scope: !1686, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2452)
!2466 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2452)
!2467 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2452)
!2468 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2452)
!2469 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2452)
!2470 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2452)
!2471 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2452)
!2472 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2452)
!2473 = !DILocation(line: 0, scope: !1686, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2452)
!2475 = !DILocation(line: 557, column: 16, scope: !2453)
!2476 = !DILocation(line: 558, column: 28, scope: !2453)
!2477 = !DILocation(line: 554, column: 63, scope: !2454)
!2478 = !DILocation(line: 554, column: 25, scope: !2454)
!2479 = distinct !{!2479, !2446, !2480, !1740, !1741}
!2480 = !DILocation(line: 559, column: 13, scope: !2447)
!2481 = !DILocation(line: 566, column: 25, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !647, line: 566, column: 13)
!2483 = distinct !DILexicalBlock(scope: !2448, file: !647, line: 566, column: 13)
!2484 = !DILocation(line: 566, column: 13, scope: !2483)
!2485 = !DILocation(line: 0, scope: !1670, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 562, column: 15, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !647, line: 561, column: 13)
!2488 = distinct !DILexicalBlock(scope: !2450, file: !647, line: 560, column: 13)
!2489 = !DILocation(line: 0, scope: !1686, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2486)
!2491 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2486)
!2492 = !DILocation(line: 0, scope: !1686, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2486)
!2494 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2486)
!2495 = !DILocation(line: 0, scope: !1686, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2486)
!2497 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2486)
!2498 = !DILocation(line: 0, scope: !1686, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2486)
!2500 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2486)
!2501 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2486)
!2502 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2486)
!2503 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2486)
!2504 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2486)
!2505 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2486)
!2506 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2486)
!2507 = !DILocation(line: 0, scope: !1686, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2486)
!2509 = !DILocation(line: 563, column: 16, scope: !2487)
!2510 = !DILocation(line: 564, column: 28, scope: !2487)
!2511 = !DILocation(line: 560, column: 67, scope: !2488)
!2512 = !DILocation(line: 560, column: 25, scope: !2488)
!2513 = distinct !{!2513, !2449, !2514, !1740, !1741}
!2514 = !DILocation(line: 565, column: 13, scope: !2450)
!2515 = !DILocation(line: 0, scope: !2483)
!2516 = !DILocation(line: 572, column: 23, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !647, line: 572, column: 13)
!2518 = distinct !DILexicalBlock(scope: !2448, file: !647, line: 572, column: 13)
!2519 = !DILocation(line: 572, column: 13, scope: !2518)
!2520 = !DILocation(line: 0, scope: !1670, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 568, column: 15, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2482, file: !647, line: 567, column: 13)
!2523 = !DILocation(line: 0, scope: !1686, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2521)
!2525 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2521)
!2526 = !DILocation(line: 0, scope: !1686, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2521)
!2528 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2521)
!2529 = !DILocation(line: 0, scope: !1686, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2521)
!2531 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2521)
!2532 = !DILocation(line: 0, scope: !1686, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2521)
!2534 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2521)
!2535 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2521)
!2536 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2521)
!2537 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2521)
!2538 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2521)
!2539 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2521)
!2540 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2521)
!2541 = !DILocation(line: 0, scope: !1686, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2521)
!2543 = !DILocation(line: 569, column: 16, scope: !2522)
!2544 = !DILocation(line: 570, column: 28, scope: !2522)
!2545 = !DILocation(line: 566, column: 31, scope: !2482)
!2546 = distinct !{!2546, !2484, !2547, !1740, !1741}
!2547 = !DILocation(line: 571, column: 13, scope: !2483)
!2548 = !DILocation(line: 574, column: 21, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !647, line: 574, column: 19)
!2550 = distinct !DILexicalBlock(scope: !2517, file: !647, line: 573, column: 13)
!2551 = !DILocation(line: 0, scope: !1670, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 577, column: 17, scope: !2549)
!2553 = !DILocation(line: 0, scope: !1670, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 575, column: 17, scope: !2549)
!2555 = !DILocation(line: 0, scope: !2549)
!2556 = !DILocation(line: 574, column: 19, scope: !2550)
!2557 = !DILocation(line: 0, scope: !1686, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2554)
!2559 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2554)
!2560 = !DILocation(line: 0, scope: !1686, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2554)
!2562 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2554)
!2563 = !DILocation(line: 0, scope: !1686, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2554)
!2565 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2554)
!2566 = !DILocation(line: 0, scope: !1686, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2554)
!2568 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2554)
!2569 = !DILocation(line: 124, column: 15, scope: !1703, inlinedAt: !2554)
!2570 = !DILocation(line: 124, column: 26, scope: !1703, inlinedAt: !2554)
!2571 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2554)
!2572 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2554)
!2573 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2554)
!2574 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2554)
!2575 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2554)
!2576 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2554)
!2577 = !DILocation(line: 0, scope: !1686, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2552)
!2579 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2552)
!2580 = !DILocation(line: 0, scope: !1686, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2552)
!2582 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2552)
!2583 = !DILocation(line: 0, scope: !1686, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2552)
!2585 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2552)
!2586 = !DILocation(line: 0, scope: !1686, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2552)
!2588 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2552)
!2589 = !DILocation(line: 124, column: 15, scope: !1703, inlinedAt: !2552)
!2590 = !DILocation(line: 124, column: 26, scope: !1703, inlinedAt: !2552)
!2591 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2552)
!2592 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2552)
!2593 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2552)
!2594 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2552)
!2595 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2552)
!2596 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2552)
!2597 = !DILocation(line: 578, column: 16, scope: !2550)
!2598 = !DILocation(line: 579, column: 28, scope: !2550)
!2599 = !DILocation(line: 572, column: 80, scope: !2517)
!2600 = distinct !{!2600, !2519, !2601, !1740, !1741}
!2601 = !DILocation(line: 580, column: 13, scope: !2518)
!2602 = !DILocation(line: 582, column: 13, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2448, file: !647, line: 582, column: 13)
!2604 = !DILocation(line: 588, column: 13, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2448, file: !647, line: 588, column: 13)
!2606 = !DILocation(line: 0, scope: !1670, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 584, column: 15, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !647, line: 583, column: 13)
!2609 = distinct !DILexicalBlock(scope: !2603, file: !647, line: 582, column: 13)
!2610 = !DILocation(line: 0, scope: !1686, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2607)
!2612 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2607)
!2613 = !DILocation(line: 0, scope: !1686, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2607)
!2615 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2607)
!2616 = !DILocation(line: 0, scope: !1686, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2607)
!2618 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2607)
!2619 = !DILocation(line: 0, scope: !1686, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2607)
!2621 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2607)
!2622 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2607)
!2623 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2607)
!2624 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2607)
!2625 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2607)
!2626 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2607)
!2627 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2607)
!2628 = !DILocation(line: 0, scope: !1686, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2607)
!2630 = !DILocation(line: 585, column: 16, scope: !2608)
!2631 = !DILocation(line: 586, column: 28, scope: !2608)
!2632 = !DILocation(line: 582, column: 45, scope: !2609)
!2633 = !DILocation(line: 582, column: 25, scope: !2609)
!2634 = distinct !{!2634, !2602, !2635, !1740, !1741}
!2635 = !DILocation(line: 587, column: 13, scope: !2603)
!2636 = !DILocation(line: 0, scope: !1670, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 590, column: 15, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !647, line: 589, column: 13)
!2639 = distinct !DILexicalBlock(scope: !2605, file: !647, line: 588, column: 13)
!2640 = !DILocation(line: 0, scope: !1686, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2637)
!2642 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2637)
!2643 = !DILocation(line: 0, scope: !1686, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2637)
!2645 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2637)
!2646 = !DILocation(line: 0, scope: !1686, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2637)
!2648 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2637)
!2649 = !DILocation(line: 0, scope: !1686, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2637)
!2651 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2637)
!2652 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2637)
!2653 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2637)
!2654 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2637)
!2655 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2637)
!2656 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2637)
!2657 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2637)
!2658 = !DILocation(line: 0, scope: !1686, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2637)
!2660 = !DILocation(line: 591, column: 16, scope: !2638)
!2661 = !DILocation(line: 592, column: 28, scope: !2638)
!2662 = !DILocation(line: 588, column: 63, scope: !2639)
!2663 = !DILocation(line: 588, column: 25, scope: !2639)
!2664 = distinct !{!2664, !2604, !2665, !1740, !1741}
!2665 = !DILocation(line: 593, column: 13, scope: !2605)
!2666 = !DILocation(line: 551, column: 24, scope: !2436)
!2667 = !DILocation(line: 544, column: 8, scope: !817)
!2668 = !DILocation(line: 595, column: 30, scope: !2436)
!2669 = !DILocation(line: 595, column: 49, scope: !2436)
!2670 = !DILocation(line: 595, column: 58, scope: !2436)
!2671 = !DILocation(line: 595, column: 62, scope: !2436)
!2672 = !DILocation(line: 596, column: 23, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !647, line: 596, column: 11)
!2674 = distinct !DILexicalBlock(scope: !2436, file: !647, line: 596, column: 11)
!2675 = !DILocation(line: 596, column: 11, scope: !2674)
!2676 = !DILocation(line: 598, column: 13, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !647, line: 598, column: 13)
!2678 = distinct !DILexicalBlock(scope: !2673, file: !647, line: 597, column: 11)
!2679 = !DILocation(line: 0, scope: !1670, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 600, column: 15, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !647, line: 599, column: 13)
!2682 = distinct !DILexicalBlock(scope: !2677, file: !647, line: 598, column: 13)
!2683 = !DILocation(line: 0, scope: !1686, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2680)
!2685 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2680)
!2686 = !DILocation(line: 0, scope: !1686, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2680)
!2688 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2680)
!2689 = !DILocation(line: 0, scope: !1686, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2680)
!2691 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2680)
!2692 = !DILocation(line: 0, scope: !1686, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2680)
!2694 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2680)
!2695 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2680)
!2696 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2680)
!2697 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2680)
!2698 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2680)
!2699 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2680)
!2700 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2680)
!2701 = !DILocation(line: 0, scope: !1686, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2680)
!2703 = !DILocation(line: 601, column: 16, scope: !2681)
!2704 = !DILocation(line: 602, column: 28, scope: !2681)
!2705 = !DILocation(line: 598, column: 63, scope: !2682)
!2706 = !DILocation(line: 598, column: 25, scope: !2682)
!2707 = distinct !{!2707, !2676, !2708, !1740, !1741}
!2708 = !DILocation(line: 603, column: 13, scope: !2677)
!2709 = !DILocation(line: 605, column: 13, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2678, file: !647, line: 605, column: 13)
!2711 = !DILocation(line: 611, column: 13, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2678, file: !647, line: 611, column: 13)
!2713 = !DILocation(line: 0, scope: !1670, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 607, column: 15, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !647, line: 606, column: 13)
!2716 = distinct !DILexicalBlock(scope: !2710, file: !647, line: 605, column: 13)
!2717 = !DILocation(line: 0, scope: !1686, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2714)
!2719 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2714)
!2720 = !DILocation(line: 0, scope: !1686, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2714)
!2722 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2714)
!2723 = !DILocation(line: 0, scope: !1686, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2714)
!2725 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2714)
!2726 = !DILocation(line: 0, scope: !1686, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2714)
!2728 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2714)
!2729 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2714)
!2730 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2714)
!2731 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2714)
!2732 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2714)
!2733 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2714)
!2734 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2714)
!2735 = !DILocation(line: 0, scope: !1686, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2714)
!2737 = !DILocation(line: 608, column: 16, scope: !2715)
!2738 = !DILocation(line: 609, column: 28, scope: !2715)
!2739 = !DILocation(line: 605, column: 45, scope: !2716)
!2740 = !DILocation(line: 605, column: 25, scope: !2716)
!2741 = distinct !{!2741, !2709, !2742, !1740, !1741}
!2742 = !DILocation(line: 610, column: 13, scope: !2710)
!2743 = !DILocation(line: 0, scope: !1670, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 613, column: 15, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !647, line: 612, column: 13)
!2746 = distinct !DILexicalBlock(scope: !2712, file: !647, line: 611, column: 13)
!2747 = !DILocation(line: 0, scope: !1686, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2744)
!2749 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2744)
!2750 = !DILocation(line: 0, scope: !1686, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2744)
!2752 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2744)
!2753 = !DILocation(line: 0, scope: !1686, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2744)
!2755 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2744)
!2756 = !DILocation(line: 0, scope: !1686, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2744)
!2758 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2744)
!2759 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2744)
!2760 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2744)
!2761 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2744)
!2762 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2744)
!2763 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2744)
!2764 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2744)
!2765 = !DILocation(line: 0, scope: !1686, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2744)
!2767 = !DILocation(line: 614, column: 16, scope: !2745)
!2768 = !DILocation(line: 615, column: 28, scope: !2745)
!2769 = !DILocation(line: 611, column: 63, scope: !2746)
!2770 = !DILocation(line: 611, column: 25, scope: !2746)
!2771 = distinct !{!2771, !2711, !2772, !1740, !1741}
!2772 = !DILocation(line: 616, column: 13, scope: !2712)
!2773 = !DILocation(line: 596, column: 44, scope: !2673)
!2774 = distinct !{!2774, !2675, !2775, !1740, !1741}
!2775 = !DILocation(line: 617, column: 11, scope: !2674)
!2776 = !DILocation(line: 618, column: 47, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !647, line: 618, column: 11)
!2778 = distinct !DILexicalBlock(scope: !2436, file: !647, line: 618, column: 11)
!2779 = !DILocation(line: 618, column: 11, scope: !2778)
!2780 = distinct !{!2780, !2779, !2781, !1740, !1741}
!2781 = !DILocation(line: 635, column: 11, scope: !2778)
!2782 = !DILocation(line: 0, scope: !2778)
!2783 = !DILocation(line: 620, column: 25, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !647, line: 620, column: 13)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !647, line: 620, column: 13)
!2786 = distinct !DILexicalBlock(scope: !2777, file: !647, line: 619, column: 11)
!2787 = !DILocation(line: 620, column: 13, scope: !2785)
!2788 = !DILocation(line: 0, scope: !2785)
!2789 = !DILocation(line: 626, column: 23, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !647, line: 626, column: 13)
!2791 = distinct !DILexicalBlock(scope: !2786, file: !647, line: 626, column: 13)
!2792 = !DILocation(line: 626, column: 13, scope: !2791)
!2793 = !DILocation(line: 0, scope: !1670, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 622, column: 15, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2784, file: !647, line: 621, column: 13)
!2796 = !DILocation(line: 0, scope: !1686, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2794)
!2798 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2794)
!2799 = !DILocation(line: 0, scope: !1686, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2794)
!2801 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2794)
!2802 = !DILocation(line: 0, scope: !1686, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2794)
!2804 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2794)
!2805 = !DILocation(line: 0, scope: !1686, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2794)
!2807 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2794)
!2808 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2794)
!2809 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2794)
!2810 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2794)
!2811 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2794)
!2812 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2794)
!2813 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2794)
!2814 = !DILocation(line: 0, scope: !1686, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2794)
!2816 = !DILocation(line: 623, column: 16, scope: !2795)
!2817 = !DILocation(line: 624, column: 28, scope: !2795)
!2818 = !DILocation(line: 620, column: 31, scope: !2784)
!2819 = distinct !{!2819, !2787, !2820, !1740, !1741}
!2820 = !DILocation(line: 625, column: 13, scope: !2785)
!2821 = !DILocation(line: 628, column: 21, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !647, line: 628, column: 19)
!2823 = distinct !DILexicalBlock(scope: !2790, file: !647, line: 627, column: 13)
!2824 = !DILocation(line: 0, scope: !1670, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 631, column: 17, scope: !2822)
!2826 = !DILocation(line: 0, scope: !1670, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 629, column: 17, scope: !2822)
!2828 = !DILocation(line: 0, scope: !2822)
!2829 = !DILocation(line: 628, column: 19, scope: !2823)
!2830 = !DILocation(line: 0, scope: !1686, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2827)
!2832 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2827)
!2833 = !DILocation(line: 0, scope: !1686, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2827)
!2835 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2827)
!2836 = !DILocation(line: 0, scope: !1686, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2827)
!2838 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2827)
!2839 = !DILocation(line: 0, scope: !1686, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2827)
!2841 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2827)
!2842 = !DILocation(line: 124, column: 15, scope: !1703, inlinedAt: !2827)
!2843 = !DILocation(line: 124, column: 26, scope: !1703, inlinedAt: !2827)
!2844 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2827)
!2845 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2827)
!2846 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2827)
!2847 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2827)
!2848 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2827)
!2849 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2827)
!2850 = !DILocation(line: 0, scope: !1686, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2825)
!2852 = !DILocation(line: 120, column: 3, scope: !1670, inlinedAt: !2825)
!2853 = !DILocation(line: 0, scope: !1686, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2825)
!2855 = !DILocation(line: 121, column: 3, scope: !1670, inlinedAt: !2825)
!2856 = !DILocation(line: 0, scope: !1686, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2825)
!2858 = !DILocation(line: 122, column: 3, scope: !1670, inlinedAt: !2825)
!2859 = !DILocation(line: 0, scope: !1686, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2825)
!2861 = !DILocation(line: 123, column: 3, scope: !1670, inlinedAt: !2825)
!2862 = !DILocation(line: 124, column: 15, scope: !1703, inlinedAt: !2825)
!2863 = !DILocation(line: 124, column: 26, scope: !1703, inlinedAt: !2825)
!2864 = !DILocation(line: 124, column: 45, scope: !1703, inlinedAt: !2825)
!2865 = !DILocation(line: 125, column: 15, scope: !1703, inlinedAt: !2825)
!2866 = !DILocation(line: 125, column: 29, scope: !1703, inlinedAt: !2825)
!2867 = !DILocation(line: 124, column: 7, scope: !1670, inlinedAt: !2825)
!2868 = !DILocation(line: 126, column: 5, scope: !1711, inlinedAt: !2825)
!2869 = !DILocation(line: 126, column: 5, scope: !1712, inlinedAt: !2825)
!2870 = !DILocation(line: 632, column: 16, scope: !2823)
!2871 = !DILocation(line: 633, column: 28, scope: !2823)
!2872 = !DILocation(line: 626, column: 58, scope: !2790)
!2873 = distinct !{!2873, !2792, !2874, !1740, !1741}
!2874 = !DILocation(line: 634, column: 13, scope: !2791)
!2875 = !DILocation(line: 636, column: 18, scope: !2436)
!2876 = !DILocation(line: 637, column: 9, scope: !2436)
!2877 = !DILocation(line: 639, column: 14, scope: !753)
!2878 = !DILocation(line: 640, column: 14, scope: !753)
!2879 = !DILocation(line: 641, column: 15, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !753, file: !647, line: 641, column: 7)
!2881 = !DILocation(line: 641, column: 43, scope: !2880)
!2882 = !DILocation(line: 642, column: 55, scope: !2880)
!2883 = !DILocation(line: 642, column: 61, scope: !2880)
!2884 = !DILocation(line: 641, column: 7, scope: !753)
!2885 = !DILocation(line: 644, column: 32, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2880, file: !647, line: 643, column: 5)
!2887 = !DILocation(line: 644, column: 57, scope: !2886)
!2888 = !DILocation(line: 645, column: 21, scope: !2886)
!2889 = !DILocation(line: 644, column: 58, scope: !2886)
!2890 = !DILocation(line: 644, column: 43, scope: !2886)
!2891 = !DILocation(line: 644, column: 71, scope: !2886)
!2892 = !DILocation(line: 646, column: 57, scope: !2886)
!2893 = !DILocation(line: 646, column: 71, scope: !2886)
!2894 = !DILocation(line: 648, column: 14, scope: !2886)
!2895 = !DILocation(line: 649, column: 5, scope: !2886)
!2896 = !DILocation(line: 650, column: 14, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !753, file: !647, line: 650, column: 7)
!2898 = !DILocation(line: 650, column: 7, scope: !753)
!2899 = !DILocation(line: 651, column: 17, scope: !2897)
!2900 = !DILocation(line: 651, column: 5, scope: !2897)
!2901 = !DILocation(line: 653, column: 1, scope: !753)
!2902 = !DISubprogram(name: "DestroyImage", scope: !73, file: !73, line: 510, type: !2903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!415, !415}
!2905 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !2906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!431, !654, !543, !543, !747, !2908, !543, !543, null}
!2908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!2909 = !DISubprogram(name: "SetImageStorageClass", scope: !73, file: !73, line: 542, type: !2910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!431, !415, !2912}
!2912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!2913 = !DISubprogram(name: "InheritException", scope: !253, file: !253, line: 167, type: !2914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{null, !654, !2916}
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!2918 = !DISubprogram(name: "SetImageColorspace", scope: !11, file: !11, line: 65, type: !2919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!431, !415, !931}
!2921 = !DISubprogram(name: "SetImageAlphaChannel", scope: !2922, file: !2922, line: 35, type: !2923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2922 = !DIFile(filename: "apps/538.imagick_r/src/magick/channel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b0e4d3ce1a18bfe1ebfd6b5ca2d6cbf3")
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!431, !415, !2925}
!2925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2926)
!2926 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlphaChannelType", file: !73, line: 45, baseType: !393)
!2927 = !DISubprogram(name: "GetMagickPixelPacket", scope: !326, file: !326, line: 185, type: !2928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{null, !650, !981}
!2930 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !765, file: !765, line: 55, type: !2931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!763, !650, !654}
!2933 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !765, file: !765, line: 53, type: !2931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2934 = !DISubprogram(name: "QueueCacheViewAuthenticPixels", scope: !765, file: !765, line: 101, type: !2935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!438, !763, !2937, !2937, !747, !747, !654}
!2937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!2938 = !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !765, file: !765, line: 77, type: !2939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!631, !763}
!2941 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !765, file: !765, line: 89, type: !2942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!431, !763, !654}
!2944 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !765, file: !765, line: 69, type: !2945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!635, !2947, !2937, !2937, !747, !747, !654}
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!2949 = !DISubprogram(name: "GetCacheViewVirtualIndexQueue", scope: !765, file: !765, line: 66, type: !2950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!637, !2947}
!2952 = !DISubprogram(name: "CopyMagickMemory", scope: !2953, file: !2953, line: 44, type: !2954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2953 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!470, !470, !2956, !747}
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2958 = !DISubprogram(name: "DestroyCacheView", scope: !765, file: !765, line: 57, type: !2959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!763, !763}
!2961 = !DISubprogram(name: "CompositeImage", scope: !168, file: !168, line: 110, type: !2962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!431, !415, !2964, !650, !2937, !2937}
!2964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!2965 = distinct !DISubprogram(name: "RaiseImage", scope: !647, file: !647, line: 686, type: !2966, scopeLine: 688, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!431, !415, !652, !752}
!2968 = !{!2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2983, !2984, !2987, !2991, !2992, !2995, !2999, !3000}
!2969 = !DILocalVariable(name: "image", arg: 1, scope: !2965, file: !647, line: 686, type: !415)
!2970 = !DILocalVariable(name: "raise_info", arg: 2, scope: !2965, file: !647, line: 687, type: !652)
!2971 = !DILocalVariable(name: "raise", arg: 3, scope: !2965, file: !647, line: 687, type: !752)
!2972 = !DILocalVariable(name: "image_view", scope: !2965, file: !647, line: 696, type: !763)
!2973 = !DILocalVariable(name: "exception", scope: !2965, file: !647, line: 699, type: !654)
!2974 = !DILocalVariable(name: "status", scope: !2965, file: !647, line: 702, type: !431)
!2975 = !DILocalVariable(name: "progress", scope: !2965, file: !647, line: 705, type: !546)
!2976 = !DILocalVariable(name: "foreground", scope: !2965, file: !647, line: 708, type: !443)
!2977 = !DILocalVariable(name: "background", scope: !2965, file: !647, line: 709, type: !443)
!2978 = !DILocalVariable(name: "y", scope: !2965, file: !647, line: 712, type: !410)
!2979 = !DILocalVariable(name: "x", scope: !2980, file: !647, line: 746, type: !410)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !647, line: 744, column: 3)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !647, line: 743, column: 3)
!2982 = distinct !DILexicalBlock(scope: !2965, file: !647, line: 743, column: 3)
!2983 = !DILocalVariable(name: "q", scope: !2980, file: !647, line: 749, type: !802)
!2984 = !DILocalVariable(name: "proceed", scope: !2985, file: !647, line: 803, type: !431)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !647, line: 801, column: 7)
!2986 = distinct !DILexicalBlock(scope: !2980, file: !647, line: 800, column: 9)
!2987 = !DILocalVariable(name: "x", scope: !2988, file: !647, line: 820, type: !410)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !647, line: 818, column: 3)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !647, line: 817, column: 3)
!2990 = distinct !DILexicalBlock(scope: !2965, file: !647, line: 817, column: 3)
!2991 = !DILocalVariable(name: "q", scope: !2988, file: !647, line: 823, type: !802)
!2992 = !DILocalVariable(name: "proceed", scope: !2993, file: !647, line: 866, type: !431)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !647, line: 864, column: 7)
!2994 = distinct !DILexicalBlock(scope: !2988, file: !647, line: 863, column: 9)
!2995 = !DILocalVariable(name: "x", scope: !2996, file: !647, line: 883, type: !410)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !647, line: 881, column: 3)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !647, line: 880, column: 3)
!2998 = distinct !DILexicalBlock(scope: !2965, file: !647, line: 880, column: 3)
!2999 = !DILocalVariable(name: "q", scope: !2996, file: !647, line: 886, type: !802)
!3000 = !DILocalVariable(name: "proceed", scope: !3001, file: !647, line: 940, type: !431)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !647, line: 938, column: 7)
!3002 = distinct !DILexicalBlock(scope: !2996, file: !647, line: 937, column: 9)
!3003 = !DILocation(line: 0, scope: !2965)
!3004 = !DILocation(line: 716, column: 14, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2965, file: !647, line: 716, column: 7)
!3006 = !DILocation(line: 716, column: 20, scope: !3005)
!3007 = !DILocation(line: 716, column: 7, scope: !2965)
!3008 = !DILocation(line: 717, column: 68, scope: !3005)
!3009 = !DILocation(line: 717, column: 12, scope: !3005)
!3010 = !DILocation(line: 717, column: 5, scope: !3005)
!3011 = !DILocation(line: 719, column: 15, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2965, file: !647, line: 719, column: 7)
!3013 = !DILocation(line: 719, column: 39, scope: !3012)
!3014 = !DILocation(line: 719, column: 45, scope: !3012)
!3015 = !DILocation(line: 719, column: 23, scope: !3012)
!3016 = !DILocation(line: 719, column: 52, scope: !3012)
!3017 = !DILocation(line: 720, column: 15, scope: !3012)
!3018 = !DILocation(line: 720, column: 36, scope: !3012)
!3019 = !DILocation(line: 720, column: 43, scope: !3012)
!3020 = !DILocation(line: 720, column: 20, scope: !3012)
!3021 = !DILocation(line: 719, column: 7, scope: !2965)
!3022 = !DILocation(line: 721, column: 5, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !647, line: 721, column: 5)
!3024 = distinct !DILexicalBlock(scope: !3012, file: !647, line: 721, column: 5)
!3025 = !DILocation(line: 725, column: 13, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2965, file: !647, line: 725, column: 7)
!3027 = !DILocation(line: 725, column: 7, scope: !2965)
!3028 = !DILocation(line: 730, column: 7, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2965, file: !647, line: 730, column: 7)
!3030 = !DILocation(line: 730, column: 47, scope: !3029)
!3031 = !DILocation(line: 730, column: 7, scope: !2965)
!3032 = !DILocation(line: 737, column: 22, scope: !2965)
!3033 = !DILocation(line: 738, column: 14, scope: !2965)
!3034 = !DILocation(line: 743, column: 39, scope: !2981)
!3035 = !DILocation(line: 743, column: 15, scope: !2981)
!3036 = !DILocation(line: 743, column: 3, scope: !2982)
!3037 = !DILocation(line: 736, column: 11, scope: !2965)
!3038 = !DILocation(line: 735, column: 9, scope: !2965)
!3039 = !DILocation(line: 817, column: 79, scope: !2989)
!3040 = !DILocation(line: 817, column: 62, scope: !2989)
!3041 = !DILocation(line: 817, column: 66, scope: !2989)
!3042 = !DILocation(line: 817, column: 42, scope: !2989)
!3043 = !DILocation(line: 817, column: 3, scope: !2990)
!3044 = !DILocation(line: 751, column: 16, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2980, file: !647, line: 751, column: 9)
!3046 = !DILocation(line: 751, column: 9, scope: !2980)
!3047 = !DILocation(line: 753, column: 57, scope: !2980)
!3048 = !DILocation(line: 753, column: 7, scope: !2980)
!3049 = !DILocation(line: 0, scope: !2980)
!3050 = !DILocation(line: 754, column: 11, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !2980, file: !647, line: 754, column: 9)
!3052 = !DILocation(line: 754, column: 9, scope: !2980)
!3053 = !DILocation(line: 759, column: 17, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !647, line: 759, column: 5)
!3055 = distinct !DILexicalBlock(scope: !2980, file: !647, line: 759, column: 5)
!3056 = !DILocation(line: 759, column: 5, scope: !3055)
!3057 = !DILocation(line: 772, column: 15, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !647, line: 772, column: 5)
!3059 = distinct !DILexicalBlock(scope: !2980, file: !647, line: 772, column: 5)
!3060 = !DILocation(line: 772, column: 5, scope: !3059)
!3061 = !DILocation(line: 761, column: 7, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3054, file: !647, line: 760, column: 5)
!3063 = !DILocation(line: 0, scope: !1686, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 761, column: 7, scope: !3062)
!3065 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3064)
!3066 = distinct !DILexicalBlock(scope: !1686, file: !147, line: 92, column: 7)
!3067 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3064)
!3068 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3064)
!3069 = distinct !DILexicalBlock(scope: !1686, file: !147, line: 94, column: 7)
!3070 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3064)
!3071 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3064)
!3072 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3064)
!3073 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3064)
!3074 = !DILocation(line: 764, column: 7, scope: !3062)
!3075 = !DILocation(line: 0, scope: !1686, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 764, column: 7, scope: !3062)
!3077 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3076)
!3078 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3076)
!3079 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3076)
!3080 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3076)
!3081 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3076)
!3082 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3076)
!3083 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3076)
!3084 = !DILocation(line: 767, column: 7, scope: !3062)
!3085 = !DILocation(line: 0, scope: !1686, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 767, column: 7, scope: !3062)
!3087 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3086)
!3088 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3086)
!3089 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3086)
!3090 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3086)
!3091 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3086)
!3092 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3086)
!3093 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3086)
!3094 = !DILocation(line: 770, column: 8, scope: !3062)
!3095 = !DILocation(line: 759, column: 23, scope: !3054)
!3096 = distinct !{!3096, !3056, !3097, !1740, !1741}
!3097 = !DILocation(line: 771, column: 5, scope: !3055)
!3098 = !DILocation(line: 785, column: 15, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !647, line: 785, column: 5)
!3100 = distinct !DILexicalBlock(scope: !2980, file: !647, line: 785, column: 5)
!3101 = !DILocation(line: 785, column: 5, scope: !3100)
!3102 = !DILocation(line: 774, column: 7, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3058, file: !647, line: 773, column: 5)
!3104 = !DILocation(line: 0, scope: !1686, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 774, column: 7, scope: !3103)
!3106 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3105)
!3107 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3105)
!3108 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3105)
!3109 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3105)
!3110 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3105)
!3111 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3105)
!3112 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3105)
!3113 = !DILocation(line: 777, column: 7, scope: !3103)
!3114 = !DILocation(line: 0, scope: !1686, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 777, column: 7, scope: !3103)
!3116 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3115)
!3117 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3115)
!3118 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3115)
!3119 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3115)
!3120 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3115)
!3121 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3115)
!3122 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3115)
!3123 = !DILocation(line: 780, column: 7, scope: !3103)
!3124 = !DILocation(line: 0, scope: !1686, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 780, column: 7, scope: !3103)
!3126 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3125)
!3127 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3125)
!3128 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3125)
!3129 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3125)
!3130 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3125)
!3131 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3125)
!3132 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3125)
!3133 = !DILocation(line: 783, column: 8, scope: !3103)
!3134 = !DILocation(line: 772, column: 48, scope: !3058)
!3135 = distinct !{!3135, !3060, !3136, !1740, !1741}
!3136 = !DILocation(line: 784, column: 5, scope: !3059)
!3137 = !DILocation(line: 787, column: 7, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3099, file: !647, line: 786, column: 5)
!3139 = !DILocation(line: 0, scope: !1686, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 787, column: 7, scope: !3138)
!3141 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3140)
!3142 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3140)
!3143 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3140)
!3144 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3140)
!3145 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3140)
!3146 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3140)
!3147 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3140)
!3148 = !DILocation(line: 790, column: 7, scope: !3138)
!3149 = !DILocation(line: 0, scope: !1686, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 790, column: 7, scope: !3138)
!3151 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3150)
!3152 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3150)
!3153 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3150)
!3154 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3150)
!3155 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3150)
!3156 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3150)
!3157 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3150)
!3158 = !DILocation(line: 793, column: 7, scope: !3138)
!3159 = !DILocation(line: 0, scope: !1686, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 793, column: 7, scope: !3138)
!3161 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3160)
!3162 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3160)
!3163 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3160)
!3164 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3160)
!3165 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3160)
!3166 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3160)
!3167 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3160)
!3168 = !DILocation(line: 796, column: 8, scope: !3138)
!3169 = !DILocation(line: 785, column: 44, scope: !3099)
!3170 = distinct !{!3170, !3101, !3171, !1740, !1741}
!3171 = !DILocation(line: 797, column: 5, scope: !3100)
!3172 = !DILocation(line: 798, column: 9, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !2980, file: !647, line: 798, column: 9)
!3174 = !DILocation(line: 798, column: 60, scope: !3173)
!3175 = !DILocation(line: 798, column: 9, scope: !2980)
!3176 = !DILocation(line: 800, column: 16, scope: !2986)
!3177 = !DILocation(line: 800, column: 33, scope: !2986)
!3178 = !DILocation(line: 800, column: 9, scope: !2980)
!3179 = !DILocation(line: 808, column: 62, scope: !2985)
!3180 = !DILocation(line: 808, column: 72, scope: !2985)
!3181 = !DILocation(line: 0, scope: !2390, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 808, column: 17, scope: !2985)
!3183 = !DILocation(line: 30, column: 3, scope: !2390, inlinedAt: !3182)
!3184 = !DILocation(line: 31, column: 5, scope: !2390, inlinedAt: !3182)
!3185 = !DILocation(line: 35, column: 10, scope: !2390, inlinedAt: !3182)
!3186 = !DILocation(line: 36, column: 17, scope: !2390, inlinedAt: !3182)
!3187 = !DILocation(line: 36, column: 63, scope: !2390, inlinedAt: !3182)
!3188 = !DILocation(line: 36, column: 10, scope: !2390, inlinedAt: !3182)
!3189 = !DILocation(line: 37, column: 1, scope: !2390, inlinedAt: !3182)
!3190 = !DILocation(line: 0, scope: !2985)
!3191 = !DILocation(line: 809, column: 21, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !2985, file: !647, line: 809, column: 13)
!3193 = !DILocation(line: 809, column: 13, scope: !2985)
!3194 = !DILocation(line: 811, column: 7, scope: !2985)
!3195 = !DILocation(line: 743, column: 48, scope: !2981)
!3196 = distinct !{!3196, !3036, !3197, !1740, !1741}
!3197 = !DILocation(line: 812, column: 3, scope: !2982)
!3198 = !DILocation(line: 880, column: 75, scope: !2997)
!3199 = !DILocation(line: 880, column: 56, scope: !2997)
!3200 = !DILocation(line: 880, column: 3, scope: !2998)
!3201 = !DILocation(line: 825, column: 16, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !2988, file: !647, line: 825, column: 9)
!3203 = !DILocation(line: 825, column: 9, scope: !2988)
!3204 = !DILocation(line: 827, column: 57, scope: !2988)
!3205 = !DILocation(line: 827, column: 7, scope: !2988)
!3206 = !DILocation(line: 0, scope: !2988)
!3207 = !DILocation(line: 828, column: 11, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !2988, file: !647, line: 828, column: 9)
!3209 = !DILocation(line: 828, column: 9, scope: !2988)
!3210 = !DILocation(line: 833, column: 17, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !647, line: 833, column: 5)
!3212 = distinct !DILexicalBlock(scope: !2988, file: !647, line: 833, column: 5)
!3213 = !DILocation(line: 833, column: 5, scope: !3212)
!3214 = !DILocation(line: 0, scope: !3212)
!3215 = !DILocation(line: 846, column: 15, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !647, line: 846, column: 5)
!3217 = distinct !DILexicalBlock(scope: !2988, file: !647, line: 846, column: 5)
!3218 = !DILocation(line: 846, column: 5, scope: !3217)
!3219 = !DILocation(line: 848, column: 15, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !647, line: 848, column: 5)
!3221 = distinct !DILexicalBlock(scope: !2988, file: !647, line: 848, column: 5)
!3222 = !DILocation(line: 835, column: 7, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3211, file: !647, line: 834, column: 5)
!3224 = !DILocation(line: 0, scope: !1686, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 835, column: 7, scope: !3223)
!3226 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3225)
!3227 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3225)
!3228 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3225)
!3229 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3225)
!3230 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3225)
!3231 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3225)
!3232 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3225)
!3233 = !DILocation(line: 838, column: 7, scope: !3223)
!3234 = !DILocation(line: 0, scope: !1686, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 838, column: 7, scope: !3223)
!3236 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3235)
!3237 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3235)
!3238 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3235)
!3239 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3235)
!3240 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3235)
!3241 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3235)
!3242 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3235)
!3243 = !DILocation(line: 841, column: 7, scope: !3223)
!3244 = !DILocation(line: 0, scope: !1686, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 841, column: 7, scope: !3223)
!3246 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3245)
!3247 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3245)
!3248 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3245)
!3249 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3245)
!3250 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3245)
!3251 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3245)
!3252 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3245)
!3253 = !DILocation(line: 844, column: 8, scope: !3223)
!3254 = !DILocation(line: 833, column: 49, scope: !3211)
!3255 = distinct !{!3255, !3213, !3256, !1740, !1741}
!3256 = !DILocation(line: 845, column: 5, scope: !3212)
!3257 = !DILocation(line: 848, column: 5, scope: !3221)
!3258 = !DILocation(line: 850, column: 7, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3220, file: !647, line: 849, column: 5)
!3260 = !DILocation(line: 0, scope: !1686, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 850, column: 7, scope: !3259)
!3262 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3261)
!3263 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3261)
!3264 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3261)
!3265 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3261)
!3266 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3261)
!3267 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3261)
!3268 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3261)
!3269 = !DILocation(line: 853, column: 7, scope: !3259)
!3270 = !DILocation(line: 0, scope: !1686, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 853, column: 7, scope: !3259)
!3272 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3271)
!3273 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3271)
!3274 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3271)
!3275 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3271)
!3276 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3271)
!3277 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3271)
!3278 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3271)
!3279 = !DILocation(line: 856, column: 7, scope: !3259)
!3280 = !DILocation(line: 0, scope: !1686, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 856, column: 7, scope: !3259)
!3282 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3281)
!3283 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3281)
!3284 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3281)
!3285 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3281)
!3286 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3281)
!3287 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3281)
!3288 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3281)
!3289 = !DILocation(line: 859, column: 8, scope: !3259)
!3290 = !DILocation(line: 848, column: 44, scope: !3220)
!3291 = distinct !{!3291, !3257, !3292, !1740, !1741}
!3292 = !DILocation(line: 860, column: 5, scope: !3221)
!3293 = !DILocation(line: 861, column: 9, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !2988, file: !647, line: 861, column: 9)
!3295 = !DILocation(line: 861, column: 60, scope: !3294)
!3296 = !DILocation(line: 861, column: 9, scope: !2988)
!3297 = !DILocation(line: 863, column: 16, scope: !2994)
!3298 = !DILocation(line: 863, column: 33, scope: !2994)
!3299 = !DILocation(line: 863, column: 9, scope: !2988)
!3300 = !DILocation(line: 871, column: 62, scope: !2993)
!3301 = !DILocation(line: 871, column: 72, scope: !2993)
!3302 = !DILocation(line: 0, scope: !2390, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 871, column: 17, scope: !2993)
!3304 = !DILocation(line: 30, column: 3, scope: !2390, inlinedAt: !3303)
!3305 = !DILocation(line: 31, column: 5, scope: !2390, inlinedAt: !3303)
!3306 = !DILocation(line: 35, column: 10, scope: !2390, inlinedAt: !3303)
!3307 = !DILocation(line: 36, column: 17, scope: !2390, inlinedAt: !3303)
!3308 = !DILocation(line: 36, column: 63, scope: !2390, inlinedAt: !3303)
!3309 = !DILocation(line: 36, column: 10, scope: !2390, inlinedAt: !3303)
!3310 = !DILocation(line: 37, column: 1, scope: !2390, inlinedAt: !3303)
!3311 = !DILocation(line: 0, scope: !2993)
!3312 = !DILocation(line: 872, column: 21, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !2993, file: !647, line: 872, column: 13)
!3314 = !DILocation(line: 872, column: 13, scope: !2993)
!3315 = !DILocation(line: 874, column: 7, scope: !2993)
!3316 = !DILocation(line: 817, column: 89, scope: !2989)
!3317 = distinct !{!3317, !3043, !3318, !1740, !1741}
!3318 = !DILocation(line: 875, column: 3, scope: !2990)
!3319 = !DILocation(line: 888, column: 16, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !2996, file: !647, line: 888, column: 9)
!3321 = !DILocation(line: 888, column: 9, scope: !2996)
!3322 = !DILocation(line: 890, column: 57, scope: !2996)
!3323 = !DILocation(line: 890, column: 7, scope: !2996)
!3324 = !DILocation(line: 0, scope: !2996)
!3325 = !DILocation(line: 891, column: 11, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !2996, file: !647, line: 891, column: 9)
!3327 = !DILocation(line: 891, column: 9, scope: !2996)
!3328 = !DILocation(line: 896, column: 17, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !647, line: 896, column: 5)
!3330 = distinct !DILexicalBlock(scope: !2996, file: !647, line: 896, column: 5)
!3331 = !DILocation(line: 896, column: 5, scope: !3330)
!3332 = !DILocation(line: 0, scope: !3330)
!3333 = !DILocation(line: 909, column: 15, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !647, line: 909, column: 5)
!3335 = distinct !DILexicalBlock(scope: !2996, file: !647, line: 909, column: 5)
!3336 = !DILocation(line: 909, column: 5, scope: !3335)
!3337 = !DILocation(line: 898, column: 7, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3329, file: !647, line: 897, column: 5)
!3339 = !DILocation(line: 0, scope: !1686, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 898, column: 7, scope: !3338)
!3341 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3340)
!3342 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3340)
!3343 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3340)
!3344 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3340)
!3345 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3340)
!3346 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3340)
!3347 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3340)
!3348 = !DILocation(line: 901, column: 7, scope: !3338)
!3349 = !DILocation(line: 0, scope: !1686, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 901, column: 7, scope: !3338)
!3351 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3350)
!3352 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3350)
!3353 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3350)
!3354 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3350)
!3355 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3350)
!3356 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3350)
!3357 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3350)
!3358 = !DILocation(line: 904, column: 7, scope: !3338)
!3359 = !DILocation(line: 0, scope: !1686, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 904, column: 7, scope: !3338)
!3361 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3360)
!3362 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3360)
!3363 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3360)
!3364 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3360)
!3365 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3360)
!3366 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3360)
!3367 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3360)
!3368 = !DILocation(line: 907, column: 8, scope: !3338)
!3369 = !DILocation(line: 896, column: 47, scope: !3329)
!3370 = distinct !{!3370, !3331, !3371, !1740, !1741}
!3371 = !DILocation(line: 908, column: 5, scope: !3330)
!3372 = !DILocation(line: 922, column: 15, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !647, line: 922, column: 5)
!3374 = distinct !DILexicalBlock(scope: !2996, file: !647, line: 922, column: 5)
!3375 = !DILocation(line: 922, column: 5, scope: !3374)
!3376 = !DILocation(line: 911, column: 7, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3334, file: !647, line: 910, column: 5)
!3378 = !DILocation(line: 0, scope: !1686, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 911, column: 7, scope: !3377)
!3380 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3379)
!3381 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3379)
!3382 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3379)
!3383 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3379)
!3384 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3379)
!3385 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3379)
!3386 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3379)
!3387 = !DILocation(line: 914, column: 7, scope: !3377)
!3388 = !DILocation(line: 0, scope: !1686, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 914, column: 7, scope: !3377)
!3390 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3389)
!3391 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3389)
!3392 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3389)
!3393 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3389)
!3394 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3389)
!3395 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3389)
!3396 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3389)
!3397 = !DILocation(line: 917, column: 7, scope: !3377)
!3398 = !DILocation(line: 0, scope: !1686, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 917, column: 7, scope: !3377)
!3400 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3399)
!3401 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3399)
!3402 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3399)
!3403 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3399)
!3404 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3399)
!3405 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3399)
!3406 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3399)
!3407 = !DILocation(line: 920, column: 8, scope: !3377)
!3408 = !DILocation(line: 909, column: 62, scope: !3334)
!3409 = distinct !{!3409, !3336, !3410, !1740, !1741}
!3410 = !DILocation(line: 921, column: 5, scope: !3335)
!3411 = !DILocation(line: 924, column: 7, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3373, file: !647, line: 923, column: 5)
!3413 = !DILocation(line: 0, scope: !1686, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 924, column: 7, scope: !3412)
!3415 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3414)
!3416 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3414)
!3417 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3414)
!3418 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3414)
!3419 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3414)
!3420 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3414)
!3421 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3414)
!3422 = !DILocation(line: 927, column: 7, scope: !3412)
!3423 = !DILocation(line: 0, scope: !1686, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 927, column: 7, scope: !3412)
!3425 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3424)
!3426 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3424)
!3427 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3424)
!3428 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3424)
!3429 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3424)
!3430 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3424)
!3431 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3424)
!3432 = !DILocation(line: 930, column: 7, scope: !3412)
!3433 = !DILocation(line: 0, scope: !1686, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 930, column: 7, scope: !3412)
!3435 = !DILocation(line: 92, column: 13, scope: !3066, inlinedAt: !3434)
!3436 = !DILocation(line: 92, column: 7, scope: !1686, inlinedAt: !3434)
!3437 = !DILocation(line: 94, column: 13, scope: !3069, inlinedAt: !3434)
!3438 = !DILocation(line: 94, column: 7, scope: !1686, inlinedAt: !3434)
!3439 = !DILocation(line: 96, column: 26, scope: !1686, inlinedAt: !3434)
!3440 = !DILocation(line: 96, column: 10, scope: !1686, inlinedAt: !3434)
!3441 = !DILocation(line: 96, column: 3, scope: !1686, inlinedAt: !3434)
!3442 = !DILocation(line: 933, column: 8, scope: !3412)
!3443 = !DILocation(line: 922, column: 44, scope: !3373)
!3444 = distinct !{!3444, !3375, !3445, !1740, !1741}
!3445 = !DILocation(line: 934, column: 5, scope: !3374)
!3446 = !DILocation(line: 935, column: 9, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !2996, file: !647, line: 935, column: 9)
!3448 = !DILocation(line: 935, column: 60, scope: !3447)
!3449 = !DILocation(line: 935, column: 9, scope: !2996)
!3450 = !DILocation(line: 937, column: 16, scope: !3002)
!3451 = !DILocation(line: 937, column: 33, scope: !3002)
!3452 = !DILocation(line: 937, column: 9, scope: !2996)
!3453 = !DILocation(line: 945, column: 62, scope: !3001)
!3454 = !DILocation(line: 945, column: 72, scope: !3001)
!3455 = !DILocation(line: 0, scope: !2390, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 945, column: 17, scope: !3001)
!3457 = !DILocation(line: 30, column: 3, scope: !2390, inlinedAt: !3456)
!3458 = !DILocation(line: 31, column: 5, scope: !2390, inlinedAt: !3456)
!3459 = !DILocation(line: 35, column: 10, scope: !2390, inlinedAt: !3456)
!3460 = !DILocation(line: 36, column: 17, scope: !2390, inlinedAt: !3456)
!3461 = !DILocation(line: 36, column: 63, scope: !2390, inlinedAt: !3456)
!3462 = !DILocation(line: 36, column: 10, scope: !2390, inlinedAt: !3456)
!3463 = !DILocation(line: 37, column: 1, scope: !2390, inlinedAt: !3456)
!3464 = !DILocation(line: 0, scope: !3001)
!3465 = !DILocation(line: 946, column: 21, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3001, file: !647, line: 946, column: 13)
!3467 = !DILocation(line: 946, column: 13, scope: !3001)
!3468 = !DILocation(line: 948, column: 7, scope: !3001)
!3469 = !DILocation(line: 880, column: 82, scope: !2997)
!3470 = distinct !{!3470, !3200, !3471, !1740, !1741}
!3471 = !DILocation(line: 949, column: 3, scope: !2998)
!3472 = !DILocation(line: 950, column: 14, scope: !2965)
!3473 = !DILocation(line: 951, column: 3, scope: !2965)
!3474 = !DILocation(line: 952, column: 1, scope: !2965)
!3475 = !DISubprogram(name: "GetCacheViewAuthenticPixels", scope: !765, file: !765, line: 99, type: !2935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!3476 = !DISubprogram(name: "DecodePixelGamma", scope: !326, file: !326, line: 179, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!3477 = !DISubprogram(name: "FormatLocaleString", scope: !3478, file: !3478, line: 71, type: !3479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !748)
!3478 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!410, !3481, !747, !3482, null}
!3481 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !474)
!3482 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !543)
