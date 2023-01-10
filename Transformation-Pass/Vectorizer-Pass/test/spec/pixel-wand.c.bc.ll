; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/wand/pixel-wand.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/wand/pixel-wand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._PixelWand = type { i64, [4096 x i8], ptr, %struct._MagickPixelPacket, i64, i32, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [87 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/wand/pixel-wand.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s-%.20g\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"PixelWand\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"QuantumDepthMismatch\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%g,%g,%g\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c",%g\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ClearPixelWand(ptr noundef %wand) local_unnamed_addr #0 !dbg !656 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !660, metadata !DIExpression()), !dbg !661
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !662
  %0 = load i32, ptr %debug, align 8, !dbg !662, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !673
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !674

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !675
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 114, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !676
  br label %if.end, !dbg !677

if.end:                                           ; preds = %if.then, %entry
  %exception = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 2, !dbg !678
  %1 = load ptr, ptr %exception, align 8, !dbg !678, !tbaa !679
  tail call void @ClearMagickException(ptr noundef %1) #10, !dbg !680
  %colorspace = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 1, !dbg !681
  store i32 13, ptr %colorspace, align 4, !dbg !682, !tbaa !683
  %call1 = tail call i32 @IsEventLogging() #10, !dbg !684
  store i32 %call1, ptr %debug, align 8, !dbg !685, !tbaa !664
  ret void, !dbg !686
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !687 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !694 void @ClearMagickException(ptr noundef) local_unnamed_addr #2

declare !dbg !697 i32 @IsEventLogging() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ClonePixelWand(ptr noundef %wand) local_unnamed_addr #0 !dbg !700 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %wand, metadata !704, metadata !DIExpression()), !dbg !709
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !710
  %0 = load i32, ptr %debug, align 8, !dbg !710, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !712
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !713

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !714
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 150, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !715
  br label %if.end, !dbg !716

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireMagickMemory(i64 noundef 4192) #11, !dbg !717
  call void @llvm.dbg.value(metadata ptr %call1, metadata !705, metadata !DIExpression()), !dbg !709
  %cmp2 = icmp eq ptr %call1, null, !dbg !718
  br i1 %cmp2, label %if.then3, label %if.end8, !dbg !719

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #10, !dbg !720
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !706, metadata !DIExpression()), !dbg !720
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #10, !dbg !720
  %name4 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !720
  %call6 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 154, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name4) #10, !dbg !720
  call void @CatchException(ptr noundef nonnull %exception) #10, !dbg !720
  %call7 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #10, !dbg !720
  call void @MagickWandTerminus() #10, !dbg !720
  call void @_exit(i32 noundef 1) #12, !dbg !720
  unreachable, !dbg !720

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call1, i32 noundef 0, i64 noundef 4192) #10, !dbg !721
  %call10 = tail call i64 @AcquireWandId() #10, !dbg !722
  store i64 %call10, ptr %call1, align 8, !dbg !723, !tbaa !724
  %name11 = getelementptr inbounds %struct._PixelWand, ptr %call1, i64 0, i32 1, !dbg !725
  %conv = uitofp i64 %call10 to double, !dbg !726
  %call14 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %name11, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, double noundef %conv) #10, !dbg !727
  %call15 = tail call ptr @AcquireExceptionInfo() #10, !dbg !728
  %exception16 = getelementptr inbounds %struct._PixelWand, ptr %call1, i64 0, i32 2, !dbg !729
  store ptr %call15, ptr %exception16, align 8, !dbg !730, !tbaa !679
  %exception18 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 2, !dbg !731
  %1 = load ptr, ptr %exception18, align 8, !dbg !731, !tbaa !679
  tail call void @InheritException(ptr noundef %call15, ptr noundef %1) #10, !dbg !732
  %pixel = getelementptr inbounds %struct._PixelWand, ptr %call1, i64 0, i32 3, !dbg !733
  %pixel19 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, !dbg !734
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel, ptr noundef nonnull align 8 dereferenceable(56) %pixel19, i64 56, i1 false), !dbg !734, !tbaa.struct !735
  %count = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 4, !dbg !740
  %2 = load i64, ptr %count, align 8, !dbg !740, !tbaa !741
  %count20 = getelementptr inbounds %struct._PixelWand, ptr %call1, i64 0, i32 4, !dbg !742
  store i64 %2, ptr %count20, align 8, !dbg !743, !tbaa !741
  %call21 = tail call i32 @IsEventLogging() #10, !dbg !744
  %debug22 = getelementptr inbounds %struct._PixelWand, ptr %call1, i64 0, i32 5, !dbg !745
  store i32 %call21, ptr %debug22, align 8, !dbg !746, !tbaa !664
  %cmp24.not = icmp eq i32 %call21, 0, !dbg !747
  br i1 %cmp24.not, label %if.end30, label %if.then26, !dbg !749

if.then26:                                        ; preds = %if.end8
  %call29 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 165, ptr noundef nonnull @.str.2, ptr noundef nonnull %name11) #10, !dbg !750
  br label %if.end30, !dbg !751

if.end30:                                         ; preds = %if.then26, %if.end8
  %signature = getelementptr inbounds %struct._PixelWand, ptr %call1, i64 0, i32 6, !dbg !752
  store i64 2880220587, ptr %signature, align 8, !dbg !753, !tbaa !754
  ret ptr %call1, !dbg !755
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: allocsize(0)
declare !dbg !756 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #4

declare !dbg !760 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !761 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !765 void @CatchException(ptr noundef) local_unnamed_addr #2

declare !dbg !766 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !769 void @MagickWandTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

declare !dbg !773 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !776 i64 @AcquireWandId() local_unnamed_addr #2

declare !dbg !780 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !786 ptr @AcquireExceptionInfo() local_unnamed_addr #2

declare !dbg !789 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ClonePixelWands(ptr nocapture noundef readonly %wands, i64 noundef %number_wands) local_unnamed_addr #0 !dbg !794 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %wands, metadata !799, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i64 %number_wands, metadata !800, metadata !DIExpression()), !dbg !806
  %call = tail call ptr @AcquireQuantumMemory(i64 noundef %number_wands, i64 noundef 8) #13, !dbg !807
  call void @llvm.dbg.value(metadata ptr %call, metadata !802, metadata !DIExpression()), !dbg !806
  %cmp = icmp eq ptr %call, null, !dbg !808
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !809

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !801, metadata !DIExpression()), !dbg !806
  %cmp514 = icmp sgt i64 %number_wands, 0, !dbg !810
  br i1 %cmp514, label %for.body, label %for.end, !dbg !813

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #10, !dbg !814
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !803, metadata !DIExpression()), !dbg !814
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #10, !dbg !814
  %call1 = tail call ptr @__errno_location() #14, !dbg !814
  %0 = load i32, ptr %call1, align 4, !dbg !814, !tbaa !815
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #10, !dbg !814
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 208, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call2) #10, !dbg !814
  call void @CatchException(ptr noundef nonnull %exception) #10, !dbg !814
  %call4 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #10, !dbg !814
  call void @MagickWandTerminus() #10, !dbg !814
  call void @_exit(i32 noundef 1) #12, !dbg !814
  unreachable, !dbg !814

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.015 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.015, metadata !801, metadata !DIExpression()), !dbg !806
  %arrayidx = getelementptr inbounds ptr, ptr %wands, i64 %i.015, !dbg !817
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !817, !tbaa !818
  %call6 = tail call ptr @ClonePixelWand(ptr noundef %1), !dbg !819
  %arrayidx7 = getelementptr inbounds ptr, ptr %call, i64 %i.015, !dbg !820
  store ptr %call6, ptr %arrayidx7, align 8, !dbg !821, !tbaa !818
  %inc = add nuw nsw i64 %i.015, 1, !dbg !822
  call void @llvm.dbg.value(metadata i64 %inc, metadata !801, metadata !DIExpression()), !dbg !806
  %exitcond.not = icmp eq i64 %inc, %number_wands, !dbg !810
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !813, !llvm.loop !823

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret ptr %call, !dbg !827
}

; Function Attrs: allocsize(0,1)
declare !dbg !828 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !831 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyPixelWand(ptr noundef %wand) local_unnamed_addr #0 !dbg !835 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !839, metadata !DIExpression()), !dbg !840
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !841
  %0 = load i32, ptr %debug, align 8, !dbg !841, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !843
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !844

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !845
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 241, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !846
  br label %if.end, !dbg !847

if.end:                                           ; preds = %if.then, %entry
  %exception = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 2, !dbg !848
  %1 = load ptr, ptr %exception, align 8, !dbg !848, !tbaa !679
  %call1 = tail call ptr @DestroyExceptionInfo(ptr noundef %1) #10, !dbg !849
  store ptr %call1, ptr %exception, align 8, !dbg !850, !tbaa !679
  %signature = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 6, !dbg !851
  store i64 -2880220588, ptr %signature, align 8, !dbg !852, !tbaa !754
  %2 = load i64, ptr %wand, align 8, !dbg !853, !tbaa !724
  tail call void @RelinquishWandId(i64 noundef %2) #10, !dbg !854
  %call3 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %wand) #10, !dbg !855
  call void @llvm.dbg.value(metadata ptr %call3, metadata !839, metadata !DIExpression()), !dbg !840
  ret ptr %call3, !dbg !856
}

declare !dbg !857 void @RelinquishWandId(i64 noundef) local_unnamed_addr #2

declare !dbg !860 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyPixelWands(ptr noundef %wand, i64 noundef %number_wands) local_unnamed_addr #0 !dbg !863 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !867, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i64 %number_wands, metadata !868, metadata !DIExpression()), !dbg !870
  %0 = load ptr, ptr %wand, align 8, !dbg !871, !tbaa !818
  %debug = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 5, !dbg !873
  %1 = load i32, ptr %debug, align 8, !dbg !873, !tbaa !664
  %cmp.not = icmp eq i32 %1, 0, !dbg !874
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !875

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %0, i64 0, i32 1, !dbg !876
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 285, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !877
  br label %if.end, !dbg !878

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i64 %number_wands, metadata !869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !870
  %cmp113 = icmp sgt i64 %number_wands, 0, !dbg !879
  br i1 %cmp113, label %for.body, label %for.end, !dbg !882

for.body:                                         ; preds = %if.end, %DestroyPixelWand.exit
  %i.0.in14 = phi i64 [ %i.0, %DestroyPixelWand.exit ], [ %number_wands, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.0.in14, metadata !869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !870
  %i.0 = add nsw i64 %i.0.in14, -1, !dbg !883
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !869, metadata !DIExpression()), !dbg !870
  %arrayidx = getelementptr inbounds ptr, ptr %wand, i64 %i.0, !dbg !884
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !884, !tbaa !818
  call void @llvm.dbg.value(metadata ptr %2, metadata !839, metadata !DIExpression()) #10, !dbg !885
  %debug.i = getelementptr inbounds %struct._PixelWand, ptr %2, i64 0, i32 5, !dbg !887
  %3 = load i32, ptr %debug.i, align 8, !dbg !887, !tbaa !664
  %cmp.not.i = icmp eq i32 %3, 0, !dbg !888
  br i1 %cmp.not.i, label %DestroyPixelWand.exit, label %if.then.i, !dbg !889

if.then.i:                                        ; preds = %for.body
  %name.i = getelementptr inbounds %struct._PixelWand, ptr %2, i64 0, i32 1, !dbg !890
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 241, ptr noundef nonnull @.str.2, ptr noundef nonnull %name.i) #10, !dbg !891
  br label %DestroyPixelWand.exit, !dbg !892

DestroyPixelWand.exit:                            ; preds = %for.body, %if.then.i
  %exception.i = getelementptr inbounds %struct._PixelWand, ptr %2, i64 0, i32 2, !dbg !893
  %4 = load ptr, ptr %exception.i, align 8, !dbg !893, !tbaa !679
  %call1.i = tail call ptr @DestroyExceptionInfo(ptr noundef %4) #10, !dbg !894
  store ptr %call1.i, ptr %exception.i, align 8, !dbg !895, !tbaa !679
  %signature.i = getelementptr inbounds %struct._PixelWand, ptr %2, i64 0, i32 6, !dbg !896
  store i64 -2880220588, ptr %signature.i, align 8, !dbg !897, !tbaa !754
  %5 = load i64, ptr %2, align 8, !dbg !898, !tbaa !724
  tail call void @RelinquishWandId(i64 noundef %5) #10, !dbg !899
  %call3.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %2) #10, !dbg !900
  call void @llvm.dbg.value(metadata ptr %call3.i, metadata !839, metadata !DIExpression()) #10, !dbg !885
  store ptr %call3.i, ptr %arrayidx, align 8, !dbg !901, !tbaa !818
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !870
  %cmp1 = icmp ugt i64 %i.0.in14, 1, !dbg !879
  br i1 %cmp1, label %for.body, label %for.end, !dbg !882, !llvm.loop !902

for.end:                                          ; preds = %DestroyPixelWand.exit, %if.end
  %call4 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %wand) #10, !dbg !904
  call void @llvm.dbg.value(metadata ptr %call4, metadata !867, metadata !DIExpression()), !dbg !870
  ret ptr %call4, !dbg !905
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsPixelWandSimilar(ptr noundef %p, ptr noundef %q, double noundef %fuzz) local_unnamed_addr #0 !dbg !906 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !911, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata ptr %q, metadata !912, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata double %fuzz, metadata !913, metadata !DIExpression()), !dbg !914
  %debug = getelementptr inbounds %struct._PixelWand, ptr %p, i64 0, i32 5, !dbg !915
  %0 = load i32, ptr %debug, align 8, !dbg !915, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !917
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !918

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %p, i64 0, i32 1, !dbg !919
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 327, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !920
  br label %if.end, !dbg !921

if.end:                                           ; preds = %if.then, %entry
  %debug1 = getelementptr inbounds %struct._PixelWand, ptr %q, i64 0, i32 5, !dbg !922
  %1 = load i32, ptr %debug1, align 8, !dbg !922, !tbaa !664
  %cmp2.not = icmp eq i32 %1, 0, !dbg !924
  br i1 %cmp2.not, label %if.end7, label %if.then3, !dbg !925

if.then3:                                         ; preds = %if.end
  %name4 = getelementptr inbounds %struct._PixelWand, ptr %q, i64 0, i32 1, !dbg !926
  %call6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 331, ptr noundef nonnull @.str.2, ptr noundef nonnull %name4) #10, !dbg !927
  br label %if.end7, !dbg !928

if.end7:                                          ; preds = %if.then3, %if.end
  %pixel = getelementptr inbounds %struct._PixelWand, ptr %p, i64 0, i32 3, !dbg !929
  %fuzz8 = getelementptr inbounds %struct._PixelWand, ptr %p, i64 0, i32 3, i32 3, !dbg !930
  store double %fuzz, ptr %fuzz8, align 8, !dbg !931, !tbaa !932
  %pixel9 = getelementptr inbounds %struct._PixelWand, ptr %q, i64 0, i32 3, !dbg !933
  %fuzz10 = getelementptr inbounds %struct._PixelWand, ptr %q, i64 0, i32 3, i32 3, !dbg !934
  store double %fuzz, ptr %fuzz10, align 8, !dbg !935, !tbaa !932
  %call13 = tail call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel, ptr noundef nonnull %pixel9) #10, !dbg !936
  ret i32 %call13, !dbg !937
}

declare !dbg !938 i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @IsPixelWand(ptr noundef %wand) local_unnamed_addr #0 !dbg !943 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !947, metadata !DIExpression()), !dbg !948
  %cmp = icmp eq ptr %wand, null, !dbg !949
  br i1 %cmp, label %return, label %if.end, !dbg !951

if.end:                                           ; preds = %entry
  %signature = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 6, !dbg !952
  %0 = load i64, ptr %signature, align 8, !dbg !952, !tbaa !754
  %cmp1.not = icmp eq i64 %0, 2880220587, !dbg !954
  br i1 %cmp1.not, label %if.end3, label %return, !dbg !955

if.end3:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !956
  %call = tail call i32 @LocaleNCompare(ptr noundef nonnull %name, ptr noundef nonnull @.str.6, i64 noundef 9) #10, !dbg !958
  %cmp4.not = icmp eq i32 %call, 0, !dbg !959
  %. = zext i1 %cmp4.not to i32, !dbg !948
  br label %return, !dbg !948

return:                                           ; preds = %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end3 ], !dbg !948
  ret i32 %retval.0, !dbg !960
}

declare !dbg !961 i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @NewPixelWand() local_unnamed_addr #0 !dbg !965 {
entry:
  %depth = alloca i64, align 8
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception6 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %depth) #10, !dbg !978
  call void @llvm.dbg.value(metadata i64 16, metadata !971, metadata !DIExpression()), !dbg !979
  store i64 16, ptr %depth, align 8, !dbg !980, !tbaa !738
  call void @llvm.dbg.value(metadata ptr %depth, metadata !971, metadata !DIExpression(DW_OP_deref)), !dbg !979
  %call = call ptr @GetMagickQuantumDepth(ptr noundef nonnull %depth) #10, !dbg !981
  call void @llvm.dbg.value(metadata ptr %call, metadata !969, metadata !DIExpression()), !dbg !979
  %0 = load i64, ptr %depth, align 8, !dbg !982, !tbaa !738
  call void @llvm.dbg.value(metadata i64 %0, metadata !971, metadata !DIExpression()), !dbg !979
  %cmp.not = icmp eq i64 %0, 16, !dbg !983
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !984

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #10, !dbg !985
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !972, metadata !DIExpression()), !dbg !985
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #10, !dbg !985
  %call1 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 402, i32 noundef 470, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef %call) #10, !dbg !985
  call void @CatchException(ptr noundef nonnull %exception) #10, !dbg !985
  %call2 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #10, !dbg !985
  call void @MagickWandTerminus() #10, !dbg !985
  call void @_exit(i32 noundef -229) #12, !dbg !985
  unreachable, !dbg !985

if.end:                                           ; preds = %entry
  %call3 = call ptr @AcquireMagickMemory(i64 noundef 4192) #11, !dbg !986
  call void @llvm.dbg.value(metadata ptr %call3, metadata !970, metadata !DIExpression()), !dbg !979
  %cmp4 = icmp eq ptr %call3, null, !dbg !987
  br i1 %cmp4, label %if.then5, label %if.end11, !dbg !988

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception6) #10, !dbg !989
  call void @llvm.dbg.declare(metadata ptr %exception6, metadata !975, metadata !DIExpression()), !dbg !989
  call void @GetExceptionInfo(ptr noundef nonnull %exception6) #10, !dbg !989
  %call7 = tail call ptr @__errno_location() #14, !dbg !989
  %1 = load i32, ptr %call7, align 4, !dbg !989, !tbaa !815
  %call8 = call ptr @GetExceptionMessage(i32 noundef %1) #10, !dbg !989
  %call9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 406, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call8) #10, !dbg !989
  call void @CatchException(ptr noundef nonnull %exception6) #10, !dbg !989
  %call10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception6) #10, !dbg !989
  call void @MagickWandTerminus() #10, !dbg !989
  call void @_exit(i32 noundef 1) #12, !dbg !989
  unreachable, !dbg !989

if.end11:                                         ; preds = %if.end
  %call12 = call ptr @ResetMagickMemory(ptr noundef nonnull %call3, i32 noundef 0, i64 noundef 4192) #10, !dbg !990
  %call13 = call i64 @AcquireWandId() #10, !dbg !991
  store i64 %call13, ptr %call3, align 8, !dbg !992, !tbaa !724
  %name = getelementptr inbounds %struct._PixelWand, ptr %call3, i64 0, i32 1, !dbg !993
  %conv = uitofp i64 %call13 to double, !dbg !994
  %call15 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %name, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, double noundef %conv) #10, !dbg !995
  %call16 = call ptr @AcquireExceptionInfo() #10, !dbg !996
  %exception17 = getelementptr inbounds %struct._PixelWand, ptr %call3, i64 0, i32 2, !dbg !997
  store ptr %call16, ptr %exception17, align 8, !dbg !998, !tbaa !679
  %pixel = getelementptr inbounds %struct._PixelWand, ptr %call3, i64 0, i32 3, !dbg !999
  call void @GetMagickPixelPacket(ptr noundef null, ptr noundef nonnull %pixel) #10, !dbg !1000
  %call18 = call i32 @IsEventLogging() #10, !dbg !1001
  %debug = getelementptr inbounds %struct._PixelWand, ptr %call3, i64 0, i32 5, !dbg !1002
  store i32 %call18, ptr %debug, align 8, !dbg !1003, !tbaa !664
  %cmp20.not = icmp eq i32 %call18, 0, !dbg !1004
  br i1 %cmp20.not, label %if.end26, label %if.then22, !dbg !1006

if.then22:                                        ; preds = %if.end11
  %call25 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 415, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1007
  br label %if.end26, !dbg !1008

if.end26:                                         ; preds = %if.then22, %if.end11
  %signature = getelementptr inbounds %struct._PixelWand, ptr %call3, i64 0, i32 6, !dbg !1009
  store i64 2880220587, ptr %signature, align 8, !dbg !1010, !tbaa !754
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %depth) #10, !dbg !1011
  ret ptr %call3, !dbg !1012
}

declare !dbg !1013 ptr @GetMagickQuantumDepth(ptr noundef) local_unnamed_addr #2

declare !dbg !1018 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @NewPixelWands(i64 noundef %number_wands) local_unnamed_addr #0 !dbg !1024 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata i64 %number_wands, metadata !1028, metadata !DIExpression()), !dbg !1034
  %call = tail call ptr @AcquireQuantumMemory(i64 noundef %number_wands, i64 noundef 8) #13, !dbg !1035
  call void @llvm.dbg.value(metadata ptr %call, metadata !1030, metadata !DIExpression()), !dbg !1034
  %cmp = icmp eq ptr %call, null, !dbg !1036
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !1037

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !1029, metadata !DIExpression()), !dbg !1034
  %cmp512 = icmp sgt i64 %number_wands, 0, !dbg !1038
  br i1 %cmp512, label %for.body, label %for.end, !dbg !1041

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #10, !dbg !1042
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1031, metadata !DIExpression()), !dbg !1042
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #10, !dbg !1042
  %call1 = tail call ptr @__errno_location() #14, !dbg !1042
  %0 = load i32, ptr %call1, align 4, !dbg !1042, !tbaa !815
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #10, !dbg !1042
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 454, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call2) #10, !dbg !1042
  call void @CatchException(ptr noundef nonnull %exception) #10, !dbg !1042
  %call4 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #10, !dbg !1042
  call void @MagickWandTerminus() #10, !dbg !1042
  call void @_exit(i32 noundef 1) #12, !dbg !1042
  unreachable, !dbg !1042

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.013 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.013, metadata !1029, metadata !DIExpression()), !dbg !1034
  %call6 = tail call ptr @NewPixelWand(), !dbg !1043
  %arrayidx = getelementptr inbounds ptr, ptr %call, i64 %i.013, !dbg !1044
  store ptr %call6, ptr %arrayidx, align 8, !dbg !1045, !tbaa !818
  %inc = add nuw nsw i64 %i.013, 1, !dbg !1046
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1029, metadata !DIExpression()), !dbg !1034
  %exitcond.not = icmp eq i64 %inc, %number_wands, !dbg !1038
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1041, !llvm.loop !1047

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret ptr %call, !dbg !1049
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PixelClearException(ptr noundef %wand) local_unnamed_addr #0 !dbg !1050 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1054, metadata !DIExpression()), !dbg !1055
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1056
  %0 = load i32, ptr %debug, align 8, !dbg !1056, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1058
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1059

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1060
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 487, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1061
  br label %if.end, !dbg !1062

if.end:                                           ; preds = %if.then, %entry
  %exception = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 2, !dbg !1063
  %1 = load ptr, ptr %exception, align 8, !dbg !1063, !tbaa !679
  tail call void @ClearMagickException(ptr noundef %1) #10, !dbg !1064
  ret i32 1, !dbg !1065
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetAlpha(ptr noundef %wand) local_unnamed_addr #0 !dbg !1066 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1070, metadata !DIExpression()), !dbg !1071
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1072
  %0 = load i32, ptr %debug, align 8, !dbg !1072, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1074
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1075

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1076
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 519, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1077
  br label %if.end, !dbg !1078

if.end:                                           ; preds = %if.then, %entry
  %opacity = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 8, !dbg !1079
  %1 = load float, ptr %opacity, align 4, !dbg !1079, !tbaa !1080
  %sub = fsub float 6.553500e+04, %1, !dbg !1081
  %conv = fpext float %sub to double, !dbg !1082
  %mul = fmul double %conv, 0x3EF0001000100010, !dbg !1083
  ret double %mul, !dbg !1084
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetAlphaQuantum(ptr noundef %wand) local_unnamed_addr #0 !dbg !1085 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1089, metadata !DIExpression()), !dbg !1090
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1091
  %0 = load i32, ptr %debug, align 8, !dbg !1091, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1093
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1094

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1095
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 550, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1096
  br label %if.end, !dbg !1097

if.end:                                           ; preds = %if.then, %entry
  %opacity = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 8, !dbg !1098
  %1 = load float, ptr %opacity, align 4, !dbg !1098, !tbaa !1080
  call void @llvm.dbg.value(metadata float %1, metadata !1099, metadata !DIExpression()), !dbg !1105
  %cmp.i = fcmp ugt float %1, 0.000000e+00, !dbg !1107
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1109

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %1, 6.553500e+04, !dbg !1110
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1112

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %1, 5.000000e-01, !dbg !1113
  %conv.i = fptoui float %add.i to i16, !dbg !1114
  %phi.bo = xor i16 %conv.i, -1, !dbg !1115
  br label %ClampToQuantum.exit, !dbg !1115

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %phi.bo, %if.end3.i ], [ -1, %if.end ], [ 0, %if.end.i ]
  ret i16 %retval.0.i, !dbg !1116
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetBlack(ptr noundef %wand) local_unnamed_addr #0 !dbg !1117 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1119, metadata !DIExpression()), !dbg !1120
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1121
  %0 = load i32, ptr %debug, align 8, !dbg !1121, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1123
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1124

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1125
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 581, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1126
  br label %if.end, !dbg !1127

if.end:                                           ; preds = %if.then, %entry
  %index = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 9, !dbg !1128
  %1 = load float, ptr %index, align 8, !dbg !1128, !tbaa !1129
  %conv = fpext float %1 to double, !dbg !1130
  %mul = fmul double %conv, 0x3EF0001000100010, !dbg !1131
  ret double %mul, !dbg !1132
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetBlackQuantum(ptr noundef %wand) local_unnamed_addr #0 !dbg !1133 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1135, metadata !DIExpression()), !dbg !1136
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1137
  %0 = load i32, ptr %debug, align 8, !dbg !1137, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1139
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1140

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1141
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 612, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1142
  br label %if.end, !dbg !1143

if.end:                                           ; preds = %if.then, %entry
  %index = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 9, !dbg !1144
  %1 = load float, ptr %index, align 8, !dbg !1144, !tbaa !1129
  call void @llvm.dbg.value(metadata float %1, metadata !1099, metadata !DIExpression()), !dbg !1145
  %cmp.i = fcmp ugt float %1, 0.000000e+00, !dbg !1147
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1148

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %1, 6.553500e+04, !dbg !1149
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1150

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %1, 5.000000e-01, !dbg !1151
  %conv.i = fptoui float %add.i to i16, !dbg !1152
  br label %ClampToQuantum.exit, !dbg !1153

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.end ], [ -1, %if.end.i ], !dbg !1145
  ret i16 %retval.0.i, !dbg !1154
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetBlue(ptr noundef %wand) local_unnamed_addr #0 !dbg !1155 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1157, metadata !DIExpression()), !dbg !1158
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1159
  %0 = load i32, ptr %debug, align 8, !dbg !1159, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1161
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1162

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1163
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 643, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1164
  br label %if.end, !dbg !1165

if.end:                                           ; preds = %if.then, %entry
  %blue = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 7, !dbg !1166
  %1 = load float, ptr %blue, align 8, !dbg !1166, !tbaa !1167
  %conv = fpext float %1 to double, !dbg !1168
  %mul = fmul double %conv, 0x3EF0001000100010, !dbg !1169
  ret double %mul, !dbg !1170
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetBlueQuantum(ptr noundef %wand) local_unnamed_addr #0 !dbg !1171 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1173, metadata !DIExpression()), !dbg !1174
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1175
  %0 = load i32, ptr %debug, align 8, !dbg !1175, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1177
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1178

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1179
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 674, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1180
  br label %if.end, !dbg !1181

if.end:                                           ; preds = %if.then, %entry
  %blue = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 7, !dbg !1182
  %1 = load float, ptr %blue, align 8, !dbg !1182, !tbaa !1167
  call void @llvm.dbg.value(metadata float %1, metadata !1099, metadata !DIExpression()), !dbg !1183
  %cmp.i = fcmp ugt float %1, 0.000000e+00, !dbg !1185
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1186

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %1, 6.553500e+04, !dbg !1187
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1188

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %1, 5.000000e-01, !dbg !1189
  %conv.i = fptoui float %add.i to i16, !dbg !1190
  br label %ClampToQuantum.exit, !dbg !1191

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.end ], [ -1, %if.end.i ], !dbg !1183
  ret i16 %retval.0.i, !dbg !1192
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PixelGetColorAsString(ptr noundef %wand) local_unnamed_addr #0 !dbg !1193 {
entry:
  %pixel = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1197, metadata !DIExpression()), !dbg !1200
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #10, !dbg !1201
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !1199, metadata !DIExpression()), !dbg !1202
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1203
  %0 = load i32, ptr %debug, align 8, !dbg !1203, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1205
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1206

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1207
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 711, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1208
  br label %if.end, !dbg !1209

