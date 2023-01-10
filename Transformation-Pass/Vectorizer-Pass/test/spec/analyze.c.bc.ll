; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/filters/analyze.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/filters/analyze.c"
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

@.str = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"filter:brightness:mean\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"filter:brightness:standard-deviation\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"filter:brightness:kurtosis\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"filter:brightness:skewness\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"filter:saturation:mean\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"filter:saturation:standard-deviation\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"filter:saturation:kurtosis\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"filter:saturation:skewness\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @analyzeImage(ptr nocapture noundef readonly %images, i32 noundef %argc, ptr nocapture noundef readnone %argv, ptr noundef %exception) local_unnamed_addr #0 !dbg !600 {
entry:
  %text = alloca [4096 x i8], align 16
  %brightness = alloca double, align 8
  %hue = alloca double, align 8
  %saturation = alloca double, align 8
  call void @llvm.dbg.value(metadata ptr %images, metadata !609, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata i32 %argc, metadata !610, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata ptr %argv, metadata !611, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata ptr %exception, metadata !612, metadata !DIExpression()), !dbg !650
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %text) #6, !dbg !651
  call void @llvm.dbg.declare(metadata ptr %text, metadata !613, metadata !DIExpression()), !dbg !652
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %brightness) #6, !dbg !653
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hue) #6, !dbg !653
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %saturation) #6, !dbg !653
  %0 = load ptr, ptr %images, align 8, !dbg !654, !tbaa !655
  call void @llvm.dbg.value(metadata ptr %0, metadata !634, metadata !DIExpression()), !dbg !650
  %cmp.not324 = icmp eq ptr %0, null, !dbg !659
  br i1 %cmp.not324, label %for.end159, label %for.body, !dbg !660

for.body:                                         ; preds = %entry, %for.inc157
  %image.0325 = phi ptr [ %call158, %for.inc157 ], [ %0, %entry ]
  call void @llvm.dbg.value(metadata ptr %image.0325, metadata !634, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !620, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !621, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !622, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !623, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !616, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !617, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !618, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !619, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !630, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !631, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !632, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !633, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !626, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !627, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !628, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !629, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !614, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata i32 1, metadata !644, metadata !DIExpression()), !dbg !661
  %call = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image.0325, ptr noundef %exception) #6, !dbg !662
  call void @llvm.dbg.value(metadata ptr %call, metadata !635, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i64 0, metadata !643, metadata !DIExpression()), !dbg !661
  %rows = getelementptr inbounds %struct._Image, ptr %image.0325, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !644, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i64 0, metadata !643, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !633, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !632, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !631, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !630, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !623, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !622, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !621, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !620, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !614, metadata !DIExpression()), !dbg !650
  %1 = load i64, ptr %rows, align 8, !dbg !663, !tbaa !664
  %cmp2303 = icmp sgt i64 %1, 0, !dbg !680
  br i1 %cmp2303, label %for.body3.lr.ph, label %for.end31.thread, !dbg !681

for.end31.thread:                                 ; preds = %for.body
  %call32341 = call ptr @DestroyCacheView(ptr noundef %call) #6, !dbg !682
  call void @llvm.dbg.value(metadata ptr %call32, metadata !635, metadata !DIExpression()), !dbg !661
  br label %for.end159, !dbg !683

for.body3.lr.ph:                                  ; preds = %for.body
  %columns = getelementptr inbounds %struct._Image, ptr %image.0325, i64 0, i32 7
  br label %for.body3, !dbg !681

for.body3:                                        ; preds = %for.body3.lr.ph, %cleanup
  %status.0314 = phi i32 [ 1, %for.body3.lr.ph ], [ %status.1, %cleanup ]
  %y.0313 = phi i64 [ 0, %for.body3.lr.ph ], [ %inc30, %cleanup ]
  %saturation_sum_x4.0312 = phi double [ 0.000000e+00, %for.body3.lr.ph ], [ %saturation_sum_x4.2, %cleanup ]
  %saturation_sum_x3.0311 = phi double [ 0.000000e+00, %for.body3.lr.ph ], [ %saturation_sum_x3.2, %cleanup ]
  %saturation_sum_x2.0310 = phi double [ 0.000000e+00, %for.body3.lr.ph ], [ %saturation_sum_x2.2, %cleanup ]
  %saturation_sum_x.0309 = phi double [ 0.000000e+00, %for.body3.lr.ph ], [ %saturation_sum_x.2, %cleanup ]
  %brightness_sum_x4.0308 = phi double [ 0.000000e+00, %for.body3.lr.ph ], [ %brightness_sum_x4.2, %cleanup ]
  %brightness_sum_x3.0307 = phi double [ 0.000000e+00, %for.body3.lr.ph ], [ %brightness_sum_x3.2, %cleanup ]
  %brightness_sum_x2.0306 = phi double [ 0.000000e+00, %for.body3.lr.ph ], [ %brightness_sum_x2.2, %cleanup ]
  %brightness_sum_x.0305 = phi double [ 0.000000e+00, %for.body3.lr.ph ], [ %brightness_sum_x.2, %cleanup ]
  %area.0304 = phi double [ 0.000000e+00, %for.body3.lr.ph ], [ %area.2, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0314, metadata !644, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i64 %y.0313, metadata !643, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata double %saturation_sum_x4.0312, metadata !633, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %saturation_sum_x3.0311, metadata !632, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %saturation_sum_x2.0310, metadata !631, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %saturation_sum_x.0309, metadata !630, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %brightness_sum_x4.0308, metadata !623, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %brightness_sum_x3.0307, metadata !622, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %brightness_sum_x2.0306, metadata !621, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %brightness_sum_x.0305, metadata !620, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %area.0304, metadata !614, metadata !DIExpression()), !dbg !650
  %cmp4 = icmp eq i32 %status.0314, 0, !dbg !684
  br i1 %cmp4, label %cleanup, label %if.end, !dbg !686

if.end:                                           ; preds = %for.body3
  %2 = load i64, ptr %columns, align 8, !dbg !687, !tbaa !688
  %call5 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call, i64 noundef 0, i64 noundef %y.0313, i64 noundef %2, i64 noundef 1, ptr noundef %exception) #7, !dbg !689
  call void @llvm.dbg.value(metadata ptr %call5, metadata !645, metadata !DIExpression()), !dbg !690
  %cmp6 = icmp eq ptr %call5, null, !dbg !691
  br i1 %cmp6, label %cleanup, label %for.cond9.preheader, !dbg !693

for.cond9.preheader:                              ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 0, metadata !649, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata ptr %call5, metadata !645, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata double %saturation_sum_x4.0312, metadata !633, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %saturation_sum_x3.0311, metadata !632, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %saturation_sum_x2.0310, metadata !631, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %saturation_sum_x.0309, metadata !630, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %brightness_sum_x4.0308, metadata !623, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %brightness_sum_x3.0307, metadata !622, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %brightness_sum_x2.0306, metadata !621, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %brightness_sum_x.0305, metadata !620, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %area.0304, metadata !614, metadata !DIExpression()), !dbg !650
  %3 = load i64, ptr %columns, align 8, !dbg !694, !tbaa !688
  %cmp11283 = icmp sgt i64 %3, 0, !dbg !697
  br i1 %cmp11283, label %for.body12, label %cleanup, !dbg !698

