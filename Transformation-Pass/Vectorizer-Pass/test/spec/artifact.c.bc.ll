; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/artifact.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/artifact.c"
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

@.str = private unnamed_addr constant [87 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/artifact.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @CloneImageArtifacts(ptr noundef %image, ptr noundef %clone_image) local_unnamed_addr #0 !dbg !414 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !637, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.value(metadata ptr %clone_image, metadata !638, metadata !DIExpression()), !dbg !639
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !640
  %0 = load i32, ptr %debug, align 8, !dbg !640, !tbaa !642
  %cmp.not = icmp eq i32 %0, 0, !dbg !661
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !662

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !663
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 106, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #4, !dbg !664
  br label %if.end, !dbg !665

if.end:                                           ; preds = %if.then, %entry
  %debug1 = getelementptr inbounds %struct._Image, ptr %clone_image, i64 0, i32 59, !dbg !666
  %1 = load i32, ptr %debug1, align 8, !dbg !666, !tbaa !642
  %cmp2.not = icmp eq i32 %1, 0, !dbg !668
  br i1 %cmp2.not, label %if.end7, label %if.then3, !dbg !669

if.then3:                                         ; preds = %if.end
  %filename4 = getelementptr inbounds %struct._Image, ptr %clone_image, i64 0, i32 53, !dbg !670
  %call6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 110, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename4) #4, !dbg !671
  br label %if.end7, !dbg !672

if.end7:                                          ; preds = %if.then3, %if.end
  %artifacts = getelementptr inbounds %struct._Image, ptr %clone_image, i64 0, i32 76, !dbg !673
  %2 = load ptr, ptr %artifacts, align 8, !dbg !673, !tbaa !675
  %cmp8.not = icmp eq ptr %2, null, !dbg !676
  br i1 %cmp8.not, label %if.end17, label %if.then9, !dbg !677

if.then9:                                         ; preds = %if.end7
  %artifacts10 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 76, !dbg !678
  %3 = load ptr, ptr %artifacts10, align 8, !dbg !678, !tbaa !675
  %cmp11.not = icmp eq ptr %3, null, !dbg !681
  br i1 %cmp11.not, label %if.end13, label %if.then12, !dbg !682

if.then12:                                        ; preds = %if.then9
  call void @llvm.dbg.value(metadata ptr %image, metadata !683, metadata !DIExpression()) #4, !dbg !688
  %4 = load i32, ptr %debug, align 8, !dbg !690, !tbaa !642
  %cmp.not.i = icmp eq i32 %4, 0, !dbg !692
  br i1 %cmp.not.i, label %if.then2.i, label %if.end.i, !dbg !693

if.end.i:                                         ; preds = %if.then12
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !694
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 234, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #4, !dbg !695
  %.pr = load ptr, ptr %artifacts10, align 8, !dbg !696, !tbaa !675
  %cmp1.not.i = icmp eq ptr %.pr, null, !dbg !698
  br i1 %cmp1.not.i, label %if.end13, label %if.then2.i, !dbg !699

if.then2.i:                                       ; preds = %if.then12, %if.end.i
  %5 = phi ptr [ %.pr, %if.end.i ], [ %3, %if.then12 ]
  %call4.i = tail call ptr @DestroySplayTree(ptr noundef nonnull %5) #4, !dbg !700
  store ptr %call4.i, ptr %artifacts10, align 8, !dbg !701, !tbaa !675
  br label %if.end13, !dbg !702

if.end13:                                         ; preds = %if.then2.i, %if.end.i, %if.then9
  %6 = load ptr, ptr %artifacts, align 8, !dbg !703, !tbaa !675
  %call15 = tail call ptr @CloneSplayTree(ptr noundef %6, ptr noundef nonnull @ConstantString, ptr noundef nonnull @ConstantString) #4, !dbg !704
  store ptr %call15, ptr %artifacts10, align 8, !dbg !705, !tbaa !675
  br label %if.end17, !dbg !706

if.end17:                                         ; preds = %if.end13, %if.end7
  ret i32 1, !dbg !707
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !708 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DestroyImageArtifacts(ptr noundef %image) local_unnamed_addr #0 !dbg !684 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !683, metadata !DIExpression()), !dbg !715
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !716
  %0 = load i32, ptr %debug, align 8, !dbg !716, !tbaa !642
  %cmp.not = icmp eq i32 %0, 0, !dbg !717
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !718

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !719
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 234, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #4, !dbg !720
  br label %if.end, !dbg !721

if.end:                                           ; preds = %if.then, %entry
  %artifacts = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 76, !dbg !722
  %1 = load ptr, ptr %artifacts, align 8, !dbg !722, !tbaa !675
  %cmp1.not = icmp eq ptr %1, null, !dbg !723
  br i1 %cmp1.not, label %if.end6, label %if.then2, !dbg !724

if.then2:                                         ; preds = %if.end
  %call4 = tail call ptr @DestroySplayTree(ptr noundef nonnull %1) #4, !dbg !725
  store ptr %call4, ptr %artifacts, align 8, !dbg !726, !tbaa !675
  br label %if.end6, !dbg !727

if.end6:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !728
}

declare !dbg !729 ptr @CloneSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !732 ptr @ConstantString(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @DefineImageArtifact(ptr noundef %image, ptr noundef %artifact) local_unnamed_addr #0 !dbg !736 {
entry:
  %key = alloca [4096 x i8], align 16
  %value = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !740, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata ptr %artifact, metadata !741, metadata !DIExpression()), !dbg !745
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %key) #4, !dbg !746
  call void @llvm.dbg.declare(metadata ptr %key, metadata !742, metadata !DIExpression()), !dbg !747
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %value) #4, !dbg !746
  call void @llvm.dbg.declare(metadata ptr %value, metadata !743, metadata !DIExpression()), !dbg !748
  %call = call i64 @CopyMagickString(ptr noundef nonnull %key, ptr noundef %artifact, i64 noundef 4095) #4, !dbg !749
  call void @llvm.dbg.value(metadata ptr %key, metadata !744, metadata !DIExpression()), !dbg !745
  br label %for.cond, !dbg !750

for.cond:                                         ; preds = %for.inc, %entry
  %p.0 = phi ptr [ %key, %entry ], [ %incdec.ptr, %for.inc ], !dbg !752
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !744, metadata !DIExpression()), !dbg !745
  %0 = load i8, ptr %p.0, align 1, !dbg !753, !tbaa !755
  switch i8 %0, label %for.inc [
    i8 0, label %for.end
    i8 61, label %for.end
  ], !dbg !756

for.inc:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !757
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !744, metadata !DIExpression()), !dbg !745
  br label %for.cond, !dbg !758, !llvm.loop !759

for.end:                                          ; preds = %for.cond, %for.cond
  store i8 0, ptr %value, align 16, !dbg !763, !tbaa !755
  %cmp8 = icmp eq i8 %0, 61, !dbg !764
  br i1 %cmp8, label %if.then10, label %if.end13, !dbg !766

if.then10:                                        ; preds = %for.end
  %add.ptr = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !767
  %call12 = call i64 @CopyMagickString(ptr noundef nonnull %value, ptr noundef nonnull %add.ptr, i64 noundef 4096) #4, !dbg !768
  br label %if.end13, !dbg !769

