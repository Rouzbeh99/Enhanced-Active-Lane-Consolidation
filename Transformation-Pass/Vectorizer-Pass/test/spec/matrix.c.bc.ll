; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/matrix.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._MatrixInfo = type { i32, i64, i64, i64, i64, i32, i32, [4096 x i8], i32, ptr, ptr, i64 }
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

@.str = private unnamed_addr constant [19 x i8] c"MAGICK_SYNCHRONIZE\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/matrix.c\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"CacheResourcesExhausted\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"matrix cache\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"UnableToExtendMatrixCache\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireMatrixInfo(i64 noundef %columns, i64 noundef %rows, i64 noundef %stride, ptr noundef %exception) local_unnamed_addr #0 !dbg !860 {
entry:
  call void @llvm.dbg.value(metadata i64 %columns, metadata !865, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i64 %rows, metadata !866, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i64 %stride, metadata !867, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata ptr %exception, metadata !868, metadata !DIExpression()), !dbg !872
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 4176) #17, !dbg !873
  call void @llvm.dbg.value(metadata ptr %call, metadata !871, metadata !DIExpression()), !dbg !872
  %cmp = icmp eq ptr %call, null, !dbg !874
  br i1 %cmp, label %cleanup, label %if.end, !dbg !876

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 4176) #18, !dbg !877
  %signature = getelementptr inbounds %struct._MatrixInfo, ptr %call, i64 0, i32 11, !dbg !878
  store i64 2880220587, ptr %signature, align 8, !dbg !879, !tbaa !880
  %columns2 = getelementptr inbounds %struct._MatrixInfo, ptr %call, i64 0, i32 1, !dbg !888
  store i64 %columns, ptr %columns2, align 8, !dbg !889, !tbaa !890
  %rows3 = getelementptr inbounds %struct._MatrixInfo, ptr %call, i64 0, i32 2, !dbg !891
  store i64 %rows, ptr %rows3, align 8, !dbg !892, !tbaa !893
  %stride4 = getelementptr inbounds %struct._MatrixInfo, ptr %call, i64 0, i32 3, !dbg !894
  store i64 %stride, ptr %stride4, align 8, !dbg !895, !tbaa !896
  %call5 = tail call ptr @AllocateSemaphoreInfo() #18, !dbg !897
  %semaphore = getelementptr inbounds %struct._MatrixInfo, ptr %call, i64 0, i32 10, !dbg !898
  store ptr %call5, ptr %semaphore, align 8, !dbg !899, !tbaa !900
  %call6 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str) #18, !dbg !901
  call void @llvm.dbg.value(metadata ptr %call6, metadata !869, metadata !DIExpression()), !dbg !872
  %cmp7.not = icmp eq ptr %call6, null, !dbg !902
  br i1 %cmp7.not, label %if.end12, label %if.then8, !dbg !904

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 @IsStringTrue(ptr noundef nonnull %call6) #18, !dbg !905
  %synchronize10 = getelementptr inbounds %struct._MatrixInfo, ptr %call, i64 0, i32 6, !dbg !907
  store i32 %call9, ptr %synchronize10, align 4, !dbg !908, !tbaa !909
  %call11 = tail call ptr @DestroyString(ptr noundef nonnull %call6) #18, !dbg !910
  call void @llvm.dbg.value(metadata ptr %call11, metadata !869, metadata !DIExpression()), !dbg !872
  br label %if.end12, !dbg !911

if.end12:                                         ; preds = %if.then8, %if.end
  %mul = mul i64 %rows, %columns, !dbg !912
  %mul13 = mul i64 %mul, %stride, !dbg !913
  %length = getelementptr inbounds %struct._MatrixInfo, ptr %call, i64 0, i32 4, !dbg !914
  store i64 %mul13, ptr %length, align 8, !dbg !915, !tbaa !916
  %0 = load i64, ptr %columns2, align 8, !dbg !917, !tbaa !890
  %div = udiv i64 %mul13, %rows, !dbg !919
  %div16 = udiv i64 %div, %stride, !dbg !920
  %cmp17.not = icmp eq i64 %0, %div16, !dbg !921
  br i1 %cmp17.not, label %if.end21, label %if.then18, !dbg !922

if.then18:                                        ; preds = %if.end12
  %call19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 241, i32 noundef 445, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #18, !dbg !923
  %call20 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %call), !dbg !925
  br label %cleanup, !dbg !926

if.end21:                                         ; preds = %if.end12
  store i32 1, ptr %call, align 8, !dbg !927, !tbaa !928
  %call23 = tail call i32 @AcquireMagickResource(i32 noundef 1, i64 noundef %mul13) #18, !dbg !929
  call void @llvm.dbg.value(metadata i32 %call23, metadata !870, metadata !DIExpression()), !dbg !872
  %cmp24.not = icmp eq i32 %call23, 0, !dbg !930
  br i1 %cmp24.not, label %if.end49, label %if.then28, !dbg !932

if.then28:                                        ; preds = %if.end21
  %1 = load i64, ptr %length, align 8, !dbg !933, !tbaa !916
  %call30 = tail call i32 @AcquireMagickResource(i32 noundef 5, i64 noundef %1) #18, !dbg !934
  call void @llvm.dbg.value(metadata i32 %call30, metadata !870, metadata !DIExpression()), !dbg !872
  %cmp31.not = icmp eq i32 %call30, 0, !dbg !936
  br i1 %cmp31.not, label %if.end49, label %if.then32, !dbg !938

if.then32:                                        ; preds = %if.then28
  %mapped = getelementptr inbounds %struct._MatrixInfo, ptr %call, i64 0, i32 5, !dbg !939
  store i32 0, ptr %mapped, align 8, !dbg !941, !tbaa !942
  %2 = load i64, ptr %length, align 8, !dbg !943, !tbaa !916
  %call34 = tail call ptr @AcquireMagickMemory(i64 noundef %2) #17, !dbg !944
  %elements = getelementptr inbounds %struct._MatrixInfo, ptr %call, i64 0, i32 9, !dbg !945
  store ptr %call34, ptr %elements, align 8, !dbg !946, !tbaa !947
  %cmp36 = icmp eq ptr %call34, null, !dbg !948
  br i1 %cmp36, label %if.end42, label %if.end49, !dbg !950

if.end42:                                         ; preds = %if.then32
  store i32 1, ptr %mapped, align 8, !dbg !951, !tbaa !942
  %3 = load i64, ptr %length, align 8, !dbg !953, !tbaa !916
  %call40 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %3) #18, !dbg !954
  store ptr %call40, ptr %elements, align 8, !dbg !955, !tbaa !947
  %cmp44 = icmp eq ptr %call40, null, !dbg !956
  br i1 %cmp44, label %if.then45, label %if.end49, !dbg !958

if.then45:                                        ; preds = %if.end42
  %4 = load i64, ptr %length, align 8, !dbg !959, !tbaa !916
  tail call void @RelinquishMagickResource(i32 noundef 5, i64 noundef %4) #18, !dbg !960
  br label %if.end49, !dbg !960

if.end49:                                         ; preds = %if.then32, %if.then28, %if.then45, %if.end42, %if.end21
  %file = getelementptr inbounds %struct._MatrixInfo, ptr %call, i64 0, i32 8, !dbg !961
  store i32 -1, ptr %file, align 8, !dbg !962, !tbaa !963
  %elements50 = getelementptr inbounds %struct._MatrixInfo, ptr %call, i64 0, i32 9, !dbg !964
  %5 = load ptr, ptr %elements50, align 8, !dbg !964, !tbaa !947
  %cmp51 = icmp eq ptr %5, null, !dbg !966
  br i1 %cmp51, label %if.then52, label %cleanup, !dbg !967

if.then52:                                        ; preds = %if.end49
  %6 = load i64, ptr %length, align 8, !dbg !968, !tbaa !916
  %call54 = tail call i32 @AcquireMagickResource(i32 noundef 2, i64 noundef %6) #18, !dbg !970
  call void @llvm.dbg.value(metadata i32 %call54, metadata !870, metadata !DIExpression()), !dbg !872
  %cmp55 = icmp eq i32 %call54, 0, !dbg !971
  br i1 %cmp55, label %if.then56, label %if.end59, !dbg !973

if.then56:                                        ; preds = %if.then52
  %call57 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 272, i32 noundef 445, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #18, !dbg !974
  %call58 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %call), !dbg !976
  br label %cleanup, !dbg !977

if.end59:                                         ; preds = %if.then52
  store i32 3, ptr %call, align 8, !dbg !978, !tbaa !928
  %7 = load i64, ptr %length, align 8, !dbg !979, !tbaa !916
  %call62 = tail call i32 @AcquireMagickResource(i32 noundef 5, i64 noundef %7) #18, !dbg !980
  %path = getelementptr inbounds %struct._MatrixInfo, ptr %call, i64 0, i32 7, !dbg !981
  %call63 = tail call i32 @AcquireUniqueFileResource(ptr noundef nonnull %path) #18, !dbg !982
  store i32 %call63, ptr %file, align 8, !dbg !983, !tbaa !963
  %cmp66 = icmp eq i32 %call63, -1, !dbg !984
  br i1 %cmp66, label %if.then67, label %if.end69, !dbg !986

if.then67:                                        ; preds = %if.end59
  %call68 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %call), !dbg !987
  br label %cleanup, !dbg !988

if.end69:                                         ; preds = %if.end59
  %8 = load i64, ptr %length, align 8, !dbg !989, !tbaa !916
  %call71 = tail call i32 @AcquireMagickResource(i32 noundef 4, i64 noundef %8) #18, !dbg !990
  call void @llvm.dbg.value(metadata i32 %call71, metadata !870, metadata !DIExpression()), !dbg !872
  %cmp72.not = icmp eq i32 %call71, 0, !dbg !991
  br i1 %cmp72.not, label %cleanup, label %if.then73, !dbg !993

if.then73:                                        ; preds = %if.end69
  %9 = load i64, ptr %length, align 8, !dbg !994, !tbaa !916
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996), !dbg !999
  call void @llvm.dbg.value(metadata ptr %call, metadata !1000, metadata !DIExpression()) #18, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %9, metadata !1006, metadata !DIExpression()) #18, !dbg !1010
  %10 = load i32, ptr %file, align 8, !dbg !1012, !tbaa !963, !alias.scope !996
  %call.i = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 2) #18, !dbg !1013, !noalias !996
  call void @llvm.dbg.value(metadata i64 %call.i, metadata !1009, metadata !DIExpression()) #18, !dbg !1010
  %cmp1.i = icmp slt i64 %call.i, 0, !dbg !1014
  br i1 %cmp1.i, label %cleanup, label %if.end3.i, !dbg !1016

if.end3.i:                                        ; preds = %if.then73
  %cmp4.not.i = icmp ult i64 %call.i, %9, !dbg !1017
  br i1 %cmp4.not.i, label %if.end6.i, label %if.then77, !dbg !1019

if.end6.i:                                        ; preds = %if.end3.i
  %sub.i = add nsw i64 %9, -1, !dbg !1020
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !1008, metadata !DIExpression()) #18, !dbg !1010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021) #18, !dbg !1024
  call void @llvm.dbg.value(metadata ptr %call, metadata !1025, metadata !DIExpression()) #18, !dbg !1039
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !1034, metadata !DIExpression()) #18, !dbg !1039
  call void @llvm.dbg.value(metadata i64 1, metadata !1035, metadata !DIExpression()) #18, !dbg !1039
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !1036, metadata !DIExpression()) #18, !dbg !1039
  %11 = load ptr, ptr %semaphore, align 8, !dbg !1041, !tbaa !900, !alias.scope !1042, !noalias !1043
  tail call void @LockSemaphoreInfo(ptr noundef %11) #18, !dbg !1045, !noalias !1046
  %call.i.i = tail call i64 @lseek(i32 noundef %10, i64 noundef %sub.i, i32 noundef 0) #18, !dbg !1047, !noalias !1046
  %cmp.i.i = icmp slt i64 %call.i.i, 0, !dbg !1049
  br i1 %cmp.i.i, label %SetMatrixExtent.exit, label %for.body.i.i, !dbg !1050

for.body.i.i:                                     ; preds = %if.end6.i, %for.inc.i.i
  %i.026.i.i = phi i64 [ %add.i.i, %for.inc.i.i ], [ 0, %if.end6.i ]
  call void @llvm.dbg.value(metadata i64 %i.026.i.i, metadata !1037, metadata !DIExpression()) #18, !dbg !1039
  %add.ptr.i.i = getelementptr inbounds i8, ptr @.str.2, i64 %i.026.i.i, !dbg !1051
  %sub.i.i = sub i64 1, %i.026.i.i, !dbg !1055
  call void @llvm.dbg.value(metadata i64 %sub.i.i, metadata !1056, metadata !DIExpression()) #18, !dbg !1062
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1061, metadata !DIExpression()) #18, !dbg !1062
  %12 = tail call i64 @llvm.umin.i64(i64 %sub.i.i, i64 9223372036854775807) #18, !dbg !1062
  %call5.i.i = tail call i64 @write(i32 noundef %10, ptr noundef nonnull %add.ptr.i.i, i64 noundef %12) #18, !dbg !1064, !noalias !1042
  call void @llvm.dbg.value(metadata i64 %call5.i.i, metadata !1038, metadata !DIExpression()) #18, !dbg !1039
  %cmp6.i.i = icmp slt i64 %call5.i.i, 1, !dbg !1065
  br i1 %cmp6.i.i, label %if.then7.i.i, label %for.inc.i.i, !dbg !1067

if.then7.i.i:                                     ; preds = %for.body.i.i
  call void @llvm.dbg.value(metadata i64 0, metadata !1038, metadata !DIExpression()) #18, !dbg !1039
  %call8.i.i = tail call ptr @__errno_location() #19, !dbg !1068
  %13 = load i32, ptr %call8.i.i, align 4, !dbg !1068, !tbaa !1071, !noalias !1046
  %cmp9.not.i.i = icmp eq i32 %13, 4, !dbg !1072
  br i1 %cmp9.not.i.i, label %for.inc.i.i, label %SetMatrixExtent.exit, !dbg !1073

for.inc.i.i:                                      ; preds = %if.then7.i.i, %for.body.i.i
  %count.0.i.i = phi i64 [ 0, %if.then7.i.i ], [ %call5.i.i, %for.body.i.i ], !dbg !1074
  call void @llvm.dbg.value(metadata i64 %count.0.i.i, metadata !1038, metadata !DIExpression()) #18, !dbg !1039
  %add.i.i = add nsw i64 %count.0.i.i, %i.026.i.i, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %add.i.i, metadata !1037, metadata !DIExpression()) #18, !dbg !1039
  %cmp2.i.i = icmp slt i64 %add.i.i, 1, !dbg !1076
  br i1 %cmp2.i.i, label %for.body.i.i, label %SetMatrixExtent.exit, !dbg !1077, !llvm.loop !1078

SetMatrixExtent.exit:                             ; preds = %if.then7.i.i, %for.inc.i.i, %if.end6.i
  %retval.0.i.i = phi i64 [ -1, %if.end6.i ], [ %i.026.i.i, %if.then7.i.i ], [ %add.i.i, %for.inc.i.i ], !dbg !1039
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #18, !dbg !1039, !noalias !1046
  call void @llvm.dbg.value(metadata i64 %retval.0.i.i, metadata !1007, metadata !DIExpression()) #18, !dbg !1010
  %call8.i = tail call ptr @signal(i32 noundef 7, ptr noundef nonnull @MatrixSignalHandler) #18, !dbg !1082, !noalias !996
  %cmp9.not.i.not = icmp eq i64 %retval.0.i.i, 1, !dbg !1083
  call void @llvm.dbg.value(metadata i1 %cmp9.not.i.not, metadata !870, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !872
  br i1 %cmp9.not.i.not, label %if.then77, label %cleanup, !dbg !1084

if.then77:                                        ; preds = %if.end3.i, %SetMatrixExtent.exit
  %14 = load i32, ptr %file, align 8, !dbg !1085, !tbaa !963
  %15 = load i64, ptr %length, align 8, !dbg !1088, !tbaa !916
  %call80 = tail call ptr @MapBlob(i32 noundef %14, i32 noundef 2, i64 noundef 0, i64 noundef %15) #18, !dbg !1089
  store ptr %call80, ptr %elements50, align 8, !dbg !1090, !tbaa !947
  %cmp83.not = icmp eq ptr %call80, null, !dbg !1091
  br i1 %cmp83.not, label %if.else, label %if.then84, !dbg !1093

if.then84:                                        ; preds = %if.then77
  store i32 2, ptr %call, align 8, !dbg !1094, !tbaa !928
  br label %cleanup, !dbg !1095

if.else:                                          ; preds = %if.then77
  %16 = load i64, ptr %length, align 8, !dbg !1096, !tbaa !916
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %16) #18, !dbg !1097
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.end49, %SetMatrixExtent.exit, %if.else, %if.then84, %if.end69, %entry, %if.then67, %if.then56, %if.then18
  %retval.0 = phi ptr [ %call20, %if.then18 ], [ %call58, %if.then56 ], [ %call68, %if.then67 ], [ null, %entry ], [ %call, %if.end69 ], [ %call, %if.then84 ], [ %call, %if.else ], [ %call, %SetMatrixExtent.exit ], [ %call, %if.end49 ], [ %call, %if.then73 ], !dbg !872
  ret ptr %retval.0, !dbg !1098
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: allocsize(0)
declare !dbg !1099 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

declare !dbg !1104 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1107 ptr @AllocateSemaphoreInfo() local_unnamed_addr #4

declare !dbg !1110 ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #4

declare !dbg !1114 i32 @IsStringTrue(ptr noundef) local_unnamed_addr #4

declare !dbg !1117 ptr @DestroyString(ptr noundef) local_unnamed_addr #4

declare !dbg !1120 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyMatrixInfo(ptr noundef %matrix_info) local_unnamed_addr #0 !dbg !1124 {
entry:
  call void @llvm.dbg.value(metadata ptr %matrix_info, metadata !1128, metadata !DIExpression()), !dbg !1129
  %semaphore = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 10, !dbg !1130
  %0 = load ptr, ptr %semaphore, align 8, !dbg !1130, !tbaa !900
  tail call void @LockSemaphoreInfo(ptr noundef %0) #18, !dbg !1131
  %1 = load i32, ptr %matrix_info, align 8, !dbg !1132, !tbaa !928
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb12
  ], !dbg !1133

sw.bb:                                            ; preds = %entry
  %mapped = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 5, !dbg !1134
  %2 = load i32, ptr %mapped, align 8, !dbg !1134, !tbaa !942
  %cmp = icmp eq i32 %2, 0, !dbg !1138
  %elements = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 9, !dbg !1139
  %3 = load ptr, ptr %elements, align 8, !dbg !1139, !tbaa !947
  br i1 %cmp, label %if.then, label %if.else, !dbg !1140

if.then:                                          ; preds = %sw.bb
  %call = tail call ptr @RelinquishMagickMemory(ptr noundef %3) #18, !dbg !1141
  br label %if.end, !dbg !1142

if.else:                                          ; preds = %sw.bb
  %length = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 4, !dbg !1143
  %4 = load i64, ptr %length, align 8, !dbg !1143, !tbaa !916
  %call3 = tail call i32 @UnmapBlob(ptr noundef %3, i64 noundef %4) #18, !dbg !1145
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi ptr [ null, %if.else ], [ %call, %if.then ]
  store ptr %.sink, ptr %elements, align 8, !dbg !1139, !tbaa !947
  br label %sw.epilog.sink.split, !dbg !1146

sw.bb6:                                           ; preds = %entry
  %elements7 = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 9, !dbg !1147
  %5 = load ptr, ptr %elements7, align 8, !dbg !1147, !tbaa !947
  %length8 = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 4, !dbg !1149
  %6 = load i64, ptr %length8, align 8, !dbg !1149, !tbaa !916
  %call9 = tail call i32 @UnmapBlob(ptr noundef %5, i64 noundef %6) #18, !dbg !1150
  store ptr null, ptr %elements7, align 8, !dbg !1151, !tbaa !947
  %7 = load i64, ptr %length8, align 8, !dbg !1152, !tbaa !916
  tail call void @RelinquishMagickResource(i32 noundef 4, i64 noundef %7) #18, !dbg !1153
  br label %sw.bb12, !dbg !1154

sw.bb12:                                          ; preds = %entry, %sw.bb6
  %file = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 8, !dbg !1155
  %8 = load i32, ptr %file, align 8, !dbg !1155, !tbaa !963
  %cmp13.not = icmp eq i32 %8, -1, !dbg !1158
  br i1 %cmp13.not, label %if.end17, label %if.then14, !dbg !1159

if.then14:                                        ; preds = %sw.bb12
  %call16 = tail call i32 @close(i32 noundef %8) #18, !dbg !1160
  br label %if.end17, !dbg !1161

if.end17:                                         ; preds = %if.then14, %sw.bb12
  %path = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 7, !dbg !1162
  %call18 = tail call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %path) #18, !dbg !1163
  br label %sw.epilog.sink.split, !dbg !1164

sw.epilog.sink.split:                             ; preds = %if.end, %if.end17
  %.sink42 = phi i32 [ 2, %if.end17 ], [ 5, %if.end ]
  %length19 = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 4, !dbg !1165
  %9 = load i64, ptr %length19, align 8, !dbg !1165, !tbaa !916
  tail call void @RelinquishMagickResource(i32 noundef %.sink42, i64 noundef %9) #18, !dbg !1165
  br label %sw.epilog, !dbg !1166

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry
  %10 = load ptr, ptr %semaphore, align 8, !dbg !1166, !tbaa !900
  tail call void @UnlockSemaphoreInfo(ptr noundef %10) #18, !dbg !1167
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %semaphore) #18, !dbg !1168
  %call22 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %matrix_info) #18, !dbg !1169
  ret ptr %call22, !dbg !1170
}

declare !dbg !1171 i32 @AcquireMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1176 ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1182 void @RelinquishMagickResource(i32 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1185 i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireMagickMatrix(i64 noundef %number_rows, i64 noundef %size) local_unnamed_addr #0 !dbg !1188 {
entry:
  call void @llvm.dbg.value(metadata i64 %number_rows, metadata !1192, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i64 %size, metadata !1193, metadata !DIExpression()), !dbg !1197
  %call = tail call ptr @AcquireQuantumMemory(i64 noundef %number_rows, i64 noundef 8) #20, !dbg !1198
  call void @llvm.dbg.value(metadata ptr %call, metadata !1194, metadata !DIExpression()), !dbg !1197
  %cmp = icmp eq ptr %call, null, !dbg !1199
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !1201

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !1195, metadata !DIExpression()), !dbg !1197
  %cmp150 = icmp sgt i64 %number_rows, 0, !dbg !1202
  br i1 %cmp150, label %for.body.lr.ph, label %cleanup, !dbg !1205

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp1548 = icmp sgt i64 %size, 0
  br i1 %cmp1548, label %for.body.us.preheader, label %for.body, !dbg !1206

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %0 = shl nuw i64 %size, 3, !dbg !1205
  br label %for.body.us, !dbg !1205

for.body.us:                                      ; preds = %for.body.us.preheader, %for.body16.us.preheader
  %i.051.us = phi i64 [ %inc23.us, %for.body16.us.preheader ], [ 0, %for.body.us.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.051.us, metadata !1195, metadata !DIExpression()), !dbg !1197
  %call2.us = tail call ptr @AcquireQuantumMemory(i64 noundef %size, i64 noundef 8) #20, !dbg !1209
  %arrayidx.us = getelementptr inbounds ptr, ptr %call, i64 %i.051.us, !dbg !1210
  store ptr %call2.us, ptr %arrayidx.us, align 8, !dbg !1211, !tbaa !1212
  %cmp4.us = icmp eq ptr %call2.us, null, !dbg !1213
  br i1 %cmp4.us, label %for.cond6.preheader, label %for.body16.us.preheader, !dbg !1215

for.body16.us.preheader:                          ; preds = %for.body.us
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %call2.us, i8 0, i64 %0, i1 false), !dbg !1216, !tbaa !1218
  call void @llvm.dbg.value(metadata i32 undef, metadata !1196, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 undef, metadata !1196, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1197
  %inc23.us = add nuw nsw i64 %i.051.us, 1, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %inc23.us, metadata !1195, metadata !DIExpression()), !dbg !1197
  %exitcond58.not = icmp eq i64 %inc23.us, %number_rows, !dbg !1202
  br i1 %exitcond58.not, label %cleanup, label %for.body.us, !dbg !1205, !llvm.loop !1221

for.body:                                         ; preds = %for.body.lr.ph, %for.cond14.preheader
  %i.051 = phi i64 [ %inc23, %for.cond14.preheader ], [ 0, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i.051, metadata !1195, metadata !DIExpression()), !dbg !1197
  %call2 = tail call ptr @AcquireQuantumMemory(i64 noundef %size, i64 noundef 8) #20, !dbg !1209
  %arrayidx = getelementptr inbounds ptr, ptr %call, i64 %i.051, !dbg !1210
  store ptr %call2, ptr %arrayidx, align 8, !dbg !1211, !tbaa !1212
  %cmp4 = icmp eq ptr %call2, null, !dbg !1213
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond14.preheader, !dbg !1215

for.cond14.preheader:                             ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 0, metadata !1196, metadata !DIExpression()), !dbg !1197
  %inc23 = add nuw nsw i64 %i.051, 1, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %inc23, metadata !1195, metadata !DIExpression()), !dbg !1197
  %exitcond.not = icmp eq i64 %inc23, %number_rows, !dbg !1202
  br i1 %exitcond.not, label %cleanup, label %for.body, !dbg !1205, !llvm.loop !1221

for.cond6.preheader:                              ; preds = %for.body, %for.body.us
  %.us-phi = phi i64 [ %i.051.us, %for.body.us ], [ %i.051, %for.body ]
  call void @llvm.dbg.value(metadata i64 0, metadata !1196, metadata !DIExpression()), !dbg !1197
  %cmp752.not = icmp eq i64 %.us-phi, 0, !dbg !1223
  br i1 %cmp752.not, label %for.end, label %for.body8, !dbg !1227

for.body8:                                        ; preds = %for.cond6.preheader, %for.body8
  %j.053 = phi i64 [ %inc, %for.body8 ], [ 0, %for.cond6.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.053, metadata !1196, metadata !DIExpression()), !dbg !1197
  %arrayidx9 = getelementptr inbounds ptr, ptr %call, i64 %j.053, !dbg !1228
  %1 = load ptr, ptr %arrayidx9, align 8, !dbg !1228, !tbaa !1212
  %call10 = tail call ptr @RelinquishMagickMemory(ptr noundef %1) #18, !dbg !1229
  store ptr %call10, ptr %arrayidx9, align 8, !dbg !1230, !tbaa !1212
  %inc = add nuw nsw i64 %j.053, 1, !dbg !1231
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1196, metadata !DIExpression()), !dbg !1197
  %exitcond59.not = icmp eq i64 %inc, %.us-phi, !dbg !1223
  br i1 %exitcond59.not, label %for.end, label %for.body8, !dbg !1227, !llvm.loop !1232

for.end:                                          ; preds = %for.body8, %for.cond6.preheader
  %call12 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #18, !dbg !1234
  call void @llvm.dbg.value(metadata ptr %call12, metadata !1194, metadata !DIExpression()), !dbg !1197
  br label %cleanup, !dbg !1235

cleanup:                                          ; preds = %for.cond14.preheader, %for.body16.us.preheader, %for.cond.preheader, %entry, %for.end
  %retval.0 = phi ptr [ null, %for.end ], [ null, %entry ], [ %call, %for.cond.preheader ], [ %call, %for.body16.us.preheader ], [ %call, %for.cond14.preheader ], !dbg !1197
  ret ptr %retval.0, !dbg !1236
}

; Function Attrs: allocsize(0,1)
declare !dbg !1237 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !1240 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

declare !dbg !1243 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1246 i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1249 i32 @close(i32 noundef) local_unnamed_addr #4

declare !dbg !1253 i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #4

declare !dbg !1254 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1255 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @GaussJordanElimination(ptr nocapture noundef readonly %matrix, ptr nocapture noundef readonly %vectors, i64 noundef %rank, i64 noundef %number_vectors) local_unnamed_addr #0 !dbg !1259 {
entry:
  call void @llvm.dbg.value(metadata ptr %matrix, metadata !1263, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata ptr %vectors, metadata !1264, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %rank, metadata !1265, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %number_vectors, metadata !1266, metadata !DIExpression()), !dbg !1277
  %call = tail call ptr @AcquireQuantumMemory(i64 noundef %rank, i64 noundef 8) #20, !dbg !1278
  call void @llvm.dbg.value(metadata ptr %call, metadata !1273, metadata !DIExpression()), !dbg !1277
  %call1 = tail call ptr @AcquireQuantumMemory(i64 noundef %rank, i64 noundef 8) #20, !dbg !1279
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1276, metadata !DIExpression()), !dbg !1277
  %call2 = tail call ptr @AcquireQuantumMemory(i64 noundef %rank, i64 noundef 8) #20, !dbg !1280
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1274, metadata !DIExpression()), !dbg !1277
  %cmp = icmp eq ptr %call1, null, !dbg !1281
  %cmp3 = icmp eq ptr %call, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3, !dbg !1283
  %cmp5 = icmp eq ptr %call2, null
  %or.cond252 = select i1 %or.cond, i1 true, i1 %cmp5, !dbg !1283
  br i1 %or.cond252, label %if.then, label %if.end17, !dbg !1283

if.then:                                          ; preds = %entry
  br i1 %cmp5, label %if.end, label %if.then7, !dbg !1284

if.then7:                                         ; preds = %if.then
  %call8 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call2) #18, !dbg !1286
  call void @llvm.dbg.value(metadata ptr %call8, metadata !1274, metadata !DIExpression()), !dbg !1277
  br label %if.end, !dbg !1288

if.end:                                           ; preds = %if.then7, %if.then
  br i1 %cmp3, label %if.end12, label %if.then10, !dbg !1289

if.then10:                                        ; preds = %if.end
  %call11 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #18, !dbg !1290
  call void @llvm.dbg.value(metadata ptr %call11, metadata !1273, metadata !DIExpression()), !dbg !1277
  br label %if.end12, !dbg !1292

if.end12:                                         ; preds = %if.then10, %if.end
  br i1 %cmp, label %cleanup, label %if.then14, !dbg !1293

if.then14:                                        ; preds = %if.end12
  %call15 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1) #18, !dbg !1294
  call void @llvm.dbg.value(metadata ptr %call15, metadata !1276, metadata !DIExpression()), !dbg !1277
  br label %cleanup, !dbg !1296

if.end17:                                         ; preds = %entry
  %mul = shl i64 %rank, 3, !dbg !1297
  %call18 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef %mul) #18, !dbg !1298
  %call20 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call1, i32 noundef 0, i64 noundef %mul) #18, !dbg !1299
  %call22 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call2, i32 noundef 0, i64 noundef %mul) #18, !dbg !1300
  call void @llvm.dbg.value(metadata i64 0, metadata !1272, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 0, metadata !1275, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 0, metadata !1269, metadata !DIExpression()), !dbg !1277
  %cmp23512 = icmp sgt i64 %rank, 0, !dbg !1301
  br i1 %cmp23512, label %for.cond24.preheader.lr.ph, label %for.end239, !dbg !1304

for.cond24.preheader.lr.ph:                       ; preds = %if.end17
  %cmp86498 = icmp sgt i64 %number_vectors, 0
  br label %for.body26.us.preheader, !dbg !1304

for.body26.us.preheader:                          ; preds = %for.inc184, %for.cond24.preheader.lr.ph
  %row.0515 = phi i64 [ 0, %for.cond24.preheader.lr.ph ], [ %row.4.us, %for.inc184 ]
  %column.0514 = phi i64 [ 0, %for.cond24.preheader.lr.ph ], [ %column.4.us, %for.inc184 ]
  %i.0513 = phi i64 [ 0, %for.cond24.preheader.lr.ph ], [ %inc185, %for.inc184 ]
  call void @llvm.dbg.value(metadata i64 %i.0513, metadata !1269, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %row.0515, metadata !1275, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %column.0514, metadata !1272, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 0, metadata !1270, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1267, metadata !DIExpression()), !dbg !1277
  br label %for.body26.us, !dbg !1305

for.body26.us:                                    ; preds = %for.body26.us.preheader, %for.inc48.us
  %row.1492.us = phi i64 [ %row.4.us, %for.inc48.us ], [ %row.0515, %for.body26.us.preheader ]
  %column.1491.us = phi i64 [ %column.4.us, %for.inc48.us ], [ %column.0514, %for.body26.us.preheader ]
  %j.0488.us = phi i64 [ %inc49.us, %for.inc48.us ], [ 0, %for.body26.us.preheader ]
  %max.0487.us = phi double [ %max.3.us, %for.inc48.us ], [ 0.000000e+00, %for.body26.us.preheader ]
  call void @llvm.dbg.value(metadata i64 %row.1492.us, metadata !1275, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %column.1491.us, metadata !1272, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %j.0488.us, metadata !1270, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata double %max.0487.us, metadata !1267, metadata !DIExpression()), !dbg !1277
  %arrayidx.us = getelementptr inbounds i64, ptr %call2, i64 %j.0488.us, !dbg !1308
  %0 = load i64, ptr %arrayidx.us, align 8, !dbg !1308, !tbaa !1311
  %cmp27.not.us = icmp eq i64 %0, 1, !dbg !1312
  br i1 %cmp27.not.us, label %for.inc48.us, label %for.cond29.preheader.us, !dbg !1313

