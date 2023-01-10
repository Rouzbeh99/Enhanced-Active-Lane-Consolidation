; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/segment.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExtentPacket = type { float, i64, i64, i64 }
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
%struct._Cluster = type { ptr, %struct._ExtentPacket, %struct._ExtentPacket, %struct._ExtentPacket, i64, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._ZeroCrossing = type { float, [256 x float], [256 x i16] }
%struct._IntervalTree = type { float, i64, i64, float, float, ptr, ptr }

@.str = private unnamed_addr constant [86 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/segment.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Segment/Image\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"UnableToAllocateDerivatives\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"UnableToAllocateGammaMap\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"Fuzzy C-means Statistics\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"===================\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\09Cluster Threshold = %g\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"\09Weighting Exponent = %g\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"\09Total Number of Clusters = %.20g\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"\0A\0ANumber of Vectors Per Cluster\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"=============================\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Cluster #%.20g = %.20g\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"\0A\0A\0ACluster Extents:        (Vector Size: %d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"================\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"\0A\0ACluster #%.20g\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"%.20g-%.20g  %.20g-%.20g  %.20g-%.20g\0A\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"\0A\0A\0ACluster Center Values:        (Vector Size: %d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"=====================\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"%g  %g  %g\0A\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"TooManyClusters\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageDynamicThreshold(ptr noundef %image, double noundef %cluster_threshold, double noundef %smooth_threshold, ptr noundef %pixel, ptr noundef %exception) local_unnamed_addr #0 !dbg !689 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %blue = alloca %struct._ExtentPacket, align 8
  %green = alloca %struct._ExtentPacket, align 8
  %red = alloca %struct._ExtentPacket, align 8
  %extrema = alloca [3 x ptr], align 16
  %histogram = alloca [3 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !711, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata double %cluster_threshold, metadata !712, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata double %smooth_threshold, metadata !713, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !714, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %exception, metadata !715, metadata !DIExpression()), !dbg !738
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %blue) #14, !dbg !739
  call void @llvm.dbg.declare(metadata ptr %blue, metadata !722, metadata !DIExpression()), !dbg !740
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %green) #14, !dbg !739
  call void @llvm.dbg.declare(metadata ptr %green, metadata !723, metadata !DIExpression()), !dbg !741
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %red) #14, !dbg !739
  call void @llvm.dbg.declare(metadata ptr %red, metadata !724, metadata !DIExpression()), !dbg !742
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %extrema) #14, !dbg !743
  call void @llvm.dbg.declare(metadata ptr %extrema, metadata !730, metadata !DIExpression()), !dbg !744
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %histogram) #14, !dbg !745
  call void @llvm.dbg.declare(metadata ptr %histogram, metadata !735, metadata !DIExpression()), !dbg !746
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !747
  %0 = load i32, ptr %debug, align 8, !dbg !747, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !768
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !769

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !770
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 995, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #14, !dbg !771
  br label %if.end, !dbg !772

if.end:                                           ; preds = %if.then, %entry
  tail call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef %pixel) #14, !dbg !773
  call void @llvm.dbg.value(metadata i64 0, metadata !728, metadata !DIExpression()), !dbg !738
  br label %for.body, !dbg !774

for.body:                                         ; preds = %if.end, %for.inc24
  %i.0643 = phi i64 [ 0, %if.end ], [ %inc, %for.inc24 ]
  call void @llvm.dbg.value(metadata i64 %i.0643, metadata !728, metadata !DIExpression()), !dbg !738
  %call2 = tail call ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #15, !dbg !776
  %arrayidx = getelementptr inbounds [3 x ptr], ptr %histogram, i64 0, i64 %i.0643, !dbg !779
  store ptr %call2, ptr %arrayidx, align 8, !dbg !780, !tbaa !781
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #15, !dbg !782
  %arrayidx4 = getelementptr inbounds [3 x ptr], ptr %extrema, i64 0, i64 %i.0643, !dbg !783
  store ptr %call3, ptr %arrayidx4, align 8, !dbg !784, !tbaa !781
  %cmp6 = icmp eq ptr %call2, null, !dbg !785
  %cmp8 = icmp eq ptr %call3, null
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp8, !dbg !787
  br i1 %or.cond, label %for.cond10.preheader, label %for.inc24, !dbg !787

for.cond10.preheader:                             ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 %i.0643, metadata !728, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !738
  %cmp11711.not = icmp eq i64 %i.0643, 0, !dbg !788
  br i1 %cmp11711.not, label %for.end, label %for.body12, !dbg !792

for.body12:                                       ; preds = %for.cond10.preheader, %for.body12
  %i.1.in712 = phi i64 [ %i.1, %for.body12 ], [ %i.0643, %for.cond10.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.1.in712, metadata !728, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !738
  %i.1 = add nsw i64 %i.1.in712, -1, !dbg !793
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !728, metadata !DIExpression()), !dbg !738
  %arrayidx13 = getelementptr inbounds [3 x ptr], ptr %extrema, i64 0, i64 %i.1, !dbg !794
  %1 = load ptr, ptr %arrayidx13, align 8, !dbg !794, !tbaa !781
  %call14 = tail call ptr @RelinquishMagickMemory(ptr noundef %1) #14, !dbg !796
  store ptr %call14, ptr %arrayidx13, align 8, !dbg !797, !tbaa !781
  %arrayidx16 = getelementptr inbounds [3 x ptr], ptr %histogram, i64 0, i64 %i.1, !dbg !798
  %2 = load ptr, ptr %arrayidx16, align 8, !dbg !798, !tbaa !781
  %call17 = tail call ptr @RelinquishMagickMemory(ptr noundef %2) #14, !dbg !799
  store ptr %call17, ptr %arrayidx16, align 8, !dbg !800, !tbaa !781
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !728, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !738
  %cmp11 = icmp sgt i64 %i.1.in712, 1, !dbg !788
  br i1 %cmp11, label %for.body12, label %for.end, !dbg !792, !llvm.loop !801

for.end:                                          ; preds = %for.body12, %for.cond10.preheader
  %filename20 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !805
  %call22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1008, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename20) #14, !dbg !806
  br label %cleanup, !dbg !807

for.inc24:                                        ; preds = %for.body
  %inc = add nuw nsw i64 %i.0643, 1, !dbg !808
  call void @llvm.dbg.value(metadata i64 %inc, metadata !728, metadata !DIExpression()), !dbg !738
  %exitcond.not = icmp eq i64 %inc, 3, !dbg !809
  br i1 %exitcond.not, label %for.end25, label %for.body, !dbg !774, !llvm.loop !810

for.end25:                                        ; preds = %for.inc24
  call fastcc void @InitializeHistogram(ptr noundef %image, ptr noundef nonnull %histogram, ptr noundef %exception), !dbg !812
  %3 = load ptr, ptr %histogram, align 16, !dbg !813, !tbaa !781
  %cmp28 = fcmp oeq double %smooth_threshold, 0.000000e+00, !dbg !814
  %4 = load ptr, ptr %extrema, align 16, !dbg !815, !tbaa !781
  br i1 %cmp28, label %cond.end35.thread, label %cond.false42, !dbg !816

cond.end35.thread:                                ; preds = %for.end25
  tail call fastcc void @OptimalTau(ptr noundef %3, double noundef 0x3FC99999A0000000, double noundef 1.000000e+00, ptr noundef %4), !dbg !817
  %arrayidx31602 = getelementptr inbounds [3 x ptr], ptr %histogram, i64 0, i64 1, !dbg !818
  %5 = load ptr, ptr %arrayidx31602, align 8, !dbg !818, !tbaa !781
  %arrayidx37604 = getelementptr inbounds [3 x ptr], ptr %extrema, i64 0, i64 1, !dbg !819
  %6 = load ptr, ptr %arrayidx37604, align 8, !dbg !819, !tbaa !781
  tail call fastcc void @OptimalTau(ptr noundef %5, double noundef 0x3FC99999A0000000, double noundef 1.000000e+00, ptr noundef %6), !dbg !820
  br label %cond.end43, !dbg !821

cond.false42:                                     ; preds = %for.end25
  tail call fastcc void @OptimalTau(ptr noundef %3, double noundef 0x3FC99999A0000000, double noundef %smooth_threshold, ptr noundef %4), !dbg !817
  %arrayidx31 = getelementptr inbounds [3 x ptr], ptr %histogram, i64 0, i64 1, !dbg !818
  %7 = load ptr, ptr %arrayidx31, align 8, !dbg !818, !tbaa !781
  %arrayidx37 = getelementptr inbounds [3 x ptr], ptr %extrema, i64 0, i64 1, !dbg !819
  %8 = load ptr, ptr %arrayidx37, align 8, !dbg !819, !tbaa !781
  tail call fastcc void @OptimalTau(ptr noundef %7, double noundef 0x3FC99999A0000000, double noundef %smooth_threshold, ptr noundef %8), !dbg !820
  br label %cond.end43, !dbg !821

cond.end43:                                       ; preds = %cond.end35.thread, %cond.false42
  %arrayidx37606 = phi ptr [ %arrayidx37, %cond.false42 ], [ %arrayidx37604, %cond.end35.thread ]
  %cond44 = phi double [ %smooth_threshold, %cond.false42 ], [ 1.000000e+00, %cond.end35.thread ], !dbg !821
  %arrayidx39605 = getelementptr inbounds [3 x ptr], ptr %histogram, i64 0, i64 2, !dbg !822
  %9 = load ptr, ptr %arrayidx39605, align 16, !dbg !822, !tbaa !781
  %arrayidx45 = getelementptr inbounds [3 x ptr], ptr %extrema, i64 0, i64 2, !dbg !823
  %10 = load ptr, ptr %arrayidx45, align 16, !dbg !823, !tbaa !781
  tail call fastcc void @OptimalTau(ptr noundef %9, double noundef 0x3FC99999A0000000, double noundef %cond44, ptr noundef %10), !dbg !824
  call void @llvm.dbg.value(metadata ptr null, metadata !717, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr null, metadata !719, metadata !DIExpression()), !dbg !738
  %call47 = call ptr @ResetMagickMemory(ptr noundef nonnull %red, i32 noundef 0, i64 noundef 32) #14, !dbg !825
  %call48 = call ptr @ResetMagickMemory(ptr noundef nonnull %green, i32 noundef 0, i64 noundef 32) #14, !dbg !826
  %call49 = call ptr @ResetMagickMemory(ptr noundef nonnull %blue, i32 noundef 0, i64 noundef 32) #14, !dbg !827
  %left.i = getelementptr inbounds %struct._ExtentPacket, ptr %red, i64 0, i32 2
  %right.i = getelementptr inbounds %struct._ExtentPacket, ptr %red, i64 0, i32 3
  %index.i = getelementptr inbounds %struct._ExtentPacket, ptr %red, i64 0, i32 1
  call void @llvm.dbg.value(metadata ptr %4, metadata !828, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata ptr %red, metadata !836, metadata !DIExpression()), !dbg !837
  store i64 0, ptr %left.i, align 8, !dbg !839, !tbaa !840
  store float 0.000000e+00, ptr %red, align 8, !dbg !843, !tbaa !844
  store i64 255, ptr %right.i, align 8, !dbg !845, !tbaa !846
  %index.promoted.i669 = load i64, ptr %index.i, align 8, !tbaa !847
  %cmp51.i670 = icmp slt i64 %index.promoted.i669, 256, !dbg !848
  br i1 %cmp51.i670, label %for.body.i.preheader.lr.ph, label %if.then84, !dbg !851

for.body.i.preheader.lr.ph:                       ; preds = %cond.end43
  %index = getelementptr inbounds %struct._ExtentPacket, ptr %green, i64 0, i32 1
  %left.i492 = getelementptr inbounds %struct._ExtentPacket, ptr %green, i64 0, i32 2
  %right.i493 = getelementptr inbounds %struct._ExtentPacket, ptr %green, i64 0, i32 3
  %index58 = getelementptr inbounds %struct._ExtentPacket, ptr %blue, i64 0, i32 1
  %left.i519 = getelementptr inbounds %struct._ExtentPacket, ptr %blue, i64 0, i32 2
  %right.i520 = getelementptr inbounds %struct._ExtentPacket, ptr %blue, i64 0, i32 3
  br label %for.body.i.preheader, !dbg !851

for.body.i.preheader:                             ; preds = %for.body.i.preheader.lr.ph, %DefineRegion.exit518
  %11 = phi ptr [ %10, %for.body.i.preheader.lr.ph ], [ %20, %DefineRegion.exit518 ]
  %index.promoted.i673 = phi i64 [ %index.promoted.i669, %for.body.i.preheader.lr.ph ], [ %index.promoted.i, %DefineRegion.exit518 ]
  %12 = phi ptr [ %4, %for.body.i.preheader.lr.ph ], [ %21, %DefineRegion.exit518 ]
  %head.0672 = phi ptr [ null, %for.body.i.preheader.lr.ph ], [ %head.1635, %DefineRegion.exit518 ]
  %cluster.0671 = phi ptr [ null, %for.body.i.preheader.lr.ph ], [ %cluster.1638, %DefineRegion.exit518 ]
  call void @llvm.dbg.value(metadata ptr %head.0672, metadata !719, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %cluster.0671, metadata !717, metadata !DIExpression()), !dbg !738
  br label %for.body.i, !dbg !851

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %.pr.i = phi i64 [ %inc.i, %for.inc.i ], [ %index.promoted.i673, %for.body.i.preheader ]
  %arrayidx.i = getelementptr inbounds i16, ptr %12, i64 %.pr.i, !dbg !852
  %13 = load i16, ptr %arrayidx.i, align 2, !dbg !852, !tbaa !854
  %cmp2.i = icmp sgt i16 %13, 0, !dbg !855
  br i1 %cmp2.i, label %if.end9.i, label %for.inc.i, !dbg !856

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i64 %.pr.i, 1, !dbg !857
  store i64 %inc.i, ptr %index.i, align 8, !dbg !857, !tbaa !847
  %exitcond.not.i = icmp eq i64 %inc.i, 256, !dbg !848
  br i1 %exitcond.not.i, label %while.end82, label %for.body.i, !dbg !851, !llvm.loop !858

if.end9.i:                                        ; preds = %for.body.i
  store i64 %.pr.i, ptr %left.i, align 8, !dbg !860, !tbaa !840
  %cmp1453.i = icmp sgt i64 %.pr.i, 255, !dbg !861
  br i1 %cmp1453.i, label %for.body.i500.preheader.preheader, label %for.inc24.i, !dbg !864

for.inc24.i:                                      ; preds = %if.end9.i, %for.inc24.for.body16_crit_edge.i
  %14 = phi i64 [ %inc26.i, %for.inc24.for.body16_crit_edge.i ], [ %.pr.i, %if.end9.i ]
  %inc26.i = add i64 %14, 1, !dbg !865
  %exitcond56.not.i = icmp eq i64 %inc26.i, 256, !dbg !861
  br i1 %exitcond56.not.i, label %for.body.i500.preheader.preheader.sink.split, label %for.inc24.for.body16_crit_edge.i, !dbg !864, !llvm.loop !866

for.inc24.for.body16_crit_edge.i:                 ; preds = %for.inc24.i
  %arrayidx18.phi.trans.insert.i = getelementptr inbounds i16, ptr %12, i64 %inc26.i
  %.pre.i = load i16, ptr %arrayidx18.phi.trans.insert.i, align 2, !dbg !868, !tbaa !854
  %cmp20.i = icmp slt i16 %.pre.i, 0, !dbg !870
  br i1 %cmp20.i, label %for.body.i500.preheader.preheader.sink.split, label %for.inc24.i, !dbg !871

for.body.i500.preheader.preheader.sink.split:     ; preds = %for.inc24.i, %for.inc24.for.body16_crit_edge.i
  %.sink = phi i64 [ %inc26.i, %for.inc24.for.body16_crit_edge.i ], [ 256, %for.inc24.i ]
  store i64 %.sink, ptr %index.i, align 8, !dbg !865, !tbaa !847
  br label %for.body.i500.preheader.preheader, !dbg !872

for.body.i500.preheader.preheader:                ; preds = %for.body.i500.preheader.preheader.sink.split, %if.end9.i
  %.lcssa.i = phi i64 [ %.pr.i, %if.end9.i ], [ %.sink, %for.body.i500.preheader.preheader.sink.split ], !dbg !873
  %sub.i = add nsw i64 %.lcssa.i, -1, !dbg !872
  store i64 %sub.i, ptr %right.i, align 8, !dbg !874, !tbaa !846
  store i64 0, ptr %index, align 8, !dbg !875, !tbaa !847
  call void @llvm.dbg.value(metadata ptr %head.0672, metadata !719, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %cluster.0671, metadata !717, metadata !DIExpression()), !dbg !738
  %15 = load ptr, ptr %arrayidx37606, align 8, !dbg !877, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %15, metadata !828, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata ptr %green, metadata !836, metadata !DIExpression()), !dbg !878
  store i64 0, ptr %left.i492, align 8, !dbg !880, !tbaa !840
  store float 0.000000e+00, ptr %green, align 8, !dbg !881, !tbaa !844
  store i64 255, ptr %right.i493, align 8, !dbg !882, !tbaa !846
  br label %for.body.i500.preheader, !dbg !883

for.body.i500.preheader:                          ; preds = %for.body.i500.preheader.preheader, %DefineRegion.exit545
  %16 = phi ptr [ %25, %DefineRegion.exit545 ], [ %11, %for.body.i500.preheader.preheader ]
  %index.promoted.i495666 = phi i64 [ %index.promoted.i495, %DefineRegion.exit545 ], [ 0, %for.body.i500.preheader.preheader ]
  %17 = phi ptr [ %26, %DefineRegion.exit545 ], [ %15, %for.body.i500.preheader.preheader ]
  %head.1665 = phi ptr [ %head.2629, %DefineRegion.exit545 ], [ %head.0672, %for.body.i500.preheader.preheader ]
  %cluster.1664 = phi ptr [ %cluster.2632, %DefineRegion.exit545 ], [ %cluster.0671, %for.body.i500.preheader.preheader ]
  call void @llvm.dbg.value(metadata ptr %head.1665, metadata !719, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %cluster.1664, metadata !717, metadata !DIExpression()), !dbg !738
  br label %for.body.i500, !dbg !883

for.body.i500:                                    ; preds = %for.body.i500.preheader, %for.inc.i503
  %.pr.i497 = phi i64 [ %inc.i501, %for.inc.i503 ], [ %index.promoted.i495666, %for.body.i500.preheader ]
  %arrayidx.i498 = getelementptr inbounds i16, ptr %17, i64 %.pr.i497, !dbg !884
  %18 = load i16, ptr %arrayidx.i498, align 2, !dbg !884, !tbaa !854
  %cmp2.i499 = icmp sgt i16 %18, 0, !dbg !885
  br i1 %cmp2.i499, label %if.end9.i505, label %for.inc.i503, !dbg !886

for.inc.i503:                                     ; preds = %for.body.i500
  %inc.i501 = add i64 %.pr.i497, 1, !dbg !887
  store i64 %inc.i501, ptr %index, align 8, !dbg !887, !tbaa !847
  %exitcond.not.i502 = icmp eq i64 %inc.i501, 256, !dbg !888
  br i1 %exitcond.not.i502, label %DefineRegion.exit518, label %for.body.i500, !dbg !883, !llvm.loop !889

if.end9.i505:                                     ; preds = %for.body.i500
  store i64 %.pr.i497, ptr %left.i492, align 8, !dbg !891, !tbaa !840
  %cmp1453.i504 = icmp sgt i64 %.pr.i497, 255, !dbg !892
  br i1 %cmp1453.i504, label %for.body.i527.preheader.preheader, label %for.inc24.i510, !dbg !893

for.inc24.i510:                                   ; preds = %if.end9.i505, %for.inc24.for.body16_crit_edge.i513
  %19 = phi i64 [ %inc26.i508, %for.inc24.for.body16_crit_edge.i513 ], [ %.pr.i497, %if.end9.i505 ]
  %inc26.i508 = add i64 %19, 1, !dbg !894
  %exitcond56.not.i509 = icmp eq i64 %inc26.i508, 256, !dbg !892
  br i1 %exitcond56.not.i509, label %for.body.i527.preheader.preheader.sink.split, label %for.inc24.for.body16_crit_edge.i513, !dbg !893, !llvm.loop !895

for.inc24.for.body16_crit_edge.i513:              ; preds = %for.inc24.i510
  %arrayidx18.phi.trans.insert.i511 = getelementptr inbounds i16, ptr %17, i64 %inc26.i508
  %.pre.i512 = load i16, ptr %arrayidx18.phi.trans.insert.i511, align 2, !dbg !897, !tbaa !854
  %cmp20.i506 = icmp slt i16 %.pre.i512, 0, !dbg !898
  br i1 %cmp20.i506, label %for.body.i527.preheader.preheader.sink.split, label %for.inc24.i510, !dbg !899

DefineRegion.exit518:                             ; preds = %DefineRegion.exit545, %for.inc.i503
  %20 = phi ptr [ %16, %for.inc.i503 ], [ %25, %DefineRegion.exit545 ]
  %cluster.1638 = phi ptr [ %cluster.1664, %for.inc.i503 ], [ %cluster.2632, %DefineRegion.exit545 ]
  %head.1635 = phi ptr [ %head.1665, %for.inc.i503 ], [ %head.2629, %DefineRegion.exit545 ]
  call void @llvm.dbg.value(metadata ptr %head.1635, metadata !719, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %cluster.1638, metadata !717, metadata !DIExpression()), !dbg !738
  %21 = load ptr, ptr %extrema, align 16, !dbg !900, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %21, metadata !828, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata ptr %red, metadata !836, metadata !DIExpression()), !dbg !837
  store i64 0, ptr %left.i, align 8, !dbg !839, !tbaa !840
  store float 0.000000e+00, ptr %red, align 8, !dbg !843, !tbaa !844
  store i64 255, ptr %right.i, align 8, !dbg !845, !tbaa !846
  %index.promoted.i = load i64, ptr %index.i, align 8, !tbaa !847
  %cmp51.i = icmp slt i64 %index.promoted.i, 256, !dbg !848
  br i1 %cmp51.i, label %for.body.i.preheader, label %while.end82, !dbg !851

for.body.i527.preheader.preheader.sink.split:     ; preds = %for.inc24.for.body16_crit_edge.i513, %for.inc24.i510
  %inc26.i508.lcssa772.sink = phi i64 [ 256, %for.inc24.i510 ], [ %inc26.i508, %for.inc24.for.body16_crit_edge.i513 ]
  store i64 %inc26.i508.lcssa772.sink, ptr %index, align 8, !dbg !894, !tbaa !847
  br label %for.body.i527.preheader.preheader, !dbg !901

for.body.i527.preheader.preheader:                ; preds = %for.body.i527.preheader.preheader.sink.split, %if.end9.i505
  %.lcssa.i514 = phi i64 [ %.pr.i497, %if.end9.i505 ], [ %inc26.i508.lcssa772.sink, %for.body.i527.preheader.preheader.sink.split ], !dbg !902
  %sub.i515 = add nsw i64 %.lcssa.i514, -1, !dbg !901
  store i64 %sub.i515, ptr %right.i493, align 8, !dbg !903, !tbaa !846
  call void @llvm.dbg.value(metadata ptr %head.1665, metadata !719, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %cluster.1664, metadata !717, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %16, metadata !828, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr %blue, metadata !836, metadata !DIExpression()), !dbg !904
  store float 0.000000e+00, ptr %blue, align 8, !dbg !907, !tbaa !844
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %index58, i8 0, i64 16, i1 false), !dbg !908
  store i64 255, ptr %right.i520, align 8, !dbg !909, !tbaa !846
  br label %for.body.i527.preheader, !dbg !910

for.body.i527.preheader:                          ; preds = %for.body.i527.preheader.preheader, %if.end75
  %22 = phi ptr [ %27, %if.end75 ], [ %16, %for.body.i527.preheader.preheader ]
  %index.promoted.i522659 = phi i64 [ %index.promoted.i522, %if.end75 ], [ 0, %for.body.i527.preheader.preheader ]
  %head.2658 = phi ptr [ %head.3, %if.end75 ], [ %head.1665, %for.body.i527.preheader.preheader ]
  %cluster.2657 = phi ptr [ %call68, %if.end75 ], [ %cluster.1664, %for.body.i527.preheader.preheader ]
  call void @llvm.dbg.value(metadata ptr %head.2658, metadata !719, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %cluster.2657, metadata !717, metadata !DIExpression()), !dbg !738
  br label %for.body.i527, !dbg !911

for.body.i527:                                    ; preds = %for.body.i527.preheader, %for.inc.i530
  %.pr.i524 = phi i64 [ %inc.i528, %for.inc.i530 ], [ %index.promoted.i522659, %for.body.i527.preheader ]
  %arrayidx.i525 = getelementptr inbounds i16, ptr %22, i64 %.pr.i524, !dbg !912
  %23 = load i16, ptr %arrayidx.i525, align 2, !dbg !912, !tbaa !854
  %cmp2.i526 = icmp sgt i16 %23, 0, !dbg !913
  br i1 %cmp2.i526, label %if.end9.i532, label %for.inc.i530, !dbg !914

for.inc.i530:                                     ; preds = %for.body.i527
  %inc.i528 = add i64 %.pr.i524, 1, !dbg !915
  store i64 %inc.i528, ptr %index58, align 8, !dbg !915, !tbaa !847
  %exitcond.not.i529 = icmp eq i64 %inc.i528, 256, !dbg !916
  br i1 %exitcond.not.i529, label %DefineRegion.exit545, label %for.body.i527, !dbg !911, !llvm.loop !917

if.end9.i532:                                     ; preds = %for.body.i527
  store i64 %.pr.i524, ptr %left.i519, align 8, !dbg !919, !tbaa !840
  %cmp1453.i531 = icmp sgt i64 %.pr.i524, 255, !dbg !920
  br i1 %cmp1453.i531, label %while.body63, label %for.inc24.i537, !dbg !921

for.inc24.i537:                                   ; preds = %if.end9.i532, %for.inc24.for.body16_crit_edge.i540
  %24 = phi i64 [ %inc26.i535, %for.inc24.for.body16_crit_edge.i540 ], [ %.pr.i524, %if.end9.i532 ]
  %inc26.i535 = add i64 %24, 1, !dbg !922
  %exitcond56.not.i536 = icmp eq i64 %inc26.i535, 256, !dbg !920
  br i1 %exitcond56.not.i536, label %while.body63.sink.split, label %for.inc24.for.body16_crit_edge.i540, !dbg !921, !llvm.loop !923

for.inc24.for.body16_crit_edge.i540:              ; preds = %for.inc24.i537
  %arrayidx18.phi.trans.insert.i538 = getelementptr inbounds i16, ptr %22, i64 %inc26.i535
  %.pre.i539 = load i16, ptr %arrayidx18.phi.trans.insert.i538, align 2, !dbg !925, !tbaa !854
  %cmp20.i533 = icmp slt i16 %.pre.i539, 0, !dbg !926
  br i1 %cmp20.i533, label %while.body63.sink.split, label %for.inc24.i537, !dbg !927

DefineRegion.exit545:                             ; preds = %if.end75, %for.inc.i530
  %25 = phi ptr [ %22, %for.inc.i530 ], [ %27, %if.end75 ]
  %cluster.2632 = phi ptr [ %cluster.2657, %for.inc.i530 ], [ %call68, %if.end75 ]
  %head.2629 = phi ptr [ %head.2658, %for.inc.i530 ], [ %head.3, %if.end75 ]
  call void @llvm.dbg.value(metadata ptr %head.2629, metadata !719, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %cluster.2632, metadata !717, metadata !DIExpression()), !dbg !738
  %26 = load ptr, ptr %arrayidx37606, align 8, !dbg !877, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %26, metadata !828, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata ptr %green, metadata !836, metadata !DIExpression()), !dbg !878
  store i64 0, ptr %left.i492, align 8, !dbg !880, !tbaa !840
  store float 0.000000e+00, ptr %green, align 8, !dbg !881, !tbaa !844
  store i64 255, ptr %right.i493, align 8, !dbg !882, !tbaa !846
  %index.promoted.i495 = load i64, ptr %index, align 8, !tbaa !847
  %cmp51.i496 = icmp slt i64 %index.promoted.i495, 256, !dbg !888
  br i1 %cmp51.i496, label %for.body.i500.preheader, label %DefineRegion.exit518, !dbg !883

while.body63.sink.split:                          ; preds = %for.inc24.for.body16_crit_edge.i540, %for.inc24.i537
  %.sink795 = phi i64 [ 256, %for.inc24.i537 ], [ %inc26.i535, %for.inc24.for.body16_crit_edge.i540 ]
  store i64 %.sink795, ptr %index58, align 8, !dbg !922, !tbaa !847
  br label %while.body63, !dbg !928

while.body63:                                     ; preds = %while.body63.sink.split, %if.end9.i532
  %.lcssa.i541 = phi i64 [ %.pr.i524, %if.end9.i532 ], [ %.sink795, %while.body63.sink.split ], !dbg !929
  %sub.i542 = add nsw i64 %.lcssa.i541, -1, !dbg !928
  store i64 %sub.i542, ptr %right.i520, align 8, !dbg !930, !tbaa !846
  %cmp64.not = icmp eq ptr %head.2658, null, !dbg !931
  %call68 = call ptr @AcquireMagickMemory(i64 noundef 120) #16, !dbg !934
  br i1 %cmp64.not, label %if.end69, label %if.then65, !dbg !935

if.then65:                                        ; preds = %while.body63
  store ptr %call68, ptr %cluster.2657, align 8, !dbg !936, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %call68, metadata !717, metadata !DIExpression()), !dbg !738
  br label %if.end69, !dbg !940

if.end69:                                         ; preds = %while.body63, %if.then65
  %head.3 = phi ptr [ %head.2658, %if.then65 ], [ %call68, %while.body63 ], !dbg !738
  call void @llvm.dbg.value(metadata ptr %head.3, metadata !719, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %call68, metadata !717, metadata !DIExpression()), !dbg !738
  %cmp70 = icmp eq ptr %call68, null, !dbg !941
  br i1 %cmp70, label %if.then71, label %if.end75, !dbg !943

if.then71:                                        ; preds = %if.end69
  %filename72 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !944
  %call74 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1055, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename72) #14, !dbg !946
  br label %cleanup, !dbg !947

if.end75:                                         ; preds = %if.end69
  %count76 = getelementptr inbounds %struct._Cluster, ptr %call68, i64 0, i32 4, !dbg !948
  store i64 0, ptr %count76, align 8, !dbg !949, !tbaa !950
  %red77 = getelementptr inbounds %struct._Cluster, ptr %call68, i64 0, i32 1, !dbg !951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %red77, ptr noundef nonnull align 8 dereferenceable(32) %red, i64 32, i1 false), !dbg !952, !tbaa.struct !953
  %green78 = getelementptr inbounds %struct._Cluster, ptr %call68, i64 0, i32 2, !dbg !956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %green78, ptr noundef nonnull align 8 dereferenceable(32) %green, i64 32, i1 false), !dbg !957, !tbaa.struct !953
  %blue79 = getelementptr inbounds %struct._Cluster, ptr %call68, i64 0, i32 3, !dbg !958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %blue79, ptr noundef nonnull align 8 dereferenceable(32) %blue, i64 32, i1 false), !dbg !959, !tbaa.struct !953
  store ptr null, ptr %call68, align 8, !dbg !960, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %head.3, metadata !719, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %call68, metadata !717, metadata !DIExpression()), !dbg !738
  %27 = load ptr, ptr %arrayidx45, align 16, !dbg !961, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %27, metadata !828, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr %blue, metadata !836, metadata !DIExpression()), !dbg !904
  store i64 0, ptr %left.i519, align 8, !dbg !908, !tbaa !840
  store float 0.000000e+00, ptr %blue, align 8, !dbg !907, !tbaa !844
  store i64 255, ptr %right.i520, align 8, !dbg !909, !tbaa !846
  %index.promoted.i522 = load i64, ptr %index58, align 8, !tbaa !847
  %cmp51.i523 = icmp slt i64 %index.promoted.i522, 256, !dbg !916
  br i1 %cmp51.i523, label %for.body.i527.preheader, label %DefineRegion.exit545, !dbg !911, !llvm.loop !962

while.end82:                                      ; preds = %DefineRegion.exit518, %for.inc.i
  %head.0641 = phi ptr [ %head.0672, %for.inc.i ], [ %head.1635, %DefineRegion.exit518 ]
  %cmp83 = icmp eq ptr %head.0641, null, !dbg !964
  br i1 %cmp83, label %if.then84, label %if.end97, !dbg !966

if.then84:                                        ; preds = %cond.end43, %while.end82
  %call85 = call ptr @AcquireMagickMemory(i64 noundef 120) #16, !dbg !967
  call void @llvm.dbg.value(metadata ptr %call85, metadata !717, metadata !DIExpression()), !dbg !738
  %cmp86 = icmp eq ptr %call85, null, !dbg !969
  br i1 %cmp86, label %if.then87, label %if.end91, !dbg !971

if.then87:                                        ; preds = %if.then84
  %filename88 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !972
  %call90 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1079, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename88) #14, !dbg !974
  br label %cleanup, !dbg !975

if.end91:                                         ; preds = %if.then84
  %count92 = getelementptr inbounds %struct._Cluster, ptr %call85, i64 0, i32 4, !dbg !976
  store i64 0, ptr %count92, align 8, !dbg !977, !tbaa !950
  %red93 = getelementptr inbounds %struct._Cluster, ptr %call85, i64 0, i32 1, !dbg !978
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %red93, ptr noundef nonnull align 8 dereferenceable(32) %red, i64 32, i1 false), !dbg !979, !tbaa.struct !953
  %green94 = getelementptr inbounds %struct._Cluster, ptr %call85, i64 0, i32 2, !dbg !980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %green94, ptr noundef nonnull align 8 dereferenceable(32) %green, i64 32, i1 false), !dbg !981, !tbaa.struct !953
  %blue95 = getelementptr inbounds %struct._Cluster, ptr %call85, i64 0, i32 3, !dbg !982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %blue95, ptr noundef nonnull align 8 dereferenceable(32) %blue, i64 32, i1 false), !dbg !983, !tbaa.struct !953
  store ptr null, ptr %call85, align 8, !dbg !984, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %call85, metadata !719, metadata !DIExpression()), !dbg !738
  br label %if.end97, !dbg !985

if.end97:                                         ; preds = %if.end91, %while.end82
  %head.4 = phi ptr [ %call85, %if.end91 ], [ %head.0641, %while.end82 ], !dbg !738
  call void @llvm.dbg.value(metadata ptr %head.4, metadata !719, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i64 0, metadata !734, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i64 0, metadata !737, metadata !DIExpression()), !dbg !738
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !986
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  %28 = load i64, ptr %rows, align 8, !dbg !990, !tbaa !991
  %cmp99687 = icmp sgt i64 %28, 0, !dbg !992
  br i1 %cmp99687, label %for.body100.lr.ph, label %for.body199.preheader, !dbg !993

for.body100.lr.ph:                                ; preds = %if.end97
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body100, !dbg !993

for.body100:                                      ; preds = %for.body100.lr.ph, %for.inc193
  %y.0689 = phi i64 [ 0, %for.body100.lr.ph ], [ %inc194, %for.inc193 ]
  call void @llvm.dbg.value(metadata i64 %y.0689, metadata !737, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i64 undef, metadata !734, metadata !DIExpression()), !dbg !738
  %29 = load i64, ptr %columns, align 8, !dbg !986, !tbaa !994
  %call101 = call ptr @GetVirtualPixels(ptr noundef nonnull %image, i64 noundef 0, i64 noundef %y.0689, i64 noundef %29, i64 noundef 1, ptr noundef %exception) #14, !dbg !995
  call void @llvm.dbg.value(metadata ptr %call101, metadata !727, metadata !DIExpression()), !dbg !738
  %cmp102 = icmp eq ptr %call101, null, !dbg !996
  br i1 %cmp102, label %for.end195, label %for.cond105.preheader, !dbg !998

for.cond105.preheader:                            ; preds = %for.body100
  %30 = load i64, ptr %columns, align 8, !tbaa !994
  call void @llvm.dbg.value(metadata i64 undef, metadata !734, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i64 0, metadata !729, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %call101, metadata !727, metadata !DIExpression()), !dbg !738
  %cmp107680 = icmp sgt i64 %30, 0, !dbg !999
  br i1 %cmp107680, label %for.cond109.preheader, label %for.end186, !dbg !1002

for.cond109.preheader:                            ; preds = %for.cond105.preheader, %for.end183
  %x.0684 = phi i64 [ %inc185, %for.end183 ], [ 0, %for.cond105.preheader ]
  %p.0681 = phi ptr [ %incdec.ptr, %for.end183 ], [ %call101, %for.cond105.preheader ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !734, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i64 %x.0684, metadata !729, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %p.0681, metadata !727, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %head.4, metadata !717, metadata !DIExpression()), !dbg !738
  %red112 = getelementptr inbounds %struct._PixelPacket, ptr %p.0681, i64 0, i32 2
  %31 = load i16, ptr %red112, align 2, !tbaa !1003
  %conv.i = zext i16 %31 to i64
  %add.i = add nuw nsw i64 %conv.i, 128
  %shr.i = lshr i64 %add.i, 8
  %sub.i546 = sub nsw i64 %add.i, %shr.i
  %shr3.i = lshr i64 %sub.i546, 8
  %conv = and i64 %shr3.i, 255
  %green124 = getelementptr inbounds %struct._PixelPacket, ptr %p.0681, i64 0, i32 1
  br label %for.body111, !dbg !1004

for.body111:                                      ; preds = %for.cond109.preheader, %for.inc181
  %cluster.4678 = phi ptr [ %head.4, %for.cond109.preheader ], [ %44, %for.inc181 ]
  call void @llvm.dbg.value(metadata ptr %cluster.4678, metadata !717, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i16 %31, metadata !1007, metadata !DIExpression()), !dbg !1013
  %left = getelementptr inbounds %struct._Cluster, ptr %cluster.4678, i64 0, i32 1, i32 2, !dbg !1017
  %32 = load i64, ptr %left, align 8, !dbg !1017, !tbaa !1018
  %sub = add nsw i64 %32, -3, !dbg !1019
  %cmp115.not = icmp sgt i64 %sub, %conv, !dbg !1020
  br i1 %cmp115.not, label %for.inc181, label %land.lhs.true, !dbg !1021

land.lhs.true:                                    ; preds = %for.body111
  call void @llvm.dbg.value(metadata i16 %31, metadata !1007, metadata !DIExpression()), !dbg !1022
  %right = getelementptr inbounds %struct._Cluster, ptr %cluster.4678, i64 0, i32 1, i32 3, !dbg !1024
  %33 = load i64, ptr %right, align 8, !dbg !1024, !tbaa !1025
  %add = add nsw i64 %33, 3, !dbg !1026
  %cmp121.not = icmp slt i64 %add, %conv, !dbg !1027
  br i1 %cmp121.not, label %for.inc181, label %land.lhs.true123, !dbg !1028

land.lhs.true123:                                 ; preds = %land.lhs.true
  %34 = load i16, ptr %green124, align 2, !dbg !1029, !tbaa !1030
  call void @llvm.dbg.value(metadata i16 %34, metadata !1007, metadata !DIExpression()), !dbg !1031
  %conv.i553 = zext i16 %34 to i64, !dbg !1033
  %add.i554 = add nuw nsw i64 %conv.i553, 128, !dbg !1034
  %shr.i555 = lshr i64 %add.i554, 8, !dbg !1035
  %sub.i556 = sub nsw i64 %add.i554, %shr.i555, !dbg !1036
  %shr3.i557 = lshr i64 %sub.i556, 8, !dbg !1037
  %conv126 = and i64 %shr3.i557, 255, !dbg !1038
  %left128 = getelementptr inbounds %struct._Cluster, ptr %cluster.4678, i64 0, i32 2, i32 2, !dbg !1039
  %35 = load i64, ptr %left128, align 8, !dbg !1039, !tbaa !1040
  %sub129 = add nsw i64 %35, -3, !dbg !1041
  %cmp130.not = icmp sgt i64 %sub129, %conv126, !dbg !1042
  br i1 %cmp130.not, label %for.inc181, label %land.lhs.true132, !dbg !1043

land.lhs.true132:                                 ; preds = %land.lhs.true123
  call void @llvm.dbg.value(metadata i16 %34, metadata !1007, metadata !DIExpression()), !dbg !1044
  %right137 = getelementptr inbounds %struct._Cluster, ptr %cluster.4678, i64 0, i32 2, i32 3, !dbg !1046
  %36 = load i64, ptr %right137, align 8, !dbg !1046, !tbaa !1047
  %add138 = add nsw i64 %36, 3, !dbg !1048
  %cmp139.not = icmp slt i64 %add138, %conv126, !dbg !1049
  br i1 %cmp139.not, label %for.inc181, label %land.lhs.true141, !dbg !1050

land.lhs.true141:                                 ; preds = %land.lhs.true132
  %37 = load i16, ptr %p.0681, align 2, !dbg !1051, !tbaa !1052
  call void @llvm.dbg.value(metadata i16 %37, metadata !1007, metadata !DIExpression()), !dbg !1053
  %conv.i565 = zext i16 %37 to i64, !dbg !1055
  %add.i566 = add nuw nsw i64 %conv.i565, 128, !dbg !1056
  %shr.i567 = lshr i64 %add.i566, 8, !dbg !1057
  %sub.i568 = sub nsw i64 %add.i566, %shr.i567, !dbg !1058
  %shr3.i569 = lshr i64 %sub.i568, 8, !dbg !1059
  %conv144 = and i64 %shr3.i569, 255, !dbg !1060
  %left146 = getelementptr inbounds %struct._Cluster, ptr %cluster.4678, i64 0, i32 3, i32 2, !dbg !1061
  %38 = load i64, ptr %left146, align 8, !dbg !1061, !tbaa !1062
  %sub147 = add nsw i64 %38, -3, !dbg !1063
  %cmp148.not = icmp sgt i64 %sub147, %conv144, !dbg !1064
  br i1 %cmp148.not, label %for.inc181, label %land.lhs.true150, !dbg !1065

land.lhs.true150:                                 ; preds = %land.lhs.true141
  call void @llvm.dbg.value(metadata i16 %37, metadata !1007, metadata !DIExpression()), !dbg !1066
  %right155 = getelementptr inbounds %struct._Cluster, ptr %cluster.4678, i64 0, i32 3, i32 3, !dbg !1068
  %39 = load i64, ptr %right155, align 8, !dbg !1068, !tbaa !1069
  %add156 = add nsw i64 %39, 3, !dbg !1070
  %cmp157.not = icmp slt i64 %add156, %conv144, !dbg !1071
  br i1 %cmp157.not, label %for.inc181, label %if.then159, !dbg !1072

if.then159:                                       ; preds = %land.lhs.true150
  %conv4.i.le = trunc i64 %shr3.i to i8, !dbg !1073
  %red114.le = getelementptr inbounds %struct._Cluster, ptr %cluster.4678, i64 0, i32 1, !dbg !1074
  %conv4.i558.le = trunc i64 %shr3.i557 to i8, !dbg !1075
  %green127.le = getelementptr inbounds %struct._Cluster, ptr %cluster.4678, i64 0, i32 2, !dbg !1076
  %conv4.i570.le = trunc i64 %shr3.i569 to i8, !dbg !1077
  %blue145.le = getelementptr inbounds %struct._Cluster, ptr %cluster.4678, i64 0, i32 3, !dbg !1078
  call void @llvm.dbg.value(metadata i64 undef, metadata !734, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !738
  call void @llvm.dbg.value(metadata i16 %31, metadata !1007, metadata !DIExpression()), !dbg !1079
  %conv163 = uitofp i8 %conv4.i.le to float, !dbg !1082
  %40 = load float, ptr %red114.le, align 8, !dbg !1083, !tbaa !1084
  %add165 = fadd float %40, %conv163, !dbg !1083
  store float %add165, ptr %red114.le, align 8, !dbg !1083, !tbaa !1084
  call void @llvm.dbg.value(metadata i16 %34, metadata !1007, metadata !DIExpression()), !dbg !1085
  %conv168 = uitofp i8 %conv4.i558.le to float, !dbg !1087
  %41 = load float, ptr %green127.le, align 8, !dbg !1088, !tbaa !1089
  %add171 = fadd float %41, %conv168, !dbg !1088
  store float %add171, ptr %green127.le, align 8, !dbg !1088, !tbaa !1089
  call void @llvm.dbg.value(metadata i16 %37, metadata !1007, metadata !DIExpression()), !dbg !1090
  %conv174 = uitofp i8 %conv4.i570.le to float, !dbg !1092
  %42 = load float, ptr %blue145.le, align 8, !dbg !1093, !tbaa !1094
  %add177 = fadd float %42, %conv174, !dbg !1093
  store float %add177, ptr %blue145.le, align 8, !dbg !1093, !tbaa !1094
  %count178 = getelementptr inbounds %struct._Cluster, ptr %cluster.4678, i64 0, i32 4, !dbg !1095
  %43 = load i64, ptr %count178, align 8, !dbg !1096, !tbaa !950
  %inc179 = add nsw i64 %43, 1, !dbg !1096
  store i64 %inc179, ptr %count178, align 8, !dbg !1096, !tbaa !950
  br label %for.end183, !dbg !1097

for.inc181:                                       ; preds = %for.body111, %land.lhs.true, %land.lhs.true123, %land.lhs.true132, %land.lhs.true141, %land.lhs.true150
  %44 = load ptr, ptr %cluster.4678, align 8, !dbg !1098, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %44, metadata !717, metadata !DIExpression()), !dbg !738
  %cmp110.not = icmp eq ptr %44, null, !dbg !1099
  br i1 %cmp110.not, label %for.end183, label %for.body111, !dbg !1004, !llvm.loop !1100

for.end183:                                       ; preds = %for.inc181, %if.then159
  call void @llvm.dbg.value(metadata i64 undef, metadata !734, metadata !DIExpression()), !dbg !738
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.0681, i64 1, !dbg !1102
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !727, metadata !DIExpression()), !dbg !738
  %inc185 = add nuw nsw i64 %x.0684, 1, !dbg !1103
  call void @llvm.dbg.value(metadata i64 %inc185, metadata !729, metadata !DIExpression()), !dbg !738
  %exitcond740.not = icmp eq i64 %inc185, %30, !dbg !999
  br i1 %exitcond740.not, label %for.end186, label %for.cond109.preheader, !dbg !1002, !llvm.loop !1104

for.end186:                                       ; preds = %for.end183, %for.cond105.preheader
  %45 = load i64, ptr %rows, align 8, !dbg !1106, !tbaa !991
  call void @llvm.dbg.value(metadata ptr %image, metadata !1107, metadata !DIExpression()) #14, !dbg !1117
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1113, metadata !DIExpression()) #14, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %y.0689, metadata !1114, metadata !DIExpression()) #14, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %45, metadata !1115, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #14, !dbg !1117
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #14, !dbg !1119
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1116, metadata !DIExpression()) #14, !dbg !1120
  %46 = load ptr, ptr %progress_monitor.i, align 8, !dbg !1121, !tbaa !1123
  %cmp.i = icmp eq ptr %46, null, !dbg !1124
  br i1 %cmp.i, label %SetImageProgress.exit.thread, label %SetImageProgress.exit, !dbg !1125

SetImageProgress.exit.thread:                     ; preds = %for.end186
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #14, !dbg !1126
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !725, metadata !DIExpression()), !dbg !738
  br label %for.inc193, !dbg !1127

SetImageProgress.exit:                            ; preds = %for.end186
  %mul = shl i64 %45, 1, !dbg !1128
  call void @llvm.dbg.value(metadata i64 %mul, metadata !1115, metadata !DIExpression()) #14, !dbg !1117
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename.i) #14, !dbg !1129
  %47 = load ptr, ptr %progress_monitor.i, align 8, !dbg !1130, !tbaa !1123
  %48 = load ptr, ptr %client_data.i, align 8, !dbg !1131, !tbaa !1132
  %call4.i = call i32 %47(ptr noundef nonnull %message.i, i64 noundef %y.0689, i64 noundef %mul, ptr noundef %48) #14, !dbg !1133
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #14, !dbg !1126
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !725, metadata !DIExpression()), !dbg !738
  %cmp189 = icmp eq i32 %call4.i, 0, !dbg !1134
  br i1 %cmp189, label %for.end195, label %SetImageProgress.exit.for.inc193_crit_edge, !dbg !1127

SetImageProgress.exit.for.inc193_crit_edge:       ; preds = %SetImageProgress.exit
  %.pre = load i64, ptr %rows, align 8, !dbg !990, !tbaa !991
  br label %for.inc193, !dbg !1127

for.inc193:                                       ; preds = %SetImageProgress.exit.for.inc193_crit_edge, %SetImageProgress.exit.thread
  %49 = phi i64 [ %.pre, %SetImageProgress.exit.for.inc193_crit_edge ], [ %45, %SetImageProgress.exit.thread ], !dbg !990
  %inc194 = add nuw nsw i64 %y.0689, 1, !dbg !1136
  call void @llvm.dbg.value(metadata i64 %inc194, metadata !737, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i64 undef, metadata !734, metadata !DIExpression()), !dbg !738
  %cmp99 = icmp slt i64 %inc194, %49, !dbg !992
  br i1 %cmp99, label %for.body100, label %for.end195, !dbg !993, !llvm.loop !1137

for.end195:                                       ; preds = %for.inc193, %for.body100, %SetImageProgress.exit
  call void @llvm.dbg.value(metadata i64 0, metadata !734, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %head.4, metadata !720, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %head.4, metadata !721, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %head.4, metadata !717, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %head.4, metadata !719, metadata !DIExpression()), !dbg !738
  %cmp197.not691 = icmp eq ptr %head.4, null, !dbg !1139
  br i1 %cmp197.not691, label %for.body327.preheader, label %for.body199.preheader, !dbg !1142

for.body199.preheader:                            ; preds = %if.end97, %for.end195
  br label %for.body199, !dbg !1142

for.body199:                                      ; preds = %for.body199.preheader, %for.inc236
  %count.3697 = phi i64 [ %count.4, %for.inc236 ], [ 0, %for.body199.preheader ]
  %last_cluster.0695 = phi ptr [ %last_cluster.1, %for.inc236 ], [ %head.4, %for.body199.preheader ]
  %head.5694 = phi ptr [ %head.7, %for.inc236 ], [ %head.4, %for.body199.preheader ]
  %cluster.5692 = phi ptr [ %50, %for.inc236 ], [ %head.4, %for.body199.preheader ]
  call void @llvm.dbg.value(metadata i64 %count.3697, metadata !734, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %last_cluster.0695, metadata !720, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %head.5694, metadata !719, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %cluster.5692, metadata !717, metadata !DIExpression()), !dbg !738
  %50 = load ptr, ptr %cluster.5692, align 8, !dbg !1143, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %50, metadata !721, metadata !DIExpression()), !dbg !738
  %count201 = getelementptr inbounds %struct._Cluster, ptr %cluster.5692, i64 0, i32 4, !dbg !1145
  %51 = load i64, ptr %count201, align 8, !dbg !1145, !tbaa !950
  %cmp202 = icmp sgt i64 %51, 0, !dbg !1147
  br i1 %cmp202, label %land.lhs.true204, label %if.end228, !dbg !1148

land.lhs.true204:                                 ; preds = %for.body199
  %conv206 = sitofp i64 %51 to double, !dbg !1149
  %conv207 = sitofp i64 %count.3697 to double, !dbg !1150
  %mul208 = fmul double %conv207, %cluster_threshold, !dbg !1151
  %div = fdiv double %mul208, 1.000000e+02, !dbg !1152
  %cmp209 = fcmp ugt double %div, %conv206, !dbg !1153
  br i1 %cmp209, label %if.end228, label %if.then211, !dbg !1154

if.then211:                                       ; preds = %land.lhs.true204
  %id = getelementptr inbounds %struct._Cluster, ptr %cluster.5692, i64 0, i32 5, !dbg !1155
  store i64 %count.3697, ptr %id, align 8, !dbg !1157, !tbaa !1158
  %conv213 = sitofp i64 %51 to float, !dbg !1159
  %red214 = getelementptr inbounds %struct._Cluster, ptr %cluster.5692, i64 0, i32 1, !dbg !1160
  %52 = load float, ptr %red214, align 8, !dbg !1161, !tbaa !1084
  %div216 = fdiv float %52, %conv213, !dbg !1161
  store float %div216, ptr %red214, align 8, !dbg !1161, !tbaa !1084
  %green219 = getelementptr inbounds %struct._Cluster, ptr %cluster.5692, i64 0, i32 2, !dbg !1162
  %53 = load float, ptr %green219, align 8, !dbg !1163, !tbaa !1089
  %div221 = fdiv float %53, %conv213, !dbg !1163
  store float %div221, ptr %green219, align 8, !dbg !1163, !tbaa !1089
  %blue224 = getelementptr inbounds %struct._Cluster, ptr %cluster.5692, i64 0, i32 3, !dbg !1164
  %54 = load float, ptr %blue224, align 8, !dbg !1165, !tbaa !1094
  %div226 = fdiv float %54, %conv213, !dbg !1165
  store float %div226, ptr %blue224, align 8, !dbg !1165, !tbaa !1094
  %inc227 = add nsw i64 %count.3697, 1, !dbg !1166
  call void @llvm.dbg.value(metadata i64 %inc227, metadata !734, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %cluster.5692, metadata !720, metadata !DIExpression()), !dbg !738
  br label %for.inc236, !dbg !1167

if.end228:                                        ; preds = %land.lhs.true204, %for.body199
  %cmp229 = icmp eq ptr %cluster.5692, %head.5694, !dbg !1168
  br i1 %cmp229, label %if.end234, label %if.else232, !dbg !1170

if.else232:                                       ; preds = %if.end228
  store ptr %50, ptr %last_cluster.0695, align 8, !dbg !1171, !tbaa !938
  br label %if.end234

if.end234:                                        ; preds = %if.end228, %if.else232
  %head.6 = phi ptr [ %head.5694, %if.else232 ], [ %50, %if.end228 ], !dbg !738
  call void @llvm.dbg.value(metadata ptr %head.6, metadata !719, metadata !DIExpression()), !dbg !738
  %call235 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %cluster.5692) #14, !dbg !1172
  call void @llvm.dbg.value(metadata ptr %call235, metadata !717, metadata !DIExpression()), !dbg !738
  br label %for.inc236, !dbg !1173

for.inc236:                                       ; preds = %if.end234, %if.then211
  %head.7 = phi ptr [ %head.5694, %if.then211 ], [ %head.6, %if.end234 ], !dbg !738
  %last_cluster.1 = phi ptr [ %cluster.5692, %if.then211 ], [ %last_cluster.0695, %if.end234 ], !dbg !738
  %count.4 = phi i64 [ %inc227, %if.then211 ], [ %count.3697, %if.end234 ], !dbg !738
  call void @llvm.dbg.value(metadata i64 %count.4, metadata !734, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %last_cluster.1, metadata !720, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %head.7, metadata !719, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %50, metadata !717, metadata !DIExpression()), !dbg !738
  %cmp197.not = icmp eq ptr %50, null, !dbg !1139
  br i1 %cmp197.not, label %for.end237, label %for.body199, !dbg !1142, !llvm.loop !1174

for.end237:                                       ; preds = %for.inc236
  call void @llvm.dbg.value(metadata ptr %head.7, metadata !718, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %head.7, metadata !716, metadata !DIExpression()), !dbg !738
  %cmp238 = icmp sgt i64 %count.4, 1, !dbg !1176
  br i1 %cmp238, label %if.then240, label %if.end269, !dbg !1178

if.then240:                                       ; preds = %for.end237
  %55 = load ptr, ptr %head.7, align 8, !dbg !1179, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %55, metadata !718, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %55, metadata !717, metadata !DIExpression()), !dbg !738
  %56 = load ptr, ptr %55, align 8, !dbg !1181, !tbaa !938
  %cmp244.not700 = icmp eq ptr %56, null, !dbg !1184
  br i1 %cmp244.not700, label %if.then272, label %for.body246, !dbg !1185

for.cond256.preheader:                            ; preds = %for.body246
  call void @llvm.dbg.value(metadata ptr %55, metadata !716, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %55, metadata !717, metadata !DIExpression()), !dbg !738
  br i1 %cmp244.not700, label %if.end269, label %for.body260, !dbg !1186

for.body246:                                      ; preds = %if.then240, %for.body246
  %57 = phi ptr [ %60, %for.body246 ], [ %56, %if.then240 ]
  %object.0702 = phi ptr [ %spec.select, %for.body246 ], [ %55, %if.then240 ]
  %cluster.6701 = phi ptr [ %57, %for.body246 ], [ %55, %if.then240 ]
  call void @llvm.dbg.value(metadata ptr %object.0702, metadata !718, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %cluster.6701, metadata !717, metadata !DIExpression()), !dbg !738
  %count247 = getelementptr inbounds %struct._Cluster, ptr %cluster.6701, i64 0, i32 4, !dbg !1188
  %58 = load i64, ptr %count247, align 8, !dbg !1188, !tbaa !950
  %count248 = getelementptr inbounds %struct._Cluster, ptr %object.0702, i64 0, i32 4, !dbg !1191
  %59 = load i64, ptr %count248, align 8, !dbg !1191, !tbaa !950
  %cmp249 = icmp slt i64 %58, %59, !dbg !1192
  %spec.select = select i1 %cmp249, ptr %cluster.6701, ptr %object.0702, !dbg !1193
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !718, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %57, metadata !717, metadata !DIExpression()), !dbg !738
  %60 = load ptr, ptr %57, align 8, !dbg !1181, !tbaa !938
  %cmp244.not = icmp eq ptr %60, null, !dbg !1184
  br i1 %cmp244.not, label %for.cond256.preheader, label %for.body246, !dbg !1185, !llvm.loop !1194

for.body260:                                      ; preds = %for.cond256.preheader, %for.body260
  %61 = phi ptr [ %64, %for.body260 ], [ %56, %for.cond256.preheader ]
  %background.0706 = phi ptr [ %spec.select491, %for.body260 ], [ %55, %for.cond256.preheader ]
  %cluster.7705 = phi ptr [ %61, %for.body260 ], [ %55, %for.cond256.preheader ]
  call void @llvm.dbg.value(metadata ptr %background.0706, metadata !716, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %cluster.7705, metadata !717, metadata !DIExpression()), !dbg !738
  %count261 = getelementptr inbounds %struct._Cluster, ptr %cluster.7705, i64 0, i32 4, !dbg !1196
  %62 = load i64, ptr %count261, align 8, !dbg !1196, !tbaa !950
  %count262 = getelementptr inbounds %struct._Cluster, ptr %background.0706, i64 0, i32 4, !dbg !1200
  %63 = load i64, ptr %count262, align 8, !dbg !1200, !tbaa !950
  %cmp263 = icmp sgt i64 %62, %63, !dbg !1201
  %spec.select491 = select i1 %cmp263, ptr %cluster.7705, ptr %background.0706, !dbg !1202
  call void @llvm.dbg.value(metadata ptr %spec.select491, metadata !716, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %61, metadata !717, metadata !DIExpression()), !dbg !738
  %64 = load ptr, ptr %61, align 8, !dbg !1203, !tbaa !938
  %cmp258.not = icmp eq ptr %64, null, !dbg !1204
  br i1 %cmp258.not, label %if.end269, label %for.body260, !dbg !1186, !llvm.loop !1205

if.end269:                                        ; preds = %for.body260, %for.cond256.preheader, %for.end237
  %object.2 = phi ptr [ %head.7, %for.end237 ], [ %spec.select, %for.cond256.preheader ], [ %spec.select, %for.body260 ], !dbg !738
  %background.2 = phi ptr [ %head.7, %for.end237 ], [ %55, %for.cond256.preheader ], [ %spec.select491, %for.body260 ], !dbg !738
  call void @llvm.dbg.value(metadata ptr %background.2, metadata !716, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata ptr %object.2, metadata !718, metadata !DIExpression()), !dbg !738
  %cmp270.not = icmp eq ptr %background.2, null, !dbg !1207
  br i1 %cmp270.not, label %if.end315, label %if.then272, !dbg !1209

if.then272:                                       ; preds = %if.then240, %if.end269
  %background.2762 = phi ptr [ %background.2, %if.end269 ], [ %55, %if.then240 ]
  %object.2761 = phi ptr [ %object.2, %if.end269 ], [ %55, %if.then240 ]
  %red273 = getelementptr inbounds %struct._Cluster, ptr %background.2762, i64 0, i32 1, !dbg !1210
  %65 = load float, ptr %red273, align 8, !dbg !1212, !tbaa !1084
  %red275 = getelementptr inbounds %struct._Cluster, ptr %object.2761, i64 0, i32 1, !dbg !1213
  %66 = load float, ptr %red275, align 8, !dbg !1214, !tbaa !1084
  %add277 = fadd float %65, %66, !dbg !1215
  %conv280 = fmul float %add277, 5.000000e-01, !dbg !1216
  call void @llvm.dbg.value(metadata float %conv280, metadata !726, metadata !DIExpression()), !dbg !738
  %conv281 = fpext float %conv280 to double, !dbg !1217
  %add282 = fadd double %conv281, 5.000000e-01, !dbg !1218
  %conv283 = fptoui double %add282 to i8, !dbg !1219
  call void @llvm.dbg.value(metadata i8 %conv283, metadata !1220, metadata !DIExpression()), !dbg !1227
  %conv.i596 = zext i8 %conv283 to i16, !dbg !1229
  %mul.i = mul nuw i16 %conv.i596, 257, !dbg !1230
  %conv285 = uitofp i16 %mul.i to float, !dbg !1231
  %red286 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5, !dbg !1232
  store float %conv285, ptr %red286, align 8, !dbg !1233, !tbaa !1234
  %green287 = getelementptr inbounds %struct._Cluster, ptr %background.2762, i64 0, i32 2, !dbg !1236
  %67 = load float, ptr %green287, align 8, !dbg !1237, !tbaa !1089
  %green289 = getelementptr inbounds %struct._Cluster, ptr %object.2761, i64 0, i32 2, !dbg !1238
  %68 = load float, ptr %green289, align 8, !dbg !1239, !tbaa !1089
  %add291 = fadd float %67, %68, !dbg !1240
  %conv294 = fmul float %add291, 5.000000e-01, !dbg !1241
  call void @llvm.dbg.value(metadata float %conv294, metadata !726, metadata !DIExpression()), !dbg !738
  %conv295 = fpext float %conv294 to double, !dbg !1242
  %add296 = fadd double %conv295, 5.000000e-01, !dbg !1243
  %conv297 = fptoui double %add296 to i8, !dbg !1244
  call void @llvm.dbg.value(metadata i8 %conv297, metadata !1220, metadata !DIExpression()), !dbg !1245
  %conv.i597 = zext i8 %conv297 to i16, !dbg !1247
  %mul.i598 = mul nuw i16 %conv.i597, 257, !dbg !1248
  %conv299 = uitofp i16 %mul.i598 to float, !dbg !1249
  %green300 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6, !dbg !1250
  store float %conv299, ptr %green300, align 4, !dbg !1251, !tbaa !1252
  %blue301 = getelementptr inbounds %struct._Cluster, ptr %background.2762, i64 0, i32 3, !dbg !1253
  %69 = load float, ptr %blue301, align 8, !dbg !1254, !tbaa !1094
  %blue303 = getelementptr inbounds %struct._Cluster, ptr %object.2761, i64 0, i32 3, !dbg !1255
  %70 = load float, ptr %blue303, align 8, !dbg !1256, !tbaa !1094
  %add305 = fadd float %69, %70, !dbg !1257
  %conv308 = fmul float %add305, 5.000000e-01, !dbg !1258
  call void @llvm.dbg.value(metadata float %conv308, metadata !726, metadata !DIExpression()), !dbg !738
  %conv309 = fpext float %conv308 to double, !dbg !1259
  %add310 = fadd double %conv309, 5.000000e-01, !dbg !1260
  %conv311 = fptoui double %add310 to i8, !dbg !1261
  call void @llvm.dbg.value(metadata i8 %conv311, metadata !1220, metadata !DIExpression()), !dbg !1262
  %conv.i599 = zext i8 %conv311 to i16, !dbg !1264
  %mul.i600 = mul nuw i16 %conv.i599, 257, !dbg !1265
  %conv313 = uitofp i16 %mul.i600 to float, !dbg !1266
  %blue314 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7, !dbg !1267
  store float %conv313, ptr %blue314, align 8, !dbg !1268, !tbaa !1269
  br label %if.end315, !dbg !1270

if.end315:                                        ; preds = %if.then272, %if.end269
  call void @llvm.dbg.value(metadata ptr %head.7, metadata !717, metadata !DIExpression()), !dbg !738
  %cmp317.not708 = icmp eq ptr %head.7, null, !dbg !1271
  br i1 %cmp317.not708, label %for.body327.preheader, label %for.body319, !dbg !1274

for.body319:                                      ; preds = %if.end315, %for.body319
  %cluster.8709 = phi ptr [ %71, %for.body319 ], [ %head.7, %if.end315 ]
  call void @llvm.dbg.value(metadata ptr %cluster.8709, metadata !717, metadata !DIExpression()), !dbg !738
  %71 = load ptr, ptr %cluster.8709, align 8, !dbg !1275, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %71, metadata !721, metadata !DIExpression()), !dbg !738
  %call321 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %cluster.8709) #14, !dbg !1277
  call void @llvm.dbg.value(metadata ptr %71, metadata !717, metadata !DIExpression()), !dbg !738
  %cmp317.not = icmp eq ptr %71, null, !dbg !1271
  br i1 %cmp317.not, label %for.body327.preheader, label %for.body319, !dbg !1274, !llvm.loop !1278

for.body327.preheader:                            ; preds = %for.body319, %for.end195, %if.end315
  br label %for.body327, !dbg !1280

for.body327:                                      ; preds = %for.body327.preheader, %for.body327
  %i.2710 = phi i64 [ %inc335, %for.body327 ], [ 0, %for.body327.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.2710, metadata !728, metadata !DIExpression()), !dbg !738
  %arrayidx328 = getelementptr inbounds [3 x ptr], ptr %extrema, i64 0, i64 %i.2710, !dbg !1282
  %72 = load ptr, ptr %arrayidx328, align 8, !dbg !1282, !tbaa !781
  %call329 = call ptr @RelinquishMagickMemory(ptr noundef %72) #14, !dbg !1285
  store ptr %call329, ptr %arrayidx328, align 8, !dbg !1286, !tbaa !781
  %arrayidx331 = getelementptr inbounds [3 x ptr], ptr %histogram, i64 0, i64 %i.2710, !dbg !1287
  %73 = load ptr, ptr %arrayidx331, align 8, !dbg !1287, !tbaa !781
  %call332 = call ptr @RelinquishMagickMemory(ptr noundef %73) #14, !dbg !1288
  store ptr %call332, ptr %arrayidx331, align 8, !dbg !1289, !tbaa !781
  %inc335 = add nuw nsw i64 %i.2710, 1, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %inc335, metadata !728, metadata !DIExpression()), !dbg !738
  %exitcond741.not = icmp eq i64 %inc335, 3, !dbg !1291
  br i1 %exitcond741.not, label %cleanup, label %for.body327, !dbg !1280, !llvm.loop !1292

cleanup:                                          ; preds = %for.body327, %if.then87, %if.then71, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ 0, %if.then71 ], [ 0, %if.then87 ], [ 1, %for.body327 ], !dbg !738
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %histogram) #14, !dbg !1294
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %extrema) #14, !dbg !1294
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %red) #14, !dbg !1294
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %green) #14, !dbg !1294
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %blue) #14, !dbg !1294
  ret i32 %retval.0, !dbg !1294
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1295 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1302 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare !dbg !1305 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1309 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

declare !dbg !1312 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @InitializeHistogram(ptr noundef %image, ptr nocapture noundef readonly %histogram, ptr noundef %exception) unnamed_addr #0 !dbg !1316 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1321, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata ptr %histogram, metadata !1322, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1323, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 0, metadata !1325, metadata !DIExpression()), !dbg !1328
  %0 = load ptr, ptr %histogram, align 8, !tbaa !781
  %arrayidx2 = getelementptr inbounds ptr, ptr %histogram, i64 1
  %1 = load ptr, ptr %arrayidx2, align 8, !tbaa !781
  %arrayidx4 = getelementptr inbounds ptr, ptr %histogram, i64 2
  %2 = load ptr, ptr %arrayidx4, align 8, !tbaa !781
  call void @llvm.dbg.value(metadata i64 0, metadata !1325, metadata !DIExpression()), !dbg !1328
  br label %for.body, !dbg !1329

for.cond6.preheader:                              ; preds = %for.body
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1331
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1327, metadata !DIExpression()), !dbg !1328
  %3 = load i64, ptr %rows, align 8, !dbg !1335, !tbaa !991
  %cmp769 = icmp sgt i64 %3, 0, !dbg !1336
  br i1 %cmp769, label %for.body8.lr.ph, label %for.end33, !dbg !1337

for.body8.lr.ph:                                  ; preds = %for.cond6.preheader
  %.pre = load i64, ptr %columns, align 8, !dbg !1331, !tbaa !994
  br label %for.body8, !dbg !1337

for.body:                                         ; preds = %entry, %for.body
  %i.065 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.065, metadata !1325, metadata !DIExpression()), !dbg !1328
  %arrayidx1 = getelementptr inbounds i64, ptr %0, i64 %i.065, !dbg !1338
  store i64 0, ptr %arrayidx1, align 8, !dbg !1341, !tbaa !955
  %arrayidx3 = getelementptr inbounds i64, ptr %1, i64 %i.065, !dbg !1342
  store i64 0, ptr %arrayidx3, align 8, !dbg !1343, !tbaa !955
  %arrayidx5 = getelementptr inbounds i64, ptr %2, i64 %i.065, !dbg !1344
  store i64 0, ptr %arrayidx5, align 8, !dbg !1345, !tbaa !955
  %inc = add nuw nsw i64 %i.065, 1, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1325, metadata !DIExpression()), !dbg !1328
  %exitcond.not = icmp eq i64 %inc, 256, !dbg !1347
  br i1 %exitcond.not, label %for.cond6.preheader, label %for.body, !dbg !1329, !llvm.loop !1348

for.body8:                                        ; preds = %for.body8.lr.ph, %for.inc31
  %4 = phi i64 [ %.pre, %for.body8.lr.ph ], [ %16, %for.inc31 ], !dbg !1331
  %y.070 = phi i64 [ 0, %for.body8.lr.ph ], [ %inc32, %for.inc31 ]
  call void @llvm.dbg.value(metadata i64 %y.070, metadata !1327, metadata !DIExpression()), !dbg !1328
  %call = tail call ptr @GetVirtualPixels(ptr noundef nonnull %image, i64 noundef 0, i64 noundef %y.070, i64 noundef %4, i64 noundef 1, ptr noundef %exception) #14, !dbg !1350
  call void @llvm.dbg.value(metadata ptr %call, metadata !1324, metadata !DIExpression()), !dbg !1328
  %cmp9 = icmp eq ptr %call, null, !dbg !1351
  br i1 %cmp9, label %for.end33, label %for.cond10.preheader, !dbg !1353

for.cond10.preheader:                             ; preds = %for.body8
  call void @llvm.dbg.value(metadata i64 0, metadata !1326, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata ptr %call, metadata !1324, metadata !DIExpression()), !dbg !1328
  %5 = load i64, ptr %columns, align 8, !dbg !1354, !tbaa !994
  %cmp1266 = icmp sgt i64 %5, 0, !dbg !1357
  br i1 %cmp1266, label %for.body13.lr.ph, label %for.inc31, !dbg !1358

for.body13.lr.ph:                                 ; preds = %for.cond10.preheader
  %6 = load ptr, ptr %histogram, align 8, !tbaa !781
  %7 = load ptr, ptr %arrayidx2, align 8, !tbaa !781
  %8 = load ptr, ptr %arrayidx4, align 8, !tbaa !781
  br label %for.body13, !dbg !1358

for.body13:                                       ; preds = %for.body13.lr.ph, %for.body13
  %x.068 = phi i64 [ 0, %for.body13.lr.ph ], [ %inc29, %for.body13 ]
  %p.067 = phi ptr [ %call, %for.body13.lr.ph ], [ %incdec.ptr, %for.body13 ]
  call void @llvm.dbg.value(metadata i64 %x.068, metadata !1326, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata ptr %p.067, metadata !1324, metadata !DIExpression()), !dbg !1328
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p.067, i64 0, i32 2, !dbg !1359
  %9 = load i16, ptr %red, align 2, !dbg !1359, !tbaa !1003
  call void @llvm.dbg.value(metadata i16 %9, metadata !1007, metadata !DIExpression()), !dbg !1361
  %conv.i = zext i16 %9 to i64, !dbg !1363
  %add.i = add nuw nsw i64 %conv.i, 128, !dbg !1364
  %shr.i = lshr i64 %add.i, 8, !dbg !1365
  %sub.i = sub nsw i64 %add.i, %shr.i, !dbg !1366
  %shr3.i = lshr i64 %sub.i, 8, !dbg !1367
  %conv = and i64 %shr3.i, 255, !dbg !1368
  %arrayidx16 = getelementptr inbounds i64, ptr %6, i64 %conv, !dbg !1369
  %10 = load i64, ptr %arrayidx16, align 8, !dbg !1370, !tbaa !955
  %inc17 = add nsw i64 %10, 1, !dbg !1370
  store i64 %inc17, ptr %arrayidx16, align 8, !dbg !1370, !tbaa !955
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p.067, i64 0, i32 1, !dbg !1371
  %11 = load i16, ptr %green, align 2, !dbg !1371, !tbaa !1030
  call void @llvm.dbg.value(metadata i16 %11, metadata !1007, metadata !DIExpression()), !dbg !1372
  %conv.i53 = zext i16 %11 to i64, !dbg !1374
  %add.i54 = add nuw nsw i64 %conv.i53, 128, !dbg !1375
  %shr.i55 = lshr i64 %add.i54, 8, !dbg !1376
  %sub.i56 = sub nsw i64 %add.i54, %shr.i55, !dbg !1377
  %shr3.i57 = lshr i64 %sub.i56, 8, !dbg !1378
  %conv20 = and i64 %shr3.i57, 255, !dbg !1379
  %arrayidx21 = getelementptr inbounds i64, ptr %7, i64 %conv20, !dbg !1380
  %12 = load i64, ptr %arrayidx21, align 8, !dbg !1381, !tbaa !955
  %inc22 = add nsw i64 %12, 1, !dbg !1381
  store i64 %inc22, ptr %arrayidx21, align 8, !dbg !1381, !tbaa !955
  %13 = load i16, ptr %p.067, align 2, !dbg !1382, !tbaa !1052
  call void @llvm.dbg.value(metadata i16 %13, metadata !1007, metadata !DIExpression()), !dbg !1383
  %conv.i59 = zext i16 %13 to i64, !dbg !1385
  %add.i60 = add nuw nsw i64 %conv.i59, 128, !dbg !1386
  %shr.i61 = lshr i64 %add.i60, 8, !dbg !1387
  %sub.i62 = sub nsw i64 %add.i60, %shr.i61, !dbg !1388
  %shr3.i63 = lshr i64 %sub.i62, 8, !dbg !1389
  %conv25 = and i64 %shr3.i63, 255, !dbg !1390
  %arrayidx26 = getelementptr inbounds i64, ptr %8, i64 %conv25, !dbg !1391
  %14 = load i64, ptr %arrayidx26, align 8, !dbg !1392, !tbaa !955
  %inc27 = add nsw i64 %14, 1, !dbg !1392
  store i64 %inc27, ptr %arrayidx26, align 8, !dbg !1392, !tbaa !955
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.067, i64 1, !dbg !1393
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1324, metadata !DIExpression()), !dbg !1328
  %inc29 = add nuw nsw i64 %x.068, 1, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %inc29, metadata !1326, metadata !DIExpression()), !dbg !1328
  %15 = load i64, ptr %columns, align 8, !dbg !1354, !tbaa !994
  %cmp12 = icmp slt i64 %inc29, %15, !dbg !1357
  br i1 %cmp12, label %for.body13, label %for.inc31, !dbg !1358, !llvm.loop !1395

for.inc31:                                        ; preds = %for.body13, %for.cond10.preheader
  %16 = phi i64 [ %5, %for.cond10.preheader ], [ %15, %for.body13 ]
  %inc32 = add nuw nsw i64 %y.070, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %inc32, metadata !1327, metadata !DIExpression()), !dbg !1328
  %17 = load i64, ptr %rows, align 8, !dbg !1335, !tbaa !991
  %cmp7 = icmp slt i64 %inc32, %17, !dbg !1336
  br i1 %cmp7, label %for.body8, label %for.end33, !dbg !1337, !llvm.loop !1398

for.end33:                                        ; preds = %for.inc31, %for.body8, %for.cond6.preheader
  ret void, !dbg !1400
}

; Function Attrs: nounwind uwtable
define internal fastcc void @OptimalTau(ptr nocapture noundef readonly %histogram, double noundef %min_tau, double noundef %smooth_threshold, ptr nocapture noundef writeonly %extrema) unnamed_addr #0 !dbg !1401 {
entry:
  %number_nodes.i = alloca i64, align 8
  %exception.i = alloca %struct._ExceptionInfo, align 8
  %number_nodes = alloca i64, align 8
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %histogram, metadata !1407, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata double 0x4014CCCCC0000000, metadata !1408, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata double %min_tau, metadata !1409, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !1410, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata double %smooth_threshold, metadata !1411, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata ptr %extrema, metadata !1412, metadata !DIExpression()), !dbg !1435
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_nodes) #14, !dbg !1436
  %call = tail call ptr @AcquireQuantumMemory(i64 noundef 600, i64 noundef 8) #15, !dbg !1437
  call void @llvm.dbg.value(metadata ptr %call, metadata !1413, metadata !DIExpression()), !dbg !1435
  %cmp = icmp eq ptr %call, null, !dbg !1438
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1440

if.end:                                           ; preds = %entry
  %sub = fsub double 0x4014CCCCC0000000, %min_tau, !dbg !1441
  %div = fmul double %sub, 2.000000e+00, !dbg !1442
  %conv = fptoui double %div to i64, !dbg !1443
  %add = add i64 %conv, 2, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %add, metadata !1424, metadata !DIExpression()), !dbg !1435
  %call1 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 1540) #15, !dbg !1445
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1430, metadata !DIExpression()), !dbg !1435
  %cmp2 = icmp eq ptr %call1, null, !dbg !1446
  br i1 %cmp2, label %cleanup, label %for.cond.preheader, !dbg !1448

for.cond.preheader:                               ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1435
  %cmp6146 = icmp sgt i64 %add, 0, !dbg !1449
  br i1 %cmp6146, label %for.body, label %for.end, !dbg !1452

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.0147 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0147, metadata !1422, metadata !DIExpression()), !dbg !1435
  %arrayidx = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.0147, !dbg !1453
  store float -1.000000e+00, ptr %arrayidx, align 4, !dbg !1454, !tbaa !1455
  %inc = add nuw nsw i64 %i.0147, 1, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1422, metadata !DIExpression()), !dbg !1435
  %exitcond.not = icmp eq i64 %inc, %add, !dbg !1449
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1452, !llvm.loop !1458

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %call9 = tail call ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 4) #15, !dbg !1460
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1418, metadata !DIExpression()), !dbg !1435
  %call10 = tail call ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 4) #15, !dbg !1461
  call void @llvm.dbg.value(metadata ptr %call10, metadata !1419, metadata !DIExpression()), !dbg !1435
  %cmp11 = icmp eq ptr %call9, null, !dbg !1462
  %cmp13 = icmp eq ptr %call10, null
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp13, !dbg !1463
  br i1 %or.cond, label %if.then15, label %for.cond23.preheader, !dbg !1463

for.cond23.preheader:                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata float 0x4014CCCCC0000000, metadata !1420, metadata !DIExpression()), !dbg !1435
  %cmp25148 = fcmp ugt double %min_tau, 0x4014CCCCC0000000, !dbg !1464
  br i1 %cmp25148, label %for.end43, label %for.body27.lr.ph, !dbg !1467

for.body27.lr.ph:                                 ; preds = %for.cond23.preheader
  %arrayidx17.i = getelementptr inbounds float, ptr %call9, i64 255
  %arrayidx1.i4 = getelementptr inbounds float, ptr %call9, i64 1
  %arrayidx4.i7 = getelementptr inbounds float, ptr %call9, i64 2
  %arrayidx8.i10 = getelementptr inbounds float, ptr %call9, i64 253
  %arrayidx11.i12 = getelementptr inbounds float, ptr %call9, i64 254
  %arrayidx17.i18 = getelementptr inbounds float, ptr %call10, i64 255
  %conv35 = fptrunc double %smooth_threshold to float
  %fneg.i = fneg float %conv35
  br label %for.body27, !dbg !1467

if.then15:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #14, !dbg !1468
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1434, metadata !DIExpression()), !dbg !1468
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #14, !dbg !1468
  %call16 = tail call ptr @__errno_location() #17, !dbg !1468
  %0 = load i32, ptr %call16, align 4, !dbg !1468, !tbaa !1469
  %call17 = call ptr @GetExceptionMessage(i32 noundef %0) #14, !dbg !1468
  call void @llvm.dbg.value(metadata ptr %call17, metadata !1431, metadata !DIExpression()), !dbg !1470
  %call18 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1574, i32 noundef 700, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef %call17) #14, !dbg !1468
  %call19 = call ptr @DestroyString(ptr noundef %call17) #14, !dbg !1468
  call void @llvm.dbg.value(metadata ptr %call19, metadata !1431, metadata !DIExpression()), !dbg !1470
  call void @CatchException(ptr noundef nonnull %exception) #14, !dbg !1468
  %call20 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #14, !dbg !1468
  call void @MagickCoreTerminus() #14, !dbg !1468
  call void @_exit(i32 noundef 1) #18, !dbg !1468
  unreachable, !dbg !1468

for.body27:                                       ; preds = %for.body27.lr.ph, %ZeroCrossHistogram.exit
  %conv24151 = phi double [ 0x4014CCCCC0000000, %for.body27.lr.ph ], [ %conv24, %ZeroCrossHistogram.exit ]
  %i.1150 = phi i64 [ 0, %for.body27.lr.ph ], [ %inc38, %ZeroCrossHistogram.exit ]
  %tau.0149 = phi float [ 0x4014CCCCC0000000, %for.body27.lr.ph ], [ %conv42, %ZeroCrossHistogram.exit ]
  call void @llvm.dbg.value(metadata i64 %i.1150, metadata !1422, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata float %tau.0149, metadata !1420, metadata !DIExpression()), !dbg !1435
  %arrayidx28 = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.1150, !dbg !1471
  store float %tau.0149, ptr %arrayidx28, align 4, !dbg !1473, !tbaa !1455
  %histogram31 = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.1150, i32 1, !dbg !1474
  call void @llvm.dbg.value(metadata ptr %histogram, metadata !1475, metadata !DIExpression()) #14, !dbg !1493
  call void @llvm.dbg.value(metadata float %tau.0149, metadata !1481, metadata !DIExpression()) #14, !dbg !1493
  call void @llvm.dbg.value(metadata ptr %histogram31, metadata !1482, metadata !DIExpression()) #14, !dbg !1493
  %call.i = tail call ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #15, !dbg !1495
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1485, metadata !DIExpression()) #14, !dbg !1493
  %cmp.i = icmp eq ptr %call.i, null, !dbg !1496
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1497

if.then.i:                                        ; preds = %for.body27
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception.i) #14, !dbg !1498
  call void @llvm.dbg.declare(metadata ptr %exception.i, metadata !1492, metadata !DIExpression()) #14, !dbg !1498
  call void @GetExceptionInfo(ptr noundef nonnull %exception.i) #14, !dbg !1498
  %call1.i = tail call ptr @__errno_location() #17, !dbg !1498
  %1 = load i32, ptr %call1.i, align 4, !dbg !1498, !tbaa !1469
  %call2.i = call ptr @GetExceptionMessage(i32 noundef %1) #14, !dbg !1498
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !1489, metadata !DIExpression()) #14, !dbg !1499
  %call3.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1735, i32 noundef 700, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef %call2.i) #14, !dbg !1498
  %call4.i = call ptr @DestroyString(ptr noundef %call2.i) #14, !dbg !1498
  call void @llvm.dbg.value(metadata ptr %call4.i, metadata !1489, metadata !DIExpression()) #14, !dbg !1499
  call void @CatchException(ptr noundef nonnull %exception.i) #14, !dbg !1498
  %call5.i = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception.i) #14, !dbg !1498
  call void @MagickCoreTerminus() #14, !dbg !1498
  call void @_exit(i32 noundef 1) #18, !dbg !1498
  unreachable, !dbg !1498

if.end.i:                                         ; preds = %for.body27
  %mul8.i = fmul double %conv24151, 2.000000e+00, !dbg !1500
  %mul10.i = fmul double %conv24151, %mul8.i, !dbg !1501
  call void @llvm.dbg.value(metadata i64 0, metadata !1488, metadata !DIExpression()) #14, !dbg !1493
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %call.i, i8 0, i64 2048, i1 false) #14, !dbg !1502, !tbaa !1505
  call void @llvm.dbg.value(metadata i32 undef, metadata !1488, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1493
  %div11.i = fdiv double -1.000000e+00, %mul10.i, !dbg !1506
  br label %for.body17.i, !dbg !1507

for.body17.i:                                     ; preds = %for.body17.i, %if.end.i
  %x.180.i = phi i64 [ 0, %if.end.i ], [ %inc30.i, %for.body17.i ]
  call void @llvm.dbg.value(metadata i64 %x.180.i, metadata !1488, metadata !DIExpression()) #14, !dbg !1493
  %conv18.i = sitofp i64 %x.180.i to double, !dbg !1509
  %mul19.i = fmul double %div11.i, %conv18.i, !dbg !1512
  %mul21.i = fmul double %mul19.i, %conv18.i, !dbg !1513
  %call22.i = tail call double @exp(double noundef %mul21.i) #14, !dbg !1514
  %arrayidx23.i = getelementptr inbounds double, ptr %call.i, i64 %x.180.i, !dbg !1515
  store double %call22.i, ptr %arrayidx23.i, align 8, !dbg !1516, !tbaa !1505
  %cmp25.i = fcmp olt double %call22.i, 1.000000e-15, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %x.180.i, metadata !1488, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1493
  %inc30.i = add nuw nsw i64 %x.180.i, 1
  %exitcond.not.i = icmp eq i64 %inc30.i, 256
  %or.cond.i = select i1 %cmp25.i, i1 true, i1 %exitcond.not.i, !dbg !1519
  br i1 %or.cond.i, label %for.cond36.preheader.i.preheader, label %for.body17.i, !dbg !1519, !llvm.loop !1520

for.cond36.preheader.i.preheader:                 ; preds = %for.body17.i
  %mul.i = fmul double %conv24151, 0x40040D931FF62705, !dbg !1522
  %div.i = fdiv double 1.000000e+00, %mul.i, !dbg !1523
  br label %for.cond36.preheader.i, !dbg !1524

for.cond36.preheader.i:                           ; preds = %for.cond36.preheader.i.preheader, %for.end47.i
  %x.283.i = phi i64 [ %inc52.i, %for.end47.i ], [ 0, %for.cond36.preheader.i.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.283.i, metadata !1488, metadata !DIExpression()) #14, !dbg !1493
  call void @llvm.dbg.value(metadata i64 0, metadata !1487, metadata !DIExpression()) #14, !dbg !1493
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1486, metadata !DIExpression()) #14, !dbg !1493
  br label %for.body39.i, !dbg !1526

for.body39.i:                                     ; preds = %for.body39.i, %for.cond36.preheader.i
  %u.082.i = phi i64 [ 0, %for.cond36.preheader.i ], [ %inc46.i, %for.body39.i ]
  %sum.081.i = phi double [ 0.000000e+00, %for.cond36.preheader.i ], [ %5, %for.body39.i ]
  call void @llvm.dbg.value(metadata i64 %u.082.i, metadata !1487, metadata !DIExpression()) #14, !dbg !1493
  call void @llvm.dbg.value(metadata double %sum.081.i, metadata !1486, metadata !DIExpression()) #14, !dbg !1493
  %arrayidx40.i = getelementptr inbounds i64, ptr %histogram, i64 %u.082.i, !dbg !1530
  %2 = load i64, ptr %arrayidx40.i, align 8, !dbg !1530, !tbaa !955
  %conv41.i = sitofp i64 %2 to double, !dbg !1532
  %sub.i = sub nsw i64 %x.283.i, %u.082.i, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !1534, metadata !DIExpression()) #14, !dbg !1539
  %3 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 true) #14, !dbg !1541
  %arrayidx43.i = getelementptr inbounds double, ptr %call.i, i64 %3, !dbg !1542
  %4 = load double, ptr %arrayidx43.i, align 8, !dbg !1542, !tbaa !1505
  %5 = tail call double @llvm.fmuladd.f64(double %conv41.i, double %4, double %sum.081.i) #14, !dbg !1543
  call void @llvm.dbg.value(metadata double %5, metadata !1486, metadata !DIExpression()) #14, !dbg !1493
  %inc46.i = add nuw nsw i64 %u.082.i, 1, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %inc46.i, metadata !1487, metadata !DIExpression()) #14, !dbg !1493
  %exitcond84.not.i = icmp eq i64 %inc46.i, 256, !dbg !1545
  br i1 %exitcond84.not.i, label %for.end47.i, label %for.body39.i, !dbg !1526, !llvm.loop !1546

for.end47.i:                                      ; preds = %for.body39.i
  %mul48.i = fmul double %div.i, %5, !dbg !1548
  %conv49.i = fptrunc double %mul48.i to float, !dbg !1549
  %arrayidx50.i = getelementptr inbounds float, ptr %histogram31, i64 %x.283.i, !dbg !1550
  store float %conv49.i, ptr %arrayidx50.i, align 4, !dbg !1551, !tbaa !954
  %inc52.i = add nuw nsw i64 %x.283.i, 1, !dbg !1552
  call void @llvm.dbg.value(metadata i64 %inc52.i, metadata !1488, metadata !DIExpression()) #14, !dbg !1493
  %exitcond85.not.i = icmp eq i64 %inc52.i, 256, !dbg !1553
  br i1 %exitcond85.not.i, label %ScaleSpace.exit, label %for.cond36.preheader.i, !dbg !1524, !llvm.loop !1554

ScaleSpace.exit:                                  ; preds = %for.end47.i
  %call54.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call.i) #14, !dbg !1556
  call void @llvm.dbg.value(metadata ptr %call54.i, metadata !1485, metadata !DIExpression()) #14, !dbg !1493
  call void @llvm.dbg.value(metadata ptr %histogram31, metadata !1557, metadata !DIExpression()) #14, !dbg !1566
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1563, metadata !DIExpression()) #14, !dbg !1566
  call void @llvm.dbg.value(metadata i64 255, metadata !1565, metadata !DIExpression()) #14, !dbg !1566
  %6 = load float, ptr %histogram31, align 4, !dbg !1568, !tbaa !954
  %conv.i1 = fpext float %6 to double, !dbg !1568
  %arrayidx1.i = getelementptr inbounds float, ptr %histogram31, i64 1, !dbg !1569
  %7 = load float, ptr %arrayidx1.i, align 4, !dbg !1569, !tbaa !954
  %conv2.i = fpext float %7 to double, !dbg !1569
  %mul3.i = fmul double %conv2.i, 2.000000e+00, !dbg !1570
  %8 = tail call double @llvm.fmuladd.f64(double %conv.i1, double -1.500000e+00, double %mul3.i) #14, !dbg !1571
  %arrayidx4.i = getelementptr inbounds float, ptr %histogram31, i64 2, !dbg !1572
  %9 = load float, ptr %arrayidx4.i, align 4, !dbg !1572, !tbaa !954
  %conv5.i = fpext float %9 to double, !dbg !1572
  %10 = tail call double @llvm.fmuladd.f64(double %conv5.i, double -5.000000e-01, double %8) #14, !dbg !1573
  %conv6.i = fptrunc double %10 to float, !dbg !1574
  store float %conv6.i, ptr %call9, align 4, !dbg !1575, !tbaa !954
  %arrayidx8.i = getelementptr inbounds float, ptr %histogram31, i64 253, !dbg !1576
  %11 = load float, ptr %arrayidx8.i, align 4, !dbg !1576, !tbaa !954
  %conv9.i = fpext float %11 to double, !dbg !1576
  %arrayidx11.i = getelementptr inbounds float, ptr %histogram31, i64 254, !dbg !1577
  %12 = load float, ptr %arrayidx11.i, align 4, !dbg !1577, !tbaa !954
  %conv12.i = fpext float %12 to double, !dbg !1577
  %neg.i = fmul double %conv12.i, -2.000000e+00, !dbg !1578
  %13 = tail call double @llvm.fmuladd.f64(double %conv9.i, double 5.000000e-01, double %neg.i) #14, !dbg !1578
  %arrayidx14.i = getelementptr inbounds float, ptr %histogram31, i64 255, !dbg !1579
  %14 = load float, ptr %arrayidx14.i, align 4, !dbg !1579, !tbaa !954
  %conv15.i = fpext float %14 to double, !dbg !1579
  %15 = tail call double @llvm.fmuladd.f64(double %conv15.i, double 1.500000e+00, double %13) #14, !dbg !1580
  %conv16.i = fptrunc double %15 to float, !dbg !1581
  store float %conv16.i, ptr %arrayidx17.i, align 4, !dbg !1582, !tbaa !954
  call void @llvm.dbg.value(metadata i64 1, metadata !1564, metadata !DIExpression()) #14, !dbg !1566
  br label %for.body.i, !dbg !1583

for.body.i:                                       ; preds = %for.body.i, %ScaleSpace.exit
  %i.043.i = phi i64 [ 1, %ScaleSpace.exit ], [ %add.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %i.043.i, metadata !1564, metadata !DIExpression()) #14, !dbg !1566
  %add.i = add nuw nsw i64 %i.043.i, 1, !dbg !1585
  %arrayidx19.i = getelementptr inbounds float, ptr %histogram31, i64 %add.i, !dbg !1587
  %16 = load float, ptr %arrayidx19.i, align 4, !dbg !1587, !tbaa !954
  %sub20.i = add nsw i64 %i.043.i, -1, !dbg !1588
  %arrayidx21.i = getelementptr inbounds float, ptr %histogram31, i64 %sub20.i, !dbg !1589
  %17 = load float, ptr %arrayidx21.i, align 4, !dbg !1589, !tbaa !954
  %sub22.i = fsub float %16, %17, !dbg !1590
  %conv24.i = fmul float %sub22.i, 5.000000e-01, !dbg !1591
  %arrayidx25.i = getelementptr inbounds float, ptr %call9, i64 %i.043.i, !dbg !1592
  store float %conv24.i, ptr %arrayidx25.i, align 4, !dbg !1593, !tbaa !954
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1564, metadata !DIExpression()) #14, !dbg !1566
  %exitcond.not.i2 = icmp eq i64 %add.i, 255, !dbg !1594
  br i1 %exitcond.not.i2, label %DerivativeHistogram.exit, label %for.body.i, !dbg !1583, !llvm.loop !1595

DerivativeHistogram.exit:                         ; preds = %for.body.i
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1557, metadata !DIExpression()) #14, !dbg !1597
  call void @llvm.dbg.value(metadata ptr %call10, metadata !1563, metadata !DIExpression()) #14, !dbg !1597
  call void @llvm.dbg.value(metadata i64 255, metadata !1565, metadata !DIExpression()) #14, !dbg !1597
  %conv.i3 = fpext float %conv6.i to double, !dbg !1599
  %18 = load float, ptr %arrayidx1.i4, align 4, !dbg !1600, !tbaa !954
  %conv2.i5 = fpext float %18 to double, !dbg !1600
  %mul3.i6 = fmul double %conv2.i5, 2.000000e+00, !dbg !1601
  %19 = tail call double @llvm.fmuladd.f64(double %conv.i3, double -1.500000e+00, double %mul3.i6) #14, !dbg !1602
  %20 = load float, ptr %arrayidx4.i7, align 4, !dbg !1603, !tbaa !954
  %conv5.i8 = fpext float %20 to double, !dbg !1603
  %21 = tail call double @llvm.fmuladd.f64(double %conv5.i8, double -5.000000e-01, double %19) #14, !dbg !1604
  %conv6.i9 = fptrunc double %21 to float, !dbg !1605
  store float %conv6.i9, ptr %call10, align 4, !dbg !1606, !tbaa !954
  %22 = load float, ptr %arrayidx8.i10, align 4, !dbg !1607, !tbaa !954
  %conv9.i11 = fpext float %22 to double, !dbg !1607
  %23 = load float, ptr %arrayidx11.i12, align 4, !dbg !1608, !tbaa !954
  %conv12.i13 = fpext float %23 to double, !dbg !1608
  %neg.i14 = fmul double %conv12.i13, -2.000000e+00, !dbg !1609
  %24 = tail call double @llvm.fmuladd.f64(double %conv9.i11, double 5.000000e-01, double %neg.i14) #14, !dbg !1609
  %25 = load float, ptr %arrayidx17.i, align 4, !dbg !1610, !tbaa !954
  %conv15.i16 = fpext float %25 to double, !dbg !1610
  %26 = tail call double @llvm.fmuladd.f64(double %conv15.i16, double 1.500000e+00, double %24) #14, !dbg !1611
  %conv16.i17 = fptrunc double %26 to float, !dbg !1612
  store float %conv16.i17, ptr %arrayidx17.i18, align 4, !dbg !1613, !tbaa !954
  call void @llvm.dbg.value(metadata i64 1, metadata !1564, metadata !DIExpression()) #14, !dbg !1597
  br label %for.body.i28, !dbg !1614

for.body.i28:                                     ; preds = %for.body.i28, %DerivativeHistogram.exit
  %i.043.i19 = phi i64 [ 1, %DerivativeHistogram.exit ], [ %add.i20, %for.body.i28 ]
  call void @llvm.dbg.value(metadata i64 %i.043.i19, metadata !1564, metadata !DIExpression()) #14, !dbg !1597
  %add.i20 = add nuw nsw i64 %i.043.i19, 1, !dbg !1615
  %arrayidx19.i21 = getelementptr inbounds float, ptr %call9, i64 %add.i20, !dbg !1616
  %27 = load float, ptr %arrayidx19.i21, align 4, !dbg !1616, !tbaa !954
  %sub20.i22 = add nsw i64 %i.043.i19, -1, !dbg !1617
  %arrayidx21.i23 = getelementptr inbounds float, ptr %call9, i64 %sub20.i22, !dbg !1618
  %28 = load float, ptr %arrayidx21.i23, align 4, !dbg !1618, !tbaa !954
  %sub22.i24 = fsub float %27, %28, !dbg !1619
  %conv24.i25 = fmul float %sub22.i24, 5.000000e-01, !dbg !1620
  %arrayidx25.i26 = getelementptr inbounds float, ptr %call10, i64 %i.043.i19, !dbg !1621
  store float %conv24.i25, ptr %arrayidx25.i26, align 4, !dbg !1622, !tbaa !954
  call void @llvm.dbg.value(metadata i64 %add.i20, metadata !1564, metadata !DIExpression()) #14, !dbg !1597
  %exitcond.not.i27 = icmp eq i64 %add.i20, 255, !dbg !1623
  br i1 %exitcond.not.i27, label %for.body.i31, label %for.body.i28, !dbg !1614, !llvm.loop !1624

for.body.i31:                                     ; preds = %for.body.i28, %for.inc.i.for.body.i31_crit_edge
  %29 = phi float [ %.pre, %for.inc.i.for.body.i31_crit_edge ], [ %conv6.i9, %for.body.i28 ], !dbg !1626
  %i.052.i = phi i64 [ %inc.i, %for.inc.i.for.body.i31_crit_edge ], [ 0, %for.body.i28 ]
  call void @llvm.dbg.value(metadata i64 %i.052.i, metadata !1637, metadata !DIExpression()), !dbg !1640
  %cmp1.i = fcmp uge float %29, %conv35, !dbg !1641
  %cmp3.i = fcmp ult float %29, %fneg.i
  %or.cond.i30 = or i1 %cmp1.i, %cmp3.i, !dbg !1642
  br i1 %or.cond.i30, label %for.inc.i, label %if.then.i32, !dbg !1642

if.then.i32:                                      ; preds = %for.body.i31
  %arrayidx.i = getelementptr inbounds float, ptr %call10, i64 %i.052.i, !dbg !1626
  store float 0.000000e+00, ptr %arrayidx.i, align 4, !dbg !1643, !tbaa !954
  br label %for.inc.i, !dbg !1644

for.inc.i:                                        ; preds = %if.then.i32, %for.body.i31
  %inc.i = add nuw nsw i64 %i.052.i, 1, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !1637, metadata !DIExpression()), !dbg !1640
  %exitcond.not.i33 = icmp eq i64 %inc.i, 256, !dbg !1646
  br i1 %exitcond.not.i33, label %for.body7.i.preheader, label %for.inc.i.for.body.i31_crit_edge, !dbg !1647, !llvm.loop !1648

for.inc.i.for.body.i31_crit_edge:                 ; preds = %for.inc.i
  %arrayidx.i.phi.trans.insert = getelementptr inbounds float, ptr %call10, i64 %inc.i
  %.pre = load float, ptr %arrayidx.i.phi.trans.insert, align 4, !dbg !1626, !tbaa !954
  br label %for.body.i31, !dbg !1647

for.body7.i.preheader:                            ; preds = %for.inc.i
  %crossings = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.1150, i32 2, !dbg !1650
  br label %for.body7.i, !dbg !1651

for.body7.i:                                      ; preds = %for.body7.i.preheader, %for.inc30.i
  %parity.054.i = phi i64 [ %parity.1.i, %for.inc30.i ], [ 0, %for.body7.i.preheader ]
  %i.153.i = phi i64 [ %inc31.i, %for.inc30.i ], [ 0, %for.body7.i.preheader ]
  call void @llvm.dbg.value(metadata i64 %parity.054.i, metadata !1638, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %i.153.i, metadata !1637, metadata !DIExpression()), !dbg !1640
  %arrayidx8.i34 = getelementptr inbounds i16, ptr %crossings, i64 %i.153.i, !dbg !1653
  store i16 0, ptr %arrayidx8.i34, align 2, !dbg !1656, !tbaa !854
  %arrayidx9.i = getelementptr inbounds float, ptr %call10, i64 %i.153.i, !dbg !1657
  %30 = load float, ptr %arrayidx9.i, align 4, !dbg !1657, !tbaa !954
  %cmp10.i = fcmp olt float %30, 0.000000e+00, !dbg !1659
  br i1 %cmp10.i, label %if.then12.i, label %if.else.i, !dbg !1660

if.then12.i:                                      ; preds = %for.body7.i
  %cmp13.i = icmp sgt i64 %parity.054.i, 0, !dbg !1661
  br i1 %cmp13.i, label %for.inc30.sink.split.i, label %for.inc30.i, !dbg !1664

if.else.i:                                        ; preds = %for.body7.i
  %cmp20.i = fcmp ogt float %30, 0.000000e+00, !dbg !1665
  br i1 %cmp20.i, label %if.then22.i, label %for.inc30.i, !dbg !1667

if.then22.i:                                      ; preds = %if.else.i
  %cmp23.i = icmp slt i64 %parity.054.i, 0, !dbg !1668
  br i1 %cmp23.i, label %for.inc30.sink.split.i, label %for.inc30.i, !dbg !1671

for.inc30.sink.split.i:                           ; preds = %if.then22.i, %if.then12.i
  %.sink.i = phi i16 [ -1, %if.then12.i ], [ 1, %if.then22.i ]
  %parity.1.ph.i = phi i64 [ 1, %if.then12.i ], [ -1, %if.then22.i ]
  store i16 %.sink.i, ptr %arrayidx8.i34, align 2, !dbg !1672, !tbaa !854
  br label %for.inc30.i, !dbg !1673

for.inc30.i:                                      ; preds = %for.inc30.sink.split.i, %if.then22.i, %if.else.i, %if.then12.i
  %parity.1.i = phi i64 [ %parity.054.i, %if.else.i ], [ 1, %if.then12.i ], [ -1, %if.then22.i ], [ %parity.1.ph.i, %for.inc30.sink.split.i ], !dbg !1640
  call void @llvm.dbg.value(metadata i64 %parity.1.i, metadata !1638, metadata !DIExpression()), !dbg !1640
  %inc31.i = add nuw nsw i64 %i.153.i, 1, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %inc31.i, metadata !1637, metadata !DIExpression()), !dbg !1640
  %exitcond55.not.i = icmp eq i64 %inc31.i, 256, !dbg !1674
  br i1 %exitcond55.not.i, label %ZeroCrossHistogram.exit, label %for.body7.i, !dbg !1651, !llvm.loop !1675

ZeroCrossHistogram.exit:                          ; preds = %for.inc30.i
  %inc38 = add nuw nsw i64 %i.1150, 1, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %inc38, metadata !1422, metadata !DIExpression()), !dbg !1435
  %conv42 = fadd float %tau.0149, -5.000000e-01, !dbg !1678
  call void @llvm.dbg.value(metadata float %conv42, metadata !1420, metadata !DIExpression()), !dbg !1435
  %conv24 = fpext float %conv42 to double, !dbg !1679
  %cmp25 = fcmp ult double %conv24, %min_tau, !dbg !1464
  br i1 %cmp25, label %for.end43, label %for.body27, !dbg !1467, !llvm.loop !1680

for.end43:                                        ; preds = %ZeroCrossHistogram.exit, %for.cond23.preheader
  %i.1.lcssa = phi i64 [ 0, %for.cond23.preheader ], [ %inc38, %ZeroCrossHistogram.exit ], !dbg !1435
  %arrayidx44 = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.1.lcssa, !dbg !1682
  store float 0.000000e+00, ptr %arrayidx44, align 4, !dbg !1683, !tbaa !1455
  call void @llvm.dbg.value(metadata i64 0, metadata !1427, metadata !DIExpression()), !dbg !1435
  br label %for.body49, !dbg !1684

for.body49:                                       ; preds = %for.end43, %for.body49
  %j.0152 = phi i64 [ 0, %for.end43 ], [ %inc56, %for.body49 ]
  call void @llvm.dbg.value(metadata i64 %j.0152, metadata !1427, metadata !DIExpression()), !dbg !1435
  %arrayidx50 = getelementptr inbounds i64, ptr %histogram, i64 %j.0152, !dbg !1686
  %31 = load i64, ptr %arrayidx50, align 8, !dbg !1686, !tbaa !955
  %conv51 = sitofp i64 %31 to float, !dbg !1688
  %arrayidx54 = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.1.lcssa, i32 1, i64 %j.0152, !dbg !1689
  store float %conv51, ptr %arrayidx54, align 4, !dbg !1690, !tbaa !954
  %inc56 = add nuw nsw i64 %j.0152, 1, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %inc56, metadata !1427, metadata !DIExpression()), !dbg !1435
  %exitcond177.not = icmp eq i64 %inc56, 256, !dbg !1692
  br i1 %exitcond177.not, label %for.end57, label %for.body49, !dbg !1684, !llvm.loop !1693

for.end57:                                        ; preds = %for.body49
  %histogram59 = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.1.lcssa, i32 1, !dbg !1695
  call void @llvm.dbg.value(metadata ptr %histogram59, metadata !1557, metadata !DIExpression()) #14, !dbg !1696
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1563, metadata !DIExpression()) #14, !dbg !1696
  call void @llvm.dbg.value(metadata i64 255, metadata !1565, metadata !DIExpression()) #14, !dbg !1696
  %32 = load float, ptr %histogram59, align 4, !dbg !1698, !tbaa !954
  %conv.i35 = fpext float %32 to double, !dbg !1698
  %arrayidx1.i36 = getelementptr inbounds float, ptr %histogram59, i64 1, !dbg !1699
  %33 = load float, ptr %arrayidx1.i36, align 4, !dbg !1699, !tbaa !954
  %conv2.i37 = fpext float %33 to double, !dbg !1699
  %mul3.i38 = fmul double %conv2.i37, 2.000000e+00, !dbg !1700
  %34 = tail call double @llvm.fmuladd.f64(double %conv.i35, double -1.500000e+00, double %mul3.i38) #14, !dbg !1701
  %arrayidx4.i39 = getelementptr inbounds float, ptr %histogram59, i64 2, !dbg !1702
  %35 = load float, ptr %arrayidx4.i39, align 4, !dbg !1702, !tbaa !954
  %conv5.i40 = fpext float %35 to double, !dbg !1702
  %36 = tail call double @llvm.fmuladd.f64(double %conv5.i40, double -5.000000e-01, double %34) #14, !dbg !1703
  %conv6.i41 = fptrunc double %36 to float, !dbg !1704
  store float %conv6.i41, ptr %call9, align 4, !dbg !1705, !tbaa !954
  %arrayidx8.i42 = getelementptr inbounds float, ptr %histogram59, i64 253, !dbg !1706
  %37 = load float, ptr %arrayidx8.i42, align 4, !dbg !1706, !tbaa !954
  %conv9.i43 = fpext float %37 to double, !dbg !1706
  %arrayidx11.i44 = getelementptr inbounds float, ptr %histogram59, i64 254, !dbg !1707
  %38 = load float, ptr %arrayidx11.i44, align 4, !dbg !1707, !tbaa !954
  %conv12.i45 = fpext float %38 to double, !dbg !1707
  %neg.i46 = fmul double %conv12.i45, -2.000000e+00, !dbg !1708
  %39 = tail call double @llvm.fmuladd.f64(double %conv9.i43, double 5.000000e-01, double %neg.i46) #14, !dbg !1708
  %arrayidx14.i47 = getelementptr inbounds float, ptr %histogram59, i64 255, !dbg !1709
  %40 = load float, ptr %arrayidx14.i47, align 4, !dbg !1709, !tbaa !954
  %conv15.i48 = fpext float %40 to double, !dbg !1709
  %41 = tail call double @llvm.fmuladd.f64(double %conv15.i48, double 1.500000e+00, double %39) #14, !dbg !1710
  %conv16.i49 = fptrunc double %41 to float, !dbg !1711
  %arrayidx17.i50 = getelementptr inbounds float, ptr %call9, i64 255, !dbg !1712
  store float %conv16.i49, ptr %arrayidx17.i50, align 4, !dbg !1713, !tbaa !954
  call void @llvm.dbg.value(metadata i64 1, metadata !1564, metadata !DIExpression()) #14, !dbg !1696
  br label %for.body.i60, !dbg !1714

for.body.i60:                                     ; preds = %for.body.i60, %for.end57
  %i.043.i51 = phi i64 [ 1, %for.end57 ], [ %add.i52, %for.body.i60 ]
  call void @llvm.dbg.value(metadata i64 %i.043.i51, metadata !1564, metadata !DIExpression()) #14, !dbg !1696
  %add.i52 = add nuw nsw i64 %i.043.i51, 1, !dbg !1715
  %arrayidx19.i53 = getelementptr inbounds float, ptr %histogram59, i64 %add.i52, !dbg !1716
  %42 = load float, ptr %arrayidx19.i53, align 4, !dbg !1716, !tbaa !954
  %sub20.i54 = add nsw i64 %i.043.i51, -1, !dbg !1717
  %arrayidx21.i55 = getelementptr inbounds float, ptr %histogram59, i64 %sub20.i54, !dbg !1718
  %43 = load float, ptr %arrayidx21.i55, align 4, !dbg !1718, !tbaa !954
  %sub22.i56 = fsub float %42, %43, !dbg !1719
  %conv24.i57 = fmul float %sub22.i56, 5.000000e-01, !dbg !1720
  %arrayidx25.i58 = getelementptr inbounds float, ptr %call9, i64 %i.043.i51, !dbg !1721
  store float %conv24.i57, ptr %arrayidx25.i58, align 4, !dbg !1722, !tbaa !954
  call void @llvm.dbg.value(metadata i64 %add.i52, metadata !1564, metadata !DIExpression()) #14, !dbg !1696
  %exitcond.not.i59 = icmp eq i64 %add.i52, 255, !dbg !1723
  br i1 %exitcond.not.i59, label %DerivativeHistogram.exit61, label %for.body.i60, !dbg !1714, !llvm.loop !1724

DerivativeHistogram.exit61:                       ; preds = %for.body.i60
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1557, metadata !DIExpression()) #14, !dbg !1726
  call void @llvm.dbg.value(metadata ptr %call10, metadata !1563, metadata !DIExpression()) #14, !dbg !1726
  call void @llvm.dbg.value(metadata i64 255, metadata !1565, metadata !DIExpression()) #14, !dbg !1726
  %conv.i62 = fpext float %conv6.i41 to double, !dbg !1728
  %arrayidx1.i63 = getelementptr inbounds float, ptr %call9, i64 1, !dbg !1729
  %44 = load float, ptr %arrayidx1.i63, align 4, !dbg !1729, !tbaa !954
  %conv2.i64 = fpext float %44 to double, !dbg !1729
  %mul3.i65 = fmul double %conv2.i64, 2.000000e+00, !dbg !1730
  %45 = tail call double @llvm.fmuladd.f64(double %conv.i62, double -1.500000e+00, double %mul3.i65) #14, !dbg !1731
  %arrayidx4.i66 = getelementptr inbounds float, ptr %call9, i64 2, !dbg !1732
  %46 = load float, ptr %arrayidx4.i66, align 4, !dbg !1732, !tbaa !954
  %conv5.i67 = fpext float %46 to double, !dbg !1732
  %47 = tail call double @llvm.fmuladd.f64(double %conv5.i67, double -5.000000e-01, double %45) #14, !dbg !1733
  %conv6.i68 = fptrunc double %47 to float, !dbg !1734
  store float %conv6.i68, ptr %call10, align 4, !dbg !1735, !tbaa !954
  %arrayidx8.i69 = getelementptr inbounds float, ptr %call9, i64 253, !dbg !1736
  %48 = load float, ptr %arrayidx8.i69, align 4, !dbg !1736, !tbaa !954
  %conv9.i70 = fpext float %48 to double, !dbg !1736
  %arrayidx11.i71 = getelementptr inbounds float, ptr %call9, i64 254, !dbg !1737
  %49 = load float, ptr %arrayidx11.i71, align 4, !dbg !1737, !tbaa !954
  %conv12.i72 = fpext float %49 to double, !dbg !1737
  %neg.i73 = fmul double %conv12.i72, -2.000000e+00, !dbg !1738
  %50 = tail call double @llvm.fmuladd.f64(double %conv9.i70, double 5.000000e-01, double %neg.i73) #14, !dbg !1738
  %51 = load float, ptr %arrayidx17.i50, align 4, !dbg !1739, !tbaa !954
  %conv15.i75 = fpext float %51 to double, !dbg !1739
  %52 = tail call double @llvm.fmuladd.f64(double %conv15.i75, double 1.500000e+00, double %50) #14, !dbg !1740
  %conv16.i76 = fptrunc double %52 to float, !dbg !1741
  %arrayidx17.i77 = getelementptr inbounds float, ptr %call10, i64 255, !dbg !1742
  store float %conv16.i76, ptr %arrayidx17.i77, align 4, !dbg !1743, !tbaa !954
  call void @llvm.dbg.value(metadata i64 1, metadata !1564, metadata !DIExpression()) #14, !dbg !1726
  br label %for.body.i87, !dbg !1744

for.body.i87:                                     ; preds = %for.body.i87, %DerivativeHistogram.exit61
  %i.043.i78 = phi i64 [ 1, %DerivativeHistogram.exit61 ], [ %add.i79, %for.body.i87 ]
  call void @llvm.dbg.value(metadata i64 %i.043.i78, metadata !1564, metadata !DIExpression()) #14, !dbg !1726
  %add.i79 = add nuw nsw i64 %i.043.i78, 1, !dbg !1745
  %arrayidx19.i80 = getelementptr inbounds float, ptr %call9, i64 %add.i79, !dbg !1746
  %53 = load float, ptr %arrayidx19.i80, align 4, !dbg !1746, !tbaa !954
  %sub20.i81 = add nsw i64 %i.043.i78, -1, !dbg !1747
  %arrayidx21.i82 = getelementptr inbounds float, ptr %call9, i64 %sub20.i81, !dbg !1748
  %54 = load float, ptr %arrayidx21.i82, align 4, !dbg !1748, !tbaa !954
  %sub22.i83 = fsub float %53, %54, !dbg !1749
  %conv24.i84 = fmul float %sub22.i83, 5.000000e-01, !dbg !1750
  %arrayidx25.i85 = getelementptr inbounds float, ptr %call10, i64 %i.043.i78, !dbg !1751
  store float %conv24.i84, ptr %arrayidx25.i85, align 4, !dbg !1752, !tbaa !954
  call void @llvm.dbg.value(metadata i64 %add.i79, metadata !1564, metadata !DIExpression()) #14, !dbg !1726
  %exitcond.not.i86 = icmp eq i64 %add.i79, 255, !dbg !1753
  br i1 %exitcond.not.i86, label %DerivativeHistogram.exit88, label %for.body.i87, !dbg !1744, !llvm.loop !1754

DerivativeHistogram.exit88:                       ; preds = %for.body.i87
  %conv61 = fptrunc double %smooth_threshold to float, !dbg !1756
  call void @llvm.dbg.value(metadata ptr %call10, metadata !1634, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata float %conv61, metadata !1635, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata ptr %crossings63, metadata !1636, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i64 0, metadata !1637, metadata !DIExpression()), !dbg !1757
  %fneg.i89 = fneg float %conv61
  br label %for.body.i95, !dbg !1759

for.body.i95:                                     ; preds = %for.inc.i99.for.body.i95_crit_edge, %DerivativeHistogram.exit88
  %55 = phi float [ %conv6.i68, %DerivativeHistogram.exit88 ], [ %.pre186, %for.inc.i99.for.body.i95_crit_edge ], !dbg !1760
  %i.052.i90 = phi i64 [ 0, %DerivativeHistogram.exit88 ], [ %inc.i97, %for.inc.i99.for.body.i95_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %i.052.i90, metadata !1637, metadata !DIExpression()), !dbg !1757
  %cmp1.i92 = fcmp uge float %55, %conv61, !dbg !1761
  %cmp3.i93 = fcmp ult float %55, %fneg.i89
  %or.cond.i94 = or i1 %cmp1.i92, %cmp3.i93, !dbg !1762
  br i1 %or.cond.i94, label %for.inc.i99, label %if.then.i96, !dbg !1762

if.then.i96:                                      ; preds = %for.body.i95
  %arrayidx.i91 = getelementptr inbounds float, ptr %call10, i64 %i.052.i90, !dbg !1760
  store float 0.000000e+00, ptr %arrayidx.i91, align 4, !dbg !1763, !tbaa !954
  br label %for.inc.i99, !dbg !1764

for.inc.i99:                                      ; preds = %if.then.i96, %for.body.i95
  %inc.i97 = add nuw nsw i64 %i.052.i90, 1, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %inc.i97, metadata !1637, metadata !DIExpression()), !dbg !1757
  %exitcond.not.i98 = icmp eq i64 %inc.i97, 256, !dbg !1766
  br i1 %exitcond.not.i98, label %for.body7.i105.preheader, label %for.inc.i99.for.body.i95_crit_edge, !dbg !1759, !llvm.loop !1767

for.inc.i99.for.body.i95_crit_edge:               ; preds = %for.inc.i99
  %arrayidx.i91.phi.trans.insert = getelementptr inbounds float, ptr %call10, i64 %inc.i97
  %.pre186 = load float, ptr %arrayidx.i91.phi.trans.insert, align 4, !dbg !1760, !tbaa !954
  br label %for.body.i95, !dbg !1759

for.body7.i105.preheader:                         ; preds = %for.inc.i99
  %crossings63 = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.1.lcssa, i32 2, !dbg !1769
  br label %for.body7.i105, !dbg !1770

for.body7.i105:                                   ; preds = %for.body7.i105.preheader, %for.inc30.i118
  %parity.054.i100 = phi i64 [ %parity.1.i115, %for.inc30.i118 ], [ 0, %for.body7.i105.preheader ]
  %i.153.i101 = phi i64 [ %inc31.i116, %for.inc30.i118 ], [ 0, %for.body7.i105.preheader ]
  call void @llvm.dbg.value(metadata i64 %parity.054.i100, metadata !1638, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i64 %i.153.i101, metadata !1637, metadata !DIExpression()), !dbg !1757
  %arrayidx8.i102 = getelementptr inbounds i16, ptr %crossings63, i64 %i.153.i101, !dbg !1771
  store i16 0, ptr %arrayidx8.i102, align 2, !dbg !1772, !tbaa !854
  %arrayidx9.i103 = getelementptr inbounds float, ptr %call10, i64 %i.153.i101, !dbg !1773
  %56 = load float, ptr %arrayidx9.i103, align 4, !dbg !1773, !tbaa !954
  %cmp10.i104 = fcmp olt float %56, 0.000000e+00, !dbg !1774
  br i1 %cmp10.i104, label %if.then12.i107, label %if.else.i109, !dbg !1775

if.then12.i107:                                   ; preds = %for.body7.i105
  %cmp13.i106 = icmp sgt i64 %parity.054.i100, 0, !dbg !1776
  br i1 %cmp13.i106, label %for.inc30.sink.split.i114, label %for.inc30.i118, !dbg !1777

if.else.i109:                                     ; preds = %for.body7.i105
  %cmp20.i108 = fcmp ogt float %56, 0.000000e+00, !dbg !1778
  br i1 %cmp20.i108, label %if.then22.i111, label %for.inc30.i118, !dbg !1779

if.then22.i111:                                   ; preds = %if.else.i109
  %cmp23.i110 = icmp slt i64 %parity.054.i100, 0, !dbg !1780
  br i1 %cmp23.i110, label %for.inc30.sink.split.i114, label %for.inc30.i118, !dbg !1781

for.inc30.sink.split.i114:                        ; preds = %if.then22.i111, %if.then12.i107
  %.sink.i112 = phi i16 [ -1, %if.then12.i107 ], [ 1, %if.then22.i111 ]
  %parity.1.ph.i113 = phi i64 [ 1, %if.then12.i107 ], [ -1, %if.then22.i111 ]
  store i16 %.sink.i112, ptr %arrayidx8.i102, align 2, !dbg !1782, !tbaa !854
  br label %for.inc30.i118, !dbg !1783

for.inc30.i118:                                   ; preds = %for.inc30.sink.split.i114, %if.then22.i111, %if.else.i109, %if.then12.i107
  %parity.1.i115 = phi i64 [ %parity.054.i100, %if.else.i109 ], [ 1, %if.then12.i107 ], [ -1, %if.then22.i111 ], [ %parity.1.ph.i113, %for.inc30.sink.split.i114 ], !dbg !1757
  call void @llvm.dbg.value(metadata i64 %parity.1.i115, metadata !1638, metadata !DIExpression()), !dbg !1757
  %inc31.i116 = add nuw nsw i64 %i.153.i101, 1, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %inc31.i116, metadata !1637, metadata !DIExpression()), !dbg !1757
  %exitcond55.not.i117 = icmp eq i64 %inc31.i116, 256, !dbg !1784
  br i1 %exitcond55.not.i117, label %ZeroCrossHistogram.exit119, label %for.body7.i105, !dbg !1770, !llvm.loop !1785

ZeroCrossHistogram.exit119:                       ; preds = %for.inc30.i118
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !1425, metadata !DIExpression()), !dbg !1435
  %call65 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call9) #14, !dbg !1787
  call void @llvm.dbg.value(metadata ptr %call65, metadata !1418, metadata !DIExpression()), !dbg !1435
  %call66 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call10) #14, !dbg !1788
  call void @llvm.dbg.value(metadata ptr %call66, metadata !1419, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1789, metadata !DIExpression()) #14, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !1794, metadata !DIExpression()) #14, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !1795, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #14, !dbg !1804
  %cmp287.i.not = icmp eq i64 %i.1.lcssa, 0, !dbg !1806
  br i1 %cmp287.i.not, label %for.cond71.preheader.preheader, label %for.cond1.preheader.i, !dbg !1809

for.cond71.preheader.preheader:                   ; preds = %for.cond.loopexit.i, %ZeroCrossHistogram.exit119
  br label %for.cond71.preheader, !dbg !1810

for.cond.loopexit.i:                              ; preds = %for.inc165.i
  call void @llvm.dbg.value(metadata i64 %i.0289.i, metadata !1795, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #14, !dbg !1804
  %cmp.i120 = icmp sgt i64 %i.0.in288.i, 1, !dbg !1806
  br i1 %cmp.i120, label %for.cond1.preheader.i, label %for.cond71.preheader.preheader, !dbg !1809, !llvm.loop !1812

for.cond1.preheader.i:                            ; preds = %ZeroCrossHistogram.exit119, %for.cond.loopexit.i
  %i.0.in288.i = phi i64 [ %i.0289.i, %for.cond.loopexit.i ], [ %i.1.lcssa, %ZeroCrossHistogram.exit119 ]
  %i.0289.i = add nsw i64 %i.0.in288.i, -1, !dbg !1814
  call void @llvm.dbg.value(metadata i64 0, metadata !1796, metadata !DIExpression()) #14, !dbg !1804
  br label %for.body3.i, !dbg !1815

for.body3.i:                                      ; preds = %for.inc165.i, %for.cond1.preheader.i
  %j.0281.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %inc166.i, %for.inc165.i ]
  call void @llvm.dbg.value(metadata i64 %j.0281.i, metadata !1796, metadata !DIExpression()) #14, !dbg !1804
  %umax.i = tail call i64 @llvm.umax.i64(i64 %j.0281.i, i64 254) #14, !dbg !1817
  %57 = add nuw nsw i64 %umax.i, 1, !dbg !1817
  %arrayidx4.i121 = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.0289.i, i32 2, i64 %j.0281.i, !dbg !1817
  %58 = load i16, ptr %arrayidx4.i121, align 2, !dbg !1817, !tbaa !854
  %cmp5.i = icmp eq i16 %58, 0, !dbg !1821
  br i1 %cmp5.i, label %for.inc165.i, label %if.end.i122, !dbg !1822

if.end.i122:                                      ; preds = %for.body3.i
  %sub7.i = add nsw i64 %j.0281.i, -1, !dbg !1823
  call void @llvm.dbg.value(metadata i64 %sub7.i, metadata !1797, metadata !DIExpression()) #14, !dbg !1804
  %cmp9259.i = icmp ugt i64 %j.0281.i, 1, !dbg !1825
  br i1 %cmp9259.i, label %for.body11.i, label %for.end.i, !dbg !1827

for.body11.i:                                     ; preds = %if.end.i122, %for.inc.i124
  %k.0260.i = phi i64 [ %dec.i, %for.inc.i124 ], [ %sub7.i, %if.end.i122 ]
  call void @llvm.dbg.value(metadata i64 %k.0260.i, metadata !1797, metadata !DIExpression()) #14, !dbg !1804
  %arrayidx14.i123 = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.0.in288.i, i32 2, i64 %k.0260.i, !dbg !1828
  %59 = load i16, ptr %arrayidx14.i123, align 2, !dbg !1828, !tbaa !854
  %cmp16.not.i = icmp eq i16 %59, 0, !dbg !1830
  br i1 %cmp16.not.i, label %for.inc.i124, label %for.end.i, !dbg !1831

for.inc.i124:                                     ; preds = %for.body11.i
  %dec.i = add nsw i64 %k.0260.i, -1, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %dec.i, metadata !1797, metadata !DIExpression()) #14, !dbg !1804
  %cmp9.i = icmp sgt i64 %k.0260.i, 1, !dbg !1825
  br i1 %cmp9.i, label %for.body11.i, label %for.end.i, !dbg !1827, !llvm.loop !1833

for.end.i:                                        ; preds = %for.inc.i124, %for.body11.i, %if.end.i122
  %k.0.lcssa.i = phi i64 [ %sub7.i, %if.end.i122 ], [ 0, %for.inc.i124 ], [ %k.0260.i, %for.body11.i ], !dbg !1835
  call void @llvm.dbg.value(metadata i64 %k.0.lcssa.i, metadata !1836, metadata !DIExpression()) #14, !dbg !1842
  call void @llvm.dbg.value(metadata i64 0, metadata !1841, metadata !DIExpression()) #14, !dbg !1842
  %60 = tail call i64 @llvm.smax.i64(i64 %k.0.lcssa.i, i64 0) #14, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %60, metadata !1802, metadata !DIExpression()) #14, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %j.0281.i, metadata !1799, metadata !DIExpression()) #14, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %j.0281.i, metadata !1797, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1804
  br label %for.cond21.i, !dbg !1844

for.cond21.i:                                     ; preds = %for.body24.i, %for.end.i
  %k.1.in.i = phi i64 [ %j.0281.i, %for.end.i ], [ %k.1.i, %for.body24.i ]
  call void @llvm.dbg.value(metadata i64 %k.1.in.i, metadata !1797, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1804
  %cmp22.i = icmp ult i64 %k.1.in.i, 254, !dbg !1846
  br i1 %cmp22.i, label %for.body24.i, label %for.end35.i, !dbg !1848

for.body24.i:                                     ; preds = %for.cond21.i
  %k.1.i = add nuw nsw i64 %k.1.in.i, 1, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %k.1.i, metadata !1797, metadata !DIExpression()) #14, !dbg !1804
  %arrayidx28.i = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.0.in288.i, i32 2, i64 %k.1.i, !dbg !1850
  %61 = load i16, ptr %arrayidx28.i, align 2, !dbg !1850, !tbaa !854
  %cmp30.not.i = icmp eq i16 %61, 0, !dbg !1852
  br i1 %cmp30.not.i, label %for.cond21.i, label %for.end35.i, !dbg !1853, !llvm.loop !1854

for.end35.i:                                      ; preds = %for.body24.i, %for.cond21.i
  %k.1.lcssa.i = phi i64 [ %k.1.i, %for.body24.i ], [ %57, %for.cond21.i ], !dbg !1849
  call void @llvm.dbg.value(metadata i64 %k.1.lcssa.i, metadata !1856, metadata !DIExpression()) #14, !dbg !1860
  call void @llvm.dbg.value(metadata i64 255, metadata !1859, metadata !DIExpression()) #14, !dbg !1860
  %62 = tail call i64 @llvm.smin.i64(i64 %k.1.lcssa.i, i64 255) #14, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %62, metadata !1803, metadata !DIExpression()) #14, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %sub7.i, metadata !1797, metadata !DIExpression()) #14, !dbg !1804
  br i1 %cmp9259.i, label %for.body41.i, label %for.end52.i, !dbg !1862

for.body41.i:                                     ; preds = %for.end35.i, %for.inc50.i
  %k.2263.i = phi i64 [ %dec51.i, %for.inc50.i ], [ %sub7.i, %for.end35.i ]
  call void @llvm.dbg.value(metadata i64 %k.2263.i, metadata !1797, metadata !DIExpression()) #14, !dbg !1804
  %arrayidx44.i = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.0289.i, i32 2, i64 %k.2263.i, !dbg !1864
  %63 = load i16, ptr %arrayidx44.i, align 2, !dbg !1864, !tbaa !854
  %cmp46.not.i = icmp eq i16 %63, 0, !dbg !1867
  br i1 %cmp46.not.i, label %for.inc50.i, label %for.end52.i, !dbg !1868

for.inc50.i:                                      ; preds = %for.body41.i
  %dec51.i = add nsw i64 %k.2263.i, -1, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %dec51.i, metadata !1797, metadata !DIExpression()) #14, !dbg !1804
  %cmp39.i = icmp sgt i64 %k.2263.i, 1, !dbg !1870
  br i1 %cmp39.i, label %for.body41.i, label %for.end52.i, !dbg !1862, !llvm.loop !1871

for.end52.i:                                      ; preds = %for.inc50.i, %for.body41.i, %for.end35.i
  %k.2.lcssa.i = phi i64 [ %sub7.i, %for.end35.i ], [ 0, %for.inc50.i ], [ %k.2263.i, %for.body41.i ], !dbg !1873
  %64 = tail call i64 @llvm.smax.i64(i64 %k.2.lcssa.i, i64 0) #14, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %64, metadata !1797, metadata !DIExpression()) #14, !dbg !1804
  call void @llvm.dbg.value(metadata i64 -1, metadata !1800, metadata !DIExpression()) #14, !dbg !1804
  %arrayidx60.i = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.0.in288.i, i32 2, i64 %j.0281.i, !dbg !1875
  %65 = load i16, ptr %arrayidx60.i, align 2, !dbg !1875, !tbaa !854
  %cmp62.not.i = icmp eq i16 %65, 0, !dbg !1877
  %.pre.i = add nuw nsw i64 %64, 1, !dbg !1878
  br i1 %cmp62.not.i, label %if.end89.i, label %for.cond66.preheader.i, !dbg !1879

for.cond66.preheader.i:                           ; preds = %for.end52.i
  call void @llvm.dbg.value(metadata i64 0, metadata !1801, metadata !DIExpression()) #14, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %.pre.i, metadata !1798, metadata !DIExpression()) #14, !dbg !1804
  %cmp67267.i = icmp ult i64 %.pre.i, %j.0281.i, !dbg !1880
  br i1 %cmp67267.i, label %for.body69.i, label %for.end82.i, !dbg !1884

for.body69.i:                                     ; preds = %for.cond66.preheader.i, %for.body69.i
  %l.0269.i = phi i64 [ %l.0.i, %for.body69.i ], [ %.pre.i, %for.cond66.preheader.i ]
  %count.0268.i = phi i64 [ %spec.select242.i, %for.body69.i ], [ 0, %for.cond66.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %count.0268.i, metadata !1801, metadata !DIExpression()) #14, !dbg !1804
  %arrayidx73.i = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.0.in288.i, i32 2, i64 %l.0269.i, !dbg !1885
  %66 = load i16, ptr %arrayidx73.i, align 2, !dbg !1885, !tbaa !854
  %cmp75.not.i = icmp ne i16 %66, 0, !dbg !1887
  %inc78.i = zext i1 %cmp75.not.i to i64, !dbg !1888
  %spec.select242.i = add nuw nsw i64 %count.0268.i, %inc78.i, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %spec.select242.i, metadata !1801, metadata !DIExpression()) #14, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %l.0269.i, metadata !1798, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1804
  %l.0.i = add nuw nsw i64 %l.0269.i, 1, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %l.0.i, metadata !1798, metadata !DIExpression()) #14, !dbg !1804
  %cmp67.i = icmp ult i64 %l.0.i, %j.0281.i, !dbg !1880
  br i1 %cmp67.i, label %for.body69.i, label %for.end82.i, !dbg !1884, !llvm.loop !1890

for.end82.i:                                      ; preds = %for.body69.i, %for.cond66.preheader.i
  %count.0.lcssa.i = phi i64 [ 0, %for.cond66.preheader.i ], [ %spec.select242.i, %for.body69.i ], !dbg !1892
  %67 = and i64 %count.0.lcssa.i, 1, !dbg !1893
  %cmp83.i = icmp ne i64 %67, 0, !dbg !1893
  %cmp85.not.i = icmp eq i64 %j.0281.i, %64
  %or.cond.i125 = select i1 %cmp83.i, i1 true, i1 %cmp85.not.i, !dbg !1895
  br i1 %or.cond.i125, label %if.end89.i, label %if.then159.i, !dbg !1895

if.end89.i:                                       ; preds = %for.end82.i, %for.end52.i
  call void @llvm.dbg.value(metadata i64 -1, metadata !1800, metadata !DIExpression()) #14, !dbg !1804
  call void @llvm.dbg.value(metadata i64 0, metadata !1801, metadata !DIExpression()) #14, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %.pre.i, metadata !1798, metadata !DIExpression()) #14, !dbg !1804
  %cmp95272.i = icmp ult i64 %.pre.i, %60, !dbg !1896
  br i1 %cmp95272.i, label %for.body97.i, label %for.end110.i, !dbg !1901

for.body97.i:                                     ; preds = %if.end89.i, %for.body97.i
  %l.1274.i = phi i64 [ %l.1.i, %for.body97.i ], [ %.pre.i, %if.end89.i ]
  %count.2273.i = phi i64 [ %spec.select243.i, %for.body97.i ], [ 0, %if.end89.i ]
  call void @llvm.dbg.value(metadata i64 %count.2273.i, metadata !1801, metadata !DIExpression()) #14, !dbg !1804
  %arrayidx101.i = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.0.in288.i, i32 2, i64 %l.1274.i, !dbg !1902
  %68 = load i16, ptr %arrayidx101.i, align 2, !dbg !1902, !tbaa !854
  %cmp103.not.i = icmp ne i16 %68, 0, !dbg !1904
  %inc106.i = zext i1 %cmp103.not.i to i64, !dbg !1905
  %spec.select243.i = add nuw nsw i64 %count.2273.i, %inc106.i, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %spec.select243.i, metadata !1801, metadata !DIExpression()) #14, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %l.1274.i, metadata !1798, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1804
  %l.1.i = add nuw nsw i64 %l.1274.i, 1, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %l.1.i, metadata !1798, metadata !DIExpression()) #14, !dbg !1804
  %exitcond.not.i126 = icmp eq i64 %l.1.i, %60, !dbg !1896
  br i1 %exitcond.not.i126, label %for.end110.i, label %for.body97.i, !dbg !1901, !llvm.loop !1907

for.end110.i:                                     ; preds = %for.body97.i, %if.end89.i
  %count.2.lcssa.i = phi i64 [ 0, %if.end89.i ], [ %spec.select243.i, %for.body97.i ], !dbg !1909
  %69 = and i64 %count.2.lcssa.i, 1, !dbg !1910
  %cmp112.i = icmp ne i64 %69, 0, !dbg !1910
  %cmp115.not.i = icmp eq i64 %60, %64
  %or.cond244.i = select i1 %cmp112.i, i1 true, i1 %cmp115.not.i, !dbg !1912
  br i1 %or.cond244.i, label %for.cond124.preheader.i, label %if.then159.i, !dbg !1912

for.cond124.preheader.i:                          ; preds = %for.end110.i
  call void @llvm.dbg.value(metadata i64 0, metadata !1801, metadata !DIExpression()) #14, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %.pre.i, metadata !1798, metadata !DIExpression()) #14, !dbg !1804
  %cmp125277.i = icmp ult i64 %.pre.i, %62, !dbg !1913
  br i1 %cmp125277.i, label %for.body127.i, label %for.end140.i, !dbg !1918

for.body127.i:                                    ; preds = %for.cond124.preheader.i, %for.body127.i
  %l.2279.i = phi i64 [ %l.2.i, %for.body127.i ], [ %.pre.i, %for.cond124.preheader.i ]
  %count.4278.i = phi i64 [ %spec.select245.i, %for.body127.i ], [ 0, %for.cond124.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %count.4278.i, metadata !1801, metadata !DIExpression()) #14, !dbg !1804
  %arrayidx131.i = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.0.in288.i, i32 2, i64 %l.2279.i, !dbg !1919
  %70 = load i16, ptr %arrayidx131.i, align 2, !dbg !1919, !tbaa !854
  %cmp133.not.i = icmp ne i16 %70, 0, !dbg !1921
  %inc136.i = zext i1 %cmp133.not.i to i64, !dbg !1922
  %spec.select245.i = add nuw nsw i64 %count.4278.i, %inc136.i, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %spec.select245.i, metadata !1801, metadata !DIExpression()) #14, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %l.2279.i, metadata !1798, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1804
  %l.2.i = add nuw nsw i64 %l.2279.i, 1, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %l.2.i, metadata !1798, metadata !DIExpression()) #14, !dbg !1804
  %exitcond290.not.i = icmp eq i64 %l.2.i, %62, !dbg !1913
  br i1 %exitcond290.not.i, label %for.end140.i, label %for.body127.i, !dbg !1918, !llvm.loop !1924

for.end140.i:                                     ; preds = %for.body127.i, %for.cond124.preheader.i
  %count.4.lcssa.i = phi i64 [ 0, %for.cond124.preheader.i ], [ %spec.select245.i, %for.body127.i ], !dbg !1926
  %71 = and i64 %count.4.lcssa.i, 1, !dbg !1927
  %cmp142.i = icmp ne i64 %71, 0, !dbg !1927
  %cmp145.not.i = icmp eq i64 %62, %64
  %or.cond246.i = select i1 %cmp142.i, i1 true, i1 %cmp145.not.i, !dbg !1929
  br i1 %or.cond246.i, label %if.end149.i, label %if.then159.i, !dbg !1929

if.end149.i:                                      ; preds = %for.end140.i
  call void @llvm.dbg.value(metadata i64 -1, metadata !1800, metadata !DIExpression()) #14, !dbg !1804
  call void @llvm.dbg.value(metadata i16 %58, metadata !1798, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #14, !dbg !1804
  store i16 0, ptr %arrayidx4.i121, align 2, !dbg !1930, !tbaa !854
  br label %for.inc165.i, !dbg !1931

if.then159.i:                                     ; preds = %for.end140.i, %for.end110.i, %for.end82.i
  %correct.2.ph.i = phi i64 [ %62, %for.end140.i ], [ %60, %for.end110.i ], [ %j.0281.i, %for.end82.i ]
  call void @llvm.dbg.value(metadata i64 -1, metadata !1800, metadata !DIExpression()) #14, !dbg !1804
  call void @llvm.dbg.value(metadata i16 %58, metadata !1798, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #14, !dbg !1804
  store i16 0, ptr %arrayidx4.i121, align 2, !dbg !1930, !tbaa !854
  %arrayidx163.i = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.0289.i, i32 2, i64 %correct.2.ph.i, !dbg !1932
  store i16 %58, ptr %arrayidx163.i, align 2, !dbg !1934, !tbaa !854
  br label %for.inc165.i, !dbg !1932

for.inc165.i:                                     ; preds = %if.then159.i, %if.end149.i, %for.body3.i
  %inc166.i = add nuw nsw i64 %j.0281.i, 1, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %inc166.i, metadata !1796, metadata !DIExpression()) #14, !dbg !1804
  %exitcond291.not.i = icmp eq i64 %inc166.i, 256, !dbg !1936
  br i1 %exitcond291.not.i, label %for.cond.loopexit.i, label %for.body3.i, !dbg !1815, !llvm.loop !1937

for.cond71.preheader:                             ; preds = %for.cond71.preheader.preheader, %for.end108
  %i.2155 = phi i64 [ %inc119, %for.end108 ], [ 0, %for.cond71.preheader.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.2155, metadata !1422, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 0, metadata !1427, metadata !DIExpression()), !dbg !1435
  br label %for.body74, !dbg !1939

for.body74:                                       ; preds = %for.cond71.preheader, %for.inc83
  %j.1153 = phi i64 [ 0, %for.cond71.preheader ], [ %inc84, %for.inc83 ]
  call void @llvm.dbg.value(metadata i64 %j.1153, metadata !1427, metadata !DIExpression()), !dbg !1435
  %arrayidx77 = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.2155, i32 2, i64 %j.1153, !dbg !1943
  %72 = load i16, ptr %arrayidx77, align 2, !dbg !1943, !tbaa !854
  %cmp79.not = icmp eq i16 %72, 0, !dbg !1946
  br i1 %cmp79.not, label %for.inc83, label %for.end85, !dbg !1947

for.inc83:                                        ; preds = %for.body74
  %inc84 = add nuw nsw i64 %j.1153, 1, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %inc84, metadata !1427, metadata !DIExpression()), !dbg !1435
  %exitcond178.not = icmp eq i64 %inc84, 255, !dbg !1949
  br i1 %exitcond178.not, label %for.inc83.for.end85_crit_edge, label %for.body74, !dbg !1939, !llvm.loop !1950

for.inc83.for.end85_crit_edge:                    ; preds = %for.inc83
  %arrayidx88.phi.trans.insert = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.2155, i32 2, i64 255
  %.pre187 = load i16, ptr %arrayidx88.phi.trans.insert, align 2, !dbg !1952, !tbaa !854
  br label %for.end85, !dbg !1939

for.end85:                                        ; preds = %for.body74, %for.inc83.for.end85_crit_edge
  %73 = phi i16 [ %.pre187, %for.inc83.for.end85_crit_edge ], [ %72, %for.body74 ], !dbg !1952
  %crossings87 = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.2155, i32 2, !dbg !1953
  %sub90 = sub i16 0, %73, !dbg !1954
  store i16 %sub90, ptr %crossings87, align 4, !dbg !1955, !tbaa !854
  call void @llvm.dbg.value(metadata i64 255, metadata !1427, metadata !DIExpression()), !dbg !1435
  br label %for.body98, !dbg !1956

for.body98:                                       ; preds = %for.end85, %for.inc107
  %j.2154 = phi i64 [ 255, %for.end85 ], [ %dec, %for.inc107 ]
  call void @llvm.dbg.value(metadata i64 %j.2154, metadata !1427, metadata !DIExpression()), !dbg !1435
  %arrayidx101 = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.2155, i32 2, i64 %j.2154, !dbg !1958
  %74 = load i16, ptr %arrayidx101, align 2, !dbg !1958, !tbaa !854
  %cmp103.not = icmp eq i16 %74, 0, !dbg !1961
  br i1 %cmp103.not, label %for.inc107, label %for.end108, !dbg !1962

for.inc107:                                       ; preds = %for.body98
  %dec = add nsw i64 %j.2154, -1, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1427, metadata !DIExpression()), !dbg !1435
  %cmp96 = icmp ugt i64 %j.2154, 1, !dbg !1964
  br i1 %cmp96, label %for.body98, label %for.end108, !dbg !1956, !llvm.loop !1965

for.end108:                                       ; preds = %for.body98, %for.inc107
  %75 = phi i16 [ %sub90, %for.inc107 ], [ %74, %for.body98 ], !dbg !1967
  %sub113 = sub i16 0, %75, !dbg !1968
  %arrayidx117 = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %i.2155, i32 2, i64 255, !dbg !1969
  store i16 %sub113, ptr %arrayidx117, align 2, !dbg !1970, !tbaa !854
  %inc119 = add nuw i64 %i.2155, 1, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %inc119, metadata !1422, metadata !DIExpression()), !dbg !1435
  %exitcond179.not = icmp eq i64 %i.2155, %i.1.lcssa, !dbg !1972
  br i1 %exitcond179.not, label %for.end120, label %for.cond71.preheader, !dbg !1810, !llvm.loop !1973

for.end120:                                       ; preds = %for.end108
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1975, metadata !DIExpression()) #14, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !1982, metadata !DIExpression()) #14, !dbg !1992
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_nodes.i) #14, !dbg !1994
  %call.i127 = tail call ptr @AcquireQuantumMemory(i64 noundef 600, i64 noundef 8) #15, !dbg !1995
  call void @llvm.dbg.value(metadata ptr %call.i127, metadata !1984, metadata !DIExpression()) #14, !dbg !1992
  %cmp.i128 = icmp eq ptr %call.i127, null, !dbg !1996
  br i1 %cmp.i128, label %InitializeIntervalTree.exit.thread, label %if.end.i130, !dbg !1998

InitializeIntervalTree.exit.thread:               ; preds = %for.end120
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_nodes.i) #14, !dbg !1999
  call void @llvm.dbg.value(metadata ptr %call1.i129, metadata !1415, metadata !DIExpression()), !dbg !1435
  br label %cleanup, !dbg !2000

if.end.i130:                                      ; preds = %for.end120
  %call1.i129 = tail call ptr @AcquireMagickMemory(i64 noundef 48) #16, !dbg !2001
  call void @llvm.dbg.value(metadata ptr %call1.i129, metadata !1986, metadata !DIExpression()) #14, !dbg !1992
  %sibling.i = getelementptr inbounds %struct._IntervalTree, ptr %call1.i129, i64 0, i32 5, !dbg !2002
  store float 0.000000e+00, ptr %call1.i129, align 8, !dbg !2003, !tbaa !2004
  %left2.i = getelementptr inbounds %struct._IntervalTree, ptr %call1.i129, i64 0, i32 1, !dbg !2006
  store i64 0, ptr %left2.i, align 8, !dbg !2007, !tbaa !2008
  %right.i = getelementptr inbounds %struct._IntervalTree, ptr %call1.i129, i64 0, i32 2, !dbg !2009
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %sibling.i, i8 0, i64 16, i1 false) #14, !dbg !2010
  store i64 255, ptr %right.i, align 8, !dbg !2011, !tbaa !2012
  call void @llvm.dbg.value(metadata i64 -1, metadata !1987, metadata !DIExpression()) #14, !dbg !1992
  br label %for.body.i131, !dbg !2013

for.body.i131:                                    ; preds = %if.end.i130, %for.inc58.i
  %i.0128.i = phi i64 [ %add13.i, %for.inc58.i ], [ -1, %if.end.i130 ]
  call void @llvm.dbg.value(metadata i64 %i.0128.i, metadata !1987, metadata !DIExpression()) #14, !dbg !1992
  call void @llvm.dbg.value(metadata i64 0, metadata !1991, metadata !DIExpression()) #14, !dbg !1992
  store i64 0, ptr %number_nodes.i, align 8, !dbg !2015, !tbaa !955
  call void @llvm.dbg.value(metadata ptr %number_nodes.i, metadata !1991, metadata !DIExpression(DW_OP_deref)) #14, !dbg !1992
  call fastcc void @InitializeList(ptr noundef nonnull %call.i127, ptr noundef nonnull %number_nodes.i, ptr noundef nonnull %call1.i129) #14, !dbg !2018
  call void @llvm.dbg.value(metadata i64 0, metadata !1988, metadata !DIExpression()) #14, !dbg !1992
  %76 = load i64, ptr %number_nodes.i, align 8, !dbg !2019, !tbaa !955
  call void @llvm.dbg.value(metadata i64 %76, metadata !1991, metadata !DIExpression()) #14, !dbg !1992
  %cmp5125.i = icmp sgt i64 %76, 0, !dbg !2022
  %add13.i = add nsw i64 %i.0128.i, 1
  br i1 %cmp5125.i, label %for.body6.lr.ph.i, label %for.inc58.i, !dbg !2023

for.body6.lr.ph.i:                                ; preds = %for.body.i131
  %arrayidx14.i132 = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %add13.i
  br label %for.body6.i, !dbg !2023

for.body6.i:                                      ; preds = %for.inc55.i, %for.body6.lr.ph.i
  %j.0126.i = phi i64 [ 0, %for.body6.lr.ph.i ], [ %inc56.i, %for.inc55.i ]
  call void @llvm.dbg.value(metadata i64 %j.0126.i, metadata !1988, metadata !DIExpression()) #14, !dbg !1992
  %arrayidx.i133 = getelementptr inbounds ptr, ptr %call.i127, i64 %j.0126.i, !dbg !2024
  %77 = load ptr, ptr %arrayidx.i133, align 8, !dbg !2024, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %77, metadata !1983, metadata !DIExpression()) #14, !dbg !1992
  %left7.i = getelementptr inbounds %struct._IntervalTree, ptr %77, i64 0, i32 1, !dbg !2026
  %78 = load i64, ptr %left7.i, align 8, !dbg !2026, !tbaa !2008
  call void @llvm.dbg.value(metadata i64 %78, metadata !1990, metadata !DIExpression()) #14, !dbg !1992
  call void @llvm.dbg.value(metadata ptr %77, metadata !1985, metadata !DIExpression()) #14, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %78, metadata !1989, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1992
  %right10.i = getelementptr inbounds %struct._IntervalTree, ptr %77, i64 0, i32 2
  %k.0119.i = add nsw i64 %78, 1, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %k.0119.i, metadata !1989, metadata !DIExpression()) #14, !dbg !1992
  %79 = load i64, ptr %right10.i, align 8, !dbg !2029, !tbaa !2012
  %cmp11120.i = icmp slt i64 %k.0119.i, %79, !dbg !2031
  br i1 %cmp11120.i, label %for.body12.preheader.i, label %for.inc55.i, !dbg !2032

for.body12.preheader.i:                           ; preds = %for.body6.i
  %child23.i = getelementptr inbounds %struct._IntervalTree, ptr %77, i64 0, i32 6
  br label %for.body12.i, !dbg !2032

for.body12.i:                                     ; preds = %for.inc.i137, %for.body12.preheader.i
  %80 = phi i64 [ %83, %for.inc.i137 ], [ %79, %for.body12.preheader.i ]
  %k.0123.i = phi i64 [ %k.0.i, %for.inc.i137 ], [ %k.0119.i, %for.body12.preheader.i ]
  %left.0122.i = phi i64 [ %left.1.i, %for.inc.i137 ], [ %78, %for.body12.preheader.i ]
  %node.0121.i = phi ptr [ %node.2.i, %for.inc.i137 ], [ %77, %for.body12.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %left.0122.i, metadata !1990, metadata !DIExpression()) #14, !dbg !1992
  call void @llvm.dbg.value(metadata ptr %node.0121.i, metadata !1985, metadata !DIExpression()) #14, !dbg !1992
  %arrayidx15.i = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %add13.i, i32 2, i64 %k.0123.i, !dbg !2033
  %81 = load i16, ptr %arrayidx15.i, align 2, !dbg !2033, !tbaa !854
  %cmp16.not.i134 = icmp eq i16 %81, 0, !dbg !2036
  br i1 %cmp16.not.i134, label %for.inc.i137, label %if.then18.i, !dbg !2037

if.then18.i:                                      ; preds = %for.body12.i
  %cmp19.i = icmp eq ptr %node.0121.i, %77, !dbg !2038
  %call22.i135 = call ptr @AcquireMagickMemory(i64 noundef 48) #16, !dbg !2041
  %sibling26.i = getelementptr inbounds %struct._IntervalTree, ptr %node.0121.i, i64 0, i32 5
  %spec.select.i = select i1 %cmp19.i, ptr %child23.i, ptr %sibling26.i, !dbg !2042
  store ptr %call22.i135, ptr %spec.select.i, align 8, !dbg !2041, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %call22.i135, metadata !1985, metadata !DIExpression()) #14, !dbg !1992
  %82 = load float, ptr %arrayidx14.i132, align 4, !dbg !2043, !tbaa !1455
  store float %82, ptr %call22.i135, align 8, !dbg !2044, !tbaa !2004
  %sibling34.i = getelementptr inbounds %struct._IntervalTree, ptr %call22.i135, i64 0, i32 5, !dbg !2045
  %left35.i = getelementptr inbounds %struct._IntervalTree, ptr %call22.i135, i64 0, i32 1, !dbg !2046
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %sibling34.i, i8 0, i64 16, i1 false) #14, !dbg !2047
  store i64 %left.0122.i, ptr %left35.i, align 8, !dbg !2048, !tbaa !2008
  %right36.i = getelementptr inbounds %struct._IntervalTree, ptr %call22.i135, i64 0, i32 2, !dbg !2049
  store i64 %k.0123.i, ptr %right36.i, align 8, !dbg !2050, !tbaa !2012
  call void @llvm.dbg.value(metadata i64 %k.0123.i, metadata !1990, metadata !DIExpression()) #14, !dbg !1992
  %.pre.i136 = load i64, ptr %right10.i, align 8, !dbg !2029, !tbaa !2012
  br label %for.inc.i137, !dbg !2051

for.inc.i137:                                     ; preds = %if.then18.i, %for.body12.i
  %83 = phi i64 [ %.pre.i136, %if.then18.i ], [ %80, %for.body12.i ], !dbg !2029
  %node.2.i = phi ptr [ %call22.i135, %if.then18.i ], [ %node.0121.i, %for.body12.i ], !dbg !2052
  %left.1.i = phi i64 [ %k.0123.i, %if.then18.i ], [ %left.0122.i, %for.body12.i ], !dbg !2052
  call void @llvm.dbg.value(metadata i64 %left.1.i, metadata !1990, metadata !DIExpression()) #14, !dbg !1992
  call void @llvm.dbg.value(metadata ptr %node.2.i, metadata !1985, metadata !DIExpression()) #14, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %k.0123.i, metadata !1989, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !1992
  %k.0.i = add nsw i64 %k.0123.i, 1, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %k.0.i, metadata !1989, metadata !DIExpression()) #14, !dbg !1992
  %cmp11.i = icmp slt i64 %k.0.i, %83, !dbg !2031
  br i1 %cmp11.i, label %for.body12.i, label %for.end.i138, !dbg !2032, !llvm.loop !2053

for.end.i138:                                     ; preds = %for.inc.i137
  %.pre130.i = load i64, ptr %left7.i, align 8, !dbg !2055, !tbaa !2008
  %cmp39.not.i = icmp eq i64 %left.1.i, %.pre130.i, !dbg !2057
  br i1 %cmp39.not.i, label %for.inc55.i, label %if.then41.i, !dbg !2058

if.then41.i:                                      ; preds = %for.end.i138
  %call42.i = call ptr @AcquireMagickMemory(i64 noundef 48) #16, !dbg !2059
  %sibling43.i = getelementptr inbounds %struct._IntervalTree, ptr %node.2.i, i64 0, i32 5, !dbg !2061
  store ptr %call42.i, ptr %sibling43.i, align 8, !dbg !2062, !tbaa !2063
  call void @llvm.dbg.value(metadata ptr %call42.i, metadata !1985, metadata !DIExpression()) #14, !dbg !1992
  %84 = load float, ptr %arrayidx14.i132, align 4, !dbg !2064, !tbaa !1455
  store float %84, ptr %call42.i, align 8, !dbg !2065, !tbaa !2004
  %sibling50.i = getelementptr inbounds %struct._IntervalTree, ptr %call42.i, i64 0, i32 5, !dbg !2066
  %left51.i = getelementptr inbounds %struct._IntervalTree, ptr %call42.i, i64 0, i32 1, !dbg !2067
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %sibling50.i, i8 0, i64 16, i1 false) #14, !dbg !2068
  store i64 %left.1.i, ptr %left51.i, align 8, !dbg !2069, !tbaa !2008
  %85 = load i64, ptr %right10.i, align 8, !dbg !2070, !tbaa !2012
  %right53.i = getelementptr inbounds %struct._IntervalTree, ptr %call42.i, i64 0, i32 2, !dbg !2071
  store i64 %85, ptr %right53.i, align 8, !dbg !2072, !tbaa !2012
  br label %for.inc55.i, !dbg !2073

for.inc55.i:                                      ; preds = %if.then41.i, %for.end.i138, %for.body6.i
  %inc56.i = add nuw nsw i64 %j.0126.i, 1, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %inc56.i, metadata !1988, metadata !DIExpression()) #14, !dbg !1992
  %86 = load i64, ptr %number_nodes.i, align 8, !dbg !2019, !tbaa !955
  call void @llvm.dbg.value(metadata i64 %86, metadata !1991, metadata !DIExpression()) #14, !dbg !1992
  %cmp5.i139 = icmp slt i64 %inc56.i, %86, !dbg !2022
  br i1 %cmp5.i139, label %for.body6.i, label %for.inc58.i, !dbg !2023, !llvm.loop !2075

for.inc58.i:                                      ; preds = %for.inc55.i, %for.body.i131
  call void @llvm.dbg.value(metadata i64 %add13.i, metadata !1987, metadata !DIExpression()) #14, !dbg !1992
  %exitcond.not.i140 = icmp eq i64 %add13.i, %i.1.lcssa, !dbg !2077
  br i1 %exitcond.not.i140, label %for.end60.loopexit.i, label %for.body.i131, !dbg !2013, !llvm.loop !2078

for.end60.loopexit.i:                             ; preds = %for.inc58.i
  %child.i = getelementptr inbounds %struct._IntervalTree, ptr %call1.i129, i64 0, i32 6, !dbg !2080
  %.pre131.i = load ptr, ptr %child.i, align 8, !dbg !2081, !tbaa !2082
  call fastcc void @Stability(ptr noundef %.pre131.i) #14, !dbg !2083
  %87 = load ptr, ptr %child.i, align 8, !dbg !2084, !tbaa !2082
  call fastcc void @MeanStability(ptr noundef %87) #14, !dbg !2085
  %call63.i = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call.i127) #14, !dbg !2086
  call void @llvm.dbg.value(metadata ptr %call63.i, metadata !1984, metadata !DIExpression()) #14, !dbg !1992
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_nodes.i) #14, !dbg !1999
  call void @llvm.dbg.value(metadata ptr %call1.i129, metadata !1415, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 0, metadata !1429, metadata !DIExpression()), !dbg !1435
  store i64 0, ptr %number_nodes, align 8, !dbg !2087, !tbaa !955
  %88 = load ptr, ptr %child.i, align 8, !dbg !2088, !tbaa !2082
  call void @llvm.dbg.value(metadata ptr %number_nodes, metadata !1429, metadata !DIExpression(DW_OP_deref)), !dbg !1435
  call fastcc void @ActiveNodes(ptr noundef nonnull %call, ptr noundef nonnull %number_nodes, ptr noundef %88), !dbg !2089
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1435
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %extrema, i8 0, i64 512, i1 false), !dbg !2090, !tbaa !854
  call void @llvm.dbg.value(metadata i32 undef, metadata !1422, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1435
  %89 = load i64, ptr %number_nodes, align 8, !tbaa !955
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %89, metadata !1429, metadata !DIExpression()), !dbg !1435
  %cmp135172 = icmp sgt i64 %89, 0, !dbg !2093
  br i1 %cmp135172, label %for.body137, label %for.cond221.preheader, !dbg !2096

for.cond221.preheader:                            ; preds = %for.inc218, %for.end60.loopexit.i
  call void @llvm.dbg.value(metadata i32 undef, metadata !1429, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 undef, metadata !1422, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1435
  call void @llvm.dbg.value(metadata float undef, metadata !1417, metadata !DIExpression()), !dbg !1435
  call fastcc void @FreeNodes(ptr noundef nonnull %call1.i129), !dbg !2097
  %call233 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1) #14, !dbg !2098
  call void @llvm.dbg.value(metadata ptr %call233, metadata !1430, metadata !DIExpression()), !dbg !1435
  %call234 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #14, !dbg !2099
  call void @llvm.dbg.value(metadata ptr %call234, metadata !1413, metadata !DIExpression()), !dbg !1435
  br label %cleanup, !dbg !2100

for.body137:                                      ; preds = %for.end60.loopexit.i, %for.inc218
  %i.4173 = phi i64 [ %inc219, %for.inc218 ], [ 0, %for.end60.loopexit.i ]
  call void @llvm.dbg.value(metadata i64 %i.4173, metadata !1422, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 0, metadata !1428, metadata !DIExpression()), !dbg !1435
  %arrayidx138 = getelementptr inbounds ptr, ptr %call, i64 %i.4173, !dbg !2101
  %90 = load ptr, ptr %arrayidx138, align 8, !dbg !2101, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %90, metadata !1414, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 0, metadata !1427, metadata !DIExpression()), !dbg !1435
  %91 = load float, ptr %90, align 8, !tbaa !2004
  br label %for.body142, !dbg !2103

for.body142:                                      ; preds = %for.body137, %for.inc150
  %k.0161 = phi i64 [ 0, %for.body137 ], [ %k.1, %for.inc150 ]
  %j.3159 = phi i64 [ 0, %for.body137 ], [ %inc151, %for.inc150 ]
  call void @llvm.dbg.value(metadata i64 %k.0161, metadata !1428, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %j.3159, metadata !1427, metadata !DIExpression()), !dbg !1435
  %arrayidx143 = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %j.3159, !dbg !2105
  %92 = load float, ptr %arrayidx143, align 4, !dbg !2108, !tbaa !1455
  %cmp146 = fcmp oeq float %92, %91, !dbg !2109
  br i1 %cmp146, label %if.then148, label %for.inc150, !dbg !2110

if.then148:                                       ; preds = %for.body142
  call void @llvm.dbg.value(metadata i64 %j.3159, metadata !1428, metadata !DIExpression()), !dbg !1435
  br label %for.inc150, !dbg !2111

for.inc150:                                       ; preds = %for.body142, %if.then148
  %k.1 = phi i64 [ %j.3159, %if.then148 ], [ %k.0161, %for.body142 ], !dbg !2112
  call void @llvm.dbg.value(metadata i64 %k.1, metadata !1428, metadata !DIExpression()), !dbg !1435
  %inc151 = add nuw i64 %j.3159, 1, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %inc151, metadata !1427, metadata !DIExpression()), !dbg !1435
  %exitcond180.not = icmp eq i64 %j.3159, %i.1.lcssa, !dbg !2114
  br i1 %exitcond180.not, label %for.end152, label %for.body142, !dbg !2103, !llvm.loop !2115

for.end152:                                       ; preds = %for.inc150
  %right = getelementptr inbounds %struct._IntervalTree, ptr %90, i64 0, i32 2, !dbg !2117
  %93 = load i64, ptr %right, align 8, !dbg !2117, !tbaa !2012
  %arrayidx155 = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %k.1, i32 2, i64 %93, !dbg !2118
  %94 = load i16, ptr %arrayidx155, align 2, !dbg !2118, !tbaa !854
  %cmp157 = icmp eq i16 %94, -1, !dbg !2119
  call void @llvm.dbg.value(metadata i32 undef, metadata !1416, metadata !DIExpression()), !dbg !1435
  %left = getelementptr inbounds %struct._IntervalTree, ptr %90, i64 0, i32 1, !dbg !2120
  %95 = load i64, ptr %left, align 8, !dbg !2120, !tbaa !2008
  call void @llvm.dbg.value(metadata float undef, metadata !1421, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %95, metadata !1423, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %95, metadata !1426, metadata !DIExpression()), !dbg !1435
  %cmp165.not162 = icmp sgt i64 %95, %93, !dbg !2121
  br i1 %cmp165.not162, label %for.inc218, label %for.body167.lr.ph, !dbg !2124

for.body167.lr.ph:                                ; preds = %for.end152
  %arrayidx161 = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %k.1, i32 1, i64 %95, !dbg !2125
  %96 = load float, ptr %arrayidx161, align 4, !dbg !2125, !tbaa !954
  call void @llvm.dbg.value(metadata float %96, metadata !1421, metadata !DIExpression()), !dbg !1435
  br i1 %cmp157, label %for.body167.us, label %for.body167, !dbg !2126

for.body167.us:                                   ; preds = %for.body167.lr.ph, %for.inc192.us.for.body167.us_crit_edge
  %97 = phi float [ %.pre190, %for.inc192.us.for.body167.us_crit_edge ], [ %96, %for.body167.lr.ph ], !dbg !2128
  %index.0166.us = phi i64 [ %index.1.us, %for.inc192.us.for.body167.us_crit_edge ], [ %95, %for.body167.lr.ph ]
  %x.0164.us = phi i64 [ %inc193.us, %for.inc192.us.for.body167.us_crit_edge ], [ %95, %for.body167.lr.ph ]
  %value.0163.us = phi float [ %value.1.us, %for.inc192.us.for.body167.us_crit_edge ], [ %96, %for.body167.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %index.0166.us, metadata !1426, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %x.0164.us, metadata !1423, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata float %value.0163.us, metadata !1421, metadata !DIExpression()), !dbg !1435
  %cmp174.us = fcmp ogt float %97, %value.0163.us, !dbg !2132
  br i1 %cmp174.us, label %if.then176.us, label %for.inc192.us, !dbg !2133

if.then176.us:                                    ; preds = %for.body167.us
  call void @llvm.dbg.value(metadata float %97, metadata !1421, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %x.0164.us, metadata !1426, metadata !DIExpression()), !dbg !1435
  br label %for.inc192.us, !dbg !2134

for.inc192.us:                                    ; preds = %if.then176.us, %for.body167.us
  %value.1.us = phi float [ %97, %if.then176.us ], [ %value.0163.us, %for.body167.us ], !dbg !2112
  %index.1.us = phi i64 [ %x.0164.us, %if.then176.us ], [ %index.0166.us, %for.body167.us ], !dbg !2112
  call void @llvm.dbg.value(metadata i64 %index.1.us, metadata !1426, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata float %value.1.us, metadata !1421, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %x.0164.us, metadata !1423, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1435
  %exitcond182.not = icmp eq i64 %x.0164.us, %93, !dbg !2121
  br i1 %exitcond182.not, label %for.cond196.preheader, label %for.inc192.us.for.body167.us_crit_edge, !dbg !2124, !llvm.loop !2136

for.inc192.us.for.body167.us_crit_edge:           ; preds = %for.inc192.us
  %inc193.us = add i64 %x.0164.us, 1, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %inc193.us, metadata !1423, metadata !DIExpression()), !dbg !1435
  %arrayidx173.us.phi.trans.insert = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %k.1, i32 1, i64 %inc193.us
  %.pre190 = load float, ptr %arrayidx173.us.phi.trans.insert, align 4, !dbg !2128, !tbaa !954
  br label %for.body167.us, !dbg !2124

for.cond196.preheader:                            ; preds = %for.inc192, %for.inc192.us
  %index.0.lcssa = phi i64 [ %index.1.us, %for.inc192.us ], [ %index.1, %for.inc192 ], !dbg !2112
  call void @llvm.dbg.value(metadata i64 %index.0.lcssa, metadata !1426, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %95, metadata !1423, metadata !DIExpression()), !dbg !1435
  br i1 %cmp165.not162, label %for.inc218, label %for.body200.lr.ph, !dbg !2139

for.body200.lr.ph:                                ; preds = %for.cond196.preheader
  br i1 %cmp157, label %for.body200.us, label %for.body200, !dbg !2141

for.body200.us:                                   ; preds = %for.body200.lr.ph, %for.body200.us
  %index.2171.us = phi i64 [ %spec.store.select.us, %for.body200.us ], [ %index.0.lcssa, %for.body200.lr.ph ]
  %x.1169.us = phi i64 [ %inc216.us, %for.body200.us ], [ %95, %for.body200.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %index.2171.us, metadata !1426, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %x.1169.us, metadata !1423, metadata !DIExpression()), !dbg !1435
  %cmp201.us = icmp eq i64 %index.2171.us, 0, !dbg !2144
  %spec.store.select.us = select i1 %cmp201.us, i64 256, i64 %index.2171.us, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %spec.store.select.us, metadata !1426, metadata !DIExpression()), !dbg !1435
  %conv208.us = trunc i64 %spec.store.select.us to i16, !dbg !2147
  %arrayidx209.us = getelementptr inbounds i16, ptr %extrema, i64 %x.1169.us, !dbg !2149
  store i16 %conv208.us, ptr %arrayidx209.us, align 2, !dbg !2150, !tbaa !854
  %inc216.us = add i64 %x.1169.us, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %inc216.us, metadata !1423, metadata !DIExpression()), !dbg !1435
  %exitcond184.not = icmp eq i64 %x.1169.us, %93, !dbg !2152
  br i1 %exitcond184.not, label %for.inc218, label %for.body200.us, !dbg !2139, !llvm.loop !2153

for.body167:                                      ; preds = %for.body167.lr.ph, %for.inc192.for.body167_crit_edge
  %98 = phi float [ %.pre189, %for.inc192.for.body167_crit_edge ], [ %96, %for.body167.lr.ph ], !dbg !2155
  %index.0166 = phi i64 [ %index.1, %for.inc192.for.body167_crit_edge ], [ %95, %for.body167.lr.ph ]
  %x.0164 = phi i64 [ %inc193, %for.inc192.for.body167_crit_edge ], [ %95, %for.body167.lr.ph ]
  %value.0163 = phi float [ %value.1, %for.inc192.for.body167_crit_edge ], [ %96, %for.body167.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %index.0166, metadata !1426, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %x.0164, metadata !1423, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata float %value.0163, metadata !1421, metadata !DIExpression()), !dbg !1435
  %cmp184 = fcmp olt float %98, %value.0163, !dbg !2157
  br i1 %cmp184, label %if.then186, label %for.inc192, !dbg !2158

if.then186:                                       ; preds = %for.body167
  call void @llvm.dbg.value(metadata float %98, metadata !1421, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %x.0164, metadata !1426, metadata !DIExpression()), !dbg !1435
  br label %for.inc192, !dbg !2159

for.inc192:                                       ; preds = %if.then186, %for.body167
  %value.1 = phi float [ %98, %if.then186 ], [ %value.0163, %for.body167 ], !dbg !2112
  %index.1 = phi i64 [ %x.0164, %if.then186 ], [ %index.0166, %for.body167 ], !dbg !2112
  call void @llvm.dbg.value(metadata i64 %index.1, metadata !1426, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata float %value.1, metadata !1421, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %x.0164, metadata !1423, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1435
  %exitcond181.not = icmp eq i64 %x.0164, %93, !dbg !2121
  br i1 %exitcond181.not, label %for.cond196.preheader, label %for.inc192.for.body167_crit_edge, !dbg !2124, !llvm.loop !2136

for.inc192.for.body167_crit_edge:                 ; preds = %for.inc192
  %inc193 = add i64 %x.0164, 1, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %inc193, metadata !1423, metadata !DIExpression()), !dbg !1435
  %arrayidx183.phi.trans.insert = getelementptr inbounds %struct._ZeroCrossing, ptr %call1, i64 %k.1, i32 1, i64 %inc193
  %.pre189 = load float, ptr %arrayidx183.phi.trans.insert, align 4, !dbg !2155, !tbaa !954
  br label %for.body167, !dbg !2124

for.body200:                                      ; preds = %for.body200.lr.ph, %for.body200
  %index.2171 = phi i64 [ %spec.store.select, %for.body200 ], [ %index.0.lcssa, %for.body200.lr.ph ]
  %x.1169 = phi i64 [ %inc216, %for.body200 ], [ %95, %for.body200.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %index.2171, metadata !1426, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %x.1169, metadata !1423, metadata !DIExpression()), !dbg !1435
  %cmp201 = icmp eq i64 %index.2171, 0, !dbg !2144
  %spec.store.select = select i1 %cmp201, i64 256, i64 %index.2171, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %spec.store.select, metadata !1426, metadata !DIExpression()), !dbg !1435
  %99 = trunc i64 %spec.store.select to i16, !dbg !2161
  %conv212 = sub i16 0, %99, !dbg !2161
  %arrayidx213 = getelementptr inbounds i16, ptr %extrema, i64 %x.1169, !dbg !2162
  store i16 %conv212, ptr %arrayidx213, align 2, !dbg !2163, !tbaa !854
  %inc216 = add i64 %x.1169, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %inc216, metadata !1423, metadata !DIExpression()), !dbg !1435
  %exitcond183.not = icmp eq i64 %x.1169, %93, !dbg !2152
  br i1 %exitcond183.not, label %for.inc218, label %for.body200, !dbg !2139, !llvm.loop !2153

for.inc218:                                       ; preds = %for.body200, %for.body200.us, %for.end152, %for.cond196.preheader
  %inc219 = add nuw nsw i64 %i.4173, 1, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %inc219, metadata !1422, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %89, metadata !1429, metadata !DIExpression()), !dbg !1435
  %exitcond185.not = icmp eq i64 %inc219, %89, !dbg !2093
  br i1 %exitcond185.not, label %for.cond221.preheader, label %for.body137, !dbg !2096, !llvm.loop !2165

cleanup:                                          ; preds = %InitializeIntervalTree.exit.thread, %if.end, %entry, %for.cond221.preheader
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_nodes) #14, !dbg !2167
  ret void, !dbg !2167
}

declare !dbg !2168 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare !dbg !2171 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare !dbg !2174 ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @SegmentImage(ptr noundef %image, i32 noundef %colorspace, i32 noundef %verbose, double noundef %cluster_threshold, double noundef %smooth_threshold) local_unnamed_addr #0 !dbg !2178 {
entry:
  %message.i220.i = alloca [4096 x i8], align 16
  %message.i.i = alloca [4096 x i8], align 16
  %blue.i = alloca %struct._ExtentPacket, align 8
  %green.i = alloca %struct._ExtentPacket, align 8
  %red.i = alloca %struct._ExtentPacket, align 8
  %extrema = alloca [3 x ptr], align 16
  %histogram = alloca [3 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !2184, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i32 %colorspace, metadata !2185, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i32 %verbose, metadata !2186, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata double %cluster_threshold, metadata !2187, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata double %smooth_threshold, metadata !2188, metadata !DIExpression()), !dbg !2194
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %extrema) #14, !dbg !2195
  call void @llvm.dbg.declare(metadata ptr %extrema, metadata !2192, metadata !DIExpression()), !dbg !2196
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %histogram) #14, !dbg !2197
  call void @llvm.dbg.declare(metadata ptr %histogram, metadata !2193, metadata !DIExpression()), !dbg !2198
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2199
  %0 = load i32, ptr %debug, align 8, !dbg !2199, !tbaa !749
  %cmp.not = icmp eq i32 %0, 0, !dbg !2201
  br i1 %cmp.not, label %for.body.preheader, label %if.then, !dbg !2202

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2203
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1820, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #14, !dbg !2204
  br label %for.body.preheader, !dbg !2205

for.body.preheader:                               ; preds = %if.then, %entry
  br label %for.body, !dbg !2206

for.body:                                         ; preds = %for.body.preheader, %for.inc27
  %i.0132 = phi i64 [ %inc, %for.inc27 ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0132, metadata !2191, metadata !DIExpression()), !dbg !2194
  %call2 = tail call ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #15, !dbg !2208
  %arrayidx = getelementptr inbounds [3 x ptr], ptr %histogram, i64 0, i64 %i.0132, !dbg !2211
  store ptr %call2, ptr %arrayidx, align 8, !dbg !2212, !tbaa !781
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 2) #15, !dbg !2213
  %arrayidx4 = getelementptr inbounds [3 x ptr], ptr %extrema, i64 0, i64 %i.0132, !dbg !2214
  store ptr %call3, ptr %arrayidx4, align 8, !dbg !2215, !tbaa !781
  %cmp6 = icmp eq ptr %call2, null, !dbg !2216
  %cmp8 = icmp eq ptr %call3, null
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp8, !dbg !2218
  br i1 %or.cond, label %for.cond10.preheader, label %for.inc27, !dbg !2218

for.cond10.preheader:                             ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 %i.0132, metadata !2191, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2194
  %cmp11134.not = icmp eq i64 %i.0132, 0, !dbg !2219
  br i1 %cmp11134.not, label %for.end, label %for.body12, !dbg !2223

for.body12:                                       ; preds = %for.cond10.preheader, %for.body12
  %i.1.in135 = phi i64 [ %i.1, %for.body12 ], [ %i.0132, %for.cond10.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.1.in135, metadata !2191, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2194
  %i.1 = add nsw i64 %i.1.in135, -1, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !2191, metadata !DIExpression()), !dbg !2194
  %arrayidx13 = getelementptr inbounds [3 x ptr], ptr %extrema, i64 0, i64 %i.1, !dbg !2225
  %1 = load ptr, ptr %arrayidx13, align 8, !dbg !2225, !tbaa !781
  %call14 = tail call ptr @RelinquishMagickMemory(ptr noundef %1) #14, !dbg !2227
  store ptr %call14, ptr %arrayidx13, align 8, !dbg !2228, !tbaa !781
  %arrayidx16 = getelementptr inbounds [3 x ptr], ptr %histogram, i64 0, i64 %i.1, !dbg !2229
  %2 = load ptr, ptr %arrayidx16, align 8, !dbg !2229, !tbaa !781
  %call17 = tail call ptr @RelinquishMagickMemory(ptr noundef %2) #14, !dbg !2230
  store ptr %call17, ptr %arrayidx16, align 8, !dbg !2231, !tbaa !781
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !2191, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2194
  %cmp11 = icmp sgt i64 %i.1.in135, 1, !dbg !2219
  br i1 %cmp11, label %for.body12, label %for.end, !dbg !2223, !llvm.loop !2232

for.end:                                          ; preds = %for.body12, %for.cond10.preheader
  %cmp20.not = icmp eq ptr %image, null, !dbg !2234
  br i1 %cmp20.not, label %cleanup, label %if.then21, !dbg !2237

if.then21:                                        ; preds = %for.end
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2234
  %filename22 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2234
  %call24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1833, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename22) #14, !dbg !2234
  br label %cleanup, !dbg !2234

for.inc27:                                        ; preds = %for.body
  %inc = add nuw nsw i64 %i.0132, 1, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2191, metadata !DIExpression()), !dbg !2194
  %exitcond.not = icmp eq i64 %inc, 3, !dbg !2239
  br i1 %exitcond.not, label %for.end28, label %for.body, !dbg !2206, !llvm.loop !2240

for.end28:                                        ; preds = %for.inc27
  %colorspace29 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2242
  %3 = load i32, ptr %colorspace29, align 4, !dbg !2242, !tbaa !2243
  call void @llvm.dbg.value(metadata i32 %3, metadata !2189, metadata !DIExpression()), !dbg !2194
  %call30 = tail call i32 @TransformImageColorspace(ptr noundef %image, i32 noundef %colorspace) #14, !dbg !2244
  %exception32 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2245
  call fastcc void @InitializeHistogram(ptr noundef %image, ptr noundef nonnull %histogram, ptr noundef nonnull %exception32), !dbg !2246
  %4 = load ptr, ptr %histogram, align 16, !dbg !2247, !tbaa !781
  %cmp34 = fcmp oeq double %smooth_threshold, 0.000000e+00, !dbg !2248
  %5 = load ptr, ptr %extrema, align 16, !dbg !2249, !tbaa !781
  br i1 %cmp34, label %cond.end41.thread, label %cond.false48, !dbg !2250

cond.end41.thread:                                ; preds = %for.end28
  tail call fastcc void @OptimalTau(ptr noundef %4, double noundef 2.000000e-01, double noundef 1.000000e+00, ptr noundef %5), !dbg !2251
  %arrayidx37107 = getelementptr inbounds [3 x ptr], ptr %histogram, i64 0, i64 1, !dbg !2252
  %6 = load ptr, ptr %arrayidx37107, align 8, !dbg !2252, !tbaa !781
  %arrayidx43109 = getelementptr inbounds [3 x ptr], ptr %extrema, i64 0, i64 1, !dbg !2253
  %7 = load ptr, ptr %arrayidx43109, align 8, !dbg !2253, !tbaa !781
  tail call fastcc void @OptimalTau(ptr noundef %6, double noundef 2.000000e-01, double noundef 1.000000e+00, ptr noundef %7), !dbg !2254
  br label %cond.end49, !dbg !2255

cond.false48:                                     ; preds = %for.end28
  tail call fastcc void @OptimalTau(ptr noundef %4, double noundef 2.000000e-01, double noundef %smooth_threshold, ptr noundef %5), !dbg !2251
  %arrayidx37 = getelementptr inbounds [3 x ptr], ptr %histogram, i64 0, i64 1, !dbg !2252
  %8 = load ptr, ptr %arrayidx37, align 8, !dbg !2252, !tbaa !781
  %arrayidx43 = getelementptr inbounds [3 x ptr], ptr %extrema, i64 0, i64 1, !dbg !2253
  %9 = load ptr, ptr %arrayidx43, align 8, !dbg !2253, !tbaa !781
  tail call fastcc void @OptimalTau(ptr noundef %8, double noundef 2.000000e-01, double noundef %smooth_threshold, ptr noundef %9), !dbg !2254
  br label %cond.end49, !dbg !2255

cond.end49:                                       ; preds = %cond.end41.thread, %cond.false48
  %10 = phi ptr [ %9, %cond.false48 ], [ %7, %cond.end41.thread ]
  %cond50 = phi double [ %smooth_threshold, %cond.false48 ], [ 1.000000e+00, %cond.end41.thread ], !dbg !2255
  %arrayidx45110 = getelementptr inbounds [3 x ptr], ptr %histogram, i64 0, i64 2, !dbg !2256
  %11 = load ptr, ptr %arrayidx45110, align 16, !dbg !2256, !tbaa !781
  %arrayidx51 = getelementptr inbounds [3 x ptr], ptr %extrema, i64 0, i64 2, !dbg !2257
  %12 = load ptr, ptr %arrayidx51, align 16, !dbg !2257, !tbaa !781
  tail call fastcc void @OptimalTau(ptr noundef %11, double noundef 2.000000e-01, double noundef %cond50, ptr noundef %12), !dbg !2258
  %conv = fptrunc double %cluster_threshold to float, !dbg !2259
  call void @llvm.dbg.value(metadata ptr %image, metadata !2260, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %extrema, metadata !2266, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata float %conv, metadata !2267, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata float 2.500000e+00, metadata !2268, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i32 %verbose, metadata !2269, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %blue.i) #14, !dbg !2328
  call void @llvm.dbg.declare(metadata ptr %blue.i, metadata !2280, metadata !DIExpression()) #14, !dbg !2329
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %green.i) #14, !dbg !2328
  call void @llvm.dbg.declare(metadata ptr %green.i, metadata !2281, metadata !DIExpression()) #14, !dbg !2330
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %red.i) #14, !dbg !2328
  call void @llvm.dbg.declare(metadata ptr %red.i, metadata !2282, metadata !DIExpression()) #14, !dbg !2331
  call void @llvm.dbg.value(metadata ptr null, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr null, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  %call.i = call ptr @ResetMagickMemory(ptr noundef nonnull %red.i, i32 noundef 0, i64 noundef 32) #14, !dbg !2332
  %call1.i = call ptr @ResetMagickMemory(ptr noundef nonnull %green.i, i32 noundef 0, i64 noundef 32) #14, !dbg !2333
  %call2.i = call ptr @ResetMagickMemory(ptr noundef nonnull %blue.i, i32 noundef 0, i64 noundef 32) #14, !dbg !2334
  %left.i.i = getelementptr inbounds %struct._ExtentPacket, ptr %red.i, i64 0, i32 2
  %right.i.i = getelementptr inbounds %struct._ExtentPacket, ptr %red.i, i64 0, i32 3
  %index.i.i = getelementptr inbounds %struct._ExtentPacket, ptr %red.i, i64 0, i32 1
  call void @llvm.dbg.value(metadata ptr %5, metadata !828, metadata !DIExpression()) #14, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %red.i, metadata !836, metadata !DIExpression()) #14, !dbg !2335
  store i64 0, ptr %left.i.i, align 8, !dbg !2337, !tbaa !840
  store float 0.000000e+00, ptr %red.i, align 8, !dbg !2338, !tbaa !844
  store i64 255, ptr %right.i.i, align 8, !dbg !2339, !tbaa !846
  %index.promoted.i297.i = load i64, ptr %index.i.i, align 8, !tbaa !847
  %cmp51.i298.i = icmp slt i64 %index.promoted.i297.i, 256, !dbg !2340
  br i1 %cmp51.i298.i, label %for.body.i.preheader.lr.ph.i, label %if.then35.i, !dbg !2341

for.body.i.preheader.lr.ph.i:                     ; preds = %cond.end49
  %index.i = getelementptr inbounds %struct._ExtentPacket, ptr %green.i, i64 0, i32 1
  %arrayidx5.i = getelementptr inbounds ptr, ptr %extrema, i64 1
  %left.i3.i = getelementptr inbounds %struct._ExtentPacket, ptr %green.i, i64 0, i32 2
  %right.i4.i = getelementptr inbounds %struct._ExtentPacket, ptr %green.i, i64 0, i32 3
  %index9.i = getelementptr inbounds %struct._ExtentPacket, ptr %blue.i, i64 0, i32 1
  %arrayidx11.i = getelementptr inbounds ptr, ptr %extrema, i64 2
  %left.i30.i = getelementptr inbounds %struct._ExtentPacket, ptr %blue.i, i64 0, i32 2
  %right.i31.i = getelementptr inbounds %struct._ExtentPacket, ptr %blue.i, i64 0, i32 3
  br label %for.body.i.preheader.i, !dbg !2341

for.body.i.preheader.i:                           ; preds = %DefineRegion.exit29.i, %for.body.i.preheader.lr.ph.i
  %13 = phi ptr [ %12, %for.body.i.preheader.lr.ph.i ], [ %22, %DefineRegion.exit29.i ]
  %14 = phi ptr [ %10, %for.body.i.preheader.lr.ph.i ], [ %23, %DefineRegion.exit29.i ]
  %index.promoted.i301.i = phi i64 [ %index.promoted.i297.i, %for.body.i.preheader.lr.ph.i ], [ %index.promoted.i.i, %DefineRegion.exit29.i ]
  %15 = phi ptr [ %5, %for.body.i.preheader.lr.ph.i ], [ %24, %DefineRegion.exit29.i ]
  %cluster.0300.i = phi ptr [ null, %for.body.i.preheader.lr.ph.i ], [ %cluster.1265.i, %DefineRegion.exit29.i ]
  %head.0299.i = phi ptr [ null, %for.body.i.preheader.lr.ph.i ], [ %head.1268.i, %DefineRegion.exit29.i ]
  call void @llvm.dbg.value(metadata ptr %cluster.0300.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.0299.i, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  br label %for.body.i.i, !dbg !2341

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.i.preheader.i
  %.pr.i.i = phi i64 [ %inc.i.i, %for.inc.i.i ], [ %index.promoted.i301.i, %for.body.i.preheader.i ]
  %arrayidx.i.i = getelementptr inbounds i16, ptr %15, i64 %.pr.i.i, !dbg !2342
  %16 = load i16, ptr %arrayidx.i.i, align 2, !dbg !2342, !tbaa !854
  %cmp2.i.i = icmp sgt i16 %16, 0, !dbg !2343
  br i1 %cmp2.i.i, label %if.end9.i.i, label %for.inc.i.i, !dbg !2344

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add i64 %.pr.i.i, 1, !dbg !2345
  store i64 %inc.i.i, ptr %index.i.i, align 8, !dbg !2345, !tbaa !847
  %exitcond.not.i.i = icmp eq i64 %inc.i.i, 256, !dbg !2340
  br i1 %exitcond.not.i.i, label %while.end33.i, label %for.body.i.i, !dbg !2341, !llvm.loop !2346

if.end9.i.i:                                      ; preds = %for.body.i.i
  store i64 %.pr.i.i, ptr %left.i.i, align 8, !dbg !2348, !tbaa !840
  %cmp1453.i.i = icmp sgt i64 %.pr.i.i, 255, !dbg !2349
  br i1 %cmp1453.i.i, label %for.body.i11.preheader.preheader.i, label %for.inc24.i.i, !dbg !2350

for.inc24.i.i:                                    ; preds = %if.end9.i.i, %for.inc24.for.body16_crit_edge.i.i
  %17 = phi i64 [ %inc26.i.i, %for.inc24.for.body16_crit_edge.i.i ], [ %.pr.i.i, %if.end9.i.i ]
  %inc26.i.i = add i64 %17, 1, !dbg !2351
  %exitcond56.not.i.i = icmp eq i64 %inc26.i.i, 256, !dbg !2349
  br i1 %exitcond56.not.i.i, label %for.body.i11.preheader.preheader.sink.split.i, label %for.inc24.for.body16_crit_edge.i.i, !dbg !2350, !llvm.loop !2352

for.inc24.for.body16_crit_edge.i.i:               ; preds = %for.inc24.i.i
  %arrayidx18.phi.trans.insert.i.i = getelementptr inbounds i16, ptr %15, i64 %inc26.i.i
  %.pre.i.i = load i16, ptr %arrayidx18.phi.trans.insert.i.i, align 2, !dbg !2354, !tbaa !854
  %cmp20.i.i = icmp slt i16 %.pre.i.i, 0, !dbg !2355
  br i1 %cmp20.i.i, label %for.body.i11.preheader.preheader.sink.split.i, label %for.inc24.i.i, !dbg !2356

for.body.i11.preheader.preheader.sink.split.i:    ; preds = %for.inc24.for.body16_crit_edge.i.i, %for.inc24.i.i
  store i64 %inc26.i.i, ptr %index.i.i, align 8, !dbg !2351, !tbaa !847
  br label %for.body.i11.preheader.preheader.i, !dbg !2357

for.body.i11.preheader.preheader.i:               ; preds = %for.body.i11.preheader.preheader.sink.split.i, %if.end9.i.i
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %if.end9.i.i ], [ %inc26.i.i, %for.body.i11.preheader.preheader.sink.split.i ], !dbg !2358
  %sub.i.i = add nsw i64 %.lcssa.i.i, -1, !dbg !2357
  store i64 %sub.i.i, ptr %right.i.i, align 8, !dbg !2359, !tbaa !846
  call void @llvm.dbg.value(metadata ptr %cluster.0300.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.0299.i, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %14, metadata !828, metadata !DIExpression()) #14, !dbg !2360
  call void @llvm.dbg.value(metadata ptr %green.i, metadata !836, metadata !DIExpression()) #14, !dbg !2360
  store float 0.000000e+00, ptr %green.i, align 8, !dbg !2363, !tbaa !844
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %index.i, i8 0, i64 16, i1 false), !dbg !2364
  store i64 255, ptr %right.i4.i, align 8, !dbg !2365, !tbaa !846
  br label %for.body.i11.preheader.i, !dbg !2366

for.body.i11.preheader.i:                         ; preds = %DefineRegion.exit56.i, %for.body.i11.preheader.preheader.i
  %18 = phi ptr [ %28, %DefineRegion.exit56.i ], [ %13, %for.body.i11.preheader.preheader.i ]
  %19 = phi ptr [ %29, %DefineRegion.exit56.i ], [ %14, %for.body.i11.preheader.preheader.i ]
  %index.promoted.i6294.i = phi i64 [ %index.promoted.i6.i, %DefineRegion.exit56.i ], [ 0, %for.body.i11.preheader.preheader.i ]
  %cluster.1293.i = phi ptr [ %cluster.2259.i, %DefineRegion.exit56.i ], [ %cluster.0300.i, %for.body.i11.preheader.preheader.i ]
  %head.1292.i = phi ptr [ %head.2262.i, %DefineRegion.exit56.i ], [ %head.0299.i, %for.body.i11.preheader.preheader.i ]
  call void @llvm.dbg.value(metadata ptr %cluster.1293.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.1292.i, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  br label %for.body.i11.i, !dbg !2366

for.body.i11.i:                                   ; preds = %for.inc.i14.i, %for.body.i11.preheader.i
  %.pr.i8.i = phi i64 [ %inc.i12.i, %for.inc.i14.i ], [ %index.promoted.i6294.i, %for.body.i11.preheader.i ]
  %arrayidx.i9.i = getelementptr inbounds i16, ptr %19, i64 %.pr.i8.i, !dbg !2367
  %20 = load i16, ptr %arrayidx.i9.i, align 2, !dbg !2367, !tbaa !854
  %cmp2.i10.i = icmp sgt i16 %20, 0, !dbg !2368
  br i1 %cmp2.i10.i, label %if.end9.i16.i, label %for.inc.i14.i, !dbg !2369

for.inc.i14.i:                                    ; preds = %for.body.i11.i
  %inc.i12.i = add i64 %.pr.i8.i, 1, !dbg !2370
  store i64 %inc.i12.i, ptr %index.i, align 8, !dbg !2370, !tbaa !847
  %exitcond.not.i13.i = icmp eq i64 %inc.i12.i, 256, !dbg !2371
  br i1 %exitcond.not.i13.i, label %DefineRegion.exit29.i, label %for.body.i11.i, !dbg !2366, !llvm.loop !2372

if.end9.i16.i:                                    ; preds = %for.body.i11.i
  store i64 %.pr.i8.i, ptr %left.i3.i, align 8, !dbg !2374, !tbaa !840
  %cmp1453.i15.i = icmp sgt i64 %.pr.i8.i, 255, !dbg !2375
  br i1 %cmp1453.i15.i, label %for.body.i38.preheader.preheader.i, label %for.inc24.i21.i, !dbg !2376

for.inc24.i21.i:                                  ; preds = %if.end9.i16.i, %for.inc24.for.body16_crit_edge.i24.i
  %21 = phi i64 [ %inc26.i19.i, %for.inc24.for.body16_crit_edge.i24.i ], [ %.pr.i8.i, %if.end9.i16.i ]
  %inc26.i19.i = add i64 %21, 1, !dbg !2377
  %exitcond56.not.i20.i = icmp eq i64 %inc26.i19.i, 256, !dbg !2375
  br i1 %exitcond56.not.i20.i, label %for.body.i38.preheader.preheader.sink.split.i, label %for.inc24.for.body16_crit_edge.i24.i, !dbg !2376, !llvm.loop !2378

for.inc24.for.body16_crit_edge.i24.i:             ; preds = %for.inc24.i21.i
  %arrayidx18.phi.trans.insert.i22.i = getelementptr inbounds i16, ptr %19, i64 %inc26.i19.i
  %.pre.i23.i = load i16, ptr %arrayidx18.phi.trans.insert.i22.i, align 2, !dbg !2380, !tbaa !854
  %cmp20.i17.i = icmp slt i16 %.pre.i23.i, 0, !dbg !2381
  br i1 %cmp20.i17.i, label %for.body.i38.preheader.preheader.sink.split.i, label %for.inc24.i21.i, !dbg !2382

DefineRegion.exit29.i:                            ; preds = %DefineRegion.exit56.i, %for.inc.i14.i
  %22 = phi ptr [ %18, %for.inc.i14.i ], [ %28, %DefineRegion.exit56.i ]
  %23 = phi ptr [ %19, %for.inc.i14.i ], [ %29, %DefineRegion.exit56.i ]
  %head.1268.i = phi ptr [ %head.1292.i, %for.inc.i14.i ], [ %head.2262.i, %DefineRegion.exit56.i ]
  %cluster.1265.i = phi ptr [ %cluster.1293.i, %for.inc.i14.i ], [ %cluster.2259.i, %DefineRegion.exit56.i ]
  call void @llvm.dbg.value(metadata ptr %cluster.1265.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.1268.i, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  %24 = load ptr, ptr %extrema, align 16, !dbg !2383, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %24, metadata !828, metadata !DIExpression()) #14, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %red.i, metadata !836, metadata !DIExpression()) #14, !dbg !2335
  store i64 0, ptr %left.i.i, align 8, !dbg !2337, !tbaa !840
  store float 0.000000e+00, ptr %red.i, align 8, !dbg !2338, !tbaa !844
  store i64 255, ptr %right.i.i, align 8, !dbg !2339, !tbaa !846
  %index.promoted.i.i = load i64, ptr %index.i.i, align 8, !tbaa !847
  %cmp51.i.i = icmp slt i64 %index.promoted.i.i, 256, !dbg !2340
  br i1 %cmp51.i.i, label %for.body.i.preheader.i, label %while.end33.i, !dbg !2341

for.body.i38.preheader.preheader.sink.split.i:    ; preds = %for.inc24.for.body16_crit_edge.i24.i, %for.inc24.i21.i
  store i64 %inc26.i19.i, ptr %index.i, align 8, !dbg !2377, !tbaa !847
  br label %for.body.i38.preheader.preheader.i, !dbg !2384

for.body.i38.preheader.preheader.i:               ; preds = %for.body.i38.preheader.preheader.sink.split.i, %if.end9.i16.i
  %.lcssa.i25.i = phi i64 [ %.pr.i8.i, %if.end9.i16.i ], [ %inc26.i19.i, %for.body.i38.preheader.preheader.sink.split.i ], !dbg !2385
  %sub.i26.i = add nsw i64 %.lcssa.i25.i, -1, !dbg !2384
  store i64 %sub.i26.i, ptr %right.i4.i, align 8, !dbg !2386, !tbaa !846
  call void @llvm.dbg.value(metadata ptr %cluster.1293.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.1292.i, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %18, metadata !828, metadata !DIExpression()) #14, !dbg !2387
  call void @llvm.dbg.value(metadata ptr %blue.i, metadata !836, metadata !DIExpression()) #14, !dbg !2387
  store float 0.000000e+00, ptr %blue.i, align 8, !dbg !2390, !tbaa !844
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %index9.i, i8 0, i64 16, i1 false), !dbg !2391
  store i64 255, ptr %right.i31.i, align 8, !dbg !2392, !tbaa !846
  br label %for.body.i38.preheader.i, !dbg !2393

for.body.i38.preheader.i:                         ; preds = %if.end26.i, %for.body.i38.preheader.preheader.i
  %25 = phi ptr [ %30, %if.end26.i ], [ %18, %for.body.i38.preheader.preheader.i ]
  %index.promoted.i33287.i = phi i64 [ %index.promoted.i33.i, %if.end26.i ], [ 0, %for.body.i38.preheader.preheader.i ]
  %cluster.2286.i = phi ptr [ %call18.i, %if.end26.i ], [ %cluster.1293.i, %for.body.i38.preheader.preheader.i ]
  %head.2285.i = phi ptr [ %head.3.i, %if.end26.i ], [ %head.1292.i, %for.body.i38.preheader.preheader.i ]
  call void @llvm.dbg.value(metadata ptr %cluster.2286.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.2285.i, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  br label %for.body.i38.i, !dbg !2394

for.body.i38.i:                                   ; preds = %for.inc.i41.i, %for.body.i38.preheader.i
  %.pr.i35.i = phi i64 [ %inc.i39.i, %for.inc.i41.i ], [ %index.promoted.i33287.i, %for.body.i38.preheader.i ]
  %arrayidx.i36.i = getelementptr inbounds i16, ptr %25, i64 %.pr.i35.i, !dbg !2395
  %26 = load i16, ptr %arrayidx.i36.i, align 2, !dbg !2395, !tbaa !854
  %cmp2.i37.i = icmp sgt i16 %26, 0, !dbg !2396
  br i1 %cmp2.i37.i, label %if.end9.i43.i, label %for.inc.i41.i, !dbg !2397

for.inc.i41.i:                                    ; preds = %for.body.i38.i
  %inc.i39.i = add i64 %.pr.i35.i, 1, !dbg !2398
  store i64 %inc.i39.i, ptr %index9.i, align 8, !dbg !2398, !tbaa !847
  %exitcond.not.i40.i = icmp eq i64 %inc.i39.i, 256, !dbg !2399
  br i1 %exitcond.not.i40.i, label %DefineRegion.exit56.i, label %for.body.i38.i, !dbg !2394, !llvm.loop !2400

if.end9.i43.i:                                    ; preds = %for.body.i38.i
  store i64 %.pr.i35.i, ptr %left.i30.i, align 8, !dbg !2402, !tbaa !840
  %cmp1453.i42.i = icmp sgt i64 %.pr.i35.i, 255, !dbg !2403
  br i1 %cmp1453.i42.i, label %while.body14.i, label %for.inc24.i48.i, !dbg !2404

for.inc24.i48.i:                                  ; preds = %if.end9.i43.i, %for.inc24.for.body16_crit_edge.i51.i
  %27 = phi i64 [ %inc26.i46.i, %for.inc24.for.body16_crit_edge.i51.i ], [ %.pr.i35.i, %if.end9.i43.i ]
  %inc26.i46.i = add i64 %27, 1, !dbg !2405
  %exitcond56.not.i47.i = icmp eq i64 %inc26.i46.i, 256, !dbg !2403
  br i1 %exitcond56.not.i47.i, label %while.body14.sink.split.i, label %for.inc24.for.body16_crit_edge.i51.i, !dbg !2404, !llvm.loop !2406

for.inc24.for.body16_crit_edge.i51.i:             ; preds = %for.inc24.i48.i
  %arrayidx18.phi.trans.insert.i49.i = getelementptr inbounds i16, ptr %25, i64 %inc26.i46.i
  %.pre.i50.i = load i16, ptr %arrayidx18.phi.trans.insert.i49.i, align 2, !dbg !2408, !tbaa !854
  %cmp20.i44.i = icmp slt i16 %.pre.i50.i, 0, !dbg !2409
  br i1 %cmp20.i44.i, label %while.body14.sink.split.i, label %for.inc24.i48.i, !dbg !2410

DefineRegion.exit56.i:                            ; preds = %if.end26.i, %for.inc.i41.i
  %28 = phi ptr [ %25, %for.inc.i41.i ], [ %30, %if.end26.i ]
  %head.2262.i = phi ptr [ %head.2285.i, %for.inc.i41.i ], [ %head.3.i, %if.end26.i ]
  %cluster.2259.i = phi ptr [ %cluster.2286.i, %for.inc.i41.i ], [ %call18.i, %if.end26.i ]
  call void @llvm.dbg.value(metadata ptr %cluster.2259.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.2262.i, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  %29 = load ptr, ptr %arrayidx5.i, align 8, !dbg !2411, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %29, metadata !828, metadata !DIExpression()) #14, !dbg !2360
  call void @llvm.dbg.value(metadata ptr %green.i, metadata !836, metadata !DIExpression()) #14, !dbg !2360
  store i64 0, ptr %left.i3.i, align 8, !dbg !2364, !tbaa !840
  store float 0.000000e+00, ptr %green.i, align 8, !dbg !2363, !tbaa !844
  store i64 255, ptr %right.i4.i, align 8, !dbg !2365, !tbaa !846
  %index.promoted.i6.i = load i64, ptr %index.i, align 8, !tbaa !847
  %cmp51.i7.i = icmp slt i64 %index.promoted.i6.i, 256, !dbg !2371
  br i1 %cmp51.i7.i, label %for.body.i11.preheader.i, label %DefineRegion.exit29.i, !dbg !2366

while.body14.sink.split.i:                        ; preds = %for.inc24.for.body16_crit_edge.i51.i, %for.inc24.i48.i
  store i64 %inc26.i46.i, ptr %index9.i, align 8, !dbg !2405, !tbaa !847
  br label %while.body14.i, !dbg !2412

while.body14.i:                                   ; preds = %while.body14.sink.split.i, %if.end9.i43.i
  %.lcssa.i52.i = phi i64 [ %.pr.i35.i, %if.end9.i43.i ], [ %inc26.i46.i, %while.body14.sink.split.i ], !dbg !2413
  %sub.i53.i = add nsw i64 %.lcssa.i52.i, -1, !dbg !2412
  store i64 %sub.i53.i, ptr %right.i31.i, align 8, !dbg !2414, !tbaa !846
  %cmp15.not.i = icmp eq ptr %head.2285.i, null, !dbg !2415
  %call18.i = call ptr @AcquireMagickMemory(i64 noundef 120) #16, !dbg !2418
  br i1 %cmp15.not.i, label %if.end.i, label %if.then.i, !dbg !2419

if.then.i:                                        ; preds = %while.body14.i
  store ptr %call18.i, ptr %cluster.2286.i, align 8, !dbg !2420, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %call18.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  br label %if.end.i, !dbg !2422

if.end.i:                                         ; preds = %if.then.i, %while.body14.i
  %head.3.i = phi ptr [ %head.2285.i, %if.then.i ], [ %call18.i, %while.body14.i ], !dbg !2326
  call void @llvm.dbg.value(metadata ptr %call18.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.3.i, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  %cmp19.i = icmp eq ptr %call18.i, null, !dbg !2423
  br i1 %cmp19.i, label %if.then20.i, label %if.end26.i, !dbg !2425

if.then20.i:                                      ; preds = %if.end.i
  %cmp21.not.i = icmp eq ptr %image, null, !dbg !2426
  br i1 %cmp21.not.i, label %Classify.exit, label %if.then22.i, !dbg !2429

if.then22.i:                                      ; preds = %if.then20.i
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2426
  %call24.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 319, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename.i) #14, !dbg !2426
  br label %Classify.exit, !dbg !2426

if.end26.i:                                       ; preds = %if.end.i
  %count27.i = getelementptr inbounds %struct._Cluster, ptr %call18.i, i64 0, i32 4, !dbg !2430
  store i64 0, ptr %count27.i, align 8, !dbg !2431, !tbaa !950
  %red28.i = getelementptr inbounds %struct._Cluster, ptr %call18.i, i64 0, i32 1, !dbg !2432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %red28.i, ptr noundef nonnull align 8 dereferenceable(32) %red.i, i64 32, i1 false) #14, !dbg !2433, !tbaa.struct !953
  %green29.i = getelementptr inbounds %struct._Cluster, ptr %call18.i, i64 0, i32 2, !dbg !2434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %green29.i, ptr noundef nonnull align 8 dereferenceable(32) %green.i, i64 32, i1 false) #14, !dbg !2435, !tbaa.struct !953
  %blue30.i = getelementptr inbounds %struct._Cluster, ptr %call18.i, i64 0, i32 3, !dbg !2436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %blue30.i, ptr noundef nonnull align 8 dereferenceable(32) %blue.i, i64 32, i1 false) #14, !dbg !2437, !tbaa.struct !953
  store ptr null, ptr %call18.i, align 8, !dbg !2438, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %call18.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.3.i, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  %30 = load ptr, ptr %arrayidx11.i, align 16, !dbg !2439, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %30, metadata !828, metadata !DIExpression()) #14, !dbg !2387
  call void @llvm.dbg.value(metadata ptr %blue.i, metadata !836, metadata !DIExpression()) #14, !dbg !2387
  store i64 0, ptr %left.i30.i, align 8, !dbg !2391, !tbaa !840
  store float 0.000000e+00, ptr %blue.i, align 8, !dbg !2390, !tbaa !844
  store i64 255, ptr %right.i31.i, align 8, !dbg !2392, !tbaa !846
  %index.promoted.i33.i = load i64, ptr %index9.i, align 8, !tbaa !847
  %cmp51.i34.i = icmp slt i64 %index.promoted.i33.i, 256, !dbg !2399
  br i1 %cmp51.i34.i, label %for.body.i38.preheader.i, label %DefineRegion.exit56.i, !dbg !2394, !llvm.loop !2440

while.end33.i:                                    ; preds = %DefineRegion.exit29.i, %for.inc.i.i
  %head.0271.i = phi ptr [ %head.0299.i, %for.inc.i.i ], [ %head.1268.i, %DefineRegion.exit29.i ]
  %cmp34.i = icmp eq ptr %head.0271.i, null, !dbg !2442
  br i1 %cmp34.i, label %if.then35.i, label %if.end52.i, !dbg !2444

if.then35.i:                                      ; preds = %while.end33.i, %cond.end49
  %call36.i = call ptr @AcquireMagickMemory(i64 noundef 120) #16, !dbg !2445
  call void @llvm.dbg.value(metadata ptr %call36.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  %cmp37.i = icmp eq ptr %call36.i, null, !dbg !2447
  br i1 %cmp37.i, label %if.then38.i, label %if.end46.i, !dbg !2449

if.then38.i:                                      ; preds = %if.then35.i
  %cmp39.not.i = icmp eq ptr %image, null, !dbg !2450
  br i1 %cmp39.not.i, label %Classify.exit, label %if.then40.i, !dbg !2453

if.then40.i:                                      ; preds = %if.then38.i
  %filename42.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2450
  %call44.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 339, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename42.i) #14, !dbg !2450
  br label %Classify.exit, !dbg !2450

if.end46.i:                                       ; preds = %if.then35.i
  %count47.i = getelementptr inbounds %struct._Cluster, ptr %call36.i, i64 0, i32 4, !dbg !2454
  store i64 0, ptr %count47.i, align 8, !dbg !2455, !tbaa !950
  %red48.i = getelementptr inbounds %struct._Cluster, ptr %call36.i, i64 0, i32 1, !dbg !2456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %red48.i, ptr noundef nonnull align 8 dereferenceable(32) %red.i, i64 32, i1 false) #14, !dbg !2457, !tbaa.struct !953
  %green49.i = getelementptr inbounds %struct._Cluster, ptr %call36.i, i64 0, i32 2, !dbg !2458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %green49.i, ptr noundef nonnull align 8 dereferenceable(32) %green.i, i64 32, i1 false) #14, !dbg !2459, !tbaa.struct !953
  %blue50.i = getelementptr inbounds %struct._Cluster, ptr %call36.i, i64 0, i32 3, !dbg !2460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %blue50.i, ptr noundef nonnull align 8 dereferenceable(32) %blue.i, i64 32, i1 false) #14, !dbg !2461, !tbaa.struct !953
  store ptr null, ptr %call36.i, align 8, !dbg !2462, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %call36.i, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  br label %if.end52.i, !dbg !2463

if.end52.i:                                       ; preds = %if.end46.i, %while.end33.i
  %head.4.i = phi ptr [ %call36.i, %if.end46.i ], [ %head.0271.i, %while.end33.i ], !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.4.i, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i32 1, metadata !2285, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 0, metadata !2290, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 0, metadata !2283, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %exception32, metadata !2279, metadata !DIExpression()) #14, !dbg !2326
  %call54.i = call ptr @AcquireVirtualCacheView(ptr noundef %image, ptr noundef nonnull %exception32) #14, !dbg !2464
  call void @llvm.dbg.value(metadata ptr %call54.i, metadata !2270, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 0, metadata !2291, metadata !DIExpression()) #14, !dbg !2326
  %columns.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2465
  %rows.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  %31 = load i64, ptr %rows.i, align 8, !dbg !2466, !tbaa !991
  %cmp55315.i = icmp sgt i64 %31, 0, !dbg !2467
  br i1 %cmp55315.i, label %for.body.lr.ph.i, label %for.end153.thread.i, !dbg !2468

for.end153.thread.i:                              ; preds = %if.end52.i
  %call154402.i = call ptr @DestroyCacheView(ptr noundef %call54.i) #14, !dbg !2469
  call void @llvm.dbg.value(metadata i64 0, metadata !2290, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.4.i, metadata !2277, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.4.i, metadata !2278, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.4.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.4.i, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  br label %for.body158.preheader.i, !dbg !2470

for.body.lr.ph.i:                                 ; preds = %if.end52.i
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body.i, !dbg !2468

for.body.i:                                       ; preds = %for.inc151.i, %for.body.lr.ph.i
  %y.0319.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc152.i, %for.inc151.i ]
  %status.0317.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %status.3.ph.i, %for.inc151.i ]
  %progress.0316.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %progress.2.ph.i, %for.inc151.i ]
  call void @llvm.dbg.value(metadata i64 %y.0319.i, metadata !2291, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 undef, metadata !2290, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i32 %status.0317.i, metadata !2285, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %progress.0316.i, metadata !2283, metadata !DIExpression()) #14, !dbg !2326
  %32 = load i64, ptr %columns.i, align 8, !dbg !2465, !tbaa !994
  %call56.i = call ptr @GetCacheViewVirtualPixels(ptr noundef %call54.i, i64 noundef 0, i64 noundef %y.0319.i, i64 noundef %32, i64 noundef 1, ptr noundef nonnull %exception32) #19, !dbg !2472
  call void @llvm.dbg.value(metadata ptr %call56.i, metadata !2292, metadata !DIExpression()) #14, !dbg !2473
  %cmp57.i = icmp eq ptr %call56.i, null, !dbg !2474
  br i1 %cmp57.i, label %for.end153.i, label %for.cond60.preheader.i, !dbg !2476

for.cond60.preheader.i:                           ; preds = %for.body.i
  %33 = load i64, ptr %columns.i, align 8, !tbaa !994
  call void @llvm.dbg.value(metadata i64 0, metadata !2296, metadata !DIExpression()) #14, !dbg !2473
  call void @llvm.dbg.value(metadata ptr %call56.i, metadata !2292, metadata !DIExpression()) #14, !dbg !2473
  call void @llvm.dbg.value(metadata i64 undef, metadata !2290, metadata !DIExpression()) #14, !dbg !2326
  %cmp62308.i = icmp sgt i64 %33, 0, !dbg !2477
  br i1 %cmp62308.i, label %for.cond64.preheader.i, label %for.end138.i, !dbg !2480

for.cond64.preheader.i:                           ; preds = %for.cond60.preheader.i, %for.end.i
  %x.0313.i = phi i64 [ %inc137.i, %for.end.i ], [ 0, %for.cond60.preheader.i ]
  %p.0310.i = phi ptr [ %incdec.ptr.i, %for.end.i ], [ %call56.i, %for.cond60.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %x.0313.i, metadata !2296, metadata !DIExpression()) #14, !dbg !2473
  call void @llvm.dbg.value(metadata ptr %p.0310.i, metadata !2292, metadata !DIExpression()) #14, !dbg !2473
  call void @llvm.dbg.value(metadata i64 undef, metadata !2290, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.4.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  %red67.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0310.i, i64 0, i32 2
  %34 = load i16, ptr %red67.i, align 2, !tbaa !1003
  %conv.i.i = zext i16 %34 to i64
  %add.i.i = add nuw nsw i64 %conv.i.i, 128
  %shr.i.i = lshr i64 %add.i.i, 8
  %sub.i57.i = sub nsw i64 %add.i.i, %shr.i.i
  %shr3.i.i = lshr i64 %sub.i57.i, 8
  %conv.i = and i64 %shr3.i.i, 255
  %green79.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0310.i, i64 0, i32 1
  br label %for.body66.i, !dbg !2481

for.body66.i:                                     ; preds = %for.inc.i, %for.cond64.preheader.i
  %cluster.4306.i = phi ptr [ %head.4.i, %for.cond64.preheader.i ], [ %47, %for.inc.i ]
  call void @llvm.dbg.value(metadata ptr %cluster.4306.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i16 %34, metadata !1007, metadata !DIExpression()) #14, !dbg !2484
  %left.i = getelementptr inbounds %struct._Cluster, ptr %cluster.4306.i, i64 0, i32 1, i32 2, !dbg !2488
  %35 = load i64, ptr %left.i, align 8, !dbg !2488, !tbaa !1018
  %sub.i = add nsw i64 %35, -3, !dbg !2489
  %cmp70.not.i = icmp sgt i64 %sub.i, %conv.i, !dbg !2490
  br i1 %cmp70.not.i, label %for.inc.i, label %land.lhs.true.i, !dbg !2491

land.lhs.true.i:                                  ; preds = %for.body66.i
  call void @llvm.dbg.value(metadata i16 %34, metadata !1007, metadata !DIExpression()) #14, !dbg !2492
  %right.i = getelementptr inbounds %struct._Cluster, ptr %cluster.4306.i, i64 0, i32 1, i32 3, !dbg !2494
  %36 = load i64, ptr %right.i, align 8, !dbg !2494, !tbaa !1025
  %add.i = add nsw i64 %36, 3, !dbg !2495
  %cmp76.not.i = icmp slt i64 %add.i, %conv.i, !dbg !2496
  br i1 %cmp76.not.i, label %for.inc.i, label %land.lhs.true78.i, !dbg !2497

land.lhs.true78.i:                                ; preds = %land.lhs.true.i
  %37 = load i16, ptr %green79.i, align 2, !dbg !2498, !tbaa !1030
  call void @llvm.dbg.value(metadata i16 %37, metadata !1007, metadata !DIExpression()) #14, !dbg !2499
  %conv.i64.i = zext i16 %37 to i64, !dbg !2501
  %add.i65.i = add nuw nsw i64 %conv.i64.i, 128, !dbg !2502
  %shr.i66.i = lshr i64 %add.i65.i, 8, !dbg !2503
  %sub.i67.i = sub nsw i64 %add.i65.i, %shr.i66.i, !dbg !2504
  %shr3.i68.i = lshr i64 %sub.i67.i, 8, !dbg !2505
  %conv81.i = and i64 %shr3.i68.i, 255, !dbg !2506
  %left83.i = getelementptr inbounds %struct._Cluster, ptr %cluster.4306.i, i64 0, i32 2, i32 2, !dbg !2507
  %38 = load i64, ptr %left83.i, align 8, !dbg !2507, !tbaa !1040
  %sub84.i = add nsw i64 %38, -3, !dbg !2508
  %cmp85.not.i = icmp sgt i64 %sub84.i, %conv81.i, !dbg !2509
  br i1 %cmp85.not.i, label %for.inc.i, label %land.lhs.true87.i, !dbg !2510

land.lhs.true87.i:                                ; preds = %land.lhs.true78.i
  call void @llvm.dbg.value(metadata i16 %37, metadata !1007, metadata !DIExpression()) #14, !dbg !2511
  %right92.i = getelementptr inbounds %struct._Cluster, ptr %cluster.4306.i, i64 0, i32 2, i32 3, !dbg !2513
  %39 = load i64, ptr %right92.i, align 8, !dbg !2513, !tbaa !1047
  %add93.i = add nsw i64 %39, 3, !dbg !2514
  %cmp94.not.i = icmp slt i64 %add93.i, %conv81.i, !dbg !2515
  br i1 %cmp94.not.i, label %for.inc.i, label %land.lhs.true96.i, !dbg !2516

land.lhs.true96.i:                                ; preds = %land.lhs.true87.i
  %40 = load i16, ptr %p.0310.i, align 2, !dbg !2517, !tbaa !1052
  call void @llvm.dbg.value(metadata i16 %40, metadata !1007, metadata !DIExpression()) #14, !dbg !2518
  %conv.i76.i = zext i16 %40 to i64, !dbg !2520
  %add.i77.i = add nuw nsw i64 %conv.i76.i, 128, !dbg !2521
  %shr.i78.i = lshr i64 %add.i77.i, 8, !dbg !2522
  %sub.i79.i = sub nsw i64 %add.i77.i, %shr.i78.i, !dbg !2523
  %shr3.i80.i = lshr i64 %sub.i79.i, 8, !dbg !2524
  %conv99.i = and i64 %shr3.i80.i, 255, !dbg !2525
  %left101.i = getelementptr inbounds %struct._Cluster, ptr %cluster.4306.i, i64 0, i32 3, i32 2, !dbg !2526
  %41 = load i64, ptr %left101.i, align 8, !dbg !2526, !tbaa !1062
  %sub102.i = add nsw i64 %41, -3, !dbg !2527
  %cmp103.not.i = icmp sgt i64 %sub102.i, %conv99.i, !dbg !2528
  br i1 %cmp103.not.i, label %for.inc.i, label %land.lhs.true105.i, !dbg !2529

land.lhs.true105.i:                               ; preds = %land.lhs.true96.i
  call void @llvm.dbg.value(metadata i16 %40, metadata !1007, metadata !DIExpression()) #14, !dbg !2530
  %right110.i = getelementptr inbounds %struct._Cluster, ptr %cluster.4306.i, i64 0, i32 3, i32 3, !dbg !2532
  %42 = load i64, ptr %right110.i, align 8, !dbg !2532, !tbaa !1069
  %add111.i = add nsw i64 %42, 3, !dbg !2533
  %cmp112.not.i = icmp slt i64 %add111.i, %conv99.i, !dbg !2534
  br i1 %cmp112.not.i, label %for.inc.i, label %if.then114.i, !dbg !2535

if.then114.i:                                     ; preds = %land.lhs.true105.i
  %conv4.i.le.i = trunc i64 %shr3.i.i to i8, !dbg !2536
  %red69.le.i = getelementptr inbounds %struct._Cluster, ptr %cluster.4306.i, i64 0, i32 1, !dbg !2537
  %conv4.i69.le.i = trunc i64 %shr3.i68.i to i8, !dbg !2538
  %green82.le.i = getelementptr inbounds %struct._Cluster, ptr %cluster.4306.i, i64 0, i32 2, !dbg !2539
  %conv4.i81.le.i = trunc i64 %shr3.i80.i to i8, !dbg !2540
  %blue100.le.i = getelementptr inbounds %struct._Cluster, ptr %cluster.4306.i, i64 0, i32 3, !dbg !2541
  call void @llvm.dbg.value(metadata i64 undef, metadata !2290, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i16 %34, metadata !1007, metadata !DIExpression()) #14, !dbg !2542
  %conv117.i = uitofp i8 %conv4.i.le.i to float, !dbg !2545
  %43 = load float, ptr %red69.le.i, align 8, !dbg !2546, !tbaa !1084
  %add119.i = fadd float %43, %conv117.i, !dbg !2546
  store float %add119.i, ptr %red69.le.i, align 8, !dbg !2546, !tbaa !1084
  call void @llvm.dbg.value(metadata i16 %37, metadata !1007, metadata !DIExpression()) #14, !dbg !2547
  %conv122.i = uitofp i8 %conv4.i69.le.i to float, !dbg !2549
  %44 = load float, ptr %green82.le.i, align 8, !dbg !2550, !tbaa !1089
  %add125.i = fadd float %44, %conv122.i, !dbg !2550
  store float %add125.i, ptr %green82.le.i, align 8, !dbg !2550, !tbaa !1089
  call void @llvm.dbg.value(metadata i16 %40, metadata !1007, metadata !DIExpression()) #14, !dbg !2551
  %conv128.i = uitofp i8 %conv4.i81.le.i to float, !dbg !2553
  %45 = load float, ptr %blue100.le.i, align 8, !dbg !2554, !tbaa !1094
  %add131.i = fadd float %45, %conv128.i, !dbg !2554
  store float %add131.i, ptr %blue100.le.i, align 8, !dbg !2554, !tbaa !1094
  %count132.i = getelementptr inbounds %struct._Cluster, ptr %cluster.4306.i, i64 0, i32 4, !dbg !2555
  %46 = load i64, ptr %count132.i, align 8, !dbg !2556, !tbaa !950
  %inc133.i = add nsw i64 %46, 1, !dbg !2556
  store i64 %inc133.i, ptr %count132.i, align 8, !dbg !2556, !tbaa !950
  br label %for.end.i, !dbg !2557

for.inc.i:                                        ; preds = %land.lhs.true105.i, %land.lhs.true96.i, %land.lhs.true87.i, %land.lhs.true78.i, %land.lhs.true.i, %for.body66.i
  %47 = load ptr, ptr %cluster.4306.i, align 8, !dbg !2558, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %47, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  %cmp65.not.i = icmp eq ptr %47, null, !dbg !2559
  br i1 %cmp65.not.i, label %for.end.i, label %for.body66.i, !dbg !2481, !llvm.loop !2560

for.end.i:                                        ; preds = %for.inc.i, %if.then114.i
  call void @llvm.dbg.value(metadata i64 undef, metadata !2290, metadata !DIExpression()) #14, !dbg !2326
  %incdec.ptr.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0310.i, i64 1, !dbg !2562
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2292, metadata !DIExpression()) #14, !dbg !2473
  %inc137.i = add nuw nsw i64 %x.0313.i, 1, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %inc137.i, metadata !2296, metadata !DIExpression()) #14, !dbg !2473
  %exitcond.not.i = icmp eq i64 %inc137.i, %33, !dbg !2477
  br i1 %exitcond.not.i, label %for.end138.i, label %for.cond64.preheader.i, !dbg !2480, !llvm.loop !2564

for.end138.i:                                     ; preds = %for.end.i, %for.cond60.preheader.i
  %48 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2566, !tbaa !1123
  %cmp139.not.i = icmp eq ptr %48, null, !dbg !2567
  br i1 %cmp139.not.i, label %for.inc151.i, label %SetImageProgress.exit.i, !dbg !2568

SetImageProgress.exit.i:                          ; preds = %for.end138.i
  %inc142.i = add nsw i64 %progress.0316.i, 1, !dbg !2569
  call void @llvm.dbg.value(metadata i64 %inc142.i, metadata !2283, metadata !DIExpression()) #14, !dbg !2326
  %49 = load i64, ptr %rows.i, align 8, !dbg !2570, !tbaa !991
  %mul.i = shl i64 %49, 1, !dbg !2571
  call void @llvm.dbg.value(metadata ptr %image, metadata !1107, metadata !DIExpression()) #14, !dbg !2572
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1113, metadata !DIExpression()) #14, !dbg !2572
  call void @llvm.dbg.value(metadata i64 %progress.0316.i, metadata !1114, metadata !DIExpression()) #14, !dbg !2572
  call void @llvm.dbg.value(metadata i64 %mul.i, metadata !1115, metadata !DIExpression()) #14, !dbg !2572
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i.i) #14, !dbg !2574
  call void @llvm.dbg.declare(metadata ptr %message.i.i, metadata !1116, metadata !DIExpression()) #14, !dbg !2575
  %call.i.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i.i, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename.i.i) #14, !dbg !2576
  %50 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2577, !tbaa !1123
  %51 = load ptr, ptr %client_data.i.i, align 8, !dbg !2578, !tbaa !1132
  %call4.i.i = call i32 %50(ptr noundef nonnull %message.i.i, i64 noundef %progress.0316.i, i64 noundef %mul.i, ptr noundef %51) #14, !dbg !2579
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i.i) #14, !dbg !2580
  call void @llvm.dbg.value(metadata i32 %call4.i.i, metadata !2297, metadata !DIExpression()) #14, !dbg !2581
  %cmp145.i = icmp eq i32 %call4.i.i, 0, !dbg !2582
  %spec.select.i = select i1 %cmp145.i, i32 0, i32 %status.0317.i, !dbg !2584
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !2285, metadata !DIExpression()) #14, !dbg !2326
  br label %for.inc151.i, !dbg !2585

for.inc151.i:                                     ; preds = %SetImageProgress.exit.i, %for.end138.i
  %progress.2.ph.i = phi i64 [ %progress.0316.i, %for.end138.i ], [ %inc142.i, %SetImageProgress.exit.i ]
  %status.3.ph.i = phi i32 [ %status.0317.i, %for.end138.i ], [ %spec.select.i, %SetImageProgress.exit.i ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !2290, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i32 undef, metadata !2285, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 undef, metadata !2283, metadata !DIExpression()) #14, !dbg !2326
  %inc152.i = add nuw nsw i64 %y.0319.i, 1, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %inc152.i, metadata !2291, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i32 %status.3.ph.i, metadata !2285, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %progress.2.ph.i, metadata !2283, metadata !DIExpression()) #14, !dbg !2326
  %52 = load i64, ptr %rows.i, align 8, !dbg !2466, !tbaa !991
  %cmp55.i = icmp slt i64 %inc152.i, %52, !dbg !2467
  br i1 %cmp55.i, label %for.body.i, label %for.end153.i, !dbg !2468, !llvm.loop !2587

for.end153.i:                                     ; preds = %for.inc151.i, %for.body.i
  %progress.0.lcssa.i = phi i64 [ %progress.2.ph.i, %for.inc151.i ], [ %progress.0316.i, %for.body.i ], !dbg !2589
  %status.0.lcssa.i = phi i32 [ %status.3.ph.i, %for.inc151.i ], [ %status.0317.i, %for.body.i ], !dbg !2590
  call void @llvm.dbg.value(metadata i32 %status.0.lcssa.i, metadata !2285, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %progress.0.lcssa.i, metadata !2283, metadata !DIExpression()) #14, !dbg !2326
  %call154.i = call ptr @DestroyCacheView(ptr noundef %call54.i) #14, !dbg !2469
  call void @llvm.dbg.value(metadata ptr %call154.i, metadata !2270, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 0, metadata !2290, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.4.i, metadata !2277, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.4.i, metadata !2278, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.4.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.4.i, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  %cmp156.not326.i = icmp eq ptr %head.4.i, null, !dbg !2591
  br i1 %cmp156.not326.i, label %for.end197.i, label %for.body158.preheader.i, !dbg !2470

for.body158.preheader.i:                          ; preds = %for.end153.i, %for.end153.thread.i
  %status.0.lcssa406.i = phi i32 [ 1, %for.end153.thread.i ], [ %status.0.lcssa.i, %for.end153.i ]
  %progress.0.lcssa404.i = phi i64 [ 0, %for.end153.thread.i ], [ %progress.0.lcssa.i, %for.end153.i ]
  br label %for.body158.i, !dbg !2470

for.body158.i:                                    ; preds = %for.inc196.i, %for.body158.preheader.i
  %cluster.5331.i = phi ptr [ %53, %for.inc196.i ], [ %head.4.i, %for.body158.preheader.i ]
  %head.5330.i = phi ptr [ %head.7.i, %for.inc196.i ], [ %head.4.i, %for.body158.preheader.i ]
  %last_cluster.0328.i = phi ptr [ %last_cluster.1.i, %for.inc196.i ], [ %head.4.i, %for.body158.preheader.i ]
  %count.4327.i = phi i64 [ %count.5.i, %for.inc196.i ], [ 0, %for.body158.preheader.i ]
  call void @llvm.dbg.value(metadata ptr %cluster.5331.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.5330.i, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %last_cluster.0328.i, metadata !2277, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %count.4327.i, metadata !2290, metadata !DIExpression()) #14, !dbg !2326
  %53 = load ptr, ptr %cluster.5331.i, align 8, !dbg !2593, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %53, metadata !2278, metadata !DIExpression()) #14, !dbg !2326
  %count160.i = getelementptr inbounds %struct._Cluster, ptr %cluster.5331.i, i64 0, i32 4, !dbg !2595
  %54 = load i64, ptr %count160.i, align 8, !dbg !2595, !tbaa !950
  %cmp161.i = icmp sgt i64 %54, 0, !dbg !2597
  br i1 %cmp161.i, label %land.lhs.true163.i, label %if.end188.i, !dbg !2598

land.lhs.true163.i:                               ; preds = %for.body158.i
  %conv165.i = sitofp i64 %54 to double, !dbg !2599
  %conv166.i = sitofp i64 %count.4327.i to float, !dbg !2600
  %mul167.i = fmul float %conv, %conv166.i, !dbg !2601
  %conv168.i = fpext float %mul167.i to double, !dbg !2600
  %div.i = fdiv double %conv168.i, 1.000000e+02, !dbg !2602
  %cmp169.i = fcmp ugt double %div.i, %conv165.i, !dbg !2603
  br i1 %cmp169.i, label %if.end188.i, label %if.then171.i, !dbg !2604

if.then171.i:                                     ; preds = %land.lhs.true163.i
  %id.i = getelementptr inbounds %struct._Cluster, ptr %cluster.5331.i, i64 0, i32 5, !dbg !2605
  store i64 %count.4327.i, ptr %id.i, align 8, !dbg !2607, !tbaa !1158
  %conv173.i = sitofp i64 %54 to float, !dbg !2608
  %red174.i = getelementptr inbounds %struct._Cluster, ptr %cluster.5331.i, i64 0, i32 1, !dbg !2609
  %55 = load float, ptr %red174.i, align 8, !dbg !2610, !tbaa !1084
  %div176.i = fdiv float %55, %conv173.i, !dbg !2610
  store float %div176.i, ptr %red174.i, align 8, !dbg !2610, !tbaa !1084
  %green179.i = getelementptr inbounds %struct._Cluster, ptr %cluster.5331.i, i64 0, i32 2, !dbg !2611
  %56 = load float, ptr %green179.i, align 8, !dbg !2612, !tbaa !1089
  %div181.i = fdiv float %56, %conv173.i, !dbg !2612
  store float %div181.i, ptr %green179.i, align 8, !dbg !2612, !tbaa !1089
  %blue184.i = getelementptr inbounds %struct._Cluster, ptr %cluster.5331.i, i64 0, i32 3, !dbg !2613
  %57 = load float, ptr %blue184.i, align 8, !dbg !2614, !tbaa !1094
  %div186.i = fdiv float %57, %conv173.i, !dbg !2614
  store float %div186.i, ptr %blue184.i, align 8, !dbg !2614, !tbaa !1094
  %inc187.i = add nsw i64 %count.4327.i, 1, !dbg !2615
  call void @llvm.dbg.value(metadata i64 %inc187.i, metadata !2290, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %cluster.5331.i, metadata !2277, metadata !DIExpression()) #14, !dbg !2326
  br label %for.inc196.i, !dbg !2616

if.end188.i:                                      ; preds = %land.lhs.true163.i, %for.body158.i
  %cmp189.i = icmp eq ptr %cluster.5331.i, %head.5330.i, !dbg !2617
  br i1 %cmp189.i, label %if.end194.i, label %if.else192.i, !dbg !2619

if.else192.i:                                     ; preds = %if.end188.i
  store ptr %53, ptr %last_cluster.0328.i, align 8, !dbg !2620, !tbaa !938
  br label %if.end194.i

if.end194.i:                                      ; preds = %if.else192.i, %if.end188.i
  %head.6.i = phi ptr [ %head.5330.i, %if.else192.i ], [ %53, %if.end188.i ], !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.6.i, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  %call195.i = call ptr @RelinquishMagickMemory(ptr noundef nonnull %cluster.5331.i) #14, !dbg !2621
  call void @llvm.dbg.value(metadata ptr %call195.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  br label %for.inc196.i, !dbg !2622

for.inc196.i:                                     ; preds = %if.end194.i, %if.then171.i
  %count.5.i = phi i64 [ %inc187.i, %if.then171.i ], [ %count.4327.i, %if.end194.i ], !dbg !2326
  %last_cluster.1.i = phi ptr [ %cluster.5331.i, %if.then171.i ], [ %last_cluster.0328.i, %if.end194.i ], !dbg !2326
  %head.7.i = phi ptr [ %head.5330.i, %if.then171.i ], [ %head.6.i, %if.end194.i ], !dbg !2326
  call void @llvm.dbg.value(metadata ptr %53, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.7.i, metadata !2276, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %last_cluster.1.i, metadata !2277, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %count.5.i, metadata !2290, metadata !DIExpression()) #14, !dbg !2326
  %cmp156.not.i = icmp eq ptr %53, null, !dbg !2591
  br i1 %cmp156.not.i, label %for.end197.i, label %for.body158.i, !dbg !2470, !llvm.loop !2623

for.end197.i:                                     ; preds = %for.inc196.i, %for.end153.i
  %status.0.lcssa407.i = phi i32 [ %status.0.lcssa.i, %for.end153.i ], [ %status.0.lcssa406.i, %for.inc196.i ]
  %progress.0.lcssa405.i = phi i64 [ %progress.0.lcssa.i, %for.end153.i ], [ %progress.0.lcssa404.i, %for.inc196.i ]
  %count.4.lcssa.i = phi i64 [ 0, %for.end153.i ], [ %count.5.i, %for.inc196.i ], !dbg !2326
  %head.5.lcssa.i = phi ptr [ null, %for.end153.i ], [ %head.7.i, %for.inc196.i ], !dbg !2625
  call void @llvm.dbg.value(metadata i64 %count.4.lcssa.i, metadata !2289, metadata !DIExpression()) #14, !dbg !2326
  %cmp198.not.i = icmp eq i32 %verbose, 0, !dbg !2626
  br i1 %cmp198.not.i, label %if.end277.i, label %if.then200.i, !dbg !2628

if.then200.i:                                     ; preds = %for.end197.i
  %58 = load ptr, ptr @stdout, align 8, !dbg !2629, !tbaa !781
  %call201.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %58, ptr noundef nonnull @.str.9) #14, !dbg !2631
  %59 = load ptr, ptr @stdout, align 8, !dbg !2632, !tbaa !781
  %call202.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %59, ptr noundef nonnull @.str.10) #14, !dbg !2633
  %60 = load ptr, ptr @stdout, align 8, !dbg !2634, !tbaa !781
  %conv203.i = fpext float %conv to double, !dbg !2635
  %call204.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %60, ptr noundef nonnull @.str.11, double noundef %conv203.i) #14, !dbg !2636
  %61 = load ptr, ptr @stdout, align 8, !dbg !2637, !tbaa !781
  %call206.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %61, ptr noundef nonnull @.str.12, double noundef 2.500000e+00) #14, !dbg !2638
  %62 = load ptr, ptr @stdout, align 8, !dbg !2639, !tbaa !781
  %conv207.i = uitofp i64 %count.4.lcssa.i to double, !dbg !2640
  %call208.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %62, ptr noundef nonnull @.str.13, double noundef %conv207.i) #14, !dbg !2641
  %63 = load ptr, ptr @stdout, align 8, !dbg !2642, !tbaa !781
  %call209.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %63, ptr noundef nonnull @.str.14) #14, !dbg !2643
  %64 = load ptr, ptr @stdout, align 8, !dbg !2644, !tbaa !781
  %call210.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %64, ptr noundef nonnull @.str.15) #14, !dbg !2645
  call void @llvm.dbg.value(metadata ptr %head.5.lcssa.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  %cmp212.not335.i = icmp eq ptr %head.5.lcssa.i, null, !dbg !2646
  br i1 %cmp212.not335.i, label %for.end253.critedge.i, label %for.body214.i, !dbg !2649

for.body214.i:                                    ; preds = %if.then200.i, %for.body214.i
  %cluster.6336.i = phi ptr [ %68, %for.body214.i ], [ %head.5.lcssa.i, %if.then200.i ]
  call void @llvm.dbg.value(metadata ptr %cluster.6336.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  %65 = load ptr, ptr @stdout, align 8, !dbg !2650, !tbaa !781
  %id215.i = getelementptr inbounds %struct._Cluster, ptr %cluster.6336.i, i64 0, i32 5, !dbg !2651
  %66 = load i64, ptr %id215.i, align 8, !dbg !2651, !tbaa !1158
  %conv216.i = sitofp i64 %66 to double, !dbg !2652
  %count217.i = getelementptr inbounds %struct._Cluster, ptr %cluster.6336.i, i64 0, i32 4, !dbg !2653
  %67 = load i64, ptr %count217.i, align 8, !dbg !2653, !tbaa !950
  %conv218.i = sitofp i64 %67 to double, !dbg !2654
  %call219.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %65, ptr noundef nonnull @.str.16, double noundef %conv216.i, double noundef %conv218.i) #14, !dbg !2655
  %68 = load ptr, ptr %cluster.6336.i, align 8, !dbg !2656, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %68, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  %cmp212.not.i = icmp eq ptr %68, null, !dbg !2646
  br i1 %cmp212.not.i, label %for.body228.i.preheader, label %for.body214.i, !dbg !2649, !llvm.loop !2657

for.body228.i.preheader:                          ; preds = %for.body214.i
  %69 = load ptr, ptr @stdout, align 8, !dbg !2659, !tbaa !781
  %call223.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %69, ptr noundef nonnull @.str.17, i32 noundef 3) #14, !dbg !2660
  %70 = load ptr, ptr @stdout, align 8, !dbg !2661, !tbaa !781
  %call224.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %70, ptr noundef nonnull @.str.18) #14, !dbg !2662
  call void @llvm.dbg.value(metadata ptr %head.5.lcssa.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  br label %for.body228.i, !dbg !2663

for.body228.i:                                    ; preds = %for.body228.i.preheader, %for.body228.i
  %cluster.7338.i = phi ptr [ %80, %for.body228.i ], [ %head.5.lcssa.i, %for.body228.i.preheader ]
  call void @llvm.dbg.value(metadata ptr %cluster.7338.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  %71 = load ptr, ptr @stdout, align 8, !dbg !2665, !tbaa !781
  %id229.i = getelementptr inbounds %struct._Cluster, ptr %cluster.7338.i, i64 0, i32 5, !dbg !2668
  %72 = load i64, ptr %id229.i, align 8, !dbg !2668, !tbaa !1158
  %conv230.i = sitofp i64 %72 to double, !dbg !2669
  %call231.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %71, ptr noundef nonnull @.str.19, double noundef %conv230.i) #14, !dbg !2670
  %73 = load ptr, ptr @stdout, align 8, !dbg !2671, !tbaa !781
  %left233.i = getelementptr inbounds %struct._Cluster, ptr %cluster.7338.i, i64 0, i32 1, i32 2, !dbg !2672
  %74 = load i64, ptr %left233.i, align 8, !dbg !2672, !tbaa !1018
  %conv234.i = sitofp i64 %74 to double, !dbg !2673
  %right236.i = getelementptr inbounds %struct._Cluster, ptr %cluster.7338.i, i64 0, i32 1, i32 3, !dbg !2674
  %75 = load i64, ptr %right236.i, align 8, !dbg !2674, !tbaa !1025
  %conv237.i = sitofp i64 %75 to double, !dbg !2675
  %left239.i = getelementptr inbounds %struct._Cluster, ptr %cluster.7338.i, i64 0, i32 2, i32 2, !dbg !2676
  %76 = load i64, ptr %left239.i, align 8, !dbg !2676, !tbaa !1040
  %conv240.i = sitofp i64 %76 to double, !dbg !2677
  %right242.i = getelementptr inbounds %struct._Cluster, ptr %cluster.7338.i, i64 0, i32 2, i32 3, !dbg !2678
  %77 = load i64, ptr %right242.i, align 8, !dbg !2678, !tbaa !1047
  %conv243.i = sitofp i64 %77 to double, !dbg !2679
  %left245.i = getelementptr inbounds %struct._Cluster, ptr %cluster.7338.i, i64 0, i32 3, i32 2, !dbg !2680
  %78 = load i64, ptr %left245.i, align 8, !dbg !2680, !tbaa !1062
  %conv246.i = sitofp i64 %78 to double, !dbg !2681
  %right248.i = getelementptr inbounds %struct._Cluster, ptr %cluster.7338.i, i64 0, i32 3, i32 3, !dbg !2682
  %79 = load i64, ptr %right248.i, align 8, !dbg !2682, !tbaa !1069
  %conv249.i = sitofp i64 %79 to double, !dbg !2683
  %call250.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %73, ptr noundef nonnull @.str.20, double noundef %conv234.i, double noundef %conv237.i, double noundef %conv240.i, double noundef %conv243.i, double noundef %conv246.i, double noundef %conv249.i) #14, !dbg !2684
  %80 = load ptr, ptr %cluster.7338.i, align 8, !dbg !2685, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %80, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  %cmp226.not.i = icmp eq ptr %80, null, !dbg !2686
  br i1 %cmp226.not.i, label %for.end253.i, label %for.body228.i, !dbg !2663, !llvm.loop !2687

for.end253.critedge.i:                            ; preds = %if.then200.i
  %81 = load ptr, ptr @stdout, align 8, !dbg !2659, !tbaa !781
  %call223.c.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %81, ptr noundef nonnull @.str.17, i32 noundef 3) #14, !dbg !2660
  %82 = load ptr, ptr @stdout, align 8, !dbg !2661, !tbaa !781
  %call224.c.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %82, ptr noundef nonnull @.str.18) #14, !dbg !2662
  call void @llvm.dbg.value(metadata ptr %head.5.lcssa.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  br label %for.end253.i, !dbg !2663

for.end253.i:                                     ; preds = %for.body228.i, %for.end253.critedge.i
  %83 = load ptr, ptr @stdout, align 8, !dbg !2689, !tbaa !781
  %call254.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %83, ptr noundef nonnull @.str.21, i32 noundef 3) #14, !dbg !2690
  %84 = load ptr, ptr @stdout, align 8, !dbg !2691, !tbaa !781
  %call255.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %84, ptr noundef nonnull @.str.22) #14, !dbg !2692
  call void @llvm.dbg.value(metadata ptr %head.5.lcssa.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  br i1 %cmp212.not335.i, label %for.end275.i, label %for.body259.i, !dbg !2693

for.body259.i:                                    ; preds = %for.end253.i, %for.body259.i
  %cluster.8340.i = phi ptr [ %91, %for.body259.i ], [ %head.5.lcssa.i, %for.end253.i ]
  call void @llvm.dbg.value(metadata ptr %cluster.8340.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  %85 = load ptr, ptr @stdout, align 8, !dbg !2695, !tbaa !781
  %id260.i = getelementptr inbounds %struct._Cluster, ptr %cluster.8340.i, i64 0, i32 5, !dbg !2698
  %86 = load i64, ptr %id260.i, align 8, !dbg !2698, !tbaa !1158
  %conv261.i = sitofp i64 %86 to double, !dbg !2699
  %call262.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %85, ptr noundef nonnull @.str.19, double noundef %conv261.i) #14, !dbg !2700
  %87 = load ptr, ptr @stdout, align 8, !dbg !2701, !tbaa !781
  %red263.i = getelementptr inbounds %struct._Cluster, ptr %cluster.8340.i, i64 0, i32 1, !dbg !2702
  %88 = load float, ptr %red263.i, align 8, !dbg !2703, !tbaa !1084
  %conv265.i = fpext float %88 to double, !dbg !2704
  %green266.i = getelementptr inbounds %struct._Cluster, ptr %cluster.8340.i, i64 0, i32 2, !dbg !2705
  %89 = load float, ptr %green266.i, align 8, !dbg !2706, !tbaa !1089
  %conv268.i = fpext float %89 to double, !dbg !2707
  %blue269.i = getelementptr inbounds %struct._Cluster, ptr %cluster.8340.i, i64 0, i32 3, !dbg !2708
  %90 = load float, ptr %blue269.i, align 8, !dbg !2709, !tbaa !1094
  %conv271.i = fpext float %90 to double, !dbg !2710
  %call272.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %87, ptr noundef nonnull @.str.23, double noundef %conv265.i, double noundef %conv268.i, double noundef %conv271.i) #14, !dbg !2711
  %91 = load ptr, ptr %cluster.8340.i, align 8, !dbg !2712, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %91, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  %cmp257.not.i = icmp eq ptr %91, null, !dbg !2713
  br i1 %cmp257.not.i, label %for.end275.i, label %for.body259.i, !dbg !2693, !llvm.loop !2714

for.end275.i:                                     ; preds = %for.body259.i, %for.end253.i
  %92 = load ptr, ptr @stdout, align 8, !dbg !2716, !tbaa !781
  %call276.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %92, ptr noundef nonnull @.str.24) #14, !dbg !2717
  br label %if.end277.i, !dbg !2718

if.end277.i:                                      ; preds = %for.end275.i, %for.end197.i
  %cmp278.i = icmp ugt i64 %count.4.lcssa.i, 256, !dbg !2719
  br i1 %cmp278.i, label %if.then280.i, label %if.end289.i, !dbg !2721

if.then280.i:                                     ; preds = %if.end277.i
  %cmp281.not.i = icmp eq ptr %image, null, !dbg !2722
  br i1 %cmp281.not.i, label %Classify.exit, label %if.then283.i, !dbg !2725

if.then283.i:                                     ; preds = %if.then280.i
  %filename285.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2722
  %call287.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 500, i32 noundef 465, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename285.i) #14, !dbg !2722
  br label %Classify.exit, !dbg !2722

if.end289.i:                                      ; preds = %if.end277.i
  %call290.i = call ptr @AcquireQuantumMemory(i64 noundef 513, i64 noundef 4) #15, !dbg !2726
  call void @llvm.dbg.value(metadata ptr %call290.i, metadata !2288, metadata !DIExpression()) #14, !dbg !2326
  %cmp291.i = icmp eq ptr %call290.i, null, !dbg !2727
  br i1 %cmp291.i, label %if.then293.i, label %if.end302.i, !dbg !2729

if.then293.i:                                     ; preds = %if.end289.i
  %cmp294.not.i = icmp eq ptr %image, null, !dbg !2730
  br i1 %cmp294.not.i, label %Classify.exit, label %if.then296.i, !dbg !2733

if.then296.i:                                     ; preds = %if.then293.i
  %filename298.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2730
  %call300.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 507, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename298.i) #14, !dbg !2730
  br label %Classify.exit, !dbg !2730

if.end302.i:                                      ; preds = %if.end289.i
  %add.ptr.i = getelementptr inbounds float, ptr %call290.i, i64 255, !dbg !2734
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2288, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 -255, metadata !2287, metadata !DIExpression()) #14, !dbg !2326
  br label %for.body306.i, !dbg !2735

for.body306.i:                                    ; preds = %for.body306.i, %if.end302.i
  %i.0341.i = phi i64 [ -255, %if.end302.i ], [ %inc312.i, %for.body306.i ]
  call void @llvm.dbg.value(metadata i64 %i.0341.i, metadata !2287, metadata !DIExpression()) #14, !dbg !2326
  %conv307.i = sitofp i64 %i.0341.i to float, !dbg !2737
  %mul309.i = fmul float %conv307.i, %conv307.i, !dbg !2739
  %arrayidx310.i = getelementptr inbounds float, ptr %add.ptr.i, i64 %i.0341.i, !dbg !2740
  store float %mul309.i, ptr %arrayidx310.i, align 4, !dbg !2741, !tbaa !954
  %inc312.i = add nsw i64 %i.0341.i, 1, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %inc312.i, metadata !2287, metadata !DIExpression()) #14, !dbg !2326
  %exitcond393.not.i = icmp eq i64 %inc312.i, 256, !dbg !2743
  br i1 %exitcond393.not.i, label %for.end313.i, label %for.body306.i, !dbg !2735, !llvm.loop !2744

for.end313.i:                                     ; preds = %for.body306.i
  %call314.i = call i32 @AcquireImageColormap(ptr noundef %image, i64 noundef %count.4.lcssa.i) #14, !dbg !2746
  %cmp315.i = icmp eq i32 %call314.i, 0, !dbg !2748
  br i1 %cmp315.i, label %if.then317.i, label %for.cond327.preheader.i, !dbg !2749

for.cond327.preheader.i:                          ; preds = %for.end313.i
  call void @llvm.dbg.value(metadata ptr %head.5.lcssa.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 0, metadata !2287, metadata !DIExpression()) #14, !dbg !2326
  %cmp328.not342.i = icmp eq ptr %head.5.lcssa.i, null, !dbg !2750
  br i1 %cmp328.not342.i, label %for.end360.i, label %for.body330.lr.ph.i, !dbg !2753

for.body330.lr.ph.i:                              ; preds = %for.cond327.preheader.i
  %colormap.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  %93 = load ptr, ptr %colormap.i, align 8, !tbaa !2754
  br label %for.body330.i, !dbg !2753

if.then317.i:                                     ; preds = %for.end313.i
  %cmp318.not.i = icmp eq ptr %image, null, !dbg !2755
  br i1 %cmp318.not.i, label %Classify.exit, label %if.then320.i, !dbg !2758

if.then320.i:                                     ; preds = %if.then317.i
  %filename322.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2755
  %call324.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 516, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename322.i) #14, !dbg !2755
  br label %Classify.exit, !dbg !2755

for.body330.i:                                    ; preds = %for.body330.i, %for.body330.lr.ph.i
  %cluster.9344.i = phi ptr [ %head.5.lcssa.i, %for.body330.lr.ph.i ], [ %97, %for.body330.i ]
  %i.1343.i = phi i64 [ 0, %for.body330.lr.ph.i ], [ %inc357.i, %for.body330.i ]
  call void @llvm.dbg.value(metadata ptr %cluster.9344.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %i.1343.i, metadata !2287, metadata !DIExpression()) #14, !dbg !2326
  %red331.i = getelementptr inbounds %struct._Cluster, ptr %cluster.9344.i, i64 0, i32 1, !dbg !2759
  %94 = load float, ptr %red331.i, align 8, !dbg !2761, !tbaa !1084
  %conv333.i = fpext float %94 to double, !dbg !2762
  %add334.i = fadd double %conv333.i, 5.000000e-01, !dbg !2763
  %conv335.i = fptoui double %add334.i to i8, !dbg !2764
  call void @llvm.dbg.value(metadata i8 %conv335.i, metadata !1220, metadata !DIExpression()) #14, !dbg !2765
  %conv.i107.i = zext i8 %conv335.i to i16, !dbg !2767
  %mul.i.i = mul nuw i16 %conv.i107.i, 257, !dbg !2768
  %red338.i = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 %i.1343.i, i32 2, !dbg !2769
  store i16 %mul.i.i, ptr %red338.i, align 2, !dbg !2770, !tbaa !1003
  %green339.i = getelementptr inbounds %struct._Cluster, ptr %cluster.9344.i, i64 0, i32 2, !dbg !2771
  %95 = load float, ptr %green339.i, align 8, !dbg !2772, !tbaa !1089
  %conv341.i = fpext float %95 to double, !dbg !2773
  %add342.i = fadd double %conv341.i, 5.000000e-01, !dbg !2774
  %conv343.i = fptoui double %add342.i to i8, !dbg !2775
  call void @llvm.dbg.value(metadata i8 %conv343.i, metadata !1220, metadata !DIExpression()) #14, !dbg !2776
  %conv.i108.i = zext i8 %conv343.i to i16, !dbg !2778
  %mul.i109.i = mul nuw i16 %conv.i108.i, 257, !dbg !2779
  %green347.i = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 %i.1343.i, i32 1, !dbg !2780
  store i16 %mul.i109.i, ptr %green347.i, align 2, !dbg !2781, !tbaa !1030
  %blue348.i = getelementptr inbounds %struct._Cluster, ptr %cluster.9344.i, i64 0, i32 3, !dbg !2782
  %96 = load float, ptr %blue348.i, align 8, !dbg !2783, !tbaa !1094
  %conv350.i = fpext float %96 to double, !dbg !2784
  %add351.i = fadd double %conv350.i, 5.000000e-01, !dbg !2785
  %conv352.i = fptoui double %add351.i to i8, !dbg !2786
  call void @llvm.dbg.value(metadata i8 %conv352.i, metadata !1220, metadata !DIExpression()) #14, !dbg !2787
  %conv.i110.i = zext i8 %conv352.i to i16, !dbg !2789
  %mul.i111.i = mul nuw i16 %conv.i110.i, 257, !dbg !2790
  %arrayidx355.i = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 %i.1343.i, !dbg !2791
  store i16 %mul.i111.i, ptr %arrayidx355.i, align 2, !dbg !2792, !tbaa !1052
  %inc357.i = add nuw nsw i64 %i.1343.i, 1, !dbg !2793
  call void @llvm.dbg.value(metadata i64 %inc357.i, metadata !2287, metadata !DIExpression()) #14, !dbg !2326
  %97 = load ptr, ptr %cluster.9344.i, align 8, !dbg !2794, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %97, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  %cmp328.not.i = icmp eq ptr %97, null, !dbg !2750
  br i1 %cmp328.not.i, label %for.end360.i, label %for.body330.i, !dbg !2753, !llvm.loop !2795

for.end360.i:                                     ; preds = %for.body330.i, %for.cond327.preheader.i
  call void @llvm.dbg.value(metadata ptr %exception32, metadata !2279, metadata !DIExpression()) #14, !dbg !2326
  %call362.i = call ptr @AcquireAuthenticCacheView(ptr noundef %image, ptr noundef nonnull %exception32) #14, !dbg !2797
  call void @llvm.dbg.value(metadata ptr %call362.i, metadata !2270, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 0, metadata !2291, metadata !DIExpression()) #14, !dbg !2326
  %98 = load i64, ptr %rows.i, align 8, !dbg !2798, !tbaa !991
  %cmp365361.i = icmp sgt i64 %98, 0, !dbg !2799
  br i1 %cmp365361.i, label %for.body367.lr.ph.i, label %for.end600.i, !dbg !2800

for.body367.lr.ph.i:                              ; preds = %for.end360.i
  %colors.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10
  %colormap470.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  %progress_monitor577.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i223.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i225.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body367.i, !dbg !2800

for.body367.i:                                    ; preds = %cleanup591.i, %for.body367.lr.ph.i
  %y.1364.i = phi i64 [ 0, %for.body367.lr.ph.i ], [ %inc599.i, %cleanup591.i ]
  %status.5363.i = phi i32 [ %status.0.lcssa407.i, %for.body367.lr.ph.i ], [ %status.9.i, %cleanup591.i ]
  %progress.4362.i = phi i64 [ %progress.0.lcssa405.i, %for.body367.lr.ph.i ], [ %progress.6.i, %cleanup591.i ]
  call void @llvm.dbg.value(metadata i64 %y.1364.i, metadata !2291, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i32 %status.5363.i, metadata !2285, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %progress.4362.i, metadata !2283, metadata !DIExpression()) #14, !dbg !2326
  %cmp371.i = icmp eq i32 %status.5363.i, 0, !dbg !2801
  br i1 %cmp371.i, label %cleanup591.i, label %if.end374.i, !dbg !2803

if.end374.i:                                      ; preds = %for.body367.i
  %99 = load i64, ptr %columns.i, align 8, !dbg !2804, !tbaa !994
  %call376.i = call ptr @GetCacheViewAuthenticPixels(ptr noundef %call362.i, i64 noundef 0, i64 noundef %y.1364.i, i64 noundef %99, i64 noundef 1, ptr noundef nonnull %exception32) #19, !dbg !2805
  call void @llvm.dbg.value(metadata ptr %call376.i, metadata !2309, metadata !DIExpression()) #14, !dbg !2806
  %cmp377.i = icmp eq ptr %call376.i, null, !dbg !2807
  br i1 %cmp377.i, label %cleanup591.i, label %if.end380.i, !dbg !2809

if.end380.i:                                      ; preds = %if.end374.i
  %call381.i = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call362.i) #14, !dbg !2810
  call void @llvm.dbg.value(metadata ptr %call381.i, metadata !2306, metadata !DIExpression()) #14, !dbg !2806
  call void @llvm.dbg.value(metadata i64 0, metadata !2308, metadata !DIExpression()) #14, !dbg !2806
  call void @llvm.dbg.value(metadata ptr %call376.i, metadata !2309, metadata !DIExpression()) #14, !dbg !2806
  %100 = load i64, ptr %columns.i, align 8, !dbg !2811, !tbaa !994
  %cmp384356.i = icmp sgt i64 %100, 0, !dbg !2812
  br i1 %cmp384356.i, label %for.body386.lr.ph.i, label %for.end571.i, !dbg !2813

for.body386.lr.ph.i:                              ; preds = %if.end380.i
  %cmp388.not.i = icmp eq ptr %call381.i, null
  br label %for.body386.i, !dbg !2813

for.body386.i:                                    ; preds = %if.end567.i, %for.body386.lr.ph.i
  %101 = phi i64 [ %100, %for.body386.lr.ph.i ], [ %137, %if.end567.i ]
  %q.0358.i = phi ptr [ %call376.i, %for.body386.lr.ph.i ], [ %incdec.ptr568.i, %if.end567.i ]
  %x370.0357.i = phi i64 [ 0, %for.body386.lr.ph.i ], [ %inc570.i, %if.end567.i ]
  call void @llvm.dbg.value(metadata ptr %q.0358.i, metadata !2309, metadata !DIExpression()) #14, !dbg !2806
  call void @llvm.dbg.value(metadata i64 %x370.0357.i, metadata !2308, metadata !DIExpression()) #14, !dbg !2806
  %add.ptr387.i = getelementptr inbounds i16, ptr %call381.i, i64 %x370.0357.i, !dbg !2814
  br i1 %cmp388.not.i, label %if.end392.i, label %if.then390.i, !dbg !2817

if.then390.i:                                     ; preds = %for.body386.i
  store i16 0, ptr %add.ptr387.i, align 2, !dbg !2814, !tbaa !854
  br label %if.end392.i, !dbg !2814

if.end392.i:                                      ; preds = %if.then390.i, %for.body386.i
  call void @llvm.dbg.value(metadata ptr %head.5.lcssa.i, metadata !2300, metadata !DIExpression()) #14, !dbg !2806
  br i1 %cmp328.not342.i, label %for.cond466.preheader.i, label %for.body396.lr.ph.i, !dbg !2818

for.body396.lr.ph.i:                              ; preds = %if.end392.i
  %red397.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0358.i, i64 0, i32 2
  %102 = load i16, ptr %red397.i, align 2, !tbaa !1003
  %conv.i112.i = zext i16 %102 to i64
  %add.i113.i = add nuw nsw i64 %conv.i112.i, 128
  %shr.i114.i = lshr i64 %add.i113.i, 8
  %sub.i115.i = sub nsw i64 %add.i113.i, %shr.i114.i
  %shr3.i116.i = lshr i64 %sub.i115.i, 8
  %conv399.i = and i64 %shr3.i116.i, 255
  %green415.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0358.i, i64 0, i32 1
  br label %for.body396.i, !dbg !2818

for.cond466.preheader.i:                          ; preds = %for.inc460.i, %if.end392.i
  call void @llvm.dbg.value(metadata i64 0, metadata !2321, metadata !DIExpression()) #14, !dbg !2820
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !2317, metadata !DIExpression()) #14, !dbg !2820
  %103 = load i64, ptr %colors.i, align 8, !dbg !2821, !tbaa !2824
  %cmp467352.i = icmp sgt i64 %103, 0, !dbg !2825
  br i1 %cmp467352.i, label %for.body469.lr.ph.i, label %if.end567.i, !dbg !2826

for.body469.lr.ph.i:                              ; preds = %for.cond466.preheader.i
  %red472.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0358.i, i64 0, i32 2
  %green480.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0358.i, i64 0, i32 1
  br label %for.body469.i, !dbg !2826

for.body396.i:                                    ; preds = %for.inc460.i, %for.body396.lr.ph.i
  %cluster368.0346.i = phi ptr [ %head.5.lcssa.i, %for.body396.lr.ph.i ], [ %113, %for.inc460.i ]
  call void @llvm.dbg.value(metadata ptr %cluster368.0346.i, metadata !2300, metadata !DIExpression()) #14, !dbg !2806
  call void @llvm.dbg.value(metadata i16 %102, metadata !1007, metadata !DIExpression()) #14, !dbg !2827
  %left401.i = getelementptr inbounds %struct._Cluster, ptr %cluster368.0346.i, i64 0, i32 1, i32 2, !dbg !2832
  %104 = load i64, ptr %left401.i, align 8, !dbg !2832, !tbaa !1018
  %sub402.i = add nsw i64 %104, -3, !dbg !2833
  %cmp403.not.i = icmp sgt i64 %sub402.i, %conv399.i, !dbg !2834
  br i1 %cmp403.not.i, label %for.inc460.i, label %land.lhs.true405.i, !dbg !2835

land.lhs.true405.i:                               ; preds = %for.body396.i
  call void @llvm.dbg.value(metadata i16 %102, metadata !1007, metadata !DIExpression()) #14, !dbg !2836
  %right410.i = getelementptr inbounds %struct._Cluster, ptr %cluster368.0346.i, i64 0, i32 1, i32 3, !dbg !2838
  %105 = load i64, ptr %right410.i, align 8, !dbg !2838, !tbaa !1025
  %add411.i = add nsw i64 %105, 3, !dbg !2839
  %cmp412.not.i = icmp slt i64 %add411.i, %conv399.i, !dbg !2840
  br i1 %cmp412.not.i, label %for.inc460.i, label %land.lhs.true414.i, !dbg !2841

land.lhs.true414.i:                               ; preds = %land.lhs.true405.i
  %106 = load i16, ptr %green415.i, align 2, !dbg !2842, !tbaa !1030
  call void @llvm.dbg.value(metadata i16 %106, metadata !1007, metadata !DIExpression()) #14, !dbg !2843
  %conv.i124.i = zext i16 %106 to i64, !dbg !2845
  %add.i125.i = add nuw nsw i64 %conv.i124.i, 128, !dbg !2846
  %shr.i126.i = lshr i64 %add.i125.i, 8, !dbg !2847
  %sub.i127.i = sub nsw i64 %add.i125.i, %shr.i126.i, !dbg !2848
  %shr3.i128.i = lshr i64 %sub.i127.i, 8, !dbg !2849
  %conv417.i = and i64 %shr3.i128.i, 255, !dbg !2850
  %left419.i = getelementptr inbounds %struct._Cluster, ptr %cluster368.0346.i, i64 0, i32 2, i32 2, !dbg !2851
  %107 = load i64, ptr %left419.i, align 8, !dbg !2851, !tbaa !1040
  %sub420.i = add nsw i64 %107, -3, !dbg !2852
  %cmp421.not.i = icmp sgt i64 %sub420.i, %conv417.i, !dbg !2853
  br i1 %cmp421.not.i, label %for.inc460.i, label %land.lhs.true423.i, !dbg !2854

land.lhs.true423.i:                               ; preds = %land.lhs.true414.i
  call void @llvm.dbg.value(metadata i16 %106, metadata !1007, metadata !DIExpression()) #14, !dbg !2855
  %right428.i = getelementptr inbounds %struct._Cluster, ptr %cluster368.0346.i, i64 0, i32 2, i32 3, !dbg !2857
  %108 = load i64, ptr %right428.i, align 8, !dbg !2857, !tbaa !1047
  %add429.i = add nsw i64 %108, 3, !dbg !2858
  %cmp430.not.i = icmp slt i64 %add429.i, %conv417.i, !dbg !2859
  br i1 %cmp430.not.i, label %for.inc460.i, label %land.lhs.true432.i, !dbg !2860

land.lhs.true432.i:                               ; preds = %land.lhs.true423.i
  %109 = load i16, ptr %q.0358.i, align 2, !dbg !2861, !tbaa !1052
  call void @llvm.dbg.value(metadata i16 %109, metadata !1007, metadata !DIExpression()) #14, !dbg !2862
  %conv.i136.i = zext i16 %109 to i64, !dbg !2864
  %add.i137.i = add nuw nsw i64 %conv.i136.i, 128, !dbg !2865
  %shr.i138.i = lshr i64 %add.i137.i, 8, !dbg !2866
  %sub.i139.i = sub nsw i64 %add.i137.i, %shr.i138.i, !dbg !2867
  %shr3.i140.i = lshr i64 %sub.i139.i, 8, !dbg !2868
  %conv435.i = and i64 %shr3.i140.i, 255, !dbg !2869
  %left437.i = getelementptr inbounds %struct._Cluster, ptr %cluster368.0346.i, i64 0, i32 3, i32 2, !dbg !2870
  %110 = load i64, ptr %left437.i, align 8, !dbg !2870, !tbaa !1062
  %sub438.i = add nsw i64 %110, -3, !dbg !2871
  %cmp439.not.i = icmp sgt i64 %sub438.i, %conv435.i, !dbg !2872
  br i1 %cmp439.not.i, label %for.inc460.i, label %land.lhs.true441.i, !dbg !2873

land.lhs.true441.i:                               ; preds = %land.lhs.true432.i
  call void @llvm.dbg.value(metadata i16 %109, metadata !1007, metadata !DIExpression()) #14, !dbg !2874
  %right446.i = getelementptr inbounds %struct._Cluster, ptr %cluster368.0346.i, i64 0, i32 3, i32 3, !dbg !2876
  %111 = load i64, ptr %right446.i, align 8, !dbg !2876, !tbaa !1069
  %add447.i = add nsw i64 %111, 3, !dbg !2877
  %cmp448.not.i = icmp slt i64 %add447.i, %conv435.i, !dbg !2878
  br i1 %cmp448.not.i, label %for.inc460.i, label %if.then450.i, !dbg !2879

if.then450.i:                                     ; preds = %land.lhs.true441.i
  br i1 %cmp388.not.i, label %if.end567.i, label %if.then454.i, !dbg !2880

if.then454.i:                                     ; preds = %if.then450.i
  %id455.i = getelementptr inbounds %struct._Cluster, ptr %cluster368.0346.i, i64 0, i32 5, !dbg !2883
  %112 = load i64, ptr %id455.i, align 8, !dbg !2883, !tbaa !1158
  %conv456.i = trunc i64 %112 to i16, !dbg !2883
  store i16 %conv456.i, ptr %add.ptr387.i, align 2, !dbg !2883, !tbaa !854
  br label %if.end567.i, !dbg !2883

for.inc460.i:                                     ; preds = %land.lhs.true441.i, %land.lhs.true432.i, %land.lhs.true423.i, %land.lhs.true414.i, %land.lhs.true405.i, %for.body396.i
  %113 = load ptr, ptr %cluster368.0346.i, align 8, !dbg !2885, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %113, metadata !2300, metadata !DIExpression()) #14, !dbg !2806
  %cond.i = icmp eq ptr %113, null, !dbg !2818
  br i1 %cond.i, label %for.cond466.preheader.i, label %for.body396.i, !dbg !2818, !llvm.loop !2886

for.body469.i:                                    ; preds = %for.inc564.i, %for.body469.lr.ph.i
  %114 = phi i64 [ %103, %for.body469.lr.ph.i ], [ %136, %for.inc564.i ]
  %j.0354.i = phi i64 [ 0, %for.body469.lr.ph.i ], [ %inc565.i, %for.inc564.i ]
  %local_minima.0353.i = phi float [ 0.000000e+00, %for.body469.lr.ph.i ], [ %local_minima.1.i, %for.inc564.i ]
  call void @llvm.dbg.value(metadata i64 %j.0354.i, metadata !2321, metadata !DIExpression()) #14, !dbg !2820
  call void @llvm.dbg.value(metadata float %local_minima.0353.i, metadata !2317, metadata !DIExpression()) #14, !dbg !2820
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !2320, metadata !DIExpression()) #14, !dbg !2820
  %115 = load ptr, ptr %colormap470.i, align 8, !dbg !2888, !tbaa !2754
  %add.ptr471.i = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 %j.0354.i, !dbg !2890
  call void @llvm.dbg.value(metadata ptr %add.ptr471.i, metadata !2304, metadata !DIExpression()) #14, !dbg !2806
  %116 = load i16, ptr %red472.i, align 2, !dbg !2891, !tbaa !1003
  call void @llvm.dbg.value(metadata i16 %116, metadata !1007, metadata !DIExpression()) #14, !dbg !2892
  %conv.i148.i = zext i16 %116 to i64, !dbg !2894
  %add.i149.i = add nuw nsw i64 %conv.i148.i, 128, !dbg !2895
  %shr.i150.i = lshr i64 %add.i149.i, 8, !dbg !2896
  %sub.i151.i = sub nsw i64 %add.i149.i, %shr.i150.i, !dbg !2897
  %shr3.i152.i = lshr i64 %sub.i151.i, 8, !dbg !2898
  %conv474.i = and i64 %shr3.i152.i, 255, !dbg !2899
  %red475.i = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 %j.0354.i, i32 2, !dbg !2900
  %117 = load i16, ptr %red475.i, align 2, !dbg !2900, !tbaa !1003
  call void @llvm.dbg.value(metadata i16 %117, metadata !1007, metadata !DIExpression()) #14, !dbg !2901
  %conv.i154.i = zext i16 %117 to i64, !dbg !2903
  %add.i155.i = add nuw nsw i64 %conv.i154.i, 128, !dbg !2904
  %shr.i156.i = lshr i64 %add.i155.i, 8, !dbg !2905
  %sub.i157.i = sub nsw i64 %add.i155.i, %shr.i156.i, !dbg !2906
  %shr3.i158.i = lshr i64 %sub.i157.i, 8, !dbg !2907
  %conv477.i = and i64 %shr3.i158.i, 255, !dbg !2908
  %sub478.i = sub nsw i64 %conv474.i, %conv477.i, !dbg !2909
  %arrayidx479.i = getelementptr inbounds float, ptr %add.ptr.i, i64 %sub478.i, !dbg !2910
  %118 = load float, ptr %arrayidx479.i, align 4, !dbg !2910, !tbaa !954
  %119 = load i16, ptr %green480.i, align 2, !dbg !2911, !tbaa !1030
  call void @llvm.dbg.value(metadata i16 %119, metadata !1007, metadata !DIExpression()) #14, !dbg !2912
  %conv.i160.i = zext i16 %119 to i64, !dbg !2914
  %add.i161.i = add nuw nsw i64 %conv.i160.i, 128, !dbg !2915
  %shr.i162.i = lshr i64 %add.i161.i, 8, !dbg !2916
  %sub.i163.i = sub nsw i64 %add.i161.i, %shr.i162.i, !dbg !2917
  %shr3.i164.i = lshr i64 %sub.i163.i, 8, !dbg !2918
  %conv482.i = and i64 %shr3.i164.i, 255, !dbg !2919
  %green483.i = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 %j.0354.i, i32 1, !dbg !2920
  %120 = load i16, ptr %green483.i, align 2, !dbg !2920, !tbaa !1030
  call void @llvm.dbg.value(metadata i16 %120, metadata !1007, metadata !DIExpression()) #14, !dbg !2921
  %conv.i166.i = zext i16 %120 to i64, !dbg !2923
  %add.i167.i = add nuw nsw i64 %conv.i166.i, 128, !dbg !2924
  %shr.i168.i = lshr i64 %add.i167.i, 8, !dbg !2925
  %sub.i169.i = sub nsw i64 %add.i167.i, %shr.i168.i, !dbg !2926
  %shr3.i170.i = lshr i64 %sub.i169.i, 8, !dbg !2927
  %conv485.i = and i64 %shr3.i170.i, 255, !dbg !2928
  %sub486.i = sub nsw i64 %conv482.i, %conv485.i, !dbg !2929
  %arrayidx487.i = getelementptr inbounds float, ptr %add.ptr.i, i64 %sub486.i, !dbg !2930
  %121 = load float, ptr %arrayidx487.i, align 4, !dbg !2930, !tbaa !954
  %add488.i = fadd float %118, %121, !dbg !2931
  %122 = load i16, ptr %q.0358.i, align 2, !dbg !2932, !tbaa !1052
  call void @llvm.dbg.value(metadata i16 %122, metadata !1007, metadata !DIExpression()) #14, !dbg !2933
  %conv.i172.i = zext i16 %122 to i64, !dbg !2935
  %add.i173.i = add nuw nsw i64 %conv.i172.i, 128, !dbg !2936
  %shr.i174.i = lshr i64 %add.i173.i, 8, !dbg !2937
  %sub.i175.i = sub nsw i64 %add.i173.i, %shr.i174.i, !dbg !2938
  %shr3.i176.i = lshr i64 %sub.i175.i, 8, !dbg !2939
  %conv491.i = and i64 %shr3.i176.i, 255, !dbg !2940
  %123 = load i16, ptr %add.ptr471.i, align 2, !dbg !2941, !tbaa !1052
  call void @llvm.dbg.value(metadata i16 %123, metadata !1007, metadata !DIExpression()) #14, !dbg !2942
  %conv.i178.i = zext i16 %123 to i64, !dbg !2944
  %add.i179.i = add nuw nsw i64 %conv.i178.i, 128, !dbg !2945
  %shr.i180.i = lshr i64 %add.i179.i, 8, !dbg !2946
  %sub.i181.i = sub nsw i64 %add.i179.i, %shr.i180.i, !dbg !2947
  %shr3.i182.i = lshr i64 %sub.i181.i, 8, !dbg !2948
  %conv494.i = and i64 %shr3.i182.i, 255, !dbg !2949
  %sub495.i = sub nsw i64 %conv491.i, %conv494.i, !dbg !2950
  %arrayidx496.i = getelementptr inbounds float, ptr %add.ptr.i, i64 %sub495.i, !dbg !2951
  %124 = load float, ptr %arrayidx496.i, align 4, !dbg !2951, !tbaa !954
  %add497.i = fadd float %add488.i, %124, !dbg !2952
  call void @llvm.dbg.value(metadata float %add497.i, metadata !2311, metadata !DIExpression()) #14, !dbg !2820
  call void @llvm.dbg.value(metadata float %add497.i, metadata !2318, metadata !DIExpression()) #14, !dbg !2820
  call void @llvm.dbg.value(metadata i64 0, metadata !2322, metadata !DIExpression()) #14, !dbg !2820
  %cmp500348.i = icmp sgt i64 %114, 0, !dbg !2953
  br i1 %cmp500348.i, label %for.body502.i, label %for.inc564.i, !dbg !2956

for.body502.i:                                    ; preds = %for.body469.i, %for.body502.for.body502_crit_edge.i
  %125 = phi i16 [ %.pre396.i, %for.body502.for.body502_crit_edge.i ], [ %122, %for.body469.i ], !dbg !2957
  %126 = phi i16 [ %.pre395.i, %for.body502.for.body502_crit_edge.i ], [ %119, %for.body469.i ], !dbg !2959
  %127 = phi i16 [ %.pre394.i, %for.body502.for.body502_crit_edge.i ], [ %116, %for.body469.i ], !dbg !2960
  %128 = phi ptr [ %.pre.i, %for.body502.for.body502_crit_edge.i ], [ %115, %for.body469.i ], !dbg !2961
  %k.0350.i = phi i64 [ %inc541.i, %for.body502.for.body502_crit_edge.i ], [ 0, %for.body469.i ]
  %sum.0349.i = phi float [ %conv539.i, %for.body502.for.body502_crit_edge.i ], [ 0.000000e+00, %for.body469.i ]
  call void @llvm.dbg.value(metadata i64 %k.0350.i, metadata !2322, metadata !DIExpression()) #14, !dbg !2820
  call void @llvm.dbg.value(metadata float %sum.0349.i, metadata !2320, metadata !DIExpression()) #14, !dbg !2820
  %add.ptr504.i = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 %k.0350.i, !dbg !2962
  call void @llvm.dbg.value(metadata ptr %add.ptr504.i, metadata !2304, metadata !DIExpression()) #14, !dbg !2806
  call void @llvm.dbg.value(metadata i16 %127, metadata !1007, metadata !DIExpression()) #14, !dbg !2963
  %conv.i184.i = zext i16 %127 to i64, !dbg !2965
  %add.i185.i = add nuw nsw i64 %conv.i184.i, 128, !dbg !2966
  %shr.i186.i = lshr i64 %add.i185.i, 8, !dbg !2967
  %sub.i187.i = sub nsw i64 %add.i185.i, %shr.i186.i, !dbg !2968
  %shr3.i188.i = lshr i64 %sub.i187.i, 8, !dbg !2969
  %conv507.i = and i64 %shr3.i188.i, 255, !dbg !2970
  %red508.i = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 %k.0350.i, i32 2, !dbg !2971
  %129 = load i16, ptr %red508.i, align 2, !dbg !2971, !tbaa !1003
  call void @llvm.dbg.value(metadata i16 %129, metadata !1007, metadata !DIExpression()) #14, !dbg !2972
  %conv.i190.i = zext i16 %129 to i64, !dbg !2974
  %add.i191.i = add nuw nsw i64 %conv.i190.i, 128, !dbg !2975
  %shr.i192.i = lshr i64 %add.i191.i, 8, !dbg !2976
  %sub.i193.i = sub nsw i64 %add.i191.i, %shr.i192.i, !dbg !2977
  %shr3.i194.i = lshr i64 %sub.i193.i, 8, !dbg !2978
  %conv510.i = and i64 %shr3.i194.i, 255, !dbg !2979
  %sub511.i = sub nsw i64 %conv507.i, %conv510.i, !dbg !2980
  %arrayidx512.i = getelementptr inbounds float, ptr %add.ptr.i, i64 %sub511.i, !dbg !2981
  %130 = load float, ptr %arrayidx512.i, align 4, !dbg !2981, !tbaa !954
  call void @llvm.dbg.value(metadata i16 %126, metadata !1007, metadata !DIExpression()) #14, !dbg !2982
  %conv.i196.i = zext i16 %126 to i64, !dbg !2984
  %add.i197.i = add nuw nsw i64 %conv.i196.i, 128, !dbg !2985
  %shr.i198.i = lshr i64 %add.i197.i, 8, !dbg !2986
  %sub.i199.i = sub nsw i64 %add.i197.i, %shr.i198.i, !dbg !2987
  %shr3.i200.i = lshr i64 %sub.i199.i, 8, !dbg !2988
  %conv515.i = and i64 %shr3.i200.i, 255, !dbg !2989
  %green516.i = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 %k.0350.i, i32 1, !dbg !2990
  %131 = load i16, ptr %green516.i, align 2, !dbg !2990, !tbaa !1030
  call void @llvm.dbg.value(metadata i16 %131, metadata !1007, metadata !DIExpression()) #14, !dbg !2991
  %conv.i202.i = zext i16 %131 to i64, !dbg !2993
  %add.i203.i = add nuw nsw i64 %conv.i202.i, 128, !dbg !2994
  %shr.i204.i = lshr i64 %add.i203.i, 8, !dbg !2995
  %sub.i205.i = sub nsw i64 %add.i203.i, %shr.i204.i, !dbg !2996
  %shr3.i206.i = lshr i64 %sub.i205.i, 8, !dbg !2997
  %conv518.i = and i64 %shr3.i206.i, 255, !dbg !2998
  %sub519.i = sub nsw i64 %conv515.i, %conv518.i, !dbg !2999
  %arrayidx520.i = getelementptr inbounds float, ptr %add.ptr.i, i64 %sub519.i, !dbg !3000
  %132 = load float, ptr %arrayidx520.i, align 4, !dbg !3000, !tbaa !954
  %add521.i = fadd float %130, %132, !dbg !3001
  call void @llvm.dbg.value(metadata i16 %125, metadata !1007, metadata !DIExpression()) #14, !dbg !3002
  %conv.i208.i = zext i16 %125 to i64, !dbg !3004
  %add.i209.i = add nuw nsw i64 %conv.i208.i, 128, !dbg !3005
  %shr.i210.i = lshr i64 %add.i209.i, 8, !dbg !3006
  %sub.i211.i = sub nsw i64 %add.i209.i, %shr.i210.i, !dbg !3007
  %shr3.i212.i = lshr i64 %sub.i211.i, 8, !dbg !3008
  %conv524.i = and i64 %shr3.i212.i, 255, !dbg !3009
  %133 = load i16, ptr %add.ptr504.i, align 2, !dbg !3010, !tbaa !1052
  call void @llvm.dbg.value(metadata i16 %133, metadata !1007, metadata !DIExpression()) #14, !dbg !3011
  %conv.i214.i = zext i16 %133 to i64, !dbg !3013
  %add.i215.i = add nuw nsw i64 %conv.i214.i, 128, !dbg !3014
  %shr.i216.i = lshr i64 %add.i215.i, 8, !dbg !3015
  %sub.i217.i = sub nsw i64 %add.i215.i, %shr.i216.i, !dbg !3016
  %shr3.i218.i = lshr i64 %sub.i217.i, 8, !dbg !3017
  %conv527.i = and i64 %shr3.i218.i, 255, !dbg !3018
  %sub528.i = sub nsw i64 %conv524.i, %conv527.i, !dbg !3019
  %arrayidx529.i = getelementptr inbounds float, ptr %add.ptr.i, i64 %sub528.i, !dbg !3020
  %134 = load float, ptr %arrayidx529.i, align 4, !dbg !3020, !tbaa !954
  %add530.i = fadd float %add521.i, %134, !dbg !3021
  call void @llvm.dbg.value(metadata float %add530.i, metadata !2311, metadata !DIExpression()) #14, !dbg !2820
  %div531.i = fdiv float %add497.i, %add530.i, !dbg !3022
  call void @llvm.dbg.value(metadata float %div531.i, metadata !2319, metadata !DIExpression()) #14, !dbg !2820
  %conv532.i = fpext float %div531.i to double, !dbg !3023
  %call536.i = call double @pow(double noundef %conv532.i, double noundef 0x3FE5555555555555) #14, !dbg !3023
  %conv537.i = fpext float %sum.0349.i to double, !dbg !3024
  %add538.i = fadd double %call536.i, %conv537.i, !dbg !3024
  %conv539.i = fptrunc double %add538.i to float, !dbg !3024
  call void @llvm.dbg.value(metadata float %conv539.i, metadata !2320, metadata !DIExpression()) #14, !dbg !2820
  %inc541.i = add nuw nsw i64 %k.0350.i, 1, !dbg !3025
  call void @llvm.dbg.value(metadata i64 %inc541.i, metadata !2322, metadata !DIExpression()) #14, !dbg !2820
  %135 = load i64, ptr %colors.i, align 8, !dbg !3026, !tbaa !2824
  %cmp500.i = icmp slt i64 %inc541.i, %135, !dbg !2953
  br i1 %cmp500.i, label %for.body502.for.body502_crit_edge.i, label %for.end542.i, !dbg !2956, !llvm.loop !3027

for.body502.for.body502_crit_edge.i:              ; preds = %for.body502.i
  %.pre.i = load ptr, ptr %colormap470.i, align 8, !dbg !2961, !tbaa !2754
  %.pre394.i = load i16, ptr %red472.i, align 2, !dbg !2960, !tbaa !1003
  %.pre395.i = load i16, ptr %green480.i, align 2, !dbg !2959, !tbaa !1030
  %.pre396.i = load i16, ptr %q.0358.i, align 2, !dbg !2957, !tbaa !1052
  br label %for.body502.i, !dbg !2956

for.end542.i:                                     ; preds = %for.body502.i
  %cmp544.i = fcmp une float %conv539.i, 0.000000e+00, !dbg !3029
  br i1 %cmp544.i, label %land.lhs.true546.i, label %for.inc564.i, !dbg !3031

land.lhs.true546.i:                               ; preds = %for.end542.i
  %conv543.i = fpext float %conv539.i to double, !dbg !3032
  %div548.i = fdiv double 1.000000e+00, %conv543.i, !dbg !3033
  %conv549.i = fpext float %local_minima.0353.i to double, !dbg !3034
  %cmp550.i = fcmp ogt double %div548.i, %conv549.i, !dbg !3035
  br i1 %cmp550.i, label %if.then552.i, label %for.inc564.i, !dbg !3036

if.then552.i:                                     ; preds = %land.lhs.true546.i
  %conv555.i = fptrunc double %div548.i to float, !dbg !3037
  call void @llvm.dbg.value(metadata float %conv555.i, metadata !2317, metadata !DIExpression()) #14, !dbg !2820
  br i1 %cmp388.not.i, label %for.inc564.i, label %if.then559.i, !dbg !3039

if.then559.i:                                     ; preds = %if.then552.i
  %conv560.i = trunc i64 %j.0354.i to i16, !dbg !3041
  store i16 %conv560.i, ptr %add.ptr387.i, align 2, !dbg !3041, !tbaa !854
  br label %for.inc564.i, !dbg !3041

for.inc564.i:                                     ; preds = %if.then559.i, %if.then552.i, %land.lhs.true546.i, %for.end542.i, %for.body469.i
  %136 = phi i64 [ %135, %if.then559.i ], [ %135, %if.then552.i ], [ %135, %land.lhs.true546.i ], [ %135, %for.end542.i ], [ %114, %for.body469.i ]
  %local_minima.1.i = phi float [ %conv555.i, %if.then559.i ], [ %conv555.i, %if.then552.i ], [ %local_minima.0353.i, %land.lhs.true546.i ], [ %local_minima.0353.i, %for.end542.i ], [ %local_minima.0353.i, %for.body469.i ], !dbg !2820
  call void @llvm.dbg.value(metadata float %local_minima.1.i, metadata !2317, metadata !DIExpression()) #14, !dbg !2820
  %inc565.i = add nuw nsw i64 %j.0354.i, 1, !dbg !3043
  call void @llvm.dbg.value(metadata i64 %inc565.i, metadata !2321, metadata !DIExpression()) #14, !dbg !2820
  %cmp467.i = icmp slt i64 %inc565.i, %136, !dbg !2825
  br i1 %cmp467.i, label %for.body469.i, label %if.end567.loopexit.i, !dbg !2826, !llvm.loop !3044

if.end567.loopexit.i:                             ; preds = %for.inc564.i
  %.pre397.i = load i64, ptr %columns.i, align 8, !dbg !2811, !tbaa !994
  br label %if.end567.i, !dbg !3046

if.end567.i:                                      ; preds = %if.end567.loopexit.i, %if.then454.i, %if.then450.i, %for.cond466.preheader.i
  %137 = phi i64 [ %.pre397.i, %if.end567.loopexit.i ], [ %101, %for.cond466.preheader.i ], [ %101, %if.then454.i ], [ %101, %if.then450.i ], !dbg !2811
  %incdec.ptr568.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0358.i, i64 1, !dbg !3046
  call void @llvm.dbg.value(metadata ptr %incdec.ptr568.i, metadata !2309, metadata !DIExpression()) #14, !dbg !2806
  %inc570.i = add nuw nsw i64 %x370.0357.i, 1, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %inc570.i, metadata !2308, metadata !DIExpression()) #14, !dbg !2806
  %cmp384.i = icmp slt i64 %inc570.i, %137, !dbg !2812
  br i1 %cmp384.i, label %for.body386.i, label %for.end571.i, !dbg !2813, !llvm.loop !3048

for.end571.i:                                     ; preds = %if.end567.i, %if.end380.i
  %call572.i = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call362.i, ptr noundef nonnull %exception32) #19, !dbg !3050
  %cmp573.i = icmp ne i32 %call572.i, 0, !dbg !3052
  %spec.select1.i = zext i1 %cmp573.i to i32, !dbg !3053
  call void @llvm.dbg.value(metadata i32 %spec.select1.i, metadata !2285, metadata !DIExpression()) #14, !dbg !2326
  %138 = load ptr, ptr %progress_monitor577.i, align 8, !dbg !3054, !tbaa !1123
  %cmp578.not.i = icmp eq ptr %138, null, !dbg !3055
  br i1 %cmp578.not.i, label %cleanup591.i, label %SetImageProgress.exit229.i, !dbg !3056

SetImageProgress.exit229.i:                       ; preds = %for.end571.i
  %inc582.i = add nsw i64 %progress.4362.i, 1, !dbg !3057
  call void @llvm.dbg.value(metadata i64 %inc582.i, metadata !2283, metadata !DIExpression()) #14, !dbg !2326
  %139 = load i64, ptr %rows.i, align 8, !dbg !3058, !tbaa !991
  %mul584.i = shl i64 %139, 1, !dbg !3059
  call void @llvm.dbg.value(metadata ptr %image, metadata !1107, metadata !DIExpression()) #14, !dbg !3060
  call void @llvm.dbg.value(metadata ptr @.str.5, metadata !1113, metadata !DIExpression()) #14, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %progress.4362.i, metadata !1114, metadata !DIExpression()) #14, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %mul584.i, metadata !1115, metadata !DIExpression()) #14, !dbg !3060
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i220.i) #14, !dbg !3062
  call void @llvm.dbg.declare(metadata ptr %message.i220.i, metadata !1116, metadata !DIExpression()) #14, !dbg !3063
  %call.i224.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i220.i, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull %filename.i223.i) #14, !dbg !3064
  %140 = load ptr, ptr %progress_monitor577.i, align 8, !dbg !3065, !tbaa !1123
  %141 = load ptr, ptr %client_data.i225.i, align 8, !dbg !3066, !tbaa !1132
  %call4.i226.i = call i32 %140(ptr noundef nonnull %message.i220.i, i64 noundef %progress.4362.i, i64 noundef %mul584.i, ptr noundef %141) #14, !dbg !3067
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i220.i) #14, !dbg !3068
  call void @llvm.dbg.value(metadata i32 %call4.i226.i, metadata !2323, metadata !DIExpression()) #14, !dbg !3069
  %cmp586.i = icmp eq i32 %call4.i226.i, 0, !dbg !3070
  %spec.select2.i = select i1 %cmp586.i, i32 0, i32 %spec.select1.i, !dbg !3072
  call void @llvm.dbg.value(metadata i32 %spec.select2.i, metadata !2285, metadata !DIExpression()) #14, !dbg !2326
  br label %cleanup591.i, !dbg !3073

cleanup591.i:                                     ; preds = %SetImageProgress.exit229.i, %for.end571.i, %if.end374.i, %for.body367.i
  %progress.6.i = phi i64 [ %progress.4362.i, %for.body367.i ], [ %progress.4362.i, %if.end374.i ], [ %inc582.i, %SetImageProgress.exit229.i ], [ %progress.4362.i, %for.end571.i ], !dbg !2326
  %status.9.i = phi i32 [ 0, %for.body367.i ], [ 0, %if.end374.i ], [ %spec.select2.i, %SetImageProgress.exit229.i ], [ %spec.select1.i, %for.end571.i ], !dbg !2326
  call void @llvm.dbg.value(metadata i32 %status.9.i, metadata !2285, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %progress.6.i, metadata !2283, metadata !DIExpression()) #14, !dbg !2326
  %inc599.i = add nuw nsw i64 %y.1364.i, 1, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %inc599.i, metadata !2291, metadata !DIExpression()) #14, !dbg !2326
  %142 = load i64, ptr %rows.i, align 8, !dbg !2798, !tbaa !991
  %cmp365.i = icmp slt i64 %inc599.i, %142, !dbg !2799
  br i1 %cmp365.i, label %for.body367.i, label %for.end600.i, !dbg !2800, !llvm.loop !3075

for.end600.i:                                     ; preds = %cleanup591.i, %for.end360.i
  %call601.i = call ptr @DestroyCacheView(ptr noundef %call362.i) #14, !dbg !3077
  call void @llvm.dbg.value(metadata ptr %call601.i, metadata !2270, metadata !DIExpression()) #14, !dbg !2326
  %call602.i = call i32 @SyncImage(ptr noundef nonnull %image) #14, !dbg !3078
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i32 %call602.i), metadata !2285, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value)) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %head.5.lcssa.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  br i1 %cmp328.not342.i, label %for.end610.i, label %for.body606.i, !dbg !3079

for.body606.i:                                    ; preds = %for.end600.i, %for.body606.i
  %cluster.10366.i = phi ptr [ %143, %for.body606.i ], [ %head.5.lcssa.i, %for.end600.i ]
  call void @llvm.dbg.value(metadata ptr %cluster.10366.i, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  %143 = load ptr, ptr %cluster.10366.i, align 8, !dbg !3081, !tbaa !938
  call void @llvm.dbg.value(metadata ptr %143, metadata !2278, metadata !DIExpression()) #14, !dbg !2326
  %call608.i = call ptr @RelinquishMagickMemory(ptr noundef nonnull %cluster.10366.i) #14, !dbg !3084
  call void @llvm.dbg.value(metadata ptr %143, metadata !2275, metadata !DIExpression()) #14, !dbg !2326
  %cmp604.not.i = icmp eq ptr %143, null, !dbg !3085
  br i1 %cmp604.not.i, label %for.end610.i, label %for.body606.i, !dbg !3079, !llvm.loop !3086

for.end610.i:                                     ; preds = %for.body606.i, %for.end600.i
  call void @llvm.dbg.value(metadata ptr %call290.i, metadata !2288, metadata !DIExpression()) #14, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %call290.i, metadata !2284, metadata !DIExpression()) #14, !dbg !2326
  %call612.i = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call290.i) #14, !dbg !3088
  call void @llvm.dbg.value(metadata ptr %call612.i, metadata !2284, metadata !DIExpression()) #14, !dbg !2326
  br label %Classify.exit, !dbg !3089

Classify.exit:                                    ; preds = %if.then20.i, %if.then22.i, %if.then38.i, %if.then40.i, %if.then280.i, %if.then283.i, %if.then293.i, %if.then296.i, %if.then317.i, %if.then320.i, %for.end610.i
  %retval.0.i = phi i32 [ 1, %for.end610.i ], [ 0, %if.then22.i ], [ 0, %if.then20.i ], [ 0, %if.then40.i ], [ 0, %if.then38.i ], [ 0, %if.then283.i ], [ 0, %if.then280.i ], [ 0, %if.then296.i ], [ 0, %if.then293.i ], [ 0, %if.then320.i ], [ 0, %if.then317.i ], !dbg !2326
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %red.i) #14, !dbg !3090
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %green.i) #14, !dbg !3090
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %blue.i) #14, !dbg !3090
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !2190, metadata !DIExpression()), !dbg !2194
  %call55 = call i32 @TransformImageColorspace(ptr noundef %image, i32 noundef %3) #14, !dbg !3091
  call void @llvm.dbg.value(metadata i64 0, metadata !2191, metadata !DIExpression()), !dbg !2194
  br label %for.body59, !dbg !3092

for.body59:                                       ; preds = %Classify.exit, %for.body59
  %i.2133 = phi i64 [ 0, %Classify.exit ], [ %inc67, %for.body59 ]
  call void @llvm.dbg.value(metadata i64 %i.2133, metadata !2191, metadata !DIExpression()), !dbg !2194
  %arrayidx60 = getelementptr inbounds [3 x ptr], ptr %extrema, i64 0, i64 %i.2133, !dbg !3094
  %144 = load ptr, ptr %arrayidx60, align 8, !dbg !3094, !tbaa !781
  %call61 = call ptr @RelinquishMagickMemory(ptr noundef %144) #14, !dbg !3097
  store ptr %call61, ptr %arrayidx60, align 8, !dbg !3098, !tbaa !781
  %arrayidx63 = getelementptr inbounds [3 x ptr], ptr %histogram, i64 0, i64 %i.2133, !dbg !3099
  %145 = load ptr, ptr %arrayidx63, align 8, !dbg !3099, !tbaa !781
  %call64 = call ptr @RelinquishMagickMemory(ptr noundef %145) #14, !dbg !3100
  store ptr %call64, ptr %arrayidx63, align 8, !dbg !3101, !tbaa !781
  %inc67 = add nuw nsw i64 %i.2133, 1, !dbg !3102
  call void @llvm.dbg.value(metadata i64 %inc67, metadata !2191, metadata !DIExpression()), !dbg !2194
  %exitcond157.not = icmp eq i64 %inc67, 3, !dbg !3103
  br i1 %exitcond157.not, label %cleanup, label %for.body59, !dbg !3092, !llvm.loop !3104

cleanup:                                          ; preds = %for.body59, %for.end, %if.then21
  %retval.0 = phi i32 [ 0, %if.then21 ], [ 0, %for.end ], [ %retval.0.i, %for.body59 ], !dbg !2194
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %histogram) #14, !dbg !3106
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %extrema) #14, !dbg !3106
  ret i32 %retval.0, !dbg !3106
}

declare !dbg !3107 i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !3110 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !3116 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !3119 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #7

declare !dbg !3122 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !3126 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !3127 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !3130 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind uwtable
define internal fastcc void @ActiveNodes(ptr noundef %list, ptr noundef %number_nodes, ptr noundef %node) unnamed_addr #9 !dbg !3134 {
entry:
  call void @llvm.dbg.value(metadata ptr %list, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata ptr %number_nodes, metadata !3139, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata ptr %node, metadata !3140, metadata !DIExpression()), !dbg !3141
  %cmp17 = icmp eq ptr %node, null, !dbg !3142
  br i1 %cmp17, label %if.end4, label %if.end, !dbg !3144

if.end:                                           ; preds = %entry, %tailrecurse.backedge
  %node.tr18 = phi ptr [ %node.tr.be, %tailrecurse.backedge ], [ %node, %entry ]
  call void @llvm.dbg.value(metadata ptr %node.tr18, metadata !3140, metadata !DIExpression()), !dbg !3141
  %stability = getelementptr inbounds %struct._IntervalTree, ptr %node.tr18, i64 0, i32 4, !dbg !3145
  %0 = load float, ptr %stability, align 4, !dbg !3145, !tbaa !3147
  %mean_stability = getelementptr inbounds %struct._IntervalTree, ptr %node.tr18, i64 0, i32 3, !dbg !3148
  %1 = load float, ptr %mean_stability, align 8, !dbg !3148, !tbaa !3149
  %cmp1 = fcmp ult float %0, %1, !dbg !3150
  br i1 %cmp1, label %if.else, label %if.then2, !dbg !3151

if.then2:                                         ; preds = %if.end
  %2 = load i64, ptr %number_nodes, align 8, !dbg !3152, !tbaa !955
  %inc = add nsw i64 %2, 1, !dbg !3152
  store i64 %inc, ptr %number_nodes, align 8, !dbg !3152, !tbaa !955
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %2, !dbg !3154
  store ptr %node.tr18, ptr %arrayidx, align 8, !dbg !3155, !tbaa !781
  %sibling = getelementptr inbounds %struct._IntervalTree, ptr %node.tr18, i64 0, i32 5, !dbg !3156
  br label %tailrecurse.backedge, !dbg !3157

tailrecurse.backedge:                             ; preds = %if.then2, %if.else
  %node.tr.be.in = phi ptr [ %sibling, %if.then2 ], [ %child, %if.else ]
  %node.tr.be = load ptr, ptr %node.tr.be.in, align 8, !dbg !3158, !tbaa !781
  call void @llvm.dbg.value(metadata ptr %list, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata ptr %number_nodes, metadata !3139, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata ptr %node.tr.be, metadata !3140, metadata !DIExpression()), !dbg !3141
  %cmp = icmp eq ptr %node.tr.be, null, !dbg !3142
  br i1 %cmp, label %if.end4, label %if.end, !dbg !3144

if.else:                                          ; preds = %if.end
  %sibling3 = getelementptr inbounds %struct._IntervalTree, ptr %node.tr18, i64 0, i32 5, !dbg !3159
  %3 = load ptr, ptr %sibling3, align 8, !dbg !3159, !tbaa !2063
  tail call fastcc void @ActiveNodes(ptr noundef %list, ptr noundef %number_nodes, ptr noundef %3), !dbg !3161
  %child = getelementptr inbounds %struct._IntervalTree, ptr %node.tr18, i64 0, i32 6, !dbg !3162
  br label %tailrecurse.backedge, !dbg !3163

if.end4:                                          ; preds = %tailrecurse.backedge, %entry
  ret void, !dbg !3164
}

; Function Attrs: nounwind uwtable
define internal fastcc void @FreeNodes(ptr noundef %node) unnamed_addr #0 !dbg !3165 {
entry:
  call void @llvm.dbg.value(metadata ptr %node, metadata !3169, metadata !DIExpression()), !dbg !3170
  %cmp = icmp eq ptr %node, null, !dbg !3171
  br i1 %cmp, label %common.ret, label %if.end, !dbg !3173

common.ret:                                       ; preds = %entry, %if.end
  ret void, !dbg !3174

if.end:                                           ; preds = %entry
  %sibling = getelementptr inbounds %struct._IntervalTree, ptr %node, i64 0, i32 5, !dbg !3175
  %0 = load ptr, ptr %sibling, align 8, !dbg !3175, !tbaa !2063
  tail call fastcc void @FreeNodes(ptr noundef %0), !dbg !3176
  %child = getelementptr inbounds %struct._IntervalTree, ptr %node, i64 0, i32 6, !dbg !3177
  %1 = load ptr, ptr %child, align 8, !dbg !3177, !tbaa !2082
  tail call fastcc void @FreeNodes(ptr noundef %1), !dbg !3178
  %call = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %node) #14, !dbg !3179
  call void @llvm.dbg.value(metadata ptr %call, metadata !3169, metadata !DIExpression()), !dbg !3170
  br label %common.ret
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @exp(double noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: argmemonly nofree nosync nounwind uwtable
define internal fastcc void @InitializeList(ptr noundef %list, ptr noundef %number_nodes, ptr noundef %node) unnamed_addr #9 !dbg !3180 {
entry:
  call void @llvm.dbg.value(metadata ptr %list, metadata !3182, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata ptr %number_nodes, metadata !3183, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata ptr %node, metadata !3184, metadata !DIExpression()), !dbg !3185
  %cmp13 = icmp eq ptr %node, null, !dbg !3186
  br i1 %cmp13, label %return, label %if.end, !dbg !3188

if.end:                                           ; preds = %entry, %if.end3
  %node.tr14 = phi ptr [ %3, %if.end3 ], [ %node, %entry ]
  call void @llvm.dbg.value(metadata ptr %node.tr14, metadata !3184, metadata !DIExpression()), !dbg !3185
  %child = getelementptr inbounds %struct._IntervalTree, ptr %node.tr14, i64 0, i32 6, !dbg !3189
  %0 = load ptr, ptr %child, align 8, !dbg !3189, !tbaa !2082
  %cmp1 = icmp eq ptr %0, null, !dbg !3191
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3192

if.then2:                                         ; preds = %if.end
  %1 = load i64, ptr %number_nodes, align 8, !dbg !3193, !tbaa !955
  %inc = add nsw i64 %1, 1, !dbg !3193
  store i64 %inc, ptr %number_nodes, align 8, !dbg !3193, !tbaa !955
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %1, !dbg !3194
  store ptr %node.tr14, ptr %arrayidx, align 8, !dbg !3195, !tbaa !781
  br label %if.end3, !dbg !3194

if.end3:                                          ; preds = %if.then2, %if.end
  %sibling = getelementptr inbounds %struct._IntervalTree, ptr %node.tr14, i64 0, i32 5, !dbg !3196
  %2 = load ptr, ptr %sibling, align 8, !dbg !3196, !tbaa !2063
  tail call fastcc void @InitializeList(ptr noundef %list, ptr noundef %number_nodes, ptr noundef %2), !dbg !3197
  %3 = load ptr, ptr %child, align 8, !dbg !3198, !tbaa !2082
  call void @llvm.dbg.value(metadata ptr %list, metadata !3182, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata ptr %number_nodes, metadata !3183, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata ptr %3, metadata !3184, metadata !DIExpression()), !dbg !3185
  %cmp = icmp eq ptr %3, null, !dbg !3186
  br i1 %cmp, label %return, label %if.end, !dbg !3188

return:                                           ; preds = %if.end3, %entry
  ret void, !dbg !3199
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @Stability(ptr noundef %node) unnamed_addr #11 !dbg !3200 {
entry:
  call void @llvm.dbg.value(metadata ptr %node, metadata !3202, metadata !DIExpression()), !dbg !3203
  %cmp15 = icmp eq ptr %node, null, !dbg !3204
  br i1 %cmp15, label %return, label %if.end, !dbg !3206

if.end:                                           ; preds = %entry, %if.end6
  %node.tr16 = phi ptr [ %5, %if.end6 ], [ %node, %entry ]
  call void @llvm.dbg.value(metadata ptr %node.tr16, metadata !3202, metadata !DIExpression()), !dbg !3203
  %child = getelementptr inbounds %struct._IntervalTree, ptr %node.tr16, i64 0, i32 6, !dbg !3207
  %0 = load ptr, ptr %child, align 8, !dbg !3207, !tbaa !2082
  %cmp1 = icmp eq ptr %0, null, !dbg !3209
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !3210

if.else:                                          ; preds = %if.end
  %1 = load float, ptr %node.tr16, align 8, !dbg !3211, !tbaa !2004
  %2 = load float, ptr %0, align 8, !dbg !3212, !tbaa !2004
  %sub = fsub float %1, %2, !dbg !3213
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.else
  %sub.sink = phi float [ %sub, %if.else ], [ 0.000000e+00, %if.end ], !dbg !3214
  %3 = getelementptr inbounds %struct._IntervalTree, ptr %node.tr16, i64 0, i32 4, !dbg !3215
  store float %sub.sink, ptr %3, align 4, !dbg !3216
  %sibling = getelementptr inbounds %struct._IntervalTree, ptr %node.tr16, i64 0, i32 5, !dbg !3217
  %4 = load ptr, ptr %sibling, align 8, !dbg !3217, !tbaa !2063
  tail call fastcc void @Stability(ptr noundef %4), !dbg !3218
  %5 = load ptr, ptr %child, align 8, !dbg !3219, !tbaa !2082
  call void @llvm.dbg.value(metadata ptr %5, metadata !3202, metadata !DIExpression()), !dbg !3203
  %cmp = icmp eq ptr %5, null, !dbg !3204
  br i1 %cmp, label %return, label %if.end, !dbg !3206

return:                                           ; preds = %if.end6, %entry
  ret void, !dbg !3220
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @MeanStability(ptr noundef %node) unnamed_addr #11 !dbg !3221 {
entry:
  call void @llvm.dbg.value(metadata ptr %node, metadata !3223, metadata !DIExpression()), !dbg !3229
  %cmp24 = icmp eq ptr %node, null, !dbg !3230
  br i1 %cmp24, label %cleanup, label %if.end, !dbg !3232

if.end:                                           ; preds = %entry, %if.end6
  %node.tr25 = phi ptr [ %4, %if.end6 ], [ %node, %entry ]
  call void @llvm.dbg.value(metadata ptr %node.tr25, metadata !3223, metadata !DIExpression()), !dbg !3229
  %mean_stability = getelementptr inbounds %struct._IntervalTree, ptr %node.tr25, i64 0, i32 3, !dbg !3233
  store float 0.000000e+00, ptr %mean_stability, align 8, !dbg !3234, !tbaa !3149
  %child1 = getelementptr inbounds %struct._IntervalTree, ptr %node.tr25, i64 0, i32 6, !dbg !3235
  %0 = load ptr, ptr %child1, align 8, !dbg !3235, !tbaa !2082
  call void @llvm.dbg.value(metadata ptr %0, metadata !3224, metadata !DIExpression()), !dbg !3229
  %cmp2.not = icmp eq ptr %0, null, !dbg !3236
  br i1 %cmp2.not, label %if.end6, label %for.body, !dbg !3237

for.body:                                         ; preds = %if.end, %for.body
  %sum.022 = phi float [ %add, %for.body ], [ 0.000000e+00, %if.end ]
  %count.021 = phi i64 [ %inc, %for.body ], [ 0, %if.end ]
  %child.020 = phi ptr [ %2, %for.body ], [ %0, %if.end ]
  call void @llvm.dbg.value(metadata float %sum.022, metadata !3228, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %count.021, metadata !3225, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata ptr %child.020, metadata !3224, metadata !DIExpression()), !dbg !3229
  %stability = getelementptr inbounds %struct._IntervalTree, ptr %child.020, i64 0, i32 4, !dbg !3239
  %1 = load float, ptr %stability, align 4, !dbg !3239, !tbaa !3147
  %add = fadd float %sum.022, %1, !dbg !3243
  call void @llvm.dbg.value(metadata float %add, metadata !3228, metadata !DIExpression()), !dbg !3238
  %inc = add nuw nsw i64 %count.021, 1, !dbg !3244
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3225, metadata !DIExpression()), !dbg !3238
  %sibling = getelementptr inbounds %struct._IntervalTree, ptr %child.020, i64 0, i32 5, !dbg !3245
  %2 = load ptr, ptr %sibling, align 8, !dbg !3245, !tbaa !2063
  call void @llvm.dbg.value(metadata ptr %2, metadata !3224, metadata !DIExpression()), !dbg !3229
  %cmp4.not = icmp eq ptr %2, null, !dbg !3246
  br i1 %cmp4.not, label %for.cond.for.end_crit_edge, label %for.body, !dbg !3247, !llvm.loop !3248

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %conv = sitofp i64 %inc to float, !dbg !3250
  %div = fdiv float %add, %conv, !dbg !3251
  store float %div, ptr %mean_stability, align 8, !dbg !3252, !tbaa !3149
  br label %if.end6, !dbg !3253

if.end6:                                          ; preds = %for.cond.for.end_crit_edge, %if.end
  %sibling7 = getelementptr inbounds %struct._IntervalTree, ptr %node.tr25, i64 0, i32 5, !dbg !3254
  %3 = load ptr, ptr %sibling7, align 8, !dbg !3254, !tbaa !2063
  tail call fastcc void @MeanStability(ptr noundef %3), !dbg !3255
  %4 = load ptr, ptr %child1, align 8, !dbg !3256, !tbaa !2082
  call void @llvm.dbg.value(metadata ptr %4, metadata !3223, metadata !DIExpression()), !dbg !3229
  %cmp = icmp eq ptr %4, null, !dbg !3230
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3232

cleanup:                                          ; preds = %if.end6, %entry
  ret void, !dbg !3257
}

declare !dbg !3258 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !3261 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

declare !dbg !3266 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

declare !dbg !3269 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !3325 i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !3329 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare !dbg !3330 ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

declare !dbg !3333 ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @pow(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: hot
declare !dbg !3336 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #12

declare !dbg !3339 i32 @SyncImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone willreturn }
attributes #18 = { noreturn nounwind }
attributes #19 = { hot nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!682, !683, !684, !685, !686, !687}
!llvm.ident = !{!688}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !393, globals: !670, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/segment.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "0e7ef0a744cc8f63f8f9fd6fefb412f3")
!2 = !{!3, !9, !14, !51, !76, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 211, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "MagickFalse", value: 0)
!8 = !DIEnumerator(name: "MagickTrue", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 204, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12, !13}
!11 = !DIEnumerator(name: "UndefinedClass", value: 0)
!12 = !DIEnumerator(name: "DirectClass", value: 1)
!13 = !DIEnumerator(name: "PseudoClass", value: 2)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 25, baseType: !5, size: 32, elements: !16)
!15 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!17 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!18 = !DIEnumerator(name: "RGBColorspace", value: 1)
!19 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!20 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!21 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!22 = !DIEnumerator(name: "LabColorspace", value: 5)
!23 = !DIEnumerator(name: "XYZColorspace", value: 6)
!24 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!25 = !DIEnumerator(name: "YCCColorspace", value: 8)
!26 = !DIEnumerator(name: "YIQColorspace", value: 9)
!27 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!28 = !DIEnumerator(name: "YUVColorspace", value: 11)
!29 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!30 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!31 = !DIEnumerator(name: "HSBColorspace", value: 14)
!32 = !DIEnumerator(name: "HSLColorspace", value: 15)
!33 = !DIEnumerator(name: "HWBColorspace", value: 16)
!34 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!35 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!36 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!37 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!38 = !DIEnumerator(name: "LogColorspace", value: 21)
!39 = !DIEnumerator(name: "CMYColorspace", value: 22)
!40 = !DIEnumerator(name: "LuvColorspace", value: 23)
!41 = !DIEnumerator(name: "HCLColorspace", value: 24)
!42 = !DIEnumerator(name: "LCHColorspace", value: 25)
!43 = !DIEnumerator(name: "LMSColorspace", value: 26)
!44 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!45 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!46 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!47 = !DIEnumerator(name: "HSIColorspace", value: 30)
!48 = !DIEnumerator(name: "HSVColorspace", value: 31)
!49 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!50 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 25, baseType: !5, size: 32, elements: !53)
!52 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!54 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!55 = !DIEnumerator(name: "NoCompression", value: 1)
!56 = !DIEnumerator(name: "BZipCompression", value: 2)
!57 = !DIEnumerator(name: "DXT1Compression", value: 3)
!58 = !DIEnumerator(name: "DXT3Compression", value: 4)
!59 = !DIEnumerator(name: "DXT5Compression", value: 5)
!60 = !DIEnumerator(name: "FaxCompression", value: 6)
!61 = !DIEnumerator(name: "Group4Compression", value: 7)
!62 = !DIEnumerator(name: "JPEGCompression", value: 8)
!63 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!64 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!65 = !DIEnumerator(name: "LZWCompression", value: 11)
!66 = !DIEnumerator(name: "RLECompression", value: 12)
!67 = !DIEnumerator(name: "ZipCompression", value: 13)
!68 = !DIEnumerator(name: "ZipSCompression", value: 14)
!69 = !DIEnumerator(name: "PizCompression", value: 15)
!70 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!71 = !DIEnumerator(name: "B44Compression", value: 17)
!72 = !DIEnumerator(name: "B44ACompression", value: 18)
!73 = !DIEnumerator(name: "LZMACompression", value: 19)
!74 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!75 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 75, baseType: !5, size: 32, elements: !78)
!77 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87}
!79 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!80 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!81 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!82 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!83 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!84 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!85 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!86 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!87 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 42, baseType: !5, size: 32, elements: !90)
!89 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!90 = !{!91, !92, !93, !94, !95}
!91 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!92 = !DIEnumerator(name: "SaturationIntent", value: 1)
!93 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!94 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!95 = !DIEnumerator(name: "RelativeIntent", value: 4)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 88, baseType: !5, size: 32, elements: !97)
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
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 63, baseType: !5, size: 32, elements: !137)
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
!342 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 47, baseType: !5, size: 32, elements: !343)
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
!393 = !{!394, !395, !401, !403, !404, !396, !425, !416, !436, !438, !439, !552, !431, !642, !450, !655, !666, !589, !643, !402, !667, !467, !462, !668, !669}
!394 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !397, line: 77, baseType: !398)
!397 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !399, line: 193, baseType: !400)
!399 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!400 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cluster", file: !406, line: 147, baseType: !407)
!406 = !DIFile(filename: "apps/538.imagick_r/src/magick/segment.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0e7ef0a744cc8f63f8f9fd6fefb412f3")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Cluster", file: !406, line: 134, size: 960, elements: !408)
!408 = !{!409, !411, !421, !422, !423, !424}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !407, file: !406, line: 137, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !407, file: !406, line: 140, baseType: !412, size: 256, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExtentPacket", file: !406, line: 132, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExtentPacket", file: !406, line: 123, size: 256, elements: !414)
!414 = !{!415, !418, !419, !420}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !413, file: !406, line: 126, baseType: !416, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !4, line: 78, baseType: !417)
!417 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !413, file: !406, line: 129, baseType: !396, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !413, file: !406, line: 130, baseType: !396, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !413, file: !406, line: 131, baseType: !396, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !407, file: !406, line: 141, baseType: !412, size: 256, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !407, file: !406, line: 142, baseType: !412, size: 256, offset: 576)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !407, file: !406, line: 145, baseType: !396, size: 64, offset: 832)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !407, file: !406, line: 146, baseType: !396, size: 64, offset: 896)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !429)
!429 = !{!430, !433, !434, !435}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !428, file: !326, line: 143, baseType: !431, size: 16)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !432)
!432 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !428, file: !326, line: 144, baseType: !431, size: 16, offset: 16)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !428, file: !326, line: 145, baseType: !431, size: 16, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !428, file: !326, line: 146, baseType: !431, size: 16, offset: 48)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !437)
!437 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!438 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !77, line: 150, size: 105920, elements: !442)
!442 = !{!443, !445, !447, !449, !452, !454, !456, !457, !458, !459, !460, !461, !463, !464, !465, !466, !468, !482, !484, !485, !487, !490, !491, !492, !493, !494, !495, !503, !504, !505, !506, !507, !508, !510, !512, !514, !516, !518, !520, !522, !523, !524, !525, !526, !527, !528, !536, !551, !563, !564, !565, !566, !570, !574, !578, !579, !580, !581, !582, !600, !601, !603, !604, !613, !614, !616, !617, !618, !619, !620, !621, !623, !624, !625, !626, !627, !628, !629, !631, !632, !633, !634, !635, !639, !641}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !441, file: !77, line: 153, baseType: !444, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !9)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !441, file: !77, line: 156, baseType: !446, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !15, line: 61, baseType: !14)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !441, file: !77, line: 159, baseType: !448, size: 32, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !52, line: 49, baseType: !51)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !441, file: !77, line: 162, baseType: !450, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !451, line: 46, baseType: !394)
!451 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!452 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !441, file: !77, line: 165, baseType: !453, size: 32, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !77, line: 86, baseType: !76)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !441, file: !77, line: 168, baseType: !455, size: 32, offset: 224)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !3)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !441, file: !77, line: 169, baseType: !455, size: 32, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !441, file: !77, line: 172, baseType: !450, size: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !441, file: !77, line: 173, baseType: !450, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !441, file: !77, line: 174, baseType: !450, size: 64, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !441, file: !77, line: 175, baseType: !450, size: 64, offset: 512)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !441, file: !77, line: 178, baseType: !462, size: 64, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !441, file: !77, line: 179, baseType: !427, size: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !441, file: !77, line: 180, baseType: !427, size: 64, offset: 704)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !441, file: !77, line: 181, baseType: !427, size: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !441, file: !77, line: 184, baseType: !467, size: 64, offset: 832)
!467 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !441, file: !77, line: 187, baseType: !469, size: 768, offset: 896)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !77, line: 128, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !77, line: 121, size: 768, elements: !471)
!471 = !{!472, !479, !480, !481}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !470, file: !77, line: 124, baseType: !473, size: 192)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !77, line: 101, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !77, line: 95, size: 192, elements: !475)
!475 = !{!476, !477, !478}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !474, file: !77, line: 98, baseType: !467, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !474, file: !77, line: 99, baseType: !467, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !474, file: !77, line: 100, baseType: !467, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !470, file: !77, line: 125, baseType: !473, size: 192, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !470, file: !77, line: 126, baseType: !473, size: 192, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !470, file: !77, line: 127, baseType: !473, size: 192, offset: 576)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !441, file: !77, line: 190, baseType: !483, size: 32, offset: 1664)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !441, file: !77, line: 193, baseType: !403, size: 64, offset: 1728)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !441, file: !77, line: 196, baseType: !486, size: 32, offset: 1792)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !77, line: 93, baseType: !96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !441, file: !77, line: 199, baseType: !488, size: 64, offset: 1856)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !441, file: !77, line: 200, baseType: !488, size: 64, offset: 1920)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !441, file: !77, line: 201, baseType: !488, size: 64, offset: 1984)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !441, file: !77, line: 204, baseType: !396, size: 64, offset: 2048)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !441, file: !77, line: 207, baseType: !467, size: 64, offset: 2112)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !441, file: !77, line: 208, baseType: !467, size: 64, offset: 2176)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !441, file: !77, line: 211, baseType: !496, size: 256, offset: 2240)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !498)
!498 = !{!499, !500, !501, !502}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !497, file: !153, line: 124, baseType: !450, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !497, file: !153, line: 125, baseType: !450, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !497, file: !153, line: 128, baseType: !396, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !497, file: !153, line: 129, baseType: !396, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !441, file: !77, line: 212, baseType: !496, size: 256, offset: 2496)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !441, file: !77, line: 213, baseType: !496, size: 256, offset: 2752)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !441, file: !77, line: 216, baseType: !467, size: 64, offset: 3008)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !441, file: !77, line: 217, baseType: !467, size: 64, offset: 3072)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !441, file: !77, line: 218, baseType: !467, size: 64, offset: 3136)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !441, file: !77, line: 221, baseType: !509, size: 32, offset: 3200)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !441, file: !77, line: 224, baseType: !511, size: 32, offset: 3232)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !77, line: 73, baseType: !136)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !441, file: !77, line: 227, baseType: !513, size: 32, offset: 3264)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !441, file: !77, line: 230, baseType: !515, size: 32, offset: 3296)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !441, file: !77, line: 233, baseType: !517, size: 32, offset: 3328)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !441, file: !77, line: 236, baseType: !519, size: 32, offset: 3360)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !441, file: !77, line: 239, baseType: !521, size: 64, offset: 3392)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !441, file: !77, line: 242, baseType: !450, size: 64, offset: 3456)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !441, file: !77, line: 243, baseType: !450, size: 64, offset: 3520)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !441, file: !77, line: 246, baseType: !396, size: 64, offset: 3584)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !441, file: !77, line: 249, baseType: !450, size: 64, offset: 3648)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !441, file: !77, line: 250, baseType: !450, size: 64, offset: 3712)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !441, file: !77, line: 253, baseType: !396, size: 64, offset: 3776)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !441, file: !77, line: 256, baseType: !529, size: 192, offset: 3840)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !530, line: 68, baseType: !531)
!530 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !530, line: 62, size: 192, elements: !532)
!532 = !{!533, !534, !535}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !531, file: !530, line: 65, baseType: !467, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !531, file: !530, line: 66, baseType: !467, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !531, file: !530, line: 67, baseType: !467, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !441, file: !77, line: 259, baseType: !537, size: 512, offset: 4032)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !538)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !539)
!539 = !{!540, !547, !548, !550}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !538, file: !247, line: 43, baseType: !541, size: 192)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !543)
!543 = !{!544, !545, !546}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !542, file: !247, line: 35, baseType: !467, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !542, file: !247, line: 36, baseType: !467, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !542, file: !247, line: 37, baseType: !467, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !538, file: !247, line: 44, baseType: !541, size: 192, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !538, file: !247, line: 47, baseType: !549, size: 32, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !538, file: !247, line: 50, baseType: !450, size: 64, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !441, file: !77, line: 262, baseType: !552, size: 64, offset: 4544)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !553, line: 26, baseType: !554)
!553 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!455, !557, !559, !560, !403}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !562)
!562 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !441, file: !77, line: 265, baseType: !403, size: 64, offset: 4608)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !441, file: !77, line: 266, baseType: !403, size: 64, offset: 4672)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !441, file: !77, line: 267, baseType: !403, size: 64, offset: 4736)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !441, file: !77, line: 270, baseType: !567, size: 64, offset: 4800)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !52, line: 52, baseType: !569)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !52, line: 51, flags: DIFlagFwdDecl)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !441, file: !77, line: 273, baseType: !571, size: 64, offset: 4864)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !573)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !441, file: !77, line: 276, baseType: !575, size: 32768, offset: 4928)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 32768, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 4096)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !441, file: !77, line: 277, baseType: !575, size: 32768, offset: 37696)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !441, file: !77, line: 278, baseType: !575, size: 32768, offset: 70464)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !441, file: !77, line: 281, baseType: !450, size: 64, offset: 103232)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !441, file: !77, line: 282, baseType: !450, size: 64, offset: 103296)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !441, file: !77, line: 285, baseType: !583, size: 448, offset: 103360)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !585)
!585 = !{!586, !588, !590, !591, !592, !593, !594, !599}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !584, file: !253, line: 105, baseType: !587, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !584, file: !253, line: 108, baseType: !589, size: 32, offset: 32)
!589 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !584, file: !253, line: 111, baseType: !488, size: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !584, file: !253, line: 112, baseType: !488, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !584, file: !253, line: 115, baseType: !403, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !584, file: !253, line: 118, baseType: !455, size: 32, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !584, file: !253, line: 121, baseType: !595, size: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !597, line: 26, baseType: !598)
!597 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !597, line: 25, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !584, file: !253, line: 124, baseType: !450, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !441, file: !77, line: 288, baseType: !455, size: 32, offset: 103808)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !441, file: !77, line: 291, baseType: !602, size: 64, offset: 103872)
!602 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !396)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !441, file: !77, line: 294, baseType: !595, size: 64, offset: 103936)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !441, file: !77, line: 297, baseType: !605, size: 256, offset: 104000)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !607)
!607 = !{!608, !609, !610, !612}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !606, file: !89, line: 30, baseType: !488, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !606, file: !89, line: 33, baseType: !450, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !606, file: !89, line: 36, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !606, file: !89, line: 39, baseType: !450, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !441, file: !77, line: 298, baseType: !605, size: 256, offset: 104256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !441, file: !77, line: 299, baseType: !615, size: 64, offset: 104512)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !441, file: !77, line: 302, baseType: !450, size: 64, offset: 104576)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !441, file: !77, line: 305, baseType: !450, size: 64, offset: 104640)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !441, file: !77, line: 308, baseType: !521, size: 64, offset: 104704)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !441, file: !77, line: 309, baseType: !521, size: 64, offset: 104768)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !441, file: !77, line: 310, baseType: !521, size: 64, offset: 104832)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !441, file: !77, line: 313, baseType: !622, size: 32, offset: 104896)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !441, file: !77, line: 316, baseType: !455, size: 32, offset: 104928)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !441, file: !77, line: 319, baseType: !427, size: 64, offset: 104960)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !441, file: !77, line: 322, baseType: !521, size: 64, offset: 105024)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !441, file: !77, line: 325, baseType: !496, size: 256, offset: 105088)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !441, file: !77, line: 328, baseType: !403, size: 64, offset: 105344)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !441, file: !77, line: 329, baseType: !403, size: 64, offset: 105408)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !441, file: !77, line: 332, baseType: !630, size: 32, offset: 105472)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !77, line: 61, baseType: !342)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !441, file: !77, line: 335, baseType: !455, size: 32, offset: 105504)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !441, file: !77, line: 338, baseType: !561, size: 64, offset: 105536)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !441, file: !77, line: 341, baseType: !455, size: 32, offset: 105600)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !441, file: !77, line: 344, baseType: !450, size: 64, offset: 105664)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !441, file: !77, line: 347, baseType: !636, size: 64, offset: 105728)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !637, line: 7, baseType: !638)
!637 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !399, line: 160, baseType: !400)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !441, file: !77, line: 350, baseType: !640, size: 32, offset: 105792)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !441, file: !77, line: 353, baseType: !450, size: 64, offset: 105856)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "IntervalTree", file: !406, line: 165, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IntervalTree", file: !406, line: 149, size: 384, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !654}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "tau", scope: !645, file: !406, line: 152, baseType: !416, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !645, file: !406, line: 155, baseType: !396, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !645, file: !406, line: 156, baseType: !396, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mean_stability", scope: !645, file: !406, line: 159, baseType: !416, size: 32, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "stability", scope: !645, file: !406, line: 160, baseType: !416, size: 32, offset: 224)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !645, file: !406, line: 163, baseType: !653, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !645, file: !406, line: 164, baseType: !653, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZeroCrossing", file: !406, line: 175, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ZeroCrossing", file: !406, line: 167, size: 12320, elements: !658)
!658 = !{!659, !660, !664}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "tau", scope: !657, file: !406, line: 170, baseType: !416, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "histogram", scope: !657, file: !406, line: 171, baseType: !661, size: 8192, offset: 32)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 8192, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "crossings", scope: !657, file: !406, line: 174, baseType: !665, size: 4096, offset: 8224)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 4096, elements: !662)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !326, line: 129, baseType: !431)
!670 = !{!671, !674, !676, !678, !680}
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!672 = distinct !DIGlobalVariable(name: "Red", scope: !0, file: !406, line: 183, type: !673, isLocal: true, isDefinition: true)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!675 = distinct !DIGlobalVariable(name: "Green", scope: !0, file: !406, line: 182, type: !673, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!677 = distinct !DIGlobalVariable(name: "Blue", scope: !0, file: !406, line: 181, type: !673, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!679 = distinct !DIGlobalVariable(name: "SafeMargin", scope: !0, file: !406, line: 184, type: !673, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression(DW_OP_constu, 600, DW_OP_stack_value))
!681 = distinct !DIGlobalVariable(name: "TreeLength", scope: !0, file: !406, line: 185, type: !673, isLocal: true, isDefinition: true)
!682 = !{i32 7, !"Dwarf Version", i32 5}
!683 = !{i32 2, !"Debug Info Version", i32 3}
!684 = !{i32 1, !"wchar_size", i32 4}
!685 = !{i32 7, !"PIC Level", i32 2}
!686 = !{i32 7, !"PIE Level", i32 2}
!687 = !{i32 7, !"uwtable", i32 2}
!688 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!689 = distinct !DISubprogram(name: "GetImageDynamicThreshold", scope: !406, file: !406, line: 951, type: !690, scopeLine: 954, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !710)
!690 = !DISubroutineType(types: !691)
!691 = !{!455, !692, !694, !694, !695, !709}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !326, line: 127, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !326, line: 104, size: 448, elements: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !707, !708}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !697, file: !326, line: 107, baseType: !444, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !697, file: !326, line: 110, baseType: !446, size: 32, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !697, file: !326, line: 113, baseType: !455, size: 32, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !697, file: !326, line: 116, baseType: !467, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !697, file: !326, line: 119, baseType: !450, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !697, file: !326, line: 122, baseType: !416, size: 32, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !697, file: !326, line: 123, baseType: !416, size: 32, offset: 288)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !697, file: !326, line: 124, baseType: !416, size: 32, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !697, file: !326, line: 125, baseType: !416, size: 32, offset: 352)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !697, file: !326, line: 126, baseType: !416, size: 32, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !734, !735, !737}
!711 = !DILocalVariable(name: "image", arg: 1, scope: !689, file: !406, line: 951, type: !692)
!712 = !DILocalVariable(name: "cluster_threshold", arg: 2, scope: !689, file: !406, line: 952, type: !694)
!713 = !DILocalVariable(name: "smooth_threshold", arg: 3, scope: !689, file: !406, line: 952, type: !694)
!714 = !DILocalVariable(name: "pixel", arg: 4, scope: !689, file: !406, line: 953, type: !695)
!715 = !DILocalVariable(name: "exception", arg: 5, scope: !689, file: !406, line: 953, type: !709)
!716 = !DILocalVariable(name: "background", scope: !689, file: !406, line: 956, type: !404)
!717 = !DILocalVariable(name: "cluster", scope: !689, file: !406, line: 957, type: !404)
!718 = !DILocalVariable(name: "object", scope: !689, file: !406, line: 958, type: !404)
!719 = !DILocalVariable(name: "head", scope: !689, file: !406, line: 959, type: !404)
!720 = !DILocalVariable(name: "last_cluster", scope: !689, file: !406, line: 960, type: !404)
!721 = !DILocalVariable(name: "next_cluster", scope: !689, file: !406, line: 961, type: !404)
!722 = !DILocalVariable(name: "blue", scope: !689, file: !406, line: 964, type: !412)
!723 = !DILocalVariable(name: "green", scope: !689, file: !406, line: 965, type: !412)
!724 = !DILocalVariable(name: "red", scope: !689, file: !406, line: 966, type: !412)
!725 = !DILocalVariable(name: "proceed", scope: !689, file: !406, line: 969, type: !455)
!726 = !DILocalVariable(name: "threshold", scope: !689, file: !406, line: 972, type: !416)
!727 = !DILocalVariable(name: "p", scope: !689, file: !406, line: 975, type: !425)
!728 = !DILocalVariable(name: "i", scope: !689, file: !406, line: 978, type: !396)
!729 = !DILocalVariable(name: "x", scope: !689, file: !406, line: 979, type: !396)
!730 = !DILocalVariable(name: "extrema", scope: !689, file: !406, line: 982, type: !731)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 192, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 3)
!734 = !DILocalVariable(name: "count", scope: !689, file: !406, line: 985, type: !396)
!735 = !DILocalVariable(name: "histogram", scope: !689, file: !406, line: 986, type: !736)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 192, elements: !732)
!737 = !DILocalVariable(name: "y", scope: !689, file: !406, line: 987, type: !396)
!738 = !DILocation(line: 0, scope: !689)
!739 = !DILocation(line: 963, column: 3, scope: !689)
!740 = !DILocation(line: 964, column: 5, scope: !689)
!741 = !DILocation(line: 965, column: 5, scope: !689)
!742 = !DILocation(line: 966, column: 5, scope: !689)
!743 = !DILocation(line: 981, column: 3, scope: !689)
!744 = !DILocation(line: 982, column: 6, scope: !689)
!745 = !DILocation(line: 984, column: 3, scope: !689)
!746 = !DILocation(line: 986, column: 6, scope: !689)
!747 = !DILocation(line: 994, column: 14, scope: !748)
!748 = distinct !DILexicalBlock(scope: !689, file: !406, line: 994, column: 7)
!749 = !{!750, !751, i64 12976}
!750 = !{!"_Image", !751, i64 0, !751, i64 4, !751, i64 8, !753, i64 16, !751, i64 24, !751, i64 28, !751, i64 32, !753, i64 40, !753, i64 48, !753, i64 56, !753, i64 64, !754, i64 72, !755, i64 80, !755, i64 88, !755, i64 96, !757, i64 104, !758, i64 112, !751, i64 208, !754, i64 216, !751, i64 224, !754, i64 232, !754, i64 240, !754, i64 248, !753, i64 256, !757, i64 264, !757, i64 272, !760, i64 280, !760, i64 312, !760, i64 344, !757, i64 376, !757, i64 384, !757, i64 392, !751, i64 400, !751, i64 404, !751, i64 408, !751, i64 412, !751, i64 416, !751, i64 420, !754, i64 424, !753, i64 432, !753, i64 440, !753, i64 448, !753, i64 456, !753, i64 464, !753, i64 472, !761, i64 480, !762, i64 504, !754, i64 568, !754, i64 576, !754, i64 584, !754, i64 592, !754, i64 600, !754, i64 608, !751, i64 616, !751, i64 4712, !751, i64 8808, !753, i64 12904, !753, i64 12912, !764, i64 12920, !751, i64 12976, !753, i64 12984, !754, i64 12992, !766, i64 13000, !766, i64 13032, !754, i64 13064, !753, i64 13072, !753, i64 13080, !754, i64 13088, !754, i64 13096, !754, i64 13104, !751, i64 13112, !751, i64 13116, !755, i64 13120, !754, i64 13128, !760, i64 13136, !754, i64 13168, !754, i64 13176, !751, i64 13184, !751, i64 13188, !767, i64 13192, !751, i64 13200, !753, i64 13208, !753, i64 13216, !751, i64 13224, !753, i64 13232}
!751 = !{!"omnipotent char", !752, i64 0}
!752 = !{!"Simple C/C++ TBAA"}
!753 = !{!"long", !751, i64 0}
!754 = !{!"any pointer", !751, i64 0}
!755 = !{!"_PixelPacket", !756, i64 0, !756, i64 2, !756, i64 4, !756, i64 6}
!756 = !{!"short", !751, i64 0}
!757 = !{!"double", !751, i64 0}
!758 = !{!"_ChromaticityInfo", !759, i64 0, !759, i64 24, !759, i64 48, !759, i64 72}
!759 = !{!"_PrimaryInfo", !757, i64 0, !757, i64 8, !757, i64 16}
!760 = !{!"_RectangleInfo", !753, i64 0, !753, i64 8, !753, i64 16, !753, i64 24}
!761 = !{!"_ErrorInfo", !757, i64 0, !757, i64 8, !757, i64 16}
!762 = !{!"_TimerInfo", !763, i64 0, !763, i64 24, !751, i64 48, !753, i64 56}
!763 = !{!"_Timer", !757, i64 0, !757, i64 8, !757, i64 16}
!764 = !{!"_ExceptionInfo", !751, i64 0, !765, i64 4, !754, i64 8, !754, i64 16, !754, i64 24, !751, i64 32, !754, i64 40, !753, i64 48}
!765 = !{!"int", !751, i64 0}
!766 = !{!"_ProfileInfo", !754, i64 0, !753, i64 8, !754, i64 16, !753, i64 24}
!767 = !{!"long long", !751, i64 0}
!768 = !DILocation(line: 994, column: 20, scope: !748)
!769 = !DILocation(line: 994, column: 7, scope: !689)
!770 = !DILocation(line: 995, column: 68, scope: !748)
!771 = !DILocation(line: 995, column: 12, scope: !748)
!772 = !DILocation(line: 995, column: 5, scope: !748)
!773 = !DILocation(line: 996, column: 3, scope: !689)
!774 = !DILocation(line: 997, column: 3, scope: !775)
!775 = distinct !DILexicalBlock(scope: !689, file: !406, line: 997, column: 3)
!776 = !DILocation(line: 999, column: 30, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !406, line: 998, column: 3)
!778 = distinct !DILexicalBlock(scope: !775, file: !406, line: 997, column: 3)
!779 = !DILocation(line: 999, column: 5, scope: !777)
!780 = !DILocation(line: 999, column: 17, scope: !777)
!781 = !{!754, !754, i64 0}
!782 = !DILocation(line: 1000, column: 26, scope: !777)
!783 = !DILocation(line: 1000, column: 5, scope: !777)
!784 = !DILocation(line: 1000, column: 15, scope: !777)
!785 = !DILocation(line: 1001, column: 23, scope: !786)
!786 = distinct !DILexicalBlock(scope: !777, file: !406, line: 1001, column: 9)
!787 = !DILocation(line: 1001, column: 44, scope: !786)
!788 = !DILocation(line: 1003, column: 22, scope: !789)
!789 = distinct !DILexicalBlock(scope: !790, file: !406, line: 1003, column: 9)
!790 = distinct !DILexicalBlock(scope: !791, file: !406, line: 1003, column: 9)
!791 = distinct !DILexicalBlock(scope: !786, file: !406, line: 1002, column: 7)
!792 = !DILocation(line: 1003, column: 9, scope: !790)
!793 = !DILocation(line: 0, scope: !790)
!794 = !DILocation(line: 1005, column: 55, scope: !795)
!795 = distinct !DILexicalBlock(scope: !789, file: !406, line: 1004, column: 9)
!796 = !DILocation(line: 1005, column: 32, scope: !795)
!797 = !DILocation(line: 1005, column: 21, scope: !795)
!798 = !DILocation(line: 1006, column: 59, scope: !795)
!799 = !DILocation(line: 1006, column: 36, scope: !795)
!800 = !DILocation(line: 1006, column: 23, scope: !795)
!801 = distinct !{!801, !792, !802, !803, !804}
!802 = !DILocation(line: 1007, column: 9, scope: !790)
!803 = !{!"llvm.loop.mustprogress"}
!804 = !{!"llvm.loop.unroll.disable"}
!805 = !DILocation(line: 1009, column: 69, scope: !791)
!806 = !DILocation(line: 1008, column: 16, scope: !791)
!807 = !DILocation(line: 1010, column: 9, scope: !791)
!808 = !DILocation(line: 997, column: 32, scope: !778)
!809 = !DILocation(line: 997, column: 15, scope: !778)
!810 = distinct !{!810, !774, !811, !803, !804}
!811 = !DILocation(line: 1012, column: 3, scope: !775)
!812 = !DILocation(line: 1016, column: 3, scope: !689)
!813 = !DILocation(line: 1017, column: 21, scope: !689)
!814 = !DILocation(line: 1018, column: 23, scope: !689)
!815 = !DILocation(line: 1018, column: 58, scope: !689)
!816 = !DILocation(line: 1018, column: 6, scope: !689)
!817 = !DILocation(line: 1017, column: 10, scope: !689)
!818 = !DILocation(line: 1019, column: 21, scope: !689)
!819 = !DILocation(line: 1020, column: 58, scope: !689)
!820 = !DILocation(line: 1019, column: 10, scope: !689)
!821 = !DILocation(line: 1022, column: 6, scope: !689)
!822 = !DILocation(line: 1021, column: 21, scope: !689)
!823 = !DILocation(line: 1022, column: 58, scope: !689)
!824 = !DILocation(line: 1021, column: 10, scope: !689)
!825 = !DILocation(line: 1028, column: 10, scope: !689)
!826 = !DILocation(line: 1029, column: 10, scope: !689)
!827 = !DILocation(line: 1030, column: 10, scope: !689)
!828 = !DILocalVariable(name: "extrema", arg: 1, scope: !829, file: !406, line: 838, type: !832)
!829 = distinct !DISubprogram(name: "DefineRegion", scope: !406, file: !406, line: 838, type: !830, scopeLine: 839, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !835)
!830 = !DISubroutineType(types: !831)
!831 = !{!396, !832, !834}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!835 = !{!828, !836}
!836 = !DILocalVariable(name: "extents", arg: 2, scope: !829, file: !406, line: 838, type: !834)
!837 = !DILocation(line: 0, scope: !829, inlinedAt: !838)
!838 = distinct !DILocation(line: 1031, column: 10, scope: !689)
!839 = !DILocation(line: 843, column: 16, scope: !829, inlinedAt: !838)
!840 = !{!841, !753, i64 16}
!841 = !{!"_ExtentPacket", !842, i64 0, !753, i64 8, !753, i64 16, !753, i64 24}
!842 = !{!"float", !751, i64 0}
!843 = !DILocation(line: 844, column: 18, scope: !829, inlinedAt: !838)
!844 = !{!841, !842, i64 0}
!845 = !DILocation(line: 845, column: 17, scope: !829, inlinedAt: !838)
!846 = !{!841, !753, i64 24}
!847 = !{!841, !753, i64 8}
!848 = !DILocation(line: 849, column: 26, scope: !849, inlinedAt: !838)
!849 = distinct !DILexicalBlock(scope: !850, file: !406, line: 849, column: 3)
!850 = distinct !DILexicalBlock(scope: !829, file: !406, line: 849, column: 3)
!851 = !DILocation(line: 849, column: 3, scope: !850, inlinedAt: !838)
!852 = !DILocation(line: 850, column: 9, scope: !853, inlinedAt: !838)
!853 = distinct !DILexicalBlock(scope: !849, file: !406, line: 850, column: 9)
!854 = !{!756, !756, i64 0}
!855 = !DILocation(line: 850, column: 33, scope: !853, inlinedAt: !838)
!856 = !DILocation(line: 850, column: 9, scope: !849, inlinedAt: !838)
!857 = !DILocation(line: 849, column: 48, scope: !849, inlinedAt: !838)
!858 = distinct !{!858, !851, !859, !803, !804}
!859 = !DILocation(line: 851, column: 7, scope: !850, inlinedAt: !838)
!860 = !DILocation(line: 854, column: 16, scope: !829, inlinedAt: !838)
!861 = !DILocation(line: 858, column: 26, scope: !862, inlinedAt: !838)
!862 = distinct !DILexicalBlock(scope: !863, file: !406, line: 858, column: 3)
!863 = distinct !DILexicalBlock(scope: !829, file: !406, line: 858, column: 3)
!864 = !DILocation(line: 858, column: 3, scope: !863, inlinedAt: !838)
!865 = !DILocation(line: 858, column: 48, scope: !862, inlinedAt: !838)
!866 = distinct !{!866, !864, !867, !803, !804}
!867 = !DILocation(line: 860, column: 7, scope: !863, inlinedAt: !838)
!868 = !DILocation(line: 859, column: 9, scope: !869, inlinedAt: !838)
!869 = distinct !DILexicalBlock(scope: !862, file: !406, line: 859, column: 9)
!870 = !DILocation(line: 859, column: 33, scope: !869, inlinedAt: !838)
!871 = !DILocation(line: 859, column: 9, scope: !862, inlinedAt: !838)
!872 = !DILocation(line: 861, column: 32, scope: !829, inlinedAt: !838)
!873 = !DILocation(line: 858, column: 20, scope: !862, inlinedAt: !838)
!874 = !DILocation(line: 861, column: 17, scope: !829, inlinedAt: !838)
!875 = !DILocation(line: 1033, column: 16, scope: !876)
!876 = distinct !DILexicalBlock(scope: !689, file: !406, line: 1032, column: 3)
!877 = !DILocation(line: 1034, column: 25, scope: !876)
!878 = !DILocation(line: 0, scope: !829, inlinedAt: !879)
!879 = distinct !DILocation(line: 1034, column: 12, scope: !876)
!880 = !DILocation(line: 843, column: 16, scope: !829, inlinedAt: !879)
!881 = !DILocation(line: 844, column: 18, scope: !829, inlinedAt: !879)
!882 = !DILocation(line: 845, column: 17, scope: !829, inlinedAt: !879)
!883 = !DILocation(line: 849, column: 3, scope: !850, inlinedAt: !879)
!884 = !DILocation(line: 850, column: 9, scope: !853, inlinedAt: !879)
!885 = !DILocation(line: 850, column: 33, scope: !853, inlinedAt: !879)
!886 = !DILocation(line: 850, column: 9, scope: !849, inlinedAt: !879)
!887 = !DILocation(line: 849, column: 48, scope: !849, inlinedAt: !879)
!888 = !DILocation(line: 849, column: 26, scope: !849, inlinedAt: !879)
!889 = distinct !{!889, !883, !890, !803, !804}
!890 = !DILocation(line: 851, column: 7, scope: !850, inlinedAt: !879)
!891 = !DILocation(line: 854, column: 16, scope: !829, inlinedAt: !879)
!892 = !DILocation(line: 858, column: 26, scope: !862, inlinedAt: !879)
!893 = !DILocation(line: 858, column: 3, scope: !863, inlinedAt: !879)
!894 = !DILocation(line: 858, column: 48, scope: !862, inlinedAt: !879)
!895 = distinct !{!895, !893, !896, !803, !804}
!896 = !DILocation(line: 860, column: 7, scope: !863, inlinedAt: !879)
!897 = !DILocation(line: 859, column: 9, scope: !869, inlinedAt: !879)
!898 = !DILocation(line: 859, column: 33, scope: !869, inlinedAt: !879)
!899 = !DILocation(line: 859, column: 9, scope: !862, inlinedAt: !879)
!900 = !DILocation(line: 1031, column: 23, scope: !689)
!901 = !DILocation(line: 861, column: 32, scope: !829, inlinedAt: !879)
!902 = !DILocation(line: 858, column: 20, scope: !862, inlinedAt: !879)
!903 = !DILocation(line: 861, column: 17, scope: !829, inlinedAt: !879)
!904 = !DILocation(line: 0, scope: !829, inlinedAt: !905)
!905 = distinct !DILocation(line: 1037, column: 14, scope: !906)
!906 = distinct !DILexicalBlock(scope: !876, file: !406, line: 1035, column: 5)
!907 = !DILocation(line: 844, column: 18, scope: !829, inlinedAt: !905)
!908 = !DILocation(line: 843, column: 16, scope: !829, inlinedAt: !905)
!909 = !DILocation(line: 845, column: 17, scope: !829, inlinedAt: !905)
!910 = !DILocation(line: 1037, column: 7, scope: !906)
!911 = !DILocation(line: 849, column: 3, scope: !850, inlinedAt: !905)
!912 = !DILocation(line: 850, column: 9, scope: !853, inlinedAt: !905)
!913 = !DILocation(line: 850, column: 33, scope: !853, inlinedAt: !905)
!914 = !DILocation(line: 850, column: 9, scope: !849, inlinedAt: !905)
!915 = !DILocation(line: 849, column: 48, scope: !849, inlinedAt: !905)
!916 = !DILocation(line: 849, column: 26, scope: !849, inlinedAt: !905)
!917 = distinct !{!917, !911, !918, !803, !804}
!918 = !DILocation(line: 851, column: 7, scope: !850, inlinedAt: !905)
!919 = !DILocation(line: 854, column: 16, scope: !829, inlinedAt: !905)
!920 = !DILocation(line: 858, column: 26, scope: !862, inlinedAt: !905)
!921 = !DILocation(line: 858, column: 3, scope: !863, inlinedAt: !905)
!922 = !DILocation(line: 858, column: 48, scope: !862, inlinedAt: !905)
!923 = distinct !{!923, !921, !924, !803, !804}
!924 = !DILocation(line: 860, column: 7, scope: !863, inlinedAt: !905)
!925 = !DILocation(line: 859, column: 9, scope: !869, inlinedAt: !905)
!926 = !DILocation(line: 859, column: 33, scope: !869, inlinedAt: !905)
!927 = !DILocation(line: 859, column: 9, scope: !862, inlinedAt: !905)
!928 = !DILocation(line: 861, column: 32, scope: !829, inlinedAt: !905)
!929 = !DILocation(line: 858, column: 20, scope: !862, inlinedAt: !905)
!930 = !DILocation(line: 861, column: 17, scope: !829, inlinedAt: !905)
!931 = !DILocation(line: 1042, column: 18, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !406, line: 1042, column: 13)
!933 = distinct !DILexicalBlock(scope: !906, file: !406, line: 1038, column: 7)
!934 = !DILocation(line: 0, scope: !932)
!935 = !DILocation(line: 1042, column: 13, scope: !933)
!936 = !DILocation(line: 1044, column: 26, scope: !937)
!937 = distinct !DILexicalBlock(scope: !932, file: !406, line: 1043, column: 11)
!938 = !{!939, !754, i64 0}
!939 = !{!"_Cluster", !754, i64 0, !841, i64 8, !841, i64 40, !841, i64 72, !753, i64 104, !753, i64 112}
!940 = !DILocation(line: 1047, column: 11, scope: !937)
!941 = !DILocation(line: 1053, column: 21, scope: !942)
!942 = distinct !DILexicalBlock(scope: !933, file: !406, line: 1053, column: 13)
!943 = !DILocation(line: 1053, column: 13, scope: !933)
!944 = !DILocation(line: 1057, column: 22, scope: !945)
!945 = distinct !DILexicalBlock(scope: !942, file: !406, line: 1054, column: 11)
!946 = !DILocation(line: 1055, column: 20, scope: !945)
!947 = !DILocation(line: 1058, column: 13, scope: !945)
!948 = !DILocation(line: 1063, column: 18, scope: !933)
!949 = !DILocation(line: 1063, column: 23, scope: !933)
!950 = !{!939, !753, i64 104}
!951 = !DILocation(line: 1064, column: 18, scope: !933)
!952 = !DILocation(line: 1064, column: 22, scope: !933)
!953 = !{i64 0, i64 4, !954, i64 8, i64 8, !955, i64 16, i64 8, !955, i64 24, i64 8, !955}
!954 = !{!842, !842, i64 0}
!955 = !{!753, !753, i64 0}
!956 = !DILocation(line: 1065, column: 18, scope: !933)
!957 = !DILocation(line: 1065, column: 24, scope: !933)
!958 = !DILocation(line: 1066, column: 18, scope: !933)
!959 = !DILocation(line: 1066, column: 23, scope: !933)
!960 = !DILocation(line: 1067, column: 22, scope: !933)
!961 = !DILocation(line: 1037, column: 27, scope: !906)
!962 = distinct !{!962, !910, !963, !803, !804}
!963 = !DILocation(line: 1068, column: 7, scope: !906)
!964 = !DILocation(line: 1071, column: 12, scope: !965)
!965 = distinct !DILexicalBlock(scope: !689, file: !406, line: 1071, column: 7)
!966 = !DILocation(line: 1071, column: 7, scope: !689)
!967 = !DILocation(line: 1076, column: 27, scope: !968)
!968 = distinct !DILexicalBlock(scope: !965, file: !406, line: 1072, column: 5)
!969 = !DILocation(line: 1077, column: 19, scope: !970)
!970 = distinct !DILexicalBlock(scope: !968, file: !406, line: 1077, column: 11)
!971 = !DILocation(line: 1077, column: 11, scope: !968)
!972 = !DILocation(line: 1080, column: 71, scope: !973)
!973 = distinct !DILexicalBlock(scope: !970, file: !406, line: 1078, column: 9)
!974 = !DILocation(line: 1079, column: 18, scope: !973)
!975 = !DILocation(line: 1081, column: 11, scope: !973)
!976 = !DILocation(line: 1086, column: 16, scope: !968)
!977 = !DILocation(line: 1086, column: 21, scope: !968)
!978 = !DILocation(line: 1087, column: 16, scope: !968)
!979 = !DILocation(line: 1087, column: 20, scope: !968)
!980 = !DILocation(line: 1088, column: 16, scope: !968)
!981 = !DILocation(line: 1088, column: 22, scope: !968)
!982 = !DILocation(line: 1089, column: 16, scope: !968)
!983 = !DILocation(line: 1089, column: 21, scope: !968)
!984 = !DILocation(line: 1090, column: 20, scope: !968)
!985 = !DILocation(line: 1092, column: 5, scope: !968)
!986 = !DILocation(line: 1099, column: 41, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !406, line: 1098, column: 3)
!988 = distinct !DILexicalBlock(scope: !989, file: !406, line: 1097, column: 3)
!989 = distinct !DILexicalBlock(scope: !689, file: !406, line: 1097, column: 3)
!990 = !DILocation(line: 1097, column: 34, scope: !988)
!991 = !{!750, !753, i64 48}
!992 = !DILocation(line: 1097, column: 15, scope: !988)
!993 = !DILocation(line: 1097, column: 3, scope: !989)
!994 = !{!750, !753, i64 40}
!995 = !DILocation(line: 1099, column: 7, scope: !987)
!996 = !DILocation(line: 1100, column: 11, scope: !997)
!997 = distinct !DILexicalBlock(scope: !987, file: !406, line: 1100, column: 9)
!998 = !DILocation(line: 1100, column: 9, scope: !987)
!999 = !DILocation(line: 1102, column: 17, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !406, line: 1102, column: 5)
!1001 = distinct !DILexicalBlock(scope: !987, file: !406, line: 1102, column: 5)
!1002 = !DILocation(line: 1102, column: 5, scope: !1001)
!1003 = !{!755, !756, i64 4}
!1004 = !DILocation(line: 1104, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !406, line: 1104, column: 7)
!1006 = distinct !DILexicalBlock(scope: !1000, file: !406, line: 1103, column: 5)
!1007 = !DILocalVariable(name: "quantum", arg: 1, scope: !1008, file: !147, line: 114, type: !1011)
!1008 = distinct !DISubprogram(name: "ScaleQuantumToChar", scope: !147, file: !147, line: 114, type: !1009, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1012)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!438, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!1012 = !{!1007}
!1013 = !DILocation(line: 0, scope: !1008, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 1105, column: 24, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !406, line: 1105, column: 13)
!1016 = distinct !DILexicalBlock(scope: !1005, file: !406, line: 1104, column: 7)
!1017 = !DILocation(line: 1106, column: 28, scope: !1015)
!1018 = !{!939, !753, i64 24}
!1019 = !DILocation(line: 1106, column: 32, scope: !1015)
!1020 = !DILocation(line: 1105, column: 59, scope: !1015)
!1021 = !DILocation(line: 1106, column: 46, scope: !1015)
!1022 = !DILocation(line: 0, scope: !1008, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 1107, column: 24, scope: !1015)
!1024 = !DILocation(line: 1108, column: 28, scope: !1015)
!1025 = !{!939, !753, i64 32}
!1026 = !DILocation(line: 1108, column: 33, scope: !1015)
!1027 = !DILocation(line: 1107, column: 59, scope: !1015)
!1028 = !DILocation(line: 1108, column: 47, scope: !1015)
!1029 = !DILocation(line: 1109, column: 43, scope: !1015)
!1030 = !{!755, !756, i64 2}
!1031 = !DILocation(line: 0, scope: !1008, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 1109, column: 24, scope: !1015)
!1033 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !1032)
!1034 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !1032)
!1035 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !1032)
!1036 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !1032)
!1037 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !1032)
!1038 = !DILocation(line: 1109, column: 14, scope: !1015)
!1039 = !DILocation(line: 1110, column: 30, scope: !1015)
!1040 = !{!939, !753, i64 56}
!1041 = !DILocation(line: 1110, column: 34, scope: !1015)
!1042 = !DILocation(line: 1109, column: 61, scope: !1015)
!1043 = !DILocation(line: 1110, column: 48, scope: !1015)
!1044 = !DILocation(line: 0, scope: !1008, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 1111, column: 24, scope: !1015)
!1046 = !DILocation(line: 1112, column: 30, scope: !1015)
!1047 = !{!939, !753, i64 64}
!1048 = !DILocation(line: 1112, column: 35, scope: !1015)
!1049 = !DILocation(line: 1111, column: 61, scope: !1015)
!1050 = !DILocation(line: 1112, column: 49, scope: !1015)
!1051 = !DILocation(line: 1113, column: 43, scope: !1015)
!1052 = !{!755, !756, i64 0}
!1053 = !DILocation(line: 0, scope: !1008, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 1113, column: 24, scope: !1015)
!1055 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !1054)
!1056 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !1054)
!1057 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !1054)
!1058 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !1054)
!1059 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !1054)
!1060 = !DILocation(line: 1113, column: 14, scope: !1015)
!1061 = !DILocation(line: 1114, column: 29, scope: !1015)
!1062 = !{!939, !753, i64 88}
!1063 = !DILocation(line: 1114, column: 33, scope: !1015)
!1064 = !DILocation(line: 1113, column: 60, scope: !1015)
!1065 = !DILocation(line: 1114, column: 47, scope: !1015)
!1066 = !DILocation(line: 0, scope: !1008, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 1115, column: 24, scope: !1015)
!1068 = !DILocation(line: 1116, column: 29, scope: !1015)
!1069 = !{!939, !753, i64 96}
!1070 = !DILocation(line: 1116, column: 34, scope: !1015)
!1071 = !DILocation(line: 1115, column: 60, scope: !1015)
!1072 = !DILocation(line: 1105, column: 13, scope: !1016)
!1073 = !DILocation(line: 117, column: 10, scope: !1008, inlinedAt: !1014)
!1074 = !DILocation(line: 1106, column: 24, scope: !1015)
!1075 = !DILocation(line: 117, column: 10, scope: !1008, inlinedAt: !1032)
!1076 = !DILocation(line: 1110, column: 24, scope: !1015)
!1077 = !DILocation(line: 117, column: 10, scope: !1008, inlinedAt: !1054)
!1078 = !DILocation(line: 1114, column: 24, scope: !1015)
!1079 = !DILocation(line: 0, scope: !1008, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 1123, column: 15, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1015, file: !406, line: 1117, column: 11)
!1082 = !DILocation(line: 1122, column: 34, scope: !1081)
!1083 = !DILocation(line: 1122, column: 32, scope: !1081)
!1084 = !{!939, !842, i64 8}
!1085 = !DILocation(line: 0, scope: !1008, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 1125, column: 15, scope: !1081)
!1087 = !DILocation(line: 1124, column: 36, scope: !1081)
!1088 = !DILocation(line: 1124, column: 34, scope: !1081)
!1089 = !{!939, !842, i64 40}
!1090 = !DILocation(line: 0, scope: !1008, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 1127, column: 15, scope: !1081)
!1092 = !DILocation(line: 1126, column: 35, scope: !1081)
!1093 = !DILocation(line: 1126, column: 33, scope: !1081)
!1094 = !{!939, !842, i64 72}
!1095 = !DILocation(line: 1128, column: 22, scope: !1081)
!1096 = !DILocation(line: 1128, column: 27, scope: !1081)
!1097 = !DILocation(line: 1129, column: 13, scope: !1081)
!1098 = !DILocation(line: 1104, column: 72, scope: !1016)
!1099 = !DILocation(line: 1104, column: 34, scope: !1016)
!1100 = distinct !{!1100, !1004, !1101, !803, !804}
!1101 = !DILocation(line: 1130, column: 11, scope: !1005)
!1102 = !DILocation(line: 1131, column: 8, scope: !1006)
!1103 = !DILocation(line: 1102, column: 46, scope: !1000)
!1104 = distinct !{!1104, !1002, !1105, !803, !804}
!1105 = !DILocation(line: 1132, column: 5, scope: !1001)
!1106 = !DILocation(line: 1134, column: 16, scope: !987)
!1107 = !DILocalVariable(name: "image", arg: 1, scope: !1108, file: !1109, line: 27, type: !692)
!1108 = distinct !DISubprogram(name: "SetImageProgress", scope: !1109, file: !1109, line: 27, type: !1110, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1112)
!1109 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!455, !692, !557, !559, !560}
!1112 = !{!1107, !1113, !1114, !1115, !1116}
!1113 = !DILocalVariable(name: "tag", arg: 2, scope: !1108, file: !1109, line: 28, type: !557)
!1114 = !DILocalVariable(name: "offset", arg: 3, scope: !1108, file: !1109, line: 28, type: !559)
!1115 = !DILocalVariable(name: "extent", arg: 4, scope: !1108, file: !1109, line: 28, type: !560)
!1116 = !DILocalVariable(name: "message", scope: !1108, file: !1109, line: 31, type: !575)
!1117 = !DILocation(line: 0, scope: !1108, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 1133, column: 13, scope: !987)
!1119 = !DILocation(line: 30, column: 3, scope: !1108, inlinedAt: !1118)
!1120 = !DILocation(line: 31, column: 5, scope: !1108, inlinedAt: !1118)
!1121 = !DILocation(line: 33, column: 14, scope: !1122, inlinedAt: !1118)
!1122 = distinct !DILexicalBlock(scope: !1108, file: !1109, line: 33, column: 7)
!1123 = !{!750, !754, i64 568}
!1124 = !DILocation(line: 33, column: 31, scope: !1122, inlinedAt: !1118)
!1125 = !DILocation(line: 33, column: 7, scope: !1108, inlinedAt: !1118)
!1126 = !DILocation(line: 37, column: 1, scope: !1108, inlinedAt: !1118)
!1127 = !DILocation(line: 1135, column: 9, scope: !987)
!1128 = !DILocation(line: 1134, column: 8, scope: !987)
!1129 = !DILocation(line: 35, column: 10, scope: !1108, inlinedAt: !1118)
!1130 = !DILocation(line: 36, column: 17, scope: !1108, inlinedAt: !1118)
!1131 = !DILocation(line: 36, column: 63, scope: !1108, inlinedAt: !1118)
!1132 = !{!750, !754, i64 576}
!1133 = !DILocation(line: 36, column: 10, scope: !1108, inlinedAt: !1118)
!1134 = !DILocation(line: 1135, column: 17, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !987, file: !406, line: 1135, column: 9)
!1136 = !DILocation(line: 1097, column: 41, scope: !988)
!1137 = distinct !{!1137, !993, !1138, !803, !804}
!1138 = !DILocation(line: 1137, column: 3, scope: !989)
!1139 = !DILocation(line: 1144, column: 30, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !406, line: 1144, column: 3)
!1141 = distinct !DILexicalBlock(scope: !689, file: !406, line: 1144, column: 3)
!1142 = !DILocation(line: 1144, column: 3, scope: !1141)
!1143 = !DILocation(line: 1146, column: 27, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !406, line: 1145, column: 3)
!1145 = !DILocation(line: 1147, column: 19, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1144, file: !406, line: 1147, column: 9)
!1147 = !DILocation(line: 1147, column: 25, scope: !1146)
!1148 = !DILocation(line: 1147, column: 30, scope: !1146)
!1149 = !DILocation(line: 1148, column: 10, scope: !1146)
!1150 = !DILocation(line: 1148, column: 29, scope: !1146)
!1151 = !DILocation(line: 1148, column: 34, scope: !1146)
!1152 = !DILocation(line: 1148, column: 52, scope: !1146)
!1153 = !DILocation(line: 1148, column: 25, scope: !1146)
!1154 = !DILocation(line: 1147, column: 9, scope: !1144)
!1155 = !DILocation(line: 1153, column: 18, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1146, file: !406, line: 1149, column: 7)
!1157 = !DILocation(line: 1153, column: 20, scope: !1156)
!1158 = !{!939, !753, i64 112}
!1159 = !DILocation(line: 1154, column: 30, scope: !1156)
!1160 = !DILocation(line: 1154, column: 18, scope: !1156)
!1161 = !DILocation(line: 1154, column: 28, scope: !1156)
!1162 = !DILocation(line: 1155, column: 18, scope: !1156)
!1163 = !DILocation(line: 1155, column: 30, scope: !1156)
!1164 = !DILocation(line: 1156, column: 18, scope: !1156)
!1165 = !DILocation(line: 1156, column: 29, scope: !1156)
!1166 = !DILocation(line: 1157, column: 14, scope: !1156)
!1167 = !DILocation(line: 1159, column: 9, scope: !1156)
!1168 = !DILocation(line: 1164, column: 17, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1144, file: !406, line: 1164, column: 9)
!1170 = !DILocation(line: 1164, column: 9, scope: !1144)
!1171 = !DILocation(line: 1167, column: 25, scope: !1169)
!1172 = !DILocation(line: 1168, column: 25, scope: !1144)
!1173 = !DILocation(line: 1169, column: 3, scope: !1144)
!1174 = distinct !{!1174, !1142, !1175, !803, !804}
!1175 = !DILocation(line: 1169, column: 3, scope: !1141)
!1176 = !DILocation(line: 1172, column: 13, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !689, file: !406, line: 1172, column: 7)
!1178 = !DILocation(line: 1172, column: 7, scope: !689)
!1179 = !DILocation(line: 1174, column: 20, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1177, file: !406, line: 1173, column: 5)
!1181 = !DILocation(line: 1175, column: 37, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !406, line: 1175, column: 7)
!1183 = distinct !DILexicalBlock(scope: !1180, file: !406, line: 1175, column: 7)
!1184 = !DILocation(line: 1175, column: 42, scope: !1182)
!1185 = !DILocation(line: 1175, column: 7, scope: !1183)
!1186 = !DILocation(line: 1182, column: 7, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1180, file: !406, line: 1182, column: 7)
!1188 = !DILocation(line: 1177, column: 22, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !406, line: 1177, column: 13)
!1190 = distinct !DILexicalBlock(scope: !1182, file: !406, line: 1176, column: 7)
!1191 = !DILocation(line: 1177, column: 38, scope: !1189)
!1192 = !DILocation(line: 1177, column: 28, scope: !1189)
!1193 = !DILocation(line: 1177, column: 13, scope: !1190)
!1194 = distinct !{!1194, !1185, !1195, !803, !804}
!1195 = !DILocation(line: 1180, column: 7, scope: !1183)
!1196 = !DILocation(line: 1184, column: 22, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !406, line: 1184, column: 13)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !406, line: 1183, column: 7)
!1199 = distinct !DILexicalBlock(scope: !1187, file: !406, line: 1182, column: 7)
!1200 = !DILocation(line: 1184, column: 42, scope: !1197)
!1201 = !DILocation(line: 1184, column: 28, scope: !1197)
!1202 = !DILocation(line: 1184, column: 13, scope: !1198)
!1203 = !DILocation(line: 1182, column: 41, scope: !1199)
!1204 = !DILocation(line: 1182, column: 46, scope: !1199)
!1205 = distinct !{!1205, !1186, !1206, !803, !804}
!1206 = !DILocation(line: 1187, column: 7, scope: !1187)
!1207 = !DILocation(line: 1189, column: 18, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !689, file: !406, line: 1189, column: 7)
!1209 = !DILocation(line: 1189, column: 7, scope: !689)
!1210 = !DILocation(line: 1191, column: 30, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !406, line: 1190, column: 5)
!1212 = !DILocation(line: 1191, column: 34, scope: !1211)
!1213 = !DILocation(line: 1191, column: 49, scope: !1211)
!1214 = !DILocation(line: 1191, column: 53, scope: !1211)
!1215 = !DILocation(line: 1191, column: 40, scope: !1211)
!1216 = !DILocation(line: 1191, column: 17, scope: !1211)
!1217 = !DILocation(line: 1193, column: 10, scope: !1211)
!1218 = !DILocation(line: 1193, column: 19, scope: !1211)
!1219 = !DILocation(line: 1192, column: 54, scope: !1211)
!1220 = !DILocalVariable(name: "value", arg: 1, scope: !1221, file: !1222, line: 363, type: !1225)
!1221 = distinct !DISubprogram(name: "ScaleCharToQuantum", scope: !1222, file: !1222, line: 363, type: !1223, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1226)
!1222 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f56ff413af29c367aaef7b4fe7af9628")
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!431, !1225}
!1225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!1226 = !{!1220}
!1227 = !DILocation(line: 0, scope: !1221, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 1192, column: 35, scope: !1211)
!1229 = !DILocation(line: 366, column: 26, scope: !1221, inlinedAt: !1228)
!1230 = !DILocation(line: 366, column: 25, scope: !1221, inlinedAt: !1228)
!1231 = !DILocation(line: 1192, column: 18, scope: !1211)
!1232 = !DILocation(line: 1192, column: 14, scope: !1211)
!1233 = !DILocation(line: 1192, column: 17, scope: !1211)
!1234 = !{!1235, !842, i64 32}
!1235 = !{!"_MagickPixelPacket", !751, i64 0, !751, i64 4, !751, i64 8, !757, i64 16, !753, i64 24, !842, i64 32, !842, i64 36, !842, i64 40, !842, i64 44, !842, i64 48}
!1236 = !DILocation(line: 1194, column: 30, scope: !1211)
!1237 = !DILocation(line: 1194, column: 36, scope: !1211)
!1238 = !DILocation(line: 1194, column: 51, scope: !1211)
!1239 = !DILocation(line: 1194, column: 57, scope: !1211)
!1240 = !DILocation(line: 1194, column: 42, scope: !1211)
!1241 = !DILocation(line: 1194, column: 17, scope: !1211)
!1242 = !DILocation(line: 1196, column: 10, scope: !1211)
!1243 = !DILocation(line: 1196, column: 19, scope: !1211)
!1244 = !DILocation(line: 1195, column: 56, scope: !1211)
!1245 = !DILocation(line: 0, scope: !1221, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 1195, column: 37, scope: !1211)
!1247 = !DILocation(line: 366, column: 26, scope: !1221, inlinedAt: !1246)
!1248 = !DILocation(line: 366, column: 25, scope: !1221, inlinedAt: !1246)
!1249 = !DILocation(line: 1195, column: 20, scope: !1211)
!1250 = !DILocation(line: 1195, column: 14, scope: !1211)
!1251 = !DILocation(line: 1195, column: 19, scope: !1211)
!1252 = !{!1235, !842, i64 36}
!1253 = !DILocation(line: 1197, column: 30, scope: !1211)
!1254 = !DILocation(line: 1197, column: 35, scope: !1211)
!1255 = !DILocation(line: 1197, column: 50, scope: !1211)
!1256 = !DILocation(line: 1197, column: 55, scope: !1211)
!1257 = !DILocation(line: 1197, column: 41, scope: !1211)
!1258 = !DILocation(line: 1197, column: 17, scope: !1211)
!1259 = !DILocation(line: 1199, column: 10, scope: !1211)
!1260 = !DILocation(line: 1199, column: 19, scope: !1211)
!1261 = !DILocation(line: 1198, column: 55, scope: !1211)
!1262 = !DILocation(line: 0, scope: !1221, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 1198, column: 36, scope: !1211)
!1264 = !DILocation(line: 366, column: 26, scope: !1221, inlinedAt: !1263)
!1265 = !DILocation(line: 366, column: 25, scope: !1221, inlinedAt: !1263)
!1266 = !DILocation(line: 1198, column: 19, scope: !1211)
!1267 = !DILocation(line: 1198, column: 14, scope: !1211)
!1268 = !DILocation(line: 1198, column: 18, scope: !1211)
!1269 = !{!1235, !842, i64 40}
!1270 = !DILocation(line: 1200, column: 5, scope: !1211)
!1271 = !DILocation(line: 1204, column: 30, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !406, line: 1204, column: 3)
!1273 = distinct !DILexicalBlock(scope: !689, file: !406, line: 1204, column: 3)
!1274 = !DILocation(line: 1204, column: 3, scope: !1273)
!1275 = !DILocation(line: 1206, column: 27, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !406, line: 1205, column: 3)
!1277 = !DILocation(line: 1207, column: 25, scope: !1276)
!1278 = distinct !{!1278, !1274, !1279, !803, !804}
!1279 = !DILocation(line: 1208, column: 3, scope: !1273)
!1280 = !DILocation(line: 1209, column: 3, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !689, file: !406, line: 1209, column: 3)
!1282 = !DILocation(line: 1211, column: 49, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !406, line: 1210, column: 3)
!1284 = distinct !DILexicalBlock(scope: !1281, file: !406, line: 1209, column: 3)
!1285 = !DILocation(line: 1211, column: 26, scope: !1283)
!1286 = !DILocation(line: 1211, column: 15, scope: !1283)
!1287 = !DILocation(line: 1212, column: 53, scope: !1283)
!1288 = !DILocation(line: 1212, column: 30, scope: !1283)
!1289 = !DILocation(line: 1212, column: 17, scope: !1283)
!1290 = !DILocation(line: 1209, column: 32, scope: !1284)
!1291 = !DILocation(line: 1209, column: 15, scope: !1284)
!1292 = distinct !{!1292, !1280, !1293, !803, !804}
!1293 = !DILocation(line: 1213, column: 3, scope: !1281)
!1294 = !DILocation(line: 1215, column: 1, scope: !689)
!1295 = !DISubprogram(name: "LogMagickEvent", scope: !369, file: !369, line: 83, type: !1296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!455, !1298, !557, !557, !1300, !557, null}
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !369, line: 58, baseType: !368)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!1301 = !{}
!1302 = !DISubprogram(name: "GetMagickPixelPacket", scope: !326, file: !326, line: 185, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !692, !695}
!1305 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1306, file: !1306, line: 42, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!1306 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!403, !1300, !1300}
!1309 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1306, file: !1306, line: 51, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!403, !403}
!1312 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !1313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!455, !709, !557, !557, !1300, !1315, !557, !557, null}
!1315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!1316 = distinct !DISubprogram(name: "InitializeHistogram", scope: !406, file: !406, line: 1243, type: !1317, scopeLine: 1245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1320)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !692, !1319, !709}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1321 = !DILocalVariable(name: "image", arg: 1, scope: !1316, file: !406, line: 1243, type: !692)
!1322 = !DILocalVariable(name: "histogram", arg: 2, scope: !1316, file: !406, line: 1243, type: !1319)
!1323 = !DILocalVariable(name: "exception", arg: 3, scope: !1316, file: !406, line: 1244, type: !709)
!1324 = !DILocalVariable(name: "p", scope: !1316, file: !406, line: 1247, type: !425)
!1325 = !DILocalVariable(name: "i", scope: !1316, file: !406, line: 1250, type: !396)
!1326 = !DILocalVariable(name: "x", scope: !1316, file: !406, line: 1251, type: !396)
!1327 = !DILocalVariable(name: "y", scope: !1316, file: !406, line: 1254, type: !396)
!1328 = !DILocation(line: 0, scope: !1316)
!1329 = !DILocation(line: 1259, column: 3, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1316, file: !406, line: 1259, column: 3)
!1331 = !DILocation(line: 1267, column: 41, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !406, line: 1266, column: 3)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !406, line: 1265, column: 3)
!1334 = distinct !DILexicalBlock(scope: !1316, file: !406, line: 1265, column: 3)
!1335 = !DILocation(line: 1265, column: 34, scope: !1333)
!1336 = !DILocation(line: 1265, column: 15, scope: !1333)
!1337 = !DILocation(line: 1265, column: 3, scope: !1334)
!1338 = !DILocation(line: 1261, column: 5, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !406, line: 1260, column: 3)
!1340 = distinct !DILexicalBlock(scope: !1330, file: !406, line: 1259, column: 3)
!1341 = !DILocation(line: 1261, column: 22, scope: !1339)
!1342 = !DILocation(line: 1262, column: 5, scope: !1339)
!1343 = !DILocation(line: 1262, column: 24, scope: !1339)
!1344 = !DILocation(line: 1263, column: 5, scope: !1339)
!1345 = !DILocation(line: 1263, column: 23, scope: !1339)
!1346 = !DILocation(line: 1259, column: 24, scope: !1340)
!1347 = !DILocation(line: 1259, column: 15, scope: !1340)
!1348 = distinct !{!1348, !1329, !1349, !803, !804}
!1349 = !DILocation(line: 1264, column: 3, scope: !1330)
!1350 = !DILocation(line: 1267, column: 7, scope: !1332)
!1351 = !DILocation(line: 1268, column: 11, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1332, file: !406, line: 1268, column: 9)
!1353 = !DILocation(line: 1268, column: 9, scope: !1332)
!1354 = !DILocation(line: 1270, column: 36, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !406, line: 1270, column: 5)
!1356 = distinct !DILexicalBlock(scope: !1332, file: !406, line: 1270, column: 5)
!1357 = !DILocation(line: 1270, column: 17, scope: !1355)
!1358 = !DILocation(line: 1270, column: 5, scope: !1356)
!1359 = !DILocation(line: 1272, column: 51, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1355, file: !406, line: 1271, column: 5)
!1361 = !DILocation(line: 0, scope: !1008, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 1272, column: 32, scope: !1360)
!1363 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !1362)
!1364 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !1362)
!1365 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !1362)
!1366 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !1362)
!1367 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !1362)
!1368 = !DILocation(line: 1272, column: 22, scope: !1360)
!1369 = !DILocation(line: 1272, column: 7, scope: !1360)
!1370 = !DILocation(line: 1272, column: 67, scope: !1360)
!1371 = !DILocation(line: 1273, column: 53, scope: !1360)
!1372 = !DILocation(line: 0, scope: !1008, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 1273, column: 34, scope: !1360)
!1374 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !1373)
!1375 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !1373)
!1376 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !1373)
!1377 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !1373)
!1378 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !1373)
!1379 = !DILocation(line: 1273, column: 24, scope: !1360)
!1380 = !DILocation(line: 1273, column: 7, scope: !1360)
!1381 = !DILocation(line: 1273, column: 71, scope: !1360)
!1382 = !DILocation(line: 1274, column: 52, scope: !1360)
!1383 = !DILocation(line: 0, scope: !1008, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 1274, column: 33, scope: !1360)
!1385 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !1384)
!1386 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !1384)
!1387 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !1384)
!1388 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !1384)
!1389 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !1384)
!1390 = !DILocation(line: 1274, column: 23, scope: !1360)
!1391 = !DILocation(line: 1274, column: 7, scope: !1360)
!1392 = !DILocation(line: 1274, column: 69, scope: !1360)
!1393 = !DILocation(line: 1275, column: 8, scope: !1360)
!1394 = !DILocation(line: 1270, column: 46, scope: !1355)
!1395 = distinct !{!1395, !1358, !1396, !803, !804}
!1396 = !DILocation(line: 1276, column: 5, scope: !1356)
!1397 = !DILocation(line: 1265, column: 41, scope: !1333)
!1398 = distinct !{!1398, !1337, !1399, !803, !804}
!1399 = !DILocation(line: 1277, column: 3, scope: !1334)
!1400 = !DILocation(line: 1278, column: 1, scope: !1316)
!1401 = distinct !DISubprogram(name: "OptimalTau", scope: !406, file: !406, line: 1512, type: !1402, scopeLine: 1515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1406)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!416, !1404, !694, !694, !694, !694, !401}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1434}
!1407 = !DILocalVariable(name: "histogram", arg: 1, scope: !1401, file: !406, line: 1512, type: !1404)
!1408 = !DILocalVariable(name: "max_tau", arg: 2, scope: !1401, file: !406, line: 1512, type: !694)
!1409 = !DILocalVariable(name: "min_tau", arg: 3, scope: !1401, file: !406, line: 1513, type: !694)
!1410 = !DILocalVariable(name: "delta_tau", arg: 4, scope: !1401, file: !406, line: 1513, type: !694)
!1411 = !DILocalVariable(name: "smooth_threshold", arg: 5, scope: !1401, file: !406, line: 1513, type: !694)
!1412 = !DILocalVariable(name: "extrema", arg: 6, scope: !1401, file: !406, line: 1514, type: !401)
!1413 = !DILocalVariable(name: "list", scope: !1401, file: !406, line: 1517, type: !642)
!1414 = !DILocalVariable(name: "node", scope: !1401, file: !406, line: 1518, type: !643)
!1415 = !DILocalVariable(name: "root", scope: !1401, file: !406, line: 1519, type: !643)
!1416 = !DILocalVariable(name: "peak", scope: !1401, file: !406, line: 1522, type: !455)
!1417 = !DILocalVariable(name: "average_tau", scope: !1401, file: !406, line: 1525, type: !416)
!1418 = !DILocalVariable(name: "derivative", scope: !1401, file: !406, line: 1526, type: !666)
!1419 = !DILocalVariable(name: "second_derivative", scope: !1401, file: !406, line: 1527, type: !666)
!1420 = !DILocalVariable(name: "tau", scope: !1401, file: !406, line: 1528, type: !416)
!1421 = !DILocalVariable(name: "value", scope: !1401, file: !406, line: 1529, type: !416)
!1422 = !DILocalVariable(name: "i", scope: !1401, file: !406, line: 1532, type: !396)
!1423 = !DILocalVariable(name: "x", scope: !1401, file: !406, line: 1533, type: !396)
!1424 = !DILocalVariable(name: "count", scope: !1401, file: !406, line: 1536, type: !450)
!1425 = !DILocalVariable(name: "number_crossings", scope: !1401, file: !406, line: 1537, type: !450)
!1426 = !DILocalVariable(name: "index", scope: !1401, file: !406, line: 1540, type: !396)
!1427 = !DILocalVariable(name: "j", scope: !1401, file: !406, line: 1541, type: !396)
!1428 = !DILocalVariable(name: "k", scope: !1401, file: !406, line: 1542, type: !396)
!1429 = !DILocalVariable(name: "number_nodes", scope: !1401, file: !406, line: 1543, type: !396)
!1430 = !DILocalVariable(name: "zero_crossing", scope: !1401, file: !406, line: 1546, type: !655)
!1431 = !DILocalVariable(name: "message", scope: !1432, file: !406, line: 1573, type: !488)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !406, line: 1573, column: 5)
!1433 = distinct !DILexicalBlock(scope: !1401, file: !406, line: 1571, column: 7)
!1434 = !DILocalVariable(name: "exception", scope: !1432, file: !406, line: 1573, type: !583)
!1435 = !DILocation(line: 0, scope: !1401)
!1436 = !DILocation(line: 1539, column: 3, scope: !1401)
!1437 = !DILocation(line: 1551, column: 26, scope: !1401)
!1438 = !DILocation(line: 1553, column: 12, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1401, file: !406, line: 1553, column: 7)
!1440 = !DILocation(line: 1553, column: 7, scope: !1401)
!1441 = !DILocation(line: 1558, column: 27, scope: !1401)
!1442 = !DILocation(line: 1558, column: 36, scope: !1401)
!1443 = !DILocation(line: 1558, column: 9, scope: !1401)
!1444 = !DILocation(line: 1558, column: 47, scope: !1401)
!1445 = !DILocation(line: 1559, column: 34, scope: !1401)
!1446 = !DILocation(line: 1561, column: 21, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1401, file: !406, line: 1561, column: 7)
!1448 = !DILocation(line: 1561, column: 7, scope: !1401)
!1449 = !DILocation(line: 1563, column: 15, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !406, line: 1563, column: 3)
!1451 = distinct !DILexicalBlock(scope: !1401, file: !406, line: 1563, column: 3)
!1452 = !DILocation(line: 1563, column: 3, scope: !1451)
!1453 = !DILocation(line: 1564, column: 5, scope: !1450)
!1454 = !DILocation(line: 1564, column: 25, scope: !1450)
!1455 = !{!1456, !842, i64 0}
!1456 = !{!"_ZeroCrossing", !842, i64 0, !751, i64 4, !751, i64 1028}
!1457 = !DILocation(line: 1563, column: 35, scope: !1450)
!1458 = distinct !{!1458, !1452, !1459, !803, !804}
!1459 = !DILocation(line: 1564, column: 31, scope: !1451)
!1460 = !DILocation(line: 1568, column: 33, scope: !1401)
!1461 = !DILocation(line: 1569, column: 40, scope: !1401)
!1462 = !DILocation(line: 1571, column: 19, scope: !1433)
!1463 = !DILocation(line: 1571, column: 47, scope: !1433)
!1464 = !DILocation(line: 1576, column: 25, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !406, line: 1576, column: 3)
!1466 = distinct !DILexicalBlock(scope: !1401, file: !406, line: 1576, column: 3)
!1467 = !DILocation(line: 1576, column: 3, scope: !1466)
!1468 = !DILocation(line: 1573, column: 5, scope: !1432)
!1469 = !{!765, !765, i64 0}
!1470 = !DILocation(line: 0, scope: !1432)
!1471 = !DILocation(line: 1578, column: 5, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1465, file: !406, line: 1577, column: 3)
!1473 = !DILocation(line: 1578, column: 25, scope: !1472)
!1474 = !DILocation(line: 1579, column: 47, scope: !1472)
!1475 = !DILocalVariable(name: "histogram", arg: 1, scope: !1476, file: !406, line: 1720, type: !1404)
!1476 = distinct !DISubprogram(name: "ScaleSpace", scope: !406, file: !406, line: 1720, type: !1477, scopeLine: 1722, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1480)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{null, !1404, !1479, !666}
!1479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!1480 = !{!1475, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1492}
!1481 = !DILocalVariable(name: "tau", arg: 2, scope: !1476, file: !406, line: 1720, type: !1479)
!1482 = !DILocalVariable(name: "scale_histogram", arg: 3, scope: !1476, file: !406, line: 1721, type: !666)
!1483 = !DILocalVariable(name: "alpha", scope: !1476, file: !406, line: 1724, type: !467)
!1484 = !DILocalVariable(name: "beta", scope: !1476, file: !406, line: 1725, type: !467)
!1485 = !DILocalVariable(name: "gamma", scope: !1476, file: !406, line: 1726, type: !667)
!1486 = !DILocalVariable(name: "sum", scope: !1476, file: !406, line: 1727, type: !467)
!1487 = !DILocalVariable(name: "u", scope: !1476, file: !406, line: 1730, type: !396)
!1488 = !DILocalVariable(name: "x", scope: !1476, file: !406, line: 1731, type: !396)
!1489 = !DILocalVariable(name: "message", scope: !1490, file: !406, line: 1735, type: !488)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !406, line: 1735, column: 5)
!1491 = distinct !DILexicalBlock(scope: !1476, file: !406, line: 1734, column: 7)
!1492 = !DILocalVariable(name: "exception", scope: !1490, file: !406, line: 1735, type: !583)
!1493 = !DILocation(line: 0, scope: !1476, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 1579, column: 5, scope: !1472)
!1495 = !DILocation(line: 1733, column: 20, scope: !1476, inlinedAt: !1494)
!1496 = !DILocation(line: 1734, column: 13, scope: !1491, inlinedAt: !1494)
!1497 = !DILocation(line: 1734, column: 7, scope: !1476, inlinedAt: !1494)
!1498 = !DILocation(line: 1735, column: 5, scope: !1490, inlinedAt: !1494)
!1499 = !DILocation(line: 0, scope: !1490, inlinedAt: !1494)
!1500 = !DILocation(line: 1737, column: 18, scope: !1476, inlinedAt: !1494)
!1501 = !DILocation(line: 1737, column: 22, scope: !1476, inlinedAt: !1494)
!1502 = !DILocation(line: 1739, column: 13, scope: !1503, inlinedAt: !1494)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !406, line: 1738, column: 3)
!1504 = distinct !DILexicalBlock(scope: !1476, file: !406, line: 1738, column: 3)
!1505 = !{!757, !757, i64 0}
!1506 = !DILocation(line: 1737, column: 13, scope: !1476, inlinedAt: !1494)
!1507 = !DILocation(line: 1740, column: 3, scope: !1508, inlinedAt: !1494)
!1508 = distinct !DILexicalBlock(scope: !1476, file: !406, line: 1740, column: 3)
!1509 = !DILocation(line: 1742, column: 32, scope: !1510, inlinedAt: !1494)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !406, line: 1741, column: 3)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !406, line: 1740, column: 3)
!1512 = !DILocation(line: 1742, column: 31, scope: !1510, inlinedAt: !1494)
!1513 = !DILocation(line: 1742, column: 33, scope: !1510, inlinedAt: !1494)
!1514 = !DILocation(line: 1742, column: 14, scope: !1510, inlinedAt: !1494)
!1515 = !DILocation(line: 1742, column: 5, scope: !1510, inlinedAt: !1494)
!1516 = !DILocation(line: 1742, column: 13, scope: !1510, inlinedAt: !1494)
!1517 = !DILocation(line: 1743, column: 18, scope: !1518, inlinedAt: !1494)
!1518 = distinct !DILexicalBlock(scope: !1510, file: !406, line: 1743, column: 9)
!1519 = !DILocation(line: 1743, column: 9, scope: !1510, inlinedAt: !1494)
!1520 = distinct !{!1520, !1507, !1521, !803, !804}
!1521 = !DILocation(line: 1745, column: 3, scope: !1508, inlinedAt: !1494)
!1522 = !DILocation(line: 1736, column: 17, scope: !1476, inlinedAt: !1494)
!1523 = !DILocation(line: 1736, column: 12, scope: !1476, inlinedAt: !1494)
!1524 = !DILocation(line: 1746, column: 3, scope: !1525, inlinedAt: !1494)
!1525 = distinct !DILexicalBlock(scope: !1476, file: !406, line: 1746, column: 3)
!1526 = !DILocation(line: 1749, column: 5, scope: !1527, inlinedAt: !1494)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !406, line: 1749, column: 5)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !406, line: 1747, column: 3)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !406, line: 1746, column: 3)
!1530 = !DILocation(line: 1750, column: 21, scope: !1531, inlinedAt: !1494)
!1531 = distinct !DILexicalBlock(scope: !1527, file: !406, line: 1749, column: 5)
!1532 = !DILocation(line: 1750, column: 12, scope: !1531, inlinedAt: !1494)
!1533 = !DILocation(line: 1750, column: 61, scope: !1531, inlinedAt: !1494)
!1534 = !DILocalVariable(name: "x", arg: 1, scope: !1535, file: !406, line: 700, type: !1405)
!1535 = distinct !DISubprogram(name: "MagickAbsoluteValue", scope: !406, file: !406, line: 700, type: !1536, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!396, !1405}
!1538 = !{!1534}
!1539 = !DILocation(line: 0, scope: !1535, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 1750, column: 40, scope: !1531, inlinedAt: !1494)
!1541 = !DILocation(line: 702, column: 7, scope: !1535, inlinedAt: !1540)
!1542 = !DILocation(line: 1750, column: 34, scope: !1531, inlinedAt: !1494)
!1543 = !DILocation(line: 1750, column: 10, scope: !1531, inlinedAt: !1494)
!1544 = !DILocation(line: 1749, column: 26, scope: !1531, inlinedAt: !1494)
!1545 = !DILocation(line: 1749, column: 17, scope: !1531, inlinedAt: !1494)
!1546 = distinct !{!1546, !1526, !1547, !803, !804}
!1547 = !DILocation(line: 1750, column: 64, scope: !1527, inlinedAt: !1494)
!1548 = !DILocation(line: 1751, column: 47, scope: !1528, inlinedAt: !1494)
!1549 = !DILocation(line: 1751, column: 24, scope: !1528, inlinedAt: !1494)
!1550 = !DILocation(line: 1751, column: 5, scope: !1528, inlinedAt: !1494)
!1551 = !DILocation(line: 1751, column: 23, scope: !1528, inlinedAt: !1494)
!1552 = !DILocation(line: 1746, column: 24, scope: !1529, inlinedAt: !1494)
!1553 = !DILocation(line: 1746, column: 15, scope: !1529, inlinedAt: !1494)
!1554 = distinct !{!1554, !1524, !1555, !803, !804}
!1555 = !DILocation(line: 1752, column: 3, scope: !1525, inlinedAt: !1494)
!1556 = !DILocation(line: 1753, column: 20, scope: !1476, inlinedAt: !1494)
!1557 = !DILocalVariable(name: "histogram", arg: 1, scope: !1558, file: !406, line: 894, type: !1561)
!1558 = distinct !DISubprogram(name: "DerivativeHistogram", scope: !406, file: !406, line: 894, type: !1559, scopeLine: 896, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1562)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{null, !1561, !666}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1562 = !{!1557, !1563, !1564, !1565}
!1563 = !DILocalVariable(name: "derivative", arg: 2, scope: !1558, file: !406, line: 895, type: !666)
!1564 = !DILocalVariable(name: "i", scope: !1558, file: !406, line: 898, type: !396)
!1565 = !DILocalVariable(name: "n", scope: !1558, file: !406, line: 899, type: !396)
!1566 = !DILocation(line: 0, scope: !1558, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 1580, column: 5, scope: !1472)
!1568 = !DILocation(line: 905, column: 23, scope: !1558, inlinedAt: !1567)
!1569 = !DILocation(line: 905, column: 40, scope: !1558, inlinedAt: !1567)
!1570 = !DILocation(line: 905, column: 39, scope: !1558, inlinedAt: !1567)
!1571 = !DILocation(line: 905, column: 35, scope: !1558, inlinedAt: !1567)
!1572 = !DILocation(line: 905, column: 57, scope: !1558, inlinedAt: !1567)
!1573 = !DILocation(line: 905, column: 52, scope: !1558, inlinedAt: !1567)
!1574 = !DILocation(line: 905, column: 17, scope: !1558, inlinedAt: !1567)
!1575 = !DILocation(line: 905, column: 16, scope: !1558, inlinedAt: !1567)
!1576 = !DILocation(line: 906, column: 22, scope: !1558, inlinedAt: !1567)
!1577 = !DILocation(line: 906, column: 41, scope: !1558, inlinedAt: !1567)
!1578 = !DILocation(line: 906, column: 36, scope: !1558, inlinedAt: !1567)
!1579 = !DILocation(line: 906, column: 60, scope: !1558, inlinedAt: !1567)
!1580 = !DILocation(line: 906, column: 55, scope: !1558, inlinedAt: !1567)
!1581 = !DILocation(line: 906, column: 17, scope: !1558, inlinedAt: !1567)
!1582 = !DILocation(line: 906, column: 16, scope: !1558, inlinedAt: !1567)
!1583 = !DILocation(line: 910, column: 3, scope: !1584, inlinedAt: !1567)
!1584 = distinct !DILexicalBlock(scope: !1558, file: !406, line: 910, column: 3)
!1585 = !DILocation(line: 911, column: 31, scope: !1586, inlinedAt: !1567)
!1586 = distinct !DILexicalBlock(scope: !1584, file: !406, line: 910, column: 3)
!1587 = !DILocation(line: 911, column: 20, scope: !1586, inlinedAt: !1567)
!1588 = !DILocation(line: 911, column: 46, scope: !1586, inlinedAt: !1567)
!1589 = !DILocation(line: 911, column: 35, scope: !1586, inlinedAt: !1567)
!1590 = !DILocation(line: 911, column: 34, scope: !1586, inlinedAt: !1567)
!1591 = !DILocation(line: 911, column: 19, scope: !1586, inlinedAt: !1567)
!1592 = !DILocation(line: 911, column: 5, scope: !1586, inlinedAt: !1567)
!1593 = !DILocation(line: 911, column: 18, scope: !1586, inlinedAt: !1567)
!1594 = !DILocation(line: 910, column: 15, scope: !1586, inlinedAt: !1567)
!1595 = distinct !{!1595, !1583, !1596, !803, !804}
!1596 = !DILocation(line: 911, column: 51, scope: !1584, inlinedAt: !1567)
!1597 = !DILocation(line: 0, scope: !1558, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 1581, column: 5, scope: !1472)
!1599 = !DILocation(line: 905, column: 23, scope: !1558, inlinedAt: !1598)
!1600 = !DILocation(line: 905, column: 40, scope: !1558, inlinedAt: !1598)
!1601 = !DILocation(line: 905, column: 39, scope: !1558, inlinedAt: !1598)
!1602 = !DILocation(line: 905, column: 35, scope: !1558, inlinedAt: !1598)
!1603 = !DILocation(line: 905, column: 57, scope: !1558, inlinedAt: !1598)
!1604 = !DILocation(line: 905, column: 52, scope: !1558, inlinedAt: !1598)
!1605 = !DILocation(line: 905, column: 17, scope: !1558, inlinedAt: !1598)
!1606 = !DILocation(line: 905, column: 16, scope: !1558, inlinedAt: !1598)
!1607 = !DILocation(line: 906, column: 22, scope: !1558, inlinedAt: !1598)
!1608 = !DILocation(line: 906, column: 41, scope: !1558, inlinedAt: !1598)
!1609 = !DILocation(line: 906, column: 36, scope: !1558, inlinedAt: !1598)
!1610 = !DILocation(line: 906, column: 60, scope: !1558, inlinedAt: !1598)
!1611 = !DILocation(line: 906, column: 55, scope: !1558, inlinedAt: !1598)
!1612 = !DILocation(line: 906, column: 17, scope: !1558, inlinedAt: !1598)
!1613 = !DILocation(line: 906, column: 16, scope: !1558, inlinedAt: !1598)
!1614 = !DILocation(line: 910, column: 3, scope: !1584, inlinedAt: !1598)
!1615 = !DILocation(line: 911, column: 31, scope: !1586, inlinedAt: !1598)
!1616 = !DILocation(line: 911, column: 20, scope: !1586, inlinedAt: !1598)
!1617 = !DILocation(line: 911, column: 46, scope: !1586, inlinedAt: !1598)
!1618 = !DILocation(line: 911, column: 35, scope: !1586, inlinedAt: !1598)
!1619 = !DILocation(line: 911, column: 34, scope: !1586, inlinedAt: !1598)
!1620 = !DILocation(line: 911, column: 19, scope: !1586, inlinedAt: !1598)
!1621 = !DILocation(line: 911, column: 5, scope: !1586, inlinedAt: !1598)
!1622 = !DILocation(line: 911, column: 18, scope: !1586, inlinedAt: !1598)
!1623 = !DILocation(line: 910, column: 15, scope: !1586, inlinedAt: !1598)
!1624 = distinct !{!1624, !1614, !1625, !803, !804}
!1625 = !DILocation(line: 911, column: 51, scope: !1584, inlinedAt: !1598)
!1626 = !DILocation(line: 1907, column: 10, scope: !1627, inlinedAt: !1639)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !406, line: 1907, column: 9)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !406, line: 1906, column: 3)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !406, line: 1906, column: 3)
!1630 = distinct !DISubprogram(name: "ZeroCrossHistogram", scope: !406, file: !406, line: 1894, type: !1631, scopeLine: 1896, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1633)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{null, !666, !1479, !401}
!1633 = !{!1634, !1635, !1636, !1637, !1638}
!1634 = !DILocalVariable(name: "second_derivative", arg: 1, scope: !1630, file: !406, line: 1894, type: !666)
!1635 = !DILocalVariable(name: "smooth_threshold", arg: 2, scope: !1630, file: !406, line: 1895, type: !1479)
!1636 = !DILocalVariable(name: "crossings", arg: 3, scope: !1630, file: !406, line: 1895, type: !401)
!1637 = !DILocalVariable(name: "i", scope: !1630, file: !406, line: 1898, type: !396)
!1638 = !DILocalVariable(name: "parity", scope: !1630, file: !406, line: 1901, type: !396)
!1639 = distinct !DILocation(line: 1582, column: 5, scope: !1472)
!1640 = !DILocation(line: 0, scope: !1630, inlinedAt: !1639)
!1641 = !DILocation(line: 1907, column: 31, scope: !1627, inlinedAt: !1639)
!1642 = !DILocation(line: 1907, column: 51, scope: !1627, inlinedAt: !1639)
!1643 = !DILocation(line: 1909, column: 27, scope: !1627, inlinedAt: !1639)
!1644 = !DILocation(line: 1909, column: 7, scope: !1627, inlinedAt: !1639)
!1645 = !DILocation(line: 1906, column: 24, scope: !1628, inlinedAt: !1639)
!1646 = !DILocation(line: 1906, column: 15, scope: !1628, inlinedAt: !1639)
!1647 = !DILocation(line: 1906, column: 3, scope: !1629, inlinedAt: !1639)
!1648 = distinct !{!1648, !1647, !1649, !803, !804}
!1649 = !DILocation(line: 1909, column: 28, scope: !1629, inlinedAt: !1639)
!1650 = !DILocation(line: 1583, column: 24, scope: !1472)
!1651 = !DILocation(line: 1914, column: 3, scope: !1652, inlinedAt: !1639)
!1652 = distinct !DILexicalBlock(scope: !1630, file: !406, line: 1914, column: 3)
!1653 = !DILocation(line: 1916, column: 5, scope: !1654, inlinedAt: !1639)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !406, line: 1915, column: 3)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !406, line: 1914, column: 3)
!1656 = !DILocation(line: 1916, column: 17, scope: !1654, inlinedAt: !1639)
!1657 = !DILocation(line: 1917, column: 9, scope: !1658, inlinedAt: !1639)
!1658 = distinct !DILexicalBlock(scope: !1654, file: !406, line: 1917, column: 9)
!1659 = !DILocation(line: 1917, column: 30, scope: !1658, inlinedAt: !1639)
!1660 = !DILocation(line: 1917, column: 9, scope: !1654, inlinedAt: !1639)
!1661 = !DILocation(line: 1919, column: 20, scope: !1662, inlinedAt: !1639)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !406, line: 1919, column: 13)
!1663 = distinct !DILexicalBlock(scope: !1658, file: !406, line: 1918, column: 7)
!1664 = !DILocation(line: 1919, column: 13, scope: !1663, inlinedAt: !1639)
!1665 = !DILocation(line: 1924, column: 32, scope: !1666, inlinedAt: !1639)
!1666 = distinct !DILexicalBlock(scope: !1658, file: !406, line: 1924, column: 11)
!1667 = !DILocation(line: 1924, column: 11, scope: !1658, inlinedAt: !1639)
!1668 = !DILocation(line: 1926, column: 22, scope: !1669, inlinedAt: !1639)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !406, line: 1926, column: 15)
!1670 = distinct !DILexicalBlock(scope: !1666, file: !406, line: 1925, column: 9)
!1671 = !DILocation(line: 1926, column: 15, scope: !1670, inlinedAt: !1639)
!1672 = !DILocation(line: 0, scope: !1658, inlinedAt: !1639)
!1673 = !DILocation(line: 1914, column: 24, scope: !1655, inlinedAt: !1639)
!1674 = !DILocation(line: 1914, column: 15, scope: !1655, inlinedAt: !1639)
!1675 = distinct !{!1675, !1651, !1676, !803, !804}
!1676 = !DILocation(line: 1930, column: 3, scope: !1652, inlinedAt: !1639)
!1677 = !DILocation(line: 1584, column: 6, scope: !1472)
!1678 = !DILocation(line: 1576, column: 40, scope: !1465)
!1679 = !DILocation(line: 1576, column: 21, scope: !1465)
!1680 = distinct !{!1680, !1467, !1681, !803, !804}
!1681 = !DILocation(line: 1585, column: 3, scope: !1466)
!1682 = !DILocation(line: 1589, column: 3, scope: !1401)
!1683 = !DILocation(line: 1589, column: 23, scope: !1401)
!1684 = !DILocation(line: 1590, column: 3, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1401, file: !406, line: 1590, column: 3)
!1686 = !DILocation(line: 1591, column: 52, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1685, file: !406, line: 1590, column: 3)
!1688 = !DILocation(line: 1591, column: 35, scope: !1687)
!1689 = !DILocation(line: 1591, column: 5, scope: !1687)
!1690 = !DILocation(line: 1591, column: 34, scope: !1687)
!1691 = !DILocation(line: 1590, column: 24, scope: !1687)
!1692 = !DILocation(line: 1590, column: 15, scope: !1687)
!1693 = distinct !{!1693, !1684, !1694, !803, !804}
!1694 = !DILocation(line: 1591, column: 63, scope: !1685)
!1695 = !DILocation(line: 1592, column: 40, scope: !1401)
!1696 = !DILocation(line: 0, scope: !1558, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 1592, column: 3, scope: !1401)
!1698 = !DILocation(line: 905, column: 23, scope: !1558, inlinedAt: !1697)
!1699 = !DILocation(line: 905, column: 40, scope: !1558, inlinedAt: !1697)
!1700 = !DILocation(line: 905, column: 39, scope: !1558, inlinedAt: !1697)
!1701 = !DILocation(line: 905, column: 35, scope: !1558, inlinedAt: !1697)
!1702 = !DILocation(line: 905, column: 57, scope: !1558, inlinedAt: !1697)
!1703 = !DILocation(line: 905, column: 52, scope: !1558, inlinedAt: !1697)
!1704 = !DILocation(line: 905, column: 17, scope: !1558, inlinedAt: !1697)
!1705 = !DILocation(line: 905, column: 16, scope: !1558, inlinedAt: !1697)
!1706 = !DILocation(line: 906, column: 22, scope: !1558, inlinedAt: !1697)
!1707 = !DILocation(line: 906, column: 41, scope: !1558, inlinedAt: !1697)
!1708 = !DILocation(line: 906, column: 36, scope: !1558, inlinedAt: !1697)
!1709 = !DILocation(line: 906, column: 60, scope: !1558, inlinedAt: !1697)
!1710 = !DILocation(line: 906, column: 55, scope: !1558, inlinedAt: !1697)
!1711 = !DILocation(line: 906, column: 17, scope: !1558, inlinedAt: !1697)
!1712 = !DILocation(line: 906, column: 3, scope: !1558, inlinedAt: !1697)
!1713 = !DILocation(line: 906, column: 16, scope: !1558, inlinedAt: !1697)
!1714 = !DILocation(line: 910, column: 3, scope: !1584, inlinedAt: !1697)
!1715 = !DILocation(line: 911, column: 31, scope: !1586, inlinedAt: !1697)
!1716 = !DILocation(line: 911, column: 20, scope: !1586, inlinedAt: !1697)
!1717 = !DILocation(line: 911, column: 46, scope: !1586, inlinedAt: !1697)
!1718 = !DILocation(line: 911, column: 35, scope: !1586, inlinedAt: !1697)
!1719 = !DILocation(line: 911, column: 34, scope: !1586, inlinedAt: !1697)
!1720 = !DILocation(line: 911, column: 19, scope: !1586, inlinedAt: !1697)
!1721 = !DILocation(line: 911, column: 5, scope: !1586, inlinedAt: !1697)
!1722 = !DILocation(line: 911, column: 18, scope: !1586, inlinedAt: !1697)
!1723 = !DILocation(line: 910, column: 15, scope: !1586, inlinedAt: !1697)
!1724 = distinct !{!1724, !1714, !1725, !803, !804}
!1725 = !DILocation(line: 911, column: 51, scope: !1584, inlinedAt: !1697)
!1726 = !DILocation(line: 0, scope: !1558, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 1593, column: 3, scope: !1401)
!1728 = !DILocation(line: 905, column: 23, scope: !1558, inlinedAt: !1727)
!1729 = !DILocation(line: 905, column: 40, scope: !1558, inlinedAt: !1727)
!1730 = !DILocation(line: 905, column: 39, scope: !1558, inlinedAt: !1727)
!1731 = !DILocation(line: 905, column: 35, scope: !1558, inlinedAt: !1727)
!1732 = !DILocation(line: 905, column: 57, scope: !1558, inlinedAt: !1727)
!1733 = !DILocation(line: 905, column: 52, scope: !1558, inlinedAt: !1727)
!1734 = !DILocation(line: 905, column: 17, scope: !1558, inlinedAt: !1727)
!1735 = !DILocation(line: 905, column: 16, scope: !1558, inlinedAt: !1727)
!1736 = !DILocation(line: 906, column: 22, scope: !1558, inlinedAt: !1727)
!1737 = !DILocation(line: 906, column: 41, scope: !1558, inlinedAt: !1727)
!1738 = !DILocation(line: 906, column: 36, scope: !1558, inlinedAt: !1727)
!1739 = !DILocation(line: 906, column: 60, scope: !1558, inlinedAt: !1727)
!1740 = !DILocation(line: 906, column: 55, scope: !1558, inlinedAt: !1727)
!1741 = !DILocation(line: 906, column: 17, scope: !1558, inlinedAt: !1727)
!1742 = !DILocation(line: 906, column: 3, scope: !1558, inlinedAt: !1727)
!1743 = !DILocation(line: 906, column: 16, scope: !1558, inlinedAt: !1727)
!1744 = !DILocation(line: 910, column: 3, scope: !1584, inlinedAt: !1727)
!1745 = !DILocation(line: 911, column: 31, scope: !1586, inlinedAt: !1727)
!1746 = !DILocation(line: 911, column: 20, scope: !1586, inlinedAt: !1727)
!1747 = !DILocation(line: 911, column: 46, scope: !1586, inlinedAt: !1727)
!1748 = !DILocation(line: 911, column: 35, scope: !1586, inlinedAt: !1727)
!1749 = !DILocation(line: 911, column: 34, scope: !1586, inlinedAt: !1727)
!1750 = !DILocation(line: 911, column: 19, scope: !1586, inlinedAt: !1727)
!1751 = !DILocation(line: 911, column: 5, scope: !1586, inlinedAt: !1727)
!1752 = !DILocation(line: 911, column: 18, scope: !1586, inlinedAt: !1727)
!1753 = !DILocation(line: 910, column: 15, scope: !1586, inlinedAt: !1727)
!1754 = distinct !{!1754, !1744, !1755, !803, !804}
!1755 = !DILocation(line: 911, column: 51, scope: !1584, inlinedAt: !1727)
!1756 = !DILocation(line: 1594, column: 40, scope: !1401)
!1757 = !DILocation(line: 0, scope: !1630, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 1594, column: 3, scope: !1401)
!1759 = !DILocation(line: 1906, column: 3, scope: !1629, inlinedAt: !1758)
!1760 = !DILocation(line: 1907, column: 10, scope: !1627, inlinedAt: !1758)
!1761 = !DILocation(line: 1907, column: 31, scope: !1627, inlinedAt: !1758)
!1762 = !DILocation(line: 1907, column: 51, scope: !1627, inlinedAt: !1758)
!1763 = !DILocation(line: 1909, column: 27, scope: !1627, inlinedAt: !1758)
!1764 = !DILocation(line: 1909, column: 7, scope: !1627, inlinedAt: !1758)
!1765 = !DILocation(line: 1906, column: 24, scope: !1628, inlinedAt: !1758)
!1766 = !DILocation(line: 1906, column: 15, scope: !1628, inlinedAt: !1758)
!1767 = distinct !{!1767, !1759, !1768, !803, !804}
!1768 = !DILocation(line: 1909, column: 28, scope: !1629, inlinedAt: !1758)
!1769 = !DILocation(line: 1595, column: 22, scope: !1401)
!1770 = !DILocation(line: 1914, column: 3, scope: !1652, inlinedAt: !1758)
!1771 = !DILocation(line: 1916, column: 5, scope: !1654, inlinedAt: !1758)
!1772 = !DILocation(line: 1916, column: 17, scope: !1654, inlinedAt: !1758)
!1773 = !DILocation(line: 1917, column: 9, scope: !1658, inlinedAt: !1758)
!1774 = !DILocation(line: 1917, column: 30, scope: !1658, inlinedAt: !1758)
!1775 = !DILocation(line: 1917, column: 9, scope: !1654, inlinedAt: !1758)
!1776 = !DILocation(line: 1919, column: 20, scope: !1662, inlinedAt: !1758)
!1777 = !DILocation(line: 1919, column: 13, scope: !1663, inlinedAt: !1758)
!1778 = !DILocation(line: 1924, column: 32, scope: !1666, inlinedAt: !1758)
!1779 = !DILocation(line: 1924, column: 11, scope: !1658, inlinedAt: !1758)
!1780 = !DILocation(line: 1926, column: 22, scope: !1669, inlinedAt: !1758)
!1781 = !DILocation(line: 1926, column: 15, scope: !1670, inlinedAt: !1758)
!1782 = !DILocation(line: 0, scope: !1658, inlinedAt: !1758)
!1783 = !DILocation(line: 1914, column: 24, scope: !1655, inlinedAt: !1758)
!1784 = !DILocation(line: 1914, column: 15, scope: !1655, inlinedAt: !1758)
!1785 = distinct !{!1785, !1770, !1786, !803, !804}
!1786 = !DILocation(line: 1930, column: 3, scope: !1652, inlinedAt: !1758)
!1787 = !DILocation(line: 1597, column: 33, scope: !1401)
!1788 = !DILocation(line: 1599, column: 5, scope: !1401)
!1789 = !DILocalVariable(name: "zero_crossing", arg: 1, scope: !1790, file: !406, line: 721, type: !655)
!1790 = distinct !DISubprogram(name: "ConsolidateCrossings", scope: !406, file: !406, line: 721, type: !1791, scopeLine: 723, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1793)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !655, !1300}
!1793 = !{!1789, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803}
!1794 = !DILocalVariable(name: "number_crossings", arg: 2, scope: !1790, file: !406, line: 722, type: !1300)
!1795 = !DILocalVariable(name: "i", scope: !1790, file: !406, line: 725, type: !396)
!1796 = !DILocalVariable(name: "j", scope: !1790, file: !406, line: 726, type: !396)
!1797 = !DILocalVariable(name: "k", scope: !1790, file: !406, line: 727, type: !396)
!1798 = !DILocalVariable(name: "l", scope: !1790, file: !406, line: 728, type: !396)
!1799 = !DILocalVariable(name: "center", scope: !1790, file: !406, line: 731, type: !396)
!1800 = !DILocalVariable(name: "correct", scope: !1790, file: !406, line: 732, type: !396)
!1801 = !DILocalVariable(name: "count", scope: !1790, file: !406, line: 733, type: !396)
!1802 = !DILocalVariable(name: "left", scope: !1790, file: !406, line: 734, type: !396)
!1803 = !DILocalVariable(name: "right", scope: !1790, file: !406, line: 735, type: !396)
!1804 = !DILocation(line: 0, scope: !1790, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 1603, column: 3, scope: !1401)
!1806 = !DILocation(line: 740, column: 42, scope: !1807, inlinedAt: !1805)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !406, line: 740, column: 3)
!1808 = distinct !DILexicalBlock(scope: !1790, file: !406, line: 740, column: 3)
!1809 = !DILocation(line: 740, column: 3, scope: !1808, inlinedAt: !1805)
!1810 = !DILocation(line: 1607, column: 3, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1401, file: !406, line: 1607, column: 3)
!1812 = distinct !{!1812, !1809, !1813, !803, !804}
!1813 = !DILocation(line: 808, column: 5, scope: !1808, inlinedAt: !1805)
!1814 = !DILocation(line: 0, scope: !1808, inlinedAt: !1805)
!1815 = !DILocation(line: 741, column: 5, scope: !1816, inlinedAt: !1805)
!1816 = distinct !DILexicalBlock(scope: !1807, file: !406, line: 741, column: 5)
!1817 = !DILocation(line: 743, column: 11, scope: !1818, inlinedAt: !1805)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !406, line: 743, column: 11)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !406, line: 742, column: 5)
!1820 = distinct !DILexicalBlock(scope: !1816, file: !406, line: 741, column: 5)
!1821 = !DILocation(line: 743, column: 41, scope: !1818, inlinedAt: !1805)
!1822 = !DILocation(line: 743, column: 11, scope: !1819, inlinedAt: !1805)
!1823 = !DILocation(line: 750, column: 15, scope: !1824, inlinedAt: !1805)
!1824 = distinct !DILexicalBlock(scope: !1819, file: !406, line: 750, column: 7)
!1825 = !DILocation(line: 750, column: 21, scope: !1826, inlinedAt: !1805)
!1826 = distinct !DILexicalBlock(scope: !1824, file: !406, line: 750, column: 7)
!1827 = !DILocation(line: 750, column: 7, scope: !1824, inlinedAt: !1805)
!1828 = !DILocation(line: 751, column: 13, scope: !1829, inlinedAt: !1805)
!1829 = distinct !DILexicalBlock(scope: !1826, file: !406, line: 751, column: 13)
!1830 = !DILocation(line: 751, column: 45, scope: !1829, inlinedAt: !1805)
!1831 = !DILocation(line: 751, column: 13, scope: !1826, inlinedAt: !1805)
!1832 = !DILocation(line: 750, column: 27, scope: !1826, inlinedAt: !1805)
!1833 = distinct !{!1833, !1827, !1834, !803, !804}
!1834 = !DILocation(line: 752, column: 11, scope: !1824, inlinedAt: !1805)
!1835 = !DILocation(line: 0, scope: !1824, inlinedAt: !1805)
!1836 = !DILocalVariable(name: "x", arg: 1, scope: !1837, file: !406, line: 707, type: !1405)
!1837 = distinct !DISubprogram(name: "MagickMax", scope: !406, file: !406, line: 707, type: !1838, scopeLine: 708, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1840)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!396, !1405, !1405}
!1840 = !{!1836, !1841}
!1841 = !DILocalVariable(name: "y", arg: 2, scope: !1837, file: !406, line: 707, type: !1405)
!1842 = !DILocation(line: 0, scope: !1837, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 753, column: 12, scope: !1819, inlinedAt: !1805)
!1844 = !DILocation(line: 755, column: 12, scope: !1845, inlinedAt: !1805)
!1845 = distinct !DILexicalBlock(scope: !1819, file: !406, line: 755, column: 7)
!1846 = !DILocation(line: 755, column: 21, scope: !1847, inlinedAt: !1805)
!1847 = distinct !DILexicalBlock(scope: !1845, file: !406, line: 755, column: 7)
!1848 = !DILocation(line: 755, column: 7, scope: !1845, inlinedAt: !1805)
!1849 = !DILocation(line: 0, scope: !1845, inlinedAt: !1805)
!1850 = !DILocation(line: 756, column: 13, scope: !1851, inlinedAt: !1805)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !406, line: 756, column: 13)
!1852 = !DILocation(line: 756, column: 45, scope: !1851, inlinedAt: !1805)
!1853 = !DILocation(line: 756, column: 13, scope: !1847, inlinedAt: !1805)
!1854 = distinct !{!1854, !1848, !1855, !803, !804}
!1855 = !DILocation(line: 757, column: 11, scope: !1845, inlinedAt: !1805)
!1856 = !DILocalVariable(name: "x", arg: 1, scope: !1857, file: !406, line: 714, type: !1405)
!1857 = distinct !DISubprogram(name: "MagickMin", scope: !406, file: !406, line: 714, type: !1838, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1858)
!1858 = !{!1856, !1859}
!1859 = !DILocalVariable(name: "y", arg: 2, scope: !1857, file: !406, line: 714, type: !1405)
!1860 = !DILocation(line: 0, scope: !1857, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 758, column: 13, scope: !1819, inlinedAt: !1805)
!1862 = !DILocation(line: 762, column: 7, scope: !1863, inlinedAt: !1805)
!1863 = distinct !DILexicalBlock(scope: !1819, file: !406, line: 762, column: 7)
!1864 = !DILocation(line: 763, column: 13, scope: !1865, inlinedAt: !1805)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !406, line: 763, column: 13)
!1866 = distinct !DILexicalBlock(scope: !1863, file: !406, line: 762, column: 7)
!1867 = !DILocation(line: 763, column: 43, scope: !1865, inlinedAt: !1805)
!1868 = !DILocation(line: 763, column: 13, scope: !1866, inlinedAt: !1805)
!1869 = !DILocation(line: 762, column: 27, scope: !1866, inlinedAt: !1805)
!1870 = !DILocation(line: 762, column: 21, scope: !1866, inlinedAt: !1805)
!1871 = distinct !{!1871, !1862, !1872, !803, !804}
!1872 = !DILocation(line: 764, column: 11, scope: !1863, inlinedAt: !1805)
!1873 = !DILocation(line: 0, scope: !1863, inlinedAt: !1805)
!1874 = !DILocation(line: 765, column: 11, scope: !1819, inlinedAt: !1805)
!1875 = !DILocation(line: 771, column: 11, scope: !1876, inlinedAt: !1805)
!1876 = distinct !DILexicalBlock(scope: !1819, file: !406, line: 771, column: 11)
!1877 = !DILocation(line: 771, column: 43, scope: !1876, inlinedAt: !1805)
!1878 = !DILocation(line: 0, scope: !1819, inlinedAt: !1805)
!1879 = !DILocation(line: 771, column: 11, scope: !1819, inlinedAt: !1805)
!1880 = !DILocation(line: 774, column: 25, scope: !1881, inlinedAt: !1805)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !406, line: 774, column: 11)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !406, line: 774, column: 11)
!1883 = distinct !DILexicalBlock(scope: !1876, file: !406, line: 772, column: 9)
!1884 = !DILocation(line: 774, column: 11, scope: !1882, inlinedAt: !1805)
!1885 = !DILocation(line: 775, column: 17, scope: !1886, inlinedAt: !1805)
!1886 = distinct !DILexicalBlock(scope: !1881, file: !406, line: 775, column: 17)
!1887 = !DILocation(line: 775, column: 49, scope: !1886, inlinedAt: !1805)
!1888 = !DILocation(line: 775, column: 17, scope: !1881, inlinedAt: !1805)
!1889 = !DILocation(line: 0, scope: !1882, inlinedAt: !1805)
!1890 = distinct !{!1890, !1884, !1891, !803, !804}
!1891 = !DILocation(line: 776, column: 20, scope: !1882, inlinedAt: !1805)
!1892 = !DILocation(line: 0, scope: !1883, inlinedAt: !1805)
!1893 = !DILocation(line: 777, column: 28, scope: !1894, inlinedAt: !1805)
!1894 = distinct !DILexicalBlock(scope: !1883, file: !406, line: 777, column: 15)
!1895 = !DILocation(line: 777, column: 34, scope: !1894, inlinedAt: !1805)
!1896 = !DILocation(line: 786, column: 25, scope: !1897, inlinedAt: !1805)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !406, line: 786, column: 11)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !406, line: 786, column: 11)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !406, line: 784, column: 9)
!1900 = distinct !DILexicalBlock(scope: !1819, file: !406, line: 783, column: 11)
!1901 = !DILocation(line: 786, column: 11, scope: !1898, inlinedAt: !1805)
!1902 = !DILocation(line: 787, column: 17, scope: !1903, inlinedAt: !1805)
!1903 = distinct !DILexicalBlock(scope: !1897, file: !406, line: 787, column: 17)
!1904 = !DILocation(line: 787, column: 49, scope: !1903, inlinedAt: !1805)
!1905 = !DILocation(line: 787, column: 17, scope: !1897, inlinedAt: !1805)
!1906 = !DILocation(line: 0, scope: !1898, inlinedAt: !1805)
!1907 = distinct !{!1907, !1901, !1908, !803, !804}
!1908 = !DILocation(line: 788, column: 20, scope: !1898, inlinedAt: !1805)
!1909 = !DILocation(line: 0, scope: !1899, inlinedAt: !1805)
!1910 = !DILocation(line: 789, column: 28, scope: !1911, inlinedAt: !1805)
!1911 = distinct !DILexicalBlock(scope: !1899, file: !406, line: 789, column: 15)
!1912 = !DILocation(line: 789, column: 34, scope: !1911, inlinedAt: !1805)
!1913 = !DILocation(line: 798, column: 25, scope: !1914, inlinedAt: !1805)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !406, line: 798, column: 11)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !406, line: 798, column: 11)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !406, line: 796, column: 9)
!1917 = distinct !DILexicalBlock(scope: !1819, file: !406, line: 795, column: 11)
!1918 = !DILocation(line: 798, column: 11, scope: !1915, inlinedAt: !1805)
!1919 = !DILocation(line: 799, column: 17, scope: !1920, inlinedAt: !1805)
!1920 = distinct !DILexicalBlock(scope: !1914, file: !406, line: 799, column: 17)
!1921 = !DILocation(line: 799, column: 49, scope: !1920, inlinedAt: !1805)
!1922 = !DILocation(line: 799, column: 17, scope: !1914, inlinedAt: !1805)
!1923 = !DILocation(line: 0, scope: !1915, inlinedAt: !1805)
!1924 = distinct !{!1924, !1918, !1925, !803, !804}
!1925 = !DILocation(line: 800, column: 20, scope: !1915, inlinedAt: !1805)
!1926 = !DILocation(line: 0, scope: !1916, inlinedAt: !1805)
!1927 = !DILocation(line: 801, column: 28, scope: !1928, inlinedAt: !1805)
!1928 = distinct !DILexicalBlock(scope: !1916, file: !406, line: 801, column: 15)
!1929 = !DILocation(line: 801, column: 34, scope: !1928, inlinedAt: !1805)
!1930 = !DILocation(line: 805, column: 36, scope: !1819, inlinedAt: !1805)
!1931 = !DILocation(line: 806, column: 11, scope: !1819, inlinedAt: !1805)
!1932 = !DILocation(line: 807, column: 9, scope: !1933, inlinedAt: !1805)
!1933 = distinct !DILexicalBlock(scope: !1819, file: !406, line: 806, column: 11)
!1934 = !DILocation(line: 807, column: 44, scope: !1933, inlinedAt: !1805)
!1935 = !DILocation(line: 741, column: 26, scope: !1820, inlinedAt: !1805)
!1936 = !DILocation(line: 741, column: 17, scope: !1820, inlinedAt: !1805)
!1937 = distinct !{!1937, !1815, !1938, !803, !804}
!1938 = !DILocation(line: 808, column: 5, scope: !1816, inlinedAt: !1805)
!1939 = !DILocation(line: 1609, column: 5, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !406, line: 1609, column: 5)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !406, line: 1608, column: 3)
!1942 = distinct !DILexicalBlock(scope: !1811, file: !406, line: 1607, column: 3)
!1943 = !DILocation(line: 1610, column: 11, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !406, line: 1610, column: 11)
!1945 = distinct !DILexicalBlock(scope: !1940, file: !406, line: 1609, column: 5)
!1946 = !DILocation(line: 1610, column: 41, scope: !1944)
!1947 = !DILocation(line: 1610, column: 11, scope: !1945)
!1948 = !DILocation(line: 1609, column: 25, scope: !1945)
!1949 = !DILocation(line: 1609, column: 17, scope: !1945)
!1950 = distinct !{!1950, !1939, !1951, !803, !804}
!1951 = !DILocation(line: 1611, column: 9, scope: !1940)
!1952 = !DILocation(line: 1612, column: 37, scope: !1941)
!1953 = !DILocation(line: 1612, column: 54, scope: !1941)
!1954 = !DILocation(line: 1612, column: 36, scope: !1941)
!1955 = !DILocation(line: 1612, column: 34, scope: !1941)
!1956 = !DILocation(line: 1613, column: 5, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1941, file: !406, line: 1613, column: 5)
!1958 = !DILocation(line: 1614, column: 11, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !406, line: 1614, column: 11)
!1960 = distinct !DILexicalBlock(scope: !1957, file: !406, line: 1613, column: 5)
!1961 = !DILocation(line: 1614, column: 41, scope: !1959)
!1962 = !DILocation(line: 1614, column: 11, scope: !1960)
!1963 = !DILocation(line: 1613, column: 25, scope: !1960)
!1964 = !DILocation(line: 1613, column: 19, scope: !1960)
!1965 = distinct !{!1965, !1956, !1966, !803, !804}
!1966 = !DILocation(line: 1615, column: 9, scope: !1957)
!1967 = !DILocation(line: 1616, column: 39, scope: !1941)
!1968 = !DILocation(line: 1616, column: 38, scope: !1941)
!1969 = !DILocation(line: 1616, column: 5, scope: !1941)
!1970 = !DILocation(line: 1616, column: 36, scope: !1941)
!1971 = !DILocation(line: 1607, column: 47, scope: !1942)
!1972 = !DILocation(line: 1607, column: 15, scope: !1942)
!1973 = distinct !{!1973, !1810, !1974, !803, !804}
!1974 = !DILocation(line: 1617, column: 3, scope: !1811)
!1975 = !DILocalVariable(name: "zero_crossing", arg: 1, scope: !1976, file: !406, line: 1361, type: !1979)
!1976 = distinct !DISubprogram(name: "InitializeIntervalTree", scope: !406, file: !406, line: 1361, type: !1977, scopeLine: 1363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1981)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!643, !1979, !1300}
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!1981 = !{!1975, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991}
!1982 = !DILocalVariable(name: "number_crossings", arg: 2, scope: !1976, file: !406, line: 1362, type: !1300)
!1983 = !DILocalVariable(name: "head", scope: !1976, file: !406, line: 1365, type: !643)
!1984 = !DILocalVariable(name: "list", scope: !1976, file: !406, line: 1366, type: !642)
!1985 = !DILocalVariable(name: "node", scope: !1976, file: !406, line: 1367, type: !643)
!1986 = !DILocalVariable(name: "root", scope: !1976, file: !406, line: 1368, type: !643)
!1987 = !DILocalVariable(name: "i", scope: !1976, file: !406, line: 1371, type: !396)
!1988 = !DILocalVariable(name: "j", scope: !1976, file: !406, line: 1374, type: !396)
!1989 = !DILocalVariable(name: "k", scope: !1976, file: !406, line: 1375, type: !396)
!1990 = !DILocalVariable(name: "left", scope: !1976, file: !406, line: 1376, type: !396)
!1991 = !DILocalVariable(name: "number_nodes", scope: !1976, file: !406, line: 1377, type: !396)
!1992 = !DILocation(line: 0, scope: !1976, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 1621, column: 8, scope: !1401)
!1994 = !DILocation(line: 1373, column: 3, scope: !1976, inlinedAt: !1993)
!1995 = !DILocation(line: 1382, column: 26, scope: !1976, inlinedAt: !1993)
!1996 = !DILocation(line: 1384, column: 12, scope: !1997, inlinedAt: !1993)
!1997 = distinct !DILexicalBlock(scope: !1976, file: !406, line: 1384, column: 7)
!1998 = !DILocation(line: 1384, column: 7, scope: !1976, inlinedAt: !1993)
!1999 = !DILocation(line: 1454, column: 1, scope: !1976, inlinedAt: !1993)
!2000 = !DILocation(line: 1622, column: 7, scope: !1401)
!2001 = !DILocation(line: 1389, column: 25, scope: !1976, inlinedAt: !1993)
!2002 = !DILocation(line: 1391, column: 9, scope: !1976, inlinedAt: !1993)
!2003 = !DILocation(line: 1392, column: 12, scope: !1976, inlinedAt: !1993)
!2004 = !{!2005, !842, i64 0}
!2005 = !{!"_IntervalTree", !842, i64 0, !753, i64 8, !753, i64 16, !842, i64 24, !842, i64 28, !754, i64 32, !754, i64 40}
!2006 = !DILocation(line: 1393, column: 9, scope: !1976, inlinedAt: !1993)
!2007 = !DILocation(line: 1393, column: 13, scope: !1976, inlinedAt: !1993)
!2008 = !{!2005, !753, i64 8}
!2009 = !DILocation(line: 1394, column: 9, scope: !1976, inlinedAt: !1993)
!2010 = !DILocation(line: 1391, column: 16, scope: !1976, inlinedAt: !1993)
!2011 = !DILocation(line: 1394, column: 14, scope: !1976, inlinedAt: !1993)
!2012 = !{!2005, !753, i64 16}
!2013 = !DILocation(line: 1395, column: 3, scope: !2014, inlinedAt: !1993)
!2014 = distinct !DILexicalBlock(scope: !1976, file: !406, line: 1395, column: 3)
!2015 = !DILocation(line: 1400, column: 17, scope: !2016, inlinedAt: !1993)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !406, line: 1396, column: 3)
!2017 = distinct !DILexicalBlock(scope: !2014, file: !406, line: 1395, column: 3)
!2018 = !DILocation(line: 1401, column: 5, scope: !2016, inlinedAt: !1993)
!2019 = !DILocation(line: 1405, column: 19, scope: !2020, inlinedAt: !1993)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !406, line: 1405, column: 5)
!2021 = distinct !DILexicalBlock(scope: !2016, file: !406, line: 1405, column: 5)
!2022 = !DILocation(line: 1405, column: 17, scope: !2020, inlinedAt: !1993)
!2023 = !DILocation(line: 1405, column: 5, scope: !2021, inlinedAt: !1993)
!2024 = !DILocation(line: 1407, column: 12, scope: !2025, inlinedAt: !1993)
!2025 = distinct !DILexicalBlock(scope: !2020, file: !406, line: 1406, column: 5)
!2026 = !DILocation(line: 1408, column: 18, scope: !2025, inlinedAt: !1993)
!2027 = !DILocation(line: 0, scope: !2028, inlinedAt: !1993)
!2028 = distinct !DILexicalBlock(scope: !2025, file: !406, line: 1410, column: 7)
!2029 = !DILocation(line: 1410, column: 38, scope: !2030, inlinedAt: !1993)
!2030 = distinct !DILexicalBlock(scope: !2028, file: !406, line: 1410, column: 7)
!2031 = !DILocation(line: 1410, column: 30, scope: !2030, inlinedAt: !1993)
!2032 = !DILocation(line: 1410, column: 7, scope: !2028, inlinedAt: !1993)
!2033 = !DILocation(line: 1412, column: 13, scope: !2034, inlinedAt: !1993)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !406, line: 1412, column: 13)
!2035 = distinct !DILexicalBlock(scope: !2030, file: !406, line: 1411, column: 7)
!2036 = !DILocation(line: 1412, column: 45, scope: !2034, inlinedAt: !1993)
!2037 = !DILocation(line: 1412, column: 13, scope: !2035, inlinedAt: !1993)
!2038 = !DILocation(line: 1414, column: 22, scope: !2039, inlinedAt: !1993)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !406, line: 1414, column: 17)
!2040 = distinct !DILexicalBlock(scope: !2034, file: !406, line: 1413, column: 11)
!2041 = !DILocation(line: 0, scope: !2039, inlinedAt: !1993)
!2042 = !DILocation(line: 1414, column: 17, scope: !2040, inlinedAt: !1993)
!2043 = !DILocation(line: 1426, column: 42, scope: !2040, inlinedAt: !1993)
!2044 = !DILocation(line: 1426, column: 22, scope: !2040, inlinedAt: !1993)
!2045 = !DILocation(line: 1428, column: 19, scope: !2040, inlinedAt: !1993)
!2046 = !DILocation(line: 1429, column: 19, scope: !2040, inlinedAt: !1993)
!2047 = !DILocation(line: 1428, column: 26, scope: !2040, inlinedAt: !1993)
!2048 = !DILocation(line: 1429, column: 23, scope: !2040, inlinedAt: !1993)
!2049 = !DILocation(line: 1430, column: 19, scope: !2040, inlinedAt: !1993)
!2050 = !DILocation(line: 1430, column: 24, scope: !2040, inlinedAt: !1993)
!2051 = !DILocation(line: 1432, column: 11, scope: !2040, inlinedAt: !1993)
!2052 = !DILocation(line: 0, scope: !2025, inlinedAt: !1993)
!2053 = distinct !{!2053, !2032, !2054, !803, !804}
!2054 = !DILocation(line: 1433, column: 9, scope: !2028, inlinedAt: !1993)
!2055 = !DILocation(line: 1434, column: 25, scope: !2056, inlinedAt: !1993)
!2056 = distinct !DILexicalBlock(scope: !2025, file: !406, line: 1434, column: 11)
!2057 = !DILocation(line: 1434, column: 16, scope: !2056, inlinedAt: !1993)
!2058 = !DILocation(line: 1434, column: 11, scope: !2025, inlinedAt: !1993)
!2059 = !DILocation(line: 1436, column: 42, scope: !2060, inlinedAt: !1993)
!2060 = distinct !DILexicalBlock(scope: !2056, file: !406, line: 1435, column: 9)
!2061 = !DILocation(line: 1436, column: 17, scope: !2060, inlinedAt: !1993)
!2062 = !DILocation(line: 1436, column: 24, scope: !2060, inlinedAt: !1993)
!2063 = !{!2005, !754, i64 32}
!2064 = !DILocation(line: 1439, column: 40, scope: !2060, inlinedAt: !1993)
!2065 = !DILocation(line: 1439, column: 20, scope: !2060, inlinedAt: !1993)
!2066 = !DILocation(line: 1441, column: 17, scope: !2060, inlinedAt: !1993)
!2067 = !DILocation(line: 1442, column: 17, scope: !2060, inlinedAt: !1993)
!2068 = !DILocation(line: 1441, column: 24, scope: !2060, inlinedAt: !1993)
!2069 = !DILocation(line: 1442, column: 21, scope: !2060, inlinedAt: !1993)
!2070 = !DILocation(line: 1443, column: 29, scope: !2060, inlinedAt: !1993)
!2071 = !DILocation(line: 1443, column: 17, scope: !2060, inlinedAt: !1993)
!2072 = !DILocation(line: 1443, column: 22, scope: !2060, inlinedAt: !1993)
!2073 = !DILocation(line: 1444, column: 9, scope: !2060, inlinedAt: !1993)
!2074 = !DILocation(line: 1405, column: 34, scope: !2020, inlinedAt: !1993)
!2075 = distinct !{!2075, !2023, !2076, !803, !804}
!2076 = !DILocation(line: 1445, column: 5, scope: !2021, inlinedAt: !1993)
!2077 = !DILocation(line: 1395, column: 18, scope: !2017, inlinedAt: !1993)
!2078 = distinct !{!2078, !2013, !2079, !803, !804}
!2079 = !DILocation(line: 1446, column: 3, scope: !2014, inlinedAt: !1993)
!2080 = !DILocation(line: 1390, column: 9, scope: !1976, inlinedAt: !1993)
!2081 = !DILocation(line: 1450, column: 19, scope: !1976, inlinedAt: !1993)
!2082 = !{!2005, !754, i64 40}
!2083 = !DILocation(line: 1450, column: 3, scope: !1976, inlinedAt: !1993)
!2084 = !DILocation(line: 1451, column: 23, scope: !1976, inlinedAt: !1993)
!2085 = !DILocation(line: 1451, column: 3, scope: !1976, inlinedAt: !1993)
!2086 = !DILocation(line: 1452, column: 26, scope: !1976, inlinedAt: !1993)
!2087 = !DILocation(line: 1628, column: 15, scope: !1401)
!2088 = !DILocation(line: 1629, column: 40, scope: !1401)
!2089 = !DILocation(line: 1629, column: 3, scope: !1401)
!2090 = !DILocation(line: 1634, column: 15, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !406, line: 1633, column: 3)
!2092 = distinct !DILexicalBlock(scope: !1401, file: !406, line: 1633, column: 3)
!2093 = !DILocation(line: 1635, column: 15, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !406, line: 1635, column: 3)
!2095 = distinct !DILexicalBlock(scope: !1401, file: !406, line: 1635, column: 3)
!2096 = !DILocation(line: 1635, column: 3, scope: !2095)
!2097 = !DILocation(line: 1689, column: 3, scope: !1401)
!2098 = !DILocation(line: 1690, column: 34, scope: !1401)
!2099 = !DILocation(line: 1691, column: 26, scope: !1401)
!2100 = !DILocation(line: 1692, column: 3, scope: !1401)
!2101 = !DILocation(line: 1641, column: 10, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2094, file: !406, line: 1636, column: 3)
!2103 = !DILocation(line: 1642, column: 5, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2102, file: !406, line: 1642, column: 5)
!2105 = !DILocation(line: 1643, column: 11, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !406, line: 1643, column: 11)
!2107 = distinct !DILexicalBlock(scope: !2104, file: !406, line: 1642, column: 5)
!2108 = !DILocation(line: 1643, column: 28, scope: !2106)
!2109 = !DILocation(line: 1643, column: 32, scope: !2106)
!2110 = !DILocation(line: 1643, column: 11, scope: !2107)
!2111 = !DILocation(line: 1644, column: 9, scope: !2106)
!2112 = !DILocation(line: 0, scope: !2102)
!2113 = !DILocation(line: 1642, column: 49, scope: !2107)
!2114 = !DILocation(line: 1642, column: 17, scope: !2107)
!2115 = distinct !{!2115, !2103, !2116, !803, !804}
!2116 = !DILocation(line: 1644, column: 11, scope: !2104)
!2117 = !DILocation(line: 1648, column: 43, scope: !2102)
!2118 = !DILocation(line: 1648, column: 10, scope: !2102)
!2119 = !DILocation(line: 1648, column: 50, scope: !2102)
!2120 = !DILocation(line: 1650, column: 17, scope: !2102)
!2121 = !DILocation(line: 1652, column: 26, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !406, line: 1652, column: 5)
!2123 = distinct !DILexicalBlock(scope: !2102, file: !406, line: 1652, column: 5)
!2124 = !DILocation(line: 1652, column: 5, scope: !2123)
!2125 = !DILocation(line: 1651, column: 11, scope: !2102)
!2126 = !DILocation(line: 1654, column: 11, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2122, file: !406, line: 1653, column: 5)
!2128 = !DILocation(line: 1656, column: 15, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !406, line: 1656, column: 15)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !406, line: 1655, column: 9)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !406, line: 1654, column: 11)
!2132 = !DILocation(line: 1656, column: 45, scope: !2129)
!2133 = !DILocation(line: 1656, column: 15, scope: !2130)
!2134 = !DILocation(line: 1660, column: 13, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2129, file: !406, line: 1657, column: 13)
!2136 = distinct !{!2136, !2124, !2137, !803, !804}
!2137 = !DILocation(line: 1668, column: 5, scope: !2123)
!2138 = !DILocation(line: 1652, column: 43, scope: !2122)
!2139 = !DILocation(line: 1669, column: 5, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2102, file: !406, line: 1669, column: 5)
!2141 = !DILocation(line: 1673, column: 11, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !406, line: 1670, column: 5)
!2143 = distinct !DILexicalBlock(scope: !2140, file: !406, line: 1669, column: 5)
!2144 = !DILocation(line: 1671, column: 17, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2142, file: !406, line: 1671, column: 11)
!2146 = !DILocation(line: 1671, column: 11, scope: !2142)
!2147 = !DILocation(line: 1674, column: 20, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2142, file: !406, line: 1673, column: 11)
!2149 = !DILocation(line: 1674, column: 9, scope: !2148)
!2150 = !DILocation(line: 1674, column: 19, scope: !2148)
!2151 = !DILocation(line: 1669, column: 43, scope: !2143)
!2152 = !DILocation(line: 1669, column: 26, scope: !2143)
!2153 = distinct !{!2153, !2139, !2154, !803, !804}
!2154 = !DILocation(line: 1677, column: 5, scope: !2140)
!2155 = !DILocation(line: 1663, column: 13, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2131, file: !406, line: 1663, column: 13)
!2157 = !DILocation(line: 1663, column: 43, scope: !2156)
!2158 = !DILocation(line: 1663, column: 13, scope: !2131)
!2159 = !DILocation(line: 1667, column: 11, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !406, line: 1664, column: 11)
!2161 = !DILocation(line: 1676, column: 20, scope: !2148)
!2162 = !DILocation(line: 1676, column: 9, scope: !2148)
!2163 = !DILocation(line: 1676, column: 19, scope: !2148)
!2164 = !DILocation(line: 1635, column: 32, scope: !2094)
!2165 = distinct !{!2165, !2096, !2166, !803, !804}
!2166 = !DILocation(line: 1678, column: 3, scope: !2095)
!2167 = !DILocation(line: 1693, column: 1, scope: !1401)
!2168 = !DISubprogram(name: "ResetMagickMemory", scope: !1306, file: !1306, line: 52, type: !2169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!403, !403, !589, !1300}
!2171 = !DISubprogram(name: "AcquireMagickMemory", scope: !1306, file: !1306, line: 40, type: !2172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!403, !1300}
!2174 = !DISubprogram(name: "GetVirtualPixels", scope: !2175, file: !2175, line: 44, type: !2176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!2175 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "71eb387e577d57b17607c7f6f5128e97")
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!425, !692, !1405, !1405, !1300, !1300, !709}
!2178 = distinct !DISubprogram(name: "SegmentImage", scope: !406, file: !406, line: 1795, type: !2179, scopeLine: 1798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2183)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!455, !439, !2181, !2182, !694, !694}
!2181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!2182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!2183 = !{!2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193}
!2184 = !DILocalVariable(name: "image", arg: 1, scope: !2178, file: !406, line: 1795, type: !439)
!2185 = !DILocalVariable(name: "colorspace", arg: 2, scope: !2178, file: !406, line: 1796, type: !2181)
!2186 = !DILocalVariable(name: "verbose", arg: 3, scope: !2178, file: !406, line: 1796, type: !2182)
!2187 = !DILocalVariable(name: "cluster_threshold", arg: 4, scope: !2178, file: !406, line: 1797, type: !694)
!2188 = !DILocalVariable(name: "smooth_threshold", arg: 5, scope: !2178, file: !406, line: 1797, type: !694)
!2189 = !DILocalVariable(name: "previous_colorspace", scope: !2178, file: !406, line: 1800, type: !446)
!2190 = !DILocalVariable(name: "status", scope: !2178, file: !406, line: 1803, type: !455)
!2191 = !DILocalVariable(name: "i", scope: !2178, file: !406, line: 1806, type: !396)
!2192 = !DILocalVariable(name: "extrema", scope: !2178, file: !406, line: 1809, type: !731)
!2193 = !DILocalVariable(name: "histogram", scope: !2178, file: !406, line: 1812, type: !736)
!2194 = !DILocation(line: 0, scope: !2178)
!2195 = !DILocation(line: 1808, column: 3, scope: !2178)
!2196 = !DILocation(line: 1809, column: 6, scope: !2178)
!2197 = !DILocation(line: 1811, column: 3, scope: !2178)
!2198 = !DILocation(line: 1812, column: 6, scope: !2178)
!2199 = !DILocation(line: 1819, column: 14, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2178, file: !406, line: 1819, column: 7)
!2201 = !DILocation(line: 1819, column: 20, scope: !2200)
!2202 = !DILocation(line: 1819, column: 7, scope: !2178)
!2203 = !DILocation(line: 1820, column: 68, scope: !2200)
!2204 = !DILocation(line: 1820, column: 12, scope: !2200)
!2205 = !DILocation(line: 1820, column: 5, scope: !2200)
!2206 = !DILocation(line: 1821, column: 3, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2178, file: !406, line: 1821, column: 3)
!2208 = !DILocation(line: 1823, column: 30, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !406, line: 1822, column: 3)
!2210 = distinct !DILexicalBlock(scope: !2207, file: !406, line: 1821, column: 3)
!2211 = !DILocation(line: 1823, column: 5, scope: !2209)
!2212 = !DILocation(line: 1823, column: 17, scope: !2209)
!2213 = !DILocation(line: 1824, column: 26, scope: !2209)
!2214 = !DILocation(line: 1824, column: 5, scope: !2209)
!2215 = !DILocation(line: 1824, column: 15, scope: !2209)
!2216 = !DILocation(line: 1825, column: 23, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2209, file: !406, line: 1825, column: 9)
!2218 = !DILocation(line: 1825, column: 44, scope: !2217)
!2219 = !DILocation(line: 1827, column: 22, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !406, line: 1827, column: 9)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !406, line: 1827, column: 9)
!2222 = distinct !DILexicalBlock(scope: !2217, file: !406, line: 1826, column: 7)
!2223 = !DILocation(line: 1827, column: 9, scope: !2221)
!2224 = !DILocation(line: 0, scope: !2221)
!2225 = !DILocation(line: 1829, column: 55, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2220, file: !406, line: 1828, column: 9)
!2227 = !DILocation(line: 1829, column: 32, scope: !2226)
!2228 = !DILocation(line: 1829, column: 21, scope: !2226)
!2229 = !DILocation(line: 1830, column: 59, scope: !2226)
!2230 = !DILocation(line: 1830, column: 36, scope: !2226)
!2231 = !DILocation(line: 1830, column: 23, scope: !2226)
!2232 = distinct !{!2232, !2223, !2233, !803, !804}
!2233 = !DILocation(line: 1831, column: 9, scope: !2221)
!2234 = !DILocation(line: 1832, column: 9, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !406, line: 1832, column: 9)
!2236 = distinct !DILexicalBlock(scope: !2222, file: !406, line: 1832, column: 9)
!2237 = !DILocation(line: 1832, column: 9, scope: !2236)
!2238 = !DILocation(line: 1821, column: 32, scope: !2210)
!2239 = !DILocation(line: 1821, column: 15, scope: !2210)
!2240 = distinct !{!2240, !2206, !2241, !803, !804}
!2241 = !DILocation(line: 1835, column: 3, scope: !2207)
!2242 = !DILocation(line: 1839, column: 30, scope: !2178)
!2243 = !{!750, !751, i64 4}
!2244 = !DILocation(line: 1840, column: 10, scope: !2178)
!2245 = !DILocation(line: 1841, column: 47, scope: !2178)
!2246 = !DILocation(line: 1841, column: 3, scope: !2178)
!2247 = !DILocation(line: 1842, column: 21, scope: !2178)
!2248 = !DILocation(line: 1843, column: 22, scope: !2178)
!2249 = !DILocation(line: 1843, column: 54, scope: !2178)
!2250 = !DILocation(line: 1843, column: 5, scope: !2178)
!2251 = !DILocation(line: 1842, column: 10, scope: !2178)
!2252 = !DILocation(line: 1844, column: 21, scope: !2178)
!2253 = !DILocation(line: 1845, column: 54, scope: !2178)
!2254 = !DILocation(line: 1844, column: 10, scope: !2178)
!2255 = !DILocation(line: 1847, column: 5, scope: !2178)
!2256 = !DILocation(line: 1846, column: 21, scope: !2178)
!2257 = !DILocation(line: 1847, column: 54, scope: !2178)
!2258 = !DILocation(line: 1846, column: 10, scope: !2178)
!2259 = !DILocation(line: 1851, column: 33, scope: !2178)
!2260 = !DILocalVariable(name: "image", arg: 1, scope: !2261, file: !406, line: 242, type: !439)
!2261 = distinct !DISubprogram(name: "Classify", scope: !406, file: !406, line: 242, type: !2262, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2265)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!455, !439, !2264, !1479, !1479, !2182}
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!2265 = !{!2260, !2266, !2267, !2268, !2269, !2270, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2287, !2288, !2289, !2290, !2291, !2292, !2296, !2297, !2300, !2304, !2306, !2308, !2309, !2311, !2317, !2318, !2319, !2320, !2321, !2322, !2323}
!2266 = !DILocalVariable(name: "extrema", arg: 2, scope: !2261, file: !406, line: 242, type: !2264)
!2267 = !DILocalVariable(name: "cluster_threshold", arg: 3, scope: !2261, file: !406, line: 243, type: !1479)
!2268 = !DILocalVariable(name: "weighting_exponent", arg: 4, scope: !2261, file: !406, line: 244, type: !1479)
!2269 = !DILocalVariable(name: "verbose", arg: 5, scope: !2261, file: !406, line: 244, type: !2182)
!2270 = !DILocalVariable(name: "image_view", scope: !2261, file: !406, line: 249, type: !2271)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !2273, line: 50, baseType: !2274)
!2273 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !326, line: 160, flags: DIFlagFwdDecl)
!2275 = !DILocalVariable(name: "cluster", scope: !2261, file: !406, line: 252, type: !404)
!2276 = !DILocalVariable(name: "head", scope: !2261, file: !406, line: 253, type: !404)
!2277 = !DILocalVariable(name: "last_cluster", scope: !2261, file: !406, line: 254, type: !404)
!2278 = !DILocalVariable(name: "next_cluster", scope: !2261, file: !406, line: 255, type: !404)
!2279 = !DILocalVariable(name: "exception", scope: !2261, file: !406, line: 258, type: !709)
!2280 = !DILocalVariable(name: "blue", scope: !2261, file: !406, line: 261, type: !412)
!2281 = !DILocalVariable(name: "green", scope: !2261, file: !406, line: 262, type: !412)
!2282 = !DILocalVariable(name: "red", scope: !2261, file: !406, line: 263, type: !412)
!2283 = !DILocalVariable(name: "progress", scope: !2261, file: !406, line: 266, type: !436)
!2284 = !DILocalVariable(name: "free_squares", scope: !2261, file: !406, line: 269, type: !666)
!2285 = !DILocalVariable(name: "status", scope: !2261, file: !406, line: 272, type: !2286)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !4, line: 147, baseType: !5)
!2287 = !DILocalVariable(name: "i", scope: !2261, file: !406, line: 275, type: !396)
!2288 = !DILocalVariable(name: "squares", scope: !2261, file: !406, line: 278, type: !666)
!2289 = !DILocalVariable(name: "number_clusters", scope: !2261, file: !406, line: 281, type: !450)
!2290 = !DILocalVariable(name: "count", scope: !2261, file: !406, line: 284, type: !396)
!2291 = !DILocalVariable(name: "y", scope: !2261, file: !406, line: 285, type: !396)
!2292 = !DILocalVariable(name: "p", scope: !2293, file: !406, line: 361, type: !425)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !406, line: 359, column: 3)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !406, line: 358, column: 3)
!2295 = distinct !DILexicalBlock(scope: !2261, file: !406, line: 358, column: 3)
!2296 = !DILocalVariable(name: "x", scope: !2293, file: !406, line: 364, type: !396)
!2297 = !DILocalVariable(name: "proceed", scope: !2298, file: !406, line: 401, type: !455)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !406, line: 399, column: 7)
!2299 = distinct !DILexicalBlock(scope: !2293, file: !406, line: 398, column: 9)
!2300 = !DILocalVariable(name: "cluster", scope: !2301, file: !406, line: 540, type: !404)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !406, line: 538, column: 3)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !406, line: 537, column: 3)
!2303 = distinct !DILexicalBlock(scope: !2261, file: !406, line: 537, column: 3)
!2304 = !DILocalVariable(name: "p", scope: !2301, file: !406, line: 543, type: !2305)
!2305 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !425)
!2306 = !DILocalVariable(name: "indexes", scope: !2301, file: !406, line: 546, type: !2307)
!2307 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !668)
!2308 = !DILocalVariable(name: "x", scope: !2301, file: !406, line: 549, type: !396)
!2309 = !DILocalVariable(name: "q", scope: !2301, file: !406, line: 552, type: !2310)
!2310 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !462)
!2311 = !DILocalVariable(name: "distance_squared", scope: !2312, file: !406, line: 591, type: !416)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !406, line: 589, column: 9)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !406, line: 588, column: 11)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !406, line: 564, column: 5)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !406, line: 563, column: 5)
!2316 = distinct !DILexicalBlock(scope: !2301, file: !406, line: 563, column: 5)
!2317 = !DILocalVariable(name: "local_minima", scope: !2312, file: !406, line: 592, type: !416)
!2318 = !DILocalVariable(name: "numerator", scope: !2312, file: !406, line: 593, type: !416)
!2319 = !DILocalVariable(name: "ratio", scope: !2312, file: !406, line: 594, type: !416)
!2320 = !DILocalVariable(name: "sum", scope: !2312, file: !406, line: 595, type: !416)
!2321 = !DILocalVariable(name: "j", scope: !2312, file: !406, line: 598, type: !396)
!2322 = !DILocalVariable(name: "k", scope: !2312, file: !406, line: 599, type: !396)
!2323 = !DILocalVariable(name: "proceed", scope: !2324, file: !406, line: 645, type: !455)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !406, line: 643, column: 7)
!2325 = distinct !DILexicalBlock(scope: !2301, file: !406, line: 642, column: 9)
!2326 = !DILocation(line: 0, scope: !2261, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 1851, column: 10, scope: !2178)
!2328 = !DILocation(line: 260, column: 3, scope: !2261, inlinedAt: !2327)
!2329 = !DILocation(line: 261, column: 5, scope: !2261, inlinedAt: !2327)
!2330 = !DILocation(line: 262, column: 5, scope: !2261, inlinedAt: !2327)
!2331 = !DILocation(line: 263, column: 5, scope: !2261, inlinedAt: !2327)
!2332 = !DILocation(line: 292, column: 10, scope: !2261, inlinedAt: !2327)
!2333 = !DILocation(line: 293, column: 10, scope: !2261, inlinedAt: !2327)
!2334 = !DILocation(line: 294, column: 10, scope: !2261, inlinedAt: !2327)
!2335 = !DILocation(line: 0, scope: !829, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 295, column: 10, scope: !2261, inlinedAt: !2327)
!2337 = !DILocation(line: 843, column: 16, scope: !829, inlinedAt: !2336)
!2338 = !DILocation(line: 844, column: 18, scope: !829, inlinedAt: !2336)
!2339 = !DILocation(line: 845, column: 17, scope: !829, inlinedAt: !2336)
!2340 = !DILocation(line: 849, column: 26, scope: !849, inlinedAt: !2336)
!2341 = !DILocation(line: 849, column: 3, scope: !850, inlinedAt: !2336)
!2342 = !DILocation(line: 850, column: 9, scope: !853, inlinedAt: !2336)
!2343 = !DILocation(line: 850, column: 33, scope: !853, inlinedAt: !2336)
!2344 = !DILocation(line: 850, column: 9, scope: !849, inlinedAt: !2336)
!2345 = !DILocation(line: 849, column: 48, scope: !849, inlinedAt: !2336)
!2346 = distinct !{!2346, !2341, !2347, !803, !804}
!2347 = !DILocation(line: 851, column: 7, scope: !850, inlinedAt: !2336)
!2348 = !DILocation(line: 854, column: 16, scope: !829, inlinedAt: !2336)
!2349 = !DILocation(line: 858, column: 26, scope: !862, inlinedAt: !2336)
!2350 = !DILocation(line: 858, column: 3, scope: !863, inlinedAt: !2336)
!2351 = !DILocation(line: 858, column: 48, scope: !862, inlinedAt: !2336)
!2352 = distinct !{!2352, !2350, !2353, !803, !804}
!2353 = !DILocation(line: 860, column: 7, scope: !863, inlinedAt: !2336)
!2354 = !DILocation(line: 859, column: 9, scope: !869, inlinedAt: !2336)
!2355 = !DILocation(line: 859, column: 33, scope: !869, inlinedAt: !2336)
!2356 = !DILocation(line: 859, column: 9, scope: !862, inlinedAt: !2336)
!2357 = !DILocation(line: 861, column: 32, scope: !829, inlinedAt: !2336)
!2358 = !DILocation(line: 858, column: 20, scope: !862, inlinedAt: !2336)
!2359 = !DILocation(line: 861, column: 17, scope: !829, inlinedAt: !2336)
!2360 = !DILocation(line: 0, scope: !829, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 298, column: 12, scope: !2362, inlinedAt: !2327)
!2362 = distinct !DILexicalBlock(scope: !2261, file: !406, line: 296, column: 3)
!2363 = !DILocation(line: 844, column: 18, scope: !829, inlinedAt: !2361)
!2364 = !DILocation(line: 843, column: 16, scope: !829, inlinedAt: !2361)
!2365 = !DILocation(line: 845, column: 17, scope: !829, inlinedAt: !2361)
!2366 = !DILocation(line: 849, column: 3, scope: !850, inlinedAt: !2361)
!2367 = !DILocation(line: 850, column: 9, scope: !853, inlinedAt: !2361)
!2368 = !DILocation(line: 850, column: 33, scope: !853, inlinedAt: !2361)
!2369 = !DILocation(line: 850, column: 9, scope: !849, inlinedAt: !2361)
!2370 = !DILocation(line: 849, column: 48, scope: !849, inlinedAt: !2361)
!2371 = !DILocation(line: 849, column: 26, scope: !849, inlinedAt: !2361)
!2372 = distinct !{!2372, !2366, !2373, !803, !804}
!2373 = !DILocation(line: 851, column: 7, scope: !850, inlinedAt: !2361)
!2374 = !DILocation(line: 854, column: 16, scope: !829, inlinedAt: !2361)
!2375 = !DILocation(line: 858, column: 26, scope: !862, inlinedAt: !2361)
!2376 = !DILocation(line: 858, column: 3, scope: !863, inlinedAt: !2361)
!2377 = !DILocation(line: 858, column: 48, scope: !862, inlinedAt: !2361)
!2378 = distinct !{!2378, !2376, !2379, !803, !804}
!2379 = !DILocation(line: 860, column: 7, scope: !863, inlinedAt: !2361)
!2380 = !DILocation(line: 859, column: 9, scope: !869, inlinedAt: !2361)
!2381 = !DILocation(line: 859, column: 33, scope: !869, inlinedAt: !2361)
!2382 = !DILocation(line: 859, column: 9, scope: !862, inlinedAt: !2361)
!2383 = !DILocation(line: 295, column: 23, scope: !2261, inlinedAt: !2327)
!2384 = !DILocation(line: 861, column: 32, scope: !829, inlinedAt: !2361)
!2385 = !DILocation(line: 858, column: 20, scope: !862, inlinedAt: !2361)
!2386 = !DILocation(line: 861, column: 17, scope: !829, inlinedAt: !2361)
!2387 = !DILocation(line: 0, scope: !829, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 301, column: 14, scope: !2389, inlinedAt: !2327)
!2389 = distinct !DILexicalBlock(scope: !2362, file: !406, line: 299, column: 5)
!2390 = !DILocation(line: 844, column: 18, scope: !829, inlinedAt: !2388)
!2391 = !DILocation(line: 843, column: 16, scope: !829, inlinedAt: !2388)
!2392 = !DILocation(line: 845, column: 17, scope: !829, inlinedAt: !2388)
!2393 = !DILocation(line: 301, column: 7, scope: !2389, inlinedAt: !2327)
!2394 = !DILocation(line: 849, column: 3, scope: !850, inlinedAt: !2388)
!2395 = !DILocation(line: 850, column: 9, scope: !853, inlinedAt: !2388)
!2396 = !DILocation(line: 850, column: 33, scope: !853, inlinedAt: !2388)
!2397 = !DILocation(line: 850, column: 9, scope: !849, inlinedAt: !2388)
!2398 = !DILocation(line: 849, column: 48, scope: !849, inlinedAt: !2388)
!2399 = !DILocation(line: 849, column: 26, scope: !849, inlinedAt: !2388)
!2400 = distinct !{!2400, !2394, !2401, !803, !804}
!2401 = !DILocation(line: 851, column: 7, scope: !850, inlinedAt: !2388)
!2402 = !DILocation(line: 854, column: 16, scope: !829, inlinedAt: !2388)
!2403 = !DILocation(line: 858, column: 26, scope: !862, inlinedAt: !2388)
!2404 = !DILocation(line: 858, column: 3, scope: !863, inlinedAt: !2388)
!2405 = !DILocation(line: 858, column: 48, scope: !862, inlinedAt: !2388)
!2406 = distinct !{!2406, !2404, !2407, !803, !804}
!2407 = !DILocation(line: 860, column: 7, scope: !863, inlinedAt: !2388)
!2408 = !DILocation(line: 859, column: 9, scope: !869, inlinedAt: !2388)
!2409 = !DILocation(line: 859, column: 33, scope: !869, inlinedAt: !2388)
!2410 = !DILocation(line: 859, column: 9, scope: !862, inlinedAt: !2388)
!2411 = !DILocation(line: 298, column: 25, scope: !2362, inlinedAt: !2327)
!2412 = !DILocation(line: 861, column: 32, scope: !829, inlinedAt: !2388)
!2413 = !DILocation(line: 858, column: 20, scope: !862, inlinedAt: !2388)
!2414 = !DILocation(line: 861, column: 17, scope: !829, inlinedAt: !2388)
!2415 = !DILocation(line: 306, column: 18, scope: !2416, inlinedAt: !2327)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !406, line: 306, column: 13)
!2417 = distinct !DILexicalBlock(scope: !2389, file: !406, line: 302, column: 7)
!2418 = !DILocation(line: 0, scope: !2416, inlinedAt: !2327)
!2419 = !DILocation(line: 306, column: 13, scope: !2417, inlinedAt: !2327)
!2420 = !DILocation(line: 308, column: 26, scope: !2421, inlinedAt: !2327)
!2421 = distinct !DILexicalBlock(scope: !2416, file: !406, line: 307, column: 11)
!2422 = !DILocation(line: 311, column: 11, scope: !2421, inlinedAt: !2327)
!2423 = !DILocation(line: 317, column: 21, scope: !2424, inlinedAt: !2327)
!2424 = distinct !DILexicalBlock(scope: !2417, file: !406, line: 317, column: 13)
!2425 = !DILocation(line: 317, column: 13, scope: !2417, inlinedAt: !2327)
!2426 = !DILocation(line: 318, column: 11, scope: !2427, inlinedAt: !2327)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !406, line: 318, column: 11)
!2428 = distinct !DILexicalBlock(scope: !2424, file: !406, line: 318, column: 11)
!2429 = !DILocation(line: 318, column: 11, scope: !2428, inlinedAt: !2327)
!2430 = !DILocation(line: 323, column: 18, scope: !2417, inlinedAt: !2327)
!2431 = !DILocation(line: 323, column: 23, scope: !2417, inlinedAt: !2327)
!2432 = !DILocation(line: 324, column: 18, scope: !2417, inlinedAt: !2327)
!2433 = !DILocation(line: 324, column: 22, scope: !2417, inlinedAt: !2327)
!2434 = !DILocation(line: 325, column: 18, scope: !2417, inlinedAt: !2327)
!2435 = !DILocation(line: 325, column: 24, scope: !2417, inlinedAt: !2327)
!2436 = !DILocation(line: 326, column: 18, scope: !2417, inlinedAt: !2327)
!2437 = !DILocation(line: 326, column: 23, scope: !2417, inlinedAt: !2327)
!2438 = !DILocation(line: 327, column: 22, scope: !2417, inlinedAt: !2327)
!2439 = !DILocation(line: 301, column: 27, scope: !2389, inlinedAt: !2327)
!2440 = distinct !{!2440, !2393, !2441, !803, !804}
!2441 = !DILocation(line: 328, column: 7, scope: !2389, inlinedAt: !2327)
!2442 = !DILocation(line: 331, column: 12, scope: !2443, inlinedAt: !2327)
!2443 = distinct !DILexicalBlock(scope: !2261, file: !406, line: 331, column: 7)
!2444 = !DILocation(line: 331, column: 7, scope: !2261, inlinedAt: !2327)
!2445 = !DILocation(line: 336, column: 27, scope: !2446, inlinedAt: !2327)
!2446 = distinct !DILexicalBlock(scope: !2443, file: !406, line: 332, column: 5)
!2447 = !DILocation(line: 337, column: 19, scope: !2448, inlinedAt: !2327)
!2448 = distinct !DILexicalBlock(scope: !2446, file: !406, line: 337, column: 11)
!2449 = !DILocation(line: 337, column: 11, scope: !2446, inlinedAt: !2327)
!2450 = !DILocation(line: 338, column: 9, scope: !2451, inlinedAt: !2327)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !406, line: 338, column: 9)
!2452 = distinct !DILexicalBlock(scope: !2448, file: !406, line: 338, column: 9)
!2453 = !DILocation(line: 338, column: 9, scope: !2452, inlinedAt: !2327)
!2454 = !DILocation(line: 343, column: 16, scope: !2446, inlinedAt: !2327)
!2455 = !DILocation(line: 343, column: 21, scope: !2446, inlinedAt: !2327)
!2456 = !DILocation(line: 344, column: 16, scope: !2446, inlinedAt: !2327)
!2457 = !DILocation(line: 344, column: 20, scope: !2446, inlinedAt: !2327)
!2458 = !DILocation(line: 345, column: 16, scope: !2446, inlinedAt: !2327)
!2459 = !DILocation(line: 345, column: 22, scope: !2446, inlinedAt: !2327)
!2460 = !DILocation(line: 346, column: 16, scope: !2446, inlinedAt: !2327)
!2461 = !DILocation(line: 346, column: 21, scope: !2446, inlinedAt: !2327)
!2462 = !DILocation(line: 347, column: 20, scope: !2446, inlinedAt: !2327)
!2463 = !DILocation(line: 349, column: 5, scope: !2446, inlinedAt: !2327)
!2464 = !DILocation(line: 357, column: 14, scope: !2261, inlinedAt: !2327)
!2465 = !DILocation(line: 366, column: 55, scope: !2293, inlinedAt: !2327)
!2466 = !DILocation(line: 358, column: 34, scope: !2294, inlinedAt: !2327)
!2467 = !DILocation(line: 358, column: 15, scope: !2294, inlinedAt: !2327)
!2468 = !DILocation(line: 358, column: 3, scope: !2295, inlinedAt: !2327)
!2469 = !DILocation(line: 412, column: 14, scope: !2261, inlinedAt: !2327)
!2470 = !DILocation(line: 419, column: 3, scope: !2471, inlinedAt: !2327)
!2471 = distinct !DILexicalBlock(scope: !2261, file: !406, line: 419, column: 3)
!2472 = !DILocation(line: 366, column: 7, scope: !2293, inlinedAt: !2327)
!2473 = !DILocation(line: 0, scope: !2293, inlinedAt: !2327)
!2474 = !DILocation(line: 367, column: 11, scope: !2475, inlinedAt: !2327)
!2475 = distinct !DILexicalBlock(scope: !2293, file: !406, line: 367, column: 9)
!2476 = !DILocation(line: 367, column: 9, scope: !2293, inlinedAt: !2327)
!2477 = !DILocation(line: 369, column: 17, scope: !2478, inlinedAt: !2327)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !406, line: 369, column: 5)
!2479 = distinct !DILexicalBlock(scope: !2293, file: !406, line: 369, column: 5)
!2480 = !DILocation(line: 369, column: 5, scope: !2479, inlinedAt: !2327)
!2481 = !DILocation(line: 371, column: 7, scope: !2482, inlinedAt: !2327)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !406, line: 371, column: 7)
!2483 = distinct !DILexicalBlock(scope: !2478, file: !406, line: 370, column: 5)
!2484 = !DILocation(line: 0, scope: !1008, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 372, column: 24, scope: !2486, inlinedAt: !2327)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !406, line: 372, column: 13)
!2487 = distinct !DILexicalBlock(scope: !2482, file: !406, line: 371, column: 7)
!2488 = !DILocation(line: 373, column: 28, scope: !2486, inlinedAt: !2327)
!2489 = !DILocation(line: 373, column: 32, scope: !2486, inlinedAt: !2327)
!2490 = !DILocation(line: 372, column: 59, scope: !2486, inlinedAt: !2327)
!2491 = !DILocation(line: 373, column: 46, scope: !2486, inlinedAt: !2327)
!2492 = !DILocation(line: 0, scope: !1008, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 374, column: 24, scope: !2486, inlinedAt: !2327)
!2494 = !DILocation(line: 375, column: 28, scope: !2486, inlinedAt: !2327)
!2495 = !DILocation(line: 375, column: 33, scope: !2486, inlinedAt: !2327)
!2496 = !DILocation(line: 374, column: 59, scope: !2486, inlinedAt: !2327)
!2497 = !DILocation(line: 375, column: 47, scope: !2486, inlinedAt: !2327)
!2498 = !DILocation(line: 376, column: 43, scope: !2486, inlinedAt: !2327)
!2499 = !DILocation(line: 0, scope: !1008, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 376, column: 24, scope: !2486, inlinedAt: !2327)
!2501 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !2500)
!2502 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !2500)
!2503 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !2500)
!2504 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !2500)
!2505 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !2500)
!2506 = !DILocation(line: 376, column: 14, scope: !2486, inlinedAt: !2327)
!2507 = !DILocation(line: 377, column: 30, scope: !2486, inlinedAt: !2327)
!2508 = !DILocation(line: 377, column: 34, scope: !2486, inlinedAt: !2327)
!2509 = !DILocation(line: 376, column: 61, scope: !2486, inlinedAt: !2327)
!2510 = !DILocation(line: 377, column: 48, scope: !2486, inlinedAt: !2327)
!2511 = !DILocation(line: 0, scope: !1008, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 378, column: 24, scope: !2486, inlinedAt: !2327)
!2513 = !DILocation(line: 379, column: 30, scope: !2486, inlinedAt: !2327)
!2514 = !DILocation(line: 379, column: 35, scope: !2486, inlinedAt: !2327)
!2515 = !DILocation(line: 378, column: 61, scope: !2486, inlinedAt: !2327)
!2516 = !DILocation(line: 379, column: 49, scope: !2486, inlinedAt: !2327)
!2517 = !DILocation(line: 380, column: 43, scope: !2486, inlinedAt: !2327)
!2518 = !DILocation(line: 0, scope: !1008, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 380, column: 24, scope: !2486, inlinedAt: !2327)
!2520 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !2519)
!2521 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !2519)
!2522 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !2519)
!2523 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !2519)
!2524 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !2519)
!2525 = !DILocation(line: 380, column: 14, scope: !2486, inlinedAt: !2327)
!2526 = !DILocation(line: 381, column: 29, scope: !2486, inlinedAt: !2327)
!2527 = !DILocation(line: 381, column: 33, scope: !2486, inlinedAt: !2327)
!2528 = !DILocation(line: 380, column: 60, scope: !2486, inlinedAt: !2327)
!2529 = !DILocation(line: 381, column: 47, scope: !2486, inlinedAt: !2327)
!2530 = !DILocation(line: 0, scope: !1008, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 382, column: 24, scope: !2486, inlinedAt: !2327)
!2532 = !DILocation(line: 383, column: 29, scope: !2486, inlinedAt: !2327)
!2533 = !DILocation(line: 383, column: 34, scope: !2486, inlinedAt: !2327)
!2534 = !DILocation(line: 382, column: 60, scope: !2486, inlinedAt: !2327)
!2535 = !DILocation(line: 372, column: 13, scope: !2487, inlinedAt: !2327)
!2536 = !DILocation(line: 117, column: 10, scope: !1008, inlinedAt: !2485)
!2537 = !DILocation(line: 373, column: 24, scope: !2486, inlinedAt: !2327)
!2538 = !DILocation(line: 117, column: 10, scope: !1008, inlinedAt: !2500)
!2539 = !DILocation(line: 377, column: 24, scope: !2486, inlinedAt: !2327)
!2540 = !DILocation(line: 117, column: 10, scope: !1008, inlinedAt: !2519)
!2541 = !DILocation(line: 381, column: 24, scope: !2486, inlinedAt: !2327)
!2542 = !DILocation(line: 0, scope: !1008, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 389, column: 51, scope: !2544, inlinedAt: !2327)
!2544 = distinct !DILexicalBlock(scope: !2486, file: !406, line: 384, column: 11)
!2545 = !DILocation(line: 389, column: 34, scope: !2544, inlinedAt: !2327)
!2546 = !DILocation(line: 389, column: 32, scope: !2544, inlinedAt: !2327)
!2547 = !DILocation(line: 0, scope: !1008, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 391, column: 15, scope: !2544, inlinedAt: !2327)
!2549 = !DILocation(line: 390, column: 36, scope: !2544, inlinedAt: !2327)
!2550 = !DILocation(line: 390, column: 34, scope: !2544, inlinedAt: !2327)
!2551 = !DILocation(line: 0, scope: !1008, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 392, column: 52, scope: !2544, inlinedAt: !2327)
!2553 = !DILocation(line: 392, column: 35, scope: !2544, inlinedAt: !2327)
!2554 = !DILocation(line: 392, column: 33, scope: !2544, inlinedAt: !2327)
!2555 = !DILocation(line: 393, column: 22, scope: !2544, inlinedAt: !2327)
!2556 = !DILocation(line: 393, column: 27, scope: !2544, inlinedAt: !2327)
!2557 = !DILocation(line: 394, column: 13, scope: !2544, inlinedAt: !2327)
!2558 = !DILocation(line: 371, column: 72, scope: !2487, inlinedAt: !2327)
!2559 = !DILocation(line: 371, column: 34, scope: !2487, inlinedAt: !2327)
!2560 = distinct !{!2560, !2481, !2561, !803, !804}
!2561 = !DILocation(line: 395, column: 11, scope: !2482, inlinedAt: !2327)
!2562 = !DILocation(line: 396, column: 8, scope: !2483, inlinedAt: !2327)
!2563 = !DILocation(line: 369, column: 46, scope: !2478, inlinedAt: !2327)
!2564 = distinct !{!2564, !2480, !2565, !803, !804}
!2565 = !DILocation(line: 397, column: 5, scope: !2479, inlinedAt: !2327)
!2566 = !DILocation(line: 398, column: 16, scope: !2299, inlinedAt: !2327)
!2567 = !DILocation(line: 398, column: 33, scope: !2299, inlinedAt: !2327)
!2568 = !DILocation(line: 398, column: 9, scope: !2293, inlinedAt: !2327)
!2569 = !DILocation(line: 406, column: 64, scope: !2298, inlinedAt: !2327)
!2570 = !DILocation(line: 407, column: 20, scope: !2298, inlinedAt: !2327)
!2571 = !DILocation(line: 407, column: 12, scope: !2298, inlinedAt: !2327)
!2572 = !DILocation(line: 0, scope: !1108, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 406, column: 17, scope: !2298, inlinedAt: !2327)
!2574 = !DILocation(line: 30, column: 3, scope: !1108, inlinedAt: !2573)
!2575 = !DILocation(line: 31, column: 5, scope: !1108, inlinedAt: !2573)
!2576 = !DILocation(line: 35, column: 10, scope: !1108, inlinedAt: !2573)
!2577 = !DILocation(line: 36, column: 17, scope: !1108, inlinedAt: !2573)
!2578 = !DILocation(line: 36, column: 63, scope: !1108, inlinedAt: !2573)
!2579 = !DILocation(line: 36, column: 10, scope: !1108, inlinedAt: !2573)
!2580 = !DILocation(line: 37, column: 1, scope: !1108, inlinedAt: !2573)
!2581 = !DILocation(line: 0, scope: !2298, inlinedAt: !2327)
!2582 = !DILocation(line: 408, column: 21, scope: !2583, inlinedAt: !2327)
!2583 = distinct !DILexicalBlock(scope: !2298, file: !406, line: 408, column: 13)
!2584 = !DILocation(line: 408, column: 13, scope: !2298, inlinedAt: !2327)
!2585 = !DILocation(line: 410, column: 7, scope: !2298, inlinedAt: !2327)
!2586 = !DILocation(line: 358, column: 41, scope: !2294, inlinedAt: !2327)
!2587 = distinct !{!2587, !2468, !2588, !803, !804}
!2588 = !DILocation(line: 411, column: 3, scope: !2295, inlinedAt: !2327)
!2589 = !DILocation(line: 355, column: 11, scope: !2261, inlinedAt: !2327)
!2590 = !DILocation(line: 353, column: 9, scope: !2261, inlinedAt: !2327)
!2591 = !DILocation(line: 419, column: 30, scope: !2592, inlinedAt: !2327)
!2592 = distinct !DILexicalBlock(scope: !2471, file: !406, line: 419, column: 3)
!2593 = !DILocation(line: 421, column: 27, scope: !2594, inlinedAt: !2327)
!2594 = distinct !DILexicalBlock(scope: !2592, file: !406, line: 420, column: 3)
!2595 = !DILocation(line: 422, column: 19, scope: !2596, inlinedAt: !2327)
!2596 = distinct !DILexicalBlock(scope: !2594, file: !406, line: 422, column: 9)
!2597 = !DILocation(line: 422, column: 25, scope: !2596, inlinedAt: !2327)
!2598 = !DILocation(line: 422, column: 30, scope: !2596, inlinedAt: !2327)
!2599 = !DILocation(line: 423, column: 10, scope: !2596, inlinedAt: !2327)
!2600 = !DILocation(line: 423, column: 29, scope: !2596, inlinedAt: !2327)
!2601 = !DILocation(line: 423, column: 34, scope: !2596, inlinedAt: !2327)
!2602 = !DILocation(line: 423, column: 52, scope: !2596, inlinedAt: !2327)
!2603 = !DILocation(line: 423, column: 25, scope: !2596, inlinedAt: !2327)
!2604 = !DILocation(line: 422, column: 9, scope: !2594, inlinedAt: !2327)
!2605 = !DILocation(line: 428, column: 18, scope: !2606, inlinedAt: !2327)
!2606 = distinct !DILexicalBlock(scope: !2596, file: !406, line: 424, column: 7)
!2607 = !DILocation(line: 428, column: 20, scope: !2606, inlinedAt: !2327)
!2608 = !DILocation(line: 429, column: 30, scope: !2606, inlinedAt: !2327)
!2609 = !DILocation(line: 429, column: 18, scope: !2606, inlinedAt: !2327)
!2610 = !DILocation(line: 429, column: 28, scope: !2606, inlinedAt: !2327)
!2611 = !DILocation(line: 430, column: 18, scope: !2606, inlinedAt: !2327)
!2612 = !DILocation(line: 430, column: 30, scope: !2606, inlinedAt: !2327)
!2613 = !DILocation(line: 431, column: 18, scope: !2606, inlinedAt: !2327)
!2614 = !DILocation(line: 431, column: 29, scope: !2606, inlinedAt: !2327)
!2615 = !DILocation(line: 432, column: 14, scope: !2606, inlinedAt: !2327)
!2616 = !DILocation(line: 434, column: 9, scope: !2606, inlinedAt: !2327)
!2617 = !DILocation(line: 439, column: 17, scope: !2618, inlinedAt: !2327)
!2618 = distinct !DILexicalBlock(scope: !2594, file: !406, line: 439, column: 9)
!2619 = !DILocation(line: 439, column: 9, scope: !2594, inlinedAt: !2327)
!2620 = !DILocation(line: 442, column: 25, scope: !2618, inlinedAt: !2327)
!2621 = !DILocation(line: 443, column: 25, scope: !2594, inlinedAt: !2327)
!2622 = !DILocation(line: 444, column: 3, scope: !2594, inlinedAt: !2327)
!2623 = distinct !{!2623, !2470, !2624, !803, !804}
!2624 = !DILocation(line: 444, column: 3, scope: !2471, inlinedAt: !2327)
!2625 = !DILocation(line: 348, column: 11, scope: !2446, inlinedAt: !2327)
!2626 = !DILocation(line: 446, column: 15, scope: !2627, inlinedAt: !2327)
!2627 = distinct !DILexicalBlock(scope: !2261, file: !406, line: 446, column: 7)
!2628 = !DILocation(line: 446, column: 7, scope: !2261, inlinedAt: !2327)
!2629 = !DILocation(line: 451, column: 31, scope: !2630, inlinedAt: !2327)
!2630 = distinct !DILexicalBlock(scope: !2627, file: !406, line: 447, column: 5)
!2631 = !DILocation(line: 451, column: 14, scope: !2630, inlinedAt: !2327)
!2632 = !DILocation(line: 452, column: 31, scope: !2630, inlinedAt: !2327)
!2633 = !DILocation(line: 452, column: 14, scope: !2630, inlinedAt: !2327)
!2634 = !DILocation(line: 453, column: 31, scope: !2630, inlinedAt: !2327)
!2635 = !DILocation(line: 453, column: 67, scope: !2630, inlinedAt: !2327)
!2636 = !DILocation(line: 453, column: 14, scope: !2630, inlinedAt: !2327)
!2637 = !DILocation(line: 455, column: 31, scope: !2630, inlinedAt: !2327)
!2638 = !DILocation(line: 455, column: 14, scope: !2630, inlinedAt: !2327)
!2639 = !DILocation(line: 457, column: 31, scope: !2630, inlinedAt: !2327)
!2640 = !DILocation(line: 458, column: 9, scope: !2630, inlinedAt: !2327)
!2641 = !DILocation(line: 457, column: 14, scope: !2630, inlinedAt: !2327)
!2642 = !DILocation(line: 462, column: 31, scope: !2630, inlinedAt: !2327)
!2643 = !DILocation(line: 462, column: 14, scope: !2630, inlinedAt: !2327)
!2644 = !DILocation(line: 463, column: 31, scope: !2630, inlinedAt: !2327)
!2645 = !DILocation(line: 463, column: 14, scope: !2630, inlinedAt: !2327)
!2646 = !DILocation(line: 464, column: 34, scope: !2647, inlinedAt: !2327)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !406, line: 464, column: 7)
!2648 = distinct !DILexicalBlock(scope: !2630, file: !406, line: 464, column: 7)
!2649 = !DILocation(line: 464, column: 7, scope: !2648, inlinedAt: !2327)
!2650 = !DILocation(line: 465, column: 33, scope: !2647, inlinedAt: !2327)
!2651 = !DILocation(line: 466, column: 20, scope: !2647, inlinedAt: !2327)
!2652 = !DILocation(line: 465, column: 67, scope: !2647, inlinedAt: !2327)
!2653 = !DILocation(line: 466, column: 41, scope: !2647, inlinedAt: !2327)
!2654 = !DILocation(line: 466, column: 23, scope: !2647, inlinedAt: !2327)
!2655 = !DILocation(line: 465, column: 16, scope: !2647, inlinedAt: !2327)
!2656 = !DILocation(line: 464, column: 72, scope: !2647, inlinedAt: !2327)
!2657 = distinct !{!2657, !2649, !2658, !803, !804}
!2658 = !DILocation(line: 466, column: 46, scope: !2648, inlinedAt: !2327)
!2659 = !DILocation(line: 470, column: 31, scope: !2630, inlinedAt: !2327)
!2660 = !DILocation(line: 470, column: 14, scope: !2630, inlinedAt: !2327)
!2661 = !DILocation(line: 472, column: 31, scope: !2630, inlinedAt: !2327)
!2662 = !DILocation(line: 472, column: 14, scope: !2630, inlinedAt: !2327)
!2663 = !DILocation(line: 473, column: 7, scope: !2664, inlinedAt: !2327)
!2664 = distinct !DILexicalBlock(scope: !2630, file: !406, line: 473, column: 7)
!2665 = !DILocation(line: 475, column: 33, scope: !2666, inlinedAt: !2327)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !406, line: 474, column: 7)
!2667 = distinct !DILexicalBlock(scope: !2664, file: !406, line: 473, column: 7)
!2668 = !DILocation(line: 476, column: 20, scope: !2666, inlinedAt: !2327)
!2669 = !DILocation(line: 475, column: 65, scope: !2666, inlinedAt: !2327)
!2670 = !DILocation(line: 475, column: 16, scope: !2666, inlinedAt: !2327)
!2671 = !DILocation(line: 477, column: 33, scope: !2666, inlinedAt: !2327)
!2672 = !DILocation(line: 479, column: 24, scope: !2666, inlinedAt: !2327)
!2673 = !DILocation(line: 478, column: 53, scope: !2666, inlinedAt: !2327)
!2674 = !DILocation(line: 479, column: 51, scope: !2666, inlinedAt: !2327)
!2675 = !DILocation(line: 479, column: 29, scope: !2666, inlinedAt: !2327)
!2676 = !DILocation(line: 480, column: 26, scope: !2666, inlinedAt: !2327)
!2677 = !DILocation(line: 479, column: 57, scope: !2666, inlinedAt: !2327)
!2678 = !DILocation(line: 480, column: 55, scope: !2666, inlinedAt: !2327)
!2679 = !DILocation(line: 480, column: 31, scope: !2666, inlinedAt: !2327)
!2680 = !DILocation(line: 481, column: 25, scope: !2666, inlinedAt: !2327)
!2681 = !DILocation(line: 480, column: 61, scope: !2666, inlinedAt: !2327)
!2682 = !DILocation(line: 481, column: 53, scope: !2666, inlinedAt: !2327)
!2683 = !DILocation(line: 481, column: 30, scope: !2666, inlinedAt: !2327)
!2684 = !DILocation(line: 477, column: 16, scope: !2666, inlinedAt: !2327)
!2685 = !DILocation(line: 473, column: 72, scope: !2667, inlinedAt: !2327)
!2686 = !DILocation(line: 473, column: 34, scope: !2667, inlinedAt: !2327)
!2687 = distinct !{!2687, !2663, !2688, !803, !804}
!2688 = !DILocation(line: 482, column: 7, scope: !2664, inlinedAt: !2327)
!2689 = !DILocation(line: 486, column: 31, scope: !2630, inlinedAt: !2327)
!2690 = !DILocation(line: 486, column: 14, scope: !2630, inlinedAt: !2327)
!2691 = !DILocation(line: 488, column: 31, scope: !2630, inlinedAt: !2327)
!2692 = !DILocation(line: 488, column: 14, scope: !2630, inlinedAt: !2327)
!2693 = !DILocation(line: 489, column: 7, scope: !2694, inlinedAt: !2327)
!2694 = distinct !DILexicalBlock(scope: !2630, file: !406, line: 489, column: 7)
!2695 = !DILocation(line: 491, column: 33, scope: !2696, inlinedAt: !2327)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !406, line: 490, column: 7)
!2697 = distinct !DILexicalBlock(scope: !2694, file: !406, line: 489, column: 7)
!2698 = !DILocation(line: 492, column: 20, scope: !2696, inlinedAt: !2327)
!2699 = !DILocation(line: 491, column: 65, scope: !2696, inlinedAt: !2327)
!2700 = !DILocation(line: 491, column: 16, scope: !2696, inlinedAt: !2327)
!2701 = !DILocation(line: 493, column: 33, scope: !2696, inlinedAt: !2327)
!2702 = !DILocation(line: 494, column: 20, scope: !2696, inlinedAt: !2327)
!2703 = !DILocation(line: 494, column: 24, scope: !2696, inlinedAt: !2327)
!2704 = !DILocation(line: 493, column: 55, scope: !2696, inlinedAt: !2327)
!2705 = !DILocation(line: 494, column: 49, scope: !2696, inlinedAt: !2327)
!2706 = !DILocation(line: 494, column: 55, scope: !2696, inlinedAt: !2327)
!2707 = !DILocation(line: 494, column: 31, scope: !2696, inlinedAt: !2327)
!2708 = !DILocation(line: 495, column: 20, scope: !2696, inlinedAt: !2327)
!2709 = !DILocation(line: 495, column: 25, scope: !2696, inlinedAt: !2327)
!2710 = !DILocation(line: 494, column: 62, scope: !2696, inlinedAt: !2327)
!2711 = !DILocation(line: 493, column: 16, scope: !2696, inlinedAt: !2327)
!2712 = !DILocation(line: 489, column: 72, scope: !2697, inlinedAt: !2327)
!2713 = !DILocation(line: 489, column: 34, scope: !2697, inlinedAt: !2327)
!2714 = distinct !{!2714, !2693, !2715, !803, !804}
!2715 = !DILocation(line: 496, column: 7, scope: !2694, inlinedAt: !2327)
!2716 = !DILocation(line: 497, column: 31, scope: !2630, inlinedAt: !2327)
!2717 = !DILocation(line: 497, column: 14, scope: !2630, inlinedAt: !2327)
!2718 = !DILocation(line: 498, column: 5, scope: !2630, inlinedAt: !2327)
!2719 = !DILocation(line: 499, column: 23, scope: !2720, inlinedAt: !2327)
!2720 = distinct !DILexicalBlock(scope: !2261, file: !406, line: 499, column: 7)
!2721 = !DILocation(line: 499, column: 7, scope: !2261, inlinedAt: !2327)
!2722 = !DILocation(line: 500, column: 5, scope: !2723, inlinedAt: !2327)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !406, line: 500, column: 5)
!2724 = distinct !DILexicalBlock(scope: !2720, file: !406, line: 500, column: 5)
!2725 = !DILocation(line: 500, column: 5, scope: !2724, inlinedAt: !2327)
!2726 = !DILocation(line: 504, column: 30, scope: !2261, inlinedAt: !2327)
!2727 = !DILocation(line: 505, column: 15, scope: !2728, inlinedAt: !2327)
!2728 = distinct !DILexicalBlock(scope: !2261, file: !406, line: 505, column: 7)
!2729 = !DILocation(line: 505, column: 7, scope: !2261, inlinedAt: !2327)
!2730 = !DILocation(line: 506, column: 5, scope: !2731, inlinedAt: !2327)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !406, line: 506, column: 5)
!2732 = distinct !DILexicalBlock(scope: !2728, file: !406, line: 506, column: 5)
!2733 = !DILocation(line: 506, column: 5, scope: !2732, inlinedAt: !2327)
!2734 = !DILocation(line: 508, column: 10, scope: !2261, inlinedAt: !2327)
!2735 = !DILocation(line: 509, column: 3, scope: !2736, inlinedAt: !2327)
!2736 = distinct !DILexicalBlock(scope: !2261, file: !406, line: 509, column: 3)
!2737 = !DILocation(line: 510, column: 16, scope: !2738, inlinedAt: !2327)
!2738 = distinct !DILexicalBlock(scope: !2736, file: !406, line: 509, column: 3)
!2739 = !DILocation(line: 510, column: 34, scope: !2738, inlinedAt: !2327)
!2740 = !DILocation(line: 510, column: 5, scope: !2738, inlinedAt: !2327)
!2741 = !DILocation(line: 510, column: 15, scope: !2738, inlinedAt: !2327)
!2742 = !DILocation(line: 509, column: 29, scope: !2738, inlinedAt: !2327)
!2743 = !DILocation(line: 509, column: 20, scope: !2738, inlinedAt: !2327)
!2744 = distinct !{!2744, !2735, !2745, !803, !804}
!2745 = !DILocation(line: 510, column: 52, scope: !2736, inlinedAt: !2327)
!2746 = !DILocation(line: 514, column: 7, scope: !2747, inlinedAt: !2327)
!2747 = distinct !DILexicalBlock(scope: !2261, file: !406, line: 514, column: 7)
!2748 = !DILocation(line: 514, column: 51, scope: !2747, inlinedAt: !2327)
!2749 = !DILocation(line: 514, column: 7, scope: !2261, inlinedAt: !2327)
!2750 = !DILocation(line: 518, column: 30, scope: !2751, inlinedAt: !2327)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !406, line: 518, column: 3)
!2752 = distinct !DILexicalBlock(scope: !2261, file: !406, line: 518, column: 3)
!2753 = !DILocation(line: 518, column: 3, scope: !2752, inlinedAt: !2327)
!2754 = !{!750, !754, i64 72}
!2755 = !DILocation(line: 515, column: 5, scope: !2756, inlinedAt: !2327)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !406, line: 515, column: 5)
!2757 = distinct !DILexicalBlock(scope: !2747, file: !406, line: 515, column: 5)
!2758 = !DILocation(line: 515, column: 5, scope: !2757, inlinedAt: !2327)
!2759 = !DILocation(line: 521, column: 17, scope: !2760, inlinedAt: !2327)
!2760 = distinct !DILexicalBlock(scope: !2751, file: !406, line: 519, column: 3)
!2761 = !DILocation(line: 521, column: 21, scope: !2760, inlinedAt: !2327)
!2762 = !DILocation(line: 521, column: 8, scope: !2760, inlinedAt: !2327)
!2763 = !DILocation(line: 521, column: 27, scope: !2760, inlinedAt: !2327)
!2764 = !DILocation(line: 520, column: 47, scope: !2760, inlinedAt: !2327)
!2765 = !DILocation(line: 0, scope: !1221, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 520, column: 28, scope: !2760, inlinedAt: !2327)
!2767 = !DILocation(line: 366, column: 26, scope: !1221, inlinedAt: !2766)
!2768 = !DILocation(line: 366, column: 25, scope: !1221, inlinedAt: !2766)
!2769 = !DILocation(line: 520, column: 24, scope: !2760, inlinedAt: !2327)
!2770 = !DILocation(line: 520, column: 27, scope: !2760, inlinedAt: !2327)
!2771 = !DILocation(line: 523, column: 17, scope: !2760, inlinedAt: !2327)
!2772 = !DILocation(line: 523, column: 23, scope: !2760, inlinedAt: !2327)
!2773 = !DILocation(line: 523, column: 8, scope: !2760, inlinedAt: !2327)
!2774 = !DILocation(line: 523, column: 29, scope: !2760, inlinedAt: !2327)
!2775 = !DILocation(line: 522, column: 49, scope: !2760, inlinedAt: !2327)
!2776 = !DILocation(line: 0, scope: !1221, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 522, column: 30, scope: !2760, inlinedAt: !2327)
!2778 = !DILocation(line: 366, column: 26, scope: !1221, inlinedAt: !2777)
!2779 = !DILocation(line: 366, column: 25, scope: !1221, inlinedAt: !2777)
!2780 = !DILocation(line: 522, column: 24, scope: !2760, inlinedAt: !2327)
!2781 = !DILocation(line: 522, column: 29, scope: !2760, inlinedAt: !2327)
!2782 = !DILocation(line: 525, column: 17, scope: !2760, inlinedAt: !2327)
!2783 = !DILocation(line: 525, column: 22, scope: !2760, inlinedAt: !2327)
!2784 = !DILocation(line: 525, column: 8, scope: !2760, inlinedAt: !2327)
!2785 = !DILocation(line: 525, column: 28, scope: !2760, inlinedAt: !2327)
!2786 = !DILocation(line: 524, column: 48, scope: !2760, inlinedAt: !2327)
!2787 = !DILocation(line: 0, scope: !1221, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 524, column: 29, scope: !2760, inlinedAt: !2327)
!2789 = !DILocation(line: 366, column: 26, scope: !1221, inlinedAt: !2788)
!2790 = !DILocation(line: 366, column: 25, scope: !1221, inlinedAt: !2788)
!2791 = !DILocation(line: 524, column: 5, scope: !2760, inlinedAt: !2327)
!2792 = !DILocation(line: 524, column: 28, scope: !2760, inlinedAt: !2327)
!2793 = !DILocation(line: 526, column: 6, scope: !2760, inlinedAt: !2327)
!2794 = !DILocation(line: 518, column: 68, scope: !2751, inlinedAt: !2327)
!2795 = distinct !{!2795, !2753, !2796, !803, !804}
!2796 = !DILocation(line: 527, column: 3, scope: !2752, inlinedAt: !2327)
!2797 = !DILocation(line: 532, column: 14, scope: !2261, inlinedAt: !2327)
!2798 = !DILocation(line: 537, column: 34, scope: !2302, inlinedAt: !2327)
!2799 = !DILocation(line: 537, column: 15, scope: !2302, inlinedAt: !2327)
!2800 = !DILocation(line: 537, column: 3, scope: !2303, inlinedAt: !2327)
!2801 = !DILocation(line: 554, column: 16, scope: !2802, inlinedAt: !2327)
!2802 = distinct !DILexicalBlock(scope: !2301, file: !406, line: 554, column: 9)
!2803 = !DILocation(line: 554, column: 9, scope: !2301, inlinedAt: !2327)
!2804 = !DILocation(line: 556, column: 57, scope: !2301, inlinedAt: !2327)
!2805 = !DILocation(line: 556, column: 7, scope: !2301, inlinedAt: !2327)
!2806 = !DILocation(line: 0, scope: !2301, inlinedAt: !2327)
!2807 = !DILocation(line: 557, column: 11, scope: !2808, inlinedAt: !2327)
!2808 = distinct !DILexicalBlock(scope: !2301, file: !406, line: 557, column: 9)
!2809 = !DILocation(line: 557, column: 9, scope: !2301, inlinedAt: !2327)
!2810 = !DILocation(line: 562, column: 13, scope: !2301, inlinedAt: !2327)
!2811 = !DILocation(line: 563, column: 36, scope: !2315, inlinedAt: !2327)
!2812 = !DILocation(line: 563, column: 17, scope: !2315, inlinedAt: !2327)
!2813 = !DILocation(line: 563, column: 5, scope: !2316, inlinedAt: !2327)
!2814 = !DILocation(line: 565, column: 7, scope: !2815, inlinedAt: !2327)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !406, line: 565, column: 7)
!2816 = distinct !DILexicalBlock(scope: !2314, file: !406, line: 565, column: 7)
!2817 = !DILocation(line: 565, column: 7, scope: !2816, inlinedAt: !2327)
!2818 = !DILocation(line: 566, column: 7, scope: !2819, inlinedAt: !2327)
!2819 = distinct !DILexicalBlock(scope: !2314, file: !406, line: 566, column: 7)
!2820 = !DILocation(line: 0, scope: !2312, inlinedAt: !2327)
!2821 = !DILocation(line: 605, column: 42, scope: !2822, inlinedAt: !2327)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !406, line: 605, column: 11)
!2823 = distinct !DILexicalBlock(scope: !2312, file: !406, line: 605, column: 11)
!2824 = !{!750, !753, i64 64}
!2825 = !DILocation(line: 605, column: 23, scope: !2822, inlinedAt: !2327)
!2826 = !DILocation(line: 605, column: 11, scope: !2823, inlinedAt: !2327)
!2827 = !DILocation(line: 0, scope: !1008, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 568, column: 24, scope: !2829, inlinedAt: !2327)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !406, line: 568, column: 13)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !406, line: 567, column: 7)
!2831 = distinct !DILexicalBlock(scope: !2819, file: !406, line: 566, column: 7)
!2832 = !DILocation(line: 569, column: 28, scope: !2829, inlinedAt: !2327)
!2833 = !DILocation(line: 569, column: 32, scope: !2829, inlinedAt: !2327)
!2834 = !DILocation(line: 568, column: 51, scope: !2829, inlinedAt: !2327)
!2835 = !DILocation(line: 569, column: 46, scope: !2829, inlinedAt: !2327)
!2836 = !DILocation(line: 0, scope: !1008, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 570, column: 24, scope: !2829, inlinedAt: !2327)
!2838 = !DILocation(line: 571, column: 28, scope: !2829, inlinedAt: !2327)
!2839 = !DILocation(line: 571, column: 33, scope: !2829, inlinedAt: !2327)
!2840 = !DILocation(line: 570, column: 51, scope: !2829, inlinedAt: !2327)
!2841 = !DILocation(line: 571, column: 47, scope: !2829, inlinedAt: !2327)
!2842 = !DILocation(line: 572, column: 46, scope: !2829, inlinedAt: !2327)
!2843 = !DILocation(line: 0, scope: !1008, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 572, column: 24, scope: !2829, inlinedAt: !2327)
!2845 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !2844)
!2846 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !2844)
!2847 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !2844)
!2848 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !2844)
!2849 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !2844)
!2850 = !DILocation(line: 572, column: 14, scope: !2829, inlinedAt: !2327)
!2851 = !DILocation(line: 573, column: 30, scope: !2829, inlinedAt: !2327)
!2852 = !DILocation(line: 573, column: 34, scope: !2829, inlinedAt: !2327)
!2853 = !DILocation(line: 572, column: 53, scope: !2829, inlinedAt: !2327)
!2854 = !DILocation(line: 573, column: 48, scope: !2829, inlinedAt: !2327)
!2855 = !DILocation(line: 0, scope: !1008, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 574, column: 24, scope: !2829, inlinedAt: !2327)
!2857 = !DILocation(line: 575, column: 30, scope: !2829, inlinedAt: !2327)
!2858 = !DILocation(line: 575, column: 35, scope: !2829, inlinedAt: !2327)
!2859 = !DILocation(line: 574, column: 53, scope: !2829, inlinedAt: !2327)
!2860 = !DILocation(line: 575, column: 49, scope: !2829, inlinedAt: !2327)
!2861 = !DILocation(line: 576, column: 46, scope: !2829, inlinedAt: !2327)
!2862 = !DILocation(line: 0, scope: !1008, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 576, column: 24, scope: !2829, inlinedAt: !2327)
!2864 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !2863)
!2865 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !2863)
!2866 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !2863)
!2867 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !2863)
!2868 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !2863)
!2869 = !DILocation(line: 576, column: 14, scope: !2829, inlinedAt: !2327)
!2870 = !DILocation(line: 577, column: 29, scope: !2829, inlinedAt: !2327)
!2871 = !DILocation(line: 577, column: 33, scope: !2829, inlinedAt: !2327)
!2872 = !DILocation(line: 576, column: 52, scope: !2829, inlinedAt: !2327)
!2873 = !DILocation(line: 577, column: 47, scope: !2829, inlinedAt: !2327)
!2874 = !DILocation(line: 0, scope: !1008, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 578, column: 24, scope: !2829, inlinedAt: !2327)
!2876 = !DILocation(line: 579, column: 29, scope: !2829, inlinedAt: !2327)
!2877 = !DILocation(line: 579, column: 34, scope: !2829, inlinedAt: !2327)
!2878 = !DILocation(line: 578, column: 52, scope: !2829, inlinedAt: !2327)
!2879 = !DILocation(line: 568, column: 13, scope: !2830, inlinedAt: !2327)
!2880 = !DILocation(line: 584, column: 13, scope: !2881, inlinedAt: !2327)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !406, line: 584, column: 13)
!2882 = distinct !DILexicalBlock(scope: !2829, file: !406, line: 580, column: 11)
!2883 = !DILocation(line: 584, column: 13, scope: !2884, inlinedAt: !2327)
!2884 = distinct !DILexicalBlock(scope: !2881, file: !406, line: 584, column: 13)
!2885 = !DILocation(line: 566, column: 72, scope: !2831, inlinedAt: !2327)
!2886 = distinct !{!2886, !2818, !2887, !803, !804}
!2887 = !DILocation(line: 587, column: 7, scope: !2819, inlinedAt: !2327)
!2888 = !DILocation(line: 608, column: 22, scope: !2889, inlinedAt: !2327)
!2889 = distinct !DILexicalBlock(scope: !2822, file: !406, line: 606, column: 11)
!2890 = !DILocation(line: 608, column: 30, scope: !2889, inlinedAt: !2327)
!2891 = !DILocation(line: 609, column: 70, scope: !2889, inlinedAt: !2327)
!2892 = !DILocation(line: 0, scope: !1008, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 609, column: 48, scope: !2889, inlinedAt: !2327)
!2894 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !2893)
!2895 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !2893)
!2896 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !2893)
!2897 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !2893)
!2898 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !2893)
!2899 = !DILocation(line: 609, column: 38, scope: !2889, inlinedAt: !2327)
!2900 = !DILocation(line: 610, column: 44, scope: !2889, inlinedAt: !2327)
!2901 = !DILocation(line: 0, scope: !1008, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 610, column: 25, scope: !2889, inlinedAt: !2327)
!2903 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !2902)
!2904 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !2902)
!2905 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !2902)
!2906 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !2902)
!2907 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !2902)
!2908 = !DILocation(line: 610, column: 15, scope: !2889, inlinedAt: !2327)
!2909 = !DILocation(line: 609, column: 74, scope: !2889, inlinedAt: !2327)
!2910 = !DILocation(line: 609, column: 30, scope: !2889, inlinedAt: !2327)
!2911 = !DILocation(line: 611, column: 55, scope: !2889, inlinedAt: !2327)
!2912 = !DILocation(line: 0, scope: !1008, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 611, column: 33, scope: !2889, inlinedAt: !2327)
!2914 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !2913)
!2915 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !2913)
!2916 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !2913)
!2917 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !2913)
!2918 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !2913)
!2919 = !DILocation(line: 611, column: 23, scope: !2889, inlinedAt: !2327)
!2920 = !DILocation(line: 612, column: 44, scope: !2889, inlinedAt: !2327)
!2921 = !DILocation(line: 0, scope: !1008, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 612, column: 25, scope: !2889, inlinedAt: !2327)
!2923 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !2922)
!2924 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !2922)
!2925 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !2922)
!2926 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !2922)
!2927 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !2922)
!2928 = !DILocation(line: 612, column: 15, scope: !2889, inlinedAt: !2327)
!2929 = !DILocation(line: 611, column: 61, scope: !2889, inlinedAt: !2327)
!2930 = !DILocation(line: 611, column: 15, scope: !2889, inlinedAt: !2327)
!2931 = !DILocation(line: 610, column: 60, scope: !2889, inlinedAt: !2327)
!2932 = !DILocation(line: 613, column: 55, scope: !2889, inlinedAt: !2327)
!2933 = !DILocation(line: 0, scope: !1008, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 613, column: 33, scope: !2889, inlinedAt: !2327)
!2935 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !2934)
!2936 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !2934)
!2937 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !2934)
!2938 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !2934)
!2939 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !2934)
!2940 = !DILocation(line: 613, column: 23, scope: !2889, inlinedAt: !2327)
!2941 = !DILocation(line: 614, column: 44, scope: !2889, inlinedAt: !2327)
!2942 = !DILocation(line: 0, scope: !1008, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 614, column: 25, scope: !2889, inlinedAt: !2327)
!2944 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !2943)
!2945 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !2943)
!2946 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !2943)
!2947 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !2943)
!2948 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !2943)
!2949 = !DILocation(line: 614, column: 15, scope: !2889, inlinedAt: !2327)
!2950 = !DILocation(line: 613, column: 60, scope: !2889, inlinedAt: !2327)
!2951 = !DILocation(line: 613, column: 15, scope: !2889, inlinedAt: !2327)
!2952 = !DILocation(line: 612, column: 62, scope: !2889, inlinedAt: !2327)
!2953 = !DILocation(line: 616, column: 25, scope: !2954, inlinedAt: !2327)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !406, line: 616, column: 13)
!2955 = distinct !DILexicalBlock(scope: !2889, file: !406, line: 616, column: 13)
!2956 = !DILocation(line: 616, column: 13, scope: !2955, inlinedAt: !2327)
!2957 = !DILocation(line: 623, column: 57, scope: !2958, inlinedAt: !2327)
!2958 = distinct !DILexicalBlock(scope: !2954, file: !406, line: 617, column: 13)
!2959 = !DILocation(line: 621, column: 57, scope: !2958, inlinedAt: !2327)
!2960 = !DILocation(line: 619, column: 72, scope: !2958, inlinedAt: !2327)
!2961 = !DILocation(line: 618, column: 24, scope: !2958, inlinedAt: !2327)
!2962 = !DILocation(line: 618, column: 32, scope: !2958, inlinedAt: !2327)
!2963 = !DILocation(line: 0, scope: !1008, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 619, column: 50, scope: !2958, inlinedAt: !2327)
!2965 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !2964)
!2966 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !2964)
!2967 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !2964)
!2968 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !2964)
!2969 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !2964)
!2970 = !DILocation(line: 619, column: 40, scope: !2958, inlinedAt: !2327)
!2971 = !DILocation(line: 620, column: 46, scope: !2958, inlinedAt: !2327)
!2972 = !DILocation(line: 0, scope: !1008, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 620, column: 27, scope: !2958, inlinedAt: !2327)
!2974 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !2973)
!2975 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !2973)
!2976 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !2973)
!2977 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !2973)
!2978 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !2973)
!2979 = !DILocation(line: 620, column: 17, scope: !2958, inlinedAt: !2327)
!2980 = !DILocation(line: 619, column: 76, scope: !2958, inlinedAt: !2327)
!2981 = !DILocation(line: 619, column: 32, scope: !2958, inlinedAt: !2327)
!2982 = !DILocation(line: 0, scope: !1008, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 621, column: 35, scope: !2958, inlinedAt: !2327)
!2984 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !2983)
!2985 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !2983)
!2986 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !2983)
!2987 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !2983)
!2988 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !2983)
!2989 = !DILocation(line: 621, column: 25, scope: !2958, inlinedAt: !2327)
!2990 = !DILocation(line: 622, column: 46, scope: !2958, inlinedAt: !2327)
!2991 = !DILocation(line: 0, scope: !1008, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 622, column: 27, scope: !2958, inlinedAt: !2327)
!2993 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !2992)
!2994 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !2992)
!2995 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !2992)
!2996 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !2992)
!2997 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !2992)
!2998 = !DILocation(line: 622, column: 17, scope: !2958, inlinedAt: !2327)
!2999 = !DILocation(line: 621, column: 63, scope: !2958, inlinedAt: !2327)
!3000 = !DILocation(line: 621, column: 17, scope: !2958, inlinedAt: !2327)
!3001 = !DILocation(line: 620, column: 62, scope: !2958, inlinedAt: !2327)
!3002 = !DILocation(line: 0, scope: !1008, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 623, column: 35, scope: !2958, inlinedAt: !2327)
!3004 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !3003)
!3005 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !3003)
!3006 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !3003)
!3007 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !3003)
!3008 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !3003)
!3009 = !DILocation(line: 623, column: 25, scope: !2958, inlinedAt: !2327)
!3010 = !DILocation(line: 624, column: 46, scope: !2958, inlinedAt: !2327)
!3011 = !DILocation(line: 0, scope: !1008, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 624, column: 27, scope: !2958, inlinedAt: !2327)
!3013 = !DILocation(line: 117, column: 29, scope: !1008, inlinedAt: !3012)
!3014 = !DILocation(line: 117, column: 36, scope: !1008, inlinedAt: !3012)
!3015 = !DILocation(line: 117, column: 61, scope: !1008, inlinedAt: !3012)
!3016 = !DILocation(line: 117, column: 43, scope: !1008, inlinedAt: !3012)
!3017 = !DILocation(line: 117, column: 68, scope: !1008, inlinedAt: !3012)
!3018 = !DILocation(line: 624, column: 17, scope: !2958, inlinedAt: !2327)
!3019 = !DILocation(line: 623, column: 62, scope: !2958, inlinedAt: !2327)
!3020 = !DILocation(line: 623, column: 17, scope: !2958, inlinedAt: !2327)
!3021 = !DILocation(line: 622, column: 64, scope: !2958, inlinedAt: !2327)
!3022 = !DILocation(line: 625, column: 30, scope: !2958, inlinedAt: !2327)
!3023 = !DILocation(line: 626, column: 20, scope: !2958, inlinedAt: !2327)
!3024 = !DILocation(line: 626, column: 18, scope: !2958, inlinedAt: !2327)
!3025 = !DILocation(line: 616, column: 53, scope: !2954, inlinedAt: !2327)
!3026 = !DILocation(line: 616, column: 44, scope: !2954, inlinedAt: !2327)
!3027 = distinct !{!3027, !2956, !3028, !803, !804}
!3028 = !DILocation(line: 627, column: 13, scope: !2955, inlinedAt: !2327)
!3029 = !DILocation(line: 628, column: 22, scope: !3030, inlinedAt: !2327)
!3030 = distinct !DILexicalBlock(scope: !2889, file: !406, line: 628, column: 17)
!3031 = !DILocation(line: 628, column: 30, scope: !3030, inlinedAt: !2327)
!3032 = !DILocation(line: 628, column: 18, scope: !3030, inlinedAt: !2327)
!3033 = !DILocation(line: 628, column: 38, scope: !3030, inlinedAt: !2327)
!3034 = !DILocation(line: 628, column: 46, scope: !3030, inlinedAt: !2327)
!3035 = !DILocation(line: 628, column: 44, scope: !3030, inlinedAt: !2327)
!3036 = !DILocation(line: 628, column: 17, scope: !2889, inlinedAt: !2327)
!3037 = !DILocation(line: 633, column: 30, scope: !3038, inlinedAt: !2327)
!3038 = distinct !DILexicalBlock(scope: !3030, file: !406, line: 629, column: 15)
!3039 = !DILocation(line: 634, column: 17, scope: !3040, inlinedAt: !2327)
!3040 = distinct !DILexicalBlock(scope: !3038, file: !406, line: 634, column: 17)
!3041 = !DILocation(line: 634, column: 17, scope: !3042, inlinedAt: !2327)
!3042 = distinct !DILexicalBlock(scope: !3040, file: !406, line: 634, column: 17)
!3043 = !DILocation(line: 605, column: 51, scope: !2822, inlinedAt: !2327)
!3044 = distinct !{!3044, !2826, !3045, !803, !804}
!3045 = !DILocation(line: 636, column: 11, scope: !2823, inlinedAt: !2327)
!3046 = !DILocation(line: 638, column: 8, scope: !2314, inlinedAt: !2327)
!3047 = !DILocation(line: 563, column: 46, scope: !2315, inlinedAt: !2327)
!3048 = distinct !{!3048, !2813, !3049, !803, !804}
!3049 = !DILocation(line: 639, column: 5, scope: !2316, inlinedAt: !2327)
!3050 = !DILocation(line: 640, column: 9, scope: !3051, inlinedAt: !2327)
!3051 = distinct !DILexicalBlock(scope: !2301, file: !406, line: 640, column: 9)
!3052 = !DILocation(line: 640, column: 60, scope: !3051, inlinedAt: !2327)
!3053 = !DILocation(line: 640, column: 9, scope: !2301, inlinedAt: !2327)
!3054 = !DILocation(line: 642, column: 16, scope: !2325, inlinedAt: !2327)
!3055 = !DILocation(line: 642, column: 33, scope: !2325, inlinedAt: !2327)
!3056 = !DILocation(line: 642, column: 9, scope: !2301, inlinedAt: !2327)
!3057 = !DILocation(line: 650, column: 64, scope: !2324, inlinedAt: !2327)
!3058 = !DILocation(line: 651, column: 20, scope: !2324, inlinedAt: !2327)
!3059 = !DILocation(line: 651, column: 12, scope: !2324, inlinedAt: !2327)
!3060 = !DILocation(line: 0, scope: !1108, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 650, column: 17, scope: !2324, inlinedAt: !2327)
!3062 = !DILocation(line: 30, column: 3, scope: !1108, inlinedAt: !3061)
!3063 = !DILocation(line: 31, column: 5, scope: !1108, inlinedAt: !3061)
!3064 = !DILocation(line: 35, column: 10, scope: !1108, inlinedAt: !3061)
!3065 = !DILocation(line: 36, column: 17, scope: !1108, inlinedAt: !3061)
!3066 = !DILocation(line: 36, column: 63, scope: !1108, inlinedAt: !3061)
!3067 = !DILocation(line: 36, column: 10, scope: !1108, inlinedAt: !3061)
!3068 = !DILocation(line: 37, column: 1, scope: !1108, inlinedAt: !3061)
!3069 = !DILocation(line: 0, scope: !2324, inlinedAt: !2327)
!3070 = !DILocation(line: 652, column: 21, scope: !3071, inlinedAt: !2327)
!3071 = distinct !DILexicalBlock(scope: !2324, file: !406, line: 652, column: 13)
!3072 = !DILocation(line: 652, column: 13, scope: !2324, inlinedAt: !2327)
!3073 = !DILocation(line: 654, column: 7, scope: !2324, inlinedAt: !2327)
!3074 = !DILocation(line: 537, column: 41, scope: !2302, inlinedAt: !2327)
!3075 = distinct !{!3075, !2800, !3076, !803, !804}
!3076 = !DILocation(line: 655, column: 3, scope: !2303, inlinedAt: !2327)
!3077 = !DILocation(line: 656, column: 14, scope: !2261, inlinedAt: !2327)
!3078 = !DILocation(line: 657, column: 11, scope: !2261, inlinedAt: !2327)
!3079 = !DILocation(line: 661, column: 3, scope: !3080, inlinedAt: !2327)
!3080 = distinct !DILexicalBlock(scope: !2261, file: !406, line: 661, column: 3)
!3081 = !DILocation(line: 663, column: 27, scope: !3082, inlinedAt: !2327)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !406, line: 662, column: 3)
!3083 = distinct !DILexicalBlock(scope: !3080, file: !406, line: 661, column: 3)
!3084 = !DILocation(line: 664, column: 25, scope: !3082, inlinedAt: !2327)
!3085 = !DILocation(line: 661, column: 30, scope: !3083, inlinedAt: !2327)
!3086 = distinct !{!3086, !3079, !3087, !803, !804}
!3087 = !DILocation(line: 665, column: 3, scope: !3080, inlinedAt: !2327)
!3088 = !DILocation(line: 668, column: 35, scope: !2261, inlinedAt: !2327)
!3089 = !DILocation(line: 669, column: 3, scope: !2261, inlinedAt: !2327)
!3090 = !DILocation(line: 670, column: 1, scope: !2261, inlinedAt: !2327)
!3091 = !DILocation(line: 1852, column: 10, scope: !2178)
!3092 = !DILocation(line: 1856, column: 3, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !2178, file: !406, line: 1856, column: 3)
!3094 = !DILocation(line: 1858, column: 49, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !406, line: 1857, column: 3)
!3096 = distinct !DILexicalBlock(scope: !3093, file: !406, line: 1856, column: 3)
!3097 = !DILocation(line: 1858, column: 26, scope: !3095)
!3098 = !DILocation(line: 1858, column: 15, scope: !3095)
!3099 = !DILocation(line: 1859, column: 53, scope: !3095)
!3100 = !DILocation(line: 1859, column: 30, scope: !3095)
!3101 = !DILocation(line: 1859, column: 17, scope: !3095)
!3102 = !DILocation(line: 1856, column: 32, scope: !3096)
!3103 = !DILocation(line: 1856, column: 15, scope: !3096)
!3104 = distinct !{!3104, !3092, !3105, !803, !804}
!3105 = !DILocation(line: 1860, column: 3, scope: !3093)
!3106 = !DILocation(line: 1862, column: 1, scope: !2178)
!3107 = !DISubprogram(name: "TransformImageColorspace", scope: !15, file: !15, line: 66, type: !3108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!455, !439, !2181}
!3110 = !DISubprogram(name: "FormatLocaleString", scope: !3111, file: !3111, line: 71, type: !3112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3111 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!396, !3114, !1300, !3115, null}
!3114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !488)
!3115 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !557)
!3116 = !DISubprogram(name: "GetExceptionInfo", scope: !253, file: !253, line: 166, type: !3117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{null, !709}
!3119 = !DISubprogram(name: "GetExceptionMessage", scope: !253, file: !253, line: 137, type: !3120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!488, !673}
!3122 = !DISubprogram(name: "DestroyString", scope: !3123, file: !3123, line: 46, type: !3124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3123 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!488, !488}
!3126 = !DISubprogram(name: "CatchException", scope: !253, file: !253, line: 164, type: !3117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3127 = !DISubprogram(name: "DestroyExceptionInfo", scope: !253, file: !253, line: 148, type: !3128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!709, !709}
!3130 = !DISubprogram(name: "MagickCoreTerminus", scope: !3131, file: !3131, line: 147, type: !3132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3131 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null}
!3134 = distinct !DISubprogram(name: "ActiveNodes", scope: !406, file: !406, line: 1486, type: !3135, scopeLine: 1488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3137)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{null, !642, !395, !643}
!3137 = !{!3138, !3139, !3140}
!3138 = !DILocalVariable(name: "list", arg: 1, scope: !3134, file: !406, line: 1486, type: !642)
!3139 = !DILocalVariable(name: "number_nodes", arg: 2, scope: !3134, file: !406, line: 1486, type: !395)
!3140 = !DILocalVariable(name: "node", arg: 3, scope: !3134, file: !406, line: 1487, type: !643)
!3141 = !DILocation(line: 0, scope: !3134)
!3142 = !DILocation(line: 1489, column: 12, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3134, file: !406, line: 1489, column: 7)
!3144 = !DILocation(line: 1489, column: 7, scope: !3134)
!3145 = !DILocation(line: 1491, column: 13, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3134, file: !406, line: 1491, column: 7)
!3147 = !{!2005, !842, i64 28}
!3148 = !DILocation(line: 1491, column: 32, scope: !3146)
!3149 = !{!2005, !842, i64 24}
!3150 = !DILocation(line: 1491, column: 23, scope: !3146)
!3151 = !DILocation(line: 1491, column: 7, scope: !3134)
!3152 = !DILocation(line: 1493, column: 27, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3146, file: !406, line: 1492, column: 5)
!3154 = !DILocation(line: 1493, column: 7, scope: !3153)
!3155 = !DILocation(line: 1493, column: 30, scope: !3153)
!3156 = !DILocation(line: 1494, column: 43, scope: !3153)
!3157 = !DILocation(line: 1494, column: 7, scope: !3153)
!3158 = !DILocation(line: 0, scope: !3146)
!3159 = !DILocation(line: 1498, column: 43, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3146, file: !406, line: 1497, column: 5)
!3161 = !DILocation(line: 1498, column: 7, scope: !3160)
!3162 = !DILocation(line: 1499, column: 43, scope: !3160)
!3163 = !DILocation(line: 1499, column: 7, scope: !3160)
!3164 = !DILocation(line: 1501, column: 1, scope: !3134)
!3165 = distinct !DISubprogram(name: "FreeNodes", scope: !406, file: !406, line: 1503, type: !3166, scopeLine: 1504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{null, !643}
!3168 = !{!3169}
!3169 = !DILocalVariable(name: "node", arg: 1, scope: !3165, file: !406, line: 1503, type: !643)
!3170 = !DILocation(line: 0, scope: !3165)
!3171 = !DILocation(line: 1505, column: 12, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3165, file: !406, line: 1505, column: 7)
!3173 = !DILocation(line: 1505, column: 7, scope: !3165)
!3174 = !DILocation(line: 1510, column: 1, scope: !3165)
!3175 = !DILocation(line: 1507, column: 19, scope: !3165)
!3176 = !DILocation(line: 1507, column: 3, scope: !3165)
!3177 = !DILocation(line: 1508, column: 19, scope: !3165)
!3178 = !DILocation(line: 1508, column: 3, scope: !3165)
!3179 = !DILocation(line: 1509, column: 25, scope: !3165)
!3180 = distinct !DISubprogram(name: "InitializeList", scope: !406, file: !406, line: 1308, type: !3135, scopeLine: 1310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3181)
!3181 = !{!3182, !3183, !3184}
!3182 = !DILocalVariable(name: "list", arg: 1, scope: !3180, file: !406, line: 1308, type: !642)
!3183 = !DILocalVariable(name: "number_nodes", arg: 2, scope: !3180, file: !406, line: 1308, type: !395)
!3184 = !DILocalVariable(name: "node", arg: 3, scope: !3180, file: !406, line: 1309, type: !643)
!3185 = !DILocation(line: 0, scope: !3180)
!3186 = !DILocation(line: 1311, column: 12, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3180, file: !406, line: 1311, column: 7)
!3188 = !DILocation(line: 1311, column: 7, scope: !3180)
!3189 = !DILocation(line: 1313, column: 13, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3180, file: !406, line: 1313, column: 7)
!3191 = !DILocation(line: 1313, column: 19, scope: !3190)
!3192 = !DILocation(line: 1313, column: 7, scope: !3180)
!3193 = !DILocation(line: 1314, column: 25, scope: !3190)
!3194 = !DILocation(line: 1314, column: 5, scope: !3190)
!3195 = !DILocation(line: 1314, column: 28, scope: !3190)
!3196 = !DILocation(line: 1315, column: 42, scope: !3180)
!3197 = !DILocation(line: 1315, column: 3, scope: !3180)
!3198 = !DILocation(line: 1316, column: 42, scope: !3180)
!3199 = !DILocation(line: 1317, column: 1, scope: !3180)
!3200 = distinct !DISubprogram(name: "Stability", scope: !406, file: !406, line: 1349, type: !3166, scopeLine: 1350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3201)
!3201 = !{!3202}
!3202 = !DILocalVariable(name: "node", arg: 1, scope: !3200, file: !406, line: 1349, type: !643)
!3203 = !DILocation(line: 0, scope: !3200)
!3204 = !DILocation(line: 1351, column: 12, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3200, file: !406, line: 1351, column: 7)
!3206 = !DILocation(line: 1351, column: 7, scope: !3200)
!3207 = !DILocation(line: 1353, column: 13, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3200, file: !406, line: 1353, column: 7)
!3209 = !DILocation(line: 1353, column: 19, scope: !3208)
!3210 = !DILocation(line: 1353, column: 7, scope: !3200)
!3211 = !DILocation(line: 1356, column: 27, scope: !3208)
!3212 = !DILocation(line: 1356, column: 46, scope: !3208)
!3213 = !DILocation(line: 1356, column: 30, scope: !3208)
!3214 = !DILocation(line: 0, scope: !3208)
!3215 = !DILocation(line: 1354, column: 11, scope: !3208)
!3216 = !DILocation(line: 1354, column: 20, scope: !3208)
!3217 = !DILocation(line: 1357, column: 19, scope: !3200)
!3218 = !DILocation(line: 1357, column: 3, scope: !3200)
!3219 = !DILocation(line: 1358, column: 19, scope: !3200)
!3220 = !DILocation(line: 1359, column: 1, scope: !3200)
!3221 = distinct !DISubprogram(name: "MeanStability", scope: !406, file: !406, line: 1319, type: !3166, scopeLine: 1320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3222)
!3222 = !{!3223, !3224, !3225, !3228}
!3223 = !DILocalVariable(name: "node", arg: 1, scope: !3221, file: !406, line: 1319, type: !643)
!3224 = !DILocalVariable(name: "child", scope: !3221, file: !406, line: 1322, type: !643)
!3225 = !DILocalVariable(name: "count", scope: !3226, file: !406, line: 1331, type: !396)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !406, line: 1329, column: 5)
!3227 = distinct !DILexicalBlock(scope: !3221, file: !406, line: 1328, column: 7)
!3228 = !DILocalVariable(name: "sum", scope: !3226, file: !406, line: 1334, type: !416)
!3229 = !DILocation(line: 0, scope: !3221)
!3230 = !DILocation(line: 1324, column: 12, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3221, file: !406, line: 1324, column: 7)
!3232 = !DILocation(line: 1324, column: 7, scope: !3221)
!3233 = !DILocation(line: 1326, column: 9, scope: !3221)
!3234 = !DILocation(line: 1326, column: 23, scope: !3221)
!3235 = !DILocation(line: 1327, column: 15, scope: !3221)
!3236 = !DILocation(line: 1328, column: 13, scope: !3227)
!3237 = !DILocation(line: 1328, column: 7, scope: !3221)
!3238 = !DILocation(line: 0, scope: !3226)
!3239 = !DILocation(line: 1340, column: 21, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3241, file: !406, line: 1339, column: 7)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !406, line: 1338, column: 7)
!3242 = distinct !DILexicalBlock(scope: !3226, file: !406, line: 1338, column: 7)
!3243 = !DILocation(line: 1340, column: 12, scope: !3240)
!3244 = !DILocation(line: 1341, column: 14, scope: !3240)
!3245 = !DILocation(line: 1338, column: 60, scope: !3241)
!3246 = !DILocation(line: 1338, column: 21, scope: !3241)
!3247 = !DILocation(line: 1338, column: 7, scope: !3242)
!3248 = distinct !{!3248, !3247, !3249, !803, !804}
!3249 = !DILocation(line: 1342, column: 7, scope: !3242)
!3250 = !DILocation(line: 1343, column: 32, scope: !3226)
!3251 = !DILocation(line: 1343, column: 31, scope: !3226)
!3252 = !DILocation(line: 1343, column: 27, scope: !3226)
!3253 = !DILocation(line: 1344, column: 5, scope: !3226)
!3254 = !DILocation(line: 1345, column: 23, scope: !3221)
!3255 = !DILocation(line: 1345, column: 3, scope: !3221)
!3256 = !DILocation(line: 1346, column: 23, scope: !3221)
!3257 = !DILocation(line: 1347, column: 1, scope: !3221)
!3258 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !2273, file: !2273, line: 55, type: !3259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!2271, !692, !709}
!3261 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !2273, file: !2273, line: 69, type: !3262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!425, !3264, !1405, !1405, !1300, !1300, !709}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2272)
!3266 = !DISubprogram(name: "DestroyCacheView", scope: !2273, file: !2273, line: 57, type: !3267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!2271, !2271}
!3269 = !DISubprogram(name: "FormatLocaleFile", scope: !3111, file: !3111, line: 67, type: !3270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!396, !3272, !3115, null}
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3274, line: 7, baseType: !3275)
!3274 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3276, line: 49, size: 1728, elements: !3277)
!3276 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!3277 = !{!3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3293, !3295, !3296, !3297, !3299, !3300, !3302, !3306, !3309, !3311, !3314, !3317, !3318, !3319, !3320, !3321}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3275, file: !3276, line: 51, baseType: !589, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3275, file: !3276, line: 54, baseType: !488, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3275, file: !3276, line: 55, baseType: !488, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3275, file: !3276, line: 56, baseType: !488, size: 64, offset: 192)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3275, file: !3276, line: 57, baseType: !488, size: 64, offset: 256)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3275, file: !3276, line: 58, baseType: !488, size: 64, offset: 320)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3275, file: !3276, line: 59, baseType: !488, size: 64, offset: 384)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3275, file: !3276, line: 60, baseType: !488, size: 64, offset: 448)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3275, file: !3276, line: 61, baseType: !488, size: 64, offset: 512)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3275, file: !3276, line: 64, baseType: !488, size: 64, offset: 576)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3275, file: !3276, line: 65, baseType: !488, size: 64, offset: 640)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3275, file: !3276, line: 66, baseType: !488, size: 64, offset: 704)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3275, file: !3276, line: 68, baseType: !3291, size: 64, offset: 768)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3276, line: 36, flags: DIFlagFwdDecl)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3275, file: !3276, line: 70, baseType: !3294, size: 64, offset: 832)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3275, file: !3276, line: 72, baseType: !589, size: 32, offset: 896)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3275, file: !3276, line: 73, baseType: !589, size: 32, offset: 928)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3275, file: !3276, line: 74, baseType: !3298, size: 64, offset: 960)
!3298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !399, line: 152, baseType: !400)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3275, file: !3276, line: 77, baseType: !432, size: 16, offset: 1024)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3275, file: !3276, line: 78, baseType: !3301, size: 8, offset: 1040)
!3301 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3275, file: !3276, line: 79, baseType: !3303, size: 8, offset: 1048)
!3303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 8, elements: !3304)
!3304 = !{!3305}
!3305 = !DISubrange(count: 1)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3275, file: !3276, line: 81, baseType: !3307, size: 64, offset: 1088)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3276, line: 43, baseType: null)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3275, file: !3276, line: 89, baseType: !3310, size: 64, offset: 1152)
!3310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !399, line: 153, baseType: !400)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3275, file: !3276, line: 91, baseType: !3312, size: 64, offset: 1216)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3276, line: 37, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3275, file: !3276, line: 92, baseType: !3315, size: 64, offset: 1280)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3276, line: 38, flags: DIFlagFwdDecl)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3275, file: !3276, line: 93, baseType: !3294, size: 64, offset: 1344)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3275, file: !3276, line: 94, baseType: !403, size: 64, offset: 1408)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3275, file: !3276, line: 95, baseType: !450, size: 64, offset: 1472)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3275, file: !3276, line: 96, baseType: !589, size: 32, offset: 1536)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3275, file: !3276, line: 98, baseType: !3322, size: 160, offset: 1568)
!3322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 160, elements: !3323)
!3323 = !{!3324}
!3324 = !DISubrange(count: 20)
!3325 = !DISubprogram(name: "AcquireImageColormap", scope: !3326, file: !3326, line: 26, type: !3327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3326 = !DIFile(filename: "apps/538.imagick_r/src/magick/colormap.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bbb8514638ae332109008c420bdb541")
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!455, !439, !1300}
!3329 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !2273, file: !2273, line: 53, type: !3259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3330 = !DISubprogram(name: "GetCacheViewAuthenticPixels", scope: !2273, file: !2273, line: 99, type: !3331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!462, !2271, !1405, !1405, !1300, !1300, !709}
!3333 = !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !2273, file: !2273, line: 77, type: !3334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!668, !2271}
!3336 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !2273, file: !2273, line: 89, type: !3337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!455, !2271, !709}
!3339 = !DISubprogram(name: "SyncImage", scope: !77, file: !77, line: 544, type: !3340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1301)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!455, !439}
