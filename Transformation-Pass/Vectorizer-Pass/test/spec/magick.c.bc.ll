; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/magick.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/magick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._MagickInfo = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i64, ptr, ptr }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }

@.str = private unnamed_addr constant [85 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/magick.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@magick_semaphore = internal global ptr null, align 8, !dbg !0
@magick_list = internal unnamed_addr global ptr null, align 8, !dbg !909
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"   Format  Mode  Description\0A\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%9s%c \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%c%c%c \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"           %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"\0A* native blob support\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"r read support\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"w write support\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"+ support for multiple images\0A\00", align 1
@instantiate_magickcore = internal global i32 0, align 4, !dbg !911
@.str.17 = private unnamed_addr constant [13 x i8] c"MAGICK_DEBUG\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@SetMagickPrecision.magick_precision = internal unnamed_addr global i32 0, align 4, !dbg !897
@.str.20 = private unnamed_addr constant [17 x i8] c"MAGICK_PRECISION\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"ephemeral\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"clipmask\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageDecoder(ptr nocapture noundef readonly %magick_info) local_unnamed_addr #0 !dbg !924 {
entry:
  call void @llvm.dbg.value(metadata ptr %magick_info, metadata !928, metadata !DIExpression()), !dbg !929
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 150, ptr noundef nonnull @.str.2) #13, !dbg !930
  %decoder = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 6, !dbg !931
  %0 = load ptr, ptr %decoder, align 8, !dbg !931, !tbaa !932
  ret ptr %0, !dbg !939
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !940 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageEncoder(ptr nocapture noundef readonly %magick_info) local_unnamed_addr #0 !dbg !946 {
entry:
  call void @llvm.dbg.value(metadata ptr %magick_info, metadata !950, metadata !DIExpression()), !dbg !951
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 180, ptr noundef nonnull @.str.2) #13, !dbg !952
  %encoder = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 7, !dbg !953
  %0 = load ptr, ptr %encoder, align 8, !dbg !953, !tbaa !954
  ret ptr %0, !dbg !955
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetImageMagick(ptr noundef %magick, i64 noundef %length, ptr noundef %format) local_unnamed_addr #0 !dbg !956 {
entry:
  call void @llvm.dbg.value(metadata ptr %magick, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i64 %length, metadata !961, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr %format, metadata !962, metadata !DIExpression()), !dbg !966
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 227, ptr noundef nonnull @.str.2) #13, !dbg !967
  %call1 = tail call ptr @AcquireExceptionInfo() #13, !dbg !968
  call void @llvm.dbg.value(metadata ptr %call1, metadata !963, metadata !DIExpression()), !dbg !966
  %call2 = tail call ptr @GetMagickInfo(ptr noundef nonnull @.str.3, ptr undef), !dbg !969
  call void @llvm.dbg.value(metadata ptr %call2, metadata !965, metadata !DIExpression()), !dbg !966
  %call3 = tail call ptr @DestroyExceptionInfo(ptr noundef %call1) #13, !dbg !970
  call void @llvm.dbg.value(metadata ptr %call3, metadata !963, metadata !DIExpression()), !dbg !966
  %cmp = icmp eq ptr %call2, null, !dbg !971
  br i1 %cmp, label %cleanup, label %if.end, !dbg !973

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !964, metadata !DIExpression()), !dbg !966
  %0 = load ptr, ptr @magick_semaphore, align 8, !dbg !974, !tbaa !975
  tail call void @LockSemaphoreInfo(ptr noundef %0) #13, !dbg !976
  %1 = load ptr, ptr @magick_list, align 8, !dbg !977, !tbaa !975
  tail call void @ResetSplayTreeIterator(ptr noundef %1) #13, !dbg !978
  %2 = load ptr, ptr @magick_list, align 8, !dbg !979, !tbaa !975
  %call4 = tail call ptr @GetNextValueInSplayTree(ptr noundef %2) #13, !dbg !980
  call void @llvm.dbg.value(metadata ptr %call4, metadata !965, metadata !DIExpression()), !dbg !966
  %cmp5.not23 = icmp eq ptr %call4, null, !dbg !981
  br i1 %cmp5.not23, label %while.end, label %while.body, !dbg !982

while.body:                                       ; preds = %if.end, %if.end13
  %p.024 = phi ptr [ %call14, %if.end13 ], [ %call4, %if.end ]
  call void @llvm.dbg.value(metadata ptr %p.024, metadata !965, metadata !DIExpression()), !dbg !966
  %magick6 = getelementptr inbounds %struct._MagickInfo, ptr %p.024, i64 0, i32 8, !dbg !983
  %3 = load ptr, ptr %magick6, align 8, !dbg !983, !tbaa !986
  %cmp7.not = icmp eq ptr %3, null, !dbg !987
  br i1 %cmp7.not, label %if.end13, label %land.lhs.true, !dbg !988

land.lhs.true:                                    ; preds = %while.body
  %call9 = tail call i32 %3(ptr noundef %magick, i64 noundef %length) #13, !dbg !989
  %cmp10.not = icmp eq i32 %call9, 0, !dbg !990
  br i1 %cmp10.not, label %if.end13, label %if.then11, !dbg !991

if.then11:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i32 1, metadata !964, metadata !DIExpression()), !dbg !966
  %4 = load ptr, ptr %p.024, align 8, !dbg !992, !tbaa !994
  %call12 = tail call i64 @CopyMagickString(ptr noundef %format, ptr noundef %4, i64 noundef 4096) #13, !dbg !995
  br label %while.end, !dbg !996

if.end13:                                         ; preds = %land.lhs.true, %while.body
  %5 = load ptr, ptr @magick_list, align 8, !dbg !997, !tbaa !975
  %call14 = tail call ptr @GetNextValueInSplayTree(ptr noundef %5) #13, !dbg !998
  call void @llvm.dbg.value(metadata ptr %call14, metadata !965, metadata !DIExpression()), !dbg !966
  %cmp5.not = icmp eq ptr %call14, null, !dbg !981
  br i1 %cmp5.not, label %while.end, label %while.body, !dbg !982, !llvm.loop !999

while.end:                                        ; preds = %if.end13, %if.end, %if.then11
  %status.0 = phi i32 [ 1, %if.then11 ], [ 0, %if.end ], [ 0, %if.end13 ], !dbg !966
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !964, metadata !DIExpression()), !dbg !966
  %6 = load ptr, ptr @magick_semaphore, align 8, !dbg !1003, !tbaa !975
  tail call void @UnlockSemaphoreInfo(ptr noundef %6) #13, !dbg !1004
  br label %cleanup, !dbg !1005

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i32 [ %status.0, %while.end ], [ 0, %entry ], !dbg !966
  ret i32 %retval.0, !dbg !1006
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !1007 ptr @AcquireExceptionInfo() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMagickInfo(ptr noundef %name, ptr nocapture readnone %exception) local_unnamed_addr #0 !dbg !1010 {
entry:
  %exception7.i = alloca %struct._ExceptionInfo, align 8
  %exception19.i = alloca %struct._ExceptionInfo, align 8
  %exception33.i = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %name, metadata !1014, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata ptr undef, metadata !1015, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata ptr undef, metadata !1018, metadata !DIExpression()) #13, !dbg !1041
  %0 = load ptr, ptr @magick_list, align 8, !dbg !1044, !tbaa !975
  %cmp.i = icmp eq ptr %0, null, !dbg !1045
  br i1 %cmp.i, label %if.then.i, label %if.end, !dbg !1046

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @magick_semaphore, align 8, !dbg !1047, !tbaa !975
  %cmp1.i = icmp eq ptr %1, null, !dbg !1049
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i, !dbg !1050

if.then2.i:                                       ; preds = %if.then.i
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @magick_semaphore) #13, !dbg !1051
  %.pre.i = load ptr, ptr @magick_semaphore, align 8, !dbg !1052, !tbaa !975
  br label %if.end.i, !dbg !1051

if.end.i:                                         ; preds = %if.then2.i, %if.then.i
  %2 = phi ptr [ %.pre.i, %if.then2.i ], [ %1, %if.then.i ], !dbg !1052
  tail call void @LockSemaphoreInfo(ptr noundef %2) #13, !dbg !1053
  %3 = load ptr, ptr @magick_list, align 8, !dbg !1054, !tbaa !975
  %cmp3.i = icmp eq ptr %3, null, !dbg !1055
  br i1 %cmp3.i, label %if.then4.i, label %IsMagickTreeInstantiated.exit, !dbg !1056

if.then4.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef null, ptr noundef nonnull @DestroyMagickNode) #13, !dbg !1057
  store ptr %call.i, ptr @magick_list, align 8, !dbg !1058, !tbaa !975
  %cmp5.i = icmp eq ptr %call.i, null, !dbg !1059
  br i1 %cmp5.i, label %if.then6.i, label %if.end13.i, !dbg !1060

if.then6.i:                                       ; preds = %if.then4.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception7.i) #13, !dbg !1061
  call void @llvm.dbg.declare(metadata ptr %exception7.i, metadata !1032, metadata !DIExpression()) #13, !dbg !1061
  call void @GetExceptionInfo(ptr noundef nonnull %exception7.i) #13, !dbg !1061
  %call8.i = tail call ptr @__errno_location() #14, !dbg !1061
  %4 = load i32, ptr %call8.i, align 4, !dbg !1061, !tbaa !1062
  %call9.i = call ptr @GetExceptionMessage(i32 noundef %4) #13, !dbg !1061
  call void @llvm.dbg.value(metadata ptr %call9.i, metadata !1029, metadata !DIExpression()) #13, !dbg !1063
  %call10.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception7.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 853, i32 noundef 700, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef %call9.i) #13, !dbg !1061
  %call11.i = call ptr @DestroyString(ptr noundef %call9.i) #13, !dbg !1061
  call void @llvm.dbg.value(metadata ptr %call11.i, metadata !1029, metadata !DIExpression()) #13, !dbg !1063
  call void @CatchException(ptr noundef nonnull %exception7.i) #13, !dbg !1061
  %call12.i = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception7.i) #13, !dbg !1061
  call void @MagickCoreTerminus() #13, !dbg !1061
  call void @_exit(i32 noundef 1) #15, !dbg !1061
  unreachable, !dbg !1061

if.end13.i:                                       ; preds = %if.then4.i
  %call14.i = tail call ptr @SetMagickInfo(ptr noundef nonnull @.str.22) #13, !dbg !1064
  call void @llvm.dbg.value(metadata ptr %call14.i, metadata !1028, metadata !DIExpression()) #13, !dbg !1065
  %stealth.i = getelementptr inbounds %struct._MagickInfo, ptr %call14.i, i64 0, i32 17, !dbg !1066
  store i32 1, ptr %stealth.i, align 4, !dbg !1067, !tbaa !1068
  %5 = load ptr, ptr @magick_list, align 8, !dbg !1069, !tbaa !975
  %6 = load ptr, ptr %call14.i, align 8, !dbg !1070, !tbaa !994
  %call15.i = tail call i32 @AddValueToSplayTree(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %call14.i) #13, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %call15.i, metadata !1023, metadata !DIExpression()) #13, !dbg !1065
  %cmp16.i = icmp eq i32 %call15.i, 0, !dbg !1072
  br i1 %cmp16.i, label %if.then17.i, label %if.end25.i, !dbg !1073

if.then17.i:                                      ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception19.i) #13, !dbg !1074
  call void @llvm.dbg.declare(metadata ptr %exception19.i, metadata !1036, metadata !DIExpression()) #13, !dbg !1074
  call void @GetExceptionInfo(ptr noundef nonnull %exception19.i) #13, !dbg !1074
  %call20.i = tail call ptr @__errno_location() #14, !dbg !1074
  %7 = load i32, ptr %call20.i, align 4, !dbg !1074, !tbaa !1062
  %call21.i = call ptr @GetExceptionMessage(i32 noundef %7) #13, !dbg !1074
  call void @llvm.dbg.value(metadata ptr %call21.i, metadata !1033, metadata !DIExpression()) #13, !dbg !1075
  %call22.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception19.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 859, i32 noundef 700, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef %call21.i) #13, !dbg !1074
  %call23.i = call ptr @DestroyString(ptr noundef %call21.i) #13, !dbg !1074
  call void @llvm.dbg.value(metadata ptr %call23.i, metadata !1033, metadata !DIExpression()) #13, !dbg !1075
  call void @CatchException(ptr noundef nonnull %exception19.i) #13, !dbg !1074
  %call24.i = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception19.i) #13, !dbg !1074
  call void @MagickCoreTerminus() #13, !dbg !1074
  call void @_exit(i32 noundef 1) #15, !dbg !1074
  unreachable, !dbg !1074

if.end25.i:                                       ; preds = %if.end13.i
  %call26.i = tail call ptr @SetMagickInfo(ptr noundef nonnull @.str.23) #13, !dbg !1076
  call void @llvm.dbg.value(metadata ptr %call26.i, metadata !1028, metadata !DIExpression()) #13, !dbg !1065
  %stealth27.i = getelementptr inbounds %struct._MagickInfo, ptr %call26.i, i64 0, i32 17, !dbg !1077
  store i32 1, ptr %stealth27.i, align 4, !dbg !1078, !tbaa !1068
  %8 = load ptr, ptr @magick_list, align 8, !dbg !1079, !tbaa !975
  %9 = load ptr, ptr %call26.i, align 8, !dbg !1080, !tbaa !994
  %call29.i = tail call i32 @AddValueToSplayTree(ptr noundef %8, ptr noundef %9, ptr noundef nonnull %call26.i) #13, !dbg !1081
  call void @llvm.dbg.value(metadata i32 %call29.i, metadata !1023, metadata !DIExpression()) #13, !dbg !1065
  %cmp30.i = icmp eq i32 %call29.i, 0, !dbg !1082
  br i1 %cmp30.i, label %if.then31.i, label %if.end39.i, !dbg !1083

if.then31.i:                                      ; preds = %if.end25.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception33.i) #13, !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %exception33.i, metadata !1040, metadata !DIExpression()) #13, !dbg !1084
  call void @GetExceptionInfo(ptr noundef nonnull %exception33.i) #13, !dbg !1084
  %call34.i = tail call ptr @__errno_location() #14, !dbg !1084
  %10 = load i32, ptr %call34.i, align 4, !dbg !1084, !tbaa !1062
  %call35.i = call ptr @GetExceptionMessage(i32 noundef %10) #13, !dbg !1084
  call void @llvm.dbg.value(metadata ptr %call35.i, metadata !1037, metadata !DIExpression()) #13, !dbg !1085
  %call36.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception33.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 865, i32 noundef 700, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef %call35.i) #13, !dbg !1084
  %call37.i = call ptr @DestroyString(ptr noundef %call35.i) #13, !dbg !1084
  call void @llvm.dbg.value(metadata ptr %call37.i, metadata !1037, metadata !DIExpression()) #13, !dbg !1085
  call void @CatchException(ptr noundef nonnull %exception33.i) #13, !dbg !1084
  %call38.i = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception33.i) #13, !dbg !1084
  call void @MagickCoreTerminus() #13, !dbg !1084
  call void @_exit(i32 noundef 1) #15, !dbg !1084
  unreachable, !dbg !1084

if.end39.i:                                       ; preds = %if.end25.i
  tail call void @RegisterStaticModules() #13, !dbg !1086
  br label %IsMagickTreeInstantiated.exit, !dbg !1087

IsMagickTreeInstantiated.exit:                    ; preds = %if.end.i, %if.end39.i
  %11 = load ptr, ptr @magick_semaphore, align 8, !dbg !1088, !tbaa !975
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #13, !dbg !1089
  %.pre1.i = load ptr, ptr @magick_list, align 8, !dbg !1090, !tbaa !975
  %cmp42.not.i.not = icmp eq ptr %.pre1.i, null, !dbg !1091
  br i1 %cmp42.not.i.not, label %cleanup, label %if.end, !dbg !1092

if.end:                                           ; preds = %entry, %IsMagickTreeInstantiated.exit
  %12 = load ptr, ptr @magick_semaphore, align 8, !dbg !1093, !tbaa !975
  tail call void @LockSemaphoreInfo(ptr noundef %12) #13, !dbg !1094
  %13 = load ptr, ptr @magick_list, align 8, !dbg !1095, !tbaa !975
  tail call void @ResetSplayTreeIterator(ptr noundef %13) #13, !dbg !1096
  %14 = load ptr, ptr @magick_list, align 8, !dbg !1097, !tbaa !975
  %call1 = tail call ptr @GetNextValueInSplayTree(ptr noundef %14) #13, !dbg !1098
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1016, metadata !DIExpression()), !dbg !1017
  %cmp2 = icmp eq ptr %name, null, !dbg !1099
  br i1 %cmp2, label %if.then5, label %lor.lhs.false, !dbg !1101

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @LocaleCompare(ptr noundef nonnull %name, ptr noundef nonnull @.str.3) #13, !dbg !1102
  %cmp4 = icmp eq i32 %call3, 0, !dbg !1103
  br i1 %cmp4, label %if.then5, label %while.cond.preheader, !dbg !1104

while.cond.preheader:                             ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1016, metadata !DIExpression()), !dbg !1017
  %cmp8.not23 = icmp eq ptr %call1, null, !dbg !1105
  br i1 %cmp8.not23, label %cleanup.sink.split, label %while.body, !dbg !1106

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %15 = load ptr, ptr @magick_list, align 8, !dbg !1107, !tbaa !975
  tail call void @ResetSplayTreeIterator(ptr noundef %15) #13, !dbg !1109
  %16 = load ptr, ptr @magick_list, align 8, !dbg !1110, !tbaa !975
  %call6 = tail call ptr @GetNextValueInSplayTree(ptr noundef %16) #13, !dbg !1111
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1016, metadata !DIExpression()), !dbg !1017
  br label %cleanup.sink.split, !dbg !1112

while.body:                                       ; preds = %while.cond.preheader, %if.end13
  %p.024 = phi ptr [ %call14, %if.end13 ], [ %call1, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.024, metadata !1016, metadata !DIExpression()), !dbg !1017
  %17 = load ptr, ptr %p.024, align 8, !dbg !1113, !tbaa !994
  %call10 = tail call i32 @LocaleCompare(ptr noundef %17, ptr noundef nonnull %name) #13, !dbg !1116
  %cmp11 = icmp eq i32 %call10, 0, !dbg !1117
  br i1 %cmp11, label %cleanup.sink.split, label %if.end13, !dbg !1118

if.end13:                                         ; preds = %while.body
  %18 = load ptr, ptr @magick_list, align 8, !dbg !1119, !tbaa !975
  %call14 = tail call ptr @GetNextValueInSplayTree(ptr noundef %18) #13, !dbg !1120
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1016, metadata !DIExpression()), !dbg !1017
  %cmp8.not = icmp eq ptr %call14, null, !dbg !1105
  br i1 %cmp8.not, label %cleanup.sink.split, label %while.body, !dbg !1106, !llvm.loop !1121

cleanup.sink.split:                               ; preds = %while.body, %if.end13, %while.cond.preheader, %if.then5
  %retval.0.ph = phi ptr [ %call6, %if.then5 ], [ null, %while.cond.preheader ], [ %p.024, %while.body ], [ null, %if.end13 ]
  %19 = load ptr, ptr @magick_semaphore, align 8, !dbg !1017, !tbaa !975
  tail call void @UnlockSemaphoreInfo(ptr noundef %19) #13, !dbg !1017
  br label %cleanup, !dbg !1123

cleanup:                                          ; preds = %cleanup.sink.split, %IsMagickTreeInstantiated.exit
  %retval.0 = phi ptr [ null, %IsMagickTreeInstantiated.exit ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !1017
  ret ptr %retval.0, !dbg !1123
}

declare !dbg !1124 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1127 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1130 void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #2

declare !dbg !1133 ptr @GetNextValueInSplayTree(ptr noundef) local_unnamed_addr #2

declare !dbg !1136 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1140 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @GetMagickAdjoin(ptr nocapture noundef readonly %magick_info) local_unnamed_addr #0 !dbg !1141 {
entry:
  call void @llvm.dbg.value(metadata ptr %magick_info, metadata !1145, metadata !DIExpression()), !dbg !1146
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 277, ptr noundef nonnull @.str.2) #13, !dbg !1147
  %adjoin = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 10, !dbg !1148
  %0 = load i32, ptr %adjoin, align 8, !dbg !1148, !tbaa !1149
  ret i32 %0, !dbg !1150
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetMagickBlobSupport(ptr nocapture noundef readonly %magick_info) local_unnamed_addr #0 !dbg !1151 {
entry:
  call void @llvm.dbg.value(metadata ptr %magick_info, metadata !1153, metadata !DIExpression()), !dbg !1154
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 308, ptr noundef nonnull @.str.2) #13, !dbg !1155
  %blob_support = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 13, !dbg !1156
  %0 = load i32, ptr %blob_support, align 4, !dbg !1156, !tbaa !1157
  ret i32 %0, !dbg !1158
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMagickDescription(ptr nocapture noundef readonly %magick_info) local_unnamed_addr #0 !dbg !1159 {
entry:
  call void @llvm.dbg.value(metadata ptr %magick_info, metadata !1163, metadata !DIExpression()), !dbg !1164
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 338, ptr noundef nonnull @.str.2) #13, !dbg !1165
  %description = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 1, !dbg !1166
  %0 = load ptr, ptr %description, align 8, !dbg !1166, !tbaa !1167
  ret ptr %0, !dbg !1168
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetMagickEndianSupport(ptr nocapture noundef readonly %magick_info) local_unnamed_addr #0 !dbg !1169 {
entry:
  call void @llvm.dbg.value(metadata ptr %magick_info, metadata !1171, metadata !DIExpression()), !dbg !1172
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 370, ptr noundef nonnull @.str.2) #13, !dbg !1173
  %endian_support = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 12, !dbg !1174
  %0 = load i32, ptr %endian_support, align 8, !dbg !1174, !tbaa !1175
  ret i32 %0, !dbg !1176
}

declare !dbg !1177 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMagickInfoList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_formats, ptr nocapture readnone %exception) local_unnamed_addr #0 !dbg !1180 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !1185, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr %number_formats, metadata !1186, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr undef, metadata !1187, metadata !DIExpression()), !dbg !1191
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 517, ptr noundef nonnull @.str.4, ptr noundef %pattern) #13, !dbg !1192
  store i64 0, ptr %number_formats, align 8, !dbg !1193, !tbaa !1194
  %call1 = tail call ptr @GetMagickInfo(ptr noundef nonnull @.str.3, ptr undef), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1189, metadata !DIExpression()), !dbg !1191
  %cmp = icmp eq ptr %call1, null, !dbg !1196
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1198

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @magick_list, align 8, !dbg !1199, !tbaa !975
  %call2 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %0) #13, !dbg !1200
  %add = add i64 %call2, 1, !dbg !1201
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #16, !dbg !1202
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1188, metadata !DIExpression()), !dbg !1191
  %cmp4 = icmp eq ptr %call3, null, !dbg !1203
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !1205

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @magick_semaphore, align 8, !dbg !1206, !tbaa !975
  tail call void @LockSemaphoreInfo(ptr noundef %1) #13, !dbg !1207
  %2 = load ptr, ptr @magick_list, align 8, !dbg !1208, !tbaa !975
  tail call void @ResetSplayTreeIterator(ptr noundef %2) #13, !dbg !1209
  %3 = load ptr, ptr @magick_list, align 8, !dbg !1210, !tbaa !975
  %call7 = tail call ptr @GetNextValueInSplayTree(ptr noundef %3) #13, !dbg !1211
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1189, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 0, metadata !1190, metadata !DIExpression()), !dbg !1191
  %cmp8.not31 = icmp eq ptr %call7, null, !dbg !1212
  br i1 %cmp8.not31, label %for.end, label %for.body, !dbg !1215

for.body:                                         ; preds = %if.end6, %if.end13
  %i.033 = phi i64 [ %i.1, %if.end13 ], [ 0, %if.end6 ]
  %p.032 = phi ptr [ %call14, %if.end13 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.033, metadata !1190, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr %p.032, metadata !1189, metadata !DIExpression()), !dbg !1191
  %stealth = getelementptr inbounds %struct._MagickInfo, ptr %p.032, i64 0, i32 17, !dbg !1216
  %4 = load i32, ptr %stealth, align 4, !dbg !1216, !tbaa !1068
  %cmp9 = icmp eq i32 %4, 0, !dbg !1219
  br i1 %cmp9, label %land.lhs.true, label %if.end13, !dbg !1220

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %p.032, align 8, !dbg !1221, !tbaa !994
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 0) #13, !dbg !1222
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !1223
  br i1 %cmp11.not, label %if.end13, label %if.then12, !dbg !1224