for.body31.us:                                    ; preds = %for.cond29.preheader.us, %for.inc.us
  %row.2483.us = phi i64 [ %row.1492.us, %for.cond29.preheader.us ], [ %row.3.us, %for.inc.us ]
  %column.2482.us = phi i64 [ %column.1491.us, %for.cond29.preheader.us ], [ %column.3.us, %for.inc.us ]
  %k.0481.us = phi i64 [ 0, %for.cond29.preheader.us ], [ %inc.us, %for.inc.us ]
  %max.1480.us = phi double [ %max.0487.us, %for.cond29.preheader.us ], [ %max.2.us, %for.inc.us ]
  call void @llvm.dbg.value(metadata i64 %row.2483.us, metadata !1275, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %column.2482.us, metadata !1272, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %k.0481.us, metadata !1271, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata double %max.1480.us, metadata !1267, metadata !DIExpression()), !dbg !1277
  %arrayidx32.us = getelementptr inbounds i64, ptr %call2, i64 %k.0481.us, !dbg !1314
  %1 = load i64, ptr %arrayidx32.us, align 8, !dbg !1314, !tbaa !1311
  %cmp33.not.us = icmp eq i64 %1, 0, !dbg !1319
  br i1 %cmp33.not.us, label %if.else.us, label %if.then34.us, !dbg !1320

if.then34.us:                                     ; preds = %for.body31.us
  %cmp36.us = icmp sgt i64 %1, 1, !dbg !1321
  br i1 %cmp36.us, label %cleanup, label %for.inc.us, !dbg !1324

if.else.us:                                       ; preds = %for.body31.us
  %2 = load ptr, ptr %arrayidx39.us, align 8, !dbg !1325, !tbaa !1212
  %arrayidx40.us = getelementptr inbounds double, ptr %2, i64 %k.0481.us, !dbg !1325
  %3 = load double, ptr %arrayidx40.us, align 8, !dbg !1325, !tbaa !1218
  %4 = tail call double @llvm.fabs.f64(double %3), !dbg !1327
  %cmp41.us = fcmp ult double %4, %max.1480.us, !dbg !1328
  br i1 %cmp41.us, label %for.inc.us, label %if.then42.us, !dbg !1329

if.then42.us:                                     ; preds = %if.else.us
  call void @llvm.dbg.value(metadata double %4, metadata !1267, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %j.0488.us, metadata !1275, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %k.0481.us, metadata !1272, metadata !DIExpression()), !dbg !1277
  br label %for.inc.us, !dbg !1330

for.inc.us:                                       ; preds = %if.then42.us, %if.else.us, %if.then34.us
  %max.2.us = phi double [ %max.1480.us, %if.then34.us ], [ %4, %if.then42.us ], [ %max.1480.us, %if.else.us ], !dbg !1332
  %column.3.us = phi i64 [ %column.2482.us, %if.then34.us ], [ %k.0481.us, %if.then42.us ], [ %column.2482.us, %if.else.us ], !dbg !1277
  %row.3.us = phi i64 [ %row.2483.us, %if.then34.us ], [ %j.0488.us, %if.then42.us ], [ %row.2483.us, %if.else.us ], !dbg !1277
  call void @llvm.dbg.value(metadata i64 %row.3.us, metadata !1275, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %column.3.us, metadata !1272, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata double %max.2.us, metadata !1267, metadata !DIExpression()), !dbg !1277
  %inc.us = add nuw nsw i64 %k.0481.us, 1, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !1271, metadata !DIExpression()), !dbg !1277
  %exitcond.not = icmp eq i64 %inc.us, %rank, !dbg !1334
  br i1 %exitcond.not, label %for.inc48.us, label %for.body31.us, !dbg !1335, !llvm.loop !1336

for.inc48.us:                                     ; preds = %for.inc.us, %for.body26.us
  %max.3.us = phi double [ %max.0487.us, %for.body26.us ], [ %max.2.us, %for.inc.us ], !dbg !1338
  %column.4.us = phi i64 [ %column.1491.us, %for.body26.us ], [ %column.3.us, %for.inc.us ], !dbg !1339
  %row.4.us = phi i64 [ %row.1492.us, %for.body26.us ], [ %row.3.us, %for.inc.us ], !dbg !1340
  call void @llvm.dbg.value(metadata i64 %row.4.us, metadata !1275, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %column.4.us, metadata !1272, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata double %max.3.us, metadata !1267, metadata !DIExpression()), !dbg !1277
  %inc49.us = add nuw nsw i64 %j.0488.us, 1, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %inc49.us, metadata !1270, metadata !DIExpression()), !dbg !1277
  %exitcond522.not = icmp eq i64 %inc49.us, %rank, !dbg !1342
  br i1 %exitcond522.not, label %for.end50, label %for.body26.us, !dbg !1305, !llvm.loop !1343

for.cond29.preheader.us:                          ; preds = %for.body26.us
  call void @llvm.dbg.value(metadata i64 %row.1492.us, metadata !1275, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %column.1491.us, metadata !1272, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 0, metadata !1271, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata double %max.0487.us, metadata !1267, metadata !DIExpression()), !dbg !1277
  %arrayidx39.us = getelementptr inbounds ptr, ptr %matrix, i64 %j.0488.us
  br label %for.body31.us, !dbg !1335

for.cond188.preheader:                            ; preds = %for.inc184
  call void @llvm.dbg.value(metadata i64 %rank, metadata !1270, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1277
  br i1 %cmp23512, label %for.body190.us, label %for.end239, !dbg !1345

for.body190.us:                                   ; preds = %for.cond188.preheader, %for.inc238.us
  %j.4520.us.in = phi i64 [ %j.4520.us, %for.inc238.us ], [ %rank, %for.cond188.preheader ]
  %j.4520.us = add nsw i64 %j.4520.us.in, -1, !dbg !1347
  %arrayidx191.us = getelementptr inbounds i64, ptr %call, i64 %j.4520.us, !dbg !1348
  %5 = load i64, ptr %arrayidx191.us, align 8, !dbg !1348, !tbaa !1311
  %arrayidx192.us = getelementptr inbounds i64, ptr %call1, i64 %j.4520.us, !dbg !1351
  %6 = load i64, ptr %arrayidx192.us, align 8, !dbg !1351, !tbaa !1311
  %cmp193.not.us = icmp eq i64 %5, %6, !dbg !1352
  br i1 %cmp193.not.us, label %for.inc238.us, label %for.body197.us, !dbg !1353

for.body197.us:                                   ; preds = %for.body190.us, %for.inc234.us
  %i.1517.us = phi i64 [ %inc235.us, %for.inc234.us ], [ 0, %for.body190.us ]
  call void @llvm.dbg.value(metadata i64 %i.1517.us, metadata !1269, metadata !DIExpression()), !dbg !1277
  %arrayidx198.us = getelementptr inbounds ptr, ptr %matrix, i64 %i.1517.us, !dbg !1354
  %7 = load ptr, ptr %arrayidx198.us, align 8, !dbg !1354, !tbaa !1212
  %arrayidx200.us = getelementptr inbounds double, ptr %7, i64 %6, !dbg !1354
  %8 = load double, ptr %arrayidx200.us, align 8, !dbg !1354, !tbaa !1218
  %arrayidx203.us = getelementptr inbounds double, ptr %7, i64 %5, !dbg !1354
  %9 = load double, ptr %arrayidx203.us, align 8, !dbg !1354, !tbaa !1218
  %cmp204.us = fcmp une double %8, %9, !dbg !1354
  br i1 %cmp204.us, label %if.then205.us, label %for.inc234.us, !dbg !1359

if.then205.us:                                    ; preds = %for.body197.us
  %add212.us = fadd double %8, %9, !dbg !1360
  store double %add212.us, ptr %arrayidx200.us, align 8, !dbg !1360, !tbaa !1218
  %10 = load double, ptr %arrayidx203.us, align 8, !dbg !1360, !tbaa !1218
  %sub219.us = fsub double %add212.us, %10, !dbg !1360
  store double %sub219.us, ptr %arrayidx203.us, align 8, !dbg !1360, !tbaa !1218
  %11 = load double, ptr %arrayidx200.us, align 8, !dbg !1360, !tbaa !1218
  %sub229.us = fsub double %11, %sub219.us, !dbg !1360
  store double %sub229.us, ptr %arrayidx200.us, align 8, !dbg !1360, !tbaa !1218
  br label %for.inc234.us, !dbg !1360

for.inc234.us:                                    ; preds = %if.then205.us, %for.body197.us
  %inc235.us = add nuw nsw i64 %i.1517.us, 1, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %inc235.us, metadata !1269, metadata !DIExpression()), !dbg !1277
  %exitcond531.not = icmp eq i64 %inc235.us, %rank, !dbg !1363
  br i1 %exitcond531.not, label %for.inc238.us, label %for.body197.us, !dbg !1364, !llvm.loop !1365

for.inc238.us:                                    ; preds = %for.inc234.us, %for.body190.us
  call void @llvm.dbg.value(metadata i64 %j.4520.us, metadata !1270, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1277
  %cmp189.us = icmp sgt i64 %j.4520.us.in, 1, !dbg !1367
  br i1 %cmp189.us, label %for.body190.us, label %for.end239, !dbg !1345, !llvm.loop !1368

for.end50:                                        ; preds = %for.inc48.us
  %arrayidx51 = getelementptr inbounds i64, ptr %call2, i64 %column.4.us, !dbg !1370
  %12 = load i64, ptr %arrayidx51, align 8, !dbg !1371, !tbaa !1311
  %inc52 = add nsw i64 %12, 1, !dbg !1371
  store i64 %inc52, ptr %arrayidx51, align 8, !dbg !1371, !tbaa !1311
  %cmp53.not = icmp eq i64 %row.4.us, %column.4.us, !dbg !1372
  br i1 %cmp53.not, label %if.end117, label %for.body57.lr.ph, !dbg !1374

for.body57.lr.ph:                                 ; preds = %for.end50
  call void @llvm.dbg.value(metadata i64 0, metadata !1271, metadata !DIExpression()), !dbg !1277
  %arrayidx58 = getelementptr inbounds ptr, ptr %matrix, i64 %row.4.us
  %13 = load ptr, ptr %arrayidx58, align 8, !tbaa !1212
  %arrayidx60 = getelementptr inbounds ptr, ptr %matrix, i64 %column.4.us
  %14 = load ptr, ptr %arrayidx60, align 8, !tbaa !1212
  br label %for.body57, !dbg !1375

for.cond85.preheader:                             ; preds = %for.inc82
  call void @llvm.dbg.value(metadata i64 0, metadata !1271, metadata !DIExpression()), !dbg !1277
  br i1 %cmp86498, label %for.body87, label %if.end117, !dbg !1378

for.body57:                                       ; preds = %for.body57.lr.ph, %for.inc82
  %k.1497 = phi i64 [ 0, %for.body57.lr.ph ], [ %inc83, %for.inc82 ]
  call void @llvm.dbg.value(metadata i64 %k.1497, metadata !1271, metadata !DIExpression()), !dbg !1277
  %arrayidx59 = getelementptr inbounds double, ptr %13, i64 %k.1497, !dbg !1380
  %15 = load double, ptr %arrayidx59, align 8, !dbg !1380, !tbaa !1218
  %arrayidx61 = getelementptr inbounds double, ptr %14, i64 %k.1497, !dbg !1380
  %16 = load double, ptr %arrayidx61, align 8, !dbg !1380, !tbaa !1218
  %cmp62 = fcmp une double %15, %16, !dbg !1380
  br i1 %cmp62, label %if.then63, label %for.inc82, !dbg !1384

if.then63:                                        ; preds = %for.body57
  %add = fadd double %15, %16, !dbg !1385
  store double %add, ptr %arrayidx59, align 8, !dbg !1385, !tbaa !1218
  %17 = load double, ptr %arrayidx61, align 8, !dbg !1385, !tbaa !1218
  %sub = fsub double %add, %17, !dbg !1385
  store double %sub, ptr %arrayidx61, align 8, !dbg !1385, !tbaa !1218
  %18 = load double, ptr %arrayidx59, align 8, !dbg !1385, !tbaa !1218
  %sub78 = fsub double %18, %sub, !dbg !1385
  store double %sub78, ptr %arrayidx59, align 8, !dbg !1385, !tbaa !1218
  br label %for.inc82, !dbg !1385

for.inc82:                                        ; preds = %for.body57, %if.then63
  %inc83 = add nuw nsw i64 %k.1497, 1, !dbg !1387
  call void @llvm.dbg.value(metadata i64 %inc83, metadata !1271, metadata !DIExpression()), !dbg !1277
  %exitcond523.not = icmp eq i64 %inc83, %rank, !dbg !1388
  br i1 %exitcond523.not, label %for.cond85.preheader, label %for.body57, !dbg !1375, !llvm.loop !1389

for.body87:                                       ; preds = %for.cond85.preheader, %for.inc114
  %k.2499 = phi i64 [ %inc115, %for.inc114 ], [ 0, %for.cond85.preheader ]
  call void @llvm.dbg.value(metadata i64 %k.2499, metadata !1271, metadata !DIExpression()), !dbg !1277
  %arrayidx88 = getelementptr inbounds ptr, ptr %vectors, i64 %k.2499, !dbg !1391
  %19 = load ptr, ptr %arrayidx88, align 8, !dbg !1391, !tbaa !1212
  %arrayidx89 = getelementptr inbounds double, ptr %19, i64 %row.4.us, !dbg !1391
  %20 = load double, ptr %arrayidx89, align 8, !dbg !1391, !tbaa !1218
  %arrayidx91 = getelementptr inbounds double, ptr %19, i64 %column.4.us, !dbg !1391
  %21 = load double, ptr %arrayidx91, align 8, !dbg !1391, !tbaa !1218
  %cmp92 = fcmp une double %20, %21, !dbg !1391
  br i1 %cmp92, label %if.then93, label %for.inc114, !dbg !1395

if.then93:                                        ; preds = %for.body87
  %add98 = fadd double %20, %21, !dbg !1396
  store double %add98, ptr %arrayidx89, align 8, !dbg !1396, !tbaa !1218
  %22 = load double, ptr %arrayidx91, align 8, !dbg !1396, !tbaa !1218
  %sub103 = fsub double %add98, %22, !dbg !1396
  store double %sub103, ptr %arrayidx91, align 8, !dbg !1396, !tbaa !1218
  %23 = load double, ptr %arrayidx89, align 8, !dbg !1396, !tbaa !1218
  %sub110 = fsub double %23, %sub103, !dbg !1396
  store double %sub110, ptr %arrayidx89, align 8, !dbg !1396, !tbaa !1218
  br label %for.inc114, !dbg !1396

for.inc114:                                       ; preds = %for.body87, %if.then93
  %inc115 = add nuw nsw i64 %k.2499, 1, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %inc115, metadata !1271, metadata !DIExpression()), !dbg !1277
  %exitcond524.not = icmp eq i64 %inc115, %number_vectors, !dbg !1399
  br i1 %exitcond524.not, label %if.end117, label %for.body87, !dbg !1378, !llvm.loop !1400

if.end117:                                        ; preds = %for.inc114, %for.cond85.preheader, %for.end50
  %arrayidx118 = getelementptr inbounds i64, ptr %call1, i64 %i.0513, !dbg !1402
  store i64 %row.4.us, ptr %arrayidx118, align 8, !dbg !1403, !tbaa !1311
  %arrayidx119 = getelementptr inbounds i64, ptr %call, i64 %i.0513, !dbg !1404
  store i64 %column.4.us, ptr %arrayidx119, align 8, !dbg !1405, !tbaa !1311
  %arrayidx120 = getelementptr inbounds ptr, ptr %matrix, i64 %column.4.us, !dbg !1406
  %24 = load ptr, ptr %arrayidx120, align 8, !dbg !1406, !tbaa !1212
  %arrayidx121 = getelementptr inbounds double, ptr %24, i64 %column.4.us, !dbg !1406
  %25 = load double, ptr %arrayidx121, align 8, !dbg !1406, !tbaa !1218
  %cmp122 = fcmp oeq double %25, 0.000000e+00, !dbg !1408
  br i1 %cmp122, label %cleanup, label %if.end124, !dbg !1409

if.end124:                                        ; preds = %if.end117
  call void @llvm.dbg.value(metadata double %25, metadata !1410, metadata !DIExpression()), !dbg !1418
  %cmp.i = fcmp olt double %25, 0.000000e+00, !dbg !1420
  %cond.i = select i1 %cmp.i, double -1.000000e+00, double 1.000000e+00, !dbg !1421
  call void @llvm.dbg.value(metadata double %cond.i, metadata !1417, metadata !DIExpression()), !dbg !1418
  %mul.i = fmul double %25, %cond.i, !dbg !1422
  %cmp1.i = fcmp ult double %mul.i, 1.000000e-15, !dbg !1424
  br i1 %cmp1.i, label %if.end.i, label %if.then.i, !dbg !1425

if.then.i:                                        ; preds = %if.end124
  %div.i = fdiv double 1.000000e+00, %25, !dbg !1426
  br label %for.body132.preheader, !dbg !1427

if.end.i:                                         ; preds = %if.end124
  %div2.i = fdiv double %cond.i, 1.000000e-15, !dbg !1428
  br label %for.body132.preheader, !dbg !1429

for.body132.preheader:                            ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi double [ %div.i, %if.then.i ], [ %div2.i, %if.end.i ], !dbg !1418
  call void @llvm.dbg.value(metadata double %retval.0.i, metadata !1268, metadata !DIExpression()), !dbg !1277
  store double 1.000000e+00, ptr %arrayidx121, align 8, !dbg !1430, !tbaa !1218
  call void @llvm.dbg.value(metadata i64 0, metadata !1270, metadata !DIExpression()), !dbg !1277
  br label %for.body132, !dbg !1431

for.cond139.preheader:                            ; preds = %for.body132
  call void @llvm.dbg.value(metadata i64 0, metadata !1270, metadata !DIExpression()), !dbg !1277
  br i1 %cmp86498, label %for.body141, label %for.body150.preheader, !dbg !1433

for.body132:                                      ; preds = %for.body132.preheader, %for.body132
  %j.1501 = phi i64 [ %inc137, %for.body132 ], [ 0, %for.body132.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.1501, metadata !1270, metadata !DIExpression()), !dbg !1277
  %arrayidx134 = getelementptr inbounds double, ptr %24, i64 %j.1501, !dbg !1435
  %26 = load double, ptr %arrayidx134, align 8, !dbg !1437, !tbaa !1218
  %mul135 = fmul double %retval.0.i, %26, !dbg !1437
  store double %mul135, ptr %arrayidx134, align 8, !dbg !1437, !tbaa !1218
  %inc137 = add nuw nsw i64 %j.1501, 1, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %inc137, metadata !1270, metadata !DIExpression()), !dbg !1277
  %exitcond525.not = icmp eq i64 %inc137, %rank, !dbg !1439
  br i1 %exitcond525.not, label %for.cond139.preheader, label %for.body132, !dbg !1431, !llvm.loop !1440

for.body141:                                      ; preds = %for.cond139.preheader, %for.body141
  %j.2503 = phi i64 [ %inc146, %for.body141 ], [ 0, %for.cond139.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.2503, metadata !1270, metadata !DIExpression()), !dbg !1277
  %arrayidx142 = getelementptr inbounds ptr, ptr %vectors, i64 %j.2503, !dbg !1442
  %27 = load ptr, ptr %arrayidx142, align 8, !dbg !1442, !tbaa !1212
  %arrayidx143 = getelementptr inbounds double, ptr %27, i64 %column.4.us, !dbg !1442
  %28 = load double, ptr %arrayidx143, align 8, !dbg !1444, !tbaa !1218
  %mul144 = fmul double %retval.0.i, %28, !dbg !1444
  store double %mul144, ptr %arrayidx143, align 8, !dbg !1444, !tbaa !1218
  %inc146 = add nuw nsw i64 %j.2503, 1, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %inc146, metadata !1270, metadata !DIExpression()), !dbg !1277
  %exitcond526.not = icmp eq i64 %inc146, %number_vectors, !dbg !1446
  br i1 %exitcond526.not, label %for.body150.preheader, label %for.body141, !dbg !1433, !llvm.loop !1447

for.body150.preheader:                            ; preds = %for.body141, %for.cond139.preheader
  br label %for.body150, !dbg !1449

for.body150:                                      ; preds = %for.body150.preheader, %for.inc181
  %j.3509 = phi i64 [ %inc182, %for.inc181 ], [ 0, %for.body150.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.3509, metadata !1270, metadata !DIExpression()), !dbg !1277
  %cmp151.not = icmp eq i64 %j.3509, %column.4.us, !dbg !1451
  br i1 %cmp151.not, label %for.inc181, label %for.body159.lr.ph, !dbg !1454

for.body159.lr.ph:                                ; preds = %for.body150
  %arrayidx153 = getelementptr inbounds ptr, ptr %matrix, i64 %j.3509, !dbg !1455
  %29 = load ptr, ptr %arrayidx153, align 8, !dbg !1455, !tbaa !1212
  %arrayidx154 = getelementptr inbounds double, ptr %29, i64 %column.4.us, !dbg !1455
  %30 = load double, ptr %arrayidx154, align 8, !dbg !1455, !tbaa !1218
  call void @llvm.dbg.value(metadata double %30, metadata !1268, metadata !DIExpression()), !dbg !1277
  store double 0.000000e+00, ptr %arrayidx154, align 8, !dbg !1457, !tbaa !1218
  call void @llvm.dbg.value(metadata i64 0, metadata !1271, metadata !DIExpression()), !dbg !1277
  %neg = fneg double %30
  br label %for.body159, !dbg !1458

for.cond168.preheader:                            ; preds = %for.body159
  call void @llvm.dbg.value(metadata i64 0, metadata !1271, metadata !DIExpression()), !dbg !1277
  br i1 %cmp86498, label %for.body170.lr.ph, label %for.inc181, !dbg !1460

for.body170.lr.ph:                                ; preds = %for.cond168.preheader
  %neg176 = fneg double %30
  br label %for.body170, !dbg !1460

for.body159:                                      ; preds = %for.body159.lr.ph, %for.body159
  %k.3505 = phi i64 [ 0, %for.body159.lr.ph ], [ %inc166, %for.body159 ]
  call void @llvm.dbg.value(metadata i64 %k.3505, metadata !1271, metadata !DIExpression()), !dbg !1277
  %arrayidx161 = getelementptr inbounds double, ptr %24, i64 %k.3505, !dbg !1462
  %31 = load double, ptr %arrayidx161, align 8, !dbg !1462, !tbaa !1218
  %arrayidx164 = getelementptr inbounds double, ptr %29, i64 %k.3505, !dbg !1464
  %32 = load double, ptr %arrayidx164, align 8, !dbg !1465, !tbaa !1218
  %33 = tail call double @llvm.fmuladd.f64(double %neg, double %31, double %32), !dbg !1465
  store double %33, ptr %arrayidx164, align 8, !dbg !1465, !tbaa !1218
  %inc166 = add nuw nsw i64 %k.3505, 1, !dbg !1466
  call void @llvm.dbg.value(metadata i64 %inc166, metadata !1271, metadata !DIExpression()), !dbg !1277
  %exitcond527.not = icmp eq i64 %inc166, %rank, !dbg !1467
  br i1 %exitcond527.not, label %for.cond168.preheader, label %for.body159, !dbg !1458, !llvm.loop !1468

for.body170:                                      ; preds = %for.body170.lr.ph, %for.body170
  %k.4507 = phi i64 [ 0, %for.body170.lr.ph ], [ %inc178, %for.body170 ]
  call void @llvm.dbg.value(metadata i64 %k.4507, metadata !1271, metadata !DIExpression()), !dbg !1277
  %arrayidx171 = getelementptr inbounds ptr, ptr %vectors, i64 %k.4507, !dbg !1470
  %34 = load ptr, ptr %arrayidx171, align 8, !dbg !1470, !tbaa !1212
  %arrayidx172 = getelementptr inbounds double, ptr %34, i64 %column.4.us, !dbg !1470
  %35 = load double, ptr %arrayidx172, align 8, !dbg !1470, !tbaa !1218
  %arrayidx175 = getelementptr inbounds double, ptr %34, i64 %j.3509, !dbg !1472
  %36 = load double, ptr %arrayidx175, align 8, !dbg !1473, !tbaa !1218
  %37 = tail call double @llvm.fmuladd.f64(double %neg176, double %35, double %36), !dbg !1473
  store double %37, ptr %arrayidx175, align 8, !dbg !1473, !tbaa !1218
  %inc178 = add nuw nsw i64 %k.4507, 1, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %inc178, metadata !1271, metadata !DIExpression()), !dbg !1277
  %exitcond528.not = icmp eq i64 %inc178, %number_vectors, !dbg !1475
  br i1 %exitcond528.not, label %for.inc181, label %for.body170, !dbg !1460, !llvm.loop !1476

for.inc181:                                       ; preds = %for.body170, %for.cond168.preheader, %for.body150
  %inc182 = add nuw nsw i64 %j.3509, 1, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %inc182, metadata !1270, metadata !DIExpression()), !dbg !1277
  %exitcond529.not = icmp eq i64 %inc182, %rank, !dbg !1479
  br i1 %exitcond529.not, label %for.inc184, label %for.body150, !dbg !1449, !llvm.loop !1480

for.inc184:                                       ; preds = %for.inc181
  %inc185 = add nuw nsw i64 %i.0513, 1, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %row.4.us, metadata !1275, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %column.4.us, metadata !1272, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %inc185, metadata !1269, metadata !DIExpression()), !dbg !1277
  %exitcond530.not = icmp eq i64 %inc185, %rank, !dbg !1301
  br i1 %exitcond530.not, label %for.cond188.preheader, label %for.body26.us.preheader, !dbg !1304, !llvm.loop !1483

for.end239:                                       ; preds = %for.inc238.us, %if.end17, %for.cond188.preheader
  %call240 = tail call ptr @RelinquishMagickMemory(ptr noundef %call2) #18, !dbg !1485
  call void @llvm.dbg.value(metadata ptr %call240, metadata !1274, metadata !DIExpression()), !dbg !1277
  %call241 = tail call ptr @RelinquishMagickMemory(ptr noundef %call1) #18, !dbg !1486
  call void @llvm.dbg.value(metadata ptr %call241, metadata !1276, metadata !DIExpression()), !dbg !1277
  %call242 = tail call ptr @RelinquishMagickMemory(ptr noundef %call) #18, !dbg !1487
  call void @llvm.dbg.value(metadata ptr %call242, metadata !1273, metadata !DIExpression()), !dbg !1277
  br label %cleanup, !dbg !1488

cleanup:                                          ; preds = %if.end117, %if.then34.us, %if.end12, %if.then14, %for.end239
  %retval.0 = phi i32 [ 1, %for.end239 ], [ 0, %if.then14 ], [ 0, %if.end12 ], [ 0, %if.then34.us ], [ 0, %if.end117 ], !dbg !1277
  ret i32 %retval.0, !dbg !1489
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @GetMatrixColumns(ptr nocapture noundef readonly %matrix_info) local_unnamed_addr #6 !dbg !1490 {
entry:
  call void @llvm.dbg.value(metadata ptr %matrix_info, metadata !1494, metadata !DIExpression()), !dbg !1495
  %columns = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 1, !dbg !1496
  %0 = load i64, ptr %columns, align 8, !dbg !1496, !tbaa !890
  ret i64 %0, !dbg !1497
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetMatrixElement(ptr nocapture noundef readonly %matrix_info, i64 noundef %x, i64 noundef %y, ptr nocapture noundef %value) local_unnamed_addr #0 !dbg !1498 {
entry:
  call void @llvm.dbg.value(metadata ptr %matrix_info, metadata !1503, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %x, metadata !1504, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %y, metadata !1505, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata ptr %value, metadata !1506, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %y, metadata !1510, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i64 undef, metadata !1515, metadata !DIExpression()), !dbg !1516
  %cmp.i = icmp slt i64 %y, 0, !dbg !1518
  br i1 %cmp.i, label %EdgeY.exit, label %if.end.i, !dbg !1520

if.end.i:                                         ; preds = %entry
  %rows = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 2, !dbg !1521
  %0 = load i64, ptr %rows, align 8, !dbg !1521, !tbaa !893
  call void @llvm.dbg.value(metadata i64 %0, metadata !1515, metadata !DIExpression()), !dbg !1516
  %cmp1.not.i = icmp sgt i64 %0, %y, !dbg !1522
  %sub.i = add i64 %0, -1
  %spec.select.i = select i1 %cmp1.not.i, i64 %y, i64 %sub.i, !dbg !1524
  br label %EdgeY.exit, !dbg !1524

EdgeY.exit:                                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i64 [ 0, %entry ], [ %spec.select.i, %if.end.i ], !dbg !1516
  %columns = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 1, !dbg !1525
  %1 = load i64, ptr %columns, align 8, !dbg !1525, !tbaa !890
  %mul = mul i64 %1, %retval.0.i, !dbg !1526
  call void @llvm.dbg.value(metadata i64 %x, metadata !1527, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %1, metadata !1530, metadata !DIExpression()), !dbg !1531
  %cmp.i26 = icmp slt i64 %x, 0, !dbg !1533
  br i1 %cmp.i26, label %EdgeX.exit, label %if.end.i30, !dbg !1535

if.end.i30:                                       ; preds = %EdgeY.exit
  %cmp1.not.i27 = icmp sgt i64 %1, %x, !dbg !1536
  %sub.i28 = add i64 %1, -1
  %spec.select.i29 = select i1 %cmp1.not.i27, i64 %x, i64 %sub.i28, !dbg !1538
  br label %EdgeX.exit, !dbg !1538

EdgeX.exit:                                       ; preds = %EdgeY.exit, %if.end.i30
  %retval.0.i31 = phi i64 [ 0, %EdgeY.exit ], [ %spec.select.i29, %if.end.i30 ], !dbg !1531
  %add = add i64 %retval.0.i31, %mul, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %add, metadata !1508, metadata !DIExpression()), !dbg !1509
  %2 = load i32, ptr %matrix_info, align 8, !dbg !1540, !tbaa !928
  %cmp.not = icmp eq i32 %2, 3, !dbg !1542
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1543

if.then:                                          ; preds = %EdgeX.exit
  %elements = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 9, !dbg !1544
  %3 = load ptr, ptr %elements, align 8, !dbg !1544, !tbaa !947
  %stride = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 3, !dbg !1546
  %4 = load i64, ptr %stride, align 8, !dbg !1546, !tbaa !896
  %mul3 = mul i64 %4, %add, !dbg !1547
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %mul3, !dbg !1548
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %value, ptr align 1 %add.ptr, i64 %4, i1 false), !dbg !1549
  br label %cleanup, !dbg !1550

if.end:                                           ; preds = %EdgeX.exit
  %stride5 = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 3, !dbg !1551
  %5 = load i64, ptr %stride5, align 8, !dbg !1551, !tbaa !896
  %mul6 = mul i64 %5, %add, !dbg !1552
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1553), !dbg !1556
  call void @llvm.dbg.value(metadata ptr %matrix_info, metadata !1557, metadata !DIExpression()) #18, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %mul6, metadata !1563, metadata !DIExpression()) #18, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %5, metadata !1564, metadata !DIExpression()) #18, !dbg !1568
  call void @llvm.dbg.value(metadata ptr %value, metadata !1565, metadata !DIExpression()) #18, !dbg !1568
  %semaphore.i = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 10, !dbg !1570
  %6 = load ptr, ptr %semaphore.i, align 8, !dbg !1570, !tbaa !900, !alias.scope !1553, !noalias !1571
  tail call void @LockSemaphoreInfo(ptr noundef %6) #18, !dbg !1573, !noalias !1574
  %file.i = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 8, !dbg !1575
  %7 = load i32, ptr %file.i, align 8, !dbg !1575, !tbaa !963, !alias.scope !1553, !noalias !1571
  %call.i = tail call i64 @lseek(i32 noundef %7, i64 noundef %mul6, i32 noundef 0) #18, !dbg !1577, !noalias !1574
  %cmp.i32 = icmp slt i64 %call.i, 0, !dbg !1578
  br i1 %cmp.i32, label %ReadMatrixElements.exit, label %for.cond.preheader.i, !dbg !1579

for.cond.preheader.i:                             ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1566, metadata !DIExpression()) #18, !dbg !1568
  %cmp225.i = icmp sgt i64 %5, 0, !dbg !1580
  br i1 %cmp225.i, label %for.body.i, label %ReadMatrixElements.exit, !dbg !1583

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.inc.i
  %i.026.i = phi i64 [ %add.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %i.026.i, metadata !1566, metadata !DIExpression()) #18, !dbg !1568
  %add.ptr.i = getelementptr inbounds i8, ptr %value, i64 %i.026.i, !dbg !1584
  %sub.i33 = sub i64 %5, %i.026.i, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %sub.i33, metadata !1056, metadata !DIExpression()) #18, !dbg !1587
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1061, metadata !DIExpression()) #18, !dbg !1587
  %8 = tail call i64 @llvm.umin.i64(i64 %sub.i33, i64 9223372036854775807) #18, !dbg !1587
  %call5.i = tail call i64 @read(i32 noundef %7, ptr noundef %add.ptr.i, i64 noundef %8) #18, !dbg !1589, !noalias !1553
  call void @llvm.dbg.value(metadata i64 %call5.i, metadata !1567, metadata !DIExpression()) #18, !dbg !1568
  %cmp6.i = icmp slt i64 %call5.i, 1, !dbg !1590
  br i1 %cmp6.i, label %if.then7.i, label %for.inc.i, !dbg !1592

if.then7.i:                                       ; preds = %for.body.i
  call void @llvm.dbg.value(metadata i64 0, metadata !1567, metadata !DIExpression()) #18, !dbg !1568
  %call8.i = tail call ptr @__errno_location() #19, !dbg !1593
  %9 = load i32, ptr %call8.i, align 4, !dbg !1593, !tbaa !1071, !noalias !1574
  %cmp9.not.i = icmp eq i32 %9, 4, !dbg !1596
  br i1 %cmp9.not.i, label %for.inc.i, label %ReadMatrixElements.exit, !dbg !1597

