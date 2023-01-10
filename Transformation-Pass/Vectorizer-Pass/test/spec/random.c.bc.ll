; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/random.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._RandomInfo = type { ptr, ptr, ptr, i64, [4 x i64], double, i64, i16, i16, ptr, i64, i64 }

@.str = private unnamed_addr constant [85 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/random.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@secret_key = internal unnamed_addr global i64 -1, align 8, !dbg !0
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@random_semaphore = internal global ptr null, align 8, !dbg !173
@gather_true_random = internal unnamed_addr global i32 0, align 4, !dbg !175
@environ = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"/dev/srandom\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"SequenceWrapError\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireRandomInfo() local_unnamed_addr #0 !dbg !185 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception25 = alloca %struct._ExceptionInfo, align 8
  %exception47 = alloca %struct._ExceptionInfo, align 8
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 112) #15, !dbg !223
  call void @llvm.dbg.value(metadata ptr %call, metadata !192, metadata !DIExpression()), !dbg !224
  %cmp = icmp eq ptr %call, null, !dbg !225
  br i1 %cmp, label %if.then, label %if.end, !dbg !226

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #16, !dbg !227
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !199, metadata !DIExpression()), !dbg !227
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #16, !dbg !227
  %call1 = tail call ptr @__errno_location() #17, !dbg !227
  %0 = load i32, ptr %call1, align 4, !dbg !227, !tbaa !228
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #16, !dbg !227
  call void @llvm.dbg.value(metadata ptr %call2, metadata !196, metadata !DIExpression()), !dbg !232
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 188, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call2) #16, !dbg !227
  %call4 = call ptr @DestroyString(ptr noundef %call2) #16, !dbg !227
  call void @llvm.dbg.value(metadata ptr %call4, metadata !196, metadata !DIExpression()), !dbg !232
  call void @CatchException(ptr noundef nonnull %exception) #16, !dbg !227
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #16, !dbg !227
  call void @MagickCoreTerminus() #16, !dbg !227
  call void @_exit(i32 noundef 1) #18, !dbg !227
  unreachable, !dbg !227

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 112) #16, !dbg !233
  %call7 = tail call ptr @AcquireSignatureInfo() #16, !dbg !234
  store ptr %call7, ptr %call, align 8, !dbg !235, !tbaa !236
  %call9 = tail call i32 @GetSignatureDigestsize(ptr noundef %call7) #16, !dbg !242
  %mul = shl i32 %call9, 1, !dbg !243
  %conv = zext i32 %mul to i64, !dbg !244
  %call10 = tail call ptr @AcquireStringInfo(i64 noundef %conv) #16, !dbg !245
  %nonce11 = getelementptr inbounds %struct._RandomInfo, ptr %call, i64 0, i32 1, !dbg !246
  store ptr %call10, ptr %nonce11, align 8, !dbg !247, !tbaa !248
  tail call void @ResetStringInfo(ptr noundef %call10) #16, !dbg !249
  %1 = load ptr, ptr %call, align 8, !dbg !250, !tbaa !236
  %call14 = tail call i32 @GetSignatureDigestsize(ptr noundef %1) #16, !dbg !251
  %conv15 = zext i32 %call14 to i64, !dbg !251
  %call16 = tail call ptr @AcquireStringInfo(i64 noundef %conv15) #16, !dbg !252
  %reservoir = getelementptr inbounds %struct._RandomInfo, ptr %call, i64 0, i32 2, !dbg !253
  store ptr %call16, ptr %reservoir, align 8, !dbg !254, !tbaa !255
  tail call void @ResetStringInfo(ptr noundef %call16) #16, !dbg !256
  %normalize = getelementptr inbounds %struct._RandomInfo, ptr %call, i64 0, i32 5, !dbg !257
  store double 0x3BF0000000000000, ptr %normalize, align 8, !dbg !258, !tbaa !259
  %2 = load i64, ptr @secret_key, align 8, !dbg !260, !tbaa !261
  %secret_key = getelementptr inbounds %struct._RandomInfo, ptr %call, i64 0, i32 6, !dbg !262
  store i64 %2, ptr %secret_key, align 8, !dbg !263, !tbaa !264
  %protocol_major = getelementptr inbounds %struct._RandomInfo, ptr %call, i64 0, i32 7, !dbg !265
  store i16 1, ptr %protocol_major, align 8, !dbg !266, !tbaa !267
  %protocol_minor = getelementptr inbounds %struct._RandomInfo, ptr %call, i64 0, i32 8, !dbg !268
  store i16 0, ptr %protocol_minor, align 2, !dbg !269, !tbaa !270
  %call18 = tail call ptr @AllocateSemaphoreInfo() #16, !dbg !271
  %semaphore = getelementptr inbounds %struct._RandomInfo, ptr %call, i64 0, i32 9, !dbg !272
  store ptr %call18, ptr %semaphore, align 8, !dbg !273, !tbaa !274
  %call19 = tail call i64 @time(ptr noundef null) #16, !dbg !275
  %timestamp = getelementptr inbounds %struct._RandomInfo, ptr %call, i64 0, i32 10, !dbg !276
  store i64 %call19, ptr %timestamp, align 8, !dbg !277, !tbaa !278
  %signature = getelementptr inbounds %struct._RandomInfo, ptr %call, i64 0, i32 11, !dbg !279
  store i64 2880220587, ptr %signature, align 8, !dbg !280, !tbaa !281
  %call20 = tail call fastcc ptr @GenerateEntropicChaos(ptr noundef nonnull %call), !dbg !282
  call void @llvm.dbg.value(metadata ptr %call20, metadata !195, metadata !DIExpression()), !dbg !224
  %cmp21 = icmp eq ptr %call20, null, !dbg !283
  br i1 %cmp21, label %if.then23, label %if.end31, !dbg !284

if.then23:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception25) #16, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %exception25, metadata !215, metadata !DIExpression()), !dbg !285
  call void @GetExceptionInfo(ptr noundef nonnull %exception25) #16, !dbg !285
  %call26 = tail call ptr @__errno_location() #17, !dbg !285
  %3 = load i32, ptr %call26, align 4, !dbg !285, !tbaa !228
  %call27 = call ptr @GetExceptionMessage(i32 noundef %3) #16, !dbg !285
  call void @llvm.dbg.value(metadata ptr %call27, metadata !212, metadata !DIExpression()), !dbg !286
  %call28 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 209, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call27) #16, !dbg !285
  %call29 = call ptr @DestroyString(ptr noundef %call27) #16, !dbg !285
  call void @llvm.dbg.value(metadata ptr %call29, metadata !212, metadata !DIExpression()), !dbg !286
  call void @CatchException(ptr noundef nonnull %exception25) #16, !dbg !285
  %call30 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception25) #16, !dbg !285
  call void @MagickCoreTerminus() #16, !dbg !285
  call void @_exit(i32 noundef 1) #18, !dbg !285
  unreachable, !dbg !285

if.end31:                                         ; preds = %if.end
  %4 = load ptr, ptr %call, align 8, !dbg !287, !tbaa !236
  tail call void @InitializeSignature(ptr noundef %4) #16, !dbg !288
  %5 = load ptr, ptr %call, align 8, !dbg !289, !tbaa !236
  tail call void @UpdateSignature(ptr noundef %5, ptr noundef nonnull %call20) #16, !dbg !290
  %6 = load ptr, ptr %call, align 8, !dbg !291, !tbaa !236
  tail call void @FinalizeSignature(ptr noundef %6) #16, !dbg !292
  %7 = load ptr, ptr %call, align 8, !dbg !293, !tbaa !236
  %call36 = tail call i32 @GetSignatureDigestsize(ptr noundef %7) #16, !dbg !294
  %add = add i32 %call36, 1, !dbg !295
  %div144 = lshr i32 %add, 1, !dbg !296
  %conv37 = zext i32 %div144 to i64, !dbg !297
  tail call void @SetStringInfoLength(ptr noundef nonnull %call20, i64 noundef %conv37) #16, !dbg !298
  %8 = load ptr, ptr %call, align 8, !dbg !299, !tbaa !236
  %call39 = tail call ptr @GetSignatureDigest(ptr noundef %8) #16, !dbg !300
  tail call void @SetStringInfo(ptr noundef nonnull %call20, ptr noundef %call39) #16, !dbg !301
  %9 = load ptr, ptr %nonce11, align 8, !dbg !302, !tbaa !248
  tail call void @SetStringInfo(ptr noundef %9, ptr noundef nonnull %call20) #16, !dbg !303
  %call41 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %call20) #16, !dbg !304
  call void @llvm.dbg.value(metadata ptr %call41, metadata !195, metadata !DIExpression()), !dbg !224
  %call42 = tail call fastcc ptr @GenerateEntropicChaos(ptr noundef nonnull %call), !dbg !305
  call void @llvm.dbg.value(metadata ptr %call42, metadata !193, metadata !DIExpression()), !dbg !224
  %cmp43 = icmp eq ptr %call42, null, !dbg !306
  br i1 %cmp43, label %if.then45, label %if.end53, !dbg !307

if.then45:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception47) #16, !dbg !308
  call void @llvm.dbg.declare(metadata ptr %exception47, metadata !219, metadata !DIExpression()), !dbg !308
  call void @GetExceptionInfo(ptr noundef nonnull %exception47) #16, !dbg !308
  %call48 = tail call ptr @__errno_location() #17, !dbg !308
  %10 = load i32, ptr %call48, align 4, !dbg !308, !tbaa !228
  %call49 = call ptr @GetExceptionMessage(i32 noundef %10) #16, !dbg !308
  call void @llvm.dbg.value(metadata ptr %call49, metadata !216, metadata !DIExpression()), !dbg !309
  %call50 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception47, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 223, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call49) #16, !dbg !308
  %call51 = call ptr @DestroyString(ptr noundef %call49) #16, !dbg !308
  call void @llvm.dbg.value(metadata ptr %call51, metadata !216, metadata !DIExpression()), !dbg !309
  call void @CatchException(ptr noundef nonnull %exception47) #16, !dbg !308
  %call52 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception47) #16, !dbg !308
  call void @MagickCoreTerminus() #16, !dbg !308
  call void @_exit(i32 noundef 1) #18, !dbg !308
  unreachable, !dbg !308

if.end53:                                         ; preds = %if.end31
  %11 = load ptr, ptr %call, align 8, !dbg !310, !tbaa !236
  tail call void @UpdateSignature(ptr noundef %11, ptr noundef nonnull %call42) #16, !dbg !311
  %12 = load ptr, ptr %call, align 8, !dbg !312, !tbaa !236
  tail call void @FinalizeSignature(ptr noundef %12) #16, !dbg !313
  %13 = load ptr, ptr %reservoir, align 8, !dbg !314, !tbaa !255
  %14 = load ptr, ptr %call, align 8, !dbg !315, !tbaa !236
  %call58 = tail call ptr @GetSignatureDigest(ptr noundef %14) #16, !dbg !316
  tail call void @SetStringInfo(ptr noundef %13, ptr noundef %call58) #16, !dbg !317
  %call59 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %call42) #16, !dbg !318
  call void @llvm.dbg.value(metadata ptr %call59, metadata !193, metadata !DIExpression()), !dbg !224
  %15 = load i64, ptr %secret_key, align 8, !dbg !319, !tbaa !264
  %cmp61 = icmp eq i64 %15, -1, !dbg !320
  br i1 %cmp61, label %if.then63, label %if.else, !dbg !321

if.then63:                                        ; preds = %if.end53
  call void @llvm.dbg.value(metadata ptr %call, metadata !322, metadata !DIExpression()) #16, !dbg !330
  call void @llvm.dbg.value(metadata i64 8, metadata !328, metadata !DIExpression()) #16, !dbg !330
  %call.i = tail call ptr @AcquireStringInfo(i64 noundef 8) #16, !dbg !333
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !329, metadata !DIExpression()) #16, !dbg !330
  %call1.i = tail call ptr @GetStringInfoDatum(ptr noundef %call.i) #16, !dbg !334
  tail call void @SetRandomKey(ptr noundef nonnull %call, i64 noundef 8, ptr noundef %call1.i) #16, !dbg !335
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !194, metadata !DIExpression()), !dbg !224
  %seed = getelementptr inbounds %struct._RandomInfo, ptr %call, i64 0, i32 4, !dbg !336
  %call65 = tail call ptr @GetStringInfoDatum(ptr noundef %call.i) #16, !dbg !337
  %call66 = tail call i64 @GetStringInfoLength(ptr noundef %call.i) #16, !dbg !338
  %call67 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %seed, ptr noundef %call65, i64 noundef %call66) #16, !dbg !339
  %call68 = tail call ptr @DestroyStringInfo(ptr noundef %call.i) #16, !dbg !340
  call void @llvm.dbg.value(metadata ptr %call68, metadata !194, metadata !DIExpression()), !dbg !224
  br label %if.end83, !dbg !341

if.else:                                          ; preds = %if.end53
  %call70 = tail call ptr @AcquireSignatureInfo() #16, !dbg !342
  call void @llvm.dbg.value(metadata ptr %call70, metadata !220, metadata !DIExpression()), !dbg !343
  %call71 = tail call ptr @AcquireStringInfo(i64 noundef 8) #16, !dbg !344
  call void @llvm.dbg.value(metadata ptr %call71, metadata !194, metadata !DIExpression()), !dbg !224
  tail call void @SetStringInfoDatum(ptr noundef %call71, ptr noundef nonnull %secret_key) #16, !dbg !345
  tail call void @UpdateSignature(ptr noundef %call70, ptr noundef %call71) #16, !dbg !346
  %call73 = tail call ptr @DestroyStringInfo(ptr noundef %call71) #16, !dbg !347
  call void @llvm.dbg.value(metadata ptr %call73, metadata !194, metadata !DIExpression()), !dbg !224
  tail call void @FinalizeSignature(ptr noundef %call70) #16, !dbg !348
  %call74 = tail call ptr @GetSignatureDigest(ptr noundef %call70) #16, !dbg !349
  call void @llvm.dbg.value(metadata ptr %call74, metadata !189, metadata !DIExpression()), !dbg !224
  %seed75 = getelementptr inbounds %struct._RandomInfo, ptr %call, i64 0, i32 4, !dbg !350
  %call77 = tail call ptr @GetStringInfoDatum(ptr noundef %call74) #16, !dbg !351
  %call78 = tail call i32 @GetSignatureDigestsize(ptr noundef %call70) #16, !dbg !352
  call void @llvm.dbg.value(metadata i32 %call78, metadata !353, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !359
  call void @llvm.dbg.value(metadata i64 8, metadata !358, metadata !DIExpression()) #16, !dbg !359
  %16 = tail call i32 @llvm.umin.i32(i32 %call78, i32 8), !dbg !359
  %17 = zext i32 %16 to i64, !dbg !359
  %call81 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %seed75, ptr noundef %call77, i64 noundef %17) #16, !dbg !361
  %call82 = tail call ptr @DestroySignatureInfo(ptr noundef %call70) #16, !dbg !362
  call void @llvm.dbg.value(metadata ptr %call82, metadata !220, metadata !DIExpression()), !dbg !343
  br label %if.end83

if.end83:                                         ; preds = %if.else, %if.then63
  %arrayidx = getelementptr inbounds %struct._RandomInfo, ptr %call, i64 0, i32 4, i64 1, !dbg !363
  store i64 1353184337, ptr %arrayidx, align 8, !dbg !364, !tbaa !261
  %arrayidx86 = getelementptr inbounds %struct._RandomInfo, ptr %call, i64 0, i32 4, i64 2, !dbg !365
  store i64 1399144830, ptr %arrayidx86, align 8, !dbg !366, !tbaa !261
  %arrayidx88 = getelementptr inbounds %struct._RandomInfo, ptr %call, i64 0, i32 4, i64 3, !dbg !367
  store i64 3282310938, ptr %arrayidx88, align 8, !dbg !368, !tbaa !261
  ret ptr %call, !dbg !369
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: allocsize(0)
declare !dbg !370 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

declare !dbg !375 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !379 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #5

declare !dbg !383 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !389 ptr @DestroyString(ptr noundef) local_unnamed_addr #4

declare !dbg !392 void @CatchException(ptr noundef) local_unnamed_addr #4

declare !dbg !393 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !396 void @MagickCoreTerminus() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

declare !dbg !400 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !403 ptr @AcquireSignatureInfo() local_unnamed_addr #4

declare !dbg !406 ptr @AcquireStringInfo(i64 noundef) local_unnamed_addr #4

declare !dbg !409 i32 @GetSignatureDigestsize(ptr noundef) local_unnamed_addr #4

