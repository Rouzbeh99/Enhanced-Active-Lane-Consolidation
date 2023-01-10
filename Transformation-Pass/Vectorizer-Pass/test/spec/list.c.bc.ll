; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/list.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/list.c"
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

@.str = private unnamed_addr constant [83 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/list.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @AppendImageToList(ptr nocapture noundef %images, ptr noundef %append) local_unnamed_addr #0 !dbg !642 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !647, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata ptr %append, metadata !648, metadata !DIExpression()), !dbg !651
  %cmp = icmp eq ptr %append, null, !dbg !652
  br i1 %cmp, label %cleanup, label %if.end, !dbg !654

if.end:                                           ; preds = %entry
  %debug = getelementptr inbounds %struct._Image, ptr %append, i64 0, i32 59, !dbg !655
  %0 = load i32, ptr %debug, align 8, !dbg !655, !tbaa !657
  %cmp1.not = icmp eq i32 %0, 0, !dbg !676
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !677

if.then2:                                         ; preds = %if.end
  %filename = getelementptr inbounds %struct._Image, ptr %append, i64 0, i32 53, !dbg !678
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !679
  br label %if.end3, !dbg !680

if.end3:                                          ; preds = %if.then2, %if.end
  %1 = load ptr, ptr %images, align 8, !dbg !681, !tbaa !683
  %cmp4 = icmp eq ptr %1, null, !dbg !684
  br i1 %cmp4, label %if.then5, label %for.cond.i, !dbg !685

if.then5:                                         ; preds = %if.end3
  store ptr %append, ptr %images, align 8, !dbg !686, !tbaa !683
  br label %cleanup, !dbg !688

for.cond.i:                                       ; preds = %if.end3, %for.cond.i
  %p.0.i = phi ptr [ %2, %for.cond.i ], [ %1, %if.end3 ], !dbg !689
  call void @llvm.dbg.value(metadata ptr %p.0.i, metadata !696, metadata !DIExpression()), !dbg !698
  %next.i = getelementptr inbounds %struct._Image, ptr %p.0.i, i64 0, i32 69, !dbg !699
  %2 = load ptr, ptr %next.i, align 8, !dbg !699, !tbaa !701
  %cmp1.not.i = icmp eq ptr %2, null, !dbg !702
  br i1 %cmp1.not.i, label %for.cond.i21.preheader, label %for.cond.i, !dbg !703, !llvm.loop !704

for.cond.i21.preheader:                           ; preds = %for.cond.i
  %next.i.le = getelementptr inbounds %struct._Image, ptr %p.0.i, i64 0, i32 69, !dbg !699
  br label %for.cond.i21, !dbg !708

for.cond.i21:                                     ; preds = %for.cond.i21.preheader, %for.cond.i21
  %p.0.i19 = phi ptr [ %3, %for.cond.i21 ], [ %append, %for.cond.i21.preheader ], !dbg !715
  call void @llvm.dbg.value(metadata ptr %p.0.i19, metadata !713, metadata !DIExpression()), !dbg !716
  %previous.i = getelementptr inbounds %struct._Image, ptr %p.0.i19, i64 0, i32 67, !dbg !717
  %3 = load ptr, ptr %previous.i, align 8, !dbg !717, !tbaa !719
  %cmp1.not.i20 = icmp eq ptr %3, null, !dbg !720
  br i1 %cmp1.not.i20, label %GetFirstImageInList.exit, label %for.cond.i21, !dbg !708, !llvm.loop !721

GetFirstImageInList.exit:                         ; preds = %for.cond.i21
  %previous.i.le = getelementptr inbounds %struct._Image, ptr %p.0.i19, i64 0, i32 67, !dbg !717
  call void @llvm.dbg.value(metadata ptr %p.0.i19, metadata !650, metadata !DIExpression()), !dbg !651
  store ptr %p.0.i19, ptr %next.i.le, align 8, !dbg !723, !tbaa !701
  store ptr %p.0.i, ptr %previous.i.le, align 8, !dbg !724, !tbaa !719
  br label %cleanup, !dbg !725

cleanup:                                          ; preds = %entry, %GetFirstImageInList.exit, %if.then5
  ret void, !dbg !725
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !726 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local ptr @GetLastImageInList(ptr noundef readonly %images) local_unnamed_addr #3 !dbg !691 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !695, metadata !DIExpression()), !dbg !733
  %cmp = icmp eq ptr %images, null, !dbg !734
  br i1 %cmp, label %cleanup, label %for.cond, !dbg !736

for.cond:                                         ; preds = %entry, %for.cond
  %p.0 = phi ptr [ %0, %for.cond ], [ %images, %entry ], !dbg !737
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !696, metadata !DIExpression()), !dbg !733
  %next = getelementptr inbounds %struct._Image, ptr %p.0, i64 0, i32 69, !dbg !738
  %0 = load ptr, ptr %next, align 8, !dbg !738, !tbaa !701
  %cmp1.not = icmp eq ptr %0, null, !dbg !739
  br i1 %cmp1.not, label %cleanup, label %for.cond, !dbg !740, !llvm.loop !741

cleanup:                                          ; preds = %for.cond, %entry
  %retval.0 = phi ptr [ null, %entry ], [ %p.0, %for.cond ], !dbg !733
  ret ptr %retval.0, !dbg !743
}

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local ptr @GetFirstImageInList(ptr noundef readonly %images) local_unnamed_addr #3 !dbg !710 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !712, metadata !DIExpression()), !dbg !744
  %cmp = icmp eq ptr %images, null, !dbg !745
  br i1 %cmp, label %cleanup, label %for.cond, !dbg !747

for.cond:                                         ; preds = %entry, %for.cond
  %p.0 = phi ptr [ %0, %for.cond ], [ %images, %entry ], !dbg !748
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !713, metadata !DIExpression()), !dbg !744
  %previous = getelementptr inbounds %struct._Image, ptr %p.0, i64 0, i32 67, !dbg !749
  %0 = load ptr, ptr %previous, align 8, !dbg !749, !tbaa !719
  %cmp1.not = icmp eq ptr %0, null, !dbg !750
  br i1 %cmp1.not, label %cleanup, label %for.cond, !dbg !751, !llvm.loop !752

cleanup:                                          ; preds = %for.cond, %entry
  %retval.0 = phi ptr [ null, %entry ], [ %p.0, %for.cond ], !dbg !744
  ret ptr %retval.0, !dbg !754
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneImageList(ptr noundef %images, ptr noundef %exception) local_unnamed_addr #0 !dbg !755 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !760, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata ptr %exception, metadata !761, metadata !DIExpression()), !dbg !765
  %cmp = icmp eq ptr %images, null, !dbg !766
  br i1 %cmp, label %cleanup, label %while.cond, !dbg !768

while.cond:                                       ; preds = %entry, %while.cond
  %images.addr.0 = phi ptr [ %0, %while.cond ], [ %images, %entry ]
  call void @llvm.dbg.value(metadata ptr %images.addr.0, metadata !760, metadata !DIExpression()), !dbg !765
  %previous = getelementptr inbounds %struct._Image, ptr %images.addr.0, i64 0, i32 67, !dbg !769
  %0 = load ptr, ptr %previous, align 8, !dbg !769, !tbaa !719
  %cmp1.not = icmp eq ptr %0, null, !dbg !770
  br i1 %cmp1.not, label %for.body, label %while.cond, !dbg !771, !llvm.loop !772

for.body:                                         ; preds = %while.cond, %for.inc
  %p.037 = phi ptr [ %call, %for.inc ], [ null, %while.cond ]
  %image.036 = phi ptr [ %image.1, %for.inc ], [ null, %while.cond ]
  %images.addr.135 = phi ptr [ %1, %for.inc ], [ %images.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata ptr %p.037, metadata !764, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata ptr %image.036, metadata !763, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata ptr %images.addr.135, metadata !760, metadata !DIExpression()), !dbg !765
  %call = tail call ptr @CloneImage(ptr noundef nonnull %images.addr.135, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #13, !dbg !774
  call void @llvm.dbg.value(metadata ptr %call, metadata !762, metadata !DIExpression()), !dbg !765
  %cmp4 = icmp eq ptr %call, null, !dbg !778
  %cmp6.not = icmp eq ptr %image.036, null, !dbg !780
  br i1 %cmp4, label %if.then5, label %if.end10, !dbg !781

if.then5:                                         ; preds = %for.body
  br i1 %cmp6.not, label %cleanup, label %if.then7, !dbg !782

if.then7:                                         ; preds = %if.then5
  %call8 = tail call ptr @DestroyImageList(ptr noundef nonnull %image.036), !dbg !784
  call void @llvm.dbg.value(metadata ptr null, metadata !763, metadata !DIExpression()), !dbg !765
  br label %cleanup, !dbg !786

if.end10:                                         ; preds = %for.body
  br i1 %cmp6.not, label %for.inc, label %if.end13, !dbg !787

if.end13:                                         ; preds = %if.end10
  %next = getelementptr inbounds %struct._Image, ptr %p.037, i64 0, i32 69, !dbg !788
  store ptr %call, ptr %next, align 8, !dbg !789, !tbaa !701
  %previous14 = getelementptr inbounds %struct._Image, ptr %call, i64 0, i32 67, !dbg !790
  store ptr %p.037, ptr %previous14, align 8, !dbg !791, !tbaa !719
  call void @llvm.dbg.value(metadata ptr %call, metadata !764, metadata !DIExpression()), !dbg !765
  br label %for.inc, !dbg !792

for.inc:                                          ; preds = %if.end10, %if.end13
  %image.1 = phi ptr [ %image.036, %if.end13 ], [ %call, %if.end10 ], !dbg !765
  call void @llvm.dbg.value(metadata ptr %call, metadata !764, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata ptr %image.1, metadata !763, metadata !DIExpression()), !dbg !765
  %next16 = getelementptr inbounds %struct._Image, ptr %images.addr.135, i64 0, i32 69, !dbg !793
  %1 = load ptr, ptr %next16, align 8, !dbg !793, !tbaa !701
  call void @llvm.dbg.value(metadata ptr %1, metadata !760, metadata !DIExpression()), !dbg !765
  %cmp3.not = icmp eq ptr %1, null, !dbg !794
  br i1 %cmp3.not, label %cleanup, label %for.body, !dbg !795, !llvm.loop !796

cleanup:                                          ; preds = %for.inc, %if.then5, %if.then7, %entry
  %retval.0 = phi ptr [ null, %entry ], [ null, %if.then7 ], [ null, %if.then5 ], [ %image.1, %for.inc ], !dbg !765
  ret ptr %retval.0, !dbg !798
}

declare !dbg !799 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @DestroyImageList(ptr noundef %images) local_unnamed_addr #0 !dbg !803 {
entry:
  %images.addr = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %images, metadata !807, metadata !DIExpression()), !dbg !808
  store ptr %images, ptr %images.addr, align 8, !tbaa !683
  %cmp = icmp eq ptr %images, null, !dbg !809
  br i1 %cmp, label %return, label %if.end, !dbg !811

if.end:                                           ; preds = %entry
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !812
  %0 = load i32, ptr %debug, align 8, !dbg !812, !tbaa !657
  %cmp1.not = icmp eq i32 %0, 0, !dbg !814
  br i1 %cmp1.not, label %if.end.i.i.preheader, label %if.then2, !dbg !815

if.then2:                                         ; preds = %if.end
  %filename = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !816
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 449, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !817
  br label %if.end.i.i.preheader, !dbg !818

if.end.i.i.preheader:                             ; preds = %if.end, %if.then2
  br label %if.end.i.i, !dbg !819

if.end.i.i:                                       ; preds = %if.end.i.i.preheader, %DeleteImageFromList.exit
  %images.addr.0.8 = phi ptr [ %images.addr.0.images.addr.0., %DeleteImageFromList.exit ], [ %images, %if.end.i.i.preheader ]
  call void @llvm.dbg.value(metadata ptr %images.addr, metadata !807, metadata !DIExpression(DW_OP_deref)), !dbg !808
  call void @llvm.dbg.value(metadata ptr %images.addr, metadata !820, metadata !DIExpression()) #13, !dbg !826
  call void @llvm.dbg.value(metadata ptr %images.addr, metadata !828, metadata !DIExpression()) #13, !dbg !834
  %debug.i.i = getelementptr inbounds %struct._Image, ptr %images.addr.0.8, i64 0, i32 59, !dbg !836
  %1 = load i32, ptr %debug.i.i, align 8, !dbg !836, !tbaa !657
  %cmp1.not.i.i = icmp eq i32 %1, 0, !dbg !838
  br i1 %cmp1.not.i.i, label %if.end3.i.i, label %if.then2.i.i, !dbg !839

if.then2.i.i:                                     ; preds = %if.end.i.i
  %filename.i.i = getelementptr inbounds %struct._Image, ptr %images.addr.0.8, i64 0, i32 53, !dbg !840
  %call.i.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 988, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i.i) #13, !dbg !841
  br label %if.end3.i.i, !dbg !842

if.end3.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i
  call void @llvm.dbg.value(metadata ptr %images.addr.0.8, metadata !833, metadata !DIExpression()) #13, !dbg !834
  %previous.i.i = getelementptr inbounds %struct._Image, ptr %images.addr.0.8, i64 0, i32 67, !dbg !843
  %2 = load ptr, ptr %previous.i.i, align 8, !dbg !843, !tbaa !719
  %cmp4.i.i = icmp eq ptr %2, null, !dbg !845
  %next.i.i = getelementptr inbounds %struct._Image, ptr %images.addr.0.8, i64 0, i32 69, !dbg !846
  %3 = load ptr, ptr %next.i.i, align 8, !dbg !846, !tbaa !701
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %if.end14.i.i, !dbg !847

land.lhs.true.i.i:                                ; preds = %if.end3.i.i
  %cmp5.i.i = icmp eq ptr %3, null, !dbg !848
  br i1 %cmp5.i.i, label %DeleteImageFromList.exit, label %if.then17.i.i, !dbg !849

if.end14.i.i:                                     ; preds = %if.end3.i.i
  %next12.i.i = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 69, !dbg !850
  store ptr %3, ptr %next12.i.i, align 8, !dbg !854, !tbaa !701
  store ptr %2, ptr %images.addr, align 8, !dbg !855, !tbaa !683
  %.pre46.i.i = load ptr, ptr %next.i.i, align 8, !dbg !856, !tbaa !701
  %cmp16.not.i.i = icmp eq ptr %.pre46.i.i, null, !dbg !858
  br i1 %cmp16.not.i.i, label %if.end22.i.i, label %if.then17.i.i, !dbg !859

if.then17.i.i:                                    ; preds = %if.end14.i.i, %land.lhs.true.i.i
  %4 = phi ptr [ %3, %land.lhs.true.i.i ], [ %.pre46.i.i, %if.end14.i.i ]
  %previous20.i.i = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 67, !dbg !860
  store ptr %2, ptr %previous20.i.i, align 8, !dbg !862, !tbaa !719
  store ptr %4, ptr %images.addr, align 8, !dbg !863, !tbaa !683
  br label %if.end22.i.i, !dbg !864

if.end22.i.i:                                     ; preds = %if.then17.i.i, %if.end14.i.i
  store ptr null, ptr %previous.i.i, align 8, !dbg !865, !tbaa !719
  br label %DeleteImageFromList.exit

DeleteImageFromList.exit:                         ; preds = %land.lhs.true.i.i, %if.end22.i.i
  %images.sink.i.i = phi ptr [ %next.i.i, %if.end22.i.i ], [ %images.addr, %land.lhs.true.i.i ]
  store ptr null, ptr %images.sink.i.i, align 8, !dbg !846, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %images.addr.0.8, metadata !825, metadata !DIExpression()) #13, !dbg !826
  %call1.i = tail call ptr @DestroyImage(ptr noundef nonnull %images.addr.0.8) #13, !dbg !866
  %images.addr.0.images.addr.0. = load ptr, ptr %images.addr, align 8, !dbg !868, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %images.addr.0.images.addr.0., metadata !807, metadata !DIExpression()), !dbg !808
  %cmp4.not = icmp eq ptr %images.addr.0.images.addr.0., null, !dbg !869
  br i1 %cmp4.not, label %return, label %if.end.i.i, !dbg !819, !llvm.loop !870

return:                                           ; preds = %DeleteImageFromList.exit, %entry
  ret ptr null, !dbg !872
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneImages(ptr noundef %images, ptr noundef %scenes, ptr noundef %exception) local_unnamed_addr #0 !dbg !873 {
entry:
  %p = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %images, metadata !877, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr %scenes, metadata !878, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr %exception, metadata !879, metadata !DIExpression()), !dbg !889
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p) #13, !dbg !890
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !891
  %0 = load i32, ptr %debug, align 8, !dbg !891, !tbaa !657
  %cmp.not = icmp eq i32 %0, 0, !dbg !893
  br i1 %cmp.not, label %for.cond.i.preheader, label %if.then, !dbg !894

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !895
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 227, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !896
  br label %for.cond.i.preheader, !dbg !897

for.cond.i.preheader:                             ; preds = %if.then, %entry
  br label %for.cond.i, !dbg !898

for.cond.i:                                       ; preds = %for.cond.i.preheader, %for.cond.i
  %p.0.i = phi ptr [ %1, %for.cond.i ], [ %images, %for.cond.i.preheader ], !dbg !900
  call void @llvm.dbg.value(metadata ptr %p.0.i, metadata !713, metadata !DIExpression()), !dbg !901
  %previous.i = getelementptr inbounds %struct._Image, ptr %p.0.i, i64 0, i32 67, !dbg !902
  %1 = load ptr, ptr %previous.i, align 8, !dbg !902, !tbaa !719
  %cmp1.not.i = icmp eq ptr %1, null, !dbg !903
  br i1 %cmp1.not.i, label %if.end.i, label %for.cond.i, !dbg !898, !llvm.loop !904

if.end.i:                                         ; preds = %for.cond.i
  call void @llvm.dbg.value(metadata ptr %p.0.i, metadata !877, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr %p.0.i, metadata !906, metadata !DIExpression()) #13, !dbg !912
  %debug.i = getelementptr inbounds %struct._Image, ptr %p.0.i, i64 0, i32 59, !dbg !914
  %2 = load i32, ptr %debug.i, align 8, !dbg !914, !tbaa !657
  %cmp1.not.i90 = icmp eq i32 %2, 0, !dbg !916
  br i1 %cmp1.not.i90, label %for.cond.i.i.preheader, label %if.then2.i, !dbg !917

if.then2.i:                                       ; preds = %if.end.i
  %filename.i = getelementptr inbounds %struct._Image, ptr %p.0.i, i64 0, i32 53, !dbg !918
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #13, !dbg !919
  br label %for.cond.i.i.preheader, !dbg !920

for.cond.i.i.preheader:                           ; preds = %if.then2.i, %if.end.i
  br label %for.cond.i.i, !dbg !921

for.cond.i.i:                                     ; preds = %for.cond.i.i.preheader, %for.cond.i.i
  %p.0.i.i = phi ptr [ %3, %for.cond.i.i ], [ %p.0.i, %for.cond.i.i.preheader ], !dbg !923
  call void @llvm.dbg.value(metadata ptr %p.0.i.i, metadata !696, metadata !DIExpression()) #13, !dbg !924
  %next.i.i = getelementptr inbounds %struct._Image, ptr %p.0.i.i, i64 0, i32 69, !dbg !925
  %3 = load ptr, ptr %next.i.i, align 8, !dbg !925, !tbaa !701
  %cmp1.not.i.i = icmp eq ptr %3, null, !dbg !926
  br i1 %cmp1.not.i.i, label %for.body.i, label %for.cond.i.i, !dbg !921, !llvm.loop !927

for.body.i:                                       ; preds = %for.cond.i.i, %for.body.i
  %i.014.i = phi i64 [ %inc.i, %for.body.i ], [ 0, %for.cond.i.i ]
  %images.addr.013.i = phi ptr [ %4, %for.body.i ], [ %p.0.i.i, %for.cond.i.i ]
  call void @llvm.dbg.value(metadata i64 %i.014.i, metadata !911, metadata !DIExpression()) #13, !dbg !912
  call void @llvm.dbg.value(metadata ptr %images.addr.013.i, metadata !906, metadata !DIExpression()) #13, !dbg !912
  %inc.i = add nuw nsw i64 %i.014.i, 1, !dbg !929
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !911, metadata !DIExpression()) #13, !dbg !912
  %previous.i91 = getelementptr inbounds %struct._Image, ptr %images.addr.013.i, i64 0, i32 67, !dbg !932
  %4 = load ptr, ptr %previous.i91, align 8, !dbg !932, !tbaa !719
  call void @llvm.dbg.value(metadata ptr %4, metadata !906, metadata !DIExpression()) #13, !dbg !912
  %cmp5.not.i = icmp eq ptr %4, null, !dbg !933
  br i1 %cmp5.not.i, label %GetImageListLength.exit, label %for.body.i, !dbg !934, !llvm.loop !935

GetImageListLength.exit:                          ; preds = %for.body.i
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !888, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr %scenes, metadata !880, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr %scenes, metadata !880, metadata !DIExpression()), !dbg !889
  %5 = load i8, ptr %scenes, align 1, !dbg !937, !tbaa !940
  %cmp4.not139 = icmp eq i8 %5, 0, !dbg !941
  br i1 %cmp4.not139, label %GetFirstImageInList.exit120, label %while.cond.preheader.lr.ph, !dbg !942

while.cond.preheader.lr.ph:                       ; preds = %GetImageListLength.exit
  %call6 = tail call ptr @__ctype_b_loc() #14, !dbg !889
  %cmp51.not129 = icmp eq ptr %p.0.i, null
  br label %while.cond.preheader, !dbg !942

for.cond.loopexit:                                ; preds = %for.inc64, %if.end41
  %clone_images.1.lcssa = phi ptr [ %clone_images.0140, %if.end41 ], [ %clone_images.2.lcssa, %for.inc64 ], !dbg !943
  %6 = load ptr, ptr %p, align 8, !dbg !944, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %6, metadata !880, metadata !DIExpression()), !dbg !889
  %7 = load i8, ptr %6, align 1, !dbg !937, !tbaa !940
  %cmp4.not = icmp eq i8 %7, 0, !dbg !941
  br i1 %cmp4.not, label %for.end67, label %while.cond.preheader, !dbg !942, !llvm.loop !945

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %for.cond.loopexit
  %8 = phi i8 [ %5, %while.cond.preheader.lr.ph ], [ %7, %for.cond.loopexit ]
  %p.promoted = phi ptr [ %scenes, %while.cond.preheader.lr.ph ], [ %6, %for.cond.loopexit ]
  %clone_images.0140 = phi ptr [ null, %while.cond.preheader.lr.ph ], [ %clone_images.1.lcssa, %for.cond.loopexit ]
  %9 = load ptr, ptr %call6, align 8, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %p.promoted, metadata !880, metadata !DIExpression()), !dbg !889
  %10 = zext i8 %8 to i64
  %arrayidx148 = getelementptr inbounds i16, ptr %9, i64 %10, !dbg !947
  %11 = load i16, ptr %arrayidx148, align 2, !dbg !947, !tbaa !949
  %12 = and i16 %11, 8192, !dbg !947
  %cmp9.not149 = icmp ne i16 %12, 0, !dbg !950
  %cmp12150 = icmp eq i8 %8, 44
  %or.cond151 = select i1 %cmp9.not149, i1 true, i1 %cmp12150, !dbg !951
  call void @llvm.dbg.value(metadata ptr %p.promoted, metadata !880, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !889
  br i1 %or.cond151, label %while.cond.while.cond_crit_edge, label %while.end, !dbg !951, !llvm.loop !952

while.cond.while.cond_crit_edge:                  ; preds = %while.cond.preheader, %while.cond.while.cond_crit_edge
  %incdec.ptr124152 = phi ptr [ %incdec.ptr, %while.cond.while.cond_crit_edge ], [ %p.promoted, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %incdec.ptr124152, metadata !880, metadata !DIExpression()), !dbg !889
  %incdec.ptr = getelementptr inbounds i8, ptr %incdec.ptr124152, i64 1, !dbg !954
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !880, metadata !DIExpression()), !dbg !889
  %.pre = load i8, ptr %incdec.ptr, align 1, !dbg !947, !tbaa !940
  %13 = zext i8 %.pre to i64
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !947
  %14 = load i16, ptr %arrayidx, align 2, !dbg !947, !tbaa !949
  %15 = and i16 %14, 8192, !dbg !947
  %cmp9.not = icmp ne i16 %15, 0, !dbg !950
  %cmp12 = icmp eq i8 %.pre, 44
  %or.cond = select i1 %cmp9.not, i1 true, i1 %cmp12, !dbg !951
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !880, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !889
  br i1 %or.cond, label %while.cond.while.cond_crit_edge, label %while.end, !dbg !951, !llvm.loop !952

while.end:                                        ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %incdec.ptr124.lcssa = phi ptr [ %p.promoted, %while.cond.preheader ], [ %incdec.ptr, %while.cond.while.cond_crit_edge ]
  store ptr %incdec.ptr124.lcssa, ptr %p, align 8, !dbg !955, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %p, metadata !880, metadata !DIExpression(DW_OP_deref)), !dbg !889
  %call14 = call i64 @strtol(ptr noundef nonnull %incdec.ptr124.lcssa, ptr noundef nonnull %p, i32 noundef 10) #13, !dbg !956
  call void @llvm.dbg.value(metadata i64 %call14, metadata !884, metadata !DIExpression()), !dbg !889
  %cmp15 = icmp slt i64 %call14, 0, !dbg !957
  %add = select i1 %cmp15, i64 %inc.i, i64 0, !dbg !959
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !884, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !885, metadata !DIExpression()), !dbg !889
  %16 = load ptr, ptr %call6, align 8, !tbaa !683
  %p.promoted125 = load ptr, ptr %p, align 8, !tbaa !683
  br label %while.cond19, !dbg !960

while.cond19:                                     ; preds = %while.cond19, %while.end
  %incdec.ptr29126 = phi ptr [ %incdec.ptr29, %while.cond19 ], [ %p.promoted125, %while.end ]
  call void @llvm.dbg.value(metadata ptr %incdec.ptr29126, metadata !880, metadata !DIExpression()), !dbg !889
  %17 = load i8, ptr %incdec.ptr29126, align 1, !dbg !961, !tbaa !940
  %18 = zext i8 %17 to i64
  %arrayidx23 = getelementptr inbounds i16, ptr %16, i64 %18, !dbg !961
  %19 = load i16, ptr %arrayidx23, align 2, !dbg !961, !tbaa !949
  %20 = and i16 %19, 8192, !dbg !961
  %cmp26.not = icmp eq i16 %20, 0, !dbg !962
  %incdec.ptr29 = getelementptr inbounds i8, ptr %incdec.ptr29126, i64 1, !dbg !963
  call void @llvm.dbg.value(metadata ptr %incdec.ptr29, metadata !880, metadata !DIExpression()), !dbg !889
  br i1 %cmp26.not, label %while.end30, label %while.cond19, !dbg !960, !llvm.loop !964

while.end30:                                      ; preds = %while.cond19
  %spec.select = add nsw i64 %add, %call14, !dbg !959
  store ptr %incdec.ptr29126, ptr %p, align 8, !dbg !955, !tbaa !683
  %cmp32 = icmp eq i8 %17, 45, !dbg !965
  br i1 %cmp32, label %if.then34, label %if.end41, !dbg !967

if.then34:                                        ; preds = %while.end30
  call void @llvm.dbg.value(metadata ptr %p, metadata !880, metadata !DIExpression(DW_OP_deref)), !dbg !889
  %call35 = call i64 @strtol(ptr noundef nonnull %incdec.ptr29, ptr noundef nonnull %p, i32 noundef 10) #13, !dbg !968
  call void @llvm.dbg.value(metadata i64 %call35, metadata !885, metadata !DIExpression()), !dbg !889
  %cmp36 = icmp slt i64 %call35, 0, !dbg !970
  %add39 = select i1 %cmp36, i64 %inc.i, i64 0, !dbg !972
  %spec.select88 = add nsw i64 %add39, %call35, !dbg !972
  br label %if.end41, !dbg !972

if.end41:                                         ; preds = %if.then34, %while.end30
  %last.0 = phi i64 [ %spec.select, %while.end30 ], [ %spec.select88, %if.then34 ], !dbg !955
  call void @llvm.dbg.value(metadata i64 %last.0, metadata !885, metadata !DIExpression()), !dbg !889
  %cmp42 = icmp sgt i64 %spec.select, %last.0, !dbg !973
  %conv44 = select i1 %cmp42, i64 -1, i64 1, !dbg !975
  call void @llvm.dbg.value(metadata i64 %conv44, metadata !886, metadata !DIExpression()), !dbg !889
  %add46 = add nsw i64 %conv44, %last.0
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !884, metadata !DIExpression()), !dbg !889
  %cmp47.not134 = icmp eq i64 %spec.select, %add46, !dbg !976
  %brmerge = select i1 %cmp47.not134, i1 true, i1 %cmp51.not129, !dbg !978
  br i1 %brmerge, label %for.cond.loopexit, label %for.cond50.preheader, !dbg !978

for.cond50.preheader:                             ; preds = %if.end41, %for.inc64
  %first.1136 = phi i64 [ %add65, %for.inc64 ], [ %spec.select, %if.end41 ]
  %clone_images.1135 = phi ptr [ %clone_images.2.lcssa, %for.inc64 ], [ %clone_images.0140, %if.end41 ]
  call void @llvm.dbg.value(metadata i64 %first.1136, metadata !884, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata i64 0, metadata !887, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr %p.0.i, metadata !881, metadata !DIExpression()), !dbg !889
  br label %for.body53, !dbg !979

for.body53:                                       ; preds = %for.cond50.preheader, %GetNextImageInList.exit
  %i.0132 = phi i64 [ 0, %for.cond50.preheader ], [ %inc, %GetNextImageInList.exit ]
  %next.0131 = phi ptr [ %p.0.i, %for.cond50.preheader ], [ %25, %GetNextImageInList.exit ]
  %clone_images.2130 = phi ptr [ %clone_images.1135, %for.cond50.preheader ], [ %clone_images.4, %GetNextImageInList.exit ]
  call void @llvm.dbg.value(metadata i64 %i.0132, metadata !887, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr %next.0131, metadata !881, metadata !DIExpression()), !dbg !889
  %cmp54 = icmp eq i64 %i.0132, %first.1136, !dbg !982
  br i1 %cmp54, label %if.then56, label %if.end.i108, !dbg !986

if.then56:                                        ; preds = %for.body53
  %call57 = tail call ptr @CloneImage(ptr noundef nonnull %next.0131, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #13, !dbg !987
  call void @llvm.dbg.value(metadata ptr %call57, metadata !883, metadata !DIExpression()), !dbg !889
  %cmp58 = icmp eq ptr %call57, null, !dbg !989
  br i1 %cmp58, label %for.inc64, label %if.end.i96, !dbg !991

if.end.i96:                                       ; preds = %if.then56
  call void @llvm.dbg.value(metadata ptr undef, metadata !647, metadata !DIExpression()) #13, !dbg !992
  call void @llvm.dbg.value(metadata ptr %call57, metadata !648, metadata !DIExpression()) #13, !dbg !992
  %debug.i94 = getelementptr inbounds %struct._Image, ptr %call57, i64 0, i32 59, !dbg !994
  %21 = load i32, ptr %debug.i94, align 8, !dbg !994, !tbaa !657
  %cmp1.not.i95 = icmp eq i32 %21, 0, !dbg !995
  br i1 %cmp1.not.i95, label %if.end3.i100, label %if.then2.i99, !dbg !996

if.then2.i99:                                     ; preds = %if.end.i96
  %filename.i97 = getelementptr inbounds %struct._Image, ptr %call57, i64 0, i32 53, !dbg !997
  %call.i98 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i97) #13, !dbg !998
  br label %if.end3.i100, !dbg !999

if.end3.i100:                                     ; preds = %if.then2.i99, %if.end.i96
  %cmp4.i = icmp eq ptr %clone_images.2130, null, !dbg !1000
  br i1 %cmp4.i, label %if.end.i108, label %for.cond.i.i104, !dbg !1001

for.cond.i.i104:                                  ; preds = %if.end3.i100, %for.cond.i.i104
  %p.0.i.i101 = phi ptr [ %22, %for.cond.i.i104 ], [ %clone_images.2130, %if.end3.i100 ], !dbg !1002
  call void @llvm.dbg.value(metadata ptr %p.0.i.i101, metadata !696, metadata !DIExpression()) #13, !dbg !1004
  %next.i.i102 = getelementptr inbounds %struct._Image, ptr %p.0.i.i101, i64 0, i32 69, !dbg !1005
  %22 = load ptr, ptr %next.i.i102, align 8, !dbg !1005, !tbaa !701
  %cmp1.not.i.i103 = icmp eq ptr %22, null, !dbg !1006
  br i1 %cmp1.not.i.i103, label %for.cond.i21.i.preheader, label %for.cond.i.i104, !dbg !1007, !llvm.loop !1008

for.cond.i21.i.preheader:                         ; preds = %for.cond.i.i104
  %next.i.i102.le = getelementptr inbounds %struct._Image, ptr %p.0.i.i101, i64 0, i32 69, !dbg !1005
  br label %for.cond.i21.i, !dbg !1010

for.cond.i21.i:                                   ; preds = %for.cond.i21.i.preheader, %for.cond.i21.i
  %p.0.i19.i = phi ptr [ %23, %for.cond.i21.i ], [ %call57, %for.cond.i21.i.preheader ], !dbg !1012
  call void @llvm.dbg.value(metadata ptr %p.0.i19.i, metadata !713, metadata !DIExpression()) #13, !dbg !1013
  %previous.i.i = getelementptr inbounds %struct._Image, ptr %p.0.i19.i, i64 0, i32 67, !dbg !1014
  %23 = load ptr, ptr %previous.i.i, align 8, !dbg !1014, !tbaa !719
  %cmp1.not.i20.i = icmp eq ptr %23, null, !dbg !1015
  br i1 %cmp1.not.i20.i, label %GetFirstImageInList.exit.i, label %for.cond.i21.i, !dbg !1010, !llvm.loop !1016

GetFirstImageInList.exit.i:                       ; preds = %for.cond.i21.i
  %previous.i.i.le = getelementptr inbounds %struct._Image, ptr %p.0.i19.i, i64 0, i32 67, !dbg !1014
  call void @llvm.dbg.value(metadata ptr %p.0.i19.i, metadata !650, metadata !DIExpression()) #13, !dbg !992
  store ptr %p.0.i19.i, ptr %next.i.i102.le, align 8, !dbg !1018, !tbaa !701
  store ptr %p.0.i.i101, ptr %previous.i.i.le, align 8, !dbg !1019, !tbaa !719
  br label %if.end.i108, !dbg !1020

if.end.i108:                                      ; preds = %for.body53, %if.end3.i100, %GetFirstImageInList.exit.i
  %clone_images.4 = phi ptr [ %clone_images.2130, %for.body53 ], [ %clone_images.2130, %GetFirstImageInList.exit.i ], [ %call57, %if.end3.i100 ], !dbg !943
  %inc = add nuw nsw i64 %i.0132, 1, !dbg !1021
  call void @llvm.dbg.value(metadata i64 %inc, metadata !887, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr %next.0131, metadata !1022, metadata !DIExpression()) #13, !dbg !1025
  %debug.i106 = getelementptr inbounds %struct._Image, ptr %next.0131, i64 0, i32 59, !dbg !1027
  %24 = load i32, ptr %debug.i106, align 8, !dbg !1027, !tbaa !657
  %cmp1.not.i107 = icmp eq i32 %24, 0, !dbg !1029
  br i1 %cmp1.not.i107, label %GetNextImageInList.exit, label %if.then2.i111, !dbg !1030

if.then2.i111:                                    ; preds = %if.end.i108
  %filename.i109 = getelementptr inbounds %struct._Image, ptr %next.0131, i64 0, i32 53, !dbg !1031
  %call.i110 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 760, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i109) #13, !dbg !1032
  br label %GetNextImageInList.exit, !dbg !1033

GetNextImageInList.exit:                          ; preds = %if.end.i108, %if.then2.i111
  %next.i = getelementptr inbounds %struct._Image, ptr %next.0131, i64 0, i32 69, !dbg !1034
  %25 = load ptr, ptr %next.i, align 8, !dbg !1034, !tbaa !701
  call void @llvm.dbg.value(metadata i64 %inc, metadata !887, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr %25, metadata !881, metadata !DIExpression()), !dbg !889
  %cmp51.not = icmp eq ptr %25, null, !dbg !1035
  br i1 %cmp51.not, label %for.inc64, label %for.body53, !dbg !979, !llvm.loop !1036