for.inc.i:                                        ; preds = %if.then7.i, %for.body.i
  %count.0.i = phi i64 [ 0, %if.then7.i ], [ %call5.i, %for.body.i ], !dbg !1598
  call void @llvm.dbg.value(metadata i64 %count.0.i, metadata !1567, metadata !DIExpression()) #18, !dbg !1568
  %add.i = add nsw i64 %count.0.i, %i.026.i, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1566, metadata !DIExpression()) #18, !dbg !1568
  %cmp2.i = icmp slt i64 %add.i, %5, !dbg !1580
  br i1 %cmp2.i, label %for.body.i, label %ReadMatrixElements.exit, !dbg !1583, !llvm.loop !1600

ReadMatrixElements.exit:                          ; preds = %if.then7.i, %for.inc.i, %if.end, %for.cond.preheader.i
  %retval.0.i34 = phi i64 [ -1, %if.end ], [ 0, %for.cond.preheader.i ], [ %add.i, %for.inc.i ], [ %i.026.i, %if.then7.i ], !dbg !1568
  tail call void @UnlockSemaphoreInfo(ptr noundef %6) #18, !dbg !1568, !noalias !1574
  call void @llvm.dbg.value(metadata i64 %retval.0.i34, metadata !1507, metadata !DIExpression()), !dbg !1509
  %10 = load i64, ptr %stride5, align 8, !dbg !1602, !tbaa !896
  %cmp10.not = icmp eq i64 %retval.0.i34, %10, !dbg !1604
  %. = zext i1 %cmp10.not to i32, !dbg !1509
  br label %cleanup, !dbg !1509

cleanup:                                          ; preds = %ReadMatrixElements.exit, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %., %ReadMatrixElements.exit ], !dbg !1509
  ret i32 %retval.0, !dbg !1605
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @GetMatrixRows(ptr nocapture noundef readonly %matrix_info) local_unnamed_addr #6 !dbg !1606 {
entry:
  call void @llvm.dbg.value(metadata ptr %matrix_info, metadata !1608, metadata !DIExpression()), !dbg !1609
  %rows = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 2, !dbg !1610
  %0 = load i64, ptr %rows, align 8, !dbg !1610, !tbaa !893
  ret i64 %0, !dbg !1611
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @LeastSquaresAddTerms(ptr nocapture noundef readonly %matrix, ptr nocapture noundef readonly %vectors, ptr nocapture noundef readonly %terms, ptr nocapture noundef readonly %results, i64 noundef %rank, i64 noundef %number_vectors) local_unnamed_addr #8 !dbg !1612 {
entry:
  call void @llvm.dbg.value(metadata ptr %matrix, metadata !1617, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata ptr %vectors, metadata !1618, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata ptr %terms, metadata !1619, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata ptr %results, metadata !1620, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %rank, metadata !1621, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64 %number_vectors, metadata !1622, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64 0, metadata !1624, metadata !DIExpression()), !dbg !1625
  %cmp39 = icmp sgt i64 %rank, 0, !dbg !1626
  br i1 %cmp39, label %for.cond1.preheader.lr.ph, label %for.end19, !dbg !1629

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp837 = icmp sgt i64 %number_vectors, 0
  br i1 %cmp837, label %for.cond1.preheader.us.us, label %for.cond1.preheader.us, !dbg !1630

for.cond1.preheader.us.us:                        ; preds = %for.cond1.preheader.lr.ph, %for.cond7.for.inc17_crit_edge.us.us
  %j.040.us.us = phi i64 [ %inc18.us.us, %for.cond7.for.inc17_crit_edge.us.us ], [ 0, %for.cond1.preheader.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %j.040.us.us, metadata !1624, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1625
  %arrayidx4.us.us = getelementptr inbounds double, ptr %terms, i64 %j.040.us.us
  br label %for.body3.us.us, !dbg !1633

for.body9.us.us:                                  ; preds = %for.body3.us.us, %for.body9.us.us
  %i.138.us.us = phi i64 [ %inc15.us.us, %for.body9.us.us ], [ 0, %for.body3.us.us ]
  call void @llvm.dbg.value(metadata i64 %i.138.us.us, metadata !1623, metadata !DIExpression()), !dbg !1625
  %arrayidx10.us.us = getelementptr inbounds double, ptr %results, i64 %i.138.us.us, !dbg !1635
  %0 = load double, ptr %arrayidx10.us.us, align 8, !dbg !1635, !tbaa !1218
  %1 = load double, ptr %arrayidx4.us.us, align 8, !dbg !1637, !tbaa !1218
  %arrayidx12.us.us = getelementptr inbounds ptr, ptr %vectors, i64 %i.138.us.us, !dbg !1638
  %2 = load ptr, ptr %arrayidx12.us.us, align 8, !dbg !1638, !tbaa !1212
  %arrayidx13.us.us = getelementptr inbounds double, ptr %2, i64 %j.040.us.us, !dbg !1638
  %3 = load double, ptr %arrayidx13.us.us, align 8, !dbg !1639, !tbaa !1218
  %4 = tail call double @llvm.fmuladd.f64(double %0, double %1, double %3), !dbg !1639
  store double %4, ptr %arrayidx13.us.us, align 8, !dbg !1639, !tbaa !1218
  %inc15.us.us = add nuw nsw i64 %i.138.us.us, 1, !dbg !1640
  call void @llvm.dbg.value(metadata i64 %inc15.us.us, metadata !1623, metadata !DIExpression()), !dbg !1625
  %exitcond61.not = icmp eq i64 %inc15.us.us, %number_vectors, !dbg !1641
  br i1 %exitcond61.not, label %for.cond7.for.inc17_crit_edge.us.us, label %for.body9.us.us, !dbg !1630, !llvm.loop !1642

for.body3.us.us:                                  ; preds = %for.body3.us.us, %for.cond1.preheader.us.us
  %i.036.us.us = phi i64 [ 0, %for.cond1.preheader.us.us ], [ %inc.us.us, %for.body3.us.us ]
  call void @llvm.dbg.value(metadata i64 %i.036.us.us, metadata !1623, metadata !DIExpression()), !dbg !1625
  %arrayidx.us.us = getelementptr inbounds double, ptr %terms, i64 %i.036.us.us, !dbg !1644
  %5 = load double, ptr %arrayidx.us.us, align 8, !dbg !1644, !tbaa !1218
  %6 = load double, ptr %arrayidx4.us.us, align 8, !dbg !1646, !tbaa !1218
  %arrayidx5.us.us = getelementptr inbounds ptr, ptr %matrix, i64 %i.036.us.us, !dbg !1647
  %7 = load ptr, ptr %arrayidx5.us.us, align 8, !dbg !1647, !tbaa !1212
  %arrayidx6.us.us = getelementptr inbounds double, ptr %7, i64 %j.040.us.us, !dbg !1647
  %8 = load double, ptr %arrayidx6.us.us, align 8, !dbg !1648, !tbaa !1218
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %6, double %8), !dbg !1648
  store double %9, ptr %arrayidx6.us.us, align 8, !dbg !1648, !tbaa !1218
  %inc.us.us = add nuw nsw i64 %i.036.us.us, 1, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %inc.us.us, metadata !1623, metadata !DIExpression()), !dbg !1625
  %exitcond60.not = icmp eq i64 %inc.us.us, %rank, !dbg !1650
  br i1 %exitcond60.not, label %for.body9.us.us, label %for.body3.us.us, !dbg !1633, !llvm.loop !1651

for.cond7.for.inc17_crit_edge.us.us:              ; preds = %for.body9.us.us
  %inc18.us.us = add nuw nsw i64 %j.040.us.us, 1, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %inc18.us.us, metadata !1624, metadata !DIExpression()), !dbg !1625
  %exitcond62.not = icmp eq i64 %inc18.us.us, %rank, !dbg !1626
  br i1 %exitcond62.not, label %for.end19, label %for.cond1.preheader.us.us, !dbg !1629, !llvm.loop !1654

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.lr.ph, %for.cond1.for.cond7.preheader_crit_edge.us
  %j.040.us = phi i64 [ %inc18.us, %for.cond1.for.cond7.preheader_crit_edge.us ], [ 0, %for.cond1.preheader.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %j.040.us, metadata !1624, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1625
  %arrayidx4.us = getelementptr inbounds double, ptr %terms, i64 %j.040.us
  br label %for.body3.us, !dbg !1633

for.body3.us:                                     ; preds = %for.cond1.preheader.us, %for.body3.us
  %i.036.us = phi i64 [ 0, %for.cond1.preheader.us ], [ %inc.us, %for.body3.us ]
  call void @llvm.dbg.value(metadata i64 %i.036.us, metadata !1623, metadata !DIExpression()), !dbg !1625
  %arrayidx.us = getelementptr inbounds double, ptr %terms, i64 %i.036.us, !dbg !1644
  %10 = load double, ptr %arrayidx.us, align 8, !dbg !1644, !tbaa !1218
  %11 = load double, ptr %arrayidx4.us, align 8, !dbg !1646, !tbaa !1218
  %arrayidx5.us = getelementptr inbounds ptr, ptr %matrix, i64 %i.036.us, !dbg !1647
  %12 = load ptr, ptr %arrayidx5.us, align 8, !dbg !1647, !tbaa !1212
  %arrayidx6.us = getelementptr inbounds double, ptr %12, i64 %j.040.us, !dbg !1647
  %13 = load double, ptr %arrayidx6.us, align 8, !dbg !1648, !tbaa !1218
  %14 = tail call double @llvm.fmuladd.f64(double %10, double %11, double %13), !dbg !1648
  store double %14, ptr %arrayidx6.us, align 8, !dbg !1648, !tbaa !1218
  %inc.us = add nuw nsw i64 %i.036.us, 1, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !1623, metadata !DIExpression()), !dbg !1625
  %exitcond.not = icmp eq i64 %inc.us, %rank, !dbg !1650
  br i1 %exitcond.not, label %for.cond1.for.cond7.preheader_crit_edge.us, label %for.body3.us, !dbg !1633, !llvm.loop !1651

for.cond1.for.cond7.preheader_crit_edge.us:       ; preds = %for.body3.us
  call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1625
  %inc18.us = add nuw nsw i64 %j.040.us, 1, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %inc18.us, metadata !1624, metadata !DIExpression()), !dbg !1625
  %exitcond59.not = icmp eq i64 %inc18.us, %rank, !dbg !1626
  br i1 %exitcond59.not, label %for.end19, label %for.cond1.preheader.us, !dbg !1629, !llvm.loop !1654

for.end19:                                        ; preds = %for.cond1.for.cond7.preheader_crit_edge.us, %for.cond7.for.inc17_crit_edge.us.us, %entry
  ret void, !dbg !1656
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MatrixToImage(ptr noundef readonly %matrix_info, ptr noundef %exception) local_unnamed_addr #0 !dbg !1657 {
entry:
  %value = alloca double, align 8
  %value38 = alloca double, align 8
  call void @llvm.dbg.value(metadata ptr %matrix_info, metadata !1661, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1662, metadata !DIExpression()), !dbg !1684
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #18, !dbg !1685
  %stride = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 3, !dbg !1686
  %0 = load i64, ptr %stride, align 8, !dbg !1686, !tbaa !896
  %cmp = icmp ult i64 %0, 8, !dbg !1688
  br i1 %cmp, label %cleanup79, label %if.end, !dbg !1689

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %value, metadata !1670, metadata !DIExpression(DW_OP_deref)), !dbg !1684
  %call = call i32 @GetMatrixElement(ptr noundef nonnull %matrix_info, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %value), !dbg !1690
  %1 = load double, ptr %value, align 8, !dbg !1691, !tbaa !1218
  call void @llvm.dbg.value(metadata double %1, metadata !1670, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata double %1, metadata !1668, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata double %1, metadata !1667, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 0, metadata !1673, metadata !DIExpression()), !dbg !1684
  %rows = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !1673, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata double %1, metadata !1668, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata double %1, metadata !1667, metadata !DIExpression()), !dbg !1684
  %2 = load i64, ptr %rows, align 8, !dbg !1692, !tbaa !893
  %cmp1188 = icmp sgt i64 %2, 0, !dbg !1693
  br i1 %cmp1188, label %for.cond2.preheader.lr.ph, label %for.end17, !dbg !1694

for.cond2.preheader.lr.ph:                        ; preds = %if.end
  %columns = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 1
  %elements.i = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 9
  %semaphore.i.i = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 10
  %file.i.i = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 8
  %3 = load i64, ptr %columns, align 8, !dbg !1695, !tbaa !890
  %4 = icmp sgt i64 %3, 0, !dbg !1698
  br i1 %4, label %for.cond2.preheader, label %for.end17

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.end
  %5 = phi i64 [ %27, %for.end ], [ %2, %for.cond2.preheader.lr.ph ]
  %6 = phi i64 [ %28, %for.end ], [ %3, %for.cond2.preheader.lr.ph ]
  %7 = phi i64 [ %29, %for.end ], [ %3, %for.cond2.preheader.lr.ph ], !dbg !1695
  %y.0191 = phi i64 [ %inc16, %for.end ], [ 0, %for.cond2.preheader.lr.ph ]
  %min_value.0190 = phi double [ %min_value.1.lcssa, %for.end ], [ %1, %for.cond2.preheader.lr.ph ]
  %max_value.0189 = phi double [ %max_value.1.lcssa, %for.end ], [ %1, %for.cond2.preheader.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %y.0191, metadata !1673, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 0, metadata !1674, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata double %min_value.0190, metadata !1668, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata double %max_value.0189, metadata !1667, metadata !DIExpression()), !dbg !1684
  %cmp3182 = icmp sgt i64 %7, 0, !dbg !1698
  br i1 %cmp3182, label %for.body4.lr.ph, label %for.end, !dbg !1700

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %8 = load i32, ptr %matrix_info, align 8, !dbg !1701, !tbaa !928
  %9 = icmp eq i32 %8, 3, !dbg !1705
  br i1 %9, label %for.body4, label %for.body4.lr.ph.split.us

for.body4.lr.ph.split.us:                         ; preds = %for.body4.lr.ph
  %cmp1.not.i.i.us = icmp sgt i64 %5, %y.0191
  %sub.i.i.us = add nsw i64 %5, -1
  %spec.select.i.i.us = select i1 %cmp1.not.i.i.us, i64 %y.0191, i64 %sub.i.i.us
  %10 = load ptr, ptr %elements.i, align 8, !tbaa !947
  %11 = load i64, ptr %stride, align 8, !tbaa !896
  %smax = call i64 @llvm.smax.i64(i64 %6, i64 1), !dbg !1700
  br label %for.body4.us, !dbg !1700

for.body4.us:                                     ; preds = %for.inc.us, %for.body4.lr.ph.split.us
  %12 = phi i64 [ %7, %for.body4.lr.ph.split.us ], [ %6, %for.inc.us ]
  %x.0185.us = phi i64 [ 0, %for.body4.lr.ph.split.us ], [ %inc.us, %for.inc.us ]
  %min_value.1184.us = phi double [ %min_value.0190, %for.body4.lr.ph.split.us ], [ %min_value.2.us, %for.inc.us ]
  %max_value.1183.us = phi double [ %max_value.0189, %for.body4.lr.ph.split.us ], [ %max_value.2.us, %for.inc.us ]
  call void @llvm.dbg.value(metadata i64 %x.0185.us, metadata !1674, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata double %min_value.1184.us, metadata !1668, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata double %max_value.1183.us, metadata !1667, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata ptr %value, metadata !1670, metadata !DIExpression(DW_OP_deref)), !dbg !1684
  call void @llvm.dbg.value(metadata ptr %matrix_info, metadata !1503, metadata !DIExpression()) #18, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %x.0185.us, metadata !1504, metadata !DIExpression()) #18, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %y.0191, metadata !1505, metadata !DIExpression()) #18, !dbg !1706
  call void @llvm.dbg.value(metadata ptr %value, metadata !1506, metadata !DIExpression()) #18, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %y.0191, metadata !1510, metadata !DIExpression()) #18, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %5, metadata !1515, metadata !DIExpression()) #18, !dbg !1707
  %mul.i.us = mul i64 %spec.select.i.i.us, %12, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %x.0185.us, metadata !1527, metadata !DIExpression()) #18, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %12, metadata !1530, metadata !DIExpression()) #18, !dbg !1710
  %add.i.us = add i64 %mul.i.us, %x.0185.us, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %add.i.us, metadata !1508, metadata !DIExpression()) #18, !dbg !1706
  %mul3.i.us = mul i64 %11, %add.i.us, !dbg !1713
  %add.ptr.i.us = getelementptr inbounds i8, ptr %10, i64 %mul3.i.us, !dbg !1714
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %value, ptr align 1 %add.ptr.i.us, i64 %11, i1 false) #18, !dbg !1715
  %13 = load double, ptr %value, align 8, !dbg !1716, !tbaa !1218
  call void @llvm.dbg.value(metadata double %13, metadata !1670, metadata !DIExpression()), !dbg !1684
  %cmp9.us = fcmp olt double %13, %min_value.1184.us, !dbg !1718
  br i1 %cmp9.us, label %for.inc.us, label %if.else.us, !dbg !1719

if.else.us:                                       ; preds = %for.body4.us
  %cmp11.us = fcmp ogt double %13, %max_value.1183.us, !dbg !1720
  br i1 %cmp11.us, label %if.then12.us, label %for.inc.us, !dbg !1722

if.then12.us:                                     ; preds = %if.else.us
  call void @llvm.dbg.value(metadata double %13, metadata !1667, metadata !DIExpression()), !dbg !1684
  br label %for.inc.us, !dbg !1723

for.inc.us:                                       ; preds = %if.then12.us, %if.else.us, %for.body4.us
  %max_value.2.us = phi double [ %13, %if.then12.us ], [ %max_value.1183.us, %if.else.us ], [ %max_value.1183.us, %for.body4.us ], !dbg !1684
  %min_value.2.us = phi double [ %min_value.1184.us, %if.then12.us ], [ %min_value.1184.us, %if.else.us ], [ %13, %for.body4.us ], !dbg !1684
  call void @llvm.dbg.value(metadata double %min_value.2.us, metadata !1668, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata double %max_value.2.us, metadata !1667, metadata !DIExpression()), !dbg !1684
  %inc.us = add nuw nsw i64 %x.0185.us, 1, !dbg !1724
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !1674, metadata !DIExpression()), !dbg !1699
  %exitcond.not = icmp eq i64 %inc.us, %smax, !dbg !1698
  br i1 %exitcond.not, label %for.end, label %for.body4.us, !dbg !1700, !llvm.loop !1725

for.body4:                                        ; preds = %for.body4.lr.ph, %for.inc.for.body4_crit_edge
  %14 = phi i32 [ %.pre215, %for.inc.for.body4_crit_edge ], [ 3, %for.body4.lr.ph ], !dbg !1701
  %15 = phi i64 [ %.pre, %for.inc.for.body4_crit_edge ], [ %5, %for.body4.lr.ph ], !dbg !1727
  %16 = phi i64 [ %26, %for.inc.for.body4_crit_edge ], [ %7, %for.body4.lr.ph ]
  %x.0185 = phi i64 [ %inc, %for.inc.for.body4_crit_edge ], [ 0, %for.body4.lr.ph ]
  %min_value.1184 = phi double [ %min_value.2, %for.inc.for.body4_crit_edge ], [ %min_value.0190, %for.body4.lr.ph ]
  %max_value.1183 = phi double [ %max_value.2, %for.inc.for.body4_crit_edge ], [ %max_value.0189, %for.body4.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.0185, metadata !1674, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata double %min_value.1184, metadata !1668, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata double %max_value.1183, metadata !1667, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata ptr %value, metadata !1670, metadata !DIExpression(DW_OP_deref)), !dbg !1684
  call void @llvm.dbg.value(metadata ptr %matrix_info, metadata !1503, metadata !DIExpression()) #18, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %x.0185, metadata !1504, metadata !DIExpression()) #18, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %y.0191, metadata !1505, metadata !DIExpression()) #18, !dbg !1706
  call void @llvm.dbg.value(metadata ptr %value, metadata !1506, metadata !DIExpression()) #18, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %y.0191, metadata !1510, metadata !DIExpression()) #18, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %15, metadata !1515, metadata !DIExpression()) #18, !dbg !1707
  %cmp1.not.i.i = icmp sgt i64 %15, %y.0191, !dbg !1728
  %sub.i.i = add i64 %15, -1
  %spec.select.i.i = select i1 %cmp1.not.i.i, i64 %y.0191, i64 %sub.i.i, !dbg !1729
  %mul.i = mul i64 %spec.select.i.i, %16, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %x.0185, metadata !1527, metadata !DIExpression()) #18, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %16, metadata !1530, metadata !DIExpression()) #18, !dbg !1710
  %add.i = add i64 %mul.i, %x.0185, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1508, metadata !DIExpression()) #18, !dbg !1706
  %cmp.not.i = icmp eq i32 %14, 3, !dbg !1705
  br i1 %cmp.not.i, label %if.end.i, label %GetMatrixElement.exit.thread, !dbg !1730

GetMatrixElement.exit.thread:                     ; preds = %for.body4
  %17 = load ptr, ptr %elements.i, align 8, !dbg !1731, !tbaa !947
  %18 = load i64, ptr %stride, align 8, !dbg !1732, !tbaa !896
  %mul3.i = mul i64 %18, %add.i, !dbg !1713
  %add.ptr.i = getelementptr inbounds i8, ptr %17, i64 %mul3.i, !dbg !1714
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %value, ptr align 1 %add.ptr.i, i64 %18, i1 false) #18, !dbg !1715
  br label %if.end8, !dbg !1733

if.end.i:                                         ; preds = %for.body4
  %19 = load i64, ptr %stride, align 8, !dbg !1734, !tbaa !896
  %mul6.i = mul i64 %19, %add.i, !dbg !1735
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1736) #18, !dbg !1739
  call void @llvm.dbg.value(metadata ptr %matrix_info, metadata !1557, metadata !DIExpression()) #18, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %mul6.i, metadata !1563, metadata !DIExpression()) #18, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %19, metadata !1564, metadata !DIExpression()) #18, !dbg !1740
  call void @llvm.dbg.value(metadata ptr %value, metadata !1565, metadata !DIExpression()) #18, !dbg !1740
  %20 = load ptr, ptr %semaphore.i.i, align 8, !dbg !1742, !tbaa !900, !alias.scope !1736, !noalias !1743
  tail call void @LockSemaphoreInfo(ptr noundef %20) #18, !dbg !1745, !noalias !1746
  %21 = load i32, ptr %file.i.i, align 8, !dbg !1747, !tbaa !963, !alias.scope !1736, !noalias !1743
  %call.i.i = tail call i64 @lseek(i32 noundef %21, i64 noundef %mul6.i, i32 noundef 0) #18, !dbg !1748, !noalias !1746
  %cmp.i32.i = icmp slt i64 %call.i.i, 0, !dbg !1749
  br i1 %cmp.i32.i, label %GetMatrixElement.exit, label %for.cond.preheader.i.i, !dbg !1750

for.cond.preheader.i.i:                           ; preds = %if.end.i
  call void @llvm.dbg.value(metadata i64 0, metadata !1566, metadata !DIExpression()) #18, !dbg !1740
  %cmp225.i.i = icmp sgt i64 %19, 0, !dbg !1751
  br i1 %cmp225.i.i, label %for.body.i.i, label %GetMatrixElement.exit, !dbg !1752

for.body.i.i:                                     ; preds = %for.cond.preheader.i.i, %for.inc.i.i
  %i.026.i.i = phi i64 [ %add.i.i, %for.inc.i.i ], [ 0, %for.cond.preheader.i.i ]
  call void @llvm.dbg.value(metadata i64 %i.026.i.i, metadata !1566, metadata !DIExpression()) #18, !dbg !1740
  %add.ptr.i.i = getelementptr inbounds i8, ptr %value, i64 %i.026.i.i, !dbg !1753
  %sub.i33.i = sub i64 %19, %i.026.i.i, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %sub.i33.i, metadata !1056, metadata !DIExpression()) #18, !dbg !1755
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1061, metadata !DIExpression()) #18, !dbg !1755
  %22 = tail call i64 @llvm.umin.i64(i64 %sub.i33.i, i64 9223372036854775807) #18, !dbg !1755
  %call5.i.i = call i64 @read(i32 noundef %21, ptr noundef nonnull %add.ptr.i.i, i64 noundef %22) #18, !dbg !1757, !noalias !1736
  call void @llvm.dbg.value(metadata i64 %call5.i.i, metadata !1567, metadata !DIExpression()) #18, !dbg !1740
  %cmp6.i.i = icmp slt i64 %call5.i.i, 1, !dbg !1758
  br i1 %cmp6.i.i, label %if.then7.i.i, label %for.inc.i.i, !dbg !1759

if.then7.i.i:                                     ; preds = %for.body.i.i
  call void @llvm.dbg.value(metadata i64 0, metadata !1567, metadata !DIExpression()) #18, !dbg !1740
  %call8.i.i = tail call ptr @__errno_location() #19, !dbg !1760
  %23 = load i32, ptr %call8.i.i, align 4, !dbg !1760, !tbaa !1071, !noalias !1746
  %cmp9.not.i.i = icmp eq i32 %23, 4, !dbg !1761
  br i1 %cmp9.not.i.i, label %for.inc.i.i, label %GetMatrixElement.exit, !dbg !1762

for.inc.i.i:                                      ; preds = %if.then7.i.i, %for.body.i.i
  %count.0.i.i = phi i64 [ 0, %if.then7.i.i ], [ %call5.i.i, %for.body.i.i ], !dbg !1763
  call void @llvm.dbg.value(metadata i64 %count.0.i.i, metadata !1567, metadata !DIExpression()) #18, !dbg !1740
  %add.i.i = add nsw i64 %count.0.i.i, %i.026.i.i, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %add.i.i, metadata !1566, metadata !DIExpression()) #18, !dbg !1740
  %cmp2.i.i = icmp slt i64 %add.i.i, %19, !dbg !1751
  br i1 %cmp2.i.i, label %for.body.i.i, label %GetMatrixElement.exit, !dbg !1752, !llvm.loop !1765

GetMatrixElement.exit:                            ; preds = %if.then7.i.i, %for.inc.i.i, %if.end.i, %for.cond.preheader.i.i
  %retval.0.i34.i = phi i64 [ -1, %if.end.i ], [ 0, %for.cond.preheader.i.i ], [ %i.026.i.i, %if.then7.i.i ], [ %add.i.i, %for.inc.i.i ], !dbg !1740
  tail call void @UnlockSemaphoreInfo(ptr noundef %20) #18, !dbg !1740, !noalias !1746
  call void @llvm.dbg.value(metadata i64 %retval.0.i34.i, metadata !1507, metadata !DIExpression()) #18, !dbg !1706
  %24 = load i64, ptr %stride, align 8, !dbg !1767, !tbaa !896
  %cmp10.not.i.not = icmp eq i64 %retval.0.i34.i, %24, !dbg !1768
  br i1 %cmp10.not.i.not, label %if.end8, label %for.inc, !dbg !1733

if.end8:                                          ; preds = %GetMatrixElement.exit.thread, %GetMatrixElement.exit
  %25 = load double, ptr %value, align 8, !dbg !1716, !tbaa !1218
  call void @llvm.dbg.value(metadata double %25, metadata !1670, metadata !DIExpression()), !dbg !1684
  %cmp9 = fcmp olt double %25, %min_value.1184, !dbg !1718
  br i1 %cmp9, label %for.inc, label %if.else, !dbg !1719

if.else:                                          ; preds = %if.end8
  %cmp11 = fcmp ogt double %25, %max_value.1183, !dbg !1720
  br i1 %cmp11, label %if.then12, label %for.inc, !dbg !1722

if.then12:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata double %25, metadata !1667, metadata !DIExpression()), !dbg !1684
  br label %for.inc, !dbg !1723

for.inc:                                          ; preds = %if.end8, %if.then12, %if.else, %GetMatrixElement.exit
  %max_value.2 = phi double [ %max_value.1183, %GetMatrixElement.exit ], [ %25, %if.then12 ], [ %max_value.1183, %if.else ], [ %max_value.1183, %if.end8 ], !dbg !1684
  %min_value.2 = phi double [ %min_value.1184, %GetMatrixElement.exit ], [ %min_value.1184, %if.then12 ], [ %min_value.1184, %if.else ], [ %25, %if.end8 ], !dbg !1684
  call void @llvm.dbg.value(metadata double %min_value.2, metadata !1668, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata double %max_value.2, metadata !1667, metadata !DIExpression()), !dbg !1684
  %inc = add nuw nsw i64 %x.0185, 1, !dbg !1724
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1674, metadata !DIExpression()), !dbg !1699
  %26 = load i64, ptr %columns, align 8, !dbg !1695, !tbaa !890
  %cmp3 = icmp slt i64 %inc, %26, !dbg !1698
  %.pre = load i64, ptr %rows, align 8, !dbg !1769, !tbaa !893
  br i1 %cmp3, label %for.inc.for.body4_crit_edge, label %for.end, !dbg !1700, !llvm.loop !1770

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  %.pre215 = load i32, ptr %matrix_info, align 8, !dbg !1701, !tbaa !928
  br label %for.body4, !dbg !1700

for.end:                                          ; preds = %for.inc.us, %for.inc, %for.cond2.preheader
  %27 = phi i64 [ %5, %for.cond2.preheader ], [ %.pre, %for.inc ], [ %5, %for.inc.us ], !dbg !1692
  %28 = phi i64 [ %6, %for.cond2.preheader ], [ %26, %for.inc ], [ %6, %for.inc.us ]
  %29 = phi i64 [ %7, %for.cond2.preheader ], [ %26, %for.inc ], [ %6, %for.inc.us ]
  %max_value.1.lcssa = phi double [ %max_value.0189, %for.cond2.preheader ], [ %max_value.2, %for.inc ], [ %max_value.2.us, %for.inc.us ], !dbg !1772
  %min_value.1.lcssa = phi double [ %min_value.0190, %for.cond2.preheader ], [ %min_value.2, %for.inc ], [ %min_value.2.us, %for.inc.us ], !dbg !1773
  %inc16 = add nuw nsw i64 %y.0191, 1, !dbg !1774
  call void @llvm.dbg.value(metadata i64 %inc16, metadata !1673, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata double %min_value.1.lcssa, metadata !1668, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata double %max_value.1.lcssa, metadata !1667, metadata !DIExpression()), !dbg !1684
  %cmp1 = icmp slt i64 %inc16, %27, !dbg !1693
  br i1 %cmp1, label %for.cond2.preheader, label %for.end17, !dbg !1694, !llvm.loop !1775

for.end17:                                        ; preds = %for.end, %for.cond2.preheader.lr.ph, %if.end
  %max_value.0.lcssa = phi double [ %1, %if.end ], [ %1, %for.cond2.preheader.lr.ph ], [ %max_value.1.lcssa, %for.end ], !dbg !1772
  %min_value.0.lcssa = phi double [ %1, %if.end ], [ %1, %for.cond2.preheader.lr.ph ], [ %min_value.1.lcssa, %for.end ], !dbg !1773
  %cmp18 = fcmp oeq double %min_value.0.lcssa, 0.000000e+00, !dbg !1777
  %cmp19 = fcmp oeq double %max_value.0.lcssa, 0.000000e+00
  %or.cond = select i1 %cmp18, i1 %cmp19, i1 false, !dbg !1779
  br i1 %or.cond, label %if.end27, label %if.else21, !dbg !1779

if.else21:                                        ; preds = %for.end17
  %cmp22 = fcmp oeq double %min_value.0.lcssa, %max_value.0.lcssa, !dbg !1780
  br i1 %cmp22, label %if.then23, label %if.else24, !dbg !1782

if.then23:                                        ; preds = %if.else21
  %div = fdiv double 6.553500e+04, %min_value.0.lcssa, !dbg !1783
  call void @llvm.dbg.value(metadata double %div, metadata !1669, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1668, metadata !DIExpression()), !dbg !1684
  br label %if.end27, !dbg !1785

if.else24:                                        ; preds = %if.else21
  %sub = fsub double %max_value.0.lcssa, %min_value.0.lcssa, !dbg !1786
  %div25 = fdiv double 6.553500e+04, %sub, !dbg !1787
  call void @llvm.dbg.value(metadata double %div25, metadata !1669, metadata !DIExpression()), !dbg !1684
  br label %if.end27