declare !dbg !414 void @ResetStringInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !417 ptr @AllocateSemaphoreInfo() local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !420 i64 @time(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GenerateEntropicChaos(ptr nocapture noundef readonly %random_info) unnamed_addr #0 !dbg !424 {
entry:
  %tid = alloca i32, align 4
  %entropy = alloca ptr, align 8
  %nanoseconds = alloca i64, align 8
  %seconds = alloca i64, align 8
  %pid = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %random_info, metadata !428, metadata !DIExpression()), !dbg !448
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid) #16, !dbg !449
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %entropy) #16, !dbg !450
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nanoseconds) #16, !dbg !451
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %seconds) #16, !dbg !451
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pid) #16, !dbg !452
  %call = tail call ptr @AcquireStringInfo(i64 noundef 0) #16, !dbg !453
  call void @llvm.dbg.value(metadata ptr %call, metadata !436, metadata !DIExpression()), !dbg !448
  store ptr %call, ptr %entropy, align 8, !dbg !454, !tbaa !455
  %semaphore = getelementptr inbounds %struct._RandomInfo, ptr %random_info, i64 0, i32 9, !dbg !456
  %0 = load ptr, ptr %semaphore, align 8, !dbg !456, !tbaa !274
  tail call void @LockSemaphoreInfo(ptr noundef %0) #16, !dbg !457
  %call1 = tail call ptr @AcquireStringInfo(i64 noundef 8) #16, !dbg !458
  call void @llvm.dbg.value(metadata ptr %call1, metadata !435, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata ptr %entropy, metadata !436, metadata !DIExpression(DW_OP_deref)), !dbg !448
  call void @SetStringInfoDatum(ptr noundef %call1, ptr noundef nonnull %entropy) #16, !dbg !459
  %1 = load ptr, ptr %entropy, align 8, !dbg !460, !tbaa !455
  call void @llvm.dbg.value(metadata ptr %1, metadata !436, metadata !DIExpression()), !dbg !448
  call void @ConcatenateStringInfo(ptr noundef %1, ptr noundef %call1) #16, !dbg !461
  %2 = load ptr, ptr %entropy, align 8, !dbg !462, !tbaa !455
  call void @llvm.dbg.value(metadata ptr %2, metadata !436, metadata !DIExpression()), !dbg !448
  call void @SetStringInfoDatum(ptr noundef %call1, ptr noundef %2) #16, !dbg !463
  %3 = load ptr, ptr %entropy, align 8, !dbg !464, !tbaa !455
  call void @llvm.dbg.value(metadata ptr %3, metadata !436, metadata !DIExpression()), !dbg !448
  call void @ConcatenateStringInfo(ptr noundef %3, ptr noundef %call1) #16, !dbg !465
  %call2 = call i32 @getpid() #16, !dbg !466
  %conv = sext i32 %call2 to i64, !dbg !467
  call void @llvm.dbg.value(metadata i64 %conv, metadata !439, metadata !DIExpression()), !dbg !448
  store i64 %conv, ptr %pid, align 8, !dbg !468, !tbaa !261
  call void @SetStringInfoLength(ptr noundef %call1, i64 noundef 8) #16, !dbg !469
  call void @llvm.dbg.value(metadata ptr %pid, metadata !439, metadata !DIExpression(DW_OP_deref)), !dbg !448
  call void @SetStringInfoDatum(ptr noundef %call1, ptr noundef nonnull %pid) #16, !dbg !470
  %4 = load ptr, ptr %entropy, align 8, !dbg !471, !tbaa !455
  call void @llvm.dbg.value(metadata ptr %4, metadata !436, metadata !DIExpression()), !dbg !448
  call void @ConcatenateStringInfo(ptr noundef %4, ptr noundef %call1) #16, !dbg !472
  %call.i = call i32 @getpid() #16, !dbg !473
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !429, metadata !DIExpression()), !dbg !448
  store i32 %call.i, ptr %tid, align 4, !dbg !479, !tbaa !228
  call void @SetStringInfoLength(ptr noundef %call1, i64 noundef 4) #16, !dbg !480
  call void @llvm.dbg.value(metadata ptr %tid, metadata !429, metadata !DIExpression(DW_OP_deref)), !dbg !448
  call void @SetStringInfoDatum(ptr noundef %call1, ptr noundef nonnull %tid) #16, !dbg !481
  %5 = load ptr, ptr %entropy, align 8, !dbg !482, !tbaa !455
  call void @llvm.dbg.value(metadata ptr %5, metadata !436, metadata !DIExpression()), !dbg !448
  call void @ConcatenateStringInfo(ptr noundef %5, ptr noundef %call1) #16, !dbg !483
  %call4 = call i64 @time(ptr noundef null) #16, !dbg !484
  call void @llvm.dbg.value(metadata i64 %call4, metadata !438, metadata !DIExpression()), !dbg !448
  store i64 %call4, ptr %seconds, align 8, !dbg !485, !tbaa !261
  call void @llvm.dbg.value(metadata i64 0, metadata !437, metadata !DIExpression()), !dbg !448
  store i64 0, ptr %nanoseconds, align 8, !dbg !486, !tbaa !261
  call void @SetStringInfoLength(ptr noundef %call1, i64 noundef 8) #16, !dbg !487
  call void @llvm.dbg.value(metadata ptr %seconds, metadata !438, metadata !DIExpression(DW_OP_deref)), !dbg !448
  call void @SetStringInfoDatum(ptr noundef %call1, ptr noundef nonnull %seconds) #16, !dbg !488
  %6 = load ptr, ptr %entropy, align 8, !dbg !489, !tbaa !455
  call void @llvm.dbg.value(metadata ptr %6, metadata !436, metadata !DIExpression()), !dbg !448
  call void @ConcatenateStringInfo(ptr noundef %6, ptr noundef %call1) #16, !dbg !490
  call void @SetStringInfoLength(ptr noundef %call1, i64 noundef 8) #16, !dbg !491
  call void @llvm.dbg.value(metadata ptr %nanoseconds, metadata !437, metadata !DIExpression(DW_OP_deref)), !dbg !448
  call void @SetStringInfoDatum(ptr noundef %call1, ptr noundef nonnull %nanoseconds) #16, !dbg !492
  %7 = load ptr, ptr %entropy, align 8, !dbg !493, !tbaa !455
  call void @llvm.dbg.value(metadata ptr %7, metadata !436, metadata !DIExpression()), !dbg !448
  call void @ConcatenateStringInfo(ptr noundef %7, ptr noundef %call1) #16, !dbg !494
  call void @llvm.dbg.value(metadata i64 0, metadata !437, metadata !DIExpression()), !dbg !448
  store i64 0, ptr %nanoseconds, align 8, !dbg !495, !tbaa !261
  call void @SetStringInfoLength(ptr noundef %call1, i64 noundef 8) #16, !dbg !496
  call void @llvm.dbg.value(metadata ptr %nanoseconds, metadata !437, metadata !DIExpression(DW_OP_deref)), !dbg !448
  call void @SetStringInfoDatum(ptr noundef %call1, ptr noundef nonnull %nanoseconds) #16, !dbg !497
  %8 = load ptr, ptr %entropy, align 8, !dbg !498, !tbaa !455
  call void @llvm.dbg.value(metadata ptr %8, metadata !436, metadata !DIExpression()), !dbg !448
  call void @ConcatenateStringInfo(ptr noundef %8, ptr noundef %call1) #16, !dbg !499
  %9 = load ptr, ptr @environ, align 8, !dbg !500, !tbaa !455
  %cmp.not = icmp eq ptr %9, null, !dbg !501
  br i1 %cmp.not, label %if.end, label %for.cond.preheader, !dbg !502

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !445, metadata !DIExpression()), !dbg !503
  %10 = load ptr, ptr %9, align 8, !dbg !504, !tbaa !455
  %cmp6.not126 = icmp eq ptr %10, null, !dbg !507
  br i1 %cmp6.not126, label %if.end, label %for.body, !dbg !508

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %11 = phi ptr [ %16, %for.body ], [ %10, %for.cond.preheader ]
  %i.0127 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0127, metadata !445, metadata !DIExpression()), !dbg !503
  %call9 = call i64 @strlen(ptr noundef nonnull %11) #19, !dbg !509
  call void @SetStringInfoLength(ptr noundef %call1, i64 noundef %call9) #16, !dbg !511
  %12 = load ptr, ptr @environ, align 8, !dbg !512, !tbaa !455
  %arrayidx10 = getelementptr inbounds ptr, ptr %12, i64 %i.0127, !dbg !512
  %13 = load ptr, ptr %arrayidx10, align 8, !dbg !512, !tbaa !455
  call void @SetStringInfoDatum(ptr noundef %call1, ptr noundef %13) #16, !dbg !513
  %14 = load ptr, ptr %entropy, align 8, !dbg !514, !tbaa !455
  call void @llvm.dbg.value(metadata ptr %14, metadata !436, metadata !DIExpression()), !dbg !448
  call void @ConcatenateStringInfo(ptr noundef %14, ptr noundef %call1) #16, !dbg !515
  %inc = add nuw nsw i64 %i.0127, 1, !dbg !516
  call void @llvm.dbg.value(metadata i64 %inc, metadata !445, metadata !DIExpression()), !dbg !503
  %15 = load ptr, ptr @environ, align 8, !dbg !504, !tbaa !455
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 %inc, !dbg !504
  %16 = load ptr, ptr %arrayidx, align 8, !dbg !504, !tbaa !455
  %cmp6.not = icmp eq ptr %16, null, !dbg !507
  br i1 %cmp6.not, label %if.end, label %for.body, !dbg !508, !llvm.loop !517

if.end:                                           ; preds = %for.body, %for.cond.preheader, %entry
  %call11 = call ptr @AcquireString(ptr noundef nonnull @.str.5) #16, !dbg !521
  call void @llvm.dbg.value(metadata ptr %call11, metadata !440, metadata !DIExpression()), !dbg !522
  %call12 = call ptr @StringToStringInfo(ptr noundef %call11) #16, !dbg !523
  call void @llvm.dbg.value(metadata ptr %call12, metadata !444, metadata !DIExpression()), !dbg !522
  %call13 = call ptr @DestroyStringInfo(ptr noundef %call12) #16, !dbg !524
  call void @llvm.dbg.value(metadata ptr %call13, metadata !444, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata ptr %call11, metadata !525, metadata !DIExpression()) #16, !dbg !536
  call void @llvm.dbg.value(metadata i32 0, metadata !534, metadata !DIExpression()) #16, !dbg !536
  call void @llvm.dbg.value(metadata i32 0, metadata !535, metadata !DIExpression()) #16, !dbg !536
  %call.i99 = call i32 (ptr, i32, ...) @open(ptr noundef %call11, i32 noundef 0, i32 noundef 0) #16, !dbg !538
  call void @llvm.dbg.value(metadata i32 %call.i99, metadata !442, metadata !DIExpression()), !dbg !522
  %call15 = call ptr @DestroyString(ptr noundef %call11) #16, !dbg !539
  call void @llvm.dbg.value(metadata ptr %call15, metadata !440, metadata !DIExpression()), !dbg !522
  %cmp16.not = icmp eq i32 %call.i99, -1, !dbg !540
  br i1 %cmp16.not, label %if.end22, label %if.then18, !dbg !542

if.then18:                                        ; preds = %if.end
  call void @SetStringInfoLength(ptr noundef %call1, i64 noundef 64) #16, !dbg !543
  %call19 = call ptr @GetStringInfoDatum(ptr noundef %call1) #16, !dbg !545
  call void @llvm.dbg.value(metadata i32 %call.i99, metadata !546, metadata !DIExpression()) #16, !dbg !556
  call void @llvm.dbg.value(metadata ptr %call19, metadata !551, metadata !DIExpression()) #16, !dbg !556
  call void @llvm.dbg.value(metadata i64 64, metadata !552, metadata !DIExpression()) #16, !dbg !556
  call void @llvm.dbg.value(metadata i64 0, metadata !554, metadata !DIExpression()) #16, !dbg !556
  call void @llvm.dbg.value(metadata ptr %call19, metadata !553, metadata !DIExpression()) #16, !dbg !556
  br label %for.body.i, !dbg !558

for.body.i:                                       ; preds = %for.inc.i, %if.then18
  %offset.03.i = phi i64 [ 0, %if.then18 ], [ %offset.1.i, %for.inc.i ]
  %q.02.i = phi ptr [ %call19, %if.then18 ], [ %q.1.i, %for.inc.i ]
  %length.addr.01.i = phi i64 [ 64, %if.then18 ], [ %sub.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %offset.03.i, metadata !554, metadata !DIExpression()) #16, !dbg !556
  call void @llvm.dbg.value(metadata ptr %q.02.i, metadata !553, metadata !DIExpression()) #16, !dbg !556
  call void @llvm.dbg.value(metadata i64 %length.addr.01.i, metadata !552, metadata !DIExpression()) #16, !dbg !556
  %call.i100 = call i64 @read(i32 noundef %call.i99, ptr noundef %q.02.i, i64 noundef %length.addr.01.i) #16, !dbg !560
  call void @llvm.dbg.value(metadata i64 %call.i100, metadata !555, metadata !DIExpression()) #16, !dbg !556
  %cmp1.i = icmp slt i64 %call.i100, 1, !dbg !563
  br i1 %cmp1.i, label %if.then.i, label %if.end5.i, !dbg !565

if.then.i:                                        ; preds = %for.body.i
  call void @llvm.dbg.value(metadata i64 0, metadata !555, metadata !DIExpression()) #16, !dbg !556
  %call2.i = tail call ptr @__errno_location() #17, !dbg !566
  %17 = load i32, ptr %call2.i, align 4, !dbg !566, !tbaa !228
  %cmp3.i = icmp eq i32 %17, 4, !dbg !569
  br i1 %cmp3.i, label %for.inc.i, label %ReadRandom.exit, !dbg !570

if.end5.i:                                        ; preds = %for.body.i
  %add.ptr.i = getelementptr inbounds i8, ptr %q.02.i, i64 %call.i100, !dbg !571
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !553, metadata !DIExpression()) #16, !dbg !556
  %add.i = add nsw i64 %call.i100, %offset.03.i, !dbg !572
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !554, metadata !DIExpression()) #16, !dbg !556
  br label %for.inc.i, !dbg !573

for.inc.i:                                        ; preds = %if.end5.i, %if.then.i
  %q.1.i = phi ptr [ %q.02.i, %if.then.i ], [ %add.ptr.i, %if.end5.i ], !dbg !574
  %offset.1.i = phi i64 [ %offset.03.i, %if.then.i ], [ %add.i, %if.end5.i ], !dbg !556
  %count.0.i = phi i64 [ 0, %if.then.i ], [ %call.i100, %if.end5.i ], !dbg !575
  call void @llvm.dbg.value(metadata i64 %count.0.i, metadata !555, metadata !DIExpression()) #16, !dbg !556
  call void @llvm.dbg.value(metadata i64 %offset.1.i, metadata !554, metadata !DIExpression()) #16, !dbg !556
  call void @llvm.dbg.value(metadata ptr %q.1.i, metadata !553, metadata !DIExpression()) #16, !dbg !556
  %sub.i = sub i64 %length.addr.01.i, %count.0.i, !dbg !576
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !552, metadata !DIExpression()) #16, !dbg !556
  %cmp.not.i = icmp eq i64 %sub.i, 0, !dbg !577
  br i1 %cmp.not.i, label %ReadRandom.exit, label %for.body.i, !dbg !558, !llvm.loop !578

ReadRandom.exit:                                  ; preds = %if.then.i, %for.inc.i
  %retval.0.i = phi i64 [ -1, %if.then.i ], [ %offset.1.i, %for.inc.i ], !dbg !556
  call void @llvm.dbg.value(metadata i64 %retval.0.i, metadata !443, metadata !DIExpression()), !dbg !522
  %call21 = call i32 @close(i32 noundef %call.i99) #16, !dbg !580
  call void @SetStringInfoLength(ptr noundef %call1, i64 noundef %retval.0.i) #16, !dbg !581
  %18 = load ptr, ptr %entropy, align 8, !dbg !582, !tbaa !455
  call void @llvm.dbg.value(metadata ptr %18, metadata !436, metadata !DIExpression()), !dbg !448
  call void @ConcatenateStringInfo(ptr noundef %18, ptr noundef %call1) #16, !dbg !583
  br label %if.end22, !dbg !584

if.end22:                                         ; preds = %ReadRandom.exit, %if.end
  %19 = load i32, ptr @gather_true_random, align 4, !dbg !585, !tbaa !587
  %cmp23.not = icmp eq i32 %19, 0, !dbg !588
  br i1 %cmp23.not, label %if.end46, label %if.then25, !dbg !589