if.end:                                           ; preds = %if.then, %entry
  %pixel1 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, !dbg !1210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel, ptr noundef nonnull align 8 dereferenceable(56) %pixel1, i64 56, i1 false), !dbg !1210, !tbaa.struct !735
  %call2 = tail call ptr @AcquireString(ptr noundef null) #10, !dbg !1211
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1198, metadata !DIExpression()), !dbg !1200
  call void @GetColorTuple(ptr noundef nonnull %pixel, i32 noundef 0, ptr noundef %call2) #10, !dbg !1212
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #10, !dbg !1213
  ret ptr %call2, !dbg !1214
}

declare !dbg !1215 ptr @AcquireString(ptr noundef) local_unnamed_addr #2

declare !dbg !1218 void @GetColorTuple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @PixelGetColorAsNormalizedString(ptr noundef %wand) local_unnamed_addr #0 !dbg !1222 {
entry:
  %color = alloca [8192 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1224, metadata !DIExpression()), !dbg !1229
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %color) #10, !dbg !1230
  call void @llvm.dbg.declare(metadata ptr %color, metadata !1225, metadata !DIExpression()), !dbg !1231
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1232
  %0 = load i32, ptr %debug, align 8, !dbg !1232, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1234
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1235

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1236
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 749, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1237
  br label %if.end, !dbg !1238

if.end:                                           ; preds = %if.then, %entry
  %red = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 5, !dbg !1239
  %1 = load float, ptr %red, align 8, !dbg !1239, !tbaa !1240
  %conv = fpext float %1 to double, !dbg !1241
  %mul = fmul double %conv, 0x3EF0001000100010, !dbg !1242
  %green = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 6, !dbg !1243
  %2 = load float, ptr %green, align 4, !dbg !1243, !tbaa !1244
  %conv3 = fpext float %2 to double, !dbg !1245
  %mul4 = fmul double %conv3, 0x3EF0001000100010, !dbg !1246
  %blue = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 7, !dbg !1247
  %3 = load float, ptr %blue, align 8, !dbg !1247, !tbaa !1167
  %conv6 = fpext float %3 to double, !dbg !1248
  %mul7 = fmul double %conv6, 0x3EF0001000100010, !dbg !1249
  %call8 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %color, i64 noundef 4096, ptr noundef nonnull @.str.8, double noundef %mul, double noundef %mul4, double noundef %mul7) #10, !dbg !1250
  %colorspace = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 1, !dbg !1251
  %4 = load i32, ptr %colorspace, align 4, !dbg !1251, !tbaa !683
  %cmp10 = icmp eq i32 %4, 12, !dbg !1253
  br i1 %cmp10, label %if.then12, label %if.end20, !dbg !1254

if.then12:                                        ; preds = %if.end
  %call15 = call i64 @strlen(ptr noundef nonnull %color) #15, !dbg !1255
  %add.ptr = getelementptr inbounds i8, ptr %color, i64 %call15, !dbg !1256
  %index = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 9, !dbg !1257
  %5 = load float, ptr %index, align 8, !dbg !1257, !tbaa !1129
  %conv17 = fpext float %5 to double, !dbg !1258
  %mul18 = fmul double %conv17, 0x3EF0001000100010, !dbg !1259
  %call19 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %add.ptr, i64 noundef 4096, ptr noundef nonnull @.str.9, double noundef %mul18) #10, !dbg !1260
  br label %if.end20, !dbg !1261

if.end20:                                         ; preds = %if.then12, %if.end
  %matte = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 2, !dbg !1262
  %6 = load i32, ptr %matte, align 8, !dbg !1262, !tbaa !1264
  %cmp22.not = icmp eq i32 %6, 0, !dbg !1265
  br i1 %cmp22.not, label %if.end33, label %if.then24, !dbg !1266

if.then24:                                        ; preds = %if.end20
  %call27 = call i64 @strlen(ptr noundef nonnull %color) #15, !dbg !1267
  %add.ptr28 = getelementptr inbounds i8, ptr %color, i64 %call27, !dbg !1268
  %opacity = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 8, !dbg !1269
  %7 = load float, ptr %opacity, align 4, !dbg !1269, !tbaa !1080
  %conv30 = fpext float %7 to double, !dbg !1270
  %mul31 = fmul double %conv30, 0x3EF0001000100010, !dbg !1271
  %call32 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %add.ptr28, i64 noundef 4096, ptr noundef nonnull @.str.9, double noundef %mul31) #10, !dbg !1272
  br label %if.end33, !dbg !1273

if.end33:                                         ; preds = %if.then24, %if.end20
  %call35 = call ptr @ConstantString(ptr noundef nonnull %color) #10, !dbg !1274
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %color) #10, !dbg !1275
  ret ptr %call35, !dbg !1276
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

declare !dbg !1277 ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @PixelGetColorCount(ptr noundef %wand) local_unnamed_addr #0 !dbg !1278 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1282, metadata !DIExpression()), !dbg !1283
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1284
  %0 = load i32, ptr %debug, align 8, !dbg !1284, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1286
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1287

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1288
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 790, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1289
  br label %if.end, !dbg !1290

if.end:                                           ; preds = %if.then, %entry
  %count = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 4, !dbg !1291
  %1 = load i64, ptr %count, align 8, !dbg !1291, !tbaa !741
  ret i64 %1, !dbg !1292
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetCyan(ptr noundef %wand) local_unnamed_addr #0 !dbg !1293 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1295, metadata !DIExpression()), !dbg !1296
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1297
  %0 = load i32, ptr %debug, align 8, !dbg !1297, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1299
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1300

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1301
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 821, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1302
  br label %if.end, !dbg !1303

if.end:                                           ; preds = %if.then, %entry
  %red = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 5, !dbg !1304
  %1 = load float, ptr %red, align 8, !dbg !1304, !tbaa !1240
  %conv = fpext float %1 to double, !dbg !1305
  %mul = fmul double %conv, 0x3EF0001000100010, !dbg !1306
  ret double %mul, !dbg !1307
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetCyanQuantum(ptr noundef %wand) local_unnamed_addr #0 !dbg !1308 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1310, metadata !DIExpression()), !dbg !1311
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1312
  %0 = load i32, ptr %debug, align 8, !dbg !1312, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1314
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1315

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1316
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 852, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1317
  br label %if.end, !dbg !1318

if.end:                                           ; preds = %if.then, %entry
  %red = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 5, !dbg !1319
  %1 = load float, ptr %red, align 8, !dbg !1319, !tbaa !1240
  call void @llvm.dbg.value(metadata float %1, metadata !1099, metadata !DIExpression()), !dbg !1320
  %cmp.i = fcmp ugt float %1, 0.000000e+00, !dbg !1322
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1323

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %1, 6.553500e+04, !dbg !1324
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1325

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %1, 5.000000e-01, !dbg !1326
  %conv.i = fptoui float %add.i to i16, !dbg !1327
  br label %ClampToQuantum.exit, !dbg !1328

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.end ], [ -1, %if.end.i ], !dbg !1320
  ret i16 %retval.0.i, !dbg !1329
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PixelGetException(ptr noundef %wand, ptr nocapture noundef writeonly %severity) local_unnamed_addr #0 !dbg !1330 {
entry:
  %exception5 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1335, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr %severity, metadata !1336, metadata !DIExpression()), !dbg !1341
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1342
  %0 = load i32, ptr %debug, align 8, !dbg !1342, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1344
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1345

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1346
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 890, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1347
  br label %if.end, !dbg !1348

if.end:                                           ; preds = %if.then, %entry
  %exception = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 2, !dbg !1349
  %1 = load ptr, ptr %exception, align 8, !dbg !1349, !tbaa !679
  %2 = load i32, ptr %1, align 8, !dbg !1350, !tbaa !1351
  store i32 %2, ptr %severity, align 4, !dbg !1353, !tbaa !736
  %call2 = tail call ptr @AcquireQuantumMemory(i64 noundef 8192, i64 noundef 1) #13, !dbg !1354
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1337, metadata !DIExpression()), !dbg !1341
  %cmp3 = icmp eq ptr %call2, null, !dbg !1355
  br i1 %cmp3, label %if.then4, label %if.end10, !dbg !1356

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception5) #10, !dbg !1357
  call void @llvm.dbg.declare(metadata ptr %exception5, metadata !1338, metadata !DIExpression()), !dbg !1357
  call void @GetExceptionInfo(ptr noundef nonnull %exception5) #10, !dbg !1357
  %name6 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1357
  %call8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 897, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name6) #10, !dbg !1357
  call void @CatchException(ptr noundef nonnull %exception5) #10, !dbg !1357
  %call9 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception5) #10, !dbg !1357
  call void @MagickWandTerminus() #10, !dbg !1357
  call void @_exit(i32 noundef 1) #12, !dbg !1357
  unreachable, !dbg !1357

if.end10:                                         ; preds = %if.end
  store i8 0, ptr %call2, align 1, !dbg !1358, !tbaa !736
  %3 = load ptr, ptr %exception, align 8, !dbg !1359, !tbaa !679
  %reason = getelementptr inbounds %struct._ExceptionInfo, ptr %3, i64 0, i32 2, !dbg !1361
  %4 = load ptr, ptr %reason, align 8, !dbg !1361, !tbaa !1362
  %cmp12.not = icmp eq ptr %4, null, !dbg !1363
  br i1 %cmp12.not, label %if.end20, label %if.then13, !dbg !1364

if.then13:                                        ; preds = %if.end10
  %5 = load i32, ptr %3, align 8, !dbg !1365, !tbaa !1351
  %call18 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %5, ptr noundef nonnull %4) #10, !dbg !1366
  %call19 = tail call i64 @CopyMagickString(ptr noundef nonnull %call2, ptr noundef %call18, i64 noundef 4096) #10, !dbg !1367
  %.pre = load ptr, ptr %exception, align 8, !dbg !1368, !tbaa !679
  br label %if.end20, !dbg !1370

if.end20:                                         ; preds = %if.then13, %if.end10
  %6 = phi ptr [ %.pre, %if.then13 ], [ %3, %if.end10 ], !dbg !1368
  %description22 = getelementptr inbounds %struct._ExceptionInfo, ptr %6, i64 0, i32 3, !dbg !1371
  %7 = load ptr, ptr %description22, align 8, !dbg !1371, !tbaa !1372
  %cmp23.not = icmp eq ptr %7, null, !dbg !1373
  br i1 %cmp23.not, label %if.end33, label %if.then24, !dbg !1374

if.then24:                                        ; preds = %if.end20
  %call25 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %call2, ptr noundef nonnull @.str.10, i64 noundef 4096) #10, !dbg !1375
  %8 = load ptr, ptr %exception, align 8, !dbg !1377, !tbaa !679
  %9 = load i32, ptr %8, align 8, !dbg !1378, !tbaa !1351
  %description29 = getelementptr inbounds %struct._ExceptionInfo, ptr %8, i64 0, i32 3, !dbg !1379
  %10 = load ptr, ptr %description29, align 8, !dbg !1379, !tbaa !1372
  %call30 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %9, ptr noundef %10) #10, !dbg !1380
  %call31 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %call2, ptr noundef %call30, i64 noundef 4096) #10, !dbg !1381
  %call32 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %call2, ptr noundef nonnull @.str.11, i64 noundef 4096) #10, !dbg !1382
  br label %if.end33, !dbg !1383

if.end33:                                         ; preds = %if.then24, %if.end20
  ret ptr %call2, !dbg !1384
}

declare !dbg !1385 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1388 ptr @GetLocaleExceptionMessage(i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1391 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @PixelGetExceptionType(ptr noundef %wand) local_unnamed_addr #0 !dbg !1392 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1396, metadata !DIExpression()), !dbg !1397
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1398
  %0 = load i32, ptr %debug, align 8, !dbg !1398, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1400
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1401

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1402
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 940, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1403
  br label %if.end, !dbg !1404

if.end:                                           ; preds = %if.then, %entry
  %exception = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 2, !dbg !1405
  %1 = load ptr, ptr %exception, align 8, !dbg !1405, !tbaa !679
  %2 = load i32, ptr %1, align 8, !dbg !1406, !tbaa !1351
  ret i32 %2, !dbg !1407
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetFuzz(ptr noundef %wand) local_unnamed_addr #0 !dbg !1408 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1410, metadata !DIExpression()), !dbg !1411
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1412
  %0 = load i32, ptr %debug, align 8, !dbg !1412, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1414
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1415

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1416
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 971, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1417
  br label %if.end, !dbg !1418

if.end:                                           ; preds = %if.then, %entry
  %fuzz = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 3, !dbg !1419
  %1 = load double, ptr %fuzz, align 8, !dbg !1419, !tbaa !932
  ret double %1, !dbg !1420
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetGreen(ptr noundef %wand) local_unnamed_addr #0 !dbg !1421 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1423, metadata !DIExpression()), !dbg !1424
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1425
  %0 = load i32, ptr %debug, align 8, !dbg !1425, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1427
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1428

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1429
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1002, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1430
  br label %if.end, !dbg !1431

if.end:                                           ; preds = %if.then, %entry
  %green = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 6, !dbg !1432
  %1 = load float, ptr %green, align 4, !dbg !1432, !tbaa !1244
  %conv = fpext float %1 to double, !dbg !1433
  %mul = fmul double %conv, 0x3EF0001000100010, !dbg !1434
  ret double %mul, !dbg !1435
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetGreenQuantum(ptr noundef %wand) local_unnamed_addr #0 !dbg !1436 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1438, metadata !DIExpression()), !dbg !1439
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1440
  %0 = load i32, ptr %debug, align 8, !dbg !1440, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1442
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1443

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1444
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1033, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1445
  br label %if.end, !dbg !1446

if.end:                                           ; preds = %if.then, %entry
  %green = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 6, !dbg !1447
  %1 = load float, ptr %green, align 4, !dbg !1447, !tbaa !1244
  call void @llvm.dbg.value(metadata float %1, metadata !1099, metadata !DIExpression()), !dbg !1448
  %cmp.i = fcmp ugt float %1, 0.000000e+00, !dbg !1450
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1451

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %1, 6.553500e+04, !dbg !1452
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1453

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %1, 5.000000e-01, !dbg !1454
  %conv.i = fptoui float %add.i to i16, !dbg !1455
  br label %ClampToQuantum.exit, !dbg !1456

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.end ], [ -1, %if.end.i ], !dbg !1448
  ret i16 %retval.0.i, !dbg !1457
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelGetHSL(ptr noundef %wand, ptr noundef %hue, ptr noundef %saturation, ptr noundef %lightness) local_unnamed_addr #0 !dbg !1458 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1463, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata ptr %hue, metadata !1464, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata ptr %saturation, metadata !1465, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata ptr %lightness, metadata !1466, metadata !DIExpression()), !dbg !1467
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1468
  %0 = load i32, ptr %debug, align 8, !dbg !1468, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1470
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1471

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1472
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1069, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1473
  br label %if.end, !dbg !1474

if.end:                                           ; preds = %if.then, %entry
  %red = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 5, !dbg !1475
  %1 = load float, ptr %red, align 8, !dbg !1475, !tbaa !1240
  call void @llvm.dbg.value(metadata float %1, metadata !1099, metadata !DIExpression()), !dbg !1476
  %cmp.i = fcmp ugt float %1, 0.000000e+00, !dbg !1478
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1479

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %1, 6.553500e+04, !dbg !1480
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1481

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %1, 5.000000e-01, !dbg !1482
  %conv.i = fptoui float %add.i to i16, !dbg !1483
  br label %ClampToQuantum.exit, !dbg !1484

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.end ], [ -1, %if.end.i ], !dbg !1476
  %green = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 6, !dbg !1485
  %2 = load float, ptr %green, align 4, !dbg !1485, !tbaa !1244
  call void @llvm.dbg.value(metadata float %2, metadata !1099, metadata !DIExpression()), !dbg !1486
  %cmp.i10 = fcmp ugt float %2, 0.000000e+00, !dbg !1488
  br i1 %cmp.i10, label %if.end.i12, label %ClampToQuantum.exit17, !dbg !1489

if.end.i12:                                       ; preds = %ClampToQuantum.exit
  %cmp1.i11 = fcmp ult float %2, 6.553500e+04, !dbg !1490
  br i1 %cmp1.i11, label %if.end3.i15, label %ClampToQuantum.exit17, !dbg !1491

if.end3.i15:                                      ; preds = %if.end.i12
  %add.i13 = fadd float %2, 5.000000e-01, !dbg !1492
  %conv.i14 = fptoui float %add.i13 to i16, !dbg !1493
  br label %ClampToQuantum.exit17, !dbg !1494

ClampToQuantum.exit17:                            ; preds = %ClampToQuantum.exit, %if.end.i12, %if.end3.i15
  %retval.0.i16 = phi i16 [ %conv.i14, %if.end3.i15 ], [ 0, %ClampToQuantum.exit ], [ -1, %if.end.i12 ], !dbg !1486
  %blue = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 7, !dbg !1495
  %3 = load float, ptr %blue, align 8, !dbg !1495, !tbaa !1167
  call void @llvm.dbg.value(metadata float %3, metadata !1099, metadata !DIExpression()), !dbg !1496
  %cmp.i18 = fcmp ugt float %3, 0.000000e+00, !dbg !1498
  br i1 %cmp.i18, label %if.end.i20, label %ClampToQuantum.exit25, !dbg !1499

if.end.i20:                                       ; preds = %ClampToQuantum.exit17
  %cmp1.i19 = fcmp ult float %3, 6.553500e+04, !dbg !1500
  br i1 %cmp1.i19, label %if.end3.i23, label %ClampToQuantum.exit25, !dbg !1501

if.end3.i23:                                      ; preds = %if.end.i20
  %add.i21 = fadd float %3, 5.000000e-01, !dbg !1502
  %conv.i22 = fptoui float %add.i21 to i16, !dbg !1503
  br label %ClampToQuantum.exit25, !dbg !1504

ClampToQuantum.exit25:                            ; preds = %ClampToQuantum.exit17, %if.end.i20, %if.end3.i23
  %retval.0.i24 = phi i16 [ %conv.i22, %if.end3.i23 ], [ 0, %ClampToQuantum.exit17 ], [ -1, %if.end.i20 ], !dbg !1496
  tail call void @ConvertRGBToHSL(i16 noundef zeroext %retval.0.i, i16 noundef zeroext %retval.0.i16, i16 noundef zeroext %retval.0.i24, ptr noundef %hue, ptr noundef %saturation, ptr noundef %lightness) #10, !dbg !1505
  ret void, !dbg !1506
}

declare !dbg !1507 void @ConvertRGBToHSL(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetIndex(ptr noundef %wand) local_unnamed_addr #0 !dbg !1512 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1516, metadata !DIExpression()), !dbg !1517
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1518
  %0 = load i32, ptr %debug, align 8, !dbg !1518, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1520
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1521

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1522
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1102, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1523
  br label %if.end, !dbg !1524

if.end:                                           ; preds = %if.then, %entry
  %index = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 9, !dbg !1525
  %1 = load float, ptr %index, align 8, !dbg !1525, !tbaa !1129
  %conv = fptoui float %1 to i16, !dbg !1526
  ret i16 %conv, !dbg !1527
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetMagenta(ptr noundef %wand) local_unnamed_addr #0 !dbg !1528 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1530, metadata !DIExpression()), !dbg !1531
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1532
  %0 = load i32, ptr %debug, align 8, !dbg !1532, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1534
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1535

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1536
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1133, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1537
  br label %if.end, !dbg !1538

if.end:                                           ; preds = %if.then, %entry
  %green = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 6, !dbg !1539
  %1 = load float, ptr %green, align 4, !dbg !1539, !tbaa !1244
  %conv = fpext float %1 to double, !dbg !1540
  %mul = fmul double %conv, 0x3EF0001000100010, !dbg !1541
  ret double %mul, !dbg !1542
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetMagentaQuantum(ptr noundef %wand) local_unnamed_addr #0 !dbg !1543 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1545, metadata !DIExpression()), !dbg !1546
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1547
  %0 = load i32, ptr %debug, align 8, !dbg !1547, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1549
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1550

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1551
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1164, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1552
  br label %if.end, !dbg !1553

if.end:                                           ; preds = %if.then, %entry
  %green = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 6, !dbg !1554
  %1 = load float, ptr %green, align 4, !dbg !1554, !tbaa !1244
  call void @llvm.dbg.value(metadata float %1, metadata !1099, metadata !DIExpression()), !dbg !1555
  %cmp.i = fcmp ugt float %1, 0.000000e+00, !dbg !1557
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1558

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %1, 6.553500e+04, !dbg !1559
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1560

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %1, 5.000000e-01, !dbg !1561
  %conv.i = fptoui float %add.i to i16, !dbg !1562
  br label %ClampToQuantum.exit, !dbg !1563

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.end ], [ -1, %if.end.i ], !dbg !1555
  ret i16 %retval.0.i, !dbg !1564
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelGetMagickColor(ptr noundef %wand, ptr nocapture noundef writeonly %color) local_unnamed_addr #0 !dbg !1565 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1569, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata ptr %color, metadata !1570, metadata !DIExpression()), !dbg !1571
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1572
  %0 = load i32, ptr %debug, align 8, !dbg !1572, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1574
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1575

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1576
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1198, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1577
  br label %if.end, !dbg !1578

if.end:                                           ; preds = %if.then, %entry
  %pixel = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, !dbg !1579
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %color, ptr noundef nonnull align 8 dereferenceable(56) %pixel, i64 56, i1 false), !dbg !1579, !tbaa.struct !735
  ret void, !dbg !1580
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetOpacity(ptr noundef %wand) local_unnamed_addr #0 !dbg !1581 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1583, metadata !DIExpression()), !dbg !1584
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1585
  %0 = load i32, ptr %debug, align 8, !dbg !1585, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1587
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1588

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1589
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1230, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1590
  br label %if.end, !dbg !1591

if.end:                                           ; preds = %if.then, %entry
  %opacity = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 8, !dbg !1592
  %1 = load float, ptr %opacity, align 4, !dbg !1592, !tbaa !1080
  %conv = fpext float %1 to double, !dbg !1593
  %mul = fmul double %conv, 0x3EF0001000100010, !dbg !1594
  ret double %mul, !dbg !1595
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetOpacityQuantum(ptr noundef %wand) local_unnamed_addr #0 !dbg !1596 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1598, metadata !DIExpression()), !dbg !1599
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1600
  %0 = load i32, ptr %debug, align 8, !dbg !1600, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1602
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1603

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1604
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1261, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1605
  br label %if.end, !dbg !1606

if.end:                                           ; preds = %if.then, %entry
  %opacity = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 8, !dbg !1607
  %1 = load float, ptr %opacity, align 4, !dbg !1607, !tbaa !1080
  call void @llvm.dbg.value(metadata float %1, metadata !1099, metadata !DIExpression()), !dbg !1608
  %cmp.i = fcmp ugt float %1, 0.000000e+00, !dbg !1610
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1611

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %1, 6.553500e+04, !dbg !1612
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1613

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %1, 5.000000e-01, !dbg !1614
  %conv.i = fptoui float %add.i to i16, !dbg !1615
  br label %ClampToQuantum.exit, !dbg !1616

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.end ], [ -1, %if.end.i ], !dbg !1608
  ret i16 %retval.0.i, !dbg !1617
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelGetQuantumColor(ptr noundef %wand, ptr nocapture noundef writeonly %color) local_unnamed_addr #0 !dbg !1618 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1622, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata ptr %color, metadata !1623, metadata !DIExpression()), !dbg !1624
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1625
  %0 = load i32, ptr %debug, align 8, !dbg !1625, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1627
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1628

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1629
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1294, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1630
  br label %if.end, !dbg !1631

if.end:                                           ; preds = %if.then, %entry
  %opacity = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 8, !dbg !1632
  %1 = load float, ptr %opacity, align 4, !dbg !1632, !tbaa !1080
  call void @llvm.dbg.value(metadata float %1, metadata !1099, metadata !DIExpression()), !dbg !1633
  %cmp.i = fcmp ugt float %1, 0.000000e+00, !dbg !1635
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1636

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %1, 6.553500e+04, !dbg !1637
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1638

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %1, 5.000000e-01, !dbg !1639
  %conv.i = fptoui float %add.i to i16, !dbg !1640
  br label %ClampToQuantum.exit, !dbg !1641

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.end ], [ -1, %if.end.i ], !dbg !1633
  %opacity2 = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 3, !dbg !1642
  store i16 %retval.0.i, ptr %opacity2, align 2, !dbg !1643, !tbaa !1644
  %colorspace = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 1, !dbg !1647
  %2 = load i32, ptr %colorspace, align 4, !dbg !1647, !tbaa !683
  %cmp4 = icmp eq i32 %2, 12, !dbg !1649
  %red = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 5, !dbg !1624
  %3 = load float, ptr %red, align 8, !dbg !1624, !tbaa !1240
  br i1 %cmp4, label %if.then5, label %if.end31, !dbg !1650

if.then5:                                         ; preds = %ClampToQuantum.exit
  %index = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 9, !dbg !1651
  %4 = load float, ptr %index, align 8, !dbg !1651, !tbaa !1129
  %sub = fsub float 6.553500e+04, %4, !dbg !1653
  %5 = tail call float @llvm.fmuladd.f32(float %3, float %sub, float %4), !dbg !1654
  %sub10 = fsub float 6.553500e+04, %5, !dbg !1655
  call void @llvm.dbg.value(metadata float %sub10, metadata !1099, metadata !DIExpression()), !dbg !1656
  %cmp.i65 = fcmp ugt float %sub10, 0.000000e+00, !dbg !1658
  br i1 %cmp.i65, label %if.end.i67, label %ClampToQuantum.exit72, !dbg !1659

if.end.i67:                                       ; preds = %if.then5
  %cmp1.i66 = fcmp ult float %sub10, 6.553500e+04, !dbg !1660
  br i1 %cmp1.i66, label %if.end3.i70, label %ClampToQuantum.exit72, !dbg !1661

if.end3.i70:                                      ; preds = %if.end.i67
  %add.i68 = fadd float %sub10, 5.000000e-01, !dbg !1662
  %conv.i69 = fptoui float %add.i68 to i16, !dbg !1663
  br label %ClampToQuantum.exit72, !dbg !1664

ClampToQuantum.exit72:                            ; preds = %if.then5, %if.end.i67, %if.end3.i70
  %retval.0.i71 = phi i16 [ %conv.i69, %if.end3.i70 ], [ 0, %if.then5 ], [ -1, %if.end.i67 ], !dbg !1656
  %red12 = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 2, !dbg !1665
  store i16 %retval.0.i71, ptr %red12, align 2, !dbg !1666, !tbaa !1667
  %green = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 6, !dbg !1668
  %6 = load float, ptr %green, align 4, !dbg !1668, !tbaa !1244
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %sub, float %4), !dbg !1669
  %sub19 = fsub float 6.553500e+04, %7, !dbg !1670
  call void @llvm.dbg.value(metadata float %sub19, metadata !1099, metadata !DIExpression()), !dbg !1671
  %cmp.i73 = fcmp ugt float %sub19, 0.000000e+00, !dbg !1673
  br i1 %cmp.i73, label %if.end.i75, label %ClampToQuantum.exit80, !dbg !1674

if.end.i75:                                       ; preds = %ClampToQuantum.exit72
  %cmp1.i74 = fcmp ult float %sub19, 6.553500e+04, !dbg !1675
  br i1 %cmp1.i74, label %if.end3.i78, label %ClampToQuantum.exit80, !dbg !1676

if.end3.i78:                                      ; preds = %if.end.i75
  %add.i76 = fadd float %sub19, 5.000000e-01, !dbg !1677
  %conv.i77 = fptoui float %add.i76 to i16, !dbg !1678
  br label %ClampToQuantum.exit80, !dbg !1679

ClampToQuantum.exit80:                            ; preds = %ClampToQuantum.exit72, %if.end.i75, %if.end3.i78
  %retval.0.i79 = phi i16 [ %conv.i77, %if.end3.i78 ], [ 0, %ClampToQuantum.exit72 ], [ -1, %if.end.i75 ], !dbg !1671
  %green21 = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 1, !dbg !1680
  store i16 %retval.0.i79, ptr %green21, align 2, !dbg !1681, !tbaa !1682
  %blue = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 7, !dbg !1683
  %8 = load float, ptr %blue, align 8, !dbg !1683, !tbaa !1167
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %sub, float %4), !dbg !1684
  %sub28 = fsub float 6.553500e+04, %9, !dbg !1685
  call void @llvm.dbg.value(metadata float %sub28, metadata !1099, metadata !DIExpression()), !dbg !1686
  %cmp.i81 = fcmp ugt float %sub28, 0.000000e+00, !dbg !1688
  br i1 %cmp.i81, label %if.end.i83, label %return, !dbg !1689