if.end13:                                         ; preds = %if.then10, %for.end
  store i8 0, ptr %p.0, align 1, !dbg !770, !tbaa !755
  call void @llvm.dbg.value(metadata ptr %image, metadata !771, metadata !DIExpression()) #4, !dbg !779
  call void @llvm.dbg.value(metadata ptr %key, metadata !776, metadata !DIExpression()) #4, !dbg !779
  call void @llvm.dbg.value(metadata ptr %value, metadata !777, metadata !DIExpression()) #4, !dbg !779
  %debug.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !781
  %1 = load i32, ptr %debug.i, align 8, !dbg !781, !tbaa !642
  %cmp.not.i = icmp eq i32 %1, 0, !dbg !783
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !784

if.then.i:                                        ; preds = %if.end13
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !785
  %call.i = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 440, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #4, !dbg !786
  br label %if.end.i, !dbg !787

if.end.i:                                         ; preds = %if.then.i, %if.end13
  %artifacts.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 76, !dbg !788
  %2 = load ptr, ptr %artifacts.i, align 8, !dbg !788, !tbaa !675
  %cmp1.i = icmp eq ptr %2, null, !dbg !790
  br i1 %cmp1.i, label %if.then2.i, label %SetImageArtifact.exit, !dbg !791

if.then2.i:                                       ; preds = %if.end.i
  %call3.i = call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @RelinquishMagickMemory) #4, !dbg !792
  store ptr %call3.i, ptr %artifacts.i, align 8, !dbg !793, !tbaa !675
  br label %SetImageArtifact.exit, !dbg !794

SetImageArtifact.exit:                            ; preds = %if.end.i, %if.then2.i
  %3 = phi ptr [ %call3.i, %if.then2.i ], [ %2, %if.end.i ]
  %call11.i = call ptr @ConstantString(ptr noundef nonnull %key) #4, !dbg !795
  %call12.i = call ptr @ConstantString(ptr noundef nonnull %value) #4, !dbg !796
  %call13.i = call i32 @AddValueToSplayTree(ptr noundef %3, ptr noundef %call11.i, ptr noundef %call12.i) #4, !dbg !797
  call void @llvm.dbg.value(metadata i32 %call13.i, metadata !778, metadata !DIExpression()) #4, !dbg !779
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %value) #4, !dbg !798
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key) #4, !dbg !798
  ret i32 %call13.i, !dbg !799
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !800 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageArtifact(ptr noundef %image, ptr noundef %artifact, ptr noundef %value) local_unnamed_addr #0 !dbg !772 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !771, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %artifact, metadata !776, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata ptr %value, metadata !777, metadata !DIExpression()), !dbg !803
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !804
  %0 = load i32, ptr %debug, align 8, !dbg !804, !tbaa !642
  %cmp.not = icmp eq i32 %0, 0, !dbg !805
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !806

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !807
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 440, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #4, !dbg !808
  br label %if.end, !dbg !809

if.end:                                           ; preds = %if.then, %entry
  %artifacts = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 76, !dbg !810
  %1 = load ptr, ptr %artifacts, align 8, !dbg !810, !tbaa !675
  %cmp1 = icmp eq ptr %1, null, !dbg !811
  br i1 %cmp1, label %if.then2, label %if.end5, !dbg !812

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @RelinquishMagickMemory) #4, !dbg !813
  store ptr %call3, ptr %artifacts, align 8, !dbg !814, !tbaa !675
  br label %if.end5, !dbg !815

if.end5:                                          ; preds = %if.then2, %if.end
  %2 = phi ptr [ %call3, %if.then2 ], [ %1, %if.end ]
  %cmp6 = icmp eq ptr %value, null, !dbg !816
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !818

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.value(metadata ptr %image, metadata !819, metadata !DIExpression()) #4, !dbg !823
  call void @llvm.dbg.value(metadata ptr %artifact, metadata !822, metadata !DIExpression()) #4, !dbg !823
  %3 = load i32, ptr %debug, align 8, !dbg !825, !tbaa !642
  %cmp.not.i = icmp eq i32 %3, 0, !dbg !827
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !828

if.then.i:                                        ; preds = %if.then7
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !829
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 200, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #4, !dbg !830
  %.pre = load ptr, ptr %artifacts, align 8, !dbg !831, !tbaa !675
  br label %if.end.i, !dbg !833

if.end.i:                                         ; preds = %if.then.i, %if.then7
  %4 = phi ptr [ %.pre, %if.then.i ], [ %2, %if.then7 ], !dbg !831
  %cmp1.i = icmp eq ptr %4, null, !dbg !834
  br i1 %cmp1.i, label %cleanup, label %if.end3.i, !dbg !835

if.end3.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @DeleteNodeFromSplayTree(ptr noundef nonnull %4, ptr noundef %artifact) #4, !dbg !836
  br label %cleanup, !dbg !837

if.end9:                                          ; preds = %if.end5
  %call11 = tail call ptr @ConstantString(ptr noundef %artifact) #4, !dbg !838
  %call12 = tail call ptr @ConstantString(ptr noundef nonnull %value) #4, !dbg !839
  %call13 = tail call i32 @AddValueToSplayTree(ptr noundef %2, ptr noundef %call11, ptr noundef %call12) #4, !dbg !840
  call void @llvm.dbg.value(metadata i32 %call13, metadata !778, metadata !DIExpression()), !dbg !803
  br label %cleanup, !dbg !841

cleanup:                                          ; preds = %if.end3.i, %if.end.i, %if.end9
  %retval.0 = phi i32 [ %call13, %if.end9 ], [ %call5.i, %if.end3.i ], [ 0, %if.end.i ], !dbg !803
  ret i32 %retval.0, !dbg !842
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @DeleteImageArtifact(ptr noundef %image, ptr noundef %artifact) local_unnamed_addr #0 !dbg !820 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !819, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata ptr %artifact, metadata !822, metadata !DIExpression()), !dbg !843
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !844
  %0 = load i32, ptr %debug, align 8, !dbg !844, !tbaa !642
  %cmp.not = icmp eq i32 %0, 0, !dbg !845
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !846

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !847
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 200, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #4, !dbg !848
  br label %if.end, !dbg !849

if.end:                                           ; preds = %if.then, %entry
  %artifacts = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 76, !dbg !850
  %1 = load ptr, ptr %artifacts, align 8, !dbg !850, !tbaa !675
  %cmp1 = icmp eq ptr %1, null, !dbg !851
  br i1 %cmp1, label %return, label %if.end3, !dbg !852

if.end3:                                          ; preds = %if.end
  %call5 = tail call i32 @DeleteNodeFromSplayTree(ptr noundef nonnull %1, ptr noundef %artifact) #4, !dbg !853
  br label %return, !dbg !854

return:                                           ; preds = %if.end, %if.end3
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ 0, %if.end ], !dbg !843
  ret i32 %retval.0, !dbg !855
}

declare !dbg !856 i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !861 ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageArtifact(ptr noundef %image, ptr noundef %artifact) local_unnamed_addr #0 !dbg !864 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !868, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata ptr %artifact, metadata !869, metadata !DIExpression()), !dbg !871
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !872
  %0 = load i32, ptr %debug, align 8, !dbg !872, !tbaa !642
  %cmp.not = icmp eq i32 %0, 0, !dbg !874
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !875

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !876
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 275, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #4, !dbg !877
  br label %if.end, !dbg !878

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr null, metadata !870, metadata !DIExpression()), !dbg !871
  %cmp1 = icmp eq ptr %artifact, null, !dbg !879
  %artifacts = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 76, !dbg !871
  %1 = load ptr, ptr %artifacts, align 8, !dbg !871, !tbaa !675
  br i1 %cmp1, label %if.then2, label %if.end5, !dbg !881