if.then12:                                        ; preds = %land.lhs.true
  %inc = add nsw i64 %i.033, 1, !dbg !1225
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1190, metadata !DIExpression()), !dbg !1191
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.033, !dbg !1226
  store ptr %p.032, ptr %arrayidx, align 8, !dbg !1227, !tbaa !975
  br label %if.end13, !dbg !1226

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.033, %land.lhs.true ], [ %i.033, %for.body ], !dbg !1228
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1190, metadata !DIExpression()), !dbg !1191
  %6 = load ptr, ptr @magick_list, align 8, !dbg !1229, !tbaa !975
  %call14 = tail call ptr @GetNextValueInSplayTree(ptr noundef %6) #13, !dbg !1230
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1189, metadata !DIExpression()), !dbg !1191
  %cmp8.not = icmp eq ptr %call14, null, !dbg !1212
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !1215, !llvm.loop !1231

for.end:                                          ; preds = %if.end13, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end13 ], !dbg !1228
  %7 = load ptr, ptr @magick_semaphore, align 8, !dbg !1233, !tbaa !975
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #13, !dbg !1234
  tail call void @qsort(ptr noundef nonnull %call3, i64 noundef %i.0.lcssa, i64 noundef 8, ptr noundef nonnull @MagickInfoCompare) #13, !dbg !1235
  %arrayidx15 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !1236
  store ptr null, ptr %arrayidx15, align 8, !dbg !1237, !tbaa !975
  store i64 %i.0.lcssa, ptr %number_formats, align 8, !dbg !1238, !tbaa !1194
  br label %cleanup, !dbg !1239

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !1191
  ret ptr %retval.0, !dbg !1240
}

; Function Attrs: allocsize(0,1)
declare !dbg !1241 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1245 i64 @GetNumberOfNodesInSplayTree(ptr noundef) local_unnamed_addr #2

declare !dbg !1250 i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1255 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @MagickInfoCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #0 !dbg !1263 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !1265, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata ptr %y, metadata !1266, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata ptr %x, metadata !1267, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata ptr %y, metadata !1268, metadata !DIExpression()), !dbg !1269
  %0 = load ptr, ptr %x, align 8, !dbg !1270, !tbaa !975
  %1 = load ptr, ptr %0, align 8, !dbg !1271, !tbaa !994
  %2 = load ptr, ptr %y, align 8, !dbg !1272, !tbaa !975
  %3 = load ptr, ptr %2, align 8, !dbg !1273, !tbaa !994
  %call = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef %3) #13, !dbg !1274
  ret i32 %call, !dbg !1275
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMagickList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_formats, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !1276 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata ptr %number_formats, metadata !1281, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1282, metadata !DIExpression()), !dbg !1286
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 610, ptr noundef nonnull @.str.4, ptr noundef %pattern) #13, !dbg !1287
  store i64 0, ptr %number_formats, align 8, !dbg !1288, !tbaa !1194
  %call1 = tail call ptr @GetMagickInfo(ptr noundef nonnull @.str.3, ptr undef), !dbg !1289
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1284, metadata !DIExpression()), !dbg !1286
  %cmp = icmp eq ptr %call1, null, !dbg !1290
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1292

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @magick_list, align 8, !dbg !1293, !tbaa !975
  %call2 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %0) #13, !dbg !1294
  %add = add i64 %call2, 1, !dbg !1295
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #16, !dbg !1296
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1283, metadata !DIExpression()), !dbg !1286
  %cmp4 = icmp eq ptr %call3, null, !dbg !1297
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !1299

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @magick_semaphore, align 8, !dbg !1300, !tbaa !975
  tail call void @LockSemaphoreInfo(ptr noundef %1) #13, !dbg !1301
  %2 = load ptr, ptr @magick_list, align 8, !dbg !1302, !tbaa !975
  tail call void @ResetSplayTreeIterator(ptr noundef %2) #13, !dbg !1303
  %3 = load ptr, ptr @magick_list, align 8, !dbg !1304, !tbaa !975
  %call7 = tail call ptr @GetNextValueInSplayTree(ptr noundef %3) #13, !dbg !1305
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1284, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 0, metadata !1285, metadata !DIExpression()), !dbg !1286
  %cmp8.not33 = icmp eq ptr %call7, null, !dbg !1306
  br i1 %cmp8.not33, label %for.end, label %for.body, !dbg !1309

for.body:                                         ; preds = %if.end6, %if.end15
  %i.035 = phi i64 [ %i.1, %if.end15 ], [ 0, %if.end6 ]
  %p.034 = phi ptr [ %call16, %if.end15 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.035, metadata !1285, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata ptr %p.034, metadata !1284, metadata !DIExpression()), !dbg !1286
  %stealth = getelementptr inbounds %struct._MagickInfo, ptr %p.034, i64 0, i32 17, !dbg !1310
  %4 = load i32, ptr %stealth, align 4, !dbg !1310, !tbaa !1068
  %cmp9 = icmp eq i32 %4, 0, !dbg !1313
  br i1 %cmp9, label %land.lhs.true, label %if.end15, !dbg !1314

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %p.034, align 8, !dbg !1315, !tbaa !994
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 0) #13, !dbg !1316
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !1317
  br i1 %cmp11.not, label %if.end15, label %if.then12, !dbg !1318

if.then12:                                        ; preds = %land.lhs.true
  %6 = load ptr, ptr %p.034, align 8, !dbg !1319, !tbaa !994
  %call14 = tail call ptr @ConstantString(ptr noundef %6) #13, !dbg !1320
  %inc = add nsw i64 %i.035, 1, !dbg !1321
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1285, metadata !DIExpression()), !dbg !1286
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.035, !dbg !1322
  store ptr %call14, ptr %arrayidx, align 8, !dbg !1323, !tbaa !975
  br label %if.end15, !dbg !1322

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.035, %land.lhs.true ], [ %i.035, %for.body ], !dbg !1324
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1285, metadata !DIExpression()), !dbg !1286
  %7 = load ptr, ptr @magick_list, align 8, !dbg !1325, !tbaa !975
  %call16 = tail call ptr @GetNextValueInSplayTree(ptr noundef %7) #13, !dbg !1326
  call void @llvm.dbg.value(metadata ptr %call16, metadata !1284, metadata !DIExpression()), !dbg !1286
  %cmp8.not = icmp eq ptr %call16, null, !dbg !1306
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !1309, !llvm.loop !1327

for.end:                                          ; preds = %if.end15, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end15 ], !dbg !1324
  %8 = load ptr, ptr @magick_semaphore, align 8, !dbg !1329, !tbaa !975
  tail call void @UnlockSemaphoreInfo(ptr noundef %8) #13, !dbg !1330
  tail call void @qsort(ptr noundef nonnull %call3, i64 noundef %i.0.lcssa, i64 noundef 8, ptr noundef nonnull @MagickCompare) #13, !dbg !1331
  %arrayidx17 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !1332
  store ptr null, ptr %arrayidx17, align 8, !dbg !1333, !tbaa !975
  store i64 %i.0.lcssa, ptr %number_formats, align 8, !dbg !1334, !tbaa !1194
  br label %cleanup, !dbg !1335

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !1286
  ret ptr %retval.0, !dbg !1336
}

declare !dbg !1337 ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @MagickCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #0 !dbg !1340 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !1342, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr %y, metadata !1343, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr %x, metadata !1344, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr %y, metadata !1345, metadata !DIExpression()), !dbg !1346
  %0 = load ptr, ptr %x, align 8, !dbg !1347, !tbaa !975
  %1 = load ptr, ptr %y, align 8, !dbg !1348, !tbaa !975
  %call = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef %1) #13, !dbg !1349
  ret i32 %call, !dbg !1350
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMagickMimeType(ptr nocapture noundef readonly %magick_info) local_unnamed_addr #0 !dbg !1351 {
entry:
  call void @llvm.dbg.value(metadata ptr %magick_info, metadata !1353, metadata !DIExpression()), !dbg !1354
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 661, ptr noundef nonnull @.str.2) #13, !dbg !1355
  %mime_type = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 21, !dbg !1356
  %0 = load ptr, ptr %mime_type, align 8, !dbg !1356, !tbaa !1357
  ret ptr %0, !dbg !1358
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetMagickPrecision() local_unnamed_addr #0 !dbg !1359 {
entry:
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 688, ptr noundef nonnull @.str.2) #13, !dbg !1362
  call void @llvm.dbg.value(metadata i32 0, metadata !905, metadata !DIExpression()) #13, !dbg !1363
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1540, ptr noundef nonnull @.str.2) #13, !dbg !1365
  %.pre.i = load i32, ptr @SetMagickPrecision.magick_precision, align 4
  %phi.cmp.i = icmp eq i32 %.pre.i, 0, !dbg !1366
  br i1 %phi.cmp.i, label %if.then3.i, label %SetMagickPrecision.exit, !dbg !1367

if.then3.i:                                       ; preds = %entry
  store i32 6, ptr @SetMagickPrecision.magick_precision, align 4, !dbg !1368, !tbaa !1062
  %call4.i = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.20) #13, !dbg !1369
  call void @llvm.dbg.value(metadata ptr %call4.i, metadata !906, metadata !DIExpression()) #13, !dbg !1370
  %cmp5.i = icmp eq ptr %call4.i, null, !dbg !1371
  br i1 %cmp5.i, label %if.end8.i, label %if.then10.i, !dbg !1373

if.end8.i:                                        ; preds = %if.then3.i
  %call7.i = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.21) #13, !dbg !1374
  call void @llvm.dbg.value(metadata ptr %call7.i, metadata !906, metadata !DIExpression()) #13, !dbg !1370
  %cmp9.not.i = icmp eq ptr %call7.i, null, !dbg !1375
  br i1 %cmp9.not.i, label %SetMagickPrecision.exit, label %if.then10.i, !dbg !1377

if.then10.i:                                      ; preds = %if.end8.i, %if.then3.i
  %limit.022.i = phi ptr [ %call7.i, %if.end8.i ], [ %call4.i, %if.then3.i ]
  %call.i.i = tail call i64 @strtol(ptr nocapture noundef nonnull %limit.022.i, ptr noundef null, i32 noundef 10) #13, !dbg !1378
  %conv.i.i = trunc i64 %call.i.i to i32, !dbg !1388
  store i32 %conv.i.i, ptr @SetMagickPrecision.magick_precision, align 4, !dbg !1389, !tbaa !1062
  %call12.i = tail call ptr @DestroyString(ptr noundef nonnull %limit.022.i) #13, !dbg !1390
  call void @llvm.dbg.value(metadata ptr %call12.i, metadata !906, metadata !DIExpression()) #13, !dbg !1370
  br label %SetMagickPrecision.exit, !dbg !1391

SetMagickPrecision.exit:                          ; preds = %entry, %if.end8.i, %if.then10.i
  %0 = load i32, ptr @SetMagickPrecision.magick_precision, align 4, !dbg !1392, !tbaa !1062
  ret i32 %0, !dbg !1393
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetMagickPrecision(i32 noundef %precision) local_unnamed_addr #0 !dbg !899 {
entry:
  call void @llvm.dbg.value(metadata i32 %precision, metadata !905, metadata !DIExpression()), !dbg !1394
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1540, ptr noundef nonnull @.str.2) #13, !dbg !1395
  %cmp = icmp sgt i32 %precision, 0, !dbg !1396
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !1398

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = load i32, ptr @SetMagickPrecision.magick_precision, align 4
  %phi.cmp = icmp eq i32 %.pre, 0, !dbg !1398
  br label %if.end, !dbg !1398

if.then:                                          ; preds = %entry
  store i32 %precision, ptr @SetMagickPrecision.magick_precision, align 4, !dbg !1399, !tbaa !1062
  br label %if.end, !dbg !1400

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %0 = phi i1 [ %phi.cmp, %entry.if.end_crit_edge ], [ false, %if.then ]
  %cmp1 = icmp slt i32 %precision, 0, !dbg !1401
  %or.cond = select i1 %cmp1, i1 true, i1 %0, !dbg !1402
  br i1 %or.cond, label %if.then3, label %if.end14, !dbg !1402

if.then3:                                         ; preds = %if.end
  store i32 6, ptr @SetMagickPrecision.magick_precision, align 4, !dbg !1403, !tbaa !1062
  %call4 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.20) #13, !dbg !1404
  call void @llvm.dbg.value(metadata ptr %call4, metadata !906, metadata !DIExpression()), !dbg !1405
  %cmp5 = icmp eq ptr %call4, null, !dbg !1406
  br i1 %cmp5, label %if.end8, label %if.then10, !dbg !1407

if.end8:                                          ; preds = %if.then3
  %call7 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.21) #13, !dbg !1408
  call void @llvm.dbg.value(metadata ptr %call7, metadata !906, metadata !DIExpression()), !dbg !1405
  %cmp9.not = icmp eq ptr %call7, null, !dbg !1409
  br i1 %cmp9.not, label %if.end14, label %if.then10, !dbg !1410

if.then10:                                        ; preds = %if.then3, %if.end8
  %limit.022 = phi ptr [ %call7, %if.end8 ], [ %call4, %if.then3 ]
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1385, metadata !DIExpression()) #13, !dbg !1411
  %call.i = tail call i64 @strtol(ptr nocapture noundef nonnull %limit.022, ptr noundef null, i32 noundef 10) #13, !dbg !1413
  %conv.i = trunc i64 %call.i to i32, !dbg !1414
  store i32 %conv.i, ptr @SetMagickPrecision.magick_precision, align 4, !dbg !1415, !tbaa !1062
  %call12 = tail call ptr @DestroyString(ptr noundef nonnull %limit.022) #13, !dbg !1416
  call void @llvm.dbg.value(metadata ptr %call12, metadata !906, metadata !DIExpression()), !dbg !1405
  br label %if.end14, !dbg !1417

if.end14:                                         ; preds = %if.end8, %if.then10, %if.end
  %1 = load i32, ptr @SetMagickPrecision.magick_precision, align 4, !dbg !1418, !tbaa !1062
  ret i32 %1, !dbg !1419
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetMagickRawSupport(ptr nocapture noundef readonly %magick_info) local_unnamed_addr #0 !dbg !1420 {
entry:
  call void @llvm.dbg.value(metadata ptr %magick_info, metadata !1422, metadata !DIExpression()), !dbg !1423
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 717, ptr noundef nonnull @.str.2) #13, !dbg !1424
  %raw = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 11, !dbg !1425
  %0 = load i32, ptr %raw, align 4, !dbg !1425, !tbaa !1426
  ret i32 %0, !dbg !1427
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetMagickSeekableStream(ptr nocapture noundef readonly %magick_info) local_unnamed_addr #0 !dbg !1428 {
entry:
  call void @llvm.dbg.value(metadata ptr %magick_info, metadata !1430, metadata !DIExpression()), !dbg !1431
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 749, ptr noundef nonnull @.str.2) #13, !dbg !1432
  %seekable_stream = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 14, !dbg !1433
  %0 = load i32, ptr %seekable_stream, align 8, !dbg !1433, !tbaa !1434
  ret i32 %0, !dbg !1435
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetMagickThreadSupport(ptr nocapture noundef readonly %magick_info) local_unnamed_addr #0 !dbg !1436 {
entry:
  call void @llvm.dbg.value(metadata ptr %magick_info, metadata !1440, metadata !DIExpression()), !dbg !1441
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 780, ptr noundef nonnull @.str.2) #13, !dbg !1442
  %thread_support = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 16, !dbg !1443
  %0 = load i32, ptr %thread_support, align 8, !dbg !1443, !tbaa !1444
  ret i32 %0, !dbg !1445
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @IsMagickConflict(ptr nocapture noundef readnone %magick) local_unnamed_addr #6 !dbg !1446 {
entry:
  call void @llvm.dbg.value(metadata ptr %magick, metadata !1450, metadata !DIExpression()), !dbg !1451
  ret i32 0, !dbg !1452
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ListMagickInfo(ptr noundef %file, ptr noundef %exception) local_unnamed_addr #0 !dbg !1453 {
entry:
  %number_formats = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %file, metadata !1457, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1458, metadata !DIExpression()), !dbg !1469
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_formats) #13, !dbg !1470
  %cmp = icmp eq ptr %file, null, !dbg !1471
  %0 = load ptr, ptr @stdout, align 8
  %spec.select = select i1 %cmp, ptr %0, ptr %file, !dbg !1473
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1457, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata ptr %number_formats, metadata !1461, metadata !DIExpression(DW_OP_deref)), !dbg !1469
  %call = call ptr @GetMagickInfoList(ptr noundef nonnull @.str.3, ptr noundef nonnull %number_formats, ptr undef), !dbg !1474
  call void @llvm.dbg.value(metadata ptr %call, metadata !1459, metadata !DIExpression()), !dbg !1469
  %cmp1 = icmp eq ptr %call, null, !dbg !1475
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !1477

if.end3:                                          ; preds = %entry
  tail call void @ClearMagickException(ptr noundef %exception) #13, !dbg !1478
  %call4 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.5) #13, !dbg !1479
  %call5 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.6) #13, !dbg !1480
  call void @llvm.dbg.value(metadata i64 0, metadata !1460, metadata !DIExpression()), !dbg !1469
  %1 = load i64, ptr %number_formats, align 8, !tbaa !1194
  call void @llvm.dbg.value(metadata i64 0, metadata !1460, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i64 %1, metadata !1461, metadata !DIExpression()), !dbg !1469
  %cmp6140 = icmp sgt i64 %1, 0, !dbg !1481
  br i1 %cmp6140, label %for.body, label %for.end67, !dbg !1482

for.body:                                         ; preds = %if.end3, %for.inc65
  %i.0141 = phi i64 [ %inc66, %for.inc65 ], [ 0, %if.end3 ]
  call void @llvm.dbg.value(metadata i64 %i.0141, metadata !1460, metadata !DIExpression()), !dbg !1469
  %arrayidx = getelementptr inbounds ptr, ptr %call, i64 %i.0141, !dbg !1483
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1483, !tbaa !975
  %stealth = getelementptr inbounds %struct._MagickInfo, ptr %2, i64 0, i32 17, !dbg !1485
  %3 = load i32, ptr %stealth, align 4, !dbg !1485, !tbaa !1068
  %cmp7.not = icmp eq i32 %3, 0, !dbg !1486
  br i1 %cmp7.not, label %if.end9, label %for.inc65, !dbg !1487

if.end9:                                          ; preds = %for.body
  %4 = load ptr, ptr %2, align 8, !dbg !1488, !tbaa !994
  %cmp11.not = icmp eq ptr %4, null, !dbg !1489
  %spec.select134 = select i1 %cmp11.not, ptr @.str.1, ptr %4, !dbg !1490
  %blob_support = getelementptr inbounds %struct._MagickInfo, ptr %2, i64 0, i32 13, !dbg !1491
  %5 = load i32, ptr %blob_support, align 4, !dbg !1491, !tbaa !1157
  %cmp15.not = icmp eq i32 %5, 0, !dbg !1492
  %cond16 = select i1 %cmp15.not, i32 32, i32 42, !dbg !1493
  %call17 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.7, ptr noundef nonnull %spec.select134, i32 noundef %cond16) #13, !dbg !1494
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !1495, !tbaa !975
  %decoder = getelementptr inbounds %struct._MagickInfo, ptr %6, i64 0, i32 6, !dbg !1496
  %7 = load ptr, ptr %decoder, align 8, !dbg !1496, !tbaa !932
  %tobool.not = icmp eq ptr %7, null, !dbg !1495
  %cond19 = select i1 %tobool.not, i32 45, i32 114, !dbg !1495
  %encoder = getelementptr inbounds %struct._MagickInfo, ptr %6, i64 0, i32 7, !dbg !1497
  %8 = load ptr, ptr %encoder, align 8, !dbg !1497, !tbaa !954
  %tobool21.not = icmp eq ptr %8, null, !dbg !1498
  %cond22 = select i1 %tobool21.not, i32 45, i32 119, !dbg !1498
  br i1 %tobool21.not, label %land.end.thread, label %land.end, !dbg !1499

land.end:                                         ; preds = %if.end9
  %adjoin = getelementptr inbounds %struct._MagickInfo, ptr %6, i64 0, i32 10, !dbg !1500
  %9 = load i32, ptr %adjoin, align 8, !dbg !1500, !tbaa !1149
  %cmp27.not = icmp eq i32 %9, 0, !dbg !1501
  %spec.select135 = select i1 %cmp27.not, i32 45, i32 43, !dbg !1502
  br label %land.end.thread, !dbg !1502

land.end.thread:                                  ; preds = %land.end, %if.end9
  %10 = phi i32 [ 45, %if.end9 ], [ %spec.select135, %land.end ]
  %call29 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.8, i32 noundef %cond19, i32 noundef %cond22, i32 noundef %10) #13, !dbg !1503
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !1504, !tbaa !975
  %description = getelementptr inbounds %struct._MagickInfo, ptr %11, i64 0, i32 1, !dbg !1506
  %12 = load ptr, ptr %description, align 8, !dbg !1506, !tbaa !1167
  %cmp31.not = icmp eq ptr %12, null, !dbg !1507
  br i1 %cmp31.not, label %if.end36, label %if.then32, !dbg !1508

if.then32:                                        ; preds = %land.end.thread
  %call35 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.9, ptr noundef nonnull %12) #13, !dbg !1509
  %.pre = load ptr, ptr %arrayidx, align 8, !dbg !1510, !tbaa !975
  br label %if.end36, !dbg !1512

if.end36:                                         ; preds = %if.then32, %land.end.thread
  %13 = phi ptr [ %.pre, %if.then32 ], [ %11, %land.end.thread ], !dbg !1510
  %version = getelementptr inbounds %struct._MagickInfo, ptr %13, i64 0, i32 2, !dbg !1513
  %14 = load ptr, ptr %version, align 8, !dbg !1513, !tbaa !1514
  %cmp38.not = icmp eq ptr %14, null, !dbg !1515
  br i1 %cmp38.not, label %if.end43, label %if.then39, !dbg !1516

if.then39:                                        ; preds = %if.end36
  %call42 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.10, ptr noundef nonnull %14) #13, !dbg !1517
  br label %if.end43, !dbg !1518

if.end43:                                         ; preds = %if.then39, %if.end36
  %call44 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.11) #13, !dbg !1519
  %15 = load ptr, ptr %arrayidx, align 8, !dbg !1520, !tbaa !975
  %note = getelementptr inbounds %struct._MagickInfo, ptr %15, i64 0, i32 3, !dbg !1521
  %16 = load ptr, ptr %note, align 8, !dbg !1521, !tbaa !1522
  %cmp46.not = icmp eq ptr %16, null, !dbg !1523
  br i1 %cmp46.not, label %for.inc65, label %if.then47, !dbg !1524

if.then47:                                        ; preds = %if.end43
  %call50 = tail call ptr @StringToList(ptr noundef nonnull %16) #13, !dbg !1525
  call void @llvm.dbg.value(metadata ptr %call50, metadata !1463, metadata !DIExpression()), !dbg !1526
  %cmp51.not = icmp eq ptr %call50, null, !dbg !1527
  br i1 %cmp51.not, label %for.inc65, label %for.cond53.preheader, !dbg !1529

for.cond53.preheader:                             ; preds = %if.then47
  call void @llvm.dbg.value(metadata i64 0, metadata !1462, metadata !DIExpression()), !dbg !1469
  %17 = load ptr, ptr %call50, align 8, !dbg !1530, !tbaa !975
  %cmp55.not137 = icmp eq ptr %17, null, !dbg !1534
  br i1 %cmp55.not137, label %for.end, label %for.body56, !dbg !1535

