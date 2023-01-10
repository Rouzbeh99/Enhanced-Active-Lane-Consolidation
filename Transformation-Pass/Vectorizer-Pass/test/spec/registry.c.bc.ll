; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/registry.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/registry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._RegistryInfo = type { i32, ptr, i64 }

@.str = private unnamed_addr constant [87 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/registry.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@registry = internal unnamed_addr global ptr null, align 8, !dbg !0
@.str.3 = private unnamed_addr constant [22 x i8] c"UnableToGetRegistryID\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@registry_semaphore = internal global ptr null, align 8, !dbg !849
@.str.6 = private unnamed_addr constant [20 x i8] c"UnableToSetRegistry\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @DefineImageRegistry(i32 noundef %type, ptr noundef %option, ptr noundef %exception) local_unnamed_addr #0 !dbg !858 {
entry:
  %key = alloca [4096 x i8], align 16
  %value = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %type, metadata !864, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata ptr %option, metadata !865, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata ptr %exception, metadata !866, metadata !DIExpression()), !dbg !870
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %key) #7, !dbg !871
  call void @llvm.dbg.declare(metadata ptr %key, metadata !867, metadata !DIExpression()), !dbg !872
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %value) #7, !dbg !871
  call void @llvm.dbg.declare(metadata ptr %value, metadata !868, metadata !DIExpression()), !dbg !873
  %call = call i64 @CopyMagickString(ptr noundef nonnull %key, ptr noundef %option, i64 noundef 4096) #7, !dbg !874
  call void @llvm.dbg.value(metadata ptr %key, metadata !869, metadata !DIExpression()), !dbg !870
  br label %for.cond, !dbg !875

for.cond:                                         ; preds = %for.inc, %entry
  %p.0 = phi ptr [ %key, %entry ], [ %incdec.ptr, %for.inc ], !dbg !877
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !869, metadata !DIExpression()), !dbg !870
  %0 = load i8, ptr %p.0, align 1, !dbg !878, !tbaa !880
  switch i8 %0, label %for.inc [
    i8 0, label %for.end
    i8 61, label %for.end
  ], !dbg !883

for.inc:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !884
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !869, metadata !DIExpression()), !dbg !870
  br label %for.cond, !dbg !885, !llvm.loop !886

for.end:                                          ; preds = %for.cond, %for.cond
  store i8 0, ptr %value, align 16, !dbg !890, !tbaa !880
  %cmp8 = icmp eq i8 %0, 61, !dbg !891
  br i1 %cmp8, label %if.then10, label %if.end13, !dbg !893

if.then10:                                        ; preds = %for.end
  %add.ptr = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !894
  %call12 = call i64 @CopyMagickString(ptr noundef nonnull %value, ptr noundef nonnull %add.ptr, i64 noundef 4096) #7, !dbg !895
  br label %if.end13, !dbg !896

if.end13:                                         ; preds = %if.then10, %for.end
  store i8 0, ptr %p.0, align 1, !dbg !897, !tbaa !880
  %call16 = call i32 @SetImageRegistry(i32 noundef %type, ptr noundef nonnull %key, ptr noundef nonnull %value, ptr noundef %exception), !dbg !898
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %value) #7, !dbg !899
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key) #7, !dbg !899
  ret i32 %call16, !dbg !900
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !901 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageRegistry(i32 noundef %type, ptr noundef %key, ptr noundef %value, ptr noundef %exception) local_unnamed_addr #0 !dbg !906 {
entry:
  %exception27 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata i32 %type, metadata !910, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata ptr %key, metadata !911, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata ptr %value, metadata !912, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata ptr %exception, metadata !913, metadata !DIExpression()), !dbg !928
  %call = tail call i32 @IsEventLogging() #7, !dbg !929
  %cmp.not = icmp eq i32 %call, 0, !dbg !931
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !932

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 467, ptr noundef nonnull @.str.2, ptr noundef %key) #7, !dbg !933
  br label %if.end, !dbg !934

if.end:                                           ; preds = %if.then, %entry
  %cmp2 = icmp eq ptr %value, null, !dbg !935
  br i1 %cmp2, label %cleanup50, label %if.end4, !dbg !937

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr null, metadata !916, metadata !DIExpression()), !dbg !928
  switch i32 %type, label %sw.default [
    i32 2, label %sw.bb12
    i32 1, label %sw.bb6
  ], !dbg !938

sw.default:                                       ; preds = %if.end4
  call void @llvm.dbg.value(metadata ptr %value, metadata !917, metadata !DIExpression()), !dbg !939
  %call5 = tail call ptr @ConstantString(ptr noundef nonnull %value) #7, !dbg !940
  call void @llvm.dbg.value(metadata ptr %call5, metadata !916, metadata !DIExpression()), !dbg !928
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end4
  call void @llvm.dbg.value(metadata ptr %value, metadata !920, metadata !DIExpression()), !dbg !941
  %signature = getelementptr inbounds %struct._Image, ptr %value, i64 0, i32 66, !dbg !942
  %0 = load i64, ptr %signature, align 8, !dbg !942, !tbaa !944
  %cmp7.not = icmp eq i64 %0, 2880220587, !dbg !961
  br i1 %cmp7.not, label %cleanup.thread, label %cleanup, !dbg !962

cleanup.thread:                                   ; preds = %sw.bb6
  %call11 = tail call ptr @CloneImageList(ptr noundef nonnull %value, ptr noundef %exception) #7, !dbg !963
  call void @llvm.dbg.value(metadata ptr null, metadata !916, metadata !DIExpression()), !dbg !928
  br label %sw.epilog

cleanup:                                          ; preds = %sw.bb6
  %call9 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 491, i32 noundef 490, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef %key) #7, !dbg !964
  call void @llvm.dbg.value(metadata ptr null, metadata !916, metadata !DIExpression()), !dbg !928
  br label %cleanup50

sw.bb12:                                          ; preds = %if.end4
  call void @llvm.dbg.value(metadata ptr %value, metadata !922, metadata !DIExpression()), !dbg !966
  %signature13 = getelementptr inbounds %struct._ImageInfo, ptr %value, i64 0, i32 57, !dbg !967
  %1 = load i64, ptr %signature13, align 8, !dbg !967, !tbaa !969
  %cmp14.not = icmp eq i64 %1, 2880220587, !dbg !971
  br i1 %cmp14.not, label %cleanup19.thread, label %cleanup19, !dbg !972

cleanup19.thread:                                 ; preds = %sw.bb12
  %call18 = tail call ptr @CloneImageInfo(ptr noundef nonnull %value) #7, !dbg !973
  call void @llvm.dbg.value(metadata ptr null, metadata !916, metadata !DIExpression()), !dbg !928
  br label %sw.epilog

cleanup19:                                        ; preds = %sw.bb12
  %call16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 506, i32 noundef 490, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef %key) #7, !dbg !974
  call void @llvm.dbg.value(metadata ptr null, metadata !916, metadata !DIExpression()), !dbg !928
  br label %cleanup50

sw.epilog:                                        ; preds = %cleanup19.thread, %cleanup.thread, %sw.default
  %clone_value.2 = phi ptr [ %call5, %sw.default ], [ %call11, %cleanup.thread ], [ %call18, %cleanup19.thread ], !dbg !928
  call void @llvm.dbg.value(metadata ptr %clone_value.2, metadata !916, metadata !DIExpression()), !dbg !928
  %cmp21 = icmp eq ptr %clone_value.2, null, !dbg !976
  br i1 %cmp21, label %cleanup50, label %if.end23, !dbg !978

if.end23:                                         ; preds = %sw.epilog
  %call24 = tail call ptr @AcquireMagickMemory(i64 noundef 24) #8, !dbg !979
  call void @llvm.dbg.value(metadata ptr %call24, metadata !915, metadata !DIExpression()), !dbg !928
  %cmp25 = icmp eq ptr %call24, null, !dbg !980
  br i1 %cmp25, label %if.then26, label %if.end33, !dbg !981

if.then26:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception27) #7, !dbg !982
  call void @llvm.dbg.declare(metadata ptr %exception27, metadata !927, metadata !DIExpression()), !dbg !982
  call void @GetExceptionInfo(ptr noundef nonnull %exception27) #7, !dbg !982
  %call28 = tail call ptr @__errno_location() #9, !dbg !982
  %2 = load i32, ptr %call28, align 4, !dbg !982, !tbaa !983
  %call29 = call ptr @GetExceptionMessage(i32 noundef %2) #7, !dbg !982
  call void @llvm.dbg.value(metadata ptr %call29, metadata !924, metadata !DIExpression()), !dbg !984
  %call30 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 518, i32 noundef 700, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef %call29) #7, !dbg !982
  %call31 = call ptr @DestroyString(ptr noundef %call29) #7, !dbg !982
  call void @llvm.dbg.value(metadata ptr %call31, metadata !924, metadata !DIExpression()), !dbg !984
  call void @CatchException(ptr noundef nonnull %exception27) #7, !dbg !982
  %call32 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception27) #7, !dbg !982
  call void @MagickCoreTerminus() #7, !dbg !982
  call void @_exit(i32 noundef 1) #10, !dbg !982
  unreachable, !dbg !982

if.end33:                                         ; preds = %if.end23
  %call34 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call24, i32 noundef 0, i64 noundef 24) #7, !dbg !985
  store i32 %type, ptr %call24, align 8, !dbg !986, !tbaa !987
  %value36 = getelementptr inbounds %struct._RegistryInfo, ptr %call24, i64 0, i32 1, !dbg !989
  store ptr %clone_value.2, ptr %value36, align 8, !dbg !990, !tbaa !991
  %signature37 = getelementptr inbounds %struct._RegistryInfo, ptr %call24, i64 0, i32 2, !dbg !992
  store i64 2880220587, ptr %signature37, align 8, !dbg !993, !tbaa !994
  %3 = load ptr, ptr @registry, align 8, !dbg !995, !tbaa !997
  %cmp38 = icmp eq ptr %3, null, !dbg !998
  br i1 %cmp38, label %if.then39, label %if.end47, !dbg !999

if.then39:                                        ; preds = %if.end33
  %4 = load ptr, ptr @registry_semaphore, align 8, !dbg !1000, !tbaa !997
  %cmp40 = icmp eq ptr %4, null, !dbg !1003
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !1004

if.then41:                                        ; preds = %if.then39
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @registry_semaphore) #7, !dbg !1005
  %.pre = load ptr, ptr @registry_semaphore, align 8, !dbg !1006, !tbaa !997
  br label %if.end42, !dbg !1005

if.end42:                                         ; preds = %if.then41, %if.then39
  %5 = phi ptr [ %.pre, %if.then41 ], [ %4, %if.then39 ], !dbg !1006
  tail call void @LockSemaphoreInfo(ptr noundef %5) #7, !dbg !1007
  %6 = load ptr, ptr @registry, align 8, !dbg !1008, !tbaa !997
  %cmp43 = icmp eq ptr %6, null, !dbg !1010
  br i1 %cmp43, label %if.then44, label %if.end46, !dbg !1011

if.then44:                                        ; preds = %if.end42
  %call45 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @DestroyRegistryNode) #7, !dbg !1012
  store ptr %call45, ptr @registry, align 8, !dbg !1013, !tbaa !997
  br label %if.end46, !dbg !1014

if.end46:                                         ; preds = %if.then44, %if.end42
  %7 = load ptr, ptr @registry_semaphore, align 8, !dbg !1015, !tbaa !997
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #7, !dbg !1016
  %.pre75 = load ptr, ptr @registry, align 8, !dbg !1017, !tbaa !997
  br label %if.end47, !dbg !1018

if.end47:                                         ; preds = %if.end46, %if.end33
  %8 = phi ptr [ %.pre75, %if.end46 ], [ %3, %if.end33 ], !dbg !1017
  %call48 = tail call ptr @ConstantString(ptr noundef %key) #7, !dbg !1019
  %call49 = tail call i32 @AddValueToSplayTree(ptr noundef %8, ptr noundef %call48, ptr noundef nonnull %call24) #7, !dbg !1020
  call void @llvm.dbg.value(metadata i32 %call49, metadata !914, metadata !DIExpression()), !dbg !928
  br label %cleanup50, !dbg !1021

