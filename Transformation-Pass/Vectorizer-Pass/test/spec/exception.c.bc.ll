; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/exception.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [88 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/exception.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Exception/%s%s\00", align 1
@error_handler = internal unnamed_addr global ptr @DefaultErrorHandler, align 8, !dbg !0
@fatal_error_handler = internal unnamed_addr global ptr @DefaultFatalErrorHandler, align 8, !dbg !163
@warning_handler = internal unnamed_addr global ptr @DefaultWarningHandler, align 8, !dbg !167
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"fatal\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"%s @ %s/%s/%s/%.20g\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Resource/Limit/Warning/\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Type/Warning/\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Option/Warning/\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Delegate/Warning/\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Missing/Delegate/Warning/\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Corrupt/Image/Warning/\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"File/Open/Warning/\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Blob/Warning/\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Stream/Warning/\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Cache/Warning/\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Coder/Warning/\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Filter/Warning/\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Module/Warning/\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"Draw/Warning/\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Image/Warning/\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Wand/Warning/\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"XServer/Warning/\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Monitor/Warning/\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"Registry/Warning/\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"Configure/Warning/\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"Policy/Warning/\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"Resource/Limit/Error/\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"Type/Error/\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"Option/Error/\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"Delegate/Error/\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"Missing/Delegate/Error/\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"Corrupt/Image/Error/\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"File/Open/Error/\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"Blob/Error/\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"Stream/Error/\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"Cache/Error/\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"Coder/Error/\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"Filter/Error/\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"Module/Error/\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"Draw/Error/\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"Image/Error/\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Wand/Error/\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"XServer/Error/\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"Monitor/Error/\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"Registry/Error/\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"Configure/Error/\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"Policy/Error/\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"Resource/Limit/FatalError/\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"Type/FatalError/\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"Option/FatalError/\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"Delegate/FatalError/\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"Missing/Delegate/FatalError/\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"Corrupt/Image/FatalError/\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"File/Open/FatalError/\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"Blob/FatalError/\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"Stream/FatalError/\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"Cache/FatalError/\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"Coder/FatalError/\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"Filter/FatalError/\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"Module/FatalError/\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"Draw/FatalError/\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"Image/FatalError/\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"Wand/FatalError/\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"XServer/FatalError/\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"Monitor/FatalError/\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"Registry/FatalError/\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"Configure/FatalError/\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"Policy/FatalError/\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.75 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireExceptionInfo() local_unnamed_addr #0 !dbg !176 {
entry:
  %exception1 = alloca %struct._ExceptionInfo, align 8
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 56) #14, !dbg !185
  call void @llvm.dbg.value(metadata ptr %call, metadata !180, metadata !DIExpression()), !dbg !186
  %cmp = icmp eq ptr %call, null, !dbg !187
  br i1 %cmp, label %if.then, label %if.end, !dbg !188

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception1) #15, !dbg !189
  call void @llvm.dbg.declare(metadata ptr %exception1, metadata !184, metadata !DIExpression()), !dbg !189
  call void @GetExceptionInfo(ptr noundef nonnull %exception1), !dbg !189
  %call2 = tail call ptr @__errno_location() #16, !dbg !189
  %0 = load i32, ptr %call2, align 4, !dbg !189, !tbaa !190
  %call3 = call ptr @GetExceptionMessage(i32 noundef %0), !dbg !189
  call void @llvm.dbg.value(metadata ptr %call3, metadata !181, metadata !DIExpression()), !dbg !194
  %call4 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 108, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call3), !dbg !189
  %call5 = call ptr @DestroyString(ptr noundef %call3) #15, !dbg !189
  call void @llvm.dbg.value(metadata ptr %call5, metadata !181, metadata !DIExpression()), !dbg !194
  call void @CatchException(ptr noundef nonnull %exception1), !dbg !189
  %call6 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception1), !dbg !189
  call void @MagickCoreTerminus() #15, !dbg !189
  call void @_exit(i32 noundef 1) #17, !dbg !189
  unreachable, !dbg !189

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %call, metadata !195, metadata !DIExpression()) #15, !dbg !200
  %call.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 56) #15, !dbg !202
  store i32 0, ptr %call, align 8, !dbg !203, !tbaa !204
  %call1.i = tail call ptr @NewLinkedList(i64 noundef 0) #15, !dbg !208
  %exceptions.i = getelementptr inbounds %struct._ExceptionInfo, ptr %call, i64 0, i32 4, !dbg !209
  store ptr %call1.i, ptr %exceptions.i, align 8, !dbg !210, !tbaa !211
  %call2.i = tail call ptr @AllocateSemaphoreInfo() #15, !dbg !212
  %semaphore.i = getelementptr inbounds %struct._ExceptionInfo, ptr %call, i64 0, i32 6, !dbg !213
  store ptr %call2.i, ptr %semaphore.i, align 8, !dbg !214, !tbaa !215
  %signature.i = getelementptr inbounds %struct._ExceptionInfo, ptr %call, i64 0, i32 7, !dbg !216
  store i64 2880220587, ptr %signature.i, align 8, !dbg !217, !tbaa !218
  %relinquish = getelementptr inbounds %struct._ExceptionInfo, ptr %call, i64 0, i32 5, !dbg !219
  store i32 1, ptr %relinquish, align 8, !dbg !220, !tbaa !221
  ret ptr %call, !dbg !222
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: allocsize(0)
declare !dbg !223 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @GetExceptionInfo(ptr noundef %exception) local_unnamed_addr #0 !dbg !196 {
entry:
  call void @llvm.dbg.value(metadata ptr %exception, metadata !195, metadata !DIExpression()), !dbg !229
  %call = tail call ptr @ResetMagickMemory(ptr noundef %exception, i32 noundef 0, i64 noundef 56) #15, !dbg !230
  store i32 0, ptr %exception, align 8, !dbg !231, !tbaa !204
  %call1 = tail call ptr @NewLinkedList(i64 noundef 0) #15, !dbg !232
  %exceptions = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 4, !dbg !233
  store ptr %call1, ptr %exceptions, align 8, !dbg !234, !tbaa !211
  %call2 = tail call ptr @AllocateSemaphoreInfo() #15, !dbg !235
  %semaphore = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 6, !dbg !236
  store ptr %call2, ptr %semaphore, align 8, !dbg !237, !tbaa !215
  %signature = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 7, !dbg !238
  store i64 2880220587, ptr %signature, align 8, !dbg !239, !tbaa !218
  ret void, !dbg !240
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetExceptionMessage(i32 noundef %error) local_unnamed_addr #0 !dbg !241 {
entry:
  %exception = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %error, metadata !246, metadata !DIExpression()), !dbg !251
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %exception) #15, !dbg !252
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !247, metadata !DIExpression()), !dbg !253
  store i8 0, ptr %exception, align 16, !dbg !254, !tbaa !255
  %call = tail call ptr @strerror(i32 noundef %error) #15, !dbg !256
  %call2 = call i64 @CopyMagickString(ptr noundef nonnull %exception, ptr noundef %call, i64 noundef 4096) #15, !dbg !257
  %call4 = call ptr @ConstantString(ptr noundef nonnull %exception) #15, !dbg !258
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %exception) #15, !dbg !259
  ret ptr %call4, !dbg !260
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @ThrowMagickException(ptr noundef %exception, ptr noundef %module, ptr noundef %function, i64 noundef %line, i32 noundef %severity, ptr noundef %tag, ptr noundef %format, ...) local_unnamed_addr #0 !dbg !261 {
entry:
  %operands = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %exception, metadata !265, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.value(metadata ptr %module, metadata !266, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.value(metadata ptr %function, metadata !267, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.value(metadata i64 %line, metadata !268, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.value(metadata i32 %severity, metadata !269, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.value(metadata ptr %tag, metadata !270, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.value(metadata ptr %format, metadata !271, metadata !DIExpression()), !dbg !289
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %operands) #15, !dbg !290
  call void @llvm.dbg.declare(metadata ptr %operands, metadata !273, metadata !DIExpression()), !dbg !291
  call void @llvm.va_start(ptr nonnull %operands), !dbg !292
  %call = call i32 @ThrowMagickExceptionList(ptr noundef %exception, ptr noundef %module, ptr noundef %function, i64 noundef %line, i32 noundef %severity, ptr noundef %tag, ptr noundef %format, ptr noundef nonnull %operands), !dbg !293
  call void @llvm.dbg.value(metadata i32 %call, metadata !272, metadata !DIExpression()), !dbg !289
  call void @llvm.va_end(ptr nonnull %operands), !dbg !294
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %operands) #15, !dbg !295
  ret i32 %call, !dbg !296
}

declare !dbg !297 ptr @DestroyString(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @CatchException(ptr nocapture noundef %exception) local_unnamed_addr #0 !dbg !301 {
entry:
  call void @llvm.dbg.value(metadata ptr %exception, metadata !303, metadata !DIExpression()), !dbg !305
  %exceptions = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 4, !dbg !306
  %0 = load ptr, ptr %exceptions, align 8, !dbg !306, !tbaa !211
  %cmp = icmp eq ptr %0, null, !dbg !308
  br i1 %cmp, label %cleanup, label %if.end, !dbg !309

if.end:                                           ; preds = %entry
  %semaphore = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 6, !dbg !310
  %1 = load ptr, ptr %semaphore, align 8, !dbg !310, !tbaa !215
  tail call void @LockSemaphoreInfo(ptr noundef %1) #15, !dbg !311
  %2 = load ptr, ptr %exceptions, align 8, !dbg !312, !tbaa !211
  tail call void @ResetLinkedListIterator(ptr noundef %2) #15, !dbg !313
  %3 = load ptr, ptr %exceptions, align 8, !dbg !314, !tbaa !211
  %call = tail call ptr @GetNextValueInLinkedList(ptr noundef %3) #15, !dbg !315
  call void @llvm.dbg.value(metadata ptr %call, metadata !304, metadata !DIExpression()), !dbg !305
  %cmp3.not57 = icmp eq ptr %call, null, !dbg !316
  br i1 %cmp3.not57, label %while.end, label %while.body, !dbg !317

while.body:                                       ; preds = %if.end, %if.end26
  %p.058 = phi ptr [ %call28, %if.end26 ], [ %call, %if.end ]
  call void @llvm.dbg.value(metadata ptr %p.058, metadata !304, metadata !DIExpression()), !dbg !305
  %4 = load i32, ptr %p.058, align 8, !dbg !318, !tbaa !204
  %5 = add i32 %4, -300, !dbg !321
  %6 = icmp ult i32 %5, 100, !dbg !321
  br i1 %6, label %if.then7, label %if.end9, !dbg !321

if.then7:                                         ; preds = %while.body
  call void @llvm.dbg.value(metadata i32 %4, metadata !322, metadata !DIExpression()) #15, !dbg !327
  call void @llvm.dbg.value(metadata ptr undef, metadata !325, metadata !DIExpression()) #15, !dbg !327
  call void @llvm.dbg.value(metadata ptr undef, metadata !326, metadata !DIExpression()) #15, !dbg !327
  %7 = load ptr, ptr @warning_handler, align 8, !dbg !329, !tbaa !331
  %cmp.not.i = icmp eq ptr %7, null, !dbg !332
  br i1 %cmp.not.i, label %if.end9, label %if.then.i, !dbg !333

if.then.i:                                        ; preds = %if.then7
  %description = getelementptr inbounds %struct._ExceptionInfo, ptr %p.058, i64 0, i32 3, !dbg !334
  %8 = load ptr, ptr %description, align 8, !dbg !334, !tbaa !335
  call void @llvm.dbg.value(metadata ptr %8, metadata !326, metadata !DIExpression()) #15, !dbg !327
  %reason = getelementptr inbounds %struct._ExceptionInfo, ptr %p.058, i64 0, i32 2, !dbg !336
  %9 = load ptr, ptr %reason, align 8, !dbg !336, !tbaa !337
  call void @llvm.dbg.value(metadata ptr %9, metadata !325, metadata !DIExpression()) #15, !dbg !327
  tail call void %7(i32 noundef %4, ptr noundef %9, ptr noundef %8) #15, !dbg !338
  %.pre = load i32, ptr %p.058, align 8, !dbg !339, !tbaa !204
  br label %if.end9, !dbg !338

if.end9:                                          ; preds = %if.then.i, %if.then7, %while.body
  %10 = phi i32 [ %.pre, %if.then.i ], [ %4, %if.then7 ], [ %4, %while.body ], !dbg !339
  %11 = add i32 %10, -400, !dbg !341
  %12 = icmp ult i32 %11, 300, !dbg !341
  br i1 %12, label %if.then15, label %if.end19, !dbg !341

if.then15:                                        ; preds = %if.end9
  call void @llvm.dbg.value(metadata i32 %10, metadata !342, metadata !DIExpression()) #15, !dbg !347
  call void @llvm.dbg.value(metadata ptr undef, metadata !345, metadata !DIExpression()) #15, !dbg !347
  call void @llvm.dbg.value(metadata ptr undef, metadata !346, metadata !DIExpression()) #15, !dbg !347
  %13 = load ptr, ptr @error_handler, align 8, !dbg !349, !tbaa !331
  %cmp.not.i53 = icmp eq ptr %13, null, !dbg !351
  br i1 %cmp.not.i53, label %if.end26, label %if.then.i54, !dbg !352

if.then.i54:                                      ; preds = %if.then15
  %description18 = getelementptr inbounds %struct._ExceptionInfo, ptr %p.058, i64 0, i32 3, !dbg !353
  %14 = load ptr, ptr %description18, align 8, !dbg !353, !tbaa !335
  call void @llvm.dbg.value(metadata ptr %14, metadata !346, metadata !DIExpression()) #15, !dbg !347
  %reason17 = getelementptr inbounds %struct._ExceptionInfo, ptr %p.058, i64 0, i32 2, !dbg !354
  %15 = load ptr, ptr %reason17, align 8, !dbg !354, !tbaa !337
  call void @llvm.dbg.value(metadata ptr %15, metadata !345, metadata !DIExpression()) #15, !dbg !347
  tail call void %13(i32 noundef %10, ptr noundef %15, ptr noundef %14) #15, !dbg !355
  %.pr.pre = load i32, ptr %p.058, align 8, !dbg !356, !tbaa !204
  br label %if.end19, !dbg !355

if.end19:                                         ; preds = %if.then.i54, %if.end9
  %16 = phi i32 [ %10, %if.end9 ], [ %.pr.pre, %if.then.i54 ], !dbg !356
  %cmp21 = icmp ugt i32 %16, 699, !dbg !358
  br i1 %cmp21, label %if.then22, label %if.end26, !dbg !359

if.then22:                                        ; preds = %if.end19
  call void @llvm.dbg.value(metadata i32 %16, metadata !360, metadata !DIExpression()) #15, !dbg !365
  call void @llvm.dbg.value(metadata ptr undef, metadata !363, metadata !DIExpression()) #15, !dbg !365
  call void @llvm.dbg.value(metadata ptr undef, metadata !364, metadata !DIExpression()) #15, !dbg !365
  %17 = load ptr, ptr @fatal_error_handler, align 8, !dbg !367, !tbaa !331
  %cmp.not.i55 = icmp eq ptr %17, null, !dbg !369
  br i1 %cmp.not.i55, label %if.end26, label %if.then.i56, !dbg !370

if.then.i56:                                      ; preds = %if.then22
  %description25 = getelementptr inbounds %struct._ExceptionInfo, ptr %p.058, i64 0, i32 3, !dbg !371
  %18 = load ptr, ptr %description25, align 8, !dbg !371, !tbaa !335
  call void @llvm.dbg.value(metadata ptr %18, metadata !364, metadata !DIExpression()) #15, !dbg !365
  %reason24 = getelementptr inbounds %struct._ExceptionInfo, ptr %p.058, i64 0, i32 2, !dbg !372
  %19 = load ptr, ptr %reason24, align 8, !dbg !372, !tbaa !337
  call void @llvm.dbg.value(metadata ptr %19, metadata !363, metadata !DIExpression()) #15, !dbg !365
  tail call void %17(i32 noundef %16, ptr noundef %19, ptr noundef %18) #15, !dbg !373
  br label %if.end26, !dbg !373

if.end26:                                         ; preds = %if.then15, %if.then.i56, %if.then22, %if.end19
  %20 = load ptr, ptr %exceptions, align 8, !dbg !374, !tbaa !211
  %call28 = tail call ptr @GetNextValueInLinkedList(ptr noundef %20) #15, !dbg !375
  call void @llvm.dbg.value(metadata ptr %call28, metadata !304, metadata !DIExpression()), !dbg !305
  %cmp3.not = icmp eq ptr %call28, null, !dbg !316
  br i1 %cmp3.not, label %while.end, label %while.body, !dbg !317, !llvm.loop !376

while.end:                                        ; preds = %if.end26, %if.end
  %21 = load ptr, ptr %semaphore, align 8, !dbg !380, !tbaa !215
  tail call void @UnlockSemaphoreInfo(ptr noundef %21) #15, !dbg !381
  call void @llvm.dbg.value(metadata ptr %exception, metadata !382, metadata !DIExpression()) #15, !dbg !385
  %22 = load ptr, ptr %exceptions, align 8, !dbg !387, !tbaa !211
  %cmp.i = icmp eq ptr %22, null, !dbg !389
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !390

if.end.i:                                         ; preds = %while.end
  %23 = load ptr, ptr %semaphore, align 8, !dbg !391, !tbaa !215
  tail call void @LockSemaphoreInfo(ptr noundef %23) #15, !dbg !392
  %24 = load ptr, ptr %exceptions, align 8, !dbg !393, !tbaa !211
  tail call void @ClearLinkedList(ptr noundef %24, ptr noundef nonnull @DestroyExceptionElement) #15, !dbg !394
  store i32 0, ptr %exception, align 8, !dbg !395, !tbaa !204
  %reason.i = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 2, !dbg !396
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %reason.i, i8 0, i64 16, i1 false) #15, !dbg !397
  %25 = load ptr, ptr %semaphore, align 8, !dbg !398, !tbaa !215
  tail call void @UnlockSemaphoreInfo(ptr noundef %25) #15, !dbg !399
  %call.i = tail call ptr @__errno_location() #16, !dbg !400
  store i32 0, ptr %call.i, align 4, !dbg !401, !tbaa !190
  br label %cleanup, !dbg !402

cleanup:                                          ; preds = %if.end.i, %while.end, %entry
  ret void, !dbg !403
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyExceptionInfo(ptr noundef %exception) local_unnamed_addr #0 !dbg !404 {
entry:
  call void @llvm.dbg.value(metadata ptr %exception, metadata !408, metadata !DIExpression()), !dbg !410
  %semaphore = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 6, !dbg !411
  %0 = load ptr, ptr %semaphore, align 8, !dbg !411, !tbaa !215
  %cmp = icmp eq ptr %0, null, !dbg !413
  br i1 %cmp, label %if.then, label %if.end, !dbg !414

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull %semaphore) #15, !dbg !415
  %.pre = load ptr, ptr %semaphore, align 8, !dbg !416, !tbaa !215
  br label %if.end, !dbg !415

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !416
  tail call void @LockSemaphoreInfo(ptr noundef %1) #15, !dbg !417
  store i32 0, ptr %exception, align 8, !dbg !418, !tbaa !204
  %relinquish3 = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 5, !dbg !419
  %2 = load i32, ptr %relinquish3, align 8, !dbg !419, !tbaa !221
  %cmp4.not = icmp eq i32 %2, 0, !dbg !421
  br i1 %cmp4.not, label %if.else, label %if.then5, !dbg !422

if.then5:                                         ; preds = %if.end
  %signature = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 7, !dbg !423
  store i64 -2880220588, ptr %signature, align 8, !dbg !425, !tbaa !218
  %exceptions = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 4, !dbg !426
  %3 = load ptr, ptr %exceptions, align 8, !dbg !426, !tbaa !211
  %cmp6.not = icmp eq ptr %3, null, !dbg !428
  br i1 %cmp6.not, label %if.end16, label %if.then7, !dbg !429

if.then7:                                         ; preds = %if.then5
  %call = tail call ptr @DestroyLinkedList(ptr noundef nonnull %3, ptr noundef nonnull @DestroyExceptionElement) #15, !dbg !430
  store ptr %call, ptr %exceptions, align 8, !dbg !431, !tbaa !211
  br label %if.end16, !dbg !432

if.else:                                          ; preds = %if.end
  %exceptions11 = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 4, !dbg !433
  %4 = load ptr, ptr %exceptions11, align 8, !dbg !433, !tbaa !211
  %cmp12.not = icmp eq ptr %4, null, !dbg !435
  br i1 %cmp12.not, label %if.end16, label %if.then13, !dbg !436

if.then13:                                        ; preds = %if.else
  tail call void @ClearLinkedList(ptr noundef nonnull %4, ptr noundef nonnull @DestroyExceptionElement) #15, !dbg !437
  br label %if.end16, !dbg !437

if.end16:                                         ; preds = %if.else, %if.then13, %if.then5, %if.then7
  %5 = load i32, ptr %relinquish3, align 8, !dbg !438, !tbaa !221
  call void @llvm.dbg.value(metadata i32 %5, metadata !409, metadata !DIExpression()), !dbg !410
  %6 = load ptr, ptr %semaphore, align 8, !dbg !439, !tbaa !215
  tail call void @UnlockSemaphoreInfo(ptr noundef %6) #15, !dbg !440
  %cmp19.not = icmp eq i32 %5, 0, !dbg !441
  br i1 %cmp19.not, label %if.end23, label %if.then20, !dbg !443

if.then20:                                        ; preds = %if.end16
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %semaphore) #15, !dbg !444
  %call22 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %exception) #15, !dbg !446
  call void @llvm.dbg.value(metadata ptr %call22, metadata !408, metadata !DIExpression()), !dbg !410
  br label %if.end23, !dbg !447