for.inc64:                                        ; preds = %if.then56, %GetNextImageInList.exit
  %clone_images.2.lcssa = phi ptr [ %clone_images.4, %GetNextImageInList.exit ], [ %clone_images.2130, %if.then56 ], !dbg !943
  %add65 = add nsw i64 %first.1136, %conv44, !dbg !1038
  call void @llvm.dbg.value(metadata i64 %add65, metadata !884, metadata !DIExpression()), !dbg !889
  %cmp47.not = icmp eq i64 %first.1136, %last.0, !dbg !976
  br i1 %cmp47.not, label %for.cond.loopexit, label %for.cond50.preheader, !dbg !978, !llvm.loop !1039

for.end67:                                        ; preds = %for.cond.loopexit
  call void @llvm.dbg.value(metadata ptr %clone_images.1.lcssa, metadata !882, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr %clone_images.1.lcssa, metadata !712, metadata !DIExpression()), !dbg !1041
  %cmp.i114 = icmp eq ptr %clone_images.1.lcssa, null, !dbg !1043
  br i1 %cmp.i114, label %GetFirstImageInList.exit120, label %for.cond.i118, !dbg !1044

for.cond.i118:                                    ; preds = %for.end67, %for.cond.i118
  %p.0.i115 = phi ptr [ %26, %for.cond.i118 ], [ %clone_images.1.lcssa, %for.end67 ], !dbg !1045
  call void @llvm.dbg.value(metadata ptr %p.0.i115, metadata !713, metadata !DIExpression()), !dbg !1041
  %previous.i116 = getelementptr inbounds %struct._Image, ptr %p.0.i115, i64 0, i32 67, !dbg !1046
  %26 = load ptr, ptr %previous.i116, align 8, !dbg !1046, !tbaa !719
  %cmp1.not.i117 = icmp eq ptr %26, null, !dbg !1047
  br i1 %cmp1.not.i117, label %GetFirstImageInList.exit120, label %for.cond.i118, !dbg !1048, !llvm.loop !1049

GetFirstImageInList.exit120:                      ; preds = %for.cond.i118, %GetImageListLength.exit, %for.end67
  %retval.0.i119 = phi ptr [ null, %for.end67 ], [ null, %GetImageListLength.exit ], [ %p.0.i115, %for.cond.i118 ], !dbg !1041
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p) #13, !dbg !1051
  ret ptr %retval.0.i119, !dbg !1052
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local noalias ptr @NewImageList() local_unnamed_addr #4 !dbg !1053 {
entry:
  ret ptr null, !dbg !1056
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetImageListLength(ptr noundef %images) local_unnamed_addr #0 !dbg !907 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !906, metadata !DIExpression()), !dbg !1057
  %cmp = icmp eq ptr %images, null, !dbg !1058
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1060

if.end:                                           ; preds = %entry
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !1061
  %0 = load i32, ptr %debug, align 8, !dbg !1061, !tbaa !657
  %cmp1.not = icmp eq i32 %0, 0, !dbg !1062
  br i1 %cmp1.not, label %for.cond.i.preheader, label %if.then2, !dbg !1063

if.then2:                                         ; preds = %if.end
  %filename = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !1064
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1065
  br label %for.cond.i.preheader, !dbg !1066

for.cond.i.preheader:                             ; preds = %if.then2, %if.end
  br label %for.cond.i, !dbg !1067

for.cond.i:                                       ; preds = %for.cond.i.preheader, %for.cond.i
  %p.0.i = phi ptr [ %1, %for.cond.i ], [ %images, %for.cond.i.preheader ], !dbg !1069
  call void @llvm.dbg.value(metadata ptr %p.0.i, metadata !696, metadata !DIExpression()), !dbg !1070
  %next.i = getelementptr inbounds %struct._Image, ptr %p.0.i, i64 0, i32 69, !dbg !1071
  %1 = load ptr, ptr %next.i, align 8, !dbg !1071, !tbaa !701
  %cmp1.not.i = icmp eq ptr %1, null, !dbg !1072
  br i1 %cmp1.not.i, label %for.body, label %for.cond.i, !dbg !1067, !llvm.loop !1073

for.body:                                         ; preds = %for.cond.i, %for.body
  %i.014 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.i ]
  %images.addr.013 = phi ptr [ %2, %for.body ], [ %p.0.i, %for.cond.i ]
  call void @llvm.dbg.value(metadata i64 %i.014, metadata !911, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata ptr %images.addr.013, metadata !906, metadata !DIExpression()), !dbg !1057
  %inc = add nuw nsw i64 %i.014, 1, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %inc, metadata !911, metadata !DIExpression()), !dbg !1057
  %previous = getelementptr inbounds %struct._Image, ptr %images.addr.013, i64 0, i32 67, !dbg !1076
  %2 = load ptr, ptr %previous, align 8, !dbg !1076, !tbaa !719
  call void @llvm.dbg.value(metadata ptr %2, metadata !906, metadata !DIExpression()), !dbg !1057
  %cmp5.not = icmp eq ptr %2, null, !dbg !1077
  br i1 %cmp5.not, label %cleanup, label %for.body, !dbg !1078, !llvm.loop !1079

cleanup:                                          ; preds = %for.body, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %inc, %for.body ], !dbg !1057
  ret i64 %retval.0, !dbg !1081
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextImageInList(ptr noundef %images) local_unnamed_addr #0 !dbg !1023 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !1022, metadata !DIExpression()), !dbg !1082
  %cmp = icmp eq ptr %images, null, !dbg !1083
  br i1 %cmp, label %return, label %if.end, !dbg !1085

if.end:                                           ; preds = %entry
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !1086
  %0 = load i32, ptr %debug, align 8, !dbg !1086, !tbaa !657
  %cmp1.not = icmp eq i32 %0, 0, !dbg !1087
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !1088

if.then2:                                         ; preds = %if.end
  %filename = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !1089
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 760, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1090
  br label %if.end3, !dbg !1091

if.end3:                                          ; preds = %if.then2, %if.end
  %next = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 69, !dbg !1092
  %1 = load ptr, ptr %next, align 8, !dbg !1092, !tbaa !701
  br label %return, !dbg !1093

return:                                           ; preds = %entry, %if.end3
  %retval.0 = phi ptr [ %1, %if.end3 ], [ null, %entry ], !dbg !1082
  ret ptr %retval.0, !dbg !1094
}

; Function Attrs: nounwind uwtable
define dso_local void @DeleteImageFromList(ptr nocapture noundef %images) local_unnamed_addr #0 !dbg !821 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !820, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata ptr %images, metadata !828, metadata !DIExpression()) #13, !dbg !1096
  %0 = load ptr, ptr %images, align 8, !dbg !1098, !tbaa !683
  %cmp.i = icmp eq ptr %0, null, !dbg !1100
  br i1 %cmp.i, label %if.end, label %if.end.i, !dbg !1101

if.end.i:                                         ; preds = %entry
  %debug.i = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59, !dbg !1102
  %1 = load i32, ptr %debug.i, align 8, !dbg !1102, !tbaa !657
  %cmp1.not.i = icmp eq i32 %1, 0, !dbg !1103
  br i1 %cmp1.not.i, label %if.end3.i, label %if.then2.i, !dbg !1104

if.then2.i:                                       ; preds = %if.end.i
  %filename.i = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53, !dbg !1105
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 988, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #13, !dbg !1106
  %.pre.i = load ptr, ptr %images, align 8, !dbg !1107, !tbaa !683
  br label %if.end3.i, !dbg !1108

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i
  %2 = phi ptr [ %.pre.i, %if.then2.i ], [ %0, %if.end.i ], !dbg !1107
  call void @llvm.dbg.value(metadata ptr %2, metadata !833, metadata !DIExpression()) #13, !dbg !1096
  %previous.i = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 67, !dbg !1109
  %3 = load ptr, ptr %previous.i, align 8, !dbg !1109, !tbaa !719
  %cmp4.i = icmp eq ptr %3, null, !dbg !1110
  %next.i = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 69, !dbg !1111
  %4 = load ptr, ptr %next.i, align 8, !dbg !1111, !tbaa !701
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end14.i, !dbg !1112

land.lhs.true.i:                                  ; preds = %if.end3.i
  %cmp5.i = icmp eq ptr %4, null, !dbg !1113
  br i1 %cmp5.i, label %if.then, label %if.then17.i, !dbg !1114

if.end14.i:                                       ; preds = %if.end3.i
  %next12.i = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 69, !dbg !1115
  store ptr %4, ptr %next12.i, align 8, !dbg !1116, !tbaa !701
  store ptr %3, ptr %images, align 8, !dbg !1117, !tbaa !683
  %.pre46.i = load ptr, ptr %next.i, align 8, !dbg !1118, !tbaa !701
  %cmp16.not.i = icmp eq ptr %.pre46.i, null, !dbg !1119
  br i1 %cmp16.not.i, label %if.end22.i, label %if.end14.i.if.then17.i_crit_edge, !dbg !1120

if.end14.i.if.then17.i_crit_edge:                 ; preds = %if.end14.i
  %.pre = load ptr, ptr %previous.i, align 8, !dbg !1121, !tbaa !719
  br label %if.then17.i, !dbg !1120

if.then17.i:                                      ; preds = %if.end14.i.if.then17.i_crit_edge, %land.lhs.true.i
  %5 = phi ptr [ %.pre, %if.end14.i.if.then17.i_crit_edge ], [ null, %land.lhs.true.i ], !dbg !1121
  %6 = phi ptr [ %.pre46.i, %if.end14.i.if.then17.i_crit_edge ], [ %4, %land.lhs.true.i ]
  %previous20.i = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 67, !dbg !1122
  store ptr %5, ptr %previous20.i, align 8, !dbg !1123, !tbaa !719
  store ptr %6, ptr %images, align 8, !dbg !1124, !tbaa !683
  br label %if.end22.i, !dbg !1125

if.end22.i:                                       ; preds = %if.then17.i, %if.end14.i
  store ptr null, ptr %previous.i, align 8, !dbg !1126, !tbaa !719
  br label %if.then

if.then:                                          ; preds = %if.end22.i, %land.lhs.true.i
  %images.sink.i = phi ptr [ %next.i, %if.end22.i ], [ %images, %land.lhs.true.i ]
  store ptr null, ptr %images.sink.i, align 8, !dbg !1111, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %2, metadata !825, metadata !DIExpression()), !dbg !1095
  %call1 = tail call ptr @DestroyImage(ptr noundef nonnull %2) #13, !dbg !1127
  br label %if.end, !dbg !1128

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !1129
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveImageFromList(ptr nocapture noundef %images) local_unnamed_addr #0 !dbg !829 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !828, metadata !DIExpression()), !dbg !1130
  %0 = load ptr, ptr %images, align 8, !dbg !1131, !tbaa !683
  %cmp = icmp eq ptr %0, null, !dbg !1132
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1133

if.end:                                           ; preds = %entry
  %debug = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59, !dbg !1134
  %1 = load i32, ptr %debug, align 8, !dbg !1134, !tbaa !657
  %cmp1.not = icmp eq i32 %1, 0, !dbg !1135
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !1136

if.then2:                                         ; preds = %if.end
  %filename = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53, !dbg !1137
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 988, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1138
  %.pre = load ptr, ptr %images, align 8, !dbg !1139, !tbaa !683
  br label %if.end3, !dbg !1140

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = phi ptr [ %.pre, %if.then2 ], [ %0, %if.end ], !dbg !1139
  call void @llvm.dbg.value(metadata ptr %2, metadata !833, metadata !DIExpression()), !dbg !1130
  %previous = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 67, !dbg !1141
  %3 = load ptr, ptr %previous, align 8, !dbg !1141, !tbaa !719
  %cmp4 = icmp eq ptr %3, null, !dbg !1142
  %next = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 69, !dbg !1143
  %4 = load ptr, ptr %next, align 8, !dbg !1143, !tbaa !701
  br i1 %cmp4, label %land.lhs.true, label %if.end14, !dbg !1144

land.lhs.true:                                    ; preds = %if.end3
  %cmp5 = icmp eq ptr %4, null, !dbg !1145
  br i1 %cmp5, label %cleanup.sink.split, label %if.end14.thread, !dbg !1146

if.end14.thread:                                  ; preds = %land.lhs.true
  %next1547 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 69, !dbg !1147
  br label %if.then17, !dbg !1148

if.end14:                                         ; preds = %if.end3
  %next12 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 69, !dbg !1149
  store ptr %4, ptr %next12, align 8, !dbg !1150, !tbaa !701
  store ptr %3, ptr %images, align 8, !dbg !1151, !tbaa !683
  %.pre46 = load ptr, ptr %next, align 8, !dbg !1147, !tbaa !701
  %next15 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 69, !dbg !1147
  %cmp16.not = icmp eq ptr %.pre46, null, !dbg !1152
  br i1 %cmp16.not, label %if.end22, label %if.then17, !dbg !1148

if.then17:                                        ; preds = %if.end14.thread, %if.end14
  %next1549 = phi ptr [ %next1547, %if.end14.thread ], [ %next15, %if.end14 ]
  %5 = phi ptr [ %4, %if.end14.thread ], [ %.pre46, %if.end14 ]
  %6 = load ptr, ptr %previous, align 8, !dbg !1153, !tbaa !719
  %previous20 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 67, !dbg !1154
  store ptr %6, ptr %previous20, align 8, !dbg !1155, !tbaa !719
  store ptr %5, ptr %images, align 8, !dbg !1156, !tbaa !683
  br label %if.end22, !dbg !1157

if.end22:                                         ; preds = %if.then17, %if.end14
  %next1550 = phi ptr [ %next1549, %if.then17 ], [ %next15, %if.end14 ]
  store ptr null, ptr %previous, align 8, !dbg !1158, !tbaa !719
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true, %if.end22
  %images.sink = phi ptr [ %next1550, %if.end22 ], [ %images, %land.lhs.true ]
  store ptr null, ptr %images.sink, align 8, !dbg !1143, !tbaa !683
  br label %cleanup, !dbg !1159

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi ptr [ null, %entry ], [ %2, %cleanup.sink.split ], !dbg !1130
  ret ptr %retval.0, !dbg !1159
}

declare !dbg !1160 ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DeleteImages(ptr nocapture noundef %images, ptr noundef %scenes, ptr noundef %exception) local_unnamed_addr #0 !dbg !1161 {
entry:
  %p = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %images, metadata !1165, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata ptr %scenes, metadata !1166, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1167, metadata !DIExpression()), !dbg !1175
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p) #13, !dbg !1176
  %0 = load ptr, ptr %images, align 8, !dbg !1177, !tbaa !683
  %debug = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59, !dbg !1179
  %1 = load i32, ptr %debug, align 8, !dbg !1179, !tbaa !657
  %cmp.not = icmp eq i32 %1, 0, !dbg !1180
  br i1 %cmp.not, label %for.cond.i.preheader, label %if.end, !dbg !1181

if.end:                                           ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53, !dbg !1182
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 363, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1183
  %.pr = load ptr, ptr %images, align 8, !dbg !1184, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %.pr, metadata !712, metadata !DIExpression()), !dbg !1185
  %cmp.i = icmp eq ptr %.pr, null, !dbg !1187
  br i1 %cmp.i, label %GetImageListLength.exit.thread, label %for.cond.i.preheader, !dbg !1188

for.cond.i.preheader:                             ; preds = %entry, %if.end
  %p.0.i.ph = phi ptr [ %0, %entry ], [ %.pr, %if.end ]
  br label %for.cond.i, !dbg !1189

for.cond.i:                                       ; preds = %for.cond.i.preheader, %for.cond.i
  %p.0.i = phi ptr [ %2, %for.cond.i ], [ %p.0.i.ph, %for.cond.i.preheader ], !dbg !1190
  call void @llvm.dbg.value(metadata ptr %p.0.i, metadata !713, metadata !DIExpression()), !dbg !1185
  %previous.i = getelementptr inbounds %struct._Image, ptr %p.0.i, i64 0, i32 67, !dbg !1191
  %2 = load ptr, ptr %previous.i, align 8, !dbg !1191, !tbaa !719
  %cmp1.not.i = icmp eq ptr %2, null, !dbg !1192
  br i1 %cmp1.not.i, label %if.end.i, label %for.cond.i, !dbg !1189, !llvm.loop !1193

if.end.i:                                         ; preds = %for.cond.i
  store ptr %p.0.i, ptr %images, align 8, !dbg !1195, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %p.0.i, metadata !906, metadata !DIExpression()) #13, !dbg !1196
  %debug.i = getelementptr inbounds %struct._Image, ptr %p.0.i, i64 0, i32 59, !dbg !1198
  %3 = load i32, ptr %debug.i, align 8, !dbg !1198, !tbaa !657
  %cmp1.not.i133 = icmp eq i32 %3, 0, !dbg !1199
  br i1 %cmp1.not.i133, label %for.cond.i.i.preheader, label %if.then2.i, !dbg !1200

if.then2.i:                                       ; preds = %if.end.i
  %filename.i = getelementptr inbounds %struct._Image, ptr %p.0.i, i64 0, i32 53, !dbg !1201
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #13, !dbg !1202
  br label %for.cond.i.i.preheader, !dbg !1203

for.cond.i.i.preheader:                           ; preds = %if.then2.i, %if.end.i
  br label %for.cond.i.i, !dbg !1204

for.cond.i.i:                                     ; preds = %for.cond.i.i.preheader, %for.cond.i.i
  %p.0.i.i = phi ptr [ %4, %for.cond.i.i ], [ %p.0.i, %for.cond.i.i.preheader ], !dbg !1206
  call void @llvm.dbg.value(metadata ptr %p.0.i.i, metadata !696, metadata !DIExpression()) #13, !dbg !1207
  %next.i.i = getelementptr inbounds %struct._Image, ptr %p.0.i.i, i64 0, i32 69, !dbg !1208
  %4 = load ptr, ptr %next.i.i, align 8, !dbg !1208, !tbaa !701
  %cmp1.not.i.i = icmp eq ptr %4, null, !dbg !1209
  br i1 %cmp1.not.i.i, label %for.body.i, label %for.cond.i.i, !dbg !1204, !llvm.loop !1210

for.body.i:                                       ; preds = %for.cond.i.i, %for.body.i
  %i.014.i = phi i64 [ %inc.i, %for.body.i ], [ 0, %for.cond.i.i ]
  %images.addr.013.i = phi ptr [ %5, %for.body.i ], [ %p.0.i.i, %for.cond.i.i ]
  call void @llvm.dbg.value(metadata i64 %i.014.i, metadata !911, metadata !DIExpression()) #13, !dbg !1196
  call void @llvm.dbg.value(metadata ptr %images.addr.013.i, metadata !906, metadata !DIExpression()) #13, !dbg !1196
  %inc.i = add nuw nsw i64 %i.014.i, 1, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !911, metadata !DIExpression()) #13, !dbg !1196
  %previous.i134 = getelementptr inbounds %struct._Image, ptr %images.addr.013.i, i64 0, i32 67, !dbg !1213
  %5 = load ptr, ptr %previous.i134, align 8, !dbg !1213, !tbaa !719
  call void @llvm.dbg.value(metadata ptr %5, metadata !906, metadata !DIExpression()) #13, !dbg !1196
  %cmp5.not.i = icmp eq ptr %5, null, !dbg !1214
  br i1 %cmp5.not.i, label %GetImageListLength.exit, label %for.body.i, !dbg !1215, !llvm.loop !1216

GetImageListLength.exit:                          ; preds = %for.body.i
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !1174, metadata !DIExpression()), !dbg !1175
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %inc.i, i64 noundef 4) #15, !dbg !1218
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1172, metadata !DIExpression()), !dbg !1175
  %cmp4 = icmp eq ptr %call3, null, !dbg !1219
  br i1 %cmp4, label %if.then5, label %for.body.preheader, !dbg !1221

GetImageListLength.exit.thread:                   ; preds = %if.end
  store ptr null, ptr %images, align 8, !dbg !1195, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %p.0.i, metadata !906, metadata !DIExpression()) #13, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !1174, metadata !DIExpression()), !dbg !1175
  %call3176 = tail call ptr @AcquireQuantumMemory(i64 noundef 0, i64 noundef 4) #15, !dbg !1218
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1172, metadata !DIExpression()), !dbg !1175
  %cmp4177 = icmp eq ptr %call3176, null, !dbg !1219
  br i1 %cmp4177, label %if.then5, label %for.end, !dbg !1221

for.body.preheader:                               ; preds = %GetImageListLength.exit
  call void @llvm.dbg.value(metadata i64 0, metadata !1173, metadata !DIExpression()), !dbg !1175
  %6 = shl nuw i64 %inc.i, 2, !dbg !1222
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 %call3, i8 0, i64 %6, i1 false), !dbg !1224, !tbaa !940
  call void @llvm.dbg.value(metadata i32 undef, metadata !1173, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1175
  br label %for.end, !dbg !1226

if.then5:                                         ; preds = %GetImageListLength.exit.thread, %GetImageListLength.exit
  %7 = load ptr, ptr %images, align 8, !dbg !1228, !tbaa !683
  %filename6 = getelementptr inbounds %struct._Image, ptr %7, i64 0, i32 53, !dbg !1230
  %call8 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 373, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename6) #13, !dbg !1231
  br label %cleanup, !dbg !1232

for.end:                                          ; preds = %GetImageListLength.exit.thread, %for.body.preheader
  %cmp10160186 = phi i1 [ true, %for.body.preheader ], [ false, %GetImageListLength.exit.thread ]
  %retval.0.i135178185 = phi i64 [ %inc.i, %for.body.preheader ], [ 0, %GetImageListLength.exit.thread ]
  %call3180184 = phi ptr [ %call3, %for.body.preheader ], [ %call3176, %GetImageListLength.exit.thread ]
  call void @llvm.dbg.value(metadata ptr %scenes, metadata !1168, metadata !DIExpression()), !dbg !1175
  %8 = load i8, ptr %scenes, align 1, !dbg !1233, !tbaa !940
  %cmp12.not168 = icmp eq i8 %8, 0, !dbg !1235
  br i1 %cmp12.not168, label %for.end70, label %while.cond.preheader.lr.ph, !dbg !1236

while.cond.preheader.lr.ph:                       ; preds = %for.end
  %call15 = tail call ptr @__ctype_b_loc() #14, !dbg !1175
  br label %while.cond.preheader, !dbg !1236

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %for.cond11.backedge
  %9 = phi i8 [ %8, %while.cond.preheader.lr.ph ], [ %23, %for.cond11.backedge ]
  %p.promoted = phi ptr [ %scenes, %while.cond.preheader.lr.ph ], [ %22, %for.cond11.backedge ]
  %10 = load ptr, ptr %call15, align 8, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %p.promoted, metadata !1168, metadata !DIExpression()), !dbg !1175
  %11 = zext i8 %9 to i64
  %arrayidx17190 = getelementptr inbounds i16, ptr %10, i64 %11, !dbg !1237
  %12 = load i16, ptr %arrayidx17190, align 2, !dbg !1237, !tbaa !949
  %13 = and i16 %12, 8192, !dbg !1237
  %cmp19.not191 = icmp ne i16 %13, 0, !dbg !1239
  %cmp22192 = icmp eq i8 %9, 44
  %or.cond193 = select i1 %cmp19.not191, i1 true, i1 %cmp22192, !dbg !1240
  call void @llvm.dbg.value(metadata ptr %p.promoted, metadata !1168, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1175
  br i1 %or.cond193, label %while.cond.while.cond_crit_edge, label %while.end, !dbg !1240, !llvm.loop !1241

while.cond.while.cond_crit_edge:                  ; preds = %while.cond.preheader, %while.cond.while.cond_crit_edge
  %incdec.ptr162194 = phi ptr [ %incdec.ptr, %while.cond.while.cond_crit_edge ], [ %p.promoted, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %incdec.ptr162194, metadata !1168, metadata !DIExpression()), !dbg !1175
  %incdec.ptr = getelementptr inbounds i8, ptr %incdec.ptr162194, i64 1, !dbg !1243
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1168, metadata !DIExpression()), !dbg !1175
  %.pre = load i8, ptr %incdec.ptr, align 1, !dbg !1237, !tbaa !940
  %14 = zext i8 %.pre to i64
  %arrayidx17 = getelementptr inbounds i16, ptr %10, i64 %14, !dbg !1237
  %15 = load i16, ptr %arrayidx17, align 2, !dbg !1237, !tbaa !949
  %16 = and i16 %15, 8192, !dbg !1237
  %cmp19.not = icmp ne i16 %16, 0, !dbg !1239
  %cmp22 = icmp eq i8 %.pre, 44
  %or.cond = select i1 %cmp19.not, i1 true, i1 %cmp22, !dbg !1240
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1168, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1175
  br i1 %or.cond, label %while.cond.while.cond_crit_edge, label %while.end, !dbg !1240, !llvm.loop !1241

while.end:                                        ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %incdec.ptr162.lcssa = phi ptr [ %p.promoted, %while.cond.preheader ], [ %incdec.ptr, %while.cond.while.cond_crit_edge ]
  store ptr %incdec.ptr162.lcssa, ptr %p, align 8, !dbg !1244, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %p, metadata !1168, metadata !DIExpression(DW_OP_deref)), !dbg !1175
  %call24 = call i64 @strtol(ptr noundef nonnull %incdec.ptr162.lcssa, ptr noundef nonnull %p, i32 noundef 10) #13, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %call24, metadata !1170, metadata !DIExpression()), !dbg !1175
  %cmp25 = icmp slt i64 %call24, 0, !dbg !1246
  %add = select i1 %cmp25, i64 %retval.0.i135178185, i64 0, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1170, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1171, metadata !DIExpression()), !dbg !1175
  %17 = load ptr, ptr %call15, align 8, !tbaa !683
  %p.promoted163 = load ptr, ptr %p, align 8, !tbaa !683
  br label %while.cond29, !dbg !1249

while.cond29:                                     ; preds = %while.cond29, %while.end
  %incdec.ptr39164 = phi ptr [ %incdec.ptr39, %while.cond29 ], [ %p.promoted163, %while.end ]
  call void @llvm.dbg.value(metadata ptr %incdec.ptr39164, metadata !1168, metadata !DIExpression()), !dbg !1175
  %18 = load i8, ptr %incdec.ptr39164, align 1, !dbg !1250, !tbaa !940
  %19 = zext i8 %18 to i64
  %arrayidx33 = getelementptr inbounds i16, ptr %17, i64 %19, !dbg !1250
  %20 = load i16, ptr %arrayidx33, align 2, !dbg !1250, !tbaa !949
  %21 = and i16 %20, 8192, !dbg !1250
  %cmp36.not = icmp eq i16 %21, 0, !dbg !1251
  %incdec.ptr39 = getelementptr inbounds i8, ptr %incdec.ptr39164, i64 1, !dbg !1252
  call void @llvm.dbg.value(metadata ptr %incdec.ptr39, metadata !1168, metadata !DIExpression()), !dbg !1175
  br i1 %cmp36.not, label %while.end40, label %while.cond29, !dbg !1249, !llvm.loop !1253

while.end40:                                      ; preds = %while.cond29
  %spec.select = add nsw i64 %add, %call24, !dbg !1248
  store ptr %incdec.ptr39164, ptr %p, align 8, !dbg !1244, !tbaa !683
  %cmp42 = icmp eq i8 %18, 45, !dbg !1254
  br i1 %cmp42, label %if.end51, label %for.body59.preheader, !dbg !1256

if.end51:                                         ; preds = %while.end40
  call void @llvm.dbg.value(metadata ptr %p, metadata !1168, metadata !DIExpression(DW_OP_deref)), !dbg !1175
  %call45 = call i64 @strtol(ptr noundef nonnull %incdec.ptr39, ptr noundef nonnull %p, i32 noundef 10) #13, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %call45, metadata !1171, metadata !DIExpression()), !dbg !1175
  %cmp46 = icmp slt i64 %call45, 0, !dbg !1259
  %add49 = select i1 %cmp46, i64 %retval.0.i135178185, i64 0, !dbg !1261
  %spec.select130 = add nsw i64 %add49, %call45, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %spec.select130, metadata !1171, metadata !DIExpression()), !dbg !1175
  %cmp52 = icmp sgt i64 %spec.select, %spec.select130, !dbg !1262
  br i1 %cmp52, label %for.cond11.backedge, label %for.body59.preheader, !dbg !1264

for.body59.preheader:                             ; preds = %while.end40, %if.end51
  %last.0189 = phi i64 [ %spec.select130, %if.end51 ], [ %spec.select, %while.end40 ]
  br label %for.body59, !dbg !1265

for.cond11.backedge:                              ; preds = %for.inc67, %if.end51
  %22 = load ptr, ptr %p, align 8, !dbg !1267, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %22, metadata !1168, metadata !DIExpression()), !dbg !1175
  %23 = load i8, ptr %22, align 1, !dbg !1233, !tbaa !940
  %cmp12.not = icmp eq i8 %23, 0, !dbg !1235
  br i1 %cmp12.not, label %for.end70, label %while.cond.preheader, !dbg !1236, !llvm.loop !1268

for.body59:                                       ; preds = %for.body59.preheader, %for.inc67
  %i.1166 = phi i64 [ %inc68, %for.inc67 ], [ %spec.select, %for.body59.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.1166, metadata !1173, metadata !DIExpression()), !dbg !1175
  %cmp60 = icmp sgt i64 %i.1166, -1, !dbg !1270
  %cmp62 = icmp slt i64 %i.1166, %retval.0.i135178185
  %or.cond131 = and i1 %cmp60, %cmp62, !dbg !1273
  br i1 %or.cond131, label %if.then64, label %for.inc67, !dbg !1273

if.then64:                                        ; preds = %for.body59
  %arrayidx65 = getelementptr inbounds i32, ptr %call3180184, i64 %i.1166, !dbg !1274
  store i32 1, ptr %arrayidx65, align 4, !dbg !1275, !tbaa !940
  br label %for.inc67, !dbg !1274

for.inc67:                                        ; preds = %for.body59, %if.then64
  %inc68 = add i64 %i.1166, 1, !dbg !1276
  call void @llvm.dbg.value(metadata i64 %inc68, metadata !1173, metadata !DIExpression()), !dbg !1175
  %exitcond.not = icmp eq i64 %i.1166, %last.0189, !dbg !1277
  br i1 %exitcond.not, label %for.cond11.backedge, label %for.body59, !dbg !1265, !llvm.loop !1278

for.end70:                                        ; preds = %for.cond11.backedge, %for.end
  call void @llvm.dbg.value(metadata ptr undef, metadata !1169, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 0, metadata !1173, metadata !DIExpression()), !dbg !1175
  br i1 %cmp10160186, label %for.body74.preheader, label %for.end83, !dbg !1280

for.body74.preheader:                             ; preds = %for.end70
  %24 = load ptr, ptr %images, align 8, !dbg !1282, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %24, metadata !1169, metadata !DIExpression()), !dbg !1175
  br label %for.body74, !dbg !1280

for.body74:                                       ; preds = %for.body74.preheader, %for.inc81
  %image.0171 = phi ptr [ %retval.0.i144, %for.inc81 ], [ %24, %for.body74.preheader ]
  %i.2170 = phi i64 [ %inc82, %for.inc81 ], [ 0, %for.body74.preheader ]
  call void @llvm.dbg.value(metadata ptr %image.0171, metadata !1169, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %i.2170, metadata !1173, metadata !DIExpression()), !dbg !1175
  store ptr %image.0171, ptr %images, align 8, !dbg !1283, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %image.0171, metadata !1022, metadata !DIExpression()) #13, !dbg !1286
  %cmp.i136 = icmp eq ptr %image.0171, null, !dbg !1288
  br i1 %cmp.i136, label %GetNextImageInList.exit, label %if.end.i139, !dbg !1289

if.end.i139:                                      ; preds = %for.body74
  %debug.i137 = getelementptr inbounds %struct._Image, ptr %image.0171, i64 0, i32 59, !dbg !1290
  %25 = load i32, ptr %debug.i137, align 8, !dbg !1290, !tbaa !657
  %cmp1.not.i138 = icmp eq i32 %25, 0, !dbg !1291
  br i1 %cmp1.not.i138, label %if.end3.i143, label %if.then2.i142, !dbg !1292

if.then2.i142:                                    ; preds = %if.end.i139
  %filename.i140 = getelementptr inbounds %struct._Image, ptr %image.0171, i64 0, i32 53, !dbg !1293
  %call.i141 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 760, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i140) #13, !dbg !1294
  br label %if.end3.i143, !dbg !1295

if.end3.i143:                                     ; preds = %if.then2.i142, %if.end.i139
  %next.i = getelementptr inbounds %struct._Image, ptr %image.0171, i64 0, i32 69, !dbg !1296
  %26 = load ptr, ptr %next.i, align 8, !dbg !1296, !tbaa !701
  br label %GetNextImageInList.exit, !dbg !1297

GetNextImageInList.exit:                          ; preds = %for.body74, %if.end3.i143
  %retval.0.i144 = phi ptr [ %26, %if.end3.i143 ], [ null, %for.body74 ], !dbg !1286
  call void @llvm.dbg.value(metadata ptr %retval.0.i144, metadata !1169, metadata !DIExpression()), !dbg !1175
  %arrayidx76 = getelementptr inbounds i32, ptr %call3180184, i64 %i.2170, !dbg !1298
  %27 = load i32, ptr %arrayidx76, align 4, !dbg !1298, !tbaa !940
  %cmp77.not = icmp eq i32 %27, 0, !dbg !1300
  br i1 %cmp77.not, label %for.inc81, label %if.then79, !dbg !1301

if.then79:                                        ; preds = %GetNextImageInList.exit
  call void @llvm.dbg.value(metadata ptr %images, metadata !820, metadata !DIExpression()) #13, !dbg !1302
  call void @llvm.dbg.value(metadata ptr %images, metadata !828, metadata !DIExpression()) #13, !dbg !1304
  %28 = load ptr, ptr %images, align 8, !dbg !1306, !tbaa !683
  %cmp.i.i = icmp eq ptr %28, null, !dbg !1307
  br i1 %cmp.i.i, label %for.inc81, label %if.end.i.i, !dbg !1308

if.end.i.i:                                       ; preds = %if.then79
  %debug.i.i = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 59, !dbg !1309
  %29 = load i32, ptr %debug.i.i, align 8, !dbg !1309, !tbaa !657
  %cmp1.not.i.i145 = icmp eq i32 %29, 0, !dbg !1310
  br i1 %cmp1.not.i.i145, label %if.end3.i.i, label %if.then2.i.i, !dbg !1311

if.then2.i.i:                                     ; preds = %if.end.i.i
  %filename.i.i = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 53, !dbg !1312
  %call.i.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 988, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i.i) #13, !dbg !1313
  %.pre.i.i = load ptr, ptr %images, align 8, !dbg !1314, !tbaa !683
  br label %if.end3.i.i, !dbg !1315

if.end3.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i
  %30 = phi ptr [ %.pre.i.i, %if.then2.i.i ], [ %28, %if.end.i.i ], !dbg !1314
  call void @llvm.dbg.value(metadata ptr %30, metadata !833, metadata !DIExpression()) #13, !dbg !1304
  %previous.i.i = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 67, !dbg !1316
  %31 = load ptr, ptr %previous.i.i, align 8, !dbg !1316, !tbaa !719
  %cmp4.i.i = icmp eq ptr %31, null, !dbg !1317
  %next.i.i146 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 69, !dbg !1318
  %32 = load ptr, ptr %next.i.i146, align 8, !dbg !1318, !tbaa !701
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %if.end14.i.i, !dbg !1319

land.lhs.true.i.i:                                ; preds = %if.end3.i.i
  %cmp5.i.i = icmp eq ptr %32, null, !dbg !1320
  br i1 %cmp5.i.i, label %if.then.i, label %if.then17.i.i, !dbg !1321