for.body12:                                       ; preds = %for.cond9.preheader, %for.body12
  %x.0294 = phi i64 [ %inc27, %for.body12 ], [ 0, %for.cond9.preheader ]
  %p.0293 = phi ptr [ %incdec.ptr, %for.body12 ], [ %call5, %for.cond9.preheader ]
  %saturation_sum_x4.1292 = phi double [ %14, %for.body12 ], [ %saturation_sum_x4.0312, %for.cond9.preheader ]
  %saturation_sum_x3.1291 = phi double [ %13, %for.body12 ], [ %saturation_sum_x3.0311, %for.cond9.preheader ]
  %saturation_sum_x2.1290 = phi double [ %12, %for.body12 ], [ %saturation_sum_x2.0310, %for.cond9.preheader ]
  %saturation_sum_x.1289 = phi double [ %add20, %for.body12 ], [ %saturation_sum_x.0309, %for.cond9.preheader ]
  %brightness_sum_x4.1288 = phi double [ %10, %for.body12 ], [ %brightness_sum_x4.0308, %for.cond9.preheader ]
  %brightness_sum_x3.1287 = phi double [ %9, %for.body12 ], [ %brightness_sum_x3.0307, %for.cond9.preheader ]
  %brightness_sum_x2.1286 = phi double [ %8, %for.body12 ], [ %brightness_sum_x2.0306, %for.cond9.preheader ]
  %brightness_sum_x.1285 = phi double [ %add, %for.body12 ], [ %brightness_sum_x.0305, %for.cond9.preheader ]
  %area.1284 = phi double [ %inc, %for.body12 ], [ %area.0304, %for.cond9.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.0294, metadata !649, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata ptr %p.0293, metadata !645, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata double %saturation_sum_x4.1292, metadata !633, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %saturation_sum_x3.1291, metadata !632, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %saturation_sum_x2.1290, metadata !631, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %saturation_sum_x.1289, metadata !630, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %brightness_sum_x4.1288, metadata !623, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %brightness_sum_x3.1287, metadata !622, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %brightness_sum_x2.1286, metadata !621, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %brightness_sum_x.1285, metadata !620, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %area.1284, metadata !614, metadata !DIExpression()), !dbg !650
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p.0293, i64 0, i32 2, !dbg !699
  %4 = load i16, ptr %red, align 2, !dbg !699, !tbaa !701
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p.0293, i64 0, i32 1, !dbg !702
  %5 = load i16, ptr %green, align 2, !dbg !702, !tbaa !703
  %6 = load i16, ptr %p.0293, align 2, !dbg !704, !tbaa !705
  call void @llvm.dbg.value(metadata ptr %brightness, metadata !615, metadata !DIExpression(DW_OP_deref)), !dbg !650
  call void @llvm.dbg.value(metadata ptr %hue, metadata !624, metadata !DIExpression(DW_OP_deref)), !dbg !650
  call void @llvm.dbg.value(metadata ptr %saturation, metadata !625, metadata !DIExpression(DW_OP_deref)), !dbg !650
  call void @ConvertRGBToHSB(i16 noundef zeroext %4, i16 noundef zeroext %5, i16 noundef zeroext %6, ptr noundef nonnull %hue, ptr noundef nonnull %saturation, ptr noundef nonnull %brightness) #6, !dbg !706
  %7 = load double, ptr %brightness, align 8, !dbg !707, !tbaa !708
  call void @llvm.dbg.value(metadata double %7, metadata !615, metadata !DIExpression()), !dbg !650
  %mul = fmul double %7, 6.553500e+04, !dbg !707
  call void @llvm.dbg.value(metadata double %mul, metadata !615, metadata !DIExpression()), !dbg !650
  store double %mul, ptr %brightness, align 8, !dbg !707, !tbaa !708
  %add = fadd double %brightness_sum_x.1285, %mul, !dbg !709
  call void @llvm.dbg.value(metadata double %add, metadata !620, metadata !DIExpression()), !dbg !650
  %8 = call double @llvm.fmuladd.f64(double %mul, double %mul, double %brightness_sum_x2.1286), !dbg !710
  call void @llvm.dbg.value(metadata double %8, metadata !621, metadata !DIExpression()), !dbg !650
  %mul14 = fmul double %mul, %mul, !dbg !711
  %9 = call double @llvm.fmuladd.f64(double %mul14, double %mul, double %brightness_sum_x3.1287), !dbg !712
  call void @llvm.dbg.value(metadata double %9, metadata !622, metadata !DIExpression()), !dbg !650
  %mul17 = fmul double %mul, %mul14, !dbg !713
  %10 = call double @llvm.fmuladd.f64(double %mul17, double %mul, double %brightness_sum_x4.1288), !dbg !714
  call void @llvm.dbg.value(metadata double %10, metadata !623, metadata !DIExpression()), !dbg !650
  %11 = load double, ptr %saturation, align 8, !dbg !715, !tbaa !708
  call void @llvm.dbg.value(metadata double %11, metadata !625, metadata !DIExpression()), !dbg !650
  %mul19 = fmul double %11, 6.553500e+04, !dbg !715
  call void @llvm.dbg.value(metadata double %mul19, metadata !625, metadata !DIExpression()), !dbg !650
  store double %mul19, ptr %saturation, align 8, !dbg !715, !tbaa !708
  %add20 = fadd double %saturation_sum_x.1289, %mul19, !dbg !716
  call void @llvm.dbg.value(metadata double %add20, metadata !630, metadata !DIExpression()), !dbg !650
  %12 = call double @llvm.fmuladd.f64(double %mul19, double %mul19, double %saturation_sum_x2.1290), !dbg !717
  call void @llvm.dbg.value(metadata double %12, metadata !631, metadata !DIExpression()), !dbg !650
  %mul22 = fmul double %mul19, %mul19, !dbg !718
  %13 = call double @llvm.fmuladd.f64(double %mul22, double %mul19, double %saturation_sum_x3.1291), !dbg !719
  call void @llvm.dbg.value(metadata double %13, metadata !632, metadata !DIExpression()), !dbg !650
  %mul25 = fmul double %mul19, %mul22, !dbg !720
  %14 = call double @llvm.fmuladd.f64(double %mul25, double %mul19, double %saturation_sum_x4.1292), !dbg !721
  call void @llvm.dbg.value(metadata double %14, metadata !633, metadata !DIExpression()), !dbg !650
  %inc = fadd double %area.1284, 1.000000e+00, !dbg !722
  call void @llvm.dbg.value(metadata double %inc, metadata !614, metadata !DIExpression()), !dbg !650
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0293, i64 1, !dbg !723
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !645, metadata !DIExpression()), !dbg !690
  %inc27 = add nuw nsw i64 %x.0294, 1, !dbg !724
  call void @llvm.dbg.value(metadata i64 %inc27, metadata !649, metadata !DIExpression()), !dbg !690
  %15 = load i64, ptr %columns, align 8, !dbg !694, !tbaa !688
  %cmp11 = icmp slt i64 %inc27, %15, !dbg !697
  br i1 %cmp11, label %for.body12, label %cleanup, !dbg !698, !llvm.loop !725