if.end23:                                         ; preds = %if.then20, %if.end16
  %exception.addr.0 = phi ptr [ %call22, %if.then20 ], [ %exception, %if.end16 ]
  call void @llvm.dbg.value(metadata ptr %exception.addr.0, metadata !408, metadata !DIExpression()), !dbg !410
  ret ptr %exception.addr.0, !dbg !448
}

declare !dbg !449 void @MagickCoreTerminus() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ClearMagickException(ptr nocapture noundef %exception) local_unnamed_addr #0 !dbg !383 {
entry:
  call void @llvm.dbg.value(metadata ptr %exception, metadata !382, metadata !DIExpression()), !dbg !453
  %exceptions = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 4, !dbg !454
  %0 = load ptr, ptr %exceptions, align 8, !dbg !454, !tbaa !211
  %cmp = icmp eq ptr %0, null, !dbg !455
  br i1 %cmp, label %return, label %if.end, !dbg !456

if.end:                                           ; preds = %entry
  %semaphore = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 6, !dbg !457
  %1 = load ptr, ptr %semaphore, align 8, !dbg !457, !tbaa !215
  tail call void @LockSemaphoreInfo(ptr noundef %1) #15, !dbg !458
  %2 = load ptr, ptr %exceptions, align 8, !dbg !459, !tbaa !211
  tail call void @ClearLinkedList(ptr noundef %2, ptr noundef nonnull @DestroyExceptionElement) #15, !dbg !460
  store i32 0, ptr %exception, align 8, !dbg !461, !tbaa !204
  %reason = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 2, !dbg !462
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %reason, i8 0, i64 16, i1 false), !dbg !463
  %3 = load ptr, ptr %semaphore, align 8, !dbg !464, !tbaa !215
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #15, !dbg !465
  %call = tail call ptr @__errno_location() #16, !dbg !466
  store i32 0, ptr %call, align 4, !dbg !467, !tbaa !190
  br label %return, !dbg !468

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !468
}

declare !dbg !469 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #5

declare !dbg !472 void @ClearLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noalias ptr @DestroyExceptionElement(ptr noundef %exception) #0 !dbg !478 {
entry:
  call void @llvm.dbg.value(metadata ptr %exception, metadata !480, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata ptr %exception, metadata !481, metadata !DIExpression()), !dbg !482
  %reason = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 2, !dbg !483
  %0 = load ptr, ptr %reason, align 8, !dbg !483, !tbaa !337
  %cmp.not = icmp eq ptr %0, null, !dbg !485
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !486

if.then:                                          ; preds = %entry
  %call = tail call ptr @DestroyString(ptr noundef nonnull %0) #15, !dbg !487
  store ptr %call, ptr %reason, align 8, !dbg !488, !tbaa !337
  br label %if.end, !dbg !489

if.end:                                           ; preds = %if.then, %entry
  %description = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 3, !dbg !490
  %1 = load ptr, ptr %description, align 8, !dbg !490, !tbaa !335
  %cmp3.not = icmp eq ptr %1, null, !dbg !492
  br i1 %cmp3.not, label %if.end8, label %if.then4, !dbg !493

if.then4:                                         ; preds = %if.end
  %call6 = tail call ptr @DestroyString(ptr noundef nonnull %1) #15, !dbg !494
  store ptr %call6, ptr %description, align 8, !dbg !495, !tbaa !335
  br label %if.end8, !dbg !496

if.end8:                                          ; preds = %if.then4, %if.end
  %call9 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %exception) #15, !dbg !497
  call void @llvm.dbg.value(metadata ptr %call9, metadata !481, metadata !DIExpression()), !dbg !482
  ret ptr null, !dbg !498
}

declare !dbg !499 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #5

declare !dbg !500 void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #5

declare !dbg !503 ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @MagickWarning(i32 noundef %warning, ptr noundef %reason, ptr noundef %description) local_unnamed_addr #0 !dbg !323 {
entry:
  call void @llvm.dbg.value(metadata i32 %warning, metadata !322, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata ptr %reason, metadata !325, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata ptr %description, metadata !326, metadata !DIExpression()), !dbg !506
  %0 = load ptr, ptr @warning_handler, align 8, !dbg !507, !tbaa !331
  %cmp.not = icmp eq ptr %0, null, !dbg !508
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !509

if.then:                                          ; preds = %entry
  tail call void %0(i32 noundef %warning, ptr noundef %reason, ptr noundef %description) #15, !dbg !510
  br label %if.end, !dbg !510

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !511
}

; Function Attrs: nounwind uwtable
define dso_local void @MagickError(i32 noundef %error, ptr noundef %reason, ptr noundef %description) local_unnamed_addr #0 !dbg !343 {
entry:
  call void @llvm.dbg.value(metadata i32 %error, metadata !342, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata ptr %reason, metadata !345, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata ptr %description, metadata !346, metadata !DIExpression()), !dbg !512
  %0 = load ptr, ptr @error_handler, align 8, !dbg !513, !tbaa !331
  %cmp.not = icmp eq ptr %0, null, !dbg !514
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !515

if.then:                                          ; preds = %entry
  tail call void %0(i32 noundef %error, ptr noundef %reason, ptr noundef %description) #15, !dbg !516
  br label %if.end, !dbg !516

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !517
}

; Function Attrs: nounwind uwtable
define dso_local void @MagickFatalError(i32 noundef %error, ptr noundef %reason, ptr noundef %description) local_unnamed_addr #0 !dbg !361 {
entry:
  call void @llvm.dbg.value(metadata i32 %error, metadata !360, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata ptr %reason, metadata !363, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata ptr %description, metadata !364, metadata !DIExpression()), !dbg !518
  %0 = load ptr, ptr @fatal_error_handler, align 8, !dbg !519, !tbaa !331
  %cmp.not = icmp eq ptr %0, null, !dbg !520
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !521

if.then:                                          ; preds = %entry
  tail call void %0(i32 noundef %error, ptr noundef %reason, ptr noundef %description) #15, !dbg !522
  br label %if.end, !dbg !522

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !523
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneExceptionInfo(ptr nocapture noundef readonly %exception) local_unnamed_addr #0 !dbg !524 {
entry:
  %exception1 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %exception, metadata !526, metadata !DIExpression()), !dbg !532
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 56) #14, !dbg !533
  call void @llvm.dbg.value(metadata ptr %call, metadata !527, metadata !DIExpression()), !dbg !532
  %cmp = icmp eq ptr %call, null, !dbg !534
  br i1 %cmp, label %if.then, label %if.end, !dbg !535

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception1) #15, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %exception1, metadata !531, metadata !DIExpression()), !dbg !536
  call void @GetExceptionInfo(ptr noundef nonnull %exception1), !dbg !536
  %call2 = tail call ptr @__errno_location() #16, !dbg !536
  %0 = load i32, ptr %call2, align 4, !dbg !536, !tbaa !190
  %call3 = call ptr @GetExceptionMessage(i32 noundef %0), !dbg !536
  call void @llvm.dbg.value(metadata ptr %call3, metadata !528, metadata !DIExpression()), !dbg !537
  %call4 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 248, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call3), !dbg !536
  %call5 = call ptr @DestroyString(ptr noundef %call3) #15, !dbg !536
  call void @llvm.dbg.value(metadata ptr %call5, metadata !528, metadata !DIExpression()), !dbg !537
  call void @CatchException(ptr noundef nonnull %exception1), !dbg !536
  %call6 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception1), !dbg !536
  call void @MagickCoreTerminus() #15, !dbg !536
  call void @_exit(i32 noundef 1) #17, !dbg !536
  unreachable, !dbg !536

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %call, metadata !195, metadata !DIExpression()) #15, !dbg !538
  %call.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 56) #15, !dbg !540
  store i32 0, ptr %call, align 8, !dbg !541, !tbaa !204
  %call1.i = tail call ptr @NewLinkedList(i64 noundef 0) #15, !dbg !542
  %exceptions.i = getelementptr inbounds %struct._ExceptionInfo, ptr %call, i64 0, i32 4, !dbg !543
  store ptr %call1.i, ptr %exceptions.i, align 8, !dbg !544, !tbaa !211
  %call2.i = tail call ptr @AllocateSemaphoreInfo() #15, !dbg !545
  %semaphore.i = getelementptr inbounds %struct._ExceptionInfo, ptr %call, i64 0, i32 6, !dbg !546
  store ptr %call2.i, ptr %semaphore.i, align 8, !dbg !547, !tbaa !215
  %signature.i = getelementptr inbounds %struct._ExceptionInfo, ptr %call, i64 0, i32 7, !dbg !548
  store i64 2880220587, ptr %signature.i, align 8, !dbg !549, !tbaa !218
  tail call void @InheritException(ptr noundef nonnull %call, ptr noundef %exception), !dbg !550
  %relinquish = getelementptr inbounds %struct._ExceptionInfo, ptr %call, i64 0, i32 5, !dbg !551
  store i32 1, ptr %relinquish, align 8, !dbg !552, !tbaa !221
  ret ptr %call, !dbg !553
}

; Function Attrs: nounwind uwtable
define dso_local void @InheritException(ptr nocapture noundef %exception, ptr nocapture noundef readonly %relative) local_unnamed_addr #0 !dbg !554 {
entry:
  call void @llvm.dbg.value(metadata ptr %exception, metadata !558, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata ptr %relative, metadata !559, metadata !DIExpression()), !dbg !561
  %exceptions = getelementptr inbounds %struct._ExceptionInfo, ptr %relative, i64 0, i32 4, !dbg !562
  %0 = load ptr, ptr %exceptions, align 8, !dbg !562, !tbaa !211
  %cmp = icmp eq ptr %0, null, !dbg !564
  br i1 %cmp, label %cleanup, label %if.end, !dbg !565