if.end14.i.i:                                     ; preds = %if.end3.i.i
  %next12.i.i = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 69, !dbg !1322
  store ptr %32, ptr %next12.i.i, align 8, !dbg !1323, !tbaa !701
  store ptr %31, ptr %images, align 8, !dbg !1324, !tbaa !683
  %.pre46.i.i = load ptr, ptr %next.i.i146, align 8, !dbg !1325, !tbaa !701
  %cmp16.not.i.i = icmp eq ptr %.pre46.i.i, null, !dbg !1326
  br i1 %cmp16.not.i.i, label %if.end22.i.i, label %if.end14.i.if.then17.i_crit_edge.i, !dbg !1327

if.end14.i.if.then17.i_crit_edge.i:               ; preds = %if.end14.i.i
  %.pre.i = load ptr, ptr %previous.i.i, align 8, !dbg !1328, !tbaa !719
  br label %if.then17.i.i, !dbg !1327

if.then17.i.i:                                    ; preds = %if.end14.i.if.then17.i_crit_edge.i, %land.lhs.true.i.i
  %33 = phi ptr [ %.pre.i, %if.end14.i.if.then17.i_crit_edge.i ], [ null, %land.lhs.true.i.i ], !dbg !1328
  %34 = phi ptr [ %.pre46.i.i, %if.end14.i.if.then17.i_crit_edge.i ], [ %32, %land.lhs.true.i.i ]
  %previous20.i.i = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 67, !dbg !1329
  store ptr %33, ptr %previous20.i.i, align 8, !dbg !1330, !tbaa !719
  store ptr %34, ptr %images, align 8, !dbg !1331, !tbaa !683
  br label %if.end22.i.i, !dbg !1332

if.end22.i.i:                                     ; preds = %if.then17.i.i, %if.end14.i.i
  store ptr null, ptr %previous.i.i, align 8, !dbg !1333, !tbaa !719
  br label %if.then.i

if.then.i:                                        ; preds = %if.end22.i.i, %land.lhs.true.i.i
  %images.sink.i.i = phi ptr [ %next.i.i146, %if.end22.i.i ], [ %images, %land.lhs.true.i.i ]
  store ptr null, ptr %images.sink.i.i, align 8, !dbg !1318, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %30, metadata !825, metadata !DIExpression()) #13, !dbg !1302
  %call1.i = tail call ptr @DestroyImage(ptr noundef nonnull %30) #13, !dbg !1334
  br label %for.inc81, !dbg !1335

for.inc81:                                        ; preds = %if.then.i, %if.then79, %GetNextImageInList.exit
  %inc82 = add nuw nsw i64 %i.2170, 1, !dbg !1336
  call void @llvm.dbg.value(metadata ptr %retval.0.i144, metadata !1169, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %inc82, metadata !1173, metadata !DIExpression()), !dbg !1175
  %exitcond172.not = icmp eq i64 %inc82, %retval.0.i135178185, !dbg !1337
  br i1 %exitcond172.not, label %for.end83, label %for.body74, !dbg !1280, !llvm.loop !1338

for.end83:                                        ; preds = %for.inc81, %for.end70
  %call84 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call3180184) #13, !dbg !1340
  %35 = load ptr, ptr %images, align 8, !dbg !1341, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %35, metadata !712, metadata !DIExpression()), !dbg !1342
  %cmp.i148 = icmp eq ptr %35, null, !dbg !1344
  br i1 %cmp.i148, label %GetFirstImageInList.exit154, label %for.cond.i152, !dbg !1345

for.cond.i152:                                    ; preds = %for.end83, %for.cond.i152
  %p.0.i149 = phi ptr [ %36, %for.cond.i152 ], [ %35, %for.end83 ], !dbg !1346
  call void @llvm.dbg.value(metadata ptr %p.0.i149, metadata !713, metadata !DIExpression()), !dbg !1342
  %previous.i150 = getelementptr inbounds %struct._Image, ptr %p.0.i149, i64 0, i32 67, !dbg !1347
  %36 = load ptr, ptr %previous.i150, align 8, !dbg !1347, !tbaa !719
  %cmp1.not.i151 = icmp eq ptr %36, null, !dbg !1348
  br i1 %cmp1.not.i151, label %GetFirstImageInList.exit154, label %for.cond.i152, !dbg !1349, !llvm.loop !1350

GetFirstImageInList.exit154:                      ; preds = %for.cond.i152, %for.end83
  %retval.0.i153 = phi ptr [ null, %for.end83 ], [ %p.0.i149, %for.cond.i152 ], !dbg !1342
  store ptr %retval.0.i153, ptr %images, align 8, !dbg !1352, !tbaa !683
  br label %cleanup, !dbg !1353

cleanup:                                          ; preds = %GetFirstImageInList.exit154, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p) #13, !dbg !1353
  ret void, !dbg !1353
}

; Function Attrs: allocsize(0,1)
declare !dbg !1354 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !1358 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !1362 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @DuplicateImages(ptr noundef %images, i64 noundef %number_duplicates, ptr noundef %scenes, ptr noundef %exception) local_unnamed_addr #0 !dbg !1365 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !1369, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %number_duplicates, metadata !1370, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata ptr %scenes, metadata !1371, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1372, metadata !DIExpression()), !dbg !1376
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !1377
  %0 = load i32, ptr %debug, align 8, !dbg !1377, !tbaa !657
  %cmp.not = icmp eq i32 %0, 0, !dbg !1379
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1380

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !1381
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 508, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1382
  br label %if.end, !dbg !1383

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr null, metadata !1374, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 0, metadata !1375, metadata !DIExpression()), !dbg !1376
  %cmp210 = icmp sgt i64 %number_duplicates, 0, !dbg !1384
  br i1 %cmp210, label %for.body, label %for.end, !dbg !1387

for.body:                                         ; preds = %if.end, %AppendImageToList.exit
  %i.012 = phi i64 [ %inc, %AppendImageToList.exit ], [ 0, %if.end ]
  %duplicate_images.011 = phi ptr [ %duplicate_images.1, %AppendImageToList.exit ], [ null, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.012, metadata !1375, metadata !DIExpression()), !dbg !1376
  %call3 = tail call ptr @CloneImages(ptr noundef %images, ptr noundef %scenes, ptr noundef %exception), !dbg !1388
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1373, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata ptr undef, metadata !647, metadata !DIExpression()) #13, !dbg !1390
  call void @llvm.dbg.value(metadata ptr %call3, metadata !648, metadata !DIExpression()) #13, !dbg !1390
  %cmp.i = icmp eq ptr %call3, null, !dbg !1392
  br i1 %cmp.i, label %AppendImageToList.exit, label %if.end.i, !dbg !1393

if.end.i:                                         ; preds = %for.body
  %debug.i = getelementptr inbounds %struct._Image, ptr %call3, i64 0, i32 59, !dbg !1394
  %1 = load i32, ptr %debug.i, align 8, !dbg !1394, !tbaa !657
  %cmp1.not.i = icmp eq i32 %1, 0, !dbg !1395
  br i1 %cmp1.not.i, label %if.end3.i, label %if.then2.i, !dbg !1396

if.then2.i:                                       ; preds = %if.end.i
  %filename.i = getelementptr inbounds %struct._Image, ptr %call3, i64 0, i32 53, !dbg !1397
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #13, !dbg !1398
  br label %if.end3.i, !dbg !1399

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i
  %cmp4.i = icmp eq ptr %duplicate_images.011, null, !dbg !1400
  br i1 %cmp4.i, label %AppendImageToList.exit, label %for.cond.i.i, !dbg !1401

for.cond.i.i:                                     ; preds = %if.end3.i, %for.cond.i.i
  %p.0.i.i = phi ptr [ %2, %for.cond.i.i ], [ %duplicate_images.011, %if.end3.i ], !dbg !1402
  call void @llvm.dbg.value(metadata ptr %p.0.i.i, metadata !696, metadata !DIExpression()) #13, !dbg !1404
  %next.i.i = getelementptr inbounds %struct._Image, ptr %p.0.i.i, i64 0, i32 69, !dbg !1405
  %2 = load ptr, ptr %next.i.i, align 8, !dbg !1405, !tbaa !701
  %cmp1.not.i.i = icmp eq ptr %2, null, !dbg !1406
  br i1 %cmp1.not.i.i, label %for.cond.i21.i.preheader, label %for.cond.i.i, !dbg !1407, !llvm.loop !1408

for.cond.i21.i.preheader:                         ; preds = %for.cond.i.i
  %next.i.i.le = getelementptr inbounds %struct._Image, ptr %p.0.i.i, i64 0, i32 69, !dbg !1405
  br label %for.cond.i21.i, !dbg !1410

for.cond.i21.i:                                   ; preds = %for.cond.i21.i.preheader, %for.cond.i21.i
  %p.0.i19.i = phi ptr [ %3, %for.cond.i21.i ], [ %call3, %for.cond.i21.i.preheader ], !dbg !1412
  call void @llvm.dbg.value(metadata ptr %p.0.i19.i, metadata !713, metadata !DIExpression()) #13, !dbg !1413
  %previous.i.i = getelementptr inbounds %struct._Image, ptr %p.0.i19.i, i64 0, i32 67, !dbg !1414
  %3 = load ptr, ptr %previous.i.i, align 8, !dbg !1414, !tbaa !719
  %cmp1.not.i20.i = icmp eq ptr %3, null, !dbg !1415
  br i1 %cmp1.not.i20.i, label %GetFirstImageInList.exit.i, label %for.cond.i21.i, !dbg !1410, !llvm.loop !1416

GetFirstImageInList.exit.i:                       ; preds = %for.cond.i21.i
  %previous.i.i.le = getelementptr inbounds %struct._Image, ptr %p.0.i19.i, i64 0, i32 67, !dbg !1414
  call void @llvm.dbg.value(metadata ptr %p.0.i19.i, metadata !650, metadata !DIExpression()) #13, !dbg !1390
  store ptr %p.0.i19.i, ptr %next.i.i.le, align 8, !dbg !1418, !tbaa !701
  store ptr %p.0.i.i, ptr %previous.i.i.le, align 8, !dbg !1419, !tbaa !719
  br label %AppendImageToList.exit, !dbg !1420

AppendImageToList.exit:                           ; preds = %if.end3.i, %for.body, %GetFirstImageInList.exit.i
  %duplicate_images.1 = phi ptr [ %duplicate_images.011, %for.body ], [ %duplicate_images.011, %GetFirstImageInList.exit.i ], [ %call3, %if.end3.i ], !dbg !1376
  %inc = add nuw nsw i64 %i.012, 1, !dbg !1421
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1375, metadata !DIExpression()), !dbg !1376
  %exitcond.not = icmp eq i64 %inc, %number_duplicates, !dbg !1384
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1387, !llvm.loop !1422

for.end:                                          ; preds = %AppendImageToList.exit, %if.end
  %duplicate_images.0.lcssa = phi ptr [ null, %if.end ], [ %duplicate_images.1, %AppendImageToList.exit ], !dbg !1424
  call void @llvm.dbg.value(metadata ptr %duplicate_images.0.lcssa, metadata !1374, metadata !DIExpression()), !dbg !1376
  ret ptr %duplicate_images.0.lcssa, !dbg !1425
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageFromList(ptr noundef %images, i64 noundef %index) local_unnamed_addr #0 !dbg !1426 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !1431, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %index, metadata !1432, metadata !DIExpression()), !dbg !1435
  %cmp = icmp eq ptr %images, null, !dbg !1436
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1438

if.end:                                           ; preds = %entry
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !1439
  %0 = load i32, ptr %debug, align 8, !dbg !1439, !tbaa !657
  %cmp1.not = icmp eq i32 %0, 0, !dbg !1441
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !1442

if.then2:                                         ; preds = %if.end
  %filename = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !1443
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 598, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1444
  br label %if.end3, !dbg !1445

if.end3:                                          ; preds = %if.then2, %if.end
  %cmp4 = icmp slt i64 %index, 0, !dbg !1446
  br i1 %cmp4, label %for.cond.i, label %for.cond.i36, !dbg !1448

for.cond.i:                                       ; preds = %if.end3, %for.cond.i
  %p.0.i = phi ptr [ %1, %for.cond.i ], [ %images, %if.end3 ], !dbg !1449
  call void @llvm.dbg.value(metadata ptr %p.0.i, metadata !696, metadata !DIExpression()), !dbg !1452
  %next.i = getelementptr inbounds %struct._Image, ptr %p.0.i, i64 0, i32 69, !dbg !1453
  %1 = load ptr, ptr %next.i, align 8, !dbg !1453, !tbaa !701
  %cmp1.not.i = icmp eq ptr %1, null, !dbg !1454
  br i1 %cmp1.not.i, label %for.body, label %for.cond.i, !dbg !1455, !llvm.loop !1456

for.body:                                         ; preds = %for.cond.i, %for.inc
  %i.046 = phi i64 [ %dec, %for.inc ], [ -1, %for.cond.i ]
  %p.045 = phi ptr [ %2, %for.inc ], [ %p.0.i, %for.cond.i ]
  call void @llvm.dbg.value(metadata ptr %p.045, metadata !1433, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %i.046, metadata !1434, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1435
  %cmp8 = icmp eq i64 %i.046, %index, !dbg !1458
  br i1 %cmp8, label %cleanup, label %for.inc, !dbg !1462

for.inc:                                          ; preds = %for.body
  %dec = add nsw i64 %i.046, -1, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1434, metadata !DIExpression()), !dbg !1435
  %previous = getelementptr inbounds %struct._Image, ptr %p.045, i64 0, i32 67, !dbg !1464
  %2 = load ptr, ptr %previous, align 8, !dbg !1464, !tbaa !719
  call void @llvm.dbg.value(metadata ptr %2, metadata !1433, metadata !DIExpression()), !dbg !1435
  %cmp7.not = icmp eq ptr %2, null, !dbg !1465
  br i1 %cmp7.not, label %cleanup, label %for.body, !dbg !1466, !llvm.loop !1467

for.cond.i36:                                     ; preds = %if.end3, %for.cond.i36
  %p.0.i34 = phi ptr [ %3, %for.cond.i36 ], [ %images, %if.end3 ], !dbg !1469
  call void @llvm.dbg.value(metadata ptr %p.0.i34, metadata !713, metadata !DIExpression()), !dbg !1472
  %previous.i = getelementptr inbounds %struct._Image, ptr %p.0.i34, i64 0, i32 67, !dbg !1473
  %3 = load ptr, ptr %previous.i, align 8, !dbg !1473, !tbaa !719
  %cmp1.not.i35 = icmp eq ptr %3, null, !dbg !1474
  br i1 %cmp1.not.i35, label %for.body14, label %for.cond.i36, !dbg !1475, !llvm.loop !1476

for.body14:                                       ; preds = %for.cond.i36, %for.inc18
  %i.142 = phi i64 [ %inc, %for.inc18 ], [ 0, %for.cond.i36 ]
  %p.141 = phi ptr [ %4, %for.inc18 ], [ %p.0.i34, %for.cond.i36 ]
  call void @llvm.dbg.value(metadata ptr %p.141, metadata !1433, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %i.142, metadata !1434, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1435
  %cmp15 = icmp eq i64 %i.142, %index, !dbg !1478
  br i1 %cmp15, label %cleanup, label %for.inc18, !dbg !1482

for.inc18:                                        ; preds = %for.body14
  %inc = add nuw nsw i64 %i.142, 1, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1434, metadata !DIExpression()), !dbg !1435
  %next = getelementptr inbounds %struct._Image, ptr %p.141, i64 0, i32 69, !dbg !1484
  %4 = load ptr, ptr %next, align 8, !dbg !1484, !tbaa !701
  call void @llvm.dbg.value(metadata ptr %4, metadata !1433, metadata !DIExpression()), !dbg !1435
  %cmp13.not = icmp eq ptr %4, null, !dbg !1485
  br i1 %cmp13.not, label %cleanup, label %for.body14, !dbg !1486, !llvm.loop !1487

cleanup:                                          ; preds = %for.inc18, %for.body14, %for.inc, %for.body, %entry
  %retval.0 = phi ptr [ null, %entry ], [ null, %for.inc ], [ %p.045, %for.body ], [ null, %for.inc18 ], [ %p.141, %for.body14 ], !dbg !1435
  ret ptr %retval.0, !dbg !1489
}

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i64 @GetImageIndexInList(ptr noundef readonly %images) local_unnamed_addr #3 !dbg !1490 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !1494, metadata !DIExpression()), !dbg !1496
  %cmp = icmp eq ptr %images, null, !dbg !1497
  br i1 %cmp, label %cleanup, label %for.cond, !dbg !1499

for.cond:                                         ; preds = %entry, %for.cond
  %images.addr.0 = phi ptr [ %0, %for.cond ], [ %images, %entry ]
  %i.0 = phi i64 [ %inc, %for.cond ], [ 0, %entry ], !dbg !1500
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1495, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata ptr %images.addr.0, metadata !1494, metadata !DIExpression()), !dbg !1496
  %previous = getelementptr inbounds %struct._Image, ptr %images.addr.0, i64 0, i32 67, !dbg !1502
  %0 = load ptr, ptr %previous, align 8, !dbg !1502, !tbaa !719
  %cmp1.not = icmp eq ptr %0, null, !dbg !1504
  call void @llvm.dbg.value(metadata ptr %0, metadata !1494, metadata !DIExpression()), !dbg !1496
  %inc = add nuw nsw i64 %i.0, 1, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1495, metadata !DIExpression()), !dbg !1496
  br i1 %cmp1.not, label %cleanup, label %for.cond, !dbg !1506, !llvm.loop !1507

cleanup:                                          ; preds = %for.cond, %entry
  %retval.0 = phi i64 [ -1, %entry ], [ %i.0, %for.cond ], !dbg !1496
  ret i64 %retval.0, !dbg !1509
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @GetPreviousImageInList(ptr noundef readonly %images) local_unnamed_addr #8 !dbg !1510 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !1512, metadata !DIExpression()), !dbg !1513
  %cmp = icmp eq ptr %images, null, !dbg !1514
  br i1 %cmp, label %return, label %if.end, !dbg !1516

if.end:                                           ; preds = %entry
  %previous = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 67, !dbg !1517
  %0 = load ptr, ptr %previous, align 8, !dbg !1517, !tbaa !719
  br label %return, !dbg !1518

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi ptr [ %0, %if.end ], [ null, %entry ], !dbg !1513
  ret ptr %retval.0, !dbg !1519
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ImageListToArray(ptr noundef %images, ptr noundef %exception) local_unnamed_addr #0 !dbg !1520 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !1524, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1525, metadata !DIExpression()), !dbg !1528
  %cmp = icmp eq ptr %images, null, !dbg !1529
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1531

if.end:                                           ; preds = %entry
  %debug = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 59, !dbg !1532
  %0 = load i32, ptr %debug, align 8, !dbg !1532, !tbaa !657
  %cmp1.not = icmp eq i32 %0, 0, !dbg !1534
  br i1 %cmp1.not, label %for.cond.i.i.preheader, label %if.end.i, !dbg !1535

if.end.i:                                         ; preds = %if.end
  %filename = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !1536
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 840, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1537
  %.pr = load i32, ptr %debug, align 8, !dbg !1538, !tbaa !657
  call void @llvm.dbg.value(metadata ptr %images, metadata !906, metadata !DIExpression()) #13, !dbg !1540
  %cmp1.not.i = icmp eq i32 %.pr, 0, !dbg !1541
  br i1 %cmp1.not.i, label %for.cond.i.i.preheader, label %if.then2.i, !dbg !1542

if.then2.i:                                       ; preds = %if.end.i
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 691, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1543
  br label %for.cond.i.i.preheader, !dbg !1544

for.cond.i.i.preheader:                           ; preds = %if.end, %if.then2.i, %if.end.i
  br label %for.cond.i.i, !dbg !1545

for.cond.i.i:                                     ; preds = %for.cond.i.i.preheader, %for.cond.i.i
  %p.0.i.i = phi ptr [ %1, %for.cond.i.i ], [ %images, %for.cond.i.i.preheader ], !dbg !1547
  call void @llvm.dbg.value(metadata ptr %p.0.i.i, metadata !696, metadata !DIExpression()) #13, !dbg !1548
  %next.i.i = getelementptr inbounds %struct._Image, ptr %p.0.i.i, i64 0, i32 69, !dbg !1549
  %1 = load ptr, ptr %next.i.i, align 8, !dbg !1549, !tbaa !701
  %cmp1.not.i.i = icmp eq ptr %1, null, !dbg !1550
  br i1 %cmp1.not.i.i, label %for.body.i, label %for.cond.i.i, !dbg !1545, !llvm.loop !1551

for.body.i:                                       ; preds = %for.cond.i.i, %for.body.i
  %i.014.i = phi i64 [ %inc.i, %for.body.i ], [ 0, %for.cond.i.i ]
  %images.addr.013.i = phi ptr [ %2, %for.body.i ], [ %p.0.i.i, %for.cond.i.i ]
  call void @llvm.dbg.value(metadata i64 %i.014.i, metadata !911, metadata !DIExpression()) #13, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %images.addr.013.i, metadata !906, metadata !DIExpression()) #13, !dbg !1540
  %inc.i = add nuw nsw i64 %i.014.i, 1, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !911, metadata !DIExpression()) #13, !dbg !1540
  %previous.i = getelementptr inbounds %struct._Image, ptr %images.addr.013.i, i64 0, i32 67, !dbg !1554
  %2 = load ptr, ptr %previous.i, align 8, !dbg !1554, !tbaa !719
  call void @llvm.dbg.value(metadata ptr %2, metadata !906, metadata !DIExpression()) #13, !dbg !1540
  %cmp5.not.i = icmp eq ptr %2, null, !dbg !1555
  br i1 %cmp5.not.i, label %GetImageListLength.exit, label %for.body.i, !dbg !1556, !llvm.loop !1557

GetImageListLength.exit:                          ; preds = %for.body.i
  %add = add nuw i64 %i.014.i, 2, !dbg !1559
  %call5 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #15, !dbg !1560
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1526, metadata !DIExpression()), !dbg !1528
  %cmp6 = icmp eq ptr %call5, null, !dbg !1561
  br i1 %cmp6, label %if.then7, label %for.cond.i, !dbg !1563

if.then7:                                         ; preds = %GetImageListLength.exit
  %filename8 = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 53, !dbg !1564
  %call10 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 845, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename8) #13, !dbg !1566
  br label %cleanup, !dbg !1567

for.cond.i:                                       ; preds = %GetImageListLength.exit, %for.cond.i
  %p.0.i = phi ptr [ %3, %for.cond.i ], [ %images, %GetImageListLength.exit ], !dbg !1568
  call void @llvm.dbg.value(metadata ptr %p.0.i, metadata !713, metadata !DIExpression()), !dbg !1570
  %previous.i29 = getelementptr inbounds %struct._Image, ptr %p.0.i, i64 0, i32 67, !dbg !1571
  %3 = load ptr, ptr %previous.i29, align 8, !dbg !1571, !tbaa !719
  %cmp1.not.i30 = icmp eq ptr %3, null, !dbg !1572
  br i1 %cmp1.not.i30, label %for.body, label %for.cond.i, !dbg !1573, !llvm.loop !1574

for.body:                                         ; preds = %for.cond.i, %for.body
  %i.035 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.i ]
  %images.addr.034 = phi ptr [ %4, %for.body ], [ %p.0.i, %for.cond.i ]
  call void @llvm.dbg.value(metadata i64 %i.035, metadata !1527, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata ptr %images.addr.034, metadata !1524, metadata !DIExpression()), !dbg !1528
  %inc = add nuw nsw i64 %i.035, 1, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1527, metadata !DIExpression()), !dbg !1528
  %arrayidx = getelementptr inbounds ptr, ptr %call5, i64 %i.035, !dbg !1579
  store ptr %images.addr.034, ptr %arrayidx, align 8, !dbg !1580, !tbaa !683
  %next = getelementptr inbounds %struct._Image, ptr %images.addr.034, i64 0, i32 69, !dbg !1581
  %4 = load ptr, ptr %next, align 8, !dbg !1581, !tbaa !701
  call void @llvm.dbg.value(metadata ptr %4, metadata !1524, metadata !DIExpression()), !dbg !1528
  %cmp13.not = icmp eq ptr %4, null, !dbg !1582
  br i1 %cmp13.not, label %for.end, label %for.body, !dbg !1583, !llvm.loop !1584

for.end:                                          ; preds = %for.body
  %arrayidx14 = getelementptr inbounds ptr, ptr %call5, i64 %inc, !dbg !1586
  store ptr null, ptr %arrayidx14, align 8, !dbg !1587, !tbaa !683
  br label %cleanup, !dbg !1588

cleanup:                                          ; preds = %entry, %for.end, %if.then7
  %retval.0 = phi ptr [ null, %if.then7 ], [ %call5, %for.end ], [ null, %entry ], !dbg !1528
  ret ptr %retval.0, !dbg !1589
}

; Function Attrs: nounwind uwtable
define dso_local void @InsertImageInList(ptr nocapture noundef %images, ptr noundef %insert) local_unnamed_addr #0 !dbg !1590 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !1594, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata ptr %insert, metadata !1595, metadata !DIExpression()), !dbg !1597
  %debug = getelementptr inbounds %struct._Image, ptr %insert, i64 0, i32 59, !dbg !1598
  %0 = load i32, ptr %debug, align 8, !dbg !1598, !tbaa !657
  %cmp.not = icmp eq i32 %0, 0, !dbg !1600
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1601

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %insert, i64 0, i32 53, !dbg !1602
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 891, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1603
  br label %if.end, !dbg !1604

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %images, align 8, !dbg !1605, !tbaa !683
  %cmp1 = icmp eq ptr %1, null, !dbg !1607
  br i1 %cmp1, label %cleanup, label %lor.lhs.false.i, !dbg !1608

lor.lhs.false.i:                                  ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %1, metadata !1609, metadata !DIExpression()), !dbg !1612
  %next.i = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 69, !dbg !1614
  %2 = load ptr, ptr %next.i, align 8, !dbg !1614, !tbaa !701
  %cmp1.i = icmp eq ptr %2, null, !dbg !1616
  br i1 %cmp1.i, label %if.end.i11, label %if.end.i, !dbg !1617

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @llvm.dbg.value(metadata ptr %2, metadata !1609, metadata !DIExpression()), !dbg !1612
  %previous.i = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 67, !dbg !1618
  %3 = load ptr, ptr %previous.i, align 8, !dbg !1618, !tbaa !719
  %next3.i = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 69, !dbg !1619
  store ptr null, ptr %next3.i, align 8, !dbg !1620, !tbaa !701
  store ptr null, ptr %previous.i, align 8, !dbg !1621, !tbaa !719
  br label %if.end.i11, !dbg !1622

if.end.i11:                                       ; preds = %if.end.i, %lor.lhs.false.i
  call void @llvm.dbg.value(metadata ptr %2, metadata !1596, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata ptr %images, metadata !647, metadata !DIExpression()) #13, !dbg !1623
  call void @llvm.dbg.value(metadata ptr %insert, metadata !648, metadata !DIExpression()) #13, !dbg !1623
  %4 = load i32, ptr %debug, align 8, !dbg !1625, !tbaa !657
  %cmp1.not.i = icmp eq i32 %4, 0, !dbg !1626
  br i1 %cmp1.not.i, label %if.end3.i, label %if.then2.i, !dbg !1627

if.then2.i:                                       ; preds = %if.end.i11
  %filename.i = getelementptr inbounds %struct._Image, ptr %insert, i64 0, i32 53, !dbg !1628
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #13, !dbg !1629
  br label %if.end3.i, !dbg !1630

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i11
  %5 = load ptr, ptr %images, align 8, !dbg !1631, !tbaa !683
  %cmp4.i = icmp eq ptr %5, null, !dbg !1632
  br i1 %cmp4.i, label %if.then5.i, label %for.cond.i.i, !dbg !1633

if.then5.i:                                       ; preds = %if.end3.i
  store ptr %insert, ptr %images, align 8, !dbg !1634, !tbaa !683
  br label %AppendImageToList.exit, !dbg !1635

for.cond.i.i:                                     ; preds = %if.end3.i, %for.cond.i.i
  %p.0.i.i = phi ptr [ %6, %for.cond.i.i ], [ %5, %if.end3.i ], !dbg !1636
  call void @llvm.dbg.value(metadata ptr %p.0.i.i, metadata !696, metadata !DIExpression()) #13, !dbg !1638
  %next.i.i = getelementptr inbounds %struct._Image, ptr %p.0.i.i, i64 0, i32 69, !dbg !1639
  %6 = load ptr, ptr %next.i.i, align 8, !dbg !1639, !tbaa !701
  %cmp1.not.i.i = icmp eq ptr %6, null, !dbg !1640
  br i1 %cmp1.not.i.i, label %for.cond.i21.i.preheader, label %for.cond.i.i, !dbg !1641, !llvm.loop !1642

for.cond.i21.i.preheader:                         ; preds = %for.cond.i.i
  %next.i.i.le = getelementptr inbounds %struct._Image, ptr %p.0.i.i, i64 0, i32 69, !dbg !1639
  br label %for.cond.i21.i, !dbg !1644

for.cond.i21.i:                                   ; preds = %for.cond.i21.i.preheader, %for.cond.i21.i
  %p.0.i19.i = phi ptr [ %7, %for.cond.i21.i ], [ %insert, %for.cond.i21.i.preheader ], !dbg !1646
  call void @llvm.dbg.value(metadata ptr %p.0.i19.i, metadata !713, metadata !DIExpression()) #13, !dbg !1647
  %previous.i.i = getelementptr inbounds %struct._Image, ptr %p.0.i19.i, i64 0, i32 67, !dbg !1648
  %7 = load ptr, ptr %previous.i.i, align 8, !dbg !1648, !tbaa !719
  %cmp1.not.i20.i = icmp eq ptr %7, null, !dbg !1649
  br i1 %cmp1.not.i20.i, label %GetFirstImageInList.exit.i, label %for.cond.i21.i, !dbg !1644, !llvm.loop !1650

GetFirstImageInList.exit.i:                       ; preds = %for.cond.i21.i
  %previous.i.i.le = getelementptr inbounds %struct._Image, ptr %p.0.i19.i, i64 0, i32 67, !dbg !1648
  call void @llvm.dbg.value(metadata ptr %p.0.i19.i, metadata !650, metadata !DIExpression()) #13, !dbg !1623
  store ptr %p.0.i19.i, ptr %next.i.i.le, align 8, !dbg !1652, !tbaa !701
  store ptr %p.0.i.i, ptr %previous.i.i.le, align 8, !dbg !1653, !tbaa !719
  br label %AppendImageToList.exit, !dbg !1654

AppendImageToList.exit:                           ; preds = %if.then5.i, %GetFirstImageInList.exit.i
  call void @llvm.dbg.value(metadata ptr %images, metadata !647, metadata !DIExpression()) #13, !dbg !1655
  call void @llvm.dbg.value(metadata ptr %2, metadata !648, metadata !DIExpression()) #13, !dbg !1655
  br i1 %cmp1.i, label %cleanup, label %if.end.i15, !dbg !1657

if.end.i15:                                       ; preds = %AppendImageToList.exit
  %debug.i13 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 59, !dbg !1658
  %8 = load i32, ptr %debug.i13, align 8, !dbg !1658, !tbaa !657
  %cmp1.not.i14 = icmp eq i32 %8, 0, !dbg !1659
  br i1 %cmp1.not.i14, label %if.end3.i20, label %if.then2.i18, !dbg !1660

if.then2.i18:                                     ; preds = %if.end.i15
  %filename.i16 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 53, !dbg !1661
  %call.i17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i16) #13, !dbg !1662
  br label %if.end3.i20, !dbg !1663

if.end3.i20:                                      ; preds = %if.then2.i18, %if.end.i15
  %9 = load ptr, ptr %images, align 8, !dbg !1664, !tbaa !683
  %cmp4.i19 = icmp eq ptr %9, null, !dbg !1665
  br i1 %cmp4.i19, label %if.then5.i21, label %for.cond.i.i25, !dbg !1666

if.then5.i21:                                     ; preds = %if.end3.i20
  store ptr %2, ptr %images, align 8, !dbg !1667, !tbaa !683
  br label %cleanup, !dbg !1668

for.cond.i.i25:                                   ; preds = %if.end3.i20, %for.cond.i.i25
  %p.0.i.i22 = phi ptr [ %10, %for.cond.i.i25 ], [ %9, %if.end3.i20 ], !dbg !1669
  call void @llvm.dbg.value(metadata ptr %p.0.i.i22, metadata !696, metadata !DIExpression()) #13, !dbg !1671
  %next.i.i23 = getelementptr inbounds %struct._Image, ptr %p.0.i.i22, i64 0, i32 69, !dbg !1672
  %10 = load ptr, ptr %next.i.i23, align 8, !dbg !1672, !tbaa !701
  %cmp1.not.i.i24 = icmp eq ptr %10, null, !dbg !1673
  br i1 %cmp1.not.i.i24, label %for.cond.i21.i31.preheader, label %for.cond.i.i25, !dbg !1674, !llvm.loop !1675

for.cond.i21.i31.preheader:                       ; preds = %for.cond.i.i25
  %next.i.i23.le = getelementptr inbounds %struct._Image, ptr %p.0.i.i22, i64 0, i32 69, !dbg !1672
  br label %for.cond.i21.i31, !dbg !1677

for.cond.i21.i31:                                 ; preds = %for.cond.i21.i31.preheader, %for.cond.i21.i31
  %p.0.i19.i28 = phi ptr [ %11, %for.cond.i21.i31 ], [ %2, %for.cond.i21.i31.preheader ], !dbg !1679
  call void @llvm.dbg.value(metadata ptr %p.0.i19.i28, metadata !713, metadata !DIExpression()) #13, !dbg !1680
  %previous.i.i29 = getelementptr inbounds %struct._Image, ptr %p.0.i19.i28, i64 0, i32 67, !dbg !1681
  %11 = load ptr, ptr %previous.i.i29, align 8, !dbg !1681, !tbaa !719
  %cmp1.not.i20.i30 = icmp eq ptr %11, null, !dbg !1682
  br i1 %cmp1.not.i20.i30, label %GetFirstImageInList.exit.i33, label %for.cond.i21.i31, !dbg !1677, !llvm.loop !1683

GetFirstImageInList.exit.i33:                     ; preds = %for.cond.i21.i31
  %previous.i.i29.le = getelementptr inbounds %struct._Image, ptr %p.0.i19.i28, i64 0, i32 67, !dbg !1681
  call void @llvm.dbg.value(metadata ptr %p.0.i19.i28, metadata !650, metadata !DIExpression()) #13, !dbg !1655
  store ptr %p.0.i19.i28, ptr %next.i.i23.le, align 8, !dbg !1685, !tbaa !701
  store ptr %p.0.i.i22, ptr %previous.i.i29.le, align 8, !dbg !1686, !tbaa !719
  br label %cleanup, !dbg !1687

cleanup:                                          ; preds = %GetFirstImageInList.exit.i33, %if.then5.i21, %AppendImageToList.exit, %if.end
  ret void, !dbg !1688
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local ptr @SplitImageList(ptr noundef readonly %images) local_unnamed_addr #9 !dbg !1610 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !1609, metadata !DIExpression()), !dbg !1689
  %cmp = icmp eq ptr %images, null, !dbg !1690
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !1691

lor.lhs.false:                                    ; preds = %entry
  %next = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 69, !dbg !1692
  %0 = load ptr, ptr %next, align 8, !dbg !1692, !tbaa !701
  %cmp1 = icmp eq ptr %0, null, !dbg !1693
  br i1 %cmp1, label %return, label %if.end, !dbg !1694

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata ptr %0, metadata !1609, metadata !DIExpression()), !dbg !1689
  %previous = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 67, !dbg !1695
  %1 = load ptr, ptr %previous, align 8, !dbg !1695, !tbaa !719
  %next3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 69, !dbg !1696
  store ptr null, ptr %next3, align 8, !dbg !1697, !tbaa !701
  store ptr null, ptr %previous, align 8, !dbg !1698, !tbaa !719
  br label %return, !dbg !1699

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi ptr [ %0, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], !dbg !1689
  ret ptr %retval.0, !dbg !1700
}

; Function Attrs: nounwind uwtable
define dso_local void @PrependImageToList(ptr nocapture noundef readonly %images, ptr noundef %image) local_unnamed_addr #0 !dbg !1701 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !1703, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata ptr %image, metadata !1704, metadata !DIExpression()), !dbg !1705
  %0 = load ptr, ptr %images, align 8, !dbg !1706, !tbaa !683
  call void @llvm.dbg.value(metadata ptr undef, metadata !647, metadata !DIExpression()) #13, !dbg !1707
  call void @llvm.dbg.value(metadata ptr %0, metadata !648, metadata !DIExpression()) #13, !dbg !1707
  %cmp.i = icmp eq ptr %0, null, !dbg !1709
  br i1 %cmp.i, label %AppendImageToList.exit, label %if.end.i, !dbg !1710