for.body56:                                       ; preds = %for.cond53.preheader, %for.body56
  %18 = phi ptr [ %20, %for.body56 ], [ %17, %for.cond53.preheader ]
  %arrayidx54139 = phi ptr [ %arrayidx54, %for.body56 ], [ %call50, %for.cond53.preheader ]
  %j.0138 = phi i64 [ %inc, %for.body56 ], [ 0, %for.cond53.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.0138, metadata !1462, metadata !DIExpression()), !dbg !1469
  %call58 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.12, ptr noundef nonnull %18) #13, !dbg !1536
  %19 = load ptr, ptr %arrayidx54139, align 8, !dbg !1538, !tbaa !975
  %call60 = tail call ptr @DestroyString(ptr noundef %19) #13, !dbg !1539
  store ptr %call60, ptr %arrayidx54139, align 8, !dbg !1540, !tbaa !975
  %inc = add nuw nsw i64 %j.0138, 1, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1462, metadata !DIExpression()), !dbg !1469
  %arrayidx54 = getelementptr inbounds ptr, ptr %call50, i64 %inc, !dbg !1530
  %20 = load ptr, ptr %arrayidx54, align 8, !dbg !1530, !tbaa !975
  %cmp55.not = icmp eq ptr %20, null, !dbg !1534
  br i1 %cmp55.not, label %for.end, label %for.body56, !dbg !1535, !llvm.loop !1542

for.end:                                          ; preds = %for.body56, %for.cond53.preheader
  %call62 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call50) #13, !dbg !1544
  call void @llvm.dbg.value(metadata ptr %call62, metadata !1463, metadata !DIExpression()), !dbg !1526
  br label %for.inc65, !dbg !1545

for.inc65:                                        ; preds = %if.then47, %for.end, %if.end43, %for.body
  %inc66 = add nuw nsw i64 %i.0141, 1, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %inc66, metadata !1460, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i64 %1, metadata !1461, metadata !DIExpression()), !dbg !1469
  %exitcond.not = icmp eq i64 %inc66, %1, !dbg !1481
  br i1 %exitcond.not, label %for.end67, label %for.body, !dbg !1482, !llvm.loop !1547

for.end67:                                        ; preds = %for.inc65, %if.end3
  %call68 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.13) #13, !dbg !1549
  %call69 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.14) #13, !dbg !1550
  %call70 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.15) #13, !dbg !1551
  %call71 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.16) #13, !dbg !1552
  %call72 = tail call i32 @fflush(ptr noundef %spec.select), !dbg !1553
  %call73 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #13, !dbg !1554
  call void @llvm.dbg.value(metadata ptr %call73, metadata !1459, metadata !DIExpression()), !dbg !1469
  br label %cleanup, !dbg !1555

cleanup:                                          ; preds = %entry, %for.end67
  %retval.0 = phi i32 [ 1, %for.end67 ], [ 0, %entry ], !dbg !1469
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_formats) #13, !dbg !1556
  ret i32 %retval.0, !dbg !1556
}

declare !dbg !1557 void @ClearMagickException(ptr noundef) local_unnamed_addr #2

declare !dbg !1560 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !1564 ptr @StringToList(ptr noundef) local_unnamed_addr #2

declare !dbg !1567 ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare !dbg !1570 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1571 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nounwind willreturn uwtable
define dso_local i32 @IsMagickCoreInstantiated() local_unnamed_addr #8 !dbg !1574 {
entry:
  %0 = load volatile i32, ptr @instantiate_magickcore, align 4, !dbg !1577, !tbaa !1578
  ret i32 %0, !dbg !1579
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MagickComponentGenesis() local_unnamed_addr #0 !dbg !1580 {
entry:
  %0 = load ptr, ptr @magick_semaphore, align 8, !dbg !1581, !tbaa !975
  %cmp = icmp eq ptr %0, null, !dbg !1583
  br i1 %cmp, label %if.then, label %if.end, !dbg !1584

if.then:                                          ; preds = %entry
  %call = tail call ptr @AllocateSemaphoreInfo() #13, !dbg !1585
  store ptr %call, ptr @magick_semaphore, align 8, !dbg !1586, !tbaa !975
  br label %if.end, !dbg !1587

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !1588
}

declare !dbg !1589 ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MagickComponentTerminus() local_unnamed_addr #0 !dbg !1592 {
entry:
  %0 = load ptr, ptr @magick_semaphore, align 8, !dbg !1595, !tbaa !975
  %cmp = icmp eq ptr %0, null, !dbg !1597
  br i1 %cmp, label %if.then, label %if.end, !dbg !1598

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @magick_semaphore) #13, !dbg !1599
  %.pre = load ptr, ptr @magick_semaphore, align 8, !dbg !1600, !tbaa !975
  br label %if.end, !dbg !1599

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !1600
  tail call void @LockSemaphoreInfo(ptr noundef %1) #13, !dbg !1601
  %2 = load ptr, ptr @magick_list, align 8, !dbg !1602, !tbaa !975
  %cmp1.not = icmp eq ptr %2, null, !dbg !1604
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !1605

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @DestroySplayTree(ptr noundef nonnull %2) #13, !dbg !1606
  store ptr %call, ptr @magick_list, align 8, !dbg !1607, !tbaa !975
  br label %if.end3, !dbg !1608

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr @magick_semaphore, align 8, !dbg !1609, !tbaa !975
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #13, !dbg !1610
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @magick_semaphore) #13, !dbg !1611
  ret void, !dbg !1612
}

declare !dbg !1613 void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1617 ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #2

declare !dbg !1620 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MagickCoreGenesis(ptr nocapture noundef readnone %path, i32 noundef %establish_signal_handlers) local_unnamed_addr #0 !dbg !1621 {
entry:
  call void @llvm.dbg.value(metadata ptr %path, metadata !1625, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i32 %establish_signal_handlers, metadata !1626, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.declare(metadata ptr undef, metadata !1628, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.declare(metadata ptr undef, metadata !1629, metadata !DIExpression()), !dbg !1632
  %0 = load volatile i32, ptr @instantiate_magickcore, align 4, !dbg !1633, !tbaa !1578
  %cmp.not = icmp eq i32 %0, 0, !dbg !1635
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !1636

if.end:                                           ; preds = %entry
  %call = tail call i32 @SemaphoreComponentGenesis() #13, !dbg !1637
  %call1 = tail call i32 @LogComponentGenesis() #13, !dbg !1638
  %call2 = tail call i32 @LocaleComponentGenesis() #13, !dbg !1639
  %call3 = tail call i32 @RandomComponentGenesis() #13, !dbg !1640
  %call4 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.17) #13, !dbg !1641
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1627, metadata !DIExpression()), !dbg !1630
  %cmp5.not = icmp eq ptr %call4, null, !dbg !1642
  br i1 %cmp5.not, label %if.end9, label %if.then6, !dbg !1644

if.then6:                                         ; preds = %if.end
  %call7 = tail call i32 @SetLogEventMask(ptr noundef nonnull %call4) #13, !dbg !1645
  %call8 = tail call ptr @DestroyString(ptr noundef nonnull %call4) #13, !dbg !1647
  call void @llvm.dbg.value(metadata ptr %call8, metadata !1627, metadata !DIExpression()), !dbg !1630
  br label %if.end9, !dbg !1648

if.end9:                                          ; preds = %if.then6, %if.end
  %call10 = tail call i32 @ConfigureComponentGenesis() #13, !dbg !1649
  %call11 = tail call i32 @PolicyComponentGenesis() #13, !dbg !1650
  %call12 = tail call i32 @CacheComponentGenesis() #13, !dbg !1651
  %call13 = tail call i32 @ResourceComponentGenesis() #13, !dbg !1652
  %call14 = tail call i32 @CoderComponentGenesis() #13, !dbg !1653
  %1 = load ptr, ptr @magick_semaphore, align 8, !dbg !1654, !tbaa !975
  %cmp.i = icmp eq ptr %1, null, !dbg !1656
  br i1 %cmp.i, label %if.then.i, label %MagickComponentGenesis.exit, !dbg !1657

if.then.i:                                        ; preds = %if.end9
  %call.i = tail call ptr @AllocateSemaphoreInfo() #13, !dbg !1658
  store ptr %call.i, ptr @magick_semaphore, align 8, !dbg !1659, !tbaa !975
  br label %MagickComponentGenesis.exit, !dbg !1660

MagickComponentGenesis.exit:                      ; preds = %if.end9, %if.then.i
  %call16 = tail call i32 @DelegateComponentGenesis() #13, !dbg !1661
  %call17 = tail call i32 @MagicComponentGenesis() #13, !dbg !1662
  %call18 = tail call i32 @ColorComponentGenesis() #13, !dbg !1663
  %call19 = tail call i32 @TypeComponentGenesis() #13, !dbg !1664
  %call20 = tail call i32 @MimeComponentGenesis() #13, !dbg !1665
  %call21 = tail call i32 @AnnotateComponentGenesis() #13, !dbg !1666
  %call22 = tail call i32 @RegistryComponentGenesis() #13, !dbg !1667
  store volatile i32 1, ptr @instantiate_magickcore, align 4, !dbg !1668, !tbaa !1578
  br label %cleanup, !dbg !1669

cleanup:                                          ; preds = %entry, %MagickComponentGenesis.exit
  ret void, !dbg !1669
}

declare !dbg !1670 i32 @SemaphoreComponentGenesis() local_unnamed_addr #2

declare !dbg !1671 i32 @LogComponentGenesis() local_unnamed_addr #2

declare !dbg !1672 i32 @LocaleComponentGenesis() local_unnamed_addr #2

declare !dbg !1673 i32 @RandomComponentGenesis() local_unnamed_addr #2

declare !dbg !1675 ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #2

declare !dbg !1676 i32 @SetLogEventMask(ptr noundef) local_unnamed_addr #2

declare !dbg !1679 i32 @ConfigureComponentGenesis() local_unnamed_addr #2

declare !dbg !1681 i32 @PolicyComponentGenesis() local_unnamed_addr #2

declare !dbg !1683 i32 @CacheComponentGenesis() local_unnamed_addr #2

declare !dbg !1685 i32 @ResourceComponentGenesis() local_unnamed_addr #2

declare !dbg !1687 i32 @CoderComponentGenesis() local_unnamed_addr #2

declare !dbg !1689 i32 @DelegateComponentGenesis() local_unnamed_addr #2

declare !dbg !1691 i32 @MagicComponentGenesis() local_unnamed_addr #2

declare !dbg !1693 i32 @ColorComponentGenesis() local_unnamed_addr #2

declare !dbg !1694 i32 @TypeComponentGenesis() local_unnamed_addr #2

declare !dbg !1696 i32 @MimeComponentGenesis() local_unnamed_addr #2

declare !dbg !1698 i32 @AnnotateComponentGenesis() local_unnamed_addr #2

declare !dbg !1700 i32 @RegistryComponentGenesis() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MagickCoreTerminus() local_unnamed_addr #0 !dbg !1702 {
entry:
  %0 = load volatile i32, ptr @instantiate_magickcore, align 4, !dbg !1703, !tbaa !1578
  %cmp = icmp eq i32 %0, 0, !dbg !1705
  br i1 %cmp, label %return, label %if.end, !dbg !1706

if.end:                                           ; preds = %entry
  tail call void @RegistryComponentTerminus() #13, !dbg !1707
  tail call void @AnnotateComponentTerminus() #13, !dbg !1708
  tail call void @MimeComponentTerminus() #13, !dbg !1709
  tail call void @TypeComponentTerminus() #13, !dbg !1710
  tail call void @ColorComponentTerminus() #13, !dbg !1711
  tail call void @MagicComponentTerminus() #13, !dbg !1712
  tail call void @DelegateComponentTerminus() #13, !dbg !1713
  %1 = load ptr, ptr @magick_semaphore, align 8, !dbg !1714, !tbaa !975
  %cmp.i = icmp eq ptr %1, null, !dbg !1716
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1717

if.then.i:                                        ; preds = %if.end
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @magick_semaphore) #13, !dbg !1718
  %.pre.i = load ptr, ptr @magick_semaphore, align 8, !dbg !1719, !tbaa !975
  br label %if.end.i, !dbg !1718

if.end.i:                                         ; preds = %if.then.i, %if.end
  %2 = phi ptr [ %.pre.i, %if.then.i ], [ %1, %if.end ], !dbg !1719
  tail call void @LockSemaphoreInfo(ptr noundef %2) #13, !dbg !1720
  %3 = load ptr, ptr @magick_list, align 8, !dbg !1721, !tbaa !975
  %cmp1.not.i = icmp eq ptr %3, null, !dbg !1722
  br i1 %cmp1.not.i, label %MagickComponentTerminus.exit, label %if.then2.i, !dbg !1723

if.then2.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @DestroySplayTree(ptr noundef nonnull %3) #13, !dbg !1724
  store ptr %call.i, ptr @magick_list, align 8, !dbg !1725, !tbaa !975
  br label %MagickComponentTerminus.exit, !dbg !1726

MagickComponentTerminus.exit:                     ; preds = %if.end.i, %if.then2.i
  %4 = load ptr, ptr @magick_semaphore, align 8, !dbg !1727, !tbaa !975
  tail call void @UnlockSemaphoreInfo(ptr noundef %4) #13, !dbg !1728
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @magick_semaphore) #13, !dbg !1729
  tail call void @UnregisterStaticModules() #13, !dbg !1730
  tail call void @CoderComponentTerminus() #13, !dbg !1731
  tail call void @ResourceComponentTerminus() #13, !dbg !1732
  tail call void @CacheComponentTerminus() #13, !dbg !1733
  tail call void @PolicyComponentTerminus() #13, !dbg !1734
  tail call void @ConfigureComponentTerminus() #13, !dbg !1735
  tail call void @RandomComponentTerminus() #13, !dbg !1736
  tail call void @LocaleComponentTerminus() #13, !dbg !1737
  tail call void @LogComponentTerminus() #13, !dbg !1738
  tail call void @SemaphoreComponentTerminus() #13, !dbg !1739
  store volatile i32 0, ptr @instantiate_magickcore, align 4, !dbg !1740, !tbaa !1578
  br label %return, !dbg !1741

return:                                           ; preds = %entry, %MagickComponentTerminus.exit
  ret void, !dbg !1741
}

declare !dbg !1742 void @RegistryComponentTerminus() local_unnamed_addr #2

declare !dbg !1743 void @AnnotateComponentTerminus() local_unnamed_addr #2

declare !dbg !1744 void @MimeComponentTerminus() local_unnamed_addr #2

declare !dbg !1745 void @TypeComponentTerminus() local_unnamed_addr #2

declare !dbg !1746 void @ColorComponentTerminus() local_unnamed_addr #2

declare !dbg !1747 void @MagicComponentTerminus() local_unnamed_addr #2

declare !dbg !1748 void @DelegateComponentTerminus() local_unnamed_addr #2

declare !dbg !1749 void @UnregisterStaticModules() local_unnamed_addr #2

declare !dbg !1751 void @CoderComponentTerminus() local_unnamed_addr #2

declare !dbg !1752 void @ResourceComponentTerminus() local_unnamed_addr #2

declare !dbg !1753 void @CacheComponentTerminus() local_unnamed_addr #2

declare !dbg !1754 void @PolicyComponentTerminus() local_unnamed_addr #2

declare !dbg !1755 void @ConfigureComponentTerminus() local_unnamed_addr #2

declare !dbg !1756 void @RandomComponentTerminus() local_unnamed_addr #2

declare !dbg !1757 void @LocaleComponentTerminus() local_unnamed_addr #2

declare !dbg !1758 void @LogComponentTerminus() local_unnamed_addr #2

declare !dbg !1759 void @SemaphoreComponentTerminus() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @RegisterMagickInfo(ptr noundef %magick_info) local_unnamed_addr #0 !dbg !1760 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %magick_info, metadata !1764, metadata !DIExpression()), !dbg !1770
  %0 = load ptr, ptr %magick_info, align 8, !dbg !1771, !tbaa !994
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1446, ptr noundef nonnull @.str.4, ptr noundef %0) #13, !dbg !1772
  %1 = load ptr, ptr @magick_list, align 8, !dbg !1773, !tbaa !975
  %cmp = icmp eq ptr %1, null, !dbg !1775
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1776

if.end:                                           ; preds = %entry
  %thread_support = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 16, !dbg !1777
  %2 = load i32, ptr %thread_support, align 8, !dbg !1777, !tbaa !1444
  %cmp1 = icmp eq i32 %2, 0, !dbg !1779
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !1780

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @AllocateSemaphoreInfo() #13, !dbg !1781
  %semaphore = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 22, !dbg !1782
  store ptr %call3, ptr %semaphore, align 8, !dbg !1783, !tbaa !1784
  %.pre = load ptr, ptr @magick_list, align 8, !dbg !1785, !tbaa !975
  br label %if.end4, !dbg !1786

if.end4:                                          ; preds = %if.then2, %if.end
  %3 = phi ptr [ %.pre, %if.then2 ], [ %1, %if.end ], !dbg !1785
  %4 = load ptr, ptr %magick_info, align 8, !dbg !1787, !tbaa !994
  %call6 = tail call i32 @AddValueToSplayTree(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %magick_info) #13, !dbg !1788
  call void @llvm.dbg.value(metadata i32 %call6, metadata !1765, metadata !DIExpression()), !dbg !1770
  %cmp7 = icmp eq i32 %call6, 0, !dbg !1789
  br i1 %cmp7, label %if.then8, label %cleanup, !dbg !1790

if.then8:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #13, !dbg !1791
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1769, metadata !DIExpression()), !dbg !1791
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #13, !dbg !1791
  %call9 = tail call ptr @__errno_location() #14, !dbg !1791
  %5 = load i32, ptr %call9, align 4, !dbg !1791, !tbaa !1062
  %call10 = call ptr @GetExceptionMessage(i32 noundef %5) #13, !dbg !1791
  call void @llvm.dbg.value(metadata ptr %call10, metadata !1766, metadata !DIExpression()), !dbg !1792
  %call11 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1453, i32 noundef 700, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef %call10) #13, !dbg !1791
  %call12 = call ptr @DestroyString(ptr noundef %call10) #13, !dbg !1791
  call void @llvm.dbg.value(metadata ptr %call12, metadata !1766, metadata !DIExpression()), !dbg !1792
  call void @CatchException(ptr noundef nonnull %exception) #13, !dbg !1791
  %call13 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #13, !dbg !1791
  call void @MagickCoreTerminus(), !dbg !1791
  call void @_exit(i32 noundef 1) #15, !dbg !1791
  unreachable, !dbg !1791

cleanup:                                          ; preds = %if.end4, %entry
  %retval.0 = phi ptr [ null, %entry ], [ %magick_info, %if.end4 ], !dbg !1770
  ret ptr %retval.0, !dbg !1793
}

declare !dbg !1794 i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1797 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1798 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #9

declare !dbg !1801 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !1805 void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local ptr @SetMagickInfo(ptr noundef %name) local_unnamed_addr #0 !dbg !1806 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %name, metadata !1810, metadata !DIExpression()), !dbg !1816
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1490, ptr noundef nonnull @.str.4, ptr noundef %name) #13, !dbg !1817
  %call1 = tail call ptr @AcquireMagickMemory(i64 noundef 152) #17, !dbg !1818
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1811, metadata !DIExpression()), !dbg !1816
  %cmp = icmp eq ptr %call1, null, !dbg !1819
  br i1 %cmp, label %if.then, label %if.end, !dbg !1820

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #13, !dbg !1821
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1815, metadata !DIExpression()), !dbg !1821
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #13, !dbg !1821
  %call2 = tail call ptr @__errno_location() #14, !dbg !1821
  %0 = load i32, ptr %call2, align 4, !dbg !1821, !tbaa !1062
  %call3 = call ptr @GetExceptionMessage(i32 noundef %0) #13, !dbg !1821
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1812, metadata !DIExpression()), !dbg !1822
  %call4 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1493, i32 noundef 700, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef %call3) #13, !dbg !1821
  %call5 = call ptr @DestroyString(ptr noundef %call3) #13, !dbg !1821
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1812, metadata !DIExpression()), !dbg !1822
  call void @CatchException(ptr noundef nonnull %exception) #13, !dbg !1821
  %call6 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #13, !dbg !1821
  call void @MagickCoreTerminus(), !dbg !1821
  call void @_exit(i32 noundef 1) #15, !dbg !1821
  unreachable, !dbg !1821

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call1, i32 noundef 0, i64 noundef 152) #13, !dbg !1823
  %call8 = tail call ptr @ConstantString(ptr noundef %name) #13, !dbg !1824
  store ptr %call8, ptr %call1, align 8, !dbg !1825, !tbaa !994
  %adjoin = getelementptr inbounds %struct._MagickInfo, ptr %call1, i64 0, i32 10, !dbg !1826
  store i32 1, ptr %adjoin, align 8, !dbg !1827, !tbaa !1149
  %blob_support = getelementptr inbounds %struct._MagickInfo, ptr %call1, i64 0, i32 13, !dbg !1828
  store i32 1, ptr %blob_support, align 4, !dbg !1829, !tbaa !1157
  %thread_support = getelementptr inbounds %struct._MagickInfo, ptr %call1, i64 0, i32 16, !dbg !1830
  store i32 3, ptr %thread_support, align 8, !dbg !1831, !tbaa !1444
  %signature = getelementptr inbounds %struct._MagickInfo, ptr %call1, i64 0, i32 20, !dbg !1832
  store i64 2880220587, ptr %signature, align 8, !dbg !1833, !tbaa !1834
  ret ptr %call1, !dbg !1835
}

; Function Attrs: allocsize(0)
declare !dbg !1836 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #11

declare !dbg !1839 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1842 ptr @GetPolicyValue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @UnregisterMagickInfo(ptr noundef %name) local_unnamed_addr #0 !dbg !1843 {
entry:
  call void @llvm.dbg.value(metadata ptr %name, metadata !1845, metadata !DIExpression()), !dbg !1848
  %0 = load ptr, ptr @magick_list, align 8, !dbg !1849, !tbaa !975
  %cmp = icmp eq ptr %0, null, !dbg !1851
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1852

if.end:                                           ; preds = %entry
  %call = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef nonnull %0) #13, !dbg !1853
  %cmp1 = icmp eq i64 %call, 0, !dbg !1855
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !1856

if.end3:                                          ; preds = %if.end
  %1 = load ptr, ptr @magick_semaphore, align 8, !dbg !1857, !tbaa !975
  tail call void @LockSemaphoreInfo(ptr noundef %1) #13, !dbg !1858
  %2 = load ptr, ptr @magick_list, align 8, !dbg !1859, !tbaa !975
  tail call void @ResetSplayTreeIterator(ptr noundef %2) #13, !dbg !1860
  %3 = load ptr, ptr @magick_list, align 8, !dbg !1861, !tbaa !975
  %call4 = tail call ptr @GetNextValueInSplayTree(ptr noundef %3) #13, !dbg !1862
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1846, metadata !DIExpression()), !dbg !1848
  %cmp5.not16 = icmp eq ptr %call4, null, !dbg !1863
  br i1 %cmp5.not16, label %while.end, label %while.body, !dbg !1864

while.body:                                       ; preds = %if.end3, %if.end10
  %p.017 = phi ptr [ %call11, %if.end10 ], [ %call4, %if.end3 ]
  call void @llvm.dbg.value(metadata ptr %p.017, metadata !1846, metadata !DIExpression()), !dbg !1848
  %4 = load ptr, ptr %p.017, align 8, !dbg !1865, !tbaa !994
  %call7 = tail call i32 @LocaleCompare(ptr noundef %4, ptr noundef %name) #13, !dbg !1868
  %cmp8 = icmp eq i32 %call7, 0, !dbg !1869
  br i1 %cmp8, label %while.end, label %if.end10, !dbg !1870

if.end10:                                         ; preds = %while.body
  %5 = load ptr, ptr @magick_list, align 8, !dbg !1871, !tbaa !975
  %call11 = tail call ptr @GetNextValueInSplayTree(ptr noundef %5) #13, !dbg !1872
  call void @llvm.dbg.value(metadata ptr %call11, metadata !1846, metadata !DIExpression()), !dbg !1848
  %cmp5.not = icmp eq ptr %call11, null, !dbg !1863
  br i1 %cmp5.not, label %while.end, label %while.body, !dbg !1864, !llvm.loop !1873