if.end27:                                         ; preds = %for.end17, %if.then23, %if.else24
  %min_value.3 = phi double [ 0.000000e+00, %if.then23 ], [ %min_value.0.lcssa, %if.else24 ], [ %min_value.0.lcssa, %for.end17 ], !dbg !1684
  %scale_factor.0 = phi double [ %div, %if.then23 ], [ %div25, %if.else24 ], [ 0.000000e+00, %for.end17 ], !dbg !1788
  call void @llvm.dbg.value(metadata double %scale_factor.0, metadata !1669, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata double %min_value.3, metadata !1668, metadata !DIExpression()), !dbg !1684
  %call28 = tail call ptr @AcquireImage(ptr noundef null) #18, !dbg !1789
  call void @llvm.dbg.value(metadata ptr %call28, metadata !1671, metadata !DIExpression()), !dbg !1684
  %columns29 = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 1, !dbg !1790
  %30 = load i64, ptr %columns29, align 8, !dbg !1790, !tbaa !890
  %columns30 = getelementptr inbounds %struct._Image, ptr %call28, i64 0, i32 7, !dbg !1791
  store i64 %30, ptr %columns30, align 8, !dbg !1792, !tbaa !1793
  %31 = load i64, ptr %rows, align 8, !dbg !1805, !tbaa !893
  %rows32 = getelementptr inbounds %struct._Image, ptr %call28, i64 0, i32 8, !dbg !1806
  store i64 %31, ptr %rows32, align 8, !dbg !1807, !tbaa !1808
  %colorspace = getelementptr inbounds %struct._Image, ptr %call28, i64 0, i32 1, !dbg !1809
  store i32 2, ptr %colorspace, align 4, !dbg !1810, !tbaa !1811
  call void @llvm.dbg.value(metadata i32 1, metadata !1672, metadata !DIExpression()), !dbg !1684
  %call33 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %call28, ptr noundef %exception) #18, !dbg !1812
  call void @llvm.dbg.value(metadata ptr %call33, metadata !1663, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 0, metadata !1673, metadata !DIExpression()), !dbg !1684
  %32 = load i64, ptr %rows32, align 8, !dbg !1813, !tbaa !1808
  %cmp36203 = icmp sgt i64 %32, 0, !dbg !1814
  br i1 %cmp36203, label %for.body37.lr.ph, label %for.end72.thread, !dbg !1815

for.end72.thread:                                 ; preds = %if.end27
  %call73220 = tail call ptr @DestroyCacheView(ptr noundef %call33) #18, !dbg !1816
  call void @llvm.dbg.value(metadata ptr %call73, metadata !1663, metadata !DIExpression()), !dbg !1684
  br label %cleanup79, !dbg !1817

for.body37.lr.ph:                                 ; preds = %if.end27
  %elements.i142 = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 9
  %semaphore.i.i149 = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 10
  %file.i.i150 = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 8
  br label %for.body37, !dbg !1815

for.body37:                                       ; preds = %for.body37.lr.ph, %cleanup
  %y.1205 = phi i64 [ 0, %for.body37.lr.ph ], [ %inc71, %cleanup ]
  %status.0204 = phi i32 [ 1, %for.body37.lr.ph ], [ %status.2, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.1205, metadata !1673, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i32 %status.0204, metadata !1672, metadata !DIExpression()), !dbg !1684
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value38) #18, !dbg !1818
  %cmp40 = icmp eq i32 %status.0204, 0, !dbg !1819
  br i1 %cmp40, label %cleanup, label %if.end42, !dbg !1821

if.end42:                                         ; preds = %for.body37
  %33 = load i64, ptr %columns30, align 8, !dbg !1822, !tbaa !1793
  %call44 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call33, i64 noundef 0, i64 noundef %y.1205, i64 noundef %33, i64 noundef 1, ptr noundef %exception) #21, !dbg !1823
  call void @llvm.dbg.value(metadata ptr %call44, metadata !1682, metadata !DIExpression()), !dbg !1824
  %cmp45 = icmp eq ptr %call44, null, !dbg !1825
  br i1 %cmp45, label %cleanup, label %for.cond48.preheader, !dbg !1827

for.cond48.preheader:                             ; preds = %if.end42
  call void @llvm.dbg.value(metadata i64 0, metadata !1683, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata ptr %call44, metadata !1682, metadata !DIExpression()), !dbg !1824
  %34 = load i64, ptr %columns30, align 8, !dbg !1828, !tbaa !1793
  %cmp50200 = icmp sgt i64 %34, 0, !dbg !1831
  br i1 %cmp50200, label %for.body51.lr.ph, label %for.end62, !dbg !1832

for.body51.lr.ph:                                 ; preds = %for.cond48.preheader
  %35 = load i32, ptr %matrix_info, align 8, !dbg !1833, !tbaa !928
  %36 = icmp eq i32 %35, 3, !dbg !1837
  br i1 %36, label %for.body51, label %for.body51.lr.ph.split.us

for.body51.lr.ph.split.us:                        ; preds = %for.body51.lr.ph
  %37 = load i64, ptr %columns29, align 8, !tbaa !890
  %sub.i28.i138.us = add i64 %37, -1
  %38 = load ptr, ptr %elements.i142, align 8, !tbaa !947
  %39 = load i64, ptr %stride, align 8, !tbaa !896
  %.pre217 = load i64, ptr %rows, align 8, !dbg !1838, !tbaa !893
  %cmp1.not.i.i132.us = icmp sgt i64 %.pre217, %y.1205
  %sub.i.i133.us = add i64 %.pre217, -1
  %spec.select.i.i134.us = select i1 %cmp1.not.i.i132.us, i64 %y.1205, i64 %sub.i.i133.us
  %mul.i136.us = mul i64 %spec.select.i.i134.us, %37
  br label %for.body51.us, !dbg !1832

for.body51.us:                                    ; preds = %ClampToQuantum.exit.us, %for.body51.lr.ph.split.us
  %x39.0202.us = phi i64 [ 0, %for.body51.lr.ph.split.us ], [ %inc61.us, %ClampToQuantum.exit.us ]
  %q.0201.us = phi ptr [ %call44, %for.body51.lr.ph.split.us ], [ %incdec.ptr.us, %ClampToQuantum.exit.us ]
  call void @llvm.dbg.value(metadata i64 %x39.0202.us, metadata !1683, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata ptr %q.0201.us, metadata !1682, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata ptr %value38, metadata !1678, metadata !DIExpression(DW_OP_deref)), !dbg !1824
  call void @llvm.dbg.value(metadata ptr %matrix_info, metadata !1503, metadata !DIExpression()) #18, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %x39.0202.us, metadata !1504, metadata !DIExpression()) #18, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %y.1205, metadata !1505, metadata !DIExpression()) #18, !dbg !1839
  call void @llvm.dbg.value(metadata ptr %value38, metadata !1506, metadata !DIExpression()) #18, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %y.1205, metadata !1510, metadata !DIExpression()) #18, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %.pre217, metadata !1515, metadata !DIExpression()) #18, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %x39.0202.us, metadata !1527, metadata !DIExpression()) #18, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %37, metadata !1530, metadata !DIExpression()) #18, !dbg !1842
  %cmp1.not.i27.i137.us = icmp sgt i64 %37, %x39.0202.us, !dbg !1844
  %spec.select.i29.i139.us = select i1 %cmp1.not.i27.i137.us, i64 %x39.0202.us, i64 %sub.i28.i138.us, !dbg !1845
  %add.i140.us = add i64 %spec.select.i29.i139.us, %mul.i136.us, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %add.i140.us, metadata !1508, metadata !DIExpression()) #18, !dbg !1839
  %mul3.i144.us = mul i64 %39, %add.i140.us, !dbg !1847
  %add.ptr.i145.us = getelementptr inbounds i8, ptr %38, i64 %mul3.i144.us, !dbg !1848
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %value38, ptr align 1 %add.ptr.i145.us, i64 %39, i1 false) #18, !dbg !1849
  %40 = load double, ptr %value38, align 8, !dbg !1850, !tbaa !1218
  call void @llvm.dbg.value(metadata double %40, metadata !1678, metadata !DIExpression()), !dbg !1824
  %sub56.us = fsub double %40, %min_value.3, !dbg !1851
  %mul.us = fmul double %scale_factor.0, %sub56.us, !dbg !1852
  call void @llvm.dbg.value(metadata double %mul.us, metadata !1678, metadata !DIExpression()), !dbg !1824
  store double %mul.us, ptr %value38, align 8, !dbg !1853, !tbaa !1218
  %conv.us = fptrunc double %mul.us to float, !dbg !1854
  call void @llvm.dbg.value(metadata float %conv.us, metadata !1855, metadata !DIExpression()), !dbg !1861
  %cmp.i.us = fcmp ugt float %conv.us, 0.000000e+00, !dbg !1863
  br i1 %cmp.i.us, label %if.end.i175.us, label %ClampToQuantum.exit.us, !dbg !1865

if.end.i175.us:                                   ; preds = %for.body51.us
  %cmp1.i.us = fcmp ult float %conv.us, 6.553500e+04, !dbg !1866
  br i1 %cmp1.i.us, label %if.end3.i.us, label %ClampToQuantum.exit.us, !dbg !1868

if.end3.i.us:                                     ; preds = %if.end.i175.us
  %add.i176.us = fadd float %conv.us, 5.000000e-01, !dbg !1869
  %conv.i.us = fptoui float %add.i176.us to i16, !dbg !1870
  br label %ClampToQuantum.exit.us, !dbg !1871

ClampToQuantum.exit.us:                           ; preds = %if.end3.i.us, %if.end.i175.us, %for.body51.us
  %retval.0.i177.us = phi i16 [ %conv.i.us, %if.end3.i.us ], [ 0, %for.body51.us ], [ -1, %if.end.i175.us ], !dbg !1861
  %red.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0201.us, i64 0, i32 2, !dbg !1872
  store i16 %retval.0.i177.us, ptr %red.us, align 2, !dbg !1873, !tbaa !1874
  %green.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0201.us, i64 0, i32 1, !dbg !1875
  store i16 %retval.0.i177.us, ptr %green.us, align 2, !dbg !1876, !tbaa !1877
  store i16 %retval.0.i177.us, ptr %q.0201.us, align 2, !dbg !1878, !tbaa !1879
  %incdec.ptr.us = getelementptr inbounds %struct._PixelPacket, ptr %q.0201.us, i64 1, !dbg !1880
  call void @llvm.dbg.value(metadata ptr undef, metadata !1682, metadata !DIExpression()), !dbg !1824
  %inc61.us = add nuw nsw i64 %x39.0202.us, 1, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %inc61.us, metadata !1683, metadata !DIExpression()), !dbg !1824
  %exitcond214.not = icmp eq i64 %inc61.us, %34, !dbg !1831
  br i1 %exitcond214.not, label %for.end62, label %for.body51.us, !dbg !1832, !llvm.loop !1882

for.body51:                                       ; preds = %for.body51.lr.ph, %for.inc60.for.body51_crit_edge
  %41 = phi i32 [ %.pre218, %for.inc60.for.body51_crit_edge ], [ 3, %for.body51.lr.ph ], !dbg !1833
  %x39.0202 = phi i64 [ %inc61, %for.inc60.for.body51_crit_edge ], [ 0, %for.body51.lr.ph ]
  %q.0201 = phi ptr [ %q.1, %for.inc60.for.body51_crit_edge ], [ %call44, %for.body51.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x39.0202, metadata !1683, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata ptr %q.0201, metadata !1682, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata ptr %value38, metadata !1678, metadata !DIExpression(DW_OP_deref)), !dbg !1824
  call void @llvm.dbg.value(metadata ptr %matrix_info, metadata !1503, metadata !DIExpression()) #18, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %x39.0202, metadata !1504, metadata !DIExpression()) #18, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %y.1205, metadata !1505, metadata !DIExpression()) #18, !dbg !1839
  call void @llvm.dbg.value(metadata ptr %value38, metadata !1506, metadata !DIExpression()) #18, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %y.1205, metadata !1510, metadata !DIExpression()) #18, !dbg !1840
  call void @llvm.dbg.value(metadata i64 undef, metadata !1515, metadata !DIExpression()) #18, !dbg !1840
  %42 = load i64, ptr %rows, align 8, !dbg !1838, !tbaa !893
  call void @llvm.dbg.value(metadata i64 %42, metadata !1515, metadata !DIExpression()) #18, !dbg !1840
  %cmp1.not.i.i132 = icmp sgt i64 %42, %y.1205, !dbg !1884
  %sub.i.i133 = add i64 %42, -1
  %spec.select.i.i134 = select i1 %cmp1.not.i.i132, i64 %y.1205, i64 %sub.i.i133, !dbg !1885
  %43 = load i64, ptr %columns29, align 8, !dbg !1886, !tbaa !890
  %mul.i136 = mul i64 %spec.select.i.i134, %43, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %x39.0202, metadata !1527, metadata !DIExpression()) #18, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %43, metadata !1530, metadata !DIExpression()) #18, !dbg !1842
  %cmp1.not.i27.i137 = icmp sgt i64 %43, %x39.0202, !dbg !1844
  %sub.i28.i138 = add i64 %43, -1
  %spec.select.i29.i139 = select i1 %cmp1.not.i27.i137, i64 %x39.0202, i64 %sub.i28.i138, !dbg !1845
  %add.i140 = add i64 %spec.select.i29.i139, %mul.i136, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %add.i140, metadata !1508, metadata !DIExpression()) #18, !dbg !1839
  %cmp.not.i141 = icmp eq i32 %41, 3, !dbg !1837
  br i1 %cmp.not.i141, label %if.end.i153, label %GetMatrixElement.exit174.thread, !dbg !1888

GetMatrixElement.exit174.thread:                  ; preds = %for.body51
  %44 = load ptr, ptr %elements.i142, align 8, !dbg !1889, !tbaa !947
  %45 = load i64, ptr %stride, align 8, !dbg !1890, !tbaa !896
  %mul3.i144 = mul i64 %45, %add.i140, !dbg !1847
  %add.ptr.i145 = getelementptr inbounds i8, ptr %44, i64 %mul3.i144, !dbg !1848
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %value38, ptr align 1 %add.ptr.i145, i64 %45, i1 false) #18, !dbg !1849
  br label %if.end55, !dbg !1891

if.end.i153:                                      ; preds = %for.body51
  %46 = load i64, ptr %stride, align 8, !dbg !1892, !tbaa !896
  %mul6.i148 = mul i64 %46, %add.i140, !dbg !1893
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1894) #18, !dbg !1897
  call void @llvm.dbg.value(metadata ptr %matrix_info, metadata !1557, metadata !DIExpression()) #18, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %mul6.i148, metadata !1563, metadata !DIExpression()) #18, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %46, metadata !1564, metadata !DIExpression()) #18, !dbg !1898
  call void @llvm.dbg.value(metadata ptr %value38, metadata !1565, metadata !DIExpression()) #18, !dbg !1898
  %47 = load ptr, ptr %semaphore.i.i149, align 8, !dbg !1900, !tbaa !900, !alias.scope !1894, !noalias !1901
  tail call void @LockSemaphoreInfo(ptr noundef %47) #18, !dbg !1903, !noalias !1904
  %48 = load i32, ptr %file.i.i150, align 8, !dbg !1905, !tbaa !963, !alias.scope !1894, !noalias !1901
  %call.i.i151 = tail call i64 @lseek(i32 noundef %48, i64 noundef %mul6.i148, i32 noundef 0) #18, !dbg !1906, !noalias !1904
  %cmp.i32.i152 = icmp slt i64 %call.i.i151, 0, !dbg !1907
  br i1 %cmp.i32.i152, label %GetMatrixElement.exit174, label %for.cond.preheader.i.i155, !dbg !1908

for.cond.preheader.i.i155:                        ; preds = %if.end.i153
  call void @llvm.dbg.value(metadata i64 0, metadata !1566, metadata !DIExpression()) #18, !dbg !1898
  %cmp225.i.i154 = icmp sgt i64 %46, 0, !dbg !1909
  br i1 %cmp225.i.i154, label %for.body.i.i161, label %GetMatrixElement.exit174, !dbg !1910

for.body.i.i161:                                  ; preds = %for.cond.preheader.i.i155, %for.inc.i.i168
  %i.026.i.i156 = phi i64 [ %add.i.i166, %for.inc.i.i168 ], [ 0, %for.cond.preheader.i.i155 ]
  call void @llvm.dbg.value(metadata i64 %i.026.i.i156, metadata !1566, metadata !DIExpression()) #18, !dbg !1898
  %add.ptr.i.i157 = getelementptr inbounds i8, ptr %value38, i64 %i.026.i.i156, !dbg !1911
  %sub.i33.i158 = sub i64 %46, %i.026.i.i156, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %sub.i33.i158, metadata !1056, metadata !DIExpression()) #18, !dbg !1913
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1061, metadata !DIExpression()) #18, !dbg !1913
  %49 = tail call i64 @llvm.umin.i64(i64 %sub.i33.i158, i64 9223372036854775807) #18, !dbg !1913
  %call5.i.i159 = call i64 @read(i32 noundef %48, ptr noundef nonnull %add.ptr.i.i157, i64 noundef %49) #18, !dbg !1915, !noalias !1894
  call void @llvm.dbg.value(metadata i64 %call5.i.i159, metadata !1567, metadata !DIExpression()) #18, !dbg !1898
  %cmp6.i.i160 = icmp slt i64 %call5.i.i159, 1, !dbg !1916
  br i1 %cmp6.i.i160, label %if.then7.i.i164, label %for.inc.i.i168, !dbg !1917

if.then7.i.i164:                                  ; preds = %for.body.i.i161
  call void @llvm.dbg.value(metadata i64 0, metadata !1567, metadata !DIExpression()) #18, !dbg !1898
  %call8.i.i162 = tail call ptr @__errno_location() #19, !dbg !1918
  %50 = load i32, ptr %call8.i.i162, align 4, !dbg !1918, !tbaa !1071, !noalias !1904
  %cmp9.not.i.i163 = icmp eq i32 %50, 4, !dbg !1919
  br i1 %cmp9.not.i.i163, label %for.inc.i.i168, label %GetMatrixElement.exit174, !dbg !1920

for.inc.i.i168:                                   ; preds = %if.then7.i.i164, %for.body.i.i161
  %count.0.i.i165 = phi i64 [ 0, %if.then7.i.i164 ], [ %call5.i.i159, %for.body.i.i161 ], !dbg !1921
  call void @llvm.dbg.value(metadata i64 %count.0.i.i165, metadata !1567, metadata !DIExpression()) #18, !dbg !1898
  %add.i.i166 = add nsw i64 %count.0.i.i165, %i.026.i.i156, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %add.i.i166, metadata !1566, metadata !DIExpression()) #18, !dbg !1898
  %cmp2.i.i167 = icmp slt i64 %add.i.i166, %46, !dbg !1909
  br i1 %cmp2.i.i167, label %for.body.i.i161, label %GetMatrixElement.exit174, !dbg !1910, !llvm.loop !1923

GetMatrixElement.exit174:                         ; preds = %if.then7.i.i164, %for.inc.i.i168, %if.end.i153, %for.cond.preheader.i.i155
  %retval.0.i34.i169 = phi i64 [ -1, %if.end.i153 ], [ 0, %for.cond.preheader.i.i155 ], [ %i.026.i.i156, %if.then7.i.i164 ], [ %add.i.i166, %for.inc.i.i168 ], !dbg !1898
  tail call void @UnlockSemaphoreInfo(ptr noundef %47) #18, !dbg !1898, !noalias !1904
  call void @llvm.dbg.value(metadata i64 %retval.0.i34.i169, metadata !1507, metadata !DIExpression()) #18, !dbg !1839
  %51 = load i64, ptr %stride, align 8, !dbg !1925, !tbaa !896
  %cmp10.not.i170.not = icmp eq i64 %retval.0.i34.i169, %51, !dbg !1926
  br i1 %cmp10.not.i170.not, label %if.end55, label %for.inc60, !dbg !1891

if.end55:                                         ; preds = %GetMatrixElement.exit174.thread, %GetMatrixElement.exit174
  %52 = load double, ptr %value38, align 8, !dbg !1850, !tbaa !1218
  call void @llvm.dbg.value(metadata double %52, metadata !1678, metadata !DIExpression()), !dbg !1824
  %sub56 = fsub double %52, %min_value.3, !dbg !1851
  %mul = fmul double %scale_factor.0, %sub56, !dbg !1852
  call void @llvm.dbg.value(metadata double %mul, metadata !1678, metadata !DIExpression()), !dbg !1824
  store double %mul, ptr %value38, align 8, !dbg !1853, !tbaa !1218
  %conv = fptrunc double %mul to float, !dbg !1854
  call void @llvm.dbg.value(metadata float %conv, metadata !1855, metadata !DIExpression()), !dbg !1861
  %cmp.i = fcmp ugt float %conv, 0.000000e+00, !dbg !1863
  br i1 %cmp.i, label %if.end.i175, label %ClampToQuantum.exit, !dbg !1865

if.end.i175:                                      ; preds = %if.end55
  %cmp1.i = fcmp ult float %conv, 6.553500e+04, !dbg !1866
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1868

if.end3.i:                                        ; preds = %if.end.i175
  %add.i176 = fadd float %conv, 5.000000e-01, !dbg !1869
  %conv.i = fptoui float %add.i176 to i16, !dbg !1870
  br label %ClampToQuantum.exit, !dbg !1871

ClampToQuantum.exit:                              ; preds = %if.end55, %if.end.i175, %if.end3.i
  %retval.0.i177 = phi i16 [ %conv.i, %if.end3.i ], [ 0, %if.end55 ], [ -1, %if.end.i175 ], !dbg !1861
  %red = getelementptr inbounds %struct._PixelPacket, ptr %q.0201, i64 0, i32 2, !dbg !1872
  store i16 %retval.0.i177, ptr %red, align 2, !dbg !1873, !tbaa !1874
  %green = getelementptr inbounds %struct._PixelPacket, ptr %q.0201, i64 0, i32 1, !dbg !1875
  store i16 %retval.0.i177, ptr %green, align 2, !dbg !1876, !tbaa !1877
  store i16 %retval.0.i177, ptr %q.0201, align 2, !dbg !1878, !tbaa !1879
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0201, i64 1, !dbg !1880
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1682, metadata !DIExpression()), !dbg !1824
  br label %for.inc60, !dbg !1927

for.inc60:                                        ; preds = %GetMatrixElement.exit174, %ClampToQuantum.exit
  %q.1 = phi ptr [ %q.0201, %GetMatrixElement.exit174 ], [ %incdec.ptr, %ClampToQuantum.exit ], !dbg !1824
  call void @llvm.dbg.value(metadata ptr %q.1, metadata !1682, metadata !DIExpression()), !dbg !1824
  %inc61 = add nuw nsw i64 %x39.0202, 1, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %inc61, metadata !1683, metadata !DIExpression()), !dbg !1824
  %53 = load i64, ptr %columns30, align 8, !dbg !1828, !tbaa !1793
  %cmp50 = icmp slt i64 %inc61, %53, !dbg !1831
  br i1 %cmp50, label %for.inc60.for.body51_crit_edge, label %for.end62, !dbg !1832, !llvm.loop !1928

for.inc60.for.body51_crit_edge:                   ; preds = %for.inc60
  %.pre218 = load i32, ptr %matrix_info, align 8, !dbg !1833, !tbaa !928
  br label %for.body51, !dbg !1832

for.end62:                                        ; preds = %ClampToQuantum.exit.us, %for.inc60, %for.cond48.preheader
  %call63 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call33, ptr noundef %exception) #21, !dbg !1929
  %cmp64 = icmp ne i32 %call63, 0, !dbg !1931
  %spec.select = zext i1 %cmp64 to i32, !dbg !1932
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1672, metadata !DIExpression()), !dbg !1684
  br label %cleanup, !dbg !1933

cleanup:                                          ; preds = %if.end42, %for.body37, %for.end62
  %status.2 = phi i32 [ %spec.select, %for.end62 ], [ 0, %for.body37 ], [ 0, %if.end42 ], !dbg !1684
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !1672, metadata !DIExpression()), !dbg !1684
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value38) #18, !dbg !1933
  %inc71 = add nuw nsw i64 %y.1205, 1, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %inc71, metadata !1673, metadata !DIExpression()), !dbg !1684
  %54 = load i64, ptr %rows32, align 8, !dbg !1813, !tbaa !1808
  %cmp36 = icmp slt i64 %inc71, %54, !dbg !1814
  br i1 %cmp36, label %for.body37, label %for.end72, !dbg !1815, !llvm.loop !1935

for.end72:                                        ; preds = %cleanup
  %call73 = tail call ptr @DestroyCacheView(ptr noundef %call33) #18, !dbg !1816
  call void @llvm.dbg.value(metadata ptr %call73, metadata !1663, metadata !DIExpression()), !dbg !1684
  %cmp74 = icmp eq i32 %status.2, 0, !dbg !1937
  br i1 %cmp74, label %if.then76, label %cleanup79, !dbg !1817

if.then76:                                        ; preds = %for.end72
  %call77 = tail call ptr @DestroyImage(ptr noundef nonnull %call28) #18, !dbg !1939
  call void @llvm.dbg.value(metadata ptr %call77, metadata !1671, metadata !DIExpression()), !dbg !1684
  br label %cleanup79, !dbg !1940

cleanup79:                                        ; preds = %for.end72.thread, %for.end72, %if.then76, %entry
  %retval.0 = phi ptr [ null, %entry ], [ %call77, %if.then76 ], [ %call28, %for.end72 ], [ %call28, %for.end72.thread ], !dbg !1684
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #18, !dbg !1941
  ret ptr %retval.0, !dbg !1941
}

declare !dbg !1942 ptr @AcquireImage(ptr noundef) local_unnamed_addr #4

declare !dbg !1947 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !1950 ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: hot
declare !dbg !1953 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #9

declare !dbg !1956 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #4

declare !dbg !1959 ptr @DestroyImage(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @NullMatrix(ptr nocapture noundef readonly %matrix_info) local_unnamed_addr #0 !dbg !1962 {
entry:
  %value = alloca i8, align 1
  call void @llvm.dbg.value(metadata ptr %matrix_info, metadata !1966, metadata !DIExpression()), !dbg !1971
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #18, !dbg !1972
  %0 = load i32, ptr %matrix_info, align 8, !dbg !1973, !tbaa !928
  %cmp.not = icmp eq i32 %0, 3, !dbg !1975
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1976

if.then:                                          ; preds = %entry
  %elements = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 9, !dbg !1977
  %1 = load ptr, ptr %elements, align 8, !dbg !1977, !tbaa !947
  %length = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 4, !dbg !1979
  %2 = load i64, ptr %length, align 8, !dbg !1979, !tbaa !916
  %call = tail call ptr @ResetMagickMemory(ptr noundef %1, i32 noundef 0, i64 noundef %2) #18, !dbg !1980
  br label %cleanup, !dbg !1981

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8 0, metadata !1970, metadata !DIExpression()), !dbg !1971
  store i8 0, ptr %value, align 1, !dbg !1982, !tbaa !1983
  %file = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 8, !dbg !1984
  %3 = load i32, ptr %file, align 8, !dbg !1984, !tbaa !963
  %call1 = tail call i64 @lseek(i32 noundef %3, i64 noundef 0, i32 noundef 0) #18, !dbg !1985
  call void @llvm.dbg.value(metadata i64 0, metadata !1969, metadata !DIExpression()), !dbg !1971
  %rows = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !1969, metadata !DIExpression()), !dbg !1971
  %4 = load i64, ptr %rows, align 8, !dbg !1986, !tbaa !893
  %cmp239 = icmp sgt i64 %4, 0, !dbg !1989
  br i1 %cmp239, label %for.cond3.preheader.lr.ph, label %for.end18, !dbg !1990

for.cond3.preheader.lr.ph:                        ; preds = %if.end
  %length4 = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 4
  %5 = load i64, ptr %length4, align 8, !dbg !1991, !tbaa !916
  %6 = icmp sgt i64 %5, 0, !dbg !1995
  br i1 %6, label %for.cond3.preheader, label %for.end18

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.inc16
  %7 = phi i64 [ %10, %for.inc16 ], [ %5, %for.cond3.preheader.lr.ph ]
  %y.040 = phi i64 [ %inc17, %for.inc16 ], [ 0, %for.cond3.preheader.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %y.040, metadata !1969, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 0, metadata !1967, metadata !DIExpression()), !dbg !1971
  %cmp536 = icmp sgt i64 %7, 0, !dbg !1995
  br i1 %cmp536, label %for.body6, label %for.end, !dbg !1996

for.body6:                                        ; preds = %for.cond3.preheader, %for.inc
  %x.037 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond3.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.037, metadata !1967, metadata !DIExpression()), !dbg !1971
  %8 = load i32, ptr %file, align 8, !dbg !1997, !tbaa !963
  call void @llvm.dbg.value(metadata ptr %value, metadata !1970, metadata !DIExpression(DW_OP_deref)), !dbg !1971
  %call8 = call i64 @write(i32 noundef %8, ptr noundef nonnull %value, i64 noundef 1) #18, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %call8, metadata !1968, metadata !DIExpression()), !dbg !1971
  %cmp9.not = icmp eq i64 %call8, 1, !dbg !2000
  br i1 %cmp9.not, label %for.inc, label %for.body6.for.end.loopexit_crit_edge, !dbg !2002

for.body6.for.end.loopexit_crit_edge:             ; preds = %for.body6
  %.pre.pre = load i64, ptr %length4, align 8, !dbg !2003, !tbaa !916
  br label %for.end, !dbg !2002

for.inc:                                          ; preds = %for.body6
  %inc = add nuw nsw i64 %x.037, 1, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1967, metadata !DIExpression()), !dbg !1971
  %9 = load i64, ptr %length4, align 8, !dbg !1991, !tbaa !916
  %cmp5 = icmp slt i64 %inc, %9, !dbg !1995
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !1996, !llvm.loop !2006

for.end:                                          ; preds = %for.inc, %for.body6.for.end.loopexit_crit_edge, %for.cond3.preheader
  %10 = phi i64 [ %7, %for.cond3.preheader ], [ %.pre.pre, %for.body6.for.end.loopexit_crit_edge ], [ %9, %for.inc ], !dbg !2003
  %x.0.lcssa = phi i64 [ 0, %for.cond3.preheader ], [ %x.037, %for.body6.for.end.loopexit_crit_edge ], [ %inc, %for.inc ], !dbg !2008
  %cmp13 = icmp slt i64 %x.0.lcssa, %10, !dbg !2009
  br i1 %cmp13, label %for.end.for.end18.loopexit_crit_edge, label %for.inc16, !dbg !2010

for.end.for.end18.loopexit_crit_edge:             ; preds = %for.end
  %.pre46.pre = load i64, ptr %rows, align 8, !dbg !2011, !tbaa !893
  br label %for.end18, !dbg !2010

for.inc16:                                        ; preds = %for.end
  %inc17 = add nuw nsw i64 %y.040, 1, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %inc17, metadata !1969, metadata !DIExpression()), !dbg !1971
  %11 = load i64, ptr %rows, align 8, !dbg !1986, !tbaa !893
  %cmp2 = icmp slt i64 %inc17, %11, !dbg !1989
  br i1 %cmp2, label %for.cond3.preheader, label %for.end18, !dbg !1990, !llvm.loop !2013

for.end18:                                        ; preds = %for.inc16, %for.cond3.preheader.lr.ph, %for.end.for.end18.loopexit_crit_edge, %if.end
  %12 = phi i64 [ %4, %if.end ], [ %.pre46.pre, %for.end.for.end18.loopexit_crit_edge ], [ %4, %for.cond3.preheader.lr.ph ], [ %11, %for.inc16 ], !dbg !2011
  %y.0.lcssa = phi i64 [ 0, %if.end ], [ %y.040, %for.end.for.end18.loopexit_crit_edge ], [ %4, %for.cond3.preheader.lr.ph ], [ %inc17, %for.inc16 ], !dbg !2015
  %cmp20 = icmp sge i64 %y.0.lcssa, %12, !dbg !2016
  %cond = zext i1 %cmp20 to i32, !dbg !2017
  br label %cleanup, !dbg !2018

cleanup:                                          ; preds = %for.end18, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %cond, %for.end18 ], !dbg !1971
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #18, !dbg !2019
  ret i32 %retval.0, !dbg !2019
}

; Function Attrs: nounwind
declare !dbg !2020 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree
declare !dbg !2023 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local ptr @RelinquishMagickMatrix(ptr noundef %matrix, i64 noundef %number_rows) local_unnamed_addr #0 !dbg !2026 {
entry:
  call void @llvm.dbg.value(metadata ptr %matrix, metadata !2030, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i64 %number_rows, metadata !2031, metadata !DIExpression()), !dbg !2033
  %cmp = icmp eq ptr %matrix, null, !dbg !2034
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !2036

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !2032, metadata !DIExpression()), !dbg !2033
  %cmp112 = icmp sgt i64 %number_rows, 0, !dbg !2037
  br i1 %cmp112, label %for.body, label %for.end, !dbg !2040

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.013 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.013, metadata !2032, metadata !DIExpression()), !dbg !2033
  %arrayidx = getelementptr inbounds ptr, ptr %matrix, i64 %i.013, !dbg !2041
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !2041, !tbaa !1212
  %call = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #18, !dbg !2042
  store ptr %call, ptr %arrayidx, align 8, !dbg !2043, !tbaa !1212
  %inc = add nuw nsw i64 %i.013, 1, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2032, metadata !DIExpression()), !dbg !2033
  %exitcond.not = icmp eq i64 %inc, %number_rows, !dbg !2037
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2040, !llvm.loop !2045

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %call3 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %matrix) #18, !dbg !2047
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2030, metadata !DIExpression()), !dbg !2033
  br label %cleanup, !dbg !2048

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], !dbg !2033
  ret ptr %retval.0, !dbg !2049
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SetMatrixElement(ptr nocapture noundef readonly %matrix_info, i64 noundef %x, i64 noundef %y, ptr nocapture noundef readonly %value) local_unnamed_addr #0 !dbg !2050 {
entry:
  call void @llvm.dbg.value(metadata ptr %matrix_info, metadata !2054, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %x, metadata !2055, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %y, metadata !2056, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata ptr %value, metadata !2057, metadata !DIExpression()), !dbg !2060
  %columns = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 1, !dbg !2061
  %0 = load i64, ptr %columns, align 8, !dbg !2061, !tbaa !890
  %mul = mul i64 %0, %y, !dbg !2062
  %add = add i64 %mul, %x, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %add, metadata !2059, metadata !DIExpression()), !dbg !2060
  %cmp = icmp slt i64 %add, 0, !dbg !2064
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !2066

