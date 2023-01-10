; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/profile.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/profile.c"
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
%struct._StringInfo = type { [4096 x i8], ptr, i64, i64 }
%struct._DirectoryInfo = type { ptr, i64 }

@.str = private unnamed_addr constant [86 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/profile.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"icc\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"iptc\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"icm\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"exif:ColorSpace\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"DelegateLibrarySupportNotBuiltIn\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"`%s' (LCMS)\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"8BIM\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"EXIF\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"xmp\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"8bim\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%s:*\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"exif\00", align 1
@SyncExifProfile.format_bytes = internal unnamed_addr constant [13 x i32] [i32 0, i32 1, i32 1, i32 2, i32 4, i32 8, i32 1, i32 1, i32 2, i32 4, i32 8, i32 4, i32 8], align 16, !dbg !0

; Function Attrs: nounwind uwtable
define dso_local i32 @CloneImageProfiles(ptr noundef %image, ptr nocapture noundef readonly %clone_image) local_unnamed_addr #0 !dbg !695 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !701, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata ptr %clone_image, metadata !702, metadata !DIExpression()), !dbg !703
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !704
  %0 = load i32, ptr %debug, align 8, !dbg !704, !tbaa !706
  %cmp.not = icmp eq i32 %0, 0, !dbg !725
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !726

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !727
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 143, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #5, !dbg !728
  br label %if.end, !dbg !729

if.end:                                           ; preds = %if.then, %entry
  %length = getelementptr inbounds %struct._Image, ptr %clone_image, i64 0, i32 62, i32 1, !dbg !730
  %1 = load i64, ptr %length, align 8, !dbg !730, !tbaa !731
  %length2 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 62, i32 1, !dbg !732
  store i64 %1, ptr %length2, align 8, !dbg !733, !tbaa !731
  %info = getelementptr inbounds %struct._Image, ptr %clone_image, i64 0, i32 62, i32 2, !dbg !734
  %2 = load ptr, ptr %info, align 8, !dbg !734, !tbaa !735
  %info5 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 62, i32 2, !dbg !736
  store ptr %2, ptr %info5, align 8, !dbg !737, !tbaa !735
  %length6 = getelementptr inbounds %struct._Image, ptr %clone_image, i64 0, i32 63, i32 1, !dbg !738
  %3 = load i64, ptr %length6, align 8, !dbg !738, !tbaa !739
  %length8 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 63, i32 1, !dbg !740
  store i64 %3, ptr %length8, align 8, !dbg !741, !tbaa !739
  %info10 = getelementptr inbounds %struct._Image, ptr %clone_image, i64 0, i32 63, i32 2, !dbg !742
  %4 = load ptr, ptr %info10, align 8, !dbg !742, !tbaa !743
  %info12 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 63, i32 2, !dbg !744
  store ptr %4, ptr %info12, align 8, !dbg !745, !tbaa !743
  %profiles = getelementptr inbounds %struct._Image, ptr %clone_image, i64 0, i32 18, !dbg !746
  %5 = load ptr, ptr %profiles, align 8, !dbg !746, !tbaa !748
  %cmp13.not = icmp eq ptr %5, null, !dbg !749
  br i1 %cmp13.not, label %if.end22, label %if.then14, !dbg !750

if.then14:                                        ; preds = %if.end
  %profiles15 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 18, !dbg !751
  %6 = load ptr, ptr %profiles15, align 8, !dbg !751, !tbaa !748
  %cmp16.not = icmp eq ptr %6, null, !dbg !754
  br i1 %cmp16.not, label %if.end18, label %DestroyImageProfiles.exit, !dbg !755

DestroyImageProfiles.exit:                        ; preds = %if.then14
  call void @llvm.dbg.value(metadata ptr %image, metadata !756, metadata !DIExpression()) #5, !dbg !761
  %call.i = tail call ptr @DestroySplayTree(ptr noundef nonnull %6) #5, !dbg !763
  store ptr %call.i, ptr %profiles15, align 8, !dbg !765, !tbaa !748
  %.pre = load ptr, ptr %profiles, align 8, !dbg !766, !tbaa !748
  br label %if.end18, !dbg !767

if.end18:                                         ; preds = %DestroyImageProfiles.exit, %if.then14
  %7 = phi ptr [ %.pre, %DestroyImageProfiles.exit ], [ %5, %if.then14 ], !dbg !766
  %call20 = tail call ptr @CloneSplayTree(ptr noundef %7, ptr noundef nonnull @ConstantString, ptr noundef nonnull @CloneStringInfo) #5, !dbg !768
  store ptr %call20, ptr %profiles15, align 8, !dbg !769, !tbaa !748
  br label %if.end22, !dbg !770

if.end22:                                         ; preds = %if.end18, %if.end
  ret i32 1, !dbg !771
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !772 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DestroyImageProfiles(ptr nocapture noundef %image) local_unnamed_addr #0 !dbg !757 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !756, metadata !DIExpression()), !dbg !779
  %profiles = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 18, !dbg !780
  %0 = load ptr, ptr %profiles, align 8, !dbg !780, !tbaa !748
  %cmp.not = icmp eq ptr %0, null, !dbg !781
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !782

if.then:                                          ; preds = %entry
  %call = tail call ptr @DestroySplayTree(ptr noundef nonnull %0) #5, !dbg !783
  store ptr %call, ptr %profiles, align 8, !dbg !784, !tbaa !748
  br label %if.end, !dbg !785

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !786
}

declare !dbg !787 ptr @CloneSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !790 ptr @ConstantString(ptr noundef) #2

declare !dbg !793 ptr @CloneStringInfo(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @DeleteImageProfile(ptr noundef %image, ptr noundef %name) local_unnamed_addr #0 !dbg !796 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !800, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata ptr %name, metadata !801, metadata !DIExpression()), !dbg !802
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !803
  %0 = load i32, ptr %debug, align 8, !dbg !803, !tbaa !706
  %cmp.not = icmp eq i32 %0, 0, !dbg !805
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !806

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !807
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 189, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #5, !dbg !808
  br label %if.end, !dbg !809

if.end:                                           ; preds = %if.then, %entry
  %profiles = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 18, !dbg !810
  %1 = load ptr, ptr %profiles, align 8, !dbg !810, !tbaa !748
  %cmp1 = icmp eq ptr %1, null, !dbg !812
  br i1 %cmp1, label %return, label %if.end3, !dbg !813

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @LocaleCompare(ptr noundef %name, ptr noundef nonnull @.str.3) #5, !dbg !814
  %cmp5 = icmp eq i32 %call4, 0, !dbg !816
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !817

if.then6:                                         ; preds = %if.end3
  %length = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 62, i32 1, !dbg !818
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %length, i8 0, i64 16, i1 false), !dbg !820
  br label %if.end8, !dbg !821

if.end8:                                          ; preds = %if.then6, %if.end3
  %call9 = tail call i32 @LocaleCompare(ptr noundef %name, ptr noundef nonnull @.str.4) #5, !dbg !822
  %cmp10 = icmp eq i32 %call9, 0, !dbg !824
  br i1 %cmp10, label %if.then11, label %if.end15, !dbg !825

if.then11:                                        ; preds = %if.end8
  %length12 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 63, i32 1, !dbg !826
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %length12, i8 0, i64 16, i1 false), !dbg !828
  br label %if.end15, !dbg !829

if.end15:                                         ; preds = %if.then11, %if.end8
  tail call fastcc void @WriteTo8BimProfile(ptr noundef nonnull %image, ptr noundef %name, ptr noundef null), !dbg !830
  %2 = load ptr, ptr %profiles, align 8, !dbg !831, !tbaa !748
  %call17 = tail call i32 @DeleteNodeFromSplayTree(ptr noundef %2, ptr noundef %name) #5, !dbg !832
  br label %return, !dbg !833

return:                                           ; preds = %if.end, %if.end15
  %retval.0 = phi i32 [ %call17, %if.end15 ], [ 0, %if.end ], !dbg !802
  ret i32 %retval.0, !dbg !834
}

declare !dbg !835 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @WriteTo8BimProfile(ptr nocapture noundef readonly %image, ptr noundef %name, ptr noundef readonly %profile) unnamed_addr #0 !dbg !838 {
entry:
  %buffer.i = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %image, metadata !842, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata ptr %name, metadata !843, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata ptr %profile, metadata !844, metadata !DIExpression()), !dbg !866
  %call = tail call i32 @LocaleCompare(ptr noundef %name, ptr noundef nonnull @.str.3) #5, !dbg !867
  %cmp = icmp eq i32 %call, 0, !dbg !869
  br i1 %cmp, label %if.end10, label %if.else, !dbg !870

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @LocaleCompare(ptr noundef %name, ptr noundef nonnull @.str.4) #5, !dbg !871
  %cmp2 = icmp eq i32 %call1, 0, !dbg !873
  br i1 %cmp2, label %if.end10, label %if.else4, !dbg !874

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @LocaleCompare(ptr noundef %name, ptr noundef nonnull @.str.13) #5, !dbg !875
  %cmp6 = icmp eq i32 %call5, 0, !dbg !877
  br i1 %cmp6, label %if.end10, label %cleanup, !dbg !878

if.end10:                                         ; preds = %if.else4, %if.else, %entry
  %profile_id.0 = phi i32 [ 1039, %entry ], [ 1028, %if.else ], [ 1060, %if.else4 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !856, metadata !DIExpression()), !dbg !866
  %profiles = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 18, !dbg !879
  %0 = load ptr, ptr %profiles, align 8, !dbg !879, !tbaa !748
  %call11 = tail call ptr @GetValueFromSplayTree(ptr noundef %0, ptr noundef nonnull @.str.14) #5, !dbg !880
  call void @llvm.dbg.value(metadata ptr %call11, metadata !851, metadata !DIExpression()), !dbg !866
  %cmp12 = icmp eq ptr %call11, null, !dbg !881
  br i1 %cmp12, label %cleanup, label %if.end14, !dbg !883

if.end14:                                         ; preds = %if.end10
  %call15 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %call11) #5, !dbg !884
  call void @llvm.dbg.value(metadata ptr %call15, metadata !845, metadata !DIExpression()), !dbg !866
  %call16 = tail call i64 @GetStringInfoLength(ptr noundef nonnull %call11) #5, !dbg !885
  call void @llvm.dbg.value(metadata i64 %call16, metadata !850, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata ptr %call15, metadata !849, metadata !DIExpression()), !dbg !866
  %add.ptr = getelementptr inbounds i8, ptr %call15, i64 %call16
  %add.ptr17 = getelementptr inbounds i8, ptr %add.ptr, i64 -16
  call void @llvm.dbg.value(metadata ptr %call15, metadata !849, metadata !DIExpression()), !dbg !866
  %cmp18190 = icmp ult ptr %call15, %add.ptr17, !dbg !886
  br i1 %cmp18190, label %for.body.lr.ph, label %cleanup, !dbg !887

for.body.lr.ph:                                   ; preds = %if.end14
  %add.ptr33 = getelementptr inbounds i8, ptr %add.ptr, i64 -4
  br label %for.body, !dbg !887

for.body:                                         ; preds = %for.body.lr.ph, %if.else107
  %p.0191 = phi ptr [ %call15, %for.body.lr.ph ], [ %add.ptr59, %if.else107 ]
  call void @llvm.dbg.value(metadata ptr %p.0191, metadata !849, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata ptr %p.0191, metadata !848, metadata !DIExpression()), !dbg !866
  %call19 = tail call i32 @LocaleNCompare(ptr noundef %p.0191, ptr noundef nonnull @.str.11, i64 noundef 4) #5, !dbg !888
  %cmp20.not = icmp eq i32 %call19, 0, !dbg !890
  br i1 %cmp20.not, label %if.end22, label %cleanup, !dbg !891

if.end22:                                         ; preds = %for.body
  %add.ptr23 = getelementptr inbounds i8, ptr %p.0191, i64 4, !dbg !892
  call void @llvm.dbg.value(metadata ptr %add.ptr23, metadata !849, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata ptr %add.ptr23, metadata !893, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata ptr undef, metadata !899, metadata !DIExpression()), !dbg !900
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.0191, i64 5, !dbg !902
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !893, metadata !DIExpression()), !dbg !900
  %1 = load i8, ptr %add.ptr23, align 1, !dbg !903, !tbaa !904
  %conv.i = zext i8 %1 to i32, !dbg !903
  %shl.i = shl nuw nsw i32 %conv.i, 8, !dbg !905
  %incdec.ptr2.i = getelementptr inbounds i8, ptr %p.0191, i64 6, !dbg !906
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i, metadata !893, metadata !DIExpression()), !dbg !900
  %2 = load i8, ptr %incdec.ptr.i, align 1, !dbg !907, !tbaa !904
  %conv6.i = zext i8 %2 to i32, !dbg !908
  %or.i = or i32 %shl.i, %conv6.i, !dbg !909
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i, metadata !849, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i, metadata !910, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata ptr undef, metadata !915, metadata !DIExpression()), !dbg !916
  %incdec.ptr.i179 = getelementptr inbounds i8, ptr %p.0191, i64 7, !dbg !918
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i179, metadata !910, metadata !DIExpression()), !dbg !916
  %3 = load i8, ptr %incdec.ptr2.i, align 1, !dbg !919, !tbaa !904
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i179, metadata !849, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i8 %3, metadata !853, metadata !DIExpression()), !dbg !866
  %4 = zext i8 %3 to i64
  %add.ptr26 = getelementptr inbounds i8, ptr %incdec.ptr.i179, i64 %4, !dbg !920
  call void @llvm.dbg.value(metadata ptr %add.ptr26, metadata !849, metadata !DIExpression()), !dbg !866
  %5 = and i8 %3, 1, !dbg !921
  %6 = xor i8 %5, 1, !dbg !923
  %7 = zext i8 %6 to i64, !dbg !923
  %spec.select = getelementptr i8, ptr %add.ptr26, i64 %7, !dbg !923
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !849, metadata !DIExpression()), !dbg !866
  %cmp34 = icmp ugt ptr %spec.select, %add.ptr33, !dbg !924
  br i1 %cmp34, label %cleanup, label %if.end37, !dbg !926

if.end37:                                         ; preds = %if.end22
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !927, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr undef, metadata !933, metadata !DIExpression()), !dbg !934
  %incdec.ptr.i180 = getelementptr inbounds i8, ptr %spec.select, i64 1, !dbg !936
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i180, metadata !927, metadata !DIExpression()), !dbg !934
  %8 = load i8, ptr %spec.select, align 1, !dbg !937, !tbaa !904
  %conv.i181 = zext i8 %8 to i64, !dbg !937
  %shl.i182 = shl nuw nsw i64 %conv.i181, 24, !dbg !938
  %incdec.ptr3.i = getelementptr inbounds i8, ptr %spec.select, i64 2, !dbg !939
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3.i, metadata !927, metadata !DIExpression()), !dbg !934
  %9 = load i8, ptr %incdec.ptr.i180, align 1, !dbg !940, !tbaa !904
  %conv4.i = zext i8 %9 to i64, !dbg !940
  %shl5.i = shl nuw nsw i64 %conv4.i, 16, !dbg !941
  %or.i183 = or i64 %shl5.i, %shl.i182, !dbg !942
  %incdec.ptr9.i = getelementptr inbounds i8, ptr %spec.select, i64 3, !dbg !943
  call void @llvm.dbg.value(metadata ptr %incdec.ptr9.i, metadata !927, metadata !DIExpression()), !dbg !934
  %10 = load i8, ptr %incdec.ptr3.i, align 1, !dbg !944, !tbaa !904
  %conv10.i = zext i8 %10 to i64, !dbg !944
  %shl11.i = shl nuw nsw i64 %conv10.i, 8, !dbg !945
  %or14.i = or i64 %or.i183, %shl11.i, !dbg !946
  %incdec.ptr16.i = getelementptr inbounds i8, ptr %spec.select, i64 4, !dbg !947
  call void @llvm.dbg.value(metadata ptr %incdec.ptr16.i, metadata !927, metadata !DIExpression()), !dbg !934
  %11 = load i8, ptr %incdec.ptr9.i, align 1, !dbg !948, !tbaa !904
  %12 = zext i8 %11 to i64
  %or21.i = or i64 %or14.i, %12, !dbg !949
  call void @llvm.dbg.value(metadata ptr %incdec.ptr16.i, metadata !849, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata !DIArgList(i64 %or14.i, i64 %12), metadata !854, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !866
  call void @llvm.dbg.value(metadata !DIArgList(i64 %or14.i, i64 %12), metadata !852, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !866
  %idx.neg = sub nsw i64 0, %or21.i, !dbg !950
  %add.ptr41 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg, !dbg !950
  %cmp42 = icmp ugt ptr %incdec.ptr16.i, %add.ptr41, !dbg !952
  %cmp44 = icmp slt i64 %call16, %or21.i
  %or.cond = select i1 %cmp42, i1 true, i1 %cmp44, !dbg !953
  br i1 %or.cond, label %cleanup, label %if.end47, !dbg !953

if.end47:                                         ; preds = %if.end37
  %and48 = and i64 %12, 1, !dbg !954
  %spec.select177 = add nuw nsw i64 %or21.i, %and48, !dbg !956
  call void @llvm.dbg.value(metadata i64 %spec.select177, metadata !852, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata !DIArgList(i8 %1, i8 %2), metadata !855, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)), !dbg !866
  %cmp55 = icmp eq i32 %profile_id.0, %or.i, !dbg !957
  %add.ptr59 = getelementptr inbounds i8, ptr %incdec.ptr16.i, i64 %spec.select177, !dbg !958
  br i1 %cmp55, label %if.then57, label %if.else107, !dbg !959

if.then57:                                        ; preds = %if.end47
  call void @llvm.dbg.value(metadata i64 0, metadata !864, metadata !DIExpression()), !dbg !960
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !961
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr59 to i64, !dbg !961
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !961
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !863, metadata !DIExpression()), !dbg !960
  %cmp60 = icmp eq ptr %profile, null, !dbg !962
  br i1 %cmp60, label %if.then62, label %if.else70, !dbg !964

if.then62:                                        ; preds = %if.then57
  %sub.ptr.lhs.cast63 = ptrtoint ptr %p.0191 to i64, !dbg !965
  %sub.ptr.rhs.cast64 = ptrtoint ptr %call15 to i64, !dbg !965
  %sub.ptr.sub65 = sub i64 %sub.ptr.lhs.cast63, %sub.ptr.rhs.cast64, !dbg !965
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub65, metadata !857, metadata !DIExpression()), !dbg !960
  %add66 = add i64 %sub.ptr.sub, %sub.ptr.sub65, !dbg !967
  %call67 = tail call ptr @AcquireStringInfo(i64 noundef %add66) #5, !dbg !968
  call void @llvm.dbg.value(metadata ptr %call67, metadata !865, metadata !DIExpression()), !dbg !960
  %datum68 = getelementptr inbounds %struct._StringInfo, ptr %call67, i64 0, i32 1, !dbg !969
  %13 = load ptr, ptr %datum68, align 8, !dbg !969, !tbaa !970
  %call69 = tail call ptr @CopyMagickMemory(ptr noundef %13, ptr noundef %call15, i64 noundef %sub.ptr.sub65) #5, !dbg !972
  br label %if.end96, !dbg !973

if.else70:                                        ; preds = %if.then57
  %sub.ptr.lhs.cast71 = ptrtoint ptr %incdec.ptr16.i to i64, !dbg !974
  %sub.ptr.rhs.cast72 = ptrtoint ptr %call15 to i64, !dbg !974
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72, !dbg !974
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub73, metadata !857, metadata !DIExpression()), !dbg !960
  %length74 = getelementptr inbounds %struct._StringInfo, ptr %profile, i64 0, i32 2, !dbg !976
  %14 = load i64, ptr %length74, align 8, !dbg !976, !tbaa !977
  call void @llvm.dbg.value(metadata i64 %14, metadata !864, metadata !DIExpression()), !dbg !960
  %and75 = and i64 %14, 1, !dbg !978
  %spec.select178 = add nsw i64 %and75, %14, !dbg !980
  call void @llvm.dbg.value(metadata i64 %spec.select178, metadata !864, metadata !DIExpression()), !dbg !960
  %add81 = add i64 %sub.ptr.sub, %sub.ptr.sub73, !dbg !981
  %add82 = add i64 %add81, %spec.select178, !dbg !982
  %call83 = tail call ptr @AcquireStringInfo(i64 noundef %add82) #5, !dbg !983
  call void @llvm.dbg.value(metadata ptr %call83, metadata !865, metadata !DIExpression()), !dbg !960
  %datum84 = getelementptr inbounds %struct._StringInfo, ptr %call83, i64 0, i32 1, !dbg !984
  %15 = load ptr, ptr %datum84, align 8, !dbg !984, !tbaa !970
  %sub = add i64 %sub.ptr.sub73, -4, !dbg !985
  %call85 = tail call ptr @CopyMagickMemory(ptr noundef %15, ptr noundef %call15, i64 noundef %sub) #5, !dbg !986
  %16 = load ptr, ptr %datum84, align 8, !dbg !987, !tbaa !970
  %add.ptr87 = getelementptr inbounds i8, ptr %16, i64 %sub.ptr.sub73, !dbg !988
  %add.ptr88 = getelementptr inbounds i8, ptr %add.ptr87, i64 -4, !dbg !989
  %17 = load i64, ptr %length74, align 8, !dbg !990, !tbaa !977
  call void @llvm.dbg.value(metadata ptr %add.ptr88, metadata !991, metadata !DIExpression()) #5, !dbg !1002
  call void @llvm.dbg.value(metadata i64 %17, metadata !997, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !1002
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i) #5, !dbg !1004
  call void @llvm.dbg.declare(metadata ptr %buffer.i, metadata !998, metadata !DIExpression()) #5, !dbg !1005
  %shr.i185 = lshr i64 %17, 24, !dbg !1006
  %conv.i184 = trunc i64 %shr.i185 to i8, !dbg !1006
  store i8 %conv.i184, ptr %buffer.i, align 1, !dbg !1007, !tbaa !904
  %shr1.i186 = lshr i64 %17, 16, !dbg !1008
  %conv2.i = trunc i64 %shr1.i186 to i8, !dbg !1008
  %arrayidx3.i = getelementptr inbounds [4 x i8], ptr %buffer.i, i64 0, i64 1, !dbg !1009
  store i8 %conv2.i, ptr %arrayidx3.i, align 1, !dbg !1010, !tbaa !904
  %shr4.i187 = lshr i64 %17, 8, !dbg !1011
  %conv5.i = trunc i64 %shr4.i187 to i8, !dbg !1011
  %arrayidx6.i = getelementptr inbounds [4 x i8], ptr %buffer.i, i64 0, i64 2, !dbg !1012
  store i8 %conv5.i, ptr %arrayidx6.i, align 1, !dbg !1013, !tbaa !904
  %conv7.i = trunc i64 %17 to i8, !dbg !1014
  %arrayidx8.i = getelementptr inbounds [4 x i8], ptr %buffer.i, i64 0, i64 3, !dbg !1015
  store i8 %conv7.i, ptr %arrayidx8.i, align 1, !dbg !1016, !tbaa !904
  %call.i = call ptr @CopyMagickMemory(ptr noundef nonnull %add.ptr88, ptr noundef nonnull %buffer.i, i64 noundef 4) #5, !dbg !1017
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i) #5, !dbg !1018
  %18 = load ptr, ptr %datum84, align 8, !dbg !1019, !tbaa !970
  %add.ptr92 = getelementptr inbounds i8, ptr %18, i64 %sub.ptr.sub73, !dbg !1020
  %datum93 = getelementptr inbounds %struct._StringInfo, ptr %profile, i64 0, i32 1, !dbg !1021
  %19 = load ptr, ptr %datum93, align 8, !dbg !1021, !tbaa !970
  %20 = load i64, ptr %length74, align 8, !dbg !1022, !tbaa !977
  %call95 = call ptr @CopyMagickMemory(ptr noundef %add.ptr92, ptr noundef %19, i64 noundef %20) #5, !dbg !1023
  br label %if.end96

if.end96:                                         ; preds = %if.else70, %if.then62
  %offset.0 = phi i64 [ %sub.ptr.sub65, %if.then62 ], [ %sub.ptr.sub73, %if.else70 ], !dbg !1024
  %new_count.1 = phi i64 [ 0, %if.then62 ], [ %spec.select178, %if.else70 ], !dbg !960
  %new_profile.0 = phi ptr [ %call67, %if.then62 ], [ %call83, %if.else70 ], !dbg !1024
  call void @llvm.dbg.value(metadata ptr %new_profile.0, metadata !865, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i64 %new_count.1, metadata !864, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i64 %offset.0, metadata !857, metadata !DIExpression()), !dbg !960
  %datum97 = getelementptr inbounds %struct._StringInfo, ptr %new_profile.0, i64 0, i32 1, !dbg !1025
  %21 = load ptr, ptr %datum97, align 8, !dbg !1025, !tbaa !970
  %add.ptr98 = getelementptr inbounds i8, ptr %21, i64 %offset.0, !dbg !1026
  %add.ptr99 = getelementptr inbounds i8, ptr %add.ptr98, i64 %new_count.1, !dbg !1027
  %call101 = call ptr @CopyMagickMemory(ptr noundef %add.ptr99, ptr noundef nonnull %add.ptr59, i64 noundef %sub.ptr.sub) #5, !dbg !1028
  %22 = load ptr, ptr %profiles, align 8, !dbg !1029, !tbaa !748
  %call103 = call ptr @ConstantString(ptr noundef nonnull @.str.14) #5, !dbg !1030
  %call104 = call ptr @CloneStringInfo(ptr noundef nonnull %new_profile.0) #5, !dbg !1031
  %call105 = call i32 @AddValueToSplayTree(ptr noundef %22, ptr noundef %call103, ptr noundef %call104) #5, !dbg !1032
  %call106 = call ptr @DestroyStringInfo(ptr noundef nonnull %new_profile.0) #5, !dbg !1033
  call void @llvm.dbg.value(metadata ptr %call106, metadata !865, metadata !DIExpression()), !dbg !960
  br label %cleanup

if.else107:                                       ; preds = %if.end47
  call void @llvm.dbg.value(metadata ptr %add.ptr59, metadata !849, metadata !DIExpression()), !dbg !866
  %cmp18 = icmp ult ptr %add.ptr59, %add.ptr17, !dbg !886
  br i1 %cmp18, label %for.body, label %cleanup, !dbg !887, !llvm.loop !1034

cleanup:                                          ; preds = %if.end37, %if.end22, %for.body, %if.else107, %if.end14, %if.end96, %if.end10, %if.else4
  ret void, !dbg !1038
}

declare !dbg !1039 i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1042 ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageProfile(ptr noundef %image, ptr noundef %name) local_unnamed_addr #0 !dbg !1045 {
entry:
  %key = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1049, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr %name, metadata !1050, metadata !DIExpression()), !dbg !1053
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %key) #5, !dbg !1054
  call void @llvm.dbg.declare(metadata ptr %key, metadata !1051, metadata !DIExpression()), !dbg !1055
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1056
  %0 = load i32, ptr %debug, align 8, !dbg !1056, !tbaa !706
  %cmp.not = icmp eq i32 %0, 0, !dbg !1058
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1059

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1060
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #5, !dbg !1061
  br label %if.end, !dbg !1062

if.end:                                           ; preds = %if.then, %entry
  %profiles = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 18, !dbg !1063
  %1 = load ptr, ptr %profiles, align 8, !dbg !1063, !tbaa !748
  %cmp1 = icmp eq ptr %1, null, !dbg !1065
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !1066

if.end3:                                          ; preds = %if.end
  %call5 = call i64 @CopyMagickString(ptr noundef nonnull %key, ptr noundef %name, i64 noundef 4096) #5, !dbg !1067
  %2 = load ptr, ptr %profiles, align 8, !dbg !1068, !tbaa !748
  %call8 = call ptr @GetValueFromSplayTree(ptr noundef %2, ptr noundef nonnull %key) #5, !dbg !1069
  call void @llvm.dbg.value(metadata ptr %call8, metadata !1052, metadata !DIExpression()), !dbg !1053
  br label %cleanup, !dbg !1070

cleanup:                                          ; preds = %if.end, %if.end3
  %retval.0 = phi ptr [ %call8, %if.end3 ], [ null, %if.end ], !dbg !1053
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key) #5, !dbg !1071
  ret ptr %retval.0, !dbg !1071
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !1072 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1075 ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextImageProfile(ptr noundef %image) local_unnamed_addr #0 !dbg !1078 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1082, metadata !DIExpression()), !dbg !1083
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1084
  %0 = load i32, ptr %debug, align 8, !dbg !1084, !tbaa !706
  %cmp.not = icmp eq i32 %0, 0, !dbg !1086
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1087

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1088
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 312, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #5, !dbg !1089
  br label %if.end, !dbg !1090

if.end:                                           ; preds = %if.then, %entry
  %profiles = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 18, !dbg !1091
  %1 = load ptr, ptr %profiles, align 8, !dbg !1091, !tbaa !748
  %cmp1 = icmp eq ptr %1, null, !dbg !1093
  br i1 %cmp1, label %return, label %if.end3, !dbg !1094

if.end3:                                          ; preds = %if.end
  %call5 = tail call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %1) #5, !dbg !1095
  br label %return, !dbg !1096

return:                                           ; preds = %if.end, %if.end3
  %retval.0 = phi ptr [ %call5, %if.end3 ], [ null, %if.end ], !dbg !1083
  ret ptr %retval.0, !dbg !1097
}

declare !dbg !1098 ptr @GetNextKeyInSplayTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ProfileImage(ptr noundef %image, ptr noundef %name, ptr noundef %datum, i64 noundef %length, i32 noundef %clone) local_unnamed_addr #0 !dbg !1101 {
entry:
  %key.i175 = alloca [4096 x i8], align 16
  %key.i = alloca [4096 x i8], align 16
  %names = alloca ptr, align 8
  %number_arguments = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %image, metadata !1106, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata ptr %name, metadata !1107, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata ptr %datum, metadata !1108, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %length, metadata !1109, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i32 %clone, metadata !1110, metadata !DIExpression()), !dbg !1125
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1126
  %0 = load i32, ptr %debug, align 8, !dbg !1126, !tbaa !706
  %cmp.not = icmp eq i32 %0, 0, !dbg !1128
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1129

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1130
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 497, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #5, !dbg !1131
  br label %if.end, !dbg !1132

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq ptr %datum, null, !dbg !1133
  %cmp2 = icmp eq i64 %length, 0
  %or.cond = or i1 %cmp1, %cmp2, !dbg !1134
  br i1 %or.cond, label %if.then3, label %if.end50, !dbg !1134

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %names) #5, !dbg !1135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %number_arguments) #5, !dbg !1136
  %call4 = tail call ptr @ConstantString(ptr noundef %name) #5, !dbg !1137
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1116, metadata !DIExpression()), !dbg !1138
  store ptr %call4, ptr %names, align 8, !dbg !1139, !tbaa !1140
  call void @llvm.dbg.value(metadata ptr %names, metadata !1116, metadata !DIExpression(DW_OP_deref)), !dbg !1138
  %call5 = call i32 @SubstituteString(ptr noundef nonnull %names, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #5, !dbg !1141
  %1 = load ptr, ptr %names, align 8, !dbg !1142, !tbaa !1140
  call void @llvm.dbg.value(metadata ptr %1, metadata !1116, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata ptr %number_arguments, metadata !1117, metadata !DIExpression(DW_OP_deref)), !dbg !1138
  %call6 = call ptr @StringToArgv(ptr noundef %1, ptr noundef nonnull %number_arguments) #5, !dbg !1143
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1113, metadata !DIExpression()), !dbg !1138
  %2 = load ptr, ptr %names, align 8, !dbg !1144, !tbaa !1140
  call void @llvm.dbg.value(metadata ptr %2, metadata !1116, metadata !DIExpression()), !dbg !1138
  %call7 = call ptr @DestroyString(ptr noundef %2) #5, !dbg !1145
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1116, metadata !DIExpression()), !dbg !1138
  store ptr %call7, ptr %names, align 8, !dbg !1146, !tbaa !1140
  %cmp8 = icmp eq ptr %call6, null, !dbg !1147
  br i1 %cmp8, label %cleanup, label %if.end10, !dbg !1149

if.end10:                                         ; preds = %if.then3
  call void @llvm.dbg.value(metadata ptr %image, metadata !1150, metadata !DIExpression()) #5, !dbg !1155
  %3 = load i32, ptr %debug, align 8, !dbg !1157, !tbaa !706
  %cmp.not.i = icmp eq i32 %3, 0, !dbg !1159
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1160

if.then.i:                                        ; preds = %if.end10
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1161
  %call.i = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1073, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #5, !dbg !1162
  br label %if.end.i, !dbg !1163

if.end.i:                                         ; preds = %if.then.i, %if.end10
  %profiles.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 18, !dbg !1164
  %4 = load ptr, ptr %profiles.i, align 8, !dbg !1164, !tbaa !748
  %cmp1.i = icmp eq ptr %4, null, !dbg !1166
  br i1 %cmp1.i, label %ResetImageProfileIterator.exit, label %if.end3.i, !dbg !1167

if.end3.i:                                        ; preds = %if.end.i
  call void @ResetSplayTreeIterator(ptr noundef nonnull %4) #5, !dbg !1168
  br label %ResetImageProfileIterator.exit, !dbg !1169

ResetImageProfileIterator.exit:                   ; preds = %if.end.i, %if.end3.i
  call void @llvm.dbg.value(metadata ptr %image, metadata !1082, metadata !DIExpression()) #5, !dbg !1170
  %5 = load i32, ptr %debug, align 8, !dbg !1173, !tbaa !706
  %cmp.not.i133 = icmp eq i32 %5, 0, !dbg !1174
  br i1 %cmp.not.i133, label %if.end.i139, label %if.then.i136, !dbg !1175

if.then.i136:                                     ; preds = %ResetImageProfileIterator.exit
  %filename.i134 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1176
  %call.i135 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 312, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i134) #5, !dbg !1177
  br label %if.end.i139, !dbg !1178

if.end.i139:                                      ; preds = %if.then.i136, %ResetImageProfileIterator.exit
  %6 = load ptr, ptr %profiles.i, align 8, !dbg !1179, !tbaa !748
  %cmp1.i138 = icmp eq ptr %6, null, !dbg !1180
  br i1 %cmp1.i138, label %for.cond35.preheader, label %GetNextImageProfile.exit, !dbg !1181

GetNextImageProfile.exit:                         ; preds = %if.end.i139
  %call5.i = call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %6) #5, !dbg !1182
  call void @llvm.dbg.value(metadata ptr %call5.i, metadata !1107, metadata !DIExpression()), !dbg !1125
  %cmp12.not205 = icmp eq ptr %call5.i, null, !dbg !1183
  br i1 %cmp12.not205, label %for.cond35.preheader, label %for.cond13.preheader.lr.ph, !dbg !1185

for.cond13.preheader.lr.ph:                       ; preds = %GetNextImageProfile.exit
  %filename.i143 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  br label %for.cond13.preheader, !dbg !1185

for.cond13.preheader:                             ; preds = %for.cond13.preheader.lr.ph, %GetNextImageProfile.exit162
  %name.addr.0206 = phi ptr [ %call5.i, %for.cond13.preheader.lr.ph ], [ %call5.i159, %GetNextImageProfile.exit162 ]
  call void @llvm.dbg.value(metadata ptr %name.addr.0206, metadata !1107, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 1, metadata !1118, metadata !DIExpression()), !dbg !1138
  %7 = load i32, ptr %number_arguments, align 4, !dbg !1186, !tbaa !1190
  call void @llvm.dbg.value(metadata i32 %7, metadata !1117, metadata !DIExpression()), !dbg !1138
  %cmp14203 = icmp sgt i32 %7, 1, !dbg !1191
  br i1 %cmp14203, label %for.body16, label %for.end, !dbg !1192

for.cond35.preheader:                             ; preds = %if.end.i158, %GetNextImageProfile.exit162, %if.end.i139, %GetNextImageProfile.exit
  call void @llvm.dbg.value(metadata i64 0, metadata !1118, metadata !DIExpression()), !dbg !1138
  %8 = load i32, ptr %number_arguments, align 4, !dbg !1193, !tbaa !1190
  call void @llvm.dbg.value(metadata i32 %8, metadata !1117, metadata !DIExpression()), !dbg !1138
  %cmp37208 = icmp sgt i32 %8, 0, !dbg !1196
  br i1 %cmp37208, label %for.body39, label %for.end45, !dbg !1197

for.cond13:                                       ; preds = %if.end25
  %inc = add nuw nsw i64 %i.0204, 1, !dbg !1198
  call void @llvm.dbg.value(metadata i64 undef, metadata !1118, metadata !DIExpression()), !dbg !1138
  %9 = load i32, ptr %number_arguments, align 4, !dbg !1186, !tbaa !1190
  call void @llvm.dbg.value(metadata i32 %9, metadata !1117, metadata !DIExpression()), !dbg !1138
  %conv = sext i32 %9 to i64, !dbg !1199
  %cmp14 = icmp slt i64 %inc, %conv, !dbg !1191
  br i1 %cmp14, label %for.body16, label %for.end, !dbg !1192, !llvm.loop !1200

for.body16:                                       ; preds = %for.cond13.preheader, %for.cond13
  %i.0204 = phi i64 [ %inc, %for.cond13 ], [ 1, %for.cond13.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0204, metadata !1118, metadata !DIExpression()), !dbg !1138
  %arrayidx = getelementptr inbounds ptr, ptr %call6, i64 %i.0204, !dbg !1202
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !1202, !tbaa !1140
  %11 = load i8, ptr %10, align 1, !dbg !1205, !tbaa !904
  %cmp18 = icmp eq i8 %11, 33, !dbg !1206
  br i1 %cmp18, label %land.lhs.true, label %if.end25, !dbg !1207

land.lhs.true:                                    ; preds = %for.body16
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1208
  %call21 = call i32 @LocaleCompare(ptr noundef nonnull %name.addr.0206, ptr noundef nonnull %add.ptr) #5, !dbg !1209
  %cmp22 = icmp eq i32 %call21, 0, !dbg !1210
  br i1 %cmp22, label %for.end, label %land.lhs.true.if.end25_crit_edge, !dbg !1211

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load ptr, ptr %arrayidx, align 8, !dbg !1212, !tbaa !1140
  br label %if.end25, !dbg !1211

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %for.body16
  %12 = phi ptr [ %.pre, %land.lhs.true.if.end25_crit_edge ], [ %10, %for.body16 ], !dbg !1212
  %call27 = call i32 @GlobExpression(ptr noundef nonnull %name.addr.0206, ptr noundef %12, i32 noundef 1) #5, !dbg !1214
  %cmp28.not = icmp eq i32 %call27, 0, !dbg !1215
  call void @llvm.dbg.value(metadata i64 %i.0204, metadata !1118, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1138
  br i1 %cmp28.not, label %for.cond13, label %if.then30, !dbg !1216

if.then30:                                        ; preds = %if.end25
  %call31 = call i32 @DeleteImageProfile(ptr noundef %image, ptr noundef nonnull %name.addr.0206), !dbg !1217
  call void @llvm.dbg.value(metadata ptr %image, metadata !1150, metadata !DIExpression()) #5, !dbg !1219
  %13 = load i32, ptr %debug, align 8, !dbg !1221, !tbaa !706
  %cmp.not.i142 = icmp eq i32 %13, 0, !dbg !1222
  br i1 %cmp.not.i142, label %if.end.i148, label %if.then.i145, !dbg !1223

if.then.i145:                                     ; preds = %if.then30
  %call.i144 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1073, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i143) #5, !dbg !1224
  br label %if.end.i148, !dbg !1225

if.end.i148:                                      ; preds = %if.then.i145, %if.then30
  %14 = load ptr, ptr %profiles.i, align 8, !dbg !1226, !tbaa !748
  %cmp1.i147 = icmp eq ptr %14, null, !dbg !1227
  br i1 %cmp1.i147, label %for.end, label %if.end3.i149, !dbg !1228

if.end3.i149:                                     ; preds = %if.end.i148
  call void @ResetSplayTreeIterator(ptr noundef nonnull %14) #5, !dbg !1229
  br label %for.end, !dbg !1230

for.end:                                          ; preds = %for.cond13, %land.lhs.true, %for.cond13.preheader, %if.end3.i149, %if.end.i148
  call void @llvm.dbg.value(metadata ptr %image, metadata !1082, metadata !DIExpression()) #5, !dbg !1231
  %15 = load i32, ptr %debug, align 8, !dbg !1233, !tbaa !706
  %cmp.not.i152 = icmp eq i32 %15, 0, !dbg !1234
  br i1 %cmp.not.i152, label %if.end.i158, label %if.then.i155, !dbg !1235

if.then.i155:                                     ; preds = %for.end
  %call.i154 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 312, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i143) #5, !dbg !1236
  br label %if.end.i158, !dbg !1237

if.end.i158:                                      ; preds = %if.then.i155, %for.end
  %16 = load ptr, ptr %profiles.i, align 8, !dbg !1238, !tbaa !748
  %cmp1.i157 = icmp eq ptr %16, null, !dbg !1239
  br i1 %cmp1.i157, label %for.cond35.preheader, label %GetNextImageProfile.exit162, !dbg !1240

GetNextImageProfile.exit162:                      ; preds = %if.end.i158
  %call5.i159 = call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %16) #5, !dbg !1241
  call void @llvm.dbg.value(metadata ptr %call5.i159, metadata !1107, metadata !DIExpression()), !dbg !1125
  %cmp12.not = icmp eq ptr %call5.i159, null, !dbg !1183
  br i1 %cmp12.not, label %for.cond35.preheader, label %for.cond13.preheader, !dbg !1185, !llvm.loop !1242

for.body39:                                       ; preds = %for.cond35.preheader, %for.body39
  %i.1209 = phi i64 [ %inc44, %for.body39 ], [ 0, %for.cond35.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.1209, metadata !1118, metadata !DIExpression()), !dbg !1138
  %arrayidx40 = getelementptr inbounds ptr, ptr %call6, i64 %i.1209, !dbg !1244
  %17 = load ptr, ptr %arrayidx40, align 8, !dbg !1244, !tbaa !1140
  %call41 = call ptr @DestroyString(ptr noundef %17) #5, !dbg !1245
  store ptr %call41, ptr %arrayidx40, align 8, !dbg !1246, !tbaa !1140
  %inc44 = add nuw nsw i64 %i.1209, 1, !dbg !1247
  call void @llvm.dbg.value(metadata i64 %inc44, metadata !1118, metadata !DIExpression()), !dbg !1138
  %18 = load i32, ptr %number_arguments, align 4, !dbg !1193, !tbaa !1190
  call void @llvm.dbg.value(metadata i32 %18, metadata !1117, metadata !DIExpression()), !dbg !1138
  %conv36 = sext i32 %18 to i64, !dbg !1248
  %cmp37 = icmp slt i64 %inc44, %conv36, !dbg !1196
  br i1 %cmp37, label %for.body39, label %for.end45, !dbg !1197, !llvm.loop !1249

for.end45:                                        ; preds = %for.body39, %for.cond35.preheader
  %call46 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call6) #5, !dbg !1251
  call void @llvm.dbg.value(metadata ptr %call46, metadata !1113, metadata !DIExpression()), !dbg !1138
  br label %cleanup, !dbg !1252

cleanup:                                          ; preds = %if.then3, %for.end45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %number_arguments) #5, !dbg !1253
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %names) #5, !dbg !1253
  br label %cleanup87

if.end50:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !1111, metadata !DIExpression()), !dbg !1125
  %call51 = tail call ptr @AcquireStringInfo(i64 noundef %length) #5, !dbg !1254
  call void @llvm.dbg.value(metadata ptr %call51, metadata !1112, metadata !DIExpression()), !dbg !1125
  tail call void @SetStringInfoDatum(ptr noundef %call51, ptr noundef nonnull %datum) #5, !dbg !1255
  %call52 = tail call i32 @LocaleCompare(ptr noundef %name, ptr noundef nonnull @.str.3) #5, !dbg !1256
  %cmp53.not = icmp eq i32 %call52, 0, !dbg !1257
  br i1 %cmp53.not, label %if.else, label %land.lhs.true55, !dbg !1258

land.lhs.true55:                                  ; preds = %if.end50
  %call56 = tail call i32 @LocaleCompare(ptr noundef %name, ptr noundef nonnull @.str.7) #5, !dbg !1259
  %cmp57.not = icmp eq i32 %call56, 0, !dbg !1260
  br i1 %cmp57.not, label %if.else, label %if.then59, !dbg !1261

if.then59:                                        ; preds = %land.lhs.true55
  call void @llvm.dbg.value(metadata ptr %image, metadata !1262, metadata !DIExpression()) #5, !dbg !1269
  call void @llvm.dbg.value(metadata ptr %name, metadata !1267, metadata !DIExpression()) #5, !dbg !1269
  call void @llvm.dbg.value(metadata ptr %call51, metadata !1268, metadata !DIExpression()) #5, !dbg !1269
  %call.i163 = tail call fastcc i32 @SetImageProfileInternal(ptr noundef nonnull %image, ptr noundef %name, ptr noundef %call51, i32 noundef 0) #5, !dbg !1271
  call void @llvm.dbg.value(metadata i32 %call.i163, metadata !1111, metadata !DIExpression()), !dbg !1125
  br label %if.end85, !dbg !1272

if.else:                                          ; preds = %land.lhs.true55, %if.end50
  call void @llvm.dbg.value(metadata ptr %image, metadata !1049, metadata !DIExpression()) #5, !dbg !1273
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1050, metadata !DIExpression()) #5, !dbg !1273
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %key.i) #5, !dbg !1275
  call void @llvm.dbg.declare(metadata ptr %key.i, metadata !1051, metadata !DIExpression()) #5, !dbg !1276
  %19 = load i32, ptr %debug, align 8, !dbg !1277, !tbaa !706
  %cmp.not.i165 = icmp eq i32 %19, 0, !dbg !1278
  br i1 %cmp.not.i165, label %if.end.i171, label %if.then.i168, !dbg !1279

if.then.i168:                                     ; preds = %if.else
  %filename.i166 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1280
  %call.i167 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i166) #5, !dbg !1281
  br label %if.end.i171, !dbg !1282

if.end.i171:                                      ; preds = %if.then.i168, %if.else
  %profiles.i169 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 18, !dbg !1283
  %20 = load ptr, ptr %profiles.i169, align 8, !dbg !1283, !tbaa !748
  %cmp1.i170 = icmp eq ptr %20, null, !dbg !1284
  br i1 %cmp1.i170, label %GetImageProfile.exit.thread, label %GetImageProfile.exit, !dbg !1285

GetImageProfile.exit.thread:                      ; preds = %if.end.i171
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key.i) #5, !dbg !1286
  call void @llvm.dbg.value(metadata ptr %call8.i, metadata !1119, metadata !DIExpression()), !dbg !1287
  br label %cleanup84.thread, !dbg !1288

GetImageProfile.exit:                             ; preds = %if.end.i171
  %call5.i172 = call i64 @CopyMagickString(ptr noundef nonnull %key.i, ptr noundef nonnull @.str.3, i64 noundef 4096) #5, !dbg !1289
  %21 = load ptr, ptr %profiles.i169, align 8, !dbg !1290, !tbaa !748
  %call8.i = call ptr @GetValueFromSplayTree(ptr noundef %21, ptr noundef nonnull %key.i) #5, !dbg !1291
  call void @llvm.dbg.value(metadata ptr %call8.i, metadata !1052, metadata !DIExpression()) #5, !dbg !1273
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key.i) #5, !dbg !1286
  call void @llvm.dbg.value(metadata ptr %call8.i, metadata !1119, metadata !DIExpression()), !dbg !1287
  %cmp62.not = icmp eq ptr %call8.i, null, !dbg !1292
  br i1 %cmp62.not, label %cleanup84.thread, label %land.lhs.true64, !dbg !1288

land.lhs.true64:                                  ; preds = %GetImageProfile.exit
  %call65 = call i32 @CompareStringInfo(ptr noundef nonnull %call8.i, ptr noundef %call51) #5, !dbg !1293
  %cmp66 = icmp eq i32 %call65, 0, !dbg !1294
  br i1 %cmp66, label %if.then68, label %land.lhs.true74, !dbg !1295

if.then68:                                        ; preds = %land.lhs.true64
  %call69 = call ptr @GetImageProperty(ptr noundef nonnull %image, ptr noundef nonnull @.str.8) #5, !dbg !1296
  call void @llvm.dbg.value(metadata ptr %call69, metadata !1122, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata ptr %image, metadata !1049, metadata !DIExpression()) #5, !dbg !1298
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1050, metadata !DIExpression()) #5, !dbg !1298
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %key.i175) #5, !dbg !1300
  call void @llvm.dbg.declare(metadata ptr %key.i175, metadata !1051, metadata !DIExpression()) #5, !dbg !1301
  %22 = load i32, ptr %debug, align 8, !dbg !1302, !tbaa !706
  %cmp.not.i177 = icmp eq i32 %22, 0, !dbg !1303
  br i1 %cmp.not.i177, label %if.end.i183, label %if.then.i180, !dbg !1304

if.then.i180:                                     ; preds = %if.then68
  %filename.i178 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1305
  %call.i179 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i178) #5, !dbg !1306
  br label %if.end.i183, !dbg !1307

if.end.i183:                                      ; preds = %if.then.i180, %if.then68
  %23 = load ptr, ptr %profiles.i169, align 8, !dbg !1308, !tbaa !748
  %cmp1.i182 = icmp eq ptr %23, null, !dbg !1309
  br i1 %cmp1.i182, label %if.end71.thread197, label %if.end71, !dbg !1310

if.end71.thread197:                               ; preds = %if.end.i183
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key.i175) #5, !dbg !1311
  call void @llvm.dbg.value(metadata ptr %call8.i185, metadata !1119, metadata !DIExpression()), !dbg !1287
  br label %cleanup84.thread, !dbg !1312

if.end71:                                         ; preds = %if.end.i183
  %call5.i184 = call i64 @CopyMagickString(ptr noundef nonnull %key.i175, ptr noundef nonnull @.str.3, i64 noundef 4096) #5, !dbg !1314
  %24 = load ptr, ptr %profiles.i169, align 8, !dbg !1315, !tbaa !748
  %call8.i185 = call ptr @GetValueFromSplayTree(ptr noundef %24, ptr noundef nonnull %key.i175) #5, !dbg !1316
  call void @llvm.dbg.value(metadata ptr %call8.i185, metadata !1052, metadata !DIExpression()) #5, !dbg !1298
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key.i175) #5, !dbg !1311
  call void @llvm.dbg.value(metadata ptr %call8.i185, metadata !1119, metadata !DIExpression()), !dbg !1287
  %cmp72.not = icmp eq ptr %call8.i185, null, !dbg !1317
  br i1 %cmp72.not, label %cleanup84.thread, label %land.lhs.true74, !dbg !1312

land.lhs.true74:                                  ; preds = %land.lhs.true64, %if.end71
  %icc_profile.0196 = phi ptr [ %call8.i185, %if.end71 ], [ %call8.i, %land.lhs.true64 ]
  %call75 = call i32 @CompareStringInfo(ptr noundef nonnull %icc_profile.0196, ptr noundef %call51) #5, !dbg !1318
  %cmp76 = icmp eq i32 %call75, 0, !dbg !1319
  br i1 %cmp76, label %cleanup84, label %cleanup84.thread, !dbg !1320

cleanup84.thread:                                 ; preds = %if.end71, %land.lhs.true74, %if.end71.thread197, %GetImageProfile.exit, %GetImageProfile.exit.thread
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1321
  %filename81 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1322
  %call83 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 583, i32 noundef 320, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull %filename81) #5, !dbg !1323
  call void @llvm.dbg.value(metadata ptr %call79, metadata !1112, metadata !DIExpression()), !dbg !1125
  br label %if.end85

cleanup84:                                        ; preds = %land.lhs.true74
  %call79 = call ptr @DestroyStringInfo(ptr noundef %call51) #5, !dbg !1324
  call void @llvm.dbg.value(metadata ptr %call79, metadata !1112, metadata !DIExpression()), !dbg !1125
  br label %cleanup87

if.end85:                                         ; preds = %cleanup84.thread, %if.then59
  %status.0 = phi i32 [ %call.i163, %if.then59 ], [ 1, %cleanup84.thread ], !dbg !1125
  call void @llvm.dbg.value(metadata ptr %call51, metadata !1112, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !1111, metadata !DIExpression()), !dbg !1125
  %call86 = call ptr @DestroyStringInfo(ptr noundef %call51) #5, !dbg !1326
  call void @llvm.dbg.value(metadata ptr %call86, metadata !1112, metadata !DIExpression()), !dbg !1125
  br label %cleanup87, !dbg !1327

cleanup87:                                        ; preds = %cleanup84, %if.end85, %cleanup
  %retval.2 = phi i32 [ 1, %cleanup ], [ %status.0, %if.end85 ], [ 1, %cleanup84 ], !dbg !1125
  ret i32 %retval.2, !dbg !1328
}

declare !dbg !1329 i32 @SubstituteString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1332 ptr @StringToArgv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1336 ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ResetImageProfileIterator(ptr noundef %image) local_unnamed_addr #0 !dbg !1151 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1150, metadata !DIExpression()), !dbg !1339
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1340
  %0 = load i32, ptr %debug, align 8, !dbg !1340, !tbaa !706
  %cmp.not = icmp eq i32 %0, 0, !dbg !1341
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1342

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1343
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1073, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #5, !dbg !1344
  br label %if.end, !dbg !1345

if.end:                                           ; preds = %if.then, %entry
  %profiles = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 18, !dbg !1346
  %1 = load ptr, ptr %profiles, align 8, !dbg !1346, !tbaa !748
  %cmp1 = icmp eq ptr %1, null, !dbg !1347
  br i1 %cmp1, label %return, label %if.end3, !dbg !1348

if.end3:                                          ; preds = %if.end
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %1) #5, !dbg !1349
  br label %return, !dbg !1350

return:                                           ; preds = %if.end, %if.end3
  ret void, !dbg !1350
}

declare !dbg !1351 i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1355 ptr @RelinquishMagickMemory(ptr noundef) #2

declare !dbg !1357 ptr @AcquireStringInfo(i64 noundef) local_unnamed_addr #2

declare !dbg !1360 void @SetStringInfoDatum(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageProfile(ptr noundef %image, ptr noundef %name, ptr noundef %profile) local_unnamed_addr #0 !dbg !1263 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1262, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata ptr %name, metadata !1267, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata ptr %profile, metadata !1268, metadata !DIExpression()), !dbg !1363
  %call = tail call fastcc i32 @SetImageProfileInternal(ptr noundef %image, ptr noundef %name, ptr noundef %profile, i32 noundef 0), !dbg !1364
  ret i32 %call, !dbg !1365
}

declare !dbg !1366 i32 @CompareStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1369 ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1373 ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1376 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveImageProfile(ptr noundef %image, ptr noundef %name) local_unnamed_addr #0 !dbg !1381 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1385, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata ptr %name, metadata !1386, metadata !DIExpression()), !dbg !1388
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1389
  %0 = load i32, ptr %debug, align 8, !dbg !1389, !tbaa !706
  %cmp.not = icmp eq i32 %0, 0, !dbg !1391
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1392

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1393
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1019, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #5, !dbg !1394
  br label %if.end, !dbg !1395

if.end:                                           ; preds = %if.then, %entry
  %profiles = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 18, !dbg !1396
  %1 = load ptr, ptr %profiles, align 8, !dbg !1396, !tbaa !748
  %cmp1 = icmp eq ptr %1, null, !dbg !1398
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !1399

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @LocaleCompare(ptr noundef %name, ptr noundef nonnull @.str.3) #5, !dbg !1400
  %cmp5 = icmp eq i32 %call4, 0, !dbg !1402
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !1403

if.then6:                                         ; preds = %if.end3
  %length = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 62, i32 1, !dbg !1404
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %length, i8 0, i64 16, i1 false), !dbg !1406
  br label %if.end8, !dbg !1407

if.end8:                                          ; preds = %if.then6, %if.end3
  %call9 = tail call i32 @LocaleCompare(ptr noundef %name, ptr noundef nonnull @.str.4) #5, !dbg !1408
  %cmp10 = icmp eq i32 %call9, 0, !dbg !1410
  br i1 %cmp10, label %if.then11, label %if.end15, !dbg !1411

if.then11:                                        ; preds = %if.end8
  %length12 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 63, i32 1, !dbg !1412
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %length12, i8 0, i64 16, i1 false), !dbg !1414
  br label %if.end15, !dbg !1415

if.end15:                                         ; preds = %if.then11, %if.end8
  tail call fastcc void @WriteTo8BimProfile(ptr noundef nonnull %image, ptr noundef %name, ptr noundef null), !dbg !1416
  %2 = load ptr, ptr %profiles, align 8, !dbg !1417, !tbaa !748
  %call17 = tail call ptr @RemoveNodeFromSplayTree(ptr noundef %2, ptr noundef %name) #5, !dbg !1418
  call void @llvm.dbg.value(metadata ptr %call17, metadata !1387, metadata !DIExpression()), !dbg !1388
  br label %cleanup, !dbg !1419

cleanup:                                          ; preds = %if.end, %if.end15
  %retval.0 = phi ptr [ %call17, %if.end15 ], [ null, %if.end ], !dbg !1388
  ret ptr %retval.0, !dbg !1420
}

declare !dbg !1421 ptr @RemoveNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1424 void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @SetImageProfileInternal(ptr noundef %image, ptr noundef %name, ptr noundef %profile, i32 noundef %recursive) unnamed_addr #0 !dbg !1427 {
entry:
  %key.i93 = alloca [4096 x i8], align 16
  %key.i = alloca [4096 x i8], align 16
  %key = alloca [4096 x i8], align 16
  %property = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1431, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata ptr %name, metadata !1432, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata ptr %profile, metadata !1433, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %recursive, metadata !1434, metadata !DIExpression()), !dbg !1444
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %key) #5, !dbg !1445
  call void @llvm.dbg.declare(metadata ptr %key, metadata !1435, metadata !DIExpression()), !dbg !1446
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %property) #5, !dbg !1445
  call void @llvm.dbg.declare(metadata ptr %property, metadata !1436, metadata !DIExpression()), !dbg !1447
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1448
  %0 = load i32, ptr %debug, align 8, !dbg !1448, !tbaa !706
  %cmp.not = icmp eq i32 %0, 0, !dbg !1450
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1451

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1452
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1427, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #5, !dbg !1453
  br label %if.end, !dbg !1454

if.end:                                           ; preds = %if.then, %entry
  %profiles = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 18, !dbg !1455
  %1 = load ptr, ptr %profiles, align 8, !dbg !1455, !tbaa !748
  %cmp1 = icmp eq ptr %1, null, !dbg !1457
  br i1 %cmp1, label %if.then2, label %if.end5, !dbg !1458

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @DestroyProfile) #5, !dbg !1459
  store ptr %call3, ptr %profiles, align 8, !dbg !1460, !tbaa !748
  br label %if.end5, !dbg !1461

if.end5:                                          ; preds = %if.then2, %if.end
  %call7 = call i64 @CopyMagickString(ptr noundef nonnull %key, ptr noundef %name, i64 noundef 4096) #5, !dbg !1462
  call void @LocaleLower(ptr noundef nonnull %key) #5, !dbg !1463
  %2 = load ptr, ptr %profiles, align 8, !dbg !1464, !tbaa !748
  %call11 = call ptr @ConstantString(ptr noundef nonnull %key) #5, !dbg !1465
  %call12 = call ptr @CloneStringInfo(ptr noundef %profile) #5, !dbg !1466
  %call13 = call i32 @AddValueToSplayTree(ptr noundef %2, ptr noundef %call11, ptr noundef %call12) #5, !dbg !1467
  call void @llvm.dbg.value(metadata i32 %call13, metadata !1437, metadata !DIExpression()), !dbg !1444
  %cmp14.not = icmp eq i32 %call13, 0, !dbg !1468
  br i1 %cmp14.not, label %if.end56, label %land.lhs.true, !dbg !1469

land.lhs.true:                                    ; preds = %if.end5
  %call15 = call i32 @LocaleCompare(ptr noundef %name, ptr noundef nonnull @.str.3) #5, !dbg !1470
  %cmp16 = icmp eq i32 %call15, 0, !dbg !1471
  br i1 %cmp16, label %if.then19, label %lor.lhs.false, !dbg !1472

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call17 = call i32 @LocaleCompare(ptr noundef %name, ptr noundef nonnull @.str.7) #5, !dbg !1473
  %cmp18 = icmp eq i32 %call17, 0, !dbg !1474
  br i1 %cmp18, label %if.then19, label %land.lhs.true29, !dbg !1475

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.dbg.value(metadata ptr %image, metadata !1049, metadata !DIExpression()) #5, !dbg !1476
  call void @llvm.dbg.value(metadata ptr %name, metadata !1050, metadata !DIExpression()) #5, !dbg !1476
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %key.i) #5, !dbg !1478
  call void @llvm.dbg.declare(metadata ptr %key.i, metadata !1051, metadata !DIExpression()) #5, !dbg !1479
  %3 = load i32, ptr %debug, align 8, !dbg !1480, !tbaa !706
  %cmp.not.i = icmp eq i32 %3, 0, !dbg !1481
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1482

if.then.i:                                        ; preds = %if.then19
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1483
  %call.i = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #5, !dbg !1484
  br label %if.end.i, !dbg !1485

if.end.i:                                         ; preds = %if.then.i, %if.then19
  %4 = load ptr, ptr %profiles, align 8, !dbg !1486, !tbaa !748
  %cmp1.i = icmp eq ptr %4, null, !dbg !1487
  br i1 %cmp1.i, label %GetImageProfile.exit.thread, label %GetImageProfile.exit, !dbg !1488

GetImageProfile.exit.thread:                      ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key.i) #5, !dbg !1489
  call void @llvm.dbg.value(metadata ptr %call8.i, metadata !1438, metadata !DIExpression()), !dbg !1490
  br label %land.lhs.true29, !dbg !1491

GetImageProfile.exit:                             ; preds = %if.end.i
  %call5.i = call i64 @CopyMagickString(ptr noundef nonnull %key.i, ptr noundef %name, i64 noundef 4096) #5, !dbg !1492
  %5 = load ptr, ptr %profiles, align 8, !dbg !1493, !tbaa !748
  %call8.i = call ptr @GetValueFromSplayTree(ptr noundef %5, ptr noundef nonnull %key.i) #5, !dbg !1494
  call void @llvm.dbg.value(metadata ptr %call8.i, metadata !1052, metadata !DIExpression()) #5, !dbg !1476
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key.i) #5, !dbg !1489
  call void @llvm.dbg.value(metadata ptr %call8.i, metadata !1438, metadata !DIExpression()), !dbg !1490
  %cmp21.not = icmp eq ptr %call8.i, null, !dbg !1495
  br i1 %cmp21.not, label %land.lhs.true29, label %if.then22, !dbg !1491

if.then22:                                        ; preds = %GetImageProfile.exit
  %call23 = call i64 @GetStringInfoLength(ptr noundef nonnull %call8.i) #5, !dbg !1497
  %length = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 62, i32 1, !dbg !1499
  store i64 %call23, ptr %length, align 8, !dbg !1500, !tbaa !731
  %call24 = call ptr @GetStringInfoDatum(ptr noundef nonnull %call8.i) #5, !dbg !1501
  %info = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 62, i32 2, !dbg !1502
  store ptr %call24, ptr %info, align 8, !dbg !1503, !tbaa !735
  br label %land.lhs.true29, !dbg !1504

land.lhs.true29:                                  ; preds = %lor.lhs.false, %if.then22, %GetImageProfile.exit, %GetImageProfile.exit.thread
  %call30 = call i32 @LocaleCompare(ptr noundef %name, ptr noundef nonnull @.str.4) #5, !dbg !1505
  %cmp31 = icmp eq i32 %call30, 0, !dbg !1506
  br i1 %cmp31, label %if.then35, label %lor.lhs.false32, !dbg !1507

lor.lhs.false32:                                  ; preds = %land.lhs.true29
  %call33 = call i32 @LocaleCompare(ptr noundef %name, ptr noundef nonnull @.str.14) #5, !dbg !1508
  %cmp34 = icmp eq i32 %call33, 0, !dbg !1509
  br i1 %cmp34, label %if.then35, label %if.then48, !dbg !1510

if.then35:                                        ; preds = %lor.lhs.false32, %land.lhs.true29
  call void @llvm.dbg.value(metadata ptr %image, metadata !1049, metadata !DIExpression()) #5, !dbg !1511
  call void @llvm.dbg.value(metadata ptr %name, metadata !1050, metadata !DIExpression()) #5, !dbg !1511
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %key.i93) #5, !dbg !1513
  call void @llvm.dbg.declare(metadata ptr %key.i93, metadata !1051, metadata !DIExpression()) #5, !dbg !1514
  %6 = load i32, ptr %debug, align 8, !dbg !1515, !tbaa !706
  %cmp.not.i95 = icmp eq i32 %6, 0, !dbg !1516
  br i1 %cmp.not.i95, label %if.end.i101, label %if.then.i98, !dbg !1517

if.then.i98:                                      ; preds = %if.then35
  %filename.i96 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1518
  %call.i97 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i96) #5, !dbg !1519
  br label %if.end.i101, !dbg !1520

if.end.i101:                                      ; preds = %if.then.i98, %if.then35
  %7 = load ptr, ptr %profiles, align 8, !dbg !1521, !tbaa !748
  %cmp1.i100 = icmp eq ptr %7, null, !dbg !1522
  br i1 %cmp1.i100, label %GetImageProfile.exit106.thread, label %GetImageProfile.exit106, !dbg !1523

GetImageProfile.exit106.thread:                   ; preds = %if.end.i101
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key.i93) #5, !dbg !1524
  call void @llvm.dbg.value(metadata ptr %call8.i103, metadata !1441, metadata !DIExpression()), !dbg !1525
  br label %if.then48, !dbg !1526

GetImageProfile.exit106:                          ; preds = %if.end.i101
  %call5.i102 = call i64 @CopyMagickString(ptr noundef nonnull %key.i93, ptr noundef %name, i64 noundef 4096) #5, !dbg !1527
  %8 = load ptr, ptr %profiles, align 8, !dbg !1528, !tbaa !748
  %call8.i103 = call ptr @GetValueFromSplayTree(ptr noundef %8, ptr noundef nonnull %key.i93) #5, !dbg !1529
  call void @llvm.dbg.value(metadata ptr %call8.i103, metadata !1052, metadata !DIExpression()) #5, !dbg !1511
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key.i93) #5, !dbg !1524
  call void @llvm.dbg.value(metadata ptr %call8.i103, metadata !1441, metadata !DIExpression()), !dbg !1525
  %cmp37.not = icmp eq ptr %call8.i103, null, !dbg !1530
  br i1 %cmp37.not, label %if.then48, label %if.then38, !dbg !1526

if.then38:                                        ; preds = %GetImageProfile.exit106
  %call39 = call i64 @GetStringInfoLength(ptr noundef nonnull %call8.i103) #5, !dbg !1532
  %length41 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 63, i32 1, !dbg !1534
  store i64 %call39, ptr %length41, align 8, !dbg !1535, !tbaa !739
  %call42 = call ptr @GetStringInfoDatum(ptr noundef nonnull %call8.i103) #5, !dbg !1536
  %info44 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 63, i32 2, !dbg !1537
  store ptr %call42, ptr %info44, align 8, !dbg !1538, !tbaa !743
  br label %if.then48, !dbg !1539

if.then48:                                        ; preds = %lor.lhs.false32, %if.then38, %GetImageProfile.exit106, %GetImageProfile.exit106.thread
  %call49 = call i32 @LocaleCompare(ptr noundef %name, ptr noundef nonnull @.str.14) #5, !dbg !1540
  %cmp50 = icmp eq i32 %call49, 0, !dbg !1544
  br i1 %cmp50, label %if.then51, label %if.else, !dbg !1545

if.then51:                                        ; preds = %if.then48
  call void @llvm.dbg.value(metadata ptr %image, metadata !1546, metadata !DIExpression()) #5, !dbg !1567
  call void @llvm.dbg.value(metadata ptr %profile, metadata !1551, metadata !DIExpression()) #5, !dbg !1567
  %call.i107 = call ptr @GetStringInfoDatum(ptr noundef %profile) #5, !dbg !1569
  call void @llvm.dbg.value(metadata ptr %call.i107, metadata !1552, metadata !DIExpression()) #5, !dbg !1567
  %call1.i = call i64 @GetStringInfoLength(ptr noundef %profile) #5, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %call1.i, metadata !1554, metadata !DIExpression()) #5, !dbg !1567
  call void @llvm.dbg.value(metadata ptr %call.i107, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  %add.ptr.i = getelementptr inbounds i8, ptr %call.i107, i64 %call1.i
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 -16
  call void @llvm.dbg.value(metadata ptr %call.i107, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  %cmp.i152 = icmp ult ptr %call.i107, %add.ptr2.i, !dbg !1571
  br i1 %cmp.i152, label %for.body.i.lr.ph, label %if.end56, !dbg !1572

for.body.i.lr.ph:                                 ; preds = %if.then51
  %add.ptr15.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 -4
  %x_resolution.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 24
  %y_resolution.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 25
  %units43.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 19
  br label %for.body.i, !dbg !1572

for.body.i:                                       ; preds = %for.body.i.lr.ph, %sw.epilog.i
  %p.0.i153 = phi ptr [ %call.i107, %for.body.i.lr.ph ], [ %spec.select141.i, %sw.epilog.i ]
  call void @llvm.dbg.value(metadata ptr %p.0.i153, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  %call3.i = call i32 @LocaleNCompare(ptr noundef %p.0.i153, ptr noundef nonnull @.str.11, i64 noundef 4) #5, !dbg !1573
  %cmp4.not.i = icmp eq i32 %call3.i, 0, !dbg !1575
  br i1 %cmp4.not.i, label %if.end.i108, label %if.end56, !dbg !1576

if.end.i108:                                      ; preds = %for.body.i
  %add.ptr5.i = getelementptr inbounds i8, ptr %p.0.i153, i64 4, !dbg !1577
  call void @llvm.dbg.value(metadata ptr %add.ptr5.i, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  call void @llvm.dbg.value(metadata ptr %add.ptr5.i, metadata !893, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata ptr undef, metadata !899, metadata !DIExpression()), !dbg !1578
  %incdec.ptr.i141 = getelementptr inbounds i8, ptr %p.0.i153, i64 5, !dbg !1580
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i141, metadata !893, metadata !DIExpression()), !dbg !1578
  %9 = load i8, ptr %add.ptr5.i, align 1, !dbg !1581, !tbaa !904
  %conv.i142 = zext i8 %9 to i16, !dbg !1581
  %shl.i143 = shl nuw i16 %conv.i142, 8, !dbg !1582
  %incdec.ptr2.i144 = getelementptr inbounds i8, ptr %p.0.i153, i64 6, !dbg !1583
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i144, metadata !893, metadata !DIExpression()), !dbg !1578
  %10 = load i8, ptr %incdec.ptr.i141, align 1, !dbg !1584, !tbaa !904
  %conv6.i145 = zext i8 %10 to i16, !dbg !1585
  %or.i146 = or i16 %shl.i143, %conv6.i145, !dbg !1586
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i144, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i144, metadata !910, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata ptr undef, metadata !915, metadata !DIExpression()), !dbg !1587
  %incdec.ptr.i140 = getelementptr inbounds i8, ptr %p.0.i153, i64 7, !dbg !1589
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i140, metadata !910, metadata !DIExpression()), !dbg !1587
  %11 = load i8, ptr %incdec.ptr2.i144, align 1, !dbg !1590, !tbaa !904
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i140, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  call void @llvm.dbg.value(metadata i8 %11, metadata !1557, metadata !DIExpression()) #5, !dbg !1567
  %12 = zext i8 %11 to i64
  %add.ptr8.i = getelementptr inbounds i8, ptr %incdec.ptr.i140, i64 %12, !dbg !1591
  call void @llvm.dbg.value(metadata ptr %add.ptr8.i, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  %13 = and i8 %11, 1, !dbg !1592
  %14 = xor i8 %13, 1, !dbg !1594
  %15 = zext i8 %14 to i64, !dbg !1594
  %spec.select.i = getelementptr i8, ptr %add.ptr8.i, i64 %15, !dbg !1594
  call void @llvm.dbg.value(metadata ptr %spec.select.i, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  %cmp16.i = icmp ugt ptr %spec.select.i, %add.ptr15.i, !dbg !1595
  br i1 %cmp16.i, label %if.end56, label %if.end19.i, !dbg !1597

if.end19.i:                                       ; preds = %if.end.i108
  call void @llvm.dbg.value(metadata ptr %spec.select.i, metadata !927, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata ptr undef, metadata !933, metadata !DIExpression()), !dbg !1598
  %incdec.ptr.i127 = getelementptr inbounds i8, ptr %spec.select.i, i64 1, !dbg !1600
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i127, metadata !927, metadata !DIExpression()), !dbg !1598
  %16 = load i8, ptr %spec.select.i, align 1, !dbg !1601, !tbaa !904
  %conv.i128 = zext i8 %16 to i64, !dbg !1601
  %shl.i129 = shl nuw nsw i64 %conv.i128, 24, !dbg !1602
  %incdec.ptr3.i130 = getelementptr inbounds i8, ptr %spec.select.i, i64 2, !dbg !1603
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3.i130, metadata !927, metadata !DIExpression()), !dbg !1598
  %17 = load i8, ptr %incdec.ptr.i127, align 1, !dbg !1604, !tbaa !904
  %conv4.i131 = zext i8 %17 to i64, !dbg !1604
  %shl5.i132 = shl nuw nsw i64 %conv4.i131, 16, !dbg !1605
  %or.i133 = or i64 %shl5.i132, %shl.i129, !dbg !1606
  %incdec.ptr9.i134 = getelementptr inbounds i8, ptr %spec.select.i, i64 3, !dbg !1607
  call void @llvm.dbg.value(metadata ptr %incdec.ptr9.i134, metadata !927, metadata !DIExpression()), !dbg !1598
  %18 = load i8, ptr %incdec.ptr3.i130, align 1, !dbg !1608, !tbaa !904
  %conv10.i135 = zext i8 %18 to i64, !dbg !1608
  %shl11.i136 = shl nuw nsw i64 %conv10.i135, 8, !dbg !1609
  %or14.i137 = or i64 %or.i133, %shl11.i136, !dbg !1610
  %incdec.ptr16.i138 = getelementptr inbounds i8, ptr %spec.select.i, i64 4, !dbg !1611
  call void @llvm.dbg.value(metadata ptr %incdec.ptr16.i138, metadata !927, metadata !DIExpression()), !dbg !1598
  %19 = load i8, ptr %incdec.ptr9.i134, align 1, !dbg !1612, !tbaa !904
  %20 = zext i8 %19 to i64
  %or21.i139 = or i64 %or14.i137, %20, !dbg !1613
  call void @llvm.dbg.value(metadata ptr %incdec.ptr16.i138, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  call void @llvm.dbg.value(metadata !DIArgList(i64 %or14.i137, i64 %20), metadata !1558, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)) #5, !dbg !1567
  call void @llvm.dbg.value(metadata !DIArgList(i64 %or14.i137, i64 %20), metadata !1555, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)) #5, !dbg !1567
  %idx.neg.i = sub nsw i64 0, %or21.i139, !dbg !1614
  %add.ptr23.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !1614
  %cmp24.i = icmp ugt ptr %incdec.ptr16.i138, %add.ptr23.i, !dbg !1616
  %cmp26.i = icmp slt i64 %call1.i, %or21.i139
  %or.cond.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i, !dbg !1617
  br i1 %or.cond.i, label %if.end56, label %if.end29.i, !dbg !1617

if.end29.i:                                       ; preds = %if.end19.i
  call void @llvm.dbg.value(metadata i16 undef, metadata !1559, metadata !DIExpression()) #5, !dbg !1567
  switch i16 %or.i146, label %sw.default.i [
    i16 1005, label %sw.bb.i
    i16 1028, label %sw.bb50.i
    i16 1036, label %sw.bb55.i
    i16 1039, label %sw.bb57.i
    i16 1058, label %sw.bb62.i
    i16 1060, label %sw.bb67.i
  ], !dbg !1618

sw.bb.i:                                          ; preds = %if.end29.i
  call void @llvm.dbg.value(metadata ptr %incdec.ptr16.i138, metadata !927, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata ptr undef, metadata !933, metadata !DIExpression()), !dbg !1619
  %incdec.ptr.i114 = getelementptr inbounds i8, ptr %incdec.ptr16.i138, i64 1, !dbg !1621
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i114, metadata !927, metadata !DIExpression()), !dbg !1619
  %21 = load i8, ptr %incdec.ptr16.i138, align 1, !dbg !1622, !tbaa !904
  %conv.i115 = zext i8 %21 to i32, !dbg !1622
  %shl.i116 = shl nuw i32 %conv.i115, 24, !dbg !1623
  %incdec.ptr3.i117 = getelementptr inbounds i8, ptr %incdec.ptr16.i138, i64 2, !dbg !1624
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3.i117, metadata !927, metadata !DIExpression()), !dbg !1619
  %22 = load i8, ptr %incdec.ptr.i114, align 1, !dbg !1625, !tbaa !904
  %conv4.i118 = zext i8 %22 to i32, !dbg !1625
  %shl5.i119 = shl nuw nsw i32 %conv4.i118, 16, !dbg !1626
  %or.i120 = or i32 %shl5.i119, %shl.i116, !dbg !1627
  %incdec.ptr9.i121 = getelementptr inbounds i8, ptr %incdec.ptr16.i138, i64 3, !dbg !1628
  call void @llvm.dbg.value(metadata ptr %incdec.ptr9.i121, metadata !927, metadata !DIExpression()), !dbg !1619
  %23 = load i8, ptr %incdec.ptr3.i117, align 1, !dbg !1629, !tbaa !904
  %conv10.i122 = zext i8 %23 to i32, !dbg !1629
  %shl11.i123 = shl nuw nsw i32 %conv10.i122, 8, !dbg !1630
  %or14.i124 = or i32 %or.i120, %shl11.i123, !dbg !1631
  %incdec.ptr16.i125 = getelementptr inbounds i8, ptr %incdec.ptr16.i138, i64 4, !dbg !1632
  call void @llvm.dbg.value(metadata ptr %incdec.ptr16.i125, metadata !927, metadata !DIExpression()), !dbg !1619
  %24 = load i8, ptr %incdec.ptr9.i121, align 1, !dbg !1633, !tbaa !904
  %25 = zext i8 %24 to i32
  %or21.i126 = or i32 %or14.i124, %25, !dbg !1634
  call void @llvm.dbg.value(metadata ptr %incdec.ptr16.i125, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  call void @llvm.dbg.value(metadata i32 %or21.i126, metadata !1560, metadata !DIExpression()) #5, !dbg !1635
  %conv32.i = uitofp i32 %or21.i126 to double, !dbg !1636
  %div.i = fmul double %conv32.i, 0x3EF0000000000000, !dbg !1637
  store double %div.i, ptr %x_resolution.i, align 8, !dbg !1638, !tbaa !1639
  call void @llvm.dbg.value(metadata ptr %incdec.ptr16.i125, metadata !893, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata ptr undef, metadata !899, metadata !DIExpression()), !dbg !1640
  %incdec.ptr.i110 = getelementptr inbounds i8, ptr %incdec.ptr16.i125, i64 1, !dbg !1642
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i110, metadata !893, metadata !DIExpression()), !dbg !1640
  %26 = load i8, ptr %incdec.ptr16.i125, align 1, !dbg !1643, !tbaa !904
  %conv.i111 = zext i8 %26 to i16, !dbg !1643
  %shl.i112 = shl nuw i16 %conv.i111, 8, !dbg !1644
  %incdec.ptr2.i = getelementptr inbounds i8, ptr %incdec.ptr16.i125, i64 2, !dbg !1645
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i, metadata !893, metadata !DIExpression()), !dbg !1640
  %27 = load i8, ptr %incdec.ptr.i110, align 1, !dbg !1646, !tbaa !904
  %conv6.i = zext i8 %27 to i16, !dbg !1647
  %or.i113 = or i16 %shl.i112, %conv6.i, !dbg !1648
  %add.ptr34.i = getelementptr inbounds i8, ptr %incdec.ptr2.i, i64 2, !dbg !1649
  call void @llvm.dbg.value(metadata ptr %add.ptr34.i, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  call void @llvm.dbg.value(metadata ptr %add.ptr34.i, metadata !927, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata ptr undef, metadata !933, metadata !DIExpression()), !dbg !1650
  %incdec.ptr.i109 = getelementptr inbounds i8, ptr %add.ptr34.i, i64 1, !dbg !1652
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i109, metadata !927, metadata !DIExpression()), !dbg !1650
  %28 = load i8, ptr %add.ptr34.i, align 1, !dbg !1653, !tbaa !904
  %conv.i = zext i8 %28 to i32, !dbg !1653
  %shl.i = shl nuw i32 %conv.i, 24, !dbg !1654
  %incdec.ptr3.i = getelementptr inbounds i8, ptr %add.ptr34.i, i64 2, !dbg !1655
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3.i, metadata !927, metadata !DIExpression()), !dbg !1650
  %29 = load i8, ptr %incdec.ptr.i109, align 1, !dbg !1656, !tbaa !904
  %conv4.i = zext i8 %29 to i32, !dbg !1656
  %shl5.i = shl nuw nsw i32 %conv4.i, 16, !dbg !1657
  %or.i = or i32 %shl5.i, %shl.i, !dbg !1658
  %incdec.ptr9.i = getelementptr inbounds i8, ptr %add.ptr34.i, i64 3, !dbg !1659
  call void @llvm.dbg.value(metadata ptr %incdec.ptr9.i, metadata !927, metadata !DIExpression()), !dbg !1650
  %30 = load i8, ptr %incdec.ptr3.i, align 1, !dbg !1660, !tbaa !904
  %conv10.i = zext i8 %30 to i32, !dbg !1660
  %shl11.i = shl nuw nsw i32 %conv10.i, 8, !dbg !1661
  %or14.i = or i32 %or.i, %shl11.i, !dbg !1662
  %incdec.ptr16.i = getelementptr inbounds i8, ptr %add.ptr34.i, i64 4, !dbg !1663
  call void @llvm.dbg.value(metadata ptr %incdec.ptr16.i, metadata !927, metadata !DIExpression()), !dbg !1650
  %31 = load i8, ptr %incdec.ptr9.i, align 1, !dbg !1664, !tbaa !904
  %32 = zext i8 %31 to i32
  %or21.i = or i32 %or14.i, %32, !dbg !1665
  %add.ptr36.i = getelementptr inbounds i8, ptr %incdec.ptr16.i, i64 4, !dbg !1666
  call void @llvm.dbg.value(metadata ptr %add.ptr36.i, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  call void @llvm.dbg.value(metadata i32 %or21.i, metadata !1560, metadata !DIExpression()) #5, !dbg !1635
  %conv37.i = uitofp i32 %or21.i to double, !dbg !1667
  %div38.i = fmul double %conv37.i, 0x3EF0000000000000, !dbg !1668
  store double %div38.i, ptr %y_resolution.i, align 8, !dbg !1669, !tbaa !1670
  call void @llvm.dbg.value(metadata i16 %or.i113, metadata !1566, metadata !DIExpression()) #5, !dbg !1635
  %cmp40.not.i = icmp eq i16 %or.i113, 2, !dbg !1671
  br i1 %cmp40.not.i, label %if.else.i, label %if.then42.i, !dbg !1673

if.then42.i:                                      ; preds = %sw.bb.i
  store i32 1, ptr %units43.i, align 8, !dbg !1674, !tbaa !1675
  br label %sw.epilog.i, !dbg !1676

if.else.i:                                        ; preds = %sw.bb.i
  store i32 2, ptr %units43.i, align 8, !dbg !1677, !tbaa !1675
  %div46.i = fdiv double %div.i, 2.540000e+00, !dbg !1679
  store double %div46.i, ptr %x_resolution.i, align 8, !dbg !1679, !tbaa !1639
  %div48.i = fdiv double %div38.i, 2.540000e+00, !dbg !1680
  store double %div48.i, ptr %y_resolution.i, align 8, !dbg !1680, !tbaa !1670
  br label %sw.epilog.i

sw.bb50.i:                                        ; preds = %if.end29.i
  %call51.i = call ptr @AcquireStringInfo(i64 noundef %or21.i139) #5, !dbg !1681
  call void @llvm.dbg.value(metadata ptr %call51.i, metadata !1556, metadata !DIExpression()) #5, !dbg !1567
  call void @SetStringInfoDatum(ptr noundef %call51.i, ptr noundef nonnull %incdec.ptr16.i138) #5, !dbg !1683
  %call52.i = call fastcc i32 @SetImageProfileInternal(ptr noundef %image, ptr noundef nonnull @.str.4, ptr noundef %call51.i, i32 noundef 1) #5, !dbg !1684
  %call53.i = call ptr @DestroyStringInfo(ptr noundef %call51.i) #5, !dbg !1685
  call void @llvm.dbg.value(metadata ptr %call53.i, metadata !1556, metadata !DIExpression()) #5, !dbg !1567
  %add.ptr54.i = getelementptr inbounds i8, ptr %incdec.ptr16.i138, i64 %or21.i139, !dbg !1686
  call void @llvm.dbg.value(metadata ptr %add.ptr54.i, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  br label %sw.epilog.i, !dbg !1687

sw.bb55.i:                                        ; preds = %if.end29.i
  %add.ptr56.i = getelementptr inbounds i8, ptr %incdec.ptr16.i138, i64 %or21.i139, !dbg !1688
  call void @llvm.dbg.value(metadata ptr %add.ptr56.i, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  br label %sw.epilog.i, !dbg !1690

sw.bb57.i:                                        ; preds = %if.end29.i
  %call58.i = call ptr @AcquireStringInfo(i64 noundef %or21.i139) #5, !dbg !1691
  call void @llvm.dbg.value(metadata ptr %call58.i, metadata !1556, metadata !DIExpression()) #5, !dbg !1567
  call void @SetStringInfoDatum(ptr noundef %call58.i, ptr noundef nonnull %incdec.ptr16.i138) #5, !dbg !1693
  %call59.i = call fastcc i32 @SetImageProfileInternal(ptr noundef %image, ptr noundef nonnull @.str.3, ptr noundef %call58.i, i32 noundef 1) #5, !dbg !1694
  %call60.i = call ptr @DestroyStringInfo(ptr noundef %call58.i) #5, !dbg !1695
  call void @llvm.dbg.value(metadata ptr %call60.i, metadata !1556, metadata !DIExpression()) #5, !dbg !1567
  %add.ptr61.i = getelementptr inbounds i8, ptr %incdec.ptr16.i138, i64 %or21.i139, !dbg !1696
  call void @llvm.dbg.value(metadata ptr %add.ptr61.i, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  br label %sw.epilog.i, !dbg !1697

sw.bb62.i:                                        ; preds = %if.end29.i
  %call63.i = call ptr @AcquireStringInfo(i64 noundef %or21.i139) #5, !dbg !1698
  call void @llvm.dbg.value(metadata ptr %call63.i, metadata !1556, metadata !DIExpression()) #5, !dbg !1567
  call void @SetStringInfoDatum(ptr noundef %call63.i, ptr noundef nonnull %incdec.ptr16.i138) #5, !dbg !1700
  %call64.i = call fastcc i32 @SetImageProfileInternal(ptr noundef %image, ptr noundef nonnull @.str.16, ptr noundef %call63.i, i32 noundef 1) #5, !dbg !1701
  %call65.i = call ptr @DestroyStringInfo(ptr noundef %call63.i) #5, !dbg !1702
  call void @llvm.dbg.value(metadata ptr %call65.i, metadata !1556, metadata !DIExpression()) #5, !dbg !1567
  %add.ptr66.i = getelementptr inbounds i8, ptr %incdec.ptr16.i138, i64 %or21.i139, !dbg !1703
  call void @llvm.dbg.value(metadata ptr %add.ptr66.i, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  br label %sw.epilog.i, !dbg !1704

sw.bb67.i:                                        ; preds = %if.end29.i
  %call68.i = call ptr @AcquireStringInfo(i64 noundef %or21.i139) #5, !dbg !1705
  call void @llvm.dbg.value(metadata ptr %call68.i, metadata !1556, metadata !DIExpression()) #5, !dbg !1567
  call void @SetStringInfoDatum(ptr noundef %call68.i, ptr noundef nonnull %incdec.ptr16.i138) #5, !dbg !1707
  %call69.i = call fastcc i32 @SetImageProfileInternal(ptr noundef %image, ptr noundef nonnull @.str.13, ptr noundef %call68.i, i32 noundef 1) #5, !dbg !1708
  %call70.i = call ptr @DestroyStringInfo(ptr noundef %call68.i) #5, !dbg !1709
  call void @llvm.dbg.value(metadata ptr %call70.i, metadata !1556, metadata !DIExpression()) #5, !dbg !1567
  %add.ptr71.i = getelementptr inbounds i8, ptr %incdec.ptr16.i138, i64 %or21.i139, !dbg !1710
  call void @llvm.dbg.value(metadata ptr %add.ptr71.i, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  br label %sw.epilog.i, !dbg !1711

sw.default.i:                                     ; preds = %if.end29.i
  %add.ptr72.i = getelementptr inbounds i8, ptr %incdec.ptr16.i138, i64 %or21.i139, !dbg !1712
  call void @llvm.dbg.value(metadata ptr %add.ptr72.i, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  br label %sw.epilog.i, !dbg !1714

sw.epilog.i:                                      ; preds = %if.then42.i, %if.else.i, %sw.default.i, %sw.bb67.i, %sw.bb62.i, %sw.bb57.i, %sw.bb55.i, %sw.bb50.i
  %p.2.i = phi ptr [ %add.ptr72.i, %sw.default.i ], [ %add.ptr71.i, %sw.bb67.i ], [ %add.ptr66.i, %sw.bb62.i ], [ %add.ptr61.i, %sw.bb57.i ], [ %add.ptr56.i, %sw.bb55.i ], [ %add.ptr54.i, %sw.bb50.i ], [ %add.ptr36.i, %if.else.i ], [ %add.ptr36.i, %if.then42.i ], !dbg !1715
  call void @llvm.dbg.value(metadata ptr %p.2.i, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  %and73.i = and i64 %20, 1, !dbg !1716
  %spec.select141.i = getelementptr i8, ptr %p.2.i, i64 %and73.i, !dbg !1718
  call void @llvm.dbg.value(metadata ptr %spec.select141.i, metadata !1553, metadata !DIExpression()) #5, !dbg !1567
  %cmp.i = icmp ult ptr %spec.select141.i, %add.ptr2.i, !dbg !1571
  br i1 %cmp.i, label %for.body.i, label %if.end56, !dbg !1572, !llvm.loop !1719

if.else:                                          ; preds = %if.then48
  %cmp52 = icmp eq i32 %recursive, 0, !dbg !1721
  br i1 %cmp52, label %if.then53, label %if.end56, !dbg !1723

if.then53:                                        ; preds = %if.else
  call fastcc void @WriteTo8BimProfile(ptr noundef nonnull %image, ptr noundef %name, ptr noundef %profile), !dbg !1724
  br label %if.end56, !dbg !1724

if.end56:                                         ; preds = %sw.epilog.i, %for.body.i, %if.end.i108, %if.end19.i, %if.then51, %if.end5, %if.then53, %if.else
  %call58 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %property, i64 noundef 4096, ptr noundef nonnull @.str.15, ptr noundef %name) #5, !dbg !1725
  %call60 = call ptr @GetImageProperty(ptr noundef %image, ptr noundef nonnull %property) #5, !dbg !1726
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %property) #5, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key) #5, !dbg !1727
  ret i32 %call13, !dbg !1728
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SyncImageProfiles(ptr noundef %image) local_unnamed_addr #0 !dbg !1729 {
entry:
  %buffer.i610.i = alloca [2 x i8], align 1
  %buffer.i585.i = alloca [4 x i8], align 1
  %buffer.i578.i = alloca [2 x i8], align 1
  %buffer.i553.i = alloca [4 x i8], align 1
  %buffer.i540.i = alloca [4 x i8], align 1
  %buffer.i515.i = alloca [4 x i8], align 1
  %buffer.i502.i = alloca [4 x i8], align 1
  %buffer.i.i38 = alloca [4 x i8], align 1
  %directory_stack.i = alloca [16 x %struct._DirectoryInfo], align 16
  %key.i24 = alloca [4096 x i8], align 16
  %buffer.i170.i = alloca [2 x i8], align 1
  %buffer.i157.i = alloca [4 x i8], align 1
  %buffer.i144.i = alloca [4 x i8], align 1
  %buffer.i142.i = alloca [2 x i8], align 1
  %buffer.i129.i = alloca [4 x i8], align 1
  %buffer.i.i = alloca [4 x i8], align 1
  %key.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1733, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i32 1, metadata !1734, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata ptr %image, metadata !1049, metadata !DIExpression()) #5, !dbg !1737
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !1050, metadata !DIExpression()) #5, !dbg !1737
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %key.i) #5, !dbg !1739
  call void @llvm.dbg.declare(metadata ptr %key.i, metadata !1051, metadata !DIExpression()) #5, !dbg !1740
  %debug.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1741
  %0 = load i32, ptr %debug.i, align 8, !dbg !1741, !tbaa !706
  %cmp.not.i = icmp eq i32 %0, 0, !dbg !1742
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1743

if.then.i:                                        ; preds = %entry
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1744
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #5, !dbg !1745
  br label %if.end.i, !dbg !1746

if.end.i:                                         ; preds = %if.then.i, %entry
  %profiles.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 18, !dbg !1747
  %1 = load ptr, ptr %profiles.i, align 8, !dbg !1747, !tbaa !748
  %cmp1.i = icmp eq ptr %1, null, !dbg !1748
  br i1 %cmp1.i, label %GetImageProfile.exit.thread, label %GetImageProfile.exit, !dbg !1749

GetImageProfile.exit.thread:                      ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key.i) #5, !dbg !1750
  call void @llvm.dbg.value(metadata ptr %call8.i, metadata !1735, metadata !DIExpression()), !dbg !1736
  br label %if.end4, !dbg !1751

GetImageProfile.exit:                             ; preds = %if.end.i
  %call5.i = call i64 @CopyMagickString(ptr noundef nonnull %key.i, ptr noundef nonnull @.str.11, i64 noundef 4096) #5, !dbg !1752
  %2 = load ptr, ptr %profiles.i, align 8, !dbg !1753, !tbaa !748
  %call8.i = call ptr @GetValueFromSplayTree(ptr noundef %2, ptr noundef nonnull %key.i) #5, !dbg !1754
  call void @llvm.dbg.value(metadata ptr %call8.i, metadata !1052, metadata !DIExpression()) #5, !dbg !1737
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key.i) #5, !dbg !1750
  call void @llvm.dbg.value(metadata ptr %call8.i, metadata !1735, metadata !DIExpression()), !dbg !1736
  %cmp.not = icmp eq ptr %call8.i, null, !dbg !1755
  br i1 %cmp.not, label %if.end4, label %if.then, !dbg !1751

if.then:                                          ; preds = %GetImageProfile.exit
  call void @llvm.dbg.value(metadata ptr %image, metadata !1757, metadata !DIExpression()) #5, !dbg !1765
  call void @llvm.dbg.value(metadata ptr %call8.i, metadata !1760, metadata !DIExpression()) #5, !dbg !1765
  %call.i20 = call i64 @GetStringInfoLength(ptr noundef nonnull %call8.i) #5, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %call.i20, metadata !1762, metadata !DIExpression()) #5, !dbg !1765
  %call1.i = call ptr @GetStringInfoDatum(ptr noundef nonnull %call8.i) #5, !dbg !1769
  call void @llvm.dbg.value(metadata ptr %call1.i, metadata !1763, metadata !DIExpression()) #5, !dbg !1765
  %cmp.not202.i = icmp eq i64 %call.i20, 0, !dbg !1770
  br i1 %cmp.not202.i, label %if.end4, label %ReadProfileByte.exit.lr.ph.i, !dbg !1771

ReadProfileByte.exit.lr.ph.i:                     ; preds = %if.then
  %units.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 19
  %x_resolution47.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 24
  %arrayidx14.i134.i = getelementptr inbounds [4 x i8], ptr %buffer.i129.i, i64 0, i64 1
  %arrayidx17.i137.i = getelementptr inbounds [4 x i8], ptr %buffer.i129.i, i64 0, i64 2
  %arrayidx19.i140.i = getelementptr inbounds [4 x i8], ptr %buffer.i129.i, i64 0, i64 3
  %arrayidx14.i.i = getelementptr inbounds [4 x i8], ptr %buffer.i.i, i64 0, i64 1
  %arrayidx17.i.i = getelementptr inbounds [4 x i8], ptr %buffer.i.i, i64 0, i64 2
  %arrayidx19.i.i = getelementptr inbounds [4 x i8], ptr %buffer.i.i, i64 0, i64 3
  %arrayidx9.i.i = getelementptr inbounds [2 x i8], ptr %buffer.i142.i, i64 0, i64 1
  %y_resolution65.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 25
  %arrayidx14.i162.i = getelementptr inbounds [4 x i8], ptr %buffer.i157.i, i64 0, i64 1
  %arrayidx17.i165.i = getelementptr inbounds [4 x i8], ptr %buffer.i157.i, i64 0, i64 2
  %arrayidx19.i168.i = getelementptr inbounds [4 x i8], ptr %buffer.i157.i, i64 0, i64 3
  %arrayidx14.i149.i = getelementptr inbounds [4 x i8], ptr %buffer.i144.i, i64 0, i64 1
  %arrayidx17.i152.i = getelementptr inbounds [4 x i8], ptr %buffer.i144.i, i64 0, i64 2
  %arrayidx19.i155.i = getelementptr inbounds [4 x i8], ptr %buffer.i144.i, i64 0, i64 3
  %arrayidx9.i174.i = getelementptr inbounds [2 x i8], ptr %buffer.i170.i, i64 0, i64 1
  br label %ReadProfileByte.exit.i, !dbg !1771

ReadProfileByte.exit.i:                           ; preds = %while.cond.backedge.i, %ReadProfileByte.exit.lr.ph.i
  %p.0204.i = phi ptr [ %call1.i, %ReadProfileByte.exit.lr.ph.i ], [ %p.0.be.i, %while.cond.backedge.i ]
  %length.0203.i = phi i64 [ %call.i20, %ReadProfileByte.exit.lr.ph.i ], [ %length.0.be.i, %while.cond.backedge.i ]
  call void @llvm.dbg.value(metadata i64 %length.0203.i, metadata !1762, metadata !DIExpression()) #5, !dbg !1765
  call void @llvm.dbg.value(metadata ptr undef, metadata !1772, metadata !DIExpression()) #5, !dbg !1781
  call void @llvm.dbg.value(metadata ptr undef, metadata !1779, metadata !DIExpression()) #5, !dbg !1781
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %p.0204.i, i64 1, !dbg !1785
  %3 = load i8, ptr %p.0204.i, align 1, !dbg !1786, !tbaa !904
  call void @llvm.dbg.value(metadata i8 %3, metadata !1780, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !1781
  %dec.i.i = add i64 %length.0203.i, -1, !dbg !1787
  %cmp3.not.i = icmp eq i8 %3, 56, !dbg !1788
  br i1 %cmp3.not.i, label %if.end.i21, label %while.cond.backedge.i, !dbg !1789

if.end.i21:                                       ; preds = %ReadProfileByte.exit.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !1772, metadata !DIExpression()) #5, !dbg !1790
  call void @llvm.dbg.value(metadata ptr undef, metadata !1779, metadata !DIExpression()) #5, !dbg !1790
  %cmp.i92.i = icmp eq i64 %dec.i.i, 0, !dbg !1793
  br i1 %cmp.i92.i, label %if.end4, label %ReadProfileByte.exit98.i, !dbg !1795

ReadProfileByte.exit98.i:                         ; preds = %if.end.i21
  %incdec.ptr.i93.i = getelementptr inbounds i8, ptr %p.0204.i, i64 2, !dbg !1796
  %4 = load i8, ptr %incdec.ptr.i.i, align 1, !dbg !1797, !tbaa !904
  call void @llvm.dbg.value(metadata i8 %4, metadata !1780, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !1790
  %dec.i95.i = add i64 %length.0203.i, -2, !dbg !1798
  %cmp5.not.i = icmp eq i8 %4, 66, !dbg !1799
  br i1 %cmp5.not.i, label %if.end7.i, label %while.cond.backedge.i, !dbg !1800

if.end7.i:                                        ; preds = %ReadProfileByte.exit98.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !1772, metadata !DIExpression()) #5, !dbg !1801
  call void @llvm.dbg.value(metadata ptr undef, metadata !1779, metadata !DIExpression()) #5, !dbg !1801
  %cmp.i99.i = icmp eq i64 %dec.i95.i, 0, !dbg !1804
  br i1 %cmp.i99.i, label %if.end4, label %ReadProfileByte.exit105.i, !dbg !1805

ReadProfileByte.exit105.i:                        ; preds = %if.end7.i
  %incdec.ptr.i100.i = getelementptr inbounds i8, ptr %p.0204.i, i64 3, !dbg !1806
  %5 = load i8, ptr %incdec.ptr.i93.i, align 1, !dbg !1807, !tbaa !904
  call void @llvm.dbg.value(metadata i8 %5, metadata !1780, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !1801
  %dec.i102.i = add i64 %length.0203.i, -3, !dbg !1808
  %cmp9.not.i = icmp eq i8 %5, 73, !dbg !1809
  br i1 %cmp9.not.i, label %if.end11.i, label %while.cond.backedge.i, !dbg !1810

if.end11.i:                                       ; preds = %ReadProfileByte.exit105.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !1772, metadata !DIExpression()) #5, !dbg !1811
  call void @llvm.dbg.value(metadata ptr undef, metadata !1779, metadata !DIExpression()) #5, !dbg !1811
  %cmp.i106.i = icmp eq i64 %dec.i102.i, 0, !dbg !1814
  br i1 %cmp.i106.i, label %if.end4, label %ReadProfileByte.exit112.i, !dbg !1815

ReadProfileByte.exit112.i:                        ; preds = %if.end11.i
  %incdec.ptr.i107.i = getelementptr inbounds i8, ptr %p.0204.i, i64 4, !dbg !1816
  %6 = load i8, ptr %incdec.ptr.i100.i, align 1, !dbg !1817, !tbaa !904
  call void @llvm.dbg.value(metadata i8 %6, metadata !1780, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !1811
  %dec.i109.i = add i64 %length.0203.i, -4, !dbg !1818
  %cmp13.not.i = icmp eq i8 %6, 77, !dbg !1819
  br i1 %cmp13.not.i, label %if.end15.i, label %while.cond.backedge.i, !dbg !1820

if.end15.i:                                       ; preds = %ReadProfileByte.exit112.i
  call void @llvm.dbg.value(metadata i64 %dec.i109.i, metadata !1762, metadata !DIExpression()) #5, !dbg !1765
  %cmp16.i = icmp ult i64 %dec.i109.i, 7, !dbg !1821
  br i1 %cmp16.i, label %if.end4, label %ReadProfileByte.exit122.i, !dbg !1823

ReadProfileByte.exit122.i:                        ; preds = %if.end15.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !1824, metadata !DIExpression()) #5, !dbg !1831
  call void @llvm.dbg.value(metadata ptr undef, metadata !1829, metadata !DIExpression()) #5, !dbg !1831
  call void @llvm.dbg.value(metadata i32 2, metadata !1833, metadata !DIExpression()) #5, !dbg !1841
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i107.i, metadata !1839, metadata !DIExpression()) #5, !dbg !1841
  %arrayidx9.i.i.i = getelementptr inbounds i8, ptr %p.0204.i, i64 5, !dbg !1843
  call void @llvm.dbg.value(metadata !DIArgList(i8 undef, i8 undef), metadata !1840, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)) #5, !dbg !1841
  %shl8.sink.in.in.i.i.i = load i8, ptr %incdec.ptr.i107.i, align 1, !dbg !1841, !tbaa !904
  %shl8.sink.in.i.i.i = zext i8 %shl8.sink.in.in.i.i.i to i16, !dbg !1841
  %shl8.sink.i.i.i = shl nuw i16 %shl8.sink.in.i.i.i, 8, !dbg !1841
  %7 = load i8, ptr %arrayidx9.i.i.i, align 1, !dbg !1841, !tbaa !904
  %conv10.i.i.i = zext i8 %7 to i16, !dbg !1841
  %or11.i.i.i = or i16 %shl8.sink.i.i.i, %conv10.i.i.i, !dbg !1841
  call void @llvm.dbg.value(metadata i16 %or11.i.i.i, metadata !1830, metadata !DIExpression()) #5, !dbg !1831
  %add.ptr.i.i = getelementptr inbounds i8, ptr %p.0204.i, i64 6, !dbg !1844
  call void @llvm.dbg.value(metadata i16 %or11.i.i.i, metadata !1764, metadata !DIExpression()) #5, !dbg !1765
  call void @llvm.dbg.value(metadata ptr undef, metadata !1772, metadata !DIExpression()) #5, !dbg !1845
  call void @llvm.dbg.value(metadata ptr undef, metadata !1779, metadata !DIExpression()) #5, !dbg !1845
  %8 = load i8, ptr %add.ptr.i.i, align 1, !dbg !1847, !tbaa !904
  call void @llvm.dbg.value(metadata i8 %8, metadata !1780, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !1845
  %dec.i119.i = add i64 %length.0203.i, -7, !dbg !1848
  %conv201.i = zext i8 %8 to i64, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %conv201.i, metadata !1761, metadata !DIExpression()) #5, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %dec.i119.i, metadata !1762, metadata !DIExpression()) #5, !dbg !1765
  %cmp21.i = icmp ult i64 %dec.i119.i, %conv201.i, !dbg !1850
  br i1 %cmp21.i, label %if.end4, label %if.end24.i, !dbg !1852

if.end24.i:                                       ; preds = %ReadProfileByte.exit122.i
  %incdec.ptr.i117.i = getelementptr inbounds i8, ptr %p.0204.i, i64 7, !dbg !1853
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i117.i, metadata !1763, metadata !DIExpression()) #5, !dbg !1765
  %add.ptr.i = getelementptr inbounds i8, ptr %incdec.ptr.i117.i, i64 %conv201.i, !dbg !1854
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1763, metadata !DIExpression()) #5, !dbg !1765
  %9 = load i8, ptr %add.ptr.i, align 1, !dbg !1855, !tbaa !904
  %10 = and i8 %9, 1, !dbg !1857
  %11 = xor i8 %10, 1, !dbg !1858
  %12 = zext i8 %11 to i64, !dbg !1858
  %spec.select.i = getelementptr i8, ptr %add.ptr.i, i64 %12, !dbg !1858
  call void @llvm.dbg.value(metadata ptr undef, metadata !1859, metadata !DIExpression()) #5, !dbg !1866
  call void @llvm.dbg.value(metadata ptr undef, metadata !1864, metadata !DIExpression()) #5, !dbg !1866
  call void @llvm.dbg.value(metadata i32 2, metadata !1868, metadata !DIExpression()) #5, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %spec.select.i, metadata !1873, metadata !DIExpression()) #5, !dbg !1875
  %13 = load i8, ptr %spec.select.i, align 1, !dbg !1877, !tbaa !904
  %conv13.i.i.i = zext i8 %13 to i64, !dbg !1877
  %shl14.i.i.i = shl nuw nsw i64 %conv13.i.i.i, 24, !dbg !1878
  %arrayidx15.i.i.i = getelementptr inbounds i8, ptr %spec.select.i, i64 1, !dbg !1879
  %14 = load i8, ptr %arrayidx15.i.i.i, align 1, !dbg !1879, !tbaa !904
  %conv16.i.i.i = zext i8 %14 to i64, !dbg !1879
  %shl17.i.i.i = shl nuw nsw i64 %conv16.i.i.i, 16, !dbg !1880
  %or18.i.i.i = or i64 %shl17.i.i.i, %shl14.i.i.i, !dbg !1881
  %arrayidx19.i.i.i = getelementptr inbounds i8, ptr %spec.select.i, i64 2, !dbg !1882
  %15 = load i8, ptr %arrayidx19.i.i.i, align 1, !dbg !1882, !tbaa !904
  %conv20.i.i.i = zext i8 %15 to i64, !dbg !1882
  %shl21.i.i.i = shl nuw nsw i64 %conv20.i.i.i, 8, !dbg !1883
  %or22.i.i.i = or i64 %or18.i.i.i, %shl21.i.i.i, !dbg !1884
  %arrayidx23.i.i.i = getelementptr inbounds i8, ptr %spec.select.i, i64 3, !dbg !1885
  %16 = load i8, ptr %arrayidx23.i.i.i, align 1, !dbg !1875, !tbaa !904
  %conv24.i.i.i = zext i8 %16 to i64, !dbg !1875
  %or25.i.i.i = or i64 %or22.i.i.i, %conv24.i.i.i, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %or25.i.i.i, metadata !1865, metadata !DIExpression()) #5, !dbg !1866
  %sub.i124.i = add i64 %length.0203.i, -11, !dbg !1886
  %add.ptr.i125.i = getelementptr inbounds i8, ptr %spec.select.i, i64 4, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %or25.i.i.i, metadata !1761, metadata !DIExpression()) #5, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %sub.i124.i, metadata !1762, metadata !DIExpression()) #5, !dbg !1765
  %cmp31.i = icmp ult i64 %sub.i124.i, %or25.i.i.i, !dbg !1888
  br i1 %cmp31.i, label %if.end4, label %if.end34.i, !dbg !1890

if.end34.i:                                       ; preds = %if.end24.i
  %cmp36.i = icmp eq i16 %or11.i.i.i, 1005, !dbg !1891
  %cmp38.i = icmp eq i64 %or25.i.i.i, 16
  %or.cond.i = select i1 %cmp36.i, i1 %cmp38.i, i1 false, !dbg !1893
  br i1 %or.cond.i, label %if.then40.i, label %if.end74.i, !dbg !1893

if.then40.i:                                      ; preds = %if.end34.i
  %17 = load i32, ptr %units.i, align 8, !dbg !1894, !tbaa !1675
  %cmp41.i = icmp eq i32 %17, 2, !dbg !1897
  %18 = load double, ptr %x_resolution47.i, align 8, !dbg !1898, !tbaa !1639
  br i1 %cmp41.i, label %if.then43.i, label %if.else.i, !dbg !1899

if.then43.i:                                      ; preds = %if.then40.i
  %mul.i = fmul double %18, 2.540000e+00, !dbg !1900
  %mul44.i = fmul double %mul.i, 6.553600e+04, !dbg !1901
  %conv45.i = fptoui double %mul44.i to i32, !dbg !1902
  call void @llvm.dbg.value(metadata ptr %add.ptr.i125.i, metadata !1763, metadata !DIExpression()) #5, !dbg !1765
  call void @llvm.dbg.value(metadata i32 2, metadata !1903, metadata !DIExpression()) #5, !dbg !1911
  call void @llvm.dbg.value(metadata i64 undef, metadata !1908, metadata !DIExpression()) #5, !dbg !1911
  call void @llvm.dbg.value(metadata ptr %add.ptr.i125.i, metadata !1909, metadata !DIExpression()) #5, !dbg !1911
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i.i) #5, !dbg !1913
  call void @llvm.dbg.declare(metadata ptr %buffer.i.i, metadata !1910, metadata !DIExpression()) #5, !dbg !1914
  %shr9.i.i = lshr i32 %conv45.i, 24, !dbg !1915
  %conv10.i.i = trunc i32 %shr9.i.i to i8, !dbg !1916
  store i8 %conv10.i.i, ptr %buffer.i.i, align 1, !dbg !1917, !tbaa !904
  %shr12.i.i = lshr i32 %conv45.i, 16, !dbg !1918
  %conv13.i.i = trunc i32 %shr12.i.i to i8, !dbg !1919
  store i8 %conv13.i.i, ptr %arrayidx14.i.i, align 1, !dbg !1920, !tbaa !904
  %shr15.i.i = lshr i32 %conv45.i, 8, !dbg !1921
  %conv16.i.i = trunc i32 %shr15.i.i to i8, !dbg !1922
  store i8 %conv16.i.i, ptr %arrayidx17.i.i, align 1, !dbg !1923, !tbaa !904
  %conv18.i.i = trunc i32 %conv45.i to i8, !dbg !1911
  store i8 %conv18.i.i, ptr %arrayidx19.i.i, align 1, !dbg !1911, !tbaa !904
  %call21.i.i = call ptr @CopyMagickMemory(ptr noundef nonnull %add.ptr.i125.i, ptr noundef nonnull %buffer.i.i, i64 noundef 4) #5, !dbg !1911
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i.i) #5, !dbg !1924
  br label %if.end51.i, !dbg !1925

if.else.i:                                        ; preds = %if.then40.i
  %mul48.i = fmul double %18, 6.553600e+04, !dbg !1926
  %conv49.i = fptoui double %mul48.i to i32, !dbg !1927
  call void @llvm.dbg.value(metadata ptr %add.ptr.i125.i, metadata !1763, metadata !DIExpression()) #5, !dbg !1765
  call void @llvm.dbg.value(metadata i32 2, metadata !1903, metadata !DIExpression()) #5, !dbg !1928
  call void @llvm.dbg.value(metadata i64 undef, metadata !1908, metadata !DIExpression()) #5, !dbg !1928
  call void @llvm.dbg.value(metadata ptr %add.ptr.i125.i, metadata !1909, metadata !DIExpression()) #5, !dbg !1928
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i129.i) #5, !dbg !1930
  call void @llvm.dbg.declare(metadata ptr %buffer.i129.i, metadata !1910, metadata !DIExpression()) #5, !dbg !1931
  %shr9.i130.i = lshr i32 %conv49.i, 24, !dbg !1932
  %conv10.i131.i = trunc i32 %shr9.i130.i to i8, !dbg !1933
  store i8 %conv10.i131.i, ptr %buffer.i129.i, align 1, !dbg !1934, !tbaa !904
  %shr12.i132.i = lshr i32 %conv49.i, 16, !dbg !1935
  %conv13.i133.i = trunc i32 %shr12.i132.i to i8, !dbg !1936
  store i8 %conv13.i133.i, ptr %arrayidx14.i134.i, align 1, !dbg !1937, !tbaa !904
  %shr15.i135.i = lshr i32 %conv49.i, 8, !dbg !1938
  %conv16.i136.i = trunc i32 %shr15.i135.i to i8, !dbg !1939
  store i8 %conv16.i136.i, ptr %arrayidx17.i137.i, align 1, !dbg !1940, !tbaa !904
  %conv18.i139.i = trunc i32 %conv49.i to i8, !dbg !1928
  store i8 %conv18.i139.i, ptr %arrayidx19.i140.i, align 1, !dbg !1928, !tbaa !904
  %call21.i141.i = call ptr @CopyMagickMemory(ptr noundef nonnull %add.ptr.i125.i, ptr noundef nonnull %buffer.i129.i, i64 noundef 4) #5, !dbg !1928
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i129.i) #5, !dbg !1941
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else.i, %if.then43.i
  %19 = load i32, ptr %units.i, align 8, !dbg !1942, !tbaa !1675
  call void @llvm.dbg.value(metadata ptr %add.ptr.i125.i, metadata !1763, metadata !DIExpression()) #5, !dbg !1765
  %add.ptr54.i = getelementptr inbounds i8, ptr %add.ptr.i125.i, i64 4, !dbg !1943
  call void @llvm.dbg.value(metadata i32 2, metadata !1944, metadata !DIExpression()) #5, !dbg !1956
  call void @llvm.dbg.value(metadata i32 %19, metadata !1950, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !1956
  call void @llvm.dbg.value(metadata ptr %add.ptr54.i, metadata !1951, metadata !DIExpression()) #5, !dbg !1956
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i142.i) #5, !dbg !1958
  call void @llvm.dbg.declare(metadata ptr %buffer.i142.i, metadata !1952, metadata !DIExpression()) #5, !dbg !1959
  %20 = lshr i32 %19, 8, !dbg !1960
  %conv6.i.i = trunc i32 %20 to i8, !dbg !1960
  store i8 %conv6.i.i, ptr %buffer.i142.i, align 1, !dbg !1961, !tbaa !904
  %conv8.i.i = trunc i32 %19 to i8, !dbg !1956
  store i8 %conv8.i.i, ptr %arrayidx9.i.i, align 1, !dbg !1956, !tbaa !904
  %call11.i.i = call ptr @CopyMagickMemory(ptr noundef nonnull %add.ptr54.i, ptr noundef nonnull %buffer.i142.i, i64 noundef 2) #5, !dbg !1956
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i142.i) #5, !dbg !1962
  %21 = load i32, ptr %units.i, align 8, !dbg !1963, !tbaa !1675
  %cmp56.i = icmp eq i32 %21, 2, !dbg !1965
  %22 = load double, ptr %y_resolution65.i, align 8, !dbg !1966, !tbaa !1670
  br i1 %cmp56.i, label %if.then58.i, label %if.else64.i, !dbg !1967

if.then58.i:                                      ; preds = %if.end51.i
  %mul59.i = fmul double %22, 2.540000e+00, !dbg !1968
  %mul60.i = fmul double %mul59.i, 6.553600e+04, !dbg !1969
  %conv61.i = fptoui double %mul60.i to i32, !dbg !1970
  call void @llvm.dbg.value(metadata ptr %add.ptr.i125.i, metadata !1763, metadata !DIExpression()) #5, !dbg !1765
  %add.ptr63.i = getelementptr inbounds i8, ptr %add.ptr.i125.i, i64 8, !dbg !1971
  call void @llvm.dbg.value(metadata i32 2, metadata !1903, metadata !DIExpression()) #5, !dbg !1972
  call void @llvm.dbg.value(metadata i64 undef, metadata !1908, metadata !DIExpression()) #5, !dbg !1972
  call void @llvm.dbg.value(metadata ptr %add.ptr63.i, metadata !1909, metadata !DIExpression()) #5, !dbg !1972
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i144.i) #5, !dbg !1974
  call void @llvm.dbg.declare(metadata ptr %buffer.i144.i, metadata !1910, metadata !DIExpression()) #5, !dbg !1975
  %shr9.i145.i = lshr i32 %conv61.i, 24, !dbg !1976
  %conv10.i146.i = trunc i32 %shr9.i145.i to i8, !dbg !1977
  store i8 %conv10.i146.i, ptr %buffer.i144.i, align 1, !dbg !1978, !tbaa !904
  %shr12.i147.i = lshr i32 %conv61.i, 16, !dbg !1979
  %conv13.i148.i = trunc i32 %shr12.i147.i to i8, !dbg !1980
  store i8 %conv13.i148.i, ptr %arrayidx14.i149.i, align 1, !dbg !1981, !tbaa !904
  %shr15.i150.i = lshr i32 %conv61.i, 8, !dbg !1982
  %conv16.i151.i = trunc i32 %shr15.i150.i to i8, !dbg !1983
  store i8 %conv16.i151.i, ptr %arrayidx17.i152.i, align 1, !dbg !1984, !tbaa !904
  %conv18.i154.i = trunc i32 %conv61.i to i8, !dbg !1972
  store i8 %conv18.i154.i, ptr %arrayidx19.i155.i, align 1, !dbg !1972, !tbaa !904
  %call21.i156.i = call ptr @CopyMagickMemory(ptr noundef nonnull %add.ptr63.i, ptr noundef nonnull %buffer.i144.i, i64 noundef 4) #5, !dbg !1972
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i144.i) #5, !dbg !1985
  br label %if.end70.i, !dbg !1986

if.else64.i:                                      ; preds = %if.end51.i
  %mul66.i = fmul double %22, 6.553600e+04, !dbg !1987
  %conv67.i = fptoui double %mul66.i to i32, !dbg !1988
  call void @llvm.dbg.value(metadata ptr %add.ptr.i125.i, metadata !1763, metadata !DIExpression()) #5, !dbg !1765
  %add.ptr69.i = getelementptr inbounds i8, ptr %add.ptr.i125.i, i64 8, !dbg !1989
  call void @llvm.dbg.value(metadata i32 2, metadata !1903, metadata !DIExpression()) #5, !dbg !1990
  call void @llvm.dbg.value(metadata i64 undef, metadata !1908, metadata !DIExpression()) #5, !dbg !1990
  call void @llvm.dbg.value(metadata ptr %add.ptr69.i, metadata !1909, metadata !DIExpression()) #5, !dbg !1990
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i157.i) #5, !dbg !1992
  call void @llvm.dbg.declare(metadata ptr %buffer.i157.i, metadata !1910, metadata !DIExpression()) #5, !dbg !1993
  %shr9.i158.i = lshr i32 %conv67.i, 24, !dbg !1994
  %conv10.i159.i = trunc i32 %shr9.i158.i to i8, !dbg !1995
  store i8 %conv10.i159.i, ptr %buffer.i157.i, align 1, !dbg !1996, !tbaa !904
  %shr12.i160.i = lshr i32 %conv67.i, 16, !dbg !1997
  %conv13.i161.i = trunc i32 %shr12.i160.i to i8, !dbg !1998
  store i8 %conv13.i161.i, ptr %arrayidx14.i162.i, align 1, !dbg !1999, !tbaa !904
  %shr15.i163.i = lshr i32 %conv67.i, 8, !dbg !2000
  %conv16.i164.i = trunc i32 %shr15.i163.i to i8, !dbg !2001
  store i8 %conv16.i164.i, ptr %arrayidx17.i165.i, align 1, !dbg !2002, !tbaa !904
  %conv18.i167.i = trunc i32 %conv67.i to i8, !dbg !1990
  store i8 %conv18.i167.i, ptr %arrayidx19.i168.i, align 1, !dbg !1990, !tbaa !904
  %call21.i169.i = call ptr @CopyMagickMemory(ptr noundef nonnull %add.ptr69.i, ptr noundef nonnull %buffer.i157.i, i64 noundef 4) #5, !dbg !1990
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i157.i) #5, !dbg !2003
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.else64.i, %if.then58.i
  %23 = load i32, ptr %units.i, align 8, !dbg !2004, !tbaa !1675
  call void @llvm.dbg.value(metadata ptr %add.ptr.i125.i, metadata !1763, metadata !DIExpression()) #5, !dbg !1765
  %add.ptr73.i = getelementptr inbounds i8, ptr %add.ptr.i125.i, i64 12, !dbg !2005
  call void @llvm.dbg.value(metadata i32 2, metadata !1944, metadata !DIExpression()) #5, !dbg !2006
  call void @llvm.dbg.value(metadata i32 %23, metadata !1950, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2006
  call void @llvm.dbg.value(metadata ptr %add.ptr73.i, metadata !1951, metadata !DIExpression()) #5, !dbg !2006
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i170.i) #5, !dbg !2008
  call void @llvm.dbg.declare(metadata ptr %buffer.i170.i, metadata !1952, metadata !DIExpression()) #5, !dbg !2009
  %24 = lshr i32 %23, 8, !dbg !2010
  %conv6.i171.i = trunc i32 %24 to i8, !dbg !2010
  store i8 %conv6.i171.i, ptr %buffer.i170.i, align 1, !dbg !2011, !tbaa !904
  %conv8.i173.i = trunc i32 %23 to i8, !dbg !2006
  store i8 %conv8.i173.i, ptr %arrayidx9.i174.i, align 1, !dbg !2006, !tbaa !904
  %call11.i175.i = call ptr @CopyMagickMemory(ptr noundef nonnull %add.ptr73.i, ptr noundef nonnull %buffer.i170.i, i64 noundef 2) #5, !dbg !2006
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i170.i) #5, !dbg !2012
  br label %if.end74.i, !dbg !2013

if.end74.i:                                       ; preds = %if.end70.i, %if.end34.i
  call void @llvm.dbg.value(metadata ptr %add.ptr.i125.i, metadata !1763, metadata !DIExpression()) #5, !dbg !1765
  %add.ptr75.i = getelementptr inbounds i8, ptr %add.ptr.i125.i, i64 %or25.i.i.i, !dbg !2014
  call void @llvm.dbg.value(metadata ptr %add.ptr75.i, metadata !1763, metadata !DIExpression()) #5, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %sub.i124.i, metadata !1762, metadata !DIExpression()) #5, !dbg !1765
  %sub.i = sub i64 %sub.i124.i, %or25.i.i.i, !dbg !2015
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !1762, metadata !DIExpression()) #5, !dbg !1765
  br label %while.cond.backedge.i, !dbg !1771

while.cond.backedge.i:                            ; preds = %if.end74.i, %ReadProfileByte.exit112.i, %ReadProfileByte.exit105.i, %ReadProfileByte.exit98.i, %ReadProfileByte.exit.i
  %length.0.be.i = phi i64 [ %sub.i, %if.end74.i ], [ %dec.i109.i, %ReadProfileByte.exit112.i ], [ %dec.i102.i, %ReadProfileByte.exit105.i ], [ %dec.i95.i, %ReadProfileByte.exit98.i ], [ %dec.i.i, %ReadProfileByte.exit.i ]
  %p.0.be.i = phi ptr [ %add.ptr75.i, %if.end74.i ], [ %incdec.ptr.i107.i, %ReadProfileByte.exit112.i ], [ %incdec.ptr.i100.i, %ReadProfileByte.exit105.i ], [ %incdec.ptr.i93.i, %ReadProfileByte.exit98.i ], [ %incdec.ptr.i.i, %ReadProfileByte.exit.i ]
  call void @llvm.dbg.value(metadata i64 %length.0.be.i, metadata !1762, metadata !DIExpression()) #5, !dbg !1765
  %cmp.not.i22 = icmp eq i64 %length.0.be.i, 0, !dbg !1770
  br i1 %cmp.not.i22, label %if.end4, label %ReadProfileByte.exit.i, !dbg !1771, !llvm.loop !2016

if.end4:                                          ; preds = %while.cond.backedge.i, %if.end.i21, %if.end7.i, %if.end11.i, %if.end24.i, %ReadProfileByte.exit122.i, %if.end15.i, %if.then, %GetImageProfile.exit.thread, %GetImageProfile.exit
  %status.0 = phi i32 [ 1, %GetImageProfile.exit ], [ 1, %GetImageProfile.exit.thread ], [ 1, %if.then ], [ 1, %while.cond.backedge.i ], [ 1, %if.end.i21 ], [ 1, %if.end7.i ], [ 1, %if.end11.i ], [ 0, %if.end15.i ], [ 0, %ReadProfileByte.exit122.i ], [ 0, %if.end24.i ], !dbg !1736
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !1734, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata ptr %image, metadata !1049, metadata !DIExpression()) #5, !dbg !2018
  call void @llvm.dbg.value(metadata ptr @.str.12, metadata !1050, metadata !DIExpression()) #5, !dbg !2018
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %key.i24) #5, !dbg !2020
  call void @llvm.dbg.declare(metadata ptr %key.i24, metadata !1051, metadata !DIExpression()) #5, !dbg !2021
  %25 = load i32, ptr %debug.i, align 8, !dbg !2022, !tbaa !706
  %cmp.not.i26 = icmp eq i32 %25, 0, !dbg !2023
  br i1 %cmp.not.i26, label %if.end.i32, label %if.then.i29, !dbg !2024

if.then.i29:                                      ; preds = %if.end4
  %filename.i27 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2025
  %call.i28 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i27) #5, !dbg !2026
  br label %if.end.i32, !dbg !2027

if.end.i32:                                       ; preds = %if.then.i29, %if.end4
  %26 = load ptr, ptr %profiles.i, align 8, !dbg !2028, !tbaa !748
  %cmp1.i31 = icmp eq ptr %26, null, !dbg !2029
  br i1 %cmp1.i31, label %GetImageProfile.exit37.thread, label %GetImageProfile.exit37, !dbg !2030

GetImageProfile.exit37.thread:                    ; preds = %if.end.i32
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key.i24) #5, !dbg !2031
  call void @llvm.dbg.value(metadata ptr %call8.i34, metadata !1735, metadata !DIExpression()), !dbg !1736
  br label %if.end12, !dbg !2032

GetImageProfile.exit37:                           ; preds = %if.end.i32
  %call5.i33 = call i64 @CopyMagickString(ptr noundef nonnull %key.i24, ptr noundef nonnull @.str.12, i64 noundef 4096) #5, !dbg !2033
  %27 = load ptr, ptr %profiles.i, align 8, !dbg !2034, !tbaa !748
  %call8.i34 = call ptr @GetValueFromSplayTree(ptr noundef %27, ptr noundef nonnull %key.i24) #5, !dbg !2035
  call void @llvm.dbg.value(metadata ptr %call8.i34, metadata !1052, metadata !DIExpression()) #5, !dbg !2018
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key.i24) #5, !dbg !2031
  call void @llvm.dbg.value(metadata ptr %call8.i34, metadata !1735, metadata !DIExpression()), !dbg !1736
  %cmp6.not = icmp eq ptr %call8.i34, null, !dbg !2036
  br i1 %cmp6.not, label %if.end12, label %if.then7, !dbg !2032

if.then7:                                         ; preds = %GetImageProfile.exit37
  call void @llvm.dbg.value(metadata ptr %image, metadata !648, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata ptr %call8.i34, metadata !649, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %directory_stack.i) #5, !dbg !2041
  call void @llvm.dbg.declare(metadata ptr %directory_stack.i, metadata !650, metadata !DIExpression()) #5, !dbg !2042
  %call.i39 = call i64 @GetStringInfoLength(ptr noundef nonnull %call8.i34) #5, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %call.i39, metadata !661, metadata !DIExpression()) #5, !dbg !2038
  %call2.i = call ptr @GetStringInfoDatum(ptr noundef nonnull %call8.i34) #5, !dbg !2044
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !668, metadata !DIExpression()) #5, !dbg !2038
  %cmp.i = icmp ult i64 %call.i39, 16, !dbg !2045
  br i1 %cmp.i, label %.loopexit, label %if.end.i41, !dbg !2047

if.end.i41:                                       ; preds = %if.then7
  call void @llvm.dbg.value(metadata i32 1, metadata !1833, metadata !DIExpression()) #5, !dbg !2048
  call void @llvm.dbg.value(metadata ptr %call2.i, metadata !1839, metadata !DIExpression()) #5, !dbg !2048
  %arrayidx.i.i = getelementptr inbounds i8, ptr %call2.i, i64 1, !dbg !2050
  call void @llvm.dbg.value(metadata !DIArgList(i8 undef, i8 undef), metadata !1840, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)) #5, !dbg !2048
  %shl8.sink.in.in.i.i = load i8, ptr %arrayidx.i.i, align 1, !dbg !2048, !tbaa !904
  %shl8.sink.in.i.i = zext i8 %shl8.sink.in.in.i.i to i16, !dbg !2048
  %shl8.sink.i.i = shl nuw i16 %shl8.sink.in.i.i, 8, !dbg !2048
  %28 = load i8, ptr %call2.i, align 1, !dbg !2048, !tbaa !904
  %conv10.i.i40 = zext i8 %28 to i16, !dbg !2048
  %or11.i.i = or i16 %shl8.sink.i.i, %conv10.i.i40, !dbg !2048
  call void @llvm.dbg.value(metadata i16 %or11.i.i, metadata !664, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2038
  switch i16 %or11.i.i, label %ReadProfileByte.exit.i44 [
    i16 19789, label %if.end47.i
    i16 18761, label %if.end47.i
  ], !dbg !2053

while.cond.loopexit.i:                            ; preds = %ReadProfileByte.exit368.i, %ReadProfileByte.exit361.i, %ReadProfileByte.exit354.i, %ReadProfileByte.exit347.i, %ReadProfileByte.exit.i44
  %length.0.ph.i = phi i64 [ %dec.i.i43, %ReadProfileByte.exit.i44 ], [ %dec.i344.i, %ReadProfileByte.exit347.i ], [ %dec.i351.i, %ReadProfileByte.exit354.i ], [ %dec.i358.i, %ReadProfileByte.exit361.i ], [ %dec.i365.i, %ReadProfileByte.exit368.i ]
  %exif.0.ph.i = phi ptr [ %incdec.ptr.i.i42, %ReadProfileByte.exit.i44 ], [ %incdec.ptr.i342.i, %ReadProfileByte.exit347.i ], [ %incdec.ptr.i349.i, %ReadProfileByte.exit354.i ], [ %incdec.ptr.i356.i, %ReadProfileByte.exit361.i ], [ %incdec.ptr.i363.i, %ReadProfileByte.exit368.i ]
  call void @llvm.dbg.value(metadata i64 %length.0.ph.i, metadata !661, metadata !DIExpression()) #5, !dbg !2038
  %cmp9.old.not.i = icmp eq i64 %length.0.ph.i, 0, !dbg !2055
  br i1 %cmp9.old.not.i, label %.loopexit, label %ReadProfileByte.exit.i44.backedge, !dbg !2057

ReadProfileByte.exit.i44:                         ; preds = %if.end.i41, %ReadProfileByte.exit.i44.backedge
  %length.1.i = phi i64 [ %length.1.i.be, %ReadProfileByte.exit.i44.backedge ], [ %call.i39, %if.end.i41 ], !dbg !2058
  %exif.1.i = phi ptr [ %exif.1.i.be, %ReadProfileByte.exit.i44.backedge ], [ %call2.i, %if.end.i41 ], !dbg !2059
  call void @llvm.dbg.value(metadata ptr undef, metadata !1772, metadata !DIExpression()) #5, !dbg !2060
  call void @llvm.dbg.value(metadata ptr undef, metadata !1779, metadata !DIExpression()) #5, !dbg !2060
  %incdec.ptr.i.i42 = getelementptr inbounds i8, ptr %exif.1.i, i64 1, !dbg !2064
  %29 = load i8, ptr %exif.1.i, align 1, !dbg !2065, !tbaa !904
  call void @llvm.dbg.value(metadata i8 %29, metadata !1780, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2060
  %dec.i.i43 = add i64 %length.1.i, -1, !dbg !2066
  %cmp12.not.i = icmp eq i8 %29, 69, !dbg !2067
  br i1 %cmp12.not.i, label %if.end15.i45, label %while.cond.loopexit.i, !dbg !2068, !llvm.loop !2069

if.end15.i45:                                     ; preds = %ReadProfileByte.exit.i44
  call void @llvm.dbg.value(metadata ptr undef, metadata !1772, metadata !DIExpression()) #5, !dbg !2071
  call void @llvm.dbg.value(metadata ptr undef, metadata !1779, metadata !DIExpression()) #5, !dbg !2071
  %cmp.i341.i = icmp eq i64 %dec.i.i43, 0, !dbg !2074
  br i1 %cmp.i341.i, label %.loopexit, label %ReadProfileByte.exit347.i, !dbg !2075

ReadProfileByte.exit347.i:                        ; preds = %if.end15.i45
  %incdec.ptr.i342.i = getelementptr inbounds i8, ptr %exif.1.i, i64 2, !dbg !2076
  %30 = load i8, ptr %incdec.ptr.i.i42, align 1, !dbg !2077, !tbaa !904
  call void @llvm.dbg.value(metadata i8 %30, metadata !1780, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2071
  %dec.i344.i = add i64 %length.1.i, -2, !dbg !2078
  %cmp17.not.i = icmp eq i8 %30, 120, !dbg !2079
  br i1 %cmp17.not.i, label %if.end20.i, label %while.cond.loopexit.i, !dbg !2080, !llvm.loop !2081

if.end20.i:                                       ; preds = %ReadProfileByte.exit347.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !1772, metadata !DIExpression()) #5, !dbg !2082
  call void @llvm.dbg.value(metadata ptr undef, metadata !1779, metadata !DIExpression()) #5, !dbg !2082
  %cmp.i348.i = icmp eq i64 %dec.i344.i, 0, !dbg !2085
  br i1 %cmp.i348.i, label %.loopexit, label %ReadProfileByte.exit354.i, !dbg !2086

ReadProfileByte.exit354.i:                        ; preds = %if.end20.i
  %incdec.ptr.i349.i = getelementptr inbounds i8, ptr %exif.1.i, i64 3, !dbg !2087
  %31 = load i8, ptr %incdec.ptr.i342.i, align 1, !dbg !2088, !tbaa !904
  call void @llvm.dbg.value(metadata i8 %31, metadata !1780, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2082
  %dec.i351.i = add i64 %length.1.i, -3, !dbg !2089
  %cmp22.not.i = icmp eq i8 %31, 105, !dbg !2090
  br i1 %cmp22.not.i, label %if.end25.i, label %while.cond.loopexit.i, !dbg !2091, !llvm.loop !2092

if.end25.i:                                       ; preds = %ReadProfileByte.exit354.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !1772, metadata !DIExpression()) #5, !dbg !2093
  call void @llvm.dbg.value(metadata ptr undef, metadata !1779, metadata !DIExpression()) #5, !dbg !2093
  %cmp.i355.i = icmp eq i64 %dec.i351.i, 0, !dbg !2096
  br i1 %cmp.i355.i, label %.loopexit, label %ReadProfileByte.exit361.i, !dbg !2097

ReadProfileByte.exit361.i:                        ; preds = %if.end25.i
  %incdec.ptr.i356.i = getelementptr inbounds i8, ptr %exif.1.i, i64 4, !dbg !2098
  %32 = load i8, ptr %incdec.ptr.i349.i, align 1, !dbg !2099, !tbaa !904
  call void @llvm.dbg.value(metadata i8 %32, metadata !1780, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2093
  %dec.i358.i = add i64 %length.1.i, -4, !dbg !2100
  %cmp27.not.i = icmp eq i8 %32, 102, !dbg !2101
  br i1 %cmp27.not.i, label %if.end30.i, label %while.cond.loopexit.i, !dbg !2102, !llvm.loop !2103

if.end30.i:                                       ; preds = %ReadProfileByte.exit361.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !1772, metadata !DIExpression()) #5, !dbg !2104
  call void @llvm.dbg.value(metadata ptr undef, metadata !1779, metadata !DIExpression()) #5, !dbg !2104
  %cmp.i362.i = icmp eq i64 %dec.i358.i, 0, !dbg !2107
  br i1 %cmp.i362.i, label %.loopexit, label %ReadProfileByte.exit368.i, !dbg !2108

ReadProfileByte.exit368.i:                        ; preds = %if.end30.i
  %incdec.ptr.i363.i = getelementptr inbounds i8, ptr %exif.1.i, i64 5, !dbg !2109
  %33 = load i8, ptr %incdec.ptr.i356.i, align 1, !dbg !2110, !tbaa !904
  call void @llvm.dbg.value(metadata i8 %33, metadata !1780, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2104
  %dec.i365.i = add i64 %length.1.i, -5, !dbg !2111
  %cmp32.not.i = icmp eq i8 %33, 0, !dbg !2112
  br i1 %cmp32.not.i, label %if.end35.i, label %while.cond.loopexit.i, !dbg !2113, !llvm.loop !2114

if.end35.i:                                       ; preds = %ReadProfileByte.exit368.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !1772, metadata !DIExpression()) #5, !dbg !2115
  call void @llvm.dbg.value(metadata ptr undef, metadata !1779, metadata !DIExpression()) #5, !dbg !2115
  %cmp.i369.i = icmp eq i64 %dec.i365.i, 0, !dbg !2118
  br i1 %cmp.i369.i, label %.loopexit, label %ReadProfileByte.exit375.i, !dbg !2119

ReadProfileByte.exit375.i:                        ; preds = %if.end35.i
  %incdec.ptr.i370.i = getelementptr inbounds i8, ptr %exif.1.i, i64 6, !dbg !2120
  %34 = load i8, ptr %incdec.ptr.i363.i, align 1, !dbg !2121, !tbaa !904
  call void @llvm.dbg.value(metadata i8 %34, metadata !1780, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2115
  %dec.i372.i = add i64 %length.1.i, -6, !dbg !2122
  %cmp37.i = icmp ne i8 %34, 0, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %dec.i372.i, metadata !661, metadata !DIExpression()) #5, !dbg !2038
  %cmp9.i = icmp ne i64 %dec.i372.i, 0
  %or.cond246.i = select i1 %cmp37.i, i1 %cmp9.i, i1 false, !dbg !2124
  br i1 %or.cond246.i, label %ReadProfileByte.exit.i44.backedge, label %while.end.i, !dbg !2124

ReadProfileByte.exit.i44.backedge:                ; preds = %ReadProfileByte.exit375.i, %while.cond.loopexit.i
  %length.1.i.be = phi i64 [ %dec.i372.i, %ReadProfileByte.exit375.i ], [ %length.0.ph.i, %while.cond.loopexit.i ]
  %exif.1.i.be = phi ptr [ %incdec.ptr.i370.i, %ReadProfileByte.exit375.i ], [ %exif.0.ph.i, %while.cond.loopexit.i ]
  br label %ReadProfileByte.exit.i44, !dbg !2060, !llvm.loop !2125

while.end.i:                                      ; preds = %ReadProfileByte.exit375.i
  call void @llvm.dbg.value(metadata i64 %dec.i372.i, metadata !661, metadata !DIExpression()) #5, !dbg !2038
  %cmp41.i46 = icmp ult i64 %dec.i372.i, 16, !dbg !2126
  br i1 %cmp41.i46, label %.loopexit, label %if.end44.i, !dbg !2128

if.end44.i:                                       ; preds = %while.end.i
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i370.i, metadata !668, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata i32 1, metadata !1833, metadata !DIExpression()) #5, !dbg !2129
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i370.i, metadata !1839, metadata !DIExpression()) #5, !dbg !2129
  %arrayidx.i376.i = getelementptr inbounds i8, ptr %exif.1.i, i64 7, !dbg !2131
  call void @llvm.dbg.value(metadata !DIArgList(i8 undef, i8 undef), metadata !1840, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)) #5, !dbg !2129
  %shl8.sink.in.in.i377.i = load i8, ptr %arrayidx.i376.i, align 1, !dbg !2129, !tbaa !904
  %shl8.sink.in.i378.i = zext i8 %shl8.sink.in.in.i377.i to i16, !dbg !2129
  %shl8.sink.i379.i = shl nuw i16 %shl8.sink.in.i378.i, 8, !dbg !2129
  %35 = load i8, ptr %incdec.ptr.i370.i, align 1, !dbg !2129, !tbaa !904
  %conv10.i380.i = zext i8 %35 to i16, !dbg !2129
  %or11.i381.i = or i16 %shl8.sink.i379.i, %conv10.i380.i, !dbg !2129
  call void @llvm.dbg.value(metadata i16 %or11.i381.i, metadata !664, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2038
  br label %if.end47.i, !dbg !2132

if.end47.i:                                       ; preds = %if.end44.i, %if.end.i41, %if.end.i41
  %length.9.i = phi i64 [ %dec.i372.i, %if.end44.i ], [ %call.i39, %if.end.i41 ], [ %call.i39, %if.end.i41 ], !dbg !2058
  %exif.9.i = phi ptr [ %incdec.ptr.i370.i, %if.end44.i ], [ %call2.i, %if.end.i41 ], [ %call2.i, %if.end.i41 ], !dbg !2059
  %id.0.in.i = phi i16 [ %or11.i381.i, %if.end44.i ], [ %or11.i.i, %if.end.i41 ], [ %or11.i.i, %if.end.i41 ]
  call void @llvm.dbg.value(metadata i16 %id.0.in.i, metadata !664, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2038
  call void @llvm.dbg.value(metadata i32 1, metadata !659, metadata !DIExpression()) #5, !dbg !2038
  switch i16 %id.0.in.i, label %.loopexit [
    i16 18761, label %ReadProfileShort.exit.i
    i16 19789, label %ReadProfileShort.exit.thread.i
  ], !dbg !2133

ReadProfileShort.exit.i:                          ; preds = %if.end47.i
  call void @llvm.dbg.value(metadata i32 2, metadata !659, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata ptr %exif.9.i, metadata !668, metadata !DIExpression()) #5, !dbg !2038
  %add.ptr718.i = getelementptr inbounds i8, ptr %exif.9.i, i64 2, !dbg !2134
  call void @llvm.dbg.value(metadata i32 2, metadata !1833, metadata !DIExpression()) #5, !dbg !2136
  call void @llvm.dbg.value(metadata ptr %add.ptr.i47, metadata !1839, metadata !DIExpression()) #5, !dbg !2136
  %arrayidx.i383.i = getelementptr inbounds i8, ptr %exif.9.i, i64 3, !dbg !2138
  call void @llvm.dbg.value(metadata !DIArgList(i8 undef, i8 undef), metadata !1840, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)) #5, !dbg !2136
  %shl8.sink.in.in.i385.i = load i8, ptr %arrayidx.i383.i, align 1, !dbg !2136, !tbaa !904
  %shl8.sink.in.i386.i = zext i8 %shl8.sink.in.in.i385.i to i16, !dbg !2136
  %shl8.sink.i387.i = shl nuw i16 %shl8.sink.in.i386.i, 8, !dbg !2136
  %36 = load i8, ptr %add.ptr718.i, align 1, !dbg !2136, !tbaa !904
  %conv10.i388.i = zext i8 %36 to i16, !dbg !2136
  %or11.i389.i = or i16 %shl8.sink.i387.i, %conv10.i388.i, !dbg !2136
  %cmp59.not.i = icmp eq i16 %or11.i389.i, 42, !dbg !2139
  br i1 %cmp59.not.i, label %if.then.i393.i, label %.loopexit, !dbg !2140

ReadProfileShort.exit.thread.i:                   ; preds = %if.end47.i
  call void @llvm.dbg.value(metadata i32 2, metadata !659, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata ptr %exif.9.i, metadata !668, metadata !DIExpression()) #5, !dbg !2038
  %add.ptr.i47 = getelementptr inbounds i8, ptr %exif.9.i, i64 2, !dbg !2134
  call void @llvm.dbg.value(metadata i32 2, metadata !1833, metadata !DIExpression()) #5, !dbg !2136
  call void @llvm.dbg.value(metadata ptr %add.ptr.i47, metadata !1839, metadata !DIExpression()) #5, !dbg !2136
  %arrayidx9.i.i48 = getelementptr inbounds i8, ptr %exif.9.i, i64 3, !dbg !2141
  call void @llvm.dbg.value(metadata !DIArgList(i8 undef, i8 undef), metadata !1840, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)) #5, !dbg !2136
  %shl8.sink.in.in.i385726.i = load i8, ptr %add.ptr.i47, align 1, !dbg !2136, !tbaa !904
  %shl8.sink.in.i386727.i = zext i8 %shl8.sink.in.in.i385726.i to i16, !dbg !2136
  %shl8.sink.i387728.i = shl nuw i16 %shl8.sink.in.i386727.i, 8, !dbg !2136
  %37 = load i8, ptr %arrayidx9.i.i48, align 1, !dbg !2136, !tbaa !904
  %conv10.i388729.i = zext i8 %37 to i16, !dbg !2136
  %or11.i389730.i = or i16 %shl8.sink.i387728.i, %conv10.i388729.i, !dbg !2136
  %cmp59.not731.i = icmp eq i16 %or11.i389730.i, 42, !dbg !2139
  br i1 %cmp59.not731.i, label %if.end.i394.i, label %.loopexit, !dbg !2140

if.then.i393.i:                                   ; preds = %ReadProfileShort.exit.i
  call void @llvm.dbg.value(metadata ptr %exif.9.i, metadata !668, metadata !DIExpression()) #5, !dbg !2038
  %add.ptr63.i49 = getelementptr inbounds i8, ptr %exif.9.i, i64 4, !dbg !2142
  call void @llvm.dbg.value(metadata i32 2, metadata !1868, metadata !DIExpression()) #5, !dbg !2143
  call void @llvm.dbg.value(metadata ptr %add.ptr63.i49, metadata !1873, metadata !DIExpression()) #5, !dbg !2143
  %arrayidx.i391.i = getelementptr inbounds i8, ptr %exif.9.i, i64 7, !dbg !2145
  %38 = load i8, ptr %arrayidx.i391.i, align 1, !dbg !2145, !tbaa !904
  %conv.i392.i = zext i8 %38 to i64, !dbg !2145
  %shl.i.i = shl nuw nsw i64 %conv.i392.i, 24, !dbg !2148
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %exif.9.i, i64 6, !dbg !2149
  %39 = load i8, ptr %arrayidx1.i.i, align 1, !dbg !2149, !tbaa !904
  %conv2.i.i = zext i8 %39 to i64, !dbg !2149
  %shl3.i.i = shl nuw nsw i64 %conv2.i.i, 16, !dbg !2150
  %or.i.i = or i64 %shl3.i.i, %shl.i.i, !dbg !2151
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %exif.9.i, i64 5, !dbg !2152
  %40 = load i8, ptr %arrayidx4.i.i, align 1, !dbg !2152, !tbaa !904
  %conv5.i.i = zext i8 %40 to i64, !dbg !2152
  %shl6.i.i = shl nuw nsw i64 %conv5.i.i, 8, !dbg !2153
  %or7.i.i = or i64 %or.i.i, %shl6.i.i, !dbg !2154
  call void @llvm.dbg.value(metadata i64 undef, metadata !1874, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #5, !dbg !2143
  br label %ReadProfileLong.exit.i, !dbg !2155

if.end.i394.i:                                    ; preds = %ReadProfileShort.exit.thread.i
  call void @llvm.dbg.value(metadata ptr %exif.9.i, metadata !668, metadata !DIExpression()) #5, !dbg !2038
  %add.ptr63734.i = getelementptr inbounds i8, ptr %exif.9.i, i64 4, !dbg !2142
  call void @llvm.dbg.value(metadata i32 2, metadata !1868, metadata !DIExpression()) #5, !dbg !2143
  %41 = load i8, ptr %add.ptr63734.i, align 1, !dbg !2156, !tbaa !904
  %conv13.i.i50 = zext i8 %41 to i64, !dbg !2156
  %shl14.i.i = shl nuw nsw i64 %conv13.i.i50, 24, !dbg !2157
  %arrayidx15.i.i = getelementptr inbounds i8, ptr %exif.9.i, i64 5, !dbg !2158
  %42 = load i8, ptr %arrayidx15.i.i, align 1, !dbg !2158, !tbaa !904
  %conv16.i.i51 = zext i8 %42 to i64, !dbg !2158
  %shl17.i.i = shl nuw nsw i64 %conv16.i.i51, 16, !dbg !2159
  %or18.i.i = or i64 %shl17.i.i, %shl14.i.i, !dbg !2160
  %arrayidx19.i.i52 = getelementptr inbounds i8, ptr %exif.9.i, i64 6, !dbg !2161
  %43 = load i8, ptr %arrayidx19.i.i52, align 1, !dbg !2161, !tbaa !904
  %conv20.i.i = zext i8 %43 to i64, !dbg !2161
  %shl21.i.i = shl nuw nsw i64 %conv20.i.i, 8, !dbg !2162
  %or22.i.i = or i64 %or18.i.i, %shl21.i.i, !dbg !2163
  %arrayidx23.i.i = getelementptr inbounds i8, ptr %exif.9.i, i64 7, !dbg !2164
  br label %ReadProfileLong.exit.i, !dbg !2165

ReadProfileLong.exit.i:                           ; preds = %if.end.i394.i, %if.then.i393.i
  %cmp.i382721732735.i = phi i1 [ false, %if.end.i394.i ], [ true, %if.then.i393.i ]
  %arrayidx23.sink.i.i = phi ptr [ %arrayidx23.i.i, %if.end.i394.i ], [ %add.ptr63.i49, %if.then.i393.i ]
  %or22.sink.i.i = phi i64 [ %or22.i.i, %if.end.i394.i ], [ %or7.i.i, %if.then.i393.i ]
  %44 = load i8, ptr %arrayidx23.sink.i.i, align 1, !dbg !2143, !tbaa !904
  %conv24.i.i = zext i8 %44 to i64, !dbg !2143
  %or25.i.i = or i64 %or22.sink.i.i, %conv24.i.i, !dbg !2143
  %sext.i = shl i64 %or25.i.i, 32, !dbg !2166
  %conv66.i = ashr exact i64 %sext.i, 32, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %conv66.i, metadata !666, metadata !DIExpression()) #5, !dbg !2038
  %cmp67.i = icmp sgt i64 %sext.i, -1, !dbg !2167
  %cmp69.not.i = icmp ult i64 %conv66.i, %length.9.i
  %or.cond.i53 = select i1 %cmp67.i, i1 %cmp69.not.i, i1 false, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %length.9.i, metadata !661, metadata !DIExpression()) #5, !dbg !2038
  br i1 %or.cond.i53, label %if.end72.i, label %.loopexit, !dbg !2169

if.end72.i:                                       ; preds = %ReadProfileLong.exit.i
  call void @llvm.dbg.value(metadata ptr %exif.9.i, metadata !668, metadata !DIExpression()) #5, !dbg !2038
  %add.ptr73.i54 = getelementptr inbounds i8, ptr %exif.9.i, i64 %conv66.i, !dbg !2170
  call void @llvm.dbg.value(metadata ptr %add.ptr73.i54, metadata !667, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata i64 0, metadata !665, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata i64 0, metadata !660, metadata !DIExpression()) #5, !dbg !2038
  %call74.i = call ptr @NewSplayTree(ptr noundef null, ptr noundef null, ptr noundef null) #5, !dbg !2171
  call void @llvm.dbg.value(metadata ptr %call74.i, metadata !663, metadata !DIExpression()) #5, !dbg !2038
  %units157.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 19
  %arrayidx9.i618.i = getelementptr inbounds [2 x i8], ptr %buffer.i610.i, i64 0, i64 1
  %arrayidx14.i600.i = getelementptr inbounds [4 x i8], ptr %buffer.i585.i, i64 0, i64 1
  %arrayidx17.i603.i = getelementptr inbounds [4 x i8], ptr %buffer.i585.i, i64 0, i64 2
  %arrayidx19.i607.i = getelementptr inbounds [4 x i8], ptr %buffer.i585.i, i64 0, i64 3
  %orientation148.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 4
  %arrayidx9.i584.i = getelementptr inbounds [2 x i8], ptr %buffer.i578.i, i64 0, i64 1
  %arrayidx14.i568.i = getelementptr inbounds [4 x i8], ptr %buffer.i553.i, i64 0, i64 1
  %arrayidx17.i571.i = getelementptr inbounds [4 x i8], ptr %buffer.i553.i, i64 0, i64 2
  %arrayidx19.i575.i = getelementptr inbounds [4 x i8], ptr %buffer.i553.i, i64 0, i64 3
  %y_resolution.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 25
  %arrayidx14.i530.i = getelementptr inbounds [4 x i8], ptr %buffer.i515.i, i64 0, i64 1
  %arrayidx17.i533.i = getelementptr inbounds [4 x i8], ptr %buffer.i515.i, i64 0, i64 2
  %arrayidx19.i537.i = getelementptr inbounds [4 x i8], ptr %buffer.i515.i, i64 0, i64 3
  %arrayidx14.i545.i = getelementptr inbounds [4 x i8], ptr %buffer.i540.i, i64 0, i64 1
  %arrayidx17.i546.i = getelementptr inbounds [4 x i8], ptr %buffer.i540.i, i64 0, i64 2
  %arrayidx19.i550.i = getelementptr inbounds [4 x i8], ptr %buffer.i540.i, i64 0, i64 3
  %x_resolution.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 24
  %arrayidx14.i.i55 = getelementptr inbounds [4 x i8], ptr %buffer.i.i38, i64 0, i64 1
  %arrayidx17.i.i56 = getelementptr inbounds [4 x i8], ptr %buffer.i.i38, i64 0, i64 2
  %arrayidx19.i501.i = getelementptr inbounds [4 x i8], ptr %buffer.i.i38, i64 0, i64 3
  %arrayidx14.i507.i = getelementptr inbounds [4 x i8], ptr %buffer.i502.i, i64 0, i64 1
  %arrayidx17.i508.i = getelementptr inbounds [4 x i8], ptr %buffer.i502.i, i64 0, i64 2
  %arrayidx19.i512.i = getelementptr inbounds [4 x i8], ptr %buffer.i502.i, i64 0, i64 3
  %add.ptr190.i = getelementptr inbounds i8, ptr %exif.9.i, i64 %length.9.i
  br label %do.body.i, !dbg !2172

do.body.i:                                        ; preds = %do.cond.i, %if.end72.i
  %directory.0.i = phi ptr [ %add.ptr73.i54, %if.end72.i ], [ %directory.1.i, %do.cond.i ], !dbg !2038
  %level.0.i = phi i64 [ 0, %if.end72.i ], [ %level.6.i, %do.cond.i ], !dbg !2038
  %entry1.0.i = phi i64 [ 0, %if.end72.i ], [ %entry1.6.i, %do.cond.i ], !dbg !2038
  call void @llvm.dbg.value(metadata i64 %entry1.0.i, metadata !660, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %level.0.i, metadata !665, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata ptr undef, metadata !669, metadata !DIExpression()) #5, !dbg !2173
  call void @llvm.dbg.value(metadata ptr %directory.0.i, metadata !667, metadata !DIExpression()) #5, !dbg !2038
  %cmp75.not.i = icmp eq i64 %level.0.i, 0, !dbg !2174
  br i1 %cmp75.not.i, label %if.end81.i, label %if.then77.i, !dbg !2176

if.then77.i:                                      ; preds = %do.body.i
  %dec.i = add nsw i64 %level.0.i, -1, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %dec.i, metadata !665, metadata !DIExpression()) #5, !dbg !2038
  %arrayidx.i = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %directory_stack.i, i64 0, i64 %dec.i, !dbg !2179
  %45 = load ptr, ptr %arrayidx.i, align 16, !dbg !2180, !tbaa !2181
  call void @llvm.dbg.value(metadata ptr %45, metadata !667, metadata !DIExpression()) #5, !dbg !2038
  %entry80.i = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %directory_stack.i, i64 0, i64 %dec.i, i32 1, !dbg !2183
  %46 = load i64, ptr %entry80.i, align 8, !dbg !2183, !tbaa !2184
  call void @llvm.dbg.value(metadata i64 %46, metadata !660, metadata !DIExpression()) #5, !dbg !2038
  br label %if.end81.i, !dbg !2185

if.end81.i:                                       ; preds = %if.then77.i, %do.body.i
  %directory.1.i = phi ptr [ %45, %if.then77.i ], [ %directory.0.i, %do.body.i ], !dbg !2038
  %level.1.i = phi i64 [ %dec.i, %if.then77.i ], [ 0, %do.body.i ], !dbg !2038
  %entry1.1.i = phi i64 [ %46, %if.then77.i ], [ %entry1.0.i, %do.body.i ], !dbg !2038
  call void @llvm.dbg.value(metadata i64 %entry1.1.i, metadata !660, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %level.1.i, metadata !665, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata ptr %directory.1.i, metadata !667, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata i32 2, metadata !1833, metadata !DIExpression()) #5, !dbg !2186
  call void @llvm.dbg.value(metadata ptr %directory.1.i, metadata !1839, metadata !DIExpression()) #5, !dbg !2186
  %arrayidx.i396.i = getelementptr inbounds i8, ptr %directory.1.i, i64 1, !dbg !2186
  call void @llvm.dbg.value(metadata !DIArgList(i8 undef, i8 undef), metadata !1840, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)) #5, !dbg !2186
  %directory.1.arrayidx.i396.i = select i1 %cmp.i382721732735.i, ptr %directory.1.i, ptr %arrayidx.i396.i, !dbg !2186
  %arrayidx.i396.directory.1.i = select i1 %cmp.i382721732735.i, ptr %arrayidx.i396.i, ptr %directory.1.i, !dbg !2186
  %shl8.sink.in.in.i402.i = load i8, ptr %arrayidx.i396.directory.1.i, align 1, !dbg !2186, !tbaa !904
  %shl8.sink.in.i403.i = zext i8 %shl8.sink.in.in.i402.i to i64, !dbg !2186
  %shl8.sink.i404.i = shl nuw nsw i64 %shl8.sink.in.i403.i, 8, !dbg !2186
  %47 = load i8, ptr %directory.1.arrayidx.i396.i, align 1, !dbg !2186, !tbaa !904
  %conv10.i405.i = zext i8 %47 to i64, !dbg !2186
  %or11.i406.i = or i64 %shl8.sink.i404.i, %conv10.i405.i, !dbg !2186
  call void @llvm.dbg.value(metadata i64 %or11.i406.i, metadata !662, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata ptr undef, metadata !669, metadata !DIExpression()) #5, !dbg !2173
  %cmp84799.i = icmp ult i64 %entry1.1.i, %or11.i406.i, !dbg !2188
  br i1 %cmp84799.i, label %for.body.lr.ph.i, label %do.cond.i, !dbg !2189

for.body.lr.ph.i:                                 ; preds = %if.end81.i
  %add.ptr86.i = getelementptr inbounds i8, ptr %directory.1.i, i64 2
  br label %for.body.i, !dbg !2189

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %entry1.2802.i = phi i64 [ %entry1.1.i, %for.body.lr.ph.i ], [ %inc228.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %entry1.2802.i, metadata !660, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata ptr undef, metadata !669, metadata !DIExpression()) #5, !dbg !2173
  %mul.i57 = mul i64 %entry1.2802.i, 12, !dbg !2190
  %add.ptr87.i = getelementptr inbounds i8, ptr %add.ptr86.i, i64 %mul.i57, !dbg !2191
  call void @llvm.dbg.value(metadata ptr %add.ptr87.i, metadata !674, metadata !DIExpression()) #5, !dbg !2173
  %call88.i = call ptr @GetValueFromSplayTree(ptr noundef %call74.i, ptr noundef nonnull %add.ptr87.i) #5, !dbg !2192
  %cmp89.i = icmp eq ptr %call88.i, %add.ptr87.i, !dbg !2194
  br i1 %cmp89.i, label %do.cond.i, label %if.end92.i, !dbg !2195

if.end92.i:                                       ; preds = %for.body.i
  %call93.i = call i32 @AddValueToSplayTree(ptr noundef %call74.i, ptr noundef nonnull %add.ptr87.i, ptr noundef nonnull %add.ptr87.i) #5, !dbg !2196
  call void @llvm.dbg.value(metadata i32 2, metadata !1833, metadata !DIExpression()) #5, !dbg !2197
  call void @llvm.dbg.value(metadata ptr %add.ptr87.i, metadata !1839, metadata !DIExpression()) #5, !dbg !2197
  call void @llvm.dbg.value(metadata !DIArgList(i8 undef, i8 undef), metadata !1840, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)) #5, !dbg !2197
  call void @llvm.dbg.value(metadata !DIArgList(i8 undef, i8 undef), metadata !678, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2173
  %add.ptr96745.i = getelementptr inbounds i8, ptr %add.ptr87.i, i64 2, !dbg !2199
  call void @llvm.dbg.value(metadata i32 2, metadata !1833, metadata !DIExpression()) #5, !dbg !2200
  call void @llvm.dbg.value(metadata ptr %add.ptr96745.i, metadata !1839, metadata !DIExpression()) #5, !dbg !2200
  %arrayidx.i422.i = getelementptr inbounds i8, ptr %add.ptr96745.i, i64 1, !dbg !2200
  call void @llvm.dbg.value(metadata !DIArgList(i8 undef, i8 undef), metadata !1840, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)) #5, !dbg !2200
  br i1 %cmp.i382721732735.i, label %ReadProfileShort.exit433.i, label %ReadProfileShort.exit433.thread.i, !dbg !2202

ReadProfileShort.exit433.i:                       ; preds = %if.end92.i
  %shl8.sink.in.in.i428.i = load i8, ptr %arrayidx.i422.i, align 1, !dbg !2200, !tbaa !904
  %shl8.sink.in.i429.i = zext i8 %shl8.sink.in.in.i428.i to i16, !dbg !2200
  %shl8.sink.i430.i = shl nuw i16 %shl8.sink.in.i429.i, 8, !dbg !2200
  %48 = load i8, ptr %add.ptr96745.i, align 1, !dbg !2200, !tbaa !904
  %conv10.i431.i = zext i8 %48 to i16, !dbg !2200
  %or11.i432.i = or i16 %shl8.sink.i430.i, %conv10.i431.i, !dbg !2200
  call void @llvm.dbg.value(metadata i16 %or11.i432.i, metadata !677, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2173
  %cmp99.i = icmp ugt i16 %or11.i432.i, 12, !dbg !2203
  br i1 %cmp99.i, label %do.cond.i, label %if.then.i446.i, !dbg !2205

ReadProfileShort.exit433.thread.i:                ; preds = %if.end92.i
  %shl8.sink.in.in.i428752.i = load i8, ptr %add.ptr96745.i, align 1, !dbg !2200, !tbaa !904
  %shl8.sink.in.i429753.i = zext i8 %shl8.sink.in.in.i428752.i to i16, !dbg !2200
  %shl8.sink.i430754.i = shl nuw i16 %shl8.sink.in.i429753.i, 8, !dbg !2200
  %49 = load i8, ptr %arrayidx.i422.i, align 1, !dbg !2200, !tbaa !904
  %conv10.i431755.i = zext i8 %49 to i16, !dbg !2200
  %or11.i432756.i = or i16 %shl8.sink.i430754.i, %conv10.i431755.i, !dbg !2200
  %cmp99757.i = icmp ugt i16 %or11.i432756.i, 12, !dbg !2203
  br i1 %cmp99757.i, label %do.cond.i, label %if.end.i458.i, !dbg !2205

if.then.i446.i:                                   ; preds = %ReadProfileShort.exit433.i
  %arrayidx.i409.i = getelementptr inbounds i8, ptr %add.ptr87.i, i64 1, !dbg !2206
  %shl8.sink.in.in.i415740.i = load i8, ptr %arrayidx.i409.i, align 1, !dbg !2197, !tbaa !904
  %shl8.sink.in.i416741.i = zext i8 %shl8.sink.in.in.i415740.i to i16, !dbg !2197
  %shl8.sink.i417742.i = shl nuw i16 %shl8.sink.in.i416741.i, 8, !dbg !2197
  %50 = load i8, ptr %add.ptr87.i, align 1, !dbg !2197, !tbaa !904
  %conv10.i418743.i = zext i8 %50 to i16, !dbg !2197
  %or11.i419744.i = or i16 %shl8.sink.i417742.i, %conv10.i418743.i, !dbg !2197
  call void @llvm.dbg.value(metadata i16 %or11.i432.i, metadata !677, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2173
  %add.ptr103.i = getelementptr inbounds i8, ptr %add.ptr87.i, i64 4, !dbg !2207
  call void @llvm.dbg.value(metadata i32 2, metadata !1868, metadata !DIExpression()) #5, !dbg !2208
  call void @llvm.dbg.value(metadata ptr %add.ptr103.i, metadata !1873, metadata !DIExpression()) #5, !dbg !2208
  %arrayidx.i435.i = getelementptr inbounds i8, ptr %add.ptr103.i, i64 3, !dbg !2210
  %51 = load i8, ptr %arrayidx.i435.i, align 1, !dbg !2210, !tbaa !904
  %conv.i436.i = zext i8 %51 to i64, !dbg !2210
  %shl.i437.i = shl nuw nsw i64 %conv.i436.i, 24, !dbg !2211
  %arrayidx1.i438.i = getelementptr inbounds i8, ptr %add.ptr103.i, i64 2, !dbg !2212
  %52 = load i8, ptr %arrayidx1.i438.i, align 1, !dbg !2212, !tbaa !904
  %conv2.i439.i = zext i8 %52 to i64, !dbg !2212
  %shl3.i440.i = shl nuw nsw i64 %conv2.i439.i, 16, !dbg !2213
  %or.i441.i = or i64 %shl3.i440.i, %shl.i437.i, !dbg !2214
  %arrayidx4.i442.i = getelementptr inbounds i8, ptr %add.ptr103.i, i64 1, !dbg !2215
  %53 = load i8, ptr %arrayidx4.i442.i, align 1, !dbg !2215, !tbaa !904
  %conv5.i443.i = zext i8 %53 to i64, !dbg !2215
  %shl6.i444.i = shl nuw nsw i64 %conv5.i443.i, 8, !dbg !2216
  %or7.i445.i = or i64 %or.i441.i, %shl6.i444.i, !dbg !2217
  call void @llvm.dbg.value(metadata i64 undef, metadata !1874, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #5, !dbg !2208
  br label %ReadProfileLong.exit463.i, !dbg !2218

if.end.i458.i:                                    ; preds = %ReadProfileShort.exit433.thread.i
  %shl8.sink.in.in.i415.i = load i8, ptr %add.ptr87.i, align 1, !dbg !2197, !tbaa !904
  call void @llvm.dbg.value(metadata !DIArgList(i8 %shl8.sink.in.in.i415.i, i8 undef), metadata !678, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2173
  %shl8.sink.in.i416.i = zext i8 %shl8.sink.in.in.i415.i to i16, !dbg !2197
  call void @llvm.dbg.value(metadata !DIArgList(i16 %shl8.sink.in.i416.i, i8 undef), metadata !678, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2173
  %shl8.sink.i417.i = shl nuw i16 %shl8.sink.in.i416.i, 8, !dbg !2197
  call void @llvm.dbg.value(metadata !DIArgList(i16 %shl8.sink.i417.i, i8 undef), metadata !678, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2173
  %arrayidx9.i411.i = getelementptr inbounds i8, ptr %add.ptr87.i, i64 1, !dbg !2219
  %54 = load i8, ptr %arrayidx9.i411.i, align 1, !dbg !2197, !tbaa !904
  call void @llvm.dbg.value(metadata !DIArgList(i8 undef, i8 %54), metadata !678, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2173
  %conv10.i418.i = zext i8 %54 to i16, !dbg !2197
  call void @llvm.dbg.value(metadata !DIArgList(i8 undef, i16 %conv10.i418.i), metadata !678, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2173
  %or11.i419.i = or i16 %shl8.sink.i417.i, %conv10.i418.i, !dbg !2197
  call void @llvm.dbg.value(metadata i16 %or11.i419.i, metadata !678, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !2173
  %add.ptr103763.i = getelementptr inbounds i8, ptr %add.ptr87.i, i64 4, !dbg !2207
  call void @llvm.dbg.value(metadata i32 2, metadata !1868, metadata !DIExpression()) #5, !dbg !2208
  %55 = load i8, ptr %add.ptr103763.i, align 1, !dbg !2220, !tbaa !904
  %conv13.i447.i = zext i8 %55 to i64, !dbg !2220
  %shl14.i448.i = shl nuw nsw i64 %conv13.i447.i, 24, !dbg !2221
  %arrayidx15.i449.i = getelementptr inbounds i8, ptr %add.ptr103763.i, i64 1, !dbg !2222
  %56 = load i8, ptr %arrayidx15.i449.i, align 1, !dbg !2222, !tbaa !904
  %conv16.i450.i = zext i8 %56 to i64, !dbg !2222
  %shl17.i451.i = shl nuw nsw i64 %conv16.i450.i, 16, !dbg !2223
  %or18.i452.i = or i64 %shl17.i451.i, %shl14.i448.i, !dbg !2224
  %arrayidx19.i453.i = getelementptr inbounds i8, ptr %add.ptr103763.i, i64 2, !dbg !2225
  %57 = load i8, ptr %arrayidx19.i453.i, align 1, !dbg !2225, !tbaa !904
  %conv20.i454.i = zext i8 %57 to i64, !dbg !2225
  %shl21.i455.i = shl nuw nsw i64 %conv20.i454.i, 8, !dbg !2226
  %or22.i456.i = or i64 %or18.i452.i, %shl21.i455.i, !dbg !2227
  %arrayidx23.i457.i = getelementptr inbounds i8, ptr %add.ptr103763.i, i64 3, !dbg !2228
  br label %ReadProfileLong.exit463.i, !dbg !2229

ReadProfileLong.exit463.i:                        ; preds = %if.end.i458.i, %if.then.i446.i
  %conv98766.in.i = phi i16 [ %or11.i432756.i, %if.end.i458.i ], [ %or11.i432.i, %if.then.i446.i ]
  %or11.i419746758764.i = phi i16 [ %or11.i419.i, %if.end.i458.i ], [ %or11.i419744.i, %if.then.i446.i ]
  %arrayidx23.sink.i459.i = phi ptr [ %arrayidx23.i457.i, %if.end.i458.i ], [ %add.ptr103.i, %if.then.i446.i ]
  %or22.sink.i460.i = phi i64 [ %or22.i456.i, %if.end.i458.i ], [ %or7.i445.i, %if.then.i446.i ]
  %conv98766.i = zext i16 %conv98766.in.i to i64, !dbg !2230
  %58 = load i8, ptr %arrayidx23.sink.i459.i, align 1, !dbg !2208, !tbaa !904
  %conv24.i461.i = zext i8 %58 to i64, !dbg !2208
  %or25.i462.i = or i64 %or22.sink.i460.i, %conv24.i461.i, !dbg !2208
  %sext334.i = shl i64 %or25.i462.i, 32, !dbg !2231
  %conv106.i = ashr exact i64 %sext334.i, 32, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %conv106.i, metadata !676, metadata !DIExpression()) #5, !dbg !2173
  %arrayidx107.i = getelementptr inbounds [13 x i32], ptr @SyncExifProfile.format_bytes, i64 0, i64 %conv98766.i, !dbg !2232
  %59 = load i32, ptr %arrayidx107.i, align 4, !dbg !2232, !tbaa !1190
  %conv108.i = sext i32 %59 to i64, !dbg !2232
  %mul109.i = mul nsw i64 %conv106.i, %conv108.i, !dbg !2233
  call void @llvm.dbg.value(metadata i64 %mul109.i, metadata !675, metadata !DIExpression()) #5, !dbg !2173
  %cmp110.i = icmp slt i64 %mul109.i, %conv106.i, !dbg !2234
  br i1 %cmp110.i, label %do.cond.i, label %if.end113.i, !dbg !2236

if.end113.i:                                      ; preds = %ReadProfileLong.exit463.i
  %cmp114.i = icmp ult i64 %mul109.i, 5, !dbg !2237
  %add.ptr117.i = getelementptr inbounds i8, ptr %add.ptr87.i, i64 8, !dbg !2238
  br i1 %cmp114.i, label %if.end134.i, label %if.else118.i, !dbg !2239

if.else118.i:                                     ; preds = %if.end113.i
  call void @llvm.dbg.value(metadata i32 2, metadata !1868, metadata !DIExpression()) #5, !dbg !2240
  call void @llvm.dbg.value(metadata ptr %add.ptr117.i, metadata !1873, metadata !DIExpression()) #5, !dbg !2240
  br i1 %cmp.i382721732735.i, label %if.then.i476.i, label %if.end.i488.i, !dbg !2242

if.then.i476.i:                                   ; preds = %if.else118.i
  %arrayidx.i465.i = getelementptr inbounds i8, ptr %add.ptr117.i, i64 3, !dbg !2243
  %60 = load i8, ptr %arrayidx.i465.i, align 1, !dbg !2243, !tbaa !904
  %conv.i466.i = zext i8 %60 to i64, !dbg !2243
  %shl.i467.i = shl nuw nsw i64 %conv.i466.i, 24, !dbg !2244
  %arrayidx1.i468.i = getelementptr inbounds i8, ptr %add.ptr117.i, i64 2, !dbg !2245
  %61 = load i8, ptr %arrayidx1.i468.i, align 1, !dbg !2245, !tbaa !904
  %conv2.i469.i = zext i8 %61 to i64, !dbg !2245
  %shl3.i470.i = shl nuw nsw i64 %conv2.i469.i, 16, !dbg !2246
  %or.i471.i = or i64 %shl3.i470.i, %shl.i467.i, !dbg !2247
  %arrayidx4.i472.i = getelementptr inbounds i8, ptr %add.ptr117.i, i64 1, !dbg !2248
  %62 = load i8, ptr %arrayidx4.i472.i, align 1, !dbg !2248, !tbaa !904
  %conv5.i473.i = zext i8 %62 to i64, !dbg !2248
  %shl6.i474.i = shl nuw nsw i64 %conv5.i473.i, 8, !dbg !2249
  %or7.i475.i = or i64 %or.i471.i, %shl6.i474.i, !dbg !2250
  call void @llvm.dbg.value(metadata i64 undef, metadata !1874, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #5, !dbg !2240
  br label %ReadProfileLong.exit493.i, !dbg !2251

if.end.i488.i:                                    ; preds = %if.else118.i
  %63 = load i8, ptr %add.ptr117.i, align 1, !dbg !2252, !tbaa !904
  %conv13.i477.i = zext i8 %63 to i64, !dbg !2252
  %shl14.i478.i = shl nuw nsw i64 %conv13.i477.i, 24, !dbg !2253
  %arrayidx15.i479.i = getelementptr inbounds i8, ptr %add.ptr117.i, i64 1, !dbg !2254
  %64 = load i8, ptr %arrayidx15.i479.i, align 1, !dbg !2254, !tbaa !904
  %conv16.i480.i = zext i8 %64 to i64, !dbg !2254
  %shl17.i481.i = shl nuw nsw i64 %conv16.i480.i, 16, !dbg !2255
  %or18.i482.i = or i64 %shl17.i481.i, %shl14.i478.i, !dbg !2256
  %arrayidx19.i483.i = getelementptr inbounds i8, ptr %add.ptr117.i, i64 2, !dbg !2257
  %65 = load i8, ptr %arrayidx19.i483.i, align 1, !dbg !2257, !tbaa !904
  %conv20.i484.i = zext i8 %65 to i64, !dbg !2257
  %shl21.i485.i = shl nuw nsw i64 %conv20.i484.i, 8, !dbg !2258
  %or22.i486.i = or i64 %or18.i482.i, %shl21.i485.i, !dbg !2259
  %arrayidx23.i487.i = getelementptr inbounds i8, ptr %add.ptr117.i, i64 3, !dbg !2260
  br label %ReadProfileLong.exit493.i, !dbg !2261

ReadProfileLong.exit493.i:                        ; preds = %if.end.i488.i, %if.then.i476.i
  %arrayidx23.sink.i489.i = phi ptr [ %arrayidx23.i487.i, %if.end.i488.i ], [ %add.ptr117.i, %if.then.i476.i ]
  %or22.sink.i490.i = phi i64 [ %or22.i486.i, %if.end.i488.i ], [ %or7.i475.i, %if.then.i476.i ]
  %66 = load i8, ptr %arrayidx23.sink.i489.i, align 1, !dbg !2240, !tbaa !904
  %conv24.i491.i = zext i8 %66 to i64, !dbg !2240
  %or25.i492.i = or i64 %or22.sink.i490.i, %conv24.i491.i, !dbg !2240
  %sext335.i = shl i64 %or25.i492.i, 32, !dbg !2262
  %conv123.i = ashr exact i64 %sext335.i, 32, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %conv123.i, metadata !679, metadata !DIExpression()) #5, !dbg !2263
  %add.i = add nsw i64 %conv123.i, %mul109.i, !dbg !2264
  %cmp124.i = icmp slt i64 %mul109.i, 0, !dbg !2266
  %cmp129.i = icmp ugt i64 %add.i, %length.9.i
  %or.cond340.i = select i1 %cmp124.i, i1 true, i1 %cmp129.i, !dbg !2267
  call void @llvm.dbg.value(metadata i64 %length.9.i, metadata !661, metadata !DIExpression()) #5, !dbg !2038
  br i1 %or.cond340.i, label %for.inc.i, label %cleanup.thread.i, !dbg !2267

cleanup.thread.i:                                 ; preds = %ReadProfileLong.exit493.i
  call void @llvm.dbg.value(metadata ptr %exif.9.i, metadata !668, metadata !DIExpression()) #5, !dbg !2038
  %add.ptr133.i = getelementptr inbounds i8, ptr %exif.9.i, i64 %conv123.i, !dbg !2268
  call void @llvm.dbg.value(metadata ptr undef, metadata !669, metadata !DIExpression()) #5, !dbg !2173
  br label %if.end134.i

if.end134.i:                                      ; preds = %cleanup.thread.i, %if.end113.i
  %p.3.i = phi ptr [ %add.ptr133.i, %cleanup.thread.i ], [ %add.ptr117.i, %if.end113.i ]
  call void @llvm.dbg.value(metadata ptr %p.3.i, metadata !669, metadata !DIExpression()) #5, !dbg !2173
  switch i16 %or11.i419746758764.i, label %for.inc.i [
    i16 282, label %sw.bb.i
    i16 283, label %sw.bb138.i
    i16 274, label %sw.bb142.i
    i16 296, label %sw.bb150.i
    i16 -24571, label %if.then165.i
    i16 -30871, label %if.then165.i
  ], !dbg !2269

sw.bb.i:                                          ; preds = %if.end134.i
  %67 = load double, ptr %x_resolution.i, align 8, !dbg !2270, !tbaa !1639
  %add135.i = fadd double %67, 5.000000e-01, !dbg !2273
  %conv136.i = fptoui double %add135.i to i64, !dbg !2274
  call void @llvm.dbg.value(metadata i32 2, metadata !1903, metadata !DIExpression()) #5, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %conv136.i, metadata !1908, metadata !DIExpression()) #5, !dbg !2275
  call void @llvm.dbg.value(metadata ptr %p.3.i, metadata !1909, metadata !DIExpression()) #5, !dbg !2275
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i.i38) #5, !dbg !2277
  call void @llvm.dbg.declare(metadata ptr %buffer.i.i38, metadata !1910, metadata !DIExpression()) #5, !dbg !2278
  br i1 %cmp.i382721732735.i, label %if.then.i506.i, label %if.end.i509.i, !dbg !2279

if.then.i506.i:                                   ; preds = %sw.bb.i
  %conv.i495.i = trunc i64 %conv136.i to i8, !dbg !2280
  store i8 %conv.i495.i, ptr %buffer.i.i38, align 1, !dbg !2283, !tbaa !904
  %shr.i.i = lshr i64 %conv136.i, 8, !dbg !2284
  %conv1.i.i = trunc i64 %shr.i.i to i8, !dbg !2285
  store i8 %conv1.i.i, ptr %arrayidx14.i.i55, align 1, !dbg !2286, !tbaa !904
  %shr3.i.i = lshr i64 %conv136.i, 16, !dbg !2287
  %conv4.i.i = trunc i64 %shr3.i.i to i8, !dbg !2288
  store i8 %conv4.i.i, ptr %arrayidx17.i.i56, align 1, !dbg !2289, !tbaa !904
  %shr6.i.i = lshr i64 %conv136.i, 24, !dbg !2290
  %conv18.i773.i = trunc i64 %shr6.i.i to i8, !dbg !2275
  store i8 %conv18.i773.i, ptr %arrayidx19.i501.i, align 1, !dbg !2275, !tbaa !904
  %call21.i775.i = call ptr @CopyMagickMemory(ptr noundef %p.3.i, ptr noundef nonnull %buffer.i.i38, i64 noundef 4) #5, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i.i38) #5, !dbg !2291
  call void @llvm.dbg.value(metadata i32 2, metadata !1903, metadata !DIExpression()) #5, !dbg !2292
  call void @llvm.dbg.value(metadata i64 1, metadata !1908, metadata !DIExpression()) #5, !dbg !2292
  call void @llvm.dbg.value(metadata ptr %p.3.i, metadata !1909, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)) #5, !dbg !2292
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i502.i) #5, !dbg !2294
  call void @llvm.dbg.declare(metadata ptr %buffer.i502.i, metadata !1910, metadata !DIExpression()) #5, !dbg !2295
  br label %WriteProfileLong.exit514.i, !dbg !2296

if.end.i509.i:                                    ; preds = %sw.bb.i
  %shr9.i.i58 = lshr i64 %conv136.i, 24, !dbg !2297
  %conv10.i497.i = trunc i64 %shr9.i.i58 to i8, !dbg !2298
  store i8 %conv10.i497.i, ptr %buffer.i.i38, align 1, !dbg !2299, !tbaa !904
  %shr12.i.i59 = lshr i64 %conv136.i, 16, !dbg !2300
  %conv13.i498.i = trunc i64 %shr12.i.i59 to i8, !dbg !2301
  store i8 %conv13.i498.i, ptr %arrayidx14.i.i55, align 1, !dbg !2302, !tbaa !904
  %shr15.i.i60 = lshr i64 %conv136.i, 8, !dbg !2303
  %conv16.i499.i = trunc i64 %shr15.i.i60 to i8, !dbg !2304
  store i8 %conv16.i499.i, ptr %arrayidx17.i.i56, align 1, !dbg !2305, !tbaa !904
  %conv18.i.i61 = trunc i64 %conv136.i to i8, !dbg !2275
  store i8 %conv18.i.i61, ptr %arrayidx19.i501.i, align 1, !dbg !2275, !tbaa !904
  %call21.i.i62 = call ptr @CopyMagickMemory(ptr noundef %p.3.i, ptr noundef nonnull %buffer.i.i38, i64 noundef 4) #5, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i.i38) #5, !dbg !2291
  call void @llvm.dbg.value(metadata i32 2, metadata !1903, metadata !DIExpression()) #5, !dbg !2292
  call void @llvm.dbg.value(metadata i64 1, metadata !1908, metadata !DIExpression()) #5, !dbg !2292
  call void @llvm.dbg.value(metadata ptr %p.3.i, metadata !1909, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)) #5, !dbg !2292
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i502.i) #5, !dbg !2294
  call void @llvm.dbg.declare(metadata ptr %buffer.i502.i, metadata !1910, metadata !DIExpression()) #5, !dbg !2295
  br label %WriteProfileLong.exit514.i, !dbg !2306

WriteProfileLong.exit514.i:                       ; preds = %if.end.i509.i, %if.then.i506.i
  %storemerge817.i = phi i8 [ 0, %if.end.i509.i ], [ 1, %if.then.i506.i ], !dbg !2292
  %value.sink.i510.i = phi i8 [ 1, %if.end.i509.i ], [ 0, %if.then.i506.i ]
  store i8 %storemerge817.i, ptr %buffer.i502.i, align 1, !dbg !2292, !tbaa !904
  store i8 0, ptr %arrayidx14.i507.i, align 1, !dbg !2292, !tbaa !904
  store i8 0, ptr %arrayidx17.i508.i, align 1, !dbg !2292, !tbaa !904
  %add.ptr137777.i = getelementptr inbounds i8, ptr %p.3.i, i64 4, !dbg !2307
  store i8 %value.sink.i510.i, ptr %arrayidx19.i512.i, align 1, !dbg !2292, !tbaa !904
  %call21.i513.i = call ptr @CopyMagickMemory(ptr noundef nonnull %add.ptr137777.i, ptr noundef nonnull %buffer.i502.i, i64 noundef 4) #5, !dbg !2292
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i502.i) #5, !dbg !2306
  br label %for.inc.i, !dbg !2308

sw.bb138.i:                                       ; preds = %if.end134.i
  %68 = load double, ptr %y_resolution.i, align 8, !dbg !2309, !tbaa !1670
  %add139.i = fadd double %68, 5.000000e-01, !dbg !2311
  %conv140.i = fptoui double %add139.i to i64, !dbg !2312
  call void @llvm.dbg.value(metadata i32 2, metadata !1903, metadata !DIExpression()) #5, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %conv140.i, metadata !1908, metadata !DIExpression()) #5, !dbg !2313
  call void @llvm.dbg.value(metadata ptr %p.3.i, metadata !1909, metadata !DIExpression()) #5, !dbg !2313
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i515.i) #5, !dbg !2315
  call void @llvm.dbg.declare(metadata ptr %buffer.i515.i, metadata !1910, metadata !DIExpression()) #5, !dbg !2316
  br i1 %cmp.i382721732735.i, label %if.then.i544.i, label %if.end.i547.i, !dbg !2317

if.then.i544.i:                                   ; preds = %sw.bb138.i
  %conv.i517.i = trunc i64 %conv140.i to i8, !dbg !2318
  store i8 %conv.i517.i, ptr %buffer.i515.i, align 1, !dbg !2319, !tbaa !904
  %shr.i518.i = lshr i64 %conv140.i, 8, !dbg !2320
  %conv1.i519.i = trunc i64 %shr.i518.i to i8, !dbg !2321
  store i8 %conv1.i519.i, ptr %arrayidx14.i530.i, align 1, !dbg !2322, !tbaa !904
  %shr3.i521.i = lshr i64 %conv140.i, 16, !dbg !2323
  %conv4.i522.i = trunc i64 %shr3.i521.i to i8, !dbg !2324
  store i8 %conv4.i522.i, ptr %arrayidx17.i533.i, align 1, !dbg !2325, !tbaa !904
  %shr6.i524.i = lshr i64 %conv140.i, 24, !dbg !2326
  %conv18.i536780.i = trunc i64 %shr6.i524.i to i8, !dbg !2313
  store i8 %conv18.i536780.i, ptr %arrayidx19.i537.i, align 1, !dbg !2313, !tbaa !904
  %call21.i538782.i = call ptr @CopyMagickMemory(ptr noundef %p.3.i, ptr noundef nonnull %buffer.i515.i, i64 noundef 4) #5, !dbg !2313
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i515.i) #5, !dbg !2327
  call void @llvm.dbg.value(metadata i32 2, metadata !1903, metadata !DIExpression()) #5, !dbg !2328
  call void @llvm.dbg.value(metadata i64 1, metadata !1908, metadata !DIExpression()) #5, !dbg !2328
  call void @llvm.dbg.value(metadata ptr %p.3.i, metadata !1909, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)) #5, !dbg !2328
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i540.i) #5, !dbg !2330
  call void @llvm.dbg.declare(metadata ptr %buffer.i540.i, metadata !1910, metadata !DIExpression()) #5, !dbg !2331
  br label %WriteProfileLong.exit552.i, !dbg !2332

if.end.i547.i:                                    ; preds = %sw.bb138.i
  %shr9.i526.i = lshr i64 %conv140.i, 24, !dbg !2333
  %conv10.i527.i = trunc i64 %shr9.i526.i to i8, !dbg !2334
  store i8 %conv10.i527.i, ptr %buffer.i515.i, align 1, !dbg !2335, !tbaa !904
  %shr12.i528.i = lshr i64 %conv140.i, 16, !dbg !2336
  %conv13.i529.i = trunc i64 %shr12.i528.i to i8, !dbg !2337
  store i8 %conv13.i529.i, ptr %arrayidx14.i530.i, align 1, !dbg !2338, !tbaa !904
  %shr15.i531.i = lshr i64 %conv140.i, 8, !dbg !2339
  %conv16.i532.i = trunc i64 %shr15.i531.i to i8, !dbg !2340
  store i8 %conv16.i532.i, ptr %arrayidx17.i533.i, align 1, !dbg !2341, !tbaa !904
  %conv18.i536.i = trunc i64 %conv140.i to i8, !dbg !2313
  store i8 %conv18.i536.i, ptr %arrayidx19.i537.i, align 1, !dbg !2313, !tbaa !904
  %call21.i538.i = call ptr @CopyMagickMemory(ptr noundef %p.3.i, ptr noundef nonnull %buffer.i515.i, i64 noundef 4) #5, !dbg !2313
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i515.i) #5, !dbg !2327
  call void @llvm.dbg.value(metadata i32 2, metadata !1903, metadata !DIExpression()) #5, !dbg !2328
  call void @llvm.dbg.value(metadata i64 1, metadata !1908, metadata !DIExpression()) #5, !dbg !2328
  call void @llvm.dbg.value(metadata ptr %p.3.i, metadata !1909, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)) #5, !dbg !2328
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i540.i) #5, !dbg !2330
  call void @llvm.dbg.declare(metadata ptr %buffer.i540.i, metadata !1910, metadata !DIExpression()) #5, !dbg !2331
  br label %WriteProfileLong.exit552.i, !dbg !2342

WriteProfileLong.exit552.i:                       ; preds = %if.end.i547.i, %if.then.i544.i
  %storemerge.i = phi i8 [ 0, %if.end.i547.i ], [ 1, %if.then.i544.i ], !dbg !2328
  %value.sink.i548.i = phi i8 [ 1, %if.end.i547.i ], [ 0, %if.then.i544.i ]
  store i8 %storemerge.i, ptr %buffer.i540.i, align 1, !dbg !2328, !tbaa !904
  store i8 0, ptr %arrayidx14.i545.i, align 1, !dbg !2328, !tbaa !904
  store i8 0, ptr %arrayidx17.i546.i, align 1, !dbg !2328, !tbaa !904
  %add.ptr141784.i = getelementptr inbounds i8, ptr %p.3.i, i64 4, !dbg !2343
  store i8 %value.sink.i548.i, ptr %arrayidx19.i550.i, align 1, !dbg !2328, !tbaa !904
  %call21.i551.i = call ptr @CopyMagickMemory(ptr noundef nonnull %add.ptr141784.i, ptr noundef nonnull %buffer.i540.i, i64 noundef 4) #5, !dbg !2328
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i540.i) #5, !dbg !2342
  br label %for.inc.i, !dbg !2344

sw.bb142.i:                                       ; preds = %if.end134.i
  %cmp143.i = icmp eq i64 %mul109.i, 4, !dbg !2345
  %69 = load i32, ptr %orientation148.i, align 8, !dbg !2348, !tbaa !2349
  br i1 %cmp143.i, label %if.then145.i, label %if.end147.i, !dbg !2350

if.then145.i:                                     ; preds = %sw.bb142.i
  call void @llvm.dbg.value(metadata i32 2, metadata !1903, metadata !DIExpression()) #5, !dbg !2351
  call void @llvm.dbg.value(metadata i64 undef, metadata !1908, metadata !DIExpression()) #5, !dbg !2351
  call void @llvm.dbg.value(metadata ptr %p.3.i, metadata !1909, metadata !DIExpression()) #5, !dbg !2351
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i553.i) #5, !dbg !2354
  call void @llvm.dbg.declare(metadata ptr %buffer.i553.i, metadata !1910, metadata !DIExpression()) #5, !dbg !2355
  br i1 %cmp.i382721732735.i, label %if.then.i563.i, label %if.end.i572.i, !dbg !2356

if.then.i563.i:                                   ; preds = %if.then145.i
  %conv.i555.i = trunc i32 %69 to i8, !dbg !2357
  store i8 %conv.i555.i, ptr %buffer.i553.i, align 1, !dbg !2358, !tbaa !904
  %shr.i556.i = lshr i32 %69, 8, !dbg !2359
  %conv1.i557.i = trunc i32 %shr.i556.i to i8, !dbg !2360
  store i8 %conv1.i557.i, ptr %arrayidx14.i568.i, align 1, !dbg !2361, !tbaa !904
  %shr3.i559.i = lshr i32 %69, 16, !dbg !2362
  %conv4.i560.i = trunc i32 %shr3.i559.i to i8, !dbg !2363
  store i8 %conv4.i560.i, ptr %arrayidx17.i571.i, align 1, !dbg !2364, !tbaa !904
  %shr6.i562.i = lshr i32 %69, 24, !dbg !2365
  br label %WriteProfileLong.exit577.i, !dbg !2366

if.end.i572.i:                                    ; preds = %if.then145.i
  %shr9.i564.i = lshr i32 %69, 24, !dbg !2367
  %conv10.i565.i = trunc i32 %shr9.i564.i to i8, !dbg !2368
  store i8 %conv10.i565.i, ptr %buffer.i553.i, align 1, !dbg !2369, !tbaa !904
  %shr12.i566.i = lshr i32 %69, 16, !dbg !2370
  %conv13.i567.i = trunc i32 %shr12.i566.i to i8, !dbg !2371
  store i8 %conv13.i567.i, ptr %arrayidx14.i568.i, align 1, !dbg !2372, !tbaa !904
  %shr15.i569.i = lshr i32 %69, 8, !dbg !2373
  %conv16.i570.i = trunc i32 %shr15.i569.i to i8, !dbg !2374
  store i8 %conv16.i570.i, ptr %arrayidx17.i571.i, align 1, !dbg !2375, !tbaa !904
  br label %WriteProfileLong.exit577.i, !dbg !2376

WriteProfileLong.exit577.i:                       ; preds = %if.end.i572.i, %if.then.i563.i
  %value.sink.i573.i = phi i32 [ %69, %if.end.i572.i ], [ %shr6.i562.i, %if.then.i563.i ]
  %conv18.i574.i = trunc i32 %value.sink.i573.i to i8, !dbg !2351
  store i8 %conv18.i574.i, ptr %arrayidx19.i575.i, align 1, !dbg !2351, !tbaa !904
  %call21.i576.i = call ptr @CopyMagickMemory(ptr noundef %p.3.i, ptr noundef nonnull %buffer.i553.i, i64 noundef 4) #5, !dbg !2351
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i553.i) #5, !dbg !2376
  br label %for.inc.i, !dbg !2377

if.end147.i:                                      ; preds = %sw.bb142.i
  %conv149.i = trunc i32 %69 to i16, !dbg !2378
  call void @llvm.dbg.value(metadata i32 2, metadata !1944, metadata !DIExpression()) #5, !dbg !2379
  call void @llvm.dbg.value(metadata i16 %conv149.i, metadata !1950, metadata !DIExpression()) #5, !dbg !2379
  call void @llvm.dbg.value(metadata ptr %p.3.i, metadata !1951, metadata !DIExpression()) #5, !dbg !2379
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i578.i) #5, !dbg !2381
  call void @llvm.dbg.declare(metadata ptr %buffer.i578.i, metadata !1952, metadata !DIExpression()) #5, !dbg !2382
  br i1 %cmp.i382721732735.i, label %if.then.i581.i, label %if.end.i582.i, !dbg !2383

if.then.i581.i:                                   ; preds = %if.end147.i
  %conv.i580.i = trunc i32 %69 to i8, !dbg !2384
  store i8 %conv.i580.i, ptr %buffer.i578.i, align 1, !dbg !2387, !tbaa !904
  %70 = lshr i16 %conv149.i, 8, !dbg !2388
  br label %WriteProfileShort.exit.i, !dbg !2389

if.end.i582.i:                                    ; preds = %if.end147.i
  %71 = lshr i32 %69, 8, !dbg !2390
  %conv6.i.i63 = trunc i32 %71 to i8, !dbg !2390
  store i8 %conv6.i.i63, ptr %buffer.i578.i, align 1, !dbg !2391, !tbaa !904
  br label %WriteProfileShort.exit.i, !dbg !2392

WriteProfileShort.exit.i:                         ; preds = %if.end.i582.i, %if.then.i581.i
  %value.sink.i583.i = phi i16 [ %conv149.i, %if.end.i582.i ], [ %70, %if.then.i581.i ]
  %conv8.i.i64 = trunc i16 %value.sink.i583.i to i8, !dbg !2379
  store i8 %conv8.i.i64, ptr %arrayidx9.i584.i, align 1, !dbg !2379, !tbaa !904
  %call11.i.i65 = call ptr @CopyMagickMemory(ptr noundef %p.3.i, ptr noundef nonnull %buffer.i578.i, i64 noundef 2) #5, !dbg !2379
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i578.i) #5, !dbg !2392
  br label %for.inc.i, !dbg !2393

sw.bb150.i:                                       ; preds = %if.end134.i
  %cmp151.i = icmp eq i64 %mul109.i, 4, !dbg !2394
  %72 = load i32, ptr %units157.i, align 8, !dbg !2397, !tbaa !1675
  br i1 %cmp151.i, label %if.then153.i, label %if.end156.i, !dbg !2398

if.then153.i:                                     ; preds = %sw.bb150.i
  %add154.i = add i32 %72, 1, !dbg !2399
  call void @llvm.dbg.value(metadata i32 2, metadata !1903, metadata !DIExpression()) #5, !dbg !2401
  call void @llvm.dbg.value(metadata i64 undef, metadata !1908, metadata !DIExpression()) #5, !dbg !2401
  call void @llvm.dbg.value(metadata ptr %p.3.i, metadata !1909, metadata !DIExpression()) #5, !dbg !2401
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i585.i) #5, !dbg !2403
  call void @llvm.dbg.declare(metadata ptr %buffer.i585.i, metadata !1910, metadata !DIExpression()) #5, !dbg !2404
  br i1 %cmp.i382721732735.i, label %if.then.i595.i, label %if.end.i604.i, !dbg !2405

if.then.i595.i:                                   ; preds = %if.then153.i
  %conv.i587.i = trunc i32 %add154.i to i8, !dbg !2406
  store i8 %conv.i587.i, ptr %buffer.i585.i, align 1, !dbg !2407, !tbaa !904
  %shr.i588.i = lshr i32 %add154.i, 8, !dbg !2408
  %conv1.i589.i = trunc i32 %shr.i588.i to i8, !dbg !2409
  store i8 %conv1.i589.i, ptr %arrayidx14.i600.i, align 1, !dbg !2410, !tbaa !904
  %shr3.i591.i = lshr i32 %add154.i, 16, !dbg !2411
  %conv4.i592.i = trunc i32 %shr3.i591.i to i8, !dbg !2412
  store i8 %conv4.i592.i, ptr %arrayidx17.i603.i, align 1, !dbg !2413, !tbaa !904
  %shr6.i594.i = lshr i32 %add154.i, 24, !dbg !2414
  br label %WriteProfileLong.exit609.i, !dbg !2415

if.end.i604.i:                                    ; preds = %if.then153.i
  %shr9.i596.i = lshr i32 %add154.i, 24, !dbg !2416
  %conv10.i597.i = trunc i32 %shr9.i596.i to i8, !dbg !2417
  store i8 %conv10.i597.i, ptr %buffer.i585.i, align 1, !dbg !2418, !tbaa !904
  %shr12.i598.i = lshr i32 %add154.i, 16, !dbg !2419
  %conv13.i599.i = trunc i32 %shr12.i598.i to i8, !dbg !2420
  store i8 %conv13.i599.i, ptr %arrayidx14.i600.i, align 1, !dbg !2421, !tbaa !904
  %shr15.i601.i = lshr i32 %add154.i, 8, !dbg !2422
  %conv16.i602.i = trunc i32 %shr15.i601.i to i8, !dbg !2423
  store i8 %conv16.i602.i, ptr %arrayidx17.i603.i, align 1, !dbg !2424, !tbaa !904
  br label %WriteProfileLong.exit609.i, !dbg !2425

WriteProfileLong.exit609.i:                       ; preds = %if.end.i604.i, %if.then.i595.i
  %value.sink.i605.i = phi i32 [ %add154.i, %if.end.i604.i ], [ %shr6.i594.i, %if.then.i595.i ]
  %conv18.i606.i = trunc i32 %value.sink.i605.i to i8, !dbg !2401
  store i8 %conv18.i606.i, ptr %arrayidx19.i607.i, align 1, !dbg !2401, !tbaa !904
  %call21.i608.i = call ptr @CopyMagickMemory(ptr noundef %p.3.i, ptr noundef nonnull %buffer.i585.i, i64 noundef 4) #5, !dbg !2401
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i585.i) #5, !dbg !2425
  br label %for.inc.i, !dbg !2426

if.end156.i:                                      ; preds = %sw.bb150.i
  %73 = trunc i32 %72 to i16, !dbg !2427
  %conv159.i = add i16 %73, 1, !dbg !2427
  call void @llvm.dbg.value(metadata i32 2, metadata !1944, metadata !DIExpression()) #5, !dbg !2428
  call void @llvm.dbg.value(metadata i16 %conv159.i, metadata !1950, metadata !DIExpression()) #5, !dbg !2428
  call void @llvm.dbg.value(metadata ptr %p.3.i, metadata !1951, metadata !DIExpression()) #5, !dbg !2428
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i610.i) #5, !dbg !2430
  call void @llvm.dbg.declare(metadata ptr %buffer.i610.i, metadata !1952, metadata !DIExpression()) #5, !dbg !2431
  br i1 %cmp.i382721732735.i, label %if.then.i613.i, label %if.end.i615.i, !dbg !2432

if.then.i613.i:                                   ; preds = %if.end156.i
  %conv.i612.i = trunc i16 %conv159.i to i8, !dbg !2433
  store i8 %conv.i612.i, ptr %buffer.i610.i, align 1, !dbg !2434, !tbaa !904
  %74 = lshr i16 %conv159.i, 8, !dbg !2435
  br label %WriteProfileShort.exit620.i, !dbg !2436

if.end.i615.i:                                    ; preds = %if.end156.i
  %75 = lshr i16 %conv159.i, 8, !dbg !2437
  %conv6.i614.i = trunc i16 %75 to i8, !dbg !2438
  store i8 %conv6.i614.i, ptr %buffer.i610.i, align 1, !dbg !2439, !tbaa !904
  br label %WriteProfileShort.exit620.i, !dbg !2440

WriteProfileShort.exit620.i:                      ; preds = %if.end.i615.i, %if.then.i613.i
  %value.sink.i616.i = phi i16 [ %conv159.i, %if.end.i615.i ], [ %74, %if.then.i613.i ]
  %conv8.i617.i = trunc i16 %value.sink.i616.i to i8, !dbg !2428
  store i8 %conv8.i617.i, ptr %arrayidx9.i618.i, align 1, !dbg !2428, !tbaa !904
  %call11.i619.i = call ptr @CopyMagickMemory(ptr noundef %p.3.i, ptr noundef nonnull %buffer.i610.i, i64 noundef 2) #5, !dbg !2428
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i610.i) #5, !dbg !2440
  br label %for.inc.i, !dbg !2441

if.then165.i:                                     ; preds = %if.end134.i, %if.end134.i
  call void @llvm.dbg.value(metadata i32 2, metadata !1868, metadata !DIExpression()) #5, !dbg !2442
  call void @llvm.dbg.value(metadata ptr %p.3.i, metadata !1873, metadata !DIExpression()) #5, !dbg !2442
  br i1 %cmp.i382721732735.i, label %if.then.i633.i, label %if.end.i645.i, !dbg !2444

if.then.i633.i:                                   ; preds = %if.then165.i
  %arrayidx.i622.i = getelementptr inbounds i8, ptr %p.3.i, i64 3, !dbg !2445
  %76 = load i8, ptr %arrayidx.i622.i, align 1, !dbg !2445, !tbaa !904
  %conv.i623.i = zext i8 %76 to i64, !dbg !2445
  %shl.i624.i = shl nuw nsw i64 %conv.i623.i, 24, !dbg !2446
  %arrayidx1.i625.i = getelementptr inbounds i8, ptr %p.3.i, i64 2, !dbg !2447
  %77 = load i8, ptr %arrayidx1.i625.i, align 1, !dbg !2447, !tbaa !904
  %conv2.i626.i = zext i8 %77 to i64, !dbg !2447
  %shl3.i627.i = shl nuw nsw i64 %conv2.i626.i, 16, !dbg !2448
  %or.i628.i = or i64 %shl3.i627.i, %shl.i624.i, !dbg !2449
  %arrayidx4.i629.i = getelementptr inbounds i8, ptr %p.3.i, i64 1, !dbg !2450
  %78 = load i8, ptr %arrayidx4.i629.i, align 1, !dbg !2450, !tbaa !904
  %conv5.i630.i = zext i8 %78 to i64, !dbg !2450
  %shl6.i631.i = shl nuw nsw i64 %conv5.i630.i, 8, !dbg !2451
  %or7.i632.i = or i64 %or.i628.i, %shl6.i631.i, !dbg !2452
  call void @llvm.dbg.value(metadata i64 undef, metadata !1874, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #5, !dbg !2442
  br label %ReadProfileLong.exit650.i, !dbg !2453

if.end.i645.i:                                    ; preds = %if.then165.i
  %79 = load i8, ptr %p.3.i, align 1, !dbg !2454, !tbaa !904
  %conv13.i634.i = zext i8 %79 to i64, !dbg !2454
  %shl14.i635.i = shl nuw nsw i64 %conv13.i634.i, 24, !dbg !2455
  %arrayidx15.i636.i = getelementptr inbounds i8, ptr %p.3.i, i64 1, !dbg !2456
  %80 = load i8, ptr %arrayidx15.i636.i, align 1, !dbg !2456, !tbaa !904
  %conv16.i637.i = zext i8 %80 to i64, !dbg !2456
  %shl17.i638.i = shl nuw nsw i64 %conv16.i637.i, 16, !dbg !2457
  %or18.i639.i = or i64 %shl17.i638.i, %shl14.i635.i, !dbg !2458
  %arrayidx19.i640.i = getelementptr inbounds i8, ptr %p.3.i, i64 2, !dbg !2459
  %81 = load i8, ptr %arrayidx19.i640.i, align 1, !dbg !2459, !tbaa !904
  %conv20.i641.i = zext i8 %81 to i64, !dbg !2459
  %shl21.i642.i = shl nuw nsw i64 %conv20.i641.i, 8, !dbg !2460
  %or22.i643.i = or i64 %or18.i639.i, %shl21.i642.i, !dbg !2461
  %arrayidx23.i644.i = getelementptr inbounds i8, ptr %p.3.i, i64 3, !dbg !2462
  br label %ReadProfileLong.exit650.i, !dbg !2463

ReadProfileLong.exit650.i:                        ; preds = %if.end.i645.i, %if.then.i633.i
  %arrayidx23.sink.i646.i = phi ptr [ %arrayidx23.i644.i, %if.end.i645.i ], [ %p.3.i, %if.then.i633.i ]
  %or22.sink.i647.i = phi i64 [ %or22.i643.i, %if.end.i645.i ], [ %or7.i632.i, %if.then.i633.i ]
  %82 = load i8, ptr %arrayidx23.sink.i646.i, align 1, !dbg !2442, !tbaa !904
  %conv24.i648.i = zext i8 %82 to i64, !dbg !2442
  %or25.i649.i = or i64 %or22.sink.i647.i, %conv24.i648.i, !dbg !2442
  %sext336.i = shl i64 %or25.i649.i, 32, !dbg !2464
  %conv169.i = ashr exact i64 %sext336.i, 32, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %conv169.i, metadata !682, metadata !DIExpression()) #5, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %length.9.i, metadata !661, metadata !DIExpression()) #5, !dbg !2038
  %cmp170.i = icmp ult i64 %conv169.i, %length.9.i, !dbg !2466
  %cmp173.i = icmp slt i64 %level.1.i, 14
  %or.cond244.i = select i1 %cmp170.i, i1 %cmp173.i, i1 false, !dbg !2468
  br i1 %or.cond244.i, label %if.then175.i, label %do.cond.i, !dbg !2468

if.then175.i:                                     ; preds = %ReadProfileLong.exit650.i
  %arrayidx176.i = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %directory_stack.i, i64 0, i64 %level.1.i, !dbg !2469
  store ptr %directory.1.i, ptr %arrayidx176.i, align 16, !dbg !2471, !tbaa !2181
  %inc.i = add nuw i64 %entry1.2802.i, 1, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !660, metadata !DIExpression()) #5, !dbg !2038
  %entry179.i = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %directory_stack.i, i64 0, i64 %level.1.i, i32 1, !dbg !2473
  store i64 %inc.i, ptr %entry179.i, align 8, !dbg !2474, !tbaa !2184
  %inc180.i = add nsw i64 %level.1.i, 1, !dbg !2475
  call void @llvm.dbg.value(metadata i64 %inc180.i, metadata !665, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata ptr %exif.9.i, metadata !668, metadata !DIExpression()) #5, !dbg !2038
  %add.ptr181.i = getelementptr inbounds i8, ptr %exif.9.i, i64 %conv169.i, !dbg !2476
  %arrayidx182.i = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %directory_stack.i, i64 0, i64 %inc180.i, !dbg !2477
  store ptr %add.ptr181.i, ptr %arrayidx182.i, align 16, !dbg !2478, !tbaa !2181
  %entry185.i = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %directory_stack.i, i64 0, i64 %inc180.i, i32 1, !dbg !2479
  store i64 0, ptr %entry185.i, align 8, !dbg !2480, !tbaa !2184
  %inc186.i = add nsw i64 %level.1.i, 2, !dbg !2481
  call void @llvm.dbg.value(metadata i64 %inc186.i, metadata !665, metadata !DIExpression()) #5, !dbg !2038
  %mul188.i = mul nuw nsw i64 %or11.i406.i, 12, !dbg !2482
  %add.ptr189.i = getelementptr inbounds i8, ptr %add.ptr86.i, i64 %mul188.i, !dbg !2484
  call void @llvm.dbg.value(metadata i64 %length.9.i, metadata !661, metadata !DIExpression()) #5, !dbg !2038
  %cmp191.i = icmp ugt ptr %add.ptr189.i, %add.ptr190.i, !dbg !2485
  br i1 %cmp191.i, label %do.cond.i, label %if.end194.i, !dbg !2486

if.end194.i:                                      ; preds = %if.then175.i
  call void @llvm.dbg.value(metadata i32 2, metadata !1868, metadata !DIExpression()) #5, !dbg !2487
  call void @llvm.dbg.value(metadata ptr %add.ptr189.i, metadata !1873, metadata !DIExpression()) #5, !dbg !2487
  br i1 %cmp.i382721732735.i, label %if.then.i663.i, label %if.end.i675.i, !dbg !2489

if.then.i663.i:                                   ; preds = %if.end194.i
  %arrayidx.i652.i = getelementptr inbounds i8, ptr %add.ptr189.i, i64 3, !dbg !2490
  %83 = load i8, ptr %arrayidx.i652.i, align 1, !dbg !2490, !tbaa !904
  %conv.i653.i = zext i8 %83 to i64, !dbg !2490
  %shl.i654.i = shl nuw nsw i64 %conv.i653.i, 24, !dbg !2491
  %arrayidx1.i655.i = getelementptr inbounds i8, ptr %add.ptr189.i, i64 2, !dbg !2492
  %84 = load i8, ptr %arrayidx1.i655.i, align 1, !dbg !2492, !tbaa !904
  %conv2.i656.i = zext i8 %84 to i64, !dbg !2492
  %shl3.i657.i = shl nuw nsw i64 %conv2.i656.i, 16, !dbg !2493
  %or.i658.i = or i64 %shl3.i657.i, %shl.i654.i, !dbg !2494
  %arrayidx4.i659.i = getelementptr inbounds i8, ptr %add.ptr189.i, i64 1, !dbg !2495
  %85 = load i8, ptr %arrayidx4.i659.i, align 1, !dbg !2495, !tbaa !904
  %conv5.i660.i = zext i8 %85 to i64, !dbg !2495
  %shl6.i661.i = shl nuw nsw i64 %conv5.i660.i, 8, !dbg !2496
  %or7.i662.i = or i64 %or.i658.i, %shl6.i661.i, !dbg !2497
  call void @llvm.dbg.value(metadata i64 undef, metadata !1874, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #5, !dbg !2487
  br label %ReadProfileLong.exit680.i, !dbg !2498

if.end.i675.i:                                    ; preds = %if.end194.i
  %86 = load i8, ptr %add.ptr189.i, align 1, !dbg !2499, !tbaa !904
  %conv13.i664.i = zext i8 %86 to i64, !dbg !2499
  %shl14.i665.i = shl nuw nsw i64 %conv13.i664.i, 24, !dbg !2500
  %arrayidx15.i666.i = getelementptr inbounds i8, ptr %add.ptr189.i, i64 1, !dbg !2501
  %87 = load i8, ptr %arrayidx15.i666.i, align 1, !dbg !2501, !tbaa !904
  %conv16.i667.i = zext i8 %87 to i64, !dbg !2501
  %shl17.i668.i = shl nuw nsw i64 %conv16.i667.i, 16, !dbg !2502
  %or18.i669.i = or i64 %shl17.i668.i, %shl14.i665.i, !dbg !2503
  %arrayidx19.i670.i = getelementptr inbounds i8, ptr %add.ptr189.i, i64 2, !dbg !2504
  %88 = load i8, ptr %arrayidx19.i670.i, align 1, !dbg !2504, !tbaa !904
  %conv20.i671.i = zext i8 %88 to i64, !dbg !2504
  %shl21.i672.i = shl nuw nsw i64 %conv20.i671.i, 8, !dbg !2505
  %or22.i673.i = or i64 %or18.i669.i, %shl21.i672.i, !dbg !2506
  %arrayidx23.i674.i = getelementptr inbounds i8, ptr %add.ptr189.i, i64 3, !dbg !2507
  br label %ReadProfileLong.exit680.i, !dbg !2508

ReadProfileLong.exit680.i:                        ; preds = %if.end.i675.i, %if.then.i663.i
  %arrayidx23.sink.i676.i = phi ptr [ %arrayidx23.i674.i, %if.end.i675.i ], [ %add.ptr189.i, %if.then.i663.i ]
  %or22.sink.i677.i = phi i64 [ %or22.i673.i, %if.end.i675.i ], [ %or7.i662.i, %if.then.i663.i ]
  %89 = load i8, ptr %arrayidx23.sink.i676.i, align 1, !dbg !2487, !tbaa !904
  %conv24.i678.i = zext i8 %89 to i64, !dbg !2487
  %or25.i679.i = or i64 %or22.sink.i677.i, %conv24.i678.i, !dbg !2487
  %sext337.i = shl i64 %or25.i679.i, 32, !dbg !2509
  %conv200.i = ashr exact i64 %sext337.i, 32, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %conv200.i, metadata !682, metadata !DIExpression()) #5, !dbg !2465
  %cmp201.not.i = icmp eq i64 %sext337.i, 0, !dbg !2510
  br i1 %cmp201.not.i, label %do.cond.i, label %land.lhs.true203.i, !dbg !2512

land.lhs.true203.i:                               ; preds = %ReadProfileLong.exit680.i
  call void @llvm.dbg.value(metadata i64 %length.9.i, metadata !661, metadata !DIExpression()) #5, !dbg !2038
  %cmp204.i = icmp ult i64 %conv200.i, %length.9.i, !dbg !2513
  %cmp207.i = icmp slt i64 %level.1.i, 12
  %or.cond245.i = select i1 %cmp204.i, i1 %cmp207.i, i1 false, !dbg !2514
  br i1 %or.cond245.i, label %if.then209.i, label %do.cond.i, !dbg !2514

if.then209.i:                                     ; preds = %land.lhs.true203.i
  call void @llvm.dbg.value(metadata ptr %exif.9.i, metadata !668, metadata !DIExpression()) #5, !dbg !2038
  %add.ptr210.i = getelementptr inbounds i8, ptr %exif.9.i, i64 %conv200.i, !dbg !2515
  %arrayidx211.i = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %directory_stack.i, i64 0, i64 %inc186.i, !dbg !2517
  store ptr %add.ptr210.i, ptr %arrayidx211.i, align 16, !dbg !2518, !tbaa !2181
  %entry214.i = getelementptr inbounds [16 x %struct._DirectoryInfo], ptr %directory_stack.i, i64 0, i64 %inc186.i, i32 1, !dbg !2519
  store i64 0, ptr %entry214.i, align 8, !dbg !2520, !tbaa !2184
  %inc215.i = add nsw i64 %level.1.i, 3, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %inc215.i, metadata !665, metadata !DIExpression()) #5, !dbg !2038
  br label %do.cond.i, !dbg !2522

for.inc.i:                                        ; preds = %WriteProfileShort.exit620.i, %WriteProfileLong.exit609.i, %WriteProfileShort.exit.i, %WriteProfileLong.exit577.i, %WriteProfileLong.exit552.i, %WriteProfileLong.exit514.i, %if.end134.i, %ReadProfileLong.exit493.i
  call void @llvm.dbg.value(metadata i64 undef, metadata !660, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %level.1.i, metadata !665, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata ptr undef, metadata !669, metadata !DIExpression()) #5, !dbg !2173
  %inc228.i = add nsw i64 %entry1.2802.i, 1, !dbg !2523
  call void @llvm.dbg.value(metadata i64 %inc228.i, metadata !660, metadata !DIExpression()) #5, !dbg !2038
  %exitcond.not.i = icmp eq i64 %inc228.i, %or11.i406.i, !dbg !2188
  br i1 %exitcond.not.i, label %do.cond.i, label %for.body.i, !dbg !2189, !llvm.loop !2524

do.cond.i:                                        ; preds = %for.inc.i, %ReadProfileLong.exit463.i, %ReadProfileShort.exit433.thread.i, %ReadProfileShort.exit433.i, %for.body.i, %if.then209.i, %land.lhs.true203.i, %ReadProfileLong.exit680.i, %if.then175.i, %ReadProfileLong.exit650.i, %if.end81.i
  %level.6.i = phi i64 [ %inc186.i, %if.then175.i ], [ %inc186.i, %ReadProfileLong.exit680.i ], [ %inc186.i, %land.lhs.true203.i ], [ %inc215.i, %if.then209.i ], [ %level.1.i, %ReadProfileLong.exit650.i ], [ %level.1.i, %if.end81.i ], [ %level.1.i, %for.body.i ], [ %level.1.i, %ReadProfileShort.exit433.i ], [ %level.1.i, %ReadProfileShort.exit433.thread.i ], [ %level.1.i, %ReadProfileLong.exit463.i ], [ %level.1.i, %for.inc.i ], !dbg !2177
  %entry1.6.i = phi i64 [ %inc.i, %if.then175.i ], [ %inc.i, %ReadProfileLong.exit680.i ], [ %inc.i, %land.lhs.true203.i ], [ %inc.i, %if.then209.i ], [ %entry1.2802.i, %ReadProfileLong.exit650.i ], [ %entry1.1.i, %if.end81.i ], [ %or11.i406.i, %for.inc.i ], [ %entry1.2802.i, %ReadProfileLong.exit463.i ], [ %entry1.2802.i, %ReadProfileShort.exit433.thread.i ], [ %entry1.2802.i, %ReadProfileShort.exit433.i ], [ %entry1.2802.i, %for.body.i ], !dbg !2526
  call void @llvm.dbg.value(metadata i64 %entry1.6.i, metadata !660, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %level.6.i, metadata !665, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata ptr undef, metadata !669, metadata !DIExpression()) #5, !dbg !2173
  %cmp229.i = icmp sgt i64 %level.6.i, 0, !dbg !2527
  br i1 %cmp229.i, label %do.body.i, label %SyncExifProfile.exit, !dbg !2528, !llvm.loop !2529

SyncExifProfile.exit:                             ; preds = %do.cond.i
  %call231.i = call ptr @DestroySplayTree(ptr noundef %call74.i) #5, !dbg !2531
  call void @llvm.dbg.value(metadata ptr %call231.i, metadata !663, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %directory_stack.i) #5, !dbg !2532
  br label %if.end12, !dbg !2533

.loopexit:                                        ; preds = %while.cond.loopexit.i, %if.end35.i, %if.end15.i45, %if.end20.i, %if.end25.i, %if.end30.i, %if.then7, %while.end.i, %if.end47.i, %ReadProfileShort.exit.i, %ReadProfileLong.exit.i, %ReadProfileShort.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %directory_stack.i) #5, !dbg !2532
  br label %if.end12, !dbg !2533

if.end12:                                         ; preds = %.loopexit, %SyncExifProfile.exit, %GetImageProfile.exit37.thread, %GetImageProfile.exit37
  %status.1 = phi i32 [ %status.0, %GetImageProfile.exit37 ], [ %status.0, %GetImageProfile.exit37.thread ], [ 0, %.loopexit ], [ %status.0, %SyncExifProfile.exit ], !dbg !1736
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !1734, metadata !DIExpression()), !dbg !1736
  ret i32 %status.1, !dbg !2534
}

declare !dbg !2535 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

declare !dbg !2538 i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #2

declare !dbg !2541 i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2544 ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2547 i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2550 ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @DestroyProfile(ptr noundef %profile) #0 !dbg !2553 {
entry:
  call void @llvm.dbg.value(metadata ptr %profile, metadata !2555, metadata !DIExpression()), !dbg !2556
  %call = tail call ptr @DestroyStringInfo(ptr noundef %profile) #5, !dbg !2557
  ret ptr %call, !dbg !2558
}

declare !dbg !2559 void @LocaleLower(ptr noundef) local_unnamed_addr #2

declare !dbg !2562 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!602}
!llvm.module.flags = !{!688, !689, !690, !691, !692, !693}
!llvm.ident = !{!694}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "format_bytes", scope: !2, file: !3, line: 1723, type: !685, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "SyncExifProfile", scope: !3, file: !3, line: 1686, type: !4, scopeLine: 1687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !647)
!3 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb24c617afe63046ef3ae64fe59efd91")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !13, !593}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !7, line: 215, baseType: !8)
!7 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 211, baseType: !9, size: 32, elements: !10)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "MagickFalse", value: 0)
!12 = !DIEnumerator(name: "MagickTrue", value: 1)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !7, line: 221, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !16, line: 150, size: 105920, elements: !17)
!16 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!17 = !{!18, !25, !64, !91, !95, !108, !109, !110, !111, !112, !113, !114, !126, !127, !128, !129, !131, !145, !155, !157, !164, !167, !168, !169, !175, !176, !177, !186, !187, !188, !189, !190, !191, !228, !240, !248, !264, !337, !347, !349, !350, !351, !352, !353, !354, !355, !363, !384, !398, !399, !400, !401, !405, !409, !413, !414, !415, !416, !417, !508, !509, !511, !512, !522, !523, !525, !526, !527, !528, !529, !530, !548, !549, !550, !551, !552, !553, !554, !570, !571, !572, !573, !574, !578, !592}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !15, file: !16, line: 153, baseType: !19, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !7, line: 209, baseType: !20)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 204, baseType: !9, size: 32, elements: !21)
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "UndefinedClass", value: 0)
!23 = !DIEnumerator(name: "DirectClass", value: 1)
!24 = !DIEnumerator(name: "PseudoClass", value: 2)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !15, file: !16, line: 156, baseType: !26, size: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !27, line: 61, baseType: !28)
!27 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 25, baseType: !9, size: 32, elements: !29)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!30 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!31 = !DIEnumerator(name: "RGBColorspace", value: 1)
!32 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!33 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!34 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!35 = !DIEnumerator(name: "LabColorspace", value: 5)
!36 = !DIEnumerator(name: "XYZColorspace", value: 6)
!37 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!38 = !DIEnumerator(name: "YCCColorspace", value: 8)
!39 = !DIEnumerator(name: "YIQColorspace", value: 9)
!40 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!41 = !DIEnumerator(name: "YUVColorspace", value: 11)
!42 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!43 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!44 = !DIEnumerator(name: "HSBColorspace", value: 14)
!45 = !DIEnumerator(name: "HSLColorspace", value: 15)
!46 = !DIEnumerator(name: "HWBColorspace", value: 16)
!47 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!48 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!49 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!50 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!51 = !DIEnumerator(name: "LogColorspace", value: 21)
!52 = !DIEnumerator(name: "CMYColorspace", value: 22)
!53 = !DIEnumerator(name: "LuvColorspace", value: 23)
!54 = !DIEnumerator(name: "HCLColorspace", value: 24)
!55 = !DIEnumerator(name: "LCHColorspace", value: 25)
!56 = !DIEnumerator(name: "LMSColorspace", value: 26)
!57 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!58 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!59 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!60 = !DIEnumerator(name: "HSIColorspace", value: 30)
!61 = !DIEnumerator(name: "HSVColorspace", value: 31)
!62 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!63 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !15, file: !16, line: 159, baseType: !65, size: 32, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !66, line: 49, baseType: !67)
!66 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !66, line: 25, baseType: !9, size: 32, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!69 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!70 = !DIEnumerator(name: "NoCompression", value: 1)
!71 = !DIEnumerator(name: "BZipCompression", value: 2)
!72 = !DIEnumerator(name: "DXT1Compression", value: 3)
!73 = !DIEnumerator(name: "DXT3Compression", value: 4)
!74 = !DIEnumerator(name: "DXT5Compression", value: 5)
!75 = !DIEnumerator(name: "FaxCompression", value: 6)
!76 = !DIEnumerator(name: "Group4Compression", value: 7)
!77 = !DIEnumerator(name: "JPEGCompression", value: 8)
!78 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!79 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!80 = !DIEnumerator(name: "LZWCompression", value: 11)
!81 = !DIEnumerator(name: "RLECompression", value: 12)
!82 = !DIEnumerator(name: "ZipCompression", value: 13)
!83 = !DIEnumerator(name: "ZipSCompression", value: 14)
!84 = !DIEnumerator(name: "PizCompression", value: 15)
!85 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!86 = !DIEnumerator(name: "B44Compression", value: 17)
!87 = !DIEnumerator(name: "B44ACompression", value: 18)
!88 = !DIEnumerator(name: "LZMACompression", value: 19)
!89 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!90 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !15, file: !16, line: 162, baseType: !92, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 46, baseType: !94)
!93 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!94 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !15, file: !16, line: 165, baseType: !96, size: 32, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !16, line: 86, baseType: !97)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 75, baseType: !9, size: 32, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107}
!99 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!100 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!101 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!102 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!103 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!104 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!105 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!106 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!107 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !15, file: !16, line: 168, baseType: !6, size: 32, offset: 224)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !15, file: !16, line: 169, baseType: !6, size: 32, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !15, file: !16, line: 172, baseType: !92, size: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !15, file: !16, line: 173, baseType: !92, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !15, file: !16, line: 174, baseType: !92, size: 64, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !15, file: !16, line: 175, baseType: !92, size: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !15, file: !16, line: 178, baseType: !115, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !117, line: 148, baseType: !118)
!117 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !117, line: 131, size: 64, elements: !119)
!119 = !{!120, !123, !124, !125}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !118, file: !117, line: 143, baseType: !121, size: 16)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !7, line: 93, baseType: !122)
!122 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !118, file: !117, line: 144, baseType: !121, size: 16, offset: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !118, file: !117, line: 145, baseType: !121, size: 16, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !118, file: !117, line: 146, baseType: !121, size: 16, offset: 48)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !15, file: !16, line: 179, baseType: !116, size: 64, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !15, file: !16, line: 180, baseType: !116, size: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !15, file: !16, line: 181, baseType: !116, size: 64, offset: 768)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !15, file: !16, line: 184, baseType: !130, size: 64, offset: 832)
!130 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !15, file: !16, line: 187, baseType: !132, size: 768, offset: 896)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !16, line: 128, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !16, line: 121, size: 768, elements: !134)
!134 = !{!135, !142, !143, !144}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !133, file: !16, line: 124, baseType: !136, size: 192)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !16, line: 101, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !16, line: 95, size: 192, elements: !138)
!138 = !{!139, !140, !141}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !137, file: !16, line: 98, baseType: !130, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !137, file: !16, line: 99, baseType: !130, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !137, file: !16, line: 100, baseType: !130, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !133, file: !16, line: 125, baseType: !136, size: 192, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !133, file: !16, line: 126, baseType: !136, size: 192, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !133, file: !16, line: 127, baseType: !136, size: 192, offset: 576)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !15, file: !16, line: 190, baseType: !146, size: 32, offset: 1664)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !147, line: 49, baseType: !148)
!147 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 42, baseType: !9, size: 32, elements: !149)
!149 = !{!150, !151, !152, !153, !154}
!150 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!151 = !DIEnumerator(name: "SaturationIntent", value: 1)
!152 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!153 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!154 = !DIEnumerator(name: "RelativeIntent", value: 4)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !15, file: !16, line: 193, baseType: !156, size: 64, offset: 1728)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !15, file: !16, line: 196, baseType: !158, size: 32, offset: 1792)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !16, line: 93, baseType: !159)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 88, baseType: !9, size: 32, elements: !160)
!160 = !{!161, !162, !163}
!161 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!162 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!163 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !15, file: !16, line: 199, baseType: !165, size: 64, offset: 1856)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !15, file: !16, line: 200, baseType: !165, size: 64, offset: 1920)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !15, file: !16, line: 201, baseType: !165, size: 64, offset: 1984)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !15, file: !16, line: 204, baseType: !170, size: 64, offset: 2048)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !171, line: 77, baseType: !172)
!171 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !173, line: 193, baseType: !174)
!173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!174 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !15, file: !16, line: 207, baseType: !130, size: 64, offset: 2112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !15, file: !16, line: 208, baseType: !130, size: 64, offset: 2176)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !15, file: !16, line: 211, baseType: !178, size: 256, offset: 2240)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !179, line: 130, baseType: !180)
!179 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !179, line: 121, size: 256, elements: !181)
!181 = !{!182, !183, !184, !185}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !180, file: !179, line: 124, baseType: !92, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !180, file: !179, line: 125, baseType: !92, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !180, file: !179, line: 128, baseType: !170, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !180, file: !179, line: 129, baseType: !170, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !15, file: !16, line: 212, baseType: !178, size: 256, offset: 2496)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !15, file: !16, line: 213, baseType: !178, size: 256, offset: 2752)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !15, file: !16, line: 216, baseType: !130, size: 64, offset: 3008)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !15, file: !16, line: 217, baseType: !130, size: 64, offset: 3072)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !15, file: !16, line: 218, baseType: !130, size: 64, offset: 3136)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !15, file: !16, line: 221, baseType: !192, size: 32, offset: 3200)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !193, line: 66, baseType: !194)
!193 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !193, line: 32, baseType: !9, size: 32, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227}
!196 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!197 = !DIEnumerator(name: "PointFilter", value: 1)
!198 = !DIEnumerator(name: "BoxFilter", value: 2)
!199 = !DIEnumerator(name: "TriangleFilter", value: 3)
!200 = !DIEnumerator(name: "HermiteFilter", value: 4)
!201 = !DIEnumerator(name: "HanningFilter", value: 5)
!202 = !DIEnumerator(name: "HammingFilter", value: 6)
!203 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!204 = !DIEnumerator(name: "GaussianFilter", value: 8)
!205 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!206 = !DIEnumerator(name: "CubicFilter", value: 10)
!207 = !DIEnumerator(name: "CatromFilter", value: 11)
!208 = !DIEnumerator(name: "MitchellFilter", value: 12)
!209 = !DIEnumerator(name: "JincFilter", value: 13)
!210 = !DIEnumerator(name: "SincFilter", value: 14)
!211 = !DIEnumerator(name: "SincFastFilter", value: 15)
!212 = !DIEnumerator(name: "KaiserFilter", value: 16)
!213 = !DIEnumerator(name: "WelshFilter", value: 17)
!214 = !DIEnumerator(name: "ParzenFilter", value: 18)
!215 = !DIEnumerator(name: "BohmanFilter", value: 19)
!216 = !DIEnumerator(name: "BartlettFilter", value: 20)
!217 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!218 = !DIEnumerator(name: "LanczosFilter", value: 22)
!219 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!220 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!221 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!222 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!223 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!224 = !DIEnumerator(name: "CosineFilter", value: 28)
!225 = !DIEnumerator(name: "SplineFilter", value: 29)
!226 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!227 = !DIEnumerator(name: "SentinelFilter", value: 31)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !15, file: !16, line: 224, baseType: !229, size: 32, offset: 3232)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !16, line: 73, baseType: !230)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 63, baseType: !9, size: 32, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239}
!232 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!233 = !DIEnumerator(name: "NoInterlace", value: 1)
!234 = !DIEnumerator(name: "LineInterlace", value: 2)
!235 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!236 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!237 = !DIEnumerator(name: "GIFInterlace", value: 5)
!238 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!239 = !DIEnumerator(name: "PNGInterlace", value: 7)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !15, file: !16, line: 227, baseType: !241, size: 32, offset: 3264)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !242, line: 35, baseType: !243)
!242 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !242, line: 30, baseType: !9, size: 32, elements: !244)
!244 = !{!245, !246, !247}
!245 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!246 = !DIEnumerator(name: "LSBEndian", value: 1)
!247 = !DIEnumerator(name: "MSBEndian", value: 2)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !15, file: !16, line: 230, baseType: !249, size: 32, offset: 3296)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !179, line: 91, baseType: !250)
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !179, line: 77, baseType: !9, size: 32, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!252 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!253 = !DIEnumerator(name: "ForgetGravity", value: 0)
!254 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!255 = !DIEnumerator(name: "NorthGravity", value: 2)
!256 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!257 = !DIEnumerator(name: "WestGravity", value: 4)
!258 = !DIEnumerator(name: "CenterGravity", value: 5)
!259 = !DIEnumerator(name: "EastGravity", value: 6)
!260 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!261 = !DIEnumerator(name: "SouthGravity", value: 8)
!262 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!263 = !DIEnumerator(name: "StaticGravity", value: 10)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !15, file: !16, line: 233, baseType: !265, size: 32, offset: 3328)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !266, line: 99, baseType: !267)
!266 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !266, line: 25, baseType: !9, size: 32, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!269 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!270 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!271 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!272 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!273 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!274 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!275 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!276 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!277 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!278 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!279 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!280 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!281 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!282 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!283 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!284 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!285 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!286 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!287 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!288 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!289 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!290 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!291 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!292 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!293 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!294 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!295 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!296 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!297 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!298 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!299 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!300 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!301 = !DIEnumerator(name: "InCompositeOp", value: 32)
!302 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!303 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!304 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!305 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!306 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!307 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!308 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!309 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!310 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!311 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!312 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!313 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!314 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!315 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!316 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!317 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!318 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!319 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!320 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!321 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!322 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!323 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!324 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!325 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!326 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!327 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!328 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!329 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!330 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!331 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!332 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!333 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!334 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!335 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!336 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !15, file: !16, line: 236, baseType: !338, size: 32, offset: 3360)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !339, line: 32, baseType: !340)
!339 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !339, line: 25, baseType: !9, size: 32, elements: !341)
!341 = !{!342, !343, !344, !345, !346}
!342 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!343 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!344 = !DIEnumerator(name: "NoneDispose", value: 1)
!345 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!346 = !DIEnumerator(name: "PreviousDispose", value: 3)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !15, file: !16, line: 239, baseType: !348, size: 64, offset: 3392)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !15, file: !16, line: 242, baseType: !92, size: 64, offset: 3456)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !15, file: !16, line: 243, baseType: !92, size: 64, offset: 3520)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !15, file: !16, line: 246, baseType: !170, size: 64, offset: 3584)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !15, file: !16, line: 249, baseType: !92, size: 64, offset: 3648)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !15, file: !16, line: 250, baseType: !92, size: 64, offset: 3712)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !15, file: !16, line: 253, baseType: !170, size: 64, offset: 3776)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !15, file: !16, line: 256, baseType: !356, size: 192, offset: 3840)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !357, line: 68, baseType: !358)
!357 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !357, line: 62, size: 192, elements: !359)
!359 = !{!360, !361, !362}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !358, file: !357, line: 65, baseType: !130, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !358, file: !357, line: 66, baseType: !130, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !358, file: !357, line: 67, baseType: !130, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !15, file: !16, line: 259, baseType: !364, size: 512, offset: 4032)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !365, line: 51, baseType: !366)
!365 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !365, line: 40, size: 512, elements: !367)
!367 = !{!368, !375, !376, !383}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !366, file: !365, line: 43, baseType: !369, size: 192)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !365, line: 38, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !365, line: 32, size: 192, elements: !371)
!371 = !{!372, !373, !374}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !370, file: !365, line: 35, baseType: !130, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !370, file: !365, line: 36, baseType: !130, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !370, file: !365, line: 37, baseType: !130, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !366, file: !365, line: 44, baseType: !369, size: 192, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !365, line: 47, baseType: !377, size: 32, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !365, line: 30, baseType: !378)
!378 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !365, line: 25, baseType: !9, size: 32, elements: !379)
!379 = !{!380, !381, !382}
!380 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!381 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!382 = !DIEnumerator(name: "RunningTimerState", value: 2)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !366, file: !365, line: 50, baseType: !92, size: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !15, file: !16, line: 262, baseType: !385, size: 64, offset: 4544)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !386, line: 26, baseType: !387)
!386 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!6, !390, !392, !395, !156}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !7, line: 150, baseType: !394)
!394 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !7, line: 151, baseType: !397)
!397 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !15, file: !16, line: 265, baseType: !156, size: 64, offset: 4608)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !15, file: !16, line: 266, baseType: !156, size: 64, offset: 4672)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !15, file: !16, line: 267, baseType: !156, size: 64, offset: 4736)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !15, file: !16, line: 270, baseType: !402, size: 64, offset: 4800)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !66, line: 52, baseType: !404)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !66, line: 51, flags: DIFlagFwdDecl)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !15, file: !16, line: 273, baseType: !406, size: 64, offset: 4864)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !7, line: 217, baseType: !408)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !7, line: 217, flags: DIFlagFwdDecl)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !15, file: !16, line: 276, baseType: !410, size: 32768, offset: 4928)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 32768, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 4096)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !15, file: !16, line: 277, baseType: !410, size: 32768, offset: 37696)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !15, file: !16, line: 278, baseType: !410, size: 32768, offset: 70464)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !15, file: !16, line: 281, baseType: !92, size: 64, offset: 103232)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !15, file: !16, line: 282, baseType: !92, size: 64, offset: 103296)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !15, file: !16, line: 285, baseType: !418, size: 448, offset: 103360)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !7, line: 219, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !420, line: 102, size: 448, elements: !421)
!420 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!421 = !{!422, !496, !498, !499, !500, !501, !502, !507}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !419, file: !420, line: 105, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !420, line: 100, baseType: !424)
!424 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !420, line: 28, baseType: !9, size: 32, elements: !425)
!425 = !{!426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495}
!426 = !DIEnumerator(name: "UndefinedException", value: 0)
!427 = !DIEnumerator(name: "WarningException", value: 300)
!428 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!429 = !DIEnumerator(name: "TypeWarning", value: 305)
!430 = !DIEnumerator(name: "OptionWarning", value: 310)
!431 = !DIEnumerator(name: "DelegateWarning", value: 315)
!432 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!433 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!434 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!435 = !DIEnumerator(name: "BlobWarning", value: 335)
!436 = !DIEnumerator(name: "StreamWarning", value: 340)
!437 = !DIEnumerator(name: "CacheWarning", value: 345)
!438 = !DIEnumerator(name: "CoderWarning", value: 350)
!439 = !DIEnumerator(name: "FilterWarning", value: 352)
!440 = !DIEnumerator(name: "ModuleWarning", value: 355)
!441 = !DIEnumerator(name: "DrawWarning", value: 360)
!442 = !DIEnumerator(name: "ImageWarning", value: 365)
!443 = !DIEnumerator(name: "WandWarning", value: 370)
!444 = !DIEnumerator(name: "RandomWarning", value: 375)
!445 = !DIEnumerator(name: "XServerWarning", value: 380)
!446 = !DIEnumerator(name: "MonitorWarning", value: 385)
!447 = !DIEnumerator(name: "RegistryWarning", value: 390)
!448 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!449 = !DIEnumerator(name: "PolicyWarning", value: 399)
!450 = !DIEnumerator(name: "ErrorException", value: 400)
!451 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!452 = !DIEnumerator(name: "TypeError", value: 405)
!453 = !DIEnumerator(name: "OptionError", value: 410)
!454 = !DIEnumerator(name: "DelegateError", value: 415)
!455 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!456 = !DIEnumerator(name: "CorruptImageError", value: 425)
!457 = !DIEnumerator(name: "FileOpenError", value: 430)
!458 = !DIEnumerator(name: "BlobError", value: 435)
!459 = !DIEnumerator(name: "StreamError", value: 440)
!460 = !DIEnumerator(name: "CacheError", value: 445)
!461 = !DIEnumerator(name: "CoderError", value: 450)
!462 = !DIEnumerator(name: "FilterError", value: 452)
!463 = !DIEnumerator(name: "ModuleError", value: 455)
!464 = !DIEnumerator(name: "DrawError", value: 460)
!465 = !DIEnumerator(name: "ImageError", value: 465)
!466 = !DIEnumerator(name: "WandError", value: 470)
!467 = !DIEnumerator(name: "RandomError", value: 475)
!468 = !DIEnumerator(name: "XServerError", value: 480)
!469 = !DIEnumerator(name: "MonitorError", value: 485)
!470 = !DIEnumerator(name: "RegistryError", value: 490)
!471 = !DIEnumerator(name: "ConfigureError", value: 495)
!472 = !DIEnumerator(name: "PolicyError", value: 499)
!473 = !DIEnumerator(name: "FatalErrorException", value: 700)
!474 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!475 = !DIEnumerator(name: "TypeFatalError", value: 705)
!476 = !DIEnumerator(name: "OptionFatalError", value: 710)
!477 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!478 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!479 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!480 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!481 = !DIEnumerator(name: "BlobFatalError", value: 735)
!482 = !DIEnumerator(name: "StreamFatalError", value: 740)
!483 = !DIEnumerator(name: "CacheFatalError", value: 745)
!484 = !DIEnumerator(name: "CoderFatalError", value: 750)
!485 = !DIEnumerator(name: "FilterFatalError", value: 752)
!486 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!487 = !DIEnumerator(name: "DrawFatalError", value: 760)
!488 = !DIEnumerator(name: "ImageFatalError", value: 765)
!489 = !DIEnumerator(name: "WandFatalError", value: 770)
!490 = !DIEnumerator(name: "RandomFatalError", value: 775)
!491 = !DIEnumerator(name: "XServerFatalError", value: 780)
!492 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!493 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!494 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!495 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !419, file: !420, line: 108, baseType: !497, size: 32, offset: 32)
!497 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !419, file: !420, line: 111, baseType: !165, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !419, file: !420, line: 112, baseType: !165, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !419, file: !420, line: 115, baseType: !156, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !419, file: !420, line: 118, baseType: !6, size: 32, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !419, file: !420, line: 121, baseType: !503, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !505, line: 26, baseType: !506)
!505 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !505, line: 25, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !419, file: !420, line: 124, baseType: !92, size: 64, offset: 384)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !15, file: !16, line: 288, baseType: !6, size: 32, offset: 103808)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !15, file: !16, line: 291, baseType: !510, size: 64, offset: 103872)
!510 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !170)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !15, file: !16, line: 294, baseType: !503, size: 64, offset: 103936)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !15, file: !16, line: 297, baseType: !513, size: 256, offset: 104000)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !147, line: 40, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !147, line: 27, size: 256, elements: !515)
!515 = !{!516, !517, !518, !521}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !514, file: !147, line: 30, baseType: !165, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !514, file: !147, line: 33, baseType: !92, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !514, file: !147, line: 36, baseType: !519, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !514, file: !147, line: 39, baseType: !92, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !15, file: !16, line: 298, baseType: !513, size: 256, offset: 104256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !15, file: !16, line: 299, baseType: !524, size: 64, offset: 104512)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !15, file: !16, line: 302, baseType: !92, size: 64, offset: 104576)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !15, file: !16, line: 305, baseType: !92, size: 64, offset: 104640)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !15, file: !16, line: 308, baseType: !348, size: 64, offset: 104704)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !15, file: !16, line: 309, baseType: !348, size: 64, offset: 104768)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !15, file: !16, line: 310, baseType: !348, size: 64, offset: 104832)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !15, file: !16, line: 313, baseType: !531, size: 32, offset: 104896)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !117, line: 47, baseType: !532)
!532 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 31, baseType: !9, size: 32, elements: !533)
!533 = !{!534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547}
!534 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!535 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!536 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!537 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!538 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!539 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!540 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!541 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!542 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!543 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!544 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!545 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!546 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!547 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !15, file: !16, line: 316, baseType: !6, size: 32, offset: 104928)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !15, file: !16, line: 319, baseType: !116, size: 64, offset: 104960)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !15, file: !16, line: 322, baseType: !348, size: 64, offset: 105024)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !15, file: !16, line: 325, baseType: !178, size: 256, offset: 105088)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !15, file: !16, line: 328, baseType: !156, size: 64, offset: 105344)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !15, file: !16, line: 329, baseType: !156, size: 64, offset: 105408)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !15, file: !16, line: 332, baseType: !555, size: 32, offset: 105472)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !16, line: 61, baseType: !556)
!556 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 47, baseType: !9, size: 32, elements: !557)
!557 = !{!558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569}
!558 = !DIEnumerator(name: "UndefinedType", value: 0)
!559 = !DIEnumerator(name: "BilevelType", value: 1)
!560 = !DIEnumerator(name: "GrayscaleType", value: 2)
!561 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!562 = !DIEnumerator(name: "PaletteType", value: 4)
!563 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!564 = !DIEnumerator(name: "TrueColorType", value: 6)
!565 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!566 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!567 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!568 = !DIEnumerator(name: "OptimizeType", value: 10)
!569 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !15, file: !16, line: 335, baseType: !6, size: 32, offset: 105504)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !15, file: !16, line: 338, baseType: !396, size: 64, offset: 105536)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !15, file: !16, line: 341, baseType: !6, size: 32, offset: 105600)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !15, file: !16, line: 344, baseType: !92, size: 64, offset: 105664)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !15, file: !16, line: 347, baseType: !575, size: 64, offset: 105728)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !576, line: 7, baseType: !577)
!576 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !173, line: 160, baseType: !174)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !15, file: !16, line: 350, baseType: !579, size: 32, offset: 105792)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !117, line: 79, baseType: !580)
!580 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 67, baseType: !9, size: 32, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590, !591}
!582 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!583 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!584 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!585 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!586 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!587 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!588 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!589 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!590 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!591 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !15, file: !16, line: 353, baseType: !92, size: 64, offset: 105856)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !595, line: 40, baseType: !596)
!595 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !595, line: 29, size: 32960, elements: !597)
!597 = !{!598, !599, !600, !601}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !596, file: !595, line: 32, baseType: !410, size: 32768)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !596, file: !595, line: 35, baseType: !519, size: 64, offset: 32768)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !596, file: !595, line: 38, baseType: !92, size: 64, offset: 32832)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !596, file: !595, line: 39, baseType: !92, size: 64, offset: 32896)
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !604, retainedTypes: !630, globals: !646, splitDebugInlining: false, nameTableKind: None)
!603 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/profile.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "fb24c617afe63046ef3ae64fe59efd91")
!604 = !{!8, !20, !28, !67, !97, !148, !159, !194, !230, !243, !250, !267, !340, !378, !424, !532, !556, !580, !605}
!605 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !606, line: 34, baseType: !9, size: 32, elements: !607)
!606 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629}
!608 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!609 = !DIEnumerator(name: "NoEvents", value: 0)
!610 = !DIEnumerator(name: "TraceEvent", value: 1)
!611 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!612 = !DIEnumerator(name: "BlobEvent", value: 4)
!613 = !DIEnumerator(name: "CacheEvent", value: 8)
!614 = !DIEnumerator(name: "CoderEvent", value: 16)
!615 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!616 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!617 = !DIEnumerator(name: "DrawEvent", value: 128)
!618 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!619 = !DIEnumerator(name: "ImageEvent", value: 512)
!620 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!621 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!622 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!623 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!624 = !DIEnumerator(name: "TransformEvent", value: 16384)
!625 = !DIEnumerator(name: "UserEvent", value: 36864)
!626 = !DIEnumerator(name: "WandEvent", value: 65536)
!627 = !DIEnumerator(name: "X11Event", value: 131072)
!628 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!629 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!630 = !{!94, !156, !631, !635, !519, !593, !638, !165, !640, !642, !390, !170, !92, !122, !520, !130, !158, !9, !497, !643}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "SplayTreeInfo", file: !633, line: 26, baseType: !634)
!633 = !DIFile(filename: "apps/538.imagick_r/src/magick/splay-tree.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9016e3627c0f26bd31d286f50189c16b")
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SplayTreeInfo", file: !633, line: 25, flags: DIFlagFwdDecl)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!156, !156}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!497, !640, !640}
!646 = !{!0}
!647 = !{!648, !649, !650, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !674, !675, !676, !677, !678, !679, !682}
!648 = !DILocalVariable(name: "image", arg: 1, scope: !2, file: !3, line: 1686, type: !13)
!649 = !DILocalVariable(name: "profile", arg: 2, scope: !2, file: !3, line: 1686, type: !593)
!650 = !DILocalVariable(name: "directory_stack", scope: !2, file: !3, line: 1704, type: !651)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 2048, elements: !657)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "DirectoryInfo", scope: !2, file: !3, line: 1701, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DirectoryInfo", scope: !2, file: !3, line: 1694, size: 128, elements: !654)
!654 = !{!655, !656}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !653, file: !3, line: 1697, baseType: !519, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !653, file: !3, line: 1700, baseType: !92, size: 64, offset: 64)
!657 = !{!658}
!658 = !DISubrange(count: 16)
!659 = !DILocalVariable(name: "endian", scope: !2, file: !3, line: 1707, type: !241)
!660 = !DILocalVariable(name: "entry", scope: !2, file: !3, line: 1710, type: !92)
!661 = !DILocalVariable(name: "length", scope: !2, file: !3, line: 1711, type: !92)
!662 = !DILocalVariable(name: "number_entries", scope: !2, file: !3, line: 1712, type: !92)
!663 = !DILocalVariable(name: "exif_resources", scope: !2, file: !3, line: 1715, type: !631)
!664 = !DILocalVariable(name: "id", scope: !2, file: !3, line: 1718, type: !170)
!665 = !DILocalVariable(name: "level", scope: !2, file: !3, line: 1719, type: !170)
!666 = !DILocalVariable(name: "offset", scope: !2, file: !3, line: 1720, type: !170)
!667 = !DILocalVariable(name: "directory", scope: !2, file: !3, line: 1726, type: !519)
!668 = !DILocalVariable(name: "exif", scope: !2, file: !3, line: 1727, type: !519)
!669 = !DILocalVariable(name: "p", scope: !670, file: !3, line: 1795, type: !519)
!670 = distinct !DILexicalBlock(scope: !671, file: !3, line: 1793, column: 5)
!671 = distinct !DILexicalBlock(scope: !672, file: !3, line: 1792, column: 5)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 1792, column: 5)
!673 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1781, column: 3)
!674 = !DILocalVariable(name: "q", scope: !670, file: !3, line: 1796, type: !519)
!675 = !DILocalVariable(name: "number_bytes", scope: !670, file: !3, line: 1799, type: !92)
!676 = !DILocalVariable(name: "components", scope: !670, file: !3, line: 1802, type: !170)
!677 = !DILocalVariable(name: "format", scope: !670, file: !3, line: 1803, type: !170)
!678 = !DILocalVariable(name: "tag_value", scope: !670, file: !3, line: 1804, type: !170)
!679 = !DILocalVariable(name: "offset", scope: !680, file: !3, line: 1823, type: !170)
!680 = distinct !DILexicalBlock(scope: !681, file: !3, line: 1821, column: 9)
!681 = distinct !DILexicalBlock(scope: !670, file: !3, line: 1818, column: 11)
!682 = !DILocalVariable(name: "offset", scope: !683, file: !3, line: 1876, type: !170)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 1874, column: 9)
!684 = distinct !DILexicalBlock(scope: !670, file: !3, line: 1873, column: 11)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, size: 416, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 13)
!688 = !{i32 7, !"Dwarf Version", i32 5}
!689 = !{i32 2, !"Debug Info Version", i32 3}
!690 = !{i32 1, !"wchar_size", i32 4}
!691 = !{i32 7, !"PIC Level", i32 2}
!692 = !{i32 7, !"PIE Level", i32 2}
!693 = !{i32 7, !"uwtable", i32 2}
!694 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!695 = distinct !DISubprogram(name: "CloneImageProfiles", scope: !3, file: !3, line: 137, type: !696, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !700)
!696 = !DISubroutineType(types: !697)
!697 = !{!6, !13, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!700 = !{!701, !702}
!701 = !DILocalVariable(name: "image", arg: 1, scope: !695, file: !3, line: 137, type: !13)
!702 = !DILocalVariable(name: "clone_image", arg: 2, scope: !695, file: !3, line: 138, type: !698)
!703 = !DILocation(line: 0, scope: !695)
!704 = !DILocation(line: 142, column: 14, scope: !705)
!705 = distinct !DILexicalBlock(scope: !695, file: !3, line: 142, column: 7)
!706 = !{!707, !708, i64 12976}
!707 = !{!"_Image", !708, i64 0, !708, i64 4, !708, i64 8, !710, i64 16, !708, i64 24, !708, i64 28, !708, i64 32, !710, i64 40, !710, i64 48, !710, i64 56, !710, i64 64, !711, i64 72, !712, i64 80, !712, i64 88, !712, i64 96, !714, i64 104, !715, i64 112, !708, i64 208, !711, i64 216, !708, i64 224, !711, i64 232, !711, i64 240, !711, i64 248, !710, i64 256, !714, i64 264, !714, i64 272, !717, i64 280, !717, i64 312, !717, i64 344, !714, i64 376, !714, i64 384, !714, i64 392, !708, i64 400, !708, i64 404, !708, i64 408, !708, i64 412, !708, i64 416, !708, i64 420, !711, i64 424, !710, i64 432, !710, i64 440, !710, i64 448, !710, i64 456, !710, i64 464, !710, i64 472, !718, i64 480, !719, i64 504, !711, i64 568, !711, i64 576, !711, i64 584, !711, i64 592, !711, i64 600, !711, i64 608, !708, i64 616, !708, i64 4712, !708, i64 8808, !710, i64 12904, !710, i64 12912, !721, i64 12920, !708, i64 12976, !710, i64 12984, !711, i64 12992, !723, i64 13000, !723, i64 13032, !711, i64 13064, !710, i64 13072, !710, i64 13080, !711, i64 13088, !711, i64 13096, !711, i64 13104, !708, i64 13112, !708, i64 13116, !712, i64 13120, !711, i64 13128, !717, i64 13136, !711, i64 13168, !711, i64 13176, !708, i64 13184, !708, i64 13188, !724, i64 13192, !708, i64 13200, !710, i64 13208, !710, i64 13216, !708, i64 13224, !710, i64 13232}
!708 = !{!"omnipotent char", !709, i64 0}
!709 = !{!"Simple C/C++ TBAA"}
!710 = !{!"long", !708, i64 0}
!711 = !{!"any pointer", !708, i64 0}
!712 = !{!"_PixelPacket", !713, i64 0, !713, i64 2, !713, i64 4, !713, i64 6}
!713 = !{!"short", !708, i64 0}
!714 = !{!"double", !708, i64 0}
!715 = !{!"_ChromaticityInfo", !716, i64 0, !716, i64 24, !716, i64 48, !716, i64 72}
!716 = !{!"_PrimaryInfo", !714, i64 0, !714, i64 8, !714, i64 16}
!717 = !{!"_RectangleInfo", !710, i64 0, !710, i64 8, !710, i64 16, !710, i64 24}
!718 = !{!"_ErrorInfo", !714, i64 0, !714, i64 8, !714, i64 16}
!719 = !{!"_TimerInfo", !720, i64 0, !720, i64 24, !708, i64 48, !710, i64 56}
!720 = !{!"_Timer", !714, i64 0, !714, i64 8, !714, i64 16}
!721 = !{!"_ExceptionInfo", !708, i64 0, !722, i64 4, !711, i64 8, !711, i64 16, !711, i64 24, !708, i64 32, !711, i64 40, !710, i64 48}
!722 = !{!"int", !708, i64 0}
!723 = !{!"_ProfileInfo", !711, i64 0, !710, i64 8, !711, i64 16, !710, i64 24}
!724 = !{!"long long", !708, i64 0}
!725 = !DILocation(line: 142, column: 20, scope: !705)
!726 = !DILocation(line: 142, column: 7, scope: !695)
!727 = !DILocation(line: 143, column: 68, scope: !705)
!728 = !DILocation(line: 143, column: 12, scope: !705)
!729 = !DILocation(line: 143, column: 5, scope: !705)
!730 = !DILocation(line: 146, column: 58, scope: !695)
!731 = !{!707, !710, i64 13008}
!732 = !DILocation(line: 146, column: 24, scope: !695)
!733 = !DILocation(line: 146, column: 30, scope: !695)
!734 = !DILocation(line: 147, column: 56, scope: !695)
!735 = !{!707, !711, i64 13016}
!736 = !DILocation(line: 147, column: 24, scope: !695)
!737 = !DILocation(line: 147, column: 28, scope: !695)
!738 = !DILocation(line: 148, column: 56, scope: !695)
!739 = !{!707, !710, i64 13040}
!740 = !DILocation(line: 148, column: 23, scope: !695)
!741 = !DILocation(line: 148, column: 29, scope: !695)
!742 = !DILocation(line: 149, column: 54, scope: !695)
!743 = !{!707, !711, i64 13048}
!744 = !DILocation(line: 149, column: 23, scope: !695)
!745 = !DILocation(line: 149, column: 27, scope: !695)
!746 = !DILocation(line: 150, column: 20, scope: !747)
!747 = distinct !DILexicalBlock(scope: !695, file: !3, line: 150, column: 7)
!748 = !{!707, !711, i64 216}
!749 = !DILocation(line: 150, column: 29, scope: !747)
!750 = !DILocation(line: 150, column: 7, scope: !695)
!751 = !DILocation(line: 152, column: 18, scope: !752)
!752 = distinct !DILexicalBlock(scope: !753, file: !3, line: 152, column: 11)
!753 = distinct !DILexicalBlock(scope: !747, file: !3, line: 151, column: 5)
!754 = !DILocation(line: 152, column: 27, scope: !752)
!755 = !DILocation(line: 152, column: 11, scope: !753)
!756 = !DILocalVariable(name: "image", arg: 1, scope: !757, file: !3, line: 234, type: !13)
!757 = distinct !DISubprogram(name: "DestroyImageProfiles", scope: !3, file: !3, line: 234, type: !758, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !760)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !13}
!760 = !{!756}
!761 = !DILocation(line: 0, scope: !757, inlinedAt: !762)
!762 = distinct !DILocation(line: 153, column: 9, scope: !752)
!763 = !DILocation(line: 237, column: 21, scope: !764, inlinedAt: !762)
!764 = distinct !DILexicalBlock(scope: !757, file: !3, line: 236, column: 7)
!765 = !DILocation(line: 237, column: 20, scope: !764, inlinedAt: !762)
!766 = !DILocation(line: 154, column: 69, scope: !753)
!767 = !DILocation(line: 153, column: 9, scope: !752)
!768 = !DILocation(line: 154, column: 23, scope: !753)
!769 = !DILocation(line: 154, column: 22, scope: !753)
!770 = !DILocation(line: 156, column: 4, scope: !753)
!771 = !DILocation(line: 157, column: 3, scope: !695)
!772 = !DISubprogram(name: "LogMagickEvent", scope: !606, file: !606, line: 83, type: !773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!773 = !DISubroutineType(types: !774)
!774 = !{!6, !775, !390, !390, !777, !390, null}
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !606, line: 58, baseType: !605)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!778 = !{}
!779 = !DILocation(line: 0, scope: !757)
!780 = !DILocation(line: 236, column: 14, scope: !764)
!781 = !DILocation(line: 236, column: 23, scope: !764)
!782 = !DILocation(line: 236, column: 7, scope: !757)
!783 = !DILocation(line: 237, column: 21, scope: !764)
!784 = !DILocation(line: 237, column: 20, scope: !764)
!785 = !DILocation(line: 237, column: 5, scope: !764)
!786 = !DILocation(line: 238, column: 1, scope: !757)
!787 = !DISubprogram(name: "CloneSplayTree", scope: !633, file: !633, line: 43, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!788 = !DISubroutineType(types: !789)
!789 = !{!631, !631, !635, !635}
!790 = !DISubprogram(name: "ConstantString", scope: !595, file: !595, line: 45, type: !791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!791 = !DISubroutineType(types: !792)
!792 = !{!165, !390}
!793 = !DISubprogram(name: "CloneStringInfo", scope: !595, file: !595, line: 89, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!794 = !DISubroutineType(types: !795)
!795 = !{!593, !638}
!796 = distinct !DISubprogram(name: "DeleteImageProfile", scope: !3, file: !3, line: 184, type: !797, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !799)
!797 = !DISubroutineType(types: !798)
!798 = !{!6, !13, !390}
!799 = !{!800, !801}
!800 = !DILocalVariable(name: "image", arg: 1, scope: !796, file: !3, line: 184, type: !13)
!801 = !DILocalVariable(name: "name", arg: 2, scope: !796, file: !3, line: 184, type: !390)
!802 = !DILocation(line: 0, scope: !796)
!803 = !DILocation(line: 188, column: 14, scope: !804)
!804 = distinct !DILexicalBlock(scope: !796, file: !3, line: 188, column: 7)
!805 = !DILocation(line: 188, column: 20, scope: !804)
!806 = !DILocation(line: 188, column: 7, scope: !796)
!807 = !DILocation(line: 189, column: 68, scope: !804)
!808 = !DILocation(line: 189, column: 12, scope: !804)
!809 = !DILocation(line: 189, column: 5, scope: !804)
!810 = !DILocation(line: 190, column: 14, scope: !811)
!811 = distinct !DILexicalBlock(scope: !796, file: !3, line: 190, column: 7)
!812 = !DILocation(line: 190, column: 23, scope: !811)
!813 = !DILocation(line: 190, column: 7, scope: !796)
!814 = !DILocation(line: 192, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !796, file: !3, line: 192, column: 7)
!816 = !DILocation(line: 192, column: 33, scope: !815)
!817 = !DILocation(line: 192, column: 7, scope: !796)
!818 = !DILocation(line: 197, column: 28, scope: !819)
!819 = distinct !DILexicalBlock(scope: !815, file: !3, line: 193, column: 5)
!820 = !DILocation(line: 198, column: 32, scope: !819)
!821 = !DILocation(line: 199, column: 5, scope: !819)
!822 = !DILocation(line: 200, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !796, file: !3, line: 200, column: 7)
!824 = !DILocation(line: 200, column: 34, scope: !823)
!825 = !DILocation(line: 200, column: 7, scope: !796)
!826 = !DILocation(line: 205, column: 27, scope: !827)
!827 = distinct !DILexicalBlock(scope: !823, file: !3, line: 201, column: 5)
!828 = !DILocation(line: 206, column: 31, scope: !827)
!829 = !DILocation(line: 207, column: 5, scope: !827)
!830 = !DILocation(line: 208, column: 3, scope: !796)
!831 = !DILocation(line: 209, column: 59, scope: !796)
!832 = !DILocation(line: 209, column: 10, scope: !796)
!833 = !DILocation(line: 209, column: 3, scope: !796)
!834 = !DILocation(line: 210, column: 1, scope: !796)
!835 = !DISubprogram(name: "LocaleCompare", scope: !595, file: !595, line: 66, type: !836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!836 = !DISubroutineType(types: !837)
!837 = !{!497, !390, !390}
!838 = distinct !DISubprogram(name: "WriteTo8BimProfile", scope: !3, file: !3, line: 1164, type: !839, scopeLine: 1166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !841)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !13, !390, !638}
!841 = !{!842, !843, !844, !845, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !863, !864, !865}
!842 = !DILocalVariable(name: "image", arg: 1, scope: !838, file: !3, line: 1164, type: !13)
!843 = !DILocalVariable(name: "name", arg: 2, scope: !838, file: !3, line: 1164, type: !390)
!844 = !DILocalVariable(name: "profile", arg: 3, scope: !838, file: !3, line: 1165, type: !638)
!845 = !DILocalVariable(name: "datum", scope: !838, file: !3, line: 1169, type: !846)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!848 = !DILocalVariable(name: "s", scope: !838, file: !3, line: 1170, type: !846)
!849 = !DILocalVariable(name: "p", scope: !838, file: !3, line: 1173, type: !846)
!850 = !DILocalVariable(name: "length", scope: !838, file: !3, line: 1176, type: !92)
!851 = !DILocalVariable(name: "profile_8bim", scope: !838, file: !3, line: 1179, type: !593)
!852 = !DILocalVariable(name: "count", scope: !838, file: !3, line: 1182, type: !170)
!853 = !DILocalVariable(name: "length_byte", scope: !838, file: !3, line: 1185, type: !520)
!854 = !DILocalVariable(name: "value", scope: !838, file: !3, line: 1188, type: !9)
!855 = !DILocalVariable(name: "id", scope: !838, file: !3, line: 1191, type: !122)
!856 = !DILocalVariable(name: "profile_id", scope: !838, file: !3, line: 1192, type: !122)
!857 = !DILocalVariable(name: "offset", scope: !858, file: !3, line: 1230, type: !92)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 1228, column: 7)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 1227, column: 9)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 1209, column: 3)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1208, column: 3)
!862 = distinct !DILexicalBlock(scope: !838, file: !3, line: 1208, column: 3)
!863 = !DILocalVariable(name: "rest", scope: !858, file: !3, line: 1231, type: !92)
!864 = !DILocalVariable(name: "new_count", scope: !858, file: !3, line: 1234, type: !170)
!865 = !DILocalVariable(name: "new_profile", scope: !858, file: !3, line: 1237, type: !593)
!866 = !DILocation(line: 0, scope: !838)
!867 = !DILocation(line: 1194, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !838, file: !3, line: 1194, column: 7)
!869 = !DILocation(line: 1194, column: 33, scope: !868)
!870 = !DILocation(line: 1194, column: 7, scope: !838)
!871 = !DILocation(line: 1196, column: 12, scope: !872)
!872 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1196, column: 12)
!873 = !DILocation(line: 1196, column: 39, scope: !872)
!874 = !DILocation(line: 1196, column: 12, scope: !868)
!875 = !DILocation(line: 1198, column: 12, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !3, line: 1198, column: 12)
!877 = !DILocation(line: 1198, column: 38, scope: !876)
!878 = !DILocation(line: 1198, column: 12, scope: !872)
!879 = !DILocation(line: 1203, column: 12, scope: !838)
!880 = !DILocation(line: 1202, column: 30, scope: !838)
!881 = !DILocation(line: 1204, column: 20, scope: !882)
!882 = distinct !DILexicalBlock(scope: !838, file: !3, line: 1204, column: 7)
!883 = !DILocation(line: 1204, column: 7, scope: !838)
!884 = !DILocation(line: 1206, column: 9, scope: !838)
!885 = !DILocation(line: 1207, column: 10, scope: !838)
!886 = !DILocation(line: 1208, column: 19, scope: !861)
!887 = !DILocation(line: 1208, column: 3, scope: !862)
!888 = !DILocation(line: 1211, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !860, file: !3, line: 1211, column: 9)
!890 = !DILocation(line: 1211, column: 45, scope: !889)
!891 = !DILocation(line: 1211, column: 9, scope: !860)
!892 = !DILocation(line: 1213, column: 6, scope: !860)
!893 = !DILocalVariable(name: "p", arg: 1, scope: !894, file: !3, line: 1143, type: !846)
!894 = distinct !DISubprogram(name: "ReadResourceShort", scope: !3, file: !3, line: 1143, type: !895, scopeLine: 1145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !898)
!895 = !DISubroutineType(types: !896)
!896 = !{!846, !846, !897}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!898 = !{!893, !899}
!899 = !DILocalVariable(name: "quantum", arg: 2, scope: !894, file: !3, line: 1144, type: !897)
!900 = !DILocation(line: 0, scope: !894, inlinedAt: !901)
!901 = distinct !DILocation(line: 1214, column: 7, scope: !860)
!902 = !DILocation(line: 1146, column: 32, scope: !894, inlinedAt: !901)
!903 = !DILocation(line: 1146, column: 30, scope: !894, inlinedAt: !901)
!904 = !{!708, !708, i64 0}
!905 = !DILocation(line: 1146, column: 35, scope: !894, inlinedAt: !901)
!906 = !DILocation(line: 1147, column: 33, scope: !894, inlinedAt: !901)
!907 = !DILocation(line: 1147, column: 31, scope: !894, inlinedAt: !901)
!908 = !DILocation(line: 1147, column: 13, scope: !894, inlinedAt: !901)
!909 = !DILocation(line: 1147, column: 11, scope: !894, inlinedAt: !901)
!910 = !DILocalVariable(name: "p", arg: 1, scope: !911, file: !3, line: 1115, type: !846)
!911 = distinct !DISubprogram(name: "ReadResourceByte", scope: !3, file: !3, line: 1115, type: !912, scopeLine: 1117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !914)
!912 = !DISubroutineType(types: !913)
!913 = !{!846, !846, !519}
!914 = !{!910, !915}
!915 = !DILocalVariable(name: "quantum", arg: 2, scope: !911, file: !3, line: 1116, type: !519)
!916 = !DILocation(line: 0, scope: !911, inlinedAt: !917)
!917 = distinct !DILocation(line: 1215, column: 7, scope: !860)
!918 = !DILocation(line: 1118, column: 15, scope: !911, inlinedAt: !917)
!919 = !DILocation(line: 1118, column: 13, scope: !911, inlinedAt: !917)
!920 = !DILocation(line: 1216, column: 6, scope: !860)
!921 = !DILocation(line: 1217, column: 26, scope: !922)
!922 = distinct !DILexicalBlock(scope: !860, file: !3, line: 1217, column: 9)
!923 = !DILocation(line: 1217, column: 9, scope: !860)
!924 = !DILocation(line: 1219, column: 11, scope: !925)
!925 = distinct !DILexicalBlock(scope: !860, file: !3, line: 1219, column: 9)
!926 = !DILocation(line: 1219, column: 9, scope: !860)
!927 = !DILocalVariable(name: "p", arg: 1, scope: !928, file: !3, line: 1133, type: !846)
!928 = distinct !DISubprogram(name: "ReadResourceLong", scope: !3, file: !3, line: 1133, type: !929, scopeLine: 1135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !932)
!929 = !DISubroutineType(types: !930)
!930 = !{!846, !846, !931}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!932 = !{!927, !933}
!933 = !DILocalVariable(name: "quantum", arg: 2, scope: !928, file: !3, line: 1134, type: !931)
!934 = !DILocation(line: 0, scope: !928, inlinedAt: !935)
!935 = distinct !DILocation(line: 1221, column: 7, scope: !860)
!936 = !DILocation(line: 1136, column: 24, scope: !928, inlinedAt: !935)
!937 = !DILocation(line: 1136, column: 22, scope: !928, inlinedAt: !935)
!938 = !DILocation(line: 1136, column: 27, scope: !928, inlinedAt: !935)
!939 = !DILocation(line: 1137, column: 25, scope: !928, inlinedAt: !935)
!940 = !DILocation(line: 1137, column: 23, scope: !928, inlinedAt: !935)
!941 = !DILocation(line: 1137, column: 28, scope: !928, inlinedAt: !935)
!942 = !DILocation(line: 1137, column: 11, scope: !928, inlinedAt: !935)
!943 = !DILocation(line: 1138, column: 25, scope: !928, inlinedAt: !935)
!944 = !DILocation(line: 1138, column: 23, scope: !928, inlinedAt: !935)
!945 = !DILocation(line: 1138, column: 28, scope: !928, inlinedAt: !935)
!946 = !DILocation(line: 1138, column: 11, scope: !928, inlinedAt: !935)
!947 = !DILocation(line: 1139, column: 25, scope: !928, inlinedAt: !935)
!948 = !DILocation(line: 1139, column: 23, scope: !928, inlinedAt: !935)
!949 = !DILocation(line: 1139, column: 11, scope: !928, inlinedAt: !935)
!950 = !DILocation(line: 1223, column: 27, scope: !951)
!951 = distinct !DILexicalBlock(scope: !860, file: !3, line: 1223, column: 9)
!952 = !DILocation(line: 1223, column: 12, scope: !951)
!953 = !DILocation(line: 1223, column: 36, scope: !951)
!954 = !DILocation(line: 1225, column: 16, scope: !955)
!955 = distinct !DILexicalBlock(scope: !860, file: !3, line: 1225, column: 9)
!956 = !DILocation(line: 1225, column: 9, scope: !860)
!957 = !DILocation(line: 1227, column: 12, scope: !859)
!958 = !DILocation(line: 0, scope: !859)
!959 = !DILocation(line: 1227, column: 9, scope: !860)
!960 = !DILocation(line: 0, scope: !858)
!961 = !DILocation(line: 1240, column: 28, scope: !858)
!962 = !DILocation(line: 1241, column: 21, scope: !963)
!963 = distinct !DILexicalBlock(scope: !858, file: !3, line: 1241, column: 13)
!964 = !DILocation(line: 1241, column: 13, scope: !858)
!965 = !DILocation(line: 1243, column: 22, scope: !966)
!966 = distinct !DILexicalBlock(scope: !963, file: !3, line: 1242, column: 11)
!967 = !DILocation(line: 1244, column: 49, scope: !966)
!968 = !DILocation(line: 1244, column: 25, scope: !966)
!969 = !DILocation(line: 1245, column: 50, scope: !966)
!970 = !{!971, !711, i64 4096}
!971 = !{!"_StringInfo", !708, i64 0, !711, i64 4096, !710, i64 4104, !710, i64 4112}
!972 = !DILocation(line: 1245, column: 20, scope: !966)
!973 = !DILocation(line: 1246, column: 11, scope: !966)
!974 = !DILocation(line: 1249, column: 22, scope: !975)
!975 = distinct !DILexicalBlock(scope: !963, file: !3, line: 1248, column: 11)
!976 = !DILocation(line: 1250, column: 32, scope: !975)
!977 = !{!971, !710, i64 4104}
!978 = !DILocation(line: 1251, column: 28, scope: !979)
!979 = distinct !DILexicalBlock(scope: !975, file: !3, line: 1251, column: 17)
!980 = !DILocation(line: 1251, column: 17, scope: !975)
!981 = !DILocation(line: 1253, column: 49, scope: !975)
!982 = !DILocation(line: 1253, column: 59, scope: !975)
!983 = !DILocation(line: 1253, column: 25, scope: !975)
!984 = !DILocation(line: 1254, column: 50, scope: !975)
!985 = !DILocation(line: 1254, column: 68, scope: !975)
!986 = !DILocation(line: 1254, column: 20, scope: !975)
!987 = !DILocation(line: 1255, column: 44, scope: !975)
!988 = !DILocation(line: 1255, column: 49, scope: !975)
!989 = !DILocation(line: 1255, column: 56, scope: !975)
!990 = !DILocation(line: 1255, column: 68, scope: !975)
!991 = !DILocalVariable(name: "p", arg: 1, scope: !992, file: !3, line: 1151, type: !519)
!992 = distinct !DISubprogram(name: "WriteResourceLong", scope: !3, file: !3, line: 1151, type: !993, scopeLine: 1153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !996)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !519, !995}
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!996 = !{!991, !997, !998}
!997 = !DILocalVariable(name: "quantum", arg: 2, scope: !992, file: !3, line: 1152, type: !995)
!998 = !DILocalVariable(name: "buffer", scope: !992, file: !3, line: 1155, type: !999)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 32, elements: !1000)
!1000 = !{!1001}
!1001 = !DISubrange(count: 4)
!1002 = !DILocation(line: 0, scope: !992, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 1255, column: 13, scope: !975)
!1004 = !DILocation(line: 1154, column: 3, scope: !992, inlinedAt: !1003)
!1005 = !DILocation(line: 1155, column: 5, scope: !992, inlinedAt: !1003)
!1006 = !DILocation(line: 1157, column: 13, scope: !992, inlinedAt: !1003)
!1007 = !DILocation(line: 1157, column: 12, scope: !992, inlinedAt: !1003)
!1008 = !DILocation(line: 1158, column: 13, scope: !992, inlinedAt: !1003)
!1009 = !DILocation(line: 1158, column: 3, scope: !992, inlinedAt: !1003)
!1010 = !DILocation(line: 1158, column: 12, scope: !992, inlinedAt: !1003)
!1011 = !DILocation(line: 1159, column: 13, scope: !992, inlinedAt: !1003)
!1012 = !DILocation(line: 1159, column: 3, scope: !992, inlinedAt: !1003)
!1013 = !DILocation(line: 1159, column: 12, scope: !992, inlinedAt: !1003)
!1014 = !DILocation(line: 1160, column: 13, scope: !992, inlinedAt: !1003)
!1015 = !DILocation(line: 1160, column: 3, scope: !992, inlinedAt: !1003)
!1016 = !DILocation(line: 1160, column: 12, scope: !992, inlinedAt: !1003)
!1017 = !DILocation(line: 1161, column: 10, scope: !992, inlinedAt: !1003)
!1018 = !DILocation(line: 1162, column: 1, scope: !992, inlinedAt: !1003)
!1019 = !DILocation(line: 1256, column: 50, scope: !975)
!1020 = !DILocation(line: 1256, column: 55, scope: !975)
!1021 = !DILocation(line: 1256, column: 72, scope: !975)
!1022 = !DILocation(line: 1257, column: 24, scope: !975)
!1023 = !DILocation(line: 1256, column: 20, scope: !975)
!1024 = !DILocation(line: 0, scope: !963)
!1025 = !DILocation(line: 1259, column: 46, scope: !858)
!1026 = !DILocation(line: 1259, column: 51, scope: !858)
!1027 = !DILocation(line: 1259, column: 58, scope: !858)
!1028 = !DILocation(line: 1259, column: 16, scope: !858)
!1029 = !DILocation(line: 1261, column: 61, scope: !858)
!1030 = !DILocation(line: 1262, column: 11, scope: !858)
!1031 = !DILocation(line: 1262, column: 34, scope: !858)
!1032 = !DILocation(line: 1261, column: 16, scope: !858)
!1033 = !DILocation(line: 1263, column: 21, scope: !858)
!1034 = distinct !{!1034, !887, !1035, !1036, !1037}
!1035 = !DILocation(line: 1268, column: 3, scope: !862)
!1036 = !{!"llvm.loop.mustprogress"}
!1037 = !{!"llvm.loop.unroll.disable"}
!1038 = !DILocation(line: 1269, column: 1, scope: !838)
!1039 = !DISubprogram(name: "DeleteNodeFromSplayTree", scope: !633, file: !633, line: 31, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!6, !631, !640}
!1042 = !DISubprogram(name: "DestroySplayTree", scope: !633, file: !633, line: 44, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!631, !631}
!1045 = distinct !DISubprogram(name: "GetImageProfile", scope: !3, file: !3, line: 264, type: !1046, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1048)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!638, !698, !390}
!1048 = !{!1049, !1050, !1051, !1052}
!1049 = !DILocalVariable(name: "image", arg: 1, scope: !1045, file: !3, line: 264, type: !698)
!1050 = !DILocalVariable(name: "name", arg: 2, scope: !1045, file: !3, line: 265, type: !390)
!1051 = !DILocalVariable(name: "key", scope: !1045, file: !3, line: 268, type: !410)
!1052 = !DILocalVariable(name: "profile", scope: !1045, file: !3, line: 271, type: !638)
!1053 = !DILocation(line: 0, scope: !1045)
!1054 = !DILocation(line: 267, column: 3, scope: !1045)
!1055 = !DILocation(line: 268, column: 5, scope: !1045)
!1056 = !DILocation(line: 275, column: 14, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 275, column: 7)
!1058 = !DILocation(line: 275, column: 20, scope: !1057)
!1059 = !DILocation(line: 275, column: 7, scope: !1045)
!1060 = !DILocation(line: 276, column: 68, scope: !1057)
!1061 = !DILocation(line: 276, column: 12, scope: !1057)
!1062 = !DILocation(line: 276, column: 5, scope: !1057)
!1063 = !DILocation(line: 277, column: 14, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 277, column: 7)
!1065 = !DILocation(line: 277, column: 23, scope: !1064)
!1066 = !DILocation(line: 277, column: 7, scope: !1045)
!1067 = !DILocation(line: 279, column: 10, scope: !1045)
!1068 = !DILocation(line: 281, column: 12, scope: !1045)
!1069 = !DILocation(line: 280, column: 32, scope: !1045)
!1070 = !DILocation(line: 282, column: 3, scope: !1045)
!1071 = !DILocation(line: 283, column: 1, scope: !1045)
!1072 = !DISubprogram(name: "CopyMagickString", scope: !595, file: !595, line: 78, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!92, !165, !390, !777}
!1075 = !DISubprogram(name: "GetValueFromSplayTree", scope: !633, file: !633, line: 36, type: !1076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!640, !631, !640}
!1078 = distinct !DISubprogram(name: "GetNextImageProfile", scope: !3, file: !3, line: 307, type: !1079, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1081)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!165, !698}
!1081 = !{!1082}
!1082 = !DILocalVariable(name: "image", arg: 1, scope: !1078, file: !3, line: 307, type: !698)
!1083 = !DILocation(line: 0, scope: !1078)
!1084 = !DILocation(line: 311, column: 14, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 311, column: 7)
!1086 = !DILocation(line: 311, column: 20, scope: !1085)
!1087 = !DILocation(line: 311, column: 7, scope: !1078)
!1088 = !DILocation(line: 312, column: 68, scope: !1085)
!1089 = !DILocation(line: 312, column: 12, scope: !1085)
!1090 = !DILocation(line: 312, column: 5, scope: !1085)
!1091 = !DILocation(line: 313, column: 14, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 313, column: 7)
!1093 = !DILocation(line: 313, column: 23, scope: !1092)
!1094 = !DILocation(line: 313, column: 7, scope: !1078)
!1095 = !DILocation(line: 315, column: 19, scope: !1078)
!1096 = !DILocation(line: 315, column: 3, scope: !1078)
!1097 = !DILocation(line: 316, column: 1, scope: !1078)
!1098 = !DISubprogram(name: "GetNextKeyInSplayTree", scope: !633, file: !633, line: 34, type: !1099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!640, !631}
!1101 = distinct !DISubprogram(name: "ProfileImage", scope: !3, file: !3, line: 472, type: !1102, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1105)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!6, !13, !390, !640, !777, !1104}
!1104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1105 = !{!1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1116, !1117, !1118, !1119, !1122}
!1106 = !DILocalVariable(name: "image", arg: 1, scope: !1101, file: !3, line: 472, type: !13)
!1107 = !DILocalVariable(name: "name", arg: 2, scope: !1101, file: !3, line: 472, type: !390)
!1108 = !DILocalVariable(name: "datum", arg: 3, scope: !1101, file: !3, line: 473, type: !640)
!1109 = !DILocalVariable(name: "length", arg: 4, scope: !1101, file: !3, line: 473, type: !777)
!1110 = !DILocalVariable(name: "clone", arg: 5, scope: !1101, file: !3, line: 474, type: !1104)
!1111 = !DILocalVariable(name: "status", scope: !1101, file: !3, line: 487, type: !6)
!1112 = !DILocalVariable(name: "profile", scope: !1101, file: !3, line: 490, type: !593)
!1113 = !DILocalVariable(name: "arguments", scope: !1114, file: !3, line: 502, type: !642)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 500, column: 5)
!1115 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 499, column: 7)
!1116 = !DILocalVariable(name: "names", scope: !1114, file: !3, line: 503, type: !165)
!1117 = !DILocalVariable(name: "number_arguments", scope: !1114, file: !3, line: 506, type: !497)
!1118 = !DILocalVariable(name: "i", scope: !1114, file: !3, line: 509, type: !170)
!1119 = !DILocalVariable(name: "icc_profile", scope: !1120, file: !3, line: 553, type: !638)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 551, column: 5)
!1121 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 548, column: 7)
!1122 = !DILocalVariable(name: "value", scope: !1123, file: !3, line: 560, type: !390)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 558, column: 9)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 556, column: 11)
!1125 = !DILocation(line: 0, scope: !1101)
!1126 = !DILocation(line: 496, column: 14, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 496, column: 7)
!1128 = !DILocation(line: 496, column: 20, scope: !1127)
!1129 = !DILocation(line: 496, column: 7, scope: !1101)
!1130 = !DILocation(line: 497, column: 68, scope: !1127)
!1131 = !DILocation(line: 497, column: 12, scope: !1127)
!1132 = !DILocation(line: 497, column: 5, scope: !1127)
!1133 = !DILocation(line: 499, column: 14, scope: !1115)
!1134 = !DILocation(line: 499, column: 38, scope: !1115)
!1135 = !DILocation(line: 501, column: 7, scope: !1114)
!1136 = !DILocation(line: 505, column: 7, scope: !1114)
!1137 = !DILocation(line: 514, column: 13, scope: !1114)
!1138 = !DILocation(line: 0, scope: !1114)
!1139 = !DILocation(line: 514, column: 12, scope: !1114)
!1140 = !{!711, !711, i64 0}
!1141 = !DILocation(line: 515, column: 14, scope: !1114)
!1142 = !DILocation(line: 516, column: 30, scope: !1114)
!1143 = !DILocation(line: 516, column: 17, scope: !1114)
!1144 = !DILocation(line: 517, column: 27, scope: !1114)
!1145 = !DILocation(line: 517, column: 13, scope: !1114)
!1146 = !DILocation(line: 517, column: 12, scope: !1114)
!1147 = !DILocation(line: 518, column: 21, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 518, column: 11)
!1149 = !DILocation(line: 518, column: 11, scope: !1114)
!1150 = !DILocalVariable(name: "image", arg: 1, scope: !1151, file: !3, line: 1068, type: !698)
!1151 = distinct !DISubprogram(name: "ResetImageProfileIterator", scope: !3, file: !3, line: 1068, type: !1152, scopeLine: 1069, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1154)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !698}
!1154 = !{!1150}
!1155 = !DILocation(line: 0, scope: !1151, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 520, column: 7, scope: !1114)
!1157 = !DILocation(line: 1072, column: 14, scope: !1158, inlinedAt: !1156)
!1158 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 1072, column: 7)
!1159 = !DILocation(line: 1072, column: 20, scope: !1158, inlinedAt: !1156)
!1160 = !DILocation(line: 1072, column: 7, scope: !1151, inlinedAt: !1156)
!1161 = !DILocation(line: 1073, column: 68, scope: !1158, inlinedAt: !1156)
!1162 = !DILocation(line: 1073, column: 12, scope: !1158, inlinedAt: !1156)
!1163 = !DILocation(line: 1073, column: 5, scope: !1158, inlinedAt: !1156)
!1164 = !DILocation(line: 1074, column: 14, scope: !1165, inlinedAt: !1156)
!1165 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 1074, column: 7)
!1166 = !DILocation(line: 1074, column: 23, scope: !1165, inlinedAt: !1156)
!1167 = !DILocation(line: 1074, column: 7, scope: !1151, inlinedAt: !1156)
!1168 = !DILocation(line: 1076, column: 3, scope: !1151, inlinedAt: !1156)
!1169 = !DILocation(line: 1077, column: 1, scope: !1151, inlinedAt: !1156)
!1170 = !DILocation(line: 0, scope: !1078, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 521, column: 17, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 521, column: 7)
!1173 = !DILocation(line: 311, column: 14, scope: !1085, inlinedAt: !1171)
!1174 = !DILocation(line: 311, column: 20, scope: !1085, inlinedAt: !1171)
!1175 = !DILocation(line: 311, column: 7, scope: !1078, inlinedAt: !1171)
!1176 = !DILocation(line: 312, column: 68, scope: !1085, inlinedAt: !1171)
!1177 = !DILocation(line: 312, column: 12, scope: !1085, inlinedAt: !1171)
!1178 = !DILocation(line: 312, column: 5, scope: !1085, inlinedAt: !1171)
!1179 = !DILocation(line: 313, column: 14, scope: !1092, inlinedAt: !1171)
!1180 = !DILocation(line: 313, column: 23, scope: !1092, inlinedAt: !1171)
!1181 = !DILocation(line: 313, column: 7, scope: !1078, inlinedAt: !1171)
!1182 = !DILocation(line: 315, column: 19, scope: !1078, inlinedAt: !1171)
!1183 = !DILocation(line: 521, column: 50, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 521, column: 7)
!1185 = !DILocation(line: 521, column: 7, scope: !1172)
!1186 = !DILocation(line: 523, column: 33, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 523, column: 9)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 523, column: 9)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 522, column: 7)
!1190 = !{!722, !722, i64 0}
!1191 = !DILocation(line: 523, column: 21, scope: !1187)
!1192 = !DILocation(line: 523, column: 9, scope: !1188)
!1193 = !DILocation(line: 537, column: 31, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 537, column: 7)
!1195 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 537, column: 7)
!1196 = !DILocation(line: 537, column: 19, scope: !1194)
!1197 = !DILocation(line: 537, column: 7, scope: !1195)
!1198 = !DILocation(line: 523, column: 52, scope: !1187)
!1199 = !DILocation(line: 523, column: 23, scope: !1187)
!1200 = distinct !{!1200, !1192, !1201, !1036, !1037}
!1201 = !DILocation(line: 534, column: 9, scope: !1188)
!1202 = !DILocation(line: 525, column: 17, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 525, column: 15)
!1204 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 524, column: 9)
!1205 = !DILocation(line: 525, column: 16, scope: !1203)
!1206 = !DILocation(line: 525, column: 30, scope: !1203)
!1207 = !DILocation(line: 525, column: 38, scope: !1203)
!1208 = !DILocation(line: 526, column: 47, scope: !1203)
!1209 = !DILocation(line: 526, column: 16, scope: !1203)
!1210 = !DILocation(line: 526, column: 51, scope: !1203)
!1211 = !DILocation(line: 525, column: 15, scope: !1204)
!1212 = !DILocation(line: 528, column: 35, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 528, column: 15)
!1214 = !DILocation(line: 528, column: 15, scope: !1213)
!1215 = !DILocation(line: 528, column: 60, scope: !1213)
!1216 = !DILocation(line: 528, column: 15, scope: !1204)
!1217 = !DILocation(line: 530, column: 22, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 529, column: 13)
!1219 = !DILocation(line: 0, scope: !1151, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 531, column: 15, scope: !1218)
!1221 = !DILocation(line: 1072, column: 14, scope: !1158, inlinedAt: !1220)
!1222 = !DILocation(line: 1072, column: 20, scope: !1158, inlinedAt: !1220)
!1223 = !DILocation(line: 1072, column: 7, scope: !1151, inlinedAt: !1220)
!1224 = !DILocation(line: 1073, column: 12, scope: !1158, inlinedAt: !1220)
!1225 = !DILocation(line: 1073, column: 5, scope: !1158, inlinedAt: !1220)
!1226 = !DILocation(line: 1074, column: 14, scope: !1165, inlinedAt: !1220)
!1227 = !DILocation(line: 1074, column: 23, scope: !1165, inlinedAt: !1220)
!1228 = !DILocation(line: 1074, column: 7, scope: !1151, inlinedAt: !1220)
!1229 = !DILocation(line: 1076, column: 3, scope: !1151, inlinedAt: !1220)
!1230 = !DILocation(line: 1077, column: 1, scope: !1151, inlinedAt: !1220)
!1231 = !DILocation(line: 0, scope: !1078, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 535, column: 14, scope: !1189)
!1233 = !DILocation(line: 311, column: 14, scope: !1085, inlinedAt: !1232)
!1234 = !DILocation(line: 311, column: 20, scope: !1085, inlinedAt: !1232)
!1235 = !DILocation(line: 311, column: 7, scope: !1078, inlinedAt: !1232)
!1236 = !DILocation(line: 312, column: 12, scope: !1085, inlinedAt: !1232)
!1237 = !DILocation(line: 312, column: 5, scope: !1085, inlinedAt: !1232)
!1238 = !DILocation(line: 313, column: 14, scope: !1092, inlinedAt: !1232)
!1239 = !DILocation(line: 313, column: 23, scope: !1092, inlinedAt: !1232)
!1240 = !DILocation(line: 313, column: 7, scope: !1078, inlinedAt: !1232)
!1241 = !DILocation(line: 315, column: 19, scope: !1078, inlinedAt: !1232)
!1242 = distinct !{!1242, !1185, !1243, !1036, !1037}
!1243 = !DILocation(line: 536, column: 7, scope: !1172)
!1244 = !DILocation(line: 538, column: 36, scope: !1194)
!1245 = !DILocation(line: 538, column: 22, scope: !1194)
!1246 = !DILocation(line: 538, column: 21, scope: !1194)
!1247 = !DILocation(line: 537, column: 50, scope: !1194)
!1248 = !DILocation(line: 537, column: 21, scope: !1194)
!1249 = distinct !{!1249, !1197, !1250, !1036, !1037}
!1250 = !DILocation(line: 538, column: 48, scope: !1195)
!1251 = !DILocation(line: 539, column: 27, scope: !1114)
!1252 = !DILocation(line: 540, column: 7, scope: !1114)
!1253 = !DILocation(line: 541, column: 5, scope: !1115)
!1254 = !DILocation(line: 546, column: 11, scope: !1101)
!1255 = !DILocation(line: 547, column: 3, scope: !1101)
!1256 = !DILocation(line: 548, column: 8, scope: !1121)
!1257 = !DILocation(line: 548, column: 34, scope: !1121)
!1258 = !DILocation(line: 548, column: 40, scope: !1121)
!1259 = !DILocation(line: 548, column: 44, scope: !1121)
!1260 = !DILocation(line: 548, column: 70, scope: !1121)
!1261 = !DILocation(line: 548, column: 7, scope: !1101)
!1262 = !DILocalVariable(name: "image", arg: 1, scope: !1263, file: !3, line: 1482, type: !13)
!1263 = distinct !DISubprogram(name: "SetImageProfile", scope: !3, file: !3, line: 1482, type: !1264, scopeLine: 1484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1266)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!6, !13, !390, !638}
!1266 = !{!1262, !1267, !1268}
!1267 = !DILocalVariable(name: "name", arg: 2, scope: !1263, file: !3, line: 1482, type: !390)
!1268 = !DILocalVariable(name: "profile", arg: 3, scope: !1263, file: !3, line: 1483, type: !638)
!1269 = !DILocation(line: 0, scope: !1263, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 549, column: 12, scope: !1121)
!1271 = !DILocation(line: 1485, column: 10, scope: !1263, inlinedAt: !1270)
!1272 = !DILocation(line: 549, column: 5, scope: !1121)
!1273 = !DILocation(line: 0, scope: !1045, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 555, column: 19, scope: !1120)
!1275 = !DILocation(line: 267, column: 3, scope: !1045, inlinedAt: !1274)
!1276 = !DILocation(line: 268, column: 5, scope: !1045, inlinedAt: !1274)
!1277 = !DILocation(line: 275, column: 14, scope: !1057, inlinedAt: !1274)
!1278 = !DILocation(line: 275, column: 20, scope: !1057, inlinedAt: !1274)
!1279 = !DILocation(line: 275, column: 7, scope: !1045, inlinedAt: !1274)
!1280 = !DILocation(line: 276, column: 68, scope: !1057, inlinedAt: !1274)
!1281 = !DILocation(line: 276, column: 12, scope: !1057, inlinedAt: !1274)
!1282 = !DILocation(line: 276, column: 5, scope: !1057, inlinedAt: !1274)
!1283 = !DILocation(line: 277, column: 14, scope: !1064, inlinedAt: !1274)
!1284 = !DILocation(line: 277, column: 23, scope: !1064, inlinedAt: !1274)
!1285 = !DILocation(line: 277, column: 7, scope: !1045, inlinedAt: !1274)
!1286 = !DILocation(line: 283, column: 1, scope: !1045, inlinedAt: !1274)
!1287 = !DILocation(line: 0, scope: !1120)
!1288 = !DILocation(line: 556, column: 54, scope: !1124)
!1289 = !DILocation(line: 279, column: 10, scope: !1045, inlinedAt: !1274)
!1290 = !DILocation(line: 281, column: 12, scope: !1045, inlinedAt: !1274)
!1291 = !DILocation(line: 280, column: 32, scope: !1045, inlinedAt: !1274)
!1292 = !DILocation(line: 556, column: 24, scope: !1124)
!1293 = !DILocation(line: 557, column: 12, scope: !1124)
!1294 = !DILocation(line: 557, column: 51, scope: !1124)
!1295 = !DILocation(line: 556, column: 11, scope: !1120)
!1296 = !DILocation(line: 562, column: 17, scope: !1123)
!1297 = !DILocation(line: 0, scope: !1123)
!1298 = !DILocation(line: 0, scope: !1045, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 574, column: 23, scope: !1123)
!1300 = !DILocation(line: 267, column: 3, scope: !1045, inlinedAt: !1299)
!1301 = !DILocation(line: 268, column: 5, scope: !1045, inlinedAt: !1299)
!1302 = !DILocation(line: 275, column: 14, scope: !1057, inlinedAt: !1299)
!1303 = !DILocation(line: 275, column: 20, scope: !1057, inlinedAt: !1299)
!1304 = !DILocation(line: 275, column: 7, scope: !1045, inlinedAt: !1299)
!1305 = !DILocation(line: 276, column: 68, scope: !1057, inlinedAt: !1299)
!1306 = !DILocation(line: 276, column: 12, scope: !1057, inlinedAt: !1299)
!1307 = !DILocation(line: 276, column: 5, scope: !1057, inlinedAt: !1299)
!1308 = !DILocation(line: 277, column: 14, scope: !1064, inlinedAt: !1299)
!1309 = !DILocation(line: 277, column: 23, scope: !1064, inlinedAt: !1299)
!1310 = !DILocation(line: 277, column: 7, scope: !1045, inlinedAt: !1299)
!1311 = !DILocation(line: 283, column: 1, scope: !1045, inlinedAt: !1299)
!1312 = !DILocation(line: 576, column: 54, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 576, column: 11)
!1314 = !DILocation(line: 279, column: 10, scope: !1045, inlinedAt: !1299)
!1315 = !DILocation(line: 281, column: 12, scope: !1045, inlinedAt: !1299)
!1316 = !DILocation(line: 280, column: 32, scope: !1045, inlinedAt: !1299)
!1317 = !DILocation(line: 576, column: 24, scope: !1313)
!1318 = !DILocation(line: 577, column: 12, scope: !1313)
!1319 = !DILocation(line: 577, column: 51, scope: !1313)
!1320 = !DILocation(line: 576, column: 11, scope: !1120)
!1321 = !DILocation(line: 583, column: 43, scope: !1120)
!1322 = !DILocation(line: 585, column: 16, scope: !1120)
!1323 = !DILocation(line: 583, column: 14, scope: !1120)
!1324 = !DILocation(line: 579, column: 19, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 578, column: 9)
!1326 = !DILocation(line: 982, column: 11, scope: !1101)
!1327 = !DILocation(line: 983, column: 3, scope: !1101)
!1328 = !DILocation(line: 984, column: 1, scope: !1101)
!1329 = !DISubprogram(name: "SubstituteString", scope: !595, file: !595, line: 73, type: !1330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!6, !642, !390, !390}
!1332 = !DISubprogram(name: "StringToArgv", scope: !595, file: !595, line: 53, type: !1333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!642, !390, !1335}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!1336 = !DISubprogram(name: "DestroyString", scope: !595, file: !595, line: 46, type: !1337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!165, !165}
!1339 = !DILocation(line: 0, scope: !1151)
!1340 = !DILocation(line: 1072, column: 14, scope: !1158)
!1341 = !DILocation(line: 1072, column: 20, scope: !1158)
!1342 = !DILocation(line: 1072, column: 7, scope: !1151)
!1343 = !DILocation(line: 1073, column: 68, scope: !1158)
!1344 = !DILocation(line: 1073, column: 12, scope: !1158)
!1345 = !DILocation(line: 1073, column: 5, scope: !1158)
!1346 = !DILocation(line: 1074, column: 14, scope: !1165)
!1347 = !DILocation(line: 1074, column: 23, scope: !1165)
!1348 = !DILocation(line: 1074, column: 7, scope: !1151)
!1349 = !DILocation(line: 1076, column: 3, scope: !1151)
!1350 = !DILocation(line: 1077, column: 1, scope: !1151)
!1351 = !DISubprogram(name: "GlobExpression", scope: !1352, file: !1352, line: 36, type: !1353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1352 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!6, !390, !390, !1104}
!1355 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1356, file: !1356, line: 51, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1356 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1357 = !DISubprogram(name: "AcquireStringInfo", scope: !595, file: !595, line: 87, type: !1358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!593, !777}
!1360 = !DISubprogram(name: "SetStringInfoDatum", scope: !595, file: !595, line: 107, type: !1361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !593, !846}
!1363 = !DILocation(line: 0, scope: !1263)
!1364 = !DILocation(line: 1485, column: 10, scope: !1263)
!1365 = !DILocation(line: 1485, column: 3, scope: !1263)
!1366 = !DISubprogram(name: "CompareStringInfo", scope: !595, file: !595, line: 65, type: !1367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!497, !638, !638}
!1369 = !DISubprogram(name: "GetImageProperty", scope: !1370, file: !1370, line: 31, type: !1371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1370 = !DIFile(filename: "apps/538.imagick_r/src/magick/property.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "517489a50b093ded1c4a01c3e2b58c3c")
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!390, !698, !390}
!1373 = !DISubprogram(name: "DestroyStringInfo", scope: !595, file: !595, line: 91, type: !1374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!593, !593}
!1376 = !DISubprogram(name: "ThrowMagickException", scope: !420, file: !420, line: 156, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!6, !1379, !390, !390, !777, !1380, !390, !390, null}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!1381 = distinct !DISubprogram(name: "RemoveImageProfile", scope: !3, file: !3, line: 1011, type: !1382, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1384)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!593, !13, !390}
!1384 = !{!1385, !1386, !1387}
!1385 = !DILocalVariable(name: "image", arg: 1, scope: !1381, file: !3, line: 1011, type: !13)
!1386 = !DILocalVariable(name: "name", arg: 2, scope: !1381, file: !3, line: 1011, type: !390)
!1387 = !DILocalVariable(name: "profile", scope: !1381, file: !3, line: 1014, type: !593)
!1388 = !DILocation(line: 0, scope: !1381)
!1389 = !DILocation(line: 1018, column: 14, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 1018, column: 7)
!1391 = !DILocation(line: 1018, column: 20, scope: !1390)
!1392 = !DILocation(line: 1018, column: 7, scope: !1381)
!1393 = !DILocation(line: 1019, column: 68, scope: !1390)
!1394 = !DILocation(line: 1019, column: 12, scope: !1390)
!1395 = !DILocation(line: 1019, column: 5, scope: !1390)
!1396 = !DILocation(line: 1020, column: 14, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 1020, column: 7)
!1398 = !DILocation(line: 1020, column: 23, scope: !1397)
!1399 = !DILocation(line: 1020, column: 7, scope: !1381)
!1400 = !DILocation(line: 1022, column: 7, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 1022, column: 7)
!1402 = !DILocation(line: 1022, column: 33, scope: !1401)
!1403 = !DILocation(line: 1022, column: 7, scope: !1381)
!1404 = !DILocation(line: 1027, column: 28, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 1023, column: 5)
!1406 = !DILocation(line: 1028, column: 32, scope: !1405)
!1407 = !DILocation(line: 1029, column: 5, scope: !1405)
!1408 = !DILocation(line: 1030, column: 7, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 1030, column: 7)
!1410 = !DILocation(line: 1030, column: 34, scope: !1409)
!1411 = !DILocation(line: 1030, column: 7, scope: !1381)
!1412 = !DILocation(line: 1035, column: 27, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 1031, column: 5)
!1414 = !DILocation(line: 1036, column: 31, scope: !1413)
!1415 = !DILocation(line: 1037, column: 5, scope: !1413)
!1416 = !DILocation(line: 1038, column: 3, scope: !1381)
!1417 = !DILocation(line: 1040, column: 12, scope: !1381)
!1418 = !DILocation(line: 1039, column: 26, scope: !1381)
!1419 = !DILocation(line: 1041, column: 3, scope: !1381)
!1420 = !DILocation(line: 1042, column: 1, scope: !1381)
!1421 = !DISubprogram(name: "RemoveNodeFromSplayTree", scope: !633, file: !633, line: 53, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!156, !631, !640}
!1424 = !DISubprogram(name: "ResetSplayTreeIterator", scope: !633, file: !633, line: 55, type: !1425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !631}
!1427 = distinct !DISubprogram(name: "SetImageProfileInternal", scope: !3, file: !3, line: 1414, type: !1428, scopeLine: 1416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1430)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!6, !13, !390, !638, !1104}
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1441}
!1431 = !DILocalVariable(name: "image", arg: 1, scope: !1427, file: !3, line: 1414, type: !13)
!1432 = !DILocalVariable(name: "name", arg: 2, scope: !1427, file: !3, line: 1414, type: !390)
!1433 = !DILocalVariable(name: "profile", arg: 3, scope: !1427, file: !3, line: 1415, type: !638)
!1434 = !DILocalVariable(name: "recursive", arg: 4, scope: !1427, file: !3, line: 1415, type: !1104)
!1435 = !DILocalVariable(name: "key", scope: !1427, file: !3, line: 1418, type: !410)
!1436 = !DILocalVariable(name: "property", scope: !1427, file: !3, line: 1419, type: !410)
!1437 = !DILocalVariable(name: "status", scope: !1427, file: !3, line: 1422, type: !6)
!1438 = !DILocalVariable(name: "icc_profile", scope: !1439, file: !3, line: 1439, type: !638)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 1437, column: 5)
!1440 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 1435, column: 7)
!1441 = !DILocalVariable(name: "iptc_profile", scope: !1442, file: !3, line: 1455, type: !638)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 1453, column: 5)
!1443 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 1451, column: 7)
!1444 = !DILocation(line: 0, scope: !1427)
!1445 = !DILocation(line: 1417, column: 3, scope: !1427)
!1446 = !DILocation(line: 1418, column: 5, scope: !1427)
!1447 = !DILocation(line: 1419, column: 5, scope: !1427)
!1448 = !DILocation(line: 1426, column: 14, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 1426, column: 7)
!1450 = !DILocation(line: 1426, column: 20, scope: !1449)
!1451 = !DILocation(line: 1426, column: 7, scope: !1427)
!1452 = !DILocation(line: 1427, column: 68, scope: !1449)
!1453 = !DILocation(line: 1427, column: 12, scope: !1449)
!1454 = !DILocation(line: 1427, column: 5, scope: !1449)
!1455 = !DILocation(line: 1428, column: 14, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 1428, column: 7)
!1457 = !DILocation(line: 1428, column: 23, scope: !1456)
!1458 = !DILocation(line: 1428, column: 7, scope: !1427)
!1459 = !DILocation(line: 1429, column: 21, scope: !1456)
!1460 = !DILocation(line: 1429, column: 20, scope: !1456)
!1461 = !DILocation(line: 1429, column: 5, scope: !1456)
!1462 = !DILocation(line: 1431, column: 10, scope: !1427)
!1463 = !DILocation(line: 1432, column: 3, scope: !1427)
!1464 = !DILocation(line: 1433, column: 55, scope: !1427)
!1465 = !DILocation(line: 1434, column: 5, scope: !1427)
!1466 = !DILocation(line: 1434, column: 25, scope: !1427)
!1467 = !DILocation(line: 1433, column: 10, scope: !1427)
!1468 = !DILocation(line: 1435, column: 15, scope: !1440)
!1469 = !DILocation(line: 1435, column: 31, scope: !1440)
!1470 = !DILocation(line: 1436, column: 9, scope: !1440)
!1471 = !DILocation(line: 1436, column: 35, scope: !1440)
!1472 = !DILocation(line: 1436, column: 41, scope: !1440)
!1473 = !DILocation(line: 1436, column: 45, scope: !1440)
!1474 = !DILocation(line: 1436, column: 71, scope: !1440)
!1475 = !DILocation(line: 1435, column: 7, scope: !1427)
!1476 = !DILocation(line: 0, scope: !1045, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 1444, column: 19, scope: !1439)
!1478 = !DILocation(line: 267, column: 3, scope: !1045, inlinedAt: !1477)
!1479 = !DILocation(line: 268, column: 5, scope: !1045, inlinedAt: !1477)
!1480 = !DILocation(line: 275, column: 14, scope: !1057, inlinedAt: !1477)
!1481 = !DILocation(line: 275, column: 20, scope: !1057, inlinedAt: !1477)
!1482 = !DILocation(line: 275, column: 7, scope: !1045, inlinedAt: !1477)
!1483 = !DILocation(line: 276, column: 68, scope: !1057, inlinedAt: !1477)
!1484 = !DILocation(line: 276, column: 12, scope: !1057, inlinedAt: !1477)
!1485 = !DILocation(line: 276, column: 5, scope: !1057, inlinedAt: !1477)
!1486 = !DILocation(line: 277, column: 14, scope: !1064, inlinedAt: !1477)
!1487 = !DILocation(line: 277, column: 23, scope: !1064, inlinedAt: !1477)
!1488 = !DILocation(line: 277, column: 7, scope: !1045, inlinedAt: !1477)
!1489 = !DILocation(line: 283, column: 1, scope: !1045, inlinedAt: !1477)
!1490 = !DILocation(line: 0, scope: !1439)
!1491 = !DILocation(line: 1445, column: 11, scope: !1439)
!1492 = !DILocation(line: 279, column: 10, scope: !1045, inlinedAt: !1477)
!1493 = !DILocation(line: 281, column: 12, scope: !1045, inlinedAt: !1477)
!1494 = !DILocation(line: 280, column: 32, scope: !1045, inlinedAt: !1477)
!1495 = !DILocation(line: 1445, column: 23, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 1445, column: 11)
!1497 = !DILocation(line: 1447, column: 39, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 1446, column: 9)
!1499 = !DILocation(line: 1447, column: 32, scope: !1498)
!1500 = !DILocation(line: 1447, column: 38, scope: !1498)
!1501 = !DILocation(line: 1448, column: 37, scope: !1498)
!1502 = !DILocation(line: 1448, column: 32, scope: !1498)
!1503 = !DILocation(line: 1448, column: 36, scope: !1498)
!1504 = !DILocation(line: 1449, column: 9, scope: !1498)
!1505 = !DILocation(line: 1452, column: 9, scope: !1443)
!1506 = !DILocation(line: 1452, column: 36, scope: !1443)
!1507 = !DILocation(line: 1452, column: 42, scope: !1443)
!1508 = !DILocation(line: 1452, column: 46, scope: !1443)
!1509 = !DILocation(line: 1452, column: 73, scope: !1443)
!1510 = !DILocation(line: 1451, column: 7, scope: !1427)
!1511 = !DILocation(line: 0, scope: !1045, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 1460, column: 20, scope: !1442)
!1513 = !DILocation(line: 267, column: 3, scope: !1045, inlinedAt: !1512)
!1514 = !DILocation(line: 268, column: 5, scope: !1045, inlinedAt: !1512)
!1515 = !DILocation(line: 275, column: 14, scope: !1057, inlinedAt: !1512)
!1516 = !DILocation(line: 275, column: 20, scope: !1057, inlinedAt: !1512)
!1517 = !DILocation(line: 275, column: 7, scope: !1045, inlinedAt: !1512)
!1518 = !DILocation(line: 276, column: 68, scope: !1057, inlinedAt: !1512)
!1519 = !DILocation(line: 276, column: 12, scope: !1057, inlinedAt: !1512)
!1520 = !DILocation(line: 276, column: 5, scope: !1057, inlinedAt: !1512)
!1521 = !DILocation(line: 277, column: 14, scope: !1064, inlinedAt: !1512)
!1522 = !DILocation(line: 277, column: 23, scope: !1064, inlinedAt: !1512)
!1523 = !DILocation(line: 277, column: 7, scope: !1045, inlinedAt: !1512)
!1524 = !DILocation(line: 283, column: 1, scope: !1045, inlinedAt: !1512)
!1525 = !DILocation(line: 0, scope: !1442)
!1526 = !DILocation(line: 1461, column: 11, scope: !1442)
!1527 = !DILocation(line: 279, column: 10, scope: !1045, inlinedAt: !1512)
!1528 = !DILocation(line: 281, column: 12, scope: !1045, inlinedAt: !1512)
!1529 = !DILocation(line: 280, column: 32, scope: !1045, inlinedAt: !1512)
!1530 = !DILocation(line: 1461, column: 24, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 1461, column: 11)
!1532 = !DILocation(line: 1463, column: 38, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 1462, column: 9)
!1534 = !DILocation(line: 1463, column: 31, scope: !1533)
!1535 = !DILocation(line: 1463, column: 37, scope: !1533)
!1536 = !DILocation(line: 1464, column: 36, scope: !1533)
!1537 = !DILocation(line: 1464, column: 31, scope: !1533)
!1538 = !DILocation(line: 1464, column: 35, scope: !1533)
!1539 = !DILocation(line: 1465, column: 9, scope: !1533)
!1540 = !DILocation(line: 1469, column: 11, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 1469, column: 11)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 1468, column: 5)
!1543 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 1467, column: 7)
!1544 = !DILocation(line: 1469, column: 38, scope: !1541)
!1545 = !DILocation(line: 1469, column: 11, scope: !1542)
!1546 = !DILocalVariable(name: "image", arg: 1, scope: !1547, file: !3, line: 1271, type: !13)
!1547 = distinct !DISubprogram(name: "GetProfilesFromResourceBlock", scope: !3, file: !3, line: 1271, type: !1548, scopeLine: 1273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1550)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !13, !638}
!1550 = !{!1546, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1566}
!1551 = !DILocalVariable(name: "resource_block", arg: 2, scope: !1547, file: !3, line: 1272, type: !638)
!1552 = !DILocalVariable(name: "datum", scope: !1547, file: !3, line: 1275, type: !846)
!1553 = !DILocalVariable(name: "p", scope: !1547, file: !3, line: 1278, type: !846)
!1554 = !DILocalVariable(name: "length", scope: !1547, file: !3, line: 1281, type: !92)
!1555 = !DILocalVariable(name: "count", scope: !1547, file: !3, line: 1284, type: !170)
!1556 = !DILocalVariable(name: "profile", scope: !1547, file: !3, line: 1287, type: !593)
!1557 = !DILocalVariable(name: "length_byte", scope: !1547, file: !3, line: 1290, type: !520)
!1558 = !DILocalVariable(name: "value", scope: !1547, file: !3, line: 1293, type: !9)
!1559 = !DILocalVariable(name: "id", scope: !1547, file: !3, line: 1296, type: !122)
!1560 = !DILocalVariable(name: "resolution", scope: !1561, file: !3, line: 1321, type: !9)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 1319, column: 7)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1317, column: 5)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 1301, column: 3)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 1300, column: 3)
!1565 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 1300, column: 3)
!1566 = !DILocalVariable(name: "units", scope: !1561, file: !3, line: 1324, type: !122)
!1567 = !DILocation(line: 0, scope: !1547, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 1470, column: 9, scope: !1541)
!1569 = !DILocation(line: 1298, column: 9, scope: !1547, inlinedAt: !1568)
!1570 = !DILocation(line: 1299, column: 10, scope: !1547, inlinedAt: !1568)
!1571 = !DILocation(line: 1300, column: 19, scope: !1564, inlinedAt: !1568)
!1572 = !DILocation(line: 1300, column: 3, scope: !1565, inlinedAt: !1568)
!1573 = !DILocation(line: 1302, column: 9, scope: !1574, inlinedAt: !1568)
!1574 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1302, column: 9)
!1575 = !DILocation(line: 1302, column: 45, scope: !1574, inlinedAt: !1568)
!1576 = !DILocation(line: 1302, column: 9, scope: !1563, inlinedAt: !1568)
!1577 = !DILocation(line: 1304, column: 6, scope: !1563, inlinedAt: !1568)
!1578 = !DILocation(line: 0, scope: !894, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 1305, column: 7, scope: !1563, inlinedAt: !1568)
!1580 = !DILocation(line: 1146, column: 32, scope: !894, inlinedAt: !1579)
!1581 = !DILocation(line: 1146, column: 30, scope: !894, inlinedAt: !1579)
!1582 = !DILocation(line: 1146, column: 35, scope: !894, inlinedAt: !1579)
!1583 = !DILocation(line: 1147, column: 33, scope: !894, inlinedAt: !1579)
!1584 = !DILocation(line: 1147, column: 31, scope: !894, inlinedAt: !1579)
!1585 = !DILocation(line: 1147, column: 13, scope: !894, inlinedAt: !1579)
!1586 = !DILocation(line: 1147, column: 11, scope: !894, inlinedAt: !1579)
!1587 = !DILocation(line: 0, scope: !911, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 1306, column: 7, scope: !1563, inlinedAt: !1568)
!1589 = !DILocation(line: 1118, column: 15, scope: !911, inlinedAt: !1588)
!1590 = !DILocation(line: 1118, column: 13, scope: !911, inlinedAt: !1588)
!1591 = !DILocation(line: 1307, column: 6, scope: !1563, inlinedAt: !1568)
!1592 = !DILocation(line: 1308, column: 26, scope: !1593, inlinedAt: !1568)
!1593 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1308, column: 9)
!1594 = !DILocation(line: 1308, column: 9, scope: !1563, inlinedAt: !1568)
!1595 = !DILocation(line: 1310, column: 11, scope: !1596, inlinedAt: !1568)
!1596 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1310, column: 9)
!1597 = !DILocation(line: 1310, column: 9, scope: !1563, inlinedAt: !1568)
!1598 = !DILocation(line: 0, scope: !928, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 1312, column: 7, scope: !1563, inlinedAt: !1568)
!1600 = !DILocation(line: 1136, column: 24, scope: !928, inlinedAt: !1599)
!1601 = !DILocation(line: 1136, column: 22, scope: !928, inlinedAt: !1599)
!1602 = !DILocation(line: 1136, column: 27, scope: !928, inlinedAt: !1599)
!1603 = !DILocation(line: 1137, column: 25, scope: !928, inlinedAt: !1599)
!1604 = !DILocation(line: 1137, column: 23, scope: !928, inlinedAt: !1599)
!1605 = !DILocation(line: 1137, column: 28, scope: !928, inlinedAt: !1599)
!1606 = !DILocation(line: 1137, column: 11, scope: !928, inlinedAt: !1599)
!1607 = !DILocation(line: 1138, column: 25, scope: !928, inlinedAt: !1599)
!1608 = !DILocation(line: 1138, column: 23, scope: !928, inlinedAt: !1599)
!1609 = !DILocation(line: 1138, column: 28, scope: !928, inlinedAt: !1599)
!1610 = !DILocation(line: 1138, column: 11, scope: !928, inlinedAt: !1599)
!1611 = !DILocation(line: 1139, column: 25, scope: !928, inlinedAt: !1599)
!1612 = !DILocation(line: 1139, column: 23, scope: !928, inlinedAt: !1599)
!1613 = !DILocation(line: 1139, column: 11, scope: !928, inlinedAt: !1599)
!1614 = !DILocation(line: 1314, column: 27, scope: !1615, inlinedAt: !1568)
!1615 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1314, column: 9)
!1616 = !DILocation(line: 1314, column: 12, scope: !1615, inlinedAt: !1568)
!1617 = !DILocation(line: 1314, column: 36, scope: !1615, inlinedAt: !1568)
!1618 = !DILocation(line: 1316, column: 5, scope: !1563, inlinedAt: !1568)
!1619 = !DILocation(line: 0, scope: !928, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 1329, column: 11, scope: !1561, inlinedAt: !1568)
!1621 = !DILocation(line: 1136, column: 24, scope: !928, inlinedAt: !1620)
!1622 = !DILocation(line: 1136, column: 22, scope: !928, inlinedAt: !1620)
!1623 = !DILocation(line: 1136, column: 27, scope: !928, inlinedAt: !1620)
!1624 = !DILocation(line: 1137, column: 25, scope: !928, inlinedAt: !1620)
!1625 = !DILocation(line: 1137, column: 23, scope: !928, inlinedAt: !1620)
!1626 = !DILocation(line: 1137, column: 28, scope: !928, inlinedAt: !1620)
!1627 = !DILocation(line: 1137, column: 11, scope: !928, inlinedAt: !1620)
!1628 = !DILocation(line: 1138, column: 25, scope: !928, inlinedAt: !1620)
!1629 = !DILocation(line: 1138, column: 23, scope: !928, inlinedAt: !1620)
!1630 = !DILocation(line: 1138, column: 28, scope: !928, inlinedAt: !1620)
!1631 = !DILocation(line: 1138, column: 11, scope: !928, inlinedAt: !1620)
!1632 = !DILocation(line: 1139, column: 25, scope: !928, inlinedAt: !1620)
!1633 = !DILocation(line: 1139, column: 23, scope: !928, inlinedAt: !1620)
!1634 = !DILocation(line: 1139, column: 11, scope: !928, inlinedAt: !1620)
!1635 = !DILocation(line: 0, scope: !1561, inlinedAt: !1568)
!1636 = !DILocation(line: 1330, column: 30, scope: !1561, inlinedAt: !1568)
!1637 = !DILocation(line: 1330, column: 50, scope: !1561, inlinedAt: !1568)
!1638 = !DILocation(line: 1330, column: 28, scope: !1561, inlinedAt: !1568)
!1639 = !{!707, !714, i64 264}
!1640 = !DILocation(line: 0, scope: !894, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 1331, column: 11, scope: !1561, inlinedAt: !1568)
!1642 = !DILocation(line: 1146, column: 32, scope: !894, inlinedAt: !1641)
!1643 = !DILocation(line: 1146, column: 30, scope: !894, inlinedAt: !1641)
!1644 = !DILocation(line: 1146, column: 35, scope: !894, inlinedAt: !1641)
!1645 = !DILocation(line: 1147, column: 33, scope: !894, inlinedAt: !1641)
!1646 = !DILocation(line: 1147, column: 31, scope: !894, inlinedAt: !1641)
!1647 = !DILocation(line: 1147, column: 13, scope: !894, inlinedAt: !1641)
!1648 = !DILocation(line: 1147, column: 11, scope: !894, inlinedAt: !1641)
!1649 = !DILocation(line: 1331, column: 38, scope: !1561, inlinedAt: !1568)
!1650 = !DILocation(line: 0, scope: !928, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 1332, column: 11, scope: !1561, inlinedAt: !1568)
!1652 = !DILocation(line: 1136, column: 24, scope: !928, inlinedAt: !1651)
!1653 = !DILocation(line: 1136, column: 22, scope: !928, inlinedAt: !1651)
!1654 = !DILocation(line: 1136, column: 27, scope: !928, inlinedAt: !1651)
!1655 = !DILocation(line: 1137, column: 25, scope: !928, inlinedAt: !1651)
!1656 = !DILocation(line: 1137, column: 23, scope: !928, inlinedAt: !1651)
!1657 = !DILocation(line: 1137, column: 28, scope: !928, inlinedAt: !1651)
!1658 = !DILocation(line: 1137, column: 11, scope: !928, inlinedAt: !1651)
!1659 = !DILocation(line: 1138, column: 25, scope: !928, inlinedAt: !1651)
!1660 = !DILocation(line: 1138, column: 23, scope: !928, inlinedAt: !1651)
!1661 = !DILocation(line: 1138, column: 28, scope: !928, inlinedAt: !1651)
!1662 = !DILocation(line: 1138, column: 11, scope: !928, inlinedAt: !1651)
!1663 = !DILocation(line: 1139, column: 25, scope: !928, inlinedAt: !1651)
!1664 = !DILocation(line: 1139, column: 23, scope: !928, inlinedAt: !1651)
!1665 = !DILocation(line: 1139, column: 11, scope: !928, inlinedAt: !1651)
!1666 = !DILocation(line: 1332, column: 42, scope: !1561, inlinedAt: !1568)
!1667 = !DILocation(line: 1333, column: 30, scope: !1561, inlinedAt: !1568)
!1668 = !DILocation(line: 1333, column: 50, scope: !1561, inlinedAt: !1568)
!1669 = !DILocation(line: 1333, column: 28, scope: !1561, inlinedAt: !1568)
!1670 = !{!707, !714, i64 272}
!1671 = !DILocation(line: 1337, column: 36, scope: !1672, inlinedAt: !1568)
!1672 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 1337, column: 13)
!1673 = !DILocation(line: 1337, column: 13, scope: !1561, inlinedAt: !1568)
!1674 = !DILocation(line: 1338, column: 23, scope: !1672, inlinedAt: !1568)
!1675 = !{!707, !708, i64 224}
!1676 = !DILocation(line: 1338, column: 11, scope: !1672, inlinedAt: !1568)
!1677 = !DILocation(line: 1341, column: 25, scope: !1678, inlinedAt: !1568)
!1678 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 1340, column: 11)
!1679 = !DILocation(line: 1342, column: 32, scope: !1678, inlinedAt: !1568)
!1680 = !DILocation(line: 1343, column: 32, scope: !1678, inlinedAt: !1568)
!1681 = !DILocation(line: 1352, column: 17, scope: !1682, inlinedAt: !1568)
!1682 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 1348, column: 7)
!1683 = !DILocation(line: 1353, column: 9, scope: !1682, inlinedAt: !1568)
!1684 = !DILocation(line: 1354, column: 16, scope: !1682, inlinedAt: !1568)
!1685 = !DILocation(line: 1355, column: 17, scope: !1682, inlinedAt: !1568)
!1686 = !DILocation(line: 1356, column: 10, scope: !1682, inlinedAt: !1568)
!1687 = !DILocation(line: 1357, column: 9, scope: !1682, inlinedAt: !1568)
!1688 = !DILocation(line: 1364, column: 10, scope: !1689, inlinedAt: !1568)
!1689 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 1360, column: 7)
!1690 = !DILocation(line: 1365, column: 9, scope: !1689, inlinedAt: !1568)
!1691 = !DILocation(line: 1372, column: 17, scope: !1692, inlinedAt: !1568)
!1692 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 1368, column: 7)
!1693 = !DILocation(line: 1373, column: 9, scope: !1692, inlinedAt: !1568)
!1694 = !DILocation(line: 1374, column: 16, scope: !1692, inlinedAt: !1568)
!1695 = !DILocation(line: 1375, column: 17, scope: !1692, inlinedAt: !1568)
!1696 = !DILocation(line: 1376, column: 10, scope: !1692, inlinedAt: !1568)
!1697 = !DILocation(line: 1377, column: 9, scope: !1692, inlinedAt: !1568)
!1698 = !DILocation(line: 1384, column: 17, scope: !1699, inlinedAt: !1568)
!1699 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 1380, column: 7)
!1700 = !DILocation(line: 1385, column: 9, scope: !1699, inlinedAt: !1568)
!1701 = !DILocation(line: 1386, column: 16, scope: !1699, inlinedAt: !1568)
!1702 = !DILocation(line: 1387, column: 17, scope: !1699, inlinedAt: !1568)
!1703 = !DILocation(line: 1388, column: 10, scope: !1699, inlinedAt: !1568)
!1704 = !DILocation(line: 1389, column: 9, scope: !1699, inlinedAt: !1568)
!1705 = !DILocation(line: 1396, column: 17, scope: !1706, inlinedAt: !1568)
!1706 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 1392, column: 7)
!1707 = !DILocation(line: 1397, column: 9, scope: !1706, inlinedAt: !1568)
!1708 = !DILocation(line: 1398, column: 16, scope: !1706, inlinedAt: !1568)
!1709 = !DILocation(line: 1399, column: 17, scope: !1706, inlinedAt: !1568)
!1710 = !DILocation(line: 1400, column: 10, scope: !1706, inlinedAt: !1568)
!1711 = !DILocation(line: 1401, column: 9, scope: !1706, inlinedAt: !1568)
!1712 = !DILocation(line: 1405, column: 10, scope: !1713, inlinedAt: !1568)
!1713 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 1404, column: 7)
!1714 = !DILocation(line: 1406, column: 9, scope: !1713, inlinedAt: !1568)
!1715 = !DILocation(line: 0, scope: !1562, inlinedAt: !1568)
!1716 = !DILocation(line: 1409, column: 16, scope: !1717, inlinedAt: !1568)
!1717 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1409, column: 9)
!1718 = !DILocation(line: 1409, column: 9, scope: !1563, inlinedAt: !1568)
!1719 = distinct !{!1719, !1572, !1720, !1036, !1037}
!1720 = !DILocation(line: 1411, column: 3, scope: !1565, inlinedAt: !1568)
!1721 = !DILocation(line: 1471, column: 26, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 1471, column: 16)
!1723 = !DILocation(line: 1471, column: 16, scope: !1541)
!1724 = !DILocation(line: 1472, column: 9, scope: !1722)
!1725 = !DILocation(line: 1477, column: 10, scope: !1427)
!1726 = !DILocation(line: 1478, column: 10, scope: !1427)
!1727 = !DILocation(line: 1480, column: 1, scope: !1427)
!1728 = !DILocation(line: 1479, column: 3, scope: !1427)
!1729 = distinct !DISubprogram(name: "SyncImageProfiles", scope: !3, file: !3, line: 1908, type: !1730, scopeLine: 1909, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1732)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!6, !13}
!1732 = !{!1733, !1734, !1735}
!1733 = !DILocalVariable(name: "image", arg: 1, scope: !1729, file: !3, line: 1908, type: !13)
!1734 = !DILocalVariable(name: "status", scope: !1729, file: !3, line: 1911, type: !6)
!1735 = !DILocalVariable(name: "profile", scope: !1729, file: !3, line: 1914, type: !593)
!1736 = !DILocation(line: 0, scope: !1729)
!1737 = !DILocation(line: 0, scope: !1045, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 1917, column: 26, scope: !1729)
!1739 = !DILocation(line: 267, column: 3, scope: !1045, inlinedAt: !1738)
!1740 = !DILocation(line: 268, column: 5, scope: !1045, inlinedAt: !1738)
!1741 = !DILocation(line: 275, column: 14, scope: !1057, inlinedAt: !1738)
!1742 = !DILocation(line: 275, column: 20, scope: !1057, inlinedAt: !1738)
!1743 = !DILocation(line: 275, column: 7, scope: !1045, inlinedAt: !1738)
!1744 = !DILocation(line: 276, column: 68, scope: !1057, inlinedAt: !1738)
!1745 = !DILocation(line: 276, column: 12, scope: !1057, inlinedAt: !1738)
!1746 = !DILocation(line: 276, column: 5, scope: !1057, inlinedAt: !1738)
!1747 = !DILocation(line: 277, column: 14, scope: !1064, inlinedAt: !1738)
!1748 = !DILocation(line: 277, column: 23, scope: !1064, inlinedAt: !1738)
!1749 = !DILocation(line: 277, column: 7, scope: !1045, inlinedAt: !1738)
!1750 = !DILocation(line: 283, column: 1, scope: !1045, inlinedAt: !1738)
!1751 = !DILocation(line: 1918, column: 7, scope: !1729)
!1752 = !DILocation(line: 279, column: 10, scope: !1045, inlinedAt: !1738)
!1753 = !DILocation(line: 281, column: 12, scope: !1045, inlinedAt: !1738)
!1754 = !DILocation(line: 280, column: 32, scope: !1045, inlinedAt: !1738)
!1755 = !DILocation(line: 1918, column: 15, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 1918, column: 7)
!1757 = !DILocalVariable(name: "image", arg: 1, scope: !1758, file: !3, line: 1627, type: !13)
!1758 = distinct !DISubprogram(name: "Sync8BimProfile", scope: !3, file: !3, line: 1627, type: !4, scopeLine: 1628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1759)
!1759 = !{!1757, !1760, !1761, !1762, !1763, !1764}
!1760 = !DILocalVariable(name: "profile", arg: 2, scope: !1758, file: !3, line: 1627, type: !593)
!1761 = !DILocalVariable(name: "count", scope: !1758, file: !3, line: 1630, type: !92)
!1762 = !DILocalVariable(name: "length", scope: !1758, file: !3, line: 1631, type: !92)
!1763 = !DILocalVariable(name: "p", scope: !1758, file: !3, line: 1634, type: !519)
!1764 = !DILocalVariable(name: "id", scope: !1758, file: !3, line: 1637, type: !122)
!1765 = !DILocation(line: 0, scope: !1758, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 1919, column: 9, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 1919, column: 9)
!1768 = !DILocation(line: 1639, column: 10, scope: !1758, inlinedAt: !1766)
!1769 = !DILocation(line: 1640, column: 5, scope: !1758, inlinedAt: !1766)
!1770 = !DILocation(line: 1641, column: 16, scope: !1758, inlinedAt: !1766)
!1771 = !DILocation(line: 1641, column: 3, scope: !1758, inlinedAt: !1766)
!1772 = !DILocalVariable(name: "p", arg: 1, scope: !1773, file: !3, line: 1512, type: !1776)
!1773 = distinct !DISubprogram(name: "ReadProfileByte", scope: !3, file: !3, line: 1512, type: !1774, scopeLine: 1513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1778)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!497, !1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!1778 = !{!1772, !1779, !1780}
!1779 = !DILocalVariable(name: "length", arg: 2, scope: !1773, file: !3, line: 1512, type: !1777)
!1780 = !DILocalVariable(name: "c", scope: !1773, file: !3, line: 1515, type: !497)
!1781 = !DILocation(line: 0, scope: !1773, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 1643, column: 9, scope: !1783, inlinedAt: !1766)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 1643, column: 9)
!1784 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 1642, column: 3)
!1785 = !DILocation(line: 1519, column: 17, scope: !1773, inlinedAt: !1782)
!1786 = !DILocation(line: 1519, column: 12, scope: !1773, inlinedAt: !1782)
!1787 = !DILocation(line: 1520, column: 12, scope: !1773, inlinedAt: !1782)
!1788 = !DILocation(line: 1643, column: 37, scope: !1783, inlinedAt: !1766)
!1789 = !DILocation(line: 1643, column: 9, scope: !1784, inlinedAt: !1766)
!1790 = !DILocation(line: 0, scope: !1773, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 1645, column: 9, scope: !1792, inlinedAt: !1766)
!1792 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 1645, column: 9)
!1793 = !DILocation(line: 1517, column: 15, scope: !1794, inlinedAt: !1791)
!1794 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 1517, column: 7)
!1795 = !DILocation(line: 1517, column: 7, scope: !1773, inlinedAt: !1791)
!1796 = !DILocation(line: 1519, column: 17, scope: !1773, inlinedAt: !1791)
!1797 = !DILocation(line: 1519, column: 12, scope: !1773, inlinedAt: !1791)
!1798 = !DILocation(line: 1520, column: 12, scope: !1773, inlinedAt: !1791)
!1799 = !DILocation(line: 1645, column: 37, scope: !1792, inlinedAt: !1766)
!1800 = !DILocation(line: 1645, column: 9, scope: !1784, inlinedAt: !1766)
!1801 = !DILocation(line: 0, scope: !1773, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 1647, column: 9, scope: !1803, inlinedAt: !1766)
!1803 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 1647, column: 9)
!1804 = !DILocation(line: 1517, column: 15, scope: !1794, inlinedAt: !1802)
!1805 = !DILocation(line: 1517, column: 7, scope: !1773, inlinedAt: !1802)
!1806 = !DILocation(line: 1519, column: 17, scope: !1773, inlinedAt: !1802)
!1807 = !DILocation(line: 1519, column: 12, scope: !1773, inlinedAt: !1802)
!1808 = !DILocation(line: 1520, column: 12, scope: !1773, inlinedAt: !1802)
!1809 = !DILocation(line: 1647, column: 37, scope: !1803, inlinedAt: !1766)
!1810 = !DILocation(line: 1647, column: 9, scope: !1784, inlinedAt: !1766)
!1811 = !DILocation(line: 0, scope: !1773, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 1649, column: 9, scope: !1813, inlinedAt: !1766)
!1813 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 1649, column: 9)
!1814 = !DILocation(line: 1517, column: 15, scope: !1794, inlinedAt: !1812)
!1815 = !DILocation(line: 1517, column: 7, scope: !1773, inlinedAt: !1812)
!1816 = !DILocation(line: 1519, column: 17, scope: !1773, inlinedAt: !1812)
!1817 = !DILocation(line: 1519, column: 12, scope: !1773, inlinedAt: !1812)
!1818 = !DILocation(line: 1520, column: 12, scope: !1773, inlinedAt: !1812)
!1819 = !DILocation(line: 1649, column: 37, scope: !1813, inlinedAt: !1766)
!1820 = !DILocation(line: 1649, column: 9, scope: !1784, inlinedAt: !1766)
!1821 = !DILocation(line: 1651, column: 16, scope: !1822, inlinedAt: !1766)
!1822 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 1651, column: 9)
!1823 = !DILocation(line: 1651, column: 9, scope: !1784, inlinedAt: !1766)
!1824 = !DILocalVariable(name: "p", arg: 1, scope: !1825, file: !3, line: 1572, type: !1776)
!1825 = distinct !DISubprogram(name: "ReadProfileMSBShort", scope: !3, file: !3, line: 1572, type: !1826, scopeLine: 1574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1828)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!122, !1776, !1777}
!1828 = !{!1824, !1829, !1830}
!1829 = !DILocalVariable(name: "length", arg: 2, scope: !1825, file: !3, line: 1573, type: !1777)
!1830 = !DILocalVariable(name: "value", scope: !1825, file: !3, line: 1576, type: !122)
!1831 = !DILocation(line: 0, scope: !1825, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 1653, column: 8, scope: !1784, inlinedAt: !1766)
!1833 = !DILocalVariable(name: "endian", arg: 1, scope: !1834, file: !3, line: 1524, type: !1837)
!1834 = distinct !DISubprogram(name: "ReadProfileShort", scope: !3, file: !3, line: 1524, type: !1835, scopeLine: 1526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1838)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!122, !1837, !519}
!1837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!1838 = !{!1833, !1839, !1840}
!1839 = !DILocalVariable(name: "buffer", arg: 2, scope: !1834, file: !3, line: 1525, type: !519)
!1840 = !DILocalVariable(name: "value", scope: !1834, file: !3, line: 1528, type: !122)
!1841 = !DILocation(line: 0, scope: !1834, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 1581, column: 9, scope: !1825, inlinedAt: !1832)
!1843 = !DILocation(line: 1536, column: 5, scope: !1834, inlinedAt: !1842)
!1844 = !DILocation(line: 1583, column: 5, scope: !1825, inlinedAt: !1832)
!1845 = !DILocation(line: 0, scope: !1773, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 1654, column: 11, scope: !1784, inlinedAt: !1766)
!1847 = !DILocation(line: 1519, column: 12, scope: !1773, inlinedAt: !1846)
!1848 = !DILocation(line: 1520, column: 12, scope: !1773, inlinedAt: !1846)
!1849 = !DILocation(line: 1654, column: 11, scope: !1784, inlinedAt: !1766)
!1850 = !DILocation(line: 1655, column: 15, scope: !1851, inlinedAt: !1766)
!1851 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 1655, column: 9)
!1852 = !DILocation(line: 1655, column: 9, scope: !1784, inlinedAt: !1766)
!1853 = !DILocation(line: 1519, column: 17, scope: !1773, inlinedAt: !1846)
!1854 = !DILocation(line: 1657, column: 6, scope: !1784, inlinedAt: !1766)
!1855 = !DILocation(line: 1658, column: 10, scope: !1856, inlinedAt: !1766)
!1856 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 1658, column: 9)
!1857 = !DILocation(line: 1658, column: 13, scope: !1856, inlinedAt: !1766)
!1858 = !DILocation(line: 1658, column: 9, scope: !1784, inlinedAt: !1766)
!1859 = !DILocalVariable(name: "p", arg: 1, scope: !1860, file: !3, line: 1557, type: !1776)
!1860 = distinct !DISubprogram(name: "ReadProfileMSBLong", scope: !3, file: !3, line: 1557, type: !1861, scopeLine: 1559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1863)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!92, !1776, !1777}
!1863 = !{!1859, !1864, !1865}
!1864 = !DILocalVariable(name: "length", arg: 2, scope: !1860, file: !3, line: 1558, type: !1777)
!1865 = !DILocalVariable(name: "value", scope: !1860, file: !3, line: 1561, type: !92)
!1866 = !DILocation(line: 0, scope: !1860, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 1660, column: 11, scope: !1784, inlinedAt: !1766)
!1868 = !DILocalVariable(name: "endian", arg: 1, scope: !1869, file: !3, line: 1540, type: !1837)
!1869 = distinct !DISubprogram(name: "ReadProfileLong", scope: !3, file: !3, line: 1540, type: !1870, scopeLine: 1542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1872)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!92, !1837, !519}
!1872 = !{!1868, !1873, !1874}
!1873 = !DILocalVariable(name: "buffer", arg: 2, scope: !1869, file: !3, line: 1541, type: !519)
!1874 = !DILocalVariable(name: "value", scope: !1869, file: !3, line: 1544, type: !92)
!1875 = !DILocation(line: 0, scope: !1869, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 1566, column: 9, scope: !1860, inlinedAt: !1867)
!1877 = !DILocation(line: 1552, column: 20, scope: !1869, inlinedAt: !1876)
!1878 = !DILocation(line: 1552, column: 30, scope: !1869, inlinedAt: !1876)
!1879 = !DILocation(line: 1552, column: 40, scope: !1869, inlinedAt: !1876)
!1880 = !DILocation(line: 1552, column: 50, scope: !1869, inlinedAt: !1876)
!1881 = !DILocation(line: 1552, column: 37, scope: !1869, inlinedAt: !1876)
!1882 = !DILocation(line: 1553, column: 6, scope: !1869, inlinedAt: !1876)
!1883 = !DILocation(line: 1553, column: 16, scope: !1869, inlinedAt: !1876)
!1884 = !DILocation(line: 1552, column: 57, scope: !1869, inlinedAt: !1876)
!1885 = !DILocation(line: 1553, column: 24, scope: !1869, inlinedAt: !1876)
!1886 = !DILocation(line: 1567, column: 12, scope: !1860, inlinedAt: !1867)
!1887 = !DILocation(line: 1568, column: 5, scope: !1860, inlinedAt: !1867)
!1888 = !DILocation(line: 1661, column: 15, scope: !1889, inlinedAt: !1766)
!1889 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 1661, column: 9)
!1890 = !DILocation(line: 1661, column: 9, scope: !1784, inlinedAt: !1766)
!1891 = !DILocation(line: 1663, column: 12, scope: !1892, inlinedAt: !1766)
!1892 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 1663, column: 9)
!1893 = !DILocation(line: 1663, column: 21, scope: !1892, inlinedAt: !1766)
!1894 = !DILocation(line: 1665, column: 20, scope: !1895, inlinedAt: !1766)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 1665, column: 13)
!1896 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 1664, column: 7)
!1897 = !DILocation(line: 1665, column: 26, scope: !1895, inlinedAt: !1766)
!1898 = !DILocation(line: 0, scope: !1895, inlinedAt: !1766)
!1899 = !DILocation(line: 1665, column: 13, scope: !1896, inlinedAt: !1766)
!1900 = !DILocation(line: 1666, column: 74, scope: !1895, inlinedAt: !1766)
!1901 = !DILocation(line: 1666, column: 79, scope: !1895, inlinedAt: !1766)
!1902 = !DILocation(line: 1666, column: 39, scope: !1895, inlinedAt: !1766)
!1903 = !DILocalVariable(name: "endian", arg: 1, scope: !1904, file: !3, line: 1587, type: !1837)
!1904 = distinct !DISubprogram(name: "WriteProfileLong", scope: !3, file: !3, line: 1587, type: !1905, scopeLine: 1589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1837, !777, !519}
!1907 = !{!1903, !1908, !1909, !1910}
!1908 = !DILocalVariable(name: "value", arg: 2, scope: !1904, file: !3, line: 1588, type: !777)
!1909 = !DILocalVariable(name: "p", arg: 3, scope: !1904, file: !3, line: 1588, type: !519)
!1910 = !DILocalVariable(name: "buffer", scope: !1904, file: !3, line: 1591, type: !999)
!1911 = !DILocation(line: 0, scope: !1904, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 1666, column: 11, scope: !1895, inlinedAt: !1766)
!1913 = !DILocation(line: 1590, column: 3, scope: !1904, inlinedAt: !1912)
!1914 = !DILocation(line: 1591, column: 5, scope: !1904, inlinedAt: !1912)
!1915 = !DILocation(line: 1602, column: 36, scope: !1904, inlinedAt: !1912)
!1916 = !DILocation(line: 1602, column: 13, scope: !1904, inlinedAt: !1912)
!1917 = !DILocation(line: 1602, column: 12, scope: !1904, inlinedAt: !1912)
!1918 = !DILocation(line: 1603, column: 36, scope: !1904, inlinedAt: !1912)
!1919 = !DILocation(line: 1603, column: 13, scope: !1904, inlinedAt: !1912)
!1920 = !DILocation(line: 1603, column: 12, scope: !1904, inlinedAt: !1912)
!1921 = !DILocation(line: 1604, column: 36, scope: !1904, inlinedAt: !1912)
!1922 = !DILocation(line: 1604, column: 13, scope: !1904, inlinedAt: !1912)
!1923 = !DILocation(line: 1604, column: 12, scope: !1904, inlinedAt: !1912)
!1924 = !DILocation(line: 1607, column: 1, scope: !1904, inlinedAt: !1912)
!1925 = !DILocation(line: 1666, column: 11, scope: !1895, inlinedAt: !1766)
!1926 = !DILocation(line: 1669, column: 74, scope: !1895, inlinedAt: !1766)
!1927 = !DILocation(line: 1669, column: 39, scope: !1895, inlinedAt: !1766)
!1928 = !DILocation(line: 0, scope: !1904, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 1669, column: 11, scope: !1895, inlinedAt: !1766)
!1930 = !DILocation(line: 1590, column: 3, scope: !1904, inlinedAt: !1929)
!1931 = !DILocation(line: 1591, column: 5, scope: !1904, inlinedAt: !1929)
!1932 = !DILocation(line: 1602, column: 36, scope: !1904, inlinedAt: !1929)
!1933 = !DILocation(line: 1602, column: 13, scope: !1904, inlinedAt: !1929)
!1934 = !DILocation(line: 1602, column: 12, scope: !1904, inlinedAt: !1929)
!1935 = !DILocation(line: 1603, column: 36, scope: !1904, inlinedAt: !1929)
!1936 = !DILocation(line: 1603, column: 13, scope: !1904, inlinedAt: !1929)
!1937 = !DILocation(line: 1603, column: 12, scope: !1904, inlinedAt: !1929)
!1938 = !DILocation(line: 1604, column: 36, scope: !1904, inlinedAt: !1929)
!1939 = !DILocation(line: 1604, column: 13, scope: !1904, inlinedAt: !1929)
!1940 = !DILocation(line: 1604, column: 12, scope: !1904, inlinedAt: !1929)
!1941 = !DILocation(line: 1607, column: 1, scope: !1904, inlinedAt: !1929)
!1942 = !DILocation(line: 1671, column: 61, scope: !1896, inlinedAt: !1766)
!1943 = !DILocation(line: 1671, column: 68, scope: !1896, inlinedAt: !1766)
!1944 = !DILocalVariable(name: "endian", arg: 1, scope: !1945, file: !3, line: 1609, type: !1837)
!1945 = distinct !DISubprogram(name: "WriteProfileShort", scope: !3, file: !3, line: 1609, type: !1946, scopeLine: 1611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !1949)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !1837, !1948, !519}
!1948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!1949 = !{!1944, !1950, !1951, !1952}
!1950 = !DILocalVariable(name: "value", arg: 2, scope: !1945, file: !3, line: 1610, type: !1948)
!1951 = !DILocalVariable(name: "p", arg: 3, scope: !1945, file: !3, line: 1610, type: !519)
!1952 = !DILocalVariable(name: "buffer", scope: !1945, file: !3, line: 1613, type: !1953)
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 16, elements: !1954)
!1954 = !{!1955}
!1955 = !DISubrange(count: 2)
!1956 = !DILocation(line: 0, scope: !1945, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 1671, column: 9, scope: !1896, inlinedAt: !1766)
!1958 = !DILocation(line: 1612, column: 3, scope: !1945, inlinedAt: !1957)
!1959 = !DILocation(line: 1613, column: 5, scope: !1945, inlinedAt: !1957)
!1960 = !DILocation(line: 1622, column: 13, scope: !1945, inlinedAt: !1957)
!1961 = !DILocation(line: 1622, column: 12, scope: !1945, inlinedAt: !1957)
!1962 = !DILocation(line: 1625, column: 1, scope: !1945, inlinedAt: !1957)
!1963 = !DILocation(line: 1672, column: 20, scope: !1964, inlinedAt: !1766)
!1964 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 1672, column: 13)
!1965 = !DILocation(line: 1672, column: 26, scope: !1964, inlinedAt: !1766)
!1966 = !DILocation(line: 0, scope: !1964, inlinedAt: !1766)
!1967 = !DILocation(line: 1672, column: 13, scope: !1896, inlinedAt: !1766)
!1968 = !DILocation(line: 1673, column: 74, scope: !1964, inlinedAt: !1766)
!1969 = !DILocation(line: 1673, column: 79, scope: !1964, inlinedAt: !1766)
!1970 = !DILocation(line: 1673, column: 39, scope: !1964, inlinedAt: !1766)
!1971 = !DILocation(line: 1674, column: 23, scope: !1964, inlinedAt: !1766)
!1972 = !DILocation(line: 0, scope: !1904, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 1673, column: 11, scope: !1964, inlinedAt: !1766)
!1974 = !DILocation(line: 1590, column: 3, scope: !1904, inlinedAt: !1973)
!1975 = !DILocation(line: 1591, column: 5, scope: !1904, inlinedAt: !1973)
!1976 = !DILocation(line: 1602, column: 36, scope: !1904, inlinedAt: !1973)
!1977 = !DILocation(line: 1602, column: 13, scope: !1904, inlinedAt: !1973)
!1978 = !DILocation(line: 1602, column: 12, scope: !1904, inlinedAt: !1973)
!1979 = !DILocation(line: 1603, column: 36, scope: !1904, inlinedAt: !1973)
!1980 = !DILocation(line: 1603, column: 13, scope: !1904, inlinedAt: !1973)
!1981 = !DILocation(line: 1603, column: 12, scope: !1904, inlinedAt: !1973)
!1982 = !DILocation(line: 1604, column: 36, scope: !1904, inlinedAt: !1973)
!1983 = !DILocation(line: 1604, column: 13, scope: !1904, inlinedAt: !1973)
!1984 = !DILocation(line: 1604, column: 12, scope: !1904, inlinedAt: !1973)
!1985 = !DILocation(line: 1607, column: 1, scope: !1904, inlinedAt: !1973)
!1986 = !DILocation(line: 1673, column: 11, scope: !1964, inlinedAt: !1766)
!1987 = !DILocation(line: 1676, column: 74, scope: !1964, inlinedAt: !1766)
!1988 = !DILocation(line: 1676, column: 39, scope: !1964, inlinedAt: !1766)
!1989 = !DILocation(line: 1677, column: 23, scope: !1964, inlinedAt: !1766)
!1990 = !DILocation(line: 0, scope: !1904, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 1676, column: 11, scope: !1964, inlinedAt: !1766)
!1992 = !DILocation(line: 1590, column: 3, scope: !1904, inlinedAt: !1991)
!1993 = !DILocation(line: 1591, column: 5, scope: !1904, inlinedAt: !1991)
!1994 = !DILocation(line: 1602, column: 36, scope: !1904, inlinedAt: !1991)
!1995 = !DILocation(line: 1602, column: 13, scope: !1904, inlinedAt: !1991)
!1996 = !DILocation(line: 1602, column: 12, scope: !1904, inlinedAt: !1991)
!1997 = !DILocation(line: 1603, column: 36, scope: !1904, inlinedAt: !1991)
!1998 = !DILocation(line: 1603, column: 13, scope: !1904, inlinedAt: !1991)
!1999 = !DILocation(line: 1603, column: 12, scope: !1904, inlinedAt: !1991)
!2000 = !DILocation(line: 1604, column: 36, scope: !1904, inlinedAt: !1991)
!2001 = !DILocation(line: 1604, column: 13, scope: !1904, inlinedAt: !1991)
!2002 = !DILocation(line: 1604, column: 12, scope: !1904, inlinedAt: !1991)
!2003 = !DILocation(line: 1607, column: 1, scope: !1904, inlinedAt: !1991)
!2004 = !DILocation(line: 1678, column: 61, scope: !1896, inlinedAt: !1766)
!2005 = !DILocation(line: 1678, column: 68, scope: !1896, inlinedAt: !1766)
!2006 = !DILocation(line: 0, scope: !1945, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 1678, column: 9, scope: !1896, inlinedAt: !1766)
!2008 = !DILocation(line: 1612, column: 3, scope: !1945, inlinedAt: !2007)
!2009 = !DILocation(line: 1613, column: 5, scope: !1945, inlinedAt: !2007)
!2010 = !DILocation(line: 1622, column: 13, scope: !1945, inlinedAt: !2007)
!2011 = !DILocation(line: 1622, column: 12, scope: !1945, inlinedAt: !2007)
!2012 = !DILocation(line: 1625, column: 1, scope: !1945, inlinedAt: !2007)
!2013 = !DILocation(line: 1679, column: 7, scope: !1896, inlinedAt: !1766)
!2014 = !DILocation(line: 1680, column: 6, scope: !1784, inlinedAt: !1766)
!2015 = !DILocation(line: 1681, column: 11, scope: !1784, inlinedAt: !1766)
!2016 = distinct !{!2016, !1771, !2017, !1036, !1037}
!2017 = !DILocation(line: 1682, column: 3, scope: !1758, inlinedAt: !1766)
!2018 = !DILocation(line: 0, scope: !1045, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 1921, column: 26, scope: !1729)
!2020 = !DILocation(line: 267, column: 3, scope: !1045, inlinedAt: !2019)
!2021 = !DILocation(line: 268, column: 5, scope: !1045, inlinedAt: !2019)
!2022 = !DILocation(line: 275, column: 14, scope: !1057, inlinedAt: !2019)
!2023 = !DILocation(line: 275, column: 20, scope: !1057, inlinedAt: !2019)
!2024 = !DILocation(line: 275, column: 7, scope: !1045, inlinedAt: !2019)
!2025 = !DILocation(line: 276, column: 68, scope: !1057, inlinedAt: !2019)
!2026 = !DILocation(line: 276, column: 12, scope: !1057, inlinedAt: !2019)
!2027 = !DILocation(line: 276, column: 5, scope: !1057, inlinedAt: !2019)
!2028 = !DILocation(line: 277, column: 14, scope: !1064, inlinedAt: !2019)
!2029 = !DILocation(line: 277, column: 23, scope: !1064, inlinedAt: !2019)
!2030 = !DILocation(line: 277, column: 7, scope: !1045, inlinedAt: !2019)
!2031 = !DILocation(line: 283, column: 1, scope: !1045, inlinedAt: !2019)
!2032 = !DILocation(line: 1922, column: 7, scope: !1729)
!2033 = !DILocation(line: 279, column: 10, scope: !1045, inlinedAt: !2019)
!2034 = !DILocation(line: 281, column: 12, scope: !1045, inlinedAt: !2019)
!2035 = !DILocation(line: 280, column: 32, scope: !1045, inlinedAt: !2019)
!2036 = !DILocation(line: 1922, column: 15, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 1922, column: 7)
!2038 = !DILocation(line: 0, scope: !2, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 1923, column: 9, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 1923, column: 9)
!2041 = !DILocation(line: 1703, column: 3, scope: !2, inlinedAt: !2039)
!2042 = !DILocation(line: 1704, column: 5, scope: !2, inlinedAt: !2039)
!2043 = !DILocation(line: 1732, column: 10, scope: !2, inlinedAt: !2039)
!2044 = !DILocation(line: 1733, column: 8, scope: !2, inlinedAt: !2039)
!2045 = !DILocation(line: 1734, column: 14, scope: !2046, inlinedAt: !2039)
!2046 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1734, column: 7)
!2047 = !DILocation(line: 1734, column: 7, scope: !2, inlinedAt: !2039)
!2048 = !DILocation(line: 0, scope: !1834, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 1736, column: 16, scope: !2, inlinedAt: !2039)
!2050 = !DILocation(line: 1532, column: 32, scope: !2051, inlinedAt: !2049)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 1531, column: 5)
!2052 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 1530, column: 7)
!2053 = !DILocation(line: 1737, column: 22, scope: !2054, inlinedAt: !2039)
!2054 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1737, column: 7)
!2055 = !DILocation(line: 1739, column: 21, scope: !2056, inlinedAt: !2039)
!2056 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 1738, column: 5)
!2057 = !DILocation(line: 1739, column: 7, scope: !2056, inlinedAt: !2039)
!2058 = !DILocation(line: 1732, column: 9, scope: !2, inlinedAt: !2039)
!2059 = !DILocation(line: 1733, column: 7, scope: !2, inlinedAt: !2039)
!2060 = !DILocation(line: 0, scope: !1773, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 1741, column: 13, scope: !2062, inlinedAt: !2039)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 1741, column: 13)
!2063 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 1740, column: 7)
!2064 = !DILocation(line: 1519, column: 17, scope: !1773, inlinedAt: !2061)
!2065 = !DILocation(line: 1519, column: 12, scope: !1773, inlinedAt: !2061)
!2066 = !DILocation(line: 1520, column: 12, scope: !1773, inlinedAt: !2061)
!2067 = !DILocation(line: 1741, column: 44, scope: !2062, inlinedAt: !2039)
!2068 = !DILocation(line: 1741, column: 13, scope: !2063, inlinedAt: !2039)
!2069 = distinct !{!2069, !2057, !2070, !1036, !1037}
!2070 = !DILocation(line: 1754, column: 7, scope: !2056, inlinedAt: !2039)
!2071 = !DILocation(line: 0, scope: !1773, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 1743, column: 13, scope: !2073, inlinedAt: !2039)
!2073 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 1743, column: 13)
!2074 = !DILocation(line: 1517, column: 15, scope: !1794, inlinedAt: !2072)
!2075 = !DILocation(line: 1517, column: 7, scope: !1773, inlinedAt: !2072)
!2076 = !DILocation(line: 1519, column: 17, scope: !1773, inlinedAt: !2072)
!2077 = !DILocation(line: 1519, column: 12, scope: !1773, inlinedAt: !2072)
!2078 = !DILocation(line: 1520, column: 12, scope: !1773, inlinedAt: !2072)
!2079 = !DILocation(line: 1743, column: 44, scope: !2073, inlinedAt: !2039)
!2080 = !DILocation(line: 1743, column: 13, scope: !2063, inlinedAt: !2039)
!2081 = distinct !{!2081, !2057, !2070, !1036, !1037}
!2082 = !DILocation(line: 0, scope: !1773, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 1745, column: 13, scope: !2084, inlinedAt: !2039)
!2084 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 1745, column: 13)
!2085 = !DILocation(line: 1517, column: 15, scope: !1794, inlinedAt: !2083)
!2086 = !DILocation(line: 1517, column: 7, scope: !1773, inlinedAt: !2083)
!2087 = !DILocation(line: 1519, column: 17, scope: !1773, inlinedAt: !2083)
!2088 = !DILocation(line: 1519, column: 12, scope: !1773, inlinedAt: !2083)
!2089 = !DILocation(line: 1520, column: 12, scope: !1773, inlinedAt: !2083)
!2090 = !DILocation(line: 1745, column: 44, scope: !2084, inlinedAt: !2039)
!2091 = !DILocation(line: 1745, column: 13, scope: !2063, inlinedAt: !2039)
!2092 = distinct !{!2092, !2057, !2070, !1036, !1037}
!2093 = !DILocation(line: 0, scope: !1773, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 1747, column: 13, scope: !2095, inlinedAt: !2039)
!2095 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 1747, column: 13)
!2096 = !DILocation(line: 1517, column: 15, scope: !1794, inlinedAt: !2094)
!2097 = !DILocation(line: 1517, column: 7, scope: !1773, inlinedAt: !2094)
!2098 = !DILocation(line: 1519, column: 17, scope: !1773, inlinedAt: !2094)
!2099 = !DILocation(line: 1519, column: 12, scope: !1773, inlinedAt: !2094)
!2100 = !DILocation(line: 1520, column: 12, scope: !1773, inlinedAt: !2094)
!2101 = !DILocation(line: 1747, column: 44, scope: !2095, inlinedAt: !2039)
!2102 = !DILocation(line: 1747, column: 13, scope: !2063, inlinedAt: !2039)
!2103 = distinct !{!2103, !2057, !2070, !1036, !1037}
!2104 = !DILocation(line: 0, scope: !1773, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 1749, column: 13, scope: !2106, inlinedAt: !2039)
!2106 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 1749, column: 13)
!2107 = !DILocation(line: 1517, column: 15, scope: !1794, inlinedAt: !2105)
!2108 = !DILocation(line: 1517, column: 7, scope: !1773, inlinedAt: !2105)
!2109 = !DILocation(line: 1519, column: 17, scope: !1773, inlinedAt: !2105)
!2110 = !DILocation(line: 1519, column: 12, scope: !1773, inlinedAt: !2105)
!2111 = !DILocation(line: 1520, column: 12, scope: !1773, inlinedAt: !2105)
!2112 = !DILocation(line: 1749, column: 44, scope: !2106, inlinedAt: !2039)
!2113 = !DILocation(line: 1749, column: 13, scope: !2063, inlinedAt: !2039)
!2114 = distinct !{!2114, !2057, !2070, !1036, !1037}
!2115 = !DILocation(line: 0, scope: !1773, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 1751, column: 13, scope: !2117, inlinedAt: !2039)
!2117 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 1751, column: 13)
!2118 = !DILocation(line: 1517, column: 15, scope: !1794, inlinedAt: !2116)
!2119 = !DILocation(line: 1517, column: 7, scope: !1773, inlinedAt: !2116)
!2120 = !DILocation(line: 1519, column: 17, scope: !1773, inlinedAt: !2116)
!2121 = !DILocation(line: 1519, column: 12, scope: !1773, inlinedAt: !2116)
!2122 = !DILocation(line: 1520, column: 12, scope: !1773, inlinedAt: !2116)
!2123 = !DILocation(line: 1751, column: 44, scope: !2117, inlinedAt: !2039)
!2124 = !DILocation(line: 1751, column: 13, scope: !2063, inlinedAt: !2039)
!2125 = distinct !{!2125, !2057, !2070, !1036, !1037}
!2126 = !DILocation(line: 1755, column: 18, scope: !2127, inlinedAt: !2039)
!2127 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 1755, column: 11)
!2128 = !DILocation(line: 1755, column: 11, scope: !2056, inlinedAt: !2039)
!2129 = !DILocation(line: 0, scope: !1834, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 1757, column: 20, scope: !2056, inlinedAt: !2039)
!2131 = !DILocation(line: 1532, column: 32, scope: !2051, inlinedAt: !2130)
!2132 = !DILocation(line: 1758, column: 5, scope: !2056, inlinedAt: !2039)
!2133 = !DILocation(line: 1760, column: 7, scope: !2, inlinedAt: !2039)
!2134 = !DILocation(line: 1767, column: 35, scope: !2135, inlinedAt: !2039)
!2135 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1767, column: 7)
!2136 = !DILocation(line: 0, scope: !1834, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 1767, column: 7, scope: !2135, inlinedAt: !2039)
!2138 = !DILocation(line: 1532, column: 32, scope: !2051, inlinedAt: !2137)
!2139 = !DILocation(line: 1767, column: 39, scope: !2135, inlinedAt: !2039)
!2140 = !DILocation(line: 1767, column: 7, scope: !2, inlinedAt: !2039)
!2141 = !DILocation(line: 1536, column: 5, scope: !1834, inlinedAt: !2137)
!2142 = !DILocation(line: 1772, column: 54, scope: !2, inlinedAt: !2039)
!2143 = !DILocation(line: 0, scope: !1869, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 1772, column: 27, scope: !2, inlinedAt: !2039)
!2145 = !DILocation(line: 1548, column: 24, scope: !2146, inlinedAt: !2144)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 1547, column: 5)
!2147 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 1546, column: 7)
!2148 = !DILocation(line: 1548, column: 34, scope: !2146, inlinedAt: !2144)
!2149 = !DILocation(line: 1548, column: 44, scope: !2146, inlinedAt: !2144)
!2150 = !DILocation(line: 1548, column: 54, scope: !2146, inlinedAt: !2144)
!2151 = !DILocation(line: 1548, column: 41, scope: !2146, inlinedAt: !2144)
!2152 = !DILocation(line: 1549, column: 10, scope: !2146, inlinedAt: !2144)
!2153 = !DILocation(line: 1549, column: 20, scope: !2146, inlinedAt: !2144)
!2154 = !DILocation(line: 1548, column: 61, scope: !2146, inlinedAt: !2144)
!2155 = !DILocation(line: 1550, column: 7, scope: !2146, inlinedAt: !2144)
!2156 = !DILocation(line: 1552, column: 20, scope: !1869, inlinedAt: !2144)
!2157 = !DILocation(line: 1552, column: 30, scope: !1869, inlinedAt: !2144)
!2158 = !DILocation(line: 1552, column: 40, scope: !1869, inlinedAt: !2144)
!2159 = !DILocation(line: 1552, column: 50, scope: !1869, inlinedAt: !2144)
!2160 = !DILocation(line: 1552, column: 37, scope: !1869, inlinedAt: !2144)
!2161 = !DILocation(line: 1553, column: 6, scope: !1869, inlinedAt: !2144)
!2162 = !DILocation(line: 1553, column: 16, scope: !1869, inlinedAt: !2144)
!2163 = !DILocation(line: 1552, column: 57, scope: !1869, inlinedAt: !2144)
!2164 = !DILocation(line: 1553, column: 24, scope: !1869, inlinedAt: !2144)
!2165 = !DILocation(line: 1554, column: 3, scope: !1869, inlinedAt: !2144)
!2166 = !DILocation(line: 1772, column: 10, scope: !2, inlinedAt: !2039)
!2167 = !DILocation(line: 1773, column: 15, scope: !2168, inlinedAt: !2039)
!2168 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1773, column: 7)
!2169 = !DILocation(line: 1773, column: 20, scope: !2168, inlinedAt: !2039)
!2170 = !DILocation(line: 1775, column: 17, scope: !2, inlinedAt: !2039)
!2171 = !DILocation(line: 1778, column: 18, scope: !2, inlinedAt: !2039)
!2172 = !DILocation(line: 1780, column: 3, scope: !2, inlinedAt: !2039)
!2173 = !DILocation(line: 0, scope: !670, inlinedAt: !2039)
!2174 = !DILocation(line: 1782, column: 15, scope: !2175, inlinedAt: !2039)
!2175 = distinct !DILexicalBlock(scope: !673, file: !3, line: 1782, column: 9)
!2176 = !DILocation(line: 1782, column: 9, scope: !673, inlinedAt: !2039)
!2177 = !DILocation(line: 1784, column: 14, scope: !2178, inlinedAt: !2039)
!2178 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 1783, column: 7)
!2179 = !DILocation(line: 1785, column: 19, scope: !2178, inlinedAt: !2039)
!2180 = !DILocation(line: 1785, column: 42, scope: !2178, inlinedAt: !2039)
!2181 = !{!2182, !711, i64 0}
!2182 = !{!"_DirectoryInfo", !711, i64 0, !710, i64 8}
!2183 = !DILocation(line: 1786, column: 38, scope: !2178, inlinedAt: !2039)
!2184 = !{!2182, !710, i64 8}
!2185 = !DILocation(line: 1787, column: 7, scope: !2178, inlinedAt: !2039)
!2186 = !DILocation(line: 0, scope: !1834, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 1791, column: 20, scope: !673, inlinedAt: !2039)
!2188 = !DILocation(line: 1792, column: 19, scope: !671, inlinedAt: !2039)
!2189 = !DILocation(line: 1792, column: 5, scope: !672, inlinedAt: !2039)
!2190 = !DILocation(line: 1806, column: 43, scope: !670, inlinedAt: !2039)
!2191 = !DILocation(line: 1806, column: 39, scope: !670, inlinedAt: !2039)
!2192 = !DILocation(line: 1807, column: 11, scope: !2193, inlinedAt: !2039)
!2193 = distinct !DILexicalBlock(scope: !670, file: !3, line: 1807, column: 11)
!2194 = !DILocation(line: 1807, column: 51, scope: !2193, inlinedAt: !2039)
!2195 = !DILocation(line: 1807, column: 11, scope: !670, inlinedAt: !2039)
!2196 = !DILocation(line: 1809, column: 14, scope: !670, inlinedAt: !2039)
!2197 = !DILocation(line: 0, scope: !1834, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 1810, column: 27, scope: !670, inlinedAt: !2039)
!2199 = !DILocation(line: 1811, column: 49, scope: !670, inlinedAt: !2039)
!2200 = !DILocation(line: 0, scope: !1834, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 1811, column: 24, scope: !670, inlinedAt: !2039)
!2202 = !DILocation(line: 1530, column: 7, scope: !1834, inlinedAt: !2198)
!2203 = !DILocation(line: 1812, column: 22, scope: !2204, inlinedAt: !2039)
!2204 = distinct !DILexicalBlock(scope: !670, file: !3, line: 1812, column: 11)
!2205 = !DILocation(line: 1812, column: 11, scope: !670, inlinedAt: !2039)
!2206 = !DILocation(line: 1532, column: 32, scope: !2051, inlinedAt: !2198)
!2207 = !DILocation(line: 1814, column: 59, scope: !670, inlinedAt: !2039)
!2208 = !DILocation(line: 0, scope: !1869, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 1814, column: 35, scope: !670, inlinedAt: !2039)
!2210 = !DILocation(line: 1548, column: 24, scope: !2146, inlinedAt: !2209)
!2211 = !DILocation(line: 1548, column: 34, scope: !2146, inlinedAt: !2209)
!2212 = !DILocation(line: 1548, column: 44, scope: !2146, inlinedAt: !2209)
!2213 = !DILocation(line: 1548, column: 54, scope: !2146, inlinedAt: !2209)
!2214 = !DILocation(line: 1548, column: 41, scope: !2146, inlinedAt: !2209)
!2215 = !DILocation(line: 1549, column: 10, scope: !2146, inlinedAt: !2209)
!2216 = !DILocation(line: 1549, column: 20, scope: !2146, inlinedAt: !2209)
!2217 = !DILocation(line: 1548, column: 61, scope: !2146, inlinedAt: !2209)
!2218 = !DILocation(line: 1550, column: 7, scope: !2146, inlinedAt: !2209)
!2219 = !DILocation(line: 1536, column: 5, scope: !1834, inlinedAt: !2198)
!2220 = !DILocation(line: 1552, column: 20, scope: !1869, inlinedAt: !2209)
!2221 = !DILocation(line: 1552, column: 30, scope: !1869, inlinedAt: !2209)
!2222 = !DILocation(line: 1552, column: 40, scope: !1869, inlinedAt: !2209)
!2223 = !DILocation(line: 1552, column: 50, scope: !1869, inlinedAt: !2209)
!2224 = !DILocation(line: 1552, column: 37, scope: !1869, inlinedAt: !2209)
!2225 = !DILocation(line: 1553, column: 6, scope: !1869, inlinedAt: !2209)
!2226 = !DILocation(line: 1553, column: 16, scope: !1869, inlinedAt: !2209)
!2227 = !DILocation(line: 1552, column: 57, scope: !1869, inlinedAt: !2209)
!2228 = !DILocation(line: 1553, column: 24, scope: !1869, inlinedAt: !2209)
!2229 = !DILocation(line: 1554, column: 3, scope: !1869, inlinedAt: !2209)
!2230 = !DILocation(line: 1811, column: 14, scope: !670, inlinedAt: !2039)
!2231 = !DILocation(line: 1814, column: 18, scope: !670, inlinedAt: !2039)
!2232 = !DILocation(line: 1815, column: 40, scope: !670, inlinedAt: !2039)
!2233 = !DILocation(line: 1815, column: 39, scope: !670, inlinedAt: !2039)
!2234 = !DILocation(line: 1816, column: 34, scope: !2235, inlinedAt: !2039)
!2235 = distinct !DILexicalBlock(scope: !670, file: !3, line: 1816, column: 11)
!2236 = !DILocation(line: 1816, column: 11, scope: !670, inlinedAt: !2039)
!2237 = !DILocation(line: 1818, column: 24, scope: !681, inlinedAt: !2039)
!2238 = !DILocation(line: 0, scope: !681, inlinedAt: !2039)
!2239 = !DILocation(line: 1818, column: 11, scope: !670, inlinedAt: !2039)
!2240 = !DILocation(line: 0, scope: !1869, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 1828, column: 35, scope: !680, inlinedAt: !2039)
!2242 = !DILocation(line: 1546, column: 7, scope: !1869, inlinedAt: !2241)
!2243 = !DILocation(line: 1548, column: 24, scope: !2146, inlinedAt: !2241)
!2244 = !DILocation(line: 1548, column: 34, scope: !2146, inlinedAt: !2241)
!2245 = !DILocation(line: 1548, column: 44, scope: !2146, inlinedAt: !2241)
!2246 = !DILocation(line: 1548, column: 54, scope: !2146, inlinedAt: !2241)
!2247 = !DILocation(line: 1548, column: 41, scope: !2146, inlinedAt: !2241)
!2248 = !DILocation(line: 1549, column: 10, scope: !2146, inlinedAt: !2241)
!2249 = !DILocation(line: 1549, column: 20, scope: !2146, inlinedAt: !2241)
!2250 = !DILocation(line: 1548, column: 61, scope: !2146, inlinedAt: !2241)
!2251 = !DILocation(line: 1550, column: 7, scope: !2146, inlinedAt: !2241)
!2252 = !DILocation(line: 1552, column: 20, scope: !1869, inlinedAt: !2241)
!2253 = !DILocation(line: 1552, column: 30, scope: !1869, inlinedAt: !2241)
!2254 = !DILocation(line: 1552, column: 40, scope: !1869, inlinedAt: !2241)
!2255 = !DILocation(line: 1552, column: 50, scope: !1869, inlinedAt: !2241)
!2256 = !DILocation(line: 1552, column: 37, scope: !1869, inlinedAt: !2241)
!2257 = !DILocation(line: 1553, column: 6, scope: !1869, inlinedAt: !2241)
!2258 = !DILocation(line: 1553, column: 16, scope: !1869, inlinedAt: !2241)
!2259 = !DILocation(line: 1552, column: 57, scope: !1869, inlinedAt: !2241)
!2260 = !DILocation(line: 1553, column: 24, scope: !1869, inlinedAt: !2241)
!2261 = !DILocation(line: 1554, column: 3, scope: !1869, inlinedAt: !2241)
!2262 = !DILocation(line: 1828, column: 18, scope: !680, inlinedAt: !2039)
!2263 = !DILocation(line: 0, scope: !680, inlinedAt: !2039)
!2264 = !DILocation(line: 1829, column: 32, scope: !2265, inlinedAt: !2039)
!2265 = distinct !DILexicalBlock(scope: !680, file: !3, line: 1829, column: 15)
!2266 = !DILocation(line: 1829, column: 47, scope: !2265, inlinedAt: !2039)
!2267 = !DILocation(line: 1829, column: 15, scope: !680, inlinedAt: !2039)
!2268 = !DILocation(line: 1833, column: 36, scope: !680, inlinedAt: !2039)
!2269 = !DILocation(line: 1835, column: 7, scope: !670, inlinedAt: !2039)
!2270 = !DILocation(line: 1839, column: 59, scope: !2271, inlinedAt: !2039)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 1838, column: 9)
!2272 = distinct !DILexicalBlock(scope: !670, file: !3, line: 1836, column: 7)
!2273 = !DILocation(line: 1839, column: 71, scope: !2271, inlinedAt: !2039)
!2274 = !DILocation(line: 1839, column: 42, scope: !2271, inlinedAt: !2039)
!2275 = !DILocation(line: 0, scope: !1904, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 1839, column: 18, scope: !2271, inlinedAt: !2039)
!2277 = !DILocation(line: 1590, column: 3, scope: !1904, inlinedAt: !2276)
!2278 = !DILocation(line: 1591, column: 5, scope: !1904, inlinedAt: !2276)
!2279 = !DILocation(line: 1593, column: 7, scope: !1904, inlinedAt: !2276)
!2280 = !DILocation(line: 1595, column: 17, scope: !2281, inlinedAt: !2276)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 1594, column: 5)
!2282 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 1593, column: 7)
!2283 = !DILocation(line: 1595, column: 16, scope: !2281, inlinedAt: !2276)
!2284 = !DILocation(line: 1596, column: 40, scope: !2281, inlinedAt: !2276)
!2285 = !DILocation(line: 1596, column: 17, scope: !2281, inlinedAt: !2276)
!2286 = !DILocation(line: 1596, column: 16, scope: !2281, inlinedAt: !2276)
!2287 = !DILocation(line: 1597, column: 40, scope: !2281, inlinedAt: !2276)
!2288 = !DILocation(line: 1597, column: 17, scope: !2281, inlinedAt: !2276)
!2289 = !DILocation(line: 1597, column: 16, scope: !2281, inlinedAt: !2276)
!2290 = !DILocation(line: 1598, column: 40, scope: !2281, inlinedAt: !2276)
!2291 = !DILocation(line: 1607, column: 1, scope: !1904, inlinedAt: !2276)
!2292 = !DILocation(line: 0, scope: !1904, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 1840, column: 18, scope: !2271, inlinedAt: !2039)
!2294 = !DILocation(line: 1590, column: 3, scope: !1904, inlinedAt: !2293)
!2295 = !DILocation(line: 1591, column: 5, scope: !1904, inlinedAt: !2293)
!2296 = !DILocation(line: 1600, column: 7, scope: !2281, inlinedAt: !2293)
!2297 = !DILocation(line: 1602, column: 36, scope: !1904, inlinedAt: !2276)
!2298 = !DILocation(line: 1602, column: 13, scope: !1904, inlinedAt: !2276)
!2299 = !DILocation(line: 1602, column: 12, scope: !1904, inlinedAt: !2276)
!2300 = !DILocation(line: 1603, column: 36, scope: !1904, inlinedAt: !2276)
!2301 = !DILocation(line: 1603, column: 13, scope: !1904, inlinedAt: !2276)
!2302 = !DILocation(line: 1603, column: 12, scope: !1904, inlinedAt: !2276)
!2303 = !DILocation(line: 1604, column: 36, scope: !1904, inlinedAt: !2276)
!2304 = !DILocation(line: 1604, column: 13, scope: !1904, inlinedAt: !2276)
!2305 = !DILocation(line: 1604, column: 12, scope: !1904, inlinedAt: !2276)
!2306 = !DILocation(line: 1607, column: 1, scope: !1904, inlinedAt: !2293)
!2307 = !DILocation(line: 1840, column: 47, scope: !2271, inlinedAt: !2039)
!2308 = !DILocation(line: 1841, column: 11, scope: !2271, inlinedAt: !2039)
!2309 = !DILocation(line: 1845, column: 59, scope: !2310, inlinedAt: !2039)
!2310 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 1844, column: 9)
!2311 = !DILocation(line: 1845, column: 71, scope: !2310, inlinedAt: !2039)
!2312 = !DILocation(line: 1845, column: 42, scope: !2310, inlinedAt: !2039)
!2313 = !DILocation(line: 0, scope: !1904, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 1845, column: 18, scope: !2310, inlinedAt: !2039)
!2315 = !DILocation(line: 1590, column: 3, scope: !1904, inlinedAt: !2314)
!2316 = !DILocation(line: 1591, column: 5, scope: !1904, inlinedAt: !2314)
!2317 = !DILocation(line: 1593, column: 7, scope: !1904, inlinedAt: !2314)
!2318 = !DILocation(line: 1595, column: 17, scope: !2281, inlinedAt: !2314)
!2319 = !DILocation(line: 1595, column: 16, scope: !2281, inlinedAt: !2314)
!2320 = !DILocation(line: 1596, column: 40, scope: !2281, inlinedAt: !2314)
!2321 = !DILocation(line: 1596, column: 17, scope: !2281, inlinedAt: !2314)
!2322 = !DILocation(line: 1596, column: 16, scope: !2281, inlinedAt: !2314)
!2323 = !DILocation(line: 1597, column: 40, scope: !2281, inlinedAt: !2314)
!2324 = !DILocation(line: 1597, column: 17, scope: !2281, inlinedAt: !2314)
!2325 = !DILocation(line: 1597, column: 16, scope: !2281, inlinedAt: !2314)
!2326 = !DILocation(line: 1598, column: 40, scope: !2281, inlinedAt: !2314)
!2327 = !DILocation(line: 1607, column: 1, scope: !1904, inlinedAt: !2314)
!2328 = !DILocation(line: 0, scope: !1904, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 1846, column: 18, scope: !2310, inlinedAt: !2039)
!2330 = !DILocation(line: 1590, column: 3, scope: !1904, inlinedAt: !2329)
!2331 = !DILocation(line: 1591, column: 5, scope: !1904, inlinedAt: !2329)
!2332 = !DILocation(line: 1600, column: 7, scope: !2281, inlinedAt: !2329)
!2333 = !DILocation(line: 1602, column: 36, scope: !1904, inlinedAt: !2314)
!2334 = !DILocation(line: 1602, column: 13, scope: !1904, inlinedAt: !2314)
!2335 = !DILocation(line: 1602, column: 12, scope: !1904, inlinedAt: !2314)
!2336 = !DILocation(line: 1603, column: 36, scope: !1904, inlinedAt: !2314)
!2337 = !DILocation(line: 1603, column: 13, scope: !1904, inlinedAt: !2314)
!2338 = !DILocation(line: 1603, column: 12, scope: !1904, inlinedAt: !2314)
!2339 = !DILocation(line: 1604, column: 36, scope: !1904, inlinedAt: !2314)
!2340 = !DILocation(line: 1604, column: 13, scope: !1904, inlinedAt: !2314)
!2341 = !DILocation(line: 1604, column: 12, scope: !1904, inlinedAt: !2314)
!2342 = !DILocation(line: 1607, column: 1, scope: !1904, inlinedAt: !2329)
!2343 = !DILocation(line: 1846, column: 47, scope: !2310, inlinedAt: !2039)
!2344 = !DILocation(line: 1847, column: 11, scope: !2310, inlinedAt: !2039)
!2345 = !DILocation(line: 1851, column: 28, scope: !2346, inlinedAt: !2039)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 1851, column: 15)
!2347 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 1850, column: 9)
!2348 = !DILocation(line: 0, scope: !2347, inlinedAt: !2039)
!2349 = !{!707, !708, i64 24}
!2350 = !DILocation(line: 1851, column: 15, scope: !2347, inlinedAt: !2039)
!2351 = !DILocation(line: 0, scope: !1904, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 1853, column: 22, scope: !2353, inlinedAt: !2039)
!2353 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 1852, column: 13)
!2354 = !DILocation(line: 1590, column: 3, scope: !1904, inlinedAt: !2352)
!2355 = !DILocation(line: 1591, column: 5, scope: !1904, inlinedAt: !2352)
!2356 = !DILocation(line: 1593, column: 7, scope: !1904, inlinedAt: !2352)
!2357 = !DILocation(line: 1595, column: 17, scope: !2281, inlinedAt: !2352)
!2358 = !DILocation(line: 1595, column: 16, scope: !2281, inlinedAt: !2352)
!2359 = !DILocation(line: 1596, column: 40, scope: !2281, inlinedAt: !2352)
!2360 = !DILocation(line: 1596, column: 17, scope: !2281, inlinedAt: !2352)
!2361 = !DILocation(line: 1596, column: 16, scope: !2281, inlinedAt: !2352)
!2362 = !DILocation(line: 1597, column: 40, scope: !2281, inlinedAt: !2352)
!2363 = !DILocation(line: 1597, column: 17, scope: !2281, inlinedAt: !2352)
!2364 = !DILocation(line: 1597, column: 16, scope: !2281, inlinedAt: !2352)
!2365 = !DILocation(line: 1598, column: 40, scope: !2281, inlinedAt: !2352)
!2366 = !DILocation(line: 1600, column: 7, scope: !2281, inlinedAt: !2352)
!2367 = !DILocation(line: 1602, column: 36, scope: !1904, inlinedAt: !2352)
!2368 = !DILocation(line: 1602, column: 13, scope: !1904, inlinedAt: !2352)
!2369 = !DILocation(line: 1602, column: 12, scope: !1904, inlinedAt: !2352)
!2370 = !DILocation(line: 1603, column: 36, scope: !1904, inlinedAt: !2352)
!2371 = !DILocation(line: 1603, column: 13, scope: !1904, inlinedAt: !2352)
!2372 = !DILocation(line: 1603, column: 12, scope: !1904, inlinedAt: !2352)
!2373 = !DILocation(line: 1604, column: 36, scope: !1904, inlinedAt: !2352)
!2374 = !DILocation(line: 1604, column: 13, scope: !1904, inlinedAt: !2352)
!2375 = !DILocation(line: 1604, column: 12, scope: !1904, inlinedAt: !2352)
!2376 = !DILocation(line: 1607, column: 1, scope: !1904, inlinedAt: !2352)
!2377 = !DILocation(line: 1854, column: 15, scope: !2353, inlinedAt: !2039)
!2378 = !DILocation(line: 1856, column: 43, scope: !2347, inlinedAt: !2039)
!2379 = !DILocation(line: 0, scope: !1945, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 1856, column: 18, scope: !2347, inlinedAt: !2039)
!2381 = !DILocation(line: 1612, column: 3, scope: !1945, inlinedAt: !2380)
!2382 = !DILocation(line: 1613, column: 5, scope: !1945, inlinedAt: !2380)
!2383 = !DILocation(line: 1615, column: 7, scope: !1945, inlinedAt: !2380)
!2384 = !DILocation(line: 1617, column: 17, scope: !2385, inlinedAt: !2380)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 1616, column: 5)
!2386 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 1615, column: 7)
!2387 = !DILocation(line: 1617, column: 16, scope: !2385, inlinedAt: !2380)
!2388 = !DILocation(line: 1618, column: 40, scope: !2385, inlinedAt: !2380)
!2389 = !DILocation(line: 1620, column: 7, scope: !2385, inlinedAt: !2380)
!2390 = !DILocation(line: 1622, column: 13, scope: !1945, inlinedAt: !2380)
!2391 = !DILocation(line: 1622, column: 12, scope: !1945, inlinedAt: !2380)
!2392 = !DILocation(line: 1625, column: 1, scope: !1945, inlinedAt: !2380)
!2393 = !DILocation(line: 1858, column: 11, scope: !2347, inlinedAt: !2039)
!2394 = !DILocation(line: 1862, column: 28, scope: !2395, inlinedAt: !2039)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !3, line: 1862, column: 15)
!2396 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 1861, column: 9)
!2397 = !DILocation(line: 0, scope: !2396, inlinedAt: !2039)
!2398 = !DILocation(line: 1862, column: 15, scope: !2396, inlinedAt: !2039)
!2399 = !DILocation(line: 1864, column: 68, scope: !2400, inlinedAt: !2039)
!2400 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1863, column: 13)
!2401 = !DILocation(line: 0, scope: !1904, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 1864, column: 22, scope: !2400, inlinedAt: !2039)
!2403 = !DILocation(line: 1590, column: 3, scope: !1904, inlinedAt: !2402)
!2404 = !DILocation(line: 1591, column: 5, scope: !1904, inlinedAt: !2402)
!2405 = !DILocation(line: 1593, column: 7, scope: !1904, inlinedAt: !2402)
!2406 = !DILocation(line: 1595, column: 17, scope: !2281, inlinedAt: !2402)
!2407 = !DILocation(line: 1595, column: 16, scope: !2281, inlinedAt: !2402)
!2408 = !DILocation(line: 1596, column: 40, scope: !2281, inlinedAt: !2402)
!2409 = !DILocation(line: 1596, column: 17, scope: !2281, inlinedAt: !2402)
!2410 = !DILocation(line: 1596, column: 16, scope: !2281, inlinedAt: !2402)
!2411 = !DILocation(line: 1597, column: 40, scope: !2281, inlinedAt: !2402)
!2412 = !DILocation(line: 1597, column: 17, scope: !2281, inlinedAt: !2402)
!2413 = !DILocation(line: 1597, column: 16, scope: !2281, inlinedAt: !2402)
!2414 = !DILocation(line: 1598, column: 40, scope: !2281, inlinedAt: !2402)
!2415 = !DILocation(line: 1600, column: 7, scope: !2281, inlinedAt: !2402)
!2416 = !DILocation(line: 1602, column: 36, scope: !1904, inlinedAt: !2402)
!2417 = !DILocation(line: 1602, column: 13, scope: !1904, inlinedAt: !2402)
!2418 = !DILocation(line: 1602, column: 12, scope: !1904, inlinedAt: !2402)
!2419 = !DILocation(line: 1603, column: 36, scope: !1904, inlinedAt: !2402)
!2420 = !DILocation(line: 1603, column: 13, scope: !1904, inlinedAt: !2402)
!2421 = !DILocation(line: 1603, column: 12, scope: !1904, inlinedAt: !2402)
!2422 = !DILocation(line: 1604, column: 36, scope: !1904, inlinedAt: !2402)
!2423 = !DILocation(line: 1604, column: 13, scope: !1904, inlinedAt: !2402)
!2424 = !DILocation(line: 1604, column: 12, scope: !1904, inlinedAt: !2402)
!2425 = !DILocation(line: 1607, column: 1, scope: !1904, inlinedAt: !2402)
!2426 = !DILocation(line: 1865, column: 15, scope: !2400, inlinedAt: !2039)
!2427 = !DILocation(line: 1867, column: 43, scope: !2396, inlinedAt: !2039)
!2428 = !DILocation(line: 0, scope: !1945, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 1867, column: 18, scope: !2396, inlinedAt: !2039)
!2430 = !DILocation(line: 1612, column: 3, scope: !1945, inlinedAt: !2429)
!2431 = !DILocation(line: 1613, column: 5, scope: !1945, inlinedAt: !2429)
!2432 = !DILocation(line: 1615, column: 7, scope: !1945, inlinedAt: !2429)
!2433 = !DILocation(line: 1617, column: 17, scope: !2385, inlinedAt: !2429)
!2434 = !DILocation(line: 1617, column: 16, scope: !2385, inlinedAt: !2429)
!2435 = !DILocation(line: 1618, column: 40, scope: !2385, inlinedAt: !2429)
!2436 = !DILocation(line: 1620, column: 7, scope: !2385, inlinedAt: !2429)
!2437 = !DILocation(line: 1622, column: 36, scope: !1945, inlinedAt: !2429)
!2438 = !DILocation(line: 1622, column: 13, scope: !1945, inlinedAt: !2429)
!2439 = !DILocation(line: 1622, column: 12, scope: !1945, inlinedAt: !2429)
!2440 = !DILocation(line: 1625, column: 1, scope: !1945, inlinedAt: !2429)
!2441 = !DILocation(line: 1868, column: 11, scope: !2396, inlinedAt: !2039)
!2442 = !DILocation(line: 0, scope: !1869, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 1878, column: 35, scope: !683, inlinedAt: !2039)
!2444 = !DILocation(line: 1546, column: 7, scope: !1869, inlinedAt: !2443)
!2445 = !DILocation(line: 1548, column: 24, scope: !2146, inlinedAt: !2443)
!2446 = !DILocation(line: 1548, column: 34, scope: !2146, inlinedAt: !2443)
!2447 = !DILocation(line: 1548, column: 44, scope: !2146, inlinedAt: !2443)
!2448 = !DILocation(line: 1548, column: 54, scope: !2146, inlinedAt: !2443)
!2449 = !DILocation(line: 1548, column: 41, scope: !2146, inlinedAt: !2443)
!2450 = !DILocation(line: 1549, column: 10, scope: !2146, inlinedAt: !2443)
!2451 = !DILocation(line: 1549, column: 20, scope: !2146, inlinedAt: !2443)
!2452 = !DILocation(line: 1548, column: 61, scope: !2146, inlinedAt: !2443)
!2453 = !DILocation(line: 1550, column: 7, scope: !2146, inlinedAt: !2443)
!2454 = !DILocation(line: 1552, column: 20, scope: !1869, inlinedAt: !2443)
!2455 = !DILocation(line: 1552, column: 30, scope: !1869, inlinedAt: !2443)
!2456 = !DILocation(line: 1552, column: 40, scope: !1869, inlinedAt: !2443)
!2457 = !DILocation(line: 1552, column: 50, scope: !1869, inlinedAt: !2443)
!2458 = !DILocation(line: 1552, column: 37, scope: !1869, inlinedAt: !2443)
!2459 = !DILocation(line: 1553, column: 6, scope: !1869, inlinedAt: !2443)
!2460 = !DILocation(line: 1553, column: 16, scope: !1869, inlinedAt: !2443)
!2461 = !DILocation(line: 1552, column: 57, scope: !1869, inlinedAt: !2443)
!2462 = !DILocation(line: 1553, column: 24, scope: !1869, inlinedAt: !2443)
!2463 = !DILocation(line: 1554, column: 3, scope: !1869, inlinedAt: !2443)
!2464 = !DILocation(line: 1878, column: 18, scope: !683, inlinedAt: !2039)
!2465 = !DILocation(line: 0, scope: !683, inlinedAt: !2039)
!2466 = !DILocation(line: 1879, column: 32, scope: !2467, inlinedAt: !2039)
!2467 = distinct !DILexicalBlock(scope: !683, file: !3, line: 1879, column: 15)
!2468 = !DILocation(line: 1879, column: 42, scope: !2467, inlinedAt: !2039)
!2469 = !DILocation(line: 1881, column: 15, scope: !2470, inlinedAt: !2039)
!2470 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 1880, column: 13)
!2471 = !DILocation(line: 1881, column: 47, scope: !2470, inlinedAt: !2039)
!2472 = !DILocation(line: 1882, column: 20, scope: !2470, inlinedAt: !2039)
!2473 = !DILocation(line: 1883, column: 38, scope: !2470, inlinedAt: !2039)
!2474 = !DILocation(line: 1883, column: 43, scope: !2470, inlinedAt: !2039)
!2475 = !DILocation(line: 1884, column: 20, scope: !2470, inlinedAt: !2039)
!2476 = !DILocation(line: 1885, column: 52, scope: !2470, inlinedAt: !2039)
!2477 = !DILocation(line: 1885, column: 15, scope: !2470, inlinedAt: !2039)
!2478 = !DILocation(line: 1885, column: 47, scope: !2470, inlinedAt: !2039)
!2479 = !DILocation(line: 1886, column: 38, scope: !2470, inlinedAt: !2039)
!2480 = !DILocation(line: 1886, column: 43, scope: !2470, inlinedAt: !2039)
!2481 = !DILocation(line: 1887, column: 20, scope: !2470, inlinedAt: !2039)
!2482 = !DILocation(line: 1888, column: 35, scope: !2483, inlinedAt: !2039)
!2483 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 1888, column: 19)
!2484 = !DILocation(line: 1888, column: 31, scope: !2483, inlinedAt: !2039)
!2485 = !DILocation(line: 1888, column: 53, scope: !2483, inlinedAt: !2039)
!2486 = !DILocation(line: 1888, column: 19, scope: !2470, inlinedAt: !2039)
!2487 = !DILocation(line: 0, scope: !1869, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 1890, column: 39, scope: !2470, inlinedAt: !2039)
!2489 = !DILocation(line: 1546, column: 7, scope: !1869, inlinedAt: !2488)
!2490 = !DILocation(line: 1548, column: 24, scope: !2146, inlinedAt: !2488)
!2491 = !DILocation(line: 1548, column: 34, scope: !2146, inlinedAt: !2488)
!2492 = !DILocation(line: 1548, column: 44, scope: !2146, inlinedAt: !2488)
!2493 = !DILocation(line: 1548, column: 54, scope: !2146, inlinedAt: !2488)
!2494 = !DILocation(line: 1548, column: 41, scope: !2146, inlinedAt: !2488)
!2495 = !DILocation(line: 1549, column: 10, scope: !2146, inlinedAt: !2488)
!2496 = !DILocation(line: 1549, column: 20, scope: !2146, inlinedAt: !2488)
!2497 = !DILocation(line: 1548, column: 61, scope: !2146, inlinedAt: !2488)
!2498 = !DILocation(line: 1550, column: 7, scope: !2146, inlinedAt: !2488)
!2499 = !DILocation(line: 1552, column: 20, scope: !1869, inlinedAt: !2488)
!2500 = !DILocation(line: 1552, column: 30, scope: !1869, inlinedAt: !2488)
!2501 = !DILocation(line: 1552, column: 40, scope: !1869, inlinedAt: !2488)
!2502 = !DILocation(line: 1552, column: 50, scope: !1869, inlinedAt: !2488)
!2503 = !DILocation(line: 1552, column: 37, scope: !1869, inlinedAt: !2488)
!2504 = !DILocation(line: 1553, column: 6, scope: !1869, inlinedAt: !2488)
!2505 = !DILocation(line: 1553, column: 16, scope: !1869, inlinedAt: !2488)
!2506 = !DILocation(line: 1552, column: 57, scope: !1869, inlinedAt: !2488)
!2507 = !DILocation(line: 1553, column: 24, scope: !1869, inlinedAt: !2488)
!2508 = !DILocation(line: 1554, column: 3, scope: !1869, inlinedAt: !2488)
!2509 = !DILocation(line: 1890, column: 22, scope: !2470, inlinedAt: !2039)
!2510 = !DILocation(line: 1892, column: 27, scope: !2511, inlinedAt: !2039)
!2511 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 1892, column: 19)
!2512 = !DILocation(line: 1892, column: 33, scope: !2511, inlinedAt: !2039)
!2513 = !DILocation(line: 1892, column: 53, scope: !2511, inlinedAt: !2039)
!2514 = !DILocation(line: 1892, column: 63, scope: !2511, inlinedAt: !2039)
!2515 = !DILocation(line: 1895, column: 56, scope: !2516, inlinedAt: !2039)
!2516 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 1894, column: 17)
!2517 = !DILocation(line: 1895, column: 19, scope: !2516, inlinedAt: !2039)
!2518 = !DILocation(line: 1895, column: 51, scope: !2516, inlinedAt: !2039)
!2519 = !DILocation(line: 1896, column: 42, scope: !2516, inlinedAt: !2039)
!2520 = !DILocation(line: 1896, column: 47, scope: !2516, inlinedAt: !2039)
!2521 = !DILocation(line: 1897, column: 24, scope: !2516, inlinedAt: !2039)
!2522 = !DILocation(line: 1898, column: 17, scope: !2516, inlinedAt: !2039)
!2523 = !DILocation(line: 1792, column: 42, scope: !671, inlinedAt: !2039)
!2524 = distinct !{!2524, !2189, !2525, !1036, !1037}
!2525 = !DILocation(line: 1902, column: 5, scope: !672, inlinedAt: !2039)
!2526 = !DILocation(line: 1786, column: 14, scope: !2178, inlinedAt: !2039)
!2527 = !DILocation(line: 1903, column: 18, scope: !2, inlinedAt: !2039)
!2528 = !DILocation(line: 1903, column: 3, scope: !673, inlinedAt: !2039)
!2529 = distinct !{!2529, !2172, !2530, !1036, !1037}
!2530 = !DILocation(line: 1903, column: 21, scope: !2, inlinedAt: !2039)
!2531 = !DILocation(line: 1904, column: 18, scope: !2, inlinedAt: !2039)
!2532 = !DILocation(line: 1906, column: 1, scope: !2, inlinedAt: !2039)
!2533 = !DILocation(line: 1923, column: 9, scope: !2037)
!2534 = !DILocation(line: 1925, column: 3, scope: !1729)
!2535 = !DISubprogram(name: "GetStringInfoDatum", scope: !595, file: !595, line: 97, type: !2536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!519, !638}
!2538 = !DISubprogram(name: "GetStringInfoLength", scope: !595, file: !595, line: 80, type: !2539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!92, !638}
!2541 = !DISubprogram(name: "LocaleNCompare", scope: !595, file: !595, line: 67, type: !2542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!497, !390, !390, !777}
!2544 = !DISubprogram(name: "CopyMagickMemory", scope: !1356, file: !1356, line: 44, type: !2545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!156, !156, !640, !777}
!2547 = !DISubprogram(name: "AddValueToSplayTree", scope: !633, file: !633, line: 29, type: !2548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!6, !631, !640, !640}
!2550 = !DISubprogram(name: "NewSplayTree", scope: !633, file: !633, line: 45, type: !2551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!631, !643, !635, !635}
!2553 = distinct !DISubprogram(name: "DestroyProfile", scope: !3, file: !3, line: 1110, type: !636, scopeLine: 1111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !2554)
!2554 = !{!2555}
!2555 = !DILocalVariable(name: "profile", arg: 1, scope: !2553, file: !3, line: 1110, type: !156)
!2556 = !DILocation(line: 0, scope: !2553)
!2557 = !DILocation(line: 1112, column: 19, scope: !2553)
!2558 = !DILocation(line: 1112, column: 3, scope: !2553)
!2559 = !DISubprogram(name: "LocaleLower", scope: !595, file: !595, line: 102, type: !2560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{null, !165}
!2562 = !DISubprogram(name: "FormatLocaleString", scope: !2563, file: !2563, line: 71, type: !2564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !778)
!2563 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!170, !2566, !777, !2567, null}
!2566 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !165)
!2567 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !390)