if.end:                                           ; preds = %entry
  %semaphore = getelementptr inbounds %struct._ExceptionInfo, ptr %relative, i64 0, i32 6, !dbg !566
  %1 = load ptr, ptr %semaphore, align 8, !dbg !566, !tbaa !215
  tail call void @LockSemaphoreInfo(ptr noundef %1) #15, !dbg !567
  %2 = load ptr, ptr %exceptions, align 8, !dbg !568, !tbaa !211
  tail call void @ResetLinkedListIterator(ptr noundef %2) #15, !dbg !569
  %3 = load ptr, ptr %exceptions, align 8, !dbg !570, !tbaa !211
  %call = tail call ptr @GetNextValueInLinkedList(ptr noundef %3) #15, !dbg !571
  call void @llvm.dbg.value(metadata ptr %call, metadata !560, metadata !DIExpression()), !dbg !561
  %cmp3.not16 = icmp eq ptr %call, null, !dbg !572
  br i1 %cmp3.not16, label %while.end, label %while.body, !dbg !573

while.body:                                       ; preds = %if.end, %while.body
  %p.017 = phi ptr [ %call6, %while.body ], [ %call, %if.end ]
  call void @llvm.dbg.value(metadata ptr %p.017, metadata !560, metadata !DIExpression()), !dbg !561
  %4 = load i32, ptr %p.017, align 8, !dbg !574, !tbaa !204
  %reason = getelementptr inbounds %struct._ExceptionInfo, ptr %p.017, i64 0, i32 2, !dbg !576
  %5 = load ptr, ptr %reason, align 8, !dbg !576, !tbaa !337
  %description = getelementptr inbounds %struct._ExceptionInfo, ptr %p.017, i64 0, i32 3, !dbg !577
  %6 = load ptr, ptr %description, align 8, !dbg !577, !tbaa !335
  %call4 = tail call i32 @ThrowException(ptr noundef %exception, i32 noundef %4, ptr noundef %5, ptr noundef %6), !dbg !578
  %7 = load ptr, ptr %exceptions, align 8, !dbg !579, !tbaa !211
  %call6 = tail call ptr @GetNextValueInLinkedList(ptr noundef %7) #15, !dbg !580
  call void @llvm.dbg.value(metadata ptr %call6, metadata !560, metadata !DIExpression()), !dbg !561
  %cmp3.not = icmp eq ptr %call6, null, !dbg !572
  br i1 %cmp3.not, label %while.end, label %while.body, !dbg !573, !llvm.loop !581

while.end:                                        ; preds = %while.body, %if.end
  %8 = load ptr, ptr %semaphore, align 8, !dbg !583, !tbaa !215
  tail call void @UnlockSemaphoreInfo(ptr noundef %8) #15, !dbg !584
  br label %cleanup, !dbg !585

cleanup:                                          ; preds = %entry, %while.end
  ret void, !dbg !585
}

declare !dbg !586 void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #5

declare !dbg !590 ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !593 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #5

declare !dbg !594 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #5

declare !dbg !595 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !598 ptr @NewLinkedList(i64 noundef) local_unnamed_addr #5

declare !dbg !601 ptr @AllocateSemaphoreInfo() local_unnamed_addr #5

declare !dbg !604 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

declare !dbg !607 ptr @ConstantString(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @GetLocaleExceptionMessage(i32 noundef %severity, ptr noundef %tag) local_unnamed_addr #0 !dbg !610 {
entry:
  %message = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %severity, metadata !614, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata ptr %tag, metadata !615, metadata !DIExpression()), !dbg !618
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message) #15, !dbg !619
  call void @llvm.dbg.declare(metadata ptr %message, metadata !616, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 %severity, metadata !621, metadata !DIExpression()), !dbg !626
  switch i32 %severity, label %sw.epilog.i [
    i32 300, label %ExceptionSeverityToTag.exit
    i32 305, label %sw.bb1.i
    i32 310, label %sw.bb2.i
    i32 315, label %sw.bb3.i
    i32 320, label %sw.bb4.i
    i32 325, label %sw.bb5.i
    i32 330, label %sw.bb6.i
    i32 335, label %sw.bb7.i
    i32 340, label %sw.bb8.i
    i32 345, label %sw.bb9.i
    i32 350, label %sw.bb10.i
    i32 352, label %sw.bb11.i
    i32 355, label %sw.bb12.i
    i32 360, label %sw.bb13.i
    i32 365, label %sw.bb14.i
    i32 370, label %sw.bb15.i
    i32 380, label %sw.bb16.i
    i32 385, label %sw.bb17.i
    i32 390, label %sw.bb18.i
    i32 395, label %sw.bb19.i
    i32 399, label %sw.bb20.i
    i32 400, label %sw.bb21.i
    i32 405, label %sw.bb22.i
    i32 410, label %sw.bb23.i
    i32 415, label %sw.bb24.i
    i32 420, label %sw.bb25.i
    i32 425, label %sw.bb26.i
    i32 430, label %sw.bb27.i
    i32 435, label %sw.bb28.i
    i32 440, label %sw.bb29.i
    i32 445, label %sw.bb30.i
    i32 450, label %sw.bb31.i
    i32 452, label %sw.bb32.i
    i32 455, label %sw.bb33.i
    i32 460, label %sw.bb34.i
    i32 465, label %sw.bb35.i
    i32 470, label %sw.bb36.i
    i32 480, label %sw.bb37.i
    i32 485, label %sw.bb38.i
    i32 490, label %sw.bb39.i
    i32 495, label %sw.bb40.i
    i32 499, label %sw.bb41.i
    i32 700, label %sw.bb42.i
    i32 705, label %sw.bb43.i
    i32 710, label %sw.bb44.i
    i32 715, label %sw.bb45.i
    i32 720, label %sw.bb46.i
    i32 725, label %sw.bb47.i
    i32 730, label %sw.bb48.i
    i32 735, label %sw.bb49.i
    i32 740, label %sw.bb50.i
    i32 745, label %sw.bb51.i
    i32 750, label %sw.bb52.i
    i32 752, label %sw.bb53.i
    i32 755, label %sw.bb54.i
    i32 760, label %sw.bb55.i
    i32 765, label %sw.bb56.i
    i32 770, label %sw.bb57.i
    i32 780, label %sw.bb58.i
    i32 785, label %sw.bb59.i
    i32 790, label %sw.bb60.i
    i32 795, label %sw.bb61.i
    i32 799, label %sw.bb62.i
  ], !dbg !628

sw.bb1.i:                                         ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !629

sw.bb2.i:                                         ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !631

sw.bb3.i:                                         ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !632

sw.bb4.i:                                         ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !633

sw.bb5.i:                                         ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !634

sw.bb6.i:                                         ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !635

sw.bb7.i:                                         ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !636

sw.bb8.i:                                         ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !637

sw.bb9.i:                                         ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !638

sw.bb10.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !639

sw.bb11.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !640

sw.bb12.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !641

sw.bb13.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !642

sw.bb14.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !643

sw.bb15.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !644

sw.bb16.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !645

sw.bb17.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !646

sw.bb18.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !647

sw.bb19.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !648

sw.bb20.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !649

sw.bb21.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !650

sw.bb22.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !651

sw.bb23.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !652

sw.bb24.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !653

sw.bb25.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !654

sw.bb26.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !655

sw.bb27.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !656

sw.bb28.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !657

sw.bb29.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !658

sw.bb30.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !659

sw.bb31.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !660

sw.bb32.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !661

sw.bb33.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !662

sw.bb34.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !663

sw.bb35.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !664

sw.bb36.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !665

sw.bb37.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !666

sw.bb38.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !667

sw.bb39.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !668

sw.bb40.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !669

sw.bb41.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !670

sw.bb42.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !671

sw.bb43.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !672

sw.bb44.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !673

sw.bb45.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !674

sw.bb46.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !675

sw.bb47.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !676

sw.bb48.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !677

sw.bb49.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !678

sw.bb50.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !679

sw.bb51.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !680

sw.bb52.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !681

sw.bb53.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !682

sw.bb54.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !683

sw.bb55.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !684

sw.bb56.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !685

sw.bb57.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !686

sw.bb58.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !687

sw.bb59.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !688

sw.bb60.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !689

sw.bb61.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !690

sw.bb62.i:                                        ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !691

sw.epilog.i:                                      ; preds = %entry
  br label %ExceptionSeverityToTag.exit, !dbg !692

ExceptionSeverityToTag.exit:                      ; preds = %entry, %sw.bb1.i, %sw.bb2.i, %sw.bb3.i, %sw.bb4.i, %sw.bb5.i, %sw.bb6.i, %sw.bb7.i, %sw.bb8.i, %sw.bb9.i, %sw.bb10.i, %sw.bb11.i, %sw.bb12.i, %sw.bb13.i, %sw.bb14.i, %sw.bb15.i, %sw.bb16.i, %sw.bb17.i, %sw.bb18.i, %sw.bb19.i, %sw.bb20.i, %sw.bb21.i, %sw.bb22.i, %sw.bb23.i, %sw.bb24.i, %sw.bb25.i, %sw.bb26.i, %sw.bb27.i, %sw.bb28.i, %sw.bb29.i, %sw.bb30.i, %sw.bb31.i, %sw.bb32.i, %sw.bb33.i, %sw.bb34.i, %sw.bb35.i, %sw.bb36.i, %sw.bb37.i, %sw.bb38.i, %sw.bb39.i, %sw.bb40.i, %sw.bb41.i, %sw.bb42.i, %sw.bb43.i, %sw.bb44.i, %sw.bb45.i, %sw.bb46.i, %sw.bb47.i, %sw.bb48.i, %sw.bb49.i, %sw.bb50.i, %sw.bb51.i, %sw.bb52.i, %sw.bb53.i, %sw.bb54.i, %sw.bb55.i, %sw.bb56.i, %sw.bb57.i, %sw.bb58.i, %sw.bb59.i, %sw.bb60.i, %sw.bb61.i, %sw.bb62.i, %sw.epilog.i
  %retval.0.i = phi ptr [ @.str.1, %sw.epilog.i ], [ @.str.74, %sw.bb62.i ], [ @.str.73, %sw.bb61.i ], [ @.str.72, %sw.bb60.i ], [ @.str.71, %sw.bb59.i ], [ @.str.70, %sw.bb58.i ], [ @.str.69, %sw.bb57.i ], [ @.str.68, %sw.bb56.i ], [ @.str.67, %sw.bb55.i ], [ @.str.66, %sw.bb54.i ], [ @.str.65, %sw.bb53.i ], [ @.str.64, %sw.bb52.i ], [ @.str.63, %sw.bb51.i ], [ @.str.62, %sw.bb50.i ], [ @.str.61, %sw.bb49.i ], [ @.str.60, %sw.bb48.i ], [ @.str.59, %sw.bb47.i ], [ @.str.58, %sw.bb46.i ], [ @.str.57, %sw.bb45.i ], [ @.str.56, %sw.bb44.i ], [ @.str.55, %sw.bb43.i ], [ @.str.54, %sw.bb42.i ], [ @.str.53, %sw.bb41.i ], [ @.str.52, %sw.bb40.i ], [ @.str.51, %sw.bb39.i ], [ @.str.50, %sw.bb38.i ], [ @.str.49, %sw.bb37.i ], [ @.str.48, %sw.bb36.i ], [ @.str.47, %sw.bb35.i ], [ @.str.46, %sw.bb34.i ], [ @.str.45, %sw.bb33.i ], [ @.str.44, %sw.bb32.i ], [ @.str.43, %sw.bb31.i ], [ @.str.42, %sw.bb30.i ], [ @.str.41, %sw.bb29.i ], [ @.str.40, %sw.bb28.i ], [ @.str.39, %sw.bb27.i ], [ @.str.38, %sw.bb26.i ], [ @.str.37, %sw.bb25.i ], [ @.str.36, %sw.bb24.i ], [ @.str.35, %sw.bb23.i ], [ @.str.34, %sw.bb22.i ], [ @.str.33, %sw.bb21.i ], [ @.str.32, %sw.bb20.i ], [ @.str.31, %sw.bb19.i ], [ @.str.30, %sw.bb18.i ], [ @.str.29, %sw.bb17.i ], [ @.str.28, %sw.bb16.i ], [ @.str.27, %sw.bb15.i ], [ @.str.26, %sw.bb14.i ], [ @.str.25, %sw.bb13.i ], [ @.str.24, %sw.bb12.i ], [ @.str.23, %sw.bb11.i ], [ @.str.22, %sw.bb10.i ], [ @.str.21, %sw.bb9.i ], [ @.str.20, %sw.bb8.i ], [ @.str.19, %sw.bb7.i ], [ @.str.18, %sw.bb6.i ], [ @.str.17, %sw.bb5.i ], [ @.str.16, %sw.bb4.i ], [ @.str.15, %sw.bb3.i ], [ @.str.14, %sw.bb2.i ], [ @.str.13, %sw.bb1.i ], [ @.str.12, %entry ], !dbg !626
  %call1 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message, i64 noundef 4096, ptr noundef nonnull @.str.4, ptr noundef nonnull %retval.0.i, ptr noundef %tag) #15, !dbg !693
  %call3 = call ptr @GetLocaleMessage(ptr noundef nonnull %message) #15, !dbg !694
  call void @llvm.dbg.value(metadata ptr %call3, metadata !617, metadata !DIExpression()), !dbg !618
  %cmp = icmp eq ptr %call3, null, !dbg !695
  br i1 %cmp, label %cleanup, label %if.end, !dbg !697

if.end:                                           ; preds = %ExceptionSeverityToTag.exit
  %cmp5 = icmp eq ptr %call3, %message, !dbg !698
  %tag.call3 = select i1 %cmp5, ptr %tag, ptr %call3, !dbg !618
  br label %cleanup, !dbg !618

cleanup:                                          ; preds = %if.end, %ExceptionSeverityToTag.exit
  %retval.0 = phi ptr [ %tag, %ExceptionSeverityToTag.exit ], [ %tag.call3, %if.end ], !dbg !618
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message) #15, !dbg !700
  ret ptr %retval.0, !dbg !700
}

declare !dbg !701 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #5

declare !dbg !711 ptr @GetLocaleMessage(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @ThrowException(ptr nocapture noundef %exception, i32 noundef %severity, ptr noundef %reason, ptr noundef %description) local_unnamed_addr #0 !dbg !714 {
entry:
  %exception16 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %exception, metadata !718, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i32 %severity, metadata !719, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata ptr %reason, metadata !720, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata ptr %description, metadata !721, metadata !DIExpression()), !dbg !728
  %semaphore = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 6, !dbg !729
  %0 = load ptr, ptr %semaphore, align 8, !dbg !729, !tbaa !215
  tail call void @LockSemaphoreInfo(ptr noundef %0) #15, !dbg !730
  %exceptions = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 4, !dbg !731
  %1 = load ptr, ptr %exceptions, align 8, !dbg !731, !tbaa !211
  %call = tail call ptr @GetLastValueInLinkedList(ptr noundef %1) #15, !dbg !732
  call void @llvm.dbg.value(metadata ptr %call, metadata !722, metadata !DIExpression()), !dbg !728
  %cmp.not = icmp eq ptr %call, null, !dbg !733
  br i1 %cmp.not, label %if.end, label %land.lhs.true, !dbg !735

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %call, align 8, !dbg !736, !tbaa !204
  %cmp2 = icmp eq i32 %2, %severity, !dbg !737
  br i1 %cmp2, label %land.lhs.true3, label %if.end, !dbg !738

land.lhs.true3:                                   ; preds = %land.lhs.true
  %reason4 = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 2, !dbg !739
  %3 = load ptr, ptr %reason4, align 8, !dbg !739, !tbaa !337
  %call5 = tail call i32 @LocaleCompare(ptr noundef %3, ptr noundef %reason) #15, !dbg !740
  %cmp6 = icmp eq i32 %call5, 0, !dbg !741
  br i1 %cmp6, label %land.lhs.true7, label %if.end, !dbg !742

land.lhs.true7:                                   ; preds = %land.lhs.true3
  %description8 = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 3, !dbg !743
  %4 = load ptr, ptr %description8, align 8, !dbg !743, !tbaa !335
  %call9 = tail call i32 @LocaleCompare(ptr noundef %4, ptr noundef %description) #15, !dbg !744
  %cmp10 = icmp eq i32 %call9, 0, !dbg !745
  br i1 %cmp10, label %cleanup, label %if.end, !dbg !746

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true3, %land.lhs.true, %entry
  %call12 = tail call ptr @AcquireMagickMemory(i64 noundef 56) #14, !dbg !747
  call void @llvm.dbg.value(metadata ptr %call12, metadata !722, metadata !DIExpression()), !dbg !728
  %cmp13 = icmp eq ptr %call12, null, !dbg !748
  br i1 %cmp13, label %if.then14, label %if.end22, !dbg !749