while.end:                                        ; preds = %if.end10, %while.body, %if.end3
  %p.0.lcssa = phi ptr [ null, %if.end3 ], [ %p.017, %while.body ], [ null, %if.end10 ], !dbg !1848
  %6 = load ptr, ptr @magick_list, align 8, !dbg !1875, !tbaa !975
  %call12 = tail call i32 @DeleteNodeByValueFromSplayTree(ptr noundef %6, ptr noundef %p.0.lcssa) #13, !dbg !1876
  call void @llvm.dbg.value(metadata i32 %call12, metadata !1847, metadata !DIExpression()), !dbg !1848
  %7 = load ptr, ptr @magick_semaphore, align 8, !dbg !1877, !tbaa !975
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #13, !dbg !1878
  br label %cleanup, !dbg !1879

cleanup:                                          ; preds = %if.end, %entry, %while.end
  %retval.0 = phi i32 [ %call12, %while.end ], [ 0, %entry ], [ 0, %if.end ], !dbg !1848
  ret i32 %retval.0, !dbg !1880
}

declare !dbg !1881 i32 @DeleteNodeByValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1884 ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @DestroyMagickNode(ptr noundef %magick_info) #0 !dbg !1887 {
entry:
  call void @llvm.dbg.value(metadata ptr %magick_info, metadata !1889, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata ptr %magick_info, metadata !1890, metadata !DIExpression()), !dbg !1891
  %module = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 4, !dbg !1892
  %0 = load ptr, ptr %module, align 8, !dbg !1892, !tbaa !1894
  %cmp.not = icmp eq ptr %0, null, !dbg !1895
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1896

if.then:                                          ; preds = %entry
  %call = tail call ptr @DestroyString(ptr noundef nonnull %0) #13, !dbg !1897
  store ptr %call, ptr %module, align 8, !dbg !1898, !tbaa !1894
  br label %if.end, !dbg !1899

if.end:                                           ; preds = %if.then, %entry
  %note = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 3, !dbg !1900
  %1 = load ptr, ptr %note, align 8, !dbg !1900, !tbaa !1522
  %cmp3.not = icmp eq ptr %1, null, !dbg !1902
  br i1 %cmp3.not, label %if.end8, label %if.then4, !dbg !1903

if.then4:                                         ; preds = %if.end
  %call6 = tail call ptr @DestroyString(ptr noundef nonnull %1) #13, !dbg !1904
  store ptr %call6, ptr %note, align 8, !dbg !1905, !tbaa !1522
  br label %if.end8, !dbg !1906

if.end8:                                          ; preds = %if.then4, %if.end
  %mime_type = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 21, !dbg !1907
  %2 = load ptr, ptr %mime_type, align 8, !dbg !1907, !tbaa !1357
  %cmp9.not = icmp eq ptr %2, null, !dbg !1909
  br i1 %cmp9.not, label %if.end14, label %if.then10, !dbg !1910

if.then10:                                        ; preds = %if.end8
  %call12 = tail call ptr @DestroyString(ptr noundef nonnull %2) #13, !dbg !1911
  store ptr %call12, ptr %mime_type, align 8, !dbg !1912, !tbaa !1357
  br label %if.end14, !dbg !1913

if.end14:                                         ; preds = %if.then10, %if.end8
  %version = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 2, !dbg !1914
  %3 = load ptr, ptr %version, align 8, !dbg !1914, !tbaa !1514
  %cmp15.not = icmp eq ptr %3, null, !dbg !1916
  br i1 %cmp15.not, label %if.end20, label %if.then16, !dbg !1917

if.then16:                                        ; preds = %if.end14
  %call18 = tail call ptr @DestroyString(ptr noundef nonnull %3) #13, !dbg !1918
  store ptr %call18, ptr %version, align 8, !dbg !1919, !tbaa !1514
  br label %if.end20, !dbg !1920

if.end20:                                         ; preds = %if.then16, %if.end14
  %description = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 1, !dbg !1921
  %4 = load ptr, ptr %description, align 8, !dbg !1921, !tbaa !1167
  %cmp21.not = icmp eq ptr %4, null, !dbg !1923
  br i1 %cmp21.not, label %if.end26, label %if.then22, !dbg !1924

if.then22:                                        ; preds = %if.end20
  %call24 = tail call ptr @DestroyString(ptr noundef nonnull %4) #13, !dbg !1925
  store ptr %call24, ptr %description, align 8, !dbg !1926, !tbaa !1167
  br label %if.end26, !dbg !1927

if.end26:                                         ; preds = %if.then22, %if.end20
  %5 = load ptr, ptr %magick_info, align 8, !dbg !1928, !tbaa !994
  %cmp27.not = icmp eq ptr %5, null, !dbg !1930
  br i1 %cmp27.not, label %if.end32, label %if.then28, !dbg !1931

if.then28:                                        ; preds = %if.end26
  %call30 = tail call ptr @DestroyString(ptr noundef nonnull %5) #13, !dbg !1932
  store ptr %call30, ptr %magick_info, align 8, !dbg !1933, !tbaa !994
  br label %if.end32, !dbg !1934

if.end32:                                         ; preds = %if.then28, %if.end26
  %semaphore = getelementptr inbounds %struct._MagickInfo, ptr %magick_info, i64 0, i32 22, !dbg !1935
  %6 = load ptr, ptr %semaphore, align 8, !dbg !1935, !tbaa !1784
  %cmp33.not = icmp eq ptr %6, null, !dbg !1937
  br i1 %cmp33.not, label %if.end36, label %if.then34, !dbg !1938

if.then34:                                        ; preds = %if.end32
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %semaphore) #13, !dbg !1939
  br label %if.end36, !dbg !1939

if.end36:                                         ; preds = %if.then34, %if.end32
  %call37 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %magick_info) #13, !dbg !1940
  ret ptr %call37, !dbg !1941
}