cleanup50:                                        ; preds = %cleanup19, %cleanup, %sw.epilog, %if.end, %if.end47
  %retval.2 = phi i32 [ %call49, %if.end47 ], [ 0, %cleanup ], [ 0, %cleanup19 ], [ 0, %if.end ], [ 0, %sw.epilog ], !dbg !928
  ret i32 %retval.2, !dbg !1022
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @DeleteImageRegistry(ptr noundef %key) local_unnamed_addr #0 !dbg !1023 {
entry:
  call void @llvm.dbg.value(metadata ptr %key, metadata !1027, metadata !DIExpression()), !dbg !1028
  %call = tail call i32 @IsEventLogging() #7, !dbg !1029
  %cmp.not = icmp eq i32 %call, 0, !dbg !1031
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1032

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 152, ptr noundef nonnull @.str.2, ptr noundef %key) #7, !dbg !1033
  br label %if.end, !dbg !1034

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr @registry, align 8, !dbg !1035, !tbaa !997
  %cmp2 = icmp eq ptr %0, null, !dbg !1037
  br i1 %cmp2, label %return, label %if.end4, !dbg !1038

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @DeleteNodeFromSplayTree(ptr noundef nonnull %0, ptr noundef %key) #7, !dbg !1039
  br label %return, !dbg !1040

return:                                           ; preds = %if.end, %if.end4
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %if.end ], !dbg !1028
  ret i32 %retval.0, !dbg !1041
}

declare !dbg !1042 i32 @IsEventLogging() local_unnamed_addr #3

declare !dbg !1045 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1050 i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageRegistry(i32 noundef %type, ptr noundef %key, ptr noundef %exception) local_unnamed_addr #0 !dbg !1053 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !1057, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata ptr %key, metadata !1058, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1059, metadata !DIExpression()), !dbg !1062
  %call = tail call i32 @IsEventLogging() #7, !dbg !1063
  %cmp.not = icmp eq i32 %call, 0, !dbg !1065
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1066

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 195, ptr noundef nonnull @.str.2, ptr noundef %key) #7, !dbg !1067
  br label %if.end, !dbg !1068

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr @registry, align 8, !dbg !1069, !tbaa !997
  %cmp2 = icmp eq ptr %0, null, !dbg !1071
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !1072

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @GetValueFromSplayTree(ptr noundef nonnull %0, ptr noundef %key) #7, !dbg !1073
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1061, metadata !DIExpression()), !dbg !1062
  %cmp6 = icmp eq ptr %call5, null, !dbg !1074
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !1076

if.then7:                                         ; preds = %if.end4
  %call8 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 201, i32 noundef 490, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %key) #7, !dbg !1077
  br label %cleanup, !dbg !1079

if.end9:                                          ; preds = %if.end4
  call void @llvm.dbg.value(metadata ptr null, metadata !1060, metadata !DIExpression()), !dbg !1062
  switch i32 %type, label %cleanup [
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
    i32 3, label %sw.bb23
  ], !dbg !1080

sw.bb:                                            ; preds = %if.end9
  %1 = load i32, ptr %call5, align 8, !dbg !1081, !tbaa !987
  %cmp11 = icmp eq i32 %1, 1, !dbg !1085
  br i1 %cmp11, label %if.then12, label %cleanup, !dbg !1086

if.then12:                                        ; preds = %sw.bb
  %value13 = getelementptr inbounds %struct._RegistryInfo, ptr %call5, i64 0, i32 1, !dbg !1087
  %2 = load ptr, ptr %value13, align 8, !dbg !1087, !tbaa !991
  %call14 = tail call ptr @CloneImageList(ptr noundef %2, ptr noundef %exception) #7, !dbg !1088
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1060, metadata !DIExpression()), !dbg !1062
  br label %cleanup, !dbg !1089

sw.bb16:                                          ; preds = %if.end9
  %3 = load i32, ptr %call5, align 8, !dbg !1090, !tbaa !987
  %cmp18 = icmp eq i32 %3, 2, !dbg !1093
  br i1 %cmp18, label %if.then19, label %cleanup, !dbg !1094

if.then19:                                        ; preds = %sw.bb16
  %value20 = getelementptr inbounds %struct._RegistryInfo, ptr %call5, i64 0, i32 1, !dbg !1095
  %4 = load ptr, ptr %value20, align 8, !dbg !1095, !tbaa !991
  %call21 = tail call ptr @CloneImageInfo(ptr noundef %4) #7, !dbg !1096
  call void @llvm.dbg.value(metadata ptr %call21, metadata !1060, metadata !DIExpression()), !dbg !1062
  br label %cleanup, !dbg !1097

sw.bb23:                                          ; preds = %if.end9
  %5 = load i32, ptr %call5, align 8, !dbg !1098, !tbaa !987
  switch i32 %5, label %cleanup [
    i32 1, label %sw.bb25
    i32 2, label %sw.bb28
    i32 3, label %sw.bb33
  ], !dbg !1100

sw.bb25:                                          ; preds = %sw.bb23
  %value26 = getelementptr inbounds %struct._RegistryInfo, ptr %call5, i64 0, i32 1, !dbg !1101
  %6 = load ptr, ptr %value26, align 8, !dbg !1101, !tbaa !991
  %filename = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 53, !dbg !1104
  %call27 = tail call ptr @ConstantString(ptr noundef nonnull %filename) #7, !dbg !1105
  call void @llvm.dbg.value(metadata ptr %call27, metadata !1060, metadata !DIExpression()), !dbg !1062
  br label %cleanup, !dbg !1106

sw.bb28:                                          ; preds = %sw.bb23
  %value29 = getelementptr inbounds %struct._RegistryInfo, ptr %call5, i64 0, i32 1, !dbg !1107
  %7 = load ptr, ptr %value29, align 8, !dbg !1107, !tbaa !991
  %filename30 = getelementptr inbounds %struct._ImageInfo, ptr %7, i64 0, i32 51, !dbg !1109
  %call32 = tail call ptr @ConstantString(ptr noundef nonnull %filename30) #7, !dbg !1110
  call void @llvm.dbg.value(metadata ptr %call32, metadata !1060, metadata !DIExpression()), !dbg !1062
  br label %cleanup, !dbg !1111

sw.bb33:                                          ; preds = %sw.bb23
  %value34 = getelementptr inbounds %struct._RegistryInfo, ptr %call5, i64 0, i32 1, !dbg !1112
  %8 = load ptr, ptr %value34, align 8, !dbg !1112, !tbaa !991
  %call35 = tail call ptr @ConstantString(ptr noundef %8) #7, !dbg !1114
  call void @llvm.dbg.value(metadata ptr %call35, metadata !1060, metadata !DIExpression()), !dbg !1062
  br label %cleanup, !dbg !1115

cleanup:                                          ; preds = %if.then12, %sw.bb, %if.then19, %sw.bb16, %sw.bb23, %sw.bb33, %sw.bb28, %sw.bb25, %if.end9, %if.end, %if.then7
  %retval.0 = phi ptr [ null, %if.then7 ], [ null, %if.end ], [ null, %if.end9 ], [ null, %sw.bb23 ], [ %call35, %sw.bb33 ], [ %call32, %sw.bb28 ], [ %call27, %sw.bb25 ], [ %call21, %if.then19 ], [ null, %sw.bb16 ], [ %call14, %if.then12 ], [ null, %sw.bb ], !dbg !1062
  ret ptr %retval.0, !dbg !1116
}

declare !dbg !1117 ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1120 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1124 ptr @CloneImageList(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1128 ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1131 ptr @ConstantString(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextImageRegistry() local_unnamed_addr #0 !dbg !1134 {
entry:
  %call = tail call i32 @IsEventLogging() #7, !dbg !1137
  %cmp.not = icmp eq i32 %call, 0, !dbg !1139
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1140

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 273, ptr noundef nonnull @.str.5) #7, !dbg !1141
  br label %if.end, !dbg !1142

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr @registry, align 8, !dbg !1143, !tbaa !997
  %cmp2 = icmp eq ptr %0, null, !dbg !1145
  br i1 %cmp2, label %return, label %if.end4, !dbg !1146

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %0) #7, !dbg !1147
  br label %return, !dbg !1148

return:                                           ; preds = %if.end, %if.end4
  %retval.0 = phi ptr [ %call5, %if.end4 ], [ null, %if.end ], !dbg !1149
  ret ptr %retval.0, !dbg !1150
}

declare !dbg !1151 ptr @GetNextKeyInSplayTree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @RegistryComponentGenesis() local_unnamed_addr #0 !dbg !1154 {
entry:
  %0 = load ptr, ptr @registry_semaphore, align 8, !dbg !1155, !tbaa !997
  %cmp = icmp eq ptr %0, null, !dbg !1157
  br i1 %cmp, label %if.then, label %if.end, !dbg !1158

if.then:                                          ; preds = %entry
  %call = tail call ptr @AllocateSemaphoreInfo() #7, !dbg !1159
  store ptr %call, ptr @registry_semaphore, align 8, !dbg !1160, !tbaa !997
  br label %if.end, !dbg !1161

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !1162
}

declare !dbg !1163 ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @RegistryComponentTerminus() local_unnamed_addr #0 !dbg !1166 {
entry:
  %0 = load ptr, ptr @registry_semaphore, align 8, !dbg !1169, !tbaa !997
  %cmp = icmp eq ptr %0, null, !dbg !1171
  br i1 %cmp, label %if.then, label %if.end, !dbg !1172

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @registry_semaphore) #7, !dbg !1173
  %.pre = load ptr, ptr @registry_semaphore, align 8, !dbg !1174, !tbaa !997
  br label %if.end, !dbg !1173

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !1174
  tail call void @LockSemaphoreInfo(ptr noundef %1) #7, !dbg !1175
  %call = tail call i32 @IsEventLogging() #7, !dbg !1176
  %cmp1.not = icmp eq i32 %call, 0, !dbg !1178
  br i1 %cmp1.not, label %if.end4, label %if.then2, !dbg !1179

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 328, ptr noundef nonnull @.str.5) #7, !dbg !1180
  br label %if.end4, !dbg !1181

if.end4:                                          ; preds = %if.then2, %if.end
  %2 = load ptr, ptr @registry, align 8, !dbg !1182, !tbaa !997
  %cmp5.not = icmp eq ptr %2, null, !dbg !1184
  br i1 %cmp5.not, label %if.end8, label %if.then6, !dbg !1185

if.then6:                                         ; preds = %if.end4
  %call7 = tail call ptr @DestroySplayTree(ptr noundef nonnull %2) #7, !dbg !1186
  store ptr %call7, ptr @registry, align 8, !dbg !1187, !tbaa !997
  br label %if.end8, !dbg !1188

if.end8:                                          ; preds = %if.then6, %if.end4
  %3 = load ptr, ptr @registry_semaphore, align 8, !dbg !1189, !tbaa !997
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #7, !dbg !1190
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @registry_semaphore) #7, !dbg !1191
  ret void, !dbg !1192
}

declare !dbg !1193 void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1197 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1200 ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #3

declare !dbg !1203 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1204 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveImageRegistry(ptr noundef %key) local_unnamed_addr #0 !dbg !1205 {
entry:
  call void @llvm.dbg.value(metadata ptr %key, metadata !1209, metadata !DIExpression()), !dbg !1210
  %call = tail call i32 @IsEventLogging() #7, !dbg !1211
  %cmp.not = icmp eq i32 %call, 0, !dbg !1213
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1214

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 361, ptr noundef nonnull @.str.2, ptr noundef %key) #7, !dbg !1215
  br label %if.end, !dbg !1216

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr @registry, align 8, !dbg !1217, !tbaa !997
  %cmp2 = icmp eq ptr %0, null, !dbg !1219
  br i1 %cmp2, label %return, label %if.end4, !dbg !1220

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @RemoveNodeFromSplayTree(ptr noundef nonnull %0, ptr noundef %key) #7, !dbg !1221
  br label %return, !dbg !1222

return:                                           ; preds = %if.end, %if.end4
  %retval.0 = phi ptr [ %call5, %if.end4 ], [ null, %if.end ], !dbg !1210
  ret ptr %retval.0, !dbg !1223
}