cleanup:                                          ; preds = %for.body12, %for.cond9.preheader, %if.end, %for.body3
  %area.2 = phi double [ %area.0304, %for.body3 ], [ %area.0304, %if.end ], [ %area.0304, %for.cond9.preheader ], [ %inc, %for.body12 ], !dbg !729
  %brightness_sum_x.2 = phi double [ %brightness_sum_x.0305, %for.body3 ], [ %brightness_sum_x.0305, %if.end ], [ %brightness_sum_x.0305, %for.cond9.preheader ], [ %add, %for.body12 ], !dbg !730
  %brightness_sum_x2.2 = phi double [ %brightness_sum_x2.0306, %for.body3 ], [ %brightness_sum_x2.0306, %if.end ], [ %brightness_sum_x2.0306, %for.cond9.preheader ], [ %8, %for.body12 ], !dbg !731
  %brightness_sum_x3.2 = phi double [ %brightness_sum_x3.0307, %for.body3 ], [ %brightness_sum_x3.0307, %if.end ], [ %brightness_sum_x3.0307, %for.cond9.preheader ], [ %9, %for.body12 ], !dbg !732
  %brightness_sum_x4.2 = phi double [ %brightness_sum_x4.0308, %for.body3 ], [ %brightness_sum_x4.0308, %if.end ], [ %brightness_sum_x4.0308, %for.cond9.preheader ], [ %10, %for.body12 ], !dbg !733
  %saturation_sum_x.2 = phi double [ %saturation_sum_x.0309, %for.body3 ], [ %saturation_sum_x.0309, %if.end ], [ %saturation_sum_x.0309, %for.cond9.preheader ], [ %add20, %for.body12 ], !dbg !734
  %saturation_sum_x2.2 = phi double [ %saturation_sum_x2.0310, %for.body3 ], [ %saturation_sum_x2.0310, %if.end ], [ %saturation_sum_x2.0310, %for.cond9.preheader ], [ %12, %for.body12 ], !dbg !735
  %saturation_sum_x3.2 = phi double [ %saturation_sum_x3.0311, %for.body3 ], [ %saturation_sum_x3.0311, %if.end ], [ %saturation_sum_x3.0311, %for.cond9.preheader ], [ %13, %for.body12 ], !dbg !736
  %saturation_sum_x4.2 = phi double [ %saturation_sum_x4.0312, %for.body3 ], [ %saturation_sum_x4.0312, %if.end ], [ %saturation_sum_x4.0312, %for.cond9.preheader ], [ %14, %for.body12 ], !dbg !737
  %status.1 = phi i32 [ 0, %for.body3 ], [ 0, %if.end ], [ 1, %for.cond9.preheader ], [ 1, %for.body12 ], !dbg !661
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !644, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata double %saturation_sum_x4.2, metadata !633, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %saturation_sum_x3.2, metadata !632, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %saturation_sum_x2.2, metadata !631, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %saturation_sum_x.2, metadata !630, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %brightness_sum_x4.2, metadata !623, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %brightness_sum_x3.2, metadata !622, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %brightness_sum_x2.2, metadata !621, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %brightness_sum_x.2, metadata !620, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata double %area.2, metadata !614, metadata !DIExpression()), !dbg !650
  %inc30 = add nuw nsw i64 %y.0313, 1, !dbg !738
  call void @llvm.dbg.value(metadata i64 %inc30, metadata !643, metadata !DIExpression()), !dbg !661
  %16 = load i64, ptr %rows, align 8, !dbg !663, !tbaa !664
  %cmp2 = icmp slt i64 %inc30, %16, !dbg !680
  br i1 %cmp2, label %for.body3, label %for.end31, !dbg !681, !llvm.loop !739

for.end31:                                        ; preds = %cleanup
  %call32 = call ptr @DestroyCacheView(ptr noundef %call) #6, !dbg !682
  call void @llvm.dbg.value(metadata ptr %call32, metadata !635, metadata !DIExpression()), !dbg !661
  %cmp33 = fcmp ugt double %area.2, 0.000000e+00, !dbg !741
  br i1 %cmp33, label %if.end35, label %for.end159, !dbg !683

if.end35:                                         ; preds = %for.end31
  %div = fdiv double %brightness_sum_x.2, %area.2, !dbg !743
  call void @llvm.dbg.value(metadata double %div, metadata !616, metadata !DIExpression()), !dbg !650
  %call36 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %text, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %div) #6, !dbg !744
  %call38 = call i32 @SetImageProperty(ptr noundef nonnull %image.0325, ptr noundef nonnull @.str.1, ptr noundef nonnull %text) #6, !dbg !745
  %div39 = fdiv double %brightness_sum_x2.2, %area.2, !dbg !746
  %mul41 = fmul double %brightness_sum_x.2, %div, !dbg !747
  %div42 = fdiv double %mul41, %area.2, !dbg !748
  %sub = fsub double %div39, %div42, !dbg !749
  %call43 = call double @sqrt(double noundef %sub) #6, !dbg !750
  call void @llvm.dbg.value(metadata double %call43, metadata !617, metadata !DIExpression()), !dbg !650
  %call45 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %text, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %call43) #6, !dbg !751
  %call47 = call i32 @SetImageProperty(ptr noundef nonnull %image.0325, ptr noundef nonnull @.str.2, ptr noundef nonnull %text) #6, !dbg !752
  %cmp48 = fcmp une double %call43, 0.000000e+00, !dbg !753
  br i1 %cmp48, label %if.then49, label %if.end87.critedge, !dbg !755

if.then49:                                        ; preds = %if.end35
  %div50 = fdiv double %brightness_sum_x4.2, %area.2, !dbg !756
  %mul51 = fmul double %div, 4.000000e+00, !dbg !757
  %mul52 = fmul double %mul51, %brightness_sum_x3.2, !dbg !758
  %div53 = fdiv double %mul52, %area.2, !dbg !759
  %sub54 = fsub double %div50, %div53, !dbg !760
  %mul55 = fmul double %div, 6.000000e+00, !dbg !761
  %mul56 = fmul double %div, %mul55, !dbg !762
  %mul57 = fmul double %brightness_sum_x2.2, %mul56, !dbg !763
  %div58 = fdiv double %mul57, %area.2, !dbg !764
  %add59 = fadd double %sub54, %div58, !dbg !765
  %17 = fmul double %div, -3.000000e+00, !dbg !766
  %18 = fmul double %div, %17, !dbg !766
  %neg = fmul double %div, %18, !dbg !766
  %19 = call double @llvm.fmuladd.f64(double %neg, double %div, double %add59), !dbg !766
  %mul64 = fmul double %call43, %call43, !dbg !767
  %mul65 = fmul double %call43, %mul64, !dbg !768
  %mul66 = fmul double %call43, %mul65, !dbg !769
  %div67 = fdiv double %19, %mul66, !dbg !770
  %sub68 = fadd double %div67, -3.000000e+00, !dbg !771
  call void @llvm.dbg.value(metadata double %sub68, metadata !618, metadata !DIExpression()), !dbg !650
  %call71 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %text, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %sub68) #6, !dbg !772
  %call73 = call i32 @SetImageProperty(ptr noundef nonnull %image.0325, ptr noundef nonnull @.str.3, ptr noundef nonnull %text) #6, !dbg !773
  %div76 = fdiv double %brightness_sum_x3.2, %area.2, !dbg !774
  %mul77 = fmul double %div, 3.000000e+00, !dbg !776
  %mul78 = fmul double %brightness_sum_x2.2, %mul77, !dbg !777
  %div79 = fdiv double %mul78, %area.2, !dbg !778
  %sub80 = fsub double %div76, %div79, !dbg !779
  %mul81 = fmul double %div, 2.000000e+00, !dbg !780
  %mul82 = fmul double %div, %mul81, !dbg !781
  %20 = call double @llvm.fmuladd.f64(double %mul82, double %div, double %sub80), !dbg !782
  %div86 = fdiv double %20, %mul65, !dbg !783
  call void @llvm.dbg.value(metadata double %div86, metadata !619, metadata !DIExpression()), !dbg !650
  br label %if.end87, !dbg !784

if.end87.critedge:                                ; preds = %if.end35
  call void @llvm.dbg.value(metadata double %sub68, metadata !618, metadata !DIExpression()), !dbg !650
  %call71.c = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %text, i64 noundef 4096, ptr noundef nonnull @.str, double noundef 0.000000e+00) #6, !dbg !772
  %call73.c = call i32 @SetImageProperty(ptr noundef nonnull %image.0325, ptr noundef nonnull @.str.3, ptr noundef nonnull %text) #6, !dbg !773
  br label %if.end87, !dbg !785