if.end.i83:                                       ; preds = %ClampToQuantum.exit80
  %cmp1.i82 = fcmp ult float %sub28, 6.553500e+04, !dbg !1690
  br i1 %cmp1.i82, label %if.end3.i86, label %return, !dbg !1691

if.end3.i86:                                      ; preds = %if.end.i83
  %add.i84 = fadd float %sub28, 5.000000e-01, !dbg !1692
  %conv.i85 = fptoui float %add.i84 to i16, !dbg !1693
  br label %return, !dbg !1694

if.end31:                                         ; preds = %ClampToQuantum.exit
  call void @llvm.dbg.value(metadata float %3, metadata !1099, metadata !DIExpression()), !dbg !1695
  %cmp.i89 = fcmp ugt float %3, 0.000000e+00, !dbg !1697
  br i1 %cmp.i89, label %if.end.i91, label %ClampToQuantum.exit96, !dbg !1698

if.end.i91:                                       ; preds = %if.end31
  %cmp1.i90 = fcmp ult float %3, 6.553500e+04, !dbg !1699
  br i1 %cmp1.i90, label %if.end3.i94, label %ClampToQuantum.exit96, !dbg !1700

if.end3.i94:                                      ; preds = %if.end.i91
  %add.i92 = fadd float %3, 5.000000e-01, !dbg !1701
  %conv.i93 = fptoui float %add.i92 to i16, !dbg !1702
  br label %ClampToQuantum.exit96, !dbg !1703

ClampToQuantum.exit96:                            ; preds = %if.end31, %if.end.i91, %if.end3.i94
  %retval.0.i95 = phi i16 [ %conv.i93, %if.end3.i94 ], [ 0, %if.end31 ], [ -1, %if.end.i91 ], !dbg !1695
  %red35 = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 2, !dbg !1704
  store i16 %retval.0.i95, ptr %red35, align 2, !dbg !1705, !tbaa !1667
  %green37 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 6, !dbg !1706
  %10 = load float, ptr %green37, align 4, !dbg !1706, !tbaa !1244
  call void @llvm.dbg.value(metadata float %10, metadata !1099, metadata !DIExpression()), !dbg !1707
  %cmp.i97 = fcmp ugt float %10, 0.000000e+00, !dbg !1709
  br i1 %cmp.i97, label %if.end.i99, label %ClampToQuantum.exit104, !dbg !1710

if.end.i99:                                       ; preds = %ClampToQuantum.exit96
  %cmp1.i98 = fcmp ult float %10, 6.553500e+04, !dbg !1711
  br i1 %cmp1.i98, label %if.end3.i102, label %ClampToQuantum.exit104, !dbg !1712

if.end3.i102:                                     ; preds = %if.end.i99
  %add.i100 = fadd float %10, 5.000000e-01, !dbg !1713
  %conv.i101 = fptoui float %add.i100 to i16, !dbg !1714
  br label %ClampToQuantum.exit104, !dbg !1715

ClampToQuantum.exit104:                           ; preds = %ClampToQuantum.exit96, %if.end.i99, %if.end3.i102
  %retval.0.i103 = phi i16 [ %conv.i101, %if.end3.i102 ], [ 0, %ClampToQuantum.exit96 ], [ -1, %if.end.i99 ], !dbg !1707
  %green39 = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 1, !dbg !1716
  store i16 %retval.0.i103, ptr %green39, align 2, !dbg !1717, !tbaa !1682
  %blue41 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 7, !dbg !1718
  %11 = load float, ptr %blue41, align 8, !dbg !1718, !tbaa !1167
  call void @llvm.dbg.value(metadata float %11, metadata !1099, metadata !DIExpression()), !dbg !1719
  %cmp.i105 = fcmp ugt float %11, 0.000000e+00, !dbg !1721
  br i1 %cmp.i105, label %if.end.i107, label %return, !dbg !1722

if.end.i107:                                      ; preds = %ClampToQuantum.exit104
  %cmp1.i106 = fcmp ult float %11, 6.553500e+04, !dbg !1723
  br i1 %cmp1.i106, label %if.end3.i110, label %return, !dbg !1724

if.end3.i110:                                     ; preds = %if.end.i107
  %add.i108 = fadd float %11, 5.000000e-01, !dbg !1725
  %conv.i109 = fptoui float %add.i108 to i16, !dbg !1726
  br label %return, !dbg !1727

return:                                           ; preds = %if.end3.i110, %if.end.i107, %ClampToQuantum.exit104, %if.end3.i86, %if.end.i83, %ClampToQuantum.exit80
  %storemerge = phi i16 [ %conv.i85, %if.end3.i86 ], [ 0, %ClampToQuantum.exit80 ], [ -1, %if.end.i83 ], [ %conv.i109, %if.end3.i110 ], [ 0, %ClampToQuantum.exit104 ], [ -1, %if.end.i107 ], !dbg !1624
  store i16 %storemerge, ptr %color, align 2, !dbg !1624, !tbaa !1728
  ret void, !dbg !1729
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetRed(ptr noundef %wand) local_unnamed_addr #0 !dbg !1730 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1732, metadata !DIExpression()), !dbg !1733
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1734
  %0 = load i32, ptr %debug, align 8, !dbg !1734, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1736
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1737

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1738
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1340, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1739
  br label %if.end, !dbg !1740

if.end:                                           ; preds = %if.then, %entry
  %red = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 5, !dbg !1741
  %1 = load float, ptr %red, align 8, !dbg !1741, !tbaa !1240
  %conv = fpext float %1 to double, !dbg !1742
  %mul = fmul double %conv, 0x3EF0001000100010, !dbg !1743
  ret double %mul, !dbg !1744
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetRedQuantum(ptr noundef %wand) local_unnamed_addr #0 !dbg !1745 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1747, metadata !DIExpression()), !dbg !1748
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1749
  %0 = load i32, ptr %debug, align 8, !dbg !1749, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1751
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1752

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1753
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1371, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1754
  br label %if.end, !dbg !1755

if.end:                                           ; preds = %if.then, %entry
  %red = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 5, !dbg !1756
  %1 = load float, ptr %red, align 8, !dbg !1756, !tbaa !1240
  call void @llvm.dbg.value(metadata float %1, metadata !1099, metadata !DIExpression()), !dbg !1757
  %cmp.i = fcmp ugt float %1, 0.000000e+00, !dbg !1759
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1760

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %1, 6.553500e+04, !dbg !1761
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1762

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %1, 5.000000e-01, !dbg !1763
  %conv.i = fptoui float %add.i to i16, !dbg !1764
  br label %ClampToQuantum.exit, !dbg !1765

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.end ], [ -1, %if.end.i ], !dbg !1757
  ret i16 %retval.0.i, !dbg !1766
}

; Function Attrs: nounwind uwtable
define dso_local double @PixelGetYellow(ptr noundef %wand) local_unnamed_addr #0 !dbg !1767 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1769, metadata !DIExpression()), !dbg !1770
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1771
  %0 = load i32, ptr %debug, align 8, !dbg !1771, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1773
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1774

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1775
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1402, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1776
  br label %if.end, !dbg !1777

if.end:                                           ; preds = %if.then, %entry
  %blue = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 7, !dbg !1778
  %1 = load float, ptr %blue, align 8, !dbg !1778, !tbaa !1167
  %conv = fpext float %1 to double, !dbg !1779
  %mul = fmul double %conv, 0x3EF0001000100010, !dbg !1780
  ret double %mul, !dbg !1781
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @PixelGetYellowQuantum(ptr noundef %wand) local_unnamed_addr #0 !dbg !1782 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1784, metadata !DIExpression()), !dbg !1785
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1786
  %0 = load i32, ptr %debug, align 8, !dbg !1786, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1788
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1789

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1790
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1433, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1791
  br label %if.end, !dbg !1792

if.end:                                           ; preds = %if.then, %entry
  %blue = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 7, !dbg !1793
  %1 = load float, ptr %blue, align 8, !dbg !1793, !tbaa !1167
  call void @llvm.dbg.value(metadata float %1, metadata !1099, metadata !DIExpression()), !dbg !1794
  %cmp.i = fcmp ugt float %1, 0.000000e+00, !dbg !1796
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1797

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %1, 6.553500e+04, !dbg !1798
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1799

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %1, 5.000000e-01, !dbg !1800
  %conv.i = fptoui float %add.i to i16, !dbg !1801
  br label %ClampToQuantum.exit, !dbg !1802

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.end ], [ -1, %if.end.i ], !dbg !1794
  ret i16 %retval.0.i, !dbg !1803
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetAlpha(ptr noundef %wand, double noundef %alpha) local_unnamed_addr #0 !dbg !1804 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1808, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata double %alpha, metadata !1809, metadata !DIExpression()), !dbg !1810
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1811
  %0 = load i32, ptr %debug, align 8, !dbg !1811, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1813
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1814

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1815
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1467, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1816
  br label %if.end, !dbg !1817

if.end:                                           ; preds = %if.then, %entry
  %mul = fmul double %alpha, 6.553500e+04, !dbg !1818
  %conv = fptrunc double %mul to float, !dbg !1819
  call void @llvm.dbg.value(metadata float %conv, metadata !1099, metadata !DIExpression()), !dbg !1820
  %cmp.i = fcmp ugt float %conv, 0.000000e+00, !dbg !1822
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1823

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %conv, 6.553500e+04, !dbg !1824
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1825

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv, 5.000000e-01, !dbg !1826
  %conv.i = fptoui float %add.i to i16, !dbg !1827
  %phi.bo = xor i16 %conv.i, -1, !dbg !1828
  %phi.cast = uitofp i16 %phi.bo to float, !dbg !1828
  br label %ClampToQuantum.exit, !dbg !1828

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi float [ %phi.cast, %if.end3.i ], [ 6.553500e+04, %if.end ], [ 0.000000e+00, %if.end.i ]
  %opacity = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 8, !dbg !1829
  store float %retval.0.i, ptr %opacity, align 4, !dbg !1830, !tbaa !1080
  ret void, !dbg !1831
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetAlphaQuantum(ptr noundef %wand, i16 noundef zeroext %opacity) local_unnamed_addr #0 !dbg !1832 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1836, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i16 %opacity, metadata !1837, metadata !DIExpression()), !dbg !1838
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1839
  %0 = load i32, ptr %debug, align 8, !dbg !1839, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1841
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1842

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1843
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1502, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1844
  br label %if.end, !dbg !1845

if.end:                                           ; preds = %if.then, %entry
  %1 = xor i16 %opacity, -1, !dbg !1846
  %conv1 = uitofp i16 %1 to float, !dbg !1847
  %opacity2 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 8, !dbg !1848
  store float %conv1, ptr %opacity2, align 4, !dbg !1849, !tbaa !1080
  ret void, !dbg !1850
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetBlack(ptr noundef %wand, double noundef %black) local_unnamed_addr #0 !dbg !1851 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1853, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata double %black, metadata !1854, metadata !DIExpression()), !dbg !1855
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1856
  %0 = load i32, ptr %debug, align 8, !dbg !1856, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1858
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1859

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1860
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1535, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1861
  br label %if.end, !dbg !1862

if.end:                                           ; preds = %if.then, %entry
  %mul = fmul double %black, 6.553500e+04, !dbg !1863
  %conv = fptrunc double %mul to float, !dbg !1864
  call void @llvm.dbg.value(metadata float %conv, metadata !1099, metadata !DIExpression()), !dbg !1865
  %cmp.i = fcmp ugt float %conv, 0.000000e+00, !dbg !1867
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1868

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %conv, 6.553500e+04, !dbg !1869
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1870

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv, 5.000000e-01, !dbg !1871
  %conv.i = fptoui float %add.i to i16, !dbg !1872
  %phi.cast = uitofp i16 %conv.i to float, !dbg !1873
  br label %ClampToQuantum.exit, !dbg !1873

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi float [ %phi.cast, %if.end3.i ], [ 0.000000e+00, %if.end ], [ 6.553500e+04, %if.end.i ]
  %index = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 9, !dbg !1874
  store float %retval.0.i, ptr %index, align 8, !dbg !1875, !tbaa !1129
  ret void, !dbg !1876
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetBlackQuantum(ptr noundef %wand, i16 noundef zeroext %black) local_unnamed_addr #0 !dbg !1877 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1879, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i16 %black, metadata !1880, metadata !DIExpression()), !dbg !1881
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1882
  %0 = load i32, ptr %debug, align 8, !dbg !1882, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1884
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1885

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1886
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1569, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1887
  br label %if.end, !dbg !1888

if.end:                                           ; preds = %if.then, %entry
  %conv = uitofp i16 %black to float, !dbg !1889
  %index = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 9, !dbg !1890
  store float %conv, ptr %index, align 8, !dbg !1891, !tbaa !1129
  ret void, !dbg !1892
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetBlue(ptr noundef %wand, double noundef %blue) local_unnamed_addr #0 !dbg !1893 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1895, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata double %blue, metadata !1896, metadata !DIExpression()), !dbg !1897
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1898
  %0 = load i32, ptr %debug, align 8, !dbg !1898, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1900
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1901

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1902
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1602, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1903
  br label %if.end, !dbg !1904

if.end:                                           ; preds = %if.then, %entry
  %mul = fmul double %blue, 6.553500e+04, !dbg !1905
  %conv = fptrunc double %mul to float, !dbg !1906
  call void @llvm.dbg.value(metadata float %conv, metadata !1099, metadata !DIExpression()), !dbg !1907
  %cmp.i = fcmp ugt float %conv, 0.000000e+00, !dbg !1909
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1910

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %conv, 6.553500e+04, !dbg !1911
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1912

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv, 5.000000e-01, !dbg !1913
  %conv.i = fptoui float %add.i to i16, !dbg !1914
  %phi.cast = uitofp i16 %conv.i to float, !dbg !1915
  br label %ClampToQuantum.exit, !dbg !1915

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi float [ %phi.cast, %if.end3.i ], [ 0.000000e+00, %if.end ], [ 6.553500e+04, %if.end.i ]
  %blue3 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 7, !dbg !1916
  store float %retval.0.i, ptr %blue3, align 8, !dbg !1917, !tbaa !1167
  ret void, !dbg !1918
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetBlueQuantum(ptr noundef %wand, i16 noundef zeroext %blue) local_unnamed_addr #0 !dbg !1919 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1921, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i16 %blue, metadata !1922, metadata !DIExpression()), !dbg !1923
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1924
  %0 = load i32, ptr %debug, align 8, !dbg !1924, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1926
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1927

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1928
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1636, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1929
  br label %if.end, !dbg !1930

if.end:                                           ; preds = %if.then, %entry
  %conv = uitofp i16 %blue to float, !dbg !1931
  %blue1 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 7, !dbg !1932
  store float %conv, ptr %blue1, align 8, !dbg !1933, !tbaa !1167
  ret void, !dbg !1934
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PixelSetColor(ptr noundef %wand, ptr noundef %color) local_unnamed_addr #0 !dbg !1935 {
entry:
  %pixel = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1939, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata ptr %color, metadata !1940, metadata !DIExpression()), !dbg !1943
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #10, !dbg !1944
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !1942, metadata !DIExpression()), !dbg !1945
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1946
  %0 = load i32, ptr %debug, align 8, !dbg !1946, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1948
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1949

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1950
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1676, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1951
  br label %if.end, !dbg !1952

if.end:                                           ; preds = %if.then, %entry
  %exception = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 2, !dbg !1953
  %1 = load ptr, ptr %exception, align 8, !dbg !1953, !tbaa !679
  %call1 = call i32 @QueryMagickColor(ptr noundef %color, ptr noundef nonnull %pixel, ptr noundef %1) #10, !dbg !1954
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1941, metadata !DIExpression()), !dbg !1943
  %cmp2.not = icmp eq i32 %call1, 0, !dbg !1955
  br i1 %cmp2.not, label %if.end5, label %if.then3, !dbg !1957

if.then3:                                         ; preds = %if.end
  %pixel4 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, !dbg !1958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel4, ptr noundef nonnull align 8 dereferenceable(56) %pixel, i64 56, i1 false), !dbg !1959, !tbaa.struct !735
  br label %if.end5, !dbg !1960

if.end5:                                          ; preds = %if.then3, %if.end
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #10, !dbg !1961
  ret i32 %call1, !dbg !1962
}

declare !dbg !1963 i32 @QueryMagickColor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetColorCount(ptr noundef %wand, i64 noundef %count) local_unnamed_addr #0 !dbg !1966 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1970, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %count, metadata !1971, metadata !DIExpression()), !dbg !1972
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1973
  %0 = load i32, ptr %debug, align 8, !dbg !1973, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1975
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1976

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1977
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1712, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1978
  br label %if.end, !dbg !1979

if.end:                                           ; preds = %if.then, %entry
  %count1 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 4, !dbg !1980
  store i64 %count, ptr %count1, align 8, !dbg !1981, !tbaa !741
  ret void, !dbg !1982
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetColorFromWand(ptr noundef %wand, ptr nocapture noundef readonly %color) local_unnamed_addr #0 !dbg !1983 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !1987, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata ptr %color, metadata !1988, metadata !DIExpression()), !dbg !1989
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !1990
  %0 = load i32, ptr %debug, align 8, !dbg !1990, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !1992
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1993

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !1994
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1745, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !1995
  br label %if.end, !dbg !1996

if.end:                                           ; preds = %if.then, %entry
  %pixel = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, !dbg !1997
  %pixel1 = getelementptr inbounds %struct._PixelWand, ptr %color, i64 0, i32 3, !dbg !1998
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel, ptr noundef nonnull align 8 dereferenceable(56) %pixel1, i64 56, i1 false), !dbg !1998, !tbaa.struct !735
  ret void, !dbg !1999
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetCyan(ptr noundef %wand, double noundef %cyan) local_unnamed_addr #0 !dbg !2000 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata double %cyan, metadata !2003, metadata !DIExpression()), !dbg !2004
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2005
  %0 = load i32, ptr %debug, align 8, !dbg !2005, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2007
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2008

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2009
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1779, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2010
  br label %if.end, !dbg !2011

if.end:                                           ; preds = %if.then, %entry
  %mul = fmul double %cyan, 6.553500e+04, !dbg !2012
  %conv = fptrunc double %mul to float, !dbg !2013
  call void @llvm.dbg.value(metadata float %conv, metadata !1099, metadata !DIExpression()), !dbg !2014
  %cmp.i = fcmp ugt float %conv, 0.000000e+00, !dbg !2016
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !2017

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %conv, 6.553500e+04, !dbg !2018
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !2019

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv, 5.000000e-01, !dbg !2020
  %conv.i = fptoui float %add.i to i16, !dbg !2021
  %phi.cast = uitofp i16 %conv.i to float, !dbg !2022
  br label %ClampToQuantum.exit, !dbg !2022

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi float [ %phi.cast, %if.end3.i ], [ 0.000000e+00, %if.end ], [ 6.553500e+04, %if.end.i ]
  %red = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 5, !dbg !2023
  store float %retval.0.i, ptr %red, align 8, !dbg !2024, !tbaa !1240
  ret void, !dbg !2025
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetCyanQuantum(ptr noundef %wand, i16 noundef zeroext %cyan) local_unnamed_addr #0 !dbg !2026 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2028, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i16 %cyan, metadata !2029, metadata !DIExpression()), !dbg !2030
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2031
  %0 = load i32, ptr %debug, align 8, !dbg !2031, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2033
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2034

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2035
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1813, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2036
  br label %if.end, !dbg !2037

if.end:                                           ; preds = %if.then, %entry
  %conv = uitofp i16 %cyan to float, !dbg !2038
  %red = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 5, !dbg !2039
  store float %conv, ptr %red, align 8, !dbg !2040, !tbaa !1240
  ret void, !dbg !2041
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetFuzz(ptr noundef %wand, double noundef %fuzz) local_unnamed_addr #0 !dbg !2042 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2044, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata double %fuzz, metadata !2045, metadata !DIExpression()), !dbg !2046
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2047
  %0 = load i32, ptr %debug, align 8, !dbg !2047, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2049
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2050

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2051
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1846, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2052
  br label %if.end, !dbg !2053

if.end:                                           ; preds = %if.then, %entry
  %conv = fptrunc double %fuzz to float, !dbg !2054
  %conv1 = fpext float %conv to double, !dbg !2054
  %fuzz2 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 3, !dbg !2055
  store double %conv1, ptr %fuzz2, align 8, !dbg !2056, !tbaa !932
  ret void, !dbg !2057
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetGreen(ptr noundef %wand, double noundef %green) local_unnamed_addr #0 !dbg !2058 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2060, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata double %green, metadata !2061, metadata !DIExpression()), !dbg !2062
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2063
  %0 = load i32, ptr %debug, align 8, !dbg !2063, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2065
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2066

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2067
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1879, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2068
  br label %if.end, !dbg !2069

if.end:                                           ; preds = %if.then, %entry
  %mul = fmul double %green, 6.553500e+04, !dbg !2070
  %conv = fptrunc double %mul to float, !dbg !2071
  call void @llvm.dbg.value(metadata float %conv, metadata !1099, metadata !DIExpression()), !dbg !2072
  %cmp.i = fcmp ugt float %conv, 0.000000e+00, !dbg !2074
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !2075

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %conv, 6.553500e+04, !dbg !2076
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !2077

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv, 5.000000e-01, !dbg !2078
  %conv.i = fptoui float %add.i to i16, !dbg !2079
  %phi.cast = uitofp i16 %conv.i to float, !dbg !2080
  br label %ClampToQuantum.exit, !dbg !2080

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi float [ %phi.cast, %if.end3.i ], [ 0.000000e+00, %if.end ], [ 6.553500e+04, %if.end.i ]
  %green3 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 6, !dbg !2081
  store float %retval.0.i, ptr %green3, align 4, !dbg !2082, !tbaa !1244
  ret void, !dbg !2083
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetGreenQuantum(ptr noundef %wand, i16 noundef zeroext %green) local_unnamed_addr #0 !dbg !2084 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2086, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i16 %green, metadata !2087, metadata !DIExpression()), !dbg !2088
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2089
  %0 = load i32, ptr %debug, align 8, !dbg !2089, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2091
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2092

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2093
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1913, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2094
  br label %if.end, !dbg !2095

if.end:                                           ; preds = %if.then, %entry
  %conv = uitofp i16 %green to float, !dbg !2096
  %green1 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 6, !dbg !2097
  store float %conv, ptr %green1, align 4, !dbg !2098, !tbaa !1244
  ret void, !dbg !2099
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetHSL(ptr noundef %wand, double noundef %hue, double noundef %saturation, double noundef %lightness) local_unnamed_addr #0 !dbg !2100 {
entry:
  %blue = alloca i16, align 2
  %green = alloca i16, align 2
  %red = alloca i16, align 2
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2104, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata double %hue, metadata !2105, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata double %saturation, metadata !2106, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata double %lightness, metadata !2107, metadata !DIExpression()), !dbg !2111
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %blue) #10, !dbg !2112
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %green) #10, !dbg !2112
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %red) #10, !dbg !2112
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2113
  %0 = load i32, ptr %debug, align 8, !dbg !2113, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2115
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2116

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2117
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1954, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2118
  br label %if.end, !dbg !2119

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr %blue, metadata !2108, metadata !DIExpression(DW_OP_deref)), !dbg !2111
  call void @llvm.dbg.value(metadata ptr %green, metadata !2109, metadata !DIExpression(DW_OP_deref)), !dbg !2111
  call void @llvm.dbg.value(metadata ptr %red, metadata !2110, metadata !DIExpression(DW_OP_deref)), !dbg !2111
  call void @ConvertHSLToRGB(double noundef %hue, double noundef %saturation, double noundef %lightness, ptr noundef nonnull %red, ptr noundef nonnull %green, ptr noundef nonnull %blue) #10, !dbg !2120
  %1 = load i16, ptr %red, align 2, !dbg !2121, !tbaa !2122
  call void @llvm.dbg.value(metadata i16 %1, metadata !2110, metadata !DIExpression()), !dbg !2111
  %conv = uitofp i16 %1 to float, !dbg !2123
  %red1 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 5, !dbg !2124
  store float %conv, ptr %red1, align 8, !dbg !2125, !tbaa !1240
  %2 = load i16, ptr %green, align 2, !dbg !2126, !tbaa !2122
  call void @llvm.dbg.value(metadata i16 %2, metadata !2109, metadata !DIExpression()), !dbg !2111
  %conv2 = uitofp i16 %2 to float, !dbg !2127
  %green4 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 6, !dbg !2128
  store float %conv2, ptr %green4, align 4, !dbg !2129, !tbaa !1244
  %3 = load i16, ptr %blue, align 2, !dbg !2130, !tbaa !2122
  call void @llvm.dbg.value(metadata i16 %3, metadata !2108, metadata !DIExpression()), !dbg !2111
  %conv5 = uitofp i16 %3 to float, !dbg !2131
  %blue7 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 7, !dbg !2132
  store float %conv5, ptr %blue7, align 8, !dbg !2133, !tbaa !1167
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %red) #10, !dbg !2134
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %green) #10, !dbg !2134
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %blue) #10, !dbg !2134
  ret void, !dbg !2134
}

declare !dbg !2135 void @ConvertHSLToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetIndex(ptr noundef %wand, i16 noundef zeroext %index) local_unnamed_addr #0 !dbg !2139 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2144, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i16 %index, metadata !2145, metadata !DIExpression()), !dbg !2146
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2147
  %0 = load i32, ptr %debug, align 8, !dbg !2147, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2149
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2150

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2151
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1990, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2152
  br label %if.end, !dbg !2153

if.end:                                           ; preds = %if.then, %entry
  %conv = uitofp i16 %index to float, !dbg !2154
  %index1 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 9, !dbg !2155
  store float %conv, ptr %index1, align 8, !dbg !2156, !tbaa !1129
  ret void, !dbg !2157
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetMagenta(ptr noundef %wand, double noundef %magenta) local_unnamed_addr #0 !dbg !2158 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2160, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata double %magenta, metadata !2161, metadata !DIExpression()), !dbg !2162
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2163
  %0 = load i32, ptr %debug, align 8, !dbg !2163, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2165
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2166

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2167
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2023, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2168
  br label %if.end, !dbg !2169

if.end:                                           ; preds = %if.then, %entry
  %mul = fmul double %magenta, 6.553500e+04, !dbg !2170
  %conv = fptrunc double %mul to float, !dbg !2171
  call void @llvm.dbg.value(metadata float %conv, metadata !1099, metadata !DIExpression()), !dbg !2172
  %cmp.i = fcmp ugt float %conv, 0.000000e+00, !dbg !2174
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !2175

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %conv, 6.553500e+04, !dbg !2176
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !2177

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv, 5.000000e-01, !dbg !2178
  %conv.i = fptoui float %add.i to i16, !dbg !2179
  %phi.cast = uitofp i16 %conv.i to float, !dbg !2180
  br label %ClampToQuantum.exit, !dbg !2180

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi float [ %phi.cast, %if.end3.i ], [ 0.000000e+00, %if.end ], [ 6.553500e+04, %if.end.i ]
  %green = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 6, !dbg !2181
  store float %retval.0.i, ptr %green, align 4, !dbg !2182, !tbaa !1244
  ret void, !dbg !2183
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetMagentaQuantum(ptr noundef %wand, i16 noundef zeroext %magenta) local_unnamed_addr #0 !dbg !2184 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2186, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i16 %magenta, metadata !2187, metadata !DIExpression()), !dbg !2188
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2189
  %0 = load i32, ptr %debug, align 8, !dbg !2189, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2191
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2192

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2193
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2058, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2194
  br label %if.end, !dbg !2195

if.end:                                           ; preds = %if.then, %entry
  %conv = uitofp i16 %magenta to float, !dbg !2196
  %green = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 6, !dbg !2197
  store float %conv, ptr %green, align 4, !dbg !2198, !tbaa !1244
  ret void, !dbg !2199
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetMagickColor(ptr noundef %wand, ptr nocapture noundef readonly %color) local_unnamed_addr #0 !dbg !2200 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2204, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata ptr %color, metadata !2205, metadata !DIExpression()), !dbg !2206
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2207
  %0 = load i32, ptr %debug, align 8, !dbg !2207, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2209
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2210

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2211
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2092, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2212
  br label %if.end, !dbg !2213

if.end:                                           ; preds = %if.then, %entry
  %pixel = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, !dbg !2214
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel, ptr noundef nonnull align 8 dereferenceable(56) %color, i64 56, i1 false), !dbg !2215, !tbaa.struct !735
  ret void, !dbg !2216
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetOpacity(ptr noundef %wand, double noundef %opacity) local_unnamed_addr #0 !dbg !2217 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2219, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata double %opacity, metadata !2220, metadata !DIExpression()), !dbg !2221
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2222
  %0 = load i32, ptr %debug, align 8, !dbg !2222, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2224
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2225

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2226
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2126, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2227
  br label %if.end, !dbg !2228