if.then25:                                        ; preds = %if.end22
  %call26 = call ptr @AcquireString(ptr noundef nonnull @.str.6) #16, !dbg !590
  call void @llvm.dbg.value(metadata ptr %call26, metadata !440, metadata !DIExpression()), !dbg !522
  %call27 = call ptr @StringToStringInfo(ptr noundef %call26) #16, !dbg !592
  call void @llvm.dbg.value(metadata ptr %call27, metadata !444, metadata !DIExpression()), !dbg !522
  %call28 = call ptr @DestroyStringInfo(ptr noundef %call27) #16, !dbg !593
  call void @llvm.dbg.value(metadata ptr %call28, metadata !444, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata ptr %call26, metadata !525, metadata !DIExpression()) #16, !dbg !594
  call void @llvm.dbg.value(metadata i32 0, metadata !534, metadata !DIExpression()) #16, !dbg !594
  call void @llvm.dbg.value(metadata i32 0, metadata !535, metadata !DIExpression()) #16, !dbg !594
  %call.i101 = call i32 (ptr, i32, ...) @open(ptr noundef %call26, i32 noundef 0, i32 noundef 0) #16, !dbg !596
  call void @llvm.dbg.value(metadata i32 %call.i101, metadata !442, metadata !DIExpression()), !dbg !522
  %call30 = call ptr @DestroyString(ptr noundef %call26) #16, !dbg !597
  call void @llvm.dbg.value(metadata ptr %call30, metadata !440, metadata !DIExpression()), !dbg !522
  %cmp31 = icmp eq i32 %call.i101, -1, !dbg !598
  br i1 %cmp31, label %if.end38, label %if.then41, !dbg !600

if.end38:                                         ; preds = %if.then25
  %call34 = call ptr @AcquireString(ptr noundef nonnull @.str.7) #16, !dbg !601
  call void @llvm.dbg.value(metadata ptr %call34, metadata !440, metadata !DIExpression()), !dbg !522
  %call35 = call ptr @StringToStringInfo(ptr noundef %call34) #16, !dbg !603
  call void @llvm.dbg.value(metadata ptr %call35, metadata !444, metadata !DIExpression()), !dbg !522
  %call36 = call ptr @DestroyStringInfo(ptr noundef %call35) #16, !dbg !604
  call void @llvm.dbg.value(metadata ptr %call36, metadata !444, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata ptr %call34, metadata !525, metadata !DIExpression()) #16, !dbg !605
  call void @llvm.dbg.value(metadata i32 0, metadata !534, metadata !DIExpression()) #16, !dbg !605
  call void @llvm.dbg.value(metadata i32 0, metadata !535, metadata !DIExpression()) #16, !dbg !605
  %call.i102 = call i32 (ptr, i32, ...) @open(ptr noundef %call34, i32 noundef 0, i32 noundef 0) #16, !dbg !607
  call void @llvm.dbg.value(metadata i32 %call.i102, metadata !442, metadata !DIExpression()), !dbg !522
  %cmp39.not = icmp eq i32 %call.i102, -1, !dbg !608
  br i1 %cmp39.not, label %if.end46, label %if.then41, !dbg !610

if.then41:                                        ; preds = %if.then25, %if.end38
  %file.0125 = phi i32 [ %call.i102, %if.end38 ], [ %call.i101, %if.then25 ]
  call void @SetStringInfoLength(ptr noundef %call1, i64 noundef 64) #16, !dbg !611
  %call42 = call ptr @GetStringInfoDatum(ptr noundef %call1) #16, !dbg !613
  call void @llvm.dbg.value(metadata i32 %call.i102, metadata !546, metadata !DIExpression()) #16, !dbg !614
  call void @llvm.dbg.value(metadata ptr %call42, metadata !551, metadata !DIExpression()) #16, !dbg !614
  call void @llvm.dbg.value(metadata i64 64, metadata !552, metadata !DIExpression()) #16, !dbg !614
  call void @llvm.dbg.value(metadata i64 0, metadata !554, metadata !DIExpression()) #16, !dbg !614
  call void @llvm.dbg.value(metadata ptr %call42, metadata !553, metadata !DIExpression()) #16, !dbg !614
  br label %for.body.i108, !dbg !616

for.body.i108:                                    ; preds = %for.inc.i120, %if.then41
  %offset.03.i103 = phi i64 [ 0, %if.then41 ], [ %offset.1.i116, %for.inc.i120 ]
  %q.02.i104 = phi ptr [ %call42, %if.then41 ], [ %q.1.i115, %for.inc.i120 ]
  %length.addr.01.i105 = phi i64 [ 64, %if.then41 ], [ %sub.i118, %for.inc.i120 ]
  call void @llvm.dbg.value(metadata i64 %offset.03.i103, metadata !554, metadata !DIExpression()) #16, !dbg !614
  call void @llvm.dbg.value(metadata ptr %q.02.i104, metadata !553, metadata !DIExpression()) #16, !dbg !614
  call void @llvm.dbg.value(metadata i64 %length.addr.01.i105, metadata !552, metadata !DIExpression()) #16, !dbg !614
  %call.i106 = call i64 @read(i32 noundef %file.0125, ptr noundef %q.02.i104, i64 noundef %length.addr.01.i105) #16, !dbg !617
  call void @llvm.dbg.value(metadata i64 %call.i106, metadata !555, metadata !DIExpression()) #16, !dbg !614
  %cmp1.i107 = icmp slt i64 %call.i106, 1, !dbg !618
  br i1 %cmp1.i107, label %if.then.i111, label %if.end5.i114, !dbg !619

if.then.i111:                                     ; preds = %for.body.i108
  call void @llvm.dbg.value(metadata i64 0, metadata !555, metadata !DIExpression()) #16, !dbg !614
  %call2.i109 = tail call ptr @__errno_location() #17, !dbg !620
  %20 = load i32, ptr %call2.i109, align 4, !dbg !620, !tbaa !228
  %cmp3.i110 = icmp eq i32 %20, 4, !dbg !621
  br i1 %cmp3.i110, label %for.inc.i120, label %ReadRandom.exit122, !dbg !622

if.end5.i114:                                     ; preds = %for.body.i108
  %add.ptr.i112 = getelementptr inbounds i8, ptr %q.02.i104, i64 %call.i106, !dbg !623
  call void @llvm.dbg.value(metadata ptr %add.ptr.i112, metadata !553, metadata !DIExpression()) #16, !dbg !614
  %add.i113 = add nsw i64 %call.i106, %offset.03.i103, !dbg !624
  call void @llvm.dbg.value(metadata i64 %add.i113, metadata !554, metadata !DIExpression()) #16, !dbg !614
  br label %for.inc.i120, !dbg !625

for.inc.i120:                                     ; preds = %if.end5.i114, %if.then.i111
  %q.1.i115 = phi ptr [ %q.02.i104, %if.then.i111 ], [ %add.ptr.i112, %if.end5.i114 ], !dbg !626
  %offset.1.i116 = phi i64 [ %offset.03.i103, %if.then.i111 ], [ %add.i113, %if.end5.i114 ], !dbg !614
  %count.0.i117 = phi i64 [ 0, %if.then.i111 ], [ %call.i106, %if.end5.i114 ], !dbg !627
  call void @llvm.dbg.value(metadata i64 %count.0.i117, metadata !555, metadata !DIExpression()) #16, !dbg !614
  call void @llvm.dbg.value(metadata i64 %offset.1.i116, metadata !554, metadata !DIExpression()) #16, !dbg !614
  call void @llvm.dbg.value(metadata ptr %q.1.i115, metadata !553, metadata !DIExpression()) #16, !dbg !614
  %sub.i118 = sub i64 %length.addr.01.i105, %count.0.i117, !dbg !628
  call void @llvm.dbg.value(metadata i64 %sub.i118, metadata !552, metadata !DIExpression()) #16, !dbg !614
  %cmp.not.i119 = icmp eq i64 %sub.i118, 0, !dbg !629
  br i1 %cmp.not.i119, label %ReadRandom.exit122, label %for.body.i108, !dbg !616, !llvm.loop !630

ReadRandom.exit122:                               ; preds = %if.then.i111, %for.inc.i120
  %retval.0.i121 = phi i64 [ -1, %if.then.i111 ], [ %offset.1.i116, %for.inc.i120 ], !dbg !614
  call void @llvm.dbg.value(metadata i64 %retval.0.i121, metadata !443, metadata !DIExpression()), !dbg !522
  %call44 = call i32 @close(i32 noundef %file.0125) #16, !dbg !632
  call void @SetStringInfoLength(ptr noundef %call1, i64 noundef %retval.0.i121) #16, !dbg !633
  %21 = load ptr, ptr %entropy, align 8, !dbg !634, !tbaa !455
  call void @llvm.dbg.value(metadata ptr %21, metadata !436, metadata !DIExpression()), !dbg !448
  call void @ConcatenateStringInfo(ptr noundef %21, ptr noundef %call1) #16, !dbg !635
  br label %if.end46, !dbg !636

if.end46:                                         ; preds = %if.end38, %ReadRandom.exit122, %if.end22
  %call47 = call ptr @DestroyStringInfo(ptr noundef %call1) #16, !dbg !637
  call void @llvm.dbg.value(metadata ptr %call47, metadata !435, metadata !DIExpression()), !dbg !448
  %22 = load ptr, ptr %semaphore, align 8, !dbg !638, !tbaa !274
  call void @UnlockSemaphoreInfo(ptr noundef %22) #16, !dbg !639
  %23 = load ptr, ptr %entropy, align 8, !dbg !640, !tbaa !455
  call void @llvm.dbg.value(metadata ptr %23, metadata !436, metadata !DIExpression()), !dbg !448
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pid) #16, !dbg !641
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %seconds) #16, !dbg !641
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nanoseconds) #16, !dbg !641
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entropy) #16, !dbg !641
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid) #16, !dbg !641
  ret ptr %23, !dbg !642
}

declare !dbg !643 void @InitializeSignature(ptr noundef) local_unnamed_addr #4

declare !dbg !646 void @UpdateSignature(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !649 void @FinalizeSignature(ptr noundef) local_unnamed_addr #4

declare !dbg !650 void @SetStringInfoLength(ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !653 void @SetStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !656 ptr @GetSignatureDigest(ptr noundef) local_unnamed_addr #4

declare !dbg !659 ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @GetRandomKey(ptr nocapture noundef %random_info, i64 noundef %length) local_unnamed_addr #0 !dbg !323 {
entry:
  call void @llvm.dbg.value(metadata ptr %random_info, metadata !322, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 %length, metadata !328, metadata !DIExpression()), !dbg !662
  %call = tail call ptr @AcquireStringInfo(i64 noundef %length) #16, !dbg !663
  call void @llvm.dbg.value(metadata ptr %call, metadata !329, metadata !DIExpression()), !dbg !662
  %call1 = tail call ptr @GetStringInfoDatum(ptr noundef %call) #16, !dbg !664
  tail call void @SetRandomKey(ptr noundef %random_info, i64 noundef %length, ptr noundef %call1), !dbg !665
  ret ptr %call, !dbg !666
}

declare !dbg !667 ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !672 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #4

declare !dbg !675 i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #4

declare !dbg !678 void @SetStringInfoDatum(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !683 ptr @DestroySignatureInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyRandomInfo(ptr noundef %random_info) local_unnamed_addr #0 !dbg !686 {
entry:
  call void @llvm.dbg.value(metadata ptr %random_info, metadata !690, metadata !DIExpression()), !dbg !691
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 288, ptr noundef nonnull @.str.4) #16, !dbg !692
  %semaphore = getelementptr inbounds %struct._RandomInfo, ptr %random_info, i64 0, i32 9, !dbg !693
  %0 = load ptr, ptr %semaphore, align 8, !dbg !693, !tbaa !274
  tail call void @LockSemaphoreInfo(ptr noundef %0) #16, !dbg !694
  %reservoir = getelementptr inbounds %struct._RandomInfo, ptr %random_info, i64 0, i32 2, !dbg !695
  %1 = load ptr, ptr %reservoir, align 8, !dbg !695, !tbaa !255
  %cmp.not = icmp eq ptr %1, null, !dbg !697
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !698

if.then:                                          ; preds = %entry
  %call2 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %1) #16, !dbg !699
  store ptr %call2, ptr %reservoir, align 8, !dbg !700, !tbaa !255
  br label %if.end, !dbg !701

if.end:                                           ; preds = %if.then, %entry
  %nonce = getelementptr inbounds %struct._RandomInfo, ptr %random_info, i64 0, i32 1, !dbg !702
  %2 = load ptr, ptr %nonce, align 8, !dbg !702, !tbaa !248
  %cmp4.not = icmp eq ptr %2, null, !dbg !704
  br i1 %cmp4.not, label %if.end9, label %if.then5, !dbg !705

if.then5:                                         ; preds = %if.end
  %call7 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %2) #16, !dbg !706
  store ptr %call7, ptr %nonce, align 8, !dbg !707, !tbaa !248
  br label %if.end9, !dbg !708

if.end9:                                          ; preds = %if.then5, %if.end
  %3 = load ptr, ptr %random_info, align 8, !dbg !709, !tbaa !236
  %cmp10.not = icmp eq ptr %3, null, !dbg !711
  br i1 %cmp10.not, label %if.end15, label %if.then11, !dbg !712

if.then11:                                        ; preds = %if.end9
  %call13 = tail call ptr @DestroySignatureInfo(ptr noundef nonnull %3) #16, !dbg !713
  store ptr %call13, ptr %random_info, align 8, !dbg !714, !tbaa !236
  br label %if.end15, !dbg !715

if.end15:                                         ; preds = %if.then11, %if.end9
  %seed = getelementptr inbounds %struct._RandomInfo, ptr %random_info, i64 0, i32 4, !dbg !716
  %call16 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %seed, i32 noundef 0, i64 noundef 8) #16, !dbg !717
  %signature = getelementptr inbounds %struct._RandomInfo, ptr %random_info, i64 0, i32 11, !dbg !718
  store i64 -2880220588, ptr %signature, align 8, !dbg !719, !tbaa !281
  %4 = load ptr, ptr %semaphore, align 8, !dbg !720, !tbaa !274
  tail call void @UnlockSemaphoreInfo(ptr noundef %4) #16, !dbg !721
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %semaphore) #16, !dbg !722
  %call19 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %random_info) #16, !dbg !723
  call void @llvm.dbg.value(metadata ptr %call19, metadata !690, metadata !DIExpression()), !dbg !691
  ret ptr %call19, !dbg !724
}

declare !dbg !725 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !730 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !733 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !734 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !738 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local double @GetPseudoRandomValue(ptr nocapture noundef %random_info) local_unnamed_addr #8 !dbg !741 {
entry:
  call void @llvm.dbg.value(metadata ptr %random_info, metadata !745, metadata !DIExpression()), !dbg !749
  %seed1 = getelementptr inbounds %struct._RandomInfo, ptr %random_info, i64 0, i32 4, !dbg !750
  call void @llvm.dbg.value(metadata ptr %seed1, metadata !746, metadata !DIExpression()), !dbg !749
  %arrayidx = getelementptr inbounds i64, ptr %seed1, i64 1
  %arrayidx3 = getelementptr inbounds i64, ptr %seed1, i64 2
  %arrayidx5 = getelementptr inbounds i64, ptr %seed1, i64 3
  %arrayidx.promoted = load i64, ptr %arrayidx, align 8, !tbaa !261
  %arrayidx3.promoted = load i64, ptr %arrayidx3, align 8, !tbaa !261
  %arrayidx5.promoted = load i64, ptr %arrayidx5, align 8, !tbaa !261
  %seed1.promoted = load i64, ptr %seed1, align 8, !tbaa !261
  br label %do.body, !dbg !751

do.body:                                          ; preds = %do.body, %entry
  %xor1434 = phi i64 [ -1, %do.body ], [ %seed1.promoted, %entry ], !dbg !752
  %0 = phi i64 [ %xor1434, %do.body ], [ %arrayidx5.promoted, %entry ], !dbg !752
  %1 = phi i64 [ %0, %do.body ], [ %arrayidx3.promoted, %entry ], !dbg !752
  %2 = phi i64 [ %1, %do.body ], [ %arrayidx.promoted, %entry ], !dbg !754
  %shl = shl i64 %2, 11, !dbg !752
  %xor = xor i64 %shl, %2, !dbg !755
  call void @llvm.dbg.value(metadata i64 %xor, metadata !748, metadata !DIExpression()), !dbg !749
  %shr = lshr i64 %xor1434, 19, !dbg !756
  %shr12 = lshr i64 %xor, 8, !dbg !757
  %xor11 = xor i64 %shr12, %xor, !dbg !758
  %xor13 = xor i64 %xor11, %xor1434, !dbg !759
  %xor14 = xor i64 %xor13, %shr, !dbg !760
  %cmp = icmp eq i64 %xor14, -1, !dbg !761
  br i1 %cmp, label %do.body, label %do.end, !dbg !762, !llvm.loop !763