if.then2:                                         ; preds = %if.end
  tail call void @ResetSplayTreeIterator(ptr noundef %1) #4, !dbg !882
  %2 = load ptr, ptr %artifacts, align 8, !dbg !884, !tbaa !675
  %call4 = tail call ptr @GetNextValueInSplayTree(ptr noundef %2) #4, !dbg !885
  call void @llvm.dbg.value(metadata ptr %call4, metadata !870, metadata !DIExpression()), !dbg !871
  br label %cleanup, !dbg !886

if.end5:                                          ; preds = %if.end
  %cmp7.not = icmp eq ptr %1, null, !dbg !887
  br i1 %cmp7.not, label %if.end14, label %if.then8, !dbg !889

if.then8:                                         ; preds = %if.end5
  %call10 = tail call ptr @GetValueFromSplayTree(ptr noundef nonnull %1, ptr noundef nonnull %artifact) #4, !dbg !890
  call void @llvm.dbg.value(metadata ptr %call10, metadata !870, metadata !DIExpression()), !dbg !871
  %cmp11.not = icmp eq ptr %call10, null, !dbg !892
  br i1 %cmp11.not, label %if.end14, label %cleanup, !dbg !894

if.end14:                                         ; preds = %if.then8, %if.end5
  call void @llvm.dbg.value(metadata ptr null, metadata !870, metadata !DIExpression()), !dbg !871
  br label %cleanup, !dbg !895

cleanup:                                          ; preds = %if.then8, %if.end14, %if.then2
  %retval.0 = phi ptr [ %call4, %if.then2 ], [ null, %if.end14 ], [ %call10, %if.then8 ], !dbg !871
  ret ptr %retval.0, !dbg !896
}

declare !dbg !897 void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #2

declare !dbg !900 ptr @GetNextValueInSplayTree(ptr noundef) local_unnamed_addr #2

declare !dbg !903 ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextImageArtifact(ptr noundef %image) local_unnamed_addr #0 !dbg !906 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !910, metadata !DIExpression()), !dbg !911
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !912
  %0 = load i32, ptr %debug, align 8, !dbg !912, !tbaa !642
  %cmp.not = icmp eq i32 %0, 0, !dbg !914
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !915

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !916
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 321, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #4, !dbg !917
  br label %if.end, !dbg !918

if.end:                                           ; preds = %if.then, %entry
  %artifacts = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 76, !dbg !919
  %1 = load ptr, ptr %artifacts, align 8, !dbg !919, !tbaa !675
  %cmp1 = icmp eq ptr %1, null, !dbg !921
  br i1 %cmp1, label %return, label %if.end3, !dbg !922

if.end3:                                          ; preds = %if.end
  %call5 = tail call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %1) #4, !dbg !923
  br label %return, !dbg !924

return:                                           ; preds = %if.end, %if.end3
  %retval.0 = phi ptr [ %call5, %if.end3 ], [ null, %if.end ], !dbg !911
  ret ptr %retval.0, !dbg !925
}

declare !dbg !926 ptr @GetNextKeyInSplayTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveImageArtifact(ptr noundef %image, ptr noundef %artifact) local_unnamed_addr #0 !dbg !927 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !931, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr %artifact, metadata !932, metadata !DIExpression()), !dbg !934
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !935
  %0 = load i32, ptr %debug, align 8, !dbg !935, !tbaa !642
  %cmp.not = icmp eq i32 %0, 0, !dbg !937
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !938

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !939
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 360, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #4, !dbg !940
  br label %if.end, !dbg !941

if.end:                                           ; preds = %if.then, %entry
  %artifacts = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 76, !dbg !942
  %1 = load ptr, ptr %artifacts, align 8, !dbg !942, !tbaa !675
  %cmp1 = icmp eq ptr %1, null, !dbg !944
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !945

if.end3:                                          ; preds = %if.end
  %call5 = tail call ptr @RemoveNodeFromSplayTree(ptr noundef nonnull %1, ptr noundef %artifact) #4, !dbg !946
  call void @llvm.dbg.value(metadata ptr %call5, metadata !933, metadata !DIExpression()), !dbg !934
  br label %cleanup, !dbg !947

cleanup:                                          ; preds = %if.end, %if.end3
  %retval.0 = phi ptr [ %call5, %if.end3 ], [ null, %if.end ], !dbg !934
  ret ptr %retval.0, !dbg !948
}

declare !dbg !949 ptr @RemoveNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ResetImageArtifactIterator(ptr noundef %image) local_unnamed_addr #0 !dbg !952 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !956, metadata !DIExpression()), !dbg !957
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !958
  %0 = load i32, ptr %debug, align 8, !dbg !958, !tbaa !642
  %cmp.not = icmp eq i32 %0, 0, !dbg !960
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !961

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !962
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 397, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #4, !dbg !963
  br label %if.end, !dbg !964

if.end:                                           ; preds = %if.then, %entry
  %artifacts = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 76, !dbg !965
  %1 = load ptr, ptr %artifacts, align 8, !dbg !965, !tbaa !675
  %cmp1 = icmp eq ptr %1, null, !dbg !967
  br i1 %cmp1, label %return, label %if.end3, !dbg !968

if.end3:                                          ; preds = %if.end
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %1) #4, !dbg !969
  br label %return, !dbg !970

return:                                           ; preds = %if.end, %if.end3
  ret void, !dbg !970
}

declare !dbg !971 ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #2

declare ptr @RelinquishMagickMemory(ptr noundef) #2