if.end:                                           ; preds = %if.then, %entry
  %matte = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 2, !dbg !2229
  store i32 1, ptr %matte, align 8, !dbg !2230, !tbaa !1264
  %mul = fmul double %opacity, 6.553500e+04, !dbg !2231
  %conv = fptrunc double %mul to float, !dbg !2232
  call void @llvm.dbg.value(metadata float %conv, metadata !1099, metadata !DIExpression()), !dbg !2233
  %cmp.i = fcmp ugt float %conv, 0.000000e+00, !dbg !2235
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !2236

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %conv, 6.553500e+04, !dbg !2237
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !2238

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv, 5.000000e-01, !dbg !2239
  %conv.i = fptoui float %add.i to i16, !dbg !2240
  %phi.cast = uitofp i16 %conv.i to float, !dbg !2241
  br label %ClampToQuantum.exit, !dbg !2241

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi float [ %phi.cast, %if.end3.i ], [ 0.000000e+00, %if.end ], [ 6.553500e+04, %if.end.i ]
  %opacity4 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 8, !dbg !2242
  store float %retval.0.i, ptr %opacity4, align 4, !dbg !2243, !tbaa !1080
  ret void, !dbg !2244
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetOpacityQuantum(ptr noundef %wand, i16 noundef zeroext %opacity) local_unnamed_addr #0 !dbg !2245 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2247, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i16 %opacity, metadata !2248, metadata !DIExpression()), !dbg !2249
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2250
  %0 = load i32, ptr %debug, align 8, !dbg !2250, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2252
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2253

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2254
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2162, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2255
  br label %if.end, !dbg !2256

if.end:                                           ; preds = %if.then, %entry
  %conv = uitofp i16 %opacity to float, !dbg !2257
  %opacity1 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 8, !dbg !2258
  store float %conv, ptr %opacity1, align 4, !dbg !2259, !tbaa !1080
  ret void, !dbg !2260
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetQuantumColor(ptr noundef %wand, ptr nocapture noundef readonly %color) local_unnamed_addr #0 !dbg !2261 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2267, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata ptr %color, metadata !2268, metadata !DIExpression()), !dbg !2269
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2270
  %0 = load i32, ptr %debug, align 8, !dbg !2270, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2272
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2273

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2274
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2195, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2275
  br label %if.end, !dbg !2276

if.end:                                           ; preds = %if.then, %entry
  %red = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 2, !dbg !2277
  %1 = load i16, ptr %red, align 2, !dbg !2277, !tbaa !1667
  %conv = uitofp i16 %1 to float, !dbg !2278
  %red1 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 5, !dbg !2279
  store float %conv, ptr %red1, align 8, !dbg !2280, !tbaa !1240
  %green = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 1, !dbg !2281
  %2 = load i16, ptr %green, align 2, !dbg !2281, !tbaa !1682
  %conv2 = uitofp i16 %2 to float, !dbg !2282
  %green4 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 6, !dbg !2283
  store float %conv2, ptr %green4, align 4, !dbg !2284, !tbaa !1244
  %3 = load i16, ptr %color, align 2, !dbg !2285, !tbaa !1728
  %conv5 = uitofp i16 %3 to float, !dbg !2286
  %blue7 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 7, !dbg !2287
  store float %conv5, ptr %blue7, align 8, !dbg !2288, !tbaa !1167
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 3, !dbg !2289
  %4 = load i16, ptr %opacity, align 2, !dbg !2289, !tbaa !1644
  %conv8 = uitofp i16 %4 to float, !dbg !2290
  %opacity10 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 8, !dbg !2291
  store float %conv8, ptr %opacity10, align 4, !dbg !2292, !tbaa !1080
  %cmp13.not = icmp ne i16 %4, 0, !dbg !2293
  %cond = zext i1 %cmp13.not to i32, !dbg !2294
  %matte = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 2, !dbg !2295
  store i32 %cond, ptr %matte, align 8, !dbg !2296, !tbaa !1264
  ret void, !dbg !2297
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetRed(ptr noundef %wand, double noundef %red) local_unnamed_addr #0 !dbg !2298 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2300, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata double %red, metadata !2301, metadata !DIExpression()), !dbg !2302
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2303
  %0 = load i32, ptr %debug, align 8, !dbg !2303, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2305
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2306

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2307
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2233, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2308
  br label %if.end, !dbg !2309

if.end:                                           ; preds = %if.then, %entry
  %mul = fmul double %red, 6.553500e+04, !dbg !2310
  %conv = fptrunc double %mul to float, !dbg !2311
  call void @llvm.dbg.value(metadata float %conv, metadata !1099, metadata !DIExpression()), !dbg !2312
  %cmp.i = fcmp ugt float %conv, 0.000000e+00, !dbg !2314
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !2315

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %conv, 6.553500e+04, !dbg !2316
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !2317

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv, 5.000000e-01, !dbg !2318
  %conv.i = fptoui float %add.i to i16, !dbg !2319
  %phi.cast = uitofp i16 %conv.i to float, !dbg !2320
  br label %ClampToQuantum.exit, !dbg !2320

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi float [ %phi.cast, %if.end3.i ], [ 0.000000e+00, %if.end ], [ 6.553500e+04, %if.end.i ]
  %red3 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 5, !dbg !2321
  store float %retval.0.i, ptr %red3, align 8, !dbg !2322, !tbaa !1240
  ret void, !dbg !2323
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetRedQuantum(ptr noundef %wand, i16 noundef zeroext %red) local_unnamed_addr #0 !dbg !2324 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2326, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i16 %red, metadata !2327, metadata !DIExpression()), !dbg !2328
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2329
  %0 = load i32, ptr %debug, align 8, !dbg !2329, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2331
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2332

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2333
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2267, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2334
  br label %if.end, !dbg !2335

if.end:                                           ; preds = %if.then, %entry
  %conv = uitofp i16 %red to float, !dbg !2336
  %red1 = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 5, !dbg !2337
  store float %conv, ptr %red1, align 8, !dbg !2338, !tbaa !1240
  ret void, !dbg !2339
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetYellow(ptr noundef %wand, double noundef %yellow) local_unnamed_addr #0 !dbg !2340 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2342, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata double %yellow, metadata !2343, metadata !DIExpression()), !dbg !2344
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2345
  %0 = load i32, ptr %debug, align 8, !dbg !2345, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2347
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2348

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2349
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2300, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2350
  br label %if.end, !dbg !2351

if.end:                                           ; preds = %if.then, %entry
  %mul = fmul double %yellow, 6.553500e+04, !dbg !2352
  %conv = fptrunc double %mul to float, !dbg !2353
  call void @llvm.dbg.value(metadata float %conv, metadata !1099, metadata !DIExpression()), !dbg !2354
  %cmp.i = fcmp ugt float %conv, 0.000000e+00, !dbg !2356
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !2357

if.end.i:                                         ; preds = %if.end
  %cmp1.i = fcmp ult float %conv, 6.553500e+04, !dbg !2358
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !2359

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv, 5.000000e-01, !dbg !2360
  %conv.i = fptoui float %add.i to i16, !dbg !2361
  %phi.cast = uitofp i16 %conv.i to float, !dbg !2362
  br label %ClampToQuantum.exit, !dbg !2362

ClampToQuantum.exit:                              ; preds = %if.end, %if.end.i, %if.end3.i
  %retval.0.i = phi float [ %phi.cast, %if.end3.i ], [ 0.000000e+00, %if.end ], [ 6.553500e+04, %if.end.i ]
  %blue = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 7, !dbg !2363
  store float %retval.0.i, ptr %blue, align 8, !dbg !2364, !tbaa !1167
  ret void, !dbg !2365
}

; Function Attrs: nounwind uwtable
define dso_local void @PixelSetYellowQuantum(ptr noundef %wand, i16 noundef zeroext %yellow) local_unnamed_addr #0 !dbg !2366 {
entry:
  call void @llvm.dbg.value(metadata ptr %wand, metadata !2368, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i16 %yellow, metadata !2369, metadata !DIExpression()), !dbg !2370
  %debug = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 5, !dbg !2371
  %0 = load i32, ptr %debug, align 8, !dbg !2371, !tbaa !664
  %cmp.not = icmp eq i32 %0, 0, !dbg !2373
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2374

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 1, !dbg !2375
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2334, ptr noundef nonnull @.str.2, ptr noundef nonnull %name) #10, !dbg !2376
  br label %if.end, !dbg !2377