do.end:                                           ; preds = %do.body
  store i64 %1, ptr %arrayidx, align 8, !dbg !765, !tbaa !261
  store i64 %0, ptr %arrayidx3, align 8, !dbg !765, !tbaa !261
  store i64 %xor1434, ptr %arrayidx5, align 8, !dbg !765, !tbaa !261
  store i64 %xor14, ptr %seed1, align 8, !dbg !765, !tbaa !261
  %normalize = getelementptr inbounds %struct._RandomInfo, ptr %random_info, i64 0, i32 5, !dbg !766
  %3 = load double, ptr %normalize, align 8, !dbg !766, !tbaa !259
  %conv = uitofp i64 %xor14 to double, !dbg !767
  %mul = fmul double %3, %conv, !dbg !768
  ret double %mul, !dbg !769
}

; Function Attrs: nounwind uwtable
define dso_local void @SetRandomKey(ptr nocapture noundef %random_info, i64 noundef %length, ptr noundef %key) local_unnamed_addr #0 !dbg !770 {
entry:
  call void @llvm.dbg.value(metadata ptr %random_info, metadata !774, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 %length, metadata !775, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata ptr %key, metadata !776, metadata !DIExpression()), !dbg !781
  %cmp = icmp eq i64 %length, 0, !dbg !782
  br i1 %cmp, label %cleanup, label %if.end, !dbg !784

if.end:                                           ; preds = %entry
  %semaphore = getelementptr inbounds %struct._RandomInfo, ptr %random_info, i64 0, i32 9, !dbg !785
  %0 = load ptr, ptr %semaphore, align 8, !dbg !785, !tbaa !274
  tail call void @LockSemaphoreInfo(ptr noundef %0) #16, !dbg !786
  %1 = load ptr, ptr %random_info, align 8, !dbg !787, !tbaa !236
  call void @llvm.dbg.value(metadata ptr %1, metadata !779, metadata !DIExpression()), !dbg !781
  %reservoir = getelementptr inbounds %struct._RandomInfo, ptr %random_info, i64 0, i32 2, !dbg !788
  %2 = load ptr, ptr %reservoir, align 8, !dbg !788, !tbaa !255
  %call = tail call ptr @GetStringInfoDatum(ptr noundef %2) #16, !dbg !789
  call void @llvm.dbg.value(metadata ptr %call, metadata !780, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 %length, metadata !777, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata ptr %key, metadata !778, metadata !DIExpression()), !dbg !781
  %i3 = getelementptr inbounds %struct._RandomInfo, ptr %random_info, i64 0, i32 3, !dbg !790
  call void @llvm.dbg.value(metadata i64 %length, metadata !777, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata ptr %key, metadata !778, metadata !DIExpression()), !dbg !781
  br label %land.rhs, !dbg !793

land.rhs:                                         ; preds = %if.end, %for.inc
  %i.092 = phi i64 [ %length, %if.end ], [ %dec, %for.inc ]
  %p.091 = phi ptr [ %key, %if.end ], [ %incdec.ptr, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.092, metadata !777, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata ptr %p.091, metadata !778, metadata !DIExpression()), !dbg !781
  %3 = load i64, ptr %i3, align 8, !dbg !790, !tbaa !794
  %cmp4.not = icmp eq i64 %3, 0, !dbg !795
  br i1 %cmp4.not, label %for.end, label %for.body, !dbg !796

for.body:                                         ; preds = %land.rhs
  %arrayidx = getelementptr inbounds i8, ptr %call, i64 %3, !dbg !797
  %4 = load i8, ptr %arrayidx, align 1, !dbg !797, !tbaa !587
  %incdec.ptr = getelementptr inbounds i8, ptr %p.091, i64 1, !dbg !799
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !778, metadata !DIExpression()), !dbg !781
  store i8 %4, ptr %p.091, align 1, !dbg !800, !tbaa !587
  %5 = load i64, ptr %i3, align 8, !dbg !801, !tbaa !794
  %inc = add i64 %5, 1, !dbg !801
  store i64 %inc, ptr %i3, align 8, !dbg !801, !tbaa !794
  %call8 = tail call i32 @GetSignatureDigestsize(ptr noundef %1) #16, !dbg !802
  %conv = zext i32 %call8 to i64, !dbg !802
  %cmp9 = icmp eq i64 %inc, %conv, !dbg !804
  br i1 %cmp9, label %if.then11, label %for.inc, !dbg !805

if.then11:                                        ; preds = %for.body
  store i64 0, ptr %i3, align 8, !dbg !806, !tbaa !794
  br label %for.inc, !dbg !807

for.inc:                                          ; preds = %for.body, %if.then11
  %dec = add i64 %i.092, -1, !dbg !808
  call void @llvm.dbg.value(metadata i64 %dec, metadata !777, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !778, metadata !DIExpression()), !dbg !781
  %cmp2.not = icmp eq i64 %dec, 0, !dbg !809
  br i1 %cmp2.not, label %for.end, label %land.rhs, !dbg !793, !llvm.loop !810

for.end:                                          ; preds = %land.rhs, %for.inc
  %p.0.lcssa = phi ptr [ %incdec.ptr, %for.inc ], [ %p.091, %land.rhs ], !dbg !812
  %i.0.lcssa = phi i64 [ 0, %for.inc ], [ %i.092, %land.rhs ], !dbg !781
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa, metadata !777, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata ptr %p.0.lcssa, metadata !778, metadata !DIExpression()), !dbg !781
  %call1496 = tail call i32 @GetSignatureDigestsize(ptr noundef %1) #16, !dbg !813
  %conv1597 = zext i32 %call1496 to i64, !dbg !813
  %cmp16.not98 = icmp ult i64 %i.0.lcssa, %conv1597, !dbg !814
  br i1 %cmp16.not98, label %while.end, label %while.body.lr.ph, !dbg !815

while.body.lr.ph:                                 ; preds = %for.end
  %nonce = getelementptr inbounds %struct._RandomInfo, ptr %random_info, i64 0, i32 1
  br label %while.body, !dbg !815

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %i.1100 = phi i64 [ %i.0.lcssa, %while.body.lr.ph ], [ %sub, %while.body ]
  %p.199 = phi ptr [ %p.0.lcssa, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  call void @llvm.dbg.value(metadata i64 %i.1100, metadata !777, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata ptr %p.199, metadata !778, metadata !DIExpression()), !dbg !781
  tail call void @InitializeSignature(ptr noundef %1) #16, !dbg !816
  %6 = load ptr, ptr %nonce, align 8, !dbg !818, !tbaa !248
  tail call void @UpdateSignature(ptr noundef %1, ptr noundef %6) #16, !dbg !819
  tail call void @FinalizeSignature(ptr noundef %1) #16, !dbg !820
  %7 = load ptr, ptr %nonce, align 8, !dbg !821, !tbaa !248
  tail call fastcc void @IncrementRandomNonce(ptr noundef %7), !dbg !822
  %call19 = tail call ptr @GetSignatureDigest(ptr noundef %1) #16, !dbg !823
  %call20 = tail call ptr @GetStringInfoDatum(ptr noundef %call19) #16, !dbg !824
  %call21 = tail call i32 @GetSignatureDigestsize(ptr noundef %1) #16, !dbg !825
  %conv22 = zext i32 %call21 to i64, !dbg !825
  %call23 = tail call ptr @CopyMagickMemory(ptr noundef %p.199, ptr noundef %call20, i64 noundef %conv22) #16, !dbg !826
  %call24 = tail call i32 @GetSignatureDigestsize(ptr noundef %1) #16, !dbg !827
  %idx.ext = zext i32 %call24 to i64, !dbg !828
  %add.ptr = getelementptr inbounds i8, ptr %p.199, i64 %idx.ext, !dbg !828
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !778, metadata !DIExpression()), !dbg !781
  %call25 = tail call i32 @GetSignatureDigestsize(ptr noundef %1) #16, !dbg !829
  %conv26 = zext i32 %call25 to i64, !dbg !829
  %sub = sub i64 %i.1100, %conv26, !dbg !830
  call void @llvm.dbg.value(metadata i64 %sub, metadata !777, metadata !DIExpression()), !dbg !781
  %call14 = tail call i32 @GetSignatureDigestsize(ptr noundef %1) #16, !dbg !813
  %conv15 = zext i32 %call14 to i64, !dbg !813
  %cmp16.not = icmp ult i64 %sub, %conv15, !dbg !814
  br i1 %cmp16.not, label %while.end, label %while.body, !dbg !815, !llvm.loop !831

while.end:                                        ; preds = %while.body, %for.end
  %p.1.lcssa = phi ptr [ %p.0.lcssa, %for.end ], [ %add.ptr, %while.body ], !dbg !781
  %i.1.lcssa = phi i64 [ %i.0.lcssa, %for.end ], [ %sub, %while.body ], !dbg !781
  %cmp27.not = icmp eq i64 %i.1.lcssa, 0, !dbg !833
  br i1 %cmp27.not, label %if.end45, label %if.then29, !dbg !835

if.then29:                                        ; preds = %while.end
  tail call void @InitializeSignature(ptr noundef %1) #16, !dbg !836
  %nonce30 = getelementptr inbounds %struct._RandomInfo, ptr %random_info, i64 0, i32 1, !dbg !838
  %8 = load ptr, ptr %nonce30, align 8, !dbg !838, !tbaa !248
  tail call void @UpdateSignature(ptr noundef %1, ptr noundef %8) #16, !dbg !839
  tail call void @FinalizeSignature(ptr noundef %1) #16, !dbg !840
  %9 = load ptr, ptr %nonce30, align 8, !dbg !841, !tbaa !248
  tail call fastcc void @IncrementRandomNonce(ptr noundef %9), !dbg !842
  %10 = load ptr, ptr %reservoir, align 8, !dbg !843, !tbaa !255
  %call33 = tail call ptr @GetSignatureDigest(ptr noundef %1) #16, !dbg !844
  tail call void @SetStringInfo(ptr noundef %10, ptr noundef %call33) #16, !dbg !845
  store i64 %i.1.lcssa, ptr %i3, align 8, !dbg !846, !tbaa !794
  %11 = load ptr, ptr %reservoir, align 8, !dbg !847, !tbaa !255
  %call36 = tail call ptr @GetStringInfoDatum(ptr noundef %11) #16, !dbg !848
  call void @llvm.dbg.value(metadata ptr %call36, metadata !780, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !781
  br label %while.body41, !dbg !849

while.body41:                                     ; preds = %if.then29, %while.body41
  %i.2104 = phi i64 [ %i.1.lcssa, %if.then29 ], [ %dec38, %while.body41 ]
  call void @llvm.dbg.value(metadata i64 %i.2104, metadata !777, metadata !DIExpression()), !dbg !781
  %dec38 = add i64 %i.2104, -1, !dbg !850
  call void @llvm.dbg.value(metadata i64 %dec38, metadata !777, metadata !DIExpression()), !dbg !781
  %arrayidx42 = getelementptr inbounds i8, ptr %call36, i64 %dec38, !dbg !851
  %12 = load i8, ptr %arrayidx42, align 1, !dbg !851, !tbaa !587
  %arrayidx43 = getelementptr inbounds i8, ptr %p.1.lcssa, i64 %dec38, !dbg !852
  store i8 %12, ptr %arrayidx43, align 1, !dbg !853, !tbaa !587
  call void @llvm.dbg.value(metadata i64 %dec38, metadata !777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !781
  %cmp39.not = icmp eq i64 %dec38, 0, !dbg !854
  br i1 %cmp39.not, label %if.end45, label %while.body41, !dbg !849, !llvm.loop !855

if.end45:                                         ; preds = %while.body41, %while.end
  %13 = load ptr, ptr %semaphore, align 8, !dbg !857, !tbaa !274
  tail call void @UnlockSemaphoreInfo(ptr noundef %13) #16, !dbg !858
  br label %cleanup, !dbg !859

cleanup:                                          ; preds = %entry, %if.end45
  ret void, !dbg !859
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @GetRandomSecretKey(ptr nocapture noundef readonly %random_info) local_unnamed_addr #9 !dbg !860 {
entry:
  call void @llvm.dbg.value(metadata ptr %random_info, metadata !866, metadata !DIExpression()), !dbg !867
  %secret_key = getelementptr inbounds %struct._RandomInfo, ptr %random_info, i64 0, i32 6, !dbg !868
  %0 = load i64, ptr %secret_key, align 8, !dbg !868, !tbaa !264
  ret i64 %0, !dbg !869
}

; Function Attrs: nounwind uwtable
define dso_local double @GetRandomValue(ptr nocapture noundef %random_info) local_unnamed_addr #0 !dbg !870 {
entry:
  %key = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %random_info, metadata !872, metadata !DIExpression()), !dbg !875
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #16, !dbg !876
  call void @llvm.dbg.value(metadata i64 -1, metadata !874, metadata !DIExpression()), !dbg !875
  br label %do.body, !dbg !877

do.body:                                          ; preds = %do.body, %entry
  call void @llvm.dbg.value(metadata ptr %key, metadata !873, metadata !DIExpression(DW_OP_deref)), !dbg !875
  call void @SetRandomKey(ptr noundef %random_info, i64 noundef 8, ptr noundef nonnull %key), !dbg !878
  %0 = load i64, ptr %key, align 8, !dbg !880, !tbaa !261
  call void @llvm.dbg.value(metadata i64 %0, metadata !873, metadata !DIExpression()), !dbg !875
  %cmp = icmp eq i64 %0, -1, !dbg !881
  br i1 %cmp, label %do.body, label %do.end, !dbg !882, !llvm.loop !883

do.end:                                           ; preds = %do.body
  %conv = uitofp i64 %0 to double, !dbg !885
  %div = fmul double %conv, 0x3BF0000000000000, !dbg !886
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #16, !dbg !887
  ret double %div, !dbg !888
}

; Function Attrs: nounwind uwtable
define dso_local i32 @RandomComponentGenesis() local_unnamed_addr #0 !dbg !889 {
entry:
  %0 = load ptr, ptr @random_semaphore, align 8, !dbg !892, !tbaa !455
  %cmp = icmp eq ptr %0, null, !dbg !894
  br i1 %cmp, label %if.then, label %if.end, !dbg !895

if.then:                                          ; preds = %entry
  %call = tail call ptr @AllocateSemaphoreInfo() #16, !dbg !896
  store ptr %call, ptr @random_semaphore, align 8, !dbg !897, !tbaa !455
  br label %if.end, !dbg !898

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !899
}

; Function Attrs: nounwind uwtable
define dso_local void @RandomComponentTerminus() local_unnamed_addr #0 !dbg !900 {
entry:
  %0 = load ptr, ptr @random_semaphore, align 8, !dbg !901, !tbaa !455
  %cmp = icmp eq ptr %0, null, !dbg !903
  br i1 %cmp, label %if.then, label %if.end, !dbg !904

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @random_semaphore) #16, !dbg !905
  br label %if.end, !dbg !905

if.end:                                           ; preds = %if.then, %entry
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @random_semaphore) #16, !dbg !906
  ret void, !dbg !907
}

declare !dbg !908 void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @IncrementRandomNonce(ptr noundef %nonce) unnamed_addr #10 !dbg !909 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %nonce, metadata !911, metadata !DIExpression()), !dbg !917
  %call = tail call ptr @GetStringInfoDatum(ptr noundef %nonce) #16, !dbg !918
  call void @llvm.dbg.value(metadata ptr %call, metadata !913, metadata !DIExpression()), !dbg !917
  %call1 = tail call i64 @GetStringInfoLength(ptr noundef %nonce) #16, !dbg !919
  call void @llvm.dbg.value(metadata i64 %call1, metadata !912, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !917
  br label %for.cond, !dbg !921

for.cond:                                         ; preds = %for.body, %entry
  %i.0.in = phi i64 [ %call1, %entry ], [ %i.0, %for.body ]
  %i.0 = add i64 %i.0.in, -1, !dbg !922
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !912, metadata !DIExpression()), !dbg !917
  %cmp.not = icmp eq i64 %i.0, 0, !dbg !923
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !925

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, ptr %call, i64 %i.0, !dbg !926
  %0 = load i8, ptr %arrayidx, align 1, !dbg !928, !tbaa !587
  %inc = add i8 %0, 1, !dbg !928
  store i8 %inc, ptr %arrayidx, align 1, !dbg !928, !tbaa !587
  %cmp3.not = icmp eq i8 %inc, 0, !dbg !929
  br i1 %cmp3.not, label %for.cond, label %if.then, !dbg !931, !llvm.loop !932