if.end87:                                         ; preds = %if.end87.critedge, %if.then49
  %brightness_skewness.0 = phi double [ %div86, %if.then49 ], [ 0.000000e+00, %if.end87.critedge ], !dbg !661
  call void @llvm.dbg.value(metadata double %brightness_skewness.0, metadata !619, metadata !DIExpression()), !dbg !650
  %call89 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %text, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %brightness_skewness.0) #6, !dbg !786
  %call91 = call i32 @SetImageProperty(ptr noundef nonnull %image.0325, ptr noundef nonnull @.str.4, ptr noundef nonnull %text) #6, !dbg !787
  %div92 = fdiv double %saturation_sum_x.2, %area.2, !dbg !788
  call void @llvm.dbg.value(metadata double %div92, metadata !626, metadata !DIExpression()), !dbg !650
  %call94 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %text, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %div92) #6, !dbg !789
  %call96 = call i32 @SetImageProperty(ptr noundef nonnull %image.0325, ptr noundef nonnull @.str.5, ptr noundef nonnull %text) #6, !dbg !790
  %div97 = fdiv double %saturation_sum_x2.2, %area.2, !dbg !791
  %mul99 = fmul double %saturation_sum_x.2, %div92, !dbg !792
  %div100 = fdiv double %mul99, %area.2, !dbg !793
  %sub101 = fsub double %div97, %div100, !dbg !794
  %call102 = call double @sqrt(double noundef %sub101) #6, !dbg !795
  call void @llvm.dbg.value(metadata double %call102, metadata !627, metadata !DIExpression()), !dbg !650
  %call104 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %text, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %call102) #6, !dbg !796
  %call106 = call i32 @SetImageProperty(ptr noundef nonnull %image.0325, ptr noundef nonnull @.str.6, ptr noundef nonnull %text) #6, !dbg !797
  %cmp107 = fcmp une double %call102, 0.000000e+00, !dbg !798
  br i1 %cmp107, label %if.then108, label %if.end147.critedge, !dbg !800

if.then108:                                       ; preds = %if.end87
  %div109 = fdiv double %saturation_sum_x4.2, %area.2, !dbg !801
  %mul110 = fmul double %div92, 4.000000e+00, !dbg !802
  %mul111 = fmul double %mul110, %saturation_sum_x3.2, !dbg !803
  %div112 = fdiv double %mul111, %area.2, !dbg !804
  %sub113 = fsub double %div109, %div112, !dbg !805
  %mul114 = fmul double %div92, 6.000000e+00, !dbg !806
  %mul115 = fmul double %div92, %mul114, !dbg !807
  %mul116 = fmul double %saturation_sum_x2.2, %mul115, !dbg !808
  %div117 = fdiv double %mul116, %area.2, !dbg !809
  %add118 = fadd double %sub113, %div117, !dbg !810
  %21 = fmul double %div92, -3.000000e+00, !dbg !811
  %22 = fmul double %div92, %21, !dbg !811
  %neg123 = fmul double %div92, %22, !dbg !811
  %23 = call double @llvm.fmuladd.f64(double %neg123, double %div92, double %add118), !dbg !811
  %mul124 = fmul double %call102, %call102, !dbg !812
  %mul125 = fmul double %call102, %mul124, !dbg !813
  %mul126 = fmul double %call102, %mul125, !dbg !814
  %div127 = fdiv double %23, %mul126, !dbg !815
  %sub128 = fadd double %div127, -3.000000e+00, !dbg !816
  call void @llvm.dbg.value(metadata double %sub128, metadata !628, metadata !DIExpression()), !dbg !650
  %call131 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %text, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %sub128) #6, !dbg !817
  %call133 = call i32 @SetImageProperty(ptr noundef nonnull %image.0325, ptr noundef nonnull @.str.7, ptr noundef nonnull %text) #6, !dbg !818
  %div136 = fdiv double %saturation_sum_x3.2, %area.2, !dbg !819
  %mul137 = fmul double %div92, 3.000000e+00, !dbg !821
  %mul138 = fmul double %saturation_sum_x2.2, %mul137, !dbg !822
  %div139 = fdiv double %mul138, %area.2, !dbg !823
  %sub140 = fsub double %div136, %div139, !dbg !824
  %mul141 = fmul double %div92, 2.000000e+00, !dbg !825
  %mul142 = fmul double %div92, %mul141, !dbg !826
  %24 = call double @llvm.fmuladd.f64(double %mul142, double %div92, double %sub140), !dbg !827
  %div146 = fdiv double %24, %mul125, !dbg !828
  call void @llvm.dbg.value(metadata double %div146, metadata !629, metadata !DIExpression()), !dbg !650
  br label %for.inc157, !dbg !829

if.end147.critedge:                               ; preds = %if.end87
  call void @llvm.dbg.value(metadata double %sub128, metadata !628, metadata !DIExpression()), !dbg !650
  %call131.c = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %text, i64 noundef 4096, ptr noundef nonnull @.str, double noundef 0.000000e+00) #6, !dbg !817
  %call133.c = call i32 @SetImageProperty(ptr noundef nonnull %image.0325, ptr noundef nonnull @.str.7, ptr noundef nonnull %text) #6, !dbg !818
  br label %for.inc157, !dbg !830

for.inc157:                                       ; preds = %if.then108, %if.end147.critedge
  %saturation_skewness.0 = phi double [ %div146, %if.then108 ], [ 0.000000e+00, %if.end147.critedge ], !dbg !661
  call void @llvm.dbg.value(metadata double %saturation_skewness.0, metadata !629, metadata !DIExpression()), !dbg !650
  %call149 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %text, i64 noundef 4096, ptr noundef nonnull @.str, double noundef %saturation_skewness.0) #6, !dbg !831
  %call151 = call i32 @SetImageProperty(ptr noundef nonnull %image.0325, ptr noundef nonnull @.str.8, ptr noundef nonnull %text) #6, !dbg !832
  %call158 = call ptr @GetNextImageInList(ptr noundef nonnull %image.0325) #6, !dbg !833
  call void @llvm.dbg.value(metadata ptr %call158, metadata !634, metadata !DIExpression()), !dbg !650
  %cmp.not = icmp eq ptr %call158, null, !dbg !659
  br i1 %cmp.not, label %for.end159, label %for.body, !dbg !660, !llvm.loop !834