if.end.i:                                         ; preds = %entry
  %debug.i = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59, !dbg !1711
  %1 = load i32, ptr %debug.i, align 8, !dbg !1711, !tbaa !657
  %cmp1.not.i = icmp eq i32 %1, 0, !dbg !1712
  br i1 %cmp1.not.i, label %if.end3.i, label %if.then2.i, !dbg !1713

if.then2.i:                                       ; preds = %if.end.i
  %filename.i = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53, !dbg !1714
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #13, !dbg !1715
  br label %if.end3.i, !dbg !1716

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i
  %cmp4.i = icmp eq ptr %image, null, !dbg !1717
  br i1 %cmp4.i, label %AppendImageToList.exit, label %for.cond.i.i, !dbg !1718

for.cond.i.i:                                     ; preds = %if.end3.i, %for.cond.i.i
  %p.0.i.i = phi ptr [ %2, %for.cond.i.i ], [ %image, %if.end3.i ], !dbg !1719
  call void @llvm.dbg.value(metadata ptr %p.0.i.i, metadata !696, metadata !DIExpression()) #13, !dbg !1721
  %next.i.i = getelementptr inbounds %struct._Image, ptr %p.0.i.i, i64 0, i32 69, !dbg !1722
  %2 = load ptr, ptr %next.i.i, align 8, !dbg !1722, !tbaa !701
  %cmp1.not.i.i = icmp eq ptr %2, null, !dbg !1723
  br i1 %cmp1.not.i.i, label %for.cond.i21.i.preheader, label %for.cond.i.i, !dbg !1724, !llvm.loop !1725

for.cond.i21.i.preheader:                         ; preds = %for.cond.i.i
  %next.i.i.le = getelementptr inbounds %struct._Image, ptr %p.0.i.i, i64 0, i32 69, !dbg !1722
  br label %for.cond.i21.i, !dbg !1727

for.cond.i21.i:                                   ; preds = %for.cond.i21.i.preheader, %for.cond.i21.i
  %p.0.i19.i = phi ptr [ %3, %for.cond.i21.i ], [ %0, %for.cond.i21.i.preheader ], !dbg !1729
  call void @llvm.dbg.value(metadata ptr %p.0.i19.i, metadata !713, metadata !DIExpression()) #13, !dbg !1730
  %previous.i.i = getelementptr inbounds %struct._Image, ptr %p.0.i19.i, i64 0, i32 67, !dbg !1731
  %3 = load ptr, ptr %previous.i.i, align 8, !dbg !1731, !tbaa !719
  %cmp1.not.i20.i = icmp eq ptr %3, null, !dbg !1732
  br i1 %cmp1.not.i20.i, label %GetFirstImageInList.exit.i, label %for.cond.i21.i, !dbg !1727, !llvm.loop !1733

GetFirstImageInList.exit.i:                       ; preds = %for.cond.i21.i
  %previous.i.i.le = getelementptr inbounds %struct._Image, ptr %p.0.i19.i, i64 0, i32 67, !dbg !1731
  call void @llvm.dbg.value(metadata ptr %p.0.i19.i, metadata !650, metadata !DIExpression()) #13, !dbg !1707
  store ptr %p.0.i19.i, ptr %next.i.i.le, align 8, !dbg !1735, !tbaa !701
  store ptr %p.0.i.i, ptr %previous.i.i.le, align 8, !dbg !1736, !tbaa !719
  br label %AppendImageToList.exit, !dbg !1737

AppendImageToList.exit:                           ; preds = %if.end3.i, %entry, %GetFirstImageInList.exit.i
  ret void, !dbg !1738
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveFirstImageFromList(ptr nocapture noundef %images) local_unnamed_addr #0 !dbg !1739 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !1741, metadata !DIExpression()), !dbg !1743
  %0 = load ptr, ptr %images, align 8, !dbg !1744, !tbaa !683
  %cmp = icmp eq ptr %0, null, !dbg !1746
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1747

if.end:                                           ; preds = %entry
  %debug = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59, !dbg !1748
  %1 = load i32, ptr %debug, align 8, !dbg !1748, !tbaa !657
  %cmp1.not = icmp eq i32 %1, 0, !dbg !1750
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !1751

if.then2:                                         ; preds = %if.end
  %filename = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53, !dbg !1752
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1047, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1753
  %.pre = load ptr, ptr %images, align 8, !dbg !1754, !tbaa !683
  br label %if.end3, !dbg !1755

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = phi ptr [ %.pre, %if.then2 ], [ %0, %if.end ], !dbg !1754
  call void @llvm.dbg.value(metadata ptr %2, metadata !1742, metadata !DIExpression()), !dbg !1743
  br label %while.cond, !dbg !1756

while.cond:                                       ; preds = %while.cond, %if.end3
  %image.0 = phi ptr [ %2, %if.end3 ], [ %3, %while.cond ], !dbg !1743
  call void @llvm.dbg.value(metadata ptr %image.0, metadata !1742, metadata !DIExpression()), !dbg !1743
  %previous = getelementptr inbounds %struct._Image, ptr %image.0, i64 0, i32 67, !dbg !1757
  %3 = load ptr, ptr %previous, align 8, !dbg !1757, !tbaa !719
  %cmp4.not = icmp eq ptr %3, null, !dbg !1758
  br i1 %cmp4.not, label %while.end, label %while.cond, !dbg !1756, !llvm.loop !1759

while.end:                                        ; preds = %while.cond
  %cmp6 = icmp eq ptr %image.0, %2, !dbg !1761
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1763

if.then7:                                         ; preds = %while.end
  %next = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 69, !dbg !1764
  %4 = load ptr, ptr %next, align 8, !dbg !1764, !tbaa !701
  store ptr %4, ptr %images, align 8, !dbg !1765, !tbaa !683
  br label %if.end8, !dbg !1766

if.end8:                                          ; preds = %if.then7, %while.end
  %next9 = getelementptr inbounds %struct._Image, ptr %image.0, i64 0, i32 69, !dbg !1767
  %5 = load ptr, ptr %next9, align 8, !dbg !1767, !tbaa !701
  %cmp10.not = icmp eq ptr %5, null, !dbg !1769
  br i1 %cmp10.not, label %cleanup, label %if.then11, !dbg !1770

if.then11:                                        ; preds = %if.end8
  %previous13 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 67, !dbg !1771
  store ptr null, ptr %previous13, align 8, !dbg !1773, !tbaa !719
  store ptr null, ptr %next9, align 8, !dbg !1774, !tbaa !701
  br label %cleanup, !dbg !1775

cleanup:                                          ; preds = %if.end8, %if.then11, %entry
  %retval.0 = phi ptr [ null, %entry ], [ %image.0, %if.then11 ], [ %image.0, %if.end8 ], !dbg !1743
  ret ptr %retval.0, !dbg !1776
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveLastImageFromList(ptr nocapture noundef %images) local_unnamed_addr #0 !dbg !1777 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !1779, metadata !DIExpression()), !dbg !1781
  %0 = load ptr, ptr %images, align 8, !dbg !1782, !tbaa !683
  %cmp = icmp eq ptr %0, null, !dbg !1784
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1785

if.end:                                           ; preds = %entry
  %debug = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59, !dbg !1786
  %1 = load i32, ptr %debug, align 8, !dbg !1786, !tbaa !657
  %cmp1.not = icmp eq i32 %1, 0, !dbg !1788
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !1789

if.then2:                                         ; preds = %if.end
  %filename = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53, !dbg !1790
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1098, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1791
  %.pre = load ptr, ptr %images, align 8, !dbg !1792, !tbaa !683
  br label %if.end3, !dbg !1793

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = phi ptr [ %.pre, %if.then2 ], [ %0, %if.end ], !dbg !1792
  call void @llvm.dbg.value(metadata ptr %2, metadata !1780, metadata !DIExpression()), !dbg !1781
  br label %while.cond, !dbg !1794

while.cond:                                       ; preds = %while.cond, %if.end3
  %image.0 = phi ptr [ %2, %if.end3 ], [ %3, %while.cond ], !dbg !1781
  call void @llvm.dbg.value(metadata ptr %image.0, metadata !1780, metadata !DIExpression()), !dbg !1781
  %next = getelementptr inbounds %struct._Image, ptr %image.0, i64 0, i32 69, !dbg !1795
  %3 = load ptr, ptr %next, align 8, !dbg !1795, !tbaa !701
  %cmp4.not = icmp eq ptr %3, null, !dbg !1796
  br i1 %cmp4.not, label %while.end, label %while.cond, !dbg !1794, !llvm.loop !1797

while.end:                                        ; preds = %while.cond
  %cmp6 = icmp eq ptr %image.0, %2, !dbg !1799
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1801

if.then7:                                         ; preds = %while.end
  %previous = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 67, !dbg !1802
  %4 = load ptr, ptr %previous, align 8, !dbg !1802, !tbaa !719
  store ptr %4, ptr %images, align 8, !dbg !1803, !tbaa !683
  br label %if.end8, !dbg !1804

if.end8:                                          ; preds = %if.then7, %while.end
  %previous9 = getelementptr inbounds %struct._Image, ptr %image.0, i64 0, i32 67, !dbg !1805
  %5 = load ptr, ptr %previous9, align 8, !dbg !1805, !tbaa !719
  %cmp10.not = icmp eq ptr %5, null, !dbg !1807
  br i1 %cmp10.not, label %cleanup, label %if.then11, !dbg !1808

if.then11:                                        ; preds = %if.end8
  %next13 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 69, !dbg !1809
  store ptr null, ptr %next13, align 8, !dbg !1811, !tbaa !701
  store ptr null, ptr %previous9, align 8, !dbg !1812, !tbaa !719
  br label %cleanup, !dbg !1813

cleanup:                                          ; preds = %if.end8, %if.then11, %entry
  %retval.0 = phi ptr [ null, %entry ], [ %image.0, %if.then11 ], [ %image.0, %if.end8 ], !dbg !1781
  ret ptr %retval.0, !dbg !1814
}

; Function Attrs: nounwind uwtable
define dso_local void @ReplaceImageInList(ptr nocapture noundef %images, ptr noundef %replace) local_unnamed_addr #0 !dbg !1815 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !1817, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata ptr %replace, metadata !1818, metadata !DIExpression()), !dbg !1819
  %debug = getelementptr inbounds %struct._Image, ptr %replace, i64 0, i32 59, !dbg !1820
  %0 = load i32, ptr %debug, align 8, !dbg !1820, !tbaa !657
  %cmp.not = icmp eq i32 %0, 0, !dbg !1822
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1823

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %replace, i64 0, i32 53, !dbg !1824
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1147, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1825
  br label %if.end, !dbg !1826

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %images, align 8, !dbg !1827, !tbaa !683
  %cmp1 = icmp eq ptr %1, null, !dbg !1829
  br i1 %cmp1, label %return, label %for.cond.i, !dbg !1830

for.cond.i:                                       ; preds = %if.end, %for.cond.i
  %p.0.i = phi ptr [ %2, %for.cond.i ], [ %replace, %if.end ], !dbg !1831
  call void @llvm.dbg.value(metadata ptr %p.0.i, metadata !696, metadata !DIExpression()), !dbg !1833
  %next.i = getelementptr inbounds %struct._Image, ptr %p.0.i, i64 0, i32 69, !dbg !1834
  %2 = load ptr, ptr %next.i, align 8, !dbg !1834, !tbaa !701
  %cmp1.not.i = icmp eq ptr %2, null, !dbg !1835
  br i1 %cmp1.not.i, label %GetLastImageInList.exit, label %for.cond.i, !dbg !1836, !llvm.loop !1837

GetLastImageInList.exit:                          ; preds = %for.cond.i
  %next.i.le = getelementptr inbounds %struct._Image, ptr %p.0.i, i64 0, i32 69, !dbg !1834
  call void @llvm.dbg.value(metadata ptr %p.0.i, metadata !1818, metadata !DIExpression()), !dbg !1819
  %next = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 69, !dbg !1839
  %3 = load ptr, ptr %next, align 8, !dbg !1839, !tbaa !701
  store ptr %3, ptr %next.i.le, align 8, !dbg !1840, !tbaa !701
  %cmp7.not = icmp eq ptr %3, null, !dbg !1841
  br i1 %cmp7.not, label %for.cond.i41.preheader, label %if.then8, !dbg !1843

if.then8:                                         ; preds = %GetLastImageInList.exit
  %previous = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 67, !dbg !1844
  store ptr %p.0.i, ptr %previous, align 8, !dbg !1845, !tbaa !719
  br label %for.cond.i41.preheader, !dbg !1846

for.cond.i41.preheader:                           ; preds = %if.then8, %GetLastImageInList.exit
  br label %for.cond.i41, !dbg !1847

for.cond.i41:                                     ; preds = %for.cond.i41.preheader, %for.cond.i41
  %p.0.i39 = phi ptr [ %4, %for.cond.i41 ], [ %p.0.i, %for.cond.i41.preheader ], !dbg !1849
  call void @llvm.dbg.value(metadata ptr %p.0.i39, metadata !713, metadata !DIExpression()), !dbg !1850
  %previous.i = getelementptr inbounds %struct._Image, ptr %p.0.i39, i64 0, i32 67, !dbg !1851
  %4 = load ptr, ptr %previous.i, align 8, !dbg !1851, !tbaa !719
  %cmp1.not.i40 = icmp eq ptr %4, null, !dbg !1852
  br i1 %cmp1.not.i40, label %GetFirstImageInList.exit, label %for.cond.i41, !dbg !1847, !llvm.loop !1853

GetFirstImageInList.exit:                         ; preds = %for.cond.i41
  %previous.i.le = getelementptr inbounds %struct._Image, ptr %p.0.i39, i64 0, i32 67, !dbg !1851
  call void @llvm.dbg.value(metadata ptr %p.0.i39, metadata !1818, metadata !DIExpression()), !dbg !1819
  %5 = load ptr, ptr %images, align 8, !dbg !1855, !tbaa !683
  %previous12 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 67, !dbg !1856
  %6 = load ptr, ptr %previous12, align 8, !dbg !1856, !tbaa !719
  store ptr %6, ptr %previous.i.le, align 8, !dbg !1857, !tbaa !719
  %cmp15.not = icmp eq ptr %6, null, !dbg !1858
  br i1 %cmp15.not, label %if.end19, label %if.then16, !dbg !1860

if.then16:                                        ; preds = %GetFirstImageInList.exit
  %next18 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 69, !dbg !1861
  store ptr %p.0.i39, ptr %next18, align 8, !dbg !1862, !tbaa !701
  br label %if.end19, !dbg !1863

if.end19:                                         ; preds = %if.then16, %GetFirstImageInList.exit
  %7 = load ptr, ptr %images, align 8, !dbg !1864, !tbaa !683
  %call20 = tail call ptr @DestroyImage(ptr noundef %7) #13, !dbg !1865
  store ptr %p.0.i39, ptr %images, align 8, !dbg !1866, !tbaa !683
  br label %return, !dbg !1867

return:                                           ; preds = %if.end, %if.end19
  ret void, !dbg !1867
}

; Function Attrs: nounwind uwtable
define dso_local void @ReplaceImageInListReturnLast(ptr nocapture noundef %images, ptr noundef %replace) local_unnamed_addr #0 !dbg !1868 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !1870, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata ptr %replace, metadata !1871, metadata !DIExpression()), !dbg !1872
  %debug = getelementptr inbounds %struct._Image, ptr %replace, i64 0, i32 59, !dbg !1873
  %0 = load i32, ptr %debug, align 8, !dbg !1873, !tbaa !657
  %cmp.not = icmp eq i32 %0, 0, !dbg !1875
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1876

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %replace, i64 0, i32 53, !dbg !1877
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1205, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1878
  br label %if.end, !dbg !1879

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %images, align 8, !dbg !1880, !tbaa !683
  %cmp1 = icmp eq ptr %1, null, !dbg !1882
  br i1 %cmp1, label %return, label %for.cond.i, !dbg !1883

for.cond.i:                                       ; preds = %if.end, %for.cond.i
  %p.0.i = phi ptr [ %2, %for.cond.i ], [ %replace, %if.end ], !dbg !1884
  call void @llvm.dbg.value(metadata ptr %p.0.i, metadata !713, metadata !DIExpression()), !dbg !1886
  %previous.i = getelementptr inbounds %struct._Image, ptr %p.0.i, i64 0, i32 67, !dbg !1887
  %2 = load ptr, ptr %previous.i, align 8, !dbg !1887, !tbaa !719
  %cmp1.not.i = icmp eq ptr %2, null, !dbg !1888
  br i1 %cmp1.not.i, label %GetFirstImageInList.exit, label %for.cond.i, !dbg !1889, !llvm.loop !1890

GetFirstImageInList.exit:                         ; preds = %for.cond.i
  %previous.i.le = getelementptr inbounds %struct._Image, ptr %p.0.i, i64 0, i32 67, !dbg !1887
  call void @llvm.dbg.value(metadata ptr %p.0.i, metadata !1871, metadata !DIExpression()), !dbg !1872
  %previous = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 67, !dbg !1892
  %3 = load ptr, ptr %previous, align 8, !dbg !1892, !tbaa !719
  store ptr %3, ptr %previous.i.le, align 8, !dbg !1893, !tbaa !719
  %cmp7.not = icmp eq ptr %3, null, !dbg !1894
  br i1 %cmp7.not, label %for.cond.i41.preheader, label %if.then8, !dbg !1896

if.then8:                                         ; preds = %GetFirstImageInList.exit
  %next = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 69, !dbg !1897
  store ptr %p.0.i, ptr %next, align 8, !dbg !1898, !tbaa !701
  br label %for.cond.i41.preheader, !dbg !1899

for.cond.i41.preheader:                           ; preds = %if.then8, %GetFirstImageInList.exit
  br label %for.cond.i41, !dbg !1900

for.cond.i41:                                     ; preds = %for.cond.i41.preheader, %for.cond.i41
  %p.0.i39 = phi ptr [ %4, %for.cond.i41 ], [ %p.0.i, %for.cond.i41.preheader ], !dbg !1902
  call void @llvm.dbg.value(metadata ptr %p.0.i39, metadata !696, metadata !DIExpression()), !dbg !1903
  %next.i = getelementptr inbounds %struct._Image, ptr %p.0.i39, i64 0, i32 69, !dbg !1904
  %4 = load ptr, ptr %next.i, align 8, !dbg !1904, !tbaa !701
  %cmp1.not.i40 = icmp eq ptr %4, null, !dbg !1905
  br i1 %cmp1.not.i40, label %GetLastImageInList.exit, label %for.cond.i41, !dbg !1900, !llvm.loop !1906

GetLastImageInList.exit:                          ; preds = %for.cond.i41
  %next.i.le = getelementptr inbounds %struct._Image, ptr %p.0.i39, i64 0, i32 69, !dbg !1904
  call void @llvm.dbg.value(metadata ptr %p.0.i39, metadata !1871, metadata !DIExpression()), !dbg !1872
  %5 = load ptr, ptr %images, align 8, !dbg !1908, !tbaa !683
  %next12 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 69, !dbg !1909
  %6 = load ptr, ptr %next12, align 8, !dbg !1909, !tbaa !701
  store ptr %6, ptr %next.i.le, align 8, !dbg !1910, !tbaa !701
  %cmp15.not = icmp eq ptr %6, null, !dbg !1911
  br i1 %cmp15.not, label %if.end19, label %if.then16, !dbg !1913

if.then16:                                        ; preds = %GetLastImageInList.exit
  %previous18 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 67, !dbg !1914
  store ptr %p.0.i39, ptr %previous18, align 8, !dbg !1915, !tbaa !719
  br label %if.end19, !dbg !1916

if.end19:                                         ; preds = %if.then16, %GetLastImageInList.exit
  %7 = load ptr, ptr %images, align 8, !dbg !1917, !tbaa !683
  %call20 = tail call ptr @DestroyImage(ptr noundef %7) #13, !dbg !1918
  store ptr %p.0.i39, ptr %images, align 8, !dbg !1919, !tbaa !683
  br label %return, !dbg !1920

return:                                           ; preds = %if.end, %if.end19
  ret void, !dbg !1920
}

; Function Attrs: nounwind uwtable
define dso_local void @ReverseImageList(ptr nocapture noundef %images) local_unnamed_addr #0 !dbg !1921 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !1923, metadata !DIExpression()), !dbg !1926
  %0 = load ptr, ptr %images, align 8, !dbg !1927, !tbaa !683
  %cmp = icmp eq ptr %0, null, !dbg !1929
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1930

if.end:                                           ; preds = %entry
  %debug = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59, !dbg !1931
  %1 = load i32, ptr %debug, align 8, !dbg !1931, !tbaa !657
  %cmp1.not = icmp eq i32 %1, 0, !dbg !1933
  br i1 %cmp1.not, label %for.cond.preheader, label %if.then2, !dbg !1934

if.then2:                                         ; preds = %if.end
  %filename = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53, !dbg !1935
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1263, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1936
  %.pre = load ptr, ptr %images, align 8, !dbg !1937, !tbaa !683
  br label %for.cond.preheader, !dbg !1939

for.cond.preheader:                               ; preds = %if.then2, %if.end
  %p.0.ph = phi ptr [ %0, %if.end ], [ %.pre, %if.then2 ]
  br label %for.cond, !dbg !1940

for.cond:                                         ; preds = %for.cond.preheader, %for.cond
  %p.0 = phi ptr [ %2, %for.cond ], [ %p.0.ph, %for.cond.preheader ], !dbg !1941
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !1925, metadata !DIExpression()), !dbg !1926
  %next4 = getelementptr inbounds %struct._Image, ptr %p.0, i64 0, i32 69, !dbg !1942
  %2 = load ptr, ptr %next4, align 8, !dbg !1942, !tbaa !701
  %cmp5.not = icmp eq ptr %2, null, !dbg !1944
  br i1 %cmp5.not, label %for.body9.preheader, label %for.cond, !dbg !1940, !llvm.loop !1945

for.body9.preheader:                              ; preds = %for.cond
  store ptr %p.0, ptr %images, align 8, !dbg !1947, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !1925, metadata !DIExpression()), !dbg !1926
  br label %for.body9, !dbg !1948

for.body9:                                        ; preds = %for.body9.preheader, %for.body9
  %p.131 = phi ptr [ %4, %for.body9 ], [ %p.0, %for.body9.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.131, metadata !1925, metadata !DIExpression()), !dbg !1926
  %next10 = getelementptr inbounds %struct._Image, ptr %p.131, i64 0, i32 69, !dbg !1950
  %3 = load ptr, ptr %next10, align 8, !dbg !1950, !tbaa !701
  call void @llvm.dbg.value(metadata ptr %3, metadata !1924, metadata !DIExpression()), !dbg !1926
  %previous = getelementptr inbounds %struct._Image, ptr %p.131, i64 0, i32 67, !dbg !1953
  %4 = load ptr, ptr %previous, align 8, !dbg !1953, !tbaa !719
  store ptr %4, ptr %next10, align 8, !dbg !1954, !tbaa !701
  store ptr %3, ptr %previous, align 8, !dbg !1955, !tbaa !719
  call void @llvm.dbg.value(metadata ptr %4, metadata !1925, metadata !DIExpression()), !dbg !1926
  %cmp8.not = icmp eq ptr %4, null, !dbg !1956
  br i1 %cmp8.not, label %cleanup, label %for.body9, !dbg !1948, !llvm.loop !1957

cleanup:                                          ; preds = %for.body9, %entry
  ret void, !dbg !1959
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SpliceImageIntoList(ptr nocapture noundef %images, i64 noundef %length, ptr noundef %splice) local_unnamed_addr #0 !dbg !1960 {
entry:
  %split = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %images, metadata !1964, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %length, metadata !1965, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata ptr %splice, metadata !1966, metadata !DIExpression()), !dbg !1970
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %split), !dbg !1971
  %0 = load ptr, ptr %images, align 8, !dbg !1972, !tbaa !683
  %cmp = icmp eq ptr %0, null, !dbg !1974
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1975

if.end:                                           ; preds = %entry
  %debug = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59, !dbg !1976
  %1 = load i32, ptr %debug, align 8, !dbg !1976, !tbaa !657
  %cmp1.not = icmp eq i32 %1, 0, !dbg !1978
  br i1 %cmp1.not, label %lor.lhs.false.i, label %if.end3, !dbg !1979

if.end3:                                          ; preds = %if.end
  %filename = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53, !dbg !1980
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1320, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #13, !dbg !1981
  %.pre = load ptr, ptr %images, align 8, !dbg !1982, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %.pre, metadata !1609, metadata !DIExpression()), !dbg !1983
  %cmp.i = icmp eq ptr %.pre, null, !dbg !1985
  br i1 %cmp.i, label %SplitImageList.exit, label %lor.lhs.false.i, !dbg !1986

lor.lhs.false.i:                                  ; preds = %if.end, %if.end3
  %2 = phi ptr [ %.pre, %if.end3 ], [ %0, %if.end ]
  %next.i = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 69, !dbg !1987
  %3 = load ptr, ptr %next.i, align 8, !dbg !1987, !tbaa !701
  %cmp1.i = icmp eq ptr %3, null, !dbg !1988
  br i1 %cmp1.i, label %SplitImageList.exit, label %if.end.i, !dbg !1989

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @llvm.dbg.value(metadata ptr %3, metadata !1609, metadata !DIExpression()), !dbg !1983
  %previous.i = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 67, !dbg !1990
  %4 = load ptr, ptr %previous.i, align 8, !dbg !1990, !tbaa !719
  %next3.i = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 69, !dbg !1991
  store ptr null, ptr %next3.i, align 8, !dbg !1992, !tbaa !701
  store ptr null, ptr %previous.i, align 8, !dbg !1993, !tbaa !719
  br label %SplitImageList.exit, !dbg !1994

SplitImageList.exit:                              ; preds = %if.end3, %lor.lhs.false.i, %if.end.i
  %split.0.split.0.83 = phi ptr [ %3, %if.end.i ], [ null, %lor.lhs.false.i ], [ null, %if.end3 ], !dbg !1983
  call void @llvm.dbg.value(metadata ptr %split.0.split.0.83, metadata !1968, metadata !DIExpression()), !dbg !1970
  store ptr %split.0.split.0.83, ptr %split, align 8, !dbg !1995, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %images, metadata !647, metadata !DIExpression()) #13, !dbg !1996
  call void @llvm.dbg.value(metadata ptr %splice, metadata !648, metadata !DIExpression()) #13, !dbg !1996
  %cmp.i16 = icmp eq ptr %splice, null, !dbg !1998
  br i1 %cmp.i16, label %AppendImageToList.exit, label %if.end.i17, !dbg !1999

if.end.i17:                                       ; preds = %SplitImageList.exit
  %debug.i = getelementptr inbounds %struct._Image, ptr %splice, i64 0, i32 59, !dbg !2000
  %5 = load i32, ptr %debug.i, align 8, !dbg !2000, !tbaa !657
  %cmp1.not.i = icmp eq i32 %5, 0, !dbg !2001
  br i1 %cmp1.not.i, label %if.end3.i, label %if.then2.i, !dbg !2002

if.then2.i:                                       ; preds = %if.end.i17
  %filename.i = getelementptr inbounds %struct._Image, ptr %splice, i64 0, i32 53, !dbg !2003
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #13, !dbg !2004
  br label %if.end3.i, !dbg !2005

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i17
  %6 = load ptr, ptr %images, align 8, !dbg !2006, !tbaa !683
  %cmp4.i = icmp eq ptr %6, null, !dbg !2007
  br i1 %cmp4.i, label %if.then5.i, label %for.cond.i.i, !dbg !2008

if.then5.i:                                       ; preds = %if.end3.i
  store ptr %splice, ptr %images, align 8, !dbg !2009, !tbaa !683
  br label %AppendImageToList.exit, !dbg !2010

for.cond.i.i:                                     ; preds = %if.end3.i, %for.cond.i.i
  %p.0.i.i = phi ptr [ %7, %for.cond.i.i ], [ %6, %if.end3.i ], !dbg !2011
  call void @llvm.dbg.value(metadata ptr %p.0.i.i, metadata !696, metadata !DIExpression()) #13, !dbg !2013
  %next.i.i = getelementptr inbounds %struct._Image, ptr %p.0.i.i, i64 0, i32 69, !dbg !2014
  %7 = load ptr, ptr %next.i.i, align 8, !dbg !2014, !tbaa !701
  %cmp1.not.i.i = icmp eq ptr %7, null, !dbg !2015
  br i1 %cmp1.not.i.i, label %for.cond.i21.i.preheader, label %for.cond.i.i, !dbg !2016, !llvm.loop !2017

for.cond.i21.i.preheader:                         ; preds = %for.cond.i.i
  %next.i.i.le = getelementptr inbounds %struct._Image, ptr %p.0.i.i, i64 0, i32 69, !dbg !2014
  br label %for.cond.i21.i, !dbg !2019

for.cond.i21.i:                                   ; preds = %for.cond.i21.i.preheader, %for.cond.i21.i
  %p.0.i19.i = phi ptr [ %8, %for.cond.i21.i ], [ %splice, %for.cond.i21.i.preheader ], !dbg !2021
  call void @llvm.dbg.value(metadata ptr %p.0.i19.i, metadata !713, metadata !DIExpression()) #13, !dbg !2022
  %previous.i.i = getelementptr inbounds %struct._Image, ptr %p.0.i19.i, i64 0, i32 67, !dbg !2023
  %8 = load ptr, ptr %previous.i.i, align 8, !dbg !2023, !tbaa !719
  %cmp1.not.i20.i = icmp eq ptr %8, null, !dbg !2024
  br i1 %cmp1.not.i20.i, label %GetFirstImageInList.exit.i, label %for.cond.i21.i, !dbg !2019, !llvm.loop !2025

GetFirstImageInList.exit.i:                       ; preds = %for.cond.i21.i
  %previous.i.i.le = getelementptr inbounds %struct._Image, ptr %p.0.i19.i, i64 0, i32 67, !dbg !2023
  call void @llvm.dbg.value(metadata ptr %p.0.i19.i, metadata !650, metadata !DIExpression()) #13, !dbg !1996
  store ptr %p.0.i19.i, ptr %next.i.i.le, align 8, !dbg !2027, !tbaa !701
  store ptr %p.0.i.i, ptr %previous.i.i.le, align 8, !dbg !2028, !tbaa !719
  br label %AppendImageToList.exit, !dbg !2029

AppendImageToList.exit:                           ; preds = %SplitImageList.exit, %if.then5.i, %GetFirstImageInList.exit.i
  call void @llvm.dbg.value(metadata ptr null, metadata !1967, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 0, metadata !1969, metadata !DIExpression()), !dbg !1970
  %cmp582 = icmp ne i64 %length, 0, !dbg !2030
  call void @llvm.dbg.value(metadata ptr %split.0.split.0.83, metadata !1968, metadata !DIExpression()), !dbg !1970
  %cmp684 = icmp ne ptr %split.0.split.0.83, null
  %or.cond85 = select i1 %cmp582, i1 %cmp684, i1 false, !dbg !2033
  br i1 %or.cond85, label %if.end.i21, label %for.end, !dbg !2033

if.end.i21:                                       ; preds = %AppendImageToList.exit, %AppendImageToList.exit52
  %split.0.88 = phi ptr [ %split.0.split.0., %AppendImageToList.exit52 ], [ %split.0.split.0.83, %AppendImageToList.exit ]
  %i.087 = phi i64 [ %inc, %AppendImageToList.exit52 ], [ 0, %AppendImageToList.exit ]
  %image.086 = phi ptr [ %image.1, %AppendImageToList.exit52 ], [ null, %AppendImageToList.exit ]
  call void @llvm.dbg.value(metadata i64 %i.087, metadata !1969, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata ptr %split, metadata !1968, metadata !DIExpression(DW_OP_deref)), !dbg !1970
  call void @llvm.dbg.value(metadata ptr %split, metadata !828, metadata !DIExpression()) #13, !dbg !2034
  %debug.i19 = getelementptr inbounds %struct._Image, ptr %split.0.88, i64 0, i32 59, !dbg !2036
  %9 = load i32, ptr %debug.i19, align 8, !dbg !2036, !tbaa !657
  %cmp1.not.i20 = icmp eq i32 %9, 0, !dbg !2037
  br i1 %cmp1.not.i20, label %if.end3.i28, label %if.then2.i24, !dbg !2038

if.then2.i24:                                     ; preds = %if.end.i21
  %filename.i22 = getelementptr inbounds %struct._Image, ptr %split.0.88, i64 0, i32 53, !dbg !2039
  %call.i23 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 988, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i22) #13, !dbg !2040
  br label %if.end3.i28, !dbg !2041

if.end3.i28:                                      ; preds = %if.then2.i24, %if.end.i21
  call void @llvm.dbg.value(metadata ptr %split.0.88, metadata !833, metadata !DIExpression()) #13, !dbg !2034
  %previous.i25 = getelementptr inbounds %struct._Image, ptr %split.0.88, i64 0, i32 67, !dbg !2042
  %10 = load ptr, ptr %previous.i25, align 8, !dbg !2042, !tbaa !719
  %cmp4.i26 = icmp eq ptr %10, null, !dbg !2043
  %next.i27 = getelementptr inbounds %struct._Image, ptr %split.0.88, i64 0, i32 69, !dbg !2044
  %11 = load ptr, ptr %next.i27, align 8, !dbg !2044, !tbaa !701
  br i1 %cmp4.i26, label %land.lhs.true.i, label %if.end14.i, !dbg !2045

land.lhs.true.i:                                  ; preds = %if.end3.i28
  %cmp5.i = icmp eq ptr %11, null, !dbg !2046
  br i1 %cmp5.i, label %if.end.i33, label %if.then17.i, !dbg !2047

if.end14.i:                                       ; preds = %if.end3.i28
  %next12.i = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 69, !dbg !2048
  store ptr %11, ptr %next12.i, align 8, !dbg !2049, !tbaa !701
  store ptr %10, ptr %split, align 8, !dbg !2050, !tbaa !683
  %.pre46.i = load ptr, ptr %next.i27, align 8, !dbg !2051, !tbaa !701
  %cmp16.not.i = icmp eq ptr %.pre46.i, null, !dbg !2052
  br i1 %cmp16.not.i, label %if.end22.i, label %if.then17.i, !dbg !2053

if.then17.i:                                      ; preds = %land.lhs.true.i, %if.end14.i
  %12 = phi ptr [ %.pre46.i, %if.end14.i ], [ %11, %land.lhs.true.i ]
  %previous20.i = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 67, !dbg !2054
  store ptr %10, ptr %previous20.i, align 8, !dbg !2055, !tbaa !719
  store ptr %12, ptr %split, align 8, !dbg !2056, !tbaa !683
  br label %if.end22.i, !dbg !2057

if.end22.i:                                       ; preds = %if.then17.i, %if.end14.i
  store ptr null, ptr %previous.i25, align 8, !dbg !2058, !tbaa !719
  br label %if.end.i33

if.end.i33:                                       ; preds = %if.end22.i, %land.lhs.true.i
  %images.sink.i = phi ptr [ %next.i27, %if.end22.i ], [ %split, %land.lhs.true.i ]
  store ptr null, ptr %images.sink.i, align 8, !dbg !2044, !tbaa !683
  call void @llvm.dbg.value(metadata ptr undef, metadata !647, metadata !DIExpression()) #13, !dbg !2059
  call void @llvm.dbg.value(metadata ptr %split.0.88, metadata !648, metadata !DIExpression()) #13, !dbg !2059
  %13 = load i32, ptr %debug.i19, align 8, !dbg !2061, !tbaa !657
  %cmp1.not.i32 = icmp eq i32 %13, 0, !dbg !2062
  br i1 %cmp1.not.i32, label %if.end3.i38, label %if.then2.i36, !dbg !2063

if.then2.i36:                                     ; preds = %if.end.i33
  %filename.i34 = getelementptr inbounds %struct._Image, ptr %split.0.88, i64 0, i32 53, !dbg !2064
  %call.i35 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i34) #13, !dbg !2065
  br label %if.end3.i38, !dbg !2066