if.then:                                          ; preds = %for.body
  ret void, !dbg !934

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #16, !dbg !935
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !916, metadata !DIExpression()), !dbg !935
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #16, !dbg !935
  %call5 = tail call ptr @__errno_location() #17, !dbg !935
  %1 = load i32, ptr %call5, align 4, !dbg !935, !tbaa !228
  %call6 = call ptr @GetExceptionMessage(i32 noundef %1) #16, !dbg !935
  call void @llvm.dbg.value(metadata ptr %call6, metadata !914, metadata !DIExpression()), !dbg !936
  %call7 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 827, i32 noundef 775, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef %call6) #16, !dbg !935
  %call8 = call ptr @DestroyString(ptr noundef %call6) #16, !dbg !935
  call void @llvm.dbg.value(metadata ptr %call8, metadata !914, metadata !DIExpression()), !dbg !936
  call void @CatchException(ptr noundef nonnull %exception) #16, !dbg !935
  %call9 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #16, !dbg !935
  call void @MagickCoreTerminus() #16, !dbg !935
  call void @_exit(i32 noundef 76) #18, !dbg !935
  unreachable, !dbg !935
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @SeedPseudoRandomGenerator(i64 noundef %seed) local_unnamed_addr #11 !dbg !937 {
entry:
  call void @llvm.dbg.value(metadata i64 %seed, metadata !942, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i64 %seed, metadata !944, metadata !DIExpression()), !dbg !947
  store i64 %seed, ptr @secret_key, align 8, !dbg !949, !tbaa !261
  ret void, !dbg !950
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @SetRandomSecretKey(i64 noundef %key) local_unnamed_addr #11 !dbg !945 {
entry:
  call void @llvm.dbg.value(metadata i64 %key, metadata !944, metadata !DIExpression()), !dbg !951
  store i64 %key, ptr @secret_key, align 8, !dbg !952, !tbaa !261
  ret void, !dbg !953
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @SetRandomTrueRandom(i32 noundef %true_random) local_unnamed_addr #11 !dbg !954 {
entry:
  call void @llvm.dbg.value(metadata i32 %true_random, metadata !959, metadata !DIExpression()), !dbg !960
  store i32 %true_random, ptr @gather_true_random, align 4, !dbg !961, !tbaa !587
  ret void, !dbg !962
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define hidden nonnull ptr @GetRandomInfoSeed(ptr noundef readnone %random_info) local_unnamed_addr #12 !dbg !963 {
entry:
  call void @llvm.dbg.value(metadata ptr %random_info, metadata !967, metadata !DIExpression()), !dbg !968
  %seed = getelementptr inbounds %struct._RandomInfo, ptr %random_info, i64 0, i32 4, !dbg !969
  ret ptr %seed, !dbg !970
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define hidden double @GetRandomInfoNormalize(ptr nocapture noundef readonly %random_info) local_unnamed_addr #9 !dbg !971 {
entry:
  call void @llvm.dbg.value(metadata ptr %random_info, metadata !973, metadata !DIExpression()), !dbg !974
  %normalize = getelementptr inbounds %struct._RandomInfo, ptr %random_info, i64 0, i32 5, !dbg !975
  %0 = load double, ptr %normalize, align 8, !dbg !975, !tbaa !259
  ret double %0, !dbg !976
}

declare !dbg !977 void @ConcatenateStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !978 i32 @getpid() local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

declare !dbg !982 ptr @AcquireString(ptr noundef) local_unnamed_addr #4

declare !dbg !985 ptr @StringToStringInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !988 i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !991 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #14