lor.lhs.false:                                    ; preds = %entry
  %stride = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 3, !dbg !2067
  %1 = load i64, ptr %stride, align 8, !dbg !2067, !tbaa !896
  %mul1 = mul i64 %1, %add, !dbg !2068
  %length = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 4, !dbg !2069
  %2 = load i64, ptr %length, align 8, !dbg !2069, !tbaa !916
  %cmp2.not = icmp ult i64 %mul1, %2, !dbg !2070
  br i1 %cmp2.not, label %if.end, label %cleanup, !dbg !2071

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, ptr %matrix_info, align 8, !dbg !2072, !tbaa !928
  %cmp3.not = icmp eq i32 %3, 3, !dbg !2074
  br i1 %cmp3.not, label %if.end8, label %if.then4, !dbg !2075

if.then4:                                         ; preds = %if.end
  %elements = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 9, !dbg !2076
  %4 = load ptr, ptr %elements, align 8, !dbg !2076, !tbaa !947
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %mul1, !dbg !2078
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %value, i64 %1, i1 false), !dbg !2079
  br label %cleanup, !dbg !2080

if.end8:                                          ; preds = %if.end
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2081), !dbg !2084
  call void @llvm.dbg.value(metadata ptr %matrix_info, metadata !1025, metadata !DIExpression()) #18, !dbg !2085
  call void @llvm.dbg.value(metadata i64 %mul1, metadata !1034, metadata !DIExpression()) #18, !dbg !2085
  call void @llvm.dbg.value(metadata i64 %1, metadata !1035, metadata !DIExpression()) #18, !dbg !2085
  call void @llvm.dbg.value(metadata ptr %value, metadata !1036, metadata !DIExpression()) #18, !dbg !2085
  %semaphore.i = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 10, !dbg !2087
  %5 = load ptr, ptr %semaphore.i, align 8, !dbg !2087, !tbaa !900, !alias.scope !2081, !noalias !2088
  tail call void @LockSemaphoreInfo(ptr noundef %5) #18, !dbg !2090, !noalias !2091
  %file.i = getelementptr inbounds %struct._MatrixInfo, ptr %matrix_info, i64 0, i32 8, !dbg !2092
  %6 = load i32, ptr %file.i, align 8, !dbg !2092, !tbaa !963, !alias.scope !2081, !noalias !2088
  %call.i = tail call i64 @lseek(i32 noundef %6, i64 noundef %mul1, i32 noundef 0) #18, !dbg !2093, !noalias !2091
  %cmp.i = icmp slt i64 %call.i, 0, !dbg !2094
  br i1 %cmp.i, label %WriteMatrixElements.exit, label %for.cond.preheader.i, !dbg !2095

for.cond.preheader.i:                             ; preds = %if.end8
  call void @llvm.dbg.value(metadata i64 0, metadata !1037, metadata !DIExpression()) #18, !dbg !2085
  %cmp225.i = icmp sgt i64 %1, 0, !dbg !2096
  br i1 %cmp225.i, label %for.body.i, label %WriteMatrixElements.exit, !dbg !2097

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.inc.i
  %i.026.i = phi i64 [ %add.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %i.026.i, metadata !1037, metadata !DIExpression()) #18, !dbg !2085
  %add.ptr.i = getelementptr inbounds i8, ptr %value, i64 %i.026.i, !dbg !2098
  %sub.i = sub i64 %1, %i.026.i, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !1056, metadata !DIExpression()) #18, !dbg !2100
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1061, metadata !DIExpression()) #18, !dbg !2100
  %7 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 9223372036854775807) #18, !dbg !2100
  %call5.i = tail call i64 @write(i32 noundef %6, ptr noundef %add.ptr.i, i64 noundef %7) #18, !dbg !2102, !noalias !2081
  call void @llvm.dbg.value(metadata i64 %call5.i, metadata !1038, metadata !DIExpression()) #18, !dbg !2085
  %cmp6.i = icmp slt i64 %call5.i, 1, !dbg !2103
  br i1 %cmp6.i, label %if.then7.i, label %for.inc.i, !dbg !2104

if.then7.i:                                       ; preds = %for.body.i
  call void @llvm.dbg.value(metadata i64 0, metadata !1038, metadata !DIExpression()) #18, !dbg !2085
  %call8.i = tail call ptr @__errno_location() #19, !dbg !2105
  %8 = load i32, ptr %call8.i, align 4, !dbg !2105, !tbaa !1071, !noalias !2091
  %cmp9.not.i = icmp eq i32 %8, 4, !dbg !2106
  br i1 %cmp9.not.i, label %for.inc.i, label %WriteMatrixElements.exit, !dbg !2107

for.inc.i:                                        ; preds = %if.then7.i, %for.body.i
  %count.0.i = phi i64 [ 0, %if.then7.i ], [ %call5.i, %for.body.i ], !dbg !2108
  call void @llvm.dbg.value(metadata i64 %count.0.i, metadata !1038, metadata !DIExpression()) #18, !dbg !2085
  %add.i = add nsw i64 %count.0.i, %i.026.i, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1037, metadata !DIExpression()) #18, !dbg !2085
  %cmp2.i = icmp slt i64 %add.i, %1, !dbg !2096
  br i1 %cmp2.i, label %for.body.i, label %WriteMatrixElements.exit, !dbg !2097, !llvm.loop !2110

WriteMatrixElements.exit:                         ; preds = %if.then7.i, %for.inc.i, %if.end8, %for.cond.preheader.i
  %retval.0.i = phi i64 [ -1, %if.end8 ], [ 0, %for.cond.preheader.i ], [ %add.i, %for.inc.i ], [ %i.026.i, %if.then7.i ], !dbg !2085
  tail call void @UnlockSemaphoreInfo(ptr noundef %5) #18, !dbg !2085, !noalias !2091
  call void @llvm.dbg.value(metadata i64 %retval.0.i, metadata !2058, metadata !DIExpression()), !dbg !2060
  %9 = load i64, ptr %stride, align 8, !dbg !2112, !tbaa !896
  %cmp13.not = icmp eq i64 %retval.0.i, %9, !dbg !2114
  %. = zext i1 %cmp13.not to i32, !dbg !2060
  br label %cleanup, !dbg !2060

cleanup:                                          ; preds = %WriteMatrixElements.exit, %entry, %lor.lhs.false, %if.then4
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %., %WriteMatrixElements.exit ], !dbg !2060
  ret i32 %retval.0, !dbg !2115
}

; Function Attrs: nounwind
declare !dbg !2116 ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn nounwind uwtable
define internal void @MatrixSignalHandler(i32 noundef %status) #12 !dbg !2124 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata i32 %status, metadata !2126, metadata !DIExpression()), !dbg !2130
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #18, !dbg !2131
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !2129, metadata !DIExpression()), !dbg !2131
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #18, !dbg !2131
  %call = tail call ptr @__errno_location() #19, !dbg !2131
  %0 = load i32, ptr %call, align 4, !dbg !2131, !tbaa !1071
  %call1 = call ptr @GetExceptionMessage(i32 noundef %0) #18, !dbg !2131
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2127, metadata !DIExpression()), !dbg !2132
  %call2 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 132, i32 noundef 745, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef %call1) #18, !dbg !2131
  %call3 = call ptr @DestroyString(ptr noundef %call1) #18, !dbg !2131
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2127, metadata !DIExpression()), !dbg !2132
  call void @CatchException(ptr noundef nonnull %exception) #18, !dbg !2131
  %call4 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #18, !dbg !2131
  call void @MagickCoreTerminus() #18, !dbg !2131
  call void @_exit(i32 noundef 46) #22, !dbg !2131
  unreachable, !dbg !2131
}

declare !dbg !2133 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !2136 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #13

declare !dbg !2140 void @CatchException(ptr noundef) local_unnamed_addr #4