if.end3.i38:                                      ; preds = %if.then2.i36, %if.end.i33
  %cmp4.i37 = icmp eq ptr %image.086, null, !dbg !2067
  br i1 %cmp4.i37, label %AppendImageToList.exit52, label %for.cond.i.i43, !dbg !2068

for.cond.i.i43:                                   ; preds = %if.end3.i38, %for.cond.i.i43
  %p.0.i.i40 = phi ptr [ %14, %for.cond.i.i43 ], [ %image.086, %if.end3.i38 ], !dbg !2069
  call void @llvm.dbg.value(metadata ptr %p.0.i.i40, metadata !696, metadata !DIExpression()) #13, !dbg !2071
  %next.i.i41 = getelementptr inbounds %struct._Image, ptr %p.0.i.i40, i64 0, i32 69, !dbg !2072
  %14 = load ptr, ptr %next.i.i41, align 8, !dbg !2072, !tbaa !701
  %cmp1.not.i.i42 = icmp eq ptr %14, null, !dbg !2073
  br i1 %cmp1.not.i.i42, label %for.cond.i21.i49.preheader, label %for.cond.i.i43, !dbg !2074, !llvm.loop !2075

for.cond.i21.i49.preheader:                       ; preds = %for.cond.i.i43
  %next.i.i41.le = getelementptr inbounds %struct._Image, ptr %p.0.i.i40, i64 0, i32 69, !dbg !2072
  br label %for.cond.i21.i49, !dbg !2077

for.cond.i21.i49:                                 ; preds = %for.cond.i21.i49.preheader, %for.cond.i21.i49
  %p.0.i19.i46 = phi ptr [ %15, %for.cond.i21.i49 ], [ %split.0.88, %for.cond.i21.i49.preheader ], !dbg !2079
  call void @llvm.dbg.value(metadata ptr %p.0.i19.i46, metadata !713, metadata !DIExpression()) #13, !dbg !2080
  %previous.i.i47 = getelementptr inbounds %struct._Image, ptr %p.0.i19.i46, i64 0, i32 67, !dbg !2081
  %15 = load ptr, ptr %previous.i.i47, align 8, !dbg !2081, !tbaa !719
  %cmp1.not.i20.i48 = icmp eq ptr %15, null, !dbg !2082
  br i1 %cmp1.not.i20.i48, label %GetFirstImageInList.exit.i51, label %for.cond.i21.i49, !dbg !2077, !llvm.loop !2083

GetFirstImageInList.exit.i51:                     ; preds = %for.cond.i21.i49
  %previous.i.i47.le = getelementptr inbounds %struct._Image, ptr %p.0.i19.i46, i64 0, i32 67, !dbg !2081
  call void @llvm.dbg.value(metadata ptr %p.0.i19.i46, metadata !650, metadata !DIExpression()) #13, !dbg !2059
  store ptr %p.0.i19.i46, ptr %next.i.i41.le, align 8, !dbg !2085, !tbaa !701
  store ptr %p.0.i.i40, ptr %previous.i.i47.le, align 8, !dbg !2086, !tbaa !719
  br label %AppendImageToList.exit52, !dbg !2087

AppendImageToList.exit52:                         ; preds = %if.end3.i38, %GetFirstImageInList.exit.i51
  %image.1 = phi ptr [ %image.086, %GetFirstImageInList.exit.i51 ], [ %split.0.88, %if.end3.i38 ], !dbg !1970
  %inc = add nuw i64 %i.087, 1, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1969, metadata !DIExpression()), !dbg !1970
  %cmp5 = icmp ult i64 %inc, %length, !dbg !2030
  %split.0.split.0. = load ptr, ptr %split, align 8
  call void @llvm.dbg.value(metadata ptr %split.0.split.0., metadata !1968, metadata !DIExpression()), !dbg !1970
  %cmp6 = icmp ne ptr %split.0.split.0., null
  %or.cond = select i1 %cmp5, i1 %cmp6, i1 false, !dbg !2033
  br i1 %or.cond, label %if.end.i21, label %for.end, !dbg !2033, !llvm.loop !2089

for.end:                                          ; preds = %AppendImageToList.exit52, %AppendImageToList.exit
  %image.0.lcssa = phi ptr [ null, %AppendImageToList.exit ], [ %image.1, %AppendImageToList.exit52 ], !dbg !2092
  %split.0..lcssa = phi ptr [ %split.0.split.0.83, %AppendImageToList.exit ], [ %split.0.split.0., %AppendImageToList.exit52 ]
  call void @llvm.dbg.value(metadata ptr %images, metadata !647, metadata !DIExpression()) #13, !dbg !2093
  call void @llvm.dbg.value(metadata ptr %split.0..lcssa, metadata !648, metadata !DIExpression()) #13, !dbg !2093
  %cmp.i53 = icmp eq ptr %split.0..lcssa, null, !dbg !2095
  br i1 %cmp.i53, label %cleanup, label %if.end.i56, !dbg !2096

if.end.i56:                                       ; preds = %for.end
  %debug.i54 = getelementptr inbounds %struct._Image, ptr %split.0..lcssa, i64 0, i32 59, !dbg !2097
  %16 = load i32, ptr %debug.i54, align 8, !dbg !2097, !tbaa !657
  %cmp1.not.i55 = icmp eq i32 %16, 0, !dbg !2098
  br i1 %cmp1.not.i55, label %if.end3.i61, label %if.then2.i59, !dbg !2099

if.then2.i59:                                     ; preds = %if.end.i56
  %filename.i57 = getelementptr inbounds %struct._Image, ptr %split.0..lcssa, i64 0, i32 53, !dbg !2100
  %call.i58 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 88, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i57) #13, !dbg !2101
  br label %if.end3.i61, !dbg !2102

if.end3.i61:                                      ; preds = %if.then2.i59, %if.end.i56
  %17 = load ptr, ptr %images, align 8, !dbg !2103, !tbaa !683
  %cmp4.i60 = icmp eq ptr %17, null, !dbg !2104
  br i1 %cmp4.i60, label %if.then5.i62, label %for.cond.i.i66, !dbg !2105

if.then5.i62:                                     ; preds = %if.end3.i61
  store ptr %split.0..lcssa, ptr %images, align 8, !dbg !2106, !tbaa !683
  br label %cleanup, !dbg !2107

for.cond.i.i66:                                   ; preds = %if.end3.i61, %for.cond.i.i66
  %p.0.i.i63 = phi ptr [ %18, %for.cond.i.i66 ], [ %17, %if.end3.i61 ], !dbg !2108
  call void @llvm.dbg.value(metadata ptr %p.0.i.i63, metadata !696, metadata !DIExpression()) #13, !dbg !2110
  %next.i.i64 = getelementptr inbounds %struct._Image, ptr %p.0.i.i63, i64 0, i32 69, !dbg !2111
  %18 = load ptr, ptr %next.i.i64, align 8, !dbg !2111, !tbaa !701
  %cmp1.not.i.i65 = icmp eq ptr %18, null, !dbg !2112
  br i1 %cmp1.not.i.i65, label %for.cond.i21.i72.preheader, label %for.cond.i.i66, !dbg !2113, !llvm.loop !2114

for.cond.i21.i72.preheader:                       ; preds = %for.cond.i.i66
  %next.i.i64.le = getelementptr inbounds %struct._Image, ptr %p.0.i.i63, i64 0, i32 69, !dbg !2111
  br label %for.cond.i21.i72, !dbg !2116

for.cond.i21.i72:                                 ; preds = %for.cond.i21.i72.preheader, %for.cond.i21.i72
  %p.0.i19.i69 = phi ptr [ %19, %for.cond.i21.i72 ], [ %split.0..lcssa, %for.cond.i21.i72.preheader ], !dbg !2118
  call void @llvm.dbg.value(metadata ptr %p.0.i19.i69, metadata !713, metadata !DIExpression()) #13, !dbg !2119
  %previous.i.i70 = getelementptr inbounds %struct._Image, ptr %p.0.i19.i69, i64 0, i32 67, !dbg !2120
  %19 = load ptr, ptr %previous.i.i70, align 8, !dbg !2120, !tbaa !719
  %cmp1.not.i20.i71 = icmp eq ptr %19, null, !dbg !2121
  br i1 %cmp1.not.i20.i71, label %GetFirstImageInList.exit.i74, label %for.cond.i21.i72, !dbg !2116, !llvm.loop !2122

GetFirstImageInList.exit.i74:                     ; preds = %for.cond.i21.i72
  %previous.i.i70.le = getelementptr inbounds %struct._Image, ptr %p.0.i19.i69, i64 0, i32 67, !dbg !2120
  call void @llvm.dbg.value(metadata ptr %p.0.i19.i69, metadata !650, metadata !DIExpression()) #13, !dbg !2093
  store ptr %p.0.i19.i69, ptr %next.i.i64.le, align 8, !dbg !2124, !tbaa !701
  store ptr %p.0.i.i63, ptr %previous.i.i70.le, align 8, !dbg !2125, !tbaa !719
  br label %cleanup, !dbg !2126

cleanup:                                          ; preds = %GetFirstImageInList.exit.i74, %if.then5.i62, %for.end, %entry
  %retval.0 = phi ptr [ null, %entry ], [ %image.0.lcssa, %for.end ], [ %image.0.lcssa, %if.then5.i62 ], [ %image.0.lcssa, %GetFirstImageInList.exit.i74 ], !dbg !1970
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %split), !dbg !2127
  ret ptr %retval.0, !dbg !2127
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @SyncImageList(ptr noundef %images) local_unnamed_addr #10 !dbg !2128 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !2132, metadata !DIExpression()), !dbg !2135
  %cmp = icmp eq ptr %images, null, !dbg !2136
  br i1 %cmp, label %cleanup, label %for.body, !dbg !2138

for.body:                                         ; preds = %entry, %for.inc13
  %p.047 = phi ptr [ %q.043, %for.inc13 ], [ %images, %entry ]
  call void @llvm.dbg.value(metadata ptr %p.047, metadata !2133, metadata !DIExpression()), !dbg !2135
  %next = getelementptr inbounds %struct._Image, ptr %p.047, i64 0, i32 69, !dbg !2139
  call void @llvm.dbg.value(metadata ptr undef, metadata !2134, metadata !DIExpression()), !dbg !2135
  %q.043 = load ptr, ptr %next, align 8, !dbg !2144, !tbaa !701
  call void @llvm.dbg.value(metadata ptr %q.043, metadata !2134, metadata !DIExpression()), !dbg !2135
  %cmp3.not44 = icmp eq ptr %q.043, null, !dbg !2145
  br i1 %cmp3.not44, label %cleanup, label %for.body4.lr.ph, !dbg !2147

for.body4.lr.ph:                                  ; preds = %for.body
  %scene = getelementptr inbounds %struct._Image, ptr %p.047, i64 0, i32 39
  %0 = load i64, ptr %scene, align 8, !tbaa !2148
  br label %for.body4, !dbg !2147

for.cond2:                                        ; preds = %for.body4
  %next9 = getelementptr inbounds %struct._Image, ptr %q.045, i64 0, i32 69, !dbg !2149
  %q.0 = load ptr, ptr %next9, align 8, !dbg !2144, !tbaa !701
  call void @llvm.dbg.value(metadata ptr %q.0, metadata !2134, metadata !DIExpression()), !dbg !2135
  %cmp3.not = icmp eq ptr %q.0, null, !dbg !2145
  br i1 %cmp3.not, label %for.inc13, label %for.body4, !dbg !2147, !llvm.loop !2150

for.body4:                                        ; preds = %for.body4.lr.ph, %for.cond2
  %q.045 = phi ptr [ %q.043, %for.body4.lr.ph ], [ %q.0, %for.cond2 ]
  %scene5 = getelementptr inbounds %struct._Image, ptr %q.045, i64 0, i32 39, !dbg !2152
  %1 = load i64, ptr %scene5, align 8, !dbg !2152, !tbaa !2148
  %cmp6 = icmp eq i64 %0, %1, !dbg !2154
  call void @llvm.dbg.value(metadata ptr undef, metadata !2134, metadata !DIExpression()), !dbg !2135
  br i1 %cmp6, label %for.cond20.preheader, label %for.cond2, !dbg !2155

for.cond20.preheader:                             ; preds = %for.body4
  %p.1.in48 = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 69, !dbg !2156
  %p.149 = load ptr, ptr %p.1.in48, align 8, !dbg !2156, !tbaa !701
  call void @llvm.dbg.value(metadata ptr %p.149, metadata !2133, metadata !DIExpression()), !dbg !2135
  %cmp21.not50 = icmp eq ptr %p.149, null, !dbg !2158
  br i1 %cmp21.not50, label %cleanup, label %for.body22, !dbg !2160

for.inc13:                                        ; preds = %for.cond2
  call void @llvm.dbg.value(metadata ptr %q.043, metadata !2133, metadata !DIExpression()), !dbg !2135
  br i1 %cmp3.not44, label %cleanup, label %for.body, !dbg !2161, !llvm.loop !2162

for.body22:                                       ; preds = %for.cond20.preheader, %for.body22
  %p.151 = phi ptr [ %p.1, %for.body22 ], [ %p.149, %for.cond20.preheader ]
  %previous = getelementptr inbounds %struct._Image, ptr %p.151, i64 0, i32 67, !dbg !2164
  %2 = load ptr, ptr %previous, align 8, !dbg !2164, !tbaa !719
  %scene23 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 39, !dbg !2165
  %3 = load i64, ptr %scene23, align 8, !dbg !2165, !tbaa !2148
  %add = add i64 %3, 1, !dbg !2166
  %scene24 = getelementptr inbounds %struct._Image, ptr %p.151, i64 0, i32 39, !dbg !2167
  store i64 %add, ptr %scene24, align 8, !dbg !2168, !tbaa !2148
  call void @llvm.dbg.value(metadata ptr undef, metadata !2133, metadata !DIExpression()), !dbg !2135
  %p.1.in = getelementptr inbounds %struct._Image, ptr %p.151, i64 0, i32 69, !dbg !2156
  %p.1 = load ptr, ptr %p.1.in, align 8, !dbg !2156, !tbaa !701
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !2133, metadata !DIExpression()), !dbg !2135
  %cmp21.not = icmp eq ptr %p.1, null, !dbg !2158
  br i1 %cmp21.not, label %cleanup, label %for.body22, !dbg !2160, !llvm.loop !2169

cleanup:                                          ; preds = %for.body, %for.inc13, %for.body22, %for.cond20.preheader, %entry
  ret void, !dbg !2171
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SyncNextImageInList(ptr noundef readonly %images) local_unnamed_addr #0 !dbg !2172 {
entry:
  call void @llvm.dbg.value(metadata ptr %images, metadata !2174, metadata !DIExpression()), !dbg !2175
  %cmp = icmp eq ptr %images, null, !dbg !2176
  br i1 %cmp, label %return, label %if.end, !dbg !2178

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 69, !dbg !2179
  %0 = load ptr, ptr %next, align 8, !dbg !2179, !tbaa !701
  %cmp1 = icmp eq ptr %0, null, !dbg !2181
  br i1 %cmp1, label %return, label %if.end3, !dbg !2182

if.end3:                                          ; preds = %if.end
  %blob = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 52, !dbg !2183
  %1 = load ptr, ptr %blob, align 8, !dbg !2183, !tbaa !2185
  %blob5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 52, !dbg !2186
  %2 = load ptr, ptr %blob5, align 8, !dbg !2186, !tbaa !2185
  %cmp6.not = icmp eq ptr %1, %2, !dbg !2187
  br i1 %cmp6.not, label %if.end12, label %if.then7, !dbg !2188

if.then7:                                         ; preds = %if.end3
  tail call void @DestroyBlob(ptr noundef nonnull %0) #13, !dbg !2189
  %3 = load ptr, ptr %blob, align 8, !dbg !2191, !tbaa !2185
  %call = tail call ptr @ReferenceBlob(ptr noundef %3) #13, !dbg !2192
  %4 = load ptr, ptr %next, align 8, !dbg !2193, !tbaa !701
  %blob11 = getelementptr inbounds %struct._Image, ptr %4, i64 0, i32 52, !dbg !2194
  store ptr %call, ptr %blob11, align 8, !dbg !2195, !tbaa !2185
  br label %if.end12, !dbg !2196

if.end12:                                         ; preds = %if.then7, %if.end3
  %5 = phi ptr [ %4, %if.then7 ], [ %0, %if.end3 ], !dbg !2197
  %compression = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 2, !dbg !2198
  %6 = load i32, ptr %compression, align 8, !dbg !2198, !tbaa !2199
  %compression14 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 2, !dbg !2200
  store i32 %6, ptr %compression14, align 8, !dbg !2201, !tbaa !2199
  %endian = getelementptr inbounds %struct._Image, ptr %images, i64 0, i32 34, !dbg !2202
  %7 = load i32, ptr %endian, align 8, !dbg !2202, !tbaa !2203
  %endian16 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 34, !dbg !2204
  store i32 %7, ptr %endian16, align 8, !dbg !2205, !tbaa !2203
  br label %return, !dbg !2206

return:                                           ; preds = %if.end, %entry, %if.end12
  %retval.0 = phi ptr [ %5, %if.end12 ], [ null, %entry ], [ null, %if.end ], !dbg !2175
  ret ptr %retval.0, !dbg !2207
}

declare !dbg !2208 void @DestroyBlob(ptr noundef) local_unnamed_addr #2