if.then14:                                        ; preds = %if.end
  %5 = load ptr, ptr %semaphore, align 8, !dbg !750, !tbaa !215
  tail call void @UnlockSemaphoreInfo(ptr noundef %5) #15, !dbg !751
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception16) #15, !dbg !752
  call void @llvm.dbg.declare(metadata ptr %exception16, metadata !727, metadata !DIExpression()), !dbg !752
  call void @GetExceptionInfo(ptr noundef nonnull %exception16), !dbg !752
  %call17 = tail call ptr @__errno_location() #16, !dbg !752
  %6 = load i32, ptr %call17, align 4, !dbg !752, !tbaa !190
  %call18 = call ptr @GetExceptionMessage(i32 noundef %6), !dbg !752
  call void @llvm.dbg.value(metadata ptr %call18, metadata !723, metadata !DIExpression()), !dbg !753
  %call19 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 933, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call18), !dbg !752
  %call20 = call ptr @DestroyString(ptr noundef %call18) #15, !dbg !752
  call void @llvm.dbg.value(metadata ptr %call20, metadata !723, metadata !DIExpression()), !dbg !753
  call void @CatchException(ptr noundef nonnull %exception16), !dbg !752
  %call21 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception16), !dbg !752
  call void @MagickCoreTerminus() #15, !dbg !752
  call void @_exit(i32 noundef 1) #17, !dbg !752
  unreachable, !dbg !752

if.end22:                                         ; preds = %if.end
  %call23 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call12, i32 noundef 0, i64 noundef 56) #15, !dbg !754
  store i32 %severity, ptr %call12, align 8, !dbg !755, !tbaa !204
  %cmp25.not = icmp eq ptr %reason, null, !dbg !756
  br i1 %cmp25.not, label %if.end29, label %if.then26, !dbg !758

if.then26:                                        ; preds = %if.end22
  %call27 = tail call ptr @ConstantString(ptr noundef nonnull %reason) #15, !dbg !759
  %reason28 = getelementptr inbounds %struct._ExceptionInfo, ptr %call12, i64 0, i32 2, !dbg !760
  store ptr %call27, ptr %reason28, align 8, !dbg !761, !tbaa !337
  br label %if.end29, !dbg !762

if.end29:                                         ; preds = %if.then26, %if.end22
  %cmp30.not = icmp eq ptr %description, null, !dbg !763
  br i1 %cmp30.not, label %if.end34, label %if.then31, !dbg !765

if.then31:                                        ; preds = %if.end29
  %call32 = tail call ptr @ConstantString(ptr noundef nonnull %description) #15, !dbg !766
  %description33 = getelementptr inbounds %struct._ExceptionInfo, ptr %call12, i64 0, i32 3, !dbg !767
  store ptr %call32, ptr %description33, align 8, !dbg !768, !tbaa !335
  br label %if.end34, !dbg !769

if.end34:                                         ; preds = %if.then31, %if.end29
  %signature = getelementptr inbounds %struct._ExceptionInfo, ptr %call12, i64 0, i32 7, !dbg !770
  store i64 2880220587, ptr %signature, align 8, !dbg !771, !tbaa !218
  %7 = load ptr, ptr %exceptions, align 8, !dbg !772, !tbaa !211
  %call36 = tail call i32 @AppendValueToLinkedList(ptr noundef %7, ptr noundef nonnull %call12) #15, !dbg !773
  %8 = load i32, ptr %call12, align 8, !dbg !774, !tbaa !204
  %9 = load i32, ptr %exception, align 8, !dbg !776, !tbaa !204
  %cmp39.not = icmp ult i32 %8, %9, !dbg !777
  br i1 %cmp39.not, label %cleanup, label %if.then40, !dbg !778

if.then40:                                        ; preds = %if.end34
  store i32 %8, ptr %exception, align 8, !dbg !779, !tbaa !204
  %reason43 = getelementptr inbounds %struct._ExceptionInfo, ptr %call12, i64 0, i32 2, !dbg !781
  %10 = load ptr, ptr %reason43, align 8, !dbg !781, !tbaa !337
  %reason44 = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 2, !dbg !782
  store ptr %10, ptr %reason44, align 8, !dbg !783, !tbaa !337
  %description45 = getelementptr inbounds %struct._ExceptionInfo, ptr %call12, i64 0, i32 3, !dbg !784
  %11 = load ptr, ptr %description45, align 8, !dbg !784, !tbaa !335
  %description46 = getelementptr inbounds %struct._ExceptionInfo, ptr %exception, i64 0, i32 3, !dbg !785
  store ptr %11, ptr %description46, align 8, !dbg !786, !tbaa !335
  br label %cleanup, !dbg !787

cleanup:                                          ; preds = %if.end34, %if.then40, %land.lhs.true7
  %12 = load ptr, ptr %semaphore, align 8, !dbg !728, !tbaa !215
  tail call void @UnlockSemaphoreInfo(ptr noundef %12) #15, !dbg !728
  ret i32 1, !dbg !788
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local ptr @SetErrorHandler(ptr noundef %handler) local_unnamed_addr #8 !dbg !789 {
entry:
  call void @llvm.dbg.value(metadata ptr %handler, metadata !793, metadata !DIExpression()), !dbg !795
  %0 = load ptr, ptr @error_handler, align 8, !dbg !796, !tbaa !331
  call void @llvm.dbg.value(metadata ptr %0, metadata !794, metadata !DIExpression()), !dbg !795
  store ptr %handler, ptr @error_handler, align 8, !dbg !797, !tbaa !331
  ret ptr %0, !dbg !798
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local ptr @SetFatalErrorHandler(ptr noundef %handler) local_unnamed_addr #8 !dbg !799 {
entry:
  call void @llvm.dbg.value(metadata ptr %handler, metadata !803, metadata !DIExpression()), !dbg !805
  %0 = load ptr, ptr @fatal_error_handler, align 8, !dbg !806, !tbaa !331
  call void @llvm.dbg.value(metadata ptr %0, metadata !804, metadata !DIExpression()), !dbg !805
  store ptr %handler, ptr @fatal_error_handler, align 8, !dbg !807, !tbaa !331
  ret ptr %0, !dbg !808
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local ptr @SetWarningHandler(ptr noundef %handler) local_unnamed_addr #8 !dbg !809 {
entry:
  call void @llvm.dbg.value(metadata ptr %handler, metadata !813, metadata !DIExpression()), !dbg !815
  %0 = load ptr, ptr @warning_handler, align 8, !dbg !816, !tbaa !331
  call void @llvm.dbg.value(metadata ptr %0, metadata !814, metadata !DIExpression()), !dbg !815
  store ptr %handler, ptr @warning_handler, align 8, !dbg !817, !tbaa !331
  ret ptr %0, !dbg !818
}

declare !dbg !819 ptr @GetLastValueInLinkedList(ptr noundef) local_unnamed_addr #5

declare !dbg !820 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !823 i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @ThrowMagickExceptionList(ptr noundef %exception, ptr noundef %module, ptr noundef %function, i64 noundef %line, i32 noundef %severity, ptr noundef %tag, ptr nocapture noundef readonly %format, ptr noundef %operands) local_unnamed_addr #0 !dbg !828 {
entry:
  %message = alloca [4096 x i8], align 16
  %path = alloca [4096 x i8], align 16
  %reason = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %exception, metadata !833, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata ptr %module, metadata !834, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata ptr %function, metadata !835, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i64 %line, metadata !836, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i32 %severity, metadata !837, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata ptr %tag, metadata !838, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata ptr %format, metadata !839, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata ptr %operands, metadata !840, metadata !DIExpression()), !dbg !849
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message) #15, !dbg !850
  call void @llvm.dbg.declare(metadata ptr %message, metadata !841, metadata !DIExpression()), !dbg !851
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path) #15, !dbg !850
  call void @llvm.dbg.declare(metadata ptr %path, metadata !842, metadata !DIExpression()), !dbg !852
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %reason) #15, !dbg !850
  call void @llvm.dbg.declare(metadata ptr %reason, metadata !843, metadata !DIExpression()), !dbg !853
  %call = tail call ptr @GetLocaleExceptionMessage(i32 noundef %severity, ptr noundef %tag), !dbg !854
  call void @llvm.dbg.value(metadata ptr %call, metadata !844, metadata !DIExpression()), !dbg !849
  %call1 = call i64 @CopyMagickString(ptr noundef nonnull %reason, ptr noundef %call, i64 noundef 4096) #15, !dbg !855
  %call3 = call i64 @ConcatenateMagickString(ptr noundef nonnull %reason, ptr noundef nonnull @.str.5, i64 noundef 4096) #15, !dbg !856
  %call5 = call i64 @strlen(ptr noundef nonnull %reason) #18, !dbg !857
  call void @llvm.dbg.value(metadata i64 %call5, metadata !848, metadata !DIExpression()), !dbg !849
  %add.ptr = getelementptr inbounds i8, ptr %reason, i64 %call5, !dbg !858
  %sub = sub i64 4096, %call5, !dbg !859
  %call7 = call i32 @vsnprintf(ptr noundef nonnull %add.ptr, i64 noundef %sub, ptr noundef %format, ptr noundef %operands) #15, !dbg !860
  call void @llvm.dbg.value(metadata i32 %call7, metadata !846, metadata !DIExpression()), !dbg !849
  %cmp = icmp slt i32 %call7, 0, !dbg !861
  br i1 %cmp, label %if.then, label %if.end, !dbg !863

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [4096 x i8], ptr %reason, i64 0, i64 4095, !dbg !864
  store i8 0, ptr %arrayidx, align 1, !dbg !865, !tbaa !255
  br label %if.end, !dbg !864

if.end:                                           ; preds = %if.then, %entry
  %call9 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 256, ptr noundef %module, ptr noundef %function, i64 noundef %line, ptr noundef nonnull @.str.6, ptr noundef nonnull %reason) #15, !dbg !866
  call void @llvm.dbg.value(metadata i32 %call9, metadata !847, metadata !DIExpression()), !dbg !849
  call void @GetPathComponent(ptr noundef %module, i32 noundef 4, ptr noundef nonnull %path) #15, !dbg !867
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !845, metadata !DIExpression()), !dbg !849
  %0 = add i32 %severity, -300, !dbg !868
  %1 = icmp ult i32 %0, 100, !dbg !868
  %spec.store.select = select i1 %1, ptr @.str.8, ptr @.str.7, !dbg !868
  call void @llvm.dbg.value(metadata ptr %spec.store.select, metadata !845, metadata !DIExpression()), !dbg !849
  %2 = add i32 %severity, -400, !dbg !870
  %3 = icmp ult i32 %2, 300, !dbg !870
  %spec.store.select30 = select i1 %3, ptr @.str.9, ptr %spec.store.select, !dbg !870
  call void @llvm.dbg.value(metadata ptr %spec.store.select30, metadata !845, metadata !DIExpression()), !dbg !849
  %cmp20 = icmp ugt i32 %severity, 699, !dbg !872
  %spec.store.select31 = select i1 %cmp20, ptr @.str.10, ptr %spec.store.select30, !dbg !874
  call void @llvm.dbg.value(metadata ptr %spec.store.select31, metadata !845, metadata !DIExpression()), !dbg !849
  %conv = uitofp i64 %line to double, !dbg !875
  %call26 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef nonnull %reason, ptr noundef nonnull %spec.store.select31, ptr noundef nonnull %path, ptr noundef %function, double noundef %conv) #15, !dbg !876
  %call28 = call i32 @ThrowException(ptr noundef %exception, i32 noundef %severity, ptr noundef nonnull %message, ptr noundef null), !dbg !877
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %reason) #15, !dbg !878
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #15, !dbg !878
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message) #15, !dbg !878
  ret i32 %call9, !dbg !879
}

declare !dbg !880 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

declare !dbg !881 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #5

declare !dbg !886 void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #11

; Function Attrs: nounwind uwtable
define internal void @DefaultErrorHandler(i32 noundef %severity, ptr noundef %reason, ptr noundef %description) #0 !dbg !890 {
entry:
  call void @llvm.dbg.value(metadata i32 %severity, metadata !892, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr %reason, metadata !893, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr %description, metadata !894, metadata !DIExpression()), !dbg !895
  %cmp = icmp eq ptr %reason, null, !dbg !896
  br i1 %cmp, label %return, label %if.end, !dbg !898

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !899, !tbaa !331
  %call = tail call ptr @GetClientName() #15, !dbg !900
  %call1 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.75, ptr noundef %call, ptr noundef nonnull %reason) #15, !dbg !901
  %cmp2.not = icmp eq ptr %description, null, !dbg !902
  br i1 %cmp2.not, label %if.end5, label %if.then3, !dbg !904

if.then3:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !905, !tbaa !331
  %call4 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1, ptr noundef nonnull @.str.76, ptr noundef nonnull %description) #15, !dbg !906
  br label %if.end5, !dbg !907

if.end5:                                          ; preds = %if.then3, %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !908, !tbaa !331
  %call6 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %2, ptr noundef nonnull @.str.77) #15, !dbg !909
  %3 = load ptr, ptr @stderr, align 8, !dbg !910, !tbaa !331
  %call7 = tail call i32 @fflush(ptr noundef %3), !dbg !911
  br label %return, !dbg !912

return:                                           ; preds = %entry, %if.end5
  ret void, !dbg !912
}

declare !dbg !913 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare !dbg !968 ptr @GetClientName() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !972 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal void @DefaultFatalErrorHandler(i32 noundef %severity, ptr noundef %reason, ptr noundef %description) #0 !dbg !975 {
entry:
  call void @llvm.dbg.value(metadata i32 %severity, metadata !977, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata ptr %reason, metadata !978, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata ptr %description, metadata !979, metadata !DIExpression()), !dbg !980
  %cmp = icmp eq ptr %reason, null, !dbg !981
  br i1 %cmp, label %if.then, label %if.end, !dbg !983

if.then:                                          ; preds = %entry
  ret void, !dbg !984

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !985, !tbaa !331
  %call = tail call ptr @GetClientName() #15, !dbg !986
  %call1 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.75, ptr noundef %call, ptr noundef nonnull %reason) #15, !dbg !987
  %cmp2.not = icmp eq ptr %description, null, !dbg !988
  br i1 %cmp2.not, label %if.end5, label %if.then3, !dbg !990

if.then3:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !991, !tbaa !331
  %call4 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1, ptr noundef nonnull @.str.76, ptr noundef nonnull %description) #15, !dbg !992
  br label %if.end5, !dbg !993

if.end5:                                          ; preds = %if.then3, %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !994, !tbaa !331
  %call6 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %2, ptr noundef nonnull @.str.77) #15, !dbg !995
  %3 = load ptr, ptr @stderr, align 8, !dbg !996, !tbaa !331
  %call7 = tail call i32 @fflush(ptr noundef %3), !dbg !997
  tail call void @MagickCoreTerminus() #15, !dbg !998
  %add = add i32 %severity, -699, !dbg !999
  tail call void @exit(i32 noundef %add) #17, !dbg !1000
  unreachable, !dbg !1000
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal void @DefaultWarningHandler(i32 noundef %severity, ptr noundef %reason, ptr noundef %description) #0 !dbg !1001 {
entry:
  call void @llvm.dbg.value(metadata i32 %severity, metadata !1003, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr %reason, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr %description, metadata !1005, metadata !DIExpression()), !dbg !1006
  %cmp = icmp eq ptr %reason, null, !dbg !1007
  br i1 %cmp, label %return, label %if.end, !dbg !1009

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !1010, !tbaa !331
  %call = tail call ptr @GetClientName() #15, !dbg !1011
  %call1 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.75, ptr noundef %call, ptr noundef nonnull %reason) #15, !dbg !1012
  %cmp2.not = icmp eq ptr %description, null, !dbg !1013
  br i1 %cmp2.not, label %if.end5, label %if.then3, !dbg !1015