declare !dbg !2141 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !2144 void @MagickCoreTerminus() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree
declare !dbg !2148 noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { argmemonly nofree nounwind willreturn writeonly }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind }
attributes #19 = { nounwind readnone willreturn }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { hot nounwind }
attributes #22 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!853, !854, !855, !856, !857, !858}
!llvm.ident = !{!859}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !471, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/matrix.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "7de4b70325a6cf17d0ec2bd7ad5e2d07")
!2 = !{!3, !13, !18, !91, !103, !109, !114, !151, !176, !188, !196, !201, !236, !246, !252, !267, !338, !346, !352, !369, !383, !395, !428, !450}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 27, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "71eb387e577d57b17607c7f6f5128e97")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "UndefinedCache", value: 0)
!8 = !DIEnumerator(name: "MemoryCache", value: 1)
!9 = !DIEnumerator(name: "MapCache", value: 2)
!10 = !DIEnumerator(name: "DiskCache", value: 3)
!11 = !DIEnumerator(name: "PingCache", value: 4)
!12 = !DIEnumerator(name: "DistributedCache", value: 5)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 211, baseType: !5, size: 32, elements: !15)
!14 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "MagickFalse", value: 0)
!17 = !DIEnumerator(name: "MagickTrue", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 28, baseType: !5, size: 32, elements: !20)
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
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 25, baseType: !5, size: 32, elements: !93)
!92 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102}
!94 = !DIEnumerator(name: "UndefinedResource", value: 0)
!95 = !DIEnumerator(name: "AreaResource", value: 1)
!96 = !DIEnumerator(name: "DiskResource", value: 2)
!97 = !DIEnumerator(name: "FileResource", value: 3)
!98 = !DIEnumerator(name: "MapResource", value: 4)
!99 = !DIEnumerator(name: "MemoryResource", value: 5)
!100 = !DIEnumerator(name: "ThreadResource", value: 6)
!101 = !DIEnumerator(name: "TimeResource", value: 7)
!102 = !DIEnumerator(name: "ThrottleResource", value: 8)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !104, line: 30, baseType: !5, size: 32, elements: !105)
!104 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "aeac60f5bee0fb1a4f0bd1456ae975f0")
!105 = !{!106, !107, !108}
!106 = !DIEnumerator(name: "ReadMode", value: 0)
!107 = !DIEnumerator(name: "WriteMode", value: 1)
!108 = !DIEnumerator(name: "IOMode", value: 2)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 204, baseType: !5, size: 32, elements: !110)
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "UndefinedClass", value: 0)
!112 = !DIEnumerator(name: "DirectClass", value: 1)
!113 = !DIEnumerator(name: "PseudoClass", value: 2)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !115, line: 25, baseType: !5, size: 32, elements: !116)
!115 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!117 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!118 = !DIEnumerator(name: "RGBColorspace", value: 1)
!119 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!120 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!121 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!122 = !DIEnumerator(name: "LabColorspace", value: 5)
!123 = !DIEnumerator(name: "XYZColorspace", value: 6)
!124 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!125 = !DIEnumerator(name: "YCCColorspace", value: 8)
!126 = !DIEnumerator(name: "YIQColorspace", value: 9)
!127 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!128 = !DIEnumerator(name: "YUVColorspace", value: 11)
!129 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!130 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!131 = !DIEnumerator(name: "HSBColorspace", value: 14)
!132 = !DIEnumerator(name: "HSLColorspace", value: 15)
!133 = !DIEnumerator(name: "HWBColorspace", value: 16)
!134 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!135 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!136 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!137 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!138 = !DIEnumerator(name: "LogColorspace", value: 21)
!139 = !DIEnumerator(name: "CMYColorspace", value: 22)
!140 = !DIEnumerator(name: "LuvColorspace", value: 23)
!141 = !DIEnumerator(name: "HCLColorspace", value: 24)
!142 = !DIEnumerator(name: "LCHColorspace", value: 25)
!143 = !DIEnumerator(name: "LMSColorspace", value: 26)
!144 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!145 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!146 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!147 = !DIEnumerator(name: "HSIColorspace", value: 30)
!148 = !DIEnumerator(name: "HSVColorspace", value: 31)
!149 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!150 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !152, line: 25, baseType: !5, size: 32, elements: !153)
!152 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!154 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!155 = !DIEnumerator(name: "NoCompression", value: 1)
!156 = !DIEnumerator(name: "BZipCompression", value: 2)
!157 = !DIEnumerator(name: "DXT1Compression", value: 3)
!158 = !DIEnumerator(name: "DXT3Compression", value: 4)
!159 = !DIEnumerator(name: "DXT5Compression", value: 5)
!160 = !DIEnumerator(name: "FaxCompression", value: 6)
!161 = !DIEnumerator(name: "Group4Compression", value: 7)
!162 = !DIEnumerator(name: "JPEGCompression", value: 8)
!163 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!164 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!165 = !DIEnumerator(name: "LZWCompression", value: 11)
!166 = !DIEnumerator(name: "RLECompression", value: 12)
!167 = !DIEnumerator(name: "ZipCompression", value: 13)
!168 = !DIEnumerator(name: "ZipSCompression", value: 14)
!169 = !DIEnumerator(name: "PizCompression", value: 15)
!170 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!171 = !DIEnumerator(name: "B44Compression", value: 17)
!172 = !DIEnumerator(name: "B44ACompression", value: 18)
!173 = !DIEnumerator(name: "LZMACompression", value: 19)
!174 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!175 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !177, line: 75, baseType: !5, size: 32, elements: !178)
!177 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187}
!179 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!180 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!181 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!182 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!183 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!184 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!185 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!186 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!187 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !189, line: 42, baseType: !5, size: 32, elements: !190)
!189 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!192 = !DIEnumerator(name: "SaturationIntent", value: 1)
!193 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!194 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!195 = !DIEnumerator(name: "RelativeIntent", value: 4)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !177, line: 88, baseType: !5, size: 32, elements: !197)
!197 = !{!198, !199, !200}
!198 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!199 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!200 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !202, line: 32, baseType: !5, size: 32, elements: !203)
!202 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!204 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!205 = !DIEnumerator(name: "PointFilter", value: 1)
!206 = !DIEnumerator(name: "BoxFilter", value: 2)
!207 = !DIEnumerator(name: "TriangleFilter", value: 3)
!208 = !DIEnumerator(name: "HermiteFilter", value: 4)
!209 = !DIEnumerator(name: "HanningFilter", value: 5)
!210 = !DIEnumerator(name: "HammingFilter", value: 6)
!211 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!212 = !DIEnumerator(name: "GaussianFilter", value: 8)
!213 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!214 = !DIEnumerator(name: "CubicFilter", value: 10)
!215 = !DIEnumerator(name: "CatromFilter", value: 11)
!216 = !DIEnumerator(name: "MitchellFilter", value: 12)
!217 = !DIEnumerator(name: "JincFilter", value: 13)
!218 = !DIEnumerator(name: "SincFilter", value: 14)
!219 = !DIEnumerator(name: "SincFastFilter", value: 15)
!220 = !DIEnumerator(name: "KaiserFilter", value: 16)
!221 = !DIEnumerator(name: "WelshFilter", value: 17)
!222 = !DIEnumerator(name: "ParzenFilter", value: 18)
!223 = !DIEnumerator(name: "BohmanFilter", value: 19)
!224 = !DIEnumerator(name: "BartlettFilter", value: 20)
!225 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!226 = !DIEnumerator(name: "LanczosFilter", value: 22)
!227 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!228 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!229 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!230 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!231 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!232 = !DIEnumerator(name: "CosineFilter", value: 28)
!233 = !DIEnumerator(name: "SplineFilter", value: 29)
!234 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!235 = !DIEnumerator(name: "SentinelFilter", value: 31)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !177, line: 63, baseType: !5, size: 32, elements: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245}
!238 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!239 = !DIEnumerator(name: "NoInterlace", value: 1)
!240 = !DIEnumerator(name: "LineInterlace", value: 2)
!241 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!242 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!243 = !DIEnumerator(name: "GIFInterlace", value: 5)
!244 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!245 = !DIEnumerator(name: "PNGInterlace", value: 7)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !247, line: 30, baseType: !5, size: 32, elements: !248)
!247 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!248 = !{!249, !250, !251}
!249 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!250 = !DIEnumerator(name: "LSBEndian", value: 1)
!251 = !DIEnumerator(name: "MSBEndian", value: 2)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !253, line: 77, baseType: !5, size: 32, elements: !254)
!253 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!255 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!256 = !DIEnumerator(name: "ForgetGravity", value: 0)
!257 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!258 = !DIEnumerator(name: "NorthGravity", value: 2)
!259 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!260 = !DIEnumerator(name: "WestGravity", value: 4)
!261 = !DIEnumerator(name: "CenterGravity", value: 5)
!262 = !DIEnumerator(name: "EastGravity", value: 6)
!263 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!264 = !DIEnumerator(name: "SouthGravity", value: 8)
!265 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!266 = !DIEnumerator(name: "StaticGravity", value: 10)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !268, line: 25, baseType: !5, size: 32, elements: !269)
!268 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!269 = !{!270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337}
!270 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!271 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!272 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!273 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!274 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!275 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!276 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!277 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!278 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!279 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!280 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!281 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!282 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!283 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!284 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!285 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!286 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!287 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!288 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!289 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!290 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!291 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!292 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!293 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!294 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!295 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!296 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!297 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!298 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!299 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!300 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!301 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!302 = !DIEnumerator(name: "InCompositeOp", value: 32)
!303 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!304 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!305 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!306 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!307 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!308 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!309 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!310 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!311 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!312 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!313 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!314 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!315 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!316 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!317 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!318 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!319 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!320 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!321 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!322 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!323 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!324 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!325 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!326 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!327 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!328 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!329 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!330 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!331 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!332 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!333 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!334 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!335 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!336 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!337 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!338 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !339, line: 25, baseType: !5, size: 32, elements: !340)
!339 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!340 = !{!341, !342, !343, !344, !345}
!341 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!342 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!343 = !DIEnumerator(name: "NoneDispose", value: 1)
!344 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!345 = !DIEnumerator(name: "PreviousDispose", value: 3)
!346 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !347, line: 25, baseType: !5, size: 32, elements: !348)
!347 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!348 = !{!349, !350, !351}
!349 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!350 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!351 = !DIEnumerator(name: "RunningTimerState", value: 2)
!352 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !353, line: 31, baseType: !5, size: 32, elements: !354)
!353 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!354 = !{!355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368}
!355 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!356 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!357 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!358 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!359 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!360 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!361 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!362 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!363 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!364 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!365 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!366 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!367 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!368 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!369 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !177, line: 47, baseType: !5, size: 32, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382}
!371 = !DIEnumerator(name: "UndefinedType", value: 0)
!372 = !DIEnumerator(name: "BilevelType", value: 1)
!373 = !DIEnumerator(name: "GrayscaleType", value: 2)
!374 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!375 = !DIEnumerator(name: "PaletteType", value: 4)
!376 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!377 = !DIEnumerator(name: "TrueColorType", value: 6)
!378 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!379 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!380 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!381 = !DIEnumerator(name: "OptimizeType", value: 10)
!382 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !353, line: 67, baseType: !5, size: 32, elements: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393, !394}
!385 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!386 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!387 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!388 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!389 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!390 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!391 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!392 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!393 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!394 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!395 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !396, line: 27, baseType: !5, size: 32, elements: !397)
!396 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!397 = !{!398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427}
!398 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!399 = !DIEnumerator(name: "RotatePreview", value: 1)
!400 = !DIEnumerator(name: "ShearPreview", value: 2)
!401 = !DIEnumerator(name: "RollPreview", value: 3)
!402 = !DIEnumerator(name: "HuePreview", value: 4)
!403 = !DIEnumerator(name: "SaturationPreview", value: 5)
!404 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!405 = !DIEnumerator(name: "GammaPreview", value: 7)
!406 = !DIEnumerator(name: "SpiffPreview", value: 8)
!407 = !DIEnumerator(name: "DullPreview", value: 9)
!408 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!409 = !DIEnumerator(name: "QuantizePreview", value: 11)
!410 = !DIEnumerator(name: "DespecklePreview", value: 12)
!411 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!412 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!413 = !DIEnumerator(name: "SharpenPreview", value: 15)
!414 = !DIEnumerator(name: "BlurPreview", value: 16)
!415 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!416 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!417 = !DIEnumerator(name: "SpreadPreview", value: 19)
!418 = !DIEnumerator(name: "SolarizePreview", value: 20)
!419 = !DIEnumerator(name: "ShadePreview", value: 21)
!420 = !DIEnumerator(name: "RaisePreview", value: 22)
!421 = !DIEnumerator(name: "SegmentPreview", value: 23)
!422 = !DIEnumerator(name: "SwirlPreview", value: 24)
!423 = !DIEnumerator(name: "ImplodePreview", value: 25)
!424 = !DIEnumerator(name: "WavePreview", value: 26)
!425 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!426 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!427 = !DIEnumerator(name: "JPEGPreview", value: 29)
!428 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 177, baseType: !5, size: 32, elements: !429)
!429 = !{!430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449}
!430 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!431 = !DIEnumerator(name: "RedChannel", value: 1)
!432 = !DIEnumerator(name: "GrayChannel", value: 1)
!433 = !DIEnumerator(name: "CyanChannel", value: 1)
!434 = !DIEnumerator(name: "GreenChannel", value: 2)
!435 = !DIEnumerator(name: "MagentaChannel", value: 2)
!436 = !DIEnumerator(name: "BlueChannel", value: 4)
!437 = !DIEnumerator(name: "YellowChannel", value: 4)
!438 = !DIEnumerator(name: "AlphaChannel", value: 8)
!439 = !DIEnumerator(name: "OpacityChannel", value: 8)
!440 = !DIEnumerator(name: "MatteChannel", value: 8)
!441 = !DIEnumerator(name: "BlackChannel", value: 32)
!442 = !DIEnumerator(name: "IndexChannel", value: 32)
!443 = !DIEnumerator(name: "CompositeChannels", value: 47)
!444 = !DIEnumerator(name: "AllChannels", value: 134217727)
!445 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!446 = !DIEnumerator(name: "RGBChannels", value: 128)
!447 = !DIEnumerator(name: "GrayChannels", value: 128)
!448 = !DIEnumerator(name: "SyncChannels", value: 256)
!449 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!450 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !451, line: 27, baseType: !5, size: 32, elements: !452)
!451 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470}
!453 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!454 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!455 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!456 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!457 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!458 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!459 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!460 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!461 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!462 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!463 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!464 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!465 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!466 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!467 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!468 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!469 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!470 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!471 = !{!472, !500, !507, !487, !481, !483, !509, !511, !514, !512, !519, !520, !522, !524, !513, !549, !717, !544, !849, !498, !851}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "MatrixInfo", file: !474, line: 26, baseType: !475)
!474 = !DIFile(filename: "apps/538.imagick_r/src/magick/matrix.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "eb3e46c8fbd61488836928d66ca395c0")
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MatrixInfo", file: !476, line: 58, size: 33408, elements: !477)
!476 = !DIFile(filename: "apps/538.imagick_r/src/magick/matrix.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7de4b70325a6cf17d0ec2bd7ad5e2d07")
!477 = !{!478, !480, !484, !485, !486, !489, !491, !492, !497, !499, !501, !506}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !475, file: !476, line: 61, baseType: !479, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheType", file: !4, line: 35, baseType: !3)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !475, file: !476, line: 64, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !482, line: 46, baseType: !483)
!482 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!483 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !475, file: !476, line: 65, baseType: !481, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !475, file: !476, line: 66, baseType: !481, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !475, file: !476, line: 69, baseType: !487, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !14, line: 151, baseType: !488)
!488 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mapped", scope: !475, file: !476, line: 72, baseType: !490, size: 32, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !14, line: 215, baseType: !13)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !475, file: !476, line: 73, baseType: !490, size: 32, offset: 352)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !475, file: !476, line: 76, baseType: !493, size: 32768, offset: 384)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 32768, elements: !495)
!494 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!495 = !{!496}
!496 = !DISubrange(count: 4096)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !475, file: !476, line: 79, baseType: !498, size: 32, offset: 33152)
!498 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !475, file: !476, line: 82, baseType: !500, size: 64, offset: 33216)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !475, file: !476, line: 85, baseType: !502, size: 64, offset: 33280)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !504, line: 26, baseType: !505)
!504 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !504, line: 25, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !475, file: !476, line: 88, baseType: !481, size: 64, offset: 33344)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !515, line: 77, baseType: !516)
!515 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !517, line: 193, baseType: !518)
!517 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!518 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !14, line: 150, baseType: !521)
!521 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !14, line: 221, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !177, line: 150, size: 105920, elements: !527)
!527 = !{!528, !530, !532, !534, !535, !537, !538, !539, !540, !541, !542, !543, !553, !554, !555, !556, !557, !571, !573, !574, !576, !578, !579, !580, !581, !582, !583, !591, !592, !593, !594, !595, !596, !598, !600, !602, !604, !606, !608, !610, !611, !612, !613, !614, !615, !616, !624, !639, !647, !648, !649, !650, !654, !658, !659, !660, !661, !662, !663, !676, !677, !679, !680, !688, !689, !691, !692, !693, !694, !695, !696, !698, !699, !700, !701, !702, !703, !704, !706, !707, !708, !709, !710, !714, !716}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !526, file: !177, line: 153, baseType: !529, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !14, line: 209, baseType: !109)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !526, file: !177, line: 156, baseType: !531, size: 32, offset: 32)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !115, line: 61, baseType: !114)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !526, file: !177, line: 159, baseType: !533, size: 32, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !152, line: 49, baseType: !151)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !526, file: !177, line: 162, baseType: !481, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !526, file: !177, line: 165, baseType: !536, size: 32, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !177, line: 86, baseType: !176)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !526, file: !177, line: 168, baseType: !490, size: 32, offset: 224)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !526, file: !177, line: 169, baseType: !490, size: 32, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !526, file: !177, line: 172, baseType: !481, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !526, file: !177, line: 173, baseType: !481, size: 64, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !526, file: !177, line: 174, baseType: !481, size: 64, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !526, file: !177, line: 175, baseType: !481, size: 64, offset: 512)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !526, file: !177, line: 178, baseType: !544, size: 64, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !353, line: 148, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !353, line: 131, size: 64, elements: !547)
!547 = !{!548, !550, !551, !552}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !546, file: !353, line: 143, baseType: !549, size: 16)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !14, line: 93, baseType: !510)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !546, file: !353, line: 144, baseType: !549, size: 16, offset: 16)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !546, file: !353, line: 145, baseType: !549, size: 16, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !546, file: !353, line: 146, baseType: !549, size: 16, offset: 48)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !526, file: !177, line: 179, baseType: !545, size: 64, offset: 640)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !526, file: !177, line: 180, baseType: !545, size: 64, offset: 704)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !526, file: !177, line: 181, baseType: !545, size: 64, offset: 768)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !526, file: !177, line: 184, baseType: !513, size: 64, offset: 832)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !526, file: !177, line: 187, baseType: !558, size: 768, offset: 896)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !177, line: 128, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !177, line: 121, size: 768, elements: !560)
!560 = !{!561, !568, !569, !570}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !559, file: !177, line: 124, baseType: !562, size: 192)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !177, line: 101, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !177, line: 95, size: 192, elements: !564)
!564 = !{!565, !566, !567}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !563, file: !177, line: 98, baseType: !513, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !563, file: !177, line: 99, baseType: !513, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !563, file: !177, line: 100, baseType: !513, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !559, file: !177, line: 125, baseType: !562, size: 192, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !559, file: !177, line: 126, baseType: !562, size: 192, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !559, file: !177, line: 127, baseType: !562, size: 192, offset: 576)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !526, file: !177, line: 190, baseType: !572, size: 32, offset: 1664)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !189, line: 49, baseType: !188)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !526, file: !177, line: 193, baseType: !500, size: 64, offset: 1728)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !526, file: !177, line: 196, baseType: !575, size: 32, offset: 1792)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !177, line: 93, baseType: !196)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !526, file: !177, line: 199, baseType: !577, size: 64, offset: 1856)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !526, file: !177, line: 200, baseType: !577, size: 64, offset: 1920)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !526, file: !177, line: 201, baseType: !577, size: 64, offset: 1984)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !526, file: !177, line: 204, baseType: !514, size: 64, offset: 2048)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !526, file: !177, line: 207, baseType: !513, size: 64, offset: 2112)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !526, file: !177, line: 208, baseType: !513, size: 64, offset: 2176)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !526, file: !177, line: 211, baseType: !584, size: 256, offset: 2240)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !253, line: 130, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !253, line: 121, size: 256, elements: !586)
!586 = !{!587, !588, !589, !590}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !585, file: !253, line: 124, baseType: !481, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !585, file: !253, line: 125, baseType: !481, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !585, file: !253, line: 128, baseType: !514, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !585, file: !253, line: 129, baseType: !514, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !526, file: !177, line: 212, baseType: !584, size: 256, offset: 2496)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !526, file: !177, line: 213, baseType: !584, size: 256, offset: 2752)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !526, file: !177, line: 216, baseType: !513, size: 64, offset: 3008)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !526, file: !177, line: 217, baseType: !513, size: 64, offset: 3072)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !526, file: !177, line: 218, baseType: !513, size: 64, offset: 3136)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !526, file: !177, line: 221, baseType: !597, size: 32, offset: 3200)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !202, line: 66, baseType: !201)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !526, file: !177, line: 224, baseType: !599, size: 32, offset: 3232)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !177, line: 73, baseType: !236)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !526, file: !177, line: 227, baseType: !601, size: 32, offset: 3264)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !247, line: 35, baseType: !246)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !526, file: !177, line: 230, baseType: !603, size: 32, offset: 3296)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !253, line: 91, baseType: !252)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !526, file: !177, line: 233, baseType: !605, size: 32, offset: 3328)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !268, line: 99, baseType: !267)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !526, file: !177, line: 236, baseType: !607, size: 32, offset: 3360)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !339, line: 32, baseType: !338)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !526, file: !177, line: 239, baseType: !609, size: 64, offset: 3392)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !526, file: !177, line: 242, baseType: !481, size: 64, offset: 3456)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !526, file: !177, line: 243, baseType: !481, size: 64, offset: 3520)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !526, file: !177, line: 246, baseType: !514, size: 64, offset: 3584)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !526, file: !177, line: 249, baseType: !481, size: 64, offset: 3648)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !526, file: !177, line: 250, baseType: !481, size: 64, offset: 3712)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !526, file: !177, line: 253, baseType: !514, size: 64, offset: 3776)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !526, file: !177, line: 256, baseType: !617, size: 192, offset: 3840)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !618, line: 68, baseType: !619)
!618 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !618, line: 62, size: 192, elements: !620)
!620 = !{!621, !622, !623}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !619, file: !618, line: 65, baseType: !513, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !619, file: !618, line: 66, baseType: !513, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !619, file: !618, line: 67, baseType: !513, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !526, file: !177, line: 259, baseType: !625, size: 512, offset: 4032)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !347, line: 51, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !347, line: 40, size: 512, elements: !627)
!627 = !{!628, !635, !636, !638}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !626, file: !347, line: 43, baseType: !629, size: 192)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !347, line: 38, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !347, line: 32, size: 192, elements: !631)
!631 = !{!632, !633, !634}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !630, file: !347, line: 35, baseType: !513, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !630, file: !347, line: 36, baseType: !513, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !630, file: !347, line: 37, baseType: !513, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !626, file: !347, line: 44, baseType: !629, size: 192, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !626, file: !347, line: 47, baseType: !637, size: 32, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !347, line: 30, baseType: !346)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !626, file: !347, line: 50, baseType: !481, size: 64, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !526, file: !177, line: 262, baseType: !640, size: 64, offset: 4544)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !641, line: 26, baseType: !642)
!641 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!490, !507, !645, !646, !500}
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !526, file: !177, line: 265, baseType: !500, size: 64, offset: 4608)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !526, file: !177, line: 266, baseType: !500, size: 64, offset: 4672)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !526, file: !177, line: 267, baseType: !500, size: 64, offset: 4736)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !526, file: !177, line: 270, baseType: !651, size: 64, offset: 4800)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !152, line: 52, baseType: !653)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !152, line: 51, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !526, file: !177, line: 273, baseType: !655, size: 64, offset: 4864)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !14, line: 217, baseType: !657)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !14, line: 217, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !526, file: !177, line: 276, baseType: !493, size: 32768, offset: 4928)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !526, file: !177, line: 277, baseType: !493, size: 32768, offset: 37696)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !526, file: !177, line: 278, baseType: !493, size: 32768, offset: 70464)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !526, file: !177, line: 281, baseType: !481, size: 64, offset: 103232)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !526, file: !177, line: 282, baseType: !481, size: 64, offset: 103296)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !526, file: !177, line: 285, baseType: !664, size: 448, offset: 103360)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !14, line: 219, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !19, line: 102, size: 448, elements: !666)
!666 = !{!667, !669, !670, !671, !672, !673, !674, !675}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !665, file: !19, line: 105, baseType: !668, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !19, line: 100, baseType: !18)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !665, file: !19, line: 108, baseType: !498, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !665, file: !19, line: 111, baseType: !577, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !665, file: !19, line: 112, baseType: !577, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !665, file: !19, line: 115, baseType: !500, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !665, file: !19, line: 118, baseType: !490, size: 32, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !665, file: !19, line: 121, baseType: !502, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !665, file: !19, line: 124, baseType: !481, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !526, file: !177, line: 288, baseType: !490, size: 32, offset: 103808)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !526, file: !177, line: 291, baseType: !678, size: 64, offset: 103872)
!678 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !514)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !526, file: !177, line: 294, baseType: !502, size: 64, offset: 103936)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !526, file: !177, line: 297, baseType: !681, size: 256, offset: 104000)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !189, line: 40, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !189, line: 27, size: 256, elements: !683)
!683 = !{!684, !685, !686, !687}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !682, file: !189, line: 30, baseType: !577, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !682, file: !189, line: 33, baseType: !481, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !682, file: !189, line: 36, baseType: !522, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !682, file: !189, line: 39, baseType: !481, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !526, file: !177, line: 298, baseType: !681, size: 256, offset: 104256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !526, file: !177, line: 299, baseType: !690, size: 64, offset: 104512)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !526, file: !177, line: 302, baseType: !481, size: 64, offset: 104576)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !526, file: !177, line: 305, baseType: !481, size: 64, offset: 104640)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !526, file: !177, line: 308, baseType: !609, size: 64, offset: 104704)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !526, file: !177, line: 309, baseType: !609, size: 64, offset: 104768)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !526, file: !177, line: 310, baseType: !609, size: 64, offset: 104832)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !526, file: !177, line: 313, baseType: !697, size: 32, offset: 104896)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !353, line: 47, baseType: !352)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !526, file: !177, line: 316, baseType: !490, size: 32, offset: 104928)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !526, file: !177, line: 319, baseType: !545, size: 64, offset: 104960)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !526, file: !177, line: 322, baseType: !609, size: 64, offset: 105024)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !526, file: !177, line: 325, baseType: !584, size: 256, offset: 105088)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !526, file: !177, line: 328, baseType: !500, size: 64, offset: 105344)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !526, file: !177, line: 329, baseType: !500, size: 64, offset: 105408)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !526, file: !177, line: 332, baseType: !705, size: 32, offset: 105472)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !177, line: 61, baseType: !369)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !526, file: !177, line: 335, baseType: !490, size: 32, offset: 105504)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !526, file: !177, line: 338, baseType: !487, size: 64, offset: 105536)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !526, file: !177, line: 341, baseType: !490, size: 32, offset: 105600)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !526, file: !177, line: 344, baseType: !481, size: 64, offset: 105664)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !526, file: !177, line: 347, baseType: !711, size: 64, offset: 105728)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !712, line: 7, baseType: !713)
!712 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !517, line: 160, baseType: !518)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !526, file: !177, line: 350, baseType: !715, size: 32, offset: 105792)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !353, line: 79, baseType: !383)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !526, file: !177, line: 353, baseType: !481, size: 64, offset: 105856)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !14, line: 223, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !177, line: 356, size: 134336, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !755, !756, !757, !758, !759, !760, !762, !763, !764, !765, !766, !767, !778, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !846, !847, !848}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !719, file: !177, line: 359, baseType: !533, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !719, file: !177, line: 362, baseType: !536, size: 32, offset: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !719, file: !177, line: 365, baseType: !490, size: 32, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !719, file: !177, line: 366, baseType: !490, size: 32, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !719, file: !177, line: 367, baseType: !490, size: 32, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !719, file: !177, line: 368, baseType: !490, size: 32, offset: 160)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !719, file: !177, line: 371, baseType: !577, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !719, file: !177, line: 372, baseType: !577, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !719, file: !177, line: 373, baseType: !577, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !719, file: !177, line: 374, baseType: !577, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !719, file: !177, line: 377, baseType: !481, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !719, file: !177, line: 378, baseType: !481, size: 64, offset: 512)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !719, file: !177, line: 379, baseType: !481, size: 64, offset: 576)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !719, file: !177, line: 382, baseType: !599, size: 32, offset: 640)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !719, file: !177, line: 385, baseType: !601, size: 32, offset: 672)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !719, file: !177, line: 388, baseType: !575, size: 32, offset: 704)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !719, file: !177, line: 391, baseType: !481, size: 64, offset: 768)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !719, file: !177, line: 394, baseType: !577, size: 64, offset: 832)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !719, file: !177, line: 395, baseType: !577, size: 64, offset: 896)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !719, file: !177, line: 396, baseType: !577, size: 64, offset: 960)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !719, file: !177, line: 397, baseType: !577, size: 64, offset: 1024)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !719, file: !177, line: 398, baseType: !577, size: 64, offset: 1088)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !719, file: !177, line: 401, baseType: !513, size: 64, offset: 1152)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !719, file: !177, line: 402, baseType: !513, size: 64, offset: 1216)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !719, file: !177, line: 405, baseType: !545, size: 64, offset: 1280)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !719, file: !177, line: 406, baseType: !545, size: 64, offset: 1344)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !719, file: !177, line: 407, baseType: !545, size: 64, offset: 1408)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !719, file: !177, line: 410, baseType: !490, size: 32, offset: 1472)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !719, file: !177, line: 411, baseType: !490, size: 32, offset: 1504)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !719, file: !177, line: 414, baseType: !481, size: 64, offset: 1536)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !719, file: !177, line: 417, baseType: !531, size: 32, offset: 1600)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !719, file: !177, line: 420, baseType: !705, size: 32, offset: 1632)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !719, file: !177, line: 423, baseType: !754, size: 32, offset: 1664)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !396, line: 59, baseType: !395)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !719, file: !177, line: 426, baseType: !514, size: 64, offset: 1728)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !719, file: !177, line: 429, baseType: !490, size: 32, offset: 1792)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !719, file: !177, line: 430, baseType: !490, size: 32, offset: 1824)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !719, file: !177, line: 433, baseType: !577, size: 64, offset: 1856)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !719, file: !177, line: 434, baseType: !577, size: 64, offset: 1920)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !719, file: !177, line: 437, baseType: !761, size: 32, offset: 1984)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !14, line: 202, baseType: !428)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !719, file: !177, line: 440, baseType: !524, size: 64, offset: 2048)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !719, file: !177, line: 443, baseType: !500, size: 64, offset: 2112)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !719, file: !177, line: 446, baseType: !640, size: 64, offset: 2176)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !719, file: !177, line: 449, baseType: !500, size: 64, offset: 2240)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !719, file: !177, line: 450, baseType: !500, size: 64, offset: 2304)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !719, file: !177, line: 453, baseType: !768, size: 64, offset: 2368)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !769, line: 26, baseType: !770)
!769 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!481, !773, !775, !777}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !719, file: !177, line: 456, baseType: !779, size: 64, offset: 2432)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !781, line: 7, baseType: !782)
!781 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !783, line: 49, size: 1728, elements: !784)
!783 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !800, !802, !803, !804, !806, !807, !809, !813, !816, !818, !821, !824, !825, !826, !827, !828}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !782, file: !783, line: 51, baseType: !498, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !782, file: !783, line: 54, baseType: !577, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !782, file: !783, line: 55, baseType: !577, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !782, file: !783, line: 56, baseType: !577, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !782, file: !783, line: 57, baseType: !577, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !782, file: !783, line: 58, baseType: !577, size: 64, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !782, file: !783, line: 59, baseType: !577, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !782, file: !783, line: 60, baseType: !577, size: 64, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !782, file: !783, line: 61, baseType: !577, size: 64, offset: 512)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !782, file: !783, line: 64, baseType: !577, size: 64, offset: 576)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !782, file: !783, line: 65, baseType: !577, size: 64, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !782, file: !783, line: 66, baseType: !577, size: 64, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !782, file: !783, line: 68, baseType: !798, size: 64, offset: 768)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !783, line: 36, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !782, file: !783, line: 70, baseType: !801, size: 64, offset: 832)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !782, file: !783, line: 72, baseType: !498, size: 32, offset: 896)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !782, file: !783, line: 73, baseType: !498, size: 32, offset: 928)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !782, file: !783, line: 74, baseType: !805, size: 64, offset: 960)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !517, line: 152, baseType: !518)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !782, file: !783, line: 77, baseType: !510, size: 16, offset: 1024)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !782, file: !783, line: 78, baseType: !808, size: 8, offset: 1040)
!808 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !782, file: !783, line: 79, baseType: !810, size: 8, offset: 1048)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 8, elements: !811)
!811 = !{!812}
!812 = !DISubrange(count: 1)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !782, file: !783, line: 81, baseType: !814, size: 64, offset: 1088)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !783, line: 43, baseType: null)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !782, file: !783, line: 89, baseType: !817, size: 64, offset: 1152)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !517, line: 153, baseType: !518)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !782, file: !783, line: 91, baseType: !819, size: 64, offset: 1216)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !783, line: 37, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !782, file: !783, line: 92, baseType: !822, size: 64, offset: 1280)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !783, line: 38, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !782, file: !783, line: 93, baseType: !801, size: 64, offset: 1344)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !782, file: !783, line: 94, baseType: !500, size: 64, offset: 1408)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !782, file: !783, line: 95, baseType: !481, size: 64, offset: 1472)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !782, file: !783, line: 96, baseType: !498, size: 32, offset: 1536)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !782, file: !783, line: 98, baseType: !829, size: 160, offset: 1568)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 160, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 20)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !719, file: !177, line: 459, baseType: !500, size: 64, offset: 2496)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !719, file: !177, line: 462, baseType: !481, size: 64, offset: 2560)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !719, file: !177, line: 465, baseType: !493, size: 32768, offset: 2624)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !719, file: !177, line: 466, baseType: !493, size: 32768, offset: 35392)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !719, file: !177, line: 467, baseType: !493, size: 32768, offset: 68160)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !719, file: !177, line: 468, baseType: !493, size: 32768, offset: 100928)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !719, file: !177, line: 471, baseType: !490, size: 32, offset: 133696)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !719, file: !177, line: 474, baseType: !577, size: 64, offset: 133760)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !719, file: !177, line: 477, baseType: !481, size: 64, offset: 133824)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !719, file: !177, line: 478, baseType: !481, size: 64, offset: 133888)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !719, file: !177, line: 481, baseType: !545, size: 64, offset: 133952)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !719, file: !177, line: 484, baseType: !481, size: 64, offset: 134016)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !719, file: !177, line: 487, baseType: !845, size: 32, offset: 134080)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !451, line: 47, baseType: !450)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !719, file: !177, line: 490, baseType: !545, size: 64, offset: 134112)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !719, file: !177, line: 493, baseType: !500, size: 64, offset: 134208)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !719, file: !177, line: 496, baseType: !490, size: 32, offset: 134272)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !14, line: 78, baseType: !852)
!852 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!853 = !{i32 7, !"Dwarf Version", i32 5}
!854 = !{i32 2, !"Debug Info Version", i32 3}
!855 = !{i32 1, !"wchar_size", i32 4}
!856 = !{i32 7, !"PIC Level", i32 2}
!857 = !{i32 7, !"PIE Level", i32 2}
!858 = !{i32 7, !"uwtable", i32 2}
!859 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!860 = distinct !DISubprogram(name: "AcquireMatrixInfo", scope: !476, file: !476, line: 211, type: !861, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !864)
!861 = !DISubroutineType(types: !862)
!862 = !{!472, !777, !777, !777, !863}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!864 = !{!865, !866, !867, !868, !869, !870, !871}
!865 = !DILocalVariable(name: "columns", arg: 1, scope: !860, file: !476, line: 211, type: !777)
!866 = !DILocalVariable(name: "rows", arg: 2, scope: !860, file: !476, line: 212, type: !777)
!867 = !DILocalVariable(name: "stride", arg: 3, scope: !860, file: !476, line: 212, type: !777)
!868 = !DILocalVariable(name: "exception", arg: 4, scope: !860, file: !476, line: 212, type: !863)
!869 = !DILocalVariable(name: "synchronize", scope: !860, file: !476, line: 215, type: !577)
!870 = !DILocalVariable(name: "status", scope: !860, file: !476, line: 218, type: !490)
!871 = !DILocalVariable(name: "matrix_info", scope: !860, file: !476, line: 221, type: !472)
!872 = !DILocation(line: 0, scope: !860)
!873 = !DILocation(line: 223, column: 30, scope: !860)
!874 = !DILocation(line: 224, column: 19, scope: !875)
!875 = distinct !DILexicalBlock(scope: !860, file: !476, line: 224, column: 7)
!876 = !DILocation(line: 224, column: 7, scope: !860)
!877 = !DILocation(line: 226, column: 10, scope: !860)
!878 = !DILocation(line: 227, column: 16, scope: !860)
!879 = !DILocation(line: 227, column: 25, scope: !860)
!880 = !{!881, !884, i64 4168}
!881 = !{!"_MatrixInfo", !882, i64 0, !884, i64 8, !884, i64 16, !884, i64 24, !885, i64 32, !882, i64 40, !882, i64 44, !882, i64 48, !886, i64 4144, !887, i64 4152, !887, i64 4160, !884, i64 4168}
!882 = !{!"omnipotent char", !883, i64 0}
!883 = !{!"Simple C/C++ TBAA"}
!884 = !{!"long", !882, i64 0}
!885 = !{!"long long", !882, i64 0}
!886 = !{!"int", !882, i64 0}
!887 = !{!"any pointer", !882, i64 0}
!888 = !DILocation(line: 228, column: 16, scope: !860)
!889 = !DILocation(line: 228, column: 23, scope: !860)
!890 = !{!881, !884, i64 8}
!891 = !DILocation(line: 229, column: 16, scope: !860)
!892 = !DILocation(line: 229, column: 20, scope: !860)
!893 = !{!881, !884, i64 16}
!894 = !DILocation(line: 230, column: 16, scope: !860)
!895 = !DILocation(line: 230, column: 22, scope: !860)
!896 = !{!881, !884, i64 24}
!897 = !DILocation(line: 231, column: 26, scope: !860)
!898 = !DILocation(line: 231, column: 16, scope: !860)
!899 = !DILocation(line: 231, column: 25, scope: !860)
!900 = !{!881, !887, i64 4160}
!901 = !DILocation(line: 232, column: 15, scope: !860)
!902 = !DILocation(line: 233, column: 19, scope: !903)
!903 = distinct !DILexicalBlock(scope: !860, file: !476, line: 233, column: 7)
!904 = !DILocation(line: 233, column: 7, scope: !860)
!905 = !DILocation(line: 235, column: 32, scope: !906)
!906 = distinct !DILexicalBlock(scope: !903, file: !476, line: 234, column: 5)
!907 = !DILocation(line: 235, column: 20, scope: !906)
!908 = !DILocation(line: 235, column: 31, scope: !906)
!909 = !{!881, !882, i64 44}
!910 = !DILocation(line: 236, column: 19, scope: !906)
!911 = !DILocation(line: 237, column: 5, scope: !906)
!912 = !DILocation(line: 238, column: 47, scope: !860)
!913 = !DILocation(line: 238, column: 52, scope: !860)
!914 = !DILocation(line: 238, column: 16, scope: !860)
!915 = !DILocation(line: 238, column: 22, scope: !860)
!916 = !{!881, !885, i64 32}
!917 = !DILocation(line: 239, column: 20, scope: !918)
!918 = distinct !DILexicalBlock(scope: !860, file: !476, line: 239, column: 7)
!919 = !DILocation(line: 239, column: 60, scope: !918)
!920 = !DILocation(line: 239, column: 65, scope: !918)
!921 = !DILocation(line: 239, column: 28, scope: !918)
!922 = !DILocation(line: 239, column: 7, scope: !860)
!923 = !DILocation(line: 241, column: 14, scope: !924)
!924 = distinct !DILexicalBlock(scope: !918, file: !476, line: 240, column: 5)
!925 = !DILocation(line: 243, column: 14, scope: !924)
!926 = !DILocation(line: 243, column: 7, scope: !924)
!927 = !DILocation(line: 245, column: 20, scope: !860)
!928 = !{!881, !882, i64 0}
!929 = !DILocation(line: 246, column: 10, scope: !860)
!930 = !DILocation(line: 247, column: 15, scope: !931)
!931 = distinct !DILexicalBlock(scope: !860, file: !476, line: 247, column: 7)
!932 = !DILocation(line: 247, column: 31, scope: !931)
!933 = !DILocation(line: 248, column: 21, scope: !931)
!934 = !DILocation(line: 250, column: 14, scope: !935)
!935 = distinct !DILexicalBlock(scope: !931, file: !476, line: 249, column: 5)
!936 = !DILocation(line: 251, column: 18, scope: !937)
!937 = distinct !DILexicalBlock(scope: !935, file: !476, line: 251, column: 11)
!938 = !DILocation(line: 251, column: 11, scope: !935)
!939 = !DILocation(line: 253, column: 24, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !476, line: 252, column: 9)
!941 = !DILocation(line: 253, column: 30, scope: !940)
!942 = !{!881, !882, i64 40}
!943 = !DILocation(line: 255, column: 26, scope: !940)
!944 = !DILocation(line: 254, column: 33, scope: !940)
!945 = !DILocation(line: 254, column: 24, scope: !940)
!946 = !DILocation(line: 254, column: 32, scope: !940)
!947 = !{!881, !887, i64 4152}
!948 = !DILocation(line: 256, column: 37, scope: !949)
!949 = distinct !DILexicalBlock(scope: !940, file: !476, line: 256, column: 15)
!950 = !DILocation(line: 256, column: 15, scope: !940)
!951 = !DILocation(line: 258, column: 34, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !476, line: 257, column: 13)
!953 = !DILocation(line: 260, column: 30, scope: !952)
!954 = !DILocation(line: 259, column: 37, scope: !952)
!955 = !DILocation(line: 259, column: 36, scope: !952)
!956 = !DILocation(line: 262, column: 37, scope: !957)
!957 = distinct !DILexicalBlock(scope: !940, file: !476, line: 262, column: 15)
!958 = !DILocation(line: 262, column: 15, scope: !940)
!959 = !DILocation(line: 263, column: 66, scope: !957)
!960 = !DILocation(line: 263, column: 13, scope: !957)
!961 = !DILocation(line: 266, column: 16, scope: !860)
!962 = !DILocation(line: 266, column: 20, scope: !860)
!963 = !{!881, !886, i64 4144}
!964 = !DILocation(line: 267, column: 20, scope: !965)
!965 = distinct !DILexicalBlock(scope: !860, file: !476, line: 267, column: 7)
!966 = !DILocation(line: 267, column: 29, scope: !965)
!967 = !DILocation(line: 267, column: 7, scope: !860)
!968 = !DILocation(line: 269, column: 62, scope: !969)
!969 = distinct !DILexicalBlock(scope: !965, file: !476, line: 268, column: 5)
!970 = !DILocation(line: 269, column: 14, scope: !969)
!971 = !DILocation(line: 270, column: 18, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !476, line: 270, column: 11)
!973 = !DILocation(line: 270, column: 11, scope: !969)
!974 = !DILocation(line: 272, column: 18, scope: !975)
!975 = distinct !DILexicalBlock(scope: !972, file: !476, line: 271, column: 9)
!976 = !DILocation(line: 274, column: 18, scope: !975)
!977 = !DILocation(line: 274, column: 11, scope: !975)
!978 = !DILocation(line: 276, column: 24, scope: !969)
!979 = !DILocation(line: 277, column: 64, scope: !969)
!980 = !DILocation(line: 277, column: 14, scope: !969)
!981 = !DILocation(line: 278, column: 64, scope: !969)
!982 = !DILocation(line: 278, column: 25, scope: !969)
!983 = !DILocation(line: 278, column: 24, scope: !969)
!984 = !DILocation(line: 279, column: 29, scope: !985)
!985 = distinct !DILexicalBlock(scope: !969, file: !476, line: 279, column: 11)
!986 = !DILocation(line: 279, column: 11, scope: !969)
!987 = !DILocation(line: 280, column: 16, scope: !985)
!988 = !DILocation(line: 280, column: 9, scope: !985)
!989 = !DILocation(line: 281, column: 61, scope: !969)
!990 = !DILocation(line: 281, column: 14, scope: !969)
!991 = !DILocation(line: 282, column: 18, scope: !992)
!992 = distinct !DILexicalBlock(scope: !969, file: !476, line: 282, column: 11)
!993 = !DILocation(line: 282, column: 11, scope: !969)
!994 = !DILocation(line: 284, column: 59, scope: !995)
!995 = distinct !DILexicalBlock(scope: !992, file: !476, line: 283, column: 9)
!996 = !{!997}
!997 = distinct !{!997, !998, !"SetMatrixExtent: %matrix_info"}
!998 = distinct !{!998, !"SetMatrixExtent"}
!999 = !DILocation(line: 284, column: 18, scope: !995)
!1000 = !DILocalVariable(name: "matrix_info", arg: 1, scope: !1001, file: !476, line: 177, type: !1004)
!1001 = distinct !DISubprogram(name: "SetMatrixExtent", scope: !476, file: !476, line: 177, type: !1002, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1005)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!490, !1004, !487}
!1004 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !472)
!1005 = !{!1000, !1006, !1007, !1008, !1009}
!1006 = !DILocalVariable(name: "length", arg: 2, scope: !1001, file: !476, line: 178, type: !487)
!1007 = !DILocalVariable(name: "count", scope: !1001, file: !476, line: 181, type: !520)
!1008 = !DILocalVariable(name: "extent", scope: !1001, file: !476, line: 182, type: !520)
!1009 = !DILocalVariable(name: "offset", scope: !1001, file: !476, line: 183, type: !520)
!1010 = !DILocation(line: 0, scope: !1001, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 284, column: 18, scope: !995)
!1012 = !DILocation(line: 187, column: 48, scope: !1001, inlinedAt: !1011)
!1013 = !DILocation(line: 187, column: 29, scope: !1001, inlinedAt: !1011)
!1014 = !DILocation(line: 188, column: 14, scope: !1015, inlinedAt: !1011)
!1015 = distinct !DILexicalBlock(scope: !1001, file: !476, line: 188, column: 7)
!1016 = !DILocation(line: 188, column: 7, scope: !1001, inlinedAt: !1011)
!1017 = !DILocation(line: 190, column: 31, scope: !1018, inlinedAt: !1011)
!1018 = distinct !DILexicalBlock(scope: !1001, file: !476, line: 190, column: 7)
!1019 = !DILocation(line: 190, column: 7, scope: !1001, inlinedAt: !1011)
!1020 = !DILocation(line: 192, column: 35, scope: !1001, inlinedAt: !1011)
!1021 = !{!1022}
!1022 = distinct !{!1022, !1023, !"WriteMatrixElements: %matrix_info"}
!1023 = distinct !{!1023, !"WriteMatrixElements"}
!1024 = !DILocation(line: 193, column: 9, scope: !1001, inlinedAt: !1011)
!1025 = !DILocalVariable(name: "matrix_info", arg: 1, scope: !1026, file: !476, line: 137, type: !1029)
!1026 = distinct !DISubprogram(name: "WriteMatrixElements", scope: !476, file: !476, line: 136, type: !1027, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1033)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!520, !1029, !645, !646, !1032}
!1029 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1030)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!1032 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !849)
!1033 = !{!1025, !1034, !1035, !1036, !1037, !1038}
!1034 = !DILocalVariable(name: "offset", arg: 2, scope: !1026, file: !476, line: 137, type: !645)
!1035 = !DILocalVariable(name: "length", arg: 3, scope: !1026, file: !476, line: 138, type: !646)
!1036 = !DILocalVariable(name: "buffer", arg: 4, scope: !1026, file: !476, line: 138, type: !1032)
!1037 = !DILocalVariable(name: "i", scope: !1026, file: !476, line: 141, type: !520)
!1038 = !DILocalVariable(name: "count", scope: !1026, file: !476, line: 144, type: !514)
!1039 = !DILocation(line: 0, scope: !1026, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 193, column: 9, scope: !1001, inlinedAt: !1011)
!1041 = !DILocation(line: 147, column: 34, scope: !1026, inlinedAt: !1040)
!1042 = !{!1022, !997}
!1043 = !{!1044}
!1044 = distinct !{!1044, !1023, !"WriteMatrixElements: %buffer"}
!1045 = !DILocation(line: 147, column: 3, scope: !1026, inlinedAt: !1040)
!1046 = !{!1022, !1044, !997}
!1047 = !DILocation(line: 148, column: 7, scope: !1048, inlinedAt: !1040)
!1048 = distinct !DILexicalBlock(scope: !1026, file: !476, line: 148, column: 7)
!1049 = !DILocation(line: 148, column: 48, scope: !1048, inlinedAt: !1040)
!1050 = !DILocation(line: 148, column: 7, scope: !1026, inlinedAt: !1040)
!1051 = !DILocation(line: 158, column: 41, scope: !1052, inlinedAt: !1040)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !476, line: 156, column: 3)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !476, line: 155, column: 3)
!1054 = distinct !DILexicalBlock(scope: !1026, file: !476, line: 155, column: 3)
!1055 = !DILocation(line: 158, column: 69, scope: !1052, inlinedAt: !1040)
!1056 = !DILocalVariable(name: "x", arg: 1, scope: !1057, file: !476, line: 121, type: !646)
!1057 = distinct !DISubprogram(name: "MagickMin", scope: !476, file: !476, line: 121, type: !1058, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1060)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!487, !646, !646}
!1060 = !{!1056, !1061}
!1061 = !DILocalVariable(name: "y", arg: 2, scope: !1057, file: !476, line: 122, type: !646)
!1062 = !DILocation(line: 0, scope: !1057, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 158, column: 53, scope: !1052, inlinedAt: !1040)
!1064 = !DILocation(line: 158, column: 11, scope: !1052, inlinedAt: !1040)
!1065 = !DILocation(line: 164, column: 15, scope: !1066, inlinedAt: !1040)
!1066 = distinct !DILexicalBlock(scope: !1052, file: !476, line: 164, column: 9)
!1067 = !DILocation(line: 164, column: 9, scope: !1052, inlinedAt: !1040)
!1068 = !DILocation(line: 167, column: 13, scope: !1069, inlinedAt: !1040)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !476, line: 167, column: 13)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !476, line: 165, column: 7)
!1071 = !{!886, !886, i64 0}
!1072 = !DILocation(line: 167, column: 19, scope: !1069, inlinedAt: !1040)
!1073 = !DILocation(line: 167, column: 13, scope: !1070, inlinedAt: !1040)
!1074 = !DILocation(line: 0, scope: !1052, inlinedAt: !1040)
!1075 = !DILocation(line: 155, column: 45, scope: !1053, inlinedAt: !1040)
!1076 = !DILocation(line: 155, column: 15, scope: !1053, inlinedAt: !1040)
!1077 = !DILocation(line: 155, column: 3, scope: !1054, inlinedAt: !1040)
!1078 = distinct !{!1078, !1077, !1079, !1080, !1081}
!1079 = !DILocation(line: 170, column: 3, scope: !1054, inlinedAt: !1040)
!1080 = !{!"llvm.loop.mustprogress"}
!1081 = !{!"llvm.loop.unroll.disable"}
!1082 = !DILocation(line: 206, column: 10, scope: !1001, inlinedAt: !1011)
!1083 = !DILocation(line: 208, column: 16, scope: !1001, inlinedAt: !1011)
!1084 = !DILocation(line: 285, column: 15, scope: !995)
!1085 = !DILocation(line: 287, column: 67, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !476, line: 286, column: 13)
!1087 = distinct !DILexicalBlock(scope: !995, file: !476, line: 285, column: 15)
!1088 = !DILocation(line: 288, column: 39, scope: !1086)
!1089 = !DILocation(line: 287, column: 46, scope: !1086)
!1090 = !DILocation(line: 287, column: 36, scope: !1086)
!1091 = !DILocation(line: 289, column: 41, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1086, file: !476, line: 289, column: 19)
!1093 = !DILocation(line: 289, column: 19, scope: !1086)
!1094 = !DILocation(line: 290, column: 34, scope: !1092)
!1095 = !DILocation(line: 290, column: 17, scope: !1092)
!1096 = !DILocation(line: 292, column: 67, scope: !1092)
!1097 = !DILocation(line: 292, column: 17, scope: !1092)
!1098 = !DILocation(line: 297, column: 1, scope: !860)
!1099 = !DISubprogram(name: "AcquireMagickMemory", scope: !1100, file: !1100, line: 40, type: !1101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1100 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!500, !777}
!1103 = !{}
!1104 = !DISubprogram(name: "ResetMagickMemory", scope: !1100, file: !1100, line: 52, type: !1105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!500, !500, !498, !777}
!1107 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !504, file: !504, line: 32, type: !1108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!502}
!1110 = !DISubprogram(name: "GetEnvironmentValue", scope: !1111, file: !1111, line: 50, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1111 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!577, !507}
!1114 = !DISubprogram(name: "IsStringTrue", scope: !1111, file: !1111, line: 71, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!490, !507}
!1117 = !DISubprogram(name: "DestroyString", scope: !1111, file: !1111, line: 46, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!577, !577}
!1120 = !DISubprogram(name: "ThrowMagickException", scope: !19, file: !19, line: 156, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!490, !863, !507, !507, !777, !1123, !507, !507, null}
!1123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!1124 = distinct !DISubprogram(name: "DestroyMatrixInfo", scope: !476, file: !476, line: 383, type: !1125, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!472, !472}
!1127 = !{!1128}
!1128 = !DILocalVariable(name: "matrix_info", arg: 1, scope: !1124, file: !476, line: 383, type: !472)
!1129 = !DILocation(line: 0, scope: !1124)
!1130 = !DILocation(line: 387, column: 34, scope: !1124)
!1131 = !DILocation(line: 387, column: 3, scope: !1124)
!1132 = !DILocation(line: 388, column: 24, scope: !1124)
!1133 = !DILocation(line: 388, column: 3, scope: !1124)
!1134 = !DILocation(line: 392, column: 24, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !476, line: 392, column: 11)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !476, line: 391, column: 5)
!1137 = distinct !DILexicalBlock(scope: !1124, file: !476, line: 389, column: 3)
!1138 = !DILocation(line: 392, column: 31, scope: !1135)
!1139 = !DILocation(line: 0, scope: !1135)
!1140 = !DILocation(line: 392, column: 11, scope: !1136)
!1141 = !DILocation(line: 393, column: 31, scope: !1135)
!1142 = !DILocation(line: 393, column: 9, scope: !1135)
!1143 = !DILocation(line: 396, column: 72, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1135, file: !476, line: 395, column: 9)
!1145 = !DILocation(line: 396, column: 18, scope: !1144)
!1146 = !DILocation(line: 400, column: 7, scope: !1136)
!1147 = !DILocation(line: 404, column: 37, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1137, file: !476, line: 403, column: 5)
!1149 = !DILocation(line: 404, column: 68, scope: !1148)
!1150 = !DILocation(line: 404, column: 14, scope: !1148)
!1151 = !DILocation(line: 405, column: 28, scope: !1148)
!1152 = !DILocation(line: 406, column: 57, scope: !1148)
!1153 = !DILocation(line: 406, column: 7, scope: !1148)
!1154 = !DILocation(line: 407, column: 5, scope: !1148)
!1155 = !DILocation(line: 410, column: 24, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !476, line: 410, column: 11)
!1157 = distinct !DILexicalBlock(scope: !1137, file: !476, line: 409, column: 5)
!1158 = !DILocation(line: 410, column: 29, scope: !1156)
!1159 = !DILocation(line: 410, column: 11, scope: !1157)
!1160 = !DILocation(line: 411, column: 16, scope: !1156)
!1161 = !DILocation(line: 411, column: 9, scope: !1156)
!1162 = !DILocation(line: 412, column: 56, scope: !1157)
!1163 = !DILocation(line: 412, column: 14, scope: !1157)
!1164 = !DILocation(line: 414, column: 7, scope: !1157)
!1165 = !DILocation(line: 0, scope: !1137)
!1166 = !DILocation(line: 419, column: 36, scope: !1124)
!1167 = !DILocation(line: 419, column: 3, scope: !1124)
!1168 = !DILocation(line: 420, column: 3, scope: !1124)
!1169 = !DILocation(line: 421, column: 25, scope: !1124)
!1170 = !DILocation(line: 421, column: 3, scope: !1124)
!1171 = !DISubprogram(name: "AcquireMagickResource", scope: !92, file: !92, line: 44, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!490, !1174, !646}
!1174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResourceType", file: !92, line: 36, baseType: !91)
!1176 = !DISubprogram(name: "MapBlob", scope: !1177, file: !1177, line: 112, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1177 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a66ea2eabdd36512a199f3a0075ea4ad")
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!522, !498, !1180, !645, !777}
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1181)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "MapMode", file: !104, line: 35, baseType: !103)
!1182 = !DISubprogram(name: "RelinquishMagickResource", scope: !92, file: !92, line: 57, type: !1183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !1174, !646}
!1185 = !DISubprogram(name: "AcquireUniqueFileResource", scope: !92, file: !92, line: 41, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!498, !577}
!1188 = distinct !DISubprogram(name: "AcquireMagickMatrix", scope: !476, file: !476, line: 331, type: !1189, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1191)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!511, !777, !777}
!1191 = !{!1192, !1193, !1194, !1195, !1196}
!1192 = !DILocalVariable(name: "number_rows", arg: 1, scope: !1188, file: !476, line: 331, type: !777)
!1193 = !DILocalVariable(name: "size", arg: 2, scope: !1188, file: !476, line: 332, type: !777)
!1194 = !DILocalVariable(name: "matrix", scope: !1188, file: !476, line: 335, type: !511)
!1195 = !DILocalVariable(name: "i", scope: !1188, file: !476, line: 338, type: !514)
!1196 = !DILocalVariable(name: "j", scope: !1188, file: !476, line: 339, type: !514)
!1197 = !DILocation(line: 0, scope: !1188)
!1198 = !DILocation(line: 341, column: 22, scope: !1188)
!1199 = !DILocation(line: 342, column: 14, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1188, file: !476, line: 342, column: 7)
!1201 = !DILocation(line: 342, column: 7, scope: !1188)
!1202 = !DILocation(line: 344, column: 15, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !476, line: 344, column: 3)
!1204 = distinct !DILexicalBlock(scope: !1188, file: !476, line: 344, column: 3)
!1205 = !DILocation(line: 344, column: 3, scope: !1204)
!1206 = !DILocation(line: 354, column: 5, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !476, line: 354, column: 5)
!1208 = distinct !DILexicalBlock(scope: !1203, file: !476, line: 345, column: 3)
!1209 = !DILocation(line: 346, column: 26, scope: !1208)
!1210 = !DILocation(line: 346, column: 5, scope: !1208)
!1211 = !DILocation(line: 346, column: 14, scope: !1208)
!1212 = !{!887, !887, i64 0}
!1213 = !DILocation(line: 347, column: 19, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1208, file: !476, line: 347, column: 9)
!1215 = !DILocation(line: 347, column: 9, scope: !1208)
!1216 = !DILocation(line: 355, column: 19, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1207, file: !476, line: 354, column: 5)
!1218 = !{!1219, !1219, i64 0}
!1219 = !{!"double", !882, i64 0}
!1220 = !DILocation(line: 344, column: 41, scope: !1203)
!1221 = distinct !{!1221, !1205, !1222, !1080, !1081}
!1222 = !DILocation(line: 356, column: 3, scope: !1204)
!1223 = !DILocation(line: 349, column: 19, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !476, line: 349, column: 7)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !476, line: 349, column: 7)
!1226 = distinct !DILexicalBlock(scope: !1214, file: !476, line: 348, column: 5)
!1227 = !DILocation(line: 349, column: 7, scope: !1225)
!1228 = !DILocation(line: 350, column: 53, scope: !1224)
!1229 = !DILocation(line: 350, column: 30, scope: !1224)
!1230 = !DILocation(line: 350, column: 18, scope: !1224)
!1231 = !DILocation(line: 349, column: 25, scope: !1224)
!1232 = distinct !{!1232, !1227, !1233, !1080, !1081}
!1233 = !DILocation(line: 350, column: 62, scope: !1225)
!1234 = !DILocation(line: 351, column: 26, scope: !1226)
!1235 = !DILocation(line: 352, column: 7, scope: !1226)
!1236 = !DILocation(line: 358, column: 1, scope: !1188)
!1237 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1100, file: !1100, line: 42, type: !1238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!500, !777, !777}
!1240 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1100, file: !1100, line: 51, type: !1241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!500, !500}
!1243 = !DISubprogram(name: "LockSemaphoreInfo", scope: !504, file: !504, line: 37, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !502}
!1246 = !DISubprogram(name: "UnmapBlob", scope: !1177, file: !1177, line: 86, type: !1247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!490, !500, !777}
!1249 = !DISubprogram(name: "close", scope: !1250, file: !1250, line: 353, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1250 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!498, !498}
!1253 = !DISubprogram(name: "RelinquishUniqueFileResource", scope: !92, file: !92, line: 47, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1254 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !504, file: !504, line: 39, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1255 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !504, file: !504, line: 36, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !1258}
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!1259 = distinct !DISubprogram(name: "GaussJordanElimination", scope: !476, file: !476, line: 495, type: !1260, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1262)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!490, !511, !511, !777, !777}
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276}
!1263 = !DILocalVariable(name: "matrix", arg: 1, scope: !1259, file: !476, line: 495, type: !511)
!1264 = !DILocalVariable(name: "vectors", arg: 2, scope: !1259, file: !476, line: 496, type: !511)
!1265 = !DILocalVariable(name: "rank", arg: 3, scope: !1259, file: !476, line: 496, type: !777)
!1266 = !DILocalVariable(name: "number_vectors", arg: 4, scope: !1259, file: !476, line: 496, type: !777)
!1267 = !DILocalVariable(name: "max", scope: !1259, file: !476, line: 509, type: !513)
!1268 = !DILocalVariable(name: "scale", scope: !1259, file: !476, line: 510, type: !513)
!1269 = !DILocalVariable(name: "i", scope: !1259, file: !476, line: 513, type: !514)
!1270 = !DILocalVariable(name: "j", scope: !1259, file: !476, line: 514, type: !514)
!1271 = !DILocalVariable(name: "k", scope: !1259, file: !476, line: 515, type: !514)
!1272 = !DILocalVariable(name: "column", scope: !1259, file: !476, line: 518, type: !514)
!1273 = !DILocalVariable(name: "columns", scope: !1259, file: !476, line: 519, type: !519)
!1274 = !DILocalVariable(name: "pivots", scope: !1259, file: !476, line: 520, type: !519)
!1275 = !DILocalVariable(name: "row", scope: !1259, file: !476, line: 521, type: !514)
!1276 = !DILocalVariable(name: "rows", scope: !1259, file: !476, line: 522, type: !519)
!1277 = !DILocation(line: 0, scope: !1259)
!1278 = !DILocation(line: 524, column: 23, scope: !1259)
!1279 = !DILocation(line: 525, column: 20, scope: !1259)
!1280 = !DILocation(line: 526, column: 22, scope: !1259)
!1281 = !DILocation(line: 527, column: 13, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1259, file: !476, line: 527, column: 7)
!1283 = !DILocation(line: 527, column: 34, scope: !1282)
!1284 = !DILocation(line: 530, column: 11, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !476, line: 529, column: 5)
!1286 = !DILocation(line: 531, column: 28, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1285, file: !476, line: 530, column: 11)
!1288 = !DILocation(line: 531, column: 9, scope: !1287)
!1289 = !DILocation(line: 532, column: 11, scope: !1285)
!1290 = !DILocation(line: 533, column: 29, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1285, file: !476, line: 532, column: 11)
!1292 = !DILocation(line: 533, column: 9, scope: !1291)
!1293 = !DILocation(line: 534, column: 11, scope: !1285)
!1294 = !DILocation(line: 535, column: 26, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1285, file: !476, line: 534, column: 11)
!1296 = !DILocation(line: 535, column: 9, scope: !1295)
!1297 = !DILocation(line: 538, column: 42, scope: !1259)
!1298 = !DILocation(line: 538, column: 10, scope: !1259)
!1299 = !DILocation(line: 539, column: 10, scope: !1259)
!1300 = !DILocation(line: 540, column: 10, scope: !1259)
!1301 = !DILocation(line: 543, column: 15, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !476, line: 543, column: 3)
!1303 = distinct !DILexicalBlock(scope: !1259, file: !476, line: 543, column: 3)
!1304 = !DILocation(line: 543, column: 3, scope: !1303)
!1305 = !DILocation(line: 546, column: 5, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !476, line: 546, column: 5)
!1307 = distinct !DILexicalBlock(scope: !1302, file: !476, line: 544, column: 3)
!1308 = !DILocation(line: 547, column: 11, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !476, line: 547, column: 11)
!1310 = distinct !DILexicalBlock(scope: !1306, file: !476, line: 546, column: 5)
!1311 = !{!884, !884, i64 0}
!1312 = !DILocation(line: 547, column: 21, scope: !1309)
!1313 = !DILocation(line: 547, column: 11, scope: !1310)
!1314 = !DILocation(line: 550, column: 17, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !476, line: 550, column: 17)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !476, line: 549, column: 11)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !476, line: 549, column: 11)
!1318 = distinct !DILexicalBlock(scope: !1309, file: !476, line: 548, column: 9)
!1319 = !DILocation(line: 550, column: 27, scope: !1315)
!1320 = !DILocation(line: 550, column: 17, scope: !1316)
!1321 = !DILocation(line: 552, column: 31, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !476, line: 552, column: 21)
!1323 = distinct !DILexicalBlock(scope: !1315, file: !476, line: 551, column: 15)
!1324 = !DILocation(line: 552, column: 21, scope: !1323)
!1325 = !DILocation(line: 556, column: 24, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1315, file: !476, line: 556, column: 19)
!1327 = !DILocation(line: 556, column: 19, scope: !1326)
!1328 = !DILocation(line: 556, column: 38, scope: !1326)
!1329 = !DILocation(line: 556, column: 19, scope: !1315)
!1330 = !DILocation(line: 561, column: 17, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1326, file: !476, line: 557, column: 17)
!1332 = !DILocation(line: 0, scope: !1307)
!1333 = !DILocation(line: 549, column: 42, scope: !1316)
!1334 = !DILocation(line: 549, column: 23, scope: !1316)
!1335 = !DILocation(line: 549, column: 11, scope: !1317)
!1336 = distinct !{!1336, !1335, !1337, !1080, !1081}
!1337 = !DILocation(line: 561, column: 17, scope: !1317)
!1338 = !DILocation(line: 545, column: 8, scope: !1307)
!1339 = !DILocation(line: 541, column: 9, scope: !1259)
!1340 = !DILocation(line: 542, column: 6, scope: !1259)
!1341 = !DILocation(line: 546, column: 36, scope: !1310)
!1342 = !DILocation(line: 546, column: 17, scope: !1310)
!1343 = distinct !{!1343, !1305, !1344, !1080, !1081}
!1344 = !DILocation(line: 562, column: 9, scope: !1306)
!1345 = !DILocation(line: 592, column: 3, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1259, file: !476, line: 592, column: 3)
!1347 = !DILocation(line: 0, scope: !1346)
!1348 = !DILocation(line: 593, column: 9, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !476, line: 593, column: 9)
!1350 = distinct !DILexicalBlock(scope: !1346, file: !476, line: 592, column: 3)
!1351 = !DILocation(line: 593, column: 23, scope: !1349)
!1352 = !DILocation(line: 593, column: 20, scope: !1349)
!1353 = !DILocation(line: 593, column: 9, scope: !1350)
!1354 = !DILocation(line: 595, column: 9, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !476, line: 595, column: 9)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !476, line: 595, column: 9)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !476, line: 594, column: 7)
!1358 = distinct !DILexicalBlock(scope: !1349, file: !476, line: 594, column: 7)
!1359 = !DILocation(line: 595, column: 9, scope: !1356)
!1360 = !DILocation(line: 595, column: 9, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1355, file: !476, line: 595, column: 9)
!1362 = !DILocation(line: 594, column: 38, scope: !1357)
!1363 = !DILocation(line: 594, column: 19, scope: !1357)
!1364 = !DILocation(line: 594, column: 7, scope: !1358)
!1365 = distinct !{!1365, !1364, !1366, !1080, !1081}
!1366 = !DILocation(line: 595, column: 9, scope: !1358)
!1367 = !DILocation(line: 592, column: 30, scope: !1350)
!1368 = distinct !{!1368, !1345, !1369, !1080, !1081}
!1369 = !DILocation(line: 595, column: 9, scope: !1346)
!1370 = !DILocation(line: 563, column: 5, scope: !1307)
!1371 = !DILocation(line: 563, column: 19, scope: !1307)
!1372 = !DILocation(line: 564, column: 13, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1307, file: !476, line: 564, column: 9)
!1374 = !DILocation(line: 564, column: 9, scope: !1307)
!1375 = !DILocation(line: 566, column: 9, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !476, line: 566, column: 9)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !476, line: 565, column: 7)
!1378 = !DILocation(line: 568, column: 9, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1377, file: !476, line: 568, column: 9)
!1380 = !DILocation(line: 567, column: 11, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !476, line: 567, column: 11)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !476, line: 567, column: 11)
!1383 = distinct !DILexicalBlock(scope: !1376, file: !476, line: 566, column: 9)
!1384 = !DILocation(line: 567, column: 11, scope: !1382)
!1385 = !DILocation(line: 567, column: 11, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1381, file: !476, line: 567, column: 11)
!1387 = !DILocation(line: 566, column: 40, scope: !1383)
!1388 = !DILocation(line: 566, column: 21, scope: !1383)
!1389 = distinct !{!1389, !1375, !1390, !1080, !1081}
!1390 = !DILocation(line: 567, column: 11, scope: !1376)
!1391 = !DILocation(line: 569, column: 11, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !476, line: 569, column: 11)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !476, line: 569, column: 11)
!1394 = distinct !DILexicalBlock(scope: !1379, file: !476, line: 568, column: 9)
!1395 = !DILocation(line: 569, column: 11, scope: !1393)
!1396 = !DILocation(line: 569, column: 11, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1392, file: !476, line: 569, column: 11)
!1398 = !DILocation(line: 568, column: 50, scope: !1394)
!1399 = !DILocation(line: 568, column: 21, scope: !1394)
!1400 = distinct !{!1400, !1378, !1401, !1080, !1081}
!1401 = !DILocation(line: 569, column: 11, scope: !1379)
!1402 = !DILocation(line: 571, column: 5, scope: !1307)
!1403 = !DILocation(line: 571, column: 12, scope: !1307)
!1404 = !DILocation(line: 572, column: 5, scope: !1307)
!1405 = !DILocation(line: 572, column: 15, scope: !1307)
!1406 = !DILocation(line: 573, column: 9, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1307, file: !476, line: 573, column: 9)
!1408 = !DILocation(line: 573, column: 32, scope: !1407)
!1409 = !DILocation(line: 573, column: 9, scope: !1307)
!1410 = !DILocalVariable(name: "x", arg: 1, scope: !1411, file: !1412, line: 78, type: !1415)
!1411 = distinct !DISubprogram(name: "PerceptibleReciprocal", scope: !1412, file: !1412, line: 78, type: !1413, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1416)
!1412 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!513, !1415}
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !513)
!1416 = !{!1410, !1417}
!1417 = !DILocalVariable(name: "sign", scope: !1411, file: !1412, line: 81, type: !513)
!1418 = !DILocation(line: 0, scope: !1411, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 575, column: 11, scope: !1307)
!1420 = !DILocation(line: 86, column: 10, scope: !1411, inlinedAt: !1419)
!1421 = !DILocation(line: 86, column: 8, scope: !1411, inlinedAt: !1419)
!1422 = !DILocation(line: 87, column: 12, scope: !1423, inlinedAt: !1419)
!1423 = distinct !DILexicalBlock(scope: !1411, file: !1412, line: 87, column: 7)
!1424 = !DILocation(line: 87, column: 16, scope: !1423, inlinedAt: !1419)
!1425 = !DILocation(line: 87, column: 7, scope: !1411, inlinedAt: !1419)
!1426 = !DILocation(line: 88, column: 15, scope: !1423, inlinedAt: !1419)
!1427 = !DILocation(line: 88, column: 5, scope: !1423, inlinedAt: !1419)
!1428 = !DILocation(line: 89, column: 14, scope: !1411, inlinedAt: !1419)
!1429 = !DILocation(line: 89, column: 3, scope: !1411, inlinedAt: !1419)
!1430 = !DILocation(line: 576, column: 27, scope: !1307)
!1431 = !DILocation(line: 577, column: 5, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1307, file: !476, line: 577, column: 5)
!1433 = !DILocation(line: 579, column: 5, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1307, file: !476, line: 579, column: 5)
!1435 = !DILocation(line: 578, column: 7, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !476, line: 577, column: 5)
!1437 = !DILocation(line: 578, column: 24, scope: !1436)
!1438 = !DILocation(line: 577, column: 36, scope: !1436)
!1439 = !DILocation(line: 577, column: 17, scope: !1436)
!1440 = distinct !{!1440, !1431, !1441, !1080, !1081}
!1441 = !DILocation(line: 578, column: 26, scope: !1432)
!1442 = !DILocation(line: 580, column: 7, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1434, file: !476, line: 579, column: 5)
!1444 = !DILocation(line: 580, column: 25, scope: !1443)
!1445 = !DILocation(line: 579, column: 46, scope: !1443)
!1446 = !DILocation(line: 579, column: 17, scope: !1443)
!1447 = distinct !{!1447, !1433, !1448, !1080, !1081}
!1448 = !DILocation(line: 580, column: 27, scope: !1434)
!1449 = !DILocation(line: 581, column: 5, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1307, file: !476, line: 581, column: 5)
!1451 = !DILocation(line: 582, column: 13, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !476, line: 582, column: 11)
!1453 = distinct !DILexicalBlock(scope: !1450, file: !476, line: 581, column: 5)
!1454 = !DILocation(line: 582, column: 11, scope: !1453)
!1455 = !DILocation(line: 584, column: 17, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !476, line: 583, column: 9)
!1457 = !DILocation(line: 585, column: 28, scope: !1456)
!1458 = !DILocation(line: 586, column: 11, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !476, line: 586, column: 11)
!1460 = !DILocation(line: 588, column: 11, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1456, file: !476, line: 588, column: 11)
!1462 = !DILocation(line: 587, column: 33, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1459, file: !476, line: 586, column: 11)
!1464 = !DILocation(line: 587, column: 13, scope: !1463)
!1465 = !DILocation(line: 587, column: 25, scope: !1463)
!1466 = !DILocation(line: 586, column: 42, scope: !1463)
!1467 = !DILocation(line: 586, column: 23, scope: !1463)
!1468 = distinct !{!1468, !1458, !1469, !1080, !1081}
!1469 = !DILocation(line: 587, column: 49, scope: !1459)
!1470 = !DILocation(line: 589, column: 34, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1461, file: !476, line: 588, column: 11)
!1472 = !DILocation(line: 589, column: 13, scope: !1471)
!1473 = !DILocation(line: 589, column: 26, scope: !1471)
!1474 = !DILocation(line: 588, column: 52, scope: !1471)
!1475 = !DILocation(line: 588, column: 23, scope: !1471)
!1476 = distinct !{!1476, !1460, !1477, !1080, !1081}
!1477 = !DILocation(line: 589, column: 51, scope: !1461)
!1478 = !DILocation(line: 581, column: 36, scope: !1453)
!1479 = !DILocation(line: 581, column: 17, scope: !1453)
!1480 = distinct !{!1480, !1449, !1481, !1080, !1081}
!1481 = !DILocation(line: 590, column: 9, scope: !1450)
!1482 = !DILocation(line: 543, column: 34, scope: !1302)
!1483 = distinct !{!1483, !1304, !1484, !1080, !1081}
!1484 = !DILocation(line: 591, column: 3, scope: !1303)
!1485 = !DILocation(line: 596, column: 22, scope: !1259)
!1486 = !DILocation(line: 597, column: 20, scope: !1259)
!1487 = !DILocation(line: 598, column: 23, scope: !1259)
!1488 = !DILocation(line: 599, column: 3, scope: !1259)
!1489 = !DILocation(line: 600, column: 1, scope: !1259)
!1490 = distinct !DISubprogram(name: "GetMatrixColumns", scope: !476, file: !476, line: 624, type: !1491, scopeLine: 625, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!481, !1030}
!1493 = !{!1494}
!1494 = !DILocalVariable(name: "matrix_info", arg: 1, scope: !1490, file: !476, line: 624, type: !1030)
!1495 = !DILocation(line: 0, scope: !1490)
!1496 = !DILocation(line: 628, column: 23, scope: !1490)
!1497 = !DILocation(line: 628, column: 3, scope: !1490)
!1498 = distinct !DISubprogram(name: "GetMatrixElement", scope: !476, file: !476, line: 720, type: !1499, scopeLine: 722, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1502)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!490, !1030, !1501, !1501, !500}
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508}
!1503 = !DILocalVariable(name: "matrix_info", arg: 1, scope: !1498, file: !476, line: 720, type: !1030)
!1504 = !DILocalVariable(name: "x", arg: 2, scope: !1498, file: !476, line: 721, type: !1501)
!1505 = !DILocalVariable(name: "y", arg: 3, scope: !1498, file: !476, line: 721, type: !1501)
!1506 = !DILocalVariable(name: "value", arg: 4, scope: !1498, file: !476, line: 721, type: !500)
!1507 = !DILocalVariable(name: "count", scope: !1498, file: !476, line: 724, type: !520)
!1508 = !DILocalVariable(name: "i", scope: !1498, file: !476, line: 725, type: !520)
!1509 = !DILocation(line: 0, scope: !1498)
!1510 = !DILocalVariable(name: "y", arg: 1, scope: !1511, file: !476, line: 670, type: !1501)
!1511 = distinct !DISubprogram(name: "EdgeY", scope: !476, file: !476, line: 670, type: !1512, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1514)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!514, !1501, !777}
!1514 = !{!1510, !1515}
!1515 = !DILocalVariable(name: "rows", arg: 2, scope: !1511, file: !476, line: 670, type: !777)
!1516 = !DILocation(line: 0, scope: !1511, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 729, column: 24, scope: !1498)
!1518 = !DILocation(line: 672, column: 9, scope: !1519, inlinedAt: !1517)
!1519 = distinct !DILexicalBlock(scope: !1511, file: !476, line: 672, column: 7)
!1520 = !DILocation(line: 672, column: 7, scope: !1511, inlinedAt: !1517)
!1521 = !DILocation(line: 729, column: 45, scope: !1498)
!1522 = !DILocation(line: 674, column: 9, scope: !1523, inlinedAt: !1517)
!1523 = distinct !DILexicalBlock(scope: !1511, file: !476, line: 674, column: 7)
!1524 = !DILocation(line: 674, column: 7, scope: !1511, inlinedAt: !1517)
!1525 = !DILocation(line: 729, column: 64, scope: !1498)
!1526 = !DILocation(line: 729, column: 50, scope: !1498)
!1527 = !DILocalVariable(name: "x", arg: 1, scope: !1528, file: !476, line: 661, type: !1501)
!1528 = distinct !DISubprogram(name: "EdgeX", scope: !476, file: !476, line: 661, type: !1512, scopeLine: 662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1529)
!1529 = !{!1527, !1530}
!1530 = !DILocalVariable(name: "columns", arg: 2, scope: !1528, file: !476, line: 661, type: !777)
!1531 = !DILocation(line: 0, scope: !1528, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 730, column: 5, scope: !1498)
!1533 = !DILocation(line: 663, column: 9, scope: !1534, inlinedAt: !1532)
!1534 = distinct !DILexicalBlock(scope: !1528, file: !476, line: 663, column: 7)
!1535 = !DILocation(line: 663, column: 7, scope: !1528, inlinedAt: !1532)
!1536 = !DILocation(line: 665, column: 9, scope: !1537, inlinedAt: !1532)
!1537 = distinct !DILexicalBlock(scope: !1528, file: !476, line: 665, column: 7)
!1538 = !DILocation(line: 665, column: 7, scope: !1528, inlinedAt: !1532)
!1539 = !DILocation(line: 729, column: 71, scope: !1498)
!1540 = !DILocation(line: 731, column: 20, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1498, file: !476, line: 731, column: 7)
!1542 = !DILocation(line: 731, column: 25, scope: !1541)
!1543 = !DILocation(line: 731, column: 7, scope: !1498)
!1544 = !DILocation(line: 733, column: 58, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1541, file: !476, line: 732, column: 5)
!1546 = !DILocation(line: 734, column: 22, scope: !1545)
!1547 = !DILocation(line: 733, column: 68, scope: !1545)
!1548 = !DILocation(line: 733, column: 66, scope: !1545)
!1549 = !DILocation(line: 733, column: 14, scope: !1545)
!1550 = !DILocation(line: 735, column: 7, scope: !1545)
!1551 = !DILocation(line: 737, column: 55, scope: !1498)
!1552 = !DILocation(line: 737, column: 41, scope: !1498)
!1553 = !{!1554}
!1554 = distinct !{!1554, !1555, !"ReadMatrixElements: %matrix_info"}
!1555 = distinct !{!1555, !"ReadMatrixElements"}
!1556 = !DILocation(line: 737, column: 9, scope: !1498)
!1557 = !DILocalVariable(name: "matrix_info", arg: 1, scope: !1558, file: !476, line: 680, type: !1029)
!1558 = distinct !DISubprogram(name: "ReadMatrixElements", scope: !476, file: !476, line: 679, type: !1559, scopeLine: 682, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1562)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!520, !1029, !645, !646, !1561}
!1561 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !522)
!1562 = !{!1557, !1563, !1564, !1565, !1566, !1567}
!1563 = !DILocalVariable(name: "offset", arg: 2, scope: !1558, file: !476, line: 680, type: !645)
!1564 = !DILocalVariable(name: "length", arg: 3, scope: !1558, file: !476, line: 681, type: !646)
!1565 = !DILocalVariable(name: "buffer", arg: 4, scope: !1558, file: !476, line: 681, type: !1561)
!1566 = !DILocalVariable(name: "i", scope: !1558, file: !476, line: 684, type: !520)
!1567 = !DILocalVariable(name: "count", scope: !1558, file: !476, line: 687, type: !514)
!1568 = !DILocation(line: 0, scope: !1558, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 737, column: 9, scope: !1498)
!1570 = !DILocation(line: 690, column: 34, scope: !1558, inlinedAt: !1569)
!1571 = !{!1572}
!1572 = distinct !{!1572, !1555, !"ReadMatrixElements: %buffer"}
!1573 = !DILocation(line: 690, column: 3, scope: !1558, inlinedAt: !1569)
!1574 = !{!1554, !1572}
!1575 = !DILocation(line: 691, column: 26, scope: !1576, inlinedAt: !1569)
!1576 = distinct !DILexicalBlock(scope: !1558, file: !476, line: 691, column: 7)
!1577 = !DILocation(line: 691, column: 7, scope: !1576, inlinedAt: !1569)
!1578 = !DILocation(line: 691, column: 48, scope: !1576, inlinedAt: !1569)
!1579 = !DILocation(line: 691, column: 7, scope: !1558, inlinedAt: !1569)
!1580 = !DILocation(line: 698, column: 15, scope: !1581, inlinedAt: !1569)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !476, line: 698, column: 3)
!1582 = distinct !DILexicalBlock(scope: !1558, file: !476, line: 698, column: 3)
!1583 = !DILocation(line: 698, column: 3, scope: !1582, inlinedAt: !1569)
!1584 = !DILocation(line: 701, column: 40, scope: !1585, inlinedAt: !1569)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !476, line: 699, column: 3)
!1586 = !DILocation(line: 701, column: 68, scope: !1585, inlinedAt: !1569)
!1587 = !DILocation(line: 0, scope: !1057, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 701, column: 52, scope: !1585, inlinedAt: !1569)
!1589 = !DILocation(line: 701, column: 11, scope: !1585, inlinedAt: !1569)
!1590 = !DILocation(line: 707, column: 15, scope: !1591, inlinedAt: !1569)
!1591 = distinct !DILexicalBlock(scope: !1585, file: !476, line: 707, column: 9)
!1592 = !DILocation(line: 707, column: 9, scope: !1585, inlinedAt: !1569)
!1593 = !DILocation(line: 710, column: 13, scope: !1594, inlinedAt: !1569)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !476, line: 710, column: 13)
!1595 = distinct !DILexicalBlock(scope: !1591, file: !476, line: 708, column: 7)
!1596 = !DILocation(line: 710, column: 19, scope: !1594, inlinedAt: !1569)
!1597 = !DILocation(line: 710, column: 13, scope: !1595, inlinedAt: !1569)
!1598 = !DILocation(line: 0, scope: !1585, inlinedAt: !1569)
!1599 = !DILocation(line: 698, column: 45, scope: !1581, inlinedAt: !1569)
!1600 = distinct !{!1600, !1583, !1601, !1080, !1081}
!1601 = !DILocation(line: 713, column: 3, scope: !1582, inlinedAt: !1569)
!1602 = !DILocation(line: 739, column: 48, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1498, file: !476, line: 739, column: 7)
!1604 = !DILocation(line: 739, column: 13, scope: !1603)
!1605 = !DILocation(line: 742, column: 1, scope: !1498)
!1606 = distinct !DISubprogram(name: "GetMatrixRows", scope: !476, file: !476, line: 766, type: !1491, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1607)
!1607 = !{!1608}
!1608 = !DILocalVariable(name: "matrix_info", arg: 1, scope: !1606, file: !476, line: 766, type: !1030)
!1609 = !DILocation(line: 0, scope: !1606)
!1610 = !DILocation(line: 770, column: 23, scope: !1606)
!1611 = !DILocation(line: 770, column: 3, scope: !1606)
!1612 = distinct !DISubprogram(name: "LeastSquaresAddTerms", scope: !476, file: !476, line: 844, type: !1613, scopeLine: 847, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1616)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null, !511, !511, !1615, !1615, !777, !777}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624}
!1617 = !DILocalVariable(name: "matrix", arg: 1, scope: !1612, file: !476, line: 844, type: !511)
!1618 = !DILocalVariable(name: "vectors", arg: 2, scope: !1612, file: !476, line: 844, type: !511)
!1619 = !DILocalVariable(name: "terms", arg: 3, scope: !1612, file: !476, line: 845, type: !1615)
!1620 = !DILocalVariable(name: "results", arg: 4, scope: !1612, file: !476, line: 845, type: !1615)
!1621 = !DILocalVariable(name: "rank", arg: 5, scope: !1612, file: !476, line: 845, type: !777)
!1622 = !DILocalVariable(name: "number_vectors", arg: 6, scope: !1612, file: !476, line: 846, type: !777)
!1623 = !DILocalVariable(name: "i", scope: !1612, file: !476, line: 849, type: !514)
!1624 = !DILocalVariable(name: "j", scope: !1612, file: !476, line: 850, type: !514)
!1625 = !DILocation(line: 0, scope: !1612)
!1626 = !DILocation(line: 852, column: 15, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !476, line: 852, column: 3)
!1628 = distinct !DILexicalBlock(scope: !1612, file: !476, line: 852, column: 3)
!1629 = !DILocation(line: 852, column: 3, scope: !1628)
!1630 = !DILocation(line: 856, column: 5, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !476, line: 856, column: 5)
!1632 = distinct !DILexicalBlock(scope: !1627, file: !476, line: 853, column: 3)
!1633 = !DILocation(line: 854, column: 5, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1632, file: !476, line: 854, column: 5)
!1635 = !DILocation(line: 857, column: 22, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1631, file: !476, line: 856, column: 5)
!1637 = !DILocation(line: 857, column: 33, scope: !1636)
!1638 = !DILocation(line: 857, column: 7, scope: !1636)
!1639 = !DILocation(line: 857, column: 20, scope: !1636)
!1640 = !DILocation(line: 856, column: 46, scope: !1636)
!1641 = !DILocation(line: 856, column: 17, scope: !1636)
!1642 = distinct !{!1642, !1630, !1643, !1080, !1081}
!1643 = !DILocation(line: 857, column: 40, scope: !1631)
!1644 = !DILocation(line: 855, column: 21, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1634, file: !476, line: 854, column: 5)
!1646 = !DILocation(line: 855, column: 30, scope: !1645)
!1647 = !DILocation(line: 855, column: 7, scope: !1645)
!1648 = !DILocation(line: 855, column: 19, scope: !1645)
!1649 = !DILocation(line: 854, column: 36, scope: !1645)
!1650 = !DILocation(line: 854, column: 17, scope: !1645)
!1651 = distinct !{!1651, !1633, !1652, !1080, !1081}
!1652 = !DILocation(line: 855, column: 37, scope: !1634)
!1653 = !DILocation(line: 852, column: 34, scope: !1627)
!1654 = distinct !{!1654, !1629, !1655, !1080, !1081}
!1655 = !DILocation(line: 858, column: 3, scope: !1628)
!1656 = !DILocation(line: 860, column: 1, scope: !1612)
!1657 = distinct !DISubprogram(name: "MatrixToImage", scope: !476, file: !476, line: 888, type: !1658, scopeLine: 890, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1660)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!524, !1030, !863}
!1660 = !{!1661, !1662, !1663, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1678, !1682, !1683}
!1661 = !DILocalVariable(name: "matrix_info", arg: 1, scope: !1657, file: !476, line: 888, type: !1030)
!1662 = !DILocalVariable(name: "exception", arg: 2, scope: !1657, file: !476, line: 889, type: !863)
!1663 = !DILocalVariable(name: "image_view", scope: !1657, file: !476, line: 892, type: !1664)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !451, line: 50, baseType: !1666)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !353, line: 160, flags: DIFlagFwdDecl)
!1667 = !DILocalVariable(name: "max_value", scope: !1657, file: !476, line: 895, type: !513)
!1668 = !DILocalVariable(name: "min_value", scope: !1657, file: !476, line: 896, type: !513)
!1669 = !DILocalVariable(name: "scale_factor", scope: !1657, file: !476, line: 897, type: !513)
!1670 = !DILocalVariable(name: "value", scope: !1657, file: !476, line: 898, type: !513)
!1671 = !DILocalVariable(name: "image", scope: !1657, file: !476, line: 901, type: !524)
!1672 = !DILocalVariable(name: "status", scope: !1657, file: !476, line: 904, type: !490)
!1673 = !DILocalVariable(name: "y", scope: !1657, file: !476, line: 907, type: !514)
!1674 = !DILocalVariable(name: "x", scope: !1675, file: !476, line: 924, type: !514)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !476, line: 922, column: 3)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !476, line: 921, column: 3)
!1677 = distinct !DILexicalBlock(scope: !1657, file: !476, line: 921, column: 3)
!1678 = !DILocalVariable(name: "value", scope: !1679, file: !476, line: 963, type: !513)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !476, line: 961, column: 3)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !476, line: 960, column: 3)
!1681 = distinct !DILexicalBlock(scope: !1657, file: !476, line: 960, column: 3)
!1682 = !DILocalVariable(name: "q", scope: !1679, file: !476, line: 966, type: !544)
!1683 = !DILocalVariable(name: "x", scope: !1679, file: !476, line: 969, type: !514)
!1684 = !DILocation(line: 0, scope: !1657)
!1685 = !DILocation(line: 894, column: 3, scope: !1657)
!1686 = !DILocation(line: 913, column: 20, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1657, file: !476, line: 913, column: 7)
!1688 = !DILocation(line: 913, column: 27, scope: !1687)
!1689 = !DILocation(line: 913, column: 7, scope: !1657)
!1690 = !DILocation(line: 918, column: 10, scope: !1657)
!1691 = !DILocation(line: 919, column: 13, scope: !1657)
!1692 = !DILocation(line: 921, column: 40, scope: !1676)
!1693 = !DILocation(line: 921, column: 15, scope: !1676)
!1694 = !DILocation(line: 921, column: 3, scope: !1677)
!1695 = !DILocation(line: 926, column: 42, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !476, line: 926, column: 5)
!1697 = distinct !DILexicalBlock(scope: !1675, file: !476, line: 926, column: 5)
!1698 = !DILocation(line: 926, column: 17, scope: !1696)
!1699 = !DILocation(line: 0, scope: !1675)
!1700 = !DILocation(line: 926, column: 5, scope: !1697)
!1701 = !DILocation(line: 731, column: 20, scope: !1541, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 928, column: 11, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !476, line: 928, column: 11)
!1704 = distinct !DILexicalBlock(scope: !1696, file: !476, line: 927, column: 5)
!1705 = !DILocation(line: 731, column: 25, scope: !1541, inlinedAt: !1702)
!1706 = !DILocation(line: 0, scope: !1498, inlinedAt: !1702)
!1707 = !DILocation(line: 0, scope: !1511, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 729, column: 24, scope: !1498, inlinedAt: !1702)
!1709 = !DILocation(line: 729, column: 50, scope: !1498, inlinedAt: !1702)
!1710 = !DILocation(line: 0, scope: !1528, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 730, column: 5, scope: !1498, inlinedAt: !1702)
!1712 = !DILocation(line: 729, column: 71, scope: !1498, inlinedAt: !1702)
!1713 = !DILocation(line: 733, column: 68, scope: !1545, inlinedAt: !1702)
!1714 = !DILocation(line: 733, column: 66, scope: !1545, inlinedAt: !1702)
!1715 = !DILocation(line: 733, column: 14, scope: !1545, inlinedAt: !1702)
!1716 = !DILocation(line: 930, column: 11, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1704, file: !476, line: 930, column: 11)
!1718 = !DILocation(line: 930, column: 17, scope: !1717)
!1719 = !DILocation(line: 930, column: 11, scope: !1704)
!1720 = !DILocation(line: 933, column: 19, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !476, line: 933, column: 13)
!1722 = !DILocation(line: 933, column: 13, scope: !1717)
!1723 = !DILocation(line: 934, column: 11, scope: !1721)
!1724 = !DILocation(line: 926, column: 52, scope: !1696)
!1725 = distinct !{!1725, !1700, !1726, !1080, !1081}
!1726 = !DILocation(line: 935, column: 5, scope: !1697)
!1727 = !DILocation(line: 729, column: 45, scope: !1498, inlinedAt: !1702)
!1728 = !DILocation(line: 674, column: 9, scope: !1523, inlinedAt: !1708)
!1729 = !DILocation(line: 674, column: 7, scope: !1511, inlinedAt: !1708)
!1730 = !DILocation(line: 731, column: 7, scope: !1498, inlinedAt: !1702)
!1731 = !DILocation(line: 733, column: 58, scope: !1545, inlinedAt: !1702)
!1732 = !DILocation(line: 734, column: 22, scope: !1545, inlinedAt: !1702)
!1733 = !DILocation(line: 928, column: 11, scope: !1704)
!1734 = !DILocation(line: 737, column: 55, scope: !1498, inlinedAt: !1702)
!1735 = !DILocation(line: 737, column: 41, scope: !1498, inlinedAt: !1702)
!1736 = !{!1737}
!1737 = distinct !{!1737, !1738, !"ReadMatrixElements: %matrix_info"}
!1738 = distinct !{!1738, !"ReadMatrixElements"}
!1739 = !DILocation(line: 737, column: 9, scope: !1498, inlinedAt: !1702)
!1740 = !DILocation(line: 0, scope: !1558, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 737, column: 9, scope: !1498, inlinedAt: !1702)
!1742 = !DILocation(line: 690, column: 34, scope: !1558, inlinedAt: !1741)
!1743 = !{!1744}
!1744 = distinct !{!1744, !1738, !"ReadMatrixElements: %buffer"}
!1745 = !DILocation(line: 690, column: 3, scope: !1558, inlinedAt: !1741)
!1746 = !{!1737, !1744}
!1747 = !DILocation(line: 691, column: 26, scope: !1576, inlinedAt: !1741)
!1748 = !DILocation(line: 691, column: 7, scope: !1576, inlinedAt: !1741)
!1749 = !DILocation(line: 691, column: 48, scope: !1576, inlinedAt: !1741)
!1750 = !DILocation(line: 691, column: 7, scope: !1558, inlinedAt: !1741)
!1751 = !DILocation(line: 698, column: 15, scope: !1581, inlinedAt: !1741)
!1752 = !DILocation(line: 698, column: 3, scope: !1582, inlinedAt: !1741)
!1753 = !DILocation(line: 701, column: 40, scope: !1585, inlinedAt: !1741)
!1754 = !DILocation(line: 701, column: 68, scope: !1585, inlinedAt: !1741)
!1755 = !DILocation(line: 0, scope: !1057, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 701, column: 52, scope: !1585, inlinedAt: !1741)
!1757 = !DILocation(line: 701, column: 11, scope: !1585, inlinedAt: !1741)
!1758 = !DILocation(line: 707, column: 15, scope: !1591, inlinedAt: !1741)
!1759 = !DILocation(line: 707, column: 9, scope: !1585, inlinedAt: !1741)
!1760 = !DILocation(line: 710, column: 13, scope: !1594, inlinedAt: !1741)
!1761 = !DILocation(line: 710, column: 19, scope: !1594, inlinedAt: !1741)
!1762 = !DILocation(line: 710, column: 13, scope: !1595, inlinedAt: !1741)
!1763 = !DILocation(line: 0, scope: !1585, inlinedAt: !1741)
!1764 = !DILocation(line: 698, column: 45, scope: !1581, inlinedAt: !1741)
!1765 = distinct !{!1765, !1752, !1766, !1080, !1081}
!1766 = !DILocation(line: 713, column: 3, scope: !1582, inlinedAt: !1741)
!1767 = !DILocation(line: 739, column: 48, scope: !1603, inlinedAt: !1702)
!1768 = !DILocation(line: 739, column: 13, scope: !1603, inlinedAt: !1702)
!1769 = !DILocation(line: 0, scope: !1676)
!1770 = distinct !{!1770, !1700, !1726, !1080, !1081, !1771}
!1771 = !{!"llvm.loop.unswitch.partial.disable"}
!1772 = !DILocation(line: 920, column: 12, scope: !1657)
!1773 = !DILocation(line: 919, column: 12, scope: !1657)
!1774 = !DILocation(line: 921, column: 47, scope: !1676)
!1775 = distinct !{!1775, !1694, !1776, !1080, !1081, !1771}
!1776 = !DILocation(line: 936, column: 3, scope: !1677)
!1777 = !DILocation(line: 937, column: 18, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1657, file: !476, line: 937, column: 7)
!1779 = !DILocation(line: 937, column: 26, scope: !1778)
!1780 = !DILocation(line: 940, column: 19, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1778, file: !476, line: 940, column: 9)
!1782 = !DILocation(line: 940, column: 9, scope: !1778)
!1783 = !DILocation(line: 942, column: 43, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1781, file: !476, line: 941, column: 7)
!1785 = !DILocation(line: 944, column: 7, scope: !1784)
!1786 = !DILocation(line: 946, column: 52, scope: !1781)
!1787 = !DILocation(line: 946, column: 41, scope: !1781)
!1788 = !DILocation(line: 0, scope: !1778)
!1789 = !DILocation(line: 950, column: 9, scope: !1657)
!1790 = !DILocation(line: 951, column: 31, scope: !1657)
!1791 = !DILocation(line: 951, column: 10, scope: !1657)
!1792 = !DILocation(line: 951, column: 17, scope: !1657)
!1793 = !{!1794, !884, i64 40}
!1794 = !{!"_Image", !882, i64 0, !882, i64 4, !882, i64 8, !884, i64 16, !882, i64 24, !882, i64 28, !882, i64 32, !884, i64 40, !884, i64 48, !884, i64 56, !884, i64 64, !887, i64 72, !1795, i64 80, !1795, i64 88, !1795, i64 96, !1219, i64 104, !1797, i64 112, !882, i64 208, !887, i64 216, !882, i64 224, !887, i64 232, !887, i64 240, !887, i64 248, !884, i64 256, !1219, i64 264, !1219, i64 272, !1799, i64 280, !1799, i64 312, !1799, i64 344, !1219, i64 376, !1219, i64 384, !1219, i64 392, !882, i64 400, !882, i64 404, !882, i64 408, !882, i64 412, !882, i64 416, !882, i64 420, !887, i64 424, !884, i64 432, !884, i64 440, !884, i64 448, !884, i64 456, !884, i64 464, !884, i64 472, !1800, i64 480, !1801, i64 504, !887, i64 568, !887, i64 576, !887, i64 584, !887, i64 592, !887, i64 600, !887, i64 608, !882, i64 616, !882, i64 4712, !882, i64 8808, !884, i64 12904, !884, i64 12912, !1803, i64 12920, !882, i64 12976, !884, i64 12984, !887, i64 12992, !1804, i64 13000, !1804, i64 13032, !887, i64 13064, !884, i64 13072, !884, i64 13080, !887, i64 13088, !887, i64 13096, !887, i64 13104, !882, i64 13112, !882, i64 13116, !1795, i64 13120, !887, i64 13128, !1799, i64 13136, !887, i64 13168, !887, i64 13176, !882, i64 13184, !882, i64 13188, !885, i64 13192, !882, i64 13200, !884, i64 13208, !884, i64 13216, !882, i64 13224, !884, i64 13232}
!1795 = !{!"_PixelPacket", !1796, i64 0, !1796, i64 2, !1796, i64 4, !1796, i64 6}
!1796 = !{!"short", !882, i64 0}
!1797 = !{!"_ChromaticityInfo", !1798, i64 0, !1798, i64 24, !1798, i64 48, !1798, i64 72}
!1798 = !{!"_PrimaryInfo", !1219, i64 0, !1219, i64 8, !1219, i64 16}
!1799 = !{!"_RectangleInfo", !884, i64 0, !884, i64 8, !884, i64 16, !884, i64 24}
!1800 = !{!"_ErrorInfo", !1219, i64 0, !1219, i64 8, !1219, i64 16}
!1801 = !{!"_TimerInfo", !1802, i64 0, !1802, i64 24, !882, i64 48, !884, i64 56}
!1802 = !{!"_Timer", !1219, i64 0, !1219, i64 8, !1219, i64 16}
!1803 = !{!"_ExceptionInfo", !882, i64 0, !886, i64 4, !887, i64 8, !887, i64 16, !887, i64 24, !882, i64 32, !887, i64 40, !884, i64 48}
!1804 = !{!"_ProfileInfo", !887, i64 0, !884, i64 8, !887, i64 16, !884, i64 24}
!1805 = !DILocation(line: 952, column: 28, scope: !1657)
!1806 = !DILocation(line: 952, column: 10, scope: !1657)
!1807 = !DILocation(line: 952, column: 14, scope: !1657)
!1808 = !{!1794, !884, i64 48}
!1809 = !DILocation(line: 953, column: 10, scope: !1657)
!1810 = !DILocation(line: 953, column: 20, scope: !1657)
!1811 = !{!1794, !882, i64 4}
!1812 = !DILocation(line: 955, column: 14, scope: !1657)
!1813 = !DILocation(line: 960, column: 34, scope: !1680)
!1814 = !DILocation(line: 960, column: 15, scope: !1680)
!1815 = !DILocation(line: 960, column: 3, scope: !1681)
!1816 = !DILocation(line: 992, column: 14, scope: !1657)
!1817 = !DILocation(line: 993, column: 7, scope: !1657)
!1818 = !DILocation(line: 962, column: 5, scope: !1679)
!1819 = !DILocation(line: 971, column: 16, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1679, file: !476, line: 971, column: 9)
!1821 = !DILocation(line: 971, column: 9, scope: !1679)
!1822 = !DILocation(line: 973, column: 59, scope: !1679)
!1823 = !DILocation(line: 973, column: 7, scope: !1679)
!1824 = !DILocation(line: 0, scope: !1679)
!1825 = !DILocation(line: 974, column: 11, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1679, file: !476, line: 974, column: 9)
!1827 = !DILocation(line: 974, column: 9, scope: !1679)
!1828 = !DILocation(line: 979, column: 36, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !476, line: 979, column: 5)
!1830 = distinct !DILexicalBlock(scope: !1679, file: !476, line: 979, column: 5)
!1831 = !DILocation(line: 979, column: 17, scope: !1829)
!1832 = !DILocation(line: 979, column: 5, scope: !1830)
!1833 = !DILocation(line: 731, column: 20, scope: !1541, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 981, column: 11, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !476, line: 981, column: 11)
!1836 = distinct !DILexicalBlock(scope: !1829, file: !476, line: 980, column: 5)
!1837 = !DILocation(line: 731, column: 25, scope: !1541, inlinedAt: !1834)
!1838 = !DILocation(line: 729, column: 45, scope: !1498, inlinedAt: !1834)
!1839 = !DILocation(line: 0, scope: !1498, inlinedAt: !1834)
!1840 = !DILocation(line: 0, scope: !1511, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 729, column: 24, scope: !1498, inlinedAt: !1834)
!1842 = !DILocation(line: 0, scope: !1528, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 730, column: 5, scope: !1498, inlinedAt: !1834)
!1844 = !DILocation(line: 665, column: 9, scope: !1537, inlinedAt: !1843)
!1845 = !DILocation(line: 665, column: 7, scope: !1528, inlinedAt: !1843)
!1846 = !DILocation(line: 729, column: 71, scope: !1498, inlinedAt: !1834)
!1847 = !DILocation(line: 733, column: 68, scope: !1545, inlinedAt: !1834)
!1848 = !DILocation(line: 733, column: 66, scope: !1545, inlinedAt: !1834)
!1849 = !DILocation(line: 733, column: 14, scope: !1545, inlinedAt: !1834)
!1850 = !DILocation(line: 983, column: 27, scope: !1836)
!1851 = !DILocation(line: 983, column: 32, scope: !1836)
!1852 = !DILocation(line: 983, column: 25, scope: !1836)
!1853 = !DILocation(line: 983, column: 12, scope: !1836)
!1854 = !DILocation(line: 984, column: 29, scope: !1836)
!1855 = !DILocalVariable(name: "value", arg: 1, scope: !1856, file: !247, line: 87, type: !1859)
!1856 = distinct !DISubprogram(name: "ClampToQuantum", scope: !247, file: !247, line: 87, type: !1857, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1860)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!549, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!1860 = !{!1855}
!1861 = !DILocation(line: 0, scope: !1856, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 984, column: 14, scope: !1836)
!1863 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !1862)
!1864 = distinct !DILexicalBlock(scope: !1856, file: !247, line: 92, column: 7)
!1865 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !1862)
!1866 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !1862)
!1867 = distinct !DILexicalBlock(scope: !1856, file: !247, line: 94, column: 7)
!1868 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !1862)
!1869 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !1862)
!1870 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !1862)
!1871 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !1862)
!1872 = !DILocation(line: 984, column: 10, scope: !1836)
!1873 = !DILocation(line: 984, column: 13, scope: !1836)
!1874 = !{!1795, !1796, i64 4}
!1875 = !DILocation(line: 985, column: 10, scope: !1836)
!1876 = !DILocation(line: 985, column: 15, scope: !1836)
!1877 = !{!1795, !1796, i64 2}
!1878 = !DILocation(line: 986, column: 14, scope: !1836)
!1879 = !{!1795, !1796, i64 0}
!1880 = !DILocation(line: 987, column: 8, scope: !1836)
!1881 = !DILocation(line: 979, column: 46, scope: !1829)
!1882 = distinct !{!1882, !1832, !1883, !1080, !1081}
!1883 = !DILocation(line: 988, column: 5, scope: !1830)
!1884 = !DILocation(line: 674, column: 9, scope: !1523, inlinedAt: !1841)
!1885 = !DILocation(line: 674, column: 7, scope: !1511, inlinedAt: !1841)
!1886 = !DILocation(line: 729, column: 64, scope: !1498, inlinedAt: !1834)
!1887 = !DILocation(line: 729, column: 50, scope: !1498, inlinedAt: !1834)
!1888 = !DILocation(line: 731, column: 7, scope: !1498, inlinedAt: !1834)
!1889 = !DILocation(line: 733, column: 58, scope: !1545, inlinedAt: !1834)
!1890 = !DILocation(line: 734, column: 22, scope: !1545, inlinedAt: !1834)
!1891 = !DILocation(line: 981, column: 11, scope: !1836)
!1892 = !DILocation(line: 737, column: 55, scope: !1498, inlinedAt: !1834)
!1893 = !DILocation(line: 737, column: 41, scope: !1498, inlinedAt: !1834)
!1894 = !{!1895}
!1895 = distinct !{!1895, !1896, !"ReadMatrixElements: %matrix_info"}
!1896 = distinct !{!1896, !"ReadMatrixElements"}
!1897 = !DILocation(line: 737, column: 9, scope: !1498, inlinedAt: !1834)
!1898 = !DILocation(line: 0, scope: !1558, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 737, column: 9, scope: !1498, inlinedAt: !1834)
!1900 = !DILocation(line: 690, column: 34, scope: !1558, inlinedAt: !1899)
!1901 = !{!1902}
!1902 = distinct !{!1902, !1896, !"ReadMatrixElements: %buffer"}
!1903 = !DILocation(line: 690, column: 3, scope: !1558, inlinedAt: !1899)
!1904 = !{!1895, !1902}
!1905 = !DILocation(line: 691, column: 26, scope: !1576, inlinedAt: !1899)
!1906 = !DILocation(line: 691, column: 7, scope: !1576, inlinedAt: !1899)
!1907 = !DILocation(line: 691, column: 48, scope: !1576, inlinedAt: !1899)
!1908 = !DILocation(line: 691, column: 7, scope: !1558, inlinedAt: !1899)
!1909 = !DILocation(line: 698, column: 15, scope: !1581, inlinedAt: !1899)
!1910 = !DILocation(line: 698, column: 3, scope: !1582, inlinedAt: !1899)
!1911 = !DILocation(line: 701, column: 40, scope: !1585, inlinedAt: !1899)
!1912 = !DILocation(line: 701, column: 68, scope: !1585, inlinedAt: !1899)
!1913 = !DILocation(line: 0, scope: !1057, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 701, column: 52, scope: !1585, inlinedAt: !1899)
!1915 = !DILocation(line: 701, column: 11, scope: !1585, inlinedAt: !1899)
!1916 = !DILocation(line: 707, column: 15, scope: !1591, inlinedAt: !1899)
!1917 = !DILocation(line: 707, column: 9, scope: !1585, inlinedAt: !1899)
!1918 = !DILocation(line: 710, column: 13, scope: !1594, inlinedAt: !1899)
!1919 = !DILocation(line: 710, column: 19, scope: !1594, inlinedAt: !1899)
!1920 = !DILocation(line: 710, column: 13, scope: !1595, inlinedAt: !1899)
!1921 = !DILocation(line: 0, scope: !1585, inlinedAt: !1899)
!1922 = !DILocation(line: 698, column: 45, scope: !1581, inlinedAt: !1899)
!1923 = distinct !{!1923, !1910, !1924, !1080, !1081}
!1924 = !DILocation(line: 713, column: 3, scope: !1582, inlinedAt: !1899)
!1925 = !DILocation(line: 739, column: 48, scope: !1603, inlinedAt: !1834)
!1926 = !DILocation(line: 739, column: 13, scope: !1603, inlinedAt: !1834)
!1927 = !DILocation(line: 988, column: 5, scope: !1836)
!1928 = distinct !{!1928, !1832, !1883, !1080, !1081, !1771}
!1929 = !DILocation(line: 989, column: 9, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1679, file: !476, line: 989, column: 9)
!1931 = !DILocation(line: 989, column: 60, scope: !1930)
!1932 = !DILocation(line: 989, column: 9, scope: !1679)
!1933 = !DILocation(line: 991, column: 3, scope: !1680)
!1934 = !DILocation(line: 960, column: 41, scope: !1680)
!1935 = distinct !{!1935, !1815, !1936, !1080, !1081}
!1936 = !DILocation(line: 991, column: 3, scope: !1681)
!1937 = !DILocation(line: 993, column: 14, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1657, file: !476, line: 993, column: 7)
!1939 = !DILocation(line: 994, column: 11, scope: !1938)
!1940 = !DILocation(line: 994, column: 5, scope: !1938)
!1941 = !DILocation(line: 996, column: 1, scope: !1657)
!1942 = !DISubprogram(name: "AcquireImage", scope: !177, file: !177, line: 506, type: !1943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!524, !1945}
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!1947 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !451, file: !451, line: 53, type: !1948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!1664, !773, !863}
!1950 = !DISubprogram(name: "QueueCacheViewAuthenticPixels", scope: !451, file: !451, line: 101, type: !1951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!544, !1664, !1501, !1501, !777, !777, !863}
!1953 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !451, file: !451, line: 89, type: !1954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!490, !1664, !863}
!1956 = !DISubprogram(name: "DestroyCacheView", scope: !451, file: !451, line: 57, type: !1957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!1664, !1664}
!1959 = !DISubprogram(name: "DestroyImage", scope: !177, file: !177, line: 510, type: !1960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!524, !524}
!1962 = distinct !DISubprogram(name: "NullMatrix", scope: !476, file: !476, line: 1020, type: !1963, scopeLine: 1021, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1965)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!490, !472}
!1965 = !{!1966, !1967, !1968, !1969, !1970}
!1966 = !DILocalVariable(name: "matrix_info", arg: 1, scope: !1962, file: !476, line: 1020, type: !472)
!1967 = !DILocalVariable(name: "x", scope: !1962, file: !476, line: 1023, type: !514)
!1968 = !DILocalVariable(name: "count", scope: !1962, file: !476, line: 1026, type: !514)
!1969 = !DILocalVariable(name: "y", scope: !1962, file: !476, line: 1027, type: !514)
!1970 = !DILocalVariable(name: "value", scope: !1962, file: !476, line: 1030, type: !523)
!1971 = !DILocation(line: 0, scope: !1962)
!1972 = !DILocation(line: 1029, column: 3, scope: !1962)
!1973 = !DILocation(line: 1034, column: 20, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1962, file: !476, line: 1034, column: 7)
!1975 = !DILocation(line: 1034, column: 25, scope: !1974)
!1976 = !DILocation(line: 1034, column: 7, scope: !1962)
!1977 = !DILocation(line: 1036, column: 45, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1974, file: !476, line: 1035, column: 5)
!1979 = !DILocation(line: 1037, column: 22, scope: !1978)
!1980 = !DILocation(line: 1036, column: 14, scope: !1978)
!1981 = !DILocation(line: 1038, column: 7, scope: !1978)
!1982 = !DILocation(line: 1040, column: 8, scope: !1962)
!1983 = !{!882, !882, i64 0}
!1984 = !DILocation(line: 1041, column: 29, scope: !1962)
!1985 = !DILocation(line: 1041, column: 10, scope: !1962)
!1986 = !DILocation(line: 1042, column: 40, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !476, line: 1042, column: 3)
!1988 = distinct !DILexicalBlock(scope: !1962, file: !476, line: 1042, column: 3)
!1989 = !DILocation(line: 1042, column: 15, scope: !1987)
!1990 = !DILocation(line: 1042, column: 3, scope: !1988)
!1991 = !DILocation(line: 1044, column: 42, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !476, line: 1044, column: 5)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !476, line: 1044, column: 5)
!1994 = distinct !DILexicalBlock(scope: !1987, file: !476, line: 1043, column: 3)
!1995 = !DILocation(line: 1044, column: 17, scope: !1992)
!1996 = !DILocation(line: 1044, column: 5, scope: !1993)
!1997 = !DILocation(line: 1046, column: 32, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1992, file: !476, line: 1045, column: 5)
!1999 = !DILocation(line: 1046, column: 13, scope: !1998)
!2000 = !DILocation(line: 1047, column: 17, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !476, line: 1047, column: 11)
!2002 = !DILocation(line: 1047, column: 11, scope: !1998)
!2003 = !DILocation(line: 1050, column: 36, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1994, file: !476, line: 1050, column: 9)
!2005 = !DILocation(line: 1044, column: 51, scope: !1992)
!2006 = distinct !{!2006, !1996, !2007, !1080, !1081}
!2007 = !DILocation(line: 1049, column: 5, scope: !1993)
!2008 = !DILocation(line: 0, scope: !1993)
!2009 = !DILocation(line: 1050, column: 11, scope: !2004)
!2010 = !DILocation(line: 1050, column: 9, scope: !1994)
!2011 = !DILocation(line: 1053, column: 37, scope: !1962)
!2012 = !DILocation(line: 1042, column: 47, scope: !1987)
!2013 = distinct !{!2013, !1990, !2014, !1080, !1081, !1771}
!2014 = !DILocation(line: 1052, column: 3, scope: !1988)
!2015 = !DILocation(line: 0, scope: !1988)
!2016 = !DILocation(line: 1053, column: 12, scope: !1962)
!2017 = !DILocation(line: 1053, column: 10, scope: !1962)
!2018 = !DILocation(line: 1053, column: 3, scope: !1962)
!2019 = !DILocation(line: 1054, column: 1, scope: !1962)
!2020 = !DISubprogram(name: "lseek", scope: !1250, file: !1250, line: 334, type: !2021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!805, !498, !805, !498}
!2023 = !DISubprogram(name: "write", scope: !1250, file: !1250, line: 366, type: !2024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!514, !498, !775, !481}
!2026 = distinct !DISubprogram(name: "RelinquishMagickMatrix", scope: !476, file: !476, line: 1083, type: !2027, scopeLine: 1085, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2029)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!511, !511, !777}
!2029 = !{!2030, !2031, !2032}
!2030 = !DILocalVariable(name: "matrix", arg: 1, scope: !2026, file: !476, line: 1083, type: !511)
!2031 = !DILocalVariable(name: "number_rows", arg: 2, scope: !2026, file: !476, line: 1084, type: !777)
!2032 = !DILocalVariable(name: "i", scope: !2026, file: !476, line: 1087, type: !514)
!2033 = !DILocation(line: 0, scope: !2026)
!2034 = !DILocation(line: 1089, column: 14, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2026, file: !476, line: 1089, column: 7)
!2036 = !DILocation(line: 1089, column: 7, scope: !2026)
!2037 = !DILocation(line: 1091, column: 15, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !476, line: 1091, column: 3)
!2039 = distinct !DILexicalBlock(scope: !2026, file: !476, line: 1091, column: 3)
!2040 = !DILocation(line: 1091, column: 3, scope: !2039)
!2041 = !DILocation(line: 1092, column: 50, scope: !2038)
!2042 = !DILocation(line: 1092, column: 27, scope: !2038)
!2043 = !DILocation(line: 1092, column: 15, scope: !2038)
!2044 = !DILocation(line: 1091, column: 41, scope: !2038)
!2045 = distinct !{!2045, !2040, !2046, !1080, !1081}
!2046 = !DILocation(line: 1092, column: 59, scope: !2039)
!2047 = !DILocation(line: 1093, column: 22, scope: !2026)
!2048 = !DILocation(line: 1094, column: 3, scope: !2026)
!2049 = !DILocation(line: 1095, column: 1, scope: !2026)
!2050 = distinct !DISubprogram(name: "SetMatrixElement", scope: !476, file: !476, line: 1127, type: !2051, scopeLine: 1129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!490, !1030, !1501, !1501, !775}
!2053 = !{!2054, !2055, !2056, !2057, !2058, !2059}
!2054 = !DILocalVariable(name: "matrix_info", arg: 1, scope: !2050, file: !476, line: 1127, type: !1030)
!2055 = !DILocalVariable(name: "x", arg: 2, scope: !2050, file: !476, line: 1128, type: !1501)
!2056 = !DILocalVariable(name: "y", arg: 3, scope: !2050, file: !476, line: 1128, type: !1501)
!2057 = !DILocalVariable(name: "value", arg: 4, scope: !2050, file: !476, line: 1128, type: !775)
!2058 = !DILocalVariable(name: "count", scope: !2050, file: !476, line: 1131, type: !520)
!2059 = !DILocalVariable(name: "i", scope: !2050, file: !476, line: 1132, type: !520)
!2060 = !DILocation(line: 0, scope: !2050)
!2061 = !DILocation(line: 1136, column: 39, scope: !2050)
!2062 = !DILocation(line: 1136, column: 25, scope: !2050)
!2063 = !DILocation(line: 1136, column: 46, scope: !2050)
!2064 = !DILocation(line: 1137, column: 10, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2050, file: !476, line: 1137, column: 7)
!2066 = !DILocation(line: 1137, column: 15, scope: !2065)
!2067 = !DILocation(line: 1138, column: 41, scope: !2065)
!2068 = !DILocation(line: 1138, column: 27, scope: !2065)
!2069 = !DILocation(line: 1138, column: 65, scope: !2065)
!2070 = !DILocation(line: 1138, column: 49, scope: !2065)
!2071 = !DILocation(line: 1137, column: 7, scope: !2050)
!2072 = !DILocation(line: 1140, column: 20, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2050, file: !476, line: 1140, column: 7)
!2074 = !DILocation(line: 1140, column: 25, scope: !2073)
!2075 = !DILocation(line: 1140, column: 7, scope: !2050)
!2076 = !DILocation(line: 1142, column: 52, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !476, line: 1141, column: 5)
!2078 = !DILocation(line: 1142, column: 60, scope: !2077)
!2079 = !DILocation(line: 1142, column: 14, scope: !2077)
!2080 = !DILocation(line: 1144, column: 7, scope: !2077)
!2081 = !{!2082}
!2082 = distinct !{!2082, !2083, !"WriteMatrixElements: %matrix_info"}
!2083 = distinct !{!2083, !"WriteMatrixElements"}
!2084 = !DILocation(line: 1146, column: 9, scope: !2050)
!2085 = !DILocation(line: 0, scope: !1026, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 1146, column: 9, scope: !2050)
!2087 = !DILocation(line: 147, column: 34, scope: !1026, inlinedAt: !2086)
!2088 = !{!2089}
!2089 = distinct !{!2089, !2083, !"WriteMatrixElements: %buffer"}
!2090 = !DILocation(line: 147, column: 3, scope: !1026, inlinedAt: !2086)
!2091 = !{!2082, !2089}
!2092 = !DILocation(line: 148, column: 26, scope: !1048, inlinedAt: !2086)
!2093 = !DILocation(line: 148, column: 7, scope: !1048, inlinedAt: !2086)
!2094 = !DILocation(line: 148, column: 48, scope: !1048, inlinedAt: !2086)
!2095 = !DILocation(line: 148, column: 7, scope: !1026, inlinedAt: !2086)
!2096 = !DILocation(line: 155, column: 15, scope: !1053, inlinedAt: !2086)
!2097 = !DILocation(line: 155, column: 3, scope: !1054, inlinedAt: !2086)
!2098 = !DILocation(line: 158, column: 41, scope: !1052, inlinedAt: !2086)
!2099 = !DILocation(line: 158, column: 69, scope: !1052, inlinedAt: !2086)
!2100 = !DILocation(line: 0, scope: !1057, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 158, column: 53, scope: !1052, inlinedAt: !2086)
!2102 = !DILocation(line: 158, column: 11, scope: !1052, inlinedAt: !2086)
!2103 = !DILocation(line: 164, column: 15, scope: !1066, inlinedAt: !2086)
!2104 = !DILocation(line: 164, column: 9, scope: !1052, inlinedAt: !2086)
!2105 = !DILocation(line: 167, column: 13, scope: !1069, inlinedAt: !2086)
!2106 = !DILocation(line: 167, column: 19, scope: !1069, inlinedAt: !2086)
!2107 = !DILocation(line: 167, column: 13, scope: !1070, inlinedAt: !2086)
!2108 = !DILocation(line: 0, scope: !1052, inlinedAt: !2086)
!2109 = !DILocation(line: 155, column: 45, scope: !1053, inlinedAt: !2086)
!2110 = distinct !{!2110, !2097, !2111, !1080, !1081}
!2111 = !DILocation(line: 170, column: 3, scope: !1054, inlinedAt: !2086)
!2112 = !DILocation(line: 1148, column: 48, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2050, file: !476, line: 1148, column: 7)
!2114 = !DILocation(line: 1148, column: 13, scope: !2113)
!2115 = !DILocation(line: 1151, column: 1, scope: !2050)
!2116 = !DISubprogram(name: "signal", scope: !2117, file: !2117, line: 88, type: !2118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!2117 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ccc98b488c777571beae1a47763d91")
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!2120, !498, !2120}
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2117, line: 72, baseType: !2121)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !498}
!2124 = distinct !DISubprogram(name: "MatrixSignalHandler", scope: !476, file: !476, line: 130, type: !2122, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2125)
!2125 = !{!2126, !2127, !2129}
!2126 = !DILocalVariable(name: "status", arg: 1, scope: !2124, file: !476, line: 130, type: !498)
!2127 = !DILocalVariable(name: "message", scope: !2128, file: !476, line: 132, type: !577)
!2128 = distinct !DILexicalBlock(scope: !2124, file: !476, line: 132, column: 3)
!2129 = !DILocalVariable(name: "exception", scope: !2128, file: !476, line: 132, type: !664)
!2130 = !DILocation(line: 0, scope: !2124)
!2131 = !DILocation(line: 132, column: 3, scope: !2128)
!2132 = !DILocation(line: 0, scope: !2128)
!2133 = !DISubprogram(name: "GetExceptionInfo", scope: !19, file: !19, line: 166, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null, !863}
!2136 = !DISubprogram(name: "GetExceptionMessage", scope: !19, file: !19, line: 137, type: !2137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!577, !2139}
!2139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!2140 = !DISubprogram(name: "CatchException", scope: !19, file: !19, line: 164, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!2141 = !DISubprogram(name: "DestroyExceptionInfo", scope: !19, file: !19, line: 148, type: !2142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!863, !863}
!2144 = !DISubprogram(name: "MagickCoreTerminus", scope: !2145, file: !2145, line: 147, type: !2146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!2145 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!2146 = !DISubroutineType(types: !2147)
!2147 = !{null}
!2148 = !DISubprogram(name: "read", scope: !1250, file: !1250, line: 360, type: !2149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1103)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!514, !498, !500, !481}