declare !dbg !977 i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!407, !408, !409, !410, !411, !412}
!llvm.ident = !{!413}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !393, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/artifact.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "f58aee91824e5d2304a154a7f4809071")
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
!393 = !{!394, !395, !396, !400, !403, !406}
!394 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "SplayTreeInfo", file: !398, line: 26, baseType: !399)
!398 = !DIFile(filename: "apps/538.imagick_r/src/magick/splay-tree.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9016e3627c0f26bd31d286f50189c16b")
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SplayTreeInfo", file: !398, line: 25, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!395, !395}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!407 = !{i32 7, !"Dwarf Version", i32 5}
!408 = !{i32 2, !"Debug Info Version", i32 3}
!409 = !{i32 1, !"wchar_size", i32 4}
!410 = !{i32 7, !"PIC Level", i32 2}
!411 = !{i32 7, !"PIE Level", i32 2}
!412 = !{i32 7, !"uwtable", i32 2}
!413 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!414 = distinct !DISubprogram(name: "CloneImageArtifacts", scope: !415, file: !415, line: 100, type: !416, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !636)
!415 = !DIFile(filename: "apps/538.imagick_r/src/magick/artifact.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f58aee91824e5d2304a154a7f4809071")
!416 = !DISubroutineType(types: !417)
!417 = !{!418, !419, !634}
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !3)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !77, line: 150, size: 105920, elements: !422)
!422 = !{!423, !425, !427, !429, !432, !434, !435, !436, !437, !438, !439, !440, !451, !452, !453, !454, !456, !470, !472, !473, !475, !476, !477, !478, !484, !485, !486, !494, !495, !496, !497, !498, !499, !501, !503, !505, !507, !509, !511, !513, !514, !515, !516, !517, !518, !519, !527, !542, !554, !555, !556, !557, !561, !565, !569, !570, !571, !572, !573, !591, !592, !594, !595, !605, !606, !608, !609, !610, !611, !612, !613, !615, !616, !617, !618, !619, !620, !621, !623, !624, !625, !626, !627, !631, !633}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !421, file: !77, line: 153, baseType: !424, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !9)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !421, file: !77, line: 156, baseType: !426, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !15, line: 61, baseType: !14)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !421, file: !77, line: 159, baseType: !428, size: 32, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !52, line: 49, baseType: !51)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !421, file: !77, line: 162, baseType: !430, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !431, line: 46, baseType: !394)
!431 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!432 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !421, file: !77, line: 165, baseType: !433, size: 32, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !77, line: 86, baseType: !76)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !421, file: !77, line: 168, baseType: !418, size: 32, offset: 224)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !421, file: !77, line: 169, baseType: !418, size: 32, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !421, file: !77, line: 172, baseType: !430, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !421, file: !77, line: 173, baseType: !430, size: 64, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !421, file: !77, line: 174, baseType: !430, size: 64, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !421, file: !77, line: 175, baseType: !430, size: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !421, file: !77, line: 178, baseType: !441, size: 64, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !444)
!444 = !{!445, !448, !449, !450}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !443, file: !326, line: 143, baseType: !446, size: 16)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !447)
!447 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !443, file: !326, line: 144, baseType: !446, size: 16, offset: 16)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !443, file: !326, line: 145, baseType: !446, size: 16, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !443, file: !326, line: 146, baseType: !446, size: 16, offset: 48)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !421, file: !77, line: 179, baseType: !442, size: 64, offset: 640)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !421, file: !77, line: 180, baseType: !442, size: 64, offset: 704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !421, file: !77, line: 181, baseType: !442, size: 64, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !421, file: !77, line: 184, baseType: !455, size: 64, offset: 832)
!455 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !421, file: !77, line: 187, baseType: !457, size: 768, offset: 896)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !77, line: 128, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !77, line: 121, size: 768, elements: !459)
!459 = !{!460, !467, !468, !469}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !458, file: !77, line: 124, baseType: !461, size: 192)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !77, line: 101, baseType: !462)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !77, line: 95, size: 192, elements: !463)
!463 = !{!464, !465, !466}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !462, file: !77, line: 98, baseType: !455, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !462, file: !77, line: 99, baseType: !455, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !462, file: !77, line: 100, baseType: !455, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !458, file: !77, line: 125, baseType: !461, size: 192, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !458, file: !77, line: 126, baseType: !461, size: 192, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !458, file: !77, line: 127, baseType: !461, size: 192, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !421, file: !77, line: 190, baseType: !471, size: 32, offset: 1664)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !421, file: !77, line: 193, baseType: !395, size: 64, offset: 1728)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !421, file: !77, line: 196, baseType: !474, size: 32, offset: 1792)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !77, line: 93, baseType: !96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !421, file: !77, line: 199, baseType: !406, size: 64, offset: 1856)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !421, file: !77, line: 200, baseType: !406, size: 64, offset: 1920)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !421, file: !77, line: 201, baseType: !406, size: 64, offset: 1984)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !421, file: !77, line: 204, baseType: !479, size: 64, offset: 2048)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !480, line: 77, baseType: !481)
!480 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !482, line: 193, baseType: !483)
!482 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!483 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !421, file: !77, line: 207, baseType: !455, size: 64, offset: 2112)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !421, file: !77, line: 208, baseType: !455, size: 64, offset: 2176)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !421, file: !77, line: 211, baseType: !487, size: 256, offset: 2240)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !489)
!489 = !{!490, !491, !492, !493}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !488, file: !153, line: 124, baseType: !430, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !488, file: !153, line: 125, baseType: !430, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !488, file: !153, line: 128, baseType: !479, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !488, file: !153, line: 129, baseType: !479, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !421, file: !77, line: 212, baseType: !487, size: 256, offset: 2496)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !421, file: !77, line: 213, baseType: !487, size: 256, offset: 2752)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !421, file: !77, line: 216, baseType: !455, size: 64, offset: 3008)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !421, file: !77, line: 217, baseType: !455, size: 64, offset: 3072)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !421, file: !77, line: 218, baseType: !455, size: 64, offset: 3136)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !421, file: !77, line: 221, baseType: !500, size: 32, offset: 3200)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !421, file: !77, line: 224, baseType: !502, size: 32, offset: 3232)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !77, line: 73, baseType: !136)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !421, file: !77, line: 227, baseType: !504, size: 32, offset: 3264)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !421, file: !77, line: 230, baseType: !506, size: 32, offset: 3296)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !421, file: !77, line: 233, baseType: !508, size: 32, offset: 3328)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !421, file: !77, line: 236, baseType: !510, size: 32, offset: 3360)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !421, file: !77, line: 239, baseType: !512, size: 64, offset: 3392)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !421, file: !77, line: 242, baseType: !430, size: 64, offset: 3456)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !421, file: !77, line: 243, baseType: !430, size: 64, offset: 3520)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !421, file: !77, line: 246, baseType: !479, size: 64, offset: 3584)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !421, file: !77, line: 249, baseType: !430, size: 64, offset: 3648)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !421, file: !77, line: 250, baseType: !430, size: 64, offset: 3712)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !421, file: !77, line: 253, baseType: !479, size: 64, offset: 3776)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !421, file: !77, line: 256, baseType: !520, size: 192, offset: 3840)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !521, line: 68, baseType: !522)
!521 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !521, line: 62, size: 192, elements: !523)
!523 = !{!524, !525, !526}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !522, file: !521, line: 65, baseType: !455, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !522, file: !521, line: 66, baseType: !455, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !522, file: !521, line: 67, baseType: !455, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !421, file: !77, line: 259, baseType: !528, size: 512, offset: 4032)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !530)
!530 = !{!531, !538, !539, !541}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !529, file: !247, line: 43, baseType: !532, size: 192)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !534)
!534 = !{!535, !536, !537}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !533, file: !247, line: 35, baseType: !455, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !533, file: !247, line: 36, baseType: !455, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !533, file: !247, line: 37, baseType: !455, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !529, file: !247, line: 44, baseType: !532, size: 192, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !529, file: !247, line: 47, baseType: !540, size: 32, offset: 384)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !529, file: !247, line: 50, baseType: !430, size: 64, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !421, file: !77, line: 262, baseType: !543, size: 64, offset: 4544)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !544, line: 26, baseType: !545)
!544 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!418, !403, !548, !551, !395}
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !550)
!550 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !553)
!553 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !421, file: !77, line: 265, baseType: !395, size: 64, offset: 4608)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !421, file: !77, line: 266, baseType: !395, size: 64, offset: 4672)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !421, file: !77, line: 267, baseType: !395, size: 64, offset: 4736)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !421, file: !77, line: 270, baseType: !558, size: 64, offset: 4800)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !52, line: 52, baseType: !560)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !52, line: 51, flags: DIFlagFwdDecl)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !421, file: !77, line: 273, baseType: !562, size: 64, offset: 4864)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !564)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !421, file: !77, line: 276, baseType: !566, size: 32768, offset: 4928)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 32768, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 4096)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !421, file: !77, line: 277, baseType: !566, size: 32768, offset: 37696)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !421, file: !77, line: 278, baseType: !566, size: 32768, offset: 70464)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !421, file: !77, line: 281, baseType: !430, size: 64, offset: 103232)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !421, file: !77, line: 282, baseType: !430, size: 64, offset: 103296)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !421, file: !77, line: 285, baseType: !574, size: 448, offset: 103360)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !576)
!576 = !{!577, !579, !581, !582, !583, !584, !585, !590}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !575, file: !253, line: 105, baseType: !578, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !575, file: !253, line: 108, baseType: !580, size: 32, offset: 32)
!580 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !575, file: !253, line: 111, baseType: !406, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !575, file: !253, line: 112, baseType: !406, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !575, file: !253, line: 115, baseType: !395, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !575, file: !253, line: 118, baseType: !418, size: 32, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !575, file: !253, line: 121, baseType: !586, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !588, line: 26, baseType: !589)
!588 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !588, line: 25, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !575, file: !253, line: 124, baseType: !430, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !421, file: !77, line: 288, baseType: !418, size: 32, offset: 103808)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !421, file: !77, line: 291, baseType: !593, size: 64, offset: 103872)
!593 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !479)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !421, file: !77, line: 294, baseType: !586, size: 64, offset: 103936)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !421, file: !77, line: 297, baseType: !596, size: 256, offset: 104000)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !597)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !598)
!598 = !{!599, !600, !601, !604}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !597, file: !89, line: 30, baseType: !406, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !597, file: !89, line: 33, baseType: !430, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !597, file: !89, line: 36, baseType: !602, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !597, file: !89, line: 39, baseType: !430, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !421, file: !77, line: 298, baseType: !596, size: 256, offset: 104256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !421, file: !77, line: 299, baseType: !607, size: 64, offset: 104512)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !421, file: !77, line: 302, baseType: !430, size: 64, offset: 104576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !421, file: !77, line: 305, baseType: !430, size: 64, offset: 104640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !421, file: !77, line: 308, baseType: !512, size: 64, offset: 104704)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !421, file: !77, line: 309, baseType: !512, size: 64, offset: 104768)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !77, line: 310, baseType: !512, size: 64, offset: 104832)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !421, file: !77, line: 313, baseType: !614, size: 32, offset: 104896)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !421, file: !77, line: 316, baseType: !418, size: 32, offset: 104928)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !421, file: !77, line: 319, baseType: !442, size: 64, offset: 104960)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !421, file: !77, line: 322, baseType: !512, size: 64, offset: 105024)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !421, file: !77, line: 325, baseType: !487, size: 256, offset: 105088)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !421, file: !77, line: 328, baseType: !395, size: 64, offset: 105344)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !421, file: !77, line: 329, baseType: !395, size: 64, offset: 105408)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !421, file: !77, line: 332, baseType: !622, size: 32, offset: 105472)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !77, line: 61, baseType: !342)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !421, file: !77, line: 335, baseType: !418, size: 32, offset: 105504)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !421, file: !77, line: 338, baseType: !552, size: 64, offset: 105536)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !421, file: !77, line: 341, baseType: !418, size: 32, offset: 105600)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !421, file: !77, line: 344, baseType: !430, size: 64, offset: 105664)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !421, file: !77, line: 347, baseType: !628, size: 64, offset: 105728)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !629, line: 7, baseType: !630)
!629 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !482, line: 160, baseType: !483)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !421, file: !77, line: 350, baseType: !632, size: 32, offset: 105792)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !421, file: !77, line: 353, baseType: !430, size: 64, offset: 105856)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!636 = !{!637, !638}
!637 = !DILocalVariable(name: "image", arg: 1, scope: !414, file: !415, line: 100, type: !419)
!638 = !DILocalVariable(name: "clone_image", arg: 2, scope: !414, file: !415, line: 101, type: !634)
!639 = !DILocation(line: 0, scope: !414)
!640 = !DILocation(line: 105, column: 14, scope: !641)
!641 = distinct !DILexicalBlock(scope: !414, file: !415, line: 105, column: 7)
!642 = !{!643, !644, i64 12976}
!643 = !{!"_Image", !644, i64 0, !644, i64 4, !644, i64 8, !646, i64 16, !644, i64 24, !644, i64 28, !644, i64 32, !646, i64 40, !646, i64 48, !646, i64 56, !646, i64 64, !647, i64 72, !648, i64 80, !648, i64 88, !648, i64 96, !650, i64 104, !651, i64 112, !644, i64 208, !647, i64 216, !644, i64 224, !647, i64 232, !647, i64 240, !647, i64 248, !646, i64 256, !650, i64 264, !650, i64 272, !653, i64 280, !653, i64 312, !653, i64 344, !650, i64 376, !650, i64 384, !650, i64 392, !644, i64 400, !644, i64 404, !644, i64 408, !644, i64 412, !644, i64 416, !644, i64 420, !647, i64 424, !646, i64 432, !646, i64 440, !646, i64 448, !646, i64 456, !646, i64 464, !646, i64 472, !654, i64 480, !655, i64 504, !647, i64 568, !647, i64 576, !647, i64 584, !647, i64 592, !647, i64 600, !647, i64 608, !644, i64 616, !644, i64 4712, !644, i64 8808, !646, i64 12904, !646, i64 12912, !657, i64 12920, !644, i64 12976, !646, i64 12984, !647, i64 12992, !659, i64 13000, !659, i64 13032, !647, i64 13064, !646, i64 13072, !646, i64 13080, !647, i64 13088, !647, i64 13096, !647, i64 13104, !644, i64 13112, !644, i64 13116, !648, i64 13120, !647, i64 13128, !653, i64 13136, !647, i64 13168, !647, i64 13176, !644, i64 13184, !644, i64 13188, !660, i64 13192, !644, i64 13200, !646, i64 13208, !646, i64 13216, !644, i64 13224, !646, i64 13232}
!644 = !{!"omnipotent char", !645, i64 0}
!645 = !{!"Simple C/C++ TBAA"}
!646 = !{!"long", !644, i64 0}
!647 = !{!"any pointer", !644, i64 0}
!648 = !{!"_PixelPacket", !649, i64 0, !649, i64 2, !649, i64 4, !649, i64 6}
!649 = !{!"short", !644, i64 0}
!650 = !{!"double", !644, i64 0}
!651 = !{!"_ChromaticityInfo", !652, i64 0, !652, i64 24, !652, i64 48, !652, i64 72}
!652 = !{!"_PrimaryInfo", !650, i64 0, !650, i64 8, !650, i64 16}
!653 = !{!"_RectangleInfo", !646, i64 0, !646, i64 8, !646, i64 16, !646, i64 24}
!654 = !{!"_ErrorInfo", !650, i64 0, !650, i64 8, !650, i64 16}
!655 = !{!"_TimerInfo", !656, i64 0, !656, i64 24, !644, i64 48, !646, i64 56}
!656 = !{!"_Timer", !650, i64 0, !650, i64 8, !650, i64 16}
!657 = !{!"_ExceptionInfo", !644, i64 0, !658, i64 4, !647, i64 8, !647, i64 16, !647, i64 24, !644, i64 32, !647, i64 40, !646, i64 48}
!658 = !{!"int", !644, i64 0}
!659 = !{!"_ProfileInfo", !647, i64 0, !646, i64 8, !647, i64 16, !646, i64 24}
!660 = !{!"long long", !644, i64 0}
!661 = !DILocation(line: 105, column: 20, scope: !641)
!662 = !DILocation(line: 105, column: 7, scope: !414)
!663 = !DILocation(line: 106, column: 68, scope: !641)
!664 = !DILocation(line: 106, column: 12, scope: !641)
!665 = !DILocation(line: 106, column: 5, scope: !641)
!666 = !DILocation(line: 109, column: 20, scope: !667)
!667 = distinct !DILexicalBlock(scope: !414, file: !415, line: 109, column: 7)
!668 = !DILocation(line: 109, column: 26, scope: !667)
!669 = !DILocation(line: 109, column: 7, scope: !414)
!670 = !DILocation(line: 111, column: 20, scope: !667)
!671 = !DILocation(line: 110, column: 12, scope: !667)
!672 = !DILocation(line: 110, column: 5, scope: !667)
!673 = !DILocation(line: 112, column: 20, scope: !674)
!674 = distinct !DILexicalBlock(scope: !414, file: !415, line: 112, column: 7)
!675 = !{!643, !647, i64 13176}
!676 = !DILocation(line: 112, column: 30, scope: !674)
!677 = !DILocation(line: 112, column: 7, scope: !414)
!678 = !DILocation(line: 114, column: 18, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !415, line: 114, column: 11)
!680 = distinct !DILexicalBlock(scope: !674, file: !415, line: 113, column: 5)
!681 = !DILocation(line: 114, column: 28, scope: !679)
!682 = !DILocation(line: 114, column: 11, scope: !680)
!683 = !DILocalVariable(name: "image", arg: 1, scope: !684, file: !415, line: 229, type: !419)
!684 = distinct !DISubprogram(name: "DestroyImageArtifacts", scope: !415, file: !415, line: 229, type: !685, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !687)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !419}
!687 = !{!683}
!688 = !DILocation(line: 0, scope: !684, inlinedAt: !689)
!689 = distinct !DILocation(line: 115, column: 9, scope: !679)
!690 = !DILocation(line: 233, column: 14, scope: !691, inlinedAt: !689)
!691 = distinct !DILexicalBlock(scope: !684, file: !415, line: 233, column: 7)
!692 = !DILocation(line: 233, column: 20, scope: !691, inlinedAt: !689)
!693 = !DILocation(line: 233, column: 7, scope: !684, inlinedAt: !689)
!694 = !DILocation(line: 234, column: 68, scope: !691, inlinedAt: !689)
!695 = !DILocation(line: 234, column: 12, scope: !691, inlinedAt: !689)
!696 = !DILocation(line: 235, column: 14, scope: !697, inlinedAt: !689)
!697 = distinct !DILexicalBlock(scope: !684, file: !415, line: 235, column: 7)
!698 = !DILocation(line: 235, column: 24, scope: !697, inlinedAt: !689)
!699 = !DILocation(line: 235, column: 7, scope: !684, inlinedAt: !689)
!700 = !DILocation(line: 236, column: 31, scope: !697, inlinedAt: !689)
!701 = !DILocation(line: 236, column: 21, scope: !697, inlinedAt: !689)
!702 = !DILocation(line: 236, column: 5, scope: !697, inlinedAt: !689)
!703 = !DILocation(line: 116, column: 70, scope: !680)
!704 = !DILocation(line: 116, column: 24, scope: !680)
!705 = !DILocation(line: 116, column: 23, scope: !680)
!706 = !DILocation(line: 118, column: 5, scope: !680)
!707 = !DILocation(line: 119, column: 3, scope: !414)
!708 = !DISubprogram(name: "LogMagickEvent", scope: !369, file: !369, line: 83, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !714)
!709 = !DISubroutineType(types: !710)
!710 = !{!418, !711, !403, !403, !713, !403, null}
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !369, line: 58, baseType: !368)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!714 = !{}
!715 = !DILocation(line: 0, scope: !684)
!716 = !DILocation(line: 233, column: 14, scope: !691)
!717 = !DILocation(line: 233, column: 20, scope: !691)
!718 = !DILocation(line: 233, column: 7, scope: !684)
!719 = !DILocation(line: 234, column: 68, scope: !691)
!720 = !DILocation(line: 234, column: 12, scope: !691)
!721 = !DILocation(line: 234, column: 5, scope: !691)
!722 = !DILocation(line: 235, column: 14, scope: !697)
!723 = !DILocation(line: 235, column: 24, scope: !697)
!724 = !DILocation(line: 235, column: 7, scope: !684)
!725 = !DILocation(line: 236, column: 31, scope: !697)
!726 = !DILocation(line: 236, column: 21, scope: !697)
!727 = !DILocation(line: 236, column: 5, scope: !697)
!728 = !DILocation(line: 238, column: 1, scope: !684)
!729 = !DISubprogram(name: "CloneSplayTree", scope: !398, file: !398, line: 43, type: !730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !714)
!730 = !DISubroutineType(types: !731)
!731 = !{!396, !396, !400, !400}
!732 = !DISubprogram(name: "ConstantString", scope: !733, file: !733, line: 45, type: !734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !714)
!733 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!734 = !DISubroutineType(types: !735)
!735 = !{!406, !403}
!736 = distinct !DISubprogram(name: "DefineImageArtifact", scope: !415, file: !415, line: 147, type: !737, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !739)
!737 = !DISubroutineType(types: !738)
!738 = !{!418, !419, !403}
!739 = !{!740, !741, !742, !743, !744}
!740 = !DILocalVariable(name: "image", arg: 1, scope: !736, file: !415, line: 147, type: !419)
!741 = !DILocalVariable(name: "artifact", arg: 2, scope: !736, file: !415, line: 148, type: !403)
!742 = !DILocalVariable(name: "key", scope: !736, file: !415, line: 151, type: !566)
!743 = !DILocalVariable(name: "value", scope: !736, file: !415, line: 152, type: !566)
!744 = !DILocalVariable(name: "p", scope: !736, file: !415, line: 155, type: !406)
!745 = !DILocation(line: 0, scope: !736)
!746 = !DILocation(line: 150, column: 3, scope: !736)
!747 = !DILocation(line: 151, column: 5, scope: !736)
!748 = !DILocation(line: 152, column: 5, scope: !736)
!749 = !DILocation(line: 159, column: 10, scope: !736)
!750 = !DILocation(line: 160, column: 8, scope: !751)
!751 = distinct !DILexicalBlock(scope: !736, file: !415, line: 160, column: 3)
!752 = !DILocation(line: 0, scope: !751)
!753 = !DILocation(line: 160, column: 15, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !415, line: 160, column: 3)
!755 = !{!644, !644, i64 0}
!756 = !DILocation(line: 160, column: 3, scope: !751)
!757 = !DILocation(line: 160, column: 28, scope: !754)
!758 = !DILocation(line: 160, column: 3, scope: !754)
!759 = distinct !{!759, !756, !760, !761, !762}
!760 = !DILocation(line: 162, column: 7, scope: !751)
!761 = !{!"llvm.loop.mustprogress"}
!762 = !{!"llvm.loop.unroll.disable"}
!763 = !DILocation(line: 163, column: 9, scope: !736)
!764 = !DILocation(line: 164, column: 10, scope: !765)
!765 = distinct !DILexicalBlock(scope: !736, file: !415, line: 164, column: 7)
!766 = !DILocation(line: 164, column: 7, scope: !736)
!767 = !DILocation(line: 165, column: 36, scope: !765)
!768 = !DILocation(line: 165, column: 12, scope: !765)
!769 = !DILocation(line: 165, column: 5, scope: !765)
!770 = !DILocation(line: 166, column: 5, scope: !736)
!771 = !DILocalVariable(name: "image", arg: 1, scope: !772, file: !415, line: 431, type: !419)
!772 = distinct !DISubprogram(name: "SetImageArtifact", scope: !415, file: !415, line: 431, type: !773, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{!418, !419, !403, !403}
!775 = !{!771, !776, !777, !778}
!776 = !DILocalVariable(name: "artifact", arg: 2, scope: !772, file: !415, line: 432, type: !403)
!777 = !DILocalVariable(name: "value", arg: 3, scope: !772, file: !415, line: 432, type: !403)
!778 = !DILocalVariable(name: "status", scope: !772, file: !415, line: 435, type: !418)
!779 = !DILocation(line: 0, scope: !772, inlinedAt: !780)
!780 = distinct !DILocation(line: 167, column: 10, scope: !736)
!781 = !DILocation(line: 439, column: 14, scope: !782, inlinedAt: !780)
!782 = distinct !DILexicalBlock(scope: !772, file: !415, line: 439, column: 7)
!783 = !DILocation(line: 439, column: 20, scope: !782, inlinedAt: !780)
!784 = !DILocation(line: 439, column: 7, scope: !772, inlinedAt: !780)
!785 = !DILocation(line: 440, column: 68, scope: !782, inlinedAt: !780)
!786 = !DILocation(line: 440, column: 12, scope: !782, inlinedAt: !780)
!787 = !DILocation(line: 440, column: 5, scope: !782, inlinedAt: !780)
!788 = !DILocation(line: 444, column: 14, scope: !789, inlinedAt: !780)
!789 = distinct !DILexicalBlock(scope: !772, file: !415, line: 444, column: 7)
!790 = !DILocation(line: 444, column: 24, scope: !789, inlinedAt: !780)
!791 = !DILocation(line: 444, column: 7, scope: !772, inlinedAt: !780)
!792 = !DILocation(line: 445, column: 22, scope: !789, inlinedAt: !780)
!793 = !DILocation(line: 445, column: 21, scope: !789, inlinedAt: !780)
!794 = !DILocation(line: 445, column: 5, scope: !789, inlinedAt: !780)
!795 = !DILocation(line: 456, column: 5, scope: !772, inlinedAt: !780)
!796 = !DILocation(line: 456, column: 30, scope: !772, inlinedAt: !780)
!797 = !DILocation(line: 455, column: 10, scope: !772, inlinedAt: !780)
!798 = !DILocation(line: 168, column: 1, scope: !736)
!799 = !DILocation(line: 167, column: 3, scope: !736)
!800 = !DISubprogram(name: "CopyMagickString", scope: !733, file: !733, line: 78, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !714)
!801 = !DISubroutineType(types: !802)
!802 = !{!430, !406, !403, !713}
!803 = !DILocation(line: 0, scope: !772)
!804 = !DILocation(line: 439, column: 14, scope: !782)
!805 = !DILocation(line: 439, column: 20, scope: !782)
!806 = !DILocation(line: 439, column: 7, scope: !772)
!807 = !DILocation(line: 440, column: 68, scope: !782)
!808 = !DILocation(line: 440, column: 12, scope: !782)
!809 = !DILocation(line: 440, column: 5, scope: !782)
!810 = !DILocation(line: 444, column: 14, scope: !789)
!811 = !DILocation(line: 444, column: 24, scope: !789)
!812 = !DILocation(line: 444, column: 7, scope: !772)
!813 = !DILocation(line: 445, column: 22, scope: !789)
!814 = !DILocation(line: 445, column: 21, scope: !789)
!815 = !DILocation(line: 445, column: 5, scope: !789)
!816 = !DILocation(line: 450, column: 13, scope: !817)
!817 = distinct !DILexicalBlock(scope: !772, file: !415, line: 450, column: 7)
!818 = !DILocation(line: 450, column: 7, scope: !772)
!819 = !DILocalVariable(name: "image", arg: 1, scope: !820, file: !415, line: 194, type: !419)
!820 = distinct !DISubprogram(name: "DeleteImageArtifact", scope: !415, file: !415, line: 194, type: !737, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !821)
!821 = !{!819, !822}
!822 = !DILocalVariable(name: "artifact", arg: 2, scope: !820, file: !415, line: 195, type: !403)
!823 = !DILocation(line: 0, scope: !820, inlinedAt: !824)
!824 = distinct !DILocation(line: 451, column: 12, scope: !817)
!825 = !DILocation(line: 199, column: 14, scope: !826, inlinedAt: !824)
!826 = distinct !DILexicalBlock(scope: !820, file: !415, line: 199, column: 7)
!827 = !DILocation(line: 199, column: 20, scope: !826, inlinedAt: !824)
!828 = !DILocation(line: 199, column: 7, scope: !820, inlinedAt: !824)
!829 = !DILocation(line: 200, column: 68, scope: !826, inlinedAt: !824)
!830 = !DILocation(line: 200, column: 12, scope: !826, inlinedAt: !824)
!831 = !DILocation(line: 201, column: 14, scope: !832, inlinedAt: !824)
!832 = distinct !DILexicalBlock(scope: !820, file: !415, line: 201, column: 7)
!833 = !DILocation(line: 200, column: 5, scope: !826, inlinedAt: !824)
!834 = !DILocation(line: 201, column: 24, scope: !832, inlinedAt: !824)
!835 = !DILocation(line: 201, column: 7, scope: !820, inlinedAt: !824)
!836 = !DILocation(line: 203, column: 10, scope: !820, inlinedAt: !824)
!837 = !DILocation(line: 203, column: 3, scope: !820, inlinedAt: !824)
!838 = !DILocation(line: 456, column: 5, scope: !772)
!839 = !DILocation(line: 456, column: 30, scope: !772)
!840 = !DILocation(line: 455, column: 10, scope: !772)
!841 = !DILocation(line: 457, column: 3, scope: !772)
!842 = !DILocation(line: 458, column: 1, scope: !772)
!843 = !DILocation(line: 0, scope: !820)
!844 = !DILocation(line: 199, column: 14, scope: !826)
!845 = !DILocation(line: 199, column: 20, scope: !826)
!846 = !DILocation(line: 199, column: 7, scope: !820)
!847 = !DILocation(line: 200, column: 68, scope: !826)
!848 = !DILocation(line: 200, column: 12, scope: !826)
!849 = !DILocation(line: 200, column: 5, scope: !826)
!850 = !DILocation(line: 201, column: 14, scope: !832)
!851 = !DILocation(line: 201, column: 24, scope: !832)
!852 = !DILocation(line: 201, column: 7, scope: !820)
!853 = !DILocation(line: 203, column: 10, scope: !820)
!854 = !DILocation(line: 203, column: 3, scope: !820)
!855 = !DILocation(line: 204, column: 1, scope: !820)
!856 = !DISubprogram(name: "DeleteNodeFromSplayTree", scope: !398, file: !398, line: 31, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !714)
!857 = !DISubroutineType(types: !858)
!858 = !{!418, !396, !859}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!861 = !DISubprogram(name: "DestroySplayTree", scope: !398, file: !398, line: 44, type: !862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !714)
!862 = !DISubroutineType(types: !863)
!863 = !{!396, !396}
!864 = distinct !DISubprogram(name: "GetImageArtifact", scope: !415, file: !415, line: 266, type: !865, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !867)
!865 = !DISubroutineType(types: !866)
!866 = !{!403, !634, !403}
!867 = !{!868, !869, !870}
!868 = !DILocalVariable(name: "image", arg: 1, scope: !864, file: !415, line: 266, type: !634)
!869 = !DILocalVariable(name: "artifact", arg: 2, scope: !864, file: !415, line: 267, type: !403)
!870 = !DILocalVariable(name: "p", scope: !864, file: !415, line: 270, type: !403)
!871 = !DILocation(line: 0, scope: !864)
!872 = !DILocation(line: 274, column: 14, scope: !873)
!873 = distinct !DILexicalBlock(scope: !864, file: !415, line: 274, column: 7)
!874 = !DILocation(line: 274, column: 20, scope: !873)
!875 = !DILocation(line: 274, column: 7, scope: !864)
!876 = !DILocation(line: 275, column: 68, scope: !873)
!877 = !DILocation(line: 275, column: 12, scope: !873)
!878 = !DILocation(line: 275, column: 5, scope: !873)
!879 = !DILocation(line: 277, column: 16, scope: !880)
!880 = distinct !DILexicalBlock(scope: !864, file: !415, line: 277, column: 7)
!881 = !DILocation(line: 277, column: 7, scope: !864)
!882 = !DILocation(line: 279, column: 7, scope: !883)
!883 = distinct !DILexicalBlock(scope: !880, file: !415, line: 278, column: 5)
!884 = !DILocation(line: 281, column: 16, scope: !883)
!885 = !DILocation(line: 280, column: 24, scope: !883)
!886 = !DILocation(line: 282, column: 7, scope: !883)
!887 = !DILocation(line: 284, column: 24, scope: !888)
!888 = distinct !DILexicalBlock(scope: !864, file: !415, line: 284, column: 7)
!889 = !DILocation(line: 284, column: 7, scope: !864)
!890 = !DILocation(line: 286, column: 24, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !415, line: 285, column: 5)
!892 = !DILocation(line: 288, column: 13, scope: !893)
!893 = distinct !DILexicalBlock(scope: !891, file: !415, line: 288, column: 11)
!894 = !DILocation(line: 288, column: 11, scope: !891)
!895 = !DILocation(line: 291, column: 3, scope: !864)
!896 = !DILocation(line: 292, column: 1, scope: !864)
!897 = !DISubprogram(name: "ResetSplayTreeIterator", scope: !398, file: !398, line: 55, type: !898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !714)
!898 = !DISubroutineType(types: !899)
!899 = !{null, !396}
!900 = !DISubprogram(name: "GetNextValueInSplayTree", scope: !398, file: !398, line: 35, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !714)
!901 = !DISubroutineType(types: !902)
!902 = !{!859, !396}
!903 = !DISubprogram(name: "GetValueFromSplayTree", scope: !398, file: !398, line: 36, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !714)
!904 = !DISubroutineType(types: !905)
!905 = !{!859, !396, !859}
!906 = distinct !DISubprogram(name: "GetNextImageArtifact", scope: !415, file: !415, line: 316, type: !907, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{!406, !634}
!909 = !{!910}
!910 = !DILocalVariable(name: "image", arg: 1, scope: !906, file: !415, line: 316, type: !634)
!911 = !DILocation(line: 0, scope: !906)
!912 = !DILocation(line: 320, column: 14, scope: !913)
!913 = distinct !DILexicalBlock(scope: !906, file: !415, line: 320, column: 7)
!914 = !DILocation(line: 320, column: 20, scope: !913)
!915 = !DILocation(line: 320, column: 7, scope: !906)
!916 = !DILocation(line: 321, column: 68, scope: !913)
!917 = !DILocation(line: 321, column: 12, scope: !913)
!918 = !DILocation(line: 321, column: 5, scope: !913)
!919 = !DILocation(line: 322, column: 14, scope: !920)
!920 = distinct !DILexicalBlock(scope: !906, file: !415, line: 322, column: 7)
!921 = !DILocation(line: 322, column: 24, scope: !920)
!922 = !DILocation(line: 322, column: 7, scope: !906)
!923 = !DILocation(line: 324, column: 19, scope: !906)
!924 = !DILocation(line: 324, column: 3, scope: !906)
!925 = !DILocation(line: 325, column: 1, scope: !906)
!926 = !DISubprogram(name: "GetNextKeyInSplayTree", scope: !398, file: !398, line: 34, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !714)
!927 = distinct !DISubprogram(name: "RemoveImageArtifact", scope: !415, file: !415, line: 352, type: !928, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !930)
!928 = !DISubroutineType(types: !929)
!929 = !{!406, !419, !403}
!930 = !{!931, !932, !933}
!931 = !DILocalVariable(name: "image", arg: 1, scope: !927, file: !415, line: 352, type: !419)
!932 = !DILocalVariable(name: "artifact", arg: 2, scope: !927, file: !415, line: 352, type: !403)
!933 = !DILocalVariable(name: "value", scope: !927, file: !415, line: 355, type: !406)
!934 = !DILocation(line: 0, scope: !927)
!935 = !DILocation(line: 359, column: 14, scope: !936)
!936 = distinct !DILexicalBlock(scope: !927, file: !415, line: 359, column: 7)
!937 = !DILocation(line: 359, column: 20, scope: !936)
!938 = !DILocation(line: 359, column: 7, scope: !927)
!939 = !DILocation(line: 360, column: 68, scope: !936)
!940 = !DILocation(line: 360, column: 12, scope: !936)
!941 = !DILocation(line: 360, column: 5, scope: !936)
!942 = !DILocation(line: 361, column: 14, scope: !943)
!943 = distinct !DILexicalBlock(scope: !927, file: !415, line: 361, column: 7)
!944 = !DILocation(line: 361, column: 24, scope: !943)
!945 = !DILocation(line: 361, column: 7, scope: !927)
!946 = !DILocation(line: 363, column: 18, scope: !927)
!947 = !DILocation(line: 365, column: 3, scope: !927)
!948 = !DILocation(line: 366, column: 1, scope: !927)
!949 = !DISubprogram(name: "RemoveNodeFromSplayTree", scope: !398, file: !398, line: 53, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !714)
!950 = !DISubroutineType(types: !951)
!951 = !{!395, !396, !859}
!952 = distinct !DISubprogram(name: "ResetImageArtifactIterator", scope: !415, file: !415, line: 392, type: !953, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !955)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !634}
!955 = !{!956}
!956 = !DILocalVariable(name: "image", arg: 1, scope: !952, file: !415, line: 392, type: !634)
!957 = !DILocation(line: 0, scope: !952)
!958 = !DILocation(line: 396, column: 14, scope: !959)
!959 = distinct !DILexicalBlock(scope: !952, file: !415, line: 396, column: 7)
!960 = !DILocation(line: 396, column: 20, scope: !959)
!961 = !DILocation(line: 396, column: 7, scope: !952)
!962 = !DILocation(line: 397, column: 68, scope: !959)
!963 = !DILocation(line: 397, column: 12, scope: !959)
!964 = !DILocation(line: 397, column: 5, scope: !959)
!965 = !DILocation(line: 398, column: 14, scope: !966)
!966 = distinct !DILexicalBlock(scope: !952, file: !415, line: 398, column: 7)
!967 = !DILocation(line: 398, column: 24, scope: !966)
!968 = !DILocation(line: 398, column: 7, scope: !952)
!969 = !DILocation(line: 400, column: 3, scope: !952)
!970 = !DILocation(line: 401, column: 1, scope: !952)
!971 = !DISubprogram(name: "NewSplayTree", scope: !398, file: !398, line: 45, type: !972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !714)
!972 = !DISubroutineType(types: !973)
!973 = !{!396, !974, !400, !400}
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!580, !859, !859}
!977 = !DISubprogram(name: "AddValueToSplayTree", scope: !398, file: !398, line: 29, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !714)
!978 = !DISubroutineType(types: !979)
!979 = !{!418, !396, !859, !859}