declare !dbg !1224 ptr @RemoveNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ResetImageRegistryIterator() local_unnamed_addr #0 !dbg !1227 {
entry:
  %call = tail call i32 @IsEventLogging() #7, !dbg !1228
  %cmp.not = icmp eq i32 %call, 0, !dbg !1230
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1231

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 390, ptr noundef nonnull @.str.5) #7, !dbg !1232
  br label %if.end, !dbg !1233

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr @registry, align 8, !dbg !1234, !tbaa !997
  %cmp2 = icmp eq ptr %0, null, !dbg !1236
  br i1 %cmp2, label %return, label %if.end4, !dbg !1237

if.end4:                                          ; preds = %if.end
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %0) #7, !dbg !1238
  br label %return, !dbg !1239

return:                                           ; preds = %if.end, %if.end4
  ret void, !dbg !1239
}

declare !dbg !1240 void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare !dbg !1243 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #4

declare !dbg !1247 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1250 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #5

declare !dbg !1254 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !1257 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !1258 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1261 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

declare !dbg !1263 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1266 ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #3

declare !dbg !1275 ptr @RelinquishMagickMemory(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @DestroyRegistryNode(ptr noundef %registry_info) #0 !dbg !1276 {
entry:
  call void @llvm.dbg.value(metadata ptr %registry_info, metadata !1278, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata ptr %registry_info, metadata !1279, metadata !DIExpression()), !dbg !1280
  %0 = load i32, ptr %registry_info, align 8, !dbg !1281, !tbaa !987
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb6
    i32 1, label %sw.bb2
  ], !dbg !1282

sw.default:                                       ; preds = %entry
  %value = getelementptr inbounds %struct._RegistryInfo, ptr %registry_info, i64 0, i32 1, !dbg !1283
  %1 = load ptr, ptr %value, align 8, !dbg !1283, !tbaa !991
  %call = tail call ptr @RelinquishMagickMemory(ptr noundef %1) #7, !dbg !1286
  store ptr %call, ptr %value, align 8, !dbg !1287, !tbaa !991
  br label %sw.epilog, !dbg !1288

sw.bb2:                                           ; preds = %entry
  %value3 = getelementptr inbounds %struct._RegistryInfo, ptr %registry_info, i64 0, i32 1, !dbg !1289
  %2 = load ptr, ptr %value3, align 8, !dbg !1289, !tbaa !991
  %call4 = tail call ptr @DestroyImageList(ptr noundef %2) #7, !dbg !1291
  store ptr %call4, ptr %value3, align 8, !dbg !1292, !tbaa !991
  br label %sw.epilog, !dbg !1293

sw.bb6:                                           ; preds = %entry
  %value7 = getelementptr inbounds %struct._RegistryInfo, ptr %registry_info, i64 0, i32 1, !dbg !1294
  %3 = load ptr, ptr %value7, align 8, !dbg !1294, !tbaa !991
  %call8 = tail call ptr @DestroyImageInfo(ptr noundef %3) #7, !dbg !1296
  store ptr %call8, ptr %value7, align 8, !dbg !1297, !tbaa !991
  br label %sw.epilog, !dbg !1298

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb2, %sw.default
  %call10 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %registry_info) #7, !dbg !1299
  ret ptr %call10, !dbg !1300
}

declare !dbg !1301 i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1304 ptr @DestroyImageList(ptr noundef) local_unnamed_addr #3