if.end:                                           ; preds = %if.then, %entry
  %conv = uitofp i16 %yellow to float, !dbg !2378
  %blue = getelementptr inbounds %struct._PixelWand, ptr %wand, i64 0, i32 3, i32 7, !dbg !2379
  store float %conv, ptr %blue, align 8, !dbg !2380, !tbaa !1167
  ret void, !dbg !2381
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!649, !650, !651, !652, !653, !654}
!llvm.ident = !{!655}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !393, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/wand/pixel-wand.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "23bebe1a8d7557b14c7ac04df153a5b9")
!2 = !{!3, !77, !82, !87, !124, !149, !174, !186, !194, !199, !234, !244, !250, !265, !336, !344, !350, !367, !381}
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
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 204, baseType: !5, size: 32, elements: !83)
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "UndefinedClass", value: 0)
!85 = !DIEnumerator(name: "DirectClass", value: 1)
!86 = !DIEnumerator(name: "PseudoClass", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 25, baseType: !5, size: 32, elements: !89)
!88 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!90 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!91 = !DIEnumerator(name: "RGBColorspace", value: 1)
!92 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!93 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!94 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!95 = !DIEnumerator(name: "LabColorspace", value: 5)
!96 = !DIEnumerator(name: "XYZColorspace", value: 6)
!97 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!98 = !DIEnumerator(name: "YCCColorspace", value: 8)
!99 = !DIEnumerator(name: "YIQColorspace", value: 9)
!100 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!101 = !DIEnumerator(name: "YUVColorspace", value: 11)
!102 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!103 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!104 = !DIEnumerator(name: "HSBColorspace", value: 14)
!105 = !DIEnumerator(name: "HSLColorspace", value: 15)
!106 = !DIEnumerator(name: "HWBColorspace", value: 16)
!107 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!108 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!109 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!110 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!111 = !DIEnumerator(name: "LogColorspace", value: 21)
!112 = !DIEnumerator(name: "CMYColorspace", value: 22)
!113 = !DIEnumerator(name: "LuvColorspace", value: 23)
!114 = !DIEnumerator(name: "HCLColorspace", value: 24)
!115 = !DIEnumerator(name: "LCHColorspace", value: 25)
!116 = !DIEnumerator(name: "LMSColorspace", value: 26)
!117 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!118 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!119 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!120 = !DIEnumerator(name: "HSIColorspace", value: 30)
!121 = !DIEnumerator(name: "HSVColorspace", value: 31)
!122 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!123 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !125, line: 34, baseType: !5, size: 32, elements: !126)
!125 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!127 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!128 = !DIEnumerator(name: "NoEvents", value: 0)
!129 = !DIEnumerator(name: "TraceEvent", value: 1)
!130 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!131 = !DIEnumerator(name: "BlobEvent", value: 4)
!132 = !DIEnumerator(name: "CacheEvent", value: 8)
!133 = !DIEnumerator(name: "CoderEvent", value: 16)
!134 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!135 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!136 = !DIEnumerator(name: "DrawEvent", value: 128)
!137 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!138 = !DIEnumerator(name: "ImageEvent", value: 512)
!139 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!140 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!141 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!142 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!143 = !DIEnumerator(name: "TransformEvent", value: 16384)
!144 = !DIEnumerator(name: "UserEvent", value: 36864)
!145 = !DIEnumerator(name: "WandEvent", value: 65536)
!146 = !DIEnumerator(name: "X11Event", value: 131072)
!147 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!148 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !150, line: 25, baseType: !5, size: 32, elements: !151)
!150 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!152 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!153 = !DIEnumerator(name: "NoCompression", value: 1)
!154 = !DIEnumerator(name: "BZipCompression", value: 2)
!155 = !DIEnumerator(name: "DXT1Compression", value: 3)
!156 = !DIEnumerator(name: "DXT3Compression", value: 4)
!157 = !DIEnumerator(name: "DXT5Compression", value: 5)
!158 = !DIEnumerator(name: "FaxCompression", value: 6)
!159 = !DIEnumerator(name: "Group4Compression", value: 7)
!160 = !DIEnumerator(name: "JPEGCompression", value: 8)
!161 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!162 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!163 = !DIEnumerator(name: "LZWCompression", value: 11)
!164 = !DIEnumerator(name: "RLECompression", value: 12)
!165 = !DIEnumerator(name: "ZipCompression", value: 13)
!166 = !DIEnumerator(name: "ZipSCompression", value: 14)
!167 = !DIEnumerator(name: "PizCompression", value: 15)
!168 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!169 = !DIEnumerator(name: "B44Compression", value: 17)
!170 = !DIEnumerator(name: "B44ACompression", value: 18)
!171 = !DIEnumerator(name: "LZMACompression", value: 19)
!172 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!173 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !175, line: 75, baseType: !5, size: 32, elements: !176)
!175 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185}
!177 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!178 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!179 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!180 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!181 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!182 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!183 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!184 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!185 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !187, line: 42, baseType: !5, size: 32, elements: !188)
!187 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!188 = !{!189, !190, !191, !192, !193}
!189 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!190 = !DIEnumerator(name: "SaturationIntent", value: 1)
!191 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!192 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!193 = !DIEnumerator(name: "RelativeIntent", value: 4)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !175, line: 88, baseType: !5, size: 32, elements: !195)
!195 = !{!196, !197, !198}
!196 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!197 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!198 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !200, line: 32, baseType: !5, size: 32, elements: !201)
!200 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233}
!202 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!203 = !DIEnumerator(name: "PointFilter", value: 1)
!204 = !DIEnumerator(name: "BoxFilter", value: 2)
!205 = !DIEnumerator(name: "TriangleFilter", value: 3)
!206 = !DIEnumerator(name: "HermiteFilter", value: 4)
!207 = !DIEnumerator(name: "HanningFilter", value: 5)
!208 = !DIEnumerator(name: "HammingFilter", value: 6)
!209 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!210 = !DIEnumerator(name: "GaussianFilter", value: 8)
!211 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!212 = !DIEnumerator(name: "CubicFilter", value: 10)
!213 = !DIEnumerator(name: "CatromFilter", value: 11)
!214 = !DIEnumerator(name: "MitchellFilter", value: 12)
!215 = !DIEnumerator(name: "JincFilter", value: 13)
!216 = !DIEnumerator(name: "SincFilter", value: 14)
!217 = !DIEnumerator(name: "SincFastFilter", value: 15)
!218 = !DIEnumerator(name: "KaiserFilter", value: 16)
!219 = !DIEnumerator(name: "WelshFilter", value: 17)
!220 = !DIEnumerator(name: "ParzenFilter", value: 18)
!221 = !DIEnumerator(name: "BohmanFilter", value: 19)
!222 = !DIEnumerator(name: "BartlettFilter", value: 20)
!223 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!224 = !DIEnumerator(name: "LanczosFilter", value: 22)
!225 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!226 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!227 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!228 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!229 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!230 = !DIEnumerator(name: "CosineFilter", value: 28)
!231 = !DIEnumerator(name: "SplineFilter", value: 29)
!232 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!233 = !DIEnumerator(name: "SentinelFilter", value: 31)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !175, line: 63, baseType: !5, size: 32, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243}
!236 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!237 = !DIEnumerator(name: "NoInterlace", value: 1)
!238 = !DIEnumerator(name: "LineInterlace", value: 2)
!239 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!240 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!241 = !DIEnumerator(name: "GIFInterlace", value: 5)
!242 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!243 = !DIEnumerator(name: "PNGInterlace", value: 7)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !245, line: 30, baseType: !5, size: 32, elements: !246)
!245 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!246 = !{!247, !248, !249}
!247 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!248 = !DIEnumerator(name: "LSBEndian", value: 1)
!249 = !DIEnumerator(name: "MSBEndian", value: 2)
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !251, line: 77, baseType: !5, size: 32, elements: !252)
!251 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!253 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!254 = !DIEnumerator(name: "ForgetGravity", value: 0)
!255 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!256 = !DIEnumerator(name: "NorthGravity", value: 2)
!257 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!258 = !DIEnumerator(name: "WestGravity", value: 4)
!259 = !DIEnumerator(name: "CenterGravity", value: 5)
!260 = !DIEnumerator(name: "EastGravity", value: 6)
!261 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!262 = !DIEnumerator(name: "SouthGravity", value: 8)
!263 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!264 = !DIEnumerator(name: "StaticGravity", value: 10)
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !266, line: 25, baseType: !5, size: 32, elements: !267)
!266 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!268 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!269 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!270 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!271 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!272 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!273 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!274 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!275 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!276 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!277 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!278 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!279 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!280 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!281 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!282 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!283 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!284 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!285 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!286 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!287 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!288 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!289 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!290 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!291 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!292 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!293 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!294 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!295 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!296 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!297 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!298 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!299 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!300 = !DIEnumerator(name: "InCompositeOp", value: 32)
!301 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!302 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!303 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!304 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!305 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!306 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!307 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!308 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!309 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!310 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!311 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!312 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!313 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!314 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!315 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!316 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!317 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!318 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!319 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!320 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!321 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!322 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!323 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!324 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!325 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!326 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!327 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!328 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!329 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!330 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!331 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!332 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!333 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!334 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!335 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !337, line: 25, baseType: !5, size: 32, elements: !338)
!337 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!338 = !{!339, !340, !341, !342, !343}
!339 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!340 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!341 = !DIEnumerator(name: "NoneDispose", value: 1)
!342 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!343 = !DIEnumerator(name: "PreviousDispose", value: 3)
!344 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !345, line: 25, baseType: !5, size: 32, elements: !346)
!345 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!346 = !{!347, !348, !349}
!347 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!348 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!349 = !DIEnumerator(name: "RunningTimerState", value: 2)
!350 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !351, line: 31, baseType: !5, size: 32, elements: !352)
!351 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!352 = !{!353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366}
!353 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!354 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!355 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!356 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!357 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!358 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!359 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!360 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!361 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!362 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!363 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!364 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!365 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!366 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!367 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !175, line: 47, baseType: !5, size: 32, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380}
!369 = !DIEnumerator(name: "UndefinedType", value: 0)
!370 = !DIEnumerator(name: "BilevelType", value: 1)
!371 = !DIEnumerator(name: "GrayscaleType", value: 2)
!372 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!373 = !DIEnumerator(name: "PaletteType", value: 4)
!374 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!375 = !DIEnumerator(name: "TrueColorType", value: 6)
!376 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!377 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!378 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!379 = !DIEnumerator(name: "OptimizeType", value: 10)
!380 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!381 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !351, line: 67, baseType: !5, size: 32, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391, !392}
!383 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!384 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!385 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!386 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!387 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!388 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!389 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!390 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!391 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!392 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!393 = !{!394, !395, !422, !417, !441, !453, !402, !454, !459, !461, !484, !580, !419, !648, !444}
!394 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelWand", file: !397, line: 26, baseType: !398)
!397 = !DIFile(filename: "apps/538.imagick_r/src/wand/pixel-wand.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3c7d71f46771b27e3f74acd989c109c4")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelWand", file: !399, line: 63, size: 33536, elements: !400)
!399 = !DIFile(filename: "apps/538.imagick_r/src/wand/pixel-wand.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "23bebe1a8d7557b14c7ac04df153a5b9")
!400 = !{!401, !404, !409, !431, !450, !451, !452}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !398, file: !399, line: 66, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !403, line: 46, baseType: !394)
!403 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !398, file: !399, line: 69, baseType: !405, size: 32768, offset: 64)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 32768, elements: !407)
!406 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!407 = !{!408}
!408 = !DISubrange(count: 4096)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !398, file: !399, line: 72, baseType: !410, size: 64, offset: 32832)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !78, line: 219, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !4, line: 102, size: 448, elements: !413)
!413 = !{!414, !416, !418, !420, !421, !423, !425, !430}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !412, file: !4, line: 105, baseType: !415, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !4, line: 100, baseType: !3)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !412, file: !4, line: 108, baseType: !417, size: 32, offset: 32)
!417 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !412, file: !4, line: 111, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !412, file: !4, line: 112, baseType: !419, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !412, file: !4, line: 115, baseType: !422, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !412, file: !4, line: 118, baseType: !424, size: 32, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !78, line: 215, baseType: !77)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !412, file: !4, line: 121, baseType: !426, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !428, line: 26, baseType: !429)
!428 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !428, line: 25, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !412, file: !4, line: 124, baseType: !402, size: 64, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "pixel", scope: !398, file: !399, line: 75, baseType: !432, size: 448, offset: 32896)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !351, line: 127, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !351, line: 104, size: 448, elements: !434)
!434 = !{!435, !437, !439, !440, !442, !443, !446, !447, !448, !449}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !433, file: !351, line: 107, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !78, line: 209, baseType: !82)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !433, file: !351, line: 110, baseType: !438, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !88, line: 61, baseType: !87)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !433, file: !351, line: 113, baseType: !424, size: 32, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !433, file: !351, line: 116, baseType: !441, size: 64, offset: 128)
!441 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !433, file: !351, line: 119, baseType: !402, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !433, file: !351, line: 122, baseType: !444, size: 32, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !78, line: 78, baseType: !445)
!445 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !433, file: !351, line: 123, baseType: !444, size: 32, offset: 288)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !433, file: !351, line: 124, baseType: !444, size: 32, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !433, file: !351, line: 125, baseType: !444, size: 32, offset: 352)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !433, file: !351, line: 126, baseType: !444, size: 32, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !398, file: !399, line: 78, baseType: !402, size: 64, offset: 33344)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !398, file: !399, line: 81, baseType: !424, size: 32, offset: 33408)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !398, file: !399, line: 84, baseType: !402, size: 64, offset: 33472)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !455, line: 77, baseType: !456)
!455 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !457, line: 193, baseType: !458)
!457 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!458 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !78, line: 221, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !175, line: 150, size: 105920, elements: !464)
!464 = !{!465, !466, !467, !469, !470, !472, !473, !474, !475, !476, !477, !478, !489, !490, !491, !492, !493, !507, !509, !510, !512, !513, !514, !515, !516, !517, !518, !526, !527, !528, !529, !530, !531, !533, !535, !537, !539, !541, !543, !545, !546, !547, !548, !549, !550, !551, !559, !574, !588, !589, !590, !591, !595, !599, !600, !601, !602, !603, !604, !605, !606, !608, !609, !619, !620, !622, !623, !624, !625, !626, !627, !629, !630, !631, !632, !633, !634, !635, !637, !638, !639, !640, !641, !645, !647}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !463, file: !175, line: 153, baseType: !436, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !463, file: !175, line: 156, baseType: !438, size: 32, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !463, file: !175, line: 159, baseType: !468, size: 32, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !150, line: 49, baseType: !149)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !463, file: !175, line: 162, baseType: !402, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !463, file: !175, line: 165, baseType: !471, size: 32, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !175, line: 86, baseType: !174)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !463, file: !175, line: 168, baseType: !424, size: 32, offset: 224)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !463, file: !175, line: 169, baseType: !424, size: 32, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !463, file: !175, line: 172, baseType: !402, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !463, file: !175, line: 173, baseType: !402, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !463, file: !175, line: 174, baseType: !402, size: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !463, file: !175, line: 175, baseType: !402, size: 64, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !463, file: !175, line: 178, baseType: !479, size: 64, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !351, line: 148, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !351, line: 131, size: 64, elements: !482)
!482 = !{!483, !486, !487, !488}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !481, file: !351, line: 143, baseType: !484, size: 16)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !78, line: 93, baseType: !485)
!485 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !481, file: !351, line: 144, baseType: !484, size: 16, offset: 16)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !481, file: !351, line: 145, baseType: !484, size: 16, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !481, file: !351, line: 146, baseType: !484, size: 16, offset: 48)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !463, file: !175, line: 179, baseType: !480, size: 64, offset: 640)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !463, file: !175, line: 180, baseType: !480, size: 64, offset: 704)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !463, file: !175, line: 181, baseType: !480, size: 64, offset: 768)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !463, file: !175, line: 184, baseType: !441, size: 64, offset: 832)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !463, file: !175, line: 187, baseType: !494, size: 768, offset: 896)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !175, line: 128, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !175, line: 121, size: 768, elements: !496)
!496 = !{!497, !504, !505, !506}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !495, file: !175, line: 124, baseType: !498, size: 192)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !175, line: 101, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !175, line: 95, size: 192, elements: !500)
!500 = !{!501, !502, !503}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !499, file: !175, line: 98, baseType: !441, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !499, file: !175, line: 99, baseType: !441, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !499, file: !175, line: 100, baseType: !441, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !495, file: !175, line: 125, baseType: !498, size: 192, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !495, file: !175, line: 126, baseType: !498, size: 192, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !495, file: !175, line: 127, baseType: !498, size: 192, offset: 576)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !463, file: !175, line: 190, baseType: !508, size: 32, offset: 1664)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !187, line: 49, baseType: !186)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !463, file: !175, line: 193, baseType: !422, size: 64, offset: 1728)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !463, file: !175, line: 196, baseType: !511, size: 32, offset: 1792)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !175, line: 93, baseType: !194)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !463, file: !175, line: 199, baseType: !419, size: 64, offset: 1856)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !463, file: !175, line: 200, baseType: !419, size: 64, offset: 1920)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !463, file: !175, line: 201, baseType: !419, size: 64, offset: 1984)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !463, file: !175, line: 204, baseType: !454, size: 64, offset: 2048)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !463, file: !175, line: 207, baseType: !441, size: 64, offset: 2112)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !463, file: !175, line: 208, baseType: !441, size: 64, offset: 2176)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !463, file: !175, line: 211, baseType: !519, size: 256, offset: 2240)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !251, line: 130, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !251, line: 121, size: 256, elements: !521)
!521 = !{!522, !523, !524, !525}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !520, file: !251, line: 124, baseType: !402, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !520, file: !251, line: 125, baseType: !402, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !520, file: !251, line: 128, baseType: !454, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !520, file: !251, line: 129, baseType: !454, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !463, file: !175, line: 212, baseType: !519, size: 256, offset: 2496)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !463, file: !175, line: 213, baseType: !519, size: 256, offset: 2752)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !463, file: !175, line: 216, baseType: !441, size: 64, offset: 3008)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !463, file: !175, line: 217, baseType: !441, size: 64, offset: 3072)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !463, file: !175, line: 218, baseType: !441, size: 64, offset: 3136)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !463, file: !175, line: 221, baseType: !532, size: 32, offset: 3200)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !200, line: 66, baseType: !199)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !463, file: !175, line: 224, baseType: !534, size: 32, offset: 3232)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !175, line: 73, baseType: !234)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !463, file: !175, line: 227, baseType: !536, size: 32, offset: 3264)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !245, line: 35, baseType: !244)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !463, file: !175, line: 230, baseType: !538, size: 32, offset: 3296)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !251, line: 91, baseType: !250)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !463, file: !175, line: 233, baseType: !540, size: 32, offset: 3328)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !266, line: 99, baseType: !265)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !463, file: !175, line: 236, baseType: !542, size: 32, offset: 3360)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !337, line: 32, baseType: !336)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !463, file: !175, line: 239, baseType: !544, size: 64, offset: 3392)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !463, file: !175, line: 242, baseType: !402, size: 64, offset: 3456)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !463, file: !175, line: 243, baseType: !402, size: 64, offset: 3520)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !463, file: !175, line: 246, baseType: !454, size: 64, offset: 3584)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !463, file: !175, line: 249, baseType: !402, size: 64, offset: 3648)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !463, file: !175, line: 250, baseType: !402, size: 64, offset: 3712)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !463, file: !175, line: 253, baseType: !454, size: 64, offset: 3776)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !463, file: !175, line: 256, baseType: !552, size: 192, offset: 3840)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !553, line: 68, baseType: !554)
!553 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !553, line: 62, size: 192, elements: !555)
!555 = !{!556, !557, !558}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !554, file: !553, line: 65, baseType: !441, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !554, file: !553, line: 66, baseType: !441, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !554, file: !553, line: 67, baseType: !441, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !463, file: !175, line: 259, baseType: !560, size: 512, offset: 4032)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !345, line: 51, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !345, line: 40, size: 512, elements: !562)
!562 = !{!563, !570, !571, !573}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !561, file: !345, line: 43, baseType: !564, size: 192)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !345, line: 38, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !345, line: 32, size: 192, elements: !566)
!566 = !{!567, !568, !569}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !565, file: !345, line: 35, baseType: !441, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !565, file: !345, line: 36, baseType: !441, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !565, file: !345, line: 37, baseType: !441, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !561, file: !345, line: 44, baseType: !564, size: 192, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !561, file: !345, line: 47, baseType: !572, size: 32, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !345, line: 30, baseType: !344)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !561, file: !345, line: 50, baseType: !402, size: 64, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !463, file: !175, line: 262, baseType: !575, size: 64, offset: 4544)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !576, line: 26, baseType: !577)
!576 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!424, !580, !582, !585, !422}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !78, line: 150, baseType: !584)
!584 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !78, line: 151, baseType: !587)
!587 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !463, file: !175, line: 265, baseType: !422, size: 64, offset: 4608)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !463, file: !175, line: 266, baseType: !422, size: 64, offset: 4672)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !463, file: !175, line: 267, baseType: !422, size: 64, offset: 4736)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !463, file: !175, line: 270, baseType: !592, size: 64, offset: 4800)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !150, line: 52, baseType: !594)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !150, line: 51, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !463, file: !175, line: 273, baseType: !596, size: 64, offset: 4864)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !78, line: 217, baseType: !598)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !78, line: 217, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !463, file: !175, line: 276, baseType: !405, size: 32768, offset: 4928)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !463, file: !175, line: 277, baseType: !405, size: 32768, offset: 37696)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !463, file: !175, line: 278, baseType: !405, size: 32768, offset: 70464)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !463, file: !175, line: 281, baseType: !402, size: 64, offset: 103232)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !463, file: !175, line: 282, baseType: !402, size: 64, offset: 103296)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !463, file: !175, line: 285, baseType: !411, size: 448, offset: 103360)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !463, file: !175, line: 288, baseType: !424, size: 32, offset: 103808)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !463, file: !175, line: 291, baseType: !607, size: 64, offset: 103872)
!607 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !454)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !463, file: !175, line: 294, baseType: !426, size: 64, offset: 103936)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !463, file: !175, line: 297, baseType: !610, size: 256, offset: 104000)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !187, line: 40, baseType: !611)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !187, line: 27, size: 256, elements: !612)
!612 = !{!613, !614, !615, !618}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !611, file: !187, line: 30, baseType: !419, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !611, file: !187, line: 33, baseType: !402, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !611, file: !187, line: 36, baseType: !616, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !611, file: !187, line: 39, baseType: !402, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !463, file: !175, line: 298, baseType: !610, size: 256, offset: 104256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !463, file: !175, line: 299, baseType: !621, size: 64, offset: 104512)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !463, file: !175, line: 302, baseType: !402, size: 64, offset: 104576)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !463, file: !175, line: 305, baseType: !402, size: 64, offset: 104640)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !463, file: !175, line: 308, baseType: !544, size: 64, offset: 104704)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !463, file: !175, line: 309, baseType: !544, size: 64, offset: 104768)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !463, file: !175, line: 310, baseType: !544, size: 64, offset: 104832)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !463, file: !175, line: 313, baseType: !628, size: 32, offset: 104896)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !351, line: 47, baseType: !350)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !463, file: !175, line: 316, baseType: !424, size: 32, offset: 104928)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !463, file: !175, line: 319, baseType: !480, size: 64, offset: 104960)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !463, file: !175, line: 322, baseType: !544, size: 64, offset: 105024)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !463, file: !175, line: 325, baseType: !519, size: 256, offset: 105088)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !463, file: !175, line: 328, baseType: !422, size: 64, offset: 105344)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !463, file: !175, line: 329, baseType: !422, size: 64, offset: 105408)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !463, file: !175, line: 332, baseType: !636, size: 32, offset: 105472)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !175, line: 61, baseType: !367)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !463, file: !175, line: 335, baseType: !424, size: 32, offset: 105504)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !463, file: !175, line: 338, baseType: !586, size: 64, offset: 105536)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !463, file: !175, line: 341, baseType: !424, size: 32, offset: 105600)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !463, file: !175, line: 344, baseType: !402, size: 64, offset: 105664)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !463, file: !175, line: 347, baseType: !642, size: 64, offset: 105728)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !643, line: 7, baseType: !644)
!643 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !457, line: 160, baseType: !458)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !463, file: !175, line: 350, baseType: !646, size: 32, offset: 105792)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !351, line: 79, baseType: !381)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !463, file: !175, line: 353, baseType: !402, size: 64, offset: 105856)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !351, line: 129, baseType: !484)
!649 = !{i32 7, !"Dwarf Version", i32 5}
!650 = !{i32 2, !"Debug Info Version", i32 3}
!651 = !{i32 1, !"wchar_size", i32 4}
!652 = !{i32 7, !"PIC Level", i32 2}
!653 = !{i32 7, !"PIE Level", i32 2}
!654 = !{i32 7, !"uwtable", i32 2}
!655 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!656 = distinct !DISubprogram(name: "ClearPixelWand", scope: !399, file: !399, line: 109, type: !657, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !395}
!659 = !{!660}
!660 = !DILocalVariable(name: "wand", arg: 1, scope: !656, file: !399, line: 109, type: !395)
!661 = !DILocation(line: 0, scope: !656)
!662 = !DILocation(line: 113, column: 13, scope: !663)
!663 = distinct !DILexicalBlock(scope: !656, file: !399, line: 113, column: 7)
!664 = !{!665, !667, i64 4176}
!665 = !{!"_PixelWand", !666, i64 0, !667, i64 8, !669, i64 4104, !670, i64 4112, !666, i64 4168, !667, i64 4176, !666, i64 4184}
!666 = !{!"long", !667, i64 0}
!667 = !{!"omnipotent char", !668, i64 0}
!668 = !{!"Simple C/C++ TBAA"}
!669 = !{!"any pointer", !667, i64 0}
!670 = !{!"_MagickPixelPacket", !667, i64 0, !667, i64 4, !667, i64 8, !671, i64 16, !666, i64 24, !672, i64 32, !672, i64 36, !672, i64 40, !672, i64 44, !672, i64 48}
!671 = !{!"double", !667, i64 0}
!672 = !{!"float", !667, i64 0}
!673 = !DILocation(line: 113, column: 19, scope: !663)
!674 = !DILocation(line: 113, column: 7, scope: !656)
!675 = !DILocation(line: 114, column: 66, scope: !663)
!676 = !DILocation(line: 114, column: 12, scope: !663)
!677 = !DILocation(line: 114, column: 5, scope: !663)
!678 = !DILocation(line: 115, column: 30, scope: !656)
!679 = !{!665, !669, i64 4104}
!680 = !DILocation(line: 115, column: 3, scope: !656)
!681 = !DILocation(line: 116, column: 15, scope: !656)
!682 = !DILocation(line: 116, column: 25, scope: !656)
!683 = !{!665, !667, i64 4116}
!684 = !DILocation(line: 117, column: 15, scope: !656)
!685 = !DILocation(line: 117, column: 14, scope: !656)
!686 = !DILocation(line: 118, column: 1, scope: !656)
!687 = !DISubprogram(name: "LogMagickEvent", scope: !125, file: !125, line: 83, type: !688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!688 = !DISubroutineType(types: !689)
!689 = !{!424, !690, !580, !580, !692, !580, null}
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !125, line: 58, baseType: !124)
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!693 = !{}
!694 = !DISubprogram(name: "ClearMagickException", scope: !4, file: !4, line: 165, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !410}
!697 = !DISubprogram(name: "IsEventLogging", scope: !125, file: !125, line: 80, type: !698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!698 = !DISubroutineType(types: !699)
!699 = !{!424}
!700 = distinct !DISubprogram(name: "ClonePixelWand", scope: !399, file: !399, line: 142, type: !701, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !703)
!701 = !DISubroutineType(types: !702)
!702 = !{!395, !459}
!703 = !{!704, !705, !706}
!704 = !DILocalVariable(name: "wand", arg: 1, scope: !700, file: !399, line: 142, type: !459)
!705 = !DILocalVariable(name: "clone_wand", scope: !700, file: !399, line: 145, type: !395)
!706 = !DILocalVariable(name: "exception", scope: !707, file: !399, line: 153, type: !411)
!707 = distinct !DILexicalBlock(scope: !708, file: !399, line: 153, column: 5)
!708 = distinct !DILexicalBlock(scope: !700, file: !399, line: 152, column: 7)
!709 = !DILocation(line: 0, scope: !700)
!710 = !DILocation(line: 149, column: 13, scope: !711)
!711 = distinct !DILexicalBlock(scope: !700, file: !399, line: 149, column: 7)
!712 = !DILocation(line: 149, column: 19, scope: !711)
!713 = !DILocation(line: 149, column: 7, scope: !700)
!714 = !DILocation(line: 150, column: 66, scope: !711)
!715 = !DILocation(line: 150, column: 12, scope: !711)
!716 = !DILocation(line: 150, column: 5, scope: !711)
!717 = !DILocation(line: 151, column: 28, scope: !700)
!718 = !DILocation(line: 152, column: 18, scope: !708)
!719 = !DILocation(line: 152, column: 7, scope: !700)
!720 = !DILocation(line: 153, column: 5, scope: !707)
!721 = !DILocation(line: 155, column: 10, scope: !700)
!722 = !DILocation(line: 156, column: 18, scope: !700)
!723 = !DILocation(line: 156, column: 17, scope: !700)
!724 = !{!665, !666, i64 0}
!725 = !DILocation(line: 157, column: 41, scope: !700)
!726 = !DILocation(line: 158, column: 17, scope: !700)
!727 = !DILocation(line: 157, column: 10, scope: !700)
!728 = !DILocation(line: 159, column: 25, scope: !700)
!729 = !DILocation(line: 159, column: 15, scope: !700)
!730 = !DILocation(line: 159, column: 24, scope: !700)
!731 = !DILocation(line: 160, column: 48, scope: !700)
!732 = !DILocation(line: 160, column: 3, scope: !700)
!733 = !DILocation(line: 161, column: 15, scope: !700)
!734 = !DILocation(line: 161, column: 27, scope: !700)
!735 = !{i64 0, i64 4, !736, i64 4, i64 4, !736, i64 8, i64 4, !736, i64 16, i64 8, !737, i64 24, i64 8, !738, i64 32, i64 4, !739, i64 36, i64 4, !739, i64 40, i64 4, !739, i64 44, i64 4, !739, i64 48, i64 4, !739}
!736 = !{!667, !667, i64 0}
!737 = !{!671, !671, i64 0}
!738 = !{!666, !666, i64 0}
!739 = !{!672, !672, i64 0}
!740 = !DILocation(line: 162, column: 27, scope: !700)
!741 = !{!665, !666, i64 4168}
!742 = !DILocation(line: 162, column: 15, scope: !700)
!743 = !DILocation(line: 162, column: 20, scope: !700)
!744 = !DILocation(line: 163, column: 21, scope: !700)
!745 = !DILocation(line: 163, column: 15, scope: !700)
!746 = !DILocation(line: 163, column: 20, scope: !700)
!747 = !DILocation(line: 164, column: 25, scope: !748)
!748 = distinct !DILexicalBlock(scope: !700, file: !399, line: 164, column: 7)
!749 = !DILocation(line: 164, column: 7, scope: !700)
!750 = !DILocation(line: 165, column: 12, scope: !748)
!751 = !DILocation(line: 165, column: 5, scope: !748)
!752 = !DILocation(line: 166, column: 15, scope: !700)
!753 = !DILocation(line: 166, column: 24, scope: !700)
!754 = !{!665, !666, i64 4184}
!755 = !DILocation(line: 167, column: 3, scope: !700)
!756 = !DISubprogram(name: "AcquireMagickMemory", scope: !757, file: !757, line: 40, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!757 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!758 = !DISubroutineType(types: !759)
!759 = !{!422, !692}
!760 = !DISubprogram(name: "GetExceptionInfo", scope: !4, file: !4, line: 166, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!761 = !DISubprogram(name: "ThrowMagickException", scope: !4, file: !4, line: 156, type: !762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!762 = !DISubroutineType(types: !763)
!763 = !{!424, !410, !580, !580, !692, !764, !580, !580, null}
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!765 = !DISubprogram(name: "CatchException", scope: !4, file: !4, line: 164, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!766 = !DISubprogram(name: "DestroyExceptionInfo", scope: !4, file: !4, line: 148, type: !767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!767 = !DISubroutineType(types: !768)
!768 = !{!410, !410}
!769 = !DISubprogram(name: "MagickWandTerminus", scope: !770, file: !770, line: 116, type: !771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!770 = !DIFile(filename: "apps/538.imagick_r/src/wand/MagickWand.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ffc9981fe595b674b5932183b4455d96")
!771 = !DISubroutineType(types: !772)
!772 = !{null}
!773 = !DISubprogram(name: "ResetMagickMemory", scope: !757, file: !757, line: 52, type: !774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!774 = !DISubroutineType(types: !775)
!775 = !{!422, !422, !417, !692}
!776 = !DISubprogram(name: "AcquireWandId", scope: !777, file: !777, line: 26, type: !778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!777 = !DIFile(filename: "apps/538.imagick_r/src/wand/wand.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "04fee0d7de953bb2b067eac76943bcb6")
!778 = !DISubroutineType(types: !779)
!779 = !{!402}
!780 = !DISubprogram(name: "FormatLocaleString", scope: !781, file: !781, line: 71, type: !782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!781 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!782 = !DISubroutineType(types: !783)
!783 = !{!454, !784, !692, !785, null}
!784 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !419)
!785 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !580)
!786 = !DISubprogram(name: "AcquireExceptionInfo", scope: !4, file: !4, line: 146, type: !787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!787 = !DISubroutineType(types: !788)
!788 = !{!410}
!789 = !DISubprogram(name: "InheritException", scope: !4, file: !4, line: 167, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !410, !792}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!794 = distinct !DISubprogram(name: "ClonePixelWands", scope: !399, file: !399, line: 195, type: !795, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !798)
!795 = !DISubroutineType(types: !796)
!796 = !{!453, !797, !692}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!798 = !{!799, !800, !801, !802, !803}
!799 = !DILocalVariable(name: "wands", arg: 1, scope: !794, file: !399, line: 195, type: !797)
!800 = !DILocalVariable(name: "number_wands", arg: 2, scope: !794, file: !399, line: 196, type: !692)
!801 = !DILocalVariable(name: "i", scope: !794, file: !399, line: 199, type: !454)
!802 = !DILocalVariable(name: "clone_wands", scope: !794, file: !399, line: 202, type: !453)
!803 = !DILocalVariable(name: "exception", scope: !804, file: !399, line: 207, type: !411)
!804 = distinct !DILexicalBlock(scope: !805, file: !399, line: 207, column: 5)
!805 = distinct !DILexicalBlock(scope: !794, file: !399, line: 206, column: 7)
!806 = !DILocation(line: 0, scope: !794)
!807 = !DILocation(line: 204, column: 30, scope: !794)
!808 = !DILocation(line: 206, column: 19, scope: !805)
!809 = !DILocation(line: 206, column: 7, scope: !794)
!810 = !DILocation(line: 209, column: 15, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !399, line: 209, column: 3)
!812 = distinct !DILexicalBlock(scope: !794, file: !399, line: 209, column: 3)
!813 = !DILocation(line: 209, column: 3, scope: !812)
!814 = !DILocation(line: 207, column: 5, scope: !804)
!815 = !{!816, !816, i64 0}
!816 = !{!"int", !667, i64 0}
!817 = !DILocation(line: 210, column: 35, scope: !811)
!818 = !{!669, !669, i64 0}
!819 = !DILocation(line: 210, column: 20, scope: !811)
!820 = !DILocation(line: 210, column: 5, scope: !811)
!821 = !DILocation(line: 210, column: 19, scope: !811)
!822 = !DILocation(line: 209, column: 42, scope: !811)
!823 = distinct !{!823, !813, !824, !825, !826}
!824 = !DILocation(line: 210, column: 43, scope: !812)
!825 = !{!"llvm.loop.mustprogress"}
!826 = !{!"llvm.loop.unroll.disable"}
!827 = !DILocation(line: 211, column: 3, scope: !794)
!828 = !DISubprogram(name: "AcquireQuantumMemory", scope: !757, file: !757, line: 42, type: !829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!829 = !DISubroutineType(types: !830)
!830 = !{!422, !692, !692}
!831 = !DISubprogram(name: "GetExceptionMessage", scope: !4, file: !4, line: 137, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!832 = !DISubroutineType(types: !833)
!833 = !{!419, !834}
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!835 = distinct !DISubprogram(name: "DestroyPixelWand", scope: !399, file: !399, line: 236, type: !836, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{!395, !395}
!838 = !{!839}
!839 = !DILocalVariable(name: "wand", arg: 1, scope: !835, file: !399, line: 236, type: !395)
!840 = !DILocation(line: 0, scope: !835)
!841 = !DILocation(line: 240, column: 13, scope: !842)
!842 = distinct !DILexicalBlock(scope: !835, file: !399, line: 240, column: 7)
!843 = !DILocation(line: 240, column: 19, scope: !842)
!844 = !DILocation(line: 240, column: 7, scope: !835)
!845 = !DILocation(line: 241, column: 66, scope: !842)
!846 = !DILocation(line: 241, column: 12, scope: !842)
!847 = !DILocation(line: 241, column: 5, scope: !842)
!848 = !DILocation(line: 242, column: 46, scope: !835)
!849 = !DILocation(line: 242, column: 19, scope: !835)
!850 = !DILocation(line: 242, column: 18, scope: !835)
!851 = !DILocation(line: 243, column: 9, scope: !835)
!852 = !DILocation(line: 243, column: 18, scope: !835)
!853 = !DILocation(line: 244, column: 26, scope: !835)
!854 = !DILocation(line: 244, column: 3, scope: !835)
!855 = !DILocation(line: 245, column: 22, scope: !835)
!856 = !DILocation(line: 246, column: 3, scope: !835)
!857 = !DISubprogram(name: "RelinquishWandId", scope: !777, file: !777, line: 30, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !692}
!860 = !DISubprogram(name: "RelinquishMagickMemory", scope: !757, file: !757, line: 51, type: !861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!861 = !DISubroutineType(types: !862)
!862 = !{!422, !422}
!863 = distinct !DISubprogram(name: "DestroyPixelWands", scope: !399, file: !399, line: 275, type: !864, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !866)
!864 = !DISubroutineType(types: !865)
!865 = !{!453, !453, !692}
!866 = !{!867, !868, !869}
!867 = !DILocalVariable(name: "wand", arg: 1, scope: !863, file: !399, line: 275, type: !453)
!868 = !DILocalVariable(name: "number_wands", arg: 2, scope: !863, file: !399, line: 276, type: !692)
!869 = !DILocalVariable(name: "i", scope: !863, file: !399, line: 279, type: !454)
!870 = !DILocation(line: 0, scope: !863)
!871 = !DILocation(line: 284, column: 8, scope: !872)
!872 = distinct !DILexicalBlock(scope: !863, file: !399, line: 284, column: 7)
!873 = !DILocation(line: 284, column: 16, scope: !872)
!874 = !DILocation(line: 284, column: 22, scope: !872)
!875 = !DILocation(line: 284, column: 7, scope: !863)
!876 = !DILocation(line: 285, column: 69, scope: !872)
!877 = !DILocation(line: 285, column: 12, scope: !872)
!878 = !DILocation(line: 285, column: 5, scope: !872)
!879 = !DILocation(line: 286, column: 38, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !399, line: 286, column: 3)
!881 = distinct !DILexicalBlock(scope: !863, file: !399, line: 286, column: 3)
!882 = !DILocation(line: 286, column: 3, scope: !881)
!883 = !DILocation(line: 0, scope: !881)
!884 = !DILocation(line: 287, column: 30, scope: !880)
!885 = !DILocation(line: 0, scope: !835, inlinedAt: !886)
!886 = distinct !DILocation(line: 287, column: 13, scope: !880)
!887 = !DILocation(line: 240, column: 13, scope: !842, inlinedAt: !886)
!888 = !DILocation(line: 240, column: 19, scope: !842, inlinedAt: !886)
!889 = !DILocation(line: 240, column: 7, scope: !835, inlinedAt: !886)
!890 = !DILocation(line: 241, column: 66, scope: !842, inlinedAt: !886)
!891 = !DILocation(line: 241, column: 12, scope: !842, inlinedAt: !886)
!892 = !DILocation(line: 241, column: 5, scope: !842, inlinedAt: !886)
!893 = !DILocation(line: 242, column: 46, scope: !835, inlinedAt: !886)
!894 = !DILocation(line: 242, column: 19, scope: !835, inlinedAt: !886)
!895 = !DILocation(line: 242, column: 18, scope: !835, inlinedAt: !886)
!896 = !DILocation(line: 243, column: 9, scope: !835, inlinedAt: !886)
!897 = !DILocation(line: 243, column: 18, scope: !835, inlinedAt: !886)
!898 = !DILocation(line: 244, column: 26, scope: !835, inlinedAt: !886)
!899 = !DILocation(line: 244, column: 3, scope: !835, inlinedAt: !886)
!900 = !DILocation(line: 245, column: 22, scope: !835, inlinedAt: !886)
!901 = !DILocation(line: 287, column: 12, scope: !880)
!902 = distinct !{!902, !882, !903, !825, !826}
!903 = !DILocation(line: 287, column: 37, scope: !881)
!904 = !DILocation(line: 288, column: 23, scope: !863)
!905 = !DILocation(line: 289, column: 3, scope: !863)
!906 = distinct !DISubprogram(name: "IsPixelWandSimilar", scope: !399, file: !399, line: 321, type: !907, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !910)
!907 = !DISubroutineType(types: !908)
!908 = !{!424, !395, !395, !909}
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!910 = !{!911, !912, !913}
!911 = !DILocalVariable(name: "p", arg: 1, scope: !906, file: !399, line: 321, type: !395)
!912 = !DILocalVariable(name: "q", arg: 2, scope: !906, file: !399, line: 321, type: !395)
!913 = !DILocalVariable(name: "fuzz", arg: 3, scope: !906, file: !399, line: 322, type: !909)
!914 = !DILocation(line: 0, scope: !906)
!915 = !DILocation(line: 326, column: 10, scope: !916)
!916 = distinct !DILexicalBlock(scope: !906, file: !399, line: 326, column: 7)
!917 = !DILocation(line: 326, column: 16, scope: !916)
!918 = !DILocation(line: 326, column: 7, scope: !906)
!919 = !DILocation(line: 327, column: 63, scope: !916)
!920 = !DILocation(line: 327, column: 12, scope: !916)
!921 = !DILocation(line: 327, column: 5, scope: !916)
!922 = !DILocation(line: 330, column: 10, scope: !923)
!923 = distinct !DILexicalBlock(scope: !906, file: !399, line: 330, column: 7)
!924 = !DILocation(line: 330, column: 16, scope: !923)
!925 = !DILocation(line: 330, column: 7, scope: !906)
!926 = !DILocation(line: 331, column: 63, scope: !923)
!927 = !DILocation(line: 331, column: 12, scope: !923)
!928 = !DILocation(line: 331, column: 5, scope: !923)
!929 = !DILocation(line: 332, column: 6, scope: !906)
!930 = !DILocation(line: 332, column: 12, scope: !906)
!931 = !DILocation(line: 332, column: 16, scope: !906)
!932 = !{!665, !671, i64 4128}
!933 = !DILocation(line: 333, column: 6, scope: !906)
!934 = !DILocation(line: 333, column: 12, scope: !906)
!935 = !DILocation(line: 333, column: 16, scope: !906)
!936 = !DILocation(line: 334, column: 10, scope: !906)
!937 = !DILocation(line: 334, column: 3, scope: !906)
!938 = !DISubprogram(name: "IsMagickColorSimilar", scope: !553, file: !553, line: 82, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!939 = !DISubroutineType(types: !940)
!940 = !{!424, !941, !941}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!943 = distinct !DISubprogram(name: "IsPixelWand", scope: !399, file: !399, line: 359, type: !944, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !946)
!944 = !DISubroutineType(types: !945)
!945 = !{!424, !459}
!946 = !{!947}
!947 = !DILocalVariable(name: "wand", arg: 1, scope: !943, file: !399, line: 359, type: !459)
!948 = !DILocation(line: 0, scope: !943)
!949 = !DILocation(line: 361, column: 12, scope: !950)
!950 = distinct !DILexicalBlock(scope: !943, file: !399, line: 361, column: 7)
!951 = !DILocation(line: 361, column: 7, scope: !943)
!952 = !DILocation(line: 363, column: 13, scope: !953)
!953 = distinct !DILexicalBlock(scope: !943, file: !399, line: 363, column: 7)
!954 = !DILocation(line: 363, column: 23, scope: !953)
!955 = !DILocation(line: 363, column: 7, scope: !943)
!956 = !DILocation(line: 365, column: 28, scope: !957)
!957 = distinct !DILexicalBlock(scope: !943, file: !399, line: 365, column: 7)
!958 = !DILocation(line: 365, column: 7, scope: !957)
!959 = !DILocation(line: 365, column: 66, scope: !957)
!960 = !DILocation(line: 368, column: 1, scope: !943)
!961 = !DISubprogram(name: "LocaleNCompare", scope: !962, file: !962, line: 67, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!962 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!963 = !DISubroutineType(types: !964)
!964 = !{!417, !580, !580, !692}
!965 = distinct !DISubprogram(name: "NewPixelWand", scope: !399, file: !399, line: 388, type: !966, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !968)
!966 = !DISubroutineType(types: !967)
!967 = !{!395}
!968 = !{!969, !970, !971, !972, !975}
!969 = !DILocalVariable(name: "quantum", scope: !965, file: !399, line: 391, type: !580)
!970 = !DILocalVariable(name: "wand", scope: !965, file: !399, line: 394, type: !395)
!971 = !DILocalVariable(name: "depth", scope: !965, file: !399, line: 397, type: !402)
!972 = !DILocalVariable(name: "exception", scope: !973, file: !399, line: 402, type: !411)
!973 = distinct !DILexicalBlock(scope: !974, file: !399, line: 402, column: 5)
!974 = distinct !DILexicalBlock(scope: !965, file: !399, line: 401, column: 7)
!975 = !DILocalVariable(name: "exception", scope: !976, file: !399, line: 405, type: !411)
!976 = distinct !DILexicalBlock(scope: !977, file: !399, line: 405, column: 5)
!977 = distinct !DILexicalBlock(scope: !965, file: !399, line: 404, column: 7)
!978 = !DILocation(line: 396, column: 3, scope: !965)
!979 = !DILocation(line: 0, scope: !965)
!980 = !DILocation(line: 399, column: 8, scope: !965)
!981 = !DILocation(line: 400, column: 11, scope: !965)
!982 = !DILocation(line: 401, column: 7, scope: !974)
!983 = !DILocation(line: 401, column: 13, scope: !974)
!984 = !DILocation(line: 401, column: 7, scope: !965)
!985 = !DILocation(line: 402, column: 5, scope: !973)
!986 = !DILocation(line: 403, column: 22, scope: !965)
!987 = !DILocation(line: 404, column: 12, scope: !977)
!988 = !DILocation(line: 404, column: 7, scope: !965)
!989 = !DILocation(line: 405, column: 5, scope: !976)
!990 = !DILocation(line: 407, column: 10, scope: !965)
!991 = !DILocation(line: 408, column: 12, scope: !965)
!992 = !DILocation(line: 408, column: 11, scope: !965)
!993 = !DILocation(line: 409, column: 35, scope: !965)
!994 = !DILocation(line: 410, column: 5, scope: !965)
!995 = !DILocation(line: 409, column: 10, scope: !965)
!996 = !DILocation(line: 411, column: 19, scope: !965)
!997 = !DILocation(line: 411, column: 9, scope: !965)
!998 = !DILocation(line: 411, column: 18, scope: !965)
!999 = !DILocation(line: 412, column: 46, scope: !965)
!1000 = !DILocation(line: 412, column: 3, scope: !965)
!1001 = !DILocation(line: 413, column: 15, scope: !965)
!1002 = !DILocation(line: 413, column: 9, scope: !965)
!1003 = !DILocation(line: 413, column: 14, scope: !965)
!1004 = !DILocation(line: 414, column: 19, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !965, file: !399, line: 414, column: 7)
!1006 = !DILocation(line: 414, column: 7, scope: !965)
!1007 = !DILocation(line: 415, column: 12, scope: !1005)
!1008 = !DILocation(line: 415, column: 5, scope: !1005)
!1009 = !DILocation(line: 416, column: 9, scope: !965)
!1010 = !DILocation(line: 416, column: 18, scope: !965)
!1011 = !DILocation(line: 418, column: 1, scope: !965)
!1012 = !DILocation(line: 417, column: 3, scope: !965)
!1013 = !DISubprogram(name: "GetMagickQuantumDepth", scope: !1014, file: !1014, line: 98, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!1014 = !DIFile(filename: "apps/538.imagick_r/src/magick/version.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5bbd8280cb91779d444e54bd210c3e35")
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!580, !1017}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!1018 = !DISubprogram(name: "GetMagickPixelPacket", scope: !351, file: !351, line: 185, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !1021, !1023}
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!1024 = distinct !DISubprogram(name: "NewPixelWands", scope: !399, file: !399, line: 442, type: !1025, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1027)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!453, !692}
!1027 = !{!1028, !1029, !1030, !1031}
!1028 = !DILocalVariable(name: "number_wands", arg: 1, scope: !1024, file: !399, line: 442, type: !692)
!1029 = !DILocalVariable(name: "i", scope: !1024, file: !399, line: 445, type: !454)
!1030 = !DILocalVariable(name: "wands", scope: !1024, file: !399, line: 448, type: !453)
!1031 = !DILocalVariable(name: "exception", scope: !1032, file: !399, line: 453, type: !411)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !399, line: 453, column: 5)
!1033 = distinct !DILexicalBlock(scope: !1024, file: !399, line: 452, column: 7)
!1034 = !DILocation(line: 0, scope: !1024)
!1035 = !DILocation(line: 450, column: 24, scope: !1024)
!1036 = !DILocation(line: 452, column: 13, scope: !1033)
!1037 = !DILocation(line: 452, column: 7, scope: !1024)
!1038 = !DILocation(line: 455, column: 15, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !399, line: 455, column: 3)
!1040 = distinct !DILexicalBlock(scope: !1024, file: !399, line: 455, column: 3)
!1041 = !DILocation(line: 455, column: 3, scope: !1040)
!1042 = !DILocation(line: 453, column: 5, scope: !1032)
!1043 = !DILocation(line: 456, column: 14, scope: !1039)
!1044 = !DILocation(line: 456, column: 5, scope: !1039)
!1045 = !DILocation(line: 456, column: 13, scope: !1039)
!1046 = !DILocation(line: 455, column: 42, scope: !1039)
!1047 = distinct !{!1047, !1041, !1048, !825, !826}
!1048 = !DILocation(line: 456, column: 27, scope: !1040)
!1049 = !DILocation(line: 457, column: 3, scope: !1024)
!1050 = distinct !DISubprogram(name: "PixelClearException", scope: !399, file: !399, line: 482, type: !1051, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1053)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!424, !395}
!1053 = !{!1054}
!1054 = !DILocalVariable(name: "wand", arg: 1, scope: !1050, file: !399, line: 482, type: !395)
!1055 = !DILocation(line: 0, scope: !1050)
!1056 = !DILocation(line: 486, column: 13, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1050, file: !399, line: 486, column: 7)
!1058 = !DILocation(line: 486, column: 19, scope: !1057)
!1059 = !DILocation(line: 486, column: 7, scope: !1050)
!1060 = !DILocation(line: 487, column: 66, scope: !1057)
!1061 = !DILocation(line: 487, column: 12, scope: !1057)
!1062 = !DILocation(line: 487, column: 5, scope: !1057)
!1063 = !DILocation(line: 488, column: 30, scope: !1050)
!1064 = !DILocation(line: 488, column: 3, scope: !1050)
!1065 = !DILocation(line: 489, column: 3, scope: !1050)
!1066 = distinct !DISubprogram(name: "PixelGetAlpha", scope: !399, file: !399, line: 514, type: !1067, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1069)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!441, !459}
!1069 = !{!1070}
!1070 = !DILocalVariable(name: "wand", arg: 1, scope: !1066, file: !399, line: 514, type: !459)
!1071 = !DILocation(line: 0, scope: !1066)
!1072 = !DILocation(line: 518, column: 13, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1066, file: !399, line: 518, column: 7)
!1074 = !DILocation(line: 518, column: 19, scope: !1073)
!1075 = !DILocation(line: 518, column: 7, scope: !1066)
!1076 = !DILocation(line: 519, column: 66, scope: !1073)
!1077 = !DILocation(line: 519, column: 12, scope: !1073)
!1078 = !DILocation(line: 519, column: 5, scope: !1073)
!1079 = !DILocation(line: 520, column: 58, scope: !1066)
!1080 = !{!665, !672, i64 4156}
!1081 = !DILocation(line: 520, column: 45, scope: !1066)
!1082 = !DILocation(line: 520, column: 32, scope: !1066)
!1083 = !DILocation(line: 520, column: 31, scope: !1066)
!1084 = !DILocation(line: 520, column: 3, scope: !1066)
!1085 = distinct !DISubprogram(name: "PixelGetAlphaQuantum", scope: !399, file: !399, line: 545, type: !1086, scopeLine: 546, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1088)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!484, !459}
!1088 = !{!1089}
!1089 = !DILocalVariable(name: "wand", arg: 1, scope: !1085, file: !399, line: 545, type: !459)
!1090 = !DILocation(line: 0, scope: !1085)
!1091 = !DILocation(line: 549, column: 13, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1085, file: !399, line: 549, column: 7)
!1093 = !DILocation(line: 549, column: 19, scope: !1092)
!1094 = !DILocation(line: 549, column: 7, scope: !1085)
!1095 = !DILocation(line: 550, column: 66, scope: !1092)
!1096 = !DILocation(line: 550, column: 12, scope: !1092)
!1097 = !DILocation(line: 550, column: 5, scope: !1092)
!1098 = !DILocation(line: 551, column: 50, scope: !1085)
!1099 = !DILocalVariable(name: "value", arg: 1, scope: !1100, file: !245, line: 87, type: !1103)
!1100 = distinct !DISubprogram(name: "ClampToQuantum", scope: !245, file: !245, line: 87, type: !1101, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1104)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!484, !1103}
!1103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!1104 = !{!1099}
!1105 = !DILocation(line: 0, scope: !1100, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 551, column: 23, scope: !1085)
!1107 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1106)
!1108 = distinct !DILexicalBlock(scope: !1100, file: !245, line: 92, column: 7)
!1109 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1106)
!1110 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1106)
!1111 = distinct !DILexicalBlock(scope: !1100, file: !245, line: 94, column: 7)
!1112 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1106)
!1113 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1106)
!1114 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1106)
!1115 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1106)
!1116 = !DILocation(line: 551, column: 3, scope: !1085)
!1117 = distinct !DISubprogram(name: "PixelGetBlack", scope: !399, file: !399, line: 576, type: !1067, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1118)
!1118 = !{!1119}
!1119 = !DILocalVariable(name: "wand", arg: 1, scope: !1117, file: !399, line: 576, type: !459)
!1120 = !DILocation(line: 0, scope: !1117)
!1121 = !DILocation(line: 580, column: 13, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1117, file: !399, line: 580, column: 7)
!1123 = !DILocation(line: 580, column: 19, scope: !1122)
!1124 = !DILocation(line: 580, column: 7, scope: !1117)
!1125 = !DILocation(line: 581, column: 66, scope: !1122)
!1126 = !DILocation(line: 581, column: 12, scope: !1122)
!1127 = !DILocation(line: 581, column: 5, scope: !1122)
!1128 = !DILocation(line: 582, column: 44, scope: !1117)
!1129 = !{!665, !672, i64 4160}
!1130 = !DILocation(line: 582, column: 32, scope: !1117)
!1131 = !DILocation(line: 582, column: 31, scope: !1117)
!1132 = !DILocation(line: 582, column: 3, scope: !1117)
!1133 = distinct !DISubprogram(name: "PixelGetBlackQuantum", scope: !399, file: !399, line: 607, type: !1086, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1134)
!1134 = !{!1135}
!1135 = !DILocalVariable(name: "wand", arg: 1, scope: !1133, file: !399, line: 607, type: !459)
!1136 = !DILocation(line: 0, scope: !1133)
!1137 = !DILocation(line: 611, column: 13, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !399, line: 611, column: 7)
!1139 = !DILocation(line: 611, column: 19, scope: !1138)
!1140 = !DILocation(line: 611, column: 7, scope: !1133)
!1141 = !DILocation(line: 612, column: 66, scope: !1138)
!1142 = !DILocation(line: 612, column: 12, scope: !1138)
!1143 = !DILocation(line: 612, column: 5, scope: !1138)
!1144 = !DILocation(line: 613, column: 37, scope: !1133)
!1145 = !DILocation(line: 0, scope: !1100, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 613, column: 10, scope: !1133)
!1147 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1146)
!1148 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1146)
!1149 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1146)
!1150 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1146)
!1151 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1146)
!1152 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1146)
!1153 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1146)
!1154 = !DILocation(line: 613, column: 3, scope: !1133)
!1155 = distinct !DISubprogram(name: "PixelGetBlue", scope: !399, file: !399, line: 638, type: !1067, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1156)
!1156 = !{!1157}
!1157 = !DILocalVariable(name: "wand", arg: 1, scope: !1155, file: !399, line: 638, type: !459)
!1158 = !DILocation(line: 0, scope: !1155)
!1159 = !DILocation(line: 642, column: 13, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !399, line: 642, column: 7)
!1161 = !DILocation(line: 642, column: 19, scope: !1160)
!1162 = !DILocation(line: 642, column: 7, scope: !1155)
!1163 = !DILocation(line: 643, column: 66, scope: !1160)
!1164 = !DILocation(line: 643, column: 12, scope: !1160)
!1165 = !DILocation(line: 643, column: 5, scope: !1160)
!1166 = !DILocation(line: 644, column: 44, scope: !1155)
!1167 = !{!665, !672, i64 4152}
!1168 = !DILocation(line: 644, column: 32, scope: !1155)
!1169 = !DILocation(line: 644, column: 31, scope: !1155)
!1170 = !DILocation(line: 644, column: 3, scope: !1155)
!1171 = distinct !DISubprogram(name: "PixelGetBlueQuantum", scope: !399, file: !399, line: 669, type: !1086, scopeLine: 670, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1172)
!1172 = !{!1173}
!1173 = !DILocalVariable(name: "wand", arg: 1, scope: !1171, file: !399, line: 669, type: !459)
!1174 = !DILocation(line: 0, scope: !1171)
!1175 = !DILocation(line: 673, column: 13, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1171, file: !399, line: 673, column: 7)
!1177 = !DILocation(line: 673, column: 19, scope: !1176)
!1178 = !DILocation(line: 673, column: 7, scope: !1171)
!1179 = !DILocation(line: 674, column: 66, scope: !1176)
!1180 = !DILocation(line: 674, column: 12, scope: !1176)
!1181 = !DILocation(line: 674, column: 5, scope: !1176)
!1182 = !DILocation(line: 675, column: 37, scope: !1171)
!1183 = !DILocation(line: 0, scope: !1100, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 675, column: 10, scope: !1171)
!1185 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1184)
!1186 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1184)
!1187 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1184)
!1188 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1184)
!1189 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1184)
!1190 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1184)
!1191 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1184)
!1192 = !DILocation(line: 675, column: 3, scope: !1171)
!1193 = distinct !DISubprogram(name: "PixelGetColorAsString", scope: !399, file: !399, line: 700, type: !1194, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!419, !459}
!1196 = !{!1197, !1198, !1199}
!1197 = !DILocalVariable(name: "wand", arg: 1, scope: !1193, file: !399, line: 700, type: !459)
!1198 = !DILocalVariable(name: "color", scope: !1193, file: !399, line: 703, type: !419)
!1199 = !DILocalVariable(name: "pixel", scope: !1193, file: !399, line: 706, type: !432)
!1200 = !DILocation(line: 0, scope: !1193)
!1201 = !DILocation(line: 705, column: 3, scope: !1193)
!1202 = !DILocation(line: 706, column: 5, scope: !1193)
!1203 = !DILocation(line: 710, column: 13, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1193, file: !399, line: 710, column: 7)
!1205 = !DILocation(line: 710, column: 19, scope: !1204)
!1206 = !DILocation(line: 710, column: 7, scope: !1193)
!1207 = !DILocation(line: 711, column: 66, scope: !1204)
!1208 = !DILocation(line: 711, column: 12, scope: !1204)
!1209 = !DILocation(line: 711, column: 5, scope: !1204)
!1210 = !DILocation(line: 712, column: 15, scope: !1193)
!1211 = !DILocation(line: 713, column: 9, scope: !1193)
!1212 = !DILocation(line: 714, column: 3, scope: !1193)
!1213 = !DILocation(line: 716, column: 1, scope: !1193)
!1214 = !DILocation(line: 715, column: 3, scope: !1193)
!1215 = !DISubprogram(name: "AcquireString", scope: !962, file: !962, line: 43, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!419, !580}
!1218 = !DISubprogram(name: "GetColorTuple", scope: !553, file: !553, line: 100, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !941, !1221, !419}
!1221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!1222 = distinct !DISubprogram(name: "PixelGetColorAsNormalizedString", scope: !399, file: !399, line: 741, type: !1194, scopeLine: 742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1223)
!1223 = !{!1224, !1225}
!1224 = !DILocalVariable(name: "wand", arg: 1, scope: !1222, file: !399, line: 741, type: !459)
!1225 = !DILocalVariable(name: "color", scope: !1222, file: !399, line: 744, type: !1226)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 65536, elements: !1227)
!1227 = !{!1228}
!1228 = !DISubrange(count: 8192)
!1229 = !DILocation(line: 0, scope: !1222)
!1230 = !DILocation(line: 743, column: 3, scope: !1222)
!1231 = !DILocation(line: 744, column: 5, scope: !1222)
!1232 = !DILocation(line: 748, column: 13, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1222, file: !399, line: 748, column: 7)
!1234 = !DILocation(line: 748, column: 19, scope: !1233)
!1235 = !DILocation(line: 748, column: 7, scope: !1222)
!1236 = !DILocation(line: 749, column: 66, scope: !1233)
!1237 = !DILocation(line: 749, column: 12, scope: !1233)
!1238 = !DILocation(line: 749, column: 5, scope: !1233)
!1239 = !DILocation(line: 751, column: 40, scope: !1222)
!1240 = !{!665, !672, i64 4144}
!1241 = !DILocation(line: 751, column: 28, scope: !1222)
!1242 = !DILocation(line: 751, column: 27, scope: !1222)
!1243 = !DILocation(line: 752, column: 40, scope: !1222)
!1244 = !{!665, !672, i64 4148}
!1245 = !DILocation(line: 752, column: 28, scope: !1222)
!1246 = !DILocation(line: 752, column: 27, scope: !1222)
!1247 = !DILocation(line: 753, column: 40, scope: !1222)
!1248 = !DILocation(line: 753, column: 28, scope: !1222)
!1249 = !DILocation(line: 753, column: 27, scope: !1222)
!1250 = !DILocation(line: 750, column: 10, scope: !1222)
!1251 = !DILocation(line: 754, column: 19, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1222, file: !399, line: 754, column: 7)
!1253 = !DILocation(line: 754, column: 30, scope: !1252)
!1254 = !DILocation(line: 754, column: 7, scope: !1222)
!1255 = !DILocation(line: 755, column: 37, scope: !1252)
!1256 = !DILocation(line: 755, column: 36, scope: !1252)
!1257 = !DILocation(line: 756, column: 42, scope: !1252)
!1258 = !DILocation(line: 756, column: 30, scope: !1252)
!1259 = !DILocation(line: 756, column: 29, scope: !1252)
!1260 = !DILocation(line: 755, column: 12, scope: !1252)
!1261 = !DILocation(line: 755, column: 5, scope: !1252)
!1262 = !DILocation(line: 757, column: 19, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1222, file: !399, line: 757, column: 7)
!1264 = !{!665, !667, i64 4120}
!1265 = !DILocation(line: 757, column: 25, scope: !1263)
!1266 = !DILocation(line: 757, column: 7, scope: !1222)
!1267 = !DILocation(line: 758, column: 37, scope: !1263)
!1268 = !DILocation(line: 758, column: 36, scope: !1263)
!1269 = !DILocation(line: 759, column: 42, scope: !1263)
!1270 = !DILocation(line: 759, column: 30, scope: !1263)
!1271 = !DILocation(line: 759, column: 29, scope: !1263)
!1272 = !DILocation(line: 758, column: 12, scope: !1263)
!1273 = !DILocation(line: 758, column: 5, scope: !1263)
!1274 = !DILocation(line: 760, column: 10, scope: !1222)
!1275 = !DILocation(line: 761, column: 1, scope: !1222)
!1276 = !DILocation(line: 760, column: 3, scope: !1222)
!1277 = !DISubprogram(name: "ConstantString", scope: !962, file: !962, line: 45, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!1278 = distinct !DISubprogram(name: "PixelGetColorCount", scope: !399, file: !399, line: 785, type: !1279, scopeLine: 786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!402, !459}
!1281 = !{!1282}
!1282 = !DILocalVariable(name: "wand", arg: 1, scope: !1278, file: !399, line: 785, type: !459)
!1283 = !DILocation(line: 0, scope: !1278)
!1284 = !DILocation(line: 789, column: 13, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1278, file: !399, line: 789, column: 7)
!1286 = !DILocation(line: 789, column: 19, scope: !1285)
!1287 = !DILocation(line: 789, column: 7, scope: !1278)
!1288 = !DILocation(line: 790, column: 66, scope: !1285)
!1289 = !DILocation(line: 790, column: 12, scope: !1285)
!1290 = !DILocation(line: 790, column: 5, scope: !1285)
!1291 = !DILocation(line: 791, column: 16, scope: !1278)
!1292 = !DILocation(line: 791, column: 3, scope: !1278)
!1293 = distinct !DISubprogram(name: "PixelGetCyan", scope: !399, file: !399, line: 816, type: !1067, scopeLine: 817, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1294)
!1294 = !{!1295}
!1295 = !DILocalVariable(name: "wand", arg: 1, scope: !1293, file: !399, line: 816, type: !459)
!1296 = !DILocation(line: 0, scope: !1293)
!1297 = !DILocation(line: 820, column: 13, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !399, line: 820, column: 7)
!1299 = !DILocation(line: 820, column: 19, scope: !1298)
!1300 = !DILocation(line: 820, column: 7, scope: !1293)
!1301 = !DILocation(line: 821, column: 66, scope: !1298)
!1302 = !DILocation(line: 821, column: 12, scope: !1298)
!1303 = !DILocation(line: 821, column: 5, scope: !1298)
!1304 = !DILocation(line: 822, column: 44, scope: !1293)
!1305 = !DILocation(line: 822, column: 32, scope: !1293)
!1306 = !DILocation(line: 822, column: 31, scope: !1293)
!1307 = !DILocation(line: 822, column: 3, scope: !1293)
!1308 = distinct !DISubprogram(name: "PixelGetCyanQuantum", scope: !399, file: !399, line: 847, type: !1086, scopeLine: 848, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1309)
!1309 = !{!1310}
!1310 = !DILocalVariable(name: "wand", arg: 1, scope: !1308, file: !399, line: 847, type: !459)
!1311 = !DILocation(line: 0, scope: !1308)
!1312 = !DILocation(line: 851, column: 13, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1308, file: !399, line: 851, column: 7)
!1314 = !DILocation(line: 851, column: 19, scope: !1313)
!1315 = !DILocation(line: 851, column: 7, scope: !1308)
!1316 = !DILocation(line: 852, column: 66, scope: !1313)
!1317 = !DILocation(line: 852, column: 12, scope: !1313)
!1318 = !DILocation(line: 852, column: 5, scope: !1313)
!1319 = !DILocation(line: 853, column: 37, scope: !1308)
!1320 = !DILocation(line: 0, scope: !1100, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 853, column: 10, scope: !1308)
!1322 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1321)
!1323 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1321)
!1324 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1321)
!1325 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1321)
!1326 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1321)
!1327 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1321)
!1328 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1321)
!1329 = !DILocation(line: 853, column: 3, scope: !1308)
!1330 = distinct !DISubprogram(name: "PixelGetException", scope: !399, file: !399, line: 881, type: !1331, scopeLine: 883, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1334)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!419, !459, !1333}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!1334 = !{!1335, !1336, !1337, !1338}
!1335 = !DILocalVariable(name: "wand", arg: 1, scope: !1330, file: !399, line: 881, type: !459)
!1336 = !DILocalVariable(name: "severity", arg: 2, scope: !1330, file: !399, line: 882, type: !1333)
!1337 = !DILocalVariable(name: "description", scope: !1330, file: !399, line: 885, type: !419)
!1338 = !DILocalVariable(name: "exception", scope: !1339, file: !399, line: 896, type: !411)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !399, line: 896, column: 5)
!1340 = distinct !DILexicalBlock(scope: !1330, file: !399, line: 895, column: 7)
!1341 = !DILocation(line: 0, scope: !1330)
!1342 = !DILocation(line: 889, column: 13, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1330, file: !399, line: 889, column: 7)
!1344 = !DILocation(line: 889, column: 19, scope: !1343)
!1345 = !DILocation(line: 889, column: 7, scope: !1330)
!1346 = !DILocation(line: 890, column: 66, scope: !1343)
!1347 = !DILocation(line: 890, column: 12, scope: !1343)
!1348 = !DILocation(line: 890, column: 5, scope: !1343)
!1349 = !DILocation(line: 892, column: 19, scope: !1330)
!1350 = !DILocation(line: 892, column: 30, scope: !1330)
!1351 = !{!1352, !667, i64 0}
!1352 = !{!"_ExceptionInfo", !667, i64 0, !816, i64 4, !669, i64 8, !669, i64 16, !669, i64 24, !667, i64 32, !669, i64 40, !666, i64 48}
!1353 = !DILocation(line: 892, column: 12, scope: !1330)
!1354 = !DILocation(line: 893, column: 24, scope: !1330)
!1355 = !DILocation(line: 895, column: 19, scope: !1340)
!1356 = !DILocation(line: 895, column: 7, scope: !1330)
!1357 = !DILocation(line: 896, column: 5, scope: !1339)
!1358 = !DILocation(line: 898, column: 15, scope: !1330)
!1359 = !DILocation(line: 899, column: 13, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1330, file: !399, line: 899, column: 7)
!1361 = !DILocation(line: 899, column: 24, scope: !1360)
!1362 = !{!1352, !669, i64 8}
!1363 = !DILocation(line: 899, column: 31, scope: !1360)
!1364 = !DILocation(line: 899, column: 7, scope: !1330)
!1365 = !DILocation(line: 901, column: 24, scope: !1360)
!1366 = !DILocation(line: 900, column: 41, scope: !1360)
!1367 = !DILocation(line: 900, column: 12, scope: !1360)
!1368 = !DILocation(line: 902, column: 13, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1330, file: !399, line: 902, column: 7)
!1370 = !DILocation(line: 900, column: 5, scope: !1360)
!1371 = !DILocation(line: 902, column: 24, scope: !1369)
!1372 = !{!1352, !669, i64 16}
!1373 = !DILocation(line: 902, column: 36, scope: !1369)
!1374 = !DILocation(line: 902, column: 7, scope: !1330)
!1375 = !DILocation(line: 904, column: 14, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1369, file: !399, line: 903, column: 5)
!1377 = !DILocation(line: 906, column: 15, scope: !1376)
!1378 = !DILocation(line: 906, column: 26, scope: !1376)
!1379 = !DILocation(line: 906, column: 52, scope: !1376)
!1380 = !DILocation(line: 905, column: 50, scope: !1376)
!1381 = !DILocation(line: 905, column: 14, scope: !1376)
!1382 = !DILocation(line: 907, column: 14, scope: !1376)
!1383 = !DILocation(line: 908, column: 5, scope: !1376)
!1384 = !DILocation(line: 909, column: 3, scope: !1330)
!1385 = !DISubprogram(name: "CopyMagickString", scope: !962, file: !962, line: 78, type: !1386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!402, !419, !580, !692}
!1388 = !DISubprogram(name: "GetLocaleExceptionMessage", scope: !4, file: !4, line: 140, type: !1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!580, !764, !580}
!1391 = !DISubprogram(name: "ConcatenateMagickString", scope: !962, file: !962, line: 76, type: !1386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!1392 = distinct !DISubprogram(name: "PixelGetExceptionType", scope: !399, file: !399, line: 935, type: !1393, scopeLine: 936, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1395)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!415, !459}
!1395 = !{!1396}
!1396 = !DILocalVariable(name: "wand", arg: 1, scope: !1392, file: !399, line: 935, type: !459)
!1397 = !DILocation(line: 0, scope: !1392)
!1398 = !DILocation(line: 939, column: 13, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1392, file: !399, line: 939, column: 7)
!1400 = !DILocation(line: 939, column: 19, scope: !1399)
!1401 = !DILocation(line: 939, column: 7, scope: !1392)
!1402 = !DILocation(line: 940, column: 66, scope: !1399)
!1403 = !DILocation(line: 940, column: 12, scope: !1399)
!1404 = !DILocation(line: 940, column: 5, scope: !1399)
!1405 = !DILocation(line: 941, column: 16, scope: !1392)
!1406 = !DILocation(line: 941, column: 27, scope: !1392)
!1407 = !DILocation(line: 941, column: 3, scope: !1392)
!1408 = distinct !DISubprogram(name: "PixelGetFuzz", scope: !399, file: !399, line: 966, type: !1067, scopeLine: 967, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1409)
!1409 = !{!1410}
!1410 = !DILocalVariable(name: "wand", arg: 1, scope: !1408, file: !399, line: 966, type: !459)
!1411 = !DILocation(line: 0, scope: !1408)
!1412 = !DILocation(line: 970, column: 13, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1408, file: !399, line: 970, column: 7)
!1414 = !DILocation(line: 970, column: 19, scope: !1413)
!1415 = !DILocation(line: 970, column: 7, scope: !1408)
!1416 = !DILocation(line: 971, column: 66, scope: !1413)
!1417 = !DILocation(line: 971, column: 12, scope: !1413)
!1418 = !DILocation(line: 971, column: 5, scope: !1413)
!1419 = !DILocation(line: 972, column: 31, scope: !1408)
!1420 = !DILocation(line: 972, column: 3, scope: !1408)
!1421 = distinct !DISubprogram(name: "PixelGetGreen", scope: !399, file: !399, line: 997, type: !1067, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1422)
!1422 = !{!1423}
!1423 = !DILocalVariable(name: "wand", arg: 1, scope: !1421, file: !399, line: 997, type: !459)
!1424 = !DILocation(line: 0, scope: !1421)
!1425 = !DILocation(line: 1001, column: 13, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !399, line: 1001, column: 7)
!1427 = !DILocation(line: 1001, column: 19, scope: !1426)
!1428 = !DILocation(line: 1001, column: 7, scope: !1421)
!1429 = !DILocation(line: 1002, column: 66, scope: !1426)
!1430 = !DILocation(line: 1002, column: 12, scope: !1426)
!1431 = !DILocation(line: 1002, column: 5, scope: !1426)
!1432 = !DILocation(line: 1003, column: 44, scope: !1421)
!1433 = !DILocation(line: 1003, column: 32, scope: !1421)
!1434 = !DILocation(line: 1003, column: 31, scope: !1421)
!1435 = !DILocation(line: 1003, column: 3, scope: !1421)
!1436 = distinct !DISubprogram(name: "PixelGetGreenQuantum", scope: !399, file: !399, line: 1028, type: !1086, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1437)
!1437 = !{!1438}
!1438 = !DILocalVariable(name: "wand", arg: 1, scope: !1436, file: !399, line: 1028, type: !459)
!1439 = !DILocation(line: 0, scope: !1436)
!1440 = !DILocation(line: 1032, column: 13, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !399, line: 1032, column: 7)
!1442 = !DILocation(line: 1032, column: 19, scope: !1441)
!1443 = !DILocation(line: 1032, column: 7, scope: !1436)
!1444 = !DILocation(line: 1033, column: 66, scope: !1441)
!1445 = !DILocation(line: 1033, column: 12, scope: !1441)
!1446 = !DILocation(line: 1033, column: 5, scope: !1441)
!1447 = !DILocation(line: 1034, column: 37, scope: !1436)
!1448 = !DILocation(line: 0, scope: !1100, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 1034, column: 10, scope: !1436)
!1450 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1449)
!1451 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1449)
!1452 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1449)
!1453 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1449)
!1454 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1449)
!1455 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1449)
!1456 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1449)
!1457 = !DILocation(line: 1034, column: 3, scope: !1436)
!1458 = distinct !DISubprogram(name: "PixelGetHSL", scope: !399, file: !399, line: 1063, type: !1459, scopeLine: 1065, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1462)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !459, !1461, !1461, !1461}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!1462 = !{!1463, !1464, !1465, !1466}
!1463 = !DILocalVariable(name: "wand", arg: 1, scope: !1458, file: !399, line: 1063, type: !459)
!1464 = !DILocalVariable(name: "hue", arg: 2, scope: !1458, file: !399, line: 1063, type: !1461)
!1465 = !DILocalVariable(name: "saturation", arg: 3, scope: !1458, file: !399, line: 1064, type: !1461)
!1466 = !DILocalVariable(name: "lightness", arg: 4, scope: !1458, file: !399, line: 1064, type: !1461)
!1467 = !DILocation(line: 0, scope: !1458)
!1468 = !DILocation(line: 1068, column: 13, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1458, file: !399, line: 1068, column: 7)
!1470 = !DILocation(line: 1068, column: 19, scope: !1469)
!1471 = !DILocation(line: 1068, column: 7, scope: !1458)
!1472 = !DILocation(line: 1069, column: 66, scope: !1469)
!1473 = !DILocation(line: 1069, column: 12, scope: !1469)
!1474 = !DILocation(line: 1069, column: 5, scope: !1469)
!1475 = !DILocation(line: 1070, column: 46, scope: !1458)
!1476 = !DILocation(line: 0, scope: !1100, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 1070, column: 19, scope: !1458)
!1478 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1477)
!1479 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1477)
!1480 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1477)
!1481 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1477)
!1482 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1477)
!1483 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1477)
!1484 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1477)
!1485 = !DILocation(line: 1071, column: 17, scope: !1458)
!1486 = !DILocation(line: 0, scope: !1100, inlinedAt: !1487)
!1487 = distinct !DILocation(line: 1070, column: 51, scope: !1458)
!1488 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1487)
!1489 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1487)
!1490 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1487)
!1491 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1487)
!1492 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1487)
!1493 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1487)
!1494 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1487)
!1495 = !DILocation(line: 1071, column: 51, scope: !1458)
!1496 = !DILocation(line: 0, scope: !1100, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 1071, column: 24, scope: !1458)
!1498 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1497)
!1499 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1497)
!1500 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1497)
!1501 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1497)
!1502 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1497)
!1503 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1497)
!1504 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1497)
!1505 = !DILocation(line: 1070, column: 3, scope: !1458)
!1506 = !DILocation(line: 1073, column: 1, scope: !1458)
!1507 = !DISubprogram(name: "ConvertRGBToHSL", scope: !1508, file: !1508, line: 65, type: !1509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!1508 = !DIFile(filename: "apps/538.imagick_r/src/magick/gem.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1c4d294250c916114ca6e5f5b31857f")
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !1511, !1511, !1511, !1461, !1461, !1461}
!1511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!1512 = distinct !DISubprogram(name: "PixelGetIndex", scope: !399, file: !399, line: 1097, type: !1513, scopeLine: 1098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1515)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!648, !459}
!1515 = !{!1516}
!1516 = !DILocalVariable(name: "wand", arg: 1, scope: !1512, file: !399, line: 1097, type: !459)
!1517 = !DILocation(line: 0, scope: !1512)
!1518 = !DILocation(line: 1101, column: 13, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1512, file: !399, line: 1101, column: 7)
!1520 = !DILocation(line: 1101, column: 19, scope: !1519)
!1521 = !DILocation(line: 1101, column: 7, scope: !1512)
!1522 = !DILocation(line: 1102, column: 66, scope: !1519)
!1523 = !DILocation(line: 1102, column: 12, scope: !1519)
!1524 = !DILocation(line: 1102, column: 5, scope: !1519)
!1525 = !DILocation(line: 1103, column: 36, scope: !1512)
!1526 = !DILocation(line: 1103, column: 10, scope: !1512)
!1527 = !DILocation(line: 1103, column: 3, scope: !1512)
!1528 = distinct !DISubprogram(name: "PixelGetMagenta", scope: !399, file: !399, line: 1128, type: !1067, scopeLine: 1129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1529)
!1529 = !{!1530}
!1530 = !DILocalVariable(name: "wand", arg: 1, scope: !1528, file: !399, line: 1128, type: !459)
!1531 = !DILocation(line: 0, scope: !1528)
!1532 = !DILocation(line: 1132, column: 13, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1528, file: !399, line: 1132, column: 7)
!1534 = !DILocation(line: 1132, column: 19, scope: !1533)
!1535 = !DILocation(line: 1132, column: 7, scope: !1528)
!1536 = !DILocation(line: 1133, column: 66, scope: !1533)
!1537 = !DILocation(line: 1133, column: 12, scope: !1533)
!1538 = !DILocation(line: 1133, column: 5, scope: !1533)
!1539 = !DILocation(line: 1134, column: 44, scope: !1528)
!1540 = !DILocation(line: 1134, column: 32, scope: !1528)
!1541 = !DILocation(line: 1134, column: 31, scope: !1528)
!1542 = !DILocation(line: 1134, column: 3, scope: !1528)
!1543 = distinct !DISubprogram(name: "PixelGetMagentaQuantum", scope: !399, file: !399, line: 1159, type: !1086, scopeLine: 1160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1544)
!1544 = !{!1545}
!1545 = !DILocalVariable(name: "wand", arg: 1, scope: !1543, file: !399, line: 1159, type: !459)
!1546 = !DILocation(line: 0, scope: !1543)
!1547 = !DILocation(line: 1163, column: 13, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !399, line: 1163, column: 7)
!1549 = !DILocation(line: 1163, column: 19, scope: !1548)
!1550 = !DILocation(line: 1163, column: 7, scope: !1543)
!1551 = !DILocation(line: 1164, column: 66, scope: !1548)
!1552 = !DILocation(line: 1164, column: 12, scope: !1548)
!1553 = !DILocation(line: 1164, column: 5, scope: !1548)
!1554 = !DILocation(line: 1165, column: 37, scope: !1543)
!1555 = !DILocation(line: 0, scope: !1100, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 1165, column: 10, scope: !1543)
!1557 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1556)
!1558 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1556)
!1559 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1556)
!1560 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1556)
!1561 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1556)
!1562 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1556)
!1563 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1556)
!1564 = !DILocation(line: 1165, column: 3, scope: !1543)
!1565 = distinct !DISubprogram(name: "PixelGetMagickColor", scope: !399, file: !399, line: 1192, type: !1566, scopeLine: 1194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1568)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !459, !1023}
!1568 = !{!1569, !1570}
!1569 = !DILocalVariable(name: "wand", arg: 1, scope: !1565, file: !399, line: 1192, type: !459)
!1570 = !DILocalVariable(name: "color", arg: 2, scope: !1565, file: !399, line: 1193, type: !1023)
!1571 = !DILocation(line: 0, scope: !1565)
!1572 = !DILocation(line: 1197, column: 13, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1565, file: !399, line: 1197, column: 7)
!1574 = !DILocation(line: 1197, column: 19, scope: !1573)
!1575 = !DILocation(line: 1197, column: 7, scope: !1565)
!1576 = !DILocation(line: 1198, column: 66, scope: !1573)
!1577 = !DILocation(line: 1198, column: 12, scope: !1573)
!1578 = !DILocation(line: 1198, column: 5, scope: !1573)
!1579 = !DILocation(line: 1200, column: 16, scope: !1565)
!1580 = !DILocation(line: 1201, column: 1, scope: !1565)
!1581 = distinct !DISubprogram(name: "PixelGetOpacity", scope: !399, file: !399, line: 1225, type: !1067, scopeLine: 1226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1582)
!1582 = !{!1583}
!1583 = !DILocalVariable(name: "wand", arg: 1, scope: !1581, file: !399, line: 1225, type: !459)
!1584 = !DILocation(line: 0, scope: !1581)
!1585 = !DILocation(line: 1229, column: 13, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1581, file: !399, line: 1229, column: 7)
!1587 = !DILocation(line: 1229, column: 19, scope: !1586)
!1588 = !DILocation(line: 1229, column: 7, scope: !1581)
!1589 = !DILocation(line: 1230, column: 66, scope: !1586)
!1590 = !DILocation(line: 1230, column: 12, scope: !1586)
!1591 = !DILocation(line: 1230, column: 5, scope: !1586)
!1592 = !DILocation(line: 1231, column: 44, scope: !1581)
!1593 = !DILocation(line: 1231, column: 32, scope: !1581)
!1594 = !DILocation(line: 1231, column: 31, scope: !1581)
!1595 = !DILocation(line: 1231, column: 3, scope: !1581)
!1596 = distinct !DISubprogram(name: "PixelGetOpacityQuantum", scope: !399, file: !399, line: 1256, type: !1086, scopeLine: 1257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1597)
!1597 = !{!1598}
!1598 = !DILocalVariable(name: "wand", arg: 1, scope: !1596, file: !399, line: 1256, type: !459)
!1599 = !DILocation(line: 0, scope: !1596)
!1600 = !DILocation(line: 1260, column: 13, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !399, line: 1260, column: 7)
!1602 = !DILocation(line: 1260, column: 19, scope: !1601)
!1603 = !DILocation(line: 1260, column: 7, scope: !1596)
!1604 = !DILocation(line: 1261, column: 66, scope: !1601)
!1605 = !DILocation(line: 1261, column: 12, scope: !1601)
!1606 = !DILocation(line: 1261, column: 5, scope: !1601)
!1607 = !DILocation(line: 1262, column: 37, scope: !1596)
!1608 = !DILocation(line: 0, scope: !1100, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 1262, column: 10, scope: !1596)
!1610 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1609)
!1611 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1609)
!1612 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1609)
!1613 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1609)
!1614 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1609)
!1615 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1609)
!1616 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1609)
!1617 = !DILocation(line: 1262, column: 3, scope: !1596)
!1618 = distinct !DISubprogram(name: "PixelGetQuantumColor", scope: !399, file: !399, line: 1289, type: !1619, scopeLine: 1290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1621)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{null, !459, !479}
!1621 = !{!1622, !1623}
!1622 = !DILocalVariable(name: "wand", arg: 1, scope: !1618, file: !399, line: 1289, type: !459)
!1623 = !DILocalVariable(name: "color", arg: 2, scope: !1618, file: !399, line: 1289, type: !479)
!1624 = !DILocation(line: 0, scope: !1618)
!1625 = !DILocation(line: 1293, column: 13, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1618, file: !399, line: 1293, column: 7)
!1627 = !DILocation(line: 1293, column: 19, scope: !1626)
!1628 = !DILocation(line: 1293, column: 7, scope: !1618)
!1629 = !DILocation(line: 1294, column: 66, scope: !1626)
!1630 = !DILocation(line: 1294, column: 12, scope: !1626)
!1631 = !DILocation(line: 1294, column: 5, scope: !1626)
!1632 = !DILocation(line: 1296, column: 45, scope: !1618)
!1633 = !DILocation(line: 0, scope: !1100, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 1296, column: 18, scope: !1618)
!1635 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1634)
!1636 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1634)
!1637 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1634)
!1638 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1634)
!1639 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1634)
!1640 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1634)
!1641 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1634)
!1642 = !DILocation(line: 1296, column: 10, scope: !1618)
!1643 = !DILocation(line: 1296, column: 17, scope: !1618)
!1644 = !{!1645, !1646, i64 6}
!1645 = !{!"_PixelPacket", !1646, i64 0, !1646, i64 2, !1646, i64 4, !1646, i64 6}
!1646 = !{!"short", !667, i64 0}
!1647 = !DILocation(line: 1297, column: 19, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1618, file: !399, line: 1297, column: 7)
!1649 = !DILocation(line: 1297, column: 30, scope: !1648)
!1650 = !DILocation(line: 1297, column: 7, scope: !1618)
!1651 = !DILocation(line: 1300, column: 52, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1648, file: !399, line: 1298, column: 5)
!1653 = !DILocation(line: 1300, column: 39, scope: !1652)
!1654 = !DILocation(line: 1300, column: 58, scope: !1652)
!1655 = !DILocation(line: 1299, column: 62, scope: !1652)
!1656 = !DILocation(line: 0, scope: !1100, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 1299, column: 18, scope: !1652)
!1658 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1657)
!1659 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1657)
!1660 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1657)
!1661 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1657)
!1662 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1657)
!1663 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1657)
!1664 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1657)
!1665 = !DILocation(line: 1299, column: 14, scope: !1652)
!1666 = !DILocation(line: 1299, column: 17, scope: !1652)
!1667 = !{!1645, !1646, i64 4}
!1668 = !DILocation(line: 1302, column: 22, scope: !1652)
!1669 = !DILocation(line: 1302, column: 60, scope: !1652)
!1670 = !DILocation(line: 1301, column: 64, scope: !1652)
!1671 = !DILocation(line: 0, scope: !1100, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 1301, column: 20, scope: !1652)
!1673 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1672)
!1674 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1672)
!1675 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1672)
!1676 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1672)
!1677 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1672)
!1678 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1672)
!1679 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1672)
!1680 = !DILocation(line: 1301, column: 14, scope: !1652)
!1681 = !DILocation(line: 1301, column: 19, scope: !1652)
!1682 = !{!1645, !1646, i64 2}
!1683 = !DILocation(line: 1305, column: 22, scope: !1652)
!1684 = !DILocation(line: 1305, column: 59, scope: !1652)
!1685 = !DILocation(line: 1304, column: 63, scope: !1652)
!1686 = !DILocation(line: 0, scope: !1100, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 1304, column: 19, scope: !1652)
!1688 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1687)
!1689 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1687)
!1690 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1687)
!1691 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1687)
!1692 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1687)
!1693 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1687)
!1694 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1687)
!1695 = !DILocation(line: 0, scope: !1100, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 1308, column: 14, scope: !1618)
!1697 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1696)
!1698 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1696)
!1699 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1696)
!1700 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1696)
!1701 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1696)
!1702 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1696)
!1703 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1696)
!1704 = !DILocation(line: 1308, column: 10, scope: !1618)
!1705 = !DILocation(line: 1308, column: 13, scope: !1618)
!1706 = !DILocation(line: 1309, column: 43, scope: !1618)
!1707 = !DILocation(line: 0, scope: !1100, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 1309, column: 16, scope: !1618)
!1709 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1708)
!1710 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1708)
!1711 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1708)
!1712 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1708)
!1713 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1708)
!1714 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1708)
!1715 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1708)
!1716 = !DILocation(line: 1309, column: 10, scope: !1618)
!1717 = !DILocation(line: 1309, column: 15, scope: !1618)
!1718 = !DILocation(line: 1310, column: 42, scope: !1618)
!1719 = !DILocation(line: 0, scope: !1100, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 1310, column: 15, scope: !1618)
!1721 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1720)
!1722 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1720)
!1723 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1720)
!1724 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1720)
!1725 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1720)
!1726 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1720)
!1727 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1720)
!1728 = !{!1645, !1646, i64 0}
!1729 = !DILocation(line: 1311, column: 1, scope: !1618)
!1730 = distinct !DISubprogram(name: "PixelGetRed", scope: !399, file: !399, line: 1335, type: !1067, scopeLine: 1336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1731)
!1731 = !{!1732}
!1732 = !DILocalVariable(name: "wand", arg: 1, scope: !1730, file: !399, line: 1335, type: !459)
!1733 = !DILocation(line: 0, scope: !1730)
!1734 = !DILocation(line: 1339, column: 13, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1730, file: !399, line: 1339, column: 7)
!1736 = !DILocation(line: 1339, column: 19, scope: !1735)
!1737 = !DILocation(line: 1339, column: 7, scope: !1730)
!1738 = !DILocation(line: 1340, column: 66, scope: !1735)
!1739 = !DILocation(line: 1340, column: 12, scope: !1735)
!1740 = !DILocation(line: 1340, column: 5, scope: !1735)
!1741 = !DILocation(line: 1341, column: 44, scope: !1730)
!1742 = !DILocation(line: 1341, column: 32, scope: !1730)
!1743 = !DILocation(line: 1341, column: 31, scope: !1730)
!1744 = !DILocation(line: 1341, column: 3, scope: !1730)
!1745 = distinct !DISubprogram(name: "PixelGetRedQuantum", scope: !399, file: !399, line: 1366, type: !1086, scopeLine: 1367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1746)
!1746 = !{!1747}
!1747 = !DILocalVariable(name: "wand", arg: 1, scope: !1745, file: !399, line: 1366, type: !459)
!1748 = !DILocation(line: 0, scope: !1745)
!1749 = !DILocation(line: 1370, column: 13, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1745, file: !399, line: 1370, column: 7)
!1751 = !DILocation(line: 1370, column: 19, scope: !1750)
!1752 = !DILocation(line: 1370, column: 7, scope: !1745)
!1753 = !DILocation(line: 1371, column: 66, scope: !1750)
!1754 = !DILocation(line: 1371, column: 12, scope: !1750)
!1755 = !DILocation(line: 1371, column: 5, scope: !1750)
!1756 = !DILocation(line: 1372, column: 37, scope: !1745)
!1757 = !DILocation(line: 0, scope: !1100, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 1372, column: 10, scope: !1745)
!1759 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1758)
!1760 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1758)
!1761 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1758)
!1762 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1758)
!1763 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1758)
!1764 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1758)
!1765 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1758)
!1766 = !DILocation(line: 1372, column: 3, scope: !1745)
!1767 = distinct !DISubprogram(name: "PixelGetYellow", scope: !399, file: !399, line: 1397, type: !1067, scopeLine: 1398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1768)
!1768 = !{!1769}
!1769 = !DILocalVariable(name: "wand", arg: 1, scope: !1767, file: !399, line: 1397, type: !459)
!1770 = !DILocation(line: 0, scope: !1767)
!1771 = !DILocation(line: 1401, column: 13, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1767, file: !399, line: 1401, column: 7)
!1773 = !DILocation(line: 1401, column: 19, scope: !1772)
!1774 = !DILocation(line: 1401, column: 7, scope: !1767)
!1775 = !DILocation(line: 1402, column: 66, scope: !1772)
!1776 = !DILocation(line: 1402, column: 12, scope: !1772)
!1777 = !DILocation(line: 1402, column: 5, scope: !1772)
!1778 = !DILocation(line: 1403, column: 44, scope: !1767)
!1779 = !DILocation(line: 1403, column: 32, scope: !1767)
!1780 = !DILocation(line: 1403, column: 31, scope: !1767)
!1781 = !DILocation(line: 1403, column: 3, scope: !1767)
!1782 = distinct !DISubprogram(name: "PixelGetYellowQuantum", scope: !399, file: !399, line: 1428, type: !1086, scopeLine: 1429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1783)
!1783 = !{!1784}
!1784 = !DILocalVariable(name: "wand", arg: 1, scope: !1782, file: !399, line: 1428, type: !459)
!1785 = !DILocation(line: 0, scope: !1782)
!1786 = !DILocation(line: 1432, column: 13, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !399, line: 1432, column: 7)
!1788 = !DILocation(line: 1432, column: 19, scope: !1787)
!1789 = !DILocation(line: 1432, column: 7, scope: !1782)
!1790 = !DILocation(line: 1433, column: 66, scope: !1787)
!1791 = !DILocation(line: 1433, column: 12, scope: !1787)
!1792 = !DILocation(line: 1433, column: 5, scope: !1787)
!1793 = !DILocation(line: 1434, column: 37, scope: !1782)
!1794 = !DILocation(line: 0, scope: !1100, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 1434, column: 10, scope: !1782)
!1796 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1795)
!1797 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1795)
!1798 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1795)
!1799 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1795)
!1800 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1795)
!1801 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1795)
!1802 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1795)
!1803 = !DILocation(line: 1434, column: 3, scope: !1782)
!1804 = distinct !DISubprogram(name: "PixelSetAlpha", scope: !399, file: !399, line: 1462, type: !1805, scopeLine: 1463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1807)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{null, !395, !909}
!1807 = !{!1808, !1809}
!1808 = !DILocalVariable(name: "wand", arg: 1, scope: !1804, file: !399, line: 1462, type: !395)
!1809 = !DILocalVariable(name: "alpha", arg: 2, scope: !1804, file: !399, line: 1462, type: !909)
!1810 = !DILocation(line: 0, scope: !1804)
!1811 = !DILocation(line: 1466, column: 13, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1804, file: !399, line: 1466, column: 7)
!1813 = !DILocation(line: 1466, column: 19, scope: !1812)
!1814 = !DILocation(line: 1466, column: 7, scope: !1804)
!1815 = !DILocation(line: 1467, column: 66, scope: !1812)
!1816 = !DILocation(line: 1467, column: 12, scope: !1812)
!1817 = !DILocation(line: 1467, column: 5, scope: !1812)
!1818 = !DILocation(line: 1469, column: 49, scope: !1804)
!1819 = !DILocation(line: 1469, column: 20, scope: !1804)
!1820 = !DILocation(line: 0, scope: !1100, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 1469, column: 5, scope: !1804)
!1822 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1821)
!1823 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1821)
!1824 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1821)
!1825 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1821)
!1826 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1821)
!1827 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1821)
!1828 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1821)
!1829 = !DILocation(line: 1468, column: 15, scope: !1804)
!1830 = !DILocation(line: 1468, column: 22, scope: !1804)
!1831 = !DILocation(line: 1470, column: 1, scope: !1804)
!1832 = distinct !DISubprogram(name: "PixelSetAlphaQuantum", scope: !399, file: !399, line: 1497, type: !1833, scopeLine: 1498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1835)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !395, !1511}
!1835 = !{!1836, !1837}
!1836 = !DILocalVariable(name: "wand", arg: 1, scope: !1832, file: !399, line: 1497, type: !395)
!1837 = !DILocalVariable(name: "opacity", arg: 2, scope: !1832, file: !399, line: 1497, type: !1511)
!1838 = !DILocation(line: 0, scope: !1832)
!1839 = !DILocation(line: 1501, column: 13, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1832, file: !399, line: 1501, column: 7)
!1841 = !DILocation(line: 1501, column: 19, scope: !1840)
!1842 = !DILocation(line: 1501, column: 7, scope: !1832)
!1843 = !DILocation(line: 1502, column: 66, scope: !1840)
!1844 = !DILocation(line: 1502, column: 12, scope: !1840)
!1845 = !DILocation(line: 1502, column: 5, scope: !1840)
!1846 = !DILocation(line: 1503, column: 53, scope: !1832)
!1847 = !DILocation(line: 1503, column: 23, scope: !1832)
!1848 = !DILocation(line: 1503, column: 15, scope: !1832)
!1849 = !DILocation(line: 1503, column: 22, scope: !1832)
!1850 = !DILocation(line: 1504, column: 1, scope: !1832)
!1851 = distinct !DISubprogram(name: "PixelSetBlack", scope: !399, file: !399, line: 1530, type: !1805, scopeLine: 1531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1852)
!1852 = !{!1853, !1854}
!1853 = !DILocalVariable(name: "wand", arg: 1, scope: !1851, file: !399, line: 1530, type: !395)
!1854 = !DILocalVariable(name: "black", arg: 2, scope: !1851, file: !399, line: 1530, type: !909)
!1855 = !DILocation(line: 0, scope: !1851)
!1856 = !DILocation(line: 1534, column: 13, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1851, file: !399, line: 1534, column: 7)
!1858 = !DILocation(line: 1534, column: 19, scope: !1857)
!1859 = !DILocation(line: 1534, column: 7, scope: !1851)
!1860 = !DILocation(line: 1535, column: 66, scope: !1857)
!1861 = !DILocation(line: 1535, column: 12, scope: !1857)
!1862 = !DILocation(line: 1535, column: 5, scope: !1857)
!1863 = !DILocation(line: 1537, column: 17, scope: !1851)
!1864 = !DILocation(line: 1536, column: 53, scope: !1851)
!1865 = !DILocation(line: 0, scope: !1100, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 1536, column: 38, scope: !1851)
!1867 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1866)
!1868 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1866)
!1869 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1866)
!1870 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1866)
!1871 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1866)
!1872 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1866)
!1873 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1866)
!1874 = !DILocation(line: 1536, column: 15, scope: !1851)
!1875 = !DILocation(line: 1536, column: 20, scope: !1851)
!1876 = !DILocation(line: 1538, column: 1, scope: !1851)
!1877 = distinct !DISubprogram(name: "PixelSetBlackQuantum", scope: !399, file: !399, line: 1564, type: !1833, scopeLine: 1565, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1878)
!1878 = !{!1879, !1880}
!1879 = !DILocalVariable(name: "wand", arg: 1, scope: !1877, file: !399, line: 1564, type: !395)
!1880 = !DILocalVariable(name: "black", arg: 2, scope: !1877, file: !399, line: 1564, type: !1511)
!1881 = !DILocation(line: 0, scope: !1877)
!1882 = !DILocation(line: 1568, column: 13, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1877, file: !399, line: 1568, column: 7)
!1884 = !DILocation(line: 1568, column: 19, scope: !1883)
!1885 = !DILocation(line: 1568, column: 7, scope: !1877)
!1886 = !DILocation(line: 1569, column: 66, scope: !1883)
!1887 = !DILocation(line: 1569, column: 12, scope: !1883)
!1888 = !DILocation(line: 1569, column: 5, scope: !1883)
!1889 = !DILocation(line: 1570, column: 21, scope: !1877)
!1890 = !DILocation(line: 1570, column: 15, scope: !1877)
!1891 = !DILocation(line: 1570, column: 20, scope: !1877)
!1892 = !DILocation(line: 1571, column: 1, scope: !1877)
!1893 = distinct !DISubprogram(name: "PixelSetBlue", scope: !399, file: !399, line: 1597, type: !1805, scopeLine: 1598, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1894)
!1894 = !{!1895, !1896}
!1895 = !DILocalVariable(name: "wand", arg: 1, scope: !1893, file: !399, line: 1597, type: !395)
!1896 = !DILocalVariable(name: "blue", arg: 2, scope: !1893, file: !399, line: 1597, type: !909)
!1897 = !DILocation(line: 0, scope: !1893)
!1898 = !DILocation(line: 1601, column: 13, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1893, file: !399, line: 1601, column: 7)
!1900 = !DILocation(line: 1601, column: 19, scope: !1899)
!1901 = !DILocation(line: 1601, column: 7, scope: !1893)
!1902 = !DILocation(line: 1602, column: 66, scope: !1899)
!1903 = !DILocation(line: 1602, column: 12, scope: !1899)
!1904 = !DILocation(line: 1602, column: 5, scope: !1899)
!1905 = !DILocation(line: 1604, column: 17, scope: !1893)
!1906 = !DILocation(line: 1603, column: 52, scope: !1893)
!1907 = !DILocation(line: 0, scope: !1100, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 1603, column: 37, scope: !1893)
!1909 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !1908)
!1910 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !1908)
!1911 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !1908)
!1912 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !1908)
!1913 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !1908)
!1914 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !1908)
!1915 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !1908)
!1916 = !DILocation(line: 1603, column: 15, scope: !1893)
!1917 = !DILocation(line: 1603, column: 19, scope: !1893)
!1918 = !DILocation(line: 1605, column: 1, scope: !1893)
!1919 = distinct !DISubprogram(name: "PixelSetBlueQuantum", scope: !399, file: !399, line: 1631, type: !1833, scopeLine: 1632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1920)
!1920 = !{!1921, !1922}
!1921 = !DILocalVariable(name: "wand", arg: 1, scope: !1919, file: !399, line: 1631, type: !395)
!1922 = !DILocalVariable(name: "blue", arg: 2, scope: !1919, file: !399, line: 1631, type: !1511)
!1923 = !DILocation(line: 0, scope: !1919)
!1924 = !DILocation(line: 1635, column: 13, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !399, line: 1635, column: 7)
!1926 = !DILocation(line: 1635, column: 19, scope: !1925)
!1927 = !DILocation(line: 1635, column: 7, scope: !1919)
!1928 = !DILocation(line: 1636, column: 66, scope: !1925)
!1929 = !DILocation(line: 1636, column: 12, scope: !1925)
!1930 = !DILocation(line: 1636, column: 5, scope: !1925)
!1931 = !DILocation(line: 1637, column: 20, scope: !1919)
!1932 = !DILocation(line: 1637, column: 15, scope: !1919)
!1933 = !DILocation(line: 1637, column: 19, scope: !1919)
!1934 = !DILocation(line: 1638, column: 1, scope: !1919)
!1935 = distinct !DISubprogram(name: "PixelSetColor", scope: !399, file: !399, line: 1665, type: !1936, scopeLine: 1666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1938)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!424, !395, !580}
!1938 = !{!1939, !1940, !1941, !1942}
!1939 = !DILocalVariable(name: "wand", arg: 1, scope: !1935, file: !399, line: 1665, type: !395)
!1940 = !DILocalVariable(name: "color", arg: 2, scope: !1935, file: !399, line: 1665, type: !580)
!1941 = !DILocalVariable(name: "status", scope: !1935, file: !399, line: 1668, type: !424)
!1942 = !DILocalVariable(name: "pixel", scope: !1935, file: !399, line: 1671, type: !432)
!1943 = !DILocation(line: 0, scope: !1935)
!1944 = !DILocation(line: 1670, column: 3, scope: !1935)
!1945 = !DILocation(line: 1671, column: 5, scope: !1935)
!1946 = !DILocation(line: 1675, column: 13, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1935, file: !399, line: 1675, column: 7)
!1948 = !DILocation(line: 1675, column: 19, scope: !1947)
!1949 = !DILocation(line: 1675, column: 7, scope: !1935)
!1950 = !DILocation(line: 1676, column: 66, scope: !1947)
!1951 = !DILocation(line: 1676, column: 12, scope: !1947)
!1952 = !DILocation(line: 1676, column: 5, scope: !1947)
!1953 = !DILocation(line: 1677, column: 46, scope: !1935)
!1954 = !DILocation(line: 1677, column: 10, scope: !1935)
!1955 = !DILocation(line: 1678, column: 14, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1935, file: !399, line: 1678, column: 7)
!1957 = !DILocation(line: 1678, column: 7, scope: !1935)
!1958 = !DILocation(line: 1679, column: 11, scope: !1956)
!1959 = !DILocation(line: 1679, column: 17, scope: !1956)
!1960 = !DILocation(line: 1679, column: 5, scope: !1956)
!1961 = !DILocation(line: 1681, column: 1, scope: !1935)
!1962 = !DILocation(line: 1680, column: 3, scope: !1935)
!1963 = !DISubprogram(name: "QueryMagickColor", scope: !553, file: !553, line: 92, type: !1964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!424, !580, !1023, !410}
!1966 = distinct !DISubprogram(name: "PixelSetColorCount", scope: !399, file: !399, line: 1707, type: !1967, scopeLine: 1708, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1969)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{null, !395, !692}
!1969 = !{!1970, !1971}
!1970 = !DILocalVariable(name: "wand", arg: 1, scope: !1966, file: !399, line: 1707, type: !395)
!1971 = !DILocalVariable(name: "count", arg: 2, scope: !1966, file: !399, line: 1707, type: !692)
!1972 = !DILocation(line: 0, scope: !1966)
!1973 = !DILocation(line: 1711, column: 13, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1966, file: !399, line: 1711, column: 7)
!1975 = !DILocation(line: 1711, column: 19, scope: !1974)
!1976 = !DILocation(line: 1711, column: 7, scope: !1966)
!1977 = !DILocation(line: 1712, column: 66, scope: !1974)
!1978 = !DILocation(line: 1712, column: 12, scope: !1974)
!1979 = !DILocation(line: 1712, column: 5, scope: !1974)
!1980 = !DILocation(line: 1713, column: 9, scope: !1966)
!1981 = !DILocation(line: 1713, column: 14, scope: !1966)
!1982 = !DILocation(line: 1714, column: 1, scope: !1966)
!1983 = distinct !DISubprogram(name: "PixelSetColorFromWand", scope: !399, file: !399, line: 1740, type: !1984, scopeLine: 1741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !395, !459}
!1986 = !{!1987, !1988}
!1987 = !DILocalVariable(name: "wand", arg: 1, scope: !1983, file: !399, line: 1740, type: !395)
!1988 = !DILocalVariable(name: "color", arg: 2, scope: !1983, file: !399, line: 1740, type: !459)
!1989 = !DILocation(line: 0, scope: !1983)
!1990 = !DILocation(line: 1744, column: 13, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1983, file: !399, line: 1744, column: 7)
!1992 = !DILocation(line: 1744, column: 19, scope: !1991)
!1993 = !DILocation(line: 1744, column: 7, scope: !1983)
!1994 = !DILocation(line: 1745, column: 66, scope: !1991)
!1995 = !DILocation(line: 1745, column: 12, scope: !1991)
!1996 = !DILocation(line: 1745, column: 5, scope: !1991)
!1997 = !DILocation(line: 1747, column: 9, scope: !1983)
!1998 = !DILocation(line: 1747, column: 22, scope: !1983)
!1999 = !DILocation(line: 1748, column: 1, scope: !1983)
!2000 = distinct !DISubprogram(name: "PixelSetCyan", scope: !399, file: !399, line: 1774, type: !1805, scopeLine: 1775, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2001)
!2001 = !{!2002, !2003}
!2002 = !DILocalVariable(name: "wand", arg: 1, scope: !2000, file: !399, line: 1774, type: !395)
!2003 = !DILocalVariable(name: "cyan", arg: 2, scope: !2000, file: !399, line: 1774, type: !909)
!2004 = !DILocation(line: 0, scope: !2000)
!2005 = !DILocation(line: 1778, column: 13, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2000, file: !399, line: 1778, column: 7)
!2007 = !DILocation(line: 1778, column: 19, scope: !2006)
!2008 = !DILocation(line: 1778, column: 7, scope: !2000)
!2009 = !DILocation(line: 1779, column: 66, scope: !2006)
!2010 = !DILocation(line: 1779, column: 12, scope: !2006)
!2011 = !DILocation(line: 1779, column: 5, scope: !2006)
!2012 = !DILocation(line: 1781, column: 17, scope: !2000)
!2013 = !DILocation(line: 1780, column: 51, scope: !2000)
!2014 = !DILocation(line: 0, scope: !1100, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 1780, column: 36, scope: !2000)
!2016 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !2015)
!2017 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !2015)
!2018 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !2015)
!2019 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !2015)
!2020 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !2015)
!2021 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !2015)
!2022 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !2015)
!2023 = !DILocation(line: 1780, column: 15, scope: !2000)
!2024 = !DILocation(line: 1780, column: 18, scope: !2000)
!2025 = !DILocation(line: 1782, column: 1, scope: !2000)
!2026 = distinct !DISubprogram(name: "PixelSetCyanQuantum", scope: !399, file: !399, line: 1808, type: !1833, scopeLine: 1809, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2027)
!2027 = !{!2028, !2029}
!2028 = !DILocalVariable(name: "wand", arg: 1, scope: !2026, file: !399, line: 1808, type: !395)
!2029 = !DILocalVariable(name: "cyan", arg: 2, scope: !2026, file: !399, line: 1808, type: !1511)
!2030 = !DILocation(line: 0, scope: !2026)
!2031 = !DILocation(line: 1812, column: 13, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2026, file: !399, line: 1812, column: 7)
!2033 = !DILocation(line: 1812, column: 19, scope: !2032)
!2034 = !DILocation(line: 1812, column: 7, scope: !2026)
!2035 = !DILocation(line: 1813, column: 66, scope: !2032)
!2036 = !DILocation(line: 1813, column: 12, scope: !2032)
!2037 = !DILocation(line: 1813, column: 5, scope: !2032)
!2038 = !DILocation(line: 1814, column: 19, scope: !2026)
!2039 = !DILocation(line: 1814, column: 15, scope: !2026)
!2040 = !DILocation(line: 1814, column: 18, scope: !2026)
!2041 = !DILocation(line: 1815, column: 1, scope: !2026)
!2042 = distinct !DISubprogram(name: "PixelSetFuzz", scope: !399, file: !399, line: 1841, type: !1805, scopeLine: 1842, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2043)
!2043 = !{!2044, !2045}
!2044 = !DILocalVariable(name: "wand", arg: 1, scope: !2042, file: !399, line: 1841, type: !395)
!2045 = !DILocalVariable(name: "fuzz", arg: 2, scope: !2042, file: !399, line: 1841, type: !909)
!2046 = !DILocation(line: 0, scope: !2042)
!2047 = !DILocation(line: 1845, column: 13, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2042, file: !399, line: 1845, column: 7)
!2049 = !DILocation(line: 1845, column: 19, scope: !2048)
!2050 = !DILocation(line: 1845, column: 7, scope: !2042)
!2051 = !DILocation(line: 1846, column: 66, scope: !2048)
!2052 = !DILocation(line: 1846, column: 12, scope: !2048)
!2053 = !DILocation(line: 1846, column: 5, scope: !2048)
!2054 = !DILocation(line: 1847, column: 20, scope: !2042)
!2055 = !DILocation(line: 1847, column: 15, scope: !2042)
!2056 = !DILocation(line: 1847, column: 19, scope: !2042)
!2057 = !DILocation(line: 1848, column: 1, scope: !2042)
!2058 = distinct !DISubprogram(name: "PixelSetGreen", scope: !399, file: !399, line: 1874, type: !1805, scopeLine: 1875, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2059)
!2059 = !{!2060, !2061}
!2060 = !DILocalVariable(name: "wand", arg: 1, scope: !2058, file: !399, line: 1874, type: !395)
!2061 = !DILocalVariable(name: "green", arg: 2, scope: !2058, file: !399, line: 1874, type: !909)
!2062 = !DILocation(line: 0, scope: !2058)
!2063 = !DILocation(line: 1878, column: 13, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2058, file: !399, line: 1878, column: 7)
!2065 = !DILocation(line: 1878, column: 19, scope: !2064)
!2066 = !DILocation(line: 1878, column: 7, scope: !2058)
!2067 = !DILocation(line: 1879, column: 66, scope: !2064)
!2068 = !DILocation(line: 1879, column: 12, scope: !2064)
!2069 = !DILocation(line: 1879, column: 5, scope: !2064)
!2070 = !DILocation(line: 1881, column: 17, scope: !2058)
!2071 = !DILocation(line: 1880, column: 53, scope: !2058)
!2072 = !DILocation(line: 0, scope: !1100, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 1880, column: 38, scope: !2058)
!2074 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !2073)
!2075 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !2073)
!2076 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !2073)
!2077 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !2073)
!2078 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !2073)
!2079 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !2073)
!2080 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !2073)
!2081 = !DILocation(line: 1880, column: 15, scope: !2058)
!2082 = !DILocation(line: 1880, column: 20, scope: !2058)
!2083 = !DILocation(line: 1882, column: 1, scope: !2058)
!2084 = distinct !DISubprogram(name: "PixelSetGreenQuantum", scope: !399, file: !399, line: 1908, type: !1833, scopeLine: 1909, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2085)
!2085 = !{!2086, !2087}
!2086 = !DILocalVariable(name: "wand", arg: 1, scope: !2084, file: !399, line: 1908, type: !395)
!2087 = !DILocalVariable(name: "green", arg: 2, scope: !2084, file: !399, line: 1908, type: !1511)
!2088 = !DILocation(line: 0, scope: !2084)
!2089 = !DILocation(line: 1912, column: 13, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2084, file: !399, line: 1912, column: 7)
!2091 = !DILocation(line: 1912, column: 19, scope: !2090)
!2092 = !DILocation(line: 1912, column: 7, scope: !2084)
!2093 = !DILocation(line: 1913, column: 66, scope: !2090)
!2094 = !DILocation(line: 1913, column: 12, scope: !2090)
!2095 = !DILocation(line: 1913, column: 5, scope: !2090)
!2096 = !DILocation(line: 1914, column: 21, scope: !2084)
!2097 = !DILocation(line: 1914, column: 15, scope: !2084)
!2098 = !DILocation(line: 1914, column: 20, scope: !2084)
!2099 = !DILocation(line: 1915, column: 1, scope: !2084)
!2100 = distinct !DISubprogram(name: "PixelSetHSL", scope: !399, file: !399, line: 1943, type: !2101, scopeLine: 1945, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2103)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{null, !395, !909, !909, !909}
!2103 = !{!2104, !2105, !2106, !2107, !2108, !2109, !2110}
!2104 = !DILocalVariable(name: "wand", arg: 1, scope: !2100, file: !399, line: 1943, type: !395)
!2105 = !DILocalVariable(name: "hue", arg: 2, scope: !2100, file: !399, line: 1943, type: !909)
!2106 = !DILocalVariable(name: "saturation", arg: 3, scope: !2100, file: !399, line: 1944, type: !909)
!2107 = !DILocalVariable(name: "lightness", arg: 4, scope: !2100, file: !399, line: 1944, type: !909)
!2108 = !DILocalVariable(name: "blue", scope: !2100, file: !399, line: 1947, type: !484)
!2109 = !DILocalVariable(name: "green", scope: !2100, file: !399, line: 1948, type: !484)
!2110 = !DILocalVariable(name: "red", scope: !2100, file: !399, line: 1949, type: !484)
!2111 = !DILocation(line: 0, scope: !2100)
!2112 = !DILocation(line: 1946, column: 3, scope: !2100)
!2113 = !DILocation(line: 1953, column: 13, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2100, file: !399, line: 1953, column: 7)
!2115 = !DILocation(line: 1953, column: 19, scope: !2114)
!2116 = !DILocation(line: 1953, column: 7, scope: !2100)
!2117 = !DILocation(line: 1954, column: 66, scope: !2114)
!2118 = !DILocation(line: 1954, column: 12, scope: !2114)
!2119 = !DILocation(line: 1954, column: 5, scope: !2114)
!2120 = !DILocation(line: 1955, column: 3, scope: !2100)
!2121 = !DILocation(line: 1956, column: 36, scope: !2100)
!2122 = !{!1646, !1646, i64 0}
!2123 = !DILocation(line: 1956, column: 19, scope: !2100)
!2124 = !DILocation(line: 1956, column: 15, scope: !2100)
!2125 = !DILocation(line: 1956, column: 18, scope: !2100)
!2126 = !DILocation(line: 1957, column: 38, scope: !2100)
!2127 = !DILocation(line: 1957, column: 21, scope: !2100)
!2128 = !DILocation(line: 1957, column: 15, scope: !2100)
!2129 = !DILocation(line: 1957, column: 20, scope: !2100)
!2130 = !DILocation(line: 1958, column: 37, scope: !2100)
!2131 = !DILocation(line: 1958, column: 20, scope: !2100)
!2132 = !DILocation(line: 1958, column: 15, scope: !2100)
!2133 = !DILocation(line: 1958, column: 19, scope: !2100)
!2134 = !DILocation(line: 1959, column: 1, scope: !2100)
!2135 = !DISubprogram(name: "ConvertHSLToRGB", scope: !1508, file: !1508, line: 47, type: !2136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !693)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !909, !909, !909, !2138, !2138, !2138}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!2139 = distinct !DISubprogram(name: "PixelSetIndex", scope: !399, file: !399, line: 1985, type: !2140, scopeLine: 1986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2143)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !395, !2142}
!2142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!2143 = !{!2144, !2145}
!2144 = !DILocalVariable(name: "wand", arg: 1, scope: !2139, file: !399, line: 1985, type: !395)
!2145 = !DILocalVariable(name: "index", arg: 2, scope: !2139, file: !399, line: 1985, type: !2142)
!2146 = !DILocation(line: 0, scope: !2139)
!2147 = !DILocation(line: 1989, column: 13, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2139, file: !399, line: 1989, column: 7)
!2149 = !DILocation(line: 1989, column: 19, scope: !2148)
!2150 = !DILocation(line: 1989, column: 7, scope: !2139)
!2151 = !DILocation(line: 1990, column: 66, scope: !2148)
!2152 = !DILocation(line: 1990, column: 12, scope: !2148)
!2153 = !DILocation(line: 1990, column: 5, scope: !2148)
!2154 = !DILocation(line: 1991, column: 21, scope: !2139)
!2155 = !DILocation(line: 1991, column: 15, scope: !2139)
!2156 = !DILocation(line: 1991, column: 20, scope: !2139)
!2157 = !DILocation(line: 1992, column: 1, scope: !2139)
!2158 = distinct !DISubprogram(name: "PixelSetMagenta", scope: !399, file: !399, line: 2018, type: !1805, scopeLine: 2019, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2159)
!2159 = !{!2160, !2161}
!2160 = !DILocalVariable(name: "wand", arg: 1, scope: !2158, file: !399, line: 2018, type: !395)
!2161 = !DILocalVariable(name: "magenta", arg: 2, scope: !2158, file: !399, line: 2018, type: !909)
!2162 = !DILocation(line: 0, scope: !2158)
!2163 = !DILocation(line: 2022, column: 13, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2158, file: !399, line: 2022, column: 7)
!2165 = !DILocation(line: 2022, column: 19, scope: !2164)
!2166 = !DILocation(line: 2022, column: 7, scope: !2158)
!2167 = !DILocation(line: 2023, column: 66, scope: !2164)
!2168 = !DILocation(line: 2023, column: 12, scope: !2164)
!2169 = !DILocation(line: 2023, column: 5, scope: !2164)
!2170 = !DILocation(line: 2025, column: 17, scope: !2158)
!2171 = !DILocation(line: 2024, column: 53, scope: !2158)
!2172 = !DILocation(line: 0, scope: !1100, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 2024, column: 38, scope: !2158)
!2174 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !2173)
!2175 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !2173)
!2176 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !2173)
!2177 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !2173)
!2178 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !2173)
!2179 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !2173)
!2180 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !2173)
!2181 = !DILocation(line: 2024, column: 15, scope: !2158)
!2182 = !DILocation(line: 2024, column: 20, scope: !2158)
!2183 = !DILocation(line: 2026, column: 1, scope: !2158)
!2184 = distinct !DISubprogram(name: "PixelSetMagentaQuantum", scope: !399, file: !399, line: 2053, type: !1833, scopeLine: 2054, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2185)
!2185 = !{!2186, !2187}
!2186 = !DILocalVariable(name: "wand", arg: 1, scope: !2184, file: !399, line: 2053, type: !395)
!2187 = !DILocalVariable(name: "magenta", arg: 2, scope: !2184, file: !399, line: 2053, type: !1511)
!2188 = !DILocation(line: 0, scope: !2184)
!2189 = !DILocation(line: 2057, column: 13, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2184, file: !399, line: 2057, column: 7)
!2191 = !DILocation(line: 2057, column: 19, scope: !2190)
!2192 = !DILocation(line: 2057, column: 7, scope: !2184)
!2193 = !DILocation(line: 2058, column: 66, scope: !2190)
!2194 = !DILocation(line: 2058, column: 12, scope: !2190)
!2195 = !DILocation(line: 2058, column: 5, scope: !2190)
!2196 = !DILocation(line: 2059, column: 21, scope: !2184)
!2197 = !DILocation(line: 2059, column: 15, scope: !2184)
!2198 = !DILocation(line: 2059, column: 20, scope: !2184)
!2199 = !DILocation(line: 2060, column: 1, scope: !2184)
!2200 = distinct !DISubprogram(name: "PixelSetMagickColor", scope: !399, file: !399, line: 2086, type: !2201, scopeLine: 2088, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !395, !941}
!2203 = !{!2204, !2205}
!2204 = !DILocalVariable(name: "wand", arg: 1, scope: !2200, file: !399, line: 2086, type: !395)
!2205 = !DILocalVariable(name: "color", arg: 2, scope: !2200, file: !399, line: 2087, type: !941)
!2206 = !DILocation(line: 0, scope: !2200)
!2207 = !DILocation(line: 2091, column: 13, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2200, file: !399, line: 2091, column: 7)
!2209 = !DILocation(line: 2091, column: 19, scope: !2208)
!2210 = !DILocation(line: 2091, column: 7, scope: !2200)
!2211 = !DILocation(line: 2092, column: 66, scope: !2208)
!2212 = !DILocation(line: 2092, column: 12, scope: !2208)
!2213 = !DILocation(line: 2092, column: 5, scope: !2208)
!2214 = !DILocation(line: 2094, column: 9, scope: !2200)
!2215 = !DILocation(line: 2094, column: 16, scope: !2200)
!2216 = !DILocation(line: 2095, column: 1, scope: !2200)
!2217 = distinct !DISubprogram(name: "PixelSetOpacity", scope: !399, file: !399, line: 2121, type: !1805, scopeLine: 2122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2218)
!2218 = !{!2219, !2220}
!2219 = !DILocalVariable(name: "wand", arg: 1, scope: !2217, file: !399, line: 2121, type: !395)
!2220 = !DILocalVariable(name: "opacity", arg: 2, scope: !2217, file: !399, line: 2121, type: !909)
!2221 = !DILocation(line: 0, scope: !2217)
!2222 = !DILocation(line: 2125, column: 13, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2217, file: !399, line: 2125, column: 7)
!2224 = !DILocation(line: 2125, column: 19, scope: !2223)
!2225 = !DILocation(line: 2125, column: 7, scope: !2217)
!2226 = !DILocation(line: 2126, column: 66, scope: !2223)
!2227 = !DILocation(line: 2126, column: 12, scope: !2223)
!2228 = !DILocation(line: 2126, column: 5, scope: !2223)
!2229 = !DILocation(line: 2127, column: 15, scope: !2217)
!2230 = !DILocation(line: 2127, column: 20, scope: !2217)
!2231 = !DILocation(line: 2129, column: 17, scope: !2217)
!2232 = !DILocation(line: 2128, column: 55, scope: !2217)
!2233 = !DILocation(line: 0, scope: !1100, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 2128, column: 40, scope: !2217)
!2235 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !2234)
!2236 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !2234)
!2237 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !2234)
!2238 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !2234)
!2239 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !2234)
!2240 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !2234)
!2241 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !2234)
!2242 = !DILocation(line: 2128, column: 15, scope: !2217)
!2243 = !DILocation(line: 2128, column: 22, scope: !2217)
!2244 = !DILocation(line: 2130, column: 1, scope: !2217)
!2245 = distinct !DISubprogram(name: "PixelSetOpacityQuantum", scope: !399, file: !399, line: 2157, type: !1833, scopeLine: 2158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2246)
!2246 = !{!2247, !2248}
!2247 = !DILocalVariable(name: "wand", arg: 1, scope: !2245, file: !399, line: 2157, type: !395)
!2248 = !DILocalVariable(name: "opacity", arg: 2, scope: !2245, file: !399, line: 2157, type: !1511)
!2249 = !DILocation(line: 0, scope: !2245)
!2250 = !DILocation(line: 2161, column: 13, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2245, file: !399, line: 2161, column: 7)
!2252 = !DILocation(line: 2161, column: 19, scope: !2251)
!2253 = !DILocation(line: 2161, column: 7, scope: !2245)
!2254 = !DILocation(line: 2162, column: 66, scope: !2251)
!2255 = !DILocation(line: 2162, column: 12, scope: !2251)
!2256 = !DILocation(line: 2162, column: 5, scope: !2251)
!2257 = !DILocation(line: 2163, column: 23, scope: !2245)
!2258 = !DILocation(line: 2163, column: 15, scope: !2245)
!2259 = !DILocation(line: 2163, column: 22, scope: !2245)
!2260 = !DILocation(line: 2164, column: 1, scope: !2245)
!2261 = distinct !DISubprogram(name: "PixelSetQuantumColor", scope: !399, file: !399, line: 2190, type: !2262, scopeLine: 2191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2266)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{null, !395, !2264}
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!2266 = !{!2267, !2268}
!2267 = !DILocalVariable(name: "wand", arg: 1, scope: !2261, file: !399, line: 2190, type: !395)
!2268 = !DILocalVariable(name: "color", arg: 2, scope: !2261, file: !399, line: 2190, type: !2264)
!2269 = !DILocation(line: 0, scope: !2261)
!2270 = !DILocation(line: 2194, column: 13, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2261, file: !399, line: 2194, column: 7)
!2272 = !DILocation(line: 2194, column: 19, scope: !2271)
!2273 = !DILocation(line: 2194, column: 7, scope: !2261)
!2274 = !DILocation(line: 2195, column: 66, scope: !2271)
!2275 = !DILocation(line: 2195, column: 12, scope: !2271)
!2276 = !DILocation(line: 2195, column: 5, scope: !2271)
!2277 = !DILocation(line: 2197, column: 43, scope: !2261)
!2278 = !DILocation(line: 2197, column: 19, scope: !2261)
!2279 = !DILocation(line: 2197, column: 15, scope: !2261)
!2280 = !DILocation(line: 2197, column: 18, scope: !2261)
!2281 = !DILocation(line: 2198, column: 45, scope: !2261)
!2282 = !DILocation(line: 2198, column: 21, scope: !2261)
!2283 = !DILocation(line: 2198, column: 15, scope: !2261)
!2284 = !DILocation(line: 2198, column: 20, scope: !2261)
!2285 = !DILocation(line: 2199, column: 44, scope: !2261)
!2286 = !DILocation(line: 2199, column: 20, scope: !2261)
!2287 = !DILocation(line: 2199, column: 15, scope: !2261)
!2288 = !DILocation(line: 2199, column: 19, scope: !2261)
!2289 = !DILocation(line: 2200, column: 47, scope: !2261)
!2290 = !DILocation(line: 2200, column: 23, scope: !2261)
!2291 = !DILocation(line: 2200, column: 15, scope: !2261)
!2292 = !DILocation(line: 2200, column: 22, scope: !2261)
!2293 = !DILocation(line: 2201, column: 36, scope: !2261)
!2294 = !DILocation(line: 2201, column: 21, scope: !2261)
!2295 = !DILocation(line: 2201, column: 15, scope: !2261)
!2296 = !DILocation(line: 2201, column: 20, scope: !2261)
!2297 = !DILocation(line: 2202, column: 1, scope: !2261)
!2298 = distinct !DISubprogram(name: "PixelSetRed", scope: !399, file: !399, line: 2228, type: !1805, scopeLine: 2229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2299)
!2299 = !{!2300, !2301}
!2300 = !DILocalVariable(name: "wand", arg: 1, scope: !2298, file: !399, line: 2228, type: !395)
!2301 = !DILocalVariable(name: "red", arg: 2, scope: !2298, file: !399, line: 2228, type: !909)
!2302 = !DILocation(line: 0, scope: !2298)
!2303 = !DILocation(line: 2232, column: 13, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2298, file: !399, line: 2232, column: 7)
!2305 = !DILocation(line: 2232, column: 19, scope: !2304)
!2306 = !DILocation(line: 2232, column: 7, scope: !2298)
!2307 = !DILocation(line: 2233, column: 66, scope: !2304)
!2308 = !DILocation(line: 2233, column: 12, scope: !2304)
!2309 = !DILocation(line: 2233, column: 5, scope: !2304)
!2310 = !DILocation(line: 2235, column: 17, scope: !2298)
!2311 = !DILocation(line: 2234, column: 51, scope: !2298)
!2312 = !DILocation(line: 0, scope: !1100, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 2234, column: 36, scope: !2298)
!2314 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !2313)
!2315 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !2313)
!2316 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !2313)
!2317 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !2313)
!2318 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !2313)
!2319 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !2313)
!2320 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !2313)
!2321 = !DILocation(line: 2234, column: 15, scope: !2298)
!2322 = !DILocation(line: 2234, column: 18, scope: !2298)
!2323 = !DILocation(line: 2236, column: 1, scope: !2298)
!2324 = distinct !DISubprogram(name: "PixelSetRedQuantum", scope: !399, file: !399, line: 2262, type: !1833, scopeLine: 2263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2325)
!2325 = !{!2326, !2327}
!2326 = !DILocalVariable(name: "wand", arg: 1, scope: !2324, file: !399, line: 2262, type: !395)
!2327 = !DILocalVariable(name: "red", arg: 2, scope: !2324, file: !399, line: 2262, type: !1511)
!2328 = !DILocation(line: 0, scope: !2324)
!2329 = !DILocation(line: 2266, column: 13, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2324, file: !399, line: 2266, column: 7)
!2331 = !DILocation(line: 2266, column: 19, scope: !2330)
!2332 = !DILocation(line: 2266, column: 7, scope: !2324)
!2333 = !DILocation(line: 2267, column: 66, scope: !2330)
!2334 = !DILocation(line: 2267, column: 12, scope: !2330)
!2335 = !DILocation(line: 2267, column: 5, scope: !2330)
!2336 = !DILocation(line: 2268, column: 19, scope: !2324)
!2337 = !DILocation(line: 2268, column: 15, scope: !2324)
!2338 = !DILocation(line: 2268, column: 18, scope: !2324)
!2339 = !DILocation(line: 2269, column: 1, scope: !2324)
!2340 = distinct !DISubprogram(name: "PixelSetYellow", scope: !399, file: !399, line: 2295, type: !1805, scopeLine: 2296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2341)
!2341 = !{!2342, !2343}
!2342 = !DILocalVariable(name: "wand", arg: 1, scope: !2340, file: !399, line: 2295, type: !395)
!2343 = !DILocalVariable(name: "yellow", arg: 2, scope: !2340, file: !399, line: 2295, type: !909)
!2344 = !DILocation(line: 0, scope: !2340)
!2345 = !DILocation(line: 2299, column: 13, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2340, file: !399, line: 2299, column: 7)
!2347 = !DILocation(line: 2299, column: 19, scope: !2346)
!2348 = !DILocation(line: 2299, column: 7, scope: !2340)
!2349 = !DILocation(line: 2300, column: 66, scope: !2346)
!2350 = !DILocation(line: 2300, column: 12, scope: !2346)
!2351 = !DILocation(line: 2300, column: 5, scope: !2346)
!2352 = !DILocation(line: 2302, column: 17, scope: !2340)
!2353 = !DILocation(line: 2301, column: 52, scope: !2340)
!2354 = !DILocation(line: 0, scope: !1100, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 2301, column: 37, scope: !2340)
!2356 = !DILocation(line: 92, column: 13, scope: !1108, inlinedAt: !2355)
!2357 = !DILocation(line: 92, column: 7, scope: !1100, inlinedAt: !2355)
!2358 = !DILocation(line: 94, column: 13, scope: !1111, inlinedAt: !2355)
!2359 = !DILocation(line: 94, column: 7, scope: !1100, inlinedAt: !2355)
!2360 = !DILocation(line: 96, column: 26, scope: !1100, inlinedAt: !2355)
!2361 = !DILocation(line: 96, column: 10, scope: !1100, inlinedAt: !2355)
!2362 = !DILocation(line: 96, column: 3, scope: !1100, inlinedAt: !2355)
!2363 = !DILocation(line: 2301, column: 15, scope: !2340)
!2364 = !DILocation(line: 2301, column: 19, scope: !2340)
!2365 = !DILocation(line: 2303, column: 1, scope: !2340)
!2366 = distinct !DISubprogram(name: "PixelSetYellowQuantum", scope: !399, file: !399, line: 2329, type: !1833, scopeLine: 2330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2367)
!2367 = !{!2368, !2369}
!2368 = !DILocalVariable(name: "wand", arg: 1, scope: !2366, file: !399, line: 2329, type: !395)
!2369 = !DILocalVariable(name: "yellow", arg: 2, scope: !2366, file: !399, line: 2329, type: !1511)
!2370 = !DILocation(line: 0, scope: !2366)
!2371 = !DILocation(line: 2333, column: 13, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2366, file: !399, line: 2333, column: 7)
!2373 = !DILocation(line: 2333, column: 19, scope: !2372)
!2374 = !DILocation(line: 2333, column: 7, scope: !2366)
!2375 = !DILocation(line: 2334, column: 66, scope: !2372)
!2376 = !DILocation(line: 2334, column: 12, scope: !2372)
!2377 = !DILocation(line: 2334, column: 5, scope: !2372)
!2378 = !DILocation(line: 2335, column: 20, scope: !2366)
!2379 = !DILocation(line: 2335, column: 15, scope: !2366)
!2380 = !DILocation(line: 2335, column: 19, scope: !2366)
!2381 = !DILocation(line: 2336, column: 1, scope: !2366)