declare !dbg !1942 void @RegisterStaticModules() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!917, !918, !919, !920, !921, !922}
!llvm.ident = !{!923}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "magick_semaphore", scope: !2, file: !900, line: 109, type: !715, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !482, globals: !896, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/magick.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "cf7a5f62d1772e878a92411a056c7712")
!4 = !{!5, !12, !49, !74, !86, !90, !98, !103, !138, !148, !154, !169, !240, !248, !254, !327, !344, !358, !370, !403, !425, !446, !452, !477}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 204, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "UndefinedClass", value: 0)
!10 = !DIEnumerator(name: "DirectClass", value: 1)
!11 = !DIEnumerator(name: "PseudoClass", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 25, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!15 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!16 = !DIEnumerator(name: "RGBColorspace", value: 1)
!17 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!18 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!19 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!20 = !DIEnumerator(name: "LabColorspace", value: 5)
!21 = !DIEnumerator(name: "XYZColorspace", value: 6)
!22 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!23 = !DIEnumerator(name: "YCCColorspace", value: 8)
!24 = !DIEnumerator(name: "YIQColorspace", value: 9)
!25 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!26 = !DIEnumerator(name: "YUVColorspace", value: 11)
!27 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!28 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!29 = !DIEnumerator(name: "HSBColorspace", value: 14)
!30 = !DIEnumerator(name: "HSLColorspace", value: 15)
!31 = !DIEnumerator(name: "HWBColorspace", value: 16)
!32 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!33 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!34 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!35 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!36 = !DIEnumerator(name: "LogColorspace", value: 21)
!37 = !DIEnumerator(name: "CMYColorspace", value: 22)
!38 = !DIEnumerator(name: "LuvColorspace", value: 23)
!39 = !DIEnumerator(name: "HCLColorspace", value: 24)
!40 = !DIEnumerator(name: "LCHColorspace", value: 25)
!41 = !DIEnumerator(name: "LMSColorspace", value: 26)
!42 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!43 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!44 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!45 = !DIEnumerator(name: "HSIColorspace", value: 30)
!46 = !DIEnumerator(name: "HSVColorspace", value: 31)
!47 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!48 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 25, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!52 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!53 = !DIEnumerator(name: "NoCompression", value: 1)
!54 = !DIEnumerator(name: "BZipCompression", value: 2)
!55 = !DIEnumerator(name: "DXT1Compression", value: 3)
!56 = !DIEnumerator(name: "DXT3Compression", value: 4)
!57 = !DIEnumerator(name: "DXT5Compression", value: 5)
!58 = !DIEnumerator(name: "FaxCompression", value: 6)
!59 = !DIEnumerator(name: "Group4Compression", value: 7)
!60 = !DIEnumerator(name: "JPEGCompression", value: 8)
!61 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!62 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!63 = !DIEnumerator(name: "LZWCompression", value: 11)
!64 = !DIEnumerator(name: "RLECompression", value: 12)
!65 = !DIEnumerator(name: "ZipCompression", value: 13)
!66 = !DIEnumerator(name: "ZipSCompression", value: 14)
!67 = !DIEnumerator(name: "PizCompression", value: 15)
!68 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!69 = !DIEnumerator(name: "B44Compression", value: 17)
!70 = !DIEnumerator(name: "B44ACompression", value: 18)
!71 = !DIEnumerator(name: "LZMACompression", value: 19)
!72 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!73 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 75, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85}
!77 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!78 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!79 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!80 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!81 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!82 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!83 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!84 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!85 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 211, baseType: !7, size: 32, elements: !87)
!87 = !{!88, !89}
!88 = !DIEnumerator(name: "MagickFalse", value: 0)
!89 = !DIEnumerator(name: "MagickTrue", value: 1)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !91, line: 42, baseType: !7, size: 32, elements: !92)
!91 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!92 = !{!93, !94, !95, !96, !97}
!93 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!94 = !DIEnumerator(name: "SaturationIntent", value: 1)
!95 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!96 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!97 = !DIEnumerator(name: "RelativeIntent", value: 4)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 88, baseType: !7, size: 32, elements: !99)
!99 = !{!100, !101, !102}
!100 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!101 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!102 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !104, line: 32, baseType: !7, size: 32, elements: !105)
!104 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
!106 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!107 = !DIEnumerator(name: "PointFilter", value: 1)
!108 = !DIEnumerator(name: "BoxFilter", value: 2)
!109 = !DIEnumerator(name: "TriangleFilter", value: 3)
!110 = !DIEnumerator(name: "HermiteFilter", value: 4)
!111 = !DIEnumerator(name: "HanningFilter", value: 5)
!112 = !DIEnumerator(name: "HammingFilter", value: 6)
!113 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!114 = !DIEnumerator(name: "GaussianFilter", value: 8)
!115 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!116 = !DIEnumerator(name: "CubicFilter", value: 10)
!117 = !DIEnumerator(name: "CatromFilter", value: 11)
!118 = !DIEnumerator(name: "MitchellFilter", value: 12)
!119 = !DIEnumerator(name: "JincFilter", value: 13)
!120 = !DIEnumerator(name: "SincFilter", value: 14)
!121 = !DIEnumerator(name: "SincFastFilter", value: 15)
!122 = !DIEnumerator(name: "KaiserFilter", value: 16)
!123 = !DIEnumerator(name: "WelshFilter", value: 17)
!124 = !DIEnumerator(name: "ParzenFilter", value: 18)
!125 = !DIEnumerator(name: "BohmanFilter", value: 19)
!126 = !DIEnumerator(name: "BartlettFilter", value: 20)
!127 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!128 = !DIEnumerator(name: "LanczosFilter", value: 22)
!129 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!130 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!131 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!132 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!133 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!134 = !DIEnumerator(name: "CosineFilter", value: 28)
!135 = !DIEnumerator(name: "SplineFilter", value: 29)
!136 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!137 = !DIEnumerator(name: "SentinelFilter", value: 31)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 63, baseType: !7, size: 32, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147}
!140 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!141 = !DIEnumerator(name: "NoInterlace", value: 1)
!142 = !DIEnumerator(name: "LineInterlace", value: 2)
!143 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!144 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!145 = !DIEnumerator(name: "GIFInterlace", value: 5)
!146 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!147 = !DIEnumerator(name: "PNGInterlace", value: 7)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !149, line: 30, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!150 = !{!151, !152, !153}
!151 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!152 = !DIEnumerator(name: "LSBEndian", value: 1)
!153 = !DIEnumerator(name: "MSBEndian", value: 2)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 77, baseType: !7, size: 32, elements: !156)
!155 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!157 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!158 = !DIEnumerator(name: "ForgetGravity", value: 0)
!159 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!160 = !DIEnumerator(name: "NorthGravity", value: 2)
!161 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!162 = !DIEnumerator(name: "WestGravity", value: 4)
!163 = !DIEnumerator(name: "CenterGravity", value: 5)
!164 = !DIEnumerator(name: "EastGravity", value: 6)
!165 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!166 = !DIEnumerator(name: "SouthGravity", value: 8)
!167 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!168 = !DIEnumerator(name: "StaticGravity", value: 10)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !170, line: 25, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!172 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!173 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!174 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!175 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!176 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!177 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!178 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!179 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!180 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!181 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!182 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!183 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!184 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!185 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!186 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!187 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!188 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!189 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!190 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!191 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!192 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!193 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!194 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!195 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!196 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!197 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!198 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!199 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!200 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!201 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!202 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!203 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!204 = !DIEnumerator(name: "InCompositeOp", value: 32)
!205 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!206 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!207 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!208 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!209 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!210 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!211 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!212 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!213 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!214 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!215 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!216 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!217 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!218 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!219 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!220 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!221 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!222 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!223 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!224 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!225 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!226 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!227 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!228 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!229 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!230 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!231 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!232 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!233 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!234 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!235 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!236 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!237 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!238 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!239 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !241, line: 25, baseType: !7, size: 32, elements: !242)
!241 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!242 = !{!243, !244, !245, !246, !247}
!243 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!244 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!245 = !DIEnumerator(name: "NoneDispose", value: 1)
!246 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!247 = !DIEnumerator(name: "PreviousDispose", value: 3)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !249, line: 25, baseType: !7, size: 32, elements: !250)
!249 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!250 = !{!251, !252, !253}
!251 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!252 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!253 = !DIEnumerator(name: "RunningTimerState", value: 2)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !255, line: 28, baseType: !7, size: 32, elements: !256)
!255 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!257 = !DIEnumerator(name: "UndefinedException", value: 0)
!258 = !DIEnumerator(name: "WarningException", value: 300)
!259 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!260 = !DIEnumerator(name: "TypeWarning", value: 305)
!261 = !DIEnumerator(name: "OptionWarning", value: 310)
!262 = !DIEnumerator(name: "DelegateWarning", value: 315)
!263 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!264 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!265 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!266 = !DIEnumerator(name: "BlobWarning", value: 335)
!267 = !DIEnumerator(name: "StreamWarning", value: 340)
!268 = !DIEnumerator(name: "CacheWarning", value: 345)
!269 = !DIEnumerator(name: "CoderWarning", value: 350)
!270 = !DIEnumerator(name: "FilterWarning", value: 352)
!271 = !DIEnumerator(name: "ModuleWarning", value: 355)
!272 = !DIEnumerator(name: "DrawWarning", value: 360)
!273 = !DIEnumerator(name: "ImageWarning", value: 365)
!274 = !DIEnumerator(name: "WandWarning", value: 370)
!275 = !DIEnumerator(name: "RandomWarning", value: 375)
!276 = !DIEnumerator(name: "XServerWarning", value: 380)
!277 = !DIEnumerator(name: "MonitorWarning", value: 385)
!278 = !DIEnumerator(name: "RegistryWarning", value: 390)
!279 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!280 = !DIEnumerator(name: "PolicyWarning", value: 399)
!281 = !DIEnumerator(name: "ErrorException", value: 400)
!282 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!283 = !DIEnumerator(name: "TypeError", value: 405)
!284 = !DIEnumerator(name: "OptionError", value: 410)
!285 = !DIEnumerator(name: "DelegateError", value: 415)
!286 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!287 = !DIEnumerator(name: "CorruptImageError", value: 425)
!288 = !DIEnumerator(name: "FileOpenError", value: 430)
!289 = !DIEnumerator(name: "BlobError", value: 435)
!290 = !DIEnumerator(name: "StreamError", value: 440)
!291 = !DIEnumerator(name: "CacheError", value: 445)
!292 = !DIEnumerator(name: "CoderError", value: 450)
!293 = !DIEnumerator(name: "FilterError", value: 452)
!294 = !DIEnumerator(name: "ModuleError", value: 455)
!295 = !DIEnumerator(name: "DrawError", value: 460)
!296 = !DIEnumerator(name: "ImageError", value: 465)
!297 = !DIEnumerator(name: "WandError", value: 470)
!298 = !DIEnumerator(name: "RandomError", value: 475)
!299 = !DIEnumerator(name: "XServerError", value: 480)
!300 = !DIEnumerator(name: "MonitorError", value: 485)
!301 = !DIEnumerator(name: "RegistryError", value: 490)
!302 = !DIEnumerator(name: "ConfigureError", value: 495)
!303 = !DIEnumerator(name: "PolicyError", value: 499)
!304 = !DIEnumerator(name: "FatalErrorException", value: 700)
!305 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!306 = !DIEnumerator(name: "TypeFatalError", value: 705)
!307 = !DIEnumerator(name: "OptionFatalError", value: 710)
!308 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!309 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!310 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!311 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!312 = !DIEnumerator(name: "BlobFatalError", value: 735)
!313 = !DIEnumerator(name: "StreamFatalError", value: 740)
!314 = !DIEnumerator(name: "CacheFatalError", value: 745)
!315 = !DIEnumerator(name: "CoderFatalError", value: 750)
!316 = !DIEnumerator(name: "FilterFatalError", value: 752)
!317 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!318 = !DIEnumerator(name: "DrawFatalError", value: 760)
!319 = !DIEnumerator(name: "ImageFatalError", value: 765)
!320 = !DIEnumerator(name: "WandFatalError", value: 770)
!321 = !DIEnumerator(name: "RandomFatalError", value: 775)
!322 = !DIEnumerator(name: "XServerFatalError", value: 780)
!323 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!324 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!325 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!326 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!327 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !328, line: 31, baseType: !7, size: 32, elements: !329)
!328 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!330 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!331 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!332 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!333 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!334 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!335 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!336 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!337 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!338 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!339 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!340 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!341 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!342 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!343 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!344 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 47, baseType: !7, size: 32, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!346 = !DIEnumerator(name: "UndefinedType", value: 0)
!347 = !DIEnumerator(name: "BilevelType", value: 1)
!348 = !DIEnumerator(name: "GrayscaleType", value: 2)
!349 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!350 = !DIEnumerator(name: "PaletteType", value: 4)
!351 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!352 = !DIEnumerator(name: "TrueColorType", value: 6)
!353 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!354 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!355 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!356 = !DIEnumerator(name: "OptimizeType", value: 10)
!357 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!358 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !328, line: 67, baseType: !7, size: 32, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!360 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!361 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!362 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!363 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!364 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!365 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!366 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!367 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!368 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!369 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 27, baseType: !7, size: 32, elements: !372)
!371 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402}
!373 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!374 = !DIEnumerator(name: "RotatePreview", value: 1)
!375 = !DIEnumerator(name: "ShearPreview", value: 2)
!376 = !DIEnumerator(name: "RollPreview", value: 3)
!377 = !DIEnumerator(name: "HuePreview", value: 4)
!378 = !DIEnumerator(name: "SaturationPreview", value: 5)
!379 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!380 = !DIEnumerator(name: "GammaPreview", value: 7)
!381 = !DIEnumerator(name: "SpiffPreview", value: 8)
!382 = !DIEnumerator(name: "DullPreview", value: 9)
!383 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!384 = !DIEnumerator(name: "QuantizePreview", value: 11)
!385 = !DIEnumerator(name: "DespecklePreview", value: 12)
!386 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!387 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!388 = !DIEnumerator(name: "SharpenPreview", value: 15)
!389 = !DIEnumerator(name: "BlurPreview", value: 16)
!390 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!391 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!392 = !DIEnumerator(name: "SpreadPreview", value: 19)
!393 = !DIEnumerator(name: "SolarizePreview", value: 20)
!394 = !DIEnumerator(name: "ShadePreview", value: 21)
!395 = !DIEnumerator(name: "RaisePreview", value: 22)
!396 = !DIEnumerator(name: "SegmentPreview", value: 23)
!397 = !DIEnumerator(name: "SwirlPreview", value: 24)
!398 = !DIEnumerator(name: "ImplodePreview", value: 25)
!399 = !DIEnumerator(name: "WavePreview", value: 26)
!400 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!401 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!402 = !DIEnumerator(name: "JPEGPreview", value: 29)
!403 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 177, baseType: !7, size: 32, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424}
!405 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!406 = !DIEnumerator(name: "RedChannel", value: 1)
!407 = !DIEnumerator(name: "GrayChannel", value: 1)
!408 = !DIEnumerator(name: "CyanChannel", value: 1)
!409 = !DIEnumerator(name: "GreenChannel", value: 2)
!410 = !DIEnumerator(name: "MagentaChannel", value: 2)
!411 = !DIEnumerator(name: "BlueChannel", value: 4)
!412 = !DIEnumerator(name: "YellowChannel", value: 4)
!413 = !DIEnumerator(name: "AlphaChannel", value: 8)
!414 = !DIEnumerator(name: "OpacityChannel", value: 8)
!415 = !DIEnumerator(name: "MatteChannel", value: 8)
!416 = !DIEnumerator(name: "BlackChannel", value: 32)
!417 = !DIEnumerator(name: "IndexChannel", value: 32)
!418 = !DIEnumerator(name: "CompositeChannels", value: 47)
!419 = !DIEnumerator(name: "AllChannels", value: 134217727)
!420 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!421 = !DIEnumerator(name: "RGBChannels", value: 128)
!422 = !DIEnumerator(name: "GrayChannels", value: 128)
!423 = !DIEnumerator(name: "SyncChannels", value: 256)
!424 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!425 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !426, line: 27, baseType: !7, size: 32, elements: !427)
!426 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!427 = !{!428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!428 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!429 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!430 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!431 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!432 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!433 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!434 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!435 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!436 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!437 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!438 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!439 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!440 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!441 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!442 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!443 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!444 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!445 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!446 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !447, line: 28, baseType: !7, size: 32, elements: !448)
!447 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!448 = !{!449, !450, !451}
!449 = !DIEnumerator(name: "UndefinedFormatType", value: 0)
!450 = !DIEnumerator(name: "ImplicitFormatType", value: 1)
!451 = !DIEnumerator(name: "ExplicitFormatType", value: 2)
!452 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !453, line: 34, baseType: !7, size: 32, elements: !454)
!453 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!454 = !{!455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476}
!455 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!456 = !DIEnumerator(name: "NoEvents", value: 0)
!457 = !DIEnumerator(name: "TraceEvent", value: 1)
!458 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!459 = !DIEnumerator(name: "BlobEvent", value: 4)
!460 = !DIEnumerator(name: "CacheEvent", value: 8)
!461 = !DIEnumerator(name: "CoderEvent", value: 16)
!462 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!463 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!464 = !DIEnumerator(name: "DrawEvent", value: 128)
!465 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!466 = !DIEnumerator(name: "ImageEvent", value: 512)
!467 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!468 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!469 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!470 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!471 = !DIEnumerator(name: "TransformEvent", value: 16384)
!472 = !DIEnumerator(name: "UserEvent", value: 36864)
!473 = !DIEnumerator(name: "WandEvent", value: 65536)
!474 = !DIEnumerator(name: "X11Event", value: 131072)
!475 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!476 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!477 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !447, line: 35, baseType: !7, size: 32, elements: !478)
!478 = !{!479, !480, !481}
!479 = !DIEnumerator(name: "NoThreadSupport", value: 0)
!480 = !DIEnumerator(name: "DecoderThreadSupport", value: 1)
!481 = !DIEnumerator(name: "EncoderThreadSupport", value: 2)
!482 = !{!483, !484, !607, !862, !675, !885, !515, !886, !887, !490, !778, !556, !715, !888, !709, !877, !892, !893}
!483 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickInfo", file: !447, line: 103, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickInfo", file: !447, line: 51, size: 1216, elements: !488)
!488 = !{!489, !492, !493, !494, !495, !496, !848, !856, !861, !868, !869, !870, !871, !872, !873, !874, !876, !878, !879, !881, !882, !883, !884}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !487, file: !447, line: 54, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !487, file: !447, line: 55, baseType: !490, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !487, file: !447, line: 56, baseType: !490, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !487, file: !447, line: 57, baseType: !490, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !487, file: !447, line: 58, baseType: !490, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "image_info", scope: !487, file: !447, line: 61, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !6, line: 223, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !75, line: 356, size: 134336, elements: !500)
!500 = !{!501, !503, !505, !507, !508, !509, !510, !511, !512, !513, !514, !517, !518, !519, !521, !523, !525, !526, !527, !528, !529, !530, !531, !533, !534, !544, !545, !546, !547, !548, !549, !551, !553, !555, !561, !562, !563, !564, !565, !567, !762, !763, !764, !765, !766, !777, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !845, !846, !847}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !499, file: !75, line: 359, baseType: !502, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !50, line: 49, baseType: !49)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !499, file: !75, line: 362, baseType: !504, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !75, line: 86, baseType: !74)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !499, file: !75, line: 365, baseType: !506, size: 32, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !6, line: 215, baseType: !86)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !499, file: !75, line: 366, baseType: !506, size: 32, offset: 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !499, file: !75, line: 367, baseType: !506, size: 32, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !499, file: !75, line: 368, baseType: !506, size: 32, offset: 160)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !499, file: !75, line: 371, baseType: !490, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !499, file: !75, line: 372, baseType: !490, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !499, file: !75, line: 373, baseType: !490, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !499, file: !75, line: 374, baseType: !490, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !499, file: !75, line: 377, baseType: !515, size: 64, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !516, line: 46, baseType: !483)
!516 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!517 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !499, file: !75, line: 378, baseType: !515, size: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !499, file: !75, line: 379, baseType: !515, size: 64, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !499, file: !75, line: 382, baseType: !520, size: 32, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !75, line: 73, baseType: !138)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !499, file: !75, line: 385, baseType: !522, size: 32, offset: 672)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !149, line: 35, baseType: !148)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !499, file: !75, line: 388, baseType: !524, size: 32, offset: 704)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !75, line: 93, baseType: !98)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !499, file: !75, line: 391, baseType: !515, size: 64, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !499, file: !75, line: 394, baseType: !490, size: 64, offset: 832)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !499, file: !75, line: 395, baseType: !490, size: 64, offset: 896)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !499, file: !75, line: 396, baseType: !490, size: 64, offset: 960)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !499, file: !75, line: 397, baseType: !490, size: 64, offset: 1024)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !499, file: !75, line: 398, baseType: !490, size: 64, offset: 1088)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !499, file: !75, line: 401, baseType: !532, size: 64, offset: 1152)
!532 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !499, file: !75, line: 402, baseType: !532, size: 64, offset: 1216)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !499, file: !75, line: 405, baseType: !535, size: 64, offset: 1280)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !328, line: 148, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !328, line: 131, size: 64, elements: !537)
!537 = !{!538, !541, !542, !543}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !536, file: !328, line: 143, baseType: !539, size: 16)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !6, line: 93, baseType: !540)
!540 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !536, file: !328, line: 144, baseType: !539, size: 16, offset: 16)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !536, file: !328, line: 145, baseType: !539, size: 16, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !536, file: !328, line: 146, baseType: !539, size: 16, offset: 48)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !499, file: !75, line: 406, baseType: !535, size: 64, offset: 1344)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !499, file: !75, line: 407, baseType: !535, size: 64, offset: 1408)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !499, file: !75, line: 410, baseType: !506, size: 32, offset: 1472)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !499, file: !75, line: 411, baseType: !506, size: 32, offset: 1504)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !499, file: !75, line: 414, baseType: !515, size: 64, offset: 1536)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !499, file: !75, line: 417, baseType: !550, size: 32, offset: 1600)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !13, line: 61, baseType: !12)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !499, file: !75, line: 420, baseType: !552, size: 32, offset: 1632)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !75, line: 61, baseType: !344)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !499, file: !75, line: 423, baseType: !554, size: 32, offset: 1664)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !371, line: 59, baseType: !370)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !499, file: !75, line: 426, baseType: !556, size: 64, offset: 1728)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !557, line: 77, baseType: !558)
!557 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !559, line: 193, baseType: !560)
!559 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!560 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !499, file: !75, line: 429, baseType: !506, size: 32, offset: 1792)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !499, file: !75, line: 430, baseType: !506, size: 32, offset: 1824)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !499, file: !75, line: 433, baseType: !490, size: 64, offset: 1856)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !499, file: !75, line: 434, baseType: !490, size: 64, offset: 1920)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !499, file: !75, line: 437, baseType: !566, size: 32, offset: 1984)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !6, line: 202, baseType: !403)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !499, file: !75, line: 440, baseType: !568, size: 64, offset: 2048)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !6, line: 221, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !75, line: 150, size: 105920, elements: !571)
!571 = !{!572, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !586, !587, !588, !589, !590, !604, !606, !608, !609, !610, !611, !612, !613, !614, !615, !623, !624, !625, !626, !627, !628, !630, !631, !632, !634, !636, !638, !640, !641, !642, !643, !644, !645, !646, !654, !669, !683, !684, !685, !686, !690, !694, !698, !699, !700, !701, !702, !720, !721, !723, !724, !734, !735, !737, !738, !739, !740, !741, !742, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !759, !761}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !570, file: !75, line: 153, baseType: !573, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !6, line: 209, baseType: !5)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !570, file: !75, line: 156, baseType: !550, size: 32, offset: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !570, file: !75, line: 159, baseType: !502, size: 32, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !570, file: !75, line: 162, baseType: !515, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !570, file: !75, line: 165, baseType: !504, size: 32, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !570, file: !75, line: 168, baseType: !506, size: 32, offset: 224)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !570, file: !75, line: 169, baseType: !506, size: 32, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !570, file: !75, line: 172, baseType: !515, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !570, file: !75, line: 173, baseType: !515, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !570, file: !75, line: 174, baseType: !515, size: 64, offset: 448)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !570, file: !75, line: 175, baseType: !515, size: 64, offset: 512)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !570, file: !75, line: 178, baseType: !585, size: 64, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !570, file: !75, line: 179, baseType: !535, size: 64, offset: 640)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !570, file: !75, line: 180, baseType: !535, size: 64, offset: 704)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !570, file: !75, line: 181, baseType: !535, size: 64, offset: 768)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !570, file: !75, line: 184, baseType: !532, size: 64, offset: 832)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !570, file: !75, line: 187, baseType: !591, size: 768, offset: 896)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !75, line: 128, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !75, line: 121, size: 768, elements: !593)
!593 = !{!594, !601, !602, !603}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !592, file: !75, line: 124, baseType: !595, size: 192)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !75, line: 101, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !75, line: 95, size: 192, elements: !597)
!597 = !{!598, !599, !600}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !596, file: !75, line: 98, baseType: !532, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !596, file: !75, line: 99, baseType: !532, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !596, file: !75, line: 100, baseType: !532, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !592, file: !75, line: 125, baseType: !595, size: 192, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !592, file: !75, line: 126, baseType: !595, size: 192, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !592, file: !75, line: 127, baseType: !595, size: 192, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !570, file: !75, line: 190, baseType: !605, size: 32, offset: 1664)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !91, line: 49, baseType: !90)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !570, file: !75, line: 193, baseType: !607, size: 64, offset: 1728)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !570, file: !75, line: 196, baseType: !524, size: 32, offset: 1792)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !570, file: !75, line: 199, baseType: !490, size: 64, offset: 1856)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !570, file: !75, line: 200, baseType: !490, size: 64, offset: 1920)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !570, file: !75, line: 201, baseType: !490, size: 64, offset: 1984)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !570, file: !75, line: 204, baseType: !556, size: 64, offset: 2048)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !570, file: !75, line: 207, baseType: !532, size: 64, offset: 2112)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !570, file: !75, line: 208, baseType: !532, size: 64, offset: 2176)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !570, file: !75, line: 211, baseType: !616, size: 256, offset: 2240)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !155, line: 130, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !155, line: 121, size: 256, elements: !618)
!618 = !{!619, !620, !621, !622}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !617, file: !155, line: 124, baseType: !515, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !617, file: !155, line: 125, baseType: !515, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !617, file: !155, line: 128, baseType: !556, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !617, file: !155, line: 129, baseType: !556, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !570, file: !75, line: 212, baseType: !616, size: 256, offset: 2496)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !570, file: !75, line: 213, baseType: !616, size: 256, offset: 2752)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !570, file: !75, line: 216, baseType: !532, size: 64, offset: 3008)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !570, file: !75, line: 217, baseType: !532, size: 64, offset: 3072)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !570, file: !75, line: 218, baseType: !532, size: 64, offset: 3136)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !570, file: !75, line: 221, baseType: !629, size: 32, offset: 3200)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !104, line: 66, baseType: !103)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !570, file: !75, line: 224, baseType: !520, size: 32, offset: 3232)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !570, file: !75, line: 227, baseType: !522, size: 32, offset: 3264)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !570, file: !75, line: 230, baseType: !633, size: 32, offset: 3296)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !155, line: 91, baseType: !154)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !570, file: !75, line: 233, baseType: !635, size: 32, offset: 3328)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !170, line: 99, baseType: !169)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !570, file: !75, line: 236, baseType: !637, size: 32, offset: 3360)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !241, line: 32, baseType: !240)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !570, file: !75, line: 239, baseType: !639, size: 64, offset: 3392)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !570, file: !75, line: 242, baseType: !515, size: 64, offset: 3456)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !570, file: !75, line: 243, baseType: !515, size: 64, offset: 3520)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !570, file: !75, line: 246, baseType: !556, size: 64, offset: 3584)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !570, file: !75, line: 249, baseType: !515, size: 64, offset: 3648)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !570, file: !75, line: 250, baseType: !515, size: 64, offset: 3712)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !570, file: !75, line: 253, baseType: !556, size: 64, offset: 3776)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !570, file: !75, line: 256, baseType: !647, size: 192, offset: 3840)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !648, line: 68, baseType: !649)
!648 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !648, line: 62, size: 192, elements: !650)
!650 = !{!651, !652, !653}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !649, file: !648, line: 65, baseType: !532, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !649, file: !648, line: 66, baseType: !532, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !649, file: !648, line: 67, baseType: !532, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !570, file: !75, line: 259, baseType: !655, size: 512, offset: 4032)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !249, line: 51, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !249, line: 40, size: 512, elements: !657)
!657 = !{!658, !665, !666, !668}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !656, file: !249, line: 43, baseType: !659, size: 192)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !249, line: 38, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !249, line: 32, size: 192, elements: !661)
!661 = !{!662, !663, !664}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !660, file: !249, line: 35, baseType: !532, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !660, file: !249, line: 36, baseType: !532, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !660, file: !249, line: 37, baseType: !532, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !656, file: !249, line: 44, baseType: !659, size: 192, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !656, file: !249, line: 47, baseType: !667, size: 32, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !249, line: 30, baseType: !248)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !656, file: !249, line: 50, baseType: !515, size: 64, offset: 448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !570, file: !75, line: 262, baseType: !670, size: 64, offset: 4544)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !671, line: 26, baseType: !672)
!671 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!506, !675, !677, !680, !607}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !6, line: 150, baseType: !679)
!679 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !6, line: 151, baseType: !682)
!682 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !570, file: !75, line: 265, baseType: !607, size: 64, offset: 4608)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !570, file: !75, line: 266, baseType: !607, size: 64, offset: 4672)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !570, file: !75, line: 267, baseType: !607, size: 64, offset: 4736)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !570, file: !75, line: 270, baseType: !687, size: 64, offset: 4800)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !50, line: 52, baseType: !689)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !50, line: 51, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !570, file: !75, line: 273, baseType: !691, size: 64, offset: 4864)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !6, line: 217, baseType: !693)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !6, line: 217, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !570, file: !75, line: 276, baseType: !695, size: 32768, offset: 4928)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 32768, elements: !696)
!696 = !{!697}
!697 = !DISubrange(count: 4096)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !570, file: !75, line: 277, baseType: !695, size: 32768, offset: 37696)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !570, file: !75, line: 278, baseType: !695, size: 32768, offset: 70464)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !570, file: !75, line: 281, baseType: !515, size: 64, offset: 103232)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !570, file: !75, line: 282, baseType: !515, size: 64, offset: 103296)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !570, file: !75, line: 285, baseType: !703, size: 448, offset: 103360)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !6, line: 219, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !255, line: 102, size: 448, elements: !705)
!705 = !{!706, !708, !710, !711, !712, !713, !714, !719}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !704, file: !255, line: 105, baseType: !707, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !255, line: 100, baseType: !254)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !704, file: !255, line: 108, baseType: !709, size: 32, offset: 32)
!709 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !704, file: !255, line: 111, baseType: !490, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !704, file: !255, line: 112, baseType: !490, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !704, file: !255, line: 115, baseType: !607, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !704, file: !255, line: 118, baseType: !506, size: 32, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !704, file: !255, line: 121, baseType: !715, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !717, line: 26, baseType: !718)
!717 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !717, line: 25, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !704, file: !255, line: 124, baseType: !515, size: 64, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !570, file: !75, line: 288, baseType: !506, size: 32, offset: 103808)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !570, file: !75, line: 291, baseType: !722, size: 64, offset: 103872)
!722 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !556)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !570, file: !75, line: 294, baseType: !715, size: 64, offset: 103936)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !570, file: !75, line: 297, baseType: !725, size: 256, offset: 104000)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !91, line: 40, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !91, line: 27, size: 256, elements: !727)
!727 = !{!728, !729, !730, !733}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !726, file: !91, line: 30, baseType: !490, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !726, file: !91, line: 33, baseType: !515, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !726, file: !91, line: 36, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !726, file: !91, line: 39, baseType: !515, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !570, file: !75, line: 298, baseType: !725, size: 256, offset: 104256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !570, file: !75, line: 299, baseType: !736, size: 64, offset: 104512)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !570, file: !75, line: 302, baseType: !515, size: 64, offset: 104576)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !570, file: !75, line: 305, baseType: !515, size: 64, offset: 104640)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !570, file: !75, line: 308, baseType: !639, size: 64, offset: 104704)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !570, file: !75, line: 309, baseType: !639, size: 64, offset: 104768)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !570, file: !75, line: 310, baseType: !639, size: 64, offset: 104832)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !570, file: !75, line: 313, baseType: !743, size: 32, offset: 104896)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !328, line: 47, baseType: !327)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !570, file: !75, line: 316, baseType: !506, size: 32, offset: 104928)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !570, file: !75, line: 319, baseType: !535, size: 64, offset: 104960)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !570, file: !75, line: 322, baseType: !639, size: 64, offset: 105024)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !570, file: !75, line: 325, baseType: !616, size: 256, offset: 105088)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !570, file: !75, line: 328, baseType: !607, size: 64, offset: 105344)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !570, file: !75, line: 329, baseType: !607, size: 64, offset: 105408)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !570, file: !75, line: 332, baseType: !552, size: 32, offset: 105472)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !570, file: !75, line: 335, baseType: !506, size: 32, offset: 105504)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !570, file: !75, line: 338, baseType: !681, size: 64, offset: 105536)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !570, file: !75, line: 341, baseType: !506, size: 32, offset: 105600)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !570, file: !75, line: 344, baseType: !515, size: 64, offset: 105664)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !570, file: !75, line: 347, baseType: !756, size: 64, offset: 105728)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !757, line: 7, baseType: !758)
!757 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !559, line: 160, baseType: !560)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !570, file: !75, line: 350, baseType: !760, size: 32, offset: 105792)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !328, line: 79, baseType: !358)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !570, file: !75, line: 353, baseType: !515, size: 64, offset: 105856)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !499, file: !75, line: 443, baseType: !607, size: 64, offset: 2112)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !499, file: !75, line: 446, baseType: !670, size: 64, offset: 2176)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !499, file: !75, line: 449, baseType: !607, size: 64, offset: 2240)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !499, file: !75, line: 450, baseType: !607, size: 64, offset: 2304)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !499, file: !75, line: 453, baseType: !767, size: 64, offset: 2368)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !768, line: 26, baseType: !769)
!768 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!515, !772, !774, !776}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !499, file: !75, line: 456, baseType: !778, size: 64, offset: 2432)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !780, line: 7, baseType: !781)
!780 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !782, line: 49, size: 1728, elements: !783)
!782 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !799, !801, !802, !803, !805, !806, !808, !812, !815, !817, !820, !823, !824, !825, !826, !827}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !781, file: !782, line: 51, baseType: !709, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !781, file: !782, line: 54, baseType: !490, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !781, file: !782, line: 55, baseType: !490, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !781, file: !782, line: 56, baseType: !490, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !781, file: !782, line: 57, baseType: !490, size: 64, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !781, file: !782, line: 58, baseType: !490, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !781, file: !782, line: 59, baseType: !490, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !781, file: !782, line: 60, baseType: !490, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !781, file: !782, line: 61, baseType: !490, size: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !781, file: !782, line: 64, baseType: !490, size: 64, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !781, file: !782, line: 65, baseType: !490, size: 64, offset: 640)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !781, file: !782, line: 66, baseType: !490, size: 64, offset: 704)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !781, file: !782, line: 68, baseType: !797, size: 64, offset: 768)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !782, line: 36, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !781, file: !782, line: 70, baseType: !800, size: 64, offset: 832)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !781, file: !782, line: 72, baseType: !709, size: 32, offset: 896)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !781, file: !782, line: 73, baseType: !709, size: 32, offset: 928)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !781, file: !782, line: 74, baseType: !804, size: 64, offset: 960)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !559, line: 152, baseType: !560)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !781, file: !782, line: 77, baseType: !540, size: 16, offset: 1024)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !781, file: !782, line: 78, baseType: !807, size: 8, offset: 1040)
!807 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !781, file: !782, line: 79, baseType: !809, size: 8, offset: 1048)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 8, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 1)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !781, file: !782, line: 81, baseType: !813, size: 64, offset: 1088)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !782, line: 43, baseType: null)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !781, file: !782, line: 89, baseType: !816, size: 64, offset: 1152)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !559, line: 153, baseType: !560)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !781, file: !782, line: 91, baseType: !818, size: 64, offset: 1216)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !782, line: 37, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !781, file: !782, line: 92, baseType: !821, size: 64, offset: 1280)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !782, line: 38, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !781, file: !782, line: 93, baseType: !800, size: 64, offset: 1344)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !781, file: !782, line: 94, baseType: !607, size: 64, offset: 1408)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !781, file: !782, line: 95, baseType: !515, size: 64, offset: 1472)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !781, file: !782, line: 96, baseType: !709, size: 32, offset: 1536)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !781, file: !782, line: 98, baseType: !828, size: 160, offset: 1568)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 160, elements: !829)
!829 = !{!830}
!830 = !DISubrange(count: 20)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !499, file: !75, line: 459, baseType: !607, size: 64, offset: 2496)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !499, file: !75, line: 462, baseType: !515, size: 64, offset: 2560)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !499, file: !75, line: 465, baseType: !695, size: 32768, offset: 2624)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !499, file: !75, line: 466, baseType: !695, size: 32768, offset: 35392)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !499, file: !75, line: 467, baseType: !695, size: 32768, offset: 68160)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !499, file: !75, line: 468, baseType: !695, size: 32768, offset: 100928)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !499, file: !75, line: 471, baseType: !506, size: 32, offset: 133696)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !499, file: !75, line: 474, baseType: !490, size: 64, offset: 133760)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !499, file: !75, line: 477, baseType: !515, size: 64, offset: 133824)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !499, file: !75, line: 478, baseType: !515, size: 64, offset: 133888)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !499, file: !75, line: 481, baseType: !535, size: 64, offset: 133952)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !499, file: !75, line: 484, baseType: !515, size: 64, offset: 134016)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !499, file: !75, line: 487, baseType: !844, size: 32, offset: 134080)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !426, line: 47, baseType: !425)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !499, file: !75, line: 490, baseType: !535, size: 64, offset: 134112)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !499, file: !75, line: 493, baseType: !607, size: 64, offset: 134208)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !499, file: !75, line: 496, baseType: !506, size: 32, offset: 134272)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "decoder", scope: !487, file: !447, line: 64, baseType: !849, size: 64, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodeImageHandler", file: !447, line: 43, baseType: !851)
!851 = !DISubroutineType(types: !852)
!852 = !{!568, !853, !855}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !487, file: !447, line: 67, baseType: !857, size: 64, offset: 448)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodeImageHandler", file: !447, line: 46, baseType: !859)
!859 = !DISubroutineType(types: !860)
!860 = !{!506, !853, !568}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !487, file: !447, line: 70, baseType: !862, size: 64, offset: 512)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "IsImageFormatHandler", file: !447, line: 49, baseType: !864)
!864 = !DISubroutineType(types: !865)
!865 = !{!506, !866, !776}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !487, file: !447, line: 73, baseType: !607, size: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !487, file: !447, line: 76, baseType: !506, size: 32, offset: 640)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !487, file: !447, line: 77, baseType: !506, size: 32, offset: 672)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "endian_support", scope: !487, file: !447, line: 78, baseType: !506, size: 32, offset: 704)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "blob_support", scope: !487, file: !447, line: 79, baseType: !506, size: 32, offset: 736)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "seekable_stream", scope: !487, file: !447, line: 80, baseType: !506, size: 32, offset: 768)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "format_type", scope: !487, file: !447, line: 83, baseType: !875, size: 32, offset: 800)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickFormatType", file: !447, line: 33, baseType: !446)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "thread_support", scope: !487, file: !447, line: 86, baseType: !877, size: 32, offset: 832)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !6, line: 147, baseType: !7)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !487, file: !447, line: 89, baseType: !506, size: 32, offset: 864)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !487, file: !447, line: 92, baseType: !880, size: 64, offset: 896)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !487, file: !447, line: 93, baseType: !880, size: 64, offset: 960)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !487, file: !447, line: 96, baseType: !515, size: 64, offset: 1024)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !487, file: !447, line: 99, baseType: !490, size: 64, offset: 1088)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !487, file: !447, line: 102, baseType: !715, size: 64, offset: 1152)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "SplayTreeInfo", file: !890, line: 26, baseType: !891)
!890 = !DIFile(filename: "apps/538.imagick_r/src/magick/splay-tree.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9016e3627c0f26bd31d286f50189c16b")
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SplayTreeInfo", file: !890, line: 25, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!607, !607}
!896 = !{!897, !0, !909, !911, !914}
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(name: "magick_precision", scope: !899, file: !900, line: 1538, type: !709, isLocal: true, isDefinition: true)
!899 = distinct !DISubprogram(name: "SetMagickPrecision", scope: !900, file: !900, line: 1533, type: !901, scopeLine: 1534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !904)
!900 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cf7a5f62d1772e878a92411a056c7712")
!901 = !DISubroutineType(types: !902)
!902 = !{!709, !903}
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!904 = !{!905, !906}
!905 = !DILocalVariable(name: "precision", arg: 1, scope: !899, file: !900, line: 1533, type: !903)
!906 = !DILocalVariable(name: "limit", scope: !907, file: !900, line: 1546, type: !490)
!907 = distinct !DILexicalBlock(scope: !908, file: !900, line: 1544, column: 5)
!908 = distinct !DILexicalBlock(scope: !899, file: !900, line: 1543, column: 7)
!909 = !DIGlobalVariableExpression(var: !910, expr: !DIExpression())
!910 = distinct !DIGlobalVariable(name: "magick_list", scope: !2, file: !900, line: 115, type: !888, isLocal: true, isDefinition: true)
!911 = !DIGlobalVariableExpression(var: !912, expr: !DIExpression())
!912 = distinct !DIGlobalVariable(name: "instantiate_magickcore", scope: !2, file: !900, line: 118, type: !913, isLocal: true, isDefinition: true)
!913 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !506)
!914 = !DIGlobalVariableExpression(var: !915, expr: !DIExpression())
!915 = distinct !DIGlobalVariable(name: "active_mutex", scope: !2, file: !916, line: 40, type: !506, isLocal: true, isDefinition: true)
!916 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "25c836cd0948f430546708db695ca37c")
!917 = !{i32 7, !"Dwarf Version", i32 5}
!918 = !{i32 2, !"Debug Info Version", i32 3}
!919 = !{i32 1, !"wchar_size", i32 4}
!920 = !{i32 7, !"PIC Level", i32 2}
!921 = !{i32 7, !"PIE Level", i32 2}
!922 = !{i32 7, !"uwtable", i32 2}
!923 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!924 = distinct !DISubprogram(name: "GetImageDecoder", scope: !900, file: !900, line: 148, type: !925, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !927)
!925 = !DISubroutineType(types: !926)
!926 = !{!849, !484}
!927 = !{!928}
!928 = !DILocalVariable(name: "magick_info", arg: 1, scope: !924, file: !900, line: 148, type: !484)
!929 = !DILocation(line: 0, scope: !924)
!930 = !DILocation(line: 150, column: 10, scope: !924)
!931 = !DILocation(line: 153, column: 23, scope: !924)
!932 = !{!933, !934, i64 48}
!933 = !{!"_MagickInfo", !934, i64 0, !934, i64 8, !934, i64 16, !934, i64 24, !934, i64 32, !934, i64 40, !934, i64 48, !934, i64 56, !934, i64 64, !934, i64 72, !935, i64 80, !935, i64 84, !935, i64 88, !935, i64 92, !935, i64 96, !935, i64 100, !937, i64 104, !935, i64 108, !934, i64 112, !934, i64 120, !938, i64 128, !934, i64 136, !934, i64 144}
!934 = !{!"any pointer", !935, i64 0}
!935 = !{!"omnipotent char", !936, i64 0}
!936 = !{!"Simple C/C++ TBAA"}
!937 = !{!"int", !935, i64 0}
!938 = !{!"long", !935, i64 0}
!939 = !DILocation(line: 153, column: 3, scope: !924)
!940 = !DISubprogram(name: "LogMagickEvent", scope: !453, file: !453, line: 83, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!941 = !DISubroutineType(types: !942)
!942 = !{!506, !943, !675, !675, !776, !675, null}
!943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !453, line: 58, baseType: !452)
!945 = !{}
!946 = distinct !DISubprogram(name: "GetImageEncoder", scope: !900, file: !900, line: 178, type: !947, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !949)
!947 = !DISubroutineType(types: !948)
!948 = !{!857, !484}
!949 = !{!950}
!950 = !DILocalVariable(name: "magick_info", arg: 1, scope: !946, file: !900, line: 178, type: !484)
!951 = !DILocation(line: 0, scope: !946)
!952 = !DILocation(line: 180, column: 10, scope: !946)
!953 = !DILocation(line: 183, column: 23, scope: !946)
!954 = !{!933, !934, i64 56}
!955 = !DILocation(line: 183, column: 3, scope: !946)
!956 = distinct !DISubprogram(name: "GetImageMagick", scope: !900, file: !900, line: 215, type: !957, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !959)
!957 = !DISubroutineType(types: !958)
!958 = !{!506, !866, !776, !490}
!959 = !{!960, !961, !962, !963, !964, !965}
!960 = !DILocalVariable(name: "magick", arg: 1, scope: !956, file: !900, line: 215, type: !866)
!961 = !DILocalVariable(name: "length", arg: 2, scope: !956, file: !900, line: 216, type: !776)
!962 = !DILocalVariable(name: "format", arg: 3, scope: !956, file: !900, line: 216, type: !490)
!963 = !DILocalVariable(name: "exception", scope: !956, file: !900, line: 219, type: !855)
!964 = !DILocalVariable(name: "status", scope: !956, file: !900, line: 222, type: !506)
!965 = !DILocalVariable(name: "p", scope: !956, file: !900, line: 225, type: !484)
!966 = !DILocation(line: 0, scope: !956)
!967 = !DILocation(line: 227, column: 10, scope: !956)
!968 = !DILocation(line: 229, column: 13, scope: !956)
!969 = !DILocation(line: 230, column: 5, scope: !956)
!970 = !DILocation(line: 231, column: 13, scope: !956)
!971 = !DILocation(line: 232, column: 9, scope: !972)
!972 = distinct !DILexicalBlock(scope: !956, file: !900, line: 232, column: 7)
!973 = !DILocation(line: 232, column: 7, scope: !956)
!974 = !DILocation(line: 235, column: 21, scope: !956)
!975 = !{!934, !934, i64 0}
!976 = !DILocation(line: 235, column: 3, scope: !956)
!977 = !DILocation(line: 236, column: 26, scope: !956)
!978 = !DILocation(line: 236, column: 3, scope: !956)
!979 = !DILocation(line: 237, column: 50, scope: !956)
!980 = !DILocation(line: 237, column: 26, scope: !956)
!981 = !DILocation(line: 238, column: 12, scope: !956)
!982 = !DILocation(line: 238, column: 3, scope: !956)
!983 = !DILocation(line: 240, column: 13, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !900, line: 240, column: 9)
!985 = distinct !DILexicalBlock(scope: !956, file: !900, line: 239, column: 3)
!986 = !{!933, !934, i64 64}
!987 = !DILocation(line: 240, column: 20, scope: !984)
!988 = !DILocation(line: 240, column: 54, scope: !984)
!989 = !DILocation(line: 241, column: 10, scope: !984)
!990 = !DILocation(line: 241, column: 35, scope: !984)
!991 = !DILocation(line: 240, column: 9, scope: !985)
!992 = !DILocation(line: 244, column: 43, scope: !993)
!993 = distinct !DILexicalBlock(scope: !984, file: !900, line: 242, column: 7)
!994 = !{!933, !934, i64 0}
!995 = !DILocation(line: 244, column: 16, scope: !993)
!996 = !DILocation(line: 245, column: 9, scope: !993)
!997 = !DILocation(line: 247, column: 52, scope: !985)
!998 = !DILocation(line: 247, column: 28, scope: !985)
!999 = distinct !{!999, !982, !1000, !1001, !1002}
!1000 = !DILocation(line: 248, column: 3, scope: !956)
!1001 = !{!"llvm.loop.mustprogress"}
!1002 = !{!"llvm.loop.unroll.disable"}
!1003 = !DILocation(line: 249, column: 23, scope: !956)
!1004 = !DILocation(line: 249, column: 3, scope: !956)
!1005 = !DILocation(line: 250, column: 3, scope: !956)
!1006 = !DILocation(line: 251, column: 1, scope: !956)
!1007 = !DISubprogram(name: "AcquireExceptionInfo", scope: !255, file: !255, line: 146, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!855}
!1010 = distinct !DISubprogram(name: "GetMagickInfo", scope: !900, file: !900, line: 402, type: !1011, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1013)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!484, !675, !855}
!1013 = !{!1014, !1015, !1016}
!1014 = !DILocalVariable(name: "name", arg: 1, scope: !1010, file: !900, line: 402, type: !675)
!1015 = !DILocalVariable(name: "exception", arg: 2, scope: !1010, file: !900, line: 403, type: !855)
!1016 = !DILocalVariable(name: "p", scope: !1010, file: !900, line: 406, type: !484)
!1017 = !DILocation(line: 0, scope: !1010)
!1018 = !DILocalVariable(name: "exception", arg: 1, scope: !1019, file: !900, line: 833, type: !855)
!1019 = distinct !DISubprogram(name: "IsMagickTreeInstantiated", scope: !900, file: !900, line: 833, type: !1020, scopeLine: 834, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1022)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!506, !855}
!1022 = !{!1018, !1023, !1028, !1029, !1032, !1033, !1036, !1037, !1040}
!1023 = !DILocalVariable(name: "status", scope: !1024, file: !900, line: 844, type: !506)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !900, line: 842, column: 9)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !900, line: 841, column: 11)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !900, line: 837, column: 5)
!1027 = distinct !DILexicalBlock(scope: !1019, file: !900, line: 836, column: 7)
!1028 = !DILocalVariable(name: "magick_info", scope: !1024, file: !900, line: 847, type: !886)
!1029 = !DILocalVariable(name: "message", scope: !1030, file: !900, line: 852, type: !490)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !900, line: 852, column: 13)
!1031 = distinct !DILexicalBlock(scope: !1024, file: !900, line: 851, column: 15)
!1032 = !DILocalVariable(name: "exception", scope: !1030, file: !900, line: 852, type: !703)
!1033 = !DILocalVariable(name: "message", scope: !1034, file: !900, line: 858, type: !490)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !900, line: 858, column: 13)
!1035 = distinct !DILexicalBlock(scope: !1024, file: !900, line: 857, column: 15)
!1036 = !DILocalVariable(name: "exception", scope: !1034, file: !900, line: 858, type: !703)
!1037 = !DILocalVariable(name: "message", scope: !1038, file: !900, line: 864, type: !490)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !900, line: 864, column: 13)
!1039 = distinct !DILexicalBlock(scope: !1024, file: !900, line: 863, column: 15)
!1040 = !DILocalVariable(name: "exception", scope: !1038, file: !900, line: 864, type: !703)
!1041 = !DILocation(line: 0, scope: !1019, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 409, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1010, file: !900, line: 409, column: 7)
!1044 = !DILocation(line: 836, column: 7, scope: !1027, inlinedAt: !1042)
!1045 = !DILocation(line: 836, column: 19, scope: !1027, inlinedAt: !1042)
!1046 = !DILocation(line: 836, column: 7, scope: !1019, inlinedAt: !1042)
!1047 = !DILocation(line: 838, column: 11, scope: !1048, inlinedAt: !1042)
!1048 = distinct !DILexicalBlock(scope: !1026, file: !900, line: 838, column: 11)
!1049 = !DILocation(line: 838, column: 28, scope: !1048, inlinedAt: !1042)
!1050 = !DILocation(line: 838, column: 11, scope: !1026, inlinedAt: !1042)
!1051 = !DILocation(line: 839, column: 9, scope: !1048, inlinedAt: !1042)
!1052 = !DILocation(line: 840, column: 25, scope: !1026, inlinedAt: !1042)
!1053 = !DILocation(line: 840, column: 7, scope: !1026, inlinedAt: !1042)
!1054 = !DILocation(line: 841, column: 11, scope: !1025, inlinedAt: !1042)
!1055 = !DILocation(line: 841, column: 23, scope: !1025, inlinedAt: !1042)
!1056 = !DILocation(line: 841, column: 11, scope: !1026, inlinedAt: !1042)
!1057 = !DILocation(line: 849, column: 23, scope: !1024, inlinedAt: !1042)
!1058 = !DILocation(line: 849, column: 22, scope: !1024, inlinedAt: !1042)
!1059 = !DILocation(line: 851, column: 27, scope: !1031, inlinedAt: !1042)
!1060 = !DILocation(line: 851, column: 15, scope: !1024, inlinedAt: !1042)
!1061 = !DILocation(line: 852, column: 13, scope: !1030, inlinedAt: !1042)
!1062 = !{!937, !937, i64 0}
!1063 = !DILocation(line: 0, scope: !1030, inlinedAt: !1042)
!1064 = !DILocation(line: 854, column: 23, scope: !1024, inlinedAt: !1042)
!1065 = !DILocation(line: 0, scope: !1024, inlinedAt: !1042)
!1066 = !DILocation(line: 855, column: 24, scope: !1024, inlinedAt: !1042)
!1067 = !DILocation(line: 855, column: 31, scope: !1024, inlinedAt: !1042)
!1068 = !{!933, !935, i64 108}
!1069 = !DILocation(line: 856, column: 38, scope: !1024, inlinedAt: !1042)
!1070 = !DILocation(line: 856, column: 63, scope: !1024, inlinedAt: !1042)
!1071 = !DILocation(line: 856, column: 18, scope: !1024, inlinedAt: !1042)
!1072 = !DILocation(line: 857, column: 22, scope: !1035, inlinedAt: !1042)
!1073 = !DILocation(line: 857, column: 15, scope: !1024, inlinedAt: !1042)
!1074 = !DILocation(line: 858, column: 13, scope: !1034, inlinedAt: !1042)
!1075 = !DILocation(line: 0, scope: !1034, inlinedAt: !1042)
!1076 = !DILocation(line: 860, column: 23, scope: !1024, inlinedAt: !1042)
!1077 = !DILocation(line: 861, column: 24, scope: !1024, inlinedAt: !1042)
!1078 = !DILocation(line: 861, column: 31, scope: !1024, inlinedAt: !1042)
!1079 = !DILocation(line: 862, column: 38, scope: !1024, inlinedAt: !1042)
!1080 = !DILocation(line: 862, column: 63, scope: !1024, inlinedAt: !1042)
!1081 = !DILocation(line: 862, column: 18, scope: !1024, inlinedAt: !1042)
!1082 = !DILocation(line: 863, column: 22, scope: !1039, inlinedAt: !1042)
!1083 = !DILocation(line: 863, column: 15, scope: !1024, inlinedAt: !1042)
!1084 = !DILocation(line: 864, column: 13, scope: !1038, inlinedAt: !1042)
!1085 = !DILocation(line: 0, scope: !1038, inlinedAt: !1042)
!1086 = !DILocation(line: 870, column: 11, scope: !1024, inlinedAt: !1042)
!1087 = !DILocation(line: 872, column: 9, scope: !1024, inlinedAt: !1042)
!1088 = !DILocation(line: 873, column: 27, scope: !1026, inlinedAt: !1042)
!1089 = !DILocation(line: 873, column: 7, scope: !1026, inlinedAt: !1042)
!1090 = !DILocation(line: 875, column: 10, scope: !1019, inlinedAt: !1042)
!1091 = !DILocation(line: 875, column: 22, scope: !1019, inlinedAt: !1042)
!1092 = !DILocation(line: 409, column: 7, scope: !1010)
!1093 = !DILocation(line: 418, column: 21, scope: !1010)
!1094 = !DILocation(line: 418, column: 3, scope: !1010)
!1095 = !DILocation(line: 419, column: 26, scope: !1010)
!1096 = !DILocation(line: 419, column: 3, scope: !1010)
!1097 = !DILocation(line: 420, column: 50, scope: !1010)
!1098 = !DILocation(line: 420, column: 26, scope: !1010)
!1099 = !DILocation(line: 421, column: 13, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1010, file: !900, line: 421, column: 7)
!1101 = !DILocation(line: 421, column: 37, scope: !1100)
!1102 = !DILocation(line: 421, column: 41, scope: !1100)
!1103 = !DILocation(line: 421, column: 65, scope: !1100)
!1104 = !DILocation(line: 421, column: 7, scope: !1010)
!1105 = !DILocation(line: 428, column: 12, scope: !1010)
!1106 = !DILocation(line: 428, column: 3, scope: !1010)
!1107 = !DILocation(line: 423, column: 30, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1100, file: !900, line: 422, column: 5)
!1109 = !DILocation(line: 423, column: 7, scope: !1108)
!1110 = !DILocation(line: 424, column: 54, scope: !1108)
!1111 = !DILocation(line: 424, column: 30, scope: !1108)
!1112 = !DILocation(line: 426, column: 7, scope: !1108)
!1113 = !DILocation(line: 430, column: 26, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !900, line: 430, column: 9)
!1115 = distinct !DILexicalBlock(scope: !1010, file: !900, line: 429, column: 3)
!1116 = !DILocation(line: 430, column: 9, scope: !1114)
!1117 = !DILocation(line: 430, column: 37, scope: !1114)
!1118 = !DILocation(line: 430, column: 9, scope: !1115)
!1119 = !DILocation(line: 432, column: 52, scope: !1115)
!1120 = !DILocation(line: 432, column: 28, scope: !1115)
!1121 = distinct !{!1121, !1106, !1122, !1001, !1002}
!1122 = !DILocation(line: 433, column: 3, scope: !1010)
!1123 = !DILocation(line: 451, column: 1, scope: !1010)
!1124 = !DISubprogram(name: "DestroyExceptionInfo", scope: !255, file: !255, line: 148, type: !1125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!855, !855}
!1127 = !DISubprogram(name: "LockSemaphoreInfo", scope: !717, file: !717, line: 37, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !715}
!1130 = !DISubprogram(name: "ResetSplayTreeIterator", scope: !890, file: !890, line: 55, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !888}
!1133 = !DISubprogram(name: "GetNextValueInSplayTree", scope: !890, file: !890, line: 35, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!774, !888}
!1136 = !DISubprogram(name: "CopyMagickString", scope: !1137, file: !1137, line: 78, type: !1138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1137 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!515, !490, !675, !776}
!1140 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !717, file: !717, line: 39, type: !1128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1141 = distinct !DISubprogram(name: "GetMagickAdjoin", scope: !900, file: !900, line: 275, type: !1142, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1144)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!506, !484}
!1144 = !{!1145}
!1145 = !DILocalVariable(name: "magick_info", arg: 1, scope: !1141, file: !900, line: 275, type: !484)
!1146 = !DILocation(line: 0, scope: !1141)
!1147 = !DILocation(line: 277, column: 10, scope: !1141)
!1148 = !DILocation(line: 280, column: 23, scope: !1141)
!1149 = !{!933, !935, i64 80}
!1150 = !DILocation(line: 280, column: 3, scope: !1141)
!1151 = distinct !DISubprogram(name: "GetMagickBlobSupport", scope: !900, file: !900, line: 305, type: !1142, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1152)
!1152 = !{!1153}
!1153 = !DILocalVariable(name: "magick_info", arg: 1, scope: !1151, file: !900, line: 306, type: !484)
!1154 = !DILocation(line: 0, scope: !1151)
!1155 = !DILocation(line: 308, column: 10, scope: !1151)
!1156 = !DILocation(line: 311, column: 23, scope: !1151)
!1157 = !{!933, !935, i64 92}
!1158 = !DILocation(line: 311, column: 3, scope: !1151)
!1159 = distinct !DISubprogram(name: "GetMagickDescription", scope: !900, file: !900, line: 336, type: !1160, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1162)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!675, !484}
!1162 = !{!1163}
!1163 = !DILocalVariable(name: "magick_info", arg: 1, scope: !1159, file: !900, line: 336, type: !484)
!1164 = !DILocation(line: 0, scope: !1159)
!1165 = !DILocation(line: 338, column: 10, scope: !1159)
!1166 = !DILocation(line: 341, column: 23, scope: !1159)
!1167 = !{!933, !934, i64 8}
!1168 = !DILocation(line: 341, column: 3, scope: !1159)
!1169 = distinct !DISubprogram(name: "GetMagickEndianSupport", scope: !900, file: !900, line: 367, type: !1142, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1170)
!1170 = !{!1171}
!1171 = !DILocalVariable(name: "magick_info", arg: 1, scope: !1169, file: !900, line: 368, type: !484)
!1172 = !DILocation(line: 0, scope: !1169)
!1173 = !DILocation(line: 370, column: 10, scope: !1169)
!1174 = !DILocation(line: 373, column: 23, scope: !1169)
!1175 = !{!933, !935, i64 88}
!1176 = !DILocation(line: 373, column: 3, scope: !1169)
!1177 = !DISubprogram(name: "LocaleCompare", scope: !1137, file: !1137, line: 66, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!709, !675, !675}
!1180 = distinct !DISubprogram(name: "GetMagickInfoList", scope: !900, file: !900, line: 501, type: !1181, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1184)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!885, !675, !1183, !855}
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190}
!1185 = !DILocalVariable(name: "pattern", arg: 1, scope: !1180, file: !900, line: 501, type: !675)
!1186 = !DILocalVariable(name: "number_formats", arg: 2, scope: !1180, file: !900, line: 502, type: !1183)
!1187 = !DILocalVariable(name: "exception", arg: 3, scope: !1180, file: !900, line: 502, type: !855)
!1188 = !DILocalVariable(name: "formats", scope: !1180, file: !900, line: 505, type: !885)
!1189 = !DILocalVariable(name: "p", scope: !1180, file: !900, line: 508, type: !484)
!1190 = !DILocalVariable(name: "i", scope: !1180, file: !900, line: 511, type: !556)
!1191 = !DILocation(line: 0, scope: !1180)
!1192 = !DILocation(line: 517, column: 10, scope: !1180)
!1193 = !DILocation(line: 519, column: 18, scope: !1180)
!1194 = !{!938, !938, i64 0}
!1195 = !DILocation(line: 520, column: 5, scope: !1180)
!1196 = !DILocation(line: 521, column: 9, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1180, file: !900, line: 521, column: 7)
!1198 = !DILocation(line: 521, column: 7, scope: !1180)
!1199 = !DILocation(line: 524, column: 33, scope: !1180)
!1200 = !DILocation(line: 524, column: 5, scope: !1180)
!1201 = !DILocation(line: 524, column: 45, scope: !1180)
!1202 = !DILocation(line: 523, column: 33, scope: !1180)
!1203 = !DILocation(line: 525, column: 15, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1180, file: !900, line: 525, column: 7)
!1205 = !DILocation(line: 525, column: 7, scope: !1180)
!1206 = !DILocation(line: 530, column: 21, scope: !1180)
!1207 = !DILocation(line: 530, column: 3, scope: !1180)
!1208 = !DILocation(line: 531, column: 26, scope: !1180)
!1209 = !DILocation(line: 531, column: 3, scope: !1180)
!1210 = !DILocation(line: 532, column: 50, scope: !1180)
!1211 = !DILocation(line: 532, column: 26, scope: !1180)
!1212 = !DILocation(line: 533, column: 15, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !900, line: 533, column: 3)
!1214 = distinct !DILexicalBlock(scope: !1180, file: !900, line: 533, column: 3)
!1215 = !DILocation(line: 533, column: 3, scope: !1214)
!1216 = !DILocation(line: 535, column: 13, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !900, line: 535, column: 9)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !900, line: 534, column: 3)
!1219 = !DILocation(line: 535, column: 21, scope: !1217)
!1220 = !DILocation(line: 535, column: 37, scope: !1217)
!1221 = !DILocation(line: 536, column: 28, scope: !1217)
!1222 = !DILocation(line: 536, column: 10, scope: !1217)
!1223 = !DILocation(line: 536, column: 54, scope: !1217)
!1224 = !DILocation(line: 535, column: 9, scope: !1218)
!1225 = !DILocation(line: 537, column: 16, scope: !1217)
!1226 = !DILocation(line: 537, column: 7, scope: !1217)
!1227 = !DILocation(line: 537, column: 19, scope: !1217)
!1228 = !DILocation(line: 0, scope: !1214)
!1229 = !DILocation(line: 538, column: 52, scope: !1218)
!1230 = !DILocation(line: 538, column: 28, scope: !1218)
!1231 = distinct !{!1231, !1215, !1232, !1001, !1002}
!1232 = !DILocation(line: 539, column: 3, scope: !1214)
!1233 = !DILocation(line: 540, column: 23, scope: !1180)
!1234 = !DILocation(line: 540, column: 3, scope: !1180)
!1235 = !DILocation(line: 541, column: 3, scope: !1180)
!1236 = !DILocation(line: 542, column: 3, scope: !1180)
!1237 = !DILocation(line: 542, column: 13, scope: !1180)
!1238 = !DILocation(line: 543, column: 18, scope: !1180)
!1239 = !DILocation(line: 544, column: 3, scope: !1180)
!1240 = !DILocation(line: 545, column: 1, scope: !1180)
!1241 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1242, file: !1242, line: 42, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1242 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!607, !776, !776}
!1245 = !DISubprogram(name: "GetNumberOfNodesInSplayTree", scope: !890, file: !890, line: 49, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!515, !1248}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !889)
!1250 = !DISubprogram(name: "GlobExpression", scope: !1251, file: !1251, line: 36, type: !1252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1251 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!506, !675, !675, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!1255 = !DISubprogram(name: "qsort", scope: !1256, file: !1256, line: 830, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1256 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !607, !515, !515, !1259}
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1256, line: 808, baseType: !1260)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!709, !774, !774}
!1263 = distinct !DISubprogram(name: "MagickInfoCompare", scope: !900, file: !900, line: 486, type: !1261, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1264)
!1264 = !{!1265, !1266, !1267, !1268}
!1265 = !DILocalVariable(name: "x", arg: 1, scope: !1263, file: !900, line: 486, type: !774)
!1266 = !DILocalVariable(name: "y", arg: 2, scope: !1263, file: !900, line: 486, type: !774)
!1267 = !DILocalVariable(name: "p", scope: !1263, file: !900, line: 489, type: !885)
!1268 = !DILocalVariable(name: "q", scope: !1263, file: !900, line: 490, type: !885)
!1269 = !DILocation(line: 0, scope: !1263)
!1270 = !DILocation(line: 494, column: 25, scope: !1263)
!1271 = !DILocation(line: 494, column: 30, scope: !1263)
!1272 = !DILocation(line: 494, column: 36, scope: !1263)
!1273 = !DILocation(line: 494, column: 41, scope: !1263)
!1274 = !DILocation(line: 494, column: 10, scope: !1263)
!1275 = !DILocation(line: 494, column: 3, scope: !1263)
!1276 = distinct !DISubprogram(name: "GetMagickList", scope: !900, file: !900, line: 594, type: !1277, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1279)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!887, !675, !1183, !855}
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285}
!1280 = !DILocalVariable(name: "pattern", arg: 1, scope: !1276, file: !900, line: 594, type: !675)
!1281 = !DILocalVariable(name: "number_formats", arg: 2, scope: !1276, file: !900, line: 595, type: !1183)
!1282 = !DILocalVariable(name: "exception", arg: 3, scope: !1276, file: !900, line: 595, type: !855)
!1283 = !DILocalVariable(name: "formats", scope: !1276, file: !900, line: 598, type: !887)
!1284 = !DILocalVariable(name: "p", scope: !1276, file: !900, line: 601, type: !484)
!1285 = !DILocalVariable(name: "i", scope: !1276, file: !900, line: 604, type: !556)
!1286 = !DILocation(line: 0, scope: !1276)
!1287 = !DILocation(line: 610, column: 10, scope: !1276)
!1288 = !DILocation(line: 612, column: 18, scope: !1276)
!1289 = !DILocation(line: 613, column: 5, scope: !1276)
!1290 = !DILocation(line: 614, column: 9, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1276, file: !900, line: 614, column: 7)
!1292 = !DILocation(line: 614, column: 7, scope: !1276)
!1293 = !DILocation(line: 617, column: 33, scope: !1276)
!1294 = !DILocation(line: 617, column: 5, scope: !1276)
!1295 = !DILocation(line: 617, column: 45, scope: !1276)
!1296 = !DILocation(line: 616, column: 21, scope: !1276)
!1297 = !DILocation(line: 618, column: 15, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1276, file: !900, line: 618, column: 7)
!1299 = !DILocation(line: 618, column: 7, scope: !1276)
!1300 = !DILocation(line: 620, column: 21, scope: !1276)
!1301 = !DILocation(line: 620, column: 3, scope: !1276)
!1302 = !DILocation(line: 621, column: 26, scope: !1276)
!1303 = !DILocation(line: 621, column: 3, scope: !1276)
!1304 = !DILocation(line: 622, column: 50, scope: !1276)
!1305 = !DILocation(line: 622, column: 26, scope: !1276)
!1306 = !DILocation(line: 623, column: 15, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !900, line: 623, column: 3)
!1308 = distinct !DILexicalBlock(scope: !1276, file: !900, line: 623, column: 3)
!1309 = !DILocation(line: 623, column: 3, scope: !1308)
!1310 = !DILocation(line: 625, column: 13, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !900, line: 625, column: 9)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !900, line: 624, column: 3)
!1313 = !DILocation(line: 625, column: 21, scope: !1311)
!1314 = !DILocation(line: 625, column: 37, scope: !1311)
!1315 = !DILocation(line: 626, column: 28, scope: !1311)
!1316 = !DILocation(line: 626, column: 10, scope: !1311)
!1317 = !DILocation(line: 626, column: 54, scope: !1311)
!1318 = !DILocation(line: 625, column: 9, scope: !1312)
!1319 = !DILocation(line: 627, column: 38, scope: !1311)
!1320 = !DILocation(line: 627, column: 20, scope: !1311)
!1321 = !DILocation(line: 627, column: 16, scope: !1311)
!1322 = !DILocation(line: 627, column: 7, scope: !1311)
!1323 = !DILocation(line: 627, column: 19, scope: !1311)
!1324 = !DILocation(line: 0, scope: !1308)
!1325 = !DILocation(line: 628, column: 52, scope: !1312)
!1326 = !DILocation(line: 628, column: 28, scope: !1312)
!1327 = distinct !{!1327, !1309, !1328, !1001, !1002}
!1328 = !DILocation(line: 629, column: 3, scope: !1308)
!1329 = !DILocation(line: 630, column: 23, scope: !1276)
!1330 = !DILocation(line: 630, column: 3, scope: !1276)
!1331 = !DILocation(line: 631, column: 3, scope: !1276)
!1332 = !DILocation(line: 632, column: 3, scope: !1276)
!1333 = !DILocation(line: 632, column: 13, scope: !1276)
!1334 = !DILocation(line: 633, column: 18, scope: !1276)
!1335 = !DILocation(line: 634, column: 3, scope: !1276)
!1336 = !DILocation(line: 635, column: 1, scope: !1276)
!1337 = !DISubprogram(name: "ConstantString", scope: !1137, file: !1137, line: 45, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!490, !675}
!1340 = distinct !DISubprogram(name: "MagickCompare", scope: !900, file: !900, line: 579, type: !1261, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1341)
!1341 = !{!1342, !1343, !1344, !1345}
!1342 = !DILocalVariable(name: "x", arg: 1, scope: !1340, file: !900, line: 579, type: !774)
!1343 = !DILocalVariable(name: "y", arg: 2, scope: !1340, file: !900, line: 579, type: !774)
!1344 = !DILocalVariable(name: "p", scope: !1340, file: !900, line: 582, type: !892)
!1345 = !DILocalVariable(name: "q", scope: !1340, file: !900, line: 583, type: !892)
!1346 = !DILocation(line: 0, scope: !1340)
!1347 = !DILocation(line: 587, column: 24, scope: !1340)
!1348 = !DILocation(line: 587, column: 27, scope: !1340)
!1349 = !DILocation(line: 587, column: 10, scope: !1340)
!1350 = !DILocation(line: 587, column: 3, scope: !1340)
!1351 = distinct !DISubprogram(name: "GetMagickMimeType", scope: !900, file: !900, line: 659, type: !1160, scopeLine: 660, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1352)
!1352 = !{!1353}
!1353 = !DILocalVariable(name: "magick_info", arg: 1, scope: !1351, file: !900, line: 659, type: !484)
!1354 = !DILocation(line: 0, scope: !1351)
!1355 = !DILocation(line: 661, column: 10, scope: !1351)
!1356 = !DILocation(line: 664, column: 23, scope: !1351)
!1357 = !{!933, !934, i64 136}
!1358 = !DILocation(line: 664, column: 3, scope: !1351)
!1359 = distinct !DISubprogram(name: "GetMagickPrecision", scope: !900, file: !900, line: 686, type: !1360, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !945)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!709}
!1362 = !DILocation(line: 688, column: 10, scope: !1359)
!1363 = !DILocation(line: 0, scope: !899, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 689, column: 10, scope: !1359)
!1365 = !DILocation(line: 1540, column: 10, scope: !899, inlinedAt: !1364)
!1366 = !DILocation(line: 1541, column: 7, scope: !899, inlinedAt: !1364)
!1367 = !DILocation(line: 1543, column: 23, scope: !908, inlinedAt: !1364)
!1368 = !DILocation(line: 1551, column: 24, scope: !907, inlinedAt: !1364)
!1369 = !DILocation(line: 1552, column: 13, scope: !907, inlinedAt: !1364)
!1370 = !DILocation(line: 0, scope: !907, inlinedAt: !1364)
!1371 = !DILocation(line: 1553, column: 17, scope: !1372, inlinedAt: !1364)
!1372 = distinct !DILexicalBlock(scope: !907, file: !900, line: 1553, column: 11)
!1373 = !DILocation(line: 1553, column: 11, scope: !907, inlinedAt: !1364)
!1374 = !DILocation(line: 1554, column: 15, scope: !1372, inlinedAt: !1364)
!1375 = !DILocation(line: 1555, column: 17, scope: !1376, inlinedAt: !1364)
!1376 = distinct !DILexicalBlock(scope: !907, file: !900, line: 1555, column: 11)
!1377 = !DILocation(line: 1555, column: 11, scope: !907, inlinedAt: !1364)
!1378 = !DILocation(line: 65, column: 16, scope: !1379, inlinedAt: !1386)
!1379 = distinct !DISubprogram(name: "StringToInteger", scope: !1380, file: !1380, line: 63, type: !1381, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1384)
!1380 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!709, !1383}
!1383 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !675)
!1384 = !{!1385}
!1385 = !DILocalVariable(name: "value", arg: 1, scope: !1379, file: !1380, line: 63, type: !1383)
!1386 = distinct !DILocation(line: 1557, column: 28, scope: !1387, inlinedAt: !1364)
!1387 = distinct !DILexicalBlock(scope: !1376, file: !900, line: 1556, column: 9)
!1388 = !DILocation(line: 65, column: 10, scope: !1379, inlinedAt: !1386)
!1389 = !DILocation(line: 1557, column: 27, scope: !1387, inlinedAt: !1364)
!1390 = !DILocation(line: 1558, column: 17, scope: !1387, inlinedAt: !1364)
!1391 = !DILocation(line: 1559, column: 9, scope: !1387, inlinedAt: !1364)
!1392 = !DILocation(line: 1561, column: 10, scope: !899, inlinedAt: !1364)
!1393 = !DILocation(line: 689, column: 3, scope: !1359)
!1394 = !DILocation(line: 0, scope: !899)
!1395 = !DILocation(line: 1540, column: 10, scope: !899)
!1396 = !DILocation(line: 1541, column: 17, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !899, file: !900, line: 1541, column: 7)
!1398 = !DILocation(line: 1541, column: 7, scope: !899)
!1399 = !DILocation(line: 1542, column: 21, scope: !1397)
!1400 = !DILocation(line: 1542, column: 5, scope: !1397)
!1401 = !DILocation(line: 1543, column: 18, scope: !908)
!1402 = !DILocation(line: 1543, column: 23, scope: !908)
!1403 = !DILocation(line: 1551, column: 24, scope: !907)
!1404 = !DILocation(line: 1552, column: 13, scope: !907)
!1405 = !DILocation(line: 0, scope: !907)
!1406 = !DILocation(line: 1553, column: 17, scope: !1372)
!1407 = !DILocation(line: 1553, column: 11, scope: !907)
!1408 = !DILocation(line: 1554, column: 15, scope: !1372)
!1409 = !DILocation(line: 1555, column: 17, scope: !1376)
!1410 = !DILocation(line: 1555, column: 11, scope: !907)
!1411 = !DILocation(line: 0, scope: !1379, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 1557, column: 28, scope: !1387)
!1413 = !DILocation(line: 65, column: 16, scope: !1379, inlinedAt: !1412)
!1414 = !DILocation(line: 65, column: 10, scope: !1379, inlinedAt: !1412)
!1415 = !DILocation(line: 1557, column: 27, scope: !1387)
!1416 = !DILocation(line: 1558, column: 17, scope: !1387)
!1417 = !DILocation(line: 1559, column: 9, scope: !1387)
!1418 = !DILocation(line: 1561, column: 10, scope: !899)
!1419 = !DILocation(line: 1561, column: 3, scope: !899)
!1420 = distinct !DISubprogram(name: "GetMagickRawSupport", scope: !900, file: !900, line: 714, type: !1142, scopeLine: 716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1421)
!1421 = !{!1422}
!1422 = !DILocalVariable(name: "magick_info", arg: 1, scope: !1420, file: !900, line: 715, type: !484)
!1423 = !DILocation(line: 0, scope: !1420)
!1424 = !DILocation(line: 717, column: 10, scope: !1420)
!1425 = !DILocation(line: 720, column: 23, scope: !1420)
!1426 = !{!933, !935, i64 84}
!1427 = !DILocation(line: 720, column: 3, scope: !1420)
!1428 = distinct !DISubprogram(name: "GetMagickSeekableStream", scope: !900, file: !900, line: 746, type: !1142, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1429)
!1429 = !{!1430}
!1430 = !DILocalVariable(name: "magick_info", arg: 1, scope: !1428, file: !900, line: 747, type: !484)
!1431 = !DILocation(line: 0, scope: !1428)
!1432 = !DILocation(line: 749, column: 10, scope: !1428)
!1433 = !DILocation(line: 752, column: 23, scope: !1428)
!1434 = !{!933, !935, i64 96}
!1435 = !DILocation(line: 752, column: 3, scope: !1428)
!1436 = distinct !DISubprogram(name: "GetMagickThreadSupport", scope: !900, file: !900, line: 777, type: !1437, scopeLine: 779, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1439)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!877, !484}
!1439 = !{!1440}
!1440 = !DILocalVariable(name: "magick_info", arg: 1, scope: !1436, file: !900, line: 778, type: !484)
!1441 = !DILocation(line: 0, scope: !1436)
!1442 = !DILocation(line: 780, column: 10, scope: !1436)
!1443 = !DILocation(line: 783, column: 23, scope: !1436)
!1444 = !{!933, !937, i64 104}
!1445 = !DILocation(line: 783, column: 3, scope: !1436)
!1446 = distinct !DISubprogram(name: "IsMagickConflict", scope: !900, file: !900, line: 901, type: !1447, scopeLine: 902, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1449)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!506, !675}
!1449 = !{!1450}
!1450 = !DILocalVariable(name: "magick", arg: 1, scope: !1446, file: !900, line: 901, type: !675)
!1451 = !DILocation(line: 0, scope: !1446)
!1452 = !DILocation(line: 905, column: 3, scope: !1446)
!1453 = distinct !DISubprogram(name: "ListMagickInfo", scope: !900, file: !900, line: 943, type: !1454, scopeLine: 945, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1456)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!506, !778, !855}
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1462, !1463}
!1457 = !DILocalVariable(name: "file", arg: 1, scope: !1453, file: !900, line: 943, type: !778)
!1458 = !DILocalVariable(name: "exception", arg: 2, scope: !1453, file: !900, line: 944, type: !855)
!1459 = !DILocalVariable(name: "magick_info", scope: !1453, file: !900, line: 947, type: !885)
!1460 = !DILocalVariable(name: "i", scope: !1453, file: !900, line: 950, type: !556)
!1461 = !DILocalVariable(name: "number_formats", scope: !1453, file: !900, line: 953, type: !515)
!1462 = !DILocalVariable(name: "j", scope: !1453, file: !900, line: 956, type: !556)
!1463 = !DILocalVariable(name: "text", scope: !1464, file: !900, line: 1003, type: !887)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !900, line: 1001, column: 7)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !900, line: 1000, column: 9)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !900, line: 973, column: 3)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !900, line: 972, column: 3)
!1468 = distinct !DILexicalBlock(scope: !1453, file: !900, line: 972, column: 3)
!1469 = !DILocation(line: 0, scope: !1453)
!1470 = !DILocation(line: 952, column: 3, scope: !1453)
!1471 = !DILocation(line: 958, column: 12, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1453, file: !900, line: 958, column: 7)
!1473 = !DILocation(line: 958, column: 7, scope: !1453)
!1474 = !DILocation(line: 960, column: 15, scope: !1453)
!1475 = !DILocation(line: 961, column: 19, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1453, file: !900, line: 961, column: 7)
!1477 = !DILocation(line: 961, column: 7, scope: !1453)
!1478 = !DILocation(line: 963, column: 3, scope: !1453)
!1479 = !DILocation(line: 965, column: 10, scope: !1453)
!1480 = !DILocation(line: 969, column: 10, scope: !1453)
!1481 = !DILocation(line: 972, column: 15, scope: !1467)
!1482 = !DILocation(line: 972, column: 3, scope: !1468)
!1483 = !DILocation(line: 974, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1466, file: !900, line: 974, column: 9)
!1485 = !DILocation(line: 974, column: 25, scope: !1484)
!1486 = !DILocation(line: 974, column: 33, scope: !1484)
!1487 = !DILocation(line: 974, column: 9, scope: !1466)
!1488 = !DILocation(line: 977, column: 23, scope: !1466)
!1489 = !DILocation(line: 977, column: 28, scope: !1466)
!1490 = !DILocation(line: 977, column: 7, scope: !1466)
!1491 = !DILocation(line: 978, column: 23, scope: !1466)
!1492 = !DILocation(line: 978, column: 36, scope: !1466)
!1493 = !DILocation(line: 978, column: 7, scope: !1466)
!1494 = !DILocation(line: 976, column: 12, scope: !1466)
!1495 = !DILocation(line: 992, column: 44, scope: !1466)
!1496 = !DILocation(line: 992, column: 60, scope: !1466)
!1497 = !DILocation(line: 993, column: 23, scope: !1466)
!1498 = !DILocation(line: 993, column: 7, scope: !1466)
!1499 = !DILocation(line: 993, column: 75, scope: !1466)
!1500 = !DILocation(line: 994, column: 23, scope: !1466)
!1501 = !DILocation(line: 994, column: 30, scope: !1466)
!1502 = !DILocation(line: 993, column: 43, scope: !1466)
!1503 = !DILocation(line: 992, column: 12, scope: !1466)
!1504 = !DILocation(line: 995, column: 9, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1466, file: !900, line: 995, column: 9)
!1506 = !DILocation(line: 995, column: 25, scope: !1505)
!1507 = !DILocation(line: 995, column: 37, scope: !1505)
!1508 = !DILocation(line: 995, column: 9, scope: !1466)
!1509 = !DILocation(line: 996, column: 14, scope: !1505)
!1510 = !DILocation(line: 997, column: 9, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1466, file: !900, line: 997, column: 9)
!1512 = !DILocation(line: 996, column: 7, scope: !1505)
!1513 = !DILocation(line: 997, column: 25, scope: !1511)
!1514 = !{!933, !934, i64 16}
!1515 = !DILocation(line: 997, column: 33, scope: !1511)
!1516 = !DILocation(line: 997, column: 9, scope: !1466)
!1517 = !DILocation(line: 998, column: 14, scope: !1511)
!1518 = !DILocation(line: 998, column: 7, scope: !1511)
!1519 = !DILocation(line: 999, column: 12, scope: !1466)
!1520 = !DILocation(line: 1000, column: 9, scope: !1465)
!1521 = !DILocation(line: 1000, column: 25, scope: !1465)
!1522 = !{!933, !934, i64 24}
!1523 = !DILocation(line: 1000, column: 30, scope: !1465)
!1524 = !DILocation(line: 1000, column: 9, scope: !1466)
!1525 = !DILocation(line: 1005, column: 14, scope: !1464)
!1526 = !DILocation(line: 0, scope: !1464)
!1527 = !DILocation(line: 1006, column: 18, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1464, file: !900, line: 1006, column: 13)
!1529 = !DILocation(line: 1006, column: 13, scope: !1464)
!1530 = !DILocation(line: 1008, column: 23, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !900, line: 1008, column: 13)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !900, line: 1008, column: 13)
!1533 = distinct !DILexicalBlock(scope: !1528, file: !900, line: 1007, column: 11)
!1534 = !DILocation(line: 1008, column: 31, scope: !1531)
!1535 = !DILocation(line: 1008, column: 13, scope: !1532)
!1536 = !DILocation(line: 1010, column: 22, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1531, file: !900, line: 1009, column: 13)
!1538 = !DILocation(line: 1011, column: 37, scope: !1537)
!1539 = !DILocation(line: 1011, column: 23, scope: !1537)
!1540 = !DILocation(line: 1011, column: 22, scope: !1537)
!1541 = !DILocation(line: 1008, column: 50, scope: !1531)
!1542 = distinct !{!1542, !1535, !1543, !1001, !1002}
!1543 = !DILocation(line: 1012, column: 13, scope: !1532)
!1544 = !DILocation(line: 1013, column: 28, scope: !1533)
!1545 = !DILocation(line: 1014, column: 11, scope: !1533)
!1546 = !DILocation(line: 972, column: 44, scope: !1467)
!1547 = distinct !{!1547, !1482, !1548, !1001, !1002}
!1548 = !DILocation(line: 1016, column: 3, scope: !1468)
!1549 = !DILocation(line: 1017, column: 10, scope: !1453)
!1550 = !DILocation(line: 1018, column: 10, scope: !1453)
!1551 = !DILocation(line: 1019, column: 10, scope: !1453)
!1552 = !DILocation(line: 1020, column: 10, scope: !1453)
!1553 = !DILocation(line: 1021, column: 10, scope: !1453)
!1554 = !DILocation(line: 1022, column: 37, scope: !1453)
!1555 = !DILocation(line: 1024, column: 3, scope: !1453)
!1556 = !DILocation(line: 1025, column: 1, scope: !1453)
!1557 = !DISubprogram(name: "ClearMagickException", scope: !255, file: !255, line: 165, type: !1558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{null, !855}
!1560 = !DISubprogram(name: "FormatLocaleFile", scope: !1561, file: !1561, line: 67, type: !1562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1561 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!556, !778, !1383, null}
!1564 = !DISubprogram(name: "StringToList", scope: !1137, file: !1137, line: 55, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!887, !675}
!1567 = !DISubprogram(name: "DestroyString", scope: !1137, file: !1137, line: 46, type: !1568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!490, !490}
!1570 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1242, file: !1242, line: 51, type: !894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1571 = !DISubprogram(name: "fflush", scope: !557, file: !557, line: 218, type: !1572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!709, !778}
!1574 = distinct !DISubprogram(name: "IsMagickCoreInstantiated", scope: !900, file: !900, line: 1047, type: !1575, scopeLine: 1048, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !945)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!506}
!1577 = !DILocation(line: 1049, column: 10, scope: !1574)
!1578 = !{!935, !935, i64 0}
!1579 = !DILocation(line: 1049, column: 3, scope: !1574)
!1580 = distinct !DISubprogram(name: "MagickComponentGenesis", scope: !900, file: !900, line: 1070, type: !1575, scopeLine: 1071, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !945)
!1581 = !DILocation(line: 1072, column: 7, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1580, file: !900, line: 1072, column: 7)
!1583 = !DILocation(line: 1072, column: 24, scope: !1582)
!1584 = !DILocation(line: 1072, column: 7, scope: !1580)
!1585 = !DILocation(line: 1073, column: 22, scope: !1582)
!1586 = !DILocation(line: 1073, column: 21, scope: !1582)
!1587 = !DILocation(line: 1073, column: 5, scope: !1582)
!1588 = !DILocation(line: 1074, column: 3, scope: !1580)
!1589 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !717, file: !717, line: 32, type: !1590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!715}
!1592 = distinct !DISubprogram(name: "MagickComponentTerminus", scope: !900, file: !900, line: 1095, type: !1593, scopeLine: 1096, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !945)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null}
!1595 = !DILocation(line: 1097, column: 7, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !900, line: 1097, column: 7)
!1597 = !DILocation(line: 1097, column: 24, scope: !1596)
!1598 = !DILocation(line: 1097, column: 7, scope: !1592)
!1599 = !DILocation(line: 1098, column: 5, scope: !1596)
!1600 = !DILocation(line: 1099, column: 21, scope: !1592)
!1601 = !DILocation(line: 1099, column: 3, scope: !1592)
!1602 = !DILocation(line: 1100, column: 7, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1592, file: !900, line: 1100, column: 7)
!1604 = !DILocation(line: 1100, column: 19, scope: !1603)
!1605 = !DILocation(line: 1100, column: 7, scope: !1592)
!1606 = !DILocation(line: 1101, column: 17, scope: !1603)
!1607 = !DILocation(line: 1101, column: 16, scope: !1603)
!1608 = !DILocation(line: 1101, column: 5, scope: !1603)
!1609 = !DILocation(line: 1102, column: 23, scope: !1592)
!1610 = !DILocation(line: 1102, column: 3, scope: !1592)
!1611 = !DILocation(line: 1103, column: 3, scope: !1592)
!1612 = !DILocation(line: 1104, column: 1, scope: !1592)
!1613 = !DISubprogram(name: "ActivateSemaphoreInfo", scope: !717, file: !717, line: 35, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !1616}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!1617 = !DISubprogram(name: "DestroySplayTree", scope: !890, file: !890, line: 44, type: !1618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!888, !888}
!1620 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !717, file: !717, line: 36, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1621 = distinct !DISubprogram(name: "MagickCoreGenesis", scope: !900, file: !900, line: 1237, type: !1622, scopeLine: 1239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1624)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{null, !675, !1254}
!1624 = !{!1625, !1626, !1627, !1628, !1629}
!1625 = !DILocalVariable(name: "path", arg: 1, scope: !1621, file: !900, line: 1237, type: !675)
!1626 = !DILocalVariable(name: "establish_signal_handlers", arg: 2, scope: !1621, file: !900, line: 1238, type: !1254)
!1627 = !DILocalVariable(name: "events", scope: !1621, file: !900, line: 1241, type: !490)
!1628 = !DILocalVariable(name: "execution_path", scope: !1621, file: !900, line: 1242, type: !695)
!1629 = !DILocalVariable(name: "filename", scope: !1621, file: !900, line: 1243, type: !695)
!1630 = !DILocation(line: 0, scope: !1621)
!1631 = !DILocation(line: 1242, column: 5, scope: !1621)
!1632 = !DILocation(line: 1243, column: 5, scope: !1621)
!1633 = !DILocation(line: 1250, column: 7, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1621, file: !900, line: 1250, column: 7)
!1635 = !DILocation(line: 1250, column: 30, scope: !1634)
!1636 = !DILocation(line: 1250, column: 7, scope: !1621)
!1637 = !DILocation(line: 1255, column: 10, scope: !1621)
!1638 = !DILocation(line: 1256, column: 10, scope: !1621)
!1639 = !DILocation(line: 1257, column: 10, scope: !1621)
!1640 = !DILocation(line: 1258, column: 10, scope: !1621)
!1641 = !DILocation(line: 1259, column: 10, scope: !1621)
!1642 = !DILocation(line: 1260, column: 14, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1621, file: !900, line: 1260, column: 7)
!1644 = !DILocation(line: 1260, column: 7, scope: !1621)
!1645 = !DILocation(line: 1262, column: 14, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1643, file: !900, line: 1261, column: 5)
!1647 = !DILocation(line: 1263, column: 14, scope: !1646)
!1648 = !DILocation(line: 1264, column: 5, scope: !1646)
!1649 = !DILocation(line: 1326, column: 10, scope: !1621)
!1650 = !DILocation(line: 1327, column: 10, scope: !1621)
!1651 = !DILocation(line: 1328, column: 10, scope: !1621)
!1652 = !DILocation(line: 1329, column: 10, scope: !1621)
!1653 = !DILocation(line: 1330, column: 10, scope: !1621)
!1654 = !DILocation(line: 1072, column: 7, scope: !1582, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 1331, column: 10, scope: !1621)
!1656 = !DILocation(line: 1072, column: 24, scope: !1582, inlinedAt: !1655)
!1657 = !DILocation(line: 1072, column: 7, scope: !1580, inlinedAt: !1655)
!1658 = !DILocation(line: 1073, column: 22, scope: !1582, inlinedAt: !1655)
!1659 = !DILocation(line: 1073, column: 21, scope: !1582, inlinedAt: !1655)
!1660 = !DILocation(line: 1073, column: 5, scope: !1582, inlinedAt: !1655)
!1661 = !DILocation(line: 1335, column: 10, scope: !1621)
!1662 = !DILocation(line: 1336, column: 10, scope: !1621)
!1663 = !DILocation(line: 1337, column: 10, scope: !1621)
!1664 = !DILocation(line: 1338, column: 10, scope: !1621)
!1665 = !DILocation(line: 1339, column: 10, scope: !1621)
!1666 = !DILocation(line: 1340, column: 10, scope: !1621)
!1667 = !DILocation(line: 1344, column: 10, scope: !1621)
!1668 = !DILocation(line: 1345, column: 25, scope: !1621)
!1669 = !DILocation(line: 1347, column: 1, scope: !1621)
!1670 = !DISubprogram(name: "SemaphoreComponentGenesis", scope: !717, file: !717, line: 29, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1671 = !DISubprogram(name: "LogComponentGenesis", scope: !453, file: !453, line: 82, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1672 = !DISubprogram(name: "LocaleComponentGenesis", scope: !1561, file: !1561, line: 64, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1673 = !DISubprogram(name: "RandomComponentGenesis", scope: !1674, file: !1674, line: 41, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1674 = !DIFile(filename: "apps/538.imagick_r/src/magick/random_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "95f31caf92e8a7cab5b1bf8cc3698f31")
!1675 = !DISubprogram(name: "GetEnvironmentValue", scope: !1137, file: !1137, line: 50, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1676 = !DISubprogram(name: "SetLogEventMask", scope: !453, file: !453, line: 77, type: !1677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!944, !675}
!1679 = !DISubprogram(name: "ConfigureComponentGenesis", scope: !1680, file: !1680, line: 63, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1680 = !DIFile(filename: "apps/538.imagick_r/src/magick/configure.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "509000215663377a353fdb892d1d0c76")
!1681 = !DISubprogram(name: "PolicyComponentGenesis", scope: !1682, file: !1682, line: 61, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1682 = !DIFile(filename: "apps/538.imagick_r/src/magick/policy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6242d97ee47d0d7f0e3878e07f1ce5b1")
!1683 = !DISubprogram(name: "CacheComponentGenesis", scope: !1684, file: !1684, line: 55, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1684 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "71eb387e577d57b17607c7f6f5128e97")
!1685 = !DISubprogram(name: "ResourceComponentGenesis", scope: !1686, file: !1686, line: 48, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1686 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!1687 = !DISubprogram(name: "CoderComponentGenesis", scope: !1688, file: !1688, line: 52, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1688 = !DIFile(filename: "apps/538.imagick_r/src/magick/coder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b19db32cde4adab4a8107a917daf2a2c")
!1689 = !DISubprogram(name: "DelegateComponentGenesis", scope: !1690, file: !1690, line: 71, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1690 = !DIFile(filename: "apps/538.imagick_r/src/magick/delegate.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "154c582a7300696ba5d05ab32b045264")
!1691 = !DISubprogram(name: "MagicComponentGenesis", scope: !1692, file: !1692, line: 61, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1692 = !DIFile(filename: "apps/538.imagick_r/src/magick/magic.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d9fc918f002155e81e1a13ea7935e933")
!1693 = !DISubprogram(name: "ColorComponentGenesis", scope: !648, file: !648, line: 78, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1694 = !DISubprogram(name: "TypeComponentGenesis", scope: !1695, file: !1695, line: 92, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1695 = !DIFile(filename: "apps/538.imagick_r/src/magick/type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e03df4f5f7c27edd01aa629b64253bee")
!1696 = !DISubprogram(name: "MimeComponentGenesis", scope: !1697, file: !1697, line: 38, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1697 = !DIFile(filename: "apps/538.imagick_r/src/magick/mime.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f3a6bef5019fd5f2dadd5518bbd368c")
!1698 = !DISubprogram(name: "AnnotateComponentGenesis", scope: !1699, file: !1699, line: 28, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1699 = !DIFile(filename: "apps/538.imagick_r/src/magick/annotate.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "31b56aa83cbe48792cad832046a8451e")
!1700 = !DISubprogram(name: "RegistryComponentGenesis", scope: !1701, file: !1701, line: 39, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1701 = !DIFile(filename: "apps/538.imagick_r/src/magick/registry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fee9ec3439d50d35877b8d14c6edadfb")
!1702 = distinct !DISubprogram(name: "MagickCoreTerminus", scope: !900, file: !900, line: 1367, type: !1593, scopeLine: 1368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !945)
!1703 = !DILocation(line: 1371, column: 7, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1702, file: !900, line: 1371, column: 7)
!1705 = !DILocation(line: 1371, column: 30, scope: !1704)
!1706 = !DILocation(line: 1371, column: 7, scope: !1702)
!1707 = !DILocation(line: 1376, column: 3, scope: !1702)
!1708 = !DILocation(line: 1380, column: 3, scope: !1702)
!1709 = !DILocation(line: 1381, column: 3, scope: !1702)
!1710 = !DILocation(line: 1382, column: 3, scope: !1702)
!1711 = !DILocation(line: 1383, column: 3, scope: !1702)
!1712 = !DILocation(line: 1387, column: 3, scope: !1702)
!1713 = !DILocation(line: 1388, column: 3, scope: !1702)
!1714 = !DILocation(line: 1097, column: 7, scope: !1596, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 1389, column: 3, scope: !1702)
!1716 = !DILocation(line: 1097, column: 24, scope: !1596, inlinedAt: !1715)
!1717 = !DILocation(line: 1097, column: 7, scope: !1592, inlinedAt: !1715)
!1718 = !DILocation(line: 1098, column: 5, scope: !1596, inlinedAt: !1715)
!1719 = !DILocation(line: 1099, column: 21, scope: !1592, inlinedAt: !1715)
!1720 = !DILocation(line: 1099, column: 3, scope: !1592, inlinedAt: !1715)
!1721 = !DILocation(line: 1100, column: 7, scope: !1603, inlinedAt: !1715)
!1722 = !DILocation(line: 1100, column: 19, scope: !1603, inlinedAt: !1715)
!1723 = !DILocation(line: 1100, column: 7, scope: !1592, inlinedAt: !1715)
!1724 = !DILocation(line: 1101, column: 17, scope: !1603, inlinedAt: !1715)
!1725 = !DILocation(line: 1101, column: 16, scope: !1603, inlinedAt: !1715)
!1726 = !DILocation(line: 1101, column: 5, scope: !1603, inlinedAt: !1715)
!1727 = !DILocation(line: 1102, column: 23, scope: !1592, inlinedAt: !1715)
!1728 = !DILocation(line: 1102, column: 3, scope: !1592, inlinedAt: !1715)
!1729 = !DILocation(line: 1103, column: 3, scope: !1592, inlinedAt: !1715)
!1730 = !DILocation(line: 1391, column: 3, scope: !1702)
!1731 = !DILocation(line: 1396, column: 3, scope: !1702)
!1732 = !DILocation(line: 1397, column: 3, scope: !1702)
!1733 = !DILocation(line: 1398, column: 3, scope: !1702)
!1734 = !DILocation(line: 1399, column: 3, scope: !1702)
!1735 = !DILocation(line: 1400, column: 3, scope: !1702)
!1736 = !DILocation(line: 1401, column: 3, scope: !1702)
!1737 = !DILocation(line: 1402, column: 3, scope: !1702)
!1738 = !DILocation(line: 1403, column: 3, scope: !1702)
!1739 = !DILocation(line: 1404, column: 3, scope: !1702)
!1740 = !DILocation(line: 1405, column: 25, scope: !1702)
!1741 = !DILocation(line: 1408, column: 1, scope: !1702)
!1742 = !DISubprogram(name: "RegistryComponentTerminus", scope: !1701, file: !1701, line: 45, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1743 = !DISubprogram(name: "AnnotateComponentTerminus", scope: !1699, file: !1699, line: 38, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1744 = !DISubprogram(name: "MimeComponentTerminus", scope: !1697, file: !1697, line: 45, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1745 = !DISubprogram(name: "TypeComponentTerminus", scope: !1695, file: !1695, line: 101, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1746 = !DISubprogram(name: "ColorComponentTerminus", scope: !648, file: !648, line: 97, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1747 = !DISubprogram(name: "MagicComponentTerminus", scope: !1692, file: !1692, line: 68, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1748 = !DISubprogram(name: "DelegateComponentTerminus", scope: !1690, file: !1690, line: 77, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1749 = !DISubprogram(name: "UnregisterStaticModules", scope: !1750, file: !1750, line: 90, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1750 = !DIFile(filename: "apps/538.imagick_r/src/magick/module.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bdec26acbe0c4d083452859cca3e7b82")
!1751 = !DISubprogram(name: "CoderComponentTerminus", scope: !1688, file: !1688, line: 56, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1752 = !DISubprogram(name: "ResourceComponentTerminus", scope: !1686, file: !1686, line: 58, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1753 = !DISubprogram(name: "CacheComponentTerminus", scope: !1684, file: !1684, line: 83, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1754 = !DISubprogram(name: "PolicyComponentTerminus", scope: !1682, file: !1682, line: 64, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1755 = !DISubprogram(name: "ConfigureComponentTerminus", scope: !1680, file: !1680, line: 67, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1756 = !DISubprogram(name: "RandomComponentTerminus", scope: !1674, file: !1674, line: 54, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1757 = !DISubprogram(name: "LocaleComponentTerminus", scope: !1561, file: !1561, line: 77, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1758 = !DISubprogram(name: "LogComponentTerminus", scope: !453, file: !453, line: 91, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1759 = !DISubprogram(name: "SemaphoreComponentTerminus", scope: !717, file: !717, line: 38, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1760 = distinct !DISubprogram(name: "RegisterMagickInfo", scope: !900, file: !900, line: 1436, type: !1761, scopeLine: 1437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!886, !886}
!1763 = !{!1764, !1765, !1766, !1769}
!1764 = !DILocalVariable(name: "magick_info", arg: 1, scope: !1760, file: !900, line: 1436, type: !886)
!1765 = !DILocalVariable(name: "status", scope: !1760, file: !900, line: 1439, type: !506)
!1766 = !DILocalVariable(name: "message", scope: !1767, file: !900, line: 1453, type: !490)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !900, line: 1453, column: 5)
!1768 = distinct !DILexicalBlock(scope: !1760, file: !900, line: 1452, column: 7)
!1769 = !DILocalVariable(name: "exception", scope: !1767, file: !900, line: 1453, type: !703)
!1770 = !DILocation(line: 0, scope: !1760)
!1771 = !DILocation(line: 1446, column: 72, scope: !1760)
!1772 = !DILocation(line: 1446, column: 10, scope: !1760)
!1773 = !DILocation(line: 1447, column: 7, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1760, file: !900, line: 1447, column: 7)
!1775 = !DILocation(line: 1447, column: 19, scope: !1774)
!1776 = !DILocation(line: 1447, column: 7, scope: !1760)
!1777 = !DILocation(line: 1449, column: 20, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1760, file: !900, line: 1449, column: 7)
!1779 = !DILocation(line: 1449, column: 35, scope: !1778)
!1780 = !DILocation(line: 1449, column: 7, scope: !1760)
!1781 = !DILocation(line: 1450, column: 28, scope: !1778)
!1782 = !DILocation(line: 1450, column: 18, scope: !1778)
!1783 = !DILocation(line: 1450, column: 27, scope: !1778)
!1784 = !{!933, !934, i64 144}
!1785 = !DILocation(line: 1451, column: 30, scope: !1760)
!1786 = !DILocation(line: 1450, column: 5, scope: !1778)
!1787 = !DILocation(line: 1451, column: 55, scope: !1760)
!1788 = !DILocation(line: 1451, column: 10, scope: !1760)
!1789 = !DILocation(line: 1452, column: 14, scope: !1768)
!1790 = !DILocation(line: 1452, column: 7, scope: !1760)
!1791 = !DILocation(line: 1453, column: 5, scope: !1767)
!1792 = !DILocation(line: 0, scope: !1767)
!1793 = !DILocation(line: 1455, column: 1, scope: !1760)
!1794 = !DISubprogram(name: "AddValueToSplayTree", scope: !890, file: !890, line: 29, type: !1795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!506, !888, !774, !774}
!1797 = !DISubprogram(name: "GetExceptionInfo", scope: !255, file: !255, line: 166, type: !1558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1798 = !DISubprogram(name: "GetExceptionMessage", scope: !255, file: !255, line: 137, type: !1799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!490, !903}
!1801 = !DISubprogram(name: "ThrowMagickException", scope: !255, file: !255, line: 156, type: !1802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!506, !855, !675, !675, !776, !1804, !675, !675, null}
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!1805 = !DISubprogram(name: "CatchException", scope: !255, file: !255, line: 164, type: !1558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1806 = distinct !DISubprogram(name: "SetMagickInfo", scope: !900, file: !900, line: 1484, type: !1807, scopeLine: 1485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1809)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!886, !675}
!1809 = !{!1810, !1811, !1812, !1815}
!1810 = !DILocalVariable(name: "name", arg: 1, scope: !1806, file: !900, line: 1484, type: !675)
!1811 = !DILocalVariable(name: "magick_info", scope: !1806, file: !900, line: 1487, type: !886)
!1812 = !DILocalVariable(name: "message", scope: !1813, file: !900, line: 1493, type: !490)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !900, line: 1493, column: 5)
!1814 = distinct !DILexicalBlock(scope: !1806, file: !900, line: 1492, column: 7)
!1815 = !DILocalVariable(name: "exception", scope: !1813, file: !900, line: 1493, type: !703)
!1816 = !DILocation(line: 0, scope: !1806)
!1817 = !DILocation(line: 1490, column: 10, scope: !1806)
!1818 = !DILocation(line: 1491, column: 30, scope: !1806)
!1819 = !DILocation(line: 1492, column: 19, scope: !1814)
!1820 = !DILocation(line: 1492, column: 7, scope: !1806)
!1821 = !DILocation(line: 1493, column: 5, scope: !1813)
!1822 = !DILocation(line: 0, scope: !1813)
!1823 = !DILocation(line: 1494, column: 10, scope: !1806)
!1824 = !DILocation(line: 1495, column: 21, scope: !1806)
!1825 = !DILocation(line: 1495, column: 20, scope: !1806)
!1826 = !DILocation(line: 1496, column: 16, scope: !1806)
!1827 = !DILocation(line: 1496, column: 22, scope: !1806)
!1828 = !DILocation(line: 1497, column: 16, scope: !1806)
!1829 = !DILocation(line: 1497, column: 28, scope: !1806)
!1830 = !DILocation(line: 1498, column: 16, scope: !1806)
!1831 = !DILocation(line: 1498, column: 30, scope: !1806)
!1832 = !DILocation(line: 1500, column: 16, scope: !1806)
!1833 = !DILocation(line: 1500, column: 25, scope: !1806)
!1834 = !{!933, !938, i64 128}
!1835 = !DILocation(line: 1501, column: 3, scope: !1806)
!1836 = !DISubprogram(name: "AcquireMagickMemory", scope: !1242, file: !1242, line: 40, type: !1837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!607, !776}
!1839 = !DISubprogram(name: "ResetMagickMemory", scope: !1242, file: !1242, line: 52, type: !1840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!607, !607, !709, !776}
!1842 = !DISubprogram(name: "GetPolicyValue", scope: !1682, file: !1682, line: 52, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1843 = distinct !DISubprogram(name: "UnregisterMagickInfo", scope: !900, file: !900, line: 1588, type: !1447, scopeLine: 1589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1844)
!1844 = !{!1845, !1846, !1847}
!1845 = !DILocalVariable(name: "name", arg: 1, scope: !1843, file: !900, line: 1588, type: !675)
!1846 = !DILocalVariable(name: "p", scope: !1843, file: !900, line: 1591, type: !484)
!1847 = !DILocalVariable(name: "status", scope: !1843, file: !900, line: 1594, type: !506)
!1848 = !DILocation(line: 0, scope: !1843)
!1849 = !DILocation(line: 1597, column: 7, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1843, file: !900, line: 1597, column: 7)
!1851 = !DILocation(line: 1597, column: 19, scope: !1850)
!1852 = !DILocation(line: 1597, column: 7, scope: !1843)
!1853 = !DILocation(line: 1599, column: 7, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1843, file: !900, line: 1599, column: 7)
!1855 = !DILocation(line: 1599, column: 48, scope: !1854)
!1856 = !DILocation(line: 1599, column: 7, scope: !1843)
!1857 = !DILocation(line: 1601, column: 21, scope: !1843)
!1858 = !DILocation(line: 1601, column: 3, scope: !1843)
!1859 = !DILocation(line: 1602, column: 26, scope: !1843)
!1860 = !DILocation(line: 1602, column: 3, scope: !1843)
!1861 = !DILocation(line: 1603, column: 50, scope: !1843)
!1862 = !DILocation(line: 1603, column: 26, scope: !1843)
!1863 = !DILocation(line: 1604, column: 12, scope: !1843)
!1864 = !DILocation(line: 1604, column: 3, scope: !1843)
!1865 = !DILocation(line: 1606, column: 26, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !900, line: 1606, column: 9)
!1867 = distinct !DILexicalBlock(scope: !1843, file: !900, line: 1605, column: 3)
!1868 = !DILocation(line: 1606, column: 9, scope: !1866)
!1869 = !DILocation(line: 1606, column: 37, scope: !1866)
!1870 = !DILocation(line: 1606, column: 9, scope: !1867)
!1871 = !DILocation(line: 1608, column: 52, scope: !1867)
!1872 = !DILocation(line: 1608, column: 28, scope: !1867)
!1873 = distinct !{!1873, !1864, !1874, !1001, !1002}
!1874 = !DILocation(line: 1609, column: 3, scope: !1843)
!1875 = !DILocation(line: 1610, column: 41, scope: !1843)
!1876 = !DILocation(line: 1610, column: 10, scope: !1843)
!1877 = !DILocation(line: 1611, column: 23, scope: !1843)
!1878 = !DILocation(line: 1611, column: 3, scope: !1843)
!1879 = !DILocation(line: 1612, column: 3, scope: !1843)
!1880 = !DILocation(line: 1613, column: 1, scope: !1843)
!1881 = !DISubprogram(name: "DeleteNodeByValueFromSplayTree", scope: !890, file: !890, line: 30, type: !1882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!506, !888, !774}
!1884 = !DISubprogram(name: "NewSplayTree", scope: !890, file: !890, line: 45, type: !1885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!888, !1260, !893, !893}
!1887 = distinct !DISubprogram(name: "DestroyMagickNode", scope: !900, file: !900, line: 810, type: !894, scopeLine: 811, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1888)
!1888 = !{!1889, !1890}
!1889 = !DILocalVariable(name: "magick_info", arg: 1, scope: !1887, file: !900, line: 810, type: !607)
!1890 = !DILocalVariable(name: "p", scope: !1887, file: !900, line: 813, type: !886)
!1891 = !DILocation(line: 0, scope: !1887)
!1892 = !DILocation(line: 816, column: 10, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1887, file: !900, line: 816, column: 7)
!1894 = !{!933, !934, i64 32}
!1895 = !DILocation(line: 816, column: 17, scope: !1893)
!1896 = !DILocation(line: 816, column: 7, scope: !1887)
!1897 = !DILocation(line: 817, column: 15, scope: !1893)
!1898 = !DILocation(line: 817, column: 14, scope: !1893)
!1899 = !DILocation(line: 817, column: 5, scope: !1893)
!1900 = !DILocation(line: 818, column: 10, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1887, file: !900, line: 818, column: 7)
!1902 = !DILocation(line: 818, column: 15, scope: !1901)
!1903 = !DILocation(line: 818, column: 7, scope: !1887)
!1904 = !DILocation(line: 819, column: 13, scope: !1901)
!1905 = !DILocation(line: 819, column: 12, scope: !1901)
!1906 = !DILocation(line: 819, column: 5, scope: !1901)
!1907 = !DILocation(line: 820, column: 10, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1887, file: !900, line: 820, column: 7)
!1909 = !DILocation(line: 820, column: 20, scope: !1908)
!1910 = !DILocation(line: 820, column: 7, scope: !1887)
!1911 = !DILocation(line: 821, column: 18, scope: !1908)
!1912 = !DILocation(line: 821, column: 17, scope: !1908)
!1913 = !DILocation(line: 821, column: 5, scope: !1908)
!1914 = !DILocation(line: 822, column: 10, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1887, file: !900, line: 822, column: 7)
!1916 = !DILocation(line: 822, column: 18, scope: !1915)
!1917 = !DILocation(line: 822, column: 7, scope: !1887)
!1918 = !DILocation(line: 823, column: 16, scope: !1915)
!1919 = !DILocation(line: 823, column: 15, scope: !1915)
!1920 = !DILocation(line: 823, column: 5, scope: !1915)
!1921 = !DILocation(line: 824, column: 10, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1887, file: !900, line: 824, column: 7)
!1923 = !DILocation(line: 824, column: 22, scope: !1922)
!1924 = !DILocation(line: 824, column: 7, scope: !1887)
!1925 = !DILocation(line: 825, column: 20, scope: !1922)
!1926 = !DILocation(line: 825, column: 19, scope: !1922)
!1927 = !DILocation(line: 825, column: 5, scope: !1922)
!1928 = !DILocation(line: 826, column: 10, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1887, file: !900, line: 826, column: 7)
!1930 = !DILocation(line: 826, column: 15, scope: !1929)
!1931 = !DILocation(line: 826, column: 7, scope: !1887)
!1932 = !DILocation(line: 827, column: 13, scope: !1929)
!1933 = !DILocation(line: 827, column: 12, scope: !1929)
!1934 = !DILocation(line: 827, column: 5, scope: !1929)
!1935 = !DILocation(line: 828, column: 10, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1887, file: !900, line: 828, column: 7)
!1937 = !DILocation(line: 828, column: 20, scope: !1936)
!1938 = !DILocation(line: 828, column: 7, scope: !1887)
!1939 = !DILocation(line: 829, column: 5, scope: !1936)
!1940 = !DILocation(line: 830, column: 10, scope: !1887)
!1941 = !DILocation(line: 830, column: 3, scope: !1887)
!1942 = !DISubprogram(name: "RegisterStaticModules", scope: !1750, file: !1750, line: 89, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !945)