declare !dbg !1307 ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!851, !852, !853, !854, !855, !856}
!llvm.ident = !{!857}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "registry", scope: !2, file: !483, line: 73, type: !844, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !478, globals: !848, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/registry.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "675fa5d2c15dbc0481f843749fe2dfa6")
!4 = !{!5, !11, !18, !91, !116, !121, !158, !183, !195, !203, !208, !243, !253, !259, !274, !345, !353, !359, !376, !390, !402, !435, !457}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 211, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "MagickFalse", value: 0)
!10 = !DIEnumerator(name: "MagickTrue", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 25, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "apps/538.imagick_r/src/magick/registry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fee9ec3439d50d35877b8d14c6edadfb")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "UndefinedRegistryType", value: 0)
!15 = !DIEnumerator(name: "ImageRegistryType", value: 1)
!16 = !DIEnumerator(name: "ImageInfoRegistryType", value: 2)
!17 = !DIEnumerator(name: "StringRegistryType", value: 3)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 28, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!21 = !DIEnumerator(name: "UndefinedException", value: 0)
!22 = !DIEnumerator(name: "WarningException", value: 300)
!23 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!24 = !DIEnumerator(name: "TypeWarning", value: 305)
!25 = !DIEnumerator(name: "OptionWarning", value: 310)
!26 = !DIEnumerator(name: "DelegateWarning", value: 315)
!27 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!28 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!29 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!30 = !DIEnumerator(name: "BlobWarning", value: 335)
!31 = !DIEnumerator(name: "StreamWarning", value: 340)
!32 = !DIEnumerator(name: "CacheWarning", value: 345)
!33 = !DIEnumerator(name: "CoderWarning", value: 350)
!34 = !DIEnumerator(name: "FilterWarning", value: 352)
!35 = !DIEnumerator(name: "ModuleWarning", value: 355)
!36 = !DIEnumerator(name: "DrawWarning", value: 360)
!37 = !DIEnumerator(name: "ImageWarning", value: 365)
!38 = !DIEnumerator(name: "WandWarning", value: 370)
!39 = !DIEnumerator(name: "RandomWarning", value: 375)
!40 = !DIEnumerator(name: "XServerWarning", value: 380)
!41 = !DIEnumerator(name: "MonitorWarning", value: 385)
!42 = !DIEnumerator(name: "RegistryWarning", value: 390)
!43 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!44 = !DIEnumerator(name: "PolicyWarning", value: 399)
!45 = !DIEnumerator(name: "ErrorException", value: 400)
!46 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!47 = !DIEnumerator(name: "TypeError", value: 405)
!48 = !DIEnumerator(name: "OptionError", value: 410)
!49 = !DIEnumerator(name: "DelegateError", value: 415)
!50 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!51 = !DIEnumerator(name: "CorruptImageError", value: 425)
!52 = !DIEnumerator(name: "FileOpenError", value: 430)
!53 = !DIEnumerator(name: "BlobError", value: 435)
!54 = !DIEnumerator(name: "StreamError", value: 440)
!55 = !DIEnumerator(name: "CacheError", value: 445)
!56 = !DIEnumerator(name: "CoderError", value: 450)
!57 = !DIEnumerator(name: "FilterError", value: 452)
!58 = !DIEnumerator(name: "ModuleError", value: 455)
!59 = !DIEnumerator(name: "DrawError", value: 460)
!60 = !DIEnumerator(name: "ImageError", value: 465)
!61 = !DIEnumerator(name: "WandError", value: 470)
!62 = !DIEnumerator(name: "RandomError", value: 475)
!63 = !DIEnumerator(name: "XServerError", value: 480)
!64 = !DIEnumerator(name: "MonitorError", value: 485)
!65 = !DIEnumerator(name: "RegistryError", value: 490)
!66 = !DIEnumerator(name: "ConfigureError", value: 495)
!67 = !DIEnumerator(name: "PolicyError", value: 499)
!68 = !DIEnumerator(name: "FatalErrorException", value: 700)
!69 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!70 = !DIEnumerator(name: "TypeFatalError", value: 705)
!71 = !DIEnumerator(name: "OptionFatalError", value: 710)
!72 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!73 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!74 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!75 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!76 = !DIEnumerator(name: "BlobFatalError", value: 735)
!77 = !DIEnumerator(name: "StreamFatalError", value: 740)
!78 = !DIEnumerator(name: "CacheFatalError", value: 745)
!79 = !DIEnumerator(name: "CoderFatalError", value: 750)
!80 = !DIEnumerator(name: "FilterFatalError", value: 752)
!81 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!82 = !DIEnumerator(name: "DrawFatalError", value: 760)
!83 = !DIEnumerator(name: "ImageFatalError", value: 765)
!84 = !DIEnumerator(name: "WandFatalError", value: 770)
!85 = !DIEnumerator(name: "RandomFatalError", value: 775)
!86 = !DIEnumerator(name: "XServerFatalError", value: 780)
!87 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!88 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!89 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!90 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 34, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!94 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!95 = !DIEnumerator(name: "NoEvents", value: 0)
!96 = !DIEnumerator(name: "TraceEvent", value: 1)
!97 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!98 = !DIEnumerator(name: "BlobEvent", value: 4)
!99 = !DIEnumerator(name: "CacheEvent", value: 8)
!100 = !DIEnumerator(name: "CoderEvent", value: 16)
!101 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!102 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!103 = !DIEnumerator(name: "DrawEvent", value: 128)
!104 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!105 = !DIEnumerator(name: "ImageEvent", value: 512)
!106 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!107 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!108 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!109 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!110 = !DIEnumerator(name: "TransformEvent", value: 16384)
!111 = !DIEnumerator(name: "UserEvent", value: 36864)
!112 = !DIEnumerator(name: "WandEvent", value: 65536)
!113 = !DIEnumerator(name: "X11Event", value: 131072)
!114 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!115 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 204, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120}
!118 = !DIEnumerator(name: "UndefinedClass", value: 0)
!119 = !DIEnumerator(name: "DirectClass", value: 1)
!120 = !DIEnumerator(name: "PseudoClass", value: 2)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !122, line: 25, baseType: !7, size: 32, elements: !123)
!122 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!123 = !{!124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!124 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!125 = !DIEnumerator(name: "RGBColorspace", value: 1)
!126 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!127 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!128 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!129 = !DIEnumerator(name: "LabColorspace", value: 5)
!130 = !DIEnumerator(name: "XYZColorspace", value: 6)
!131 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!132 = !DIEnumerator(name: "YCCColorspace", value: 8)
!133 = !DIEnumerator(name: "YIQColorspace", value: 9)
!134 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!135 = !DIEnumerator(name: "YUVColorspace", value: 11)
!136 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!137 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!138 = !DIEnumerator(name: "HSBColorspace", value: 14)
!139 = !DIEnumerator(name: "HSLColorspace", value: 15)
!140 = !DIEnumerator(name: "HWBColorspace", value: 16)
!141 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!142 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!143 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!144 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!145 = !DIEnumerator(name: "LogColorspace", value: 21)
!146 = !DIEnumerator(name: "CMYColorspace", value: 22)
!147 = !DIEnumerator(name: "LuvColorspace", value: 23)
!148 = !DIEnumerator(name: "HCLColorspace", value: 24)
!149 = !DIEnumerator(name: "LCHColorspace", value: 25)
!150 = !DIEnumerator(name: "LMSColorspace", value: 26)
!151 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!152 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!153 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!154 = !DIEnumerator(name: "HSIColorspace", value: 30)
!155 = !DIEnumerator(name: "HSVColorspace", value: 31)
!156 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!157 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 25, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182}
!161 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!162 = !DIEnumerator(name: "NoCompression", value: 1)
!163 = !DIEnumerator(name: "BZipCompression", value: 2)
!164 = !DIEnumerator(name: "DXT1Compression", value: 3)
!165 = !DIEnumerator(name: "DXT3Compression", value: 4)
!166 = !DIEnumerator(name: "DXT5Compression", value: 5)
!167 = !DIEnumerator(name: "FaxCompression", value: 6)
!168 = !DIEnumerator(name: "Group4Compression", value: 7)
!169 = !DIEnumerator(name: "JPEGCompression", value: 8)
!170 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!171 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!172 = !DIEnumerator(name: "LZWCompression", value: 11)
!173 = !DIEnumerator(name: "RLECompression", value: 12)
!174 = !DIEnumerator(name: "ZipCompression", value: 13)
!175 = !DIEnumerator(name: "ZipSCompression", value: 14)
!176 = !DIEnumerator(name: "PizCompression", value: 15)
!177 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!178 = !DIEnumerator(name: "B44Compression", value: 17)
!179 = !DIEnumerator(name: "B44ACompression", value: 18)
!180 = !DIEnumerator(name: "LZMACompression", value: 19)
!181 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!182 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !184, line: 75, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194}
!186 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!187 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!188 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!189 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!190 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!191 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!192 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!193 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!194 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !196, line: 42, baseType: !7, size: 32, elements: !197)
!196 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!197 = !{!198, !199, !200, !201, !202}
!198 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!199 = !DIEnumerator(name: "SaturationIntent", value: 1)
!200 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!201 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!202 = !DIEnumerator(name: "RelativeIntent", value: 4)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !184, line: 88, baseType: !7, size: 32, elements: !204)
!204 = !{!205, !206, !207}
!205 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!206 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!207 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !209, line: 32, baseType: !7, size: 32, elements: !210)
!209 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242}
!211 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!212 = !DIEnumerator(name: "PointFilter", value: 1)
!213 = !DIEnumerator(name: "BoxFilter", value: 2)
!214 = !DIEnumerator(name: "TriangleFilter", value: 3)
!215 = !DIEnumerator(name: "HermiteFilter", value: 4)
!216 = !DIEnumerator(name: "HanningFilter", value: 5)
!217 = !DIEnumerator(name: "HammingFilter", value: 6)
!218 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!219 = !DIEnumerator(name: "GaussianFilter", value: 8)
!220 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!221 = !DIEnumerator(name: "CubicFilter", value: 10)
!222 = !DIEnumerator(name: "CatromFilter", value: 11)
!223 = !DIEnumerator(name: "MitchellFilter", value: 12)
!224 = !DIEnumerator(name: "JincFilter", value: 13)
!225 = !DIEnumerator(name: "SincFilter", value: 14)
!226 = !DIEnumerator(name: "SincFastFilter", value: 15)
!227 = !DIEnumerator(name: "KaiserFilter", value: 16)
!228 = !DIEnumerator(name: "WelshFilter", value: 17)
!229 = !DIEnumerator(name: "ParzenFilter", value: 18)
!230 = !DIEnumerator(name: "BohmanFilter", value: 19)
!231 = !DIEnumerator(name: "BartlettFilter", value: 20)
!232 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!233 = !DIEnumerator(name: "LanczosFilter", value: 22)
!234 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!235 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!236 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!237 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!238 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!239 = !DIEnumerator(name: "CosineFilter", value: 28)
!240 = !DIEnumerator(name: "SplineFilter", value: 29)
!241 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!242 = !DIEnumerator(name: "SentinelFilter", value: 31)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !184, line: 63, baseType: !7, size: 32, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252}
!245 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!246 = !DIEnumerator(name: "NoInterlace", value: 1)
!247 = !DIEnumerator(name: "LineInterlace", value: 2)
!248 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!249 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!250 = !DIEnumerator(name: "GIFInterlace", value: 5)
!251 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!252 = !DIEnumerator(name: "PNGInterlace", value: 7)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !254, line: 30, baseType: !7, size: 32, elements: !255)
!254 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!255 = !{!256, !257, !258}
!256 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!257 = !DIEnumerator(name: "LSBEndian", value: 1)
!258 = !DIEnumerator(name: "MSBEndian", value: 2)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !260, line: 77, baseType: !7, size: 32, elements: !261)
!260 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!261 = !{!262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273}
!262 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!263 = !DIEnumerator(name: "ForgetGravity", value: 0)
!264 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!265 = !DIEnumerator(name: "NorthGravity", value: 2)
!266 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!267 = !DIEnumerator(name: "WestGravity", value: 4)
!268 = !DIEnumerator(name: "CenterGravity", value: 5)
!269 = !DIEnumerator(name: "EastGravity", value: 6)
!270 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!271 = !DIEnumerator(name: "SouthGravity", value: 8)
!272 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!273 = !DIEnumerator(name: "StaticGravity", value: 10)
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !275, line: 25, baseType: !7, size: 32, elements: !276)
!275 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!276 = !{!277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344}
!277 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!278 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!279 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!280 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!281 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!282 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!283 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!284 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!285 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!286 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!287 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!288 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!289 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!290 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!291 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!292 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!293 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!294 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!295 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!296 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!297 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!298 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!299 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!300 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!301 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!302 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!303 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!304 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!305 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!306 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!307 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!308 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!309 = !DIEnumerator(name: "InCompositeOp", value: 32)
!310 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!311 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!312 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!313 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!314 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!315 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!316 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!317 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!318 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!319 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!320 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!321 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!322 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!323 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!324 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!325 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!326 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!327 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!328 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!329 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!330 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!331 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!332 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!333 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!334 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!335 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!336 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!337 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!338 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!339 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!340 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!341 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!342 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!343 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!344 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!345 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !346, line: 25, baseType: !7, size: 32, elements: !347)
!346 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!347 = !{!348, !349, !350, !351, !352}
!348 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!349 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!350 = !DIEnumerator(name: "NoneDispose", value: 1)
!351 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!352 = !DIEnumerator(name: "PreviousDispose", value: 3)
!353 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !354, line: 25, baseType: !7, size: 32, elements: !355)
!354 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!355 = !{!356, !357, !358}
!356 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!357 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!358 = !DIEnumerator(name: "RunningTimerState", value: 2)
!359 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !360, line: 31, baseType: !7, size: 32, elements: !361)
!360 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!362 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!363 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!364 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!365 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!366 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!367 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!368 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!369 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!370 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!371 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!372 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!373 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!374 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!375 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!376 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !184, line: 47, baseType: !7, size: 32, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!378 = !DIEnumerator(name: "UndefinedType", value: 0)
!379 = !DIEnumerator(name: "BilevelType", value: 1)
!380 = !DIEnumerator(name: "GrayscaleType", value: 2)
!381 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!382 = !DIEnumerator(name: "PaletteType", value: 4)
!383 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!384 = !DIEnumerator(name: "TrueColorType", value: 6)
!385 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!386 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!387 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!388 = !DIEnumerator(name: "OptimizeType", value: 10)
!389 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !360, line: 67, baseType: !7, size: 32, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399, !400, !401}
!392 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!393 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!394 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!395 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!396 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!397 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!398 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!399 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!400 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!401 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!402 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !403, line: 27, baseType: !7, size: 32, elements: !404)
!403 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!404 = !{!405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434}
!405 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!406 = !DIEnumerator(name: "RotatePreview", value: 1)
!407 = !DIEnumerator(name: "ShearPreview", value: 2)
!408 = !DIEnumerator(name: "RollPreview", value: 3)
!409 = !DIEnumerator(name: "HuePreview", value: 4)
!410 = !DIEnumerator(name: "SaturationPreview", value: 5)
!411 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!412 = !DIEnumerator(name: "GammaPreview", value: 7)
!413 = !DIEnumerator(name: "SpiffPreview", value: 8)
!414 = !DIEnumerator(name: "DullPreview", value: 9)
!415 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!416 = !DIEnumerator(name: "QuantizePreview", value: 11)
!417 = !DIEnumerator(name: "DespecklePreview", value: 12)
!418 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!419 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!420 = !DIEnumerator(name: "SharpenPreview", value: 15)
!421 = !DIEnumerator(name: "BlurPreview", value: 16)
!422 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!423 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!424 = !DIEnumerator(name: "SpreadPreview", value: 19)
!425 = !DIEnumerator(name: "SolarizePreview", value: 20)
!426 = !DIEnumerator(name: "ShadePreview", value: 21)
!427 = !DIEnumerator(name: "RaisePreview", value: 22)
!428 = !DIEnumerator(name: "SegmentPreview", value: 23)
!429 = !DIEnumerator(name: "SwirlPreview", value: 24)
!430 = !DIEnumerator(name: "ImplodePreview", value: 25)
!431 = !DIEnumerator(name: "WavePreview", value: 26)
!432 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!433 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!434 = !DIEnumerator(name: "JPEGPreview", value: 29)
!435 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 177, baseType: !7, size: 32, elements: !436)
!436 = !{!437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456}
!437 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!438 = !DIEnumerator(name: "RedChannel", value: 1)
!439 = !DIEnumerator(name: "GrayChannel", value: 1)
!440 = !DIEnumerator(name: "CyanChannel", value: 1)
!441 = !DIEnumerator(name: "GreenChannel", value: 2)
!442 = !DIEnumerator(name: "MagentaChannel", value: 2)
!443 = !DIEnumerator(name: "BlueChannel", value: 4)
!444 = !DIEnumerator(name: "YellowChannel", value: 4)
!445 = !DIEnumerator(name: "AlphaChannel", value: 8)
!446 = !DIEnumerator(name: "OpacityChannel", value: 8)
!447 = !DIEnumerator(name: "MatteChannel", value: 8)
!448 = !DIEnumerator(name: "BlackChannel", value: 32)
!449 = !DIEnumerator(name: "IndexChannel", value: 32)
!450 = !DIEnumerator(name: "CompositeChannels", value: 47)
!451 = !DIEnumerator(name: "AllChannels", value: 134217727)
!452 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!453 = !DIEnumerator(name: "RGBChannels", value: 128)
!454 = !DIEnumerator(name: "GrayChannels", value: 128)
!455 = !DIEnumerator(name: "SyncChannels", value: 256)
!456 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!457 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !458, line: 27, baseType: !7, size: 32, elements: !459)
!458 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477}
!460 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!461 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!462 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!463 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!464 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!465 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!466 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!467 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!468 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!469 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!470 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!471 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!472 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!473 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!474 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!475 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!476 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!477 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!478 = !{!479, !480, !481, !492, !710, !548, !662, !768, !622, !766, !842, !656, !844}
!479 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "RegistryInfo", file: !483, line: 67, baseType: !484)
!483 = !DIFile(filename: "apps/538.imagick_r/src/magick/registry.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "675fa5d2c15dbc0481f843749fe2dfa6")
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RegistryInfo", file: !483, line: 57, size: 192, elements: !485)
!485 = !{!486, !488, !489}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !484, file: !483, line: 60, baseType: !487, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "RegistryType", file: !12, line: 31, baseType: !11)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !484, file: !483, line: 63, baseType: !480, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !484, file: !483, line: 66, baseType: !490, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !491, line: 46, baseType: !479)
!491 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !6, line: 221, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !184, line: 150, size: 105920, elements: !495)
!495 = !{!496, !498, !500, !502, !503, !505, !507, !508, !509, !510, !511, !512, !523, !524, !525, !526, !528, !542, !544, !545, !547, !550, !551, !552, !558, !559, !560, !568, !569, !570, !571, !572, !573, !575, !577, !579, !581, !583, !585, !587, !588, !589, !590, !591, !592, !593, !601, !616, !630, !631, !632, !633, !637, !641, !645, !646, !647, !648, !649, !667, !668, !670, !671, !681, !682, !684, !685, !686, !687, !688, !689, !691, !692, !693, !694, !695, !696, !697, !699, !700, !701, !702, !703, !707, !709}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !494, file: !184, line: 153, baseType: !497, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !6, line: 209, baseType: !116)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !494, file: !184, line: 156, baseType: !499, size: 32, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !122, line: 61, baseType: !121)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !494, file: !184, line: 159, baseType: !501, size: 32, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !159, line: 49, baseType: !158)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !494, file: !184, line: 162, baseType: !490, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !494, file: !184, line: 165, baseType: !504, size: 32, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !184, line: 86, baseType: !183)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !494, file: !184, line: 168, baseType: !506, size: 32, offset: 224)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !6, line: 215, baseType: !5)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !494, file: !184, line: 169, baseType: !506, size: 32, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !494, file: !184, line: 172, baseType: !490, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !494, file: !184, line: 173, baseType: !490, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !494, file: !184, line: 174, baseType: !490, size: 64, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !494, file: !184, line: 175, baseType: !490, size: 64, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !494, file: !184, line: 178, baseType: !513, size: 64, offset: 576)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !360, line: 148, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !360, line: 131, size: 64, elements: !516)
!516 = !{!517, !520, !521, !522}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !515, file: !360, line: 143, baseType: !518, size: 16)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !6, line: 93, baseType: !519)
!519 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !515, file: !360, line: 144, baseType: !518, size: 16, offset: 16)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !515, file: !360, line: 145, baseType: !518, size: 16, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !515, file: !360, line: 146, baseType: !518, size: 16, offset: 48)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !494, file: !184, line: 179, baseType: !514, size: 64, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !494, file: !184, line: 180, baseType: !514, size: 64, offset: 704)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !494, file: !184, line: 181, baseType: !514, size: 64, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !494, file: !184, line: 184, baseType: !527, size: 64, offset: 832)
!527 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !494, file: !184, line: 187, baseType: !529, size: 768, offset: 896)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !184, line: 128, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !184, line: 121, size: 768, elements: !531)
!531 = !{!532, !539, !540, !541}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !530, file: !184, line: 124, baseType: !533, size: 192)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !184, line: 101, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !184, line: 95, size: 192, elements: !535)
!535 = !{!536, !537, !538}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !534, file: !184, line: 98, baseType: !527, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !534, file: !184, line: 99, baseType: !527, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !534, file: !184, line: 100, baseType: !527, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !530, file: !184, line: 125, baseType: !533, size: 192, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !530, file: !184, line: 126, baseType: !533, size: 192, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !530, file: !184, line: 127, baseType: !533, size: 192, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !494, file: !184, line: 190, baseType: !543, size: 32, offset: 1664)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !196, line: 49, baseType: !195)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !494, file: !184, line: 193, baseType: !480, size: 64, offset: 1728)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !494, file: !184, line: 196, baseType: !546, size: 32, offset: 1792)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !184, line: 93, baseType: !203)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !494, file: !184, line: 199, baseType: !548, size: 64, offset: 1856)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !494, file: !184, line: 200, baseType: !548, size: 64, offset: 1920)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !494, file: !184, line: 201, baseType: !548, size: 64, offset: 1984)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !494, file: !184, line: 204, baseType: !553, size: 64, offset: 2048)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !554, line: 77, baseType: !555)
!554 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !556, line: 193, baseType: !557)
!556 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!557 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !494, file: !184, line: 207, baseType: !527, size: 64, offset: 2112)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !494, file: !184, line: 208, baseType: !527, size: 64, offset: 2176)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !494, file: !184, line: 211, baseType: !561, size: 256, offset: 2240)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !260, line: 130, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !260, line: 121, size: 256, elements: !563)
!563 = !{!564, !565, !566, !567}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !562, file: !260, line: 124, baseType: !490, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !562, file: !260, line: 125, baseType: !490, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !562, file: !260, line: 128, baseType: !553, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !562, file: !260, line: 129, baseType: !553, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !494, file: !184, line: 212, baseType: !561, size: 256, offset: 2496)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !494, file: !184, line: 213, baseType: !561, size: 256, offset: 2752)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !494, file: !184, line: 216, baseType: !527, size: 64, offset: 3008)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !494, file: !184, line: 217, baseType: !527, size: 64, offset: 3072)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !494, file: !184, line: 218, baseType: !527, size: 64, offset: 3136)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !494, file: !184, line: 221, baseType: !574, size: 32, offset: 3200)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !209, line: 66, baseType: !208)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !494, file: !184, line: 224, baseType: !576, size: 32, offset: 3232)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !184, line: 73, baseType: !243)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !494, file: !184, line: 227, baseType: !578, size: 32, offset: 3264)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !254, line: 35, baseType: !253)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !494, file: !184, line: 230, baseType: !580, size: 32, offset: 3296)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !260, line: 91, baseType: !259)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !494, file: !184, line: 233, baseType: !582, size: 32, offset: 3328)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !275, line: 99, baseType: !274)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !494, file: !184, line: 236, baseType: !584, size: 32, offset: 3360)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !346, line: 32, baseType: !345)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !494, file: !184, line: 239, baseType: !586, size: 64, offset: 3392)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !494, file: !184, line: 242, baseType: !490, size: 64, offset: 3456)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !494, file: !184, line: 243, baseType: !490, size: 64, offset: 3520)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !494, file: !184, line: 246, baseType: !553, size: 64, offset: 3584)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !494, file: !184, line: 249, baseType: !490, size: 64, offset: 3648)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !494, file: !184, line: 250, baseType: !490, size: 64, offset: 3712)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !494, file: !184, line: 253, baseType: !553, size: 64, offset: 3776)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !494, file: !184, line: 256, baseType: !594, size: 192, offset: 3840)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !595, line: 68, baseType: !596)
!595 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !595, line: 62, size: 192, elements: !597)
!597 = !{!598, !599, !600}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !596, file: !595, line: 65, baseType: !527, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !596, file: !595, line: 66, baseType: !527, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !596, file: !595, line: 67, baseType: !527, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !494, file: !184, line: 259, baseType: !602, size: 512, offset: 4032)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !354, line: 51, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !354, line: 40, size: 512, elements: !604)
!604 = !{!605, !612, !613, !615}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !603, file: !354, line: 43, baseType: !606, size: 192)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !354, line: 38, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !354, line: 32, size: 192, elements: !608)
!608 = !{!609, !610, !611}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !607, file: !354, line: 35, baseType: !527, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !607, file: !354, line: 36, baseType: !527, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !607, file: !354, line: 37, baseType: !527, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !603, file: !354, line: 44, baseType: !606, size: 192, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !603, file: !354, line: 47, baseType: !614, size: 32, offset: 384)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !354, line: 30, baseType: !353)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !603, file: !354, line: 50, baseType: !490, size: 64, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !494, file: !184, line: 262, baseType: !617, size: 64, offset: 4544)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !618, line: 26, baseType: !619)
!618 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!506, !622, !624, !627, !480}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !6, line: 150, baseType: !626)
!626 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !6, line: 151, baseType: !629)
!629 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !494, file: !184, line: 265, baseType: !480, size: 64, offset: 4608)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !494, file: !184, line: 266, baseType: !480, size: 64, offset: 4672)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !494, file: !184, line: 267, baseType: !480, size: 64, offset: 4736)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !494, file: !184, line: 270, baseType: !634, size: 64, offset: 4800)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !159, line: 52, baseType: !636)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !159, line: 51, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !494, file: !184, line: 273, baseType: !638, size: 64, offset: 4864)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !6, line: 217, baseType: !640)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !6, line: 217, flags: DIFlagFwdDecl)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !494, file: !184, line: 276, baseType: !642, size: 32768, offset: 4928)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 32768, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 4096)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !494, file: !184, line: 277, baseType: !642, size: 32768, offset: 37696)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !494, file: !184, line: 278, baseType: !642, size: 32768, offset: 70464)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !494, file: !184, line: 281, baseType: !490, size: 64, offset: 103232)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !494, file: !184, line: 282, baseType: !490, size: 64, offset: 103296)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !494, file: !184, line: 285, baseType: !650, size: 448, offset: 103360)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !6, line: 219, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !19, line: 102, size: 448, elements: !652)
!652 = !{!653, !655, !657, !658, !659, !660, !661, !666}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !651, file: !19, line: 105, baseType: !654, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !19, line: 100, baseType: !18)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !651, file: !19, line: 108, baseType: !656, size: 32, offset: 32)
!656 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !651, file: !19, line: 111, baseType: !548, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !651, file: !19, line: 112, baseType: !548, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !651, file: !19, line: 115, baseType: !480, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !651, file: !19, line: 118, baseType: !506, size: 32, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !651, file: !19, line: 121, baseType: !662, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !664, line: 26, baseType: !665)
!664 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!665 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !664, line: 25, flags: DIFlagFwdDecl)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !651, file: !19, line: 124, baseType: !490, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !494, file: !184, line: 288, baseType: !506, size: 32, offset: 103808)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !494, file: !184, line: 291, baseType: !669, size: 64, offset: 103872)
!669 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !553)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !494, file: !184, line: 294, baseType: !662, size: 64, offset: 103936)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !494, file: !184, line: 297, baseType: !672, size: 256, offset: 104000)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !196, line: 40, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !196, line: 27, size: 256, elements: !674)
!674 = !{!675, !676, !677, !680}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !673, file: !196, line: 30, baseType: !548, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !673, file: !196, line: 33, baseType: !490, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !673, file: !196, line: 36, baseType: !678, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !673, file: !196, line: 39, baseType: !490, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !494, file: !184, line: 298, baseType: !672, size: 256, offset: 104256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !494, file: !184, line: 299, baseType: !683, size: 64, offset: 104512)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !494, file: !184, line: 302, baseType: !490, size: 64, offset: 104576)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !494, file: !184, line: 305, baseType: !490, size: 64, offset: 104640)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !494, file: !184, line: 308, baseType: !586, size: 64, offset: 104704)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !494, file: !184, line: 309, baseType: !586, size: 64, offset: 104768)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !494, file: !184, line: 310, baseType: !586, size: 64, offset: 104832)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !494, file: !184, line: 313, baseType: !690, size: 32, offset: 104896)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !360, line: 47, baseType: !359)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !494, file: !184, line: 316, baseType: !506, size: 32, offset: 104928)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !494, file: !184, line: 319, baseType: !514, size: 64, offset: 104960)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !494, file: !184, line: 322, baseType: !586, size: 64, offset: 105024)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !494, file: !184, line: 325, baseType: !561, size: 256, offset: 105088)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !494, file: !184, line: 328, baseType: !480, size: 64, offset: 105344)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !494, file: !184, line: 329, baseType: !480, size: 64, offset: 105408)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !494, file: !184, line: 332, baseType: !698, size: 32, offset: 105472)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !184, line: 61, baseType: !376)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !494, file: !184, line: 335, baseType: !506, size: 32, offset: 105504)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !494, file: !184, line: 338, baseType: !628, size: 64, offset: 105536)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !494, file: !184, line: 341, baseType: !506, size: 32, offset: 105600)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !494, file: !184, line: 344, baseType: !490, size: 64, offset: 105664)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !494, file: !184, line: 347, baseType: !704, size: 64, offset: 105728)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !705, line: 7, baseType: !706)
!705 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !556, line: 160, baseType: !557)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !494, file: !184, line: 350, baseType: !708, size: 32, offset: 105792)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !360, line: 79, baseType: !390)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !494, file: !184, line: 353, baseType: !490, size: 64, offset: 105856)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !6, line: 223, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !184, line: 356, size: 134336, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !748, !749, !750, !751, !752, !753, !755, !756, !757, !758, !759, !760, !771, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !839, !840, !841}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !712, file: !184, line: 359, baseType: !501, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !712, file: !184, line: 362, baseType: !504, size: 32, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !712, file: !184, line: 365, baseType: !506, size: 32, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !712, file: !184, line: 366, baseType: !506, size: 32, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !712, file: !184, line: 367, baseType: !506, size: 32, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !712, file: !184, line: 368, baseType: !506, size: 32, offset: 160)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !712, file: !184, line: 371, baseType: !548, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !712, file: !184, line: 372, baseType: !548, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !712, file: !184, line: 373, baseType: !548, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !712, file: !184, line: 374, baseType: !548, size: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !712, file: !184, line: 377, baseType: !490, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !712, file: !184, line: 378, baseType: !490, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !712, file: !184, line: 379, baseType: !490, size: 64, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !712, file: !184, line: 382, baseType: !576, size: 32, offset: 640)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !712, file: !184, line: 385, baseType: !578, size: 32, offset: 672)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !712, file: !184, line: 388, baseType: !546, size: 32, offset: 704)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !712, file: !184, line: 391, baseType: !490, size: 64, offset: 768)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !712, file: !184, line: 394, baseType: !548, size: 64, offset: 832)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !712, file: !184, line: 395, baseType: !548, size: 64, offset: 896)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !712, file: !184, line: 396, baseType: !548, size: 64, offset: 960)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !712, file: !184, line: 397, baseType: !548, size: 64, offset: 1024)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !712, file: !184, line: 398, baseType: !548, size: 64, offset: 1088)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !712, file: !184, line: 401, baseType: !527, size: 64, offset: 1152)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !712, file: !184, line: 402, baseType: !527, size: 64, offset: 1216)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !712, file: !184, line: 405, baseType: !514, size: 64, offset: 1280)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !712, file: !184, line: 406, baseType: !514, size: 64, offset: 1344)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !712, file: !184, line: 407, baseType: !514, size: 64, offset: 1408)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !712, file: !184, line: 410, baseType: !506, size: 32, offset: 1472)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !712, file: !184, line: 411, baseType: !506, size: 32, offset: 1504)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !712, file: !184, line: 414, baseType: !490, size: 64, offset: 1536)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !712, file: !184, line: 417, baseType: !499, size: 32, offset: 1600)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !712, file: !184, line: 420, baseType: !698, size: 32, offset: 1632)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !712, file: !184, line: 423, baseType: !747, size: 32, offset: 1664)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !403, line: 59, baseType: !402)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !712, file: !184, line: 426, baseType: !553, size: 64, offset: 1728)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !712, file: !184, line: 429, baseType: !506, size: 32, offset: 1792)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !712, file: !184, line: 430, baseType: !506, size: 32, offset: 1824)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !712, file: !184, line: 433, baseType: !548, size: 64, offset: 1856)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !712, file: !184, line: 434, baseType: !548, size: 64, offset: 1920)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !712, file: !184, line: 437, baseType: !754, size: 32, offset: 1984)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !6, line: 202, baseType: !435)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !712, file: !184, line: 440, baseType: !492, size: 64, offset: 2048)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !712, file: !184, line: 443, baseType: !480, size: 64, offset: 2112)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !712, file: !184, line: 446, baseType: !617, size: 64, offset: 2176)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !712, file: !184, line: 449, baseType: !480, size: 64, offset: 2240)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !712, file: !184, line: 450, baseType: !480, size: 64, offset: 2304)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !712, file: !184, line: 453, baseType: !761, size: 64, offset: 2368)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !762, line: 26, baseType: !763)
!762 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!490, !766, !768, !770}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !712, file: !184, line: 456, baseType: !772, size: 64, offset: 2432)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !774, line: 7, baseType: !775)
!774 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !776, line: 49, size: 1728, elements: !777)
!776 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!777 = !{!778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !793, !795, !796, !797, !799, !800, !802, !806, !809, !811, !814, !817, !818, !819, !820, !821}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !775, file: !776, line: 51, baseType: !656, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !775, file: !776, line: 54, baseType: !548, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !775, file: !776, line: 55, baseType: !548, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !775, file: !776, line: 56, baseType: !548, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !775, file: !776, line: 57, baseType: !548, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !775, file: !776, line: 58, baseType: !548, size: 64, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !775, file: !776, line: 59, baseType: !548, size: 64, offset: 384)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !775, file: !776, line: 60, baseType: !548, size: 64, offset: 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !775, file: !776, line: 61, baseType: !548, size: 64, offset: 512)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !775, file: !776, line: 64, baseType: !548, size: 64, offset: 576)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !775, file: !776, line: 65, baseType: !548, size: 64, offset: 640)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !775, file: !776, line: 66, baseType: !548, size: 64, offset: 704)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !775, file: !776, line: 68, baseType: !791, size: 64, offset: 768)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !776, line: 36, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !775, file: !776, line: 70, baseType: !794, size: 64, offset: 832)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !775, file: !776, line: 72, baseType: !656, size: 32, offset: 896)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !775, file: !776, line: 73, baseType: !656, size: 32, offset: 928)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !775, file: !776, line: 74, baseType: !798, size: 64, offset: 960)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !556, line: 152, baseType: !557)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !775, file: !776, line: 77, baseType: !519, size: 16, offset: 1024)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !775, file: !776, line: 78, baseType: !801, size: 8, offset: 1040)
!801 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !775, file: !776, line: 79, baseType: !803, size: 8, offset: 1048)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 8, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 1)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !775, file: !776, line: 81, baseType: !807, size: 64, offset: 1088)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !776, line: 43, baseType: null)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !775, file: !776, line: 89, baseType: !810, size: 64, offset: 1152)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !556, line: 153, baseType: !557)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !775, file: !776, line: 91, baseType: !812, size: 64, offset: 1216)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !776, line: 37, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !775, file: !776, line: 92, baseType: !815, size: 64, offset: 1280)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !776, line: 38, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !775, file: !776, line: 93, baseType: !794, size: 64, offset: 1344)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !775, file: !776, line: 94, baseType: !480, size: 64, offset: 1408)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !775, file: !776, line: 95, baseType: !490, size: 64, offset: 1472)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !775, file: !776, line: 96, baseType: !656, size: 32, offset: 1536)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !775, file: !776, line: 98, baseType: !822, size: 160, offset: 1568)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 160, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 20)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !712, file: !184, line: 459, baseType: !480, size: 64, offset: 2496)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !712, file: !184, line: 462, baseType: !490, size: 64, offset: 2560)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !712, file: !184, line: 465, baseType: !642, size: 32768, offset: 2624)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !712, file: !184, line: 466, baseType: !642, size: 32768, offset: 35392)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !712, file: !184, line: 467, baseType: !642, size: 32768, offset: 68160)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !712, file: !184, line: 468, baseType: !642, size: 32768, offset: 100928)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !712, file: !184, line: 471, baseType: !506, size: 32, offset: 133696)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !712, file: !184, line: 474, baseType: !548, size: 64, offset: 133760)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !712, file: !184, line: 477, baseType: !490, size: 64, offset: 133824)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !712, file: !184, line: 478, baseType: !490, size: 64, offset: 133888)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !712, file: !184, line: 481, baseType: !514, size: 64, offset: 133952)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !712, file: !184, line: 484, baseType: !490, size: 64, offset: 134016)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !712, file: !184, line: 487, baseType: !838, size: 32, offset: 134080)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !458, line: 47, baseType: !457)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !712, file: !184, line: 490, baseType: !514, size: 64, offset: 134112)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !712, file: !184, line: 493, baseType: !480, size: 64, offset: 134208)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !712, file: !184, line: 496, baseType: !506, size: 32, offset: 134272)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "SplayTreeInfo", file: !846, line: 26, baseType: !847)
!846 = !DIFile(filename: "apps/538.imagick_r/src/magick/splay-tree.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9016e3627c0f26bd31d286f50189c16b")
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SplayTreeInfo", file: !846, line: 25, flags: DIFlagFwdDecl)
!848 = !{!0, !849}
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(name: "registry_semaphore", scope: !2, file: !483, line: 76, type: !662, isLocal: true, isDefinition: true)
!851 = !{i32 7, !"Dwarf Version", i32 5}
!852 = !{i32 2, !"Debug Info Version", i32 3}
!853 = !{i32 1, !"wchar_size", i32 4}
!854 = !{i32 7, !"PIC Level", i32 2}
!855 = !{i32 7, !"PIE Level", i32 2}
!856 = !{i32 7, !"uwtable", i32 2}
!857 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!858 = distinct !DISubprogram(name: "DefineImageRegistry", scope: !483, file: !483, line: 105, type: !859, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !863)
!859 = !DISubroutineType(types: !860)
!860 = !{!506, !861, !622, !862}
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!863 = !{!864, !865, !866, !867, !868, !869}
!864 = !DILocalVariable(name: "type", arg: 1, scope: !858, file: !483, line: 105, type: !861)
!865 = !DILocalVariable(name: "option", arg: 2, scope: !858, file: !483, line: 106, type: !622)
!866 = !DILocalVariable(name: "exception", arg: 3, scope: !858, file: !483, line: 106, type: !862)
!867 = !DILocalVariable(name: "key", scope: !858, file: !483, line: 109, type: !642)
!868 = !DILocalVariable(name: "value", scope: !858, file: !483, line: 110, type: !642)
!869 = !DILocalVariable(name: "p", scope: !858, file: !483, line: 113, type: !548)
!870 = !DILocation(line: 0, scope: !858)
!871 = !DILocation(line: 108, column: 3, scope: !858)
!872 = !DILocation(line: 109, column: 5, scope: !858)
!873 = !DILocation(line: 110, column: 5, scope: !858)
!874 = !DILocation(line: 116, column: 10, scope: !858)
!875 = !DILocation(line: 117, column: 8, scope: !876)
!876 = distinct !DILexicalBlock(scope: !858, file: !483, line: 117, column: 3)
!877 = !DILocation(line: 0, scope: !876)
!878 = !DILocation(line: 117, column: 15, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !483, line: 117, column: 3)
!880 = !{!881, !881, i64 0}
!881 = !{!"omnipotent char", !882, i64 0}
!882 = !{!"Simple C/C++ TBAA"}
!883 = !DILocation(line: 117, column: 3, scope: !876)
!884 = !DILocation(line: 117, column: 28, scope: !879)
!885 = !DILocation(line: 117, column: 3, scope: !879)
!886 = distinct !{!886, !883, !887, !888, !889}
!887 = !DILocation(line: 119, column: 7, scope: !876)
!888 = !{!"llvm.loop.mustprogress"}
!889 = !{!"llvm.loop.unroll.disable"}
!890 = !DILocation(line: 120, column: 9, scope: !858)
!891 = !DILocation(line: 121, column: 10, scope: !892)
!892 = distinct !DILexicalBlock(scope: !858, file: !483, line: 121, column: 7)
!893 = !DILocation(line: 121, column: 7, scope: !858)
!894 = !DILocation(line: 122, column: 36, scope: !892)
!895 = !DILocation(line: 122, column: 12, scope: !892)
!896 = !DILocation(line: 122, column: 5, scope: !892)
!897 = !DILocation(line: 123, column: 5, scope: !858)
!898 = !DILocation(line: 124, column: 10, scope: !858)
!899 = !DILocation(line: 125, column: 1, scope: !858)
!900 = !DILocation(line: 124, column: 3, scope: !858)
!901 = !DISubprogram(name: "CopyMagickString", scope: !902, file: !902, line: 78, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!902 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!903 = !DISubroutineType(types: !904)
!904 = !{!490, !548, !622, !770}
!905 = !{}
!906 = distinct !DISubprogram(name: "SetImageRegistry", scope: !483, file: !483, line: 454, type: !907, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{!506, !861, !622, !768, !862}
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917, !920, !922, !924, !927}
!910 = !DILocalVariable(name: "type", arg: 1, scope: !906, file: !483, line: 454, type: !861)
!911 = !DILocalVariable(name: "key", arg: 2, scope: !906, file: !483, line: 455, type: !622)
!912 = !DILocalVariable(name: "value", arg: 3, scope: !906, file: !483, line: 455, type: !768)
!913 = !DILocalVariable(name: "exception", arg: 4, scope: !906, file: !483, line: 455, type: !862)
!914 = !DILocalVariable(name: "status", scope: !906, file: !483, line: 458, type: !506)
!915 = !DILocalVariable(name: "registry_info", scope: !906, file: !483, line: 461, type: !481)
!916 = !DILocalVariable(name: "clone_value", scope: !906, file: !483, line: 464, type: !480)
!917 = !DILocalVariable(name: "string", scope: !918, file: !483, line: 477, type: !622)
!918 = distinct !DILexicalBlock(scope: !919, file: !483, line: 475, column: 5)
!919 = distinct !DILexicalBlock(scope: !906, file: !483, line: 472, column: 3)
!920 = !DILocalVariable(name: "image", scope: !921, file: !483, line: 486, type: !766)
!921 = distinct !DILexicalBlock(scope: !919, file: !483, line: 484, column: 5)
!922 = !DILocalVariable(name: "image_info", scope: !923, file: !483, line: 501, type: !842)
!923 = distinct !DILexicalBlock(scope: !919, file: !483, line: 499, column: 5)
!924 = !DILocalVariable(name: "message", scope: !925, file: !483, line: 518, type: !548)
!925 = distinct !DILexicalBlock(scope: !926, file: !483, line: 518, column: 5)
!926 = distinct !DILexicalBlock(scope: !906, file: !483, line: 517, column: 7)
!927 = !DILocalVariable(name: "exception", scope: !925, file: !483, line: 518, type: !650)
!928 = !DILocation(line: 0, scope: !906)
!929 = !DILocation(line: 466, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !906, file: !483, line: 466, column: 7)
!931 = !DILocation(line: 466, column: 24, scope: !930)
!932 = !DILocation(line: 466, column: 7, scope: !906)
!933 = !DILocation(line: 467, column: 12, scope: !930)
!934 = !DILocation(line: 467, column: 5, scope: !930)
!935 = !DILocation(line: 468, column: 13, scope: !936)
!936 = distinct !DILexicalBlock(scope: !906, file: !483, line: 468, column: 7)
!937 = !DILocation(line: 468, column: 7, scope: !906)
!938 = !DILocation(line: 471, column: 3, scope: !906)
!939 = !DILocation(line: 0, scope: !918)
!940 = !DILocation(line: 480, column: 28, scope: !918)
!941 = !DILocation(line: 0, scope: !921)
!942 = !DILocation(line: 489, column: 18, scope: !943)
!943 = distinct !DILexicalBlock(scope: !921, file: !483, line: 489, column: 11)
!944 = !{!945, !946, i64 13080}
!945 = !{!"_Image", !881, i64 0, !881, i64 4, !881, i64 8, !946, i64 16, !881, i64 24, !881, i64 28, !881, i64 32, !946, i64 40, !946, i64 48, !946, i64 56, !946, i64 64, !947, i64 72, !948, i64 80, !948, i64 88, !948, i64 96, !950, i64 104, !951, i64 112, !881, i64 208, !947, i64 216, !881, i64 224, !947, i64 232, !947, i64 240, !947, i64 248, !946, i64 256, !950, i64 264, !950, i64 272, !953, i64 280, !953, i64 312, !953, i64 344, !950, i64 376, !950, i64 384, !950, i64 392, !881, i64 400, !881, i64 404, !881, i64 408, !881, i64 412, !881, i64 416, !881, i64 420, !947, i64 424, !946, i64 432, !946, i64 440, !946, i64 448, !946, i64 456, !946, i64 464, !946, i64 472, !954, i64 480, !955, i64 504, !947, i64 568, !947, i64 576, !947, i64 584, !947, i64 592, !947, i64 600, !947, i64 608, !881, i64 616, !881, i64 4712, !881, i64 8808, !946, i64 12904, !946, i64 12912, !957, i64 12920, !881, i64 12976, !946, i64 12984, !947, i64 12992, !959, i64 13000, !959, i64 13032, !947, i64 13064, !946, i64 13072, !946, i64 13080, !947, i64 13088, !947, i64 13096, !947, i64 13104, !881, i64 13112, !881, i64 13116, !948, i64 13120, !947, i64 13128, !953, i64 13136, !947, i64 13168, !947, i64 13176, !881, i64 13184, !881, i64 13188, !960, i64 13192, !881, i64 13200, !946, i64 13208, !946, i64 13216, !881, i64 13224, !946, i64 13232}
!946 = !{!"long", !881, i64 0}
!947 = !{!"any pointer", !881, i64 0}
!948 = !{!"_PixelPacket", !949, i64 0, !949, i64 2, !949, i64 4, !949, i64 6}
!949 = !{!"short", !881, i64 0}
!950 = !{!"double", !881, i64 0}
!951 = !{!"_ChromaticityInfo", !952, i64 0, !952, i64 24, !952, i64 48, !952, i64 72}
!952 = !{!"_PrimaryInfo", !950, i64 0, !950, i64 8, !950, i64 16}
!953 = !{!"_RectangleInfo", !946, i64 0, !946, i64 8, !946, i64 16, !946, i64 24}
!954 = !{!"_ErrorInfo", !950, i64 0, !950, i64 8, !950, i64 16}
!955 = !{!"_TimerInfo", !956, i64 0, !956, i64 24, !881, i64 48, !946, i64 56}
!956 = !{!"_Timer", !950, i64 0, !950, i64 8, !950, i64 16}
!957 = !{!"_ExceptionInfo", !881, i64 0, !958, i64 4, !947, i64 8, !947, i64 16, !947, i64 24, !881, i64 32, !947, i64 40, !946, i64 48}
!958 = !{!"int", !881, i64 0}
!959 = !{!"_ProfileInfo", !947, i64 0, !946, i64 8, !947, i64 16, !946, i64 24}
!960 = !{!"long long", !881, i64 0}
!961 = !DILocation(line: 489, column: 28, scope: !943)
!962 = !DILocation(line: 489, column: 11, scope: !921)
!963 = !DILocation(line: 495, column: 28, scope: !921)
!964 = !DILocation(line: 491, column: 18, scope: !965)
!965 = distinct !DILexicalBlock(scope: !943, file: !483, line: 490, column: 9)
!966 = !DILocation(line: 0, scope: !923)
!967 = !DILocation(line: 504, column: 23, scope: !968)
!968 = distinct !DILexicalBlock(scope: !923, file: !483, line: 504, column: 11)
!969 = !{!970, !946, i64 16752}
!970 = !{!"_ImageInfo", !881, i64 0, !881, i64 4, !881, i64 8, !881, i64 12, !881, i64 16, !881, i64 20, !947, i64 24, !947, i64 32, !947, i64 40, !947, i64 48, !946, i64 56, !946, i64 64, !946, i64 72, !881, i64 80, !881, i64 84, !881, i64 88, !946, i64 96, !947, i64 104, !947, i64 112, !947, i64 120, !947, i64 128, !947, i64 136, !950, i64 144, !950, i64 152, !948, i64 160, !948, i64 168, !948, i64 176, !881, i64 184, !881, i64 188, !946, i64 192, !881, i64 200, !881, i64 204, !881, i64 208, !946, i64 216, !881, i64 224, !881, i64 228, !947, i64 232, !947, i64 240, !881, i64 248, !947, i64 256, !947, i64 264, !947, i64 272, !947, i64 280, !947, i64 288, !947, i64 296, !947, i64 304, !947, i64 312, !946, i64 320, !881, i64 328, !881, i64 4424, !881, i64 8520, !881, i64 12616, !881, i64 16712, !947, i64 16720, !946, i64 16728, !946, i64 16736, !948, i64 16744, !946, i64 16752, !881, i64 16760, !948, i64 16764, !947, i64 16776, !881, i64 16784}
!971 = !DILocation(line: 504, column: 33, scope: !968)
!972 = !DILocation(line: 504, column: 11, scope: !923)
!973 = !DILocation(line: 510, column: 28, scope: !923)
!974 = !DILocation(line: 506, column: 18, scope: !975)
!975 = distinct !DILexicalBlock(scope: !968, file: !483, line: 505, column: 9)
!976 = !DILocation(line: 514, column: 19, scope: !977)
!977 = distinct !DILexicalBlock(scope: !906, file: !483, line: 514, column: 7)
!978 = !DILocation(line: 514, column: 7, scope: !906)
!979 = !DILocation(line: 516, column: 34, scope: !906)
!980 = !DILocation(line: 517, column: 21, scope: !926)
!981 = !DILocation(line: 517, column: 7, scope: !906)
!982 = !DILocation(line: 518, column: 5, scope: !925)
!983 = !{!958, !958, i64 0}
!984 = !DILocation(line: 0, scope: !925)
!985 = !DILocation(line: 519, column: 10, scope: !906)
!986 = !DILocation(line: 520, column: 22, scope: !906)
!987 = !{!988, !881, i64 0}
!988 = !{!"_RegistryInfo", !881, i64 0, !947, i64 8, !946, i64 16}
!989 = !DILocation(line: 521, column: 18, scope: !906)
!990 = !DILocation(line: 521, column: 23, scope: !906)
!991 = !{!988, !947, i64 8}
!992 = !DILocation(line: 522, column: 18, scope: !906)
!993 = !DILocation(line: 522, column: 27, scope: !906)
!994 = !{!988, !946, i64 16}
!995 = !DILocation(line: 523, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !906, file: !483, line: 523, column: 7)
!997 = !{!947, !947, i64 0}
!998 = !DILocation(line: 523, column: 16, scope: !996)
!999 = !DILocation(line: 523, column: 7, scope: !906)
!1000 = !DILocation(line: 525, column: 11, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !483, line: 525, column: 11)
!1002 = distinct !DILexicalBlock(scope: !996, file: !483, line: 524, column: 5)
!1003 = !DILocation(line: 525, column: 30, scope: !1001)
!1004 = !DILocation(line: 525, column: 11, scope: !1002)
!1005 = !DILocation(line: 526, column: 9, scope: !1001)
!1006 = !DILocation(line: 527, column: 25, scope: !1002)
!1007 = !DILocation(line: 527, column: 7, scope: !1002)
!1008 = !DILocation(line: 528, column: 11, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1002, file: !483, line: 528, column: 11)
!1010 = !DILocation(line: 528, column: 20, scope: !1009)
!1011 = !DILocation(line: 528, column: 11, scope: !1002)
!1012 = !DILocation(line: 529, column: 18, scope: !1009)
!1013 = !DILocation(line: 529, column: 17, scope: !1009)
!1014 = !DILocation(line: 529, column: 9, scope: !1009)
!1015 = !DILocation(line: 531, column: 27, scope: !1002)
!1016 = !DILocation(line: 531, column: 7, scope: !1002)
!1017 = !DILocation(line: 533, column: 30, scope: !906)
!1018 = !DILocation(line: 532, column: 5, scope: !1002)
!1019 = !DILocation(line: 533, column: 39, scope: !906)
!1020 = !DILocation(line: 533, column: 10, scope: !906)
!1021 = !DILocation(line: 534, column: 3, scope: !906)
!1022 = !DILocation(line: 535, column: 1, scope: !906)
!1023 = distinct !DISubprogram(name: "DeleteImageRegistry", scope: !483, file: !483, line: 149, type: !1024, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1026)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!506, !622}
!1026 = !{!1027}
!1027 = !DILocalVariable(name: "key", arg: 1, scope: !1023, file: !483, line: 149, type: !622)
!1028 = !DILocation(line: 0, scope: !1023)
!1029 = !DILocation(line: 151, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1023, file: !483, line: 151, column: 7)
!1031 = !DILocation(line: 151, column: 24, scope: !1030)
!1032 = !DILocation(line: 151, column: 7, scope: !1023)
!1033 = !DILocation(line: 152, column: 12, scope: !1030)
!1034 = !DILocation(line: 152, column: 5, scope: !1030)
!1035 = !DILocation(line: 153, column: 7, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1023, file: !483, line: 153, column: 7)
!1037 = !DILocation(line: 153, column: 16, scope: !1036)
!1038 = !DILocation(line: 153, column: 7, scope: !1023)
!1039 = !DILocation(line: 155, column: 10, scope: !1023)
!1040 = !DILocation(line: 155, column: 3, scope: !1023)
!1041 = !DILocation(line: 156, column: 1, scope: !1023)
!1042 = !DISubprogram(name: "IsEventLogging", scope: !92, file: !92, line: 80, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!506}
!1045 = !DISubprogram(name: "LogMagickEvent", scope: !92, file: !92, line: 83, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!506, !1048, !622, !622, !770, !622, null}
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1049)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !92, line: 58, baseType: !91)
!1050 = !DISubprogram(name: "DeleteNodeFromSplayTree", scope: !846, file: !846, line: 31, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!506, !844, !768}
!1053 = distinct !DISubprogram(name: "GetImageRegistry", scope: !483, file: !483, line: 185, type: !1054, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1056)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!480, !861, !622, !862}
!1056 = !{!1057, !1058, !1059, !1060, !1061}
!1057 = !DILocalVariable(name: "type", arg: 1, scope: !1053, file: !483, line: 185, type: !861)
!1058 = !DILocalVariable(name: "key", arg: 2, scope: !1053, file: !483, line: 185, type: !622)
!1059 = !DILocalVariable(name: "exception", arg: 3, scope: !1053, file: !483, line: 186, type: !862)
!1060 = !DILocalVariable(name: "value", scope: !1053, file: !483, line: 189, type: !480)
!1061 = !DILocalVariable(name: "registry_info", scope: !1053, file: !483, line: 192, type: !481)
!1062 = !DILocation(line: 0, scope: !1053)
!1063 = !DILocation(line: 194, column: 7, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1053, file: !483, line: 194, column: 7)
!1065 = !DILocation(line: 194, column: 24, scope: !1064)
!1066 = !DILocation(line: 194, column: 7, scope: !1053)
!1067 = !DILocation(line: 195, column: 12, scope: !1064)
!1068 = !DILocation(line: 195, column: 5, scope: !1064)
!1069 = !DILocation(line: 196, column: 7, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1053, file: !483, line: 196, column: 7)
!1071 = !DILocation(line: 196, column: 16, scope: !1070)
!1072 = !DILocation(line: 196, column: 7, scope: !1053)
!1073 = !DILocation(line: 198, column: 34, scope: !1053)
!1074 = !DILocation(line: 199, column: 21, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1053, file: !483, line: 199, column: 7)
!1076 = !DILocation(line: 199, column: 7, scope: !1053)
!1077 = !DILocation(line: 201, column: 14, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !483, line: 200, column: 5)
!1079 = !DILocation(line: 203, column: 7, scope: !1078)
!1080 = !DILocation(line: 206, column: 3, scope: !1053)
!1081 = !DILocation(line: 210, column: 34, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !483, line: 210, column: 11)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !483, line: 209, column: 5)
!1084 = distinct !DILexicalBlock(scope: !1053, file: !483, line: 207, column: 3)
!1085 = !DILocation(line: 210, column: 16, scope: !1082)
!1086 = !DILocation(line: 210, column: 11, scope: !1083)
!1087 = !DILocation(line: 211, column: 64, scope: !1082)
!1088 = !DILocation(line: 211, column: 24, scope: !1082)
!1089 = !DILocation(line: 211, column: 9, scope: !1082)
!1090 = !DILocation(line: 216, column: 34, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !483, line: 216, column: 11)
!1092 = distinct !DILexicalBlock(scope: !1084, file: !483, line: 215, column: 5)
!1093 = !DILocation(line: 216, column: 16, scope: !1091)
!1094 = !DILocation(line: 216, column: 11, scope: !1092)
!1095 = !DILocation(line: 217, column: 68, scope: !1091)
!1096 = !DILocation(line: 217, column: 24, scope: !1091)
!1097 = !DILocation(line: 217, column: 9, scope: !1091)
!1098 = !DILocation(line: 222, column: 30, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1084, file: !483, line: 221, column: 5)
!1100 = !DILocation(line: 222, column: 7, scope: !1099)
!1101 = !DILocation(line: 227, column: 28, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !483, line: 225, column: 9)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !483, line: 223, column: 7)
!1104 = !DILocation(line: 227, column: 36, scope: !1102)
!1105 = !DILocation(line: 226, column: 27, scope: !1102)
!1106 = !DILocation(line: 228, column: 11, scope: !1102)
!1107 = !DILocation(line: 233, column: 28, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !483, line: 231, column: 9)
!1109 = !DILocation(line: 233, column: 36, scope: !1108)
!1110 = !DILocation(line: 232, column: 27, scope: !1108)
!1111 = !DILocation(line: 234, column: 11, scope: !1108)
!1112 = !DILocation(line: 238, column: 65, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1103, file: !483, line: 237, column: 9)
!1114 = !DILocation(line: 238, column: 26, scope: !1113)
!1115 = !DILocation(line: 239, column: 11, scope: !1113)
!1116 = !DILocation(line: 250, column: 1, scope: !1053)
!1117 = !DISubprogram(name: "GetValueFromSplayTree", scope: !846, file: !846, line: 36, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!768, !844, !768}
!1120 = !DISubprogram(name: "ThrowMagickException", scope: !19, file: !19, line: 156, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!506, !862, !622, !622, !770, !1123, !622, !622, null}
!1123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!1124 = !DISubprogram(name: "CloneImageList", scope: !1125, file: !1125, line: 26, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1125 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!492, !766, !862}
!1128 = !DISubprogram(name: "CloneImageInfo", scope: !184, file: !184, line: 521, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!710, !842}
!1131 = !DISubprogram(name: "ConstantString", scope: !902, file: !902, line: 45, type: !1132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!548, !622}
!1134 = distinct !DISubprogram(name: "GetNextImageRegistry", scope: !483, file: !483, line: 270, type: !1135, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!548}
!1137 = !DILocation(line: 272, column: 7, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !483, line: 272, column: 7)
!1139 = !DILocation(line: 272, column: 24, scope: !1138)
!1140 = !DILocation(line: 272, column: 7, scope: !1134)
!1141 = !DILocation(line: 273, column: 12, scope: !1138)
!1142 = !DILocation(line: 273, column: 5, scope: !1138)
!1143 = !DILocation(line: 274, column: 7, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1134, file: !483, line: 274, column: 7)
!1145 = !DILocation(line: 274, column: 16, scope: !1144)
!1146 = !DILocation(line: 274, column: 7, scope: !1134)
!1147 = !DILocation(line: 276, column: 19, scope: !1134)
!1148 = !DILocation(line: 276, column: 3, scope: !1134)
!1149 = !DILocation(line: 0, scope: !1134)
!1150 = !DILocation(line: 277, column: 1, scope: !1134)
!1151 = !DISubprogram(name: "GetNextKeyInSplayTree", scope: !846, file: !846, line: 34, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!768, !844}
!1154 = distinct !DISubprogram(name: "RegistryComponentGenesis", scope: !483, file: !483, line: 297, type: !1043, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!1155 = !DILocation(line: 299, column: 7, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1154, file: !483, line: 299, column: 7)
!1157 = !DILocation(line: 299, column: 26, scope: !1156)
!1158 = !DILocation(line: 299, column: 7, scope: !1154)
!1159 = !DILocation(line: 300, column: 24, scope: !1156)
!1160 = !DILocation(line: 300, column: 23, scope: !1156)
!1161 = !DILocation(line: 300, column: 5, scope: !1156)
!1162 = !DILocation(line: 301, column: 3, scope: !1154)
!1163 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !664, file: !664, line: 32, type: !1164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!662}
!1166 = distinct !DISubprogram(name: "RegistryComponentTerminus", scope: !483, file: !483, line: 322, type: !1167, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null}
!1169 = !DILocation(line: 324, column: 7, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !483, line: 324, column: 7)
!1171 = !DILocation(line: 324, column: 26, scope: !1170)
!1172 = !DILocation(line: 324, column: 7, scope: !1166)
!1173 = !DILocation(line: 325, column: 5, scope: !1170)
!1174 = !DILocation(line: 326, column: 21, scope: !1166)
!1175 = !DILocation(line: 326, column: 3, scope: !1166)
!1176 = !DILocation(line: 327, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1166, file: !483, line: 327, column: 7)
!1178 = !DILocation(line: 327, column: 24, scope: !1177)
!1179 = !DILocation(line: 327, column: 7, scope: !1166)
!1180 = !DILocation(line: 328, column: 12, scope: !1177)
!1181 = !DILocation(line: 328, column: 5, scope: !1177)
!1182 = !DILocation(line: 329, column: 7, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1166, file: !483, line: 329, column: 7)
!1184 = !DILocation(line: 329, column: 16, scope: !1183)
!1185 = !DILocation(line: 329, column: 7, scope: !1166)
!1186 = !DILocation(line: 330, column: 14, scope: !1183)
!1187 = !DILocation(line: 330, column: 13, scope: !1183)
!1188 = !DILocation(line: 330, column: 5, scope: !1183)
!1189 = !DILocation(line: 331, column: 23, scope: !1166)
!1190 = !DILocation(line: 331, column: 3, scope: !1166)
!1191 = !DILocation(line: 332, column: 3, scope: !1166)
!1192 = !DILocation(line: 333, column: 1, scope: !1166)
!1193 = !DISubprogram(name: "ActivateSemaphoreInfo", scope: !664, file: !664, line: 35, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !1196}
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!1197 = !DISubprogram(name: "LockSemaphoreInfo", scope: !664, file: !664, line: 37, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !662}
!1200 = !DISubprogram(name: "DestroySplayTree", scope: !846, file: !846, line: 44, type: !1201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!844, !844}
!1203 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !664, file: !664, line: 39, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1204 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !664, file: !664, line: 36, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1205 = distinct !DISubprogram(name: "RemoveImageRegistry", scope: !483, file: !483, line: 358, type: !1206, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1208)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!480, !622}
!1208 = !{!1209}
!1209 = !DILocalVariable(name: "key", arg: 1, scope: !1205, file: !483, line: 358, type: !622)
!1210 = !DILocation(line: 0, scope: !1205)
!1211 = !DILocation(line: 360, column: 7, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1205, file: !483, line: 360, column: 7)
!1213 = !DILocation(line: 360, column: 24, scope: !1212)
!1214 = !DILocation(line: 360, column: 7, scope: !1205)
!1215 = !DILocation(line: 361, column: 12, scope: !1212)
!1216 = !DILocation(line: 361, column: 5, scope: !1212)
!1217 = !DILocation(line: 362, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1205, file: !483, line: 362, column: 7)
!1219 = !DILocation(line: 362, column: 16, scope: !1218)
!1220 = !DILocation(line: 362, column: 7, scope: !1205)
!1221 = !DILocation(line: 364, column: 10, scope: !1205)
!1222 = !DILocation(line: 364, column: 3, scope: !1205)
!1223 = !DILocation(line: 365, column: 1, scope: !1205)
!1224 = !DISubprogram(name: "RemoveNodeFromSplayTree", scope: !846, file: !846, line: 53, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!480, !844, !768}
!1227 = distinct !DISubprogram(name: "ResetImageRegistryIterator", scope: !483, file: !483, line: 387, type: !1167, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!1228 = !DILocation(line: 389, column: 7, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1227, file: !483, line: 389, column: 7)
!1230 = !DILocation(line: 389, column: 24, scope: !1229)
!1231 = !DILocation(line: 389, column: 7, scope: !1227)
!1232 = !DILocation(line: 390, column: 12, scope: !1229)
!1233 = !DILocation(line: 390, column: 5, scope: !1229)
!1234 = !DILocation(line: 391, column: 7, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1227, file: !483, line: 391, column: 7)
!1236 = !DILocation(line: 391, column: 16, scope: !1235)
!1237 = !DILocation(line: 391, column: 7, scope: !1227)
!1238 = !DILocation(line: 393, column: 3, scope: !1227)
!1239 = !DILocation(line: 394, column: 1, scope: !1227)
!1240 = !DISubprogram(name: "ResetSplayTreeIterator", scope: !846, file: !846, line: 55, type: !1241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{null, !844}
!1243 = !DISubprogram(name: "AcquireMagickMemory", scope: !1244, file: !1244, line: 40, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1244 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!480, !770}
!1247 = !DISubprogram(name: "GetExceptionInfo", scope: !19, file: !19, line: 166, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !862}
!1250 = !DISubprogram(name: "GetExceptionMessage", scope: !19, file: !19, line: 137, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!548, !1253}
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!1254 = !DISubprogram(name: "DestroyString", scope: !902, file: !902, line: 46, type: !1255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!548, !548}
!1257 = !DISubprogram(name: "CatchException", scope: !19, file: !19, line: 164, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1258 = !DISubprogram(name: "DestroyExceptionInfo", scope: !19, file: !19, line: 148, type: !1259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!862, !862}
!1261 = !DISubprogram(name: "MagickCoreTerminus", scope: !1262, file: !1262, line: 147, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1262 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1263 = !DISubprogram(name: "ResetMagickMemory", scope: !1244, file: !1244, line: 52, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!480, !480, !656, !770}
!1266 = !DISubprogram(name: "NewSplayTree", scope: !846, file: !846, line: 45, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!844, !1269, !1272, !1272}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!656, !768, !768}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!480, !480}
!1275 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1244, file: !1244, line: 51, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1276 = distinct !DISubprogram(name: "DestroyRegistryNode", scope: !483, file: !483, line: 426, type: !1273, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1277)
!1277 = !{!1278, !1279}
!1278 = !DILocalVariable(name: "registry_info", arg: 1, scope: !1276, file: !483, line: 426, type: !480)
!1279 = !DILocalVariable(name: "p", scope: !1276, file: !483, line: 429, type: !481)
!1280 = !DILocation(line: 0, scope: !1276)
!1281 = !DILocation(line: 432, column: 14, scope: !1276)
!1282 = !DILocation(line: 432, column: 3, scope: !1276)
!1283 = !DILocation(line: 437, column: 42, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !483, line: 436, column: 5)
!1285 = distinct !DILexicalBlock(scope: !1276, file: !483, line: 433, column: 3)
!1286 = !DILocation(line: 437, column: 16, scope: !1284)
!1287 = !DILocation(line: 437, column: 15, scope: !1284)
!1288 = !DILocation(line: 438, column: 7, scope: !1284)
!1289 = !DILocation(line: 442, column: 55, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1285, file: !483, line: 441, column: 5)
!1291 = !DILocation(line: 442, column: 25, scope: !1290)
!1292 = !DILocation(line: 442, column: 15, scope: !1290)
!1293 = !DILocation(line: 443, column: 7, scope: !1290)
!1294 = !DILocation(line: 447, column: 59, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1285, file: !483, line: 446, column: 5)
!1296 = !DILocation(line: 447, column: 25, scope: !1295)
!1297 = !DILocation(line: 447, column: 15, scope: !1295)
!1298 = !DILocation(line: 448, column: 7, scope: !1295)
!1299 = !DILocation(line: 451, column: 10, scope: !1276)
!1300 = !DILocation(line: 451, column: 3, scope: !1276)
!1301 = !DISubprogram(name: "AddValueToSplayTree", scope: !846, file: !846, line: 29, type: !1302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!506, !844, !768, !768}
!1304 = !DISubprogram(name: "DestroyImageList", scope: !1125, file: !1125, line: 28, type: !1305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!492, !492}
!1307 = !DISubprogram(name: "DestroyImageInfo", scope: !184, file: !184, line: 522, type: !1308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !905)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!710, !710}