if.then3:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !1016, !tbaa !331
  %call4 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1, ptr noundef nonnull @.str.76, ptr noundef nonnull %description) #15, !dbg !1017
  br label %if.end5, !dbg !1018

if.end5:                                          ; preds = %if.then3, %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !1019, !tbaa !331
  %call6 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %2, ptr noundef nonnull @.str.77) #15, !dbg !1020
  %3 = load ptr, ptr @stderr, align 8, !dbg !1021, !tbaa !331
  %call7 = tail call i32 @fflush(ptr noundef %3), !dbg !1022
  br label %return, !dbg !1023

return:                                           ; preds = %entry, %if.end5
  ret void, !dbg !1023
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone willreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "error_handler", scope: !2, file: !165, line: 75, type: !155, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !121, globals: !162, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/exception.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "ccb02a5343f02e5c3fbd69da93f10869")
!4 = !{!5, !79, !84, !109}
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
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !110, line: 25, baseType: !7, size: 32, elements: !111)
!110 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120}
!112 = !DIEnumerator(name: "UndefinedPath", value: 0)
!113 = !DIEnumerator(name: "MagickPath", value: 1)
!114 = !DIEnumerator(name: "RootPath", value: 2)
!115 = !DIEnumerator(name: "HeadPath", value: 3)
!116 = !DIEnumerator(name: "TailPath", value: 4)
!117 = !DIEnumerator(name: "BasePath", value: 5)
!118 = !DIEnumerator(name: "ExtensionPath", value: 6)
!119 = !DIEnumerator(name: "SubimagePath", value: 7)
!120 = !DIEnumerator(name: "CanonicalPath", value: 8)
!121 = !{!122, !135, !146, !129, !147, !131, !151, !139, !153, !155, !160, !161}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !80, line: 219, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !6, line: 102, size: 448, elements: !125)
!125 = !{!126, !128, !130, !133, !134, !136, !138, !143}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !124, file: !6, line: 105, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !6, line: 100, baseType: !5)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !124, file: !6, line: 108, baseType: !129, size: 32, offset: 32)
!129 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !124, file: !6, line: 111, baseType: !131, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !124, file: !6, line: 112, baseType: !131, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !124, file: !6, line: 115, baseType: !135, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !124, file: !6, line: 118, baseType: !137, size: 32, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !80, line: 215, baseType: !79)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !124, file: !6, line: 121, baseType: !139, size: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !141, line: 26, baseType: !142)
!141 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !141, line: 25, flags: DIFlagFwdDecl)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !124, file: !6, line: 124, baseType: !144, size: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !145, line: 46, baseType: !146)
!145 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!146 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinkedListInfo", file: !149, line: 34, baseType: !150)
!149 = !DIFile(filename: "apps/538.imagick_r/src/magick/hashmap.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "683c2bd26601474466c188c023adadf2")
!150 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LinkedListInfo", file: !149, line: 33, flags: DIFlagFwdDecl)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorHandler", file: !6, line: 128, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !159, !153, !153}
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "WarningHandler", file: !6, line: 134, baseType: !156)
!161 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!162 = !{!0, !163, !167}
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "fatal_error_handler", scope: !2, file: !165, line: 78, type: !166, isLocal: true, isDefinition: true)
!165 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ccb02a5343f02e5c3fbd69da93f10869")
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "FatalErrorHandler", file: !6, line: 131, baseType: !156)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "warning_handler", scope: !2, file: !165, line: 81, type: !160, isLocal: true, isDefinition: true)
!169 = !{i32 7, !"Dwarf Version", i32 5}
!170 = !{i32 2, !"Debug Info Version", i32 3}
!171 = !{i32 1, !"wchar_size", i32 4}
!172 = !{i32 7, !"PIC Level", i32 2}
!173 = !{i32 7, !"PIE Level", i32 2}
!174 = !{i32 7, !"uwtable", i32 2}
!175 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!176 = distinct !DISubprogram(name: "AcquireExceptionInfo", scope: !165, file: !165, line: 101, type: !177, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !179)
!177 = !DISubroutineType(types: !178)
!178 = !{!122}
!179 = !{!180, !181, !184}
!180 = !DILocalVariable(name: "exception", scope: !176, file: !165, line: 104, type: !122)
!181 = !DILocalVariable(name: "message", scope: !182, file: !165, line: 108, type: !131)
!182 = distinct !DILexicalBlock(scope: !183, file: !165, line: 108, column: 5)
!183 = distinct !DILexicalBlock(scope: !176, file: !165, line: 107, column: 7)
!184 = !DILocalVariable(name: "exception", scope: !182, file: !165, line: 108, type: !123)
!185 = !DILocation(line: 106, column: 31, scope: !176)
!186 = !DILocation(line: 0, scope: !176)
!187 = !DILocation(line: 107, column: 17, scope: !183)
!188 = !DILocation(line: 107, column: 7, scope: !176)
!189 = !DILocation(line: 108, column: 5, scope: !182)
!190 = !{!191, !191, i64 0}
!191 = !{!"int", !192, i64 0}
!192 = !{!"omnipotent char", !193, i64 0}
!193 = !{!"Simple C/C++ TBAA"}
!194 = !DILocation(line: 0, scope: !182)
!195 = !DILocalVariable(name: "exception", arg: 1, scope: !196, file: !165, line: 456, type: !122)
!196 = distinct !DISubprogram(name: "GetExceptionInfo", scope: !165, file: !165, line: 456, type: !197, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !199)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !122}
!199 = !{!195}
!200 = !DILocation(line: 0, scope: !196, inlinedAt: !201)
!201 = distinct !DILocation(line: 109, column: 3, scope: !176)
!202 = !DILocation(line: 459, column: 10, scope: !196, inlinedAt: !201)
!203 = !DILocation(line: 460, column: 22, scope: !196, inlinedAt: !201)
!204 = !{!205, !192, i64 0}
!205 = !{!"_ExceptionInfo", !192, i64 0, !191, i64 4, !206, i64 8, !206, i64 16, !206, i64 24, !192, i64 32, !206, i64 40, !207, i64 48}
!206 = !{!"any pointer", !192, i64 0}
!207 = !{!"long", !192, i64 0}
!208 = !DILocation(line: 461, column: 34, scope: !196, inlinedAt: !201)
!209 = !DILocation(line: 461, column: 14, scope: !196, inlinedAt: !201)
!210 = !DILocation(line: 461, column: 24, scope: !196, inlinedAt: !201)
!211 = !{!205, !206, i64 24}
!212 = !DILocation(line: 462, column: 24, scope: !196, inlinedAt: !201)
!213 = !DILocation(line: 462, column: 14, scope: !196, inlinedAt: !201)
!214 = !DILocation(line: 462, column: 23, scope: !196, inlinedAt: !201)
!215 = !{!205, !206, i64 40}
!216 = !DILocation(line: 463, column: 14, scope: !196, inlinedAt: !201)
!217 = !DILocation(line: 463, column: 23, scope: !196, inlinedAt: !201)
!218 = !{!205, !207, i64 48}
!219 = !DILocation(line: 110, column: 14, scope: !176)
!220 = !DILocation(line: 110, column: 24, scope: !176)
!221 = !{!205, !192, i64 32}
!222 = !DILocation(line: 111, column: 3, scope: !176)
!223 = !DISubprogram(name: "AcquireMagickMemory", scope: !224, file: !224, line: 40, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!224 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!225 = !DISubroutineType(types: !226)
!226 = !{!135, !227}
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!228 = !{}
!229 = !DILocation(line: 0, scope: !196)
!230 = !DILocation(line: 459, column: 10, scope: !196)
!231 = !DILocation(line: 460, column: 22, scope: !196)
!232 = !DILocation(line: 461, column: 34, scope: !196)
!233 = !DILocation(line: 461, column: 14, scope: !196)
!234 = !DILocation(line: 461, column: 24, scope: !196)
!235 = !DILocation(line: 462, column: 24, scope: !196)
!236 = !DILocation(line: 462, column: 14, scope: !196)
!237 = !DILocation(line: 462, column: 23, scope: !196)
!238 = !DILocation(line: 463, column: 14, scope: !196)
!239 = !DILocation(line: 463, column: 23, scope: !196)
!240 = !DILocation(line: 464, column: 1, scope: !196)
!241 = distinct !DISubprogram(name: "GetExceptionMessage", scope: !165, file: !165, line: 489, type: !242, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !245)
!242 = !DISubroutineType(types: !243)
!243 = !{!131, !244}
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!245 = !{!246, !247}
!246 = !DILocalVariable(name: "error", arg: 1, scope: !241, file: !165, line: 489, type: !244)
!247 = !DILocalVariable(name: "exception", scope: !241, file: !165, line: 492, type: !248)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 32768, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 4096)
!251 = !DILocation(line: 0, scope: !241)
!252 = !DILocation(line: 491, column: 3, scope: !241)
!253 = !DILocation(line: 492, column: 5, scope: !241)
!254 = !DILocation(line: 494, column: 13, scope: !241)
!255 = !{!192, !192, i64 0}
!256 = !DILocation(line: 503, column: 37, scope: !241)
!257 = !DILocation(line: 503, column: 10, scope: !241)
!258 = !DILocation(line: 505, column: 10, scope: !241)
!259 = !DILocation(line: 506, column: 1, scope: !241)
!260 = !DILocation(line: 505, column: 3, scope: !241)
!261 = distinct !DISubprogram(name: "ThrowMagickException", scope: !165, file: !165, line: 1042, type: !262, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!262 = !DISubroutineType(types: !263)
!263 = !{!137, !122, !153, !153, !227, !159, !153, !153, null}
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273}
!265 = !DILocalVariable(name: "exception", arg: 1, scope: !261, file: !165, line: 1042, type: !122)
!266 = !DILocalVariable(name: "module", arg: 2, scope: !261, file: !165, line: 1043, type: !153)
!267 = !DILocalVariable(name: "function", arg: 3, scope: !261, file: !165, line: 1043, type: !153)
!268 = !DILocalVariable(name: "line", arg: 4, scope: !261, file: !165, line: 1043, type: !227)
!269 = !DILocalVariable(name: "severity", arg: 5, scope: !261, file: !165, line: 1044, type: !159)
!270 = !DILocalVariable(name: "tag", arg: 6, scope: !261, file: !165, line: 1044, type: !153)
!271 = !DILocalVariable(name: "format", arg: 7, scope: !261, file: !165, line: 1044, type: !153)
!272 = !DILocalVariable(name: "status", scope: !261, file: !165, line: 1047, type: !137)
!273 = !DILocalVariable(name: "operands", scope: !261, file: !165, line: 1050, type: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !275, line: 52, baseType: !276)
!275 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !277, line: 32, baseType: !278)
!277 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stdarg.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !279, baseType: !280)
!279 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 192, elements: !287)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !282)
!282 = !{!283, !284, !285, !286}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !281, file: !279, line: 951, baseType: !7, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !281, file: !279, line: 951, baseType: !7, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !281, file: !279, line: 951, baseType: !135, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !281, file: !279, line: 951, baseType: !135, size: 64, offset: 128)
!287 = !{!288}
!288 = !DISubrange(count: 1)
!289 = !DILocation(line: 0, scope: !261)
!290 = !DILocation(line: 1049, column: 3, scope: !261)
!291 = !DILocation(line: 1050, column: 5, scope: !261)
!292 = !DILocation(line: 1052, column: 3, scope: !261)
!293 = !DILocation(line: 1053, column: 10, scope: !261)
!294 = !DILocation(line: 1055, column: 3, scope: !261)
!295 = !DILocation(line: 1057, column: 1, scope: !261)
!296 = !DILocation(line: 1056, column: 3, scope: !261)
!297 = !DISubprogram(name: "DestroyString", scope: !298, file: !298, line: 46, type: !299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!298 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!299 = !DISubroutineType(types: !300)
!300 = !{!131, !131}
!301 = distinct !DISubprogram(name: "CatchException", scope: !165, file: !165, line: 191, type: !197, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !302)
!302 = !{!303, !304}
!303 = !DILocalVariable(name: "exception", arg: 1, scope: !301, file: !165, line: 191, type: !122)
!304 = !DILocalVariable(name: "p", scope: !301, file: !165, line: 194, type: !151)
!305 = !DILocation(line: 0, scope: !301)
!306 = !DILocation(line: 198, column: 18, scope: !307)
!307 = distinct !DILexicalBlock(scope: !301, file: !165, line: 198, column: 7)
!308 = !DILocation(line: 198, column: 30, scope: !307)
!309 = !DILocation(line: 198, column: 7, scope: !301)
!310 = !DILocation(line: 200, column: 32, scope: !301)
!311 = !DILocation(line: 200, column: 3, scope: !301)
!312 = !DILocation(line: 201, column: 57, scope: !301)
!313 = !DILocation(line: 201, column: 3, scope: !301)
!314 = !DILocation(line: 203, column: 16, scope: !301)
!315 = !DILocation(line: 202, column: 29, scope: !301)
!316 = !DILocation(line: 204, column: 12, scope: !301)
!317 = !DILocation(line: 204, column: 3, scope: !301)
!318 = !DILocation(line: 206, column: 13, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !165, line: 206, column: 9)
!320 = distinct !DILexicalBlock(scope: !301, file: !165, line: 205, column: 3)
!321 = !DILocation(line: 206, column: 43, scope: !319)
!322 = !DILocalVariable(name: "warning", arg: 1, scope: !323, file: !165, line: 774, type: !159)
!323 = distinct !DISubprogram(name: "MagickWarning", scope: !165, file: !165, line: 774, type: !157, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !324)
!324 = !{!322, !325, !326}
!325 = !DILocalVariable(name: "reason", arg: 2, scope: !323, file: !165, line: 774, type: !153)
!326 = !DILocalVariable(name: "description", arg: 3, scope: !323, file: !165, line: 775, type: !153)
!327 = !DILocation(line: 0, scope: !323, inlinedAt: !328)
!328 = distinct !DILocation(line: 207, column: 7, scope: !319)
!329 = !DILocation(line: 777, column: 7, scope: !330, inlinedAt: !328)
!330 = distinct !DILexicalBlock(scope: !323, file: !165, line: 777, column: 7)
!331 = !{!206, !206, i64 0}
!332 = !DILocation(line: 777, column: 23, scope: !330, inlinedAt: !328)
!333 = !DILocation(line: 777, column: 7, scope: !323, inlinedAt: !328)
!334 = !DILocation(line: 207, column: 46, scope: !319)
!335 = !{!205, !206, i64 16}
!336 = !DILocation(line: 207, column: 36, scope: !319)
!337 = !{!205, !206, i64 8}
!338 = !DILocation(line: 778, column: 5, scope: !330, inlinedAt: !328)
!339 = !DILocation(line: 208, column: 13, scope: !340)
!340 = distinct !DILexicalBlock(scope: !320, file: !165, line: 208, column: 9)
!341 = !DILocation(line: 208, column: 41, scope: !340)
!342 = !DILocalVariable(name: "error", arg: 1, scope: !343, file: !165, line: 704, type: !159)
!343 = distinct !DISubprogram(name: "MagickError", scope: !165, file: !165, line: 704, type: !157, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !344)
!344 = !{!342, !345, !346}
!345 = !DILocalVariable(name: "reason", arg: 2, scope: !343, file: !165, line: 704, type: !153)
!346 = !DILocalVariable(name: "description", arg: 3, scope: !343, file: !165, line: 705, type: !153)
!347 = !DILocation(line: 0, scope: !343, inlinedAt: !348)
!348 = distinct !DILocation(line: 209, column: 7, scope: !340)
!349 = !DILocation(line: 707, column: 7, scope: !350, inlinedAt: !348)
!350 = distinct !DILexicalBlock(scope: !343, file: !165, line: 707, column: 7)
!351 = !DILocation(line: 707, column: 21, scope: !350, inlinedAt: !348)
!352 = !DILocation(line: 707, column: 7, scope: !343, inlinedAt: !348)
!353 = !DILocation(line: 209, column: 44, scope: !340)
!354 = !DILocation(line: 209, column: 34, scope: !340)
!355 = !DILocation(line: 708, column: 5, scope: !350, inlinedAt: !348)
!356 = !DILocation(line: 210, column: 12, scope: !357)
!357 = distinct !DILexicalBlock(scope: !320, file: !165, line: 210, column: 9)
!358 = !DILocation(line: 210, column: 21, scope: !357)
!359 = !DILocation(line: 210, column: 9, scope: !320)
!360 = !DILocalVariable(name: "error", arg: 1, scope: !361, file: !165, line: 740, type: !159)
!361 = distinct !DISubprogram(name: "MagickFatalError", scope: !165, file: !165, line: 740, type: !157, scopeLine: 742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !362)
!362 = !{!360, !363, !364}
!363 = !DILocalVariable(name: "reason", arg: 2, scope: !361, file: !165, line: 740, type: !153)
!364 = !DILocalVariable(name: "description", arg: 3, scope: !361, file: !165, line: 741, type: !153)
!365 = !DILocation(line: 0, scope: !361, inlinedAt: !366)
!366 = distinct !DILocation(line: 211, column: 7, scope: !357)
!367 = !DILocation(line: 743, column: 7, scope: !368, inlinedAt: !366)
!368 = distinct !DILexicalBlock(scope: !361, file: !165, line: 743, column: 7)
!369 = !DILocation(line: 743, column: 27, scope: !368, inlinedAt: !366)
!370 = !DILocation(line: 743, column: 7, scope: !361, inlinedAt: !366)
!371 = !DILocation(line: 211, column: 49, scope: !357)
!372 = !DILocation(line: 211, column: 39, scope: !357)
!373 = !DILocation(line: 744, column: 5, scope: !368, inlinedAt: !366)
!374 = !DILocation(line: 213, column: 18, scope: !320)
!375 = !DILocation(line: 212, column: 31, scope: !320)
!376 = distinct !{!376, !317, !377, !378, !379}
!377 = !DILocation(line: 214, column: 3, scope: !301)
!378 = !{!"llvm.loop.mustprogress"}
!379 = !{!"llvm.loop.unroll.disable"}
!380 = !DILocation(line: 215, column: 34, scope: !301)
!381 = !DILocation(line: 215, column: 3, scope: !301)
!382 = !DILocalVariable(name: "exception", arg: 1, scope: !383, file: !165, line: 152, type: !122)
!383 = distinct !DISubprogram(name: "ClearMagickException", scope: !165, file: !165, line: 152, type: !197, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !384)
!384 = !{!382}
!385 = !DILocation(line: 0, scope: !383, inlinedAt: !386)
!386 = distinct !DILocation(line: 216, column: 3, scope: !301)
!387 = !DILocation(line: 156, column: 18, scope: !388, inlinedAt: !386)
!388 = distinct !DILexicalBlock(scope: !383, file: !165, line: 156, column: 7)
!389 = !DILocation(line: 156, column: 29, scope: !388, inlinedAt: !386)
!390 = !DILocation(line: 156, column: 7, scope: !383, inlinedAt: !386)
!391 = !DILocation(line: 158, column: 32, scope: !383, inlinedAt: !386)
!392 = !DILocation(line: 158, column: 3, scope: !383, inlinedAt: !386)
!393 = !DILocation(line: 159, column: 49, scope: !383, inlinedAt: !386)
!394 = !DILocation(line: 159, column: 3, scope: !383, inlinedAt: !386)
!395 = !DILocation(line: 161, column: 22, scope: !383, inlinedAt: !386)
!396 = !DILocation(line: 162, column: 14, scope: !383, inlinedAt: !386)
!397 = !DILocation(line: 162, column: 20, scope: !383, inlinedAt: !386)
!398 = !DILocation(line: 164, column: 34, scope: !383, inlinedAt: !386)
!399 = !DILocation(line: 164, column: 3, scope: !383, inlinedAt: !386)
!400 = !DILocation(line: 165, column: 3, scope: !383, inlinedAt: !386)
!401 = !DILocation(line: 165, column: 8, scope: !383, inlinedAt: !386)
!402 = !DILocation(line: 166, column: 1, scope: !383, inlinedAt: !386)
!403 = !DILocation(line: 217, column: 1, scope: !301)
!404 = distinct !DISubprogram(name: "DestroyExceptionInfo", scope: !165, file: !165, line: 403, type: !405, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !407)
!405 = !DISubroutineType(types: !406)
!406 = !{!122, !122}
!407 = !{!408, !409}
!408 = !DILocalVariable(name: "exception", arg: 1, scope: !404, file: !165, line: 403, type: !122)
!409 = !DILocalVariable(name: "relinquish", scope: !404, file: !165, line: 406, type: !137)
!410 = !DILocation(line: 0, scope: !404)
!411 = !DILocation(line: 410, column: 18, scope: !412)
!412 = distinct !DILexicalBlock(scope: !404, file: !165, line: 410, column: 7)
!413 = !DILocation(line: 410, column: 28, scope: !412)
!414 = !DILocation(line: 410, column: 7, scope: !404)
!415 = !DILocation(line: 411, column: 5, scope: !412)
!416 = !DILocation(line: 412, column: 32, scope: !404)
!417 = !DILocation(line: 412, column: 3, scope: !404)
!418 = !DILocation(line: 413, column: 22, scope: !404)
!419 = !DILocation(line: 414, column: 18, scope: !420)
!420 = distinct !DILexicalBlock(scope: !404, file: !165, line: 414, column: 7)
!421 = !DILocation(line: 414, column: 29, scope: !420)
!422 = !DILocation(line: 414, column: 7, scope: !404)
!423 = !DILocation(line: 416, column: 18, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !165, line: 415, column: 5)
!425 = !DILocation(line: 416, column: 27, scope: !424)
!426 = !DILocation(line: 417, column: 22, scope: !427)
!427 = distinct !DILexicalBlock(scope: !424, file: !165, line: 417, column: 11)
!428 = !DILocation(line: 417, column: 33, scope: !427)
!429 = !DILocation(line: 417, column: 11, scope: !424)
!430 = !DILocation(line: 418, column: 40, scope: !427)
!431 = !DILocation(line: 418, column: 30, scope: !427)
!432 = !DILocation(line: 418, column: 9, scope: !427)
!433 = !DILocation(line: 421, column: 23, scope: !434)
!434 = distinct !DILexicalBlock(scope: !420, file: !165, line: 421, column: 12)
!435 = !DILocation(line: 421, column: 34, scope: !434)
!436 = !DILocation(line: 421, column: 12, scope: !420)
!437 = !DILocation(line: 422, column: 5, scope: !434)
!438 = !DILocation(line: 424, column: 25, scope: !404)
!439 = !DILocation(line: 425, column: 34, scope: !404)
!440 = !DILocation(line: 425, column: 3, scope: !404)
!441 = !DILocation(line: 426, column: 18, scope: !442)
!442 = distinct !DILexicalBlock(scope: !404, file: !165, line: 426, column: 7)
!443 = !DILocation(line: 426, column: 7, scope: !404)
!444 = !DILocation(line: 428, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !442, file: !165, line: 427, column: 5)
!446 = !DILocation(line: 429, column: 35, scope: !445)
!447 = !DILocation(line: 430, column: 5, scope: !445)
!448 = !DILocation(line: 431, column: 3, scope: !404)
!449 = !DISubprogram(name: "MagickCoreTerminus", scope: !450, file: !450, line: 147, type: !451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!450 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!451 = !DISubroutineType(types: !452)
!452 = !{null}
!453 = !DILocation(line: 0, scope: !383)
!454 = !DILocation(line: 156, column: 18, scope: !388)
!455 = !DILocation(line: 156, column: 29, scope: !388)
!456 = !DILocation(line: 156, column: 7, scope: !383)
!457 = !DILocation(line: 158, column: 32, scope: !383)
!458 = !DILocation(line: 158, column: 3, scope: !383)
!459 = !DILocation(line: 159, column: 49, scope: !383)
!460 = !DILocation(line: 159, column: 3, scope: !383)
!461 = !DILocation(line: 161, column: 22, scope: !383)
!462 = !DILocation(line: 162, column: 14, scope: !383)
!463 = !DILocation(line: 162, column: 20, scope: !383)
!464 = !DILocation(line: 164, column: 34, scope: !383)
!465 = !DILocation(line: 164, column: 3, scope: !383)
!466 = !DILocation(line: 165, column: 3, scope: !383)
!467 = !DILocation(line: 165, column: 8, scope: !383)
!468 = !DILocation(line: 166, column: 1, scope: !383)
!469 = !DISubprogram(name: "LockSemaphoreInfo", scope: !141, file: !141, line: 37, type: !470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !139}
!472 = !DISubprogram(name: "ClearLinkedList", scope: !149, file: !149, line: 65, type: !473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !147, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!135, !135}
!478 = distinct !DISubprogram(name: "DestroyExceptionElement", scope: !165, file: !165, line: 138, type: !476, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !479)
!479 = !{!480, !481}
!480 = !DILocalVariable(name: "exception", arg: 1, scope: !478, file: !165, line: 138, type: !135)
!481 = !DILocalVariable(name: "p", scope: !478, file: !165, line: 141, type: !122)
!482 = !DILocation(line: 0, scope: !478)
!483 = !DILocation(line: 144, column: 10, scope: !484)
!484 = distinct !DILexicalBlock(scope: !478, file: !165, line: 144, column: 7)
!485 = !DILocation(line: 144, column: 17, scope: !484)
!486 = !DILocation(line: 144, column: 7, scope: !478)
!487 = !DILocation(line: 145, column: 15, scope: !484)
!488 = !DILocation(line: 145, column: 14, scope: !484)
!489 = !DILocation(line: 145, column: 5, scope: !484)
!490 = !DILocation(line: 146, column: 10, scope: !491)
!491 = distinct !DILexicalBlock(scope: !478, file: !165, line: 146, column: 7)
!492 = !DILocation(line: 146, column: 22, scope: !491)
!493 = !DILocation(line: 146, column: 7, scope: !478)
!494 = !DILocation(line: 147, column: 20, scope: !491)
!495 = !DILocation(line: 147, column: 19, scope: !491)
!496 = !DILocation(line: 147, column: 5, scope: !491)
!497 = !DILocation(line: 148, column: 23, scope: !478)
!498 = !DILocation(line: 149, column: 3, scope: !478)
!499 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !141, file: !141, line: 39, type: !470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!500 = !DISubprogram(name: "ResetLinkedListIterator", scope: !149, file: !149, line: 77, type: !501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !147}
!503 = !DISubprogram(name: "GetNextValueInLinkedList", scope: !149, file: !149, line: 69, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!504 = !DISubroutineType(types: !505)
!505 = !{!135, !147}
!506 = !DILocation(line: 0, scope: !323)
!507 = !DILocation(line: 777, column: 7, scope: !330)
!508 = !DILocation(line: 777, column: 23, scope: !330)
!509 = !DILocation(line: 777, column: 7, scope: !323)
!510 = !DILocation(line: 778, column: 5, scope: !330)
!511 = !DILocation(line: 779, column: 1, scope: !323)
!512 = !DILocation(line: 0, scope: !343)
!513 = !DILocation(line: 707, column: 7, scope: !350)
!514 = !DILocation(line: 707, column: 21, scope: !350)
!515 = !DILocation(line: 707, column: 7, scope: !343)
!516 = !DILocation(line: 708, column: 5, scope: !350)
!517 = !DILocation(line: 709, column: 1, scope: !343)
!518 = !DILocation(line: 0, scope: !361)
!519 = !DILocation(line: 743, column: 7, scope: !368)
!520 = !DILocation(line: 743, column: 27, scope: !368)
!521 = !DILocation(line: 743, column: 7, scope: !361)
!522 = !DILocation(line: 744, column: 5, scope: !368)
!523 = !DILocation(line: 745, column: 1, scope: !361)
!524 = distinct !DISubprogram(name: "CloneExceptionInfo", scope: !165, file: !165, line: 241, type: !405, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !525)
!525 = !{!526, !527, !528, !531}
!526 = !DILocalVariable(name: "exception", arg: 1, scope: !524, file: !165, line: 241, type: !122)
!527 = !DILocalVariable(name: "clone_exception", scope: !524, file: !165, line: 244, type: !122)
!528 = !DILocalVariable(name: "message", scope: !529, file: !165, line: 248, type: !131)
!529 = distinct !DILexicalBlock(scope: !530, file: !165, line: 248, column: 5)
!530 = distinct !DILexicalBlock(scope: !524, file: !165, line: 247, column: 7)
!531 = !DILocalVariable(name: "exception", scope: !529, file: !165, line: 248, type: !123)
!532 = !DILocation(line: 0, scope: !524)
!533 = !DILocation(line: 246, column: 37, scope: !524)
!534 = !DILocation(line: 247, column: 23, scope: !530)
!535 = !DILocation(line: 247, column: 7, scope: !524)
!536 = !DILocation(line: 248, column: 5, scope: !529)
!537 = !DILocation(line: 0, scope: !529)
!538 = !DILocation(line: 0, scope: !196, inlinedAt: !539)
!539 = distinct !DILocation(line: 249, column: 3, scope: !524)
!540 = !DILocation(line: 459, column: 10, scope: !196, inlinedAt: !539)
!541 = !DILocation(line: 460, column: 22, scope: !196, inlinedAt: !539)
!542 = !DILocation(line: 461, column: 34, scope: !196, inlinedAt: !539)
!543 = !DILocation(line: 461, column: 14, scope: !196, inlinedAt: !539)
!544 = !DILocation(line: 461, column: 24, scope: !196, inlinedAt: !539)
!545 = !DILocation(line: 462, column: 24, scope: !196, inlinedAt: !539)
!546 = !DILocation(line: 462, column: 14, scope: !196, inlinedAt: !539)
!547 = !DILocation(line: 462, column: 23, scope: !196, inlinedAt: !539)
!548 = !DILocation(line: 463, column: 14, scope: !196, inlinedAt: !539)
!549 = !DILocation(line: 463, column: 23, scope: !196, inlinedAt: !539)
!550 = !DILocation(line: 250, column: 3, scope: !524)
!551 = !DILocation(line: 251, column: 20, scope: !524)
!552 = !DILocation(line: 251, column: 30, scope: !524)
!553 = !DILocation(line: 252, column: 3, scope: !524)
!554 = distinct !DISubprogram(name: "InheritException", scope: !165, file: !165, line: 651, type: !555, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !557)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !122, !151}
!557 = !{!558, !559, !560}
!558 = !DILocalVariable(name: "exception", arg: 1, scope: !554, file: !165, line: 651, type: !122)
!559 = !DILocalVariable(name: "relative", arg: 2, scope: !554, file: !165, line: 652, type: !151)
!560 = !DILocalVariable(name: "p", scope: !554, file: !165, line: 655, type: !151)
!561 = !DILocation(line: 0, scope: !554)
!562 = !DILocation(line: 661, column: 17, scope: !563)
!563 = distinct !DILexicalBlock(scope: !554, file: !165, line: 661, column: 7)
!564 = !DILocation(line: 661, column: 28, scope: !563)
!565 = !DILocation(line: 661, column: 7, scope: !554)
!566 = !DILocation(line: 663, column: 31, scope: !554)
!567 = !DILocation(line: 663, column: 3, scope: !554)
!568 = !DILocation(line: 664, column: 56, scope: !554)
!569 = !DILocation(line: 664, column: 3, scope: !554)
!570 = !DILocation(line: 666, column: 15, scope: !554)
!571 = !DILocation(line: 665, column: 29, scope: !554)
!572 = !DILocation(line: 667, column: 12, scope: !554)
!573 = !DILocation(line: 667, column: 3, scope: !554)
!574 = !DILocation(line: 669, column: 40, scope: !575)
!575 = distinct !DILexicalBlock(scope: !554, file: !165, line: 668, column: 3)
!576 = !DILocation(line: 669, column: 52, scope: !575)
!577 = !DILocation(line: 669, column: 62, scope: !575)
!578 = !DILocation(line: 669, column: 12, scope: !575)
!579 = !DILocation(line: 671, column: 17, scope: !575)
!580 = !DILocation(line: 670, column: 31, scope: !575)
!581 = distinct !{!581, !573, !582, !378, !379}
!582 = !DILocation(line: 672, column: 3, scope: !554)
!583 = !DILocation(line: 673, column: 33, scope: !554)
!584 = !DILocation(line: 673, column: 3, scope: !554)
!585 = !DILocation(line: 674, column: 1, scope: !554)
!586 = !DISubprogram(name: "ActivateSemaphoreInfo", scope: !141, file: !141, line: 35, type: !587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!590 = !DISubprogram(name: "DestroyLinkedList", scope: !149, file: !149, line: 42, type: !591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!591 = !DISubroutineType(types: !592)
!592 = !{!147, !147, !475}
!593 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !141, file: !141, line: 36, type: !587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!594 = !DISubprogram(name: "RelinquishMagickMemory", scope: !224, file: !224, line: 51, type: !476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!595 = !DISubprogram(name: "ResetMagickMemory", scope: !224, file: !224, line: 52, type: !596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!596 = !DISubroutineType(types: !597)
!597 = !{!135, !135, !129, !227}
!598 = !DISubprogram(name: "NewLinkedList", scope: !149, file: !149, line: 43, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!599 = !DISubroutineType(types: !600)
!600 = !{!147, !227}
!601 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !141, file: !141, line: 32, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!602 = !DISubroutineType(types: !603)
!603 = !{!139}
!604 = !DISubprogram(name: "CopyMagickString", scope: !298, file: !298, line: 78, type: !605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!605 = !DISubroutineType(types: !606)
!606 = !{!144, !131, !153, !227}
!607 = !DISubprogram(name: "ConstantString", scope: !298, file: !298, line: 45, type: !608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!608 = !DISubroutineType(types: !609)
!609 = !{!131, !153}
!610 = distinct !DISubprogram(name: "GetLocaleExceptionMessage", scope: !165, file: !165, line: 607, type: !611, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{!153, !159, !153}
!613 = !{!614, !615, !616, !617}
!614 = !DILocalVariable(name: "severity", arg: 1, scope: !610, file: !165, line: 607, type: !159)
!615 = !DILocalVariable(name: "tag", arg: 2, scope: !610, file: !165, line: 608, type: !153)
!616 = !DILocalVariable(name: "message", scope: !610, file: !165, line: 611, type: !248)
!617 = !DILocalVariable(name: "locale_message", scope: !610, file: !165, line: 614, type: !153)
!618 = !DILocation(line: 0, scope: !610)
!619 = !DILocation(line: 610, column: 3, scope: !610)
!620 = !DILocation(line: 611, column: 5, scope: !610)
!621 = !DILocalVariable(name: "severity", arg: 1, scope: !622, file: !165, line: 535, type: !159)
!622 = distinct !DISubprogram(name: "ExceptionSeverityToTag", scope: !165, file: !165, line: 535, type: !623, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !625)
!623 = !DISubroutineType(types: !624)
!624 = !{!153, !159}
!625 = !{!621}
!626 = !DILocation(line: 0, scope: !622, inlinedAt: !627)
!627 = distinct !DILocation(line: 618, column: 5, scope: !610)
!628 = !DILocation(line: 537, column: 3, scope: !622, inlinedAt: !627)
!629 = !DILocation(line: 540, column: 23, scope: !630, inlinedAt: !627)
!630 = distinct !DILexicalBlock(scope: !622, file: !165, line: 538, column: 3)
!631 = !DILocation(line: 541, column: 25, scope: !630, inlinedAt: !627)
!632 = !DILocation(line: 542, column: 27, scope: !630, inlinedAt: !627)
!633 = !DILocation(line: 543, column: 34, scope: !630, inlinedAt: !627)
!634 = !DILocation(line: 544, column: 31, scope: !630, inlinedAt: !627)
!635 = !DILocation(line: 545, column: 27, scope: !630, inlinedAt: !627)
!636 = !DILocation(line: 546, column: 23, scope: !630, inlinedAt: !627)
!637 = !DILocation(line: 547, column: 25, scope: !630, inlinedAt: !627)
!638 = !DILocation(line: 548, column: 24, scope: !630, inlinedAt: !627)
!639 = !DILocation(line: 549, column: 24, scope: !630, inlinedAt: !627)
!640 = !DILocation(line: 550, column: 25, scope: !630, inlinedAt: !627)
!641 = !DILocation(line: 551, column: 25, scope: !630, inlinedAt: !627)
!642 = !DILocation(line: 552, column: 23, scope: !630, inlinedAt: !627)
!643 = !DILocation(line: 553, column: 24, scope: !630, inlinedAt: !627)
!644 = !DILocation(line: 554, column: 23, scope: !630, inlinedAt: !627)
!645 = !DILocation(line: 555, column: 26, scope: !630, inlinedAt: !627)
!646 = !DILocation(line: 556, column: 26, scope: !630, inlinedAt: !627)
!647 = !DILocation(line: 557, column: 27, scope: !630, inlinedAt: !627)
!648 = !DILocation(line: 558, column: 28, scope: !630, inlinedAt: !627)
!649 = !DILocation(line: 559, column: 25, scope: !630, inlinedAt: !627)
!650 = !DILocation(line: 560, column: 30, scope: !630, inlinedAt: !627)
!651 = !DILocation(line: 561, column: 21, scope: !630, inlinedAt: !627)
!652 = !DILocation(line: 562, column: 23, scope: !630, inlinedAt: !627)
!653 = !DILocation(line: 563, column: 25, scope: !630, inlinedAt: !627)
!654 = !DILocation(line: 564, column: 32, scope: !630, inlinedAt: !627)
!655 = !DILocation(line: 565, column: 29, scope: !630, inlinedAt: !627)
!656 = !DILocation(line: 566, column: 25, scope: !630, inlinedAt: !627)
!657 = !DILocation(line: 567, column: 21, scope: !630, inlinedAt: !627)
!658 = !DILocation(line: 568, column: 23, scope: !630, inlinedAt: !627)
!659 = !DILocation(line: 569, column: 22, scope: !630, inlinedAt: !627)
!660 = !DILocation(line: 570, column: 22, scope: !630, inlinedAt: !627)
!661 = !DILocation(line: 571, column: 23, scope: !630, inlinedAt: !627)
!662 = !DILocation(line: 572, column: 23, scope: !630, inlinedAt: !627)
!663 = !DILocation(line: 573, column: 21, scope: !630, inlinedAt: !627)
!664 = !DILocation(line: 574, column: 22, scope: !630, inlinedAt: !627)
!665 = !DILocation(line: 575, column: 21, scope: !630, inlinedAt: !627)
!666 = !DILocation(line: 576, column: 24, scope: !630, inlinedAt: !627)
!667 = !DILocation(line: 577, column: 24, scope: !630, inlinedAt: !627)
!668 = !DILocation(line: 578, column: 25, scope: !630, inlinedAt: !627)
!669 = !DILocation(line: 579, column: 26, scope: !630, inlinedAt: !627)
!670 = !DILocation(line: 580, column: 23, scope: !630, inlinedAt: !627)
!671 = !DILocation(line: 581, column: 35, scope: !630, inlinedAt: !627)
!672 = !DILocation(line: 582, column: 26, scope: !630, inlinedAt: !627)
!673 = !DILocation(line: 583, column: 28, scope: !630, inlinedAt: !627)
!674 = !DILocation(line: 584, column: 30, scope: !630, inlinedAt: !627)
!675 = !DILocation(line: 585, column: 37, scope: !630, inlinedAt: !627)
!676 = !DILocation(line: 586, column: 34, scope: !630, inlinedAt: !627)
!677 = !DILocation(line: 587, column: 30, scope: !630, inlinedAt: !627)
!678 = !DILocation(line: 588, column: 26, scope: !630, inlinedAt: !627)
!679 = !DILocation(line: 589, column: 28, scope: !630, inlinedAt: !627)
!680 = !DILocation(line: 590, column: 27, scope: !630, inlinedAt: !627)
!681 = !DILocation(line: 591, column: 27, scope: !630, inlinedAt: !627)
!682 = !DILocation(line: 592, column: 28, scope: !630, inlinedAt: !627)
!683 = !DILocation(line: 593, column: 28, scope: !630, inlinedAt: !627)
!684 = !DILocation(line: 594, column: 26, scope: !630, inlinedAt: !627)
!685 = !DILocation(line: 595, column: 27, scope: !630, inlinedAt: !627)
!686 = !DILocation(line: 596, column: 26, scope: !630, inlinedAt: !627)
!687 = !DILocation(line: 597, column: 29, scope: !630, inlinedAt: !627)
!688 = !DILocation(line: 598, column: 29, scope: !630, inlinedAt: !627)
!689 = !DILocation(line: 599, column: 30, scope: !630, inlinedAt: !627)
!690 = !DILocation(line: 600, column: 31, scope: !630, inlinedAt: !627)
!691 = !DILocation(line: 601, column: 28, scope: !630, inlinedAt: !627)
!692 = !DILocation(line: 604, column: 3, scope: !622, inlinedAt: !627)
!693 = !DILocation(line: 617, column: 10, scope: !610)
!694 = !DILocation(line: 619, column: 18, scope: !610)
!695 = !DILocation(line: 620, column: 22, scope: !696)
!696 = distinct !DILexicalBlock(scope: !610, file: !165, line: 620, column: 7)
!697 = !DILocation(line: 620, column: 7, scope: !610)
!698 = !DILocation(line: 622, column: 22, scope: !699)
!699 = distinct !DILexicalBlock(scope: !610, file: !165, line: 622, column: 7)
!700 = !DILocation(line: 625, column: 1, scope: !610)
!701 = !DISubprogram(name: "FormatLocaleString", scope: !702, file: !702, line: 71, type: !703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!702 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!703 = !DISubroutineType(types: !704)
!704 = !{!705, !709, !227, !710, null}
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !275, line: 77, baseType: !706)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !707, line: 193, baseType: !708)
!707 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!708 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!709 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!710 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !153)
!711 = !DISubprogram(name: "GetLocaleMessage", scope: !702, file: !702, line: 49, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!712 = !DISubroutineType(types: !713)
!713 = !{!153, !153}
!714 = distinct !DISubprogram(name: "ThrowException", scope: !165, file: !165, line: 911, type: !715, scopeLine: 913, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{!137, !122, !159, !153, !153}
!717 = !{!718, !719, !720, !721, !722, !723, !727}
!718 = !DILocalVariable(name: "exception", arg: 1, scope: !714, file: !165, line: 911, type: !122)
!719 = !DILocalVariable(name: "severity", arg: 2, scope: !714, file: !165, line: 912, type: !159)
!720 = !DILocalVariable(name: "reason", arg: 3, scope: !714, file: !165, line: 912, type: !153)
!721 = !DILocalVariable(name: "description", arg: 4, scope: !714, file: !165, line: 912, type: !153)
!722 = !DILocalVariable(name: "p", scope: !714, file: !165, line: 915, type: !122)
!723 = !DILocalVariable(name: "message", scope: !724, file: !165, line: 933, type: !131)
!724 = distinct !DILexicalBlock(scope: !725, file: !165, line: 933, column: 7)
!725 = distinct !DILexicalBlock(scope: !726, file: !165, line: 931, column: 5)
!726 = distinct !DILexicalBlock(scope: !714, file: !165, line: 930, column: 7)
!727 = !DILocalVariable(name: "exception", scope: !724, file: !165, line: 933, type: !123)
!728 = !DILocation(line: 0, scope: !714)
!729 = !DILocation(line: 919, column: 32, scope: !714)
!730 = !DILocation(line: 919, column: 3, scope: !714)
!731 = !DILocation(line: 921, column: 16, scope: !714)
!732 = !DILocation(line: 920, column: 23, scope: !714)
!733 = !DILocation(line: 922, column: 10, scope: !734)
!734 = distinct !DILexicalBlock(scope: !714, file: !165, line: 922, column: 7)
!735 = !DILocation(line: 922, column: 37, scope: !734)
!736 = !DILocation(line: 922, column: 44, scope: !734)
!737 = !DILocation(line: 922, column: 53, scope: !734)
!738 = !DILocation(line: 922, column: 66, scope: !734)
!739 = !DILocation(line: 923, column: 33, scope: !734)
!740 = !DILocation(line: 923, column: 8, scope: !734)
!741 = !DILocation(line: 923, column: 48, scope: !734)
!742 = !DILocation(line: 923, column: 54, scope: !734)
!743 = !DILocation(line: 924, column: 33, scope: !734)
!744 = !DILocation(line: 924, column: 8, scope: !734)
!745 = !DILocation(line: 924, column: 58, scope: !734)
!746 = !DILocation(line: 922, column: 7, scope: !714)
!747 = !DILocation(line: 929, column: 23, scope: !714)
!748 = !DILocation(line: 930, column: 9, scope: !726)
!749 = !DILocation(line: 930, column: 7, scope: !714)
!750 = !DILocation(line: 932, column: 38, scope: !725)
!751 = !DILocation(line: 932, column: 7, scope: !725)
!752 = !DILocation(line: 933, column: 7, scope: !724)
!753 = !DILocation(line: 0, scope: !724)
!754 = !DILocation(line: 935, column: 10, scope: !714)
!755 = !DILocation(line: 936, column: 14, scope: !714)
!756 = !DILocation(line: 937, column: 14, scope: !757)
!757 = distinct !DILexicalBlock(scope: !714, file: !165, line: 937, column: 7)
!758 = !DILocation(line: 937, column: 7, scope: !714)
!759 = !DILocation(line: 938, column: 15, scope: !757)
!760 = !DILocation(line: 938, column: 8, scope: !757)
!761 = !DILocation(line: 938, column: 14, scope: !757)
!762 = !DILocation(line: 938, column: 5, scope: !757)
!763 = !DILocation(line: 939, column: 19, scope: !764)
!764 = distinct !DILexicalBlock(scope: !714, file: !165, line: 939, column: 7)
!765 = !DILocation(line: 939, column: 7, scope: !714)
!766 = !DILocation(line: 940, column: 20, scope: !764)
!767 = !DILocation(line: 940, column: 8, scope: !764)
!768 = !DILocation(line: 940, column: 19, scope: !764)
!769 = !DILocation(line: 940, column: 5, scope: !764)
!770 = !DILocation(line: 941, column: 6, scope: !714)
!771 = !DILocation(line: 941, column: 15, scope: !714)
!772 = !DILocation(line: 942, column: 64, scope: !714)
!773 = !DILocation(line: 942, column: 10, scope: !714)
!774 = !DILocation(line: 943, column: 10, scope: !775)
!775 = distinct !DILexicalBlock(scope: !714, file: !165, line: 943, column: 7)
!776 = !DILocation(line: 943, column: 33, scope: !775)
!777 = !DILocation(line: 943, column: 19, scope: !775)
!778 = !DILocation(line: 943, column: 7, scope: !714)
!779 = !DILocation(line: 945, column: 26, scope: !780)
!780 = distinct !DILexicalBlock(scope: !775, file: !165, line: 944, column: 5)
!781 = !DILocation(line: 946, column: 28, scope: !780)
!782 = !DILocation(line: 946, column: 18, scope: !780)
!783 = !DILocation(line: 946, column: 24, scope: !780)
!784 = !DILocation(line: 947, column: 33, scope: !780)
!785 = !DILocation(line: 947, column: 18, scope: !780)
!786 = !DILocation(line: 947, column: 29, scope: !780)
!787 = !DILocation(line: 948, column: 5, scope: !780)
!788 = !DILocation(line: 951, column: 1, scope: !714)
!789 = distinct !DISubprogram(name: "SetErrorHandler", scope: !165, file: !165, line: 804, type: !790, scopeLine: 805, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !792)
!790 = !DISubroutineType(types: !791)
!791 = !{!155, !155}
!792 = !{!793, !794}
!793 = !DILocalVariable(name: "handler", arg: 1, scope: !789, file: !165, line: 804, type: !155)
!794 = !DILocalVariable(name: "previous_handler", scope: !789, file: !165, line: 807, type: !155)
!795 = !DILocation(line: 0, scope: !789)
!796 = !DILocation(line: 809, column: 20, scope: !789)
!797 = !DILocation(line: 810, column: 16, scope: !789)
!798 = !DILocation(line: 811, column: 3, scope: !789)
!799 = distinct !DISubprogram(name: "SetFatalErrorHandler", scope: !165, file: !165, line: 837, type: !800, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !802)
!800 = !DISubroutineType(types: !801)
!801 = !{!166, !166}
!802 = !{!803, !804}
!803 = !DILocalVariable(name: "handler", arg: 1, scope: !799, file: !165, line: 837, type: !166)
!804 = !DILocalVariable(name: "previous_handler", scope: !799, file: !165, line: 840, type: !166)
!805 = !DILocation(line: 0, scope: !799)
!806 = !DILocation(line: 842, column: 20, scope: !799)
!807 = !DILocation(line: 843, column: 22, scope: !799)
!808 = !DILocation(line: 844, column: 3, scope: !799)
!809 = distinct !DISubprogram(name: "SetWarningHandler", scope: !165, file: !165, line: 870, type: !810, scopeLine: 871, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !812)
!810 = !DISubroutineType(types: !811)
!811 = !{!160, !160}
!812 = !{!813, !814}
!813 = !DILocalVariable(name: "handler", arg: 1, scope: !809, file: !165, line: 870, type: !160)
!814 = !DILocalVariable(name: "previous_handler", scope: !809, file: !165, line: 873, type: !160)
!815 = !DILocation(line: 0, scope: !809)
!816 = !DILocation(line: 875, column: 20, scope: !809)
!817 = !DILocation(line: 876, column: 18, scope: !809)
!818 = !DILocation(line: 877, column: 3, scope: !809)
!819 = !DISubprogram(name: "GetLastValueInLinkedList", scope: !149, file: !149, line: 66, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!820 = !DISubprogram(name: "LocaleCompare", scope: !298, file: !298, line: 66, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!821 = !DISubroutineType(types: !822)
!822 = !{!129, !153, !153}
!823 = !DISubprogram(name: "AppendValueToLinkedList", scope: !149, file: !149, line: 46, type: !824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!824 = !DISubroutineType(types: !825)
!825 = !{!137, !147, !826}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!828 = distinct !DISubprogram(name: "ThrowMagickExceptionList", scope: !165, file: !165, line: 991, type: !829, scopeLine: 995, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !832)
!829 = !DISubroutineType(types: !830)
!830 = !{!137, !122, !153, !153, !227, !159, !153, !153, !831}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!832 = !{!833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848}
!833 = !DILocalVariable(name: "exception", arg: 1, scope: !828, file: !165, line: 992, type: !122)
!834 = !DILocalVariable(name: "module", arg: 2, scope: !828, file: !165, line: 992, type: !153)
!835 = !DILocalVariable(name: "function", arg: 3, scope: !828, file: !165, line: 992, type: !153)
!836 = !DILocalVariable(name: "line", arg: 4, scope: !828, file: !165, line: 993, type: !227)
!837 = !DILocalVariable(name: "severity", arg: 5, scope: !828, file: !165, line: 993, type: !159)
!838 = !DILocalVariable(name: "tag", arg: 6, scope: !828, file: !165, line: 993, type: !153)
!839 = !DILocalVariable(name: "format", arg: 7, scope: !828, file: !165, line: 994, type: !153)
!840 = !DILocalVariable(name: "operands", arg: 8, scope: !828, file: !165, line: 994, type: !831)
!841 = !DILocalVariable(name: "message", scope: !828, file: !165, line: 997, type: !248)
!842 = !DILocalVariable(name: "path", scope: !828, file: !165, line: 998, type: !248)
!843 = !DILocalVariable(name: "reason", scope: !828, file: !165, line: 999, type: !248)
!844 = !DILocalVariable(name: "locale", scope: !828, file: !165, line: 1002, type: !153)
!845 = !DILocalVariable(name: "type", scope: !828, file: !165, line: 1003, type: !153)
!846 = !DILocalVariable(name: "n", scope: !828, file: !165, line: 1006, type: !129)
!847 = !DILocalVariable(name: "status", scope: !828, file: !165, line: 1009, type: !137)
!848 = !DILocalVariable(name: "length", scope: !828, file: !165, line: 1012, type: !144)
!849 = !DILocation(line: 0, scope: !828)
!850 = !DILocation(line: 996, column: 3, scope: !828)
!851 = !DILocation(line: 997, column: 5, scope: !828)
!852 = !DILocation(line: 998, column: 5, scope: !828)
!853 = !DILocation(line: 999, column: 5, scope: !828)
!854 = !DILocation(line: 1016, column: 10, scope: !828)
!855 = !DILocation(line: 1017, column: 10, scope: !828)
!856 = !DILocation(line: 1018, column: 10, scope: !828)
!857 = !DILocation(line: 1019, column: 10, scope: !828)
!858 = !DILocation(line: 1021, column: 21, scope: !828)
!859 = !DILocation(line: 1021, column: 42, scope: !828)
!860 = !DILocation(line: 1021, column: 5, scope: !828)
!861 = !DILocation(line: 1025, column: 9, scope: !862)
!862 = distinct !DILexicalBlock(scope: !828, file: !165, line: 1025, column: 7)
!863 = !DILocation(line: 1025, column: 7, scope: !828)
!864 = !DILocation(line: 1026, column: 5, scope: !862)
!865 = !DILocation(line: 1026, column: 28, scope: !862)
!866 = !DILocation(line: 1027, column: 10, scope: !828)
!867 = !DILocation(line: 1028, column: 3, scope: !828)
!868 = !DILocation(line: 1030, column: 38, scope: !869)
!869 = distinct !DILexicalBlock(scope: !828, file: !165, line: 1030, column: 7)
!870 = !DILocation(line: 1032, column: 36, scope: !871)
!871 = distinct !DILexicalBlock(scope: !828, file: !165, line: 1032, column: 7)
!872 = !DILocation(line: 1034, column: 16, scope: !873)
!873 = distinct !DILexicalBlock(scope: !828, file: !165, line: 1034, column: 7)
!874 = !DILocation(line: 1034, column: 7, scope: !828)
!875 = !DILocation(line: 1037, column: 24, scope: !828)
!876 = !DILocation(line: 1036, column: 10, scope: !828)
!877 = !DILocation(line: 1038, column: 10, scope: !828)
!878 = !DILocation(line: 1040, column: 1, scope: !828)
!879 = !DILocation(line: 1039, column: 3, scope: !828)
!880 = !DISubprogram(name: "ConcatenateMagickString", scope: !298, file: !298, line: 76, type: !605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!881 = !DISubprogram(name: "LogMagickEvent", scope: !85, file: !85, line: 83, type: !882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!882 = !DISubroutineType(types: !883)
!883 = !{!137, !884, !153, !153, !227, !153, null}
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !85, line: 58, baseType: !84)
!886 = !DISubprogram(name: "GetPathComponent", scope: !110, file: !110, line: 68, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !153, !889, !131}
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "PathType", file: !110, line: 36, baseType: !109)
!890 = distinct !DISubprogram(name: "DefaultErrorHandler", scope: !165, file: !165, line: 283, type: !157, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !891)
!891 = !{!892, !893, !894}
!892 = !DILocalVariable(name: "severity", arg: 1, scope: !890, file: !165, line: 283, type: !159)
!893 = !DILocalVariable(name: "reason", arg: 2, scope: !890, file: !165, line: 284, type: !153)
!894 = !DILocalVariable(name: "description", arg: 3, scope: !890, file: !165, line: 284, type: !153)
!895 = !DILocation(line: 0, scope: !890)
!896 = !DILocation(line: 288, column: 14, scope: !897)
!897 = distinct !DILexicalBlock(scope: !890, file: !165, line: 288, column: 7)
!898 = !DILocation(line: 288, column: 7, scope: !890)
!899 = !DILocation(line: 290, column: 27, scope: !890)
!900 = !DILocation(line: 290, column: 43, scope: !890)
!901 = !DILocation(line: 290, column: 10, scope: !890)
!902 = !DILocation(line: 291, column: 19, scope: !903)
!903 = distinct !DILexicalBlock(scope: !890, file: !165, line: 291, column: 7)
!904 = !DILocation(line: 291, column: 7, scope: !890)
!905 = !DILocation(line: 292, column: 29, scope: !903)
!906 = !DILocation(line: 292, column: 12, scope: !903)
!907 = !DILocation(line: 292, column: 5, scope: !903)
!908 = !DILocation(line: 293, column: 27, scope: !890)
!909 = !DILocation(line: 293, column: 10, scope: !890)
!910 = !DILocation(line: 294, column: 17, scope: !890)
!911 = !DILocation(line: 294, column: 10, scope: !890)
!912 = !DILocation(line: 295, column: 1, scope: !890)
!913 = !DISubprogram(name: "FormatLocaleFile", scope: !702, file: !702, line: 67, type: !914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!914 = !DISubroutineType(types: !915)
!915 = !{!705, !916, !710, null}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !918, line: 7, baseType: !919)
!918 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !920, line: 49, size: 1728, elements: !921)
!920 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!921 = !{!922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !937, !939, !940, !941, !943, !945, !947, !949, !952, !954, !957, !960, !961, !962, !963, !964}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !919, file: !920, line: 51, baseType: !129, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !919, file: !920, line: 54, baseType: !131, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !919, file: !920, line: 55, baseType: !131, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !919, file: !920, line: 56, baseType: !131, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !919, file: !920, line: 57, baseType: !131, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !919, file: !920, line: 58, baseType: !131, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !919, file: !920, line: 59, baseType: !131, size: 64, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !919, file: !920, line: 60, baseType: !131, size: 64, offset: 448)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !919, file: !920, line: 61, baseType: !131, size: 64, offset: 512)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !919, file: !920, line: 64, baseType: !131, size: 64, offset: 576)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !919, file: !920, line: 65, baseType: !131, size: 64, offset: 640)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !919, file: !920, line: 66, baseType: !131, size: 64, offset: 704)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !919, file: !920, line: 68, baseType: !935, size: 64, offset: 768)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !920, line: 36, flags: DIFlagFwdDecl)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !919, file: !920, line: 70, baseType: !938, size: 64, offset: 832)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !919, file: !920, line: 72, baseType: !129, size: 32, offset: 896)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !919, file: !920, line: 73, baseType: !129, size: 32, offset: 928)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !919, file: !920, line: 74, baseType: !942, size: 64, offset: 960)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !707, line: 152, baseType: !708)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !919, file: !920, line: 77, baseType: !944, size: 16, offset: 1024)
!944 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !919, file: !920, line: 78, baseType: !946, size: 8, offset: 1040)
!946 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !919, file: !920, line: 79, baseType: !948, size: 8, offset: 1048)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 8, elements: !287)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !919, file: !920, line: 81, baseType: !950, size: 64, offset: 1088)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !920, line: 43, baseType: null)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !919, file: !920, line: 89, baseType: !953, size: 64, offset: 1152)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !707, line: 153, baseType: !708)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !919, file: !920, line: 91, baseType: !955, size: 64, offset: 1216)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !920, line: 37, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !919, file: !920, line: 92, baseType: !958, size: 64, offset: 1280)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !920, line: 38, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !919, file: !920, line: 93, baseType: !938, size: 64, offset: 1344)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !919, file: !920, line: 94, baseType: !135, size: 64, offset: 1408)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !919, file: !920, line: 95, baseType: !144, size: 64, offset: 1472)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !919, file: !920, line: 96, baseType: !129, size: 32, offset: 1536)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !919, file: !920, line: 98, baseType: !965, size: 160, offset: 1568)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 160, elements: !966)
!966 = !{!967}
!967 = !DISubrange(count: 20)
!968 = !DISubprogram(name: "GetClientName", scope: !969, file: !969, line: 27, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!969 = !DIFile(filename: "apps/538.imagick_r/src/magick/client.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "344c97aae512d59869dffffe3d724c6b")
!970 = !DISubroutineType(types: !971)
!971 = !{!153}
!972 = !DISubprogram(name: "fflush", scope: !275, file: !275, line: 218, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!973 = !DISubroutineType(types: !974)
!974 = !{!129, !916}
!975 = distinct !DISubprogram(name: "DefaultFatalErrorHandler", scope: !165, file: !165, line: 325, type: !157, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !976)
!976 = !{!977, !978, !979}
!977 = !DILocalVariable(name: "severity", arg: 1, scope: !975, file: !165, line: 325, type: !159)
!978 = !DILocalVariable(name: "reason", arg: 2, scope: !975, file: !165, line: 326, type: !153)
!979 = !DILocalVariable(name: "description", arg: 3, scope: !975, file: !165, line: 326, type: !153)
!980 = !DILocation(line: 0, scope: !975)
!981 = !DILocation(line: 328, column: 14, scope: !982)
!982 = distinct !DILexicalBlock(scope: !975, file: !165, line: 328, column: 7)
!983 = !DILocation(line: 328, column: 7, scope: !975)
!984 = !DILocation(line: 329, column: 5, scope: !982)
!985 = !DILocation(line: 330, column: 27, scope: !975)
!986 = !DILocation(line: 330, column: 43, scope: !975)
!987 = !DILocation(line: 330, column: 10, scope: !975)
!988 = !DILocation(line: 331, column: 19, scope: !989)
!989 = distinct !DILexicalBlock(scope: !975, file: !165, line: 331, column: 7)
!990 = !DILocation(line: 331, column: 7, scope: !975)
!991 = !DILocation(line: 332, column: 29, scope: !989)
!992 = !DILocation(line: 332, column: 12, scope: !989)
!993 = !DILocation(line: 332, column: 5, scope: !989)
!994 = !DILocation(line: 333, column: 27, scope: !975)
!995 = !DILocation(line: 333, column: 10, scope: !975)
!996 = !DILocation(line: 334, column: 17, scope: !975)
!997 = !DILocation(line: 334, column: 10, scope: !975)
!998 = !DILocation(line: 335, column: 3, scope: !975)
!999 = !DILocation(line: 336, column: 44, scope: !975)
!1000 = !DILocation(line: 336, column: 3, scope: !975)
!1001 = distinct !DISubprogram(name: "DefaultWarningHandler", scope: !165, file: !165, line: 367, type: !157, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1002)
!1002 = !{!1003, !1004, !1005}
!1003 = !DILocalVariable(name: "severity", arg: 1, scope: !1001, file: !165, line: 367, type: !159)
!1004 = !DILocalVariable(name: "reason", arg: 2, scope: !1001, file: !165, line: 368, type: !153)
!1005 = !DILocalVariable(name: "description", arg: 3, scope: !1001, file: !165, line: 368, type: !153)
!1006 = !DILocation(line: 0, scope: !1001)
!1007 = !DILocation(line: 372, column: 14, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1001, file: !165, line: 372, column: 7)
!1009 = !DILocation(line: 372, column: 7, scope: !1001)
!1010 = !DILocation(line: 374, column: 27, scope: !1001)
!1011 = !DILocation(line: 374, column: 43, scope: !1001)
!1012 = !DILocation(line: 374, column: 10, scope: !1001)
!1013 = !DILocation(line: 375, column: 19, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1001, file: !165, line: 375, column: 7)
!1015 = !DILocation(line: 375, column: 7, scope: !1001)
!1016 = !DILocation(line: 376, column: 29, scope: !1014)
!1017 = !DILocation(line: 376, column: 12, scope: !1014)
!1018 = !DILocation(line: 376, column: 5, scope: !1014)
!1019 = !DILocation(line: 377, column: 27, scope: !1001)
!1020 = !DILocation(line: 377, column: 10, scope: !1001)
!1021 = !DILocation(line: 378, column: 17, scope: !1001)
!1022 = !DILocation(line: 378, column: 10, scope: !1001)
!1023 = !DILocation(line: 379, column: 1, scope: !1001)