; Function Attrs: nofree
declare !dbg !995 noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { nounwind readnone willreturn }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "secret_key", scope: !2, file: !114, line: 134, type: !138, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !109, globals: !172, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/random.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "88be9bfc5166e09faef3ad6e20c5bca5")
!4 = !{!5, !79, !84}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 28, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!9 = !DIEnumerator(name: "UndefinedException", value: 0)
!10 = !DIEnumerator(name: "WarningException", value: 300)
!11 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!12 = !DIEnumerator(name: "TypeWarning", value: 305)
!13 = !DIEnumerator(name: "OptionWarning", value: 310)
!14 = !DIEnumerator(name: "DelegateWarning", value: 315)
!15 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!16 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!17 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!18 = !DIEnumerator(name: "BlobWarning", value: 335)
!19 = !DIEnumerator(name: "StreamWarning", value: 340)
!20 = !DIEnumerator(name: "CacheWarning", value: 345)
!21 = !DIEnumerator(name: "CoderWarning", value: 350)
!22 = !DIEnumerator(name: "FilterWarning", value: 352)
!23 = !DIEnumerator(name: "ModuleWarning", value: 355)
!24 = !DIEnumerator(name: "DrawWarning", value: 360)
!25 = !DIEnumerator(name: "ImageWarning", value: 365)
!26 = !DIEnumerator(name: "WandWarning", value: 370)
!27 = !DIEnumerator(name: "RandomWarning", value: 375)
!28 = !DIEnumerator(name: "XServerWarning", value: 380)
!29 = !DIEnumerator(name: "MonitorWarning", value: 385)
!30 = !DIEnumerator(name: "RegistryWarning", value: 390)
!31 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!32 = !DIEnumerator(name: "PolicyWarning", value: 399)
!33 = !DIEnumerator(name: "ErrorException", value: 400)
!34 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!35 = !DIEnumerator(name: "TypeError", value: 405)
!36 = !DIEnumerator(name: "OptionError", value: 410)
!37 = !DIEnumerator(name: "DelegateError", value: 415)
!38 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!39 = !DIEnumerator(name: "CorruptImageError", value: 425)
!40 = !DIEnumerator(name: "FileOpenError", value: 430)
!41 = !DIEnumerator(name: "BlobError", value: 435)
!42 = !DIEnumerator(name: "StreamError", value: 440)
!43 = !DIEnumerator(name: "CacheError", value: 445)
!44 = !DIEnumerator(name: "CoderError", value: 450)
!45 = !DIEnumerator(name: "FilterError", value: 452)
!46 = !DIEnumerator(name: "ModuleError", value: 455)
!47 = !DIEnumerator(name: "DrawError", value: 460)
!48 = !DIEnumerator(name: "ImageError", value: 465)
!49 = !DIEnumerator(name: "WandError", value: 470)
!50 = !DIEnumerator(name: "RandomError", value: 475)
!51 = !DIEnumerator(name: "XServerError", value: 480)
!52 = !DIEnumerator(name: "MonitorError", value: 485)
!53 = !DIEnumerator(name: "RegistryError", value: 490)
!54 = !DIEnumerator(name: "ConfigureError", value: 495)
!55 = !DIEnumerator(name: "PolicyError", value: 499)
!56 = !DIEnumerator(name: "FatalErrorException", value: 700)
!57 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!58 = !DIEnumerator(name: "TypeFatalError", value: 705)
!59 = !DIEnumerator(name: "OptionFatalError", value: 710)
!60 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!61 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!62 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!63 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!64 = !DIEnumerator(name: "BlobFatalError", value: 735)
!65 = !DIEnumerator(name: "StreamFatalError", value: 740)
!66 = !DIEnumerator(name: "CacheFatalError", value: 745)
!67 = !DIEnumerator(name: "CoderFatalError", value: 750)
!68 = !DIEnumerator(name: "FilterFatalError", value: 752)
!69 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!70 = !DIEnumerator(name: "DrawFatalError", value: 760)
!71 = !DIEnumerator(name: "ImageFatalError", value: 765)
!72 = !DIEnumerator(name: "WandFatalError", value: 770)
!73 = !DIEnumerator(name: "RandomFatalError", value: 775)
!74 = !DIEnumerator(name: "XServerFatalError", value: 780)
!75 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!76 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!77 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!78 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !80, line: 211, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!81 = !{!82, !83}
!82 = !DIEnumerator(name: "MagickFalse", value: 0)
!83 = !DIEnumerator(name: "MagickTrue", value: 1)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 34, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!87 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!88 = !DIEnumerator(name: "NoEvents", value: 0)
!89 = !DIEnumerator(name: "TraceEvent", value: 1)
!90 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!91 = !DIEnumerator(name: "BlobEvent", value: 4)
!92 = !DIEnumerator(name: "CacheEvent", value: 8)
!93 = !DIEnumerator(name: "CoderEvent", value: 16)
!94 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!95 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!96 = !DIEnumerator(name: "DrawEvent", value: 128)
!97 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!98 = !DIEnumerator(name: "ImageEvent", value: 512)
!99 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!100 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!101 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!102 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!103 = !DIEnumerator(name: "TransformEvent", value: 16384)
!104 = !DIEnumerator(name: "UserEvent", value: 36864)
!105 = !DIEnumerator(name: "WandEvent", value: 65536)
!106 = !DIEnumerator(name: "X11Event", value: 131072)
!107 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!108 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!109 = !{!110, !164, !138, !165, !158, !122, !133, !117, !147, !153, !166, !170, !171, !136}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "RandomInfo", file: !112, line: 31, baseType: !113)
!112 = !DIFile(filename: "apps/538.imagick_r/src/magick/random_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "95f31caf92e8a7cab5b1bf8cc3698f31")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RandomInfo", file: !114, line: 77, size: 896, elements: !115)
!114 = !DIFile(filename: "apps/538.imagick_r/src/magick/random.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "88be9bfc5166e09faef3ad6e20c5bca5")
!115 = !{!116, !121, !140, !141, !142, !146, !148, !149, !151, !152, !157, !163}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "signature_info", scope: !113, file: !114, line: 80, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "SignatureInfo", file: !119, line: 30, baseType: !120)
!119 = !DIFile(filename: "apps/538.imagick_r/src/magick/signature-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f72c89ffa1995573b65986daac7c57d4")
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SignatureInfo", file: !119, line: 29, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !113, file: !114, line: 83, baseType: !122, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !124, line: 40, baseType: !125)
!124 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !124, line: 29, size: 32960, elements: !126)
!126 = !{!127, !132, !135, !139}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !125, file: !124, line: 32, baseType: !128, size: 32768)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 32768, elements: !130)
!129 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!130 = !{!131}
!131 = !DISubrange(count: 4096)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !125, file: !124, line: 35, baseType: !133, size: 64, offset: 32768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !125, file: !124, line: 38, baseType: !136, size: 64, offset: 32832)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !137, line: 46, baseType: !138)
!137 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!138 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !125, file: !124, line: 39, baseType: !136, size: 64, offset: 32896)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reservoir", scope: !113, file: !114, line: 84, baseType: !122, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !113, file: !114, line: 87, baseType: !136, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !113, file: !114, line: 90, baseType: !143, size: 256, offset: 256)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 256, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 4)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "normalize", scope: !113, file: !114, line: 93, baseType: !147, size: 64, offset: 512)
!147 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "secret_key", scope: !113, file: !114, line: 96, baseType: !138, size: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_major", scope: !113, file: !114, line: 99, baseType: !150, size: 16, offset: 640)
!150 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_minor", scope: !113, file: !114, line: 100, baseType: !150, size: 16, offset: 656)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !113, file: !114, line: 103, baseType: !153, size: 64, offset: 704)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !155, line: 26, baseType: !156)
!155 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !155, line: 25, flags: DIFlagFwdDecl)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !113, file: !114, line: 106, baseType: !158, size: 64, offset: 768)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !159, line: 77, baseType: !160)
!159 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !161, line: 193, baseType: !162)
!161 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!162 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !113, file: !114, line: 109, baseType: !136, size: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!165 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !168, line: 7, baseType: !169)
!168 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !161, line: 160, baseType: !162)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!172 = !{!0, !173, !175}
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "random_semaphore", scope: !2, file: !114, line: 131, type: !153, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "gather_true_random", scope: !2, file: !114, line: 137, type: !177, isLocal: true, isDefinition: true)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !80, line: 215, baseType: !79)
!178 = !{i32 7, !"Dwarf Version", i32 5}
!179 = !{i32 2, !"Debug Info Version", i32 3}
!180 = !{i32 1, !"wchar_size", i32 4}
!181 = !{i32 7, !"PIC Level", i32 2}
!182 = !{i32 7, !"PIE Level", i32 2}
!183 = !{i32 7, !"uwtable", i32 2}
!184 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!185 = distinct !DISubprogram(name: "AcquireRandomInfo", scope: !114, file: !114, line: 173, type: !186, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !188)
!186 = !DISubroutineType(types: !187)
!187 = !{!110}
!188 = !{!189, !192, !193, !194, !195, !196, !199, !212, !215, !216, !219, !220}
!189 = !DILocalVariable(name: "digest", scope: !185, file: !114, line: 176, type: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!192 = !DILocalVariable(name: "random_info", scope: !185, file: !114, line: 179, type: !110)
!193 = !DILocalVariable(name: "entropy", scope: !185, file: !114, line: 182, type: !122)
!194 = !DILocalVariable(name: "key", scope: !185, file: !114, line: 183, type: !122)
!195 = !DILocalVariable(name: "nonce", scope: !185, file: !114, line: 184, type: !122)
!196 = !DILocalVariable(name: "message", scope: !197, file: !114, line: 188, type: !171)
!197 = distinct !DILexicalBlock(scope: !198, file: !114, line: 188, column: 5)
!198 = distinct !DILexicalBlock(scope: !185, file: !114, line: 187, column: 7)
!199 = !DILocalVariable(name: "exception", scope: !197, file: !114, line: 188, type: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !80, line: 219, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !6, line: 102, size: 448, elements: !202)
!202 = !{!203, !205, !206, !207, !208, !209, !210, !211}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !201, file: !6, line: 105, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !6, line: 100, baseType: !5)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !201, file: !6, line: 108, baseType: !165, size: 32, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !201, file: !6, line: 111, baseType: !171, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !201, file: !6, line: 112, baseType: !171, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !201, file: !6, line: 115, baseType: !164, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !201, file: !6, line: 118, baseType: !177, size: 32, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !201, file: !6, line: 121, baseType: !153, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !201, file: !6, line: 124, baseType: !136, size: 64, offset: 384)
!212 = !DILocalVariable(name: "message", scope: !213, file: !114, line: 209, type: !171)
!213 = distinct !DILexicalBlock(scope: !214, file: !114, line: 209, column: 5)
!214 = distinct !DILexicalBlock(scope: !185, file: !114, line: 208, column: 7)
!215 = !DILocalVariable(name: "exception", scope: !213, file: !114, line: 209, type: !200)
!216 = !DILocalVariable(name: "message", scope: !217, file: !114, line: 223, type: !171)
!217 = distinct !DILexicalBlock(scope: !218, file: !114, line: 223, column: 5)
!218 = distinct !DILexicalBlock(scope: !185, file: !114, line: 222, column: 7)
!219 = !DILocalVariable(name: "exception", scope: !217, file: !114, line: 223, type: !200)
!220 = !DILocalVariable(name: "signature_info", scope: !221, file: !114, line: 242, type: !117)
!221 = distinct !DILexicalBlock(scope: !222, file: !114, line: 240, column: 5)
!222 = distinct !DILexicalBlock(scope: !185, file: !114, line: 232, column: 7)
!223 = !DILocation(line: 186, column: 30, scope: !185)
!224 = !DILocation(line: 0, scope: !185)
!225 = !DILocation(line: 187, column: 19, scope: !198)
!226 = !DILocation(line: 187, column: 7, scope: !185)
!227 = !DILocation(line: 188, column: 5, scope: !197)
!228 = !{!229, !229, i64 0}
!229 = !{!"int", !230, i64 0}
!230 = !{!"omnipotent char", !231, i64 0}
!231 = !{!"Simple C/C++ TBAA"}
!232 = !DILocation(line: 0, scope: !197)
!233 = !DILocation(line: 189, column: 10, scope: !185)
!234 = !DILocation(line: 190, column: 31, scope: !185)
!235 = !DILocation(line: 190, column: 30, scope: !185)
!236 = !{!237, !238, i64 0}
!237 = !{!"_RandomInfo", !238, i64 0, !238, i64 8, !238, i64 16, !239, i64 24, !230, i64 32, !240, i64 64, !239, i64 72, !241, i64 80, !241, i64 82, !238, i64 88, !239, i64 96, !239, i64 104}
!238 = !{!"any pointer", !230, i64 0}
!239 = !{!"long", !230, i64 0}
!240 = !{!"double", !230, i64 0}
!241 = !{!"short", !230, i64 0}
!242 = !DILocation(line: 191, column: 42, scope: !185)
!243 = !DILocation(line: 191, column: 41, scope: !185)
!244 = !DILocation(line: 191, column: 40, scope: !185)
!245 = !DILocation(line: 191, column: 22, scope: !185)
!246 = !DILocation(line: 191, column: 16, scope: !185)
!247 = !DILocation(line: 191, column: 21, scope: !185)
!248 = !{!237, !238, i64 8}
!249 = !DILocation(line: 193, column: 3, scope: !185)
!250 = !DILocation(line: 195, column: 18, scope: !185)
!251 = !DILocation(line: 194, column: 44, scope: !185)
!252 = !DILocation(line: 194, column: 26, scope: !185)
!253 = !DILocation(line: 194, column: 16, scope: !185)
!254 = !DILocation(line: 194, column: 25, scope: !185)
!255 = !{!237, !238, i64 16}
!256 = !DILocation(line: 196, column: 3, scope: !185)
!257 = !DILocation(line: 197, column: 16, scope: !185)
!258 = !DILocation(line: 197, column: 25, scope: !185)
!259 = !{!237, !240, i64 64}
!260 = !DILocation(line: 198, column: 27, scope: !185)
!261 = !{!239, !239, i64 0}
!262 = !DILocation(line: 198, column: 16, scope: !185)
!263 = !DILocation(line: 198, column: 26, scope: !185)
!264 = !{!237, !239, i64 72}
!265 = !DILocation(line: 199, column: 16, scope: !185)
!266 = !DILocation(line: 199, column: 30, scope: !185)
!267 = !{!237, !241, i64 80}
!268 = !DILocation(line: 200, column: 16, scope: !185)
!269 = !DILocation(line: 200, column: 30, scope: !185)
!270 = !{!237, !241, i64 82}
!271 = !DILocation(line: 201, column: 26, scope: !185)
!272 = !DILocation(line: 201, column: 16, scope: !185)
!273 = !DILocation(line: 201, column: 25, scope: !185)
!274 = !{!237, !238, i64 88}
!275 = !DILocation(line: 202, column: 36, scope: !185)
!276 = !DILocation(line: 202, column: 16, scope: !185)
!277 = !DILocation(line: 202, column: 25, scope: !185)
!278 = !{!237, !239, i64 96}
!279 = !DILocation(line: 203, column: 16, scope: !185)
!280 = !DILocation(line: 203, column: 25, scope: !185)
!281 = !{!237, !239, i64 104}
!282 = !DILocation(line: 207, column: 9, scope: !185)
!283 = !DILocation(line: 208, column: 13, scope: !214)
!284 = !DILocation(line: 208, column: 7, scope: !185)
!285 = !DILocation(line: 209, column: 5, scope: !213)
!286 = !DILocation(line: 0, scope: !213)
!287 = !DILocation(line: 210, column: 36, scope: !185)
!288 = !DILocation(line: 210, column: 3, scope: !185)
!289 = !DILocation(line: 211, column: 32, scope: !185)
!290 = !DILocation(line: 211, column: 3, scope: !185)
!291 = !DILocation(line: 212, column: 34, scope: !185)
!292 = !DILocation(line: 212, column: 3, scope: !185)
!293 = !DILocation(line: 214, column: 18, scope: !185)
!294 = !DILocation(line: 213, column: 30, scope: !185)
!295 = !DILocation(line: 214, column: 33, scope: !185)
!296 = !DILocation(line: 214, column: 36, scope: !185)
!297 = !DILocation(line: 213, column: 29, scope: !185)
!298 = !DILocation(line: 213, column: 3, scope: !185)
!299 = !DILocation(line: 215, column: 55, scope: !185)
!300 = !DILocation(line: 215, column: 23, scope: !185)
!301 = !DILocation(line: 215, column: 3, scope: !185)
!302 = !DILocation(line: 216, column: 30, scope: !185)
!303 = !DILocation(line: 216, column: 3, scope: !185)
!304 = !DILocation(line: 217, column: 9, scope: !185)
!305 = !DILocation(line: 221, column: 11, scope: !185)
!306 = !DILocation(line: 222, column: 15, scope: !218)
!307 = !DILocation(line: 222, column: 7, scope: !185)
!308 = !DILocation(line: 223, column: 5, scope: !217)
!309 = !DILocation(line: 0, scope: !217)
!310 = !DILocation(line: 224, column: 32, scope: !185)
!311 = !DILocation(line: 224, column: 3, scope: !185)
!312 = !DILocation(line: 225, column: 34, scope: !185)
!313 = !DILocation(line: 225, column: 3, scope: !185)
!314 = !DILocation(line: 226, column: 30, scope: !185)
!315 = !DILocation(line: 227, column: 18, scope: !185)
!316 = !DILocation(line: 226, column: 40, scope: !185)
!317 = !DILocation(line: 226, column: 3, scope: !185)
!318 = !DILocation(line: 228, column: 11, scope: !185)
!319 = !DILocation(line: 232, column: 20, scope: !222)
!320 = !DILocation(line: 232, column: 31, scope: !222)
!321 = !DILocation(line: 232, column: 7, scope: !185)
!322 = !DILocalVariable(name: "random_info", arg: 1, scope: !323, file: !114, line: 657, type: !110)
!323 = distinct !DISubprogram(name: "GetRandomKey", scope: !114, file: !114, line: 657, type: !324, scopeLine: 659, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !327)
!324 = !DISubroutineType(types: !325)
!325 = !{!122, !110, !326}
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!327 = !{!322, !328, !329}
!328 = !DILocalVariable(name: "length", arg: 2, scope: !323, file: !114, line: 658, type: !326)
!329 = !DILocalVariable(name: "key", scope: !323, file: !114, line: 661, type: !122)
!330 = !DILocation(line: 0, scope: !323, inlinedAt: !331)
!331 = distinct !DILocation(line: 234, column: 11, scope: !332)
!332 = distinct !DILexicalBlock(scope: !222, file: !114, line: 233, column: 5)
!333 = !DILocation(line: 664, column: 7, scope: !323, inlinedAt: !331)
!334 = !DILocation(line: 665, column: 35, scope: !323, inlinedAt: !331)
!335 = !DILocation(line: 665, column: 3, scope: !323, inlinedAt: !331)
!336 = !DILocation(line: 235, column: 44, scope: !332)
!337 = !DILocation(line: 235, column: 49, scope: !332)
!338 = !DILocation(line: 236, column: 9, scope: !332)
!339 = !DILocation(line: 235, column: 14, scope: !332)
!340 = !DILocation(line: 237, column: 11, scope: !332)
!341 = !DILocation(line: 238, column: 5, scope: !332)
!342 = !DILocation(line: 244, column: 22, scope: !221)
!343 = !DILocation(line: 0, scope: !221)
!344 = !DILocation(line: 245, column: 11, scope: !221)
!345 = !DILocation(line: 246, column: 7, scope: !221)
!346 = !DILocation(line: 247, column: 7, scope: !221)
!347 = !DILocation(line: 248, column: 11, scope: !221)
!348 = !DILocation(line: 249, column: 7, scope: !221)
!349 = !DILocation(line: 250, column: 14, scope: !221)
!350 = !DILocation(line: 251, column: 44, scope: !221)
!351 = !DILocation(line: 251, column: 49, scope: !221)
!352 = !DILocation(line: 252, column: 19, scope: !221)
!353 = !DILocalVariable(name: "x", arg: 1, scope: !354, file: !114, line: 166, type: !326)
!354 = distinct !DISubprogram(name: "MagickMin", scope: !114, file: !114, line: 166, type: !355, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{!136, !326, !326}
!357 = !{!353, !358}
!358 = !DILocalVariable(name: "y", arg: 2, scope: !354, file: !114, line: 166, type: !326)
!359 = !DILocation(line: 0, scope: !354, inlinedAt: !360)
!360 = distinct !DILocation(line: 252, column: 9, scope: !221)
!361 = !DILocation(line: 251, column: 14, scope: !221)
!362 = !DILocation(line: 254, column: 22, scope: !221)
!363 = !DILocation(line: 256, column: 3, scope: !185)
!364 = !DILocation(line: 256, column: 23, scope: !185)
!365 = !DILocation(line: 257, column: 3, scope: !185)
!366 = !DILocation(line: 257, column: 23, scope: !185)
!367 = !DILocation(line: 258, column: 3, scope: !185)
!368 = !DILocation(line: 258, column: 23, scope: !185)
!369 = !DILocation(line: 259, column: 3, scope: !185)
!370 = !DISubprogram(name: "AcquireMagickMemory", scope: !371, file: !371, line: 40, type: !372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!371 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!372 = !DISubroutineType(types: !373)
!373 = !{!164, !326}
!374 = !{}
!375 = !DISubprogram(name: "GetExceptionInfo", scope: !6, file: !6, line: 166, type: !376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!379 = !DISubprogram(name: "GetExceptionMessage", scope: !6, file: !6, line: 137, type: !380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!380 = !DISubroutineType(types: !381)
!381 = !{!171, !382}
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!383 = !DISubprogram(name: "ThrowMagickException", scope: !6, file: !6, line: 156, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!384 = !DISubroutineType(types: !385)
!385 = !{!177, !378, !386, !386, !326, !388, !386, !386, null}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!389 = !DISubprogram(name: "DestroyString", scope: !124, file: !124, line: 46, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!390 = !DISubroutineType(types: !391)
!391 = !{!171, !171}
!392 = !DISubprogram(name: "CatchException", scope: !6, file: !6, line: 164, type: !376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!393 = !DISubprogram(name: "DestroyExceptionInfo", scope: !6, file: !6, line: 148, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!394 = !DISubroutineType(types: !395)
!395 = !{!378, !378}
!396 = !DISubprogram(name: "MagickCoreTerminus", scope: !397, file: !397, line: 147, type: !398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!397 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!398 = !DISubroutineType(types: !399)
!399 = !{null}
!400 = !DISubprogram(name: "ResetMagickMemory", scope: !371, file: !371, line: 52, type: !401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!401 = !DISubroutineType(types: !402)
!402 = !{!164, !164, !165, !326}
!403 = !DISubprogram(name: "AcquireSignatureInfo", scope: !119, file: !119, line: 36, type: !404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!404 = !DISubroutineType(types: !405)
!405 = !{!117}
!406 = !DISubprogram(name: "AcquireStringInfo", scope: !124, file: !124, line: 87, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!407 = !DISubroutineType(types: !408)
!408 = !{!122, !326}
!409 = !DISubprogram(name: "GetSignatureDigestsize", scope: !119, file: !119, line: 44, type: !410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!410 = !DISubroutineType(types: !411)
!411 = !{!7, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!414 = !DISubprogram(name: "ResetStringInfo", scope: !124, file: !124, line: 105, type: !415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !122}
!417 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !155, file: !155, line: 32, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!418 = !DISubroutineType(types: !419)
!419 = !{!153}
!420 = !DISubprogram(name: "time", scope: !421, file: !421, line: 75, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!421 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!422 = !DISubroutineType(types: !423)
!423 = !{!167, !166}
!424 = distinct !DISubprogram(name: "GenerateEntropicChaos", scope: !114, file: !114, line: 360, type: !425, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{!122, !110}
!427 = !{!428, !429, !435, !436, !437, !438, !439, !440, !442, !443, !444, !445}
!428 = !DILocalVariable(name: "random_info", arg: 1, scope: !424, file: !114, line: 360, type: !110)
!429 = !DILocalVariable(name: "tid", scope: !424, file: !114, line: 365, type: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickThreadType", file: !431, line: 30, baseType: !432)
!431 = !DIFile(filename: "apps/538.imagick_r/src/magick/thread_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c99214db95297b06bb439184c535bbc9")
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !433, line: 97, baseType: !434)
!433 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !161, line: 154, baseType: !165)
!435 = !DILocalVariable(name: "chaos", scope: !424, file: !114, line: 368, type: !122)
!436 = !DILocalVariable(name: "entropy", scope: !424, file: !114, line: 369, type: !122)
!437 = !DILocalVariable(name: "nanoseconds", scope: !424, file: !114, line: 372, type: !136)
!438 = !DILocalVariable(name: "seconds", scope: !424, file: !114, line: 373, type: !136)
!439 = !DILocalVariable(name: "pid", scope: !424, file: !114, line: 376, type: !158)
!440 = !DILocalVariable(name: "filename", scope: !441, file: !114, line: 512, type: !171)
!441 = distinct !DILexicalBlock(scope: !424, file: !114, line: 510, column: 3)
!442 = !DILocalVariable(name: "file", scope: !441, file: !114, line: 515, type: !165)
!443 = !DILocalVariable(name: "count", scope: !441, file: !114, line: 518, type: !158)
!444 = !DILocalVariable(name: "device", scope: !441, file: !114, line: 521, type: !122)
!445 = !DILocalVariable(name: "i", scope: !446, file: !114, line: 529, type: !158)
!446 = distinct !DILexicalBlock(scope: !447, file: !114, line: 527, column: 7)
!447 = distinct !DILexicalBlock(scope: !441, file: !114, line: 526, column: 9)
!448 = !DILocation(line: 0, scope: !424)
!449 = !DILocation(line: 364, column: 3, scope: !424)
!450 = !DILocation(line: 367, column: 3, scope: !424)
!451 = !DILocation(line: 371, column: 3, scope: !424)
!452 = !DILocation(line: 375, column: 3, scope: !424)
!453 = !DILocation(line: 381, column: 11, scope: !424)
!454 = !DILocation(line: 381, column: 10, scope: !424)
!455 = !{!238, !238, i64 0}
!456 = !DILocation(line: 382, column: 34, scope: !424)
!457 = !DILocation(line: 382, column: 3, scope: !424)
!458 = !DILocation(line: 383, column: 9, scope: !424)
!459 = !DILocation(line: 384, column: 3, scope: !424)
!460 = !DILocation(line: 385, column: 25, scope: !424)
!461 = !DILocation(line: 385, column: 3, scope: !424)
!462 = !DILocation(line: 386, column: 46, scope: !424)
!463 = !DILocation(line: 386, column: 3, scope: !424)
!464 = !DILocation(line: 387, column: 25, scope: !424)
!465 = !DILocation(line: 387, column: 3, scope: !424)
!466 = !DILocation(line: 388, column: 17, scope: !424)
!467 = !DILocation(line: 388, column: 7, scope: !424)
!468 = !DILocation(line: 388, column: 6, scope: !424)
!469 = !DILocation(line: 389, column: 3, scope: !424)
!470 = !DILocation(line: 390, column: 3, scope: !424)
!471 = !DILocation(line: 391, column: 25, scope: !424)
!472 = !DILocation(line: 391, column: 3, scope: !424)
!473 = !DILocation(line: 62, column: 10, scope: !474, inlinedAt: !478)
!474 = distinct !DISubprogram(name: "GetMagickThreadId", scope: !475, file: !475, line: 55, type: !476, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !374)
!475 = !DIFile(filename: "apps/538.imagick_r/src/magick/thread-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "39ddb4e596128be27607023dd7e0ab15")
!476 = !DISubroutineType(types: !477)
!477 = !{!430}
!478 = distinct !DILocation(line: 392, column: 7, scope: !424)
!479 = !DILocation(line: 392, column: 6, scope: !424)
!480 = !DILocation(line: 393, column: 3, scope: !424)
!481 = !DILocation(line: 394, column: 3, scope: !424)
!482 = !DILocation(line: 395, column: 25, scope: !424)
!483 = !DILocation(line: 395, column: 3, scope: !424)
!484 = !DILocation(line: 408, column: 11, scope: !424)
!485 = !DILocation(line: 408, column: 10, scope: !424)
!486 = !DILocation(line: 409, column: 14, scope: !424)
!487 = !DILocation(line: 434, column: 3, scope: !424)
!488 = !DILocation(line: 435, column: 3, scope: !424)
!489 = !DILocation(line: 436, column: 25, scope: !424)
!490 = !DILocation(line: 436, column: 3, scope: !424)
!491 = !DILocation(line: 437, column: 3, scope: !424)
!492 = !DILocation(line: 438, column: 3, scope: !424)
!493 = !DILocation(line: 439, column: 25, scope: !424)
!494 = !DILocation(line: 439, column: 3, scope: !424)
!495 = !DILocation(line: 440, column: 14, scope: !424)
!496 = !DILocation(line: 453, column: 3, scope: !424)
!497 = !DILocation(line: 454, column: 3, scope: !424)
!498 = !DILocation(line: 455, column: 25, scope: !424)
!499 = !DILocation(line: 455, column: 3, scope: !424)
!500 = !DILocation(line: 526, column: 9, scope: !447)
!501 = !DILocation(line: 526, column: 17, scope: !447)
!502 = !DILocation(line: 526, column: 9, scope: !441)
!503 = !DILocation(line: 0, scope: !446)
!504 = !DILocation(line: 534, column: 19, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !114, line: 534, column: 9)
!506 = distinct !DILexicalBlock(scope: !446, file: !114, line: 534, column: 9)
!507 = !DILocation(line: 534, column: 30, scope: !505)
!508 = !DILocation(line: 534, column: 9, scope: !506)
!509 = !DILocation(line: 536, column: 37, scope: !510)
!510 = distinct !DILexicalBlock(scope: !505, file: !114, line: 535, column: 9)
!511 = !DILocation(line: 536, column: 11, scope: !510)
!512 = !DILocation(line: 537, column: 54, scope: !510)
!513 = !DILocation(line: 537, column: 11, scope: !510)
!514 = !DILocation(line: 538, column: 33, scope: !510)
!515 = !DILocation(line: 538, column: 11, scope: !510)
!516 = !DILocation(line: 534, column: 49, scope: !505)
!517 = distinct !{!517, !508, !518, !519, !520}
!518 = !DILocation(line: 539, column: 9, scope: !506)
!519 = !{!"llvm.loop.mustprogress"}
!520 = !{!"llvm.loop.unroll.disable"}
!521 = !DILocation(line: 541, column: 14, scope: !441)
!522 = !DILocation(line: 0, scope: !441)
!523 = !DILocation(line: 542, column: 12, scope: !441)
!524 = !DILocation(line: 543, column: 12, scope: !441)
!525 = !DILocalVariable(name: "path", arg: 1, scope: !526, file: !527, line: 136, type: !386)
!526 = distinct !DISubprogram(name: "open_utf8", scope: !527, file: !527, line: 136, type: !528, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !533)
!527 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f0938b0b9be15949da14cdcfd7e813d9")
!528 = !DISubroutineType(types: !529)
!529 = !{!165, !386, !165, !530}
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !531, line: 59, baseType: !532)
!531 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "461013b06495e219438a7cca03a67307")
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !161, line: 150, baseType: !7)
!533 = !{!525, !534, !535}
!534 = !DILocalVariable(name: "flags", arg: 2, scope: !526, file: !527, line: 136, type: !165)
!535 = !DILocalVariable(name: "mode", arg: 3, scope: !526, file: !527, line: 136, type: !530)
!536 = !DILocation(line: 0, scope: !526, inlinedAt: !537)
!537 = distinct !DILocation(line: 544, column: 10, scope: !441)
!538 = !DILocation(line: 139, column: 10, scope: !526, inlinedAt: !537)
!539 = !DILocation(line: 545, column: 14, scope: !441)
!540 = !DILocation(line: 546, column: 14, scope: !541)
!541 = distinct !DILexicalBlock(scope: !441, file: !114, line: 546, column: 9)
!542 = !DILocation(line: 546, column: 9, scope: !441)
!543 = !DILocation(line: 548, column: 9, scope: !544)
!544 = distinct !DILexicalBlock(scope: !541, file: !114, line: 547, column: 7)
!545 = !DILocation(line: 549, column: 31, scope: !544)
!546 = !DILocalVariable(name: "file", arg: 1, scope: !547, file: !114, line: 333, type: !165)
!547 = distinct !DISubprogram(name: "ReadRandom", scope: !114, file: !114, line: 333, type: !548, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !550)
!548 = !DISubroutineType(types: !549)
!549 = !{!158, !165, !133, !136}
!550 = !{!546, !551, !552, !553, !554, !555}
!551 = !DILocalVariable(name: "source", arg: 2, scope: !547, file: !114, line: 333, type: !133)
!552 = !DILocalVariable(name: "length", arg: 3, scope: !547, file: !114, line: 333, type: !136)
!553 = !DILocalVariable(name: "q", scope: !547, file: !114, line: 336, type: !133)
!554 = !DILocalVariable(name: "offset", scope: !547, file: !114, line: 339, type: !158)
!555 = !DILocalVariable(name: "count", scope: !547, file: !114, line: 340, type: !158)
!556 = !DILocation(line: 0, scope: !547, inlinedAt: !557)
!557 = distinct !DILocation(line: 549, column: 15, scope: !544)
!558 = !DILocation(line: 343, column: 3, scope: !559, inlinedAt: !557)
!559 = distinct !DILexicalBlock(scope: !547, file: !114, line: 343, column: 3)
!560 = !DILocation(line: 345, column: 21, scope: !561, inlinedAt: !557)
!561 = distinct !DILexicalBlock(scope: !562, file: !114, line: 344, column: 3)
!562 = distinct !DILexicalBlock(scope: !559, file: !114, line: 343, column: 3)
!563 = !DILocation(line: 346, column: 15, scope: !564, inlinedAt: !557)
!564 = distinct !DILexicalBlock(scope: !561, file: !114, line: 346, column: 9)
!565 = !DILocation(line: 346, column: 9, scope: !561, inlinedAt: !557)
!566 = !DILocation(line: 349, column: 13, scope: !567, inlinedAt: !557)
!567 = distinct !DILexicalBlock(scope: !568, file: !114, line: 349, column: 13)
!568 = distinct !DILexicalBlock(scope: !564, file: !114, line: 347, column: 7)
!569 = !DILocation(line: 349, column: 19, scope: !567, inlinedAt: !557)
!570 = !DILocation(line: 349, column: 13, scope: !568, inlinedAt: !557)
!571 = !DILocation(line: 353, column: 6, scope: !561, inlinedAt: !557)
!572 = !DILocation(line: 354, column: 11, scope: !561, inlinedAt: !557)
!573 = !DILocation(line: 355, column: 3, scope: !561, inlinedAt: !557)
!574 = !DILocation(line: 0, scope: !559, inlinedAt: !557)
!575 = !DILocation(line: 0, scope: !561, inlinedAt: !557)
!576 = !DILocation(line: 343, column: 37, scope: !562, inlinedAt: !557)
!577 = !DILocation(line: 343, column: 25, scope: !562, inlinedAt: !557)
!578 = distinct !{!578, !558, !579, !519, !520}
!579 = !DILocation(line: 355, column: 3, scope: !559, inlinedAt: !557)
!580 = !DILocation(line: 550, column: 16, scope: !544)
!581 = !DILocation(line: 551, column: 9, scope: !544)
!582 = !DILocation(line: 552, column: 31, scope: !544)
!583 = !DILocation(line: 552, column: 9, scope: !544)
!584 = !DILocation(line: 553, column: 7, scope: !544)
!585 = !DILocation(line: 554, column: 9, scope: !586)
!586 = distinct !DILexicalBlock(scope: !441, file: !114, line: 554, column: 9)
!587 = !{!230, !230, i64 0}
!588 = !DILocation(line: 554, column: 28, scope: !586)
!589 = !DILocation(line: 554, column: 9, scope: !441)
!590 = !DILocation(line: 559, column: 18, scope: !591)
!591 = distinct !DILexicalBlock(scope: !586, file: !114, line: 555, column: 7)
!592 = !DILocation(line: 560, column: 16, scope: !591)
!593 = !DILocation(line: 561, column: 16, scope: !591)
!594 = !DILocation(line: 0, scope: !526, inlinedAt: !595)
!595 = distinct !DILocation(line: 562, column: 14, scope: !591)
!596 = !DILocation(line: 139, column: 10, scope: !526, inlinedAt: !595)
!597 = !DILocation(line: 563, column: 18, scope: !591)
!598 = !DILocation(line: 564, column: 18, scope: !599)
!599 = distinct !DILexicalBlock(scope: !591, file: !114, line: 564, column: 13)
!600 = !DILocation(line: 564, column: 13, scope: !591)
!601 = !DILocation(line: 566, column: 22, scope: !602)
!602 = distinct !DILexicalBlock(scope: !599, file: !114, line: 565, column: 11)
!603 = !DILocation(line: 567, column: 20, scope: !602)
!604 = !DILocation(line: 568, column: 20, scope: !602)
!605 = !DILocation(line: 0, scope: !526, inlinedAt: !606)
!606 = distinct !DILocation(line: 569, column: 18, scope: !602)
!607 = !DILocation(line: 139, column: 10, scope: !526, inlinedAt: !606)
!608 = !DILocation(line: 571, column: 18, scope: !609)
!609 = distinct !DILexicalBlock(scope: !591, file: !114, line: 571, column: 13)
!610 = !DILocation(line: 571, column: 13, scope: !591)
!611 = !DILocation(line: 573, column: 13, scope: !612)
!612 = distinct !DILexicalBlock(scope: !609, file: !114, line: 572, column: 11)
!613 = !DILocation(line: 574, column: 35, scope: !612)
!614 = !DILocation(line: 0, scope: !547, inlinedAt: !615)
!615 = distinct !DILocation(line: 574, column: 19, scope: !612)
!616 = !DILocation(line: 343, column: 3, scope: !559, inlinedAt: !615)
!617 = !DILocation(line: 345, column: 21, scope: !561, inlinedAt: !615)
!618 = !DILocation(line: 346, column: 15, scope: !564, inlinedAt: !615)
!619 = !DILocation(line: 346, column: 9, scope: !561, inlinedAt: !615)
!620 = !DILocation(line: 349, column: 13, scope: !567, inlinedAt: !615)
!621 = !DILocation(line: 349, column: 19, scope: !567, inlinedAt: !615)
!622 = !DILocation(line: 349, column: 13, scope: !568, inlinedAt: !615)
!623 = !DILocation(line: 353, column: 6, scope: !561, inlinedAt: !615)
!624 = !DILocation(line: 354, column: 11, scope: !561, inlinedAt: !615)
!625 = !DILocation(line: 355, column: 3, scope: !561, inlinedAt: !615)
!626 = !DILocation(line: 0, scope: !559, inlinedAt: !615)
!627 = !DILocation(line: 0, scope: !561, inlinedAt: !615)
!628 = !DILocation(line: 343, column: 37, scope: !562, inlinedAt: !615)
!629 = !DILocation(line: 343, column: 25, scope: !562, inlinedAt: !615)
!630 = distinct !{!630, !616, !631, !519, !520}
!631 = !DILocation(line: 355, column: 3, scope: !559, inlinedAt: !615)
!632 = !DILocation(line: 575, column: 20, scope: !612)
!633 = !DILocation(line: 576, column: 13, scope: !612)
!634 = !DILocation(line: 577, column: 35, scope: !612)
!635 = !DILocation(line: 577, column: 13, scope: !612)
!636 = !DILocation(line: 578, column: 11, scope: !612)
!637 = !DILocation(line: 582, column: 9, scope: !424)
!638 = !DILocation(line: 583, column: 36, scope: !424)
!639 = !DILocation(line: 583, column: 3, scope: !424)
!640 = !DILocation(line: 584, column: 10, scope: !424)
!641 = !DILocation(line: 585, column: 1, scope: !424)
!642 = !DILocation(line: 584, column: 3, scope: !424)
!643 = !DISubprogram(name: "InitializeSignature", scope: !119, file: !119, line: 47, type: !644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !117}
!646 = !DISubprogram(name: "UpdateSignature", scope: !119, file: !119, line: 50, type: !647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !117, !190}
!649 = !DISubprogram(name: "FinalizeSignature", scope: !119, file: !119, line: 48, type: !644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!650 = !DISubprogram(name: "SetStringInfoLength", scope: !124, file: !124, line: 108, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !122, !326}
!653 = !DISubprogram(name: "SetStringInfo", scope: !124, file: !124, line: 106, type: !654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !122, !190}
!656 = !DISubprogram(name: "GetSignatureDigest", scope: !119, file: !119, line: 40, type: !657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!657 = !DISubroutineType(types: !658)
!658 = !{!190, !412}
!659 = !DISubprogram(name: "DestroyStringInfo", scope: !124, file: !124, line: 91, type: !660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!660 = !DISubroutineType(types: !661)
!661 = !{!122, !122}
!662 = !DILocation(line: 0, scope: !323)
!663 = !DILocation(line: 664, column: 7, scope: !323)
!664 = !DILocation(line: 665, column: 35, scope: !323)
!665 = !DILocation(line: 665, column: 3, scope: !323)
!666 = !DILocation(line: 666, column: 3, scope: !323)
!667 = !DISubprogram(name: "CopyMagickMemory", scope: !371, file: !371, line: 44, type: !668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!668 = !DISubroutineType(types: !669)
!669 = !{!164, !164, !670, !326}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!672 = !DISubprogram(name: "GetStringInfoDatum", scope: !124, file: !124, line: 97, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!673 = !DISubroutineType(types: !674)
!674 = !{!133, !190}
!675 = !DISubprogram(name: "GetStringInfoLength", scope: !124, file: !124, line: 80, type: !676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!676 = !DISubroutineType(types: !677)
!677 = !{!136, !190}
!678 = !DISubprogram(name: "SetStringInfoDatum", scope: !124, file: !124, line: 107, type: !679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !122, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!683 = !DISubprogram(name: "DestroySignatureInfo", scope: !119, file: !119, line: 37, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!684 = !DISubroutineType(types: !685)
!685 = !{!117, !117}
!686 = distinct !DISubprogram(name: "DestroyRandomInfo", scope: !114, file: !114, line: 286, type: !687, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{!110, !110}
!689 = !{!690}
!690 = !DILocalVariable(name: "random_info", arg: 1, scope: !686, file: !114, line: 286, type: !110)
!691 = !DILocation(line: 0, scope: !686)
!692 = !DILocation(line: 288, column: 10, scope: !686)
!693 = !DILocation(line: 291, column: 34, scope: !686)
!694 = !DILocation(line: 291, column: 3, scope: !686)
!695 = !DILocation(line: 292, column: 20, scope: !696)
!696 = distinct !DILexicalBlock(scope: !686, file: !114, line: 292, column: 7)
!697 = !DILocation(line: 292, column: 30, scope: !696)
!698 = !DILocation(line: 292, column: 7, scope: !686)
!699 = !DILocation(line: 293, column: 28, scope: !696)
!700 = !DILocation(line: 293, column: 27, scope: !696)
!701 = !DILocation(line: 293, column: 5, scope: !696)
!702 = !DILocation(line: 294, column: 20, scope: !703)
!703 = distinct !DILexicalBlock(scope: !686, file: !114, line: 294, column: 7)
!704 = !DILocation(line: 294, column: 26, scope: !703)
!705 = !DILocation(line: 294, column: 7, scope: !686)
!706 = !DILocation(line: 295, column: 24, scope: !703)
!707 = !DILocation(line: 295, column: 23, scope: !703)
!708 = !DILocation(line: 295, column: 5, scope: !703)
!709 = !DILocation(line: 296, column: 20, scope: !710)
!710 = distinct !DILexicalBlock(scope: !686, file: !114, line: 296, column: 7)
!711 = !DILocation(line: 296, column: 35, scope: !710)
!712 = !DILocation(line: 296, column: 7, scope: !686)
!713 = !DILocation(line: 297, column: 33, scope: !710)
!714 = !DILocation(line: 297, column: 32, scope: !710)
!715 = !DILocation(line: 297, column: 5, scope: !710)
!716 = !DILocation(line: 299, column: 41, scope: !686)
!717 = !DILocation(line: 299, column: 10, scope: !686)
!718 = !DILocation(line: 300, column: 16, scope: !686)
!719 = !DILocation(line: 300, column: 25, scope: !686)
!720 = !DILocation(line: 301, column: 36, scope: !686)
!721 = !DILocation(line: 301, column: 3, scope: !686)
!722 = !DILocation(line: 302, column: 3, scope: !686)
!723 = !DILocation(line: 303, column: 30, scope: !686)
!724 = !DILocation(line: 304, column: 3, scope: !686)
!725 = !DISubprogram(name: "LogMagickEvent", scope: !85, file: !85, line: 83, type: !726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!726 = !DISubroutineType(types: !727)
!727 = !{!177, !728, !386, !386, !326, !386, null}
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !85, line: 58, baseType: !84)
!730 = !DISubprogram(name: "LockSemaphoreInfo", scope: !155, file: !155, line: 37, type: !731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !153}
!733 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !155, file: !155, line: 39, type: !731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!734 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !155, file: !155, line: 36, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!738 = !DISubprogram(name: "RelinquishMagickMemory", scope: !371, file: !371, line: 51, type: !739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!739 = !DISubroutineType(types: !740)
!740 = !{!164, !164}
!741 = distinct !DISubprogram(name: "GetPseudoRandomValue", scope: !114, file: !114, line: 612, type: !742, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !744)
!742 = !DISubroutineType(types: !743)
!743 = !{!147, !110}
!744 = !{!745, !746, !748}
!745 = !DILocalVariable(name: "random_info", arg: 1, scope: !741, file: !114, line: 612, type: !110)
!746 = !DILocalVariable(name: "seed", scope: !741, file: !114, line: 615, type: !747)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!748 = !DILocalVariable(name: "alpha", scope: !741, file: !114, line: 618, type: !138)
!749 = !DILocation(line: 0, scope: !741)
!750 = !DILocation(line: 620, column: 21, scope: !741)
!751 = !DILocation(line: 621, column: 3, scope: !741)
!752 = !DILocation(line: 623, column: 47, scope: !753)
!753 = distinct !DILexicalBlock(scope: !741, file: !114, line: 622, column: 3)
!754 = !DILocation(line: 623, column: 28, scope: !753)
!755 = !DILocation(line: 623, column: 36, scope: !753)
!756 = !DILocation(line: 627, column: 33, scope: !753)
!757 = !DILocation(line: 627, column: 59, scope: !753)
!758 = !DILocation(line: 627, column: 22, scope: !753)
!759 = !DILocation(line: 627, column: 50, scope: !753)
!760 = !DILocation(line: 627, column: 41, scope: !753)
!761 = !DILocation(line: 628, column: 20, scope: !741)
!762 = !DILocation(line: 628, column: 3, scope: !753)
!763 = distinct !{!763, !751, !764, !519, !520}
!764 = !DILocation(line: 628, column: 27, scope: !741)
!765 = !DILocation(line: 0, scope: !753)
!766 = !DILocation(line: 629, column: 23, scope: !741)
!767 = !DILocation(line: 629, column: 33, scope: !741)
!768 = !DILocation(line: 629, column: 32, scope: !741)
!769 = !DILocation(line: 629, column: 3, scope: !741)
!770 = distinct !DISubprogram(name: "SetRandomKey", scope: !114, file: !114, line: 830, type: !771, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !110, !326, !133}
!773 = !{!774, !775, !776, !777, !778, !779, !780}
!774 = !DILocalVariable(name: "random_info", arg: 1, scope: !770, file: !114, line: 830, type: !110)
!775 = !DILocalVariable(name: "length", arg: 2, scope: !770, file: !114, line: 830, type: !326)
!776 = !DILocalVariable(name: "key", arg: 3, scope: !770, file: !114, line: 831, type: !133)
!777 = !DILocalVariable(name: "i", scope: !770, file: !114, line: 834, type: !136)
!778 = !DILocalVariable(name: "p", scope: !770, file: !114, line: 837, type: !133)
!779 = !DILocalVariable(name: "signature_info", scope: !770, file: !114, line: 840, type: !117)
!780 = !DILocalVariable(name: "datum", scope: !770, file: !114, line: 843, type: !133)
!781 = !DILocation(line: 0, scope: !770)
!782 = !DILocation(line: 846, column: 14, scope: !783)
!783 = distinct !DILexicalBlock(scope: !770, file: !114, line: 846, column: 7)
!784 = !DILocation(line: 846, column: 7, scope: !770)
!785 = !DILocation(line: 848, column: 34, scope: !770)
!786 = !DILocation(line: 848, column: 3, scope: !770)
!787 = !DILocation(line: 849, column: 31, scope: !770)
!788 = !DILocation(line: 850, column: 41, scope: !770)
!789 = !DILocation(line: 850, column: 9, scope: !770)
!790 = !DILocation(line: 852, column: 41, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !114, line: 852, column: 3)
!792 = distinct !DILexicalBlock(scope: !770, file: !114, line: 852, column: 3)
!793 = !DILocation(line: 852, column: 24, scope: !791)
!794 = !{!237, !239, i64 24}
!795 = !DILocation(line: 852, column: 43, scope: !791)
!796 = !DILocation(line: 852, column: 3, scope: !792)
!797 = !DILocation(line: 854, column: 10, scope: !798)
!798 = distinct !DILexicalBlock(scope: !791, file: !114, line: 853, column: 3)
!799 = !DILocation(line: 854, column: 7, scope: !798)
!800 = !DILocation(line: 854, column: 9, scope: !798)
!801 = !DILocation(line: 855, column: 19, scope: !798)
!802 = !DILocation(line: 856, column: 27, scope: !803)
!803 = distinct !DILexicalBlock(scope: !798, file: !114, line: 856, column: 9)
!804 = !DILocation(line: 856, column: 24, scope: !803)
!805 = !DILocation(line: 856, column: 9, scope: !798)
!806 = !DILocation(line: 857, column: 21, scope: !803)
!807 = !DILocation(line: 857, column: 7, scope: !803)
!808 = !DILocation(line: 852, column: 51, scope: !791)
!809 = !DILocation(line: 852, column: 18, scope: !791)
!810 = distinct !{!810, !796, !811, !519, !520}
!811 = !DILocation(line: 858, column: 3, scope: !792)
!812 = !DILocation(line: 0, scope: !792)
!813 = !DILocation(line: 859, column: 15, scope: !770)
!814 = !DILocation(line: 859, column: 12, scope: !770)
!815 = !DILocation(line: 859, column: 3, scope: !770)
!816 = !DILocation(line: 861, column: 5, scope: !817)
!817 = distinct !DILexicalBlock(scope: !770, file: !114, line: 860, column: 3)
!818 = !DILocation(line: 862, column: 49, scope: !817)
!819 = !DILocation(line: 862, column: 5, scope: !817)
!820 = !DILocation(line: 863, column: 5, scope: !817)
!821 = !DILocation(line: 864, column: 39, scope: !817)
!822 = !DILocation(line: 864, column: 5, scope: !817)
!823 = !DILocation(line: 865, column: 50, scope: !817)
!824 = !DILocation(line: 865, column: 31, scope: !817)
!825 = !DILocation(line: 866, column: 24, scope: !817)
!826 = !DILocation(line: 865, column: 12, scope: !817)
!827 = !DILocation(line: 867, column: 8, scope: !817)
!828 = !DILocation(line: 867, column: 6, scope: !817)
!829 = !DILocation(line: 868, column: 8, scope: !817)
!830 = !DILocation(line: 868, column: 6, scope: !817)
!831 = distinct !{!831, !815, !832, !519, !520}
!832 = !DILocation(line: 869, column: 3, scope: !770)
!833 = !DILocation(line: 870, column: 9, scope: !834)
!834 = distinct !DILexicalBlock(scope: !770, file: !114, line: 870, column: 7)
!835 = !DILocation(line: 870, column: 7, scope: !770)
!836 = !DILocation(line: 872, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !114, line: 871, column: 5)
!838 = !DILocation(line: 873, column: 51, scope: !837)
!839 = !DILocation(line: 873, column: 7, scope: !837)
!840 = !DILocation(line: 874, column: 7, scope: !837)
!841 = !DILocation(line: 875, column: 41, scope: !837)
!842 = !DILocation(line: 875, column: 7, scope: !837)
!843 = !DILocation(line: 876, column: 34, scope: !837)
!844 = !DILocation(line: 876, column: 44, scope: !837)
!845 = !DILocation(line: 876, column: 7, scope: !837)
!846 = !DILocation(line: 877, column: 21, scope: !837)
!847 = !DILocation(line: 878, column: 45, scope: !837)
!848 = !DILocation(line: 878, column: 13, scope: !837)
!849 = !DILocation(line: 879, column: 7, scope: !837)
!850 = !DILocation(line: 879, column: 15, scope: !837)
!851 = !DILocation(line: 880, column: 14, scope: !837)
!852 = !DILocation(line: 880, column: 9, scope: !837)
!853 = !DILocation(line: 880, column: 13, scope: !837)
!854 = !DILocation(line: 879, column: 18, scope: !837)
!855 = distinct !{!855, !849, !856, !519, !520}
!856 = !DILocation(line: 880, column: 21, scope: !837)
!857 = !DILocation(line: 882, column: 36, scope: !770)
!858 = !DILocation(line: 882, column: 3, scope: !770)
!859 = !DILocation(line: 883, column: 1, scope: !770)
!860 = distinct !DISubprogram(name: "GetRandomSecretKey", scope: !114, file: !114, line: 691, type: !861, scopeLine: 692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !865)
!861 = !DISubroutineType(types: !862)
!862 = !{!138, !863}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!865 = !{!866}
!866 = !DILocalVariable(name: "random_info", arg: 1, scope: !860, file: !114, line: 691, type: !863)
!867 = !DILocation(line: 0, scope: !860)
!868 = !DILocation(line: 693, column: 23, scope: !860)
!869 = !DILocation(line: 693, column: 3, scope: !860)
!870 = distinct !DISubprogram(name: "GetRandomValue", scope: !114, file: !114, line: 717, type: !742, scopeLine: 718, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !871)
!871 = !{!872, !873, !874}
!872 = !DILocalVariable(name: "random_info", arg: 1, scope: !870, file: !114, line: 717, type: !110)
!873 = !DILocalVariable(name: "key", scope: !870, file: !114, line: 720, type: !138)
!874 = !DILocalVariable(name: "range", scope: !870, file: !114, line: 721, type: !138)
!875 = !DILocation(line: 0, scope: !870)
!876 = !DILocation(line: 719, column: 3, scope: !870)
!877 = !DILocation(line: 724, column: 3, scope: !870)
!878 = !DILocation(line: 726, column: 5, scope: !879)
!879 = distinct !DILexicalBlock(scope: !870, file: !114, line: 725, column: 3)
!880 = !DILocation(line: 727, column: 12, scope: !870)
!881 = !DILocation(line: 727, column: 16, scope: !870)
!882 = !DILocation(line: 727, column: 3, scope: !879)
!883 = distinct !{!883, !877, !884, !519, !520}
!884 = !DILocation(line: 727, column: 24, scope: !870)
!885 = !DILocation(line: 728, column: 10, scope: !870)
!886 = !DILocation(line: 728, column: 22, scope: !870)
!887 = !DILocation(line: 729, column: 1, scope: !870)
!888 = !DILocation(line: 728, column: 3, scope: !870)
!889 = distinct !DISubprogram(name: "RandomComponentGenesis", scope: !114, file: !114, line: 750, type: !890, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !374)
!890 = !DISubroutineType(types: !891)
!891 = !{!177}
!892 = !DILocation(line: 752, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !889, file: !114, line: 752, column: 7)
!894 = !DILocation(line: 752, column: 24, scope: !893)
!895 = !DILocation(line: 752, column: 7, scope: !889)
!896 = !DILocation(line: 753, column: 22, scope: !893)
!897 = !DILocation(line: 753, column: 21, scope: !893)
!898 = !DILocation(line: 753, column: 5, scope: !893)
!899 = !DILocation(line: 754, column: 3, scope: !889)
!900 = distinct !DISubprogram(name: "RandomComponentTerminus", scope: !114, file: !114, line: 776, type: !398, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !374)
!901 = !DILocation(line: 778, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !900, file: !114, line: 778, column: 7)
!903 = !DILocation(line: 778, column: 24, scope: !902)
!904 = !DILocation(line: 778, column: 7, scope: !900)
!905 = !DILocation(line: 779, column: 5, scope: !902)
!906 = !DILocation(line: 780, column: 3, scope: !900)
!907 = !DILocation(line: 781, column: 1, scope: !900)
!908 = !DISubprogram(name: "ActivateSemaphoreInfo", scope: !155, file: !155, line: 35, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!909 = distinct !DISubprogram(name: "IncrementRandomNonce", scope: !114, file: !114, line: 812, type: !415, scopeLine: 813, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !910)
!910 = !{!911, !912, !913, !914, !916}
!911 = !DILocalVariable(name: "nonce", arg: 1, scope: !909, file: !114, line: 812, type: !122)
!912 = !DILocalVariable(name: "i", scope: !909, file: !114, line: 815, type: !158)
!913 = !DILocalVariable(name: "datum", scope: !909, file: !114, line: 818, type: !133)
!914 = !DILocalVariable(name: "message", scope: !915, file: !114, line: 827, type: !171)
!915 = distinct !DILexicalBlock(scope: !909, file: !114, line: 827, column: 3)
!916 = !DILocalVariable(name: "exception", scope: !915, file: !114, line: 827, type: !200)
!917 = !DILocation(line: 0, scope: !909)
!918 = !DILocation(line: 820, column: 9, scope: !909)
!919 = !DILocation(line: 821, column: 21, scope: !920)
!920 = distinct !DILexicalBlock(scope: !909, file: !114, line: 821, column: 3)
!921 = !DILocation(line: 821, column: 8, scope: !920)
!922 = !DILocation(line: 0, scope: !920)
!923 = !DILocation(line: 821, column: 54, scope: !924)
!924 = distinct !DILexicalBlock(scope: !920, file: !114, line: 821, column: 3)
!925 = !DILocation(line: 821, column: 3, scope: !920)
!926 = !DILocation(line: 823, column: 5, scope: !927)
!927 = distinct !DILexicalBlock(scope: !924, file: !114, line: 822, column: 3)
!928 = !DILocation(line: 823, column: 13, scope: !927)
!929 = !DILocation(line: 824, column: 18, scope: !930)
!930 = distinct !DILexicalBlock(scope: !927, file: !114, line: 824, column: 9)
!931 = !DILocation(line: 824, column: 9, scope: !927)
!932 = distinct !{!932, !925, !933, !519, !520}
!933 = !DILocation(line: 826, column: 3, scope: !920)
!934 = !DILocation(line: 828, column: 1, scope: !909)
!935 = !DILocation(line: 827, column: 3, scope: !915)
!936 = !DILocation(line: 0, scope: !915)
!937 = distinct !DISubprogram(name: "SeedPseudoRandomGenerator", scope: !114, file: !114, line: 909, type: !938, scopeLine: 910, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !941)
!938 = !DISubroutineType(types: !939)
!939 = !{null, !940}
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!941 = !{!942}
!942 = !DILocalVariable(name: "seed", arg: 1, scope: !937, file: !114, line: 909, type: !940)
!943 = !DILocation(line: 0, scope: !937)
!944 = !DILocalVariable(name: "key", arg: 1, scope: !945, file: !114, line: 914, type: !940)
!945 = distinct !DISubprogram(name: "SetRandomSecretKey", scope: !114, file: !114, line: 914, type: !938, scopeLine: 915, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !946)
!946 = !{!944}
!947 = !DILocation(line: 0, scope: !945, inlinedAt: !948)
!948 = distinct !DILocation(line: 911, column: 3, scope: !937)
!949 = !DILocation(line: 916, column: 13, scope: !945, inlinedAt: !948)
!950 = !DILocation(line: 912, column: 1, scope: !937)
!951 = !DILocation(line: 0, scope: !945)
!952 = !DILocation(line: 916, column: 13, scope: !945)
!953 = !DILocation(line: 917, column: 1, scope: !945)
!954 = distinct !DISubprogram(name: "SetRandomTrueRandom", scope: !114, file: !114, line: 944, type: !955, scopeLine: 945, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !958)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !957}
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!958 = !{!959}
!959 = !DILocalVariable(name: "true_random", arg: 1, scope: !954, file: !114, line: 944, type: !957)
!960 = !DILocation(line: 0, scope: !954)
!961 = !DILocation(line: 946, column: 21, scope: !954)
!962 = !DILocation(line: 947, column: 1, scope: !954)
!963 = distinct !DISubprogram(name: "GetRandomInfoSeed", scope: !114, file: !114, line: 949, type: !964, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !966)
!964 = !DISubroutineType(types: !965)
!965 = !{!747, !110}
!966 = !{!967}
!967 = !DILocalVariable(name: "random_info", arg: 1, scope: !963, file: !114, line: 949, type: !110)
!968 = !DILocation(line: 0, scope: !963)
!969 = !DILocation(line: 952, column: 23, scope: !963)
!970 = !DILocation(line: 952, column: 3, scope: !963)
!971 = distinct !DISubprogram(name: "GetRandomInfoNormalize", scope: !114, file: !114, line: 955, type: !742, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !972)
!972 = !{!973}
!973 = !DILocalVariable(name: "random_info", arg: 1, scope: !971, file: !114, line: 955, type: !110)
!974 = !DILocation(line: 0, scope: !971)
!975 = !DILocation(line: 958, column: 23, scope: !971)
!976 = !DILocation(line: 958, column: 3, scope: !971)
!977 = !DISubprogram(name: "ConcatenateStringInfo", scope: !124, file: !124, line: 100, type: !654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!978 = !DISubprogram(name: "getpid", scope: !979, file: !979, line: 628, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!979 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!980 = !DISubroutineType(types: !981)
!981 = !{!434}
!982 = !DISubprogram(name: "AcquireString", scope: !124, file: !124, line: 43, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!983 = !DISubroutineType(types: !984)
!984 = !{!171, !386}
!985 = !DISubprogram(name: "StringToStringInfo", scope: !124, file: !124, line: 94, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!986 = !DISubroutineType(types: !987)
!987 = !{!122, !386}
!988 = !DISubprogram(name: "close", scope: !979, file: !979, line: 353, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!989 = !DISubroutineType(types: !990)
!990 = !{!165, !165}
!991 = !DISubprogram(name: "open", scope: !992, file: !992, line: 168, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!992 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "270596b098606fab5166d0114edf8288")
!993 = !DISubroutineType(types: !994)
!994 = !{!165, !386, !165, null}
!995 = !DISubprogram(name: "read", scope: !979, file: !979, line: 360, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!996 = !DISubroutineType(types: !997)
!997 = !{!158, !165, !164, !136}