for.end159:                                       ; preds = %for.inc157, %for.end31, %for.end31.thread, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %saturation) #6, !dbg !836
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hue) #6, !dbg !836
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %brightness) #6, !dbg !836
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %text) #6, !dbg !836
  ret i64 428304, !dbg !837
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !838 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !844 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !851 void @ConvertRGBToHSB(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !857 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

declare !dbg !860 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !866 i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #5

declare !dbg !870 ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { hot nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!593, !594, !595, !596, !597, !598}
!llvm.ident = !{!599}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !368, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/filters/analyze.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "c77b3dc8fbfcb4c947f16bf102a8beb8")
!2 = !{!3, !10, !47, !72, !84, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356}
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
!368 = !{!369, !425, !434, !591, !398, !380}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !372)
!372 = !{!373, !375, !377, !379, !383, !385, !387, !388, !389, !390, !391, !392, !403, !404, !405, !406, !408, !422, !424, !426, !428, !431, !432, !433, !439, !440, !441, !449, !450, !451, !452, !453, !454, !456, !458, !460, !462, !464, !466, !468, !469, !470, !471, !472, !473, !474, !482, !497, !511, !512, !513, !514, !518, !522, !526, !527, !528, !529, !530, !548, !549, !551, !552, !562, !563, !565, !566, !567, !568, !569, !570, !572, !573, !574, !575, !576, !577, !578, !580, !581, !582, !583, !584, !588, !590}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !371, file: !73, line: 153, baseType: !374, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !371, file: !73, line: 156, baseType: !376, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !371, file: !73, line: 159, baseType: !378, size: 32, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !371, file: !73, line: 162, baseType: !380, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !381, line: 46, baseType: !382)
!381 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!382 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !371, file: !73, line: 165, baseType: !384, size: 32, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !371, file: !73, line: 168, baseType: !386, size: 32, offset: 224)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !371, file: !73, line: 169, baseType: !386, size: 32, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !371, file: !73, line: 172, baseType: !380, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !371, file: !73, line: 173, baseType: !380, size: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !371, file: !73, line: 174, baseType: !380, size: 64, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !371, file: !73, line: 175, baseType: !380, size: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !371, file: !73, line: 178, baseType: !393, size: 64, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !396)
!396 = !{!397, !400, !401, !402}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !395, file: !326, line: 143, baseType: !398, size: 16)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !399)
!399 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !395, file: !326, line: 144, baseType: !398, size: 16, offset: 16)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !395, file: !326, line: 145, baseType: !398, size: 16, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !395, file: !326, line: 146, baseType: !398, size: 16, offset: 48)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !371, file: !73, line: 179, baseType: !394, size: 64, offset: 640)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !371, file: !73, line: 180, baseType: !394, size: 64, offset: 704)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !371, file: !73, line: 181, baseType: !394, size: 64, offset: 768)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !371, file: !73, line: 184, baseType: !407, size: 64, offset: 832)
!407 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !371, file: !73, line: 187, baseType: !409, size: 768, offset: 896)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !73, line: 128, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !73, line: 121, size: 768, elements: !411)
!411 = !{!412, !419, !420, !421}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !410, file: !73, line: 124, baseType: !413, size: 192)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !73, line: 101, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !73, line: 95, size: 192, elements: !415)
!415 = !{!416, !417, !418}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !414, file: !73, line: 98, baseType: !407, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !414, file: !73, line: 99, baseType: !407, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !414, file: !73, line: 100, baseType: !407, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !410, file: !73, line: 125, baseType: !413, size: 192, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !410, file: !73, line: 126, baseType: !413, size: 192, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !410, file: !73, line: 127, baseType: !413, size: 192, offset: 576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !371, file: !73, line: 190, baseType: !423, size: 32, offset: 1664)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !371, file: !73, line: 193, baseType: !425, size: 64, offset: 1728)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !371, file: !73, line: 196, baseType: !427, size: 32, offset: 1792)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !73, line: 93, baseType: !96)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !371, file: !73, line: 199, baseType: !429, size: 64, offset: 1856)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !371, file: !73, line: 200, baseType: !429, size: 64, offset: 1920)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !371, file: !73, line: 201, baseType: !429, size: 64, offset: 1984)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !371, file: !73, line: 204, baseType: !434, size: 64, offset: 2048)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !435, line: 77, baseType: !436)
!435 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !437, line: 193, baseType: !438)
!437 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!438 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !371, file: !73, line: 207, baseType: !407, size: 64, offset: 2112)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !371, file: !73, line: 208, baseType: !407, size: 64, offset: 2176)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !371, file: !73, line: 211, baseType: !442, size: 256, offset: 2240)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !444)
!444 = !{!445, !446, !447, !448}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !443, file: !153, line: 124, baseType: !380, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !443, file: !153, line: 125, baseType: !380, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !443, file: !153, line: 128, baseType: !434, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !443, file: !153, line: 129, baseType: !434, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !371, file: !73, line: 212, baseType: !442, size: 256, offset: 2496)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !371, file: !73, line: 213, baseType: !442, size: 256, offset: 2752)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !371, file: !73, line: 216, baseType: !407, size: 64, offset: 3008)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !371, file: !73, line: 217, baseType: !407, size: 64, offset: 3072)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !371, file: !73, line: 218, baseType: !407, size: 64, offset: 3136)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !371, file: !73, line: 221, baseType: !455, size: 32, offset: 3200)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !371, file: !73, line: 224, baseType: !457, size: 32, offset: 3232)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !73, line: 73, baseType: !136)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !371, file: !73, line: 227, baseType: !459, size: 32, offset: 3264)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !371, file: !73, line: 230, baseType: !461, size: 32, offset: 3296)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !371, file: !73, line: 233, baseType: !463, size: 32, offset: 3328)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !371, file: !73, line: 236, baseType: !465, size: 32, offset: 3360)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !371, file: !73, line: 239, baseType: !467, size: 64, offset: 3392)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !371, file: !73, line: 242, baseType: !380, size: 64, offset: 3456)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !371, file: !73, line: 243, baseType: !380, size: 64, offset: 3520)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !371, file: !73, line: 246, baseType: !434, size: 64, offset: 3584)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !371, file: !73, line: 249, baseType: !380, size: 64, offset: 3648)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !371, file: !73, line: 250, baseType: !380, size: 64, offset: 3712)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !371, file: !73, line: 253, baseType: !434, size: 64, offset: 3776)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !371, file: !73, line: 256, baseType: !475, size: 192, offset: 3840)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !476, line: 68, baseType: !477)
!476 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !476, line: 62, size: 192, elements: !478)
!478 = !{!479, !480, !481}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !477, file: !476, line: 65, baseType: !407, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !477, file: !476, line: 66, baseType: !407, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !477, file: !476, line: 67, baseType: !407, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !371, file: !73, line: 259, baseType: !483, size: 512, offset: 4032)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !485)
!485 = !{!486, !493, !494, !496}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !484, file: !247, line: 43, baseType: !487, size: 192)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !489)
!489 = !{!490, !491, !492}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !488, file: !247, line: 35, baseType: !407, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !488, file: !247, line: 36, baseType: !407, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !488, file: !247, line: 37, baseType: !407, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !484, file: !247, line: 44, baseType: !487, size: 192, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !484, file: !247, line: 47, baseType: !495, size: 32, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !484, file: !247, line: 50, baseType: !380, size: 64, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !371, file: !73, line: 262, baseType: !498, size: 64, offset: 4544)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !499, line: 26, baseType: !500)
!499 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!386, !503, !505, !508, !425}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !507)
!507 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !510)
!510 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !371, file: !73, line: 265, baseType: !425, size: 64, offset: 4608)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !371, file: !73, line: 266, baseType: !425, size: 64, offset: 4672)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !371, file: !73, line: 267, baseType: !425, size: 64, offset: 4736)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !371, file: !73, line: 270, baseType: !515, size: 64, offset: 4800)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !48, line: 52, baseType: !517)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !48, line: 51, flags: DIFlagFwdDecl)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !371, file: !73, line: 273, baseType: !519, size: 64, offset: 4864)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !521)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !371, file: !73, line: 276, baseType: !523, size: 32768, offset: 4928)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 32768, elements: !524)
!524 = !{!525}
!525 = !DISubrange(count: 4096)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !371, file: !73, line: 277, baseType: !523, size: 32768, offset: 37696)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !371, file: !73, line: 278, baseType: !523, size: 32768, offset: 70464)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !371, file: !73, line: 281, baseType: !380, size: 64, offset: 103232)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !371, file: !73, line: 282, baseType: !380, size: 64, offset: 103296)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !371, file: !73, line: 285, baseType: !531, size: 448, offset: 103360)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !533)
!533 = !{!534, !536, !538, !539, !540, !541, !542, !547}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !532, file: !253, line: 105, baseType: !535, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !532, file: !253, line: 108, baseType: !537, size: 32, offset: 32)
!537 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !532, file: !253, line: 111, baseType: !429, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !532, file: !253, line: 112, baseType: !429, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !532, file: !253, line: 115, baseType: !425, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !532, file: !253, line: 118, baseType: !386, size: 32, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !532, file: !253, line: 121, baseType: !543, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !545, line: 26, baseType: !546)
!545 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !545, line: 25, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !532, file: !253, line: 124, baseType: !380, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !371, file: !73, line: 288, baseType: !386, size: 32, offset: 103808)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !371, file: !73, line: 291, baseType: !550, size: 64, offset: 103872)
!550 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !434)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !371, file: !73, line: 294, baseType: !543, size: 64, offset: 103936)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !371, file: !73, line: 297, baseType: !553, size: 256, offset: 104000)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !555)
!555 = !{!556, !557, !558, !561}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !554, file: !89, line: 30, baseType: !429, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !554, file: !89, line: 33, baseType: !380, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !554, file: !89, line: 36, baseType: !559, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !554, file: !89, line: 39, baseType: !380, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !371, file: !73, line: 298, baseType: !553, size: 256, offset: 104256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !371, file: !73, line: 299, baseType: !564, size: 64, offset: 104512)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !371, file: !73, line: 302, baseType: !380, size: 64, offset: 104576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !371, file: !73, line: 305, baseType: !380, size: 64, offset: 104640)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !371, file: !73, line: 308, baseType: !467, size: 64, offset: 104704)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !371, file: !73, line: 309, baseType: !467, size: 64, offset: 104768)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !73, line: 310, baseType: !467, size: 64, offset: 104832)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !371, file: !73, line: 313, baseType: !571, size: 32, offset: 104896)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !371, file: !73, line: 316, baseType: !386, size: 32, offset: 104928)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !371, file: !73, line: 319, baseType: !394, size: 64, offset: 104960)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !371, file: !73, line: 322, baseType: !467, size: 64, offset: 105024)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !371, file: !73, line: 325, baseType: !442, size: 256, offset: 105088)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !371, file: !73, line: 328, baseType: !425, size: 64, offset: 105344)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !371, file: !73, line: 329, baseType: !425, size: 64, offset: 105408)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !371, file: !73, line: 332, baseType: !579, size: 32, offset: 105472)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !371, file: !73, line: 335, baseType: !386, size: 32, offset: 105504)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !371, file: !73, line: 338, baseType: !509, size: 64, offset: 105536)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !371, file: !73, line: 341, baseType: !386, size: 32, offset: 105600)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !371, file: !73, line: 344, baseType: !380, size: 64, offset: 105664)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !371, file: !73, line: 347, baseType: !585, size: 64, offset: 105728)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !586, line: 7, baseType: !587)
!586 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !437, line: 160, baseType: !438)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !371, file: !73, line: 350, baseType: !589, size: 32, offset: 105792)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !371, file: !73, line: 353, baseType: !380, size: 64, offset: 105856)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!593 = !{i32 7, !"Dwarf Version", i32 5}
!594 = !{i32 2, !"Debug Info Version", i32 3}
!595 = !{i32 1, !"wchar_size", i32 4}
!596 = !{i32 7, !"PIC Level", i32 2}
!597 = !{i32 7, !"PIE Level", i32 2}
!598 = !{i32 7, !"uwtable", i32 2}
!599 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!600 = distinct !DISubprogram(name: "analyzeImage", scope: !601, file: !601, line: 80, type: !602, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !608)
!601 = !DIFile(filename: "apps/538.imagick_r/src/filters/analyze.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c77b3dc8fbfcb4c947f16bf102a8beb8")
!602 = !DISubroutineType(types: !603)
!603 = !{!380, !604, !605, !606, !607}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !537)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!608 = !{!609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !643, !644, !645, !649}
!609 = !DILocalVariable(name: "images", arg: 1, scope: !600, file: !601, line: 80, type: !604)
!610 = !DILocalVariable(name: "argc", arg: 2, scope: !600, file: !601, line: 80, type: !605)
!611 = !DILocalVariable(name: "argv", arg: 3, scope: !600, file: !601, line: 81, type: !606)
!612 = !DILocalVariable(name: "exception", arg: 4, scope: !600, file: !601, line: 81, type: !607)
!613 = !DILocalVariable(name: "text", scope: !600, file: !601, line: 84, type: !523)
!614 = !DILocalVariable(name: "area", scope: !600, file: !601, line: 87, type: !407)
!615 = !DILocalVariable(name: "brightness", scope: !600, file: !601, line: 88, type: !407)
!616 = !DILocalVariable(name: "brightness_mean", scope: !600, file: !601, line: 89, type: !407)
!617 = !DILocalVariable(name: "brightness_standard_deviation", scope: !600, file: !601, line: 90, type: !407)
!618 = !DILocalVariable(name: "brightness_kurtosis", scope: !600, file: !601, line: 91, type: !407)
!619 = !DILocalVariable(name: "brightness_skewness", scope: !600, file: !601, line: 92, type: !407)
!620 = !DILocalVariable(name: "brightness_sum_x", scope: !600, file: !601, line: 93, type: !407)
!621 = !DILocalVariable(name: "brightness_sum_x2", scope: !600, file: !601, line: 94, type: !407)
!622 = !DILocalVariable(name: "brightness_sum_x3", scope: !600, file: !601, line: 95, type: !407)
!623 = !DILocalVariable(name: "brightness_sum_x4", scope: !600, file: !601, line: 96, type: !407)
!624 = !DILocalVariable(name: "hue", scope: !600, file: !601, line: 97, type: !407)
!625 = !DILocalVariable(name: "saturation", scope: !600, file: !601, line: 98, type: !407)
!626 = !DILocalVariable(name: "saturation_mean", scope: !600, file: !601, line: 99, type: !407)
!627 = !DILocalVariable(name: "saturation_standard_deviation", scope: !600, file: !601, line: 100, type: !407)
!628 = !DILocalVariable(name: "saturation_kurtosis", scope: !600, file: !601, line: 101, type: !407)
!629 = !DILocalVariable(name: "saturation_skewness", scope: !600, file: !601, line: 102, type: !407)
!630 = !DILocalVariable(name: "saturation_sum_x", scope: !600, file: !601, line: 103, type: !407)
!631 = !DILocalVariable(name: "saturation_sum_x2", scope: !600, file: !601, line: 104, type: !407)
!632 = !DILocalVariable(name: "saturation_sum_x3", scope: !600, file: !601, line: 105, type: !407)
!633 = !DILocalVariable(name: "saturation_sum_x4", scope: !600, file: !601, line: 106, type: !407)
!634 = !DILocalVariable(name: "image", scope: !600, file: !601, line: 109, type: !369)
!635 = !DILocalVariable(name: "image_view", scope: !636, file: !601, line: 120, type: !639)
!636 = distinct !DILexicalBlock(scope: !637, file: !601, line: 118, column: 3)
!637 = distinct !DILexicalBlock(scope: !638, file: !601, line: 117, column: 3)
!638 = distinct !DILexicalBlock(scope: !600, file: !601, line: 117, column: 3)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !641, line: 50, baseType: !642)
!641 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !326, line: 160, flags: DIFlagFwdDecl)
!643 = !DILocalVariable(name: "y", scope: !636, file: !601, line: 123, type: !434)
!644 = !DILocalVariable(name: "status", scope: !636, file: !601, line: 126, type: !386)
!645 = !DILocalVariable(name: "p", scope: !646, file: !601, line: 154, type: !591)
!646 = distinct !DILexicalBlock(scope: !647, file: !601, line: 152, column: 5)
!647 = distinct !DILexicalBlock(scope: !648, file: !601, line: 151, column: 5)
!648 = distinct !DILexicalBlock(scope: !636, file: !601, line: 151, column: 5)
!649 = !DILocalVariable(name: "x", scope: !646, file: !601, line: 157, type: !434)
!650 = !DILocation(line: 0, scope: !600)
!651 = !DILocation(line: 83, column: 3, scope: !600)
!652 = !DILocation(line: 84, column: 5, scope: !600)
!653 = !DILocation(line: 86, column: 3, scope: !600)
!654 = !DILocation(line: 116, column: 10, scope: !600)
!655 = !{!656, !656, i64 0}
!656 = !{!"any pointer", !657, i64 0}
!657 = !{!"omnipotent char", !658, i64 0}
!658 = !{!"Simple C/C++ TBAA"}
!659 = !DILocation(line: 117, column: 17, scope: !637)
!660 = !DILocation(line: 117, column: 3, scope: !638)
!661 = !DILocation(line: 0, scope: !636)
!662 = !DILocation(line: 146, column: 16, scope: !636)
!663 = !DILocation(line: 151, column: 36, scope: !647)
!664 = !{!665, !666, i64 48}
!665 = !{!"_Image", !657, i64 0, !657, i64 4, !657, i64 8, !666, i64 16, !657, i64 24, !657, i64 28, !657, i64 32, !666, i64 40, !666, i64 48, !666, i64 56, !666, i64 64, !656, i64 72, !667, i64 80, !667, i64 88, !667, i64 96, !669, i64 104, !670, i64 112, !657, i64 208, !656, i64 216, !657, i64 224, !656, i64 232, !656, i64 240, !656, i64 248, !666, i64 256, !669, i64 264, !669, i64 272, !672, i64 280, !672, i64 312, !672, i64 344, !669, i64 376, !669, i64 384, !669, i64 392, !657, i64 400, !657, i64 404, !657, i64 408, !657, i64 412, !657, i64 416, !657, i64 420, !656, i64 424, !666, i64 432, !666, i64 440, !666, i64 448, !666, i64 456, !666, i64 464, !666, i64 472, !673, i64 480, !674, i64 504, !656, i64 568, !656, i64 576, !656, i64 584, !656, i64 592, !656, i64 600, !656, i64 608, !657, i64 616, !657, i64 4712, !657, i64 8808, !666, i64 12904, !666, i64 12912, !676, i64 12920, !657, i64 12976, !666, i64 12984, !656, i64 12992, !678, i64 13000, !678, i64 13032, !656, i64 13064, !666, i64 13072, !666, i64 13080, !656, i64 13088, !656, i64 13096, !656, i64 13104, !657, i64 13112, !657, i64 13116, !667, i64 13120, !656, i64 13128, !672, i64 13136, !656, i64 13168, !656, i64 13176, !657, i64 13184, !657, i64 13188, !679, i64 13192, !657, i64 13200, !666, i64 13208, !666, i64 13216, !657, i64 13224, !666, i64 13232}
!666 = !{!"long", !657, i64 0}
!667 = !{!"_PixelPacket", !668, i64 0, !668, i64 2, !668, i64 4, !668, i64 6}
!668 = !{!"short", !657, i64 0}
!669 = !{!"double", !657, i64 0}
!670 = !{!"_ChromaticityInfo", !671, i64 0, !671, i64 24, !671, i64 48, !671, i64 72}
!671 = !{!"_PrimaryInfo", !669, i64 0, !669, i64 8, !669, i64 16}
!672 = !{!"_RectangleInfo", !666, i64 0, !666, i64 8, !666, i64 16, !666, i64 24}
!673 = !{!"_ErrorInfo", !669, i64 0, !669, i64 8, !669, i64 16}
!674 = !{!"_TimerInfo", !675, i64 0, !675, i64 24, !657, i64 48, !666, i64 56}
!675 = !{!"_Timer", !669, i64 0, !669, i64 8, !669, i64 16}
!676 = !{!"_ExceptionInfo", !657, i64 0, !677, i64 4, !656, i64 8, !656, i64 16, !656, i64 24, !657, i64 32, !656, i64 40, !666, i64 48}
!677 = !{!"int", !657, i64 0}
!678 = !{!"_ProfileInfo", !656, i64 0, !666, i64 8, !656, i64 16, !666, i64 24}
!679 = !{!"long long", !657, i64 0}
!680 = !DILocation(line: 151, column: 17, scope: !647)
!681 = !DILocation(line: 151, column: 5, scope: !648)
!682 = !DILocation(line: 185, column: 16, scope: !636)
!683 = !DILocation(line: 186, column: 9, scope: !636)
!684 = !DILocation(line: 159, column: 18, scope: !685)
!685 = distinct !DILexicalBlock(scope: !646, file: !601, line: 159, column: 11)
!686 = !DILocation(line: 159, column: 11, scope: !646)
!687 = !DILocation(line: 161, column: 57, scope: !646)
!688 = !{!665, !666, i64 40}
!689 = !DILocation(line: 161, column: 9, scope: !646)
!690 = !DILocation(line: 0, scope: !646)
!691 = !DILocation(line: 162, column: 13, scope: !692)
!692 = distinct !DILexicalBlock(scope: !646, file: !601, line: 162, column: 11)
!693 = !DILocation(line: 162, column: 11, scope: !646)
!694 = !DILocation(line: 167, column: 38, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !601, line: 167, column: 7)
!696 = distinct !DILexicalBlock(scope: !646, file: !601, line: 167, column: 7)
!697 = !DILocation(line: 167, column: 19, scope: !695)
!698 = !DILocation(line: 167, column: 7, scope: !696)
!699 = !DILocation(line: 169, column: 25, scope: !700)
!700 = distinct !DILexicalBlock(scope: !695, file: !601, line: 168, column: 7)
!701 = !{!667, !668, i64 4}
!702 = !DILocation(line: 169, column: 40, scope: !700)
!703 = !{!667, !668, i64 2}
!704 = !DILocation(line: 169, column: 57, scope: !700)
!705 = !{!667, !668, i64 0}
!706 = !DILocation(line: 169, column: 9, scope: !700)
!707 = !DILocation(line: 171, column: 19, scope: !700)
!708 = !{!669, !669, i64 0}
!709 = !DILocation(line: 172, column: 25, scope: !700)
!710 = !DILocation(line: 173, column: 26, scope: !700)
!711 = !DILocation(line: 174, column: 38, scope: !700)
!712 = !DILocation(line: 174, column: 26, scope: !700)
!713 = !DILocation(line: 175, column: 49, scope: !700)
!714 = !DILocation(line: 175, column: 26, scope: !700)
!715 = !DILocation(line: 176, column: 19, scope: !700)
!716 = !DILocation(line: 177, column: 25, scope: !700)
!717 = !DILocation(line: 178, column: 26, scope: !700)
!718 = !DILocation(line: 179, column: 38, scope: !700)
!719 = !DILocation(line: 179, column: 26, scope: !700)
!720 = !DILocation(line: 180, column: 49, scope: !700)
!721 = !DILocation(line: 180, column: 26, scope: !700)
!722 = !DILocation(line: 181, column: 13, scope: !700)
!723 = !DILocation(line: 182, column: 10, scope: !700)
!724 = !DILocation(line: 167, column: 48, scope: !695)
!725 = distinct !{!725, !698, !726, !727, !728}
!726 = !DILocation(line: 183, column: 7, scope: !696)
!727 = !{!"llvm.loop.mustprogress"}
!728 = !{!"llvm.loop.unroll.disable"}
!729 = !DILocation(line: 144, column: 9, scope: !636)
!730 = !DILocation(line: 128, column: 21, scope: !636)
!731 = !DILocation(line: 129, column: 22, scope: !636)
!732 = !DILocation(line: 130, column: 22, scope: !636)
!733 = !DILocation(line: 131, column: 22, scope: !636)
!734 = !DILocation(line: 136, column: 21, scope: !636)
!735 = !DILocation(line: 137, column: 22, scope: !636)
!736 = !DILocation(line: 138, column: 22, scope: !636)
!737 = !DILocation(line: 139, column: 22, scope: !636)
!738 = !DILocation(line: 151, column: 43, scope: !647)
!739 = distinct !{!739, !681, !740, !727, !728}
!740 = !DILocation(line: 184, column: 5, scope: !648)
!741 = !DILocation(line: 186, column: 14, scope: !742)
!742 = distinct !DILexicalBlock(scope: !636, file: !601, line: 186, column: 9)
!743 = !DILocation(line: 188, column: 37, scope: !636)
!744 = !DILocation(line: 189, column: 12, scope: !636)
!745 = !DILocation(line: 190, column: 12, scope: !636)
!746 = !DILocation(line: 191, column: 57, scope: !636)
!747 = !DILocation(line: 192, column: 11, scope: !636)
!748 = !DILocation(line: 192, column: 28, scope: !636)
!749 = !DILocation(line: 191, column: 62, scope: !636)
!750 = !DILocation(line: 191, column: 35, scope: !636)
!751 = !DILocation(line: 193, column: 12, scope: !636)
!752 = !DILocation(line: 195, column: 12, scope: !636)
!753 = !DILocation(line: 196, column: 39, scope: !754)
!754 = distinct !DILexicalBlock(scope: !636, file: !601, line: 196, column: 9)
!755 = !DILocation(line: 196, column: 9, scope: !636)
!756 = !DILocation(line: 197, column: 45, scope: !754)
!757 = !DILocation(line: 197, column: 54, scope: !754)
!758 = !DILocation(line: 197, column: 70, scope: !754)
!759 = !DILocation(line: 198, column: 26, scope: !754)
!760 = !DILocation(line: 197, column: 50, scope: !754)
!761 = !DILocation(line: 198, column: 35, scope: !754)
!762 = !DILocation(line: 198, column: 51, scope: !754)
!763 = !DILocation(line: 198, column: 67, scope: !754)
!764 = !DILocation(line: 199, column: 26, scope: !754)
!765 = !DILocation(line: 198, column: 31, scope: !754)
!766 = !DILocation(line: 199, column: 31, scope: !754)
!767 = !DILocation(line: 200, column: 72, scope: !754)
!768 = !DILocation(line: 201, column: 38, scope: !754)
!769 = !DILocation(line: 201, column: 68, scope: !754)
!770 = !DILocation(line: 200, column: 41, scope: !754)
!771 = !DILocation(line: 202, column: 39, scope: !754)
!772 = !DILocation(line: 203, column: 12, scope: !636)
!773 = !DILocation(line: 204, column: 12, scope: !636)
!774 = !DILocation(line: 206, column: 45, scope: !775)
!775 = distinct !DILexicalBlock(scope: !636, file: !601, line: 205, column: 9)
!776 = !DILocation(line: 206, column: 54, scope: !775)
!777 = !DILocation(line: 206, column: 70, scope: !775)
!778 = !DILocation(line: 207, column: 26, scope: !775)
!779 = !DILocation(line: 206, column: 50, scope: !775)
!780 = !DILocation(line: 207, column: 35, scope: !775)
!781 = !DILocation(line: 207, column: 51, scope: !775)
!782 = !DILocation(line: 207, column: 31, scope: !775)
!783 = !DILocation(line: 208, column: 25, scope: !775)
!784 = !DILocation(line: 206, column: 7, scope: !775)
!785 = !DILocation(line: 205, column: 9, scope: !636)
!786 = !DILocation(line: 210, column: 12, scope: !636)
!787 = !DILocation(line: 211, column: 12, scope: !636)
!788 = !DILocation(line: 212, column: 37, scope: !636)
!789 = !DILocation(line: 213, column: 12, scope: !636)
!790 = !DILocation(line: 214, column: 12, scope: !636)
!791 = !DILocation(line: 215, column: 57, scope: !636)
!792 = !DILocation(line: 216, column: 11, scope: !636)
!793 = !DILocation(line: 216, column: 28, scope: !636)
!794 = !DILocation(line: 215, column: 62, scope: !636)
!795 = !DILocation(line: 215, column: 35, scope: !636)
!796 = !DILocation(line: 217, column: 12, scope: !636)
!797 = !DILocation(line: 219, column: 12, scope: !636)
!798 = !DILocation(line: 220, column: 39, scope: !799)
!799 = distinct !DILexicalBlock(scope: !636, file: !601, line: 220, column: 9)
!800 = !DILocation(line: 220, column: 9, scope: !636)
!801 = !DILocation(line: 221, column: 45, scope: !799)
!802 = !DILocation(line: 221, column: 54, scope: !799)
!803 = !DILocation(line: 221, column: 70, scope: !799)
!804 = !DILocation(line: 222, column: 26, scope: !799)
!805 = !DILocation(line: 221, column: 50, scope: !799)
!806 = !DILocation(line: 222, column: 35, scope: !799)
!807 = !DILocation(line: 222, column: 51, scope: !799)
!808 = !DILocation(line: 222, column: 67, scope: !799)
!809 = !DILocation(line: 223, column: 26, scope: !799)
!810 = !DILocation(line: 222, column: 31, scope: !799)
!811 = !DILocation(line: 223, column: 31, scope: !799)
!812 = !DILocation(line: 224, column: 72, scope: !799)
!813 = !DILocation(line: 225, column: 38, scope: !799)
!814 = !DILocation(line: 225, column: 68, scope: !799)
!815 = !DILocation(line: 224, column: 41, scope: !799)
!816 = !DILocation(line: 226, column: 39, scope: !799)
!817 = !DILocation(line: 227, column: 12, scope: !636)
!818 = !DILocation(line: 228, column: 12, scope: !636)
!819 = !DILocation(line: 230, column: 45, scope: !820)
!820 = distinct !DILexicalBlock(scope: !636, file: !601, line: 229, column: 9)
!821 = !DILocation(line: 230, column: 54, scope: !820)
!822 = !DILocation(line: 230, column: 70, scope: !820)
!823 = !DILocation(line: 231, column: 26, scope: !820)
!824 = !DILocation(line: 230, column: 50, scope: !820)
!825 = !DILocation(line: 231, column: 35, scope: !820)
!826 = !DILocation(line: 231, column: 51, scope: !820)
!827 = !DILocation(line: 231, column: 31, scope: !820)
!828 = !DILocation(line: 232, column: 25, scope: !820)
!829 = !DILocation(line: 230, column: 7, scope: !820)
!830 = !DILocation(line: 229, column: 9, scope: !636)
!831 = !DILocation(line: 234, column: 12, scope: !636)
!832 = !DILocation(line: 235, column: 12, scope: !636)
!833 = !DILocation(line: 117, column: 42, scope: !637)
!834 = distinct !{!834, !660, !835, !727, !728}
!835 = !DILocation(line: 236, column: 3, scope: !638)
!836 = !DILocation(line: 238, column: 1, scope: !600)
!837 = !DILocation(line: 237, column: 3, scope: !600)
!838 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !641, file: !641, line: 55, type: !839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !843)
!839 = !DISubroutineType(types: !840)
!840 = !{!639, !841, !607}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!843 = !{}
!844 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !641, file: !641, line: 69, type: !845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !843)
!845 = !DISubroutineType(types: !846)
!846 = !{!591, !847, !849, !849, !850, !850, !607}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!851 = !DISubprogram(name: "ConvertRGBToHSB", scope: !852, file: !852, line: 61, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !843)
!852 = !DIFile(filename: "apps/538.imagick_r/src/magick/gem.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1c4d294250c916114ca6e5f5b31857f")
!853 = !DISubroutineType(types: !854)
!854 = !{null, !855, !855, !855, !856, !856, !856}
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!857 = !DISubprogram(name: "DestroyCacheView", scope: !641, file: !641, line: 57, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !843)
!858 = !DISubroutineType(types: !859)
!859 = !{!639, !639}
!860 = !DISubprogram(name: "FormatLocaleString", scope: !861, file: !861, line: 71, type: !862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !843)
!861 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!862 = !DISubroutineType(types: !863)
!863 = !{!434, !864, !850, !865, null}
!864 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !429)
!865 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !503)
!866 = !DISubprogram(name: "SetImageProperty", scope: !867, file: !867, line: 40, type: !868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !843)
!867 = !DIFile(filename: "apps/538.imagick_r/src/magick/property.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "517489a50b093ded1c4a01c3e2b58c3c")
!868 = !DISubroutineType(types: !869)
!869 = !{!386, !369, !503, !503}
!870 = !DISubprogram(name: "GetNextImageInList", scope: !871, file: !871, line: 33, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !843)
!871 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!872 = !DISubroutineType(types: !873)
!873 = !{!369, !841}