declare !dbg !2210 ptr @ReferenceBlob(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!635, !636, !637, !638, !639, !640}
!llvm.ident = !{!641}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !408, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/list.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "4611a3e6fdee1bcdf5755557aaf00098")
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
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !394, line: 46, baseType: !5, size: 32, elements: !395)
!394 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!395 = !{!396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407}
!396 = !DIEnumerator(name: "_ISupper", value: 256)
!397 = !DIEnumerator(name: "_ISlower", value: 512)
!398 = !DIEnumerator(name: "_ISalpha", value: 1024)
!399 = !DIEnumerator(name: "_ISdigit", value: 2048)
!400 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!401 = !DIEnumerator(name: "_ISspace", value: 8192)
!402 = !DIEnumerator(name: "_ISprint", value: 16384)
!403 = !DIEnumerator(name: "_ISgraph", value: 32768)
!404 = !DIEnumerator(name: "_ISblank", value: 1)
!405 = !DIEnumerator(name: "_IScntrl", value: 2)
!406 = !DIEnumerator(name: "_ISpunct", value: 4)
!407 = !DIEnumerator(name: "_ISalnum", value: 8)
!408 = !{!409, !465, !422, !469, !577, !600, !439, !478, !474, !631, !632, !420, !634}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !73, line: 150, size: 105920, elements: !412)
!412 = !{!413, !415, !417, !419, !423, !425, !427, !428, !429, !430, !431, !432, !443, !444, !445, !446, !448, !462, !464, !466, !468, !471, !472, !473, !479, !480, !481, !489, !490, !491, !492, !493, !494, !496, !498, !500, !502, !504, !506, !508, !509, !510, !511, !512, !513, !514, !522, !537, !551, !552, !553, !554, !558, !562, !566, !567, !568, !569, !570, !588, !589, !591, !592, !602, !603, !605, !606, !607, !608, !609, !610, !612, !613, !614, !615, !616, !617, !618, !620, !621, !622, !623, !624, !628, !630}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !411, file: !73, line: 153, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !3)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !411, file: !73, line: 156, baseType: !416, size: 32, offset: 32)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !11, line: 61, baseType: !10)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !411, file: !73, line: 159, baseType: !418, size: 32, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !48, line: 49, baseType: !47)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !411, file: !73, line: 162, baseType: !420, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !421, line: 46, baseType: !422)
!421 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!422 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !411, file: !73, line: 165, baseType: !424, size: 32, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !73, line: 86, baseType: !72)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !411, file: !73, line: 168, baseType: !426, size: 32, offset: 224)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !84)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !411, file: !73, line: 169, baseType: !426, size: 32, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !411, file: !73, line: 172, baseType: !420, size: 64, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !411, file: !73, line: 173, baseType: !420, size: 64, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !411, file: !73, line: 174, baseType: !420, size: 64, offset: 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !411, file: !73, line: 175, baseType: !420, size: 64, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !411, file: !73, line: 178, baseType: !433, size: 64, offset: 576)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !436)
!436 = !{!437, !440, !441, !442}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !435, file: !326, line: 143, baseType: !438, size: 16)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !439)
!439 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !435, file: !326, line: 144, baseType: !438, size: 16, offset: 16)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !435, file: !326, line: 145, baseType: !438, size: 16, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !435, file: !326, line: 146, baseType: !438, size: 16, offset: 48)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !411, file: !73, line: 179, baseType: !434, size: 64, offset: 640)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !411, file: !73, line: 180, baseType: !434, size: 64, offset: 704)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !411, file: !73, line: 181, baseType: !434, size: 64, offset: 768)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !411, file: !73, line: 184, baseType: !447, size: 64, offset: 832)
!447 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !411, file: !73, line: 187, baseType: !449, size: 768, offset: 896)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !73, line: 128, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !73, line: 121, size: 768, elements: !451)
!451 = !{!452, !459, !460, !461}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !450, file: !73, line: 124, baseType: !453, size: 192)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !73, line: 101, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !73, line: 95, size: 192, elements: !455)
!455 = !{!456, !457, !458}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !454, file: !73, line: 98, baseType: !447, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !454, file: !73, line: 99, baseType: !447, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !454, file: !73, line: 100, baseType: !447, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !450, file: !73, line: 125, baseType: !453, size: 192, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !450, file: !73, line: 126, baseType: !453, size: 192, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !450, file: !73, line: 127, baseType: !453, size: 192, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !411, file: !73, line: 190, baseType: !463, size: 32, offset: 1664)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !411, file: !73, line: 193, baseType: !465, size: 64, offset: 1728)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !411, file: !73, line: 196, baseType: !467, size: 32, offset: 1792)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !73, line: 93, baseType: !96)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !411, file: !73, line: 199, baseType: !469, size: 64, offset: 1856)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !411, file: !73, line: 200, baseType: !469, size: 64, offset: 1920)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !411, file: !73, line: 201, baseType: !469, size: 64, offset: 1984)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !411, file: !73, line: 204, baseType: !474, size: 64, offset: 2048)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !475, line: 77, baseType: !476)
!475 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !477, line: 193, baseType: !478)
!477 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!478 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !411, file: !73, line: 207, baseType: !447, size: 64, offset: 2112)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !411, file: !73, line: 208, baseType: !447, size: 64, offset: 2176)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !411, file: !73, line: 211, baseType: !482, size: 256, offset: 2240)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !484)
!484 = !{!485, !486, !487, !488}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !483, file: !153, line: 124, baseType: !420, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !483, file: !153, line: 125, baseType: !420, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !483, file: !153, line: 128, baseType: !474, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !483, file: !153, line: 129, baseType: !474, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !411, file: !73, line: 212, baseType: !482, size: 256, offset: 2496)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !411, file: !73, line: 213, baseType: !482, size: 256, offset: 2752)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !411, file: !73, line: 216, baseType: !447, size: 64, offset: 3008)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !411, file: !73, line: 217, baseType: !447, size: 64, offset: 3072)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !411, file: !73, line: 218, baseType: !447, size: 64, offset: 3136)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !411, file: !73, line: 221, baseType: !495, size: 32, offset: 3200)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !411, file: !73, line: 224, baseType: !497, size: 32, offset: 3232)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !73, line: 73, baseType: !136)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !411, file: !73, line: 227, baseType: !499, size: 32, offset: 3264)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !411, file: !73, line: 230, baseType: !501, size: 32, offset: 3296)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !411, file: !73, line: 233, baseType: !503, size: 32, offset: 3328)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !411, file: !73, line: 236, baseType: !505, size: 32, offset: 3360)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !411, file: !73, line: 239, baseType: !507, size: 64, offset: 3392)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !411, file: !73, line: 242, baseType: !420, size: 64, offset: 3456)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !411, file: !73, line: 243, baseType: !420, size: 64, offset: 3520)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !411, file: !73, line: 246, baseType: !474, size: 64, offset: 3584)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !411, file: !73, line: 249, baseType: !420, size: 64, offset: 3648)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !411, file: !73, line: 250, baseType: !420, size: 64, offset: 3712)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !411, file: !73, line: 253, baseType: !474, size: 64, offset: 3776)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !411, file: !73, line: 256, baseType: !515, size: 192, offset: 3840)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !516, line: 68, baseType: !517)
!516 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !516, line: 62, size: 192, elements: !518)
!518 = !{!519, !520, !521}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !517, file: !516, line: 65, baseType: !447, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !517, file: !516, line: 66, baseType: !447, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !517, file: !516, line: 67, baseType: !447, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !411, file: !73, line: 259, baseType: !523, size: 512, offset: 4032)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !525)
!525 = !{!526, !533, !534, !536}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !524, file: !247, line: 43, baseType: !527, size: 192)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !529)
!529 = !{!530, !531, !532}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !528, file: !247, line: 35, baseType: !447, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !528, file: !247, line: 36, baseType: !447, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !528, file: !247, line: 37, baseType: !447, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !524, file: !247, line: 44, baseType: !527, size: 192, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !524, file: !247, line: 47, baseType: !535, size: 32, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !524, file: !247, line: 50, baseType: !420, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !411, file: !73, line: 262, baseType: !538, size: 64, offset: 4544)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !539, line: 26, baseType: !540)
!539 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!426, !543, !545, !548, !465}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !547)
!547 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !550)
!550 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !411, file: !73, line: 265, baseType: !465, size: 64, offset: 4608)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !411, file: !73, line: 266, baseType: !465, size: 64, offset: 4672)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !411, file: !73, line: 267, baseType: !465, size: 64, offset: 4736)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !411, file: !73, line: 270, baseType: !555, size: 64, offset: 4800)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !48, line: 52, baseType: !557)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !48, line: 51, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !411, file: !73, line: 273, baseType: !559, size: 64, offset: 4864)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !561)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !411, file: !73, line: 276, baseType: !563, size: 32768, offset: 4928)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 32768, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 4096)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !411, file: !73, line: 277, baseType: !563, size: 32768, offset: 37696)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !411, file: !73, line: 278, baseType: !563, size: 32768, offset: 70464)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !411, file: !73, line: 281, baseType: !420, size: 64, offset: 103232)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !411, file: !73, line: 282, baseType: !420, size: 64, offset: 103296)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !411, file: !73, line: 285, baseType: !571, size: 448, offset: 103360)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !573)
!573 = !{!574, !576, !578, !579, !580, !581, !582, !587}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !572, file: !253, line: 105, baseType: !575, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !572, file: !253, line: 108, baseType: !577, size: 32, offset: 32)
!577 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !572, file: !253, line: 111, baseType: !469, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !572, file: !253, line: 112, baseType: !469, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !572, file: !253, line: 115, baseType: !465, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !572, file: !253, line: 118, baseType: !426, size: 32, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !572, file: !253, line: 121, baseType: !583, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !585, line: 26, baseType: !586)
!585 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !585, line: 25, flags: DIFlagFwdDecl)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !572, file: !253, line: 124, baseType: !420, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !411, file: !73, line: 288, baseType: !426, size: 32, offset: 103808)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !411, file: !73, line: 291, baseType: !590, size: 64, offset: 103872)
!590 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !474)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !411, file: !73, line: 294, baseType: !583, size: 64, offset: 103936)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !411, file: !73, line: 297, baseType: !593, size: 256, offset: 104000)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !595)
!595 = !{!596, !597, !598, !601}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !594, file: !89, line: 30, baseType: !469, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !594, file: !89, line: 33, baseType: !420, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !594, file: !89, line: 36, baseType: !599, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !594, file: !89, line: 39, baseType: !420, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !411, file: !73, line: 298, baseType: !593, size: 256, offset: 104256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !411, file: !73, line: 299, baseType: !604, size: 64, offset: 104512)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !411, file: !73, line: 302, baseType: !420, size: 64, offset: 104576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !411, file: !73, line: 305, baseType: !420, size: 64, offset: 104640)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !411, file: !73, line: 308, baseType: !507, size: 64, offset: 104704)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !411, file: !73, line: 309, baseType: !507, size: 64, offset: 104768)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !411, file: !73, line: 310, baseType: !507, size: 64, offset: 104832)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !411, file: !73, line: 313, baseType: !611, size: 32, offset: 104896)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !411, file: !73, line: 316, baseType: !426, size: 32, offset: 104928)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !411, file: !73, line: 319, baseType: !434, size: 64, offset: 104960)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !411, file: !73, line: 322, baseType: !507, size: 64, offset: 105024)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !411, file: !73, line: 325, baseType: !482, size: 256, offset: 105088)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !411, file: !73, line: 328, baseType: !465, size: 64, offset: 105344)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !411, file: !73, line: 329, baseType: !465, size: 64, offset: 105408)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !411, file: !73, line: 332, baseType: !619, size: 32, offset: 105472)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !73, line: 61, baseType: !342)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !411, file: !73, line: 335, baseType: !426, size: 32, offset: 105504)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !411, file: !73, line: 338, baseType: !549, size: 64, offset: 105536)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !411, file: !73, line: 341, baseType: !426, size: 32, offset: 105600)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !411, file: !73, line: 344, baseType: !420, size: 64, offset: 105664)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !411, file: !73, line: 347, baseType: !625, size: 64, offset: 105728)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !626, line: 7, baseType: !627)
!626 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !477, line: 160, baseType: !478)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !411, file: !73, line: 350, baseType: !629, size: 32, offset: 105792)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !411, file: !73, line: 353, baseType: !420, size: 64, offset: 105856)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!635 = !{i32 7, !"Dwarf Version", i32 5}
!636 = !{i32 2, !"Debug Info Version", i32 3}
!637 = !{i32 1, !"wchar_size", i32 4}
!638 = !{i32 7, !"PIC Level", i32 2}
!639 = !{i32 7, !"PIE Level", i32 2}
!640 = !{i32 7, !"uwtable", i32 2}
!641 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!642 = distinct !DISubprogram(name: "AppendImageToList", scope: !643, file: !643, line: 77, type: !644, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !646)
!643 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4611a3e6fdee1bcdf5755557aaf00098")
!644 = !DISubroutineType(types: !645)
!645 = !{null, !634, !632}
!646 = !{!647, !648, !649, !650}
!647 = !DILocalVariable(name: "images", arg: 1, scope: !642, file: !643, line: 77, type: !634)
!648 = !DILocalVariable(name: "append", arg: 2, scope: !642, file: !643, line: 77, type: !632)
!649 = !DILocalVariable(name: "p", scope: !642, file: !643, line: 80, type: !409)
!650 = !DILocalVariable(name: "q", scope: !642, file: !643, line: 81, type: !409)
!651 = !DILocation(line: 0, scope: !642)
!652 = !DILocation(line: 84, column: 14, scope: !653)
!653 = distinct !DILexicalBlock(scope: !642, file: !643, line: 84, column: 7)
!654 = !DILocation(line: 84, column: 7, scope: !642)
!655 = !DILocation(line: 87, column: 15, scope: !656)
!656 = distinct !DILexicalBlock(scope: !642, file: !643, line: 87, column: 7)
!657 = !{!658, !659, i64 12976}
!658 = !{!"_Image", !659, i64 0, !659, i64 4, !659, i64 8, !661, i64 16, !659, i64 24, !659, i64 28, !659, i64 32, !661, i64 40, !661, i64 48, !661, i64 56, !661, i64 64, !662, i64 72, !663, i64 80, !663, i64 88, !663, i64 96, !665, i64 104, !666, i64 112, !659, i64 208, !662, i64 216, !659, i64 224, !662, i64 232, !662, i64 240, !662, i64 248, !661, i64 256, !665, i64 264, !665, i64 272, !668, i64 280, !668, i64 312, !668, i64 344, !665, i64 376, !665, i64 384, !665, i64 392, !659, i64 400, !659, i64 404, !659, i64 408, !659, i64 412, !659, i64 416, !659, i64 420, !662, i64 424, !661, i64 432, !661, i64 440, !661, i64 448, !661, i64 456, !661, i64 464, !661, i64 472, !669, i64 480, !670, i64 504, !662, i64 568, !662, i64 576, !662, i64 584, !662, i64 592, !662, i64 600, !662, i64 608, !659, i64 616, !659, i64 4712, !659, i64 8808, !661, i64 12904, !661, i64 12912, !672, i64 12920, !659, i64 12976, !661, i64 12984, !662, i64 12992, !674, i64 13000, !674, i64 13032, !662, i64 13064, !661, i64 13072, !661, i64 13080, !662, i64 13088, !662, i64 13096, !662, i64 13104, !659, i64 13112, !659, i64 13116, !663, i64 13120, !662, i64 13128, !668, i64 13136, !662, i64 13168, !662, i64 13176, !659, i64 13184, !659, i64 13188, !675, i64 13192, !659, i64 13200, !661, i64 13208, !661, i64 13216, !659, i64 13224, !661, i64 13232}
!659 = !{!"omnipotent char", !660, i64 0}
!660 = !{!"Simple C/C++ TBAA"}
!661 = !{!"long", !659, i64 0}
!662 = !{!"any pointer", !659, i64 0}
!663 = !{!"_PixelPacket", !664, i64 0, !664, i64 2, !664, i64 4, !664, i64 6}
!664 = !{!"short", !659, i64 0}
!665 = !{!"double", !659, i64 0}
!666 = !{!"_ChromaticityInfo", !667, i64 0, !667, i64 24, !667, i64 48, !667, i64 72}
!667 = !{!"_PrimaryInfo", !665, i64 0, !665, i64 8, !665, i64 16}
!668 = !{!"_RectangleInfo", !661, i64 0, !661, i64 8, !661, i64 16, !661, i64 24}
!669 = !{!"_ErrorInfo", !665, i64 0, !665, i64 8, !665, i64 16}
!670 = !{!"_TimerInfo", !671, i64 0, !671, i64 24, !659, i64 48, !661, i64 56}
!671 = !{!"_Timer", !665, i64 0, !665, i64 8, !665, i64 16}
!672 = !{!"_ExceptionInfo", !659, i64 0, !673, i64 4, !662, i64 8, !662, i64 16, !662, i64 24, !659, i64 32, !662, i64 40, !661, i64 48}
!673 = !{!"int", !659, i64 0}
!674 = !{!"_ProfileInfo", !662, i64 0, !661, i64 8, !662, i64 16, !661, i64 24}
!675 = !{!"long long", !659, i64 0}
!676 = !DILocation(line: 87, column: 21, scope: !656)
!677 = !DILocation(line: 87, column: 7, scope: !642)
!678 = !DILocation(line: 88, column: 69, scope: !656)
!679 = !DILocation(line: 88, column: 12, scope: !656)
!680 = !DILocation(line: 88, column: 5, scope: !656)
!681 = !DILocation(line: 89, column: 8, scope: !682)
!682 = distinct !DILexicalBlock(scope: !642, file: !643, line: 89, column: 7)
!683 = !{!662, !662, i64 0}
!684 = !DILocation(line: 89, column: 17, scope: !682)
!685 = !DILocation(line: 89, column: 7, scope: !642)
!686 = !DILocation(line: 91, column: 14, scope: !687)
!687 = distinct !DILexicalBlock(scope: !682, file: !643, line: 90, column: 5)
!688 = !DILocation(line: 92, column: 7, scope: !687)
!689 = !DILocation(line: 0, scope: !690, inlinedAt: !697)
!690 = distinct !DILexicalBlock(scope: !691, file: !643, line: 728, column: 3)
!691 = distinct !DISubprogram(name: "GetLastImageInList", scope: !643, file: !643, line: 720, type: !692, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !694)
!692 = !DISubroutineType(types: !693)
!693 = !{!409, !632}
!694 = !{!695, !696}
!695 = !DILocalVariable(name: "images", arg: 1, scope: !691, file: !643, line: 720, type: !632)
!696 = !DILocalVariable(name: "p", scope: !691, file: !643, line: 723, type: !632)
!697 = distinct !DILocation(line: 95, column: 5, scope: !642)
!698 = !DILocation(line: 0, scope: !691, inlinedAt: !697)
!699 = !DILocation(line: 728, column: 21, scope: !700, inlinedAt: !697)
!700 = distinct !DILexicalBlock(scope: !690, file: !643, line: 728, column: 3)
!701 = !{!658, !662, i64 13104}
!702 = !DILocation(line: 728, column: 26, scope: !700, inlinedAt: !697)
!703 = !DILocation(line: 728, column: 3, scope: !690, inlinedAt: !697)
!704 = distinct !{!704, !703, !705, !706, !707}
!705 = !DILocation(line: 728, column: 56, scope: !690, inlinedAt: !697)
!706 = !{!"llvm.loop.mustprogress"}
!707 = !{!"llvm.loop.unroll.disable"}
!708 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !714)
!709 = distinct !DILexicalBlock(scope: !710, file: !643, line: 550, column: 3)
!710 = distinct !DISubprogram(name: "GetFirstImageInList", scope: !643, file: !643, line: 542, type: !692, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !711)
!711 = !{!712, !713}
!712 = !DILocalVariable(name: "images", arg: 1, scope: !710, file: !643, line: 542, type: !632)
!713 = !DILocalVariable(name: "p", scope: !710, file: !643, line: 545, type: !632)
!714 = distinct !DILocation(line: 96, column: 5, scope: !642)
!715 = !DILocation(line: 0, scope: !709, inlinedAt: !714)
!716 = !DILocation(line: 0, scope: !710, inlinedAt: !714)
!717 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !714)
!718 = distinct !DILexicalBlock(scope: !709, file: !643, line: 550, column: 3)
!719 = !{!658, !662, i64 13088}
!720 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !714)
!721 = distinct !{!721, !708, !722, !706, !707}
!722 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !714)
!723 = !DILocation(line: 97, column: 10, scope: !642)
!724 = !DILocation(line: 98, column: 14, scope: !642)
!725 = !DILocation(line: 99, column: 1, scope: !642)
!726 = !DISubprogram(name: "LogMagickEvent", scope: !369, file: !369, line: 83, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!727 = !DISubroutineType(types: !728)
!728 = !{!426, !729, !543, !543, !731, !543, null}
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !369, line: 58, baseType: !368)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!732 = !{}
!733 = !DILocation(line: 0, scope: !691)
!734 = !DILocation(line: 725, column: 14, scope: !735)
!735 = distinct !DILexicalBlock(scope: !691, file: !643, line: 725, column: 7)
!736 = !DILocation(line: 725, column: 7, scope: !691)
!737 = !DILocation(line: 0, scope: !690)
!738 = !DILocation(line: 728, column: 21, scope: !700)
!739 = !DILocation(line: 728, column: 26, scope: !700)
!740 = !DILocation(line: 728, column: 3, scope: !690)
!741 = distinct !{!741, !740, !742, !706, !707}
!742 = !DILocation(line: 728, column: 56, scope: !690)
!743 = !DILocation(line: 730, column: 1, scope: !691)
!744 = !DILocation(line: 0, scope: !710)
!745 = !DILocation(line: 547, column: 14, scope: !746)
!746 = distinct !DILexicalBlock(scope: !710, file: !643, line: 547, column: 7)
!747 = !DILocation(line: 547, column: 7, scope: !710)
!748 = !DILocation(line: 0, scope: !709)
!749 = !DILocation(line: 550, column: 21, scope: !718)
!750 = !DILocation(line: 550, column: 30, scope: !718)
!751 = !DILocation(line: 550, column: 3, scope: !709)
!752 = distinct !{!752, !751, !753, !706, !707}
!753 = !DILocation(line: 550, column: 64, scope: !709)
!754 = !DILocation(line: 552, column: 1, scope: !710)
!755 = distinct !DISubprogram(name: "CloneImageList", scope: !643, file: !643, line: 125, type: !756, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !759)
!756 = !DISubroutineType(types: !757)
!757 = !{!409, !632, !758}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!759 = !{!760, !761, !762, !763, !764}
!760 = !DILocalVariable(name: "images", arg: 1, scope: !755, file: !643, line: 125, type: !632)
!761 = !DILocalVariable(name: "exception", arg: 2, scope: !755, file: !643, line: 125, type: !758)
!762 = !DILocalVariable(name: "clone", scope: !755, file: !643, line: 128, type: !409)
!763 = !DILocalVariable(name: "image", scope: !755, file: !643, line: 129, type: !409)
!764 = !DILocalVariable(name: "p", scope: !755, file: !643, line: 132, type: !409)
!765 = !DILocation(line: 0, scope: !755)
!766 = !DILocation(line: 134, column: 14, scope: !767)
!767 = distinct !DILexicalBlock(scope: !755, file: !643, line: 134, column: 7)
!768 = !DILocation(line: 134, column: 7, scope: !755)
!769 = !DILocation(line: 137, column: 18, scope: !755)
!770 = !DILocation(line: 137, column: 27, scope: !755)
!771 = !DILocation(line: 137, column: 3, scope: !755)
!772 = distinct !{!772, !771, !773, !706, !707}
!773 = !DILocation(line: 138, column: 20, scope: !755)
!774 = !DILocation(line: 142, column: 11, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !643, line: 141, column: 3)
!776 = distinct !DILexicalBlock(scope: !777, file: !643, line: 140, column: 3)
!777 = distinct !DILexicalBlock(scope: !755, file: !643, line: 140, column: 3)
!778 = !DILocation(line: 143, column: 15, scope: !779)
!779 = distinct !DILexicalBlock(scope: !775, file: !643, line: 143, column: 9)
!780 = !DILocation(line: 0, scope: !775)
!781 = !DILocation(line: 143, column: 9, scope: !775)
!782 = !DILocation(line: 145, column: 13, scope: !783)
!783 = distinct !DILexicalBlock(scope: !779, file: !643, line: 144, column: 7)
!784 = !DILocation(line: 146, column: 17, scope: !785)
!785 = distinct !DILexicalBlock(scope: !783, file: !643, line: 145, column: 13)
!786 = !DILocation(line: 146, column: 11, scope: !785)
!787 = !DILocation(line: 149, column: 9, scope: !775)
!788 = !DILocation(line: 155, column: 8, scope: !775)
!789 = !DILocation(line: 155, column: 12, scope: !775)
!790 = !DILocation(line: 156, column: 12, scope: !775)
!791 = !DILocation(line: 156, column: 20, scope: !775)
!792 = !DILocation(line: 158, column: 3, scope: !775)
!793 = !DILocation(line: 140, column: 67, scope: !776)
!794 = !DILocation(line: 140, column: 33, scope: !776)
!795 = !DILocation(line: 140, column: 3, scope: !777)
!796 = distinct !{!796, !795, !797, !706, !707}
!797 = !DILocation(line: 158, column: 3, scope: !777)
!798 = !DILocation(line: 160, column: 1, scope: !755)
!799 = !DISubprogram(name: "CloneImage", scope: !73, file: !73, line: 508, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!800 = !DISubroutineType(types: !801)
!801 = !{!409, !632, !731, !731, !802, !758}
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!803 = distinct !DISubprogram(name: "DestroyImageList", scope: !643, file: !643, line: 443, type: !804, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !806)
!804 = !DISubroutineType(types: !805)
!805 = !{!409, !409}
!806 = !{!807}
!807 = !DILocalVariable(name: "images", arg: 1, scope: !803, file: !643, line: 443, type: !409)
!808 = !DILocation(line: 0, scope: !803)
!809 = !DILocation(line: 445, column: 14, scope: !810)
!810 = distinct !DILexicalBlock(scope: !803, file: !643, line: 445, column: 7)
!811 = !DILocation(line: 445, column: 7, scope: !803)
!812 = !DILocation(line: 448, column: 15, scope: !813)
!813 = distinct !DILexicalBlock(scope: !803, file: !643, line: 448, column: 7)
!814 = !DILocation(line: 448, column: 21, scope: !813)
!815 = !DILocation(line: 448, column: 7, scope: !803)
!816 = !DILocation(line: 449, column: 69, scope: !813)
!817 = !DILocation(line: 449, column: 12, scope: !813)
!818 = !DILocation(line: 449, column: 5, scope: !813)
!819 = !DILocation(line: 450, column: 3, scope: !803)
!820 = !DILocalVariable(name: "images", arg: 1, scope: !821, file: !643, line: 291, type: !634)
!821 = distinct !DISubprogram(name: "DeleteImageFromList", scope: !643, file: !643, line: 291, type: !822, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !824)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !634}
!824 = !{!820, !825}
!825 = !DILocalVariable(name: "image", scope: !821, file: !643, line: 294, type: !409)
!826 = !DILocation(line: 0, scope: !821, inlinedAt: !827)
!827 = distinct !DILocation(line: 451, column: 5, scope: !803)
!828 = !DILocalVariable(name: "images", arg: 1, scope: !829, file: !643, line: 978, type: !634)
!829 = distinct !DISubprogram(name: "RemoveImageFromList", scope: !643, file: !643, line: 978, type: !830, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{!409, !634}
!832 = !{!828, !833}
!833 = !DILocalVariable(name: "p", scope: !829, file: !643, line: 981, type: !409)
!834 = !DILocation(line: 0, scope: !829, inlinedAt: !835)
!835 = distinct !DILocation(line: 296, column: 9, scope: !821, inlinedAt: !827)
!836 = !DILocation(line: 987, column: 18, scope: !837, inlinedAt: !835)
!837 = distinct !DILexicalBlock(scope: !829, file: !643, line: 987, column: 7)
!838 = !DILocation(line: 987, column: 24, scope: !837, inlinedAt: !835)
!839 = !DILocation(line: 987, column: 7, scope: !829, inlinedAt: !835)
!840 = !DILocation(line: 989, column: 18, scope: !837, inlinedAt: !835)
!841 = !DILocation(line: 988, column: 12, scope: !837, inlinedAt: !835)
!842 = !DILocation(line: 988, column: 5, scope: !837, inlinedAt: !835)
!843 = !DILocation(line: 991, column: 11, scope: !844, inlinedAt: !835)
!844 = distinct !DILexicalBlock(scope: !829, file: !643, line: 991, column: 7)
!845 = !DILocation(line: 991, column: 20, scope: !844, inlinedAt: !835)
!846 = !DILocation(line: 0, scope: !844, inlinedAt: !835)
!847 = !DILocation(line: 991, column: 39, scope: !844, inlinedAt: !835)
!848 = !DILocation(line: 991, column: 51, scope: !844, inlinedAt: !835)
!849 = !DILocation(line: 991, column: 7, scope: !829, inlinedAt: !835)
!850 = !DILocation(line: 997, column: 24, scope: !851, inlinedAt: !835)
!851 = distinct !DILexicalBlock(scope: !852, file: !643, line: 996, column: 9)
!852 = distinct !DILexicalBlock(scope: !853, file: !643, line: 995, column: 11)
!853 = distinct !DILexicalBlock(scope: !844, file: !643, line: 994, column: 5)
!854 = !DILocation(line: 997, column: 28, scope: !851, inlinedAt: !835)
!855 = !DILocation(line: 998, column: 18, scope: !851, inlinedAt: !835)
!856 = !DILocation(line: 1000, column: 14, scope: !857, inlinedAt: !835)
!857 = distinct !DILexicalBlock(scope: !853, file: !643, line: 1000, column: 11)
!858 = !DILocation(line: 1000, column: 19, scope: !857, inlinedAt: !835)
!859 = !DILocation(line: 1000, column: 11, scope: !853, inlinedAt: !835)
!860 = !DILocation(line: 1002, column: 20, scope: !861, inlinedAt: !835)
!861 = distinct !DILexicalBlock(scope: !857, file: !643, line: 1001, column: 9)
!862 = !DILocation(line: 1002, column: 28, scope: !861, inlinedAt: !835)
!863 = !DILocation(line: 1003, column: 18, scope: !861, inlinedAt: !835)
!864 = !DILocation(line: 1004, column: 9, scope: !861, inlinedAt: !835)
!865 = !DILocation(line: 1005, column: 18, scope: !853, inlinedAt: !835)
!866 = !DILocation(line: 298, column: 12, scope: !867, inlinedAt: !827)
!867 = distinct !DILexicalBlock(scope: !821, file: !643, line: 297, column: 7)
!868 = !DILocation(line: 450, column: 10, scope: !803)
!869 = !DILocation(line: 450, column: 17, scope: !803)
!870 = distinct !{!870, !819, !871, !706, !707}
!871 = !DILocation(line: 451, column: 32, scope: !803)
!872 = !DILocation(line: 453, column: 1, scope: !803)
!873 = distinct !DISubprogram(name: "CloneImages", scope: !643, file: !643, line: 199, type: !874, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !876)
!874 = !DISubroutineType(types: !875)
!875 = !{!409, !632, !543, !758}
!876 = !{!877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888}
!877 = !DILocalVariable(name: "images", arg: 1, scope: !873, file: !643, line: 199, type: !632)
!878 = !DILocalVariable(name: "scenes", arg: 2, scope: !873, file: !643, line: 199, type: !543)
!879 = !DILocalVariable(name: "exception", arg: 3, scope: !873, file: !643, line: 200, type: !758)
!880 = !DILocalVariable(name: "p", scope: !873, file: !643, line: 203, type: !469)
!881 = !DILocalVariable(name: "next", scope: !873, file: !643, line: 206, type: !632)
!882 = !DILocalVariable(name: "clone_images", scope: !873, file: !643, line: 209, type: !409)
!883 = !DILocalVariable(name: "image", scope: !873, file: !643, line: 210, type: !409)
!884 = !DILocalVariable(name: "first", scope: !873, file: !643, line: 213, type: !478)
!885 = !DILocalVariable(name: "last", scope: !873, file: !643, line: 214, type: !478)
!886 = !DILocalVariable(name: "step", scope: !873, file: !643, line: 215, type: !478)
!887 = !DILocalVariable(name: "i", scope: !873, file: !643, line: 218, type: !474)
!888 = !DILocalVariable(name: "length", scope: !873, file: !643, line: 221, type: !420)
!889 = !DILocation(line: 0, scope: !873)
!890 = !DILocation(line: 202, column: 3, scope: !873)
!891 = !DILocation(line: 226, column: 15, scope: !892)
!892 = distinct !DILexicalBlock(scope: !873, file: !643, line: 226, column: 7)
!893 = !DILocation(line: 226, column: 21, scope: !892)
!894 = !DILocation(line: 226, column: 7, scope: !873)
!895 = !DILocation(line: 227, column: 69, scope: !892)
!896 = !DILocation(line: 227, column: 12, scope: !892)
!897 = !DILocation(line: 227, column: 5, scope: !892)
!898 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !899)
!899 = distinct !DILocation(line: 231, column: 10, scope: !873)
!900 = !DILocation(line: 0, scope: !709, inlinedAt: !899)
!901 = !DILocation(line: 0, scope: !710, inlinedAt: !899)
!902 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !899)
!903 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !899)
!904 = distinct !{!904, !898, !905, !706, !707}
!905 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !899)
!906 = !DILocalVariable(name: "images", arg: 1, scope: !907, file: !643, line: 682, type: !632)
!907 = distinct !DISubprogram(name: "GetImageListLength", scope: !643, file: !643, line: 682, type: !908, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !910)
!908 = !DISubroutineType(types: !909)
!909 = !{!420, !632}
!910 = !{!906, !911}
!911 = !DILocalVariable(name: "i", scope: !907, file: !643, line: 685, type: !474)
!912 = !DILocation(line: 0, scope: !907, inlinedAt: !913)
!913 = distinct !DILocation(line: 232, column: 10, scope: !873)
!914 = !DILocation(line: 690, column: 15, scope: !915, inlinedAt: !913)
!915 = distinct !DILexicalBlock(scope: !907, file: !643, line: 690, column: 7)
!916 = !DILocation(line: 690, column: 21, scope: !915, inlinedAt: !913)
!917 = !DILocation(line: 690, column: 7, scope: !907, inlinedAt: !913)
!918 = !DILocation(line: 691, column: 69, scope: !915, inlinedAt: !913)
!919 = !DILocation(line: 691, column: 12, scope: !915, inlinedAt: !913)
!920 = !DILocation(line: 691, column: 5, scope: !915, inlinedAt: !913)
!921 = !DILocation(line: 728, column: 3, scope: !690, inlinedAt: !922)
!922 = distinct !DILocation(line: 692, column: 10, scope: !907, inlinedAt: !913)
!923 = !DILocation(line: 0, scope: !690, inlinedAt: !922)
!924 = !DILocation(line: 0, scope: !691, inlinedAt: !922)
!925 = !DILocation(line: 728, column: 21, scope: !700, inlinedAt: !922)
!926 = !DILocation(line: 728, column: 26, scope: !700, inlinedAt: !922)
!927 = distinct !{!927, !921, !928, !706, !707}
!928 = !DILocation(line: 728, column: 56, scope: !690, inlinedAt: !922)
!929 = !DILocation(line: 694, column: 6, scope: !930, inlinedAt: !913)
!930 = distinct !DILexicalBlock(scope: !931, file: !643, line: 693, column: 3)
!931 = distinct !DILexicalBlock(scope: !907, file: !643, line: 693, column: 3)
!932 = !DILocation(line: 693, column: 54, scope: !930, inlinedAt: !913)
!933 = !DILocation(line: 693, column: 20, scope: !930, inlinedAt: !913)
!934 = !DILocation(line: 693, column: 3, scope: !931, inlinedAt: !913)
!935 = distinct !{!935, !934, !936, !706, !707}
!936 = !DILocation(line: 694, column: 6, scope: !931, inlinedAt: !913)
!937 = !DILocation(line: 233, column: 27, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !643, line: 233, column: 3)
!939 = distinct !DILexicalBlock(scope: !873, file: !643, line: 233, column: 3)
!940 = !{!659, !659, i64 0}
!941 = !DILocation(line: 233, column: 30, scope: !938)
!942 = !DILocation(line: 233, column: 3, scope: !939)
!943 = !DILocation(line: 230, column: 15, scope: !873)
!944 = !DILocation(line: 233, column: 28, scope: !938)
!945 = distinct !{!945, !942, !946, !706, !707}
!946 = !DILocation(line: 264, column: 3, scope: !939)
!947 = !DILocation(line: 235, column: 13, scope: !948)
!948 = distinct !DILexicalBlock(scope: !938, file: !643, line: 234, column: 3)
!949 = !{!664, !664, i64 0}
!950 = !DILocation(line: 235, column: 49, scope: !948)
!951 = !DILocation(line: 235, column: 55, scope: !948)
!952 = distinct !{!952, !953, !954, !706, !707}
!953 = !DILocation(line: 235, column: 5, scope: !948)
!954 = !DILocation(line: 236, column: 8, scope: !948)
!955 = !DILocation(line: 0, scope: !948)
!956 = !DILocation(line: 237, column: 11, scope: !948)
!957 = !DILocation(line: 238, column: 15, scope: !958)
!958 = distinct !DILexicalBlock(scope: !948, file: !643, line: 238, column: 9)
!959 = !DILocation(line: 238, column: 9, scope: !948)
!960 = !DILocation(line: 241, column: 5, scope: !948)
!961 = !DILocation(line: 241, column: 12, scope: !948)
!962 = !DILocation(line: 241, column: 48, scope: !948)
!963 = !DILocation(line: 242, column: 8, scope: !948)
!964 = distinct !{!964, !960, !963, !706, !707}
!965 = !DILocation(line: 243, column: 12, scope: !966)
!966 = distinct !DILexicalBlock(scope: !948, file: !643, line: 243, column: 9)
!967 = !DILocation(line: 243, column: 9, scope: !948)
!968 = !DILocation(line: 245, column: 14, scope: !969)
!969 = distinct !DILexicalBlock(scope: !966, file: !643, line: 244, column: 7)
!970 = !DILocation(line: 246, column: 18, scope: !971)
!971 = distinct !DILexicalBlock(scope: !969, file: !643, line: 246, column: 13)
!972 = !DILocation(line: 246, column: 13, scope: !969)
!973 = !DILocation(line: 249, column: 21, scope: !974)
!974 = distinct !DILexicalBlock(scope: !948, file: !643, line: 249, column: 5)
!975 = !DILocation(line: 249, column: 15, scope: !974)
!976 = !DILocation(line: 249, column: 44, scope: !977)
!977 = distinct !DILexicalBlock(scope: !974, file: !643, line: 249, column: 5)
!978 = !DILocation(line: 249, column: 5, scope: !974)
!979 = !DILocation(line: 252, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !643, line: 252, column: 7)
!981 = distinct !DILexicalBlock(scope: !977, file: !643, line: 250, column: 5)
!982 = !DILocation(line: 254, column: 15, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !643, line: 254, column: 13)
!984 = distinct !DILexicalBlock(scope: !985, file: !643, line: 253, column: 7)
!985 = distinct !DILexicalBlock(scope: !980, file: !643, line: 252, column: 7)
!986 = !DILocation(line: 254, column: 13, scope: !984)
!987 = !DILocation(line: 256, column: 19, scope: !988)
!988 = distinct !DILexicalBlock(scope: !983, file: !643, line: 255, column: 11)
!989 = !DILocation(line: 257, column: 23, scope: !990)
!990 = distinct !DILexicalBlock(scope: !988, file: !643, line: 257, column: 17)
!991 = !DILocation(line: 257, column: 17, scope: !988)
!992 = !DILocation(line: 0, scope: !642, inlinedAt: !993)
!993 = distinct !DILocation(line: 259, column: 13, scope: !988)
!994 = !DILocation(line: 87, column: 15, scope: !656, inlinedAt: !993)
!995 = !DILocation(line: 87, column: 21, scope: !656, inlinedAt: !993)
!996 = !DILocation(line: 87, column: 7, scope: !642, inlinedAt: !993)
!997 = !DILocation(line: 88, column: 69, scope: !656, inlinedAt: !993)
!998 = !DILocation(line: 88, column: 12, scope: !656, inlinedAt: !993)
!999 = !DILocation(line: 88, column: 5, scope: !656, inlinedAt: !993)
!1000 = !DILocation(line: 89, column: 17, scope: !682, inlinedAt: !993)
!1001 = !DILocation(line: 89, column: 7, scope: !642, inlinedAt: !993)
!1002 = !DILocation(line: 0, scope: !690, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 95, column: 5, scope: !642, inlinedAt: !993)
!1004 = !DILocation(line: 0, scope: !691, inlinedAt: !1003)
!1005 = !DILocation(line: 728, column: 21, scope: !700, inlinedAt: !1003)
!1006 = !DILocation(line: 728, column: 26, scope: !700, inlinedAt: !1003)
!1007 = !DILocation(line: 728, column: 3, scope: !690, inlinedAt: !1003)
!1008 = distinct !{!1008, !1007, !1009, !706, !707}
!1009 = !DILocation(line: 728, column: 56, scope: !690, inlinedAt: !1003)
!1010 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 96, column: 5, scope: !642, inlinedAt: !993)
!1012 = !DILocation(line: 0, scope: !709, inlinedAt: !1011)
!1013 = !DILocation(line: 0, scope: !710, inlinedAt: !1011)
!1014 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !1011)
!1015 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !1011)
!1016 = distinct !{!1016, !1010, !1017, !706, !707}
!1017 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !1011)
!1018 = !DILocation(line: 97, column: 10, scope: !642, inlinedAt: !993)
!1019 = !DILocation(line: 98, column: 14, scope: !642, inlinedAt: !993)
!1020 = !DILocation(line: 99, column: 1, scope: !642, inlinedAt: !993)
!1021 = !DILocation(line: 261, column: 10, scope: !984)
!1022 = !DILocalVariable(name: "images", arg: 1, scope: !1023, file: !643, line: 754, type: !632)
!1023 = distinct !DISubprogram(name: "GetNextImageInList", scope: !643, file: !643, line: 754, type: !692, scopeLine: 755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1024)
!1024 = !{!1022}
!1025 = !DILocation(line: 0, scope: !1023, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 252, column: 54, scope: !985)
!1027 = !DILocation(line: 759, column: 15, scope: !1028, inlinedAt: !1026)
!1028 = distinct !DILexicalBlock(scope: !1023, file: !643, line: 759, column: 7)
!1029 = !DILocation(line: 759, column: 21, scope: !1028, inlinedAt: !1026)
!1030 = !DILocation(line: 759, column: 7, scope: !1023, inlinedAt: !1026)
!1031 = !DILocation(line: 760, column: 69, scope: !1028, inlinedAt: !1026)
!1032 = !DILocation(line: 760, column: 12, scope: !1028, inlinedAt: !1026)
!1033 = !DILocation(line: 760, column: 5, scope: !1028, inlinedAt: !1026)
!1034 = !DILocation(line: 761, column: 18, scope: !1023, inlinedAt: !1026)
!1035 = !DILocation(line: 252, column: 30, scope: !985)
!1036 = distinct !{!1036, !979, !1037, !706, !707}
!1037 = !DILocation(line: 262, column: 7, scope: !980)
!1038 = !DILocation(line: 249, column: 65, scope: !977)
!1039 = distinct !{!1039, !978, !1040, !706, !707}
!1040 = !DILocation(line: 263, column: 5, scope: !974)
!1041 = !DILocation(line: 0, scope: !710, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 265, column: 10, scope: !873)
!1043 = !DILocation(line: 547, column: 14, scope: !746, inlinedAt: !1042)
!1044 = !DILocation(line: 547, column: 7, scope: !710, inlinedAt: !1042)
!1045 = !DILocation(line: 0, scope: !709, inlinedAt: !1042)
!1046 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !1042)
!1047 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !1042)
!1048 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !1042)
!1049 = distinct !{!1049, !1048, !1050, !706, !707}
!1050 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !1042)
!1051 = !DILocation(line: 266, column: 1, scope: !873)
!1052 = !DILocation(line: 265, column: 3, scope: !873)
!1053 = distinct !DISubprogram(name: "NewImageList", scope: !643, file: !643, line: 918, type: !1054, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !732)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!409}
!1056 = !DILocation(line: 920, column: 3, scope: !1053)
!1057 = !DILocation(line: 0, scope: !907)
!1058 = !DILocation(line: 687, column: 14, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !907, file: !643, line: 687, column: 7)
!1060 = !DILocation(line: 687, column: 7, scope: !907)
!1061 = !DILocation(line: 690, column: 15, scope: !915)
!1062 = !DILocation(line: 690, column: 21, scope: !915)
!1063 = !DILocation(line: 690, column: 7, scope: !907)
!1064 = !DILocation(line: 691, column: 69, scope: !915)
!1065 = !DILocation(line: 691, column: 12, scope: !915)
!1066 = !DILocation(line: 691, column: 5, scope: !915)
!1067 = !DILocation(line: 728, column: 3, scope: !690, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 692, column: 10, scope: !907)
!1069 = !DILocation(line: 0, scope: !690, inlinedAt: !1068)
!1070 = !DILocation(line: 0, scope: !691, inlinedAt: !1068)
!1071 = !DILocation(line: 728, column: 21, scope: !700, inlinedAt: !1068)
!1072 = !DILocation(line: 728, column: 26, scope: !700, inlinedAt: !1068)
!1073 = distinct !{!1073, !1067, !1074, !706, !707}
!1074 = !DILocation(line: 728, column: 56, scope: !690, inlinedAt: !1068)
!1075 = !DILocation(line: 694, column: 6, scope: !930)
!1076 = !DILocation(line: 693, column: 54, scope: !930)
!1077 = !DILocation(line: 693, column: 20, scope: !930)
!1078 = !DILocation(line: 693, column: 3, scope: !931)
!1079 = distinct !{!1079, !1078, !1080, !706, !707}
!1080 = !DILocation(line: 694, column: 6, scope: !931)
!1081 = !DILocation(line: 696, column: 1, scope: !907)
!1082 = !DILocation(line: 0, scope: !1023)
!1083 = !DILocation(line: 756, column: 14, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1023, file: !643, line: 756, column: 7)
!1085 = !DILocation(line: 756, column: 7, scope: !1023)
!1086 = !DILocation(line: 759, column: 15, scope: !1028)
!1087 = !DILocation(line: 759, column: 21, scope: !1028)
!1088 = !DILocation(line: 759, column: 7, scope: !1023)
!1089 = !DILocation(line: 760, column: 69, scope: !1028)
!1090 = !DILocation(line: 760, column: 12, scope: !1028)
!1091 = !DILocation(line: 760, column: 5, scope: !1028)
!1092 = !DILocation(line: 761, column: 18, scope: !1023)
!1093 = !DILocation(line: 761, column: 3, scope: !1023)
!1094 = !DILocation(line: 762, column: 1, scope: !1023)
!1095 = !DILocation(line: 0, scope: !821)
!1096 = !DILocation(line: 0, scope: !829, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 296, column: 9, scope: !821)
!1098 = !DILocation(line: 984, column: 8, scope: !1099, inlinedAt: !1097)
!1099 = distinct !DILexicalBlock(scope: !829, file: !643, line: 984, column: 7)
!1100 = !DILocation(line: 984, column: 17, scope: !1099, inlinedAt: !1097)
!1101 = !DILocation(line: 984, column: 7, scope: !829, inlinedAt: !1097)
!1102 = !DILocation(line: 987, column: 18, scope: !837, inlinedAt: !1097)
!1103 = !DILocation(line: 987, column: 24, scope: !837, inlinedAt: !1097)
!1104 = !DILocation(line: 987, column: 7, scope: !829, inlinedAt: !1097)
!1105 = !DILocation(line: 989, column: 18, scope: !837, inlinedAt: !1097)
!1106 = !DILocation(line: 988, column: 12, scope: !837, inlinedAt: !1097)
!1107 = !DILocation(line: 990, column: 6, scope: !829, inlinedAt: !1097)
!1108 = !DILocation(line: 988, column: 5, scope: !837, inlinedAt: !1097)
!1109 = !DILocation(line: 991, column: 11, scope: !844, inlinedAt: !1097)
!1110 = !DILocation(line: 991, column: 20, scope: !844, inlinedAt: !1097)
!1111 = !DILocation(line: 0, scope: !844, inlinedAt: !1097)
!1112 = !DILocation(line: 991, column: 39, scope: !844, inlinedAt: !1097)
!1113 = !DILocation(line: 991, column: 51, scope: !844, inlinedAt: !1097)
!1114 = !DILocation(line: 991, column: 7, scope: !829, inlinedAt: !1097)
!1115 = !DILocation(line: 997, column: 24, scope: !851, inlinedAt: !1097)
!1116 = !DILocation(line: 997, column: 28, scope: !851, inlinedAt: !1097)
!1117 = !DILocation(line: 998, column: 18, scope: !851, inlinedAt: !1097)
!1118 = !DILocation(line: 1000, column: 14, scope: !857, inlinedAt: !1097)
!1119 = !DILocation(line: 1000, column: 19, scope: !857, inlinedAt: !1097)
!1120 = !DILocation(line: 1000, column: 11, scope: !853, inlinedAt: !1097)
!1121 = !DILocation(line: 1002, column: 32, scope: !861, inlinedAt: !1097)
!1122 = !DILocation(line: 1002, column: 20, scope: !861, inlinedAt: !1097)
!1123 = !DILocation(line: 1002, column: 28, scope: !861, inlinedAt: !1097)
!1124 = !DILocation(line: 1003, column: 18, scope: !861, inlinedAt: !1097)
!1125 = !DILocation(line: 1004, column: 9, scope: !861, inlinedAt: !1097)
!1126 = !DILocation(line: 1005, column: 18, scope: !853, inlinedAt: !1097)
!1127 = !DILocation(line: 298, column: 12, scope: !867)
!1128 = !DILocation(line: 298, column: 5, scope: !867)
!1129 = !DILocation(line: 299, column: 1, scope: !821)
!1130 = !DILocation(line: 0, scope: !829)
!1131 = !DILocation(line: 984, column: 8, scope: !1099)
!1132 = !DILocation(line: 984, column: 17, scope: !1099)
!1133 = !DILocation(line: 984, column: 7, scope: !829)
!1134 = !DILocation(line: 987, column: 18, scope: !837)
!1135 = !DILocation(line: 987, column: 24, scope: !837)
!1136 = !DILocation(line: 987, column: 7, scope: !829)
!1137 = !DILocation(line: 989, column: 18, scope: !837)
!1138 = !DILocation(line: 988, column: 12, scope: !837)
!1139 = !DILocation(line: 990, column: 6, scope: !829)
!1140 = !DILocation(line: 988, column: 5, scope: !837)
!1141 = !DILocation(line: 991, column: 11, scope: !844)
!1142 = !DILocation(line: 991, column: 20, scope: !844)
!1143 = !DILocation(line: 0, scope: !844)
!1144 = !DILocation(line: 991, column: 39, scope: !844)
!1145 = !DILocation(line: 991, column: 51, scope: !844)
!1146 = !DILocation(line: 991, column: 7, scope: !829)
!1147 = !DILocation(line: 1000, column: 14, scope: !857)
!1148 = !DILocation(line: 1000, column: 11, scope: !853)
!1149 = !DILocation(line: 997, column: 24, scope: !851)
!1150 = !DILocation(line: 997, column: 28, scope: !851)
!1151 = !DILocation(line: 998, column: 18, scope: !851)
!1152 = !DILocation(line: 1000, column: 19, scope: !857)
!1153 = !DILocation(line: 1002, column: 32, scope: !861)
!1154 = !DILocation(line: 1002, column: 20, scope: !861)
!1155 = !DILocation(line: 1002, column: 28, scope: !861)
!1156 = !DILocation(line: 1003, column: 18, scope: !861)
!1157 = !DILocation(line: 1004, column: 9, scope: !861)
!1158 = !DILocation(line: 1005, column: 18, scope: !853)
!1159 = !DILocation(line: 1009, column: 1, scope: !829)
!1160 = !DISubprogram(name: "DestroyImage", scope: !73, file: !73, line: 510, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1161 = distinct !DISubprogram(name: "DeleteImages", scope: !643, file: !643, line: 337, type: !1162, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !634, !543, !758}
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174}
!1165 = !DILocalVariable(name: "images", arg: 1, scope: !1161, file: !643, line: 337, type: !634)
!1166 = !DILocalVariable(name: "scenes", arg: 2, scope: !1161, file: !643, line: 337, type: !543)
!1167 = !DILocalVariable(name: "exception", arg: 3, scope: !1161, file: !643, line: 338, type: !758)
!1168 = !DILocalVariable(name: "p", scope: !1161, file: !643, line: 341, type: !469)
!1169 = !DILocalVariable(name: "image", scope: !1161, file: !643, line: 344, type: !409)
!1170 = !DILocalVariable(name: "first", scope: !1161, file: !643, line: 347, type: !478)
!1171 = !DILocalVariable(name: "last", scope: !1161, file: !643, line: 348, type: !478)
!1172 = !DILocalVariable(name: "delete_list", scope: !1161, file: !643, line: 351, type: !631)
!1173 = !DILocalVariable(name: "i", scope: !1161, file: !643, line: 354, type: !474)
!1174 = !DILocalVariable(name: "length", scope: !1161, file: !643, line: 357, type: !420)
!1175 = !DILocation(line: 0, scope: !1161)
!1176 = !DILocation(line: 340, column: 3, scope: !1161)
!1177 = !DILocation(line: 362, column: 8, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1161, file: !643, line: 362, column: 7)
!1179 = !DILocation(line: 362, column: 18, scope: !1178)
!1180 = !DILocation(line: 362, column: 24, scope: !1178)
!1181 = !DILocation(line: 362, column: 7, scope: !1161)
!1182 = !DILocation(line: 364, column: 18, scope: !1178)
!1183 = !DILocation(line: 363, column: 12, scope: !1178)
!1184 = !DILocation(line: 367, column: 31, scope: !1161)
!1185 = !DILocation(line: 0, scope: !710, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 367, column: 11, scope: !1161)
!1187 = !DILocation(line: 547, column: 14, scope: !746, inlinedAt: !1186)
!1188 = !DILocation(line: 547, column: 7, scope: !710, inlinedAt: !1186)
!1189 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !1186)
!1190 = !DILocation(line: 0, scope: !709, inlinedAt: !1186)
!1191 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !1186)
!1192 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !1186)
!1193 = distinct !{!1193, !1189, !1194, !706, !707}
!1194 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !1186)
!1195 = !DILocation(line: 367, column: 10, scope: !1161)
!1196 = !DILocation(line: 0, scope: !907, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 368, column: 10, scope: !1161)
!1198 = !DILocation(line: 690, column: 15, scope: !915, inlinedAt: !1197)
!1199 = !DILocation(line: 690, column: 21, scope: !915, inlinedAt: !1197)
!1200 = !DILocation(line: 690, column: 7, scope: !907, inlinedAt: !1197)
!1201 = !DILocation(line: 691, column: 69, scope: !915, inlinedAt: !1197)
!1202 = !DILocation(line: 691, column: 12, scope: !915, inlinedAt: !1197)
!1203 = !DILocation(line: 691, column: 5, scope: !915, inlinedAt: !1197)
!1204 = !DILocation(line: 728, column: 3, scope: !690, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 692, column: 10, scope: !907, inlinedAt: !1197)
!1206 = !DILocation(line: 0, scope: !690, inlinedAt: !1205)
!1207 = !DILocation(line: 0, scope: !691, inlinedAt: !1205)
!1208 = !DILocation(line: 728, column: 21, scope: !700, inlinedAt: !1205)
!1209 = !DILocation(line: 728, column: 26, scope: !700, inlinedAt: !1205)
!1210 = distinct !{!1210, !1204, !1211, !706, !707}
!1211 = !DILocation(line: 728, column: 56, scope: !690, inlinedAt: !1205)
!1212 = !DILocation(line: 694, column: 6, scope: !930, inlinedAt: !1197)
!1213 = !DILocation(line: 693, column: 54, scope: !930, inlinedAt: !1197)
!1214 = !DILocation(line: 693, column: 20, scope: !930, inlinedAt: !1197)
!1215 = !DILocation(line: 693, column: 3, scope: !931, inlinedAt: !1197)
!1216 = distinct !{!1216, !1215, !1217, !706, !707}
!1217 = !DILocation(line: 694, column: 6, scope: !931, inlinedAt: !1197)
!1218 = !DILocation(line: 369, column: 37, scope: !1161)
!1219 = !DILocation(line: 371, column: 19, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1161, file: !643, line: 371, column: 7)
!1221 = !DILocation(line: 371, column: 7, scope: !1161)
!1222 = !DILocation(line: 378, column: 3, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1161, file: !643, line: 378, column: 3)
!1224 = !DILocation(line: 379, column: 19, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1223, file: !643, line: 378, column: 3)
!1226 = !DILocation(line: 383, column: 9, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1161, file: !643, line: 383, column: 3)
!1228 = !DILocation(line: 374, column: 61, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1220, file: !643, line: 372, column: 5)
!1230 = !DILocation(line: 374, column: 71, scope: !1229)
!1231 = !DILocation(line: 373, column: 14, scope: !1229)
!1232 = !DILocation(line: 375, column: 7, scope: !1229)
!1233 = !DILocation(line: 383, column: 27, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1227, file: !643, line: 383, column: 3)
!1235 = !DILocation(line: 383, column: 30, scope: !1234)
!1236 = !DILocation(line: 383, column: 3, scope: !1227)
!1237 = !DILocation(line: 385, column: 13, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !643, line: 384, column: 3)
!1239 = !DILocation(line: 385, column: 49, scope: !1238)
!1240 = !DILocation(line: 385, column: 55, scope: !1238)
!1241 = distinct !{!1241, !1242, !1243, !706, !707}
!1242 = !DILocation(line: 385, column: 5, scope: !1238)
!1243 = !DILocation(line: 386, column: 8, scope: !1238)
!1244 = !DILocation(line: 0, scope: !1238)
!1245 = !DILocation(line: 387, column: 11, scope: !1238)
!1246 = !DILocation(line: 388, column: 15, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1238, file: !643, line: 388, column: 9)
!1248 = !DILocation(line: 388, column: 9, scope: !1238)
!1249 = !DILocation(line: 391, column: 5, scope: !1238)
!1250 = !DILocation(line: 391, column: 12, scope: !1238)
!1251 = !DILocation(line: 391, column: 48, scope: !1238)
!1252 = !DILocation(line: 392, column: 8, scope: !1238)
!1253 = distinct !{!1253, !1249, !1252, !706, !707}
!1254 = !DILocation(line: 393, column: 12, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1238, file: !643, line: 393, column: 9)
!1256 = !DILocation(line: 393, column: 9, scope: !1238)
!1257 = !DILocation(line: 395, column: 14, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !643, line: 394, column: 7)
!1259 = !DILocation(line: 396, column: 18, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1258, file: !643, line: 396, column: 13)
!1261 = !DILocation(line: 396, column: 13, scope: !1258)
!1262 = !DILocation(line: 399, column: 15, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1238, file: !643, line: 399, column: 9)
!1264 = !DILocation(line: 399, column: 9, scope: !1238)
!1265 = !DILocation(line: 401, column: 5, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1238, file: !643, line: 401, column: 5)
!1267 = !DILocation(line: 383, column: 28, scope: !1234)
!1268 = distinct !{!1268, !1236, !1269, !706, !707}
!1269 = !DILocation(line: 404, column: 3, scope: !1227)
!1270 = !DILocation(line: 402, column: 14, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !643, line: 402, column: 11)
!1272 = distinct !DILexicalBlock(scope: !1266, file: !643, line: 401, column: 5)
!1273 = !DILocation(line: 402, column: 20, scope: !1271)
!1274 = !DILocation(line: 403, column: 9, scope: !1271)
!1275 = !DILocation(line: 403, column: 23, scope: !1271)
!1276 = !DILocation(line: 401, column: 51, scope: !1272)
!1277 = !DILocation(line: 401, column: 31, scope: !1272)
!1278 = distinct !{!1278, !1265, !1279, !706, !707}
!1279 = !DILocation(line: 403, column: 24, scope: !1266)
!1280 = !DILocation(line: 409, column: 3, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1161, file: !643, line: 409, column: 3)
!1282 = !DILocation(line: 408, column: 10, scope: !1161)
!1283 = !DILocation(line: 411, column: 12, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !643, line: 410, column: 3)
!1285 = distinct !DILexicalBlock(scope: !1281, file: !643, line: 409, column: 3)
!1286 = !DILocation(line: 0, scope: !1023, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 412, column: 11, scope: !1284)
!1288 = !DILocation(line: 756, column: 14, scope: !1084, inlinedAt: !1287)
!1289 = !DILocation(line: 756, column: 7, scope: !1023, inlinedAt: !1287)
!1290 = !DILocation(line: 759, column: 15, scope: !1028, inlinedAt: !1287)
!1291 = !DILocation(line: 759, column: 21, scope: !1028, inlinedAt: !1287)
!1292 = !DILocation(line: 759, column: 7, scope: !1023, inlinedAt: !1287)
!1293 = !DILocation(line: 760, column: 69, scope: !1028, inlinedAt: !1287)
!1294 = !DILocation(line: 760, column: 12, scope: !1028, inlinedAt: !1287)
!1295 = !DILocation(line: 760, column: 5, scope: !1028, inlinedAt: !1287)
!1296 = !DILocation(line: 761, column: 18, scope: !1023, inlinedAt: !1287)
!1297 = !DILocation(line: 761, column: 3, scope: !1023, inlinedAt: !1287)
!1298 = !DILocation(line: 413, column: 9, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1284, file: !643, line: 413, column: 9)
!1300 = !DILocation(line: 413, column: 24, scope: !1299)
!1301 = !DILocation(line: 413, column: 9, scope: !1284)
!1302 = !DILocation(line: 0, scope: !821, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 414, column: 7, scope: !1299)
!1304 = !DILocation(line: 0, scope: !829, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 296, column: 9, scope: !821, inlinedAt: !1303)
!1306 = !DILocation(line: 984, column: 8, scope: !1099, inlinedAt: !1305)
!1307 = !DILocation(line: 984, column: 17, scope: !1099, inlinedAt: !1305)
!1308 = !DILocation(line: 984, column: 7, scope: !829, inlinedAt: !1305)
!1309 = !DILocation(line: 987, column: 18, scope: !837, inlinedAt: !1305)
!1310 = !DILocation(line: 987, column: 24, scope: !837, inlinedAt: !1305)
!1311 = !DILocation(line: 987, column: 7, scope: !829, inlinedAt: !1305)
!1312 = !DILocation(line: 989, column: 18, scope: !837, inlinedAt: !1305)
!1313 = !DILocation(line: 988, column: 12, scope: !837, inlinedAt: !1305)
!1314 = !DILocation(line: 990, column: 6, scope: !829, inlinedAt: !1305)
!1315 = !DILocation(line: 988, column: 5, scope: !837, inlinedAt: !1305)
!1316 = !DILocation(line: 991, column: 11, scope: !844, inlinedAt: !1305)
!1317 = !DILocation(line: 991, column: 20, scope: !844, inlinedAt: !1305)
!1318 = !DILocation(line: 0, scope: !844, inlinedAt: !1305)
!1319 = !DILocation(line: 991, column: 39, scope: !844, inlinedAt: !1305)
!1320 = !DILocation(line: 991, column: 51, scope: !844, inlinedAt: !1305)
!1321 = !DILocation(line: 991, column: 7, scope: !829, inlinedAt: !1305)
!1322 = !DILocation(line: 997, column: 24, scope: !851, inlinedAt: !1305)
!1323 = !DILocation(line: 997, column: 28, scope: !851, inlinedAt: !1305)
!1324 = !DILocation(line: 998, column: 18, scope: !851, inlinedAt: !1305)
!1325 = !DILocation(line: 1000, column: 14, scope: !857, inlinedAt: !1305)
!1326 = !DILocation(line: 1000, column: 19, scope: !857, inlinedAt: !1305)
!1327 = !DILocation(line: 1000, column: 11, scope: !853, inlinedAt: !1305)
!1328 = !DILocation(line: 1002, column: 32, scope: !861, inlinedAt: !1305)
!1329 = !DILocation(line: 1002, column: 20, scope: !861, inlinedAt: !1305)
!1330 = !DILocation(line: 1002, column: 28, scope: !861, inlinedAt: !1305)
!1331 = !DILocation(line: 1003, column: 18, scope: !861, inlinedAt: !1305)
!1332 = !DILocation(line: 1004, column: 9, scope: !861, inlinedAt: !1305)
!1333 = !DILocation(line: 1005, column: 18, scope: !853, inlinedAt: !1305)
!1334 = !DILocation(line: 298, column: 12, scope: !867, inlinedAt: !1303)
!1335 = !DILocation(line: 298, column: 5, scope: !867, inlinedAt: !1303)
!1336 = !DILocation(line: 409, column: 36, scope: !1285)
!1337 = !DILocation(line: 409, column: 15, scope: !1285)
!1338 = distinct !{!1338, !1280, !1339, !706, !707}
!1339 = !DILocation(line: 416, column: 3, scope: !1281)
!1340 = !DILocation(line: 417, column: 10, scope: !1161)
!1341 = !DILocation(line: 418, column: 31, scope: !1161)
!1342 = !DILocation(line: 0, scope: !710, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 418, column: 11, scope: !1161)
!1344 = !DILocation(line: 547, column: 14, scope: !746, inlinedAt: !1343)
!1345 = !DILocation(line: 547, column: 7, scope: !710, inlinedAt: !1343)
!1346 = !DILocation(line: 0, scope: !709, inlinedAt: !1343)
!1347 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !1343)
!1348 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !1343)
!1349 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !1343)
!1350 = distinct !{!1350, !1349, !1351, !706, !707}
!1351 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !1343)
!1352 = !DILocation(line: 418, column: 10, scope: !1161)
!1353 = !DILocation(line: 419, column: 1, scope: !1161)
!1354 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1355, file: !1355, line: 42, type: !1356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1355 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!465, !731, !731}
!1358 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!426, !758, !543, !543, !731, !1361, !543, !543, null}
!1361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!1362 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1355, file: !1355, line: 51, type: !1363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!465, !465}
!1365 = distinct !DISubprogram(name: "DuplicateImages", scope: !643, file: !643, line: 491, type: !1366, scopeLine: 493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!409, !409, !731, !543, !758}
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1374, !1375}
!1369 = !DILocalVariable(name: "images", arg: 1, scope: !1365, file: !643, line: 491, type: !409)
!1370 = !DILocalVariable(name: "number_duplicates", arg: 2, scope: !1365, file: !643, line: 492, type: !731)
!1371 = !DILocalVariable(name: "scenes", arg: 3, scope: !1365, file: !643, line: 492, type: !543)
!1372 = !DILocalVariable(name: "exception", arg: 4, scope: !1365, file: !643, line: 492, type: !758)
!1373 = !DILocalVariable(name: "clone_images", scope: !1365, file: !643, line: 495, type: !409)
!1374 = !DILocalVariable(name: "duplicate_images", scope: !1365, file: !643, line: 496, type: !409)
!1375 = !DILocalVariable(name: "i", scope: !1365, file: !643, line: 499, type: !474)
!1376 = !DILocation(line: 0, scope: !1365)
!1377 = !DILocation(line: 507, column: 15, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1365, file: !643, line: 507, column: 7)
!1379 = !DILocation(line: 507, column: 21, scope: !1378)
!1380 = !DILocation(line: 507, column: 7, scope: !1365)
!1381 = !DILocation(line: 508, column: 69, scope: !1378)
!1382 = !DILocation(line: 508, column: 12, scope: !1378)
!1383 = !DILocation(line: 508, column: 5, scope: !1378)
!1384 = !DILocation(line: 512, column: 15, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !643, line: 512, column: 3)
!1386 = distinct !DILexicalBlock(scope: !1365, file: !643, line: 512, column: 3)
!1387 = !DILocation(line: 512, column: 3, scope: !1386)
!1388 = !DILocation(line: 514, column: 18, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1385, file: !643, line: 513, column: 3)
!1390 = !DILocation(line: 0, scope: !642, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 515, column: 5, scope: !1389)
!1392 = !DILocation(line: 84, column: 14, scope: !653, inlinedAt: !1391)
!1393 = !DILocation(line: 84, column: 7, scope: !642, inlinedAt: !1391)
!1394 = !DILocation(line: 87, column: 15, scope: !656, inlinedAt: !1391)
!1395 = !DILocation(line: 87, column: 21, scope: !656, inlinedAt: !1391)
!1396 = !DILocation(line: 87, column: 7, scope: !642, inlinedAt: !1391)
!1397 = !DILocation(line: 88, column: 69, scope: !656, inlinedAt: !1391)
!1398 = !DILocation(line: 88, column: 12, scope: !656, inlinedAt: !1391)
!1399 = !DILocation(line: 88, column: 5, scope: !656, inlinedAt: !1391)
!1400 = !DILocation(line: 89, column: 17, scope: !682, inlinedAt: !1391)
!1401 = !DILocation(line: 89, column: 7, scope: !642, inlinedAt: !1391)
!1402 = !DILocation(line: 0, scope: !690, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 95, column: 5, scope: !642, inlinedAt: !1391)
!1404 = !DILocation(line: 0, scope: !691, inlinedAt: !1403)
!1405 = !DILocation(line: 728, column: 21, scope: !700, inlinedAt: !1403)
!1406 = !DILocation(line: 728, column: 26, scope: !700, inlinedAt: !1403)
!1407 = !DILocation(line: 728, column: 3, scope: !690, inlinedAt: !1403)
!1408 = distinct !{!1408, !1407, !1409, !706, !707}
!1409 = !DILocation(line: 728, column: 56, scope: !690, inlinedAt: !1403)
!1410 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 96, column: 5, scope: !642, inlinedAt: !1391)
!1412 = !DILocation(line: 0, scope: !709, inlinedAt: !1411)
!1413 = !DILocation(line: 0, scope: !710, inlinedAt: !1411)
!1414 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !1411)
!1415 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !1411)
!1416 = distinct !{!1416, !1410, !1417, !706, !707}
!1417 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !1411)
!1418 = !DILocation(line: 97, column: 10, scope: !642, inlinedAt: !1391)
!1419 = !DILocation(line: 98, column: 14, scope: !642, inlinedAt: !1391)
!1420 = !DILocation(line: 99, column: 1, scope: !642, inlinedAt: !1391)
!1421 = !DILocation(line: 512, column: 47, scope: !1385)
!1422 = distinct !{!1422, !1387, !1423, !706, !707}
!1423 = !DILocation(line: 516, column: 3, scope: !1386)
!1424 = !DILocation(line: 511, column: 19, scope: !1365)
!1425 = !DILocation(line: 517, column: 3, scope: !1365)
!1426 = distinct !DISubprogram(name: "GetImageFromList", scope: !643, file: !643, line: 586, type: !1427, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1430)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!409, !632, !1429}
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!1430 = !{!1431, !1432, !1433, !1434}
!1431 = !DILocalVariable(name: "images", arg: 1, scope: !1426, file: !643, line: 586, type: !632)
!1432 = !DILocalVariable(name: "index", arg: 2, scope: !1426, file: !643, line: 586, type: !1429)
!1433 = !DILocalVariable(name: "p", scope: !1426, file: !643, line: 589, type: !632)
!1434 = !DILocalVariable(name: "i", scope: !1426, file: !643, line: 592, type: !474)
!1435 = !DILocation(line: 0, scope: !1426)
!1436 = !DILocation(line: 594, column: 14, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1426, file: !643, line: 594, column: 7)
!1438 = !DILocation(line: 594, column: 7, scope: !1426)
!1439 = !DILocation(line: 597, column: 15, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1426, file: !643, line: 597, column: 7)
!1441 = !DILocation(line: 597, column: 21, scope: !1440)
!1442 = !DILocation(line: 597, column: 7, scope: !1426)
!1443 = !DILocation(line: 598, column: 69, scope: !1440)
!1444 = !DILocation(line: 598, column: 12, scope: !1440)
!1445 = !DILocation(line: 598, column: 5, scope: !1440)
!1446 = !DILocation(line: 607, column: 14, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1426, file: !643, line: 607, column: 8)
!1448 = !DILocation(line: 607, column: 8, scope: !1426)
!1449 = !DILocation(line: 0, scope: !690, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 609, column: 9, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !643, line: 608, column: 5)
!1452 = !DILocation(line: 0, scope: !691, inlinedAt: !1450)
!1453 = !DILocation(line: 728, column: 21, scope: !700, inlinedAt: !1450)
!1454 = !DILocation(line: 728, column: 26, scope: !700, inlinedAt: !1450)
!1455 = !DILocation(line: 728, column: 3, scope: !690, inlinedAt: !1450)
!1456 = distinct !{!1456, !1455, !1457, !706, !707}
!1457 = !DILocation(line: 728, column: 56, scope: !690, inlinedAt: !1450)
!1458 = !DILocation(line: 611, column: 17, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !643, line: 611, column: 13)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !643, line: 610, column: 7)
!1461 = distinct !DILexicalBlock(scope: !1451, file: !643, line: 610, column: 7)
!1462 = !DILocation(line: 611, column: 13, scope: !1460)
!1463 = !DILocation(line: 611, column: 14, scope: !1459)
!1464 = !DILocation(line: 610, column: 44, scope: !1460)
!1465 = !DILocation(line: 610, column: 20, scope: !1460)
!1466 = !DILocation(line: 610, column: 7, scope: !1461)
!1467 = distinct !{!1467, !1466, !1468, !706, !707}
!1468 = !DILocation(line: 612, column: 11, scope: !1461)
!1469 = !DILocation(line: 0, scope: !709, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 616, column: 9, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1447, file: !643, line: 615, column: 5)
!1472 = !DILocation(line: 0, scope: !710, inlinedAt: !1470)
!1473 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !1470)
!1474 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !1470)
!1475 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !1470)
!1476 = distinct !{!1476, !1475, !1477, !706, !707}
!1477 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !1470)
!1478 = !DILocation(line: 618, column: 17, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !643, line: 618, column: 13)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !643, line: 617, column: 7)
!1481 = distinct !DILexicalBlock(scope: !1471, file: !643, line: 617, column: 7)
!1482 = !DILocation(line: 618, column: 13, scope: !1480)
!1483 = !DILocation(line: 618, column: 14, scope: !1479)
!1484 = !DILocation(line: 617, column: 43, scope: !1480)
!1485 = !DILocation(line: 617, column: 19, scope: !1480)
!1486 = !DILocation(line: 617, column: 7, scope: !1481)
!1487 = distinct !{!1487, !1486, !1488, !706, !707}
!1488 = !DILocation(line: 619, column: 11, scope: !1481)
!1489 = !DILocation(line: 622, column: 1, scope: !1426)
!1490 = distinct !DISubprogram(name: "GetImageIndexInList", scope: !643, file: !643, line: 646, type: !1491, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!474, !632}
!1493 = !{!1494, !1495}
!1494 = !DILocalVariable(name: "images", arg: 1, scope: !1490, file: !643, line: 646, type: !632)
!1495 = !DILocalVariable(name: "i", scope: !1490, file: !643, line: 649, type: !474)
!1496 = !DILocation(line: 0, scope: !1490)
!1497 = !DILocation(line: 651, column: 14, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1490, file: !643, line: 651, column: 7)
!1499 = !DILocation(line: 651, column: 7, scope: !1490)
!1500 = !DILocation(line: 0, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1490, file: !643, line: 654, column: 3)
!1502 = !DILocation(line: 654, column: 21, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1501, file: !643, line: 654, column: 3)
!1504 = !DILocation(line: 654, column: 30, scope: !1503)
!1505 = !DILocation(line: 654, column: 50, scope: !1503)
!1506 = !DILocation(line: 654, column: 3, scope: !1501)
!1507 = distinct !{!1507, !1506, !1508, !706, !707}
!1508 = !DILocation(line: 655, column: 20, scope: !1501)
!1509 = !DILocation(line: 657, column: 1, scope: !1490)
!1510 = distinct !DISubprogram(name: "GetPreviousImageInList", scope: !643, file: !643, line: 786, type: !692, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1511)
!1511 = !{!1512}
!1512 = !DILocalVariable(name: "images", arg: 1, scope: !1510, file: !643, line: 786, type: !632)
!1513 = !DILocation(line: 0, scope: !1510)
!1514 = !DILocation(line: 788, column: 14, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !643, line: 788, column: 7)
!1516 = !DILocation(line: 788, column: 7, scope: !1510)
!1517 = !DILocation(line: 791, column: 18, scope: !1510)
!1518 = !DILocation(line: 791, column: 3, scope: !1510)
!1519 = !DILocation(line: 792, column: 1, scope: !1510)
!1520 = distinct !DISubprogram(name: "ImageListToArray", scope: !643, file: !643, line: 827, type: !1521, scopeLine: 829, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1523)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!634, !632, !758}
!1523 = !{!1524, !1525, !1526, !1527}
!1524 = !DILocalVariable(name: "images", arg: 1, scope: !1520, file: !643, line: 827, type: !632)
!1525 = !DILocalVariable(name: "exception", arg: 2, scope: !1520, file: !643, line: 828, type: !758)
!1526 = !DILocalVariable(name: "group", scope: !1520, file: !643, line: 831, type: !634)
!1527 = !DILocalVariable(name: "i", scope: !1520, file: !643, line: 834, type: !474)
!1528 = !DILocation(line: 0, scope: !1520)
!1529 = !DILocation(line: 836, column: 14, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1520, file: !643, line: 836, column: 7)
!1531 = !DILocation(line: 836, column: 7, scope: !1520)
!1532 = !DILocation(line: 839, column: 15, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1520, file: !643, line: 839, column: 7)
!1534 = !DILocation(line: 839, column: 21, scope: !1533)
!1535 = !DILocation(line: 839, column: 7, scope: !1520)
!1536 = !DILocation(line: 840, column: 69, scope: !1533)
!1537 = !DILocation(line: 840, column: 12, scope: !1533)
!1538 = !DILocation(line: 690, column: 15, scope: !915, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 841, column: 50, scope: !1520)
!1540 = !DILocation(line: 0, scope: !907, inlinedAt: !1539)
!1541 = !DILocation(line: 690, column: 21, scope: !915, inlinedAt: !1539)
!1542 = !DILocation(line: 690, column: 7, scope: !907, inlinedAt: !1539)
!1543 = !DILocation(line: 691, column: 12, scope: !915, inlinedAt: !1539)
!1544 = !DILocation(line: 691, column: 5, scope: !915, inlinedAt: !1539)
!1545 = !DILocation(line: 728, column: 3, scope: !690, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 692, column: 10, scope: !907, inlinedAt: !1539)
!1547 = !DILocation(line: 0, scope: !690, inlinedAt: !1546)
!1548 = !DILocation(line: 0, scope: !691, inlinedAt: !1546)
!1549 = !DILocation(line: 728, column: 21, scope: !700, inlinedAt: !1546)
!1550 = !DILocation(line: 728, column: 26, scope: !700, inlinedAt: !1546)
!1551 = distinct !{!1551, !1545, !1552, !706, !707}
!1552 = !DILocation(line: 728, column: 56, scope: !690, inlinedAt: !1546)
!1553 = !DILocation(line: 694, column: 6, scope: !930, inlinedAt: !1539)
!1554 = !DILocation(line: 693, column: 54, scope: !930, inlinedAt: !1539)
!1555 = !DILocation(line: 693, column: 20, scope: !930, inlinedAt: !1539)
!1556 = !DILocation(line: 693, column: 3, scope: !931, inlinedAt: !1539)
!1557 = distinct !{!1557, !1556, !1558, !706, !707}
!1558 = !DILocation(line: 694, column: 6, scope: !931, inlinedAt: !1539)
!1559 = !DILocation(line: 841, column: 76, scope: !1520)
!1560 = !DILocation(line: 841, column: 20, scope: !1520)
!1561 = !DILocation(line: 843, column: 13, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1520, file: !643, line: 843, column: 7)
!1563 = !DILocation(line: 843, column: 7, scope: !1520)
!1564 = !DILocation(line: 846, column: 68, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1562, file: !643, line: 844, column: 5)
!1566 = !DILocation(line: 845, column: 14, scope: !1565)
!1567 = !DILocation(line: 847, column: 7, scope: !1565)
!1568 = !DILocation(line: 0, scope: !709, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 849, column: 10, scope: !1520)
!1570 = !DILocation(line: 0, scope: !710, inlinedAt: !1569)
!1571 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !1569)
!1572 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !1569)
!1573 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !1569)
!1574 = distinct !{!1574, !1573, !1575, !706, !707}
!1575 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !1569)
!1576 = !DILocation(line: 851, column: 12, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !643, line: 850, column: 3)
!1578 = distinct !DILexicalBlock(scope: !1520, file: !643, line: 850, column: 3)
!1579 = !DILocation(line: 851, column: 5, scope: !1577)
!1580 = !DILocation(line: 851, column: 15, scope: !1577)
!1581 = !DILocation(line: 850, column: 54, scope: !1577)
!1582 = !DILocation(line: 850, column: 20, scope: !1577)
!1583 = !DILocation(line: 850, column: 3, scope: !1578)
!1584 = distinct !{!1584, !1583, !1585, !706, !707}
!1585 = !DILocation(line: 851, column: 26, scope: !1578)
!1586 = !DILocation(line: 852, column: 3, scope: !1520)
!1587 = !DILocation(line: 852, column: 11, scope: !1520)
!1588 = !DILocation(line: 853, column: 3, scope: !1520)
!1589 = !DILocation(line: 854, column: 1, scope: !1520)
!1590 = distinct !DISubprogram(name: "InsertImageInList", scope: !643, file: !643, line: 882, type: !1591, scopeLine: 883, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1593)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !634, !409}
!1593 = !{!1594, !1595, !1596}
!1594 = !DILocalVariable(name: "images", arg: 1, scope: !1590, file: !643, line: 882, type: !634)
!1595 = !DILocalVariable(name: "insert", arg: 2, scope: !1590, file: !643, line: 882, type: !409)
!1596 = !DILocalVariable(name: "split", scope: !1590, file: !643, line: 885, type: !409)
!1597 = !DILocation(line: 0, scope: !1590)
!1598 = !DILocation(line: 890, column: 15, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1590, file: !643, line: 890, column: 7)
!1600 = !DILocation(line: 890, column: 21, scope: !1599)
!1601 = !DILocation(line: 890, column: 7, scope: !1590)
!1602 = !DILocation(line: 891, column: 69, scope: !1599)
!1603 = !DILocation(line: 891, column: 12, scope: !1599)
!1604 = !DILocation(line: 891, column: 5, scope: !1599)
!1605 = !DILocation(line: 892, column: 8, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1590, file: !643, line: 892, column: 7)
!1607 = !DILocation(line: 892, column: 17, scope: !1606)
!1608 = !DILocation(line: 892, column: 7, scope: !1590)
!1609 = !DILocalVariable(name: "images", arg: 1, scope: !1610, file: !643, line: 1354, type: !409)
!1610 = distinct !DISubprogram(name: "SplitImageList", scope: !643, file: !643, line: 1354, type: !804, scopeLine: 1355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1611)
!1611 = !{!1609}
!1612 = !DILocation(line: 0, scope: !1610, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 895, column: 9, scope: !1590)
!1614 = !DILocation(line: 1356, column: 46, scope: !1615, inlinedAt: !1613)
!1615 = distinct !DILexicalBlock(scope: !1610, file: !643, line: 1356, column: 7)
!1616 = !DILocation(line: 1356, column: 51, scope: !1615, inlinedAt: !1613)
!1617 = !DILocation(line: 1356, column: 7, scope: !1610, inlinedAt: !1613)
!1618 = !DILocation(line: 1359, column: 11, scope: !1610, inlinedAt: !1613)
!1619 = !DILocation(line: 1359, column: 21, scope: !1610, inlinedAt: !1613)
!1620 = !DILocation(line: 1359, column: 25, scope: !1610, inlinedAt: !1613)
!1621 = !DILocation(line: 1360, column: 19, scope: !1610, inlinedAt: !1613)
!1622 = !DILocation(line: 1361, column: 3, scope: !1610, inlinedAt: !1613)
!1623 = !DILocation(line: 0, scope: !642, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 896, column: 3, scope: !1590)
!1625 = !DILocation(line: 87, column: 15, scope: !656, inlinedAt: !1624)
!1626 = !DILocation(line: 87, column: 21, scope: !656, inlinedAt: !1624)
!1627 = !DILocation(line: 87, column: 7, scope: !642, inlinedAt: !1624)
!1628 = !DILocation(line: 88, column: 69, scope: !656, inlinedAt: !1624)
!1629 = !DILocation(line: 88, column: 12, scope: !656, inlinedAt: !1624)
!1630 = !DILocation(line: 88, column: 5, scope: !656, inlinedAt: !1624)
!1631 = !DILocation(line: 89, column: 8, scope: !682, inlinedAt: !1624)
!1632 = !DILocation(line: 89, column: 17, scope: !682, inlinedAt: !1624)
!1633 = !DILocation(line: 89, column: 7, scope: !642, inlinedAt: !1624)
!1634 = !DILocation(line: 91, column: 14, scope: !687, inlinedAt: !1624)
!1635 = !DILocation(line: 92, column: 7, scope: !687, inlinedAt: !1624)
!1636 = !DILocation(line: 0, scope: !690, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 95, column: 5, scope: !642, inlinedAt: !1624)
!1638 = !DILocation(line: 0, scope: !691, inlinedAt: !1637)
!1639 = !DILocation(line: 728, column: 21, scope: !700, inlinedAt: !1637)
!1640 = !DILocation(line: 728, column: 26, scope: !700, inlinedAt: !1637)
!1641 = !DILocation(line: 728, column: 3, scope: !690, inlinedAt: !1637)
!1642 = distinct !{!1642, !1641, !1643, !706, !707}
!1643 = !DILocation(line: 728, column: 56, scope: !690, inlinedAt: !1637)
!1644 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 96, column: 5, scope: !642, inlinedAt: !1624)
!1646 = !DILocation(line: 0, scope: !709, inlinedAt: !1645)
!1647 = !DILocation(line: 0, scope: !710, inlinedAt: !1645)
!1648 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !1645)
!1649 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !1645)
!1650 = distinct !{!1650, !1644, !1651, !706, !707}
!1651 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !1645)
!1652 = !DILocation(line: 97, column: 10, scope: !642, inlinedAt: !1624)
!1653 = !DILocation(line: 98, column: 14, scope: !642, inlinedAt: !1624)
!1654 = !DILocation(line: 99, column: 1, scope: !642, inlinedAt: !1624)
!1655 = !DILocation(line: 0, scope: !642, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 897, column: 3, scope: !1590)
!1657 = !DILocation(line: 84, column: 7, scope: !642, inlinedAt: !1656)
!1658 = !DILocation(line: 87, column: 15, scope: !656, inlinedAt: !1656)
!1659 = !DILocation(line: 87, column: 21, scope: !656, inlinedAt: !1656)
!1660 = !DILocation(line: 87, column: 7, scope: !642, inlinedAt: !1656)
!1661 = !DILocation(line: 88, column: 69, scope: !656, inlinedAt: !1656)
!1662 = !DILocation(line: 88, column: 12, scope: !656, inlinedAt: !1656)
!1663 = !DILocation(line: 88, column: 5, scope: !656, inlinedAt: !1656)
!1664 = !DILocation(line: 89, column: 8, scope: !682, inlinedAt: !1656)
!1665 = !DILocation(line: 89, column: 17, scope: !682, inlinedAt: !1656)
!1666 = !DILocation(line: 89, column: 7, scope: !642, inlinedAt: !1656)
!1667 = !DILocation(line: 91, column: 14, scope: !687, inlinedAt: !1656)
!1668 = !DILocation(line: 92, column: 7, scope: !687, inlinedAt: !1656)
!1669 = !DILocation(line: 0, scope: !690, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 95, column: 5, scope: !642, inlinedAt: !1656)
!1671 = !DILocation(line: 0, scope: !691, inlinedAt: !1670)
!1672 = !DILocation(line: 728, column: 21, scope: !700, inlinedAt: !1670)
!1673 = !DILocation(line: 728, column: 26, scope: !700, inlinedAt: !1670)
!1674 = !DILocation(line: 728, column: 3, scope: !690, inlinedAt: !1670)
!1675 = distinct !{!1675, !1674, !1676, !706, !707}
!1676 = !DILocation(line: 728, column: 56, scope: !690, inlinedAt: !1670)
!1677 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 96, column: 5, scope: !642, inlinedAt: !1656)
!1679 = !DILocation(line: 0, scope: !709, inlinedAt: !1678)
!1680 = !DILocation(line: 0, scope: !710, inlinedAt: !1678)
!1681 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !1678)
!1682 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !1678)
!1683 = distinct !{!1683, !1677, !1684, !706, !707}
!1684 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !1678)
!1685 = !DILocation(line: 97, column: 10, scope: !642, inlinedAt: !1656)
!1686 = !DILocation(line: 98, column: 14, scope: !642, inlinedAt: !1656)
!1687 = !DILocation(line: 99, column: 1, scope: !642, inlinedAt: !1656)
!1688 = !DILocation(line: 898, column: 1, scope: !1590)
!1689 = !DILocation(line: 0, scope: !1610)
!1690 = !DILocation(line: 1356, column: 15, scope: !1615)
!1691 = !DILocation(line: 1356, column: 34, scope: !1615)
!1692 = !DILocation(line: 1356, column: 46, scope: !1615)
!1693 = !DILocation(line: 1356, column: 51, scope: !1615)
!1694 = !DILocation(line: 1356, column: 7, scope: !1610)
!1695 = !DILocation(line: 1359, column: 11, scope: !1610)
!1696 = !DILocation(line: 1359, column: 21, scope: !1610)
!1697 = !DILocation(line: 1359, column: 25, scope: !1610)
!1698 = !DILocation(line: 1360, column: 19, scope: !1610)
!1699 = !DILocation(line: 1361, column: 3, scope: !1610)
!1700 = !DILocation(line: 1362, column: 1, scope: !1610)
!1701 = distinct !DISubprogram(name: "PrependImageToList", scope: !643, file: !643, line: 947, type: !1591, scopeLine: 948, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1702)
!1702 = !{!1703, !1704}
!1703 = !DILocalVariable(name: "images", arg: 1, scope: !1701, file: !643, line: 947, type: !634)
!1704 = !DILocalVariable(name: "image", arg: 2, scope: !1701, file: !643, line: 947, type: !409)
!1705 = !DILocation(line: 0, scope: !1701)
!1706 = !DILocation(line: 949, column: 28, scope: !1701)
!1707 = !DILocation(line: 0, scope: !642, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 949, column: 3, scope: !1701)
!1709 = !DILocation(line: 84, column: 14, scope: !653, inlinedAt: !1708)
!1710 = !DILocation(line: 84, column: 7, scope: !642, inlinedAt: !1708)
!1711 = !DILocation(line: 87, column: 15, scope: !656, inlinedAt: !1708)
!1712 = !DILocation(line: 87, column: 21, scope: !656, inlinedAt: !1708)
!1713 = !DILocation(line: 87, column: 7, scope: !642, inlinedAt: !1708)
!1714 = !DILocation(line: 88, column: 69, scope: !656, inlinedAt: !1708)
!1715 = !DILocation(line: 88, column: 12, scope: !656, inlinedAt: !1708)
!1716 = !DILocation(line: 88, column: 5, scope: !656, inlinedAt: !1708)
!1717 = !DILocation(line: 89, column: 17, scope: !682, inlinedAt: !1708)
!1718 = !DILocation(line: 89, column: 7, scope: !642, inlinedAt: !1708)
!1719 = !DILocation(line: 0, scope: !690, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 95, column: 5, scope: !642, inlinedAt: !1708)
!1721 = !DILocation(line: 0, scope: !691, inlinedAt: !1720)
!1722 = !DILocation(line: 728, column: 21, scope: !700, inlinedAt: !1720)
!1723 = !DILocation(line: 728, column: 26, scope: !700, inlinedAt: !1720)
!1724 = !DILocation(line: 728, column: 3, scope: !690, inlinedAt: !1720)
!1725 = distinct !{!1725, !1724, !1726, !706, !707}
!1726 = !DILocation(line: 728, column: 56, scope: !690, inlinedAt: !1720)
!1727 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 96, column: 5, scope: !642, inlinedAt: !1708)
!1729 = !DILocation(line: 0, scope: !709, inlinedAt: !1728)
!1730 = !DILocation(line: 0, scope: !710, inlinedAt: !1728)
!1731 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !1728)
!1732 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !1728)
!1733 = distinct !{!1733, !1727, !1734, !706, !707}
!1734 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !1728)
!1735 = !DILocation(line: 97, column: 10, scope: !642, inlinedAt: !1708)
!1736 = !DILocation(line: 98, column: 14, scope: !642, inlinedAt: !1708)
!1737 = !DILocation(line: 99, column: 1, scope: !642, inlinedAt: !1708)
!1738 = !DILocation(line: 950, column: 1, scope: !1701)
!1739 = distinct !DISubprogram(name: "RemoveFirstImageFromList", scope: !643, file: !643, line: 1037, type: !830, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1740)
!1740 = !{!1741, !1742}
!1741 = !DILocalVariable(name: "images", arg: 1, scope: !1739, file: !643, line: 1037, type: !634)
!1742 = !DILocalVariable(name: "image", scope: !1739, file: !643, line: 1040, type: !409)
!1743 = !DILocation(line: 0, scope: !1739)
!1744 = !DILocation(line: 1043, column: 8, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1739, file: !643, line: 1043, column: 7)
!1746 = !DILocation(line: 1043, column: 17, scope: !1745)
!1747 = !DILocation(line: 1043, column: 7, scope: !1739)
!1748 = !DILocation(line: 1046, column: 18, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1739, file: !643, line: 1046, column: 7)
!1750 = !DILocation(line: 1046, column: 24, scope: !1749)
!1751 = !DILocation(line: 1046, column: 7, scope: !1739)
!1752 = !DILocation(line: 1048, column: 18, scope: !1749)
!1753 = !DILocation(line: 1047, column: 12, scope: !1749)
!1754 = !DILocation(line: 1049, column: 10, scope: !1739)
!1755 = !DILocation(line: 1047, column: 5, scope: !1749)
!1756 = !DILocation(line: 1050, column: 3, scope: !1739)
!1757 = !DILocation(line: 1050, column: 17, scope: !1739)
!1758 = !DILocation(line: 1050, column: 26, scope: !1739)
!1759 = distinct !{!1759, !1756, !1760, !706, !707}
!1760 = !DILocation(line: 1051, column: 18, scope: !1739)
!1761 = !DILocation(line: 1052, column: 13, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1739, file: !643, line: 1052, column: 7)
!1763 = !DILocation(line: 1052, column: 7, scope: !1739)
!1764 = !DILocation(line: 1053, column: 24, scope: !1762)
!1765 = !DILocation(line: 1053, column: 12, scope: !1762)
!1766 = !DILocation(line: 1053, column: 5, scope: !1762)
!1767 = !DILocation(line: 1054, column: 14, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1739, file: !643, line: 1054, column: 7)
!1769 = !DILocation(line: 1054, column: 19, scope: !1768)
!1770 = !DILocation(line: 1054, column: 7, scope: !1739)
!1771 = !DILocation(line: 1056, column: 20, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1768, file: !643, line: 1055, column: 5)
!1773 = !DILocation(line: 1056, column: 28, scope: !1772)
!1774 = !DILocation(line: 1057, column: 18, scope: !1772)
!1775 = !DILocation(line: 1058, column: 5, scope: !1772)
!1776 = !DILocation(line: 1060, column: 1, scope: !1739)
!1777 = distinct !DISubprogram(name: "RemoveLastImageFromList", scope: !643, file: !643, line: 1088, type: !830, scopeLine: 1089, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1778)
!1778 = !{!1779, !1780}
!1779 = !DILocalVariable(name: "images", arg: 1, scope: !1777, file: !643, line: 1088, type: !634)
!1780 = !DILocalVariable(name: "image", scope: !1777, file: !643, line: 1091, type: !409)
!1781 = !DILocation(line: 0, scope: !1777)
!1782 = !DILocation(line: 1094, column: 8, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1777, file: !643, line: 1094, column: 7)
!1784 = !DILocation(line: 1094, column: 17, scope: !1783)
!1785 = !DILocation(line: 1094, column: 7, scope: !1777)
!1786 = !DILocation(line: 1097, column: 18, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1777, file: !643, line: 1097, column: 7)
!1788 = !DILocation(line: 1097, column: 24, scope: !1787)
!1789 = !DILocation(line: 1097, column: 7, scope: !1777)
!1790 = !DILocation(line: 1099, column: 18, scope: !1787)
!1791 = !DILocation(line: 1098, column: 12, scope: !1787)
!1792 = !DILocation(line: 1100, column: 10, scope: !1777)
!1793 = !DILocation(line: 1098, column: 5, scope: !1787)
!1794 = !DILocation(line: 1101, column: 3, scope: !1777)
!1795 = !DILocation(line: 1101, column: 17, scope: !1777)
!1796 = !DILocation(line: 1101, column: 22, scope: !1777)
!1797 = distinct !{!1797, !1794, !1798, !706, !707}
!1798 = !DILocation(line: 1102, column: 18, scope: !1777)
!1799 = !DILocation(line: 1103, column: 13, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1777, file: !643, line: 1103, column: 7)
!1801 = !DILocation(line: 1103, column: 7, scope: !1777)
!1802 = !DILocation(line: 1104, column: 24, scope: !1800)
!1803 = !DILocation(line: 1104, column: 12, scope: !1800)
!1804 = !DILocation(line: 1104, column: 5, scope: !1800)
!1805 = !DILocation(line: 1105, column: 14, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1777, file: !643, line: 1105, column: 7)
!1807 = !DILocation(line: 1105, column: 23, scope: !1806)
!1808 = !DILocation(line: 1105, column: 7, scope: !1777)
!1809 = !DILocation(line: 1107, column: 24, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !643, line: 1106, column: 5)
!1811 = !DILocation(line: 1107, column: 28, scope: !1810)
!1812 = !DILocation(line: 1108, column: 22, scope: !1810)
!1813 = !DILocation(line: 1109, column: 5, scope: !1810)
!1814 = !DILocation(line: 1111, column: 1, scope: !1777)
!1815 = distinct !DISubprogram(name: "ReplaceImageInList", scope: !643, file: !643, line: 1141, type: !1591, scopeLine: 1142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1816)
!1816 = !{!1817, !1818}
!1817 = !DILocalVariable(name: "images", arg: 1, scope: !1815, file: !643, line: 1141, type: !634)
!1818 = !DILocalVariable(name: "replace", arg: 2, scope: !1815, file: !643, line: 1141, type: !409)
!1819 = !DILocation(line: 0, scope: !1815)
!1820 = !DILocation(line: 1146, column: 16, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1815, file: !643, line: 1146, column: 7)
!1822 = !DILocation(line: 1146, column: 22, scope: !1821)
!1823 = !DILocation(line: 1146, column: 7, scope: !1815)
!1824 = !DILocation(line: 1147, column: 70, scope: !1821)
!1825 = !DILocation(line: 1147, column: 12, scope: !1821)
!1826 = !DILocation(line: 1147, column: 5, scope: !1821)
!1827 = !DILocation(line: 1148, column: 8, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1815, file: !643, line: 1148, column: 7)
!1829 = !DILocation(line: 1148, column: 17, scope: !1828)
!1830 = !DILocation(line: 1148, column: 7, scope: !1815)
!1831 = !DILocation(line: 0, scope: !690, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 1153, column: 11, scope: !1815)
!1833 = !DILocation(line: 0, scope: !691, inlinedAt: !1832)
!1834 = !DILocation(line: 728, column: 21, scope: !700, inlinedAt: !1832)
!1835 = !DILocation(line: 728, column: 26, scope: !700, inlinedAt: !1832)
!1836 = !DILocation(line: 728, column: 3, scope: !690, inlinedAt: !1832)
!1837 = distinct !{!1837, !1836, !1838, !706, !707}
!1838 = !DILocation(line: 728, column: 56, scope: !690, inlinedAt: !1832)
!1839 = !DILocation(line: 1154, column: 28, scope: !1815)
!1840 = !DILocation(line: 1154, column: 16, scope: !1815)
!1841 = !DILocation(line: 1155, column: 21, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1815, file: !643, line: 1155, column: 7)
!1843 = !DILocation(line: 1155, column: 7, scope: !1815)
!1844 = !DILocation(line: 1156, column: 20, scope: !1842)
!1845 = !DILocation(line: 1156, column: 28, scope: !1842)
!1846 = !DILocation(line: 1156, column: 5, scope: !1842)
!1847 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 1159, column: 11, scope: !1815)
!1849 = !DILocation(line: 0, scope: !709, inlinedAt: !1848)
!1850 = !DILocation(line: 0, scope: !710, inlinedAt: !1848)
!1851 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !1848)
!1852 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !1848)
!1853 = distinct !{!1853, !1847, !1854, !706, !707}
!1854 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !1848)
!1855 = !DILocation(line: 1160, column: 22, scope: !1815)
!1856 = !DILocation(line: 1160, column: 32, scope: !1815)
!1857 = !DILocation(line: 1160, column: 20, scope: !1815)
!1858 = !DILocation(line: 1161, column: 25, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1815, file: !643, line: 1161, column: 7)
!1860 = !DILocation(line: 1161, column: 7, scope: !1815)
!1861 = !DILocation(line: 1162, column: 24, scope: !1859)
!1862 = !DILocation(line: 1162, column: 28, scope: !1859)
!1863 = !DILocation(line: 1162, column: 5, scope: !1859)
!1864 = !DILocation(line: 1165, column: 23, scope: !1815)
!1865 = !DILocation(line: 1165, column: 10, scope: !1815)
!1866 = !DILocation(line: 1166, column: 12, scope: !1815)
!1867 = !DILocation(line: 1167, column: 1, scope: !1815)
!1868 = distinct !DISubprogram(name: "ReplaceImageInListReturnLast", scope: !643, file: !643, line: 1199, type: !1591, scopeLine: 1200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1869)
!1869 = !{!1870, !1871}
!1870 = !DILocalVariable(name: "images", arg: 1, scope: !1868, file: !643, line: 1199, type: !634)
!1871 = !DILocalVariable(name: "replace", arg: 2, scope: !1868, file: !643, line: 1199, type: !409)
!1872 = !DILocation(line: 0, scope: !1868)
!1873 = !DILocation(line: 1204, column: 16, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1868, file: !643, line: 1204, column: 7)
!1875 = !DILocation(line: 1204, column: 22, scope: !1874)
!1876 = !DILocation(line: 1204, column: 7, scope: !1868)
!1877 = !DILocation(line: 1205, column: 70, scope: !1874)
!1878 = !DILocation(line: 1205, column: 12, scope: !1874)
!1879 = !DILocation(line: 1205, column: 5, scope: !1874)
!1880 = !DILocation(line: 1206, column: 8, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1868, file: !643, line: 1206, column: 7)
!1882 = !DILocation(line: 1206, column: 17, scope: !1881)
!1883 = !DILocation(line: 1206, column: 7, scope: !1868)
!1884 = !DILocation(line: 0, scope: !709, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 1211, column: 11, scope: !1868)
!1886 = !DILocation(line: 0, scope: !710, inlinedAt: !1885)
!1887 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !1885)
!1888 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !1885)
!1889 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !1885)
!1890 = distinct !{!1890, !1889, !1891, !706, !707}
!1891 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !1885)
!1892 = !DILocation(line: 1212, column: 32, scope: !1868)
!1893 = !DILocation(line: 1212, column: 20, scope: !1868)
!1894 = !DILocation(line: 1213, column: 25, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1868, file: !643, line: 1213, column: 7)
!1896 = !DILocation(line: 1213, column: 7, scope: !1868)
!1897 = !DILocation(line: 1214, column: 24, scope: !1895)
!1898 = !DILocation(line: 1214, column: 28, scope: !1895)
!1899 = !DILocation(line: 1214, column: 5, scope: !1895)
!1900 = !DILocation(line: 728, column: 3, scope: !690, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 1217, column: 11, scope: !1868)
!1902 = !DILocation(line: 0, scope: !690, inlinedAt: !1901)
!1903 = !DILocation(line: 0, scope: !691, inlinedAt: !1901)
!1904 = !DILocation(line: 728, column: 21, scope: !700, inlinedAt: !1901)
!1905 = !DILocation(line: 728, column: 26, scope: !700, inlinedAt: !1901)
!1906 = distinct !{!1906, !1900, !1907, !706, !707}
!1907 = !DILocation(line: 728, column: 56, scope: !690, inlinedAt: !1901)
!1908 = !DILocation(line: 1218, column: 18, scope: !1868)
!1909 = !DILocation(line: 1218, column: 28, scope: !1868)
!1910 = !DILocation(line: 1218, column: 16, scope: !1868)
!1911 = !DILocation(line: 1219, column: 21, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1868, file: !643, line: 1219, column: 7)
!1913 = !DILocation(line: 1219, column: 7, scope: !1868)
!1914 = !DILocation(line: 1220, column: 20, scope: !1912)
!1915 = !DILocation(line: 1220, column: 28, scope: !1912)
!1916 = !DILocation(line: 1220, column: 5, scope: !1912)
!1917 = !DILocation(line: 1223, column: 23, scope: !1868)
!1918 = !DILocation(line: 1223, column: 10, scope: !1868)
!1919 = !DILocation(line: 1224, column: 12, scope: !1868)
!1920 = !DILocation(line: 1225, column: 1, scope: !1868)
!1921 = distinct !DISubprogram(name: "ReverseImageList", scope: !643, file: !643, line: 1250, type: !822, scopeLine: 1251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1922)
!1922 = !{!1923, !1924, !1925}
!1923 = !DILocalVariable(name: "images", arg: 1, scope: !1921, file: !643, line: 1250, type: !634)
!1924 = !DILocalVariable(name: "next", scope: !1921, file: !643, line: 1253, type: !409)
!1925 = !DILocalVariable(name: "p", scope: !1921, file: !643, line: 1256, type: !409)
!1926 = !DILocation(line: 0, scope: !1921)
!1927 = !DILocation(line: 1259, column: 8, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1921, file: !643, line: 1259, column: 7)
!1929 = !DILocation(line: 1259, column: 17, scope: !1928)
!1930 = !DILocation(line: 1259, column: 7, scope: !1921)
!1931 = !DILocation(line: 1262, column: 18, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1921, file: !643, line: 1262, column: 7)
!1933 = !DILocation(line: 1262, column: 24, scope: !1932)
!1934 = !DILocation(line: 1262, column: 7, scope: !1921)
!1935 = !DILocation(line: 1264, column: 18, scope: !1932)
!1936 = !DILocation(line: 1263, column: 12, scope: !1932)
!1937 = !DILocation(line: 1265, column: 11, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1921, file: !643, line: 1265, column: 3)
!1939 = !DILocation(line: 1263, column: 5, scope: !1932)
!1940 = !DILocation(line: 1265, column: 3, scope: !1938)
!1941 = !DILocation(line: 0, scope: !1938)
!1942 = !DILocation(line: 1265, column: 24, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1938, file: !643, line: 1265, column: 3)
!1944 = !DILocation(line: 1265, column: 29, scope: !1943)
!1945 = distinct !{!1945, !1940, !1946, !706, !707}
!1946 = !DILocation(line: 1265, column: 59, scope: !1938)
!1947 = !DILocation(line: 1266, column: 10, scope: !1921)
!1948 = !DILocation(line: 1267, column: 3, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1921, file: !643, line: 1267, column: 3)
!1950 = !DILocation(line: 1269, column: 13, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !643, line: 1268, column: 3)
!1952 = distinct !DILexicalBlock(scope: !1949, file: !643, line: 1267, column: 3)
!1953 = !DILocation(line: 1270, column: 16, scope: !1951)
!1954 = !DILocation(line: 1270, column: 12, scope: !1951)
!1955 = !DILocation(line: 1271, column: 16, scope: !1951)
!1956 = !DILocation(line: 1267, column: 13, scope: !1952)
!1957 = distinct !{!1957, !1948, !1958, !706, !707}
!1958 = !DILocation(line: 1272, column: 3, scope: !1949)
!1959 = !DILocation(line: 1273, column: 1, scope: !1921)
!1960 = distinct !DISubprogram(name: "SpliceImageIntoList", scope: !643, file: !643, line: 1303, type: !1961, scopeLine: 1305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1963)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!409, !634, !731, !632}
!1963 = !{!1964, !1965, !1966, !1967, !1968, !1969}
!1964 = !DILocalVariable(name: "images", arg: 1, scope: !1960, file: !643, line: 1303, type: !634)
!1965 = !DILocalVariable(name: "length", arg: 2, scope: !1960, file: !643, line: 1304, type: !731)
!1966 = !DILocalVariable(name: "splice", arg: 3, scope: !1960, file: !643, line: 1304, type: !632)
!1967 = !DILocalVariable(name: "image", scope: !1960, file: !643, line: 1307, type: !409)
!1968 = !DILocalVariable(name: "split", scope: !1960, file: !643, line: 1308, type: !409)
!1969 = !DILocalVariable(name: "i", scope: !1960, file: !643, line: 1311, type: !420)
!1970 = !DILocation(line: 0, scope: !1960)
!1971 = !DILocation(line: 1306, column: 3, scope: !1960)
!1972 = !DILocation(line: 1316, column: 8, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1960, file: !643, line: 1316, column: 7)
!1974 = !DILocation(line: 1316, column: 17, scope: !1973)
!1975 = !DILocation(line: 1316, column: 7, scope: !1960)
!1976 = !DILocation(line: 1319, column: 18, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1960, file: !643, line: 1319, column: 7)
!1978 = !DILocation(line: 1319, column: 24, scope: !1977)
!1979 = !DILocation(line: 1319, column: 7, scope: !1960)
!1980 = !DILocation(line: 1321, column: 18, scope: !1977)
!1981 = !DILocation(line: 1320, column: 12, scope: !1977)
!1982 = !DILocation(line: 1322, column: 24, scope: !1960)
!1983 = !DILocation(line: 0, scope: !1610, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 1322, column: 9, scope: !1960)
!1985 = !DILocation(line: 1356, column: 15, scope: !1615, inlinedAt: !1984)
!1986 = !DILocation(line: 1356, column: 34, scope: !1615, inlinedAt: !1984)
!1987 = !DILocation(line: 1356, column: 46, scope: !1615, inlinedAt: !1984)
!1988 = !DILocation(line: 1356, column: 51, scope: !1615, inlinedAt: !1984)
!1989 = !DILocation(line: 1356, column: 7, scope: !1610, inlinedAt: !1984)
!1990 = !DILocation(line: 1359, column: 11, scope: !1610, inlinedAt: !1984)
!1991 = !DILocation(line: 1359, column: 21, scope: !1610, inlinedAt: !1984)
!1992 = !DILocation(line: 1359, column: 25, scope: !1610, inlinedAt: !1984)
!1993 = !DILocation(line: 1360, column: 19, scope: !1610, inlinedAt: !1984)
!1994 = !DILocation(line: 1361, column: 3, scope: !1610, inlinedAt: !1984)
!1995 = !DILocation(line: 1322, column: 8, scope: !1960)
!1996 = !DILocation(line: 0, scope: !642, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 1323, column: 3, scope: !1960)
!1998 = !DILocation(line: 84, column: 14, scope: !653, inlinedAt: !1997)
!1999 = !DILocation(line: 84, column: 7, scope: !642, inlinedAt: !1997)
!2000 = !DILocation(line: 87, column: 15, scope: !656, inlinedAt: !1997)
!2001 = !DILocation(line: 87, column: 21, scope: !656, inlinedAt: !1997)
!2002 = !DILocation(line: 87, column: 7, scope: !642, inlinedAt: !1997)
!2003 = !DILocation(line: 88, column: 69, scope: !656, inlinedAt: !1997)
!2004 = !DILocation(line: 88, column: 12, scope: !656, inlinedAt: !1997)
!2005 = !DILocation(line: 88, column: 5, scope: !656, inlinedAt: !1997)
!2006 = !DILocation(line: 89, column: 8, scope: !682, inlinedAt: !1997)
!2007 = !DILocation(line: 89, column: 17, scope: !682, inlinedAt: !1997)
!2008 = !DILocation(line: 89, column: 7, scope: !642, inlinedAt: !1997)
!2009 = !DILocation(line: 91, column: 14, scope: !687, inlinedAt: !1997)
!2010 = !DILocation(line: 92, column: 7, scope: !687, inlinedAt: !1997)
!2011 = !DILocation(line: 0, scope: !690, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 95, column: 5, scope: !642, inlinedAt: !1997)
!2013 = !DILocation(line: 0, scope: !691, inlinedAt: !2012)
!2014 = !DILocation(line: 728, column: 21, scope: !700, inlinedAt: !2012)
!2015 = !DILocation(line: 728, column: 26, scope: !700, inlinedAt: !2012)
!2016 = !DILocation(line: 728, column: 3, scope: !690, inlinedAt: !2012)
!2017 = distinct !{!2017, !2016, !2018, !706, !707}
!2018 = !DILocation(line: 728, column: 56, scope: !690, inlinedAt: !2012)
!2019 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 96, column: 5, scope: !642, inlinedAt: !1997)
!2021 = !DILocation(line: 0, scope: !709, inlinedAt: !2020)
!2022 = !DILocation(line: 0, scope: !710, inlinedAt: !2020)
!2023 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !2020)
!2024 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !2020)
!2025 = distinct !{!2025, !2019, !2026, !706, !707}
!2026 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !2020)
!2027 = !DILocation(line: 97, column: 10, scope: !642, inlinedAt: !1997)
!2028 = !DILocation(line: 98, column: 14, scope: !642, inlinedAt: !1997)
!2029 = !DILocation(line: 99, column: 1, scope: !642, inlinedAt: !1997)
!2030 = !DILocation(line: 1325, column: 16, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !643, line: 1325, column: 3)
!2032 = distinct !DILexicalBlock(scope: !1960, file: !643, line: 1325, column: 3)
!2033 = !DILocation(line: 1325, column: 26, scope: !2031)
!2034 = !DILocation(line: 0, scope: !829, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 1326, column: 30, scope: !2031)
!2036 = !DILocation(line: 987, column: 18, scope: !837, inlinedAt: !2035)
!2037 = !DILocation(line: 987, column: 24, scope: !837, inlinedAt: !2035)
!2038 = !DILocation(line: 987, column: 7, scope: !829, inlinedAt: !2035)
!2039 = !DILocation(line: 989, column: 18, scope: !837, inlinedAt: !2035)
!2040 = !DILocation(line: 988, column: 12, scope: !837, inlinedAt: !2035)
!2041 = !DILocation(line: 988, column: 5, scope: !837, inlinedAt: !2035)
!2042 = !DILocation(line: 991, column: 11, scope: !844, inlinedAt: !2035)
!2043 = !DILocation(line: 991, column: 20, scope: !844, inlinedAt: !2035)
!2044 = !DILocation(line: 0, scope: !844, inlinedAt: !2035)
!2045 = !DILocation(line: 991, column: 39, scope: !844, inlinedAt: !2035)
!2046 = !DILocation(line: 991, column: 51, scope: !844, inlinedAt: !2035)
!2047 = !DILocation(line: 991, column: 7, scope: !829, inlinedAt: !2035)
!2048 = !DILocation(line: 997, column: 24, scope: !851, inlinedAt: !2035)
!2049 = !DILocation(line: 997, column: 28, scope: !851, inlinedAt: !2035)
!2050 = !DILocation(line: 998, column: 18, scope: !851, inlinedAt: !2035)
!2051 = !DILocation(line: 1000, column: 14, scope: !857, inlinedAt: !2035)
!2052 = !DILocation(line: 1000, column: 19, scope: !857, inlinedAt: !2035)
!2053 = !DILocation(line: 1000, column: 11, scope: !853, inlinedAt: !2035)
!2054 = !DILocation(line: 1002, column: 20, scope: !861, inlinedAt: !2035)
!2055 = !DILocation(line: 1002, column: 28, scope: !861, inlinedAt: !2035)
!2056 = !DILocation(line: 1003, column: 18, scope: !861, inlinedAt: !2035)
!2057 = !DILocation(line: 1004, column: 9, scope: !861, inlinedAt: !2035)
!2058 = !DILocation(line: 1005, column: 18, scope: !853, inlinedAt: !2035)
!2059 = !DILocation(line: 0, scope: !642, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 1326, column: 5, scope: !2031)
!2061 = !DILocation(line: 87, column: 15, scope: !656, inlinedAt: !2060)
!2062 = !DILocation(line: 87, column: 21, scope: !656, inlinedAt: !2060)
!2063 = !DILocation(line: 87, column: 7, scope: !642, inlinedAt: !2060)
!2064 = !DILocation(line: 88, column: 69, scope: !656, inlinedAt: !2060)
!2065 = !DILocation(line: 88, column: 12, scope: !656, inlinedAt: !2060)
!2066 = !DILocation(line: 88, column: 5, scope: !656, inlinedAt: !2060)
!2067 = !DILocation(line: 89, column: 17, scope: !682, inlinedAt: !2060)
!2068 = !DILocation(line: 89, column: 7, scope: !642, inlinedAt: !2060)
!2069 = !DILocation(line: 0, scope: !690, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 95, column: 5, scope: !642, inlinedAt: !2060)
!2071 = !DILocation(line: 0, scope: !691, inlinedAt: !2070)
!2072 = !DILocation(line: 728, column: 21, scope: !700, inlinedAt: !2070)
!2073 = !DILocation(line: 728, column: 26, scope: !700, inlinedAt: !2070)
!2074 = !DILocation(line: 728, column: 3, scope: !690, inlinedAt: !2070)
!2075 = distinct !{!2075, !2074, !2076, !706, !707}
!2076 = !DILocation(line: 728, column: 56, scope: !690, inlinedAt: !2070)
!2077 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 96, column: 5, scope: !642, inlinedAt: !2060)
!2079 = !DILocation(line: 0, scope: !709, inlinedAt: !2078)
!2080 = !DILocation(line: 0, scope: !710, inlinedAt: !2078)
!2081 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !2078)
!2082 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !2078)
!2083 = distinct !{!2083, !2077, !2084, !706, !707}
!2084 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !2078)
!2085 = !DILocation(line: 97, column: 10, scope: !642, inlinedAt: !2060)
!2086 = !DILocation(line: 98, column: 14, scope: !642, inlinedAt: !2060)
!2087 = !DILocation(line: 99, column: 1, scope: !642, inlinedAt: !2060)
!2088 = !DILocation(line: 1325, column: 57, scope: !2031)
!2089 = distinct !{!2089, !2090, !2091, !706, !707}
!2090 = !DILocation(line: 1325, column: 3, scope: !2032)
!2091 = !DILocation(line: 1326, column: 57, scope: !2032)
!2092 = !DILocation(line: 1324, column: 8, scope: !1960)
!2093 = !DILocation(line: 0, scope: !642, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 1327, column: 3, scope: !1960)
!2095 = !DILocation(line: 84, column: 14, scope: !653, inlinedAt: !2094)
!2096 = !DILocation(line: 84, column: 7, scope: !642, inlinedAt: !2094)
!2097 = !DILocation(line: 87, column: 15, scope: !656, inlinedAt: !2094)
!2098 = !DILocation(line: 87, column: 21, scope: !656, inlinedAt: !2094)
!2099 = !DILocation(line: 87, column: 7, scope: !642, inlinedAt: !2094)
!2100 = !DILocation(line: 88, column: 69, scope: !656, inlinedAt: !2094)
!2101 = !DILocation(line: 88, column: 12, scope: !656, inlinedAt: !2094)
!2102 = !DILocation(line: 88, column: 5, scope: !656, inlinedAt: !2094)
!2103 = !DILocation(line: 89, column: 8, scope: !682, inlinedAt: !2094)
!2104 = !DILocation(line: 89, column: 17, scope: !682, inlinedAt: !2094)
!2105 = !DILocation(line: 89, column: 7, scope: !642, inlinedAt: !2094)
!2106 = !DILocation(line: 91, column: 14, scope: !687, inlinedAt: !2094)
!2107 = !DILocation(line: 92, column: 7, scope: !687, inlinedAt: !2094)
!2108 = !DILocation(line: 0, scope: !690, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 95, column: 5, scope: !642, inlinedAt: !2094)
!2110 = !DILocation(line: 0, scope: !691, inlinedAt: !2109)
!2111 = !DILocation(line: 728, column: 21, scope: !700, inlinedAt: !2109)
!2112 = !DILocation(line: 728, column: 26, scope: !700, inlinedAt: !2109)
!2113 = !DILocation(line: 728, column: 3, scope: !690, inlinedAt: !2109)
!2114 = distinct !{!2114, !2113, !2115, !706, !707}
!2115 = !DILocation(line: 728, column: 56, scope: !690, inlinedAt: !2109)
!2116 = !DILocation(line: 550, column: 3, scope: !709, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 96, column: 5, scope: !642, inlinedAt: !2094)
!2118 = !DILocation(line: 0, scope: !709, inlinedAt: !2117)
!2119 = !DILocation(line: 0, scope: !710, inlinedAt: !2117)
!2120 = !DILocation(line: 550, column: 21, scope: !718, inlinedAt: !2117)
!2121 = !DILocation(line: 550, column: 30, scope: !718, inlinedAt: !2117)
!2122 = distinct !{!2122, !2116, !2123, !706, !707}
!2123 = !DILocation(line: 550, column: 64, scope: !709, inlinedAt: !2117)
!2124 = !DILocation(line: 97, column: 10, scope: !642, inlinedAt: !2094)
!2125 = !DILocation(line: 98, column: 14, scope: !642, inlinedAt: !2094)
!2126 = !DILocation(line: 99, column: 1, scope: !642, inlinedAt: !2094)
!2127 = !DILocation(line: 1329, column: 1, scope: !1960)
!2128 = distinct !DISubprogram(name: "SyncImageList", scope: !643, file: !643, line: 1386, type: !2129, scopeLine: 1387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2131)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{null, !409}
!2131 = !{!2132, !2133, !2134}
!2132 = !DILocalVariable(name: "images", arg: 1, scope: !2128, file: !643, line: 1386, type: !409)
!2133 = !DILocalVariable(name: "p", scope: !2128, file: !643, line: 1389, type: !409)
!2134 = !DILocalVariable(name: "q", scope: !2128, file: !643, line: 1390, type: !409)
!2135 = !DILocation(line: 0, scope: !2128)
!2136 = !DILocation(line: 1392, column: 14, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2128, file: !643, line: 1392, column: 7)
!2138 = !DILocation(line: 1392, column: 7, scope: !2128)
!2139 = !DILocation(line: 1397, column: 15, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !643, line: 1397, column: 5)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !643, line: 1396, column: 3)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !643, line: 1395, column: 3)
!2143 = distinct !DILexicalBlock(scope: !2128, file: !643, line: 1395, column: 3)
!2144 = !DILocation(line: 0, scope: !2140)
!2145 = !DILocation(line: 1397, column: 23, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2140, file: !643, line: 1397, column: 5)
!2147 = !DILocation(line: 1397, column: 5, scope: !2140)
!2148 = !{!658, !661, i64 432}
!2149 = !DILocation(line: 1397, column: 47, scope: !2146)
!2150 = distinct !{!2150, !2147, !2151, !706, !707}
!2151 = !DILocation(line: 1399, column: 9, scope: !2140)
!2152 = !DILocation(line: 1398, column: 26, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2146, file: !643, line: 1398, column: 11)
!2154 = !DILocation(line: 1398, column: 20, scope: !2153)
!2155 = !DILocation(line: 1398, column: 11, scope: !2146)
!2156 = !DILocation(line: 0, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2128, file: !643, line: 1405, column: 3)
!2158 = !DILocation(line: 1405, column: 26, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2157, file: !643, line: 1405, column: 3)
!2160 = !DILocation(line: 1405, column: 3, scope: !2157)
!2161 = !DILocation(line: 1395, column: 3, scope: !2143)
!2162 = distinct !{!2162, !2161, !2163, !706, !707}
!2163 = !DILocation(line: 1402, column: 3, scope: !2143)
!2164 = !DILocation(line: 1406, column: 17, scope: !2159)
!2165 = !DILocation(line: 1406, column: 27, scope: !2159)
!2166 = !DILocation(line: 1406, column: 32, scope: !2159)
!2167 = !DILocation(line: 1406, column: 8, scope: !2159)
!2168 = !DILocation(line: 1406, column: 13, scope: !2159)
!2169 = distinct !{!2169, !2160, !2170, !706, !707}
!2170 = !DILocation(line: 1406, column: 33, scope: !2157)
!2171 = !DILocation(line: 1407, column: 1, scope: !2128)
!2172 = distinct !DISubprogram(name: "SyncNextImageInList", scope: !643, file: !643, line: 1432, type: !692, scopeLine: 1433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2173)
!2173 = !{!2174}
!2174 = !DILocalVariable(name: "images", arg: 1, scope: !2172, file: !643, line: 1432, type: !632)
!2175 = !DILocation(line: 0, scope: !2172)
!2176 = !DILocation(line: 1434, column: 14, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2172, file: !643, line: 1434, column: 7)
!2178 = !DILocation(line: 1434, column: 7, scope: !2172)
!2179 = !DILocation(line: 1437, column: 15, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2172, file: !643, line: 1437, column: 7)
!2181 = !DILocation(line: 1437, column: 20, scope: !2180)
!2182 = !DILocation(line: 1437, column: 7, scope: !2172)
!2183 = !DILocation(line: 1439, column: 15, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2172, file: !643, line: 1439, column: 7)
!2185 = !{!658, !662, i64 608}
!2186 = !DILocation(line: 1439, column: 37, scope: !2184)
!2187 = !DILocation(line: 1439, column: 20, scope: !2184)
!2188 = !DILocation(line: 1439, column: 7, scope: !2172)
!2189 = !DILocation(line: 1441, column: 7, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2184, file: !643, line: 1440, column: 5)
!2191 = !DILocation(line: 1442, column: 48, scope: !2190)
!2192 = !DILocation(line: 1442, column: 26, scope: !2190)
!2193 = !DILocation(line: 1442, column: 15, scope: !2190)
!2194 = !DILocation(line: 1442, column: 21, scope: !2190)
!2195 = !DILocation(line: 1442, column: 25, scope: !2190)
!2196 = !DILocation(line: 1443, column: 5, scope: !2190)
!2197 = !DILocation(line: 1444, column: 11, scope: !2172)
!2198 = !DILocation(line: 1444, column: 37, scope: !2172)
!2199 = !{!658, !659, i64 8}
!2200 = !DILocation(line: 1444, column: 17, scope: !2172)
!2201 = !DILocation(line: 1444, column: 28, scope: !2172)
!2202 = !DILocation(line: 1445, column: 32, scope: !2172)
!2203 = !{!658, !659, i64 408}
!2204 = !DILocation(line: 1445, column: 17, scope: !2172)
!2205 = !DILocation(line: 1445, column: 23, scope: !2172)
!2206 = !DILocation(line: 1446, column: 3, scope: !2172)
!2207 = !DILocation(line: 1447, column: 1, scope: !2172)
!2208 = !DISubprogram(name: "DestroyBlob", scope: !2209, file: !2209, line: 68, type: !2129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!2209 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "aeac60f5bee0fb1a4f0bd1456ae975f0")
!2210 = !DISubprogram(name: "ReferenceBlob", scope: !2211, file: !2211, line: 63, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !732)
!2211 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a66ea2eabdd36512a199f3a0075ea4ad")
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!559, !559}
