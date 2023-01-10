; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/locale.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._LocaleInfo = type { ptr, ptr, ptr, i32, ptr, ptr, i64 }

@.str = private unnamed_addr constant [85 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/locale.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@locale_semaphore = internal global ptr null, align 8, !dbg !0
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@locale_cache = internal unnamed_addr global ptr null, align 8, !dbg !258
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Searching for locale file: \22%s\22\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Tag/Message\0A\00", align 1
@.str.10 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"LC_MESSAGES\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"locale.xml\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"english.xml\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"built-in\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Loading locale configure file \22%s\22 ...\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"IncludeElementNestedTooDeeply\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"<locale\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"</locale>\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"<localemap>\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"</localemap>\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"<message\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"</message>\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.44 = private unnamed_addr constant [143 x i8] c"<?xml version=\221.0\22?><localemap>  <locale name=\22C\22>    <Exception>     <Message name=\22\22>     </Message>    </Exception>  </locale></localemap>\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyLocaleOptions(ptr noundef %messages) local_unnamed_addr #0 !dbg !270 {
entry:
  call void @llvm.dbg.value(metadata ptr %messages, metadata !274, metadata !DIExpression()), !dbg !275
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 304, ptr noundef nonnull @.str.2) #17, !dbg !276
  %call1 = tail call ptr @DestroyLinkedList(ptr noundef %messages, ptr noundef nonnull @DestroyOptions) #17, !dbg !277
  ret ptr %call1, !dbg !278
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !279 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !286 ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @DestroyOptions(ptr noundef %message) #0 !dbg !289 {
entry:
  call void @llvm.dbg.value(metadata ptr %message, metadata !291, metadata !DIExpression()), !dbg !292
  %call = tail call ptr @DestroyStringInfo(ptr noundef %message) #17, !dbg !293
  ret ptr %call, !dbg !294
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @FormatLocaleFileList(ptr nocapture noundef %file, ptr noalias nocapture noundef readonly %format, ptr noundef %operands) local_unnamed_addr #3 !dbg !295 {
entry:
  call void @llvm.dbg.value(metadata ptr %file, metadata !309, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata ptr %format, metadata !310, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata ptr %operands, metadata !311, metadata !DIExpression()), !dbg !313
  %call = tail call i32 @vfprintf(ptr noundef %file, ptr noundef %format, ptr noundef %operands), !dbg !314
  %conv = sext i32 %call to i64, !dbg !315
  call void @llvm.dbg.value(metadata i64 %conv, metadata !312, metadata !DIExpression()), !dbg !313
  ret i64 %conv, !dbg !316
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @FormatLocaleFile(ptr nocapture noundef %file, ptr noalias nocapture noundef readonly %format, ...) local_unnamed_addr #3 !dbg !317 {
entry:
  %operands = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %file, metadata !321, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata ptr %format, metadata !322, metadata !DIExpression()), !dbg !330
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %operands) #17, !dbg !331
  call void @llvm.dbg.declare(metadata ptr %operands, metadata !324, metadata !DIExpression()), !dbg !332
  call void @llvm.va_start(ptr nonnull %operands), !dbg !333
  call void @llvm.dbg.value(metadata ptr %file, metadata !309, metadata !DIExpression()) #17, !dbg !334
  call void @llvm.dbg.value(metadata ptr %format, metadata !310, metadata !DIExpression()) #17, !dbg !334
  call void @llvm.dbg.value(metadata ptr %operands, metadata !311, metadata !DIExpression()) #17, !dbg !334
  %call.i = call i32 @vfprintf(ptr noundef %file, ptr noundef %format, ptr noundef nonnull %operands) #17, !dbg !336
  %conv.i = sext i32 %call.i to i64, !dbg !337
  call void @llvm.dbg.value(metadata i64 %conv.i, metadata !312, metadata !DIExpression()) #17, !dbg !334
  call void @llvm.dbg.value(metadata i64 %conv.i, metadata !323, metadata !DIExpression()), !dbg !330
  call void @llvm.va_end(ptr nonnull %operands), !dbg !338
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %operands) #17, !dbg !339
  ret i64 %conv.i, !dbg !340
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @FormatLocaleStringList(ptr noalias nocapture noundef %string, i64 noundef %length, ptr noalias nocapture noundef readonly %format, ptr noundef %operands) local_unnamed_addr #3 !dbg !341 {
entry:
  call void @llvm.dbg.value(metadata ptr %string, metadata !346, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i64 %length, metadata !347, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata ptr %format, metadata !348, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata ptr %operands, metadata !349, metadata !DIExpression()), !dbg !351
  %call = tail call i32 @vsnprintf(ptr noundef %string, i64 noundef %length, ptr noundef %format, ptr noundef %operands) #17, !dbg !352
  call void @llvm.dbg.value(metadata i32 %call, metadata !350, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !351
  %cmp = icmp slt i32 %call, 0, !dbg !353
  br i1 %cmp, label %if.then, label %if.end, !dbg !355

if.then:                                          ; preds = %entry
  %sub = add i64 %length, -1, !dbg !356
  %arrayidx = getelementptr inbounds i8, ptr %string, i64 %sub, !dbg !357
  store i8 0, ptr %arrayidx, align 1, !dbg !358, !tbaa !359
  br label %if.end, !dbg !357

if.end:                                           ; preds = %if.then, %entry
  %conv = sext i32 %call to i64, !dbg !362
  call void @llvm.dbg.value(metadata i64 %conv, metadata !350, metadata !DIExpression()), !dbg !351
  ret i64 %conv, !dbg !363
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @FormatLocaleString(ptr noalias nocapture noundef %string, i64 noundef %length, ptr noalias nocapture noundef readonly %format, ...) local_unnamed_addr #3 !dbg !364 {
entry:
  %operands = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %string, metadata !368, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i64 %length, metadata !369, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata ptr %format, metadata !370, metadata !DIExpression()), !dbg !373
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %operands) #17, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %operands, metadata !372, metadata !DIExpression()), !dbg !375
  call void @llvm.va_start(ptr nonnull %operands), !dbg !376
  call void @llvm.dbg.value(metadata ptr %string, metadata !346, metadata !DIExpression()) #17, !dbg !377
  call void @llvm.dbg.value(metadata i64 %length, metadata !347, metadata !DIExpression()) #17, !dbg !377
  call void @llvm.dbg.value(metadata ptr %format, metadata !348, metadata !DIExpression()) #17, !dbg !377
  call void @llvm.dbg.value(metadata ptr %operands, metadata !349, metadata !DIExpression()) #17, !dbg !377
  %call.i = call i32 @vsnprintf(ptr noundef %string, i64 noundef %length, ptr noundef %format, ptr noundef nonnull %operands) #17, !dbg !379
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !350, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #17, !dbg !377
  %cmp.i = icmp slt i32 %call.i, 0, !dbg !380
  br i1 %cmp.i, label %if.then.i, label %FormatLocaleStringList.exit, !dbg !381

if.then.i:                                        ; preds = %entry
  %sub.i = add i64 %length, -1, !dbg !382
  %arrayidx.i = getelementptr inbounds i8, ptr %string, i64 %sub.i, !dbg !383
  store i8 0, ptr %arrayidx.i, align 1, !dbg !384, !tbaa !359, !alias.scope !385, !noalias !388
  br label %FormatLocaleStringList.exit, !dbg !383

FormatLocaleStringList.exit:                      ; preds = %entry, %if.then.i
  %conv.i = sext i32 %call.i to i64, !dbg !390
  call void @llvm.dbg.value(metadata i64 %conv.i, metadata !350, metadata !DIExpression()) #17, !dbg !377
  call void @llvm.dbg.value(metadata i64 %conv.i, metadata !371, metadata !DIExpression()), !dbg !373
  call void @llvm.va_end(ptr nonnull %operands), !dbg !391
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %operands) #17, !dbg !392
  ret i64 %conv.i, !dbg !393
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetLocaleInfo_(ptr noundef %tag, ptr noundef %exception) local_unnamed_addr #0 !dbg !394 {
entry:
  %exception1.i.i = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %tag, metadata !411, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata ptr %exception, metadata !412, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata ptr %exception, metadata !415, metadata !DIExpression()) #17, !dbg !426
  %0 = load ptr, ptr @locale_cache, align 8, !dbg !429, !tbaa !430
  %cmp.i = icmp eq ptr %0, null, !dbg !432
  br i1 %cmp.i, label %if.then.i, label %if.end, !dbg !433

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @locale_semaphore, align 8, !dbg !434, !tbaa !430
  %cmp1.i = icmp eq ptr %1, null, !dbg !436
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i, !dbg !437

if.then2.i:                                       ; preds = %if.then.i
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @locale_semaphore) #17, !dbg !438
  %.pre.i = load ptr, ptr @locale_semaphore, align 8, !dbg !439, !tbaa !430
  br label %if.end.i, !dbg !438

if.end.i:                                         ; preds = %if.then2.i, %if.then.i
  %2 = phi ptr [ %.pre.i, %if.then2.i ], [ %1, %if.then.i ], !dbg !439
  tail call void @LockSemaphoreInfo(ptr noundef %2) #17, !dbg !440
  %3 = load ptr, ptr @locale_cache, align 8, !dbg !441, !tbaa !430
  %cmp3.i = icmp eq ptr %3, null, !dbg !442
  br i1 %cmp3.i, label %if.then4.i, label %IsLocaleTreeInstantiated.exit, !dbg !443

if.then4.i:                                       ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr null, metadata !420, metadata !DIExpression()) #17, !dbg !444
  %call.i = tail call ptr @setlocale(i32 noundef 0, ptr noundef null) #17, !dbg !445
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !425, metadata !DIExpression()) #17, !dbg !444
  %cmp5.not.i = icmp eq ptr %call.i, null, !dbg !446
  br i1 %cmp5.not.i, label %if.end12.i, label %if.end8.i, !dbg !448

if.end8.i:                                        ; preds = %if.then4.i
  %call7.i = tail call ptr @ConstantString(ptr noundef nonnull %call.i) #17, !dbg !449
  call void @llvm.dbg.value(metadata ptr %call7.i, metadata !420, metadata !DIExpression()) #17, !dbg !444
  %cmp9.i = icmp eq ptr %call7.i, null, !dbg !450
  br i1 %cmp9.i, label %if.end12.i, label %if.end28.i, !dbg !452

if.end12.i:                                       ; preds = %if.end8.i, %if.then4.i
  %call11.i = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.14) #17, !dbg !453
  call void @llvm.dbg.value(metadata ptr %call11.i, metadata !420, metadata !DIExpression()) #17, !dbg !444
  %cmp13.i = icmp eq ptr %call11.i, null, !dbg !454
  br i1 %cmp13.i, label %if.end16.i, label %if.end28.i, !dbg !456

if.end16.i:                                       ; preds = %if.end12.i
  %call15.i = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.15) #17, !dbg !457
  call void @llvm.dbg.value(metadata ptr %call15.i, metadata !420, metadata !DIExpression()) #17, !dbg !444
  %cmp17.i = icmp eq ptr %call15.i, null, !dbg !458
  br i1 %cmp17.i, label %if.end20.i, label %if.end28.i, !dbg !460

if.end20.i:                                       ; preds = %if.end16.i
  %call19.i = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.16) #17, !dbg !461
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !420, metadata !DIExpression()) #17, !dbg !444
  %cmp21.i = icmp eq ptr %call19.i, null, !dbg !462
  br i1 %cmp21.i, label %if.end24.i, label %if.end28.i, !dbg !464

if.end24.i:                                       ; preds = %if.end20.i
  %call23.i = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.17) #17, !dbg !465
  call void @llvm.dbg.value(metadata ptr %call23.i, metadata !420, metadata !DIExpression()) #17, !dbg !444
  %cmp25.i = icmp eq ptr %call23.i, null, !dbg !466
  br i1 %cmp25.i, label %if.then26.i, label %if.end28.i, !dbg !468

if.then26.i:                                      ; preds = %if.end24.i
  %call27.i = tail call ptr @ConstantString(ptr noundef nonnull @.str.18) #17, !dbg !469
  call void @llvm.dbg.value(metadata ptr %call27.i, metadata !420, metadata !DIExpression()) #17, !dbg !444
  br label %if.end28.i, !dbg !470

if.end28.i:                                       ; preds = %if.then26.i, %if.end24.i, %if.end20.i, %if.end16.i, %if.end12.i, %if.end8.i
  %locale.5.i = phi ptr [ %call27.i, %if.then26.i ], [ %call23.i, %if.end24.i ], [ %call19.i, %if.end20.i ], [ %call15.i, %if.end16.i ], [ %call11.i, %if.end12.i ], [ %call7.i, %if.end8.i ], !dbg !444
  call void @llvm.dbg.value(metadata ptr %locale.5.i, metadata !420, metadata !DIExpression()) #17, !dbg !444
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !471, metadata !DIExpression()) #17, !dbg !488
  call void @llvm.dbg.value(metadata ptr %locale.5.i, metadata !476, metadata !DIExpression()) #17, !dbg !488
  call void @llvm.dbg.value(metadata ptr %exception, metadata !477, metadata !DIExpression()) #17, !dbg !488
  %call.i.i = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef null, ptr noundef nonnull @DestroyLocaleNode) #17, !dbg !490
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !480, metadata !DIExpression()) #17, !dbg !488
  %cmp.i.i = icmp eq ptr %call.i.i, null, !dbg !491
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !492

if.then.i.i:                                      ; preds = %if.end28.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception1.i.i) #17, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %exception1.i.i, metadata !484, metadata !DIExpression()) #17, !dbg !493
  call void @GetExceptionInfo(ptr noundef nonnull %exception1.i.i) #17, !dbg !493
  %call2.i.i = tail call ptr @__errno_location() #18, !dbg !493
  %4 = load i32, ptr %call2.i.i, align 4, !dbg !493, !tbaa !494
  %call3.i.i = call ptr @GetExceptionMessage(i32 noundef %4) #17, !dbg !493
  call void @llvm.dbg.value(metadata ptr %call3.i.i, metadata !481, metadata !DIExpression()) #17, !dbg !496
  %call4.i.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception1.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 198, i32 noundef 700, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %call3.i.i) #17, !dbg !493
  %call5.i.i = call ptr @DestroyString(ptr noundef %call3.i.i) #17, !dbg !493
  call void @llvm.dbg.value(metadata ptr %call5.i.i, metadata !481, metadata !DIExpression()) #17, !dbg !496
  call void @CatchException(ptr noundef nonnull %exception1.i.i) #17, !dbg !493
  %call6.i.i = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception1.i.i) #17, !dbg !493
  call void @MagickCoreTerminus() #17, !dbg !493
  call void @_exit(i32 noundef 1) #19, !dbg !493
  unreachable, !dbg !493

if.end.i.i:                                       ; preds = %if.end28.i
  call void @llvm.dbg.value(metadata i32 1, metadata !478, metadata !DIExpression()) #17, !dbg !488
  %call7.i.i = tail call ptr @GetLocaleOptions(ptr noundef nonnull @.str.19, ptr noundef %exception) #17, !dbg !497
  call void @llvm.dbg.value(metadata ptr %call7.i.i, metadata !487, metadata !DIExpression()) #17, !dbg !498
  %call8.i.i = tail call ptr @GetNextValueInLinkedList(ptr noundef %call7.i.i) #17, !dbg !499
  call void @llvm.dbg.value(metadata ptr %call8.i.i, metadata !485, metadata !DIExpression()) #17, !dbg !498
  call void @llvm.dbg.value(metadata i32 poison, metadata !478, metadata !DIExpression()) #17, !dbg !488
  %cmp9.not3.i.i = icmp eq ptr %call8.i.i, null, !dbg !500
  br i1 %cmp9.not3.i.i, label %while.end.i.i, label %while.body.i.i, !dbg !501

while.body.i.i:                                   ; preds = %if.end.i.i, %while.body.i.i
  %option.04.i.i = phi ptr [ %call13.i.i, %while.body.i.i ], [ %call8.i.i, %if.end.i.i ]
  call void @llvm.dbg.value(metadata ptr %option.04.i.i, metadata !485, metadata !DIExpression()) #17, !dbg !498
  %call10.i.i = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %option.04.i.i) #17, !dbg !502
  %call11.i.i = tail call ptr @GetStringInfoPath(ptr noundef nonnull %option.04.i.i) #17, !dbg !504
  %call12.i.i = tail call fastcc i32 @LoadLocaleCache(ptr noundef nonnull %call.i.i, ptr noundef %call10.i.i, ptr noundef %call11.i.i, ptr noundef %locale.5.i, i64 noundef 0, ptr noundef %exception) #17, !dbg !505
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 %call12.i.i), metadata !478, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value)) #17, !dbg !488
  %call13.i.i = tail call ptr @GetNextValueInLinkedList(ptr noundef %call7.i.i) #17, !dbg !506
  call void @llvm.dbg.value(metadata ptr %call13.i.i, metadata !485, metadata !DIExpression()) #17, !dbg !498
  call void @llvm.dbg.value(metadata i32 poison, metadata !478, metadata !DIExpression()) #17, !dbg !488
  %cmp9.not.i.i = icmp eq ptr %call13.i.i, null, !dbg !500
  br i1 %cmp9.not.i.i, label %while.end.i.i, label %while.body.i.i, !dbg !501, !llvm.loop !507

while.end.i.i:                                    ; preds = %while.body.i.i, %if.end.i.i
  call void @llvm.dbg.value(metadata ptr %call7.i.i, metadata !274, metadata !DIExpression()) #17, !dbg !511
  %call.i.i.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 304, ptr noundef nonnull @.str.2) #17, !dbg !513
  %call1.i.i.i = tail call ptr @DestroyLinkedList(ptr noundef %call7.i.i, ptr noundef nonnull @DestroyOptions) #17, !dbg !514
  call void @llvm.dbg.value(metadata ptr undef, metadata !487, metadata !DIExpression()) #17, !dbg !498
  %call15.i.i = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef nonnull %call.i.i) #17, !dbg !515
  %cmp16.i.i = icmp eq i64 %call15.i.i, 0, !dbg !517
  br i1 %cmp16.i.i, label %if.then17.i.i, label %if.end30.i.i, !dbg !518

if.then17.i.i:                                    ; preds = %while.end.i.i
  %call18.i.i = tail call ptr @GetLocaleOptions(ptr noundef nonnull @.str.22, ptr noundef %exception) #17, !dbg !519
  call void @llvm.dbg.value(metadata ptr %call18.i.i, metadata !487, metadata !DIExpression()) #17, !dbg !498
  %call19.i.i = tail call ptr @GetNextValueInLinkedList(ptr noundef %call18.i.i) #17, !dbg !521
  call void @llvm.dbg.value(metadata ptr %call19.i.i, metadata !485, metadata !DIExpression()) #17, !dbg !498
  call void @llvm.dbg.value(metadata i32 poison, metadata !478, metadata !DIExpression()) #17, !dbg !488
  %cmp21.not5.i.i = icmp eq ptr %call19.i.i, null, !dbg !522
  br i1 %cmp21.not5.i.i, label %while.end28.i.i, label %while.body22.i.i, !dbg !523

while.body22.i.i:                                 ; preds = %if.then17.i.i, %while.body22.i.i
  %option.16.i.i = phi ptr [ %call27.i.i, %while.body22.i.i ], [ %call19.i.i, %if.then17.i.i ]
  call void @llvm.dbg.value(metadata ptr %option.16.i.i, metadata !485, metadata !DIExpression()) #17, !dbg !498
  %call23.i.i = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %option.16.i.i) #17, !dbg !524
  %call24.i.i = tail call ptr @GetStringInfoPath(ptr noundef nonnull %option.16.i.i) #17, !dbg !526
  %call25.i.i = tail call fastcc i32 @LoadLocaleCache(ptr noundef nonnull %call.i.i, ptr noundef %call23.i.i, ptr noundef %call24.i.i, ptr noundef %locale.5.i, i64 noundef 0, ptr noundef %exception) #17, !dbg !527
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 %call25.i.i), metadata !478, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value)) #17, !dbg !488
  %call27.i.i = tail call ptr @GetNextValueInLinkedList(ptr noundef %call18.i.i) #17, !dbg !528
  call void @llvm.dbg.value(metadata ptr %call27.i.i, metadata !485, metadata !DIExpression()) #17, !dbg !498
  call void @llvm.dbg.value(metadata i32 poison, metadata !478, metadata !DIExpression()) #17, !dbg !488
  %cmp21.not.i.i = icmp eq ptr %call27.i.i, null, !dbg !522
  br i1 %cmp21.not.i.i, label %while.end28.i.i, label %while.body22.i.i, !dbg !523, !llvm.loop !529

while.end28.i.i:                                  ; preds = %while.body22.i.i, %if.then17.i.i
  call void @llvm.dbg.value(metadata ptr %call18.i.i, metadata !274, metadata !DIExpression()) #17, !dbg !531
  %call.i1.i.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 304, ptr noundef nonnull @.str.2) #17, !dbg !533
  %call1.i2.i.i = tail call ptr @DestroyLinkedList(ptr noundef %call18.i.i, ptr noundef nonnull @DestroyOptions) #17, !dbg !534
  call void @llvm.dbg.value(metadata ptr undef, metadata !487, metadata !DIExpression()) #17, !dbg !498
  br label %if.end30.i.i, !dbg !535

if.end30.i.i:                                     ; preds = %while.end28.i.i, %while.end.i.i
  call void @llvm.dbg.value(metadata i32 undef, metadata !478, metadata !DIExpression()) #17, !dbg !488
  %call31.i.i = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef nonnull %call.i.i) #17, !dbg !536
  %cmp32.i.i = icmp eq i64 %call31.i.i, 0, !dbg !538
  br i1 %cmp32.i.i, label %if.then33.i.i, label %AcquireLocaleSplayTree.exit.i, !dbg !539

if.then33.i.i:                                    ; preds = %if.end30.i.i
  %call34.i.i = tail call fastcc i32 @LoadLocaleCache(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.23, ptr noundef %locale.5.i, i64 noundef 0, ptr noundef %exception) #17, !dbg !540
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i32 %call34.i.i), metadata !478, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value)) #17, !dbg !488
  br label %AcquireLocaleSplayTree.exit.i, !dbg !541

AcquireLocaleSplayTree.exit.i:                    ; preds = %if.then33.i.i, %if.end30.i.i
  store ptr %call.i.i, ptr @locale_cache, align 8, !dbg !542, !tbaa !430
  %call30.i = tail call ptr @DestroyString(ptr noundef %locale.5.i) #17, !dbg !543
  call void @llvm.dbg.value(metadata ptr %call30.i, metadata !420, metadata !DIExpression()) #17, !dbg !444
  br label %IsLocaleTreeInstantiated.exit, !dbg !544

IsLocaleTreeInstantiated.exit:                    ; preds = %if.end.i, %AcquireLocaleSplayTree.exit.i
  %5 = load ptr, ptr @locale_semaphore, align 8, !dbg !545, !tbaa !430
  tail call void @UnlockSemaphoreInfo(ptr noundef %5) #17, !dbg !546
  %.pre51.i = load ptr, ptr @locale_cache, align 8, !dbg !547, !tbaa !430
  %cmp33.not.i.not = icmp eq ptr %.pre51.i, null, !dbg !548
  br i1 %cmp33.not.i.not, label %cleanup, label %if.end, !dbg !549

if.end:                                           ; preds = %entry, %IsLocaleTreeInstantiated.exit
  %6 = load ptr, ptr @locale_semaphore, align 8, !dbg !550, !tbaa !430
  tail call void @LockSemaphoreInfo(ptr noundef %6) #17, !dbg !551
  %cmp1 = icmp eq ptr %tag, null, !dbg !552
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !554

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call i32 @LocaleCompare(ptr noundef nonnull %tag, ptr noundef nonnull @.str.3) #17, !dbg !555
  %cmp3 = icmp eq i32 %call2, 0, !dbg !556
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !557

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr @locale_cache, align 8, !dbg !558, !tbaa !430
  tail call void @ResetSplayTreeIterator(ptr noundef %7) #17, !dbg !560
  %8 = load ptr, ptr @locale_cache, align 8, !dbg !561, !tbaa !430
  %call5 = tail call ptr @GetNextValueInSplayTree(ptr noundef %8) #17, !dbg !562
  call void @llvm.dbg.value(metadata ptr %call5, metadata !413, metadata !DIExpression()), !dbg !414
  br label %cleanup.sink.split, !dbg !563

if.end6:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr @locale_cache, align 8, !dbg !564, !tbaa !430
  %call7 = tail call ptr @GetValueFromSplayTree(ptr noundef %9, ptr noundef nonnull %tag) #17, !dbg !565
  call void @llvm.dbg.value(metadata ptr %call7, metadata !413, metadata !DIExpression()), !dbg !414
  br label %cleanup.sink.split, !dbg !566

cleanup.sink.split:                               ; preds = %if.then4, %if.end6
  %retval.0.ph = phi ptr [ %call7, %if.end6 ], [ %call5, %if.then4 ]
  %10 = load ptr, ptr @locale_semaphore, align 8, !dbg !414, !tbaa !430
  tail call void @UnlockSemaphoreInfo(ptr noundef %10) #17, !dbg !414
  br label %cleanup, !dbg !567

cleanup:                                          ; preds = %cleanup.sink.split, %IsLocaleTreeInstantiated.exit
  %retval.0 = phi ptr [ null, %IsLocaleTreeInstantiated.exit ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !414
  ret ptr %retval.0, !dbg !567
}

declare !dbg !568 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !571 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !574 void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #2

declare !dbg !577 ptr @GetNextValueInSplayTree(ptr noundef) local_unnamed_addr #2

declare !dbg !582 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !583 ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetLocaleInfoList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_messages, ptr noundef %exception) local_unnamed_addr #0 !dbg !586 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !591, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata ptr %number_messages, metadata !592, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata ptr %exception, metadata !593, metadata !DIExpression()), !dbg !597
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 605, ptr noundef nonnull @.str.4, ptr noundef %pattern) #17, !dbg !598
  store i64 0, ptr %number_messages, align 8, !dbg !599, !tbaa !600
  %call1 = tail call ptr @GetLocaleInfo_(ptr noundef nonnull @.str.3, ptr noundef %exception), !dbg !602
  call void @llvm.dbg.value(metadata ptr %call1, metadata !595, metadata !DIExpression()), !dbg !597
  %cmp = icmp eq ptr %call1, null, !dbg !603
  br i1 %cmp, label %cleanup, label %if.end, !dbg !605

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @locale_cache, align 8, !dbg !606, !tbaa !430
  %call2 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %0) #17, !dbg !607
  %add = add i64 %call2, 1, !dbg !608
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #20, !dbg !609
  call void @llvm.dbg.value(metadata ptr %call3, metadata !594, metadata !DIExpression()), !dbg !597
  %cmp4 = icmp eq ptr %call3, null, !dbg !610
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !612

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @locale_semaphore, align 8, !dbg !613, !tbaa !430
  tail call void @LockSemaphoreInfo(ptr noundef %1) #17, !dbg !614
  %2 = load ptr, ptr @locale_cache, align 8, !dbg !615, !tbaa !430
  tail call void @ResetSplayTreeIterator(ptr noundef %2) #17, !dbg !616
  %3 = load ptr, ptr @locale_cache, align 8, !dbg !617, !tbaa !430
  %call7 = tail call ptr @GetNextValueInSplayTree(ptr noundef %3) #17, !dbg !618
  call void @llvm.dbg.value(metadata ptr %call7, metadata !595, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata i64 0, metadata !596, metadata !DIExpression()), !dbg !597
  %cmp8.not31 = icmp eq ptr %call7, null, !dbg !619
  br i1 %cmp8.not31, label %for.end, label %for.body, !dbg !622

for.body:                                         ; preds = %if.end6, %if.end13
  %i.033 = phi i64 [ %i.1, %if.end13 ], [ 0, %if.end6 ]
  %p.032 = phi ptr [ %call14, %if.end13 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.033, metadata !596, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata ptr %p.032, metadata !595, metadata !DIExpression()), !dbg !597
  %stealth = getelementptr inbounds %struct._LocaleInfo, ptr %p.032, i64 0, i32 3, !dbg !623
  %4 = load i32, ptr %stealth, align 8, !dbg !623, !tbaa !626
  %cmp9 = icmp eq i32 %4, 0, !dbg !628
  br i1 %cmp9, label %land.lhs.true, label %if.end13, !dbg !629

land.lhs.true:                                    ; preds = %for.body
  %tag = getelementptr inbounds %struct._LocaleInfo, ptr %p.032, i64 0, i32 1, !dbg !630
  %5 = load ptr, ptr %tag, align 8, !dbg !630, !tbaa !631
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 1) #17, !dbg !632
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !633
  br i1 %cmp11.not, label %if.end13, label %if.then12, !dbg !634

if.then12:                                        ; preds = %land.lhs.true
  %inc = add nsw i64 %i.033, 1, !dbg !635
  call void @llvm.dbg.value(metadata i64 %inc, metadata !596, metadata !DIExpression()), !dbg !597
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.033, !dbg !636
  store ptr %p.032, ptr %arrayidx, align 8, !dbg !637, !tbaa !430
  br label %if.end13, !dbg !636

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.033, %land.lhs.true ], [ %i.033, %for.body ], !dbg !638
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !596, metadata !DIExpression()), !dbg !597
  %6 = load ptr, ptr @locale_cache, align 8, !dbg !639, !tbaa !430
  %call14 = tail call ptr @GetNextValueInSplayTree(ptr noundef %6) #17, !dbg !640
  call void @llvm.dbg.value(metadata ptr %call14, metadata !595, metadata !DIExpression()), !dbg !597
  %cmp8.not = icmp eq ptr %call14, null, !dbg !619
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !622, !llvm.loop !641

for.end:                                          ; preds = %if.end13, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end13 ], !dbg !638
  %7 = load ptr, ptr @locale_semaphore, align 8, !dbg !643, !tbaa !430
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #17, !dbg !644
  tail call void @qsort(ptr noundef nonnull %call3, i64 noundef %i.0.lcssa, i64 noundef 8, ptr noundef nonnull @LocaleInfoCompare) #17, !dbg !645
  %arrayidx15 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !646
  store ptr null, ptr %arrayidx15, align 8, !dbg !647, !tbaa !430
  store i64 %i.0.lcssa, ptr %number_messages, align 8, !dbg !648, !tbaa !600
  br label %cleanup, !dbg !649

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !597
  ret ptr %retval.0, !dbg !650
}

; Function Attrs: allocsize(0,1)
declare !dbg !651 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !655 i64 @GetNumberOfNodesInSplayTree(ptr noundef) local_unnamed_addr #2

declare !dbg !660 i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !665 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal i32 @LocaleInfoCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #0 !dbg !673 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !675, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata ptr %y, metadata !676, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata ptr %x, metadata !677, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata ptr %y, metadata !678, metadata !DIExpression()), !dbg !679
  %0 = load ptr, ptr %x, align 8, !dbg !680, !tbaa !430
  %1 = load ptr, ptr %0, align 8, !dbg !682, !tbaa !683
  %2 = load ptr, ptr %y, align 8, !dbg !684, !tbaa !430
  %3 = load ptr, ptr %2, align 8, !dbg !685, !tbaa !683
  %call = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef %3) #17, !dbg !686
  %cmp = icmp eq i32 %call, 0, !dbg !687
  %4 = load ptr, ptr %x, align 8, !dbg !679, !tbaa !430
  br i1 %cmp, label %if.then, label %if.end, !dbg !688

if.then:                                          ; preds = %entry
  %tag = getelementptr inbounds %struct._LocaleInfo, ptr %4, i64 0, i32 1, !dbg !689
  %5 = load ptr, ptr %y, align 8, !dbg !690, !tbaa !430
  %tag2 = getelementptr inbounds %struct._LocaleInfo, ptr %5, i64 0, i32 1, !dbg !691
  br label %cleanup, !dbg !692

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %y, align 8, !dbg !693, !tbaa !430
  br label %cleanup, !dbg !694

cleanup:                                          ; preds = %if.end, %if.then
  %.sink13 = phi ptr [ %6, %if.end ], [ %tag2, %if.then ]
  %.sink.in = phi ptr [ %4, %if.end ], [ %tag, %if.then ]
  %.sink = load ptr, ptr %.sink.in, align 8, !dbg !679, !tbaa !430
  %7 = load ptr, ptr %.sink13, align 8, !dbg !679, !tbaa !430
  %call6 = tail call i32 @LocaleCompare(ptr noundef %.sink, ptr noundef %7) #17, !dbg !679
  ret i32 %call6, !dbg !695
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetLocaleList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_messages, ptr noundef %exception) local_unnamed_addr #0 !dbg !696 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !700, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata ptr %number_messages, metadata !701, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata ptr %exception, metadata !702, metadata !DIExpression()), !dbg !706
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 700, ptr noundef nonnull @.str.4, ptr noundef %pattern) #17, !dbg !707
  store i64 0, ptr %number_messages, align 8, !dbg !708, !tbaa !600
  %call1 = tail call ptr @GetLocaleInfo_(ptr noundef nonnull @.str.3, ptr noundef %exception), !dbg !709
  call void @llvm.dbg.value(metadata ptr %call1, metadata !704, metadata !DIExpression()), !dbg !706
  %cmp = icmp eq ptr %call1, null, !dbg !710
  br i1 %cmp, label %cleanup, label %if.end, !dbg !712

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @locale_cache, align 8, !dbg !713, !tbaa !430
  %call2 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %0) #17, !dbg !714
  %add = add i64 %call2, 1, !dbg !715
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #20, !dbg !716
  call void @llvm.dbg.value(metadata ptr %call3, metadata !703, metadata !DIExpression()), !dbg !706
  %cmp4 = icmp eq ptr %call3, null, !dbg !717
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !719

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @locale_semaphore, align 8, !dbg !720, !tbaa !430
  tail call void @LockSemaphoreInfo(ptr noundef %1) #17, !dbg !721
  %2 = load ptr, ptr @locale_cache, align 8, !dbg !722, !tbaa !430
  %call7 = tail call ptr @GetNextValueInSplayTree(ptr noundef %2) #17, !dbg !723
  call void @llvm.dbg.value(metadata ptr %call7, metadata !704, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata i64 0, metadata !705, metadata !DIExpression()), !dbg !706
  %cmp8.not33 = icmp eq ptr %call7, null, !dbg !724
  br i1 %cmp8.not33, label %for.end, label %for.body, !dbg !727

for.body:                                         ; preds = %if.end6, %if.end15
  %i.035 = phi i64 [ %i.1, %if.end15 ], [ 0, %if.end6 ]
  %p.034 = phi ptr [ %call16, %if.end15 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.035, metadata !705, metadata !DIExpression()), !dbg !706
  call void @llvm.dbg.value(metadata ptr %p.034, metadata !704, metadata !DIExpression()), !dbg !706
  %stealth = getelementptr inbounds %struct._LocaleInfo, ptr %p.034, i64 0, i32 3, !dbg !728
  %3 = load i32, ptr %stealth, align 8, !dbg !728, !tbaa !626
  %cmp9 = icmp eq i32 %3, 0, !dbg !731
  br i1 %cmp9, label %land.lhs.true, label %if.end15, !dbg !732

land.lhs.true:                                    ; preds = %for.body
  %tag = getelementptr inbounds %struct._LocaleInfo, ptr %p.034, i64 0, i32 1, !dbg !733
  %4 = load ptr, ptr %tag, align 8, !dbg !733, !tbaa !631
  %call10 = tail call i32 @GlobExpression(ptr noundef %4, ptr noundef %pattern, i32 noundef 1) #17, !dbg !734
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !735
  br i1 %cmp11.not, label %if.end15, label %if.then12, !dbg !736

if.then12:                                        ; preds = %land.lhs.true
  %5 = load ptr, ptr %tag, align 8, !dbg !737, !tbaa !631
  %call14 = tail call ptr @ConstantString(ptr noundef %5) #17, !dbg !738
  %inc = add nsw i64 %i.035, 1, !dbg !739
  call void @llvm.dbg.value(metadata i64 %inc, metadata !705, metadata !DIExpression()), !dbg !706
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.035, !dbg !740
  store ptr %call14, ptr %arrayidx, align 8, !dbg !741, !tbaa !430
  br label %if.end15, !dbg !740

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.035, %land.lhs.true ], [ %i.035, %for.body ], !dbg !742
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !705, metadata !DIExpression()), !dbg !706
  %6 = load ptr, ptr @locale_cache, align 8, !dbg !743, !tbaa !430
  %call16 = tail call ptr @GetNextValueInSplayTree(ptr noundef %6) #17, !dbg !744
  call void @llvm.dbg.value(metadata ptr %call16, metadata !704, metadata !DIExpression()), !dbg !706
  %cmp8.not = icmp eq ptr %call16, null, !dbg !724
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !727, !llvm.loop !745

for.end:                                          ; preds = %if.end15, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end15 ], !dbg !742
  %7 = load ptr, ptr @locale_semaphore, align 8, !dbg !747, !tbaa !430
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #17, !dbg !748
  tail call void @qsort(ptr noundef nonnull %call3, i64 noundef %i.0.lcssa, i64 noundef 8, ptr noundef nonnull @LocaleTagCompare) #17, !dbg !749
  %arrayidx17 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !750
  store ptr null, ptr %arrayidx17, align 8, !dbg !751, !tbaa !430
  store i64 %i.0.lcssa, ptr %number_messages, align 8, !dbg !752, !tbaa !600
  br label %cleanup, !dbg !753

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !706
  ret ptr %retval.0, !dbg !754
}

declare !dbg !755 ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @LocaleTagCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #0 !dbg !758 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !760, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata ptr %y, metadata !761, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata ptr %x, metadata !762, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata ptr %y, metadata !763, metadata !DIExpression()), !dbg !764
  %0 = load ptr, ptr %x, align 8, !dbg !765, !tbaa !430
  %1 = load ptr, ptr %y, align 8, !dbg !766, !tbaa !430
  %call = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef %1) #17, !dbg !767
  ret i32 %call, !dbg !768
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetLocaleMessage(ptr noundef %tag) local_unnamed_addr #0 !dbg !769 {
entry:
  %name = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %tag, metadata !773, metadata !DIExpression()), !dbg !777
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %name) #17, !dbg !778
  call void @llvm.dbg.declare(metadata ptr %name, metadata !774, metadata !DIExpression()), !dbg !779
  %cmp = icmp eq ptr %tag, null, !dbg !780
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !782

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr %tag, align 1, !dbg !783, !tbaa !359
  %cmp1 = icmp eq i8 %0, 0, !dbg !784
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !785

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @AcquireExceptionInfo() #17, !dbg !786
  call void @llvm.dbg.value(metadata ptr %call, metadata !776, metadata !DIExpression()), !dbg !777
  %call3 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %name, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull %tag), !dbg !787
  %call5 = call ptr @GetLocaleInfo_(ptr noundef nonnull %name, ptr noundef %call), !dbg !788
  call void @llvm.dbg.value(metadata ptr %call5, metadata !775, metadata !DIExpression()), !dbg !777
  %call6 = call ptr @DestroyExceptionInfo(ptr noundef %call) #17, !dbg !789
  call void @llvm.dbg.value(metadata ptr %call6, metadata !776, metadata !DIExpression()), !dbg !777
  %cmp7.not = icmp eq ptr %call5, null, !dbg !790
  br i1 %cmp7.not, label %cleanup, label %if.then9, !dbg !792

if.then9:                                         ; preds = %if.end
  %message = getelementptr inbounds %struct._LocaleInfo, ptr %call5, i64 0, i32 2, !dbg !793
  %1 = load ptr, ptr %message, align 8, !dbg !793, !tbaa !794
  br label %cleanup, !dbg !795

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %if.then9
  %retval.0 = phi ptr [ %1, %if.then9 ], [ %tag, %lor.lhs.false ], [ null, %entry ], [ %tag, %if.end ], !dbg !777
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %name) #17, !dbg !796
  ret ptr %retval.0, !dbg !796
}

declare !dbg !797 ptr @AcquireExceptionInfo() local_unnamed_addr #2

declare !dbg !800 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetLocaleOptions(ptr noundef %filename, ptr noundef %exception) local_unnamed_addr #0 !dbg !803 {
entry:
  %path = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %filename, metadata !807, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata ptr %exception, metadata !808, metadata !DIExpression()), !dbg !814
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path) #17, !dbg !815
  call void @llvm.dbg.declare(metadata ptr %path, metadata !809, metadata !DIExpression()), !dbg !816
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 814, ptr noundef nonnull @.str.4, ptr noundef %filename) #17, !dbg !817
  %call1 = call i64 @CopyMagickString(ptr noundef nonnull %path, ptr noundef %filename, i64 noundef 4096) #17, !dbg !818
  %call2 = call ptr @NewLinkedList(i64 noundef 0) #17, !dbg !819
  call void @llvm.dbg.value(metadata ptr %call2, metadata !811, metadata !DIExpression()), !dbg !814
  %call3 = call ptr @GetConfigurePaths(ptr noundef %filename, ptr noundef %exception) #17, !dbg !820
  call void @llvm.dbg.value(metadata ptr %call3, metadata !812, metadata !DIExpression()), !dbg !814
  %cmp.not = icmp eq ptr %call3, null, !dbg !821
  br i1 %cmp.not, label %if.end17, label %if.then, !dbg !823

if.then:                                          ; preds = %entry
  call void @ResetLinkedListIterator(ptr noundef nonnull %call3) #17, !dbg !824
  %call4 = call ptr @GetNextValueInLinkedList(ptr noundef nonnull %call3) #17, !dbg !826
  call void @llvm.dbg.value(metadata ptr %call4, metadata !810, metadata !DIExpression()), !dbg !814
  %cmp5.not29 = icmp eq ptr %call4, null, !dbg !827
  br i1 %cmp5.not29, label %while.end, label %while.body, !dbg !828

while.body:                                       ; preds = %if.then, %if.end
  %element.030 = phi ptr [ %call15, %if.end ], [ %call4, %if.then ]
  call void @llvm.dbg.value(metadata ptr %element.030, metadata !810, metadata !DIExpression()), !dbg !814
  %call7 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %path, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull %element.030, ptr noundef %filename), !dbg !829
  %call9 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1024, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 829, ptr noundef nonnull @.str.7, ptr noundef nonnull %path) #17, !dbg !831
  %call11 = call ptr @ConfigureFileToStringInfo(ptr noundef nonnull %path) #17, !dbg !832
  call void @llvm.dbg.value(metadata ptr %call11, metadata !813, metadata !DIExpression()), !dbg !814
  %cmp12.not = icmp eq ptr %call11, null, !dbg !833
  br i1 %cmp12.not, label %if.end, label %if.then13, !dbg !835

if.then13:                                        ; preds = %while.body
  %call14 = call i32 @AppendValueToLinkedList(ptr noundef %call2, ptr noundef nonnull %call11) #17, !dbg !836
  br label %if.end, !dbg !837

if.end:                                           ; preds = %if.then13, %while.body
  %call15 = call ptr @GetNextValueInLinkedList(ptr noundef nonnull %call3) #17, !dbg !838
  call void @llvm.dbg.value(metadata ptr %call15, metadata !810, metadata !DIExpression()), !dbg !814
  %cmp5.not = icmp eq ptr %call15, null, !dbg !827
  br i1 %cmp5.not, label %while.end, label %while.body, !dbg !828, !llvm.loop !839

while.end:                                        ; preds = %if.end, %if.then
  %call16 = call ptr @DestroyLinkedList(ptr noundef nonnull %call3, ptr noundef nonnull @RelinquishMagickMemory) #17, !dbg !841
  call void @llvm.dbg.value(metadata ptr %call16, metadata !812, metadata !DIExpression()), !dbg !814
  br label %if.end17, !dbg !842

if.end17:                                         ; preds = %while.end, %entry
  call void @ResetLinkedListIterator(ptr noundef %call2) #17, !dbg !843
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #17, !dbg !844
  ret ptr %call2, !dbg !845
}

declare !dbg !846 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !849 ptr @NewLinkedList(i64 noundef) local_unnamed_addr #2

declare !dbg !852 ptr @GetConfigurePaths(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !854 void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #2

declare !dbg !857 ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #2

declare !dbg !860 ptr @ConfigureFileToStringInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !863 i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !866 ptr @RelinquishMagickMemory(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetLocaleValue(ptr nocapture noundef readonly %locale_info) local_unnamed_addr #0 !dbg !867 {
entry:
  call void @llvm.dbg.value(metadata ptr %locale_info, metadata !871, metadata !DIExpression()), !dbg !872
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 882, ptr noundef nonnull @.str.2) #17, !dbg !873
  %message = getelementptr inbounds %struct._LocaleInfo, ptr %locale_info, i64 0, i32 2, !dbg !874
  %0 = load ptr, ptr %message, align 8, !dbg !874, !tbaa !794
  ret ptr %0, !dbg !875
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local double @InterpretLocaleValue(ptr noalias noundef %string, ptr noalias noundef writeonly %sentinal) local_unnamed_addr #9 !dbg !876 {
entry:
  %q = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %string, metadata !881, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %sentinal, metadata !882, metadata !DIExpression()), !dbg !885
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q) #17, !dbg !886
  %0 = load i8, ptr %string, align 1, !dbg !887, !tbaa !359
  %cmp = icmp eq i8 %0, 48, !dbg !889
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !890

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds i8, ptr %string, i64 1, !dbg !891
  %1 = load i8, ptr %arrayidx, align 1, !dbg !891, !tbaa !359
  %2 = and i8 %1, -33, !dbg !892
  %cmp3 = icmp eq i8 %2, 88, !dbg !892
  br i1 %cmp3, label %if.then, label %if.else, !dbg !893

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata ptr %q, metadata !883, metadata !DIExpression(DW_OP_deref)), !dbg !885
  %call = call i64 @strtoul(ptr noundef nonnull %string, ptr noundef nonnull %q, i32 noundef 16) #17, !dbg !894
  %conv5 = uitofp i64 %call to double, !dbg !895
  call void @llvm.dbg.value(metadata double %conv5, metadata !884, metadata !DIExpression()), !dbg !885
  br label %if.end, !dbg !896

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.dbg.value(metadata ptr %q, metadata !883, metadata !DIExpression(DW_OP_deref)), !dbg !885
  %call6 = call double @strtod(ptr noundef nonnull %string, ptr noundef nonnull %q) #17, !dbg !897
  call void @llvm.dbg.value(metadata double %call6, metadata !884, metadata !DIExpression()), !dbg !885
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %value.0 = phi double [ %conv5, %if.then ], [ %call6, %if.else ], !dbg !899
  call void @llvm.dbg.value(metadata double %value.0, metadata !884, metadata !DIExpression()), !dbg !885
  %cmp7.not = icmp eq ptr %sentinal, null, !dbg !900
  br i1 %cmp7.not, label %if.end10, label %if.then9, !dbg !902

if.then9:                                         ; preds = %if.end
  %3 = load ptr, ptr %q, align 8, !dbg !903, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %3, metadata !883, metadata !DIExpression()), !dbg !885
  store ptr %3, ptr %sentinal, align 8, !dbg !904, !tbaa !430
  br label %if.end10, !dbg !905

if.end10:                                         ; preds = %if.then9, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q) #17, !dbg !906
  ret double %value.0, !dbg !907
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i32 @ListLocaleInfo(ptr noundef %file, ptr noundef %exception) local_unnamed_addr #0 !dbg !908 {
entry:
  %number_messages = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %file, metadata !912, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr %exception, metadata !913, metadata !DIExpression()), !dbg !918
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_messages) #17, !dbg !919
  %cmp = icmp eq ptr %file, null, !dbg !920
  %0 = load ptr, ptr @stdout, align 8
  %spec.select = select i1 %cmp, ptr %0, ptr %file, !dbg !922
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !912, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()), !dbg !918
  store i64 0, ptr %number_messages, align 8, !dbg !923, !tbaa !600
  call void @llvm.dbg.value(metadata ptr %number_messages, metadata !917, metadata !DIExpression(DW_OP_deref)), !dbg !918
  %call = call ptr @GetLocaleInfoList(ptr noundef nonnull @.str.3, ptr noundef nonnull %number_messages, ptr noundef %exception), !dbg !924
  call void @llvm.dbg.value(metadata ptr %call, metadata !915, metadata !DIExpression()), !dbg !918
  %cmp1 = icmp eq ptr %call, null, !dbg !925
  br i1 %cmp1, label %cleanup, label %for.cond.preheader, !dbg !927

for.cond.preheader:                               ; preds = %entry
  %1 = load i64, ptr %number_messages, align 8, !tbaa !600
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr null, metadata !914, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i64 %1, metadata !917, metadata !DIExpression()), !dbg !918
  %cmp469 = icmp sgt i64 %1, 0, !dbg !928
  br i1 %cmp469, label %for.body, label %for.end, !dbg !931

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.071 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %path.070 = phi ptr [ %path.1, %for.inc ], [ null, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.071, metadata !916, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr %path.070, metadata !914, metadata !DIExpression()), !dbg !918
  %arrayidx = getelementptr inbounds ptr, ptr %call, i64 %i.071, !dbg !932
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !932, !tbaa !430
  %stealth = getelementptr inbounds %struct._LocaleInfo, ptr %2, i64 0, i32 3, !dbg !935
  %3 = load i32, ptr %stealth, align 8, !dbg !935, !tbaa !626
  %cmp5.not = icmp eq i32 %3, 0, !dbg !936
  br i1 %cmp5.not, label %if.end7, label %for.inc, !dbg !937

if.end7:                                          ; preds = %for.body
  %cmp8 = icmp eq ptr %path.070, null, !dbg !938
  br i1 %cmp8, label %if.then13, label %lor.lhs.false, !dbg !940

lor.lhs.false:                                    ; preds = %if.end7
  %4 = load ptr, ptr %2, align 8, !dbg !941, !tbaa !683
  %call11 = tail call i32 @LocaleCompare(ptr noundef nonnull %path.070, ptr noundef %4) #17, !dbg !942
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !943
  br i1 %cmp12.not, label %if.end24, label %lor.lhs.false.if.then13_crit_edge, !dbg !944

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  %.pre = load ptr, ptr %arrayidx, align 8, !dbg !945, !tbaa !430
  br label %if.then13, !dbg !944

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end7
  %5 = phi ptr [ %.pre, %lor.lhs.false.if.then13_crit_edge ], [ %2, %if.end7 ], !dbg !945
  %6 = load ptr, ptr %5, align 8, !dbg !948, !tbaa !683
  %cmp16.not = icmp eq ptr %6, null, !dbg !949
  br i1 %cmp16.not, label %if.end21, label %if.then17, !dbg !950

if.then17:                                        ; preds = %if.then13
  %call20 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.8, ptr noundef nonnull %6), !dbg !951
  br label %if.end21, !dbg !952

if.end21:                                         ; preds = %if.then17, %if.then13
  %call22 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.9), !dbg !953
  %call23 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.10), !dbg !954
  br label %if.end24, !dbg !955

if.end24:                                         ; preds = %if.end21, %lor.lhs.false
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !956, !tbaa !430
  %8 = load ptr, ptr %7, align 8, !dbg !957, !tbaa !683
  call void @llvm.dbg.value(metadata ptr %8, metadata !914, metadata !DIExpression()), !dbg !918
  %tag = getelementptr inbounds %struct._LocaleInfo, ptr %7, i64 0, i32 1, !dbg !958
  %9 = load ptr, ptr %tag, align 8, !dbg !958, !tbaa !631
  %call28 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.11, ptr noundef %9), !dbg !959
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !960, !tbaa !430
  %message = getelementptr inbounds %struct._LocaleInfo, ptr %10, i64 0, i32 2, !dbg !962
  %11 = load ptr, ptr %message, align 8, !dbg !962, !tbaa !794
  %cmp30.not = icmp eq ptr %11, null, !dbg !963
  br i1 %cmp30.not, label %if.end35, label %if.then31, !dbg !964

if.then31:                                        ; preds = %if.end24
  %call34 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.12, ptr noundef nonnull %11), !dbg !965
  br label %if.end35, !dbg !966

if.end35:                                         ; preds = %if.then31, %if.end24
  %call36 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.13), !dbg !967
  br label %for.inc, !dbg !968

for.inc:                                          ; preds = %for.body, %if.end35
  %path.1 = phi ptr [ %path.070, %for.body ], [ %8, %if.end35 ], !dbg !918
  call void @llvm.dbg.value(metadata ptr %path.1, metadata !914, metadata !DIExpression()), !dbg !918
  %inc = add nuw nsw i64 %i.071, 1, !dbg !969
  call void @llvm.dbg.value(metadata i64 %inc, metadata !916, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i64 %1, metadata !917, metadata !DIExpression()), !dbg !918
  %exitcond.not = icmp eq i64 %inc, %1, !dbg !928
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !931, !llvm.loop !970

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %call37 = tail call i32 @fflush(ptr noundef %spec.select), !dbg !972
  %call38 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #17, !dbg !973
  call void @llvm.dbg.value(metadata ptr %call38, metadata !915, metadata !DIExpression()), !dbg !918
  br label %cleanup, !dbg !974

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], !dbg !918
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_messages) #17, !dbg !975
  ret i32 %retval.0, !dbg !975
}

; Function Attrs: nofree nounwind
declare !dbg !976 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @LocaleComponentGenesis() local_unnamed_addr #0 !dbg !979 {
entry:
  %0 = load ptr, ptr @locale_semaphore, align 8, !dbg !982, !tbaa !430
  %cmp = icmp eq ptr %0, null, !dbg !984
  br i1 %cmp, label %if.then, label %if.end, !dbg !985

if.then:                                          ; preds = %entry
  %call = tail call ptr @AllocateSemaphoreInfo() #17, !dbg !986
  store ptr %call, ptr @locale_semaphore, align 8, !dbg !987, !tbaa !430
  br label %if.end, !dbg !988

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !989
}

declare !dbg !990 ptr @AllocateSemaphoreInfo() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @LocaleComponentTerminus() local_unnamed_addr #0 !dbg !993 {
entry:
  %0 = load ptr, ptr @locale_semaphore, align 8, !dbg !996, !tbaa !430
  %cmp = icmp eq ptr %0, null, !dbg !998
  br i1 %cmp, label %if.then, label %if.end, !dbg !999

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @locale_semaphore) #17, !dbg !1000
  %.pre = load ptr, ptr @locale_semaphore, align 8, !dbg !1001, !tbaa !430
  br label %if.end, !dbg !1000

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !1001
  tail call void @LockSemaphoreInfo(ptr noundef %1) #17, !dbg !1002
  %2 = load ptr, ptr @locale_cache, align 8, !dbg !1003, !tbaa !430
  %cmp1.not = icmp eq ptr %2, null, !dbg !1005
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !1006

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @DestroySplayTree(ptr noundef nonnull %2) #17, !dbg !1007
  store ptr %call, ptr @locale_cache, align 8, !dbg !1008, !tbaa !430
  br label %if.end3, !dbg !1009

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr @locale_semaphore, align 8, !dbg !1010, !tbaa !430
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #17, !dbg !1011
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @locale_semaphore) #17, !dbg !1012
  ret void, !dbg !1013
}

declare !dbg !1014 void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1018 ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #2

declare !dbg !1021 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1022 ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1025 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #11

declare !dbg !1029 ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #2

declare !dbg !1030 ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare !dbg !1033 ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @DestroyLocaleNode(ptr noundef %locale_info) #0 !dbg !1036 {
entry:
  call void @llvm.dbg.value(metadata ptr %locale_info, metadata !1038, metadata !DIExpression()), !dbg !1040
  call void @llvm.dbg.value(metadata ptr %locale_info, metadata !1039, metadata !DIExpression()), !dbg !1040
  %0 = load ptr, ptr %locale_info, align 8, !dbg !1041, !tbaa !683
  %cmp.not = icmp eq ptr %0, null, !dbg !1043
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1044

if.then:                                          ; preds = %entry
  %call = tail call ptr @DestroyString(ptr noundef nonnull %0) #17, !dbg !1045
  store ptr %call, ptr %locale_info, align 8, !dbg !1046, !tbaa !683
  br label %if.end, !dbg !1047

if.end:                                           ; preds = %if.then, %entry
  %tag = getelementptr inbounds %struct._LocaleInfo, ptr %locale_info, i64 0, i32 1, !dbg !1048
  %1 = load ptr, ptr %tag, align 8, !dbg !1048, !tbaa !631
  %cmp3.not = icmp eq ptr %1, null, !dbg !1050
  br i1 %cmp3.not, label %if.end8, label %if.then4, !dbg !1051

if.then4:                                         ; preds = %if.end
  %call6 = tail call ptr @DestroyString(ptr noundef nonnull %1) #17, !dbg !1052
  store ptr %call6, ptr %tag, align 8, !dbg !1053, !tbaa !631
  br label %if.end8, !dbg !1054

if.end8:                                          ; preds = %if.then4, %if.end
  %message = getelementptr inbounds %struct._LocaleInfo, ptr %locale_info, i64 0, i32 2, !dbg !1055
  %2 = load ptr, ptr %message, align 8, !dbg !1055, !tbaa !794
  %cmp9.not = icmp eq ptr %2, null, !dbg !1057
  br i1 %cmp9.not, label %if.end14, label %if.then10, !dbg !1058

if.then10:                                        ; preds = %if.end8
  %call12 = tail call ptr @DestroyString(ptr noundef nonnull %2) #17, !dbg !1059
  store ptr %call12, ptr %message, align 8, !dbg !1060, !tbaa !794
  br label %if.end14, !dbg !1061

if.end14:                                         ; preds = %if.then10, %if.end8
  %call15 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %locale_info) #17, !dbg !1062
  ret ptr %call15, !dbg !1063
}

declare !dbg !1064 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1067 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #12

declare !dbg !1071 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !1075 void @CatchException(ptr noundef) local_unnamed_addr #2

declare !dbg !1076 void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadLocaleCache(ptr noundef %locale_cache, ptr noundef %xml, ptr noundef %filename, ptr noundef %locale, i64 noundef %depth, ptr noundef %exception) unnamed_addr #0 !dbg !1078 {
entry:
  %keyword = alloca [4096 x i8], align 16
  %message = alloca [4096 x i8], align 16
  %tag = alloca [4096 x i8], align 16
  %q = alloca ptr, align 8
  %path = alloca [4096 x i8], align 16
  %exception271 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %locale_cache, metadata !1082, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata ptr %xml, metadata !1083, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1084, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata ptr %locale, metadata !1085, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i64 %depth, metadata !1086, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1087, metadata !DIExpression()), !dbg !1119
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %keyword) #17, !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %keyword, metadata !1088, metadata !DIExpression()), !dbg !1121
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message) #17, !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %message, metadata !1089, metadata !DIExpression()), !dbg !1122
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %tag) #17, !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %tag, metadata !1090, metadata !DIExpression()), !dbg !1123
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q) #17, !dbg !1124
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1186, ptr noundef nonnull @.str.24, ptr noundef %filename) #17, !dbg !1125
  %cmp = icmp eq ptr %xml, null, !dbg !1126
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1128

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !1099, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata ptr null, metadata !1098, metadata !DIExpression()), !dbg !1119
  store i8 0, ptr %tag, align 16, !dbg !1129, !tbaa !359
  store i8 0, ptr %message, align 16, !dbg !1130, !tbaa !359
  store i8 0, ptr %keyword, align 16, !dbg !1131, !tbaa !359
  %call3 = tail call ptr @SetFatalErrorHandler(ptr noundef nonnull @LocaleFatalErrorHandler) #17, !dbg !1132
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1093, metadata !DIExpression()), !dbg !1119
  %call4 = tail call ptr @AcquireString(ptr noundef nonnull %xml) #17, !dbg !1133
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1091, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata ptr %xml, metadata !1092, metadata !DIExpression()), !dbg !1119
  store ptr %xml, ptr %q, align 8, !dbg !1134, !tbaa !430
  call void @llvm.dbg.value(metadata i32 1, metadata !1099, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata ptr %xml, metadata !1092, metadata !DIExpression()), !dbg !1119
  %0 = load i8, ptr %xml, align 1, !dbg !1135, !tbaa !359
  %cmp5.not505 = icmp eq i8 %0, 0, !dbg !1136
  br i1 %cmp5.not505, label %for.end353, label %for.body.lr.ph, !dbg !1137

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr317 = getelementptr inbounds i8, ptr %keyword, i64 1
  %add.ptr341 = getelementptr inbounds i8, ptr %call4, i64 1
  %cmp104 = icmp ugt i64 %depth, 200
  %add = add nuw nsw i64 %depth, 1
  %add.ptr.i453 = getelementptr inbounds i8, ptr %tag, i64 -1
  %add.ptr.i426 = getelementptr inbounds i8, ptr %tag, i64 -1
  %add.ptr.i = getelementptr inbounds i8, ptr %tag, i64 -1
  br label %for.body, !dbg !1137

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %1 = phi ptr [ %xml, %for.body.lr.ph ], [ %19, %for.cond.backedge ]
  %status.0506 = phi i32 [ 1, %for.body.lr.ph ], [ %status.0.be, %for.cond.backedge ]
  call void @llvm.dbg.value(metadata i32 %status.0506, metadata !1099, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata ptr %q, metadata !1092, metadata !DIExpression(DW_OP_deref)), !dbg !1119
  call void @GetMagickToken(ptr noundef nonnull %1, ptr noundef nonnull %q, ptr noundef %call4) #17, !dbg !1138
  %2 = load i8, ptr %call4, align 1, !dbg !1139, !tbaa !359
  %cmp8 = icmp eq i8 %2, 0, !dbg !1141
  br i1 %cmp8, label %for.end353, label %if.end11, !dbg !1142

if.end11:                                         ; preds = %for.body
  %call13 = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call4, i64 noundef 4096) #17, !dbg !1143
  %call15 = call i32 @LocaleNCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.25, i64 noundef 9) #17, !dbg !1144
  %cmp16 = icmp eq i32 %call15, 0, !dbg !1146
  br i1 %cmp16, label %while.cond.preheader, label %if.end33, !dbg !1147

while.cond.preheader:                             ; preds = %if.end11
  %3 = load ptr, ptr %q, align 8, !dbg !1148, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %3, metadata !1092, metadata !DIExpression()), !dbg !1119
  %call19503 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.26, i64 noundef 2) #17, !dbg !1150
  %cmp20.not504 = icmp eq i32 %call19503, 0, !dbg !1151
  br i1 %cmp20.not504, label %for.cond.backedge, label %land.rhs, !dbg !1152

while.cond.loopexit:                              ; preds = %while.body31, %while.body
  %4 = phi ptr [ %8, %while.body ], [ %incdec.ptr, %while.body31 ], !dbg !1148
  call void @llvm.dbg.value(metadata ptr %4, metadata !1092, metadata !DIExpression()), !dbg !1119
  %call19 = call i32 @LocaleNCompare(ptr noundef nonnull %4, ptr noundef nonnull @.str.26, i64 noundef 2) #17, !dbg !1150
  %cmp20.not = icmp eq i32 %call19, 0, !dbg !1151
  br i1 %cmp20.not, label %for.cond.backedge, label %land.rhs, !dbg !1152, !llvm.loop !1153

land.rhs:                                         ; preds = %while.cond.preheader, %while.cond.loopexit
  %5 = load ptr, ptr %q, align 8, !dbg !1156, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %5, metadata !1092, metadata !DIExpression()), !dbg !1119
  %6 = load i8, ptr %5, align 1, !dbg !1157, !tbaa !359
  %cmp23.not = icmp eq i8 %6, 0, !dbg !1158
  br i1 %cmp23.not, label %for.cond.backedge, label %while.body, !dbg !1154

while.body:                                       ; preds = %land.rhs
  call void @llvm.dbg.value(metadata ptr %q, metadata !1092, metadata !DIExpression(DW_OP_deref)), !dbg !1119
  call void @GetMagickToken(ptr noundef nonnull %5, ptr noundef nonnull %q, ptr noundef %call4) #17, !dbg !1159
  %call26 = tail call ptr @__ctype_b_loc() #18, !dbg !1119
  %7 = load ptr, ptr %call26, align 8, !dbg !1161, !tbaa !430
  %8 = load ptr, ptr %q, align 8, !dbg !1161, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %8, metadata !1092, metadata !DIExpression()), !dbg !1119
  %9 = load i8, ptr %8, align 1, !dbg !1161, !tbaa !359
  %10 = zext i8 %9 to i64
  %arrayidx501 = getelementptr inbounds i16, ptr %7, i64 %10, !dbg !1161
  %11 = load i16, ptr %arrayidx501, align 2, !dbg !1161, !tbaa !1162
  %12 = and i16 %11, 8192, !dbg !1161
  %cmp29.not502 = icmp eq i16 %12, 0, !dbg !1164
  br i1 %cmp29.not502, label %while.cond.loopexit, label %while.body31, !dbg !1165

while.body31:                                     ; preds = %while.body, %while.body31
  %13 = phi ptr [ %incdec.ptr, %while.body31 ], [ %8, %while.body ]
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i64 1, !dbg !1166
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1092, metadata !DIExpression()), !dbg !1119
  store ptr %incdec.ptr, ptr %q, align 8, !dbg !1166, !tbaa !430
  %14 = load ptr, ptr %call26, align 8, !dbg !1161, !tbaa !430
  %15 = load i8, ptr %incdec.ptr, align 1, !dbg !1161, !tbaa !359
  %16 = zext i8 %15 to i64
  %arrayidx = getelementptr inbounds i16, ptr %14, i64 %16, !dbg !1161
  %17 = load i16, ptr %arrayidx, align 2, !dbg !1161, !tbaa !1162
  %18 = and i16 %17, 8192, !dbg !1161
  %cmp29.not = icmp eq i16 %18, 0, !dbg !1164
  br i1 %cmp29.not, label %while.cond.loopexit, label %while.body31, !dbg !1165, !llvm.loop !1167

for.cond.backedge:                                ; preds = %if.then92.us, %while.cond39.loopexit, %land.rhs43, %while.cond.loopexit, %land.rhs, %land.rhs153, %while.cond149, %if.then92, %while.cond68.us, %land.lhs.true.us, %land.rhs75.us, %while.cond68, %land.lhs.true, %land.rhs75, %ChopLocaleComponents.exit477, %if.then334, %if.then328, %if.then19.i476, %while.cond39.preheader, %while.cond.preheader, %ChopLocaleComponents.exit, %if.end294, %ChopLocaleComponents.exit450, %if.end338, %if.end176, %if.end182, %if.end347, %if.then315
  %status.0.be = phi i32 [ %status.0506, %ChopLocaleComponents.exit ], [ %status.0506, %if.end176 ], [ %status.0506, %if.end182 ], [ %call288, %if.end294 ], [ %status.0506, %ChopLocaleComponents.exit450 ], [ %status.0506, %if.then315 ], [ %status.0506, %if.end338 ], [ %status.0506, %if.end347 ], [ %status.0506, %while.cond.preheader ], [ %status.0506, %while.cond39.preheader ], [ %status.0506, %if.then19.i476 ], [ %status.0506, %if.then328 ], [ %status.0506, %if.then334 ], [ %status.0506, %ChopLocaleComponents.exit477 ], [ %status.1.ph.ph495, %land.rhs75 ], [ %status.1.ph.ph495, %land.lhs.true ], [ %status.1.ph.ph495, %while.cond68 ], [ %status.0506, %land.rhs75.us ], [ %status.0506, %land.lhs.true.us ], [ %status.0506, %while.cond68.us ], [ %status.1.ph.ph495, %if.then92 ], [ %status.0506, %while.cond149 ], [ %status.0506, %land.rhs153 ], [ %status.0506, %land.rhs ], [ %status.0506, %while.cond.loopexit ], [ %status.0506, %land.rhs43 ], [ %status.0506, %while.cond39.loopexit ], [ %status.0506, %if.then92.us ]
  call void @llvm.dbg.value(metadata i32 %status.0.be, metadata !1099, metadata !DIExpression()), !dbg !1119
  %19 = load ptr, ptr %q, align 8, !dbg !1168, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %19, metadata !1092, metadata !DIExpression()), !dbg !1119
  %20 = load i8, ptr %19, align 1, !dbg !1135, !tbaa !359
  %cmp5.not = icmp eq i8 %20, 0, !dbg !1136
  br i1 %cmp5.not, label %for.end353, label %for.body, !dbg !1137, !llvm.loop !1169

if.end33:                                         ; preds = %if.end11
  %call35 = call i32 @LocaleNCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.27, i64 noundef 4) #17, !dbg !1171
  %cmp36 = icmp eq i32 %call35, 0, !dbg !1173
  br i1 %cmp36, label %while.cond39.preheader, label %if.end62, !dbg !1174

while.cond39.preheader:                           ; preds = %if.end33
  %21 = load ptr, ptr %q, align 8, !dbg !1175, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %21, metadata !1092, metadata !DIExpression()), !dbg !1119
  %call40499 = call i32 @LocaleNCompare(ptr noundef %21, ptr noundef nonnull @.str.28, i64 noundef 2) #17, !dbg !1177
  %cmp41.not500 = icmp eq i32 %call40499, 0, !dbg !1178
  br i1 %cmp41.not500, label %for.cond.backedge, label %land.rhs43, !dbg !1179

while.cond39.loopexit:                            ; preds = %while.body58, %while.body48
  %22 = phi ptr [ %26, %while.body48 ], [ %incdec.ptr59, %while.body58 ], !dbg !1175
  call void @llvm.dbg.value(metadata ptr %22, metadata !1092, metadata !DIExpression()), !dbg !1119
  %call40 = call i32 @LocaleNCompare(ptr noundef nonnull %22, ptr noundef nonnull @.str.28, i64 noundef 2) #17, !dbg !1177
  %cmp41.not = icmp eq i32 %call40, 0, !dbg !1178
  br i1 %cmp41.not, label %for.cond.backedge, label %land.rhs43, !dbg !1179, !llvm.loop !1180

land.rhs43:                                       ; preds = %while.cond39.preheader, %while.cond39.loopexit
  %23 = load ptr, ptr %q, align 8, !dbg !1183, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %23, metadata !1092, metadata !DIExpression()), !dbg !1119
  %24 = load i8, ptr %23, align 1, !dbg !1184, !tbaa !359
  %cmp45.not = icmp eq i8 %24, 0, !dbg !1185
  br i1 %cmp45.not, label %for.cond.backedge, label %while.body48, !dbg !1181

while.body48:                                     ; preds = %land.rhs43
  call void @llvm.dbg.value(metadata ptr %q, metadata !1092, metadata !DIExpression(DW_OP_deref)), !dbg !1119
  call void @GetMagickToken(ptr noundef nonnull %23, ptr noundef nonnull %q, ptr noundef %call4) #17, !dbg !1186
  %call50 = tail call ptr @__ctype_b_loc() #18, !dbg !1119
  %25 = load ptr, ptr %call50, align 8, !dbg !1188, !tbaa !430
  %26 = load ptr, ptr %q, align 8, !dbg !1188, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %26, metadata !1092, metadata !DIExpression()), !dbg !1119
  %27 = load i8, ptr %26, align 1, !dbg !1188, !tbaa !359
  %28 = zext i8 %27 to i64
  %arrayidx53497 = getelementptr inbounds i16, ptr %25, i64 %28, !dbg !1188
  %29 = load i16, ptr %arrayidx53497, align 2, !dbg !1188, !tbaa !1162
  %30 = and i16 %29, 8192, !dbg !1188
  %cmp56.not498 = icmp eq i16 %30, 0, !dbg !1189
  br i1 %cmp56.not498, label %while.cond39.loopexit, label %while.body58, !dbg !1190

while.body58:                                     ; preds = %while.body48, %while.body58
  %31 = phi ptr [ %incdec.ptr59, %while.body58 ], [ %26, %while.body48 ]
  %incdec.ptr59 = getelementptr inbounds i8, ptr %31, i64 1, !dbg !1191
  call void @llvm.dbg.value(metadata ptr %incdec.ptr59, metadata !1092, metadata !DIExpression()), !dbg !1119
  store ptr %incdec.ptr59, ptr %q, align 8, !dbg !1191, !tbaa !430
  %32 = load ptr, ptr %call50, align 8, !dbg !1188, !tbaa !430
  %33 = load i8, ptr %incdec.ptr59, align 1, !dbg !1188, !tbaa !359
  %34 = zext i8 %33 to i64
  %arrayidx53 = getelementptr inbounds i16, ptr %32, i64 %34, !dbg !1188
  %35 = load i16, ptr %arrayidx53, align 2, !dbg !1188, !tbaa !1162
  %36 = and i16 %35, 8192, !dbg !1188
  %cmp56.not = icmp eq i16 %36, 0, !dbg !1189
  br i1 %cmp56.not, label %while.cond39.loopexit, label %while.body58, !dbg !1190, !llvm.loop !1192

if.end62:                                         ; preds = %if.end33
  %call64 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.29) #17, !dbg !1193
  %cmp65 = icmp eq i32 %call64, 0, !dbg !1194
  br i1 %cmp65, label %while.cond68thread-pre-split.preheader, label %if.end143, !dbg !1195

while.cond68thread-pre-split.preheader:           ; preds = %if.end62
  br i1 %cmp104, label %while.cond68thread-pre-split.us, label %while.cond68thread-pre-split.outer.split, !dbg !1196

while.cond68thread-pre-split.us:                  ; preds = %while.cond68thread-pre-split.preheader, %while.cond68thread-pre-split.us.backedge
  %.pr.us = load i8, ptr %call4, align 1, !dbg !1197, !tbaa !359
  br label %while.cond68.us, !dbg !1197

while.cond68.us:                                  ; preds = %while.body80.us, %while.cond68thread-pre-split.us
  %37 = phi i8 [ %.pr.us, %while.cond68thread-pre-split.us ], [ %42, %while.body80.us ], !dbg !1197
  call void @llvm.dbg.value(metadata i32 %status.0506, metadata !1099, metadata !DIExpression()), !dbg !1119
  %cmp70.not.us = icmp eq i8 %37, 47, !dbg !1198
  br i1 %cmp70.not.us, label %for.cond.backedge, label %land.lhs.true.us, !dbg !1199

land.lhs.true.us:                                 ; preds = %while.cond68.us
  %38 = load i8, ptr %add.ptr341, align 1, !dbg !1200, !tbaa !359
  %cmp73.not.us = icmp eq i8 %38, 62, !dbg !1201
  br i1 %cmp73.not.us, label %for.cond.backedge, label %land.rhs75.us, !dbg !1202

land.rhs75.us:                                    ; preds = %land.lhs.true.us
  %39 = load ptr, ptr %q, align 8, !dbg !1203, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %39, metadata !1092, metadata !DIExpression()), !dbg !1119
  %40 = load i8, ptr %39, align 1, !dbg !1204, !tbaa !359
  %cmp77.not.us = icmp eq i8 %40, 0, !dbg !1205
  br i1 %cmp77.not.us, label %for.cond.backedge, label %while.body80.us, !dbg !1206

while.body80.us:                                  ; preds = %land.rhs75.us
  %call82.us = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call4, i64 noundef 4096) #17, !dbg !1207
  %41 = load ptr, ptr %q, align 8, !dbg !1208, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %q, metadata !1092, metadata !DIExpression(DW_OP_deref)), !dbg !1119
  call void @GetMagickToken(ptr noundef %41, ptr noundef nonnull %q, ptr noundef nonnull %call4) #17, !dbg !1209
  %42 = load i8, ptr %call4, align 1, !dbg !1210, !tbaa !359
  %cmp84.not.us = icmp eq i8 %42, 61, !dbg !1212
  br i1 %cmp84.not.us, label %if.end87.us, label %while.cond68.us, !dbg !1213, !llvm.loop !1214

if.end87.us:                                      ; preds = %while.body80.us
  %43 = load ptr, ptr %q, align 8, !dbg !1216, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %q, metadata !1092, metadata !DIExpression(DW_OP_deref)), !dbg !1119
  call void @GetMagickToken(ptr noundef %43, ptr noundef nonnull %q, ptr noundef nonnull %call4) #17, !dbg !1217
  %call89.us = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.30) #17, !dbg !1218
  %cmp90.us = icmp eq i32 %call89.us, 0, !dbg !1220
  br i1 %cmp90.us, label %if.then92.us, label %if.end98.us, !dbg !1221

if.end98.us:                                      ; preds = %if.end87.us
  %call100.us = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.31) #17, !dbg !1222
  %cmp101.us = icmp eq i32 %call100.us, 0, !dbg !1223
  br i1 %cmp101.us, label %if.then106.us, label %while.cond68thread-pre-split.us.backedge, !dbg !1224

if.then106.us:                                    ; preds = %if.end98.us
  %call107.us = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1253, i32 noundef 495, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.21, ptr noundef nonnull %call4) #17, !dbg !1225
  br label %while.cond68thread-pre-split.us.backedge, !dbg !1226

if.then92.us:                                     ; preds = %if.end87.us
  %call93.us = call i32 @LocaleCompare(ptr noundef %locale, ptr noundef nonnull %call4) #17, !dbg !1227
  %cmp94.not.us = icmp eq i32 %call93.us, 0, !dbg !1230
  br i1 %cmp94.not.us, label %while.cond68thread-pre-split.us.backedge, label %for.cond.backedge, !dbg !1231

while.cond68thread-pre-split.us.backedge:         ; preds = %if.then92.us, %if.then106.us, %if.end98.us
  br label %while.cond68thread-pre-split.us, !dbg !1197, !llvm.loop !1214

while.cond68thread-pre-split.outer.split:         ; preds = %while.cond68thread-pre-split.preheader, %if.end139
  %status.1.ph.ph495 = phi i32 [ %status.2, %if.end139 ], [ %status.0506, %while.cond68thread-pre-split.preheader ]
  br label %while.cond68thread-pre-split, !dbg !1206

while.cond68thread-pre-split:                     ; preds = %while.cond68thread-pre-split.backedge, %while.cond68thread-pre-split.outer.split
  %.pr = load i8, ptr %call4, align 1, !dbg !1197, !tbaa !359
  br label %while.cond68, !dbg !1197

while.cond68:                                     ; preds = %while.cond68thread-pre-split, %while.body80
  %44 = phi i8 [ %.pr, %while.cond68thread-pre-split ], [ %49, %while.body80 ], !dbg !1197
  call void @llvm.dbg.value(metadata i32 %status.1.ph.ph495, metadata !1099, metadata !DIExpression()), !dbg !1119
  %cmp70.not = icmp eq i8 %44, 47, !dbg !1198
  br i1 %cmp70.not, label %for.cond.backedge, label %land.lhs.true, !dbg !1199

land.lhs.true:                                    ; preds = %while.cond68
  %45 = load i8, ptr %add.ptr341, align 1, !dbg !1200, !tbaa !359
  %cmp73.not = icmp eq i8 %45, 62, !dbg !1201
  br i1 %cmp73.not, label %for.cond.backedge, label %land.rhs75, !dbg !1202

land.rhs75:                                       ; preds = %land.lhs.true
  %46 = load ptr, ptr %q, align 8, !dbg !1203, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %46, metadata !1092, metadata !DIExpression()), !dbg !1119
  %47 = load i8, ptr %46, align 1, !dbg !1204, !tbaa !359
  %cmp77.not = icmp eq i8 %47, 0, !dbg !1205
  br i1 %cmp77.not, label %for.cond.backedge, label %while.body80, !dbg !1206

while.body80:                                     ; preds = %land.rhs75
  %call82 = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call4, i64 noundef 4096) #17, !dbg !1207
  %48 = load ptr, ptr %q, align 8, !dbg !1208, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %q, metadata !1092, metadata !DIExpression(DW_OP_deref)), !dbg !1119
  call void @GetMagickToken(ptr noundef %48, ptr noundef nonnull %q, ptr noundef nonnull %call4) #17, !dbg !1209
  %49 = load i8, ptr %call4, align 1, !dbg !1210, !tbaa !359
  %cmp84.not = icmp eq i8 %49, 61, !dbg !1212
  br i1 %cmp84.not, label %if.end87, label %while.cond68, !dbg !1213, !llvm.loop !1214

if.end87:                                         ; preds = %while.body80
  %50 = load ptr, ptr %q, align 8, !dbg !1216, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %q, metadata !1092, metadata !DIExpression(DW_OP_deref)), !dbg !1119
  call void @GetMagickToken(ptr noundef %50, ptr noundef nonnull %q, ptr noundef nonnull %call4) #17, !dbg !1217
  %call89 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.30) #17, !dbg !1218
  %cmp90 = icmp eq i32 %call89, 0, !dbg !1220
  br i1 %cmp90, label %if.then92, label %if.end98, !dbg !1221

if.then92:                                        ; preds = %if.end87
  %call93 = call i32 @LocaleCompare(ptr noundef %locale, ptr noundef nonnull %call4) #17, !dbg !1227
  %cmp94.not = icmp eq i32 %call93, 0, !dbg !1230
  br i1 %cmp94.not, label %while.cond68thread-pre-split.backedge, label %for.cond.backedge, !dbg !1231

while.cond68thread-pre-split.backedge:            ; preds = %if.then92, %if.end98
  br label %while.cond68thread-pre-split, !dbg !1197, !llvm.loop !1214

if.end98:                                         ; preds = %if.end87
  %call100 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.31) #17, !dbg !1222
  %cmp101 = icmp eq i32 %call100, 0, !dbg !1223
  br i1 %cmp101, label %if.then103, label %while.cond68thread-pre-split.backedge, !dbg !1224

if.then103:                                       ; preds = %if.end98
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path) #17, !dbg !1232
  call void @llvm.dbg.declare(metadata ptr %path, metadata !1101, metadata !DIExpression()), !dbg !1233
  store i8 0, ptr %path, align 16, !dbg !1234, !tbaa !359
  call void @GetPathComponent(ptr noundef %filename, i32 noundef 3, ptr noundef nonnull %path) #17, !dbg !1235
  %51 = load i8, ptr %path, align 16, !dbg !1236, !tbaa !359
  %cmp113.not = icmp eq i8 %51, 0, !dbg !1238
  br i1 %cmp113.not, label %if.end118, label %if.then115, !dbg !1239

if.then115:                                       ; preds = %if.then103
  %call117 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull @.str.33, i64 noundef 4096) #17, !dbg !1240
  br label %if.end118, !dbg !1241

if.end118:                                        ; preds = %if.then115, %if.then103
  %52 = load i8, ptr %call4, align 1, !dbg !1242, !tbaa !359
  %cmp121 = icmp eq i8 %52, 47, !dbg !1244
  br i1 %cmp121, label %if.then123, label %if.else126, !dbg !1245

if.then123:                                       ; preds = %if.end118
  %call125 = call i64 @CopyMagickString(ptr noundef nonnull %path, ptr noundef nonnull %call4, i64 noundef 4096) #17, !dbg !1246
  br label %if.end129, !dbg !1247

if.else126:                                       ; preds = %if.end118
  %call128 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull %call4, i64 noundef 4096) #17, !dbg !1248
  br label %if.end129

if.end129:                                        ; preds = %if.else126, %if.then123
  %call131 = call ptr @FileToXML(ptr noundef nonnull %path, i64 noundef -1) #17, !dbg !1249
  call void @llvm.dbg.value(metadata ptr %call131, metadata !1112, metadata !DIExpression()), !dbg !1250
  %cmp132.not = icmp eq ptr %call131, null, !dbg !1251
  br i1 %cmp132.not, label %if.end139, label %if.then134, !dbg !1253

if.then134:                                       ; preds = %if.end129
  %call136 = call fastcc i32 @LoadLocaleCache(ptr noundef %locale_cache, ptr noundef nonnull %call131, ptr noundef nonnull %path, ptr noundef %locale, i64 noundef %add, ptr noundef %exception), !dbg !1254
  %and137 = and i32 %call136, %status.1.ph.ph495, !dbg !1256
  call void @llvm.dbg.value(metadata i32 %and137, metadata !1099, metadata !DIExpression()), !dbg !1119
  %call138 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call131) #17, !dbg !1257
  call void @llvm.dbg.value(metadata ptr %call138, metadata !1112, metadata !DIExpression()), !dbg !1250
  br label %if.end139, !dbg !1258

if.end139:                                        ; preds = %if.then134, %if.end129
  %status.2 = phi i32 [ %and137, %if.then134 ], [ %status.1.ph.ph495, %if.end129 ], !dbg !1119
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !1099, metadata !DIExpression()), !dbg !1119
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #17, !dbg !1259
  br label %while.cond68thread-pre-split.outer.split, !dbg !1196, !llvm.loop !1214

if.end143:                                        ; preds = %if.end62
  %call145 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.34) #17, !dbg !1260
  %cmp146 = icmp eq i32 %call145, 0, !dbg !1262
  br i1 %cmp146, label %while.cond149thread-pre-split, label %if.end167, !dbg !1263

while.cond149thread-pre-split:                    ; preds = %if.end143, %if.end165
  %.pr478 = load i8, ptr %call4, align 1, !dbg !1264, !tbaa !359
  br label %while.cond149, !dbg !1264

while.cond149:                                    ; preds = %while.cond149thread-pre-split, %while.body158
  %53 = phi i8 [ %.pr478, %while.cond149thread-pre-split ], [ %57, %while.body158 ], !dbg !1264
  %cmp151.not = icmp eq i8 %53, 62, !dbg !1266
  br i1 %cmp151.not, label %for.cond.backedge, label %land.rhs153, !dbg !1267

land.rhs153:                                      ; preds = %while.cond149
  %54 = load ptr, ptr %q, align 8, !dbg !1268, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %54, metadata !1092, metadata !DIExpression()), !dbg !1119
  %55 = load i8, ptr %54, align 1, !dbg !1269, !tbaa !359
  %cmp155.not = icmp eq i8 %55, 0, !dbg !1270
  br i1 %cmp155.not, label %for.cond.backedge, label %while.body158, !dbg !1271

while.body158:                                    ; preds = %land.rhs153
  %call160 = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call4, i64 noundef 4096) #17, !dbg !1272
  %56 = load ptr, ptr %q, align 8, !dbg !1274, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %q, metadata !1092, metadata !DIExpression(DW_OP_deref)), !dbg !1119
  call void @GetMagickToken(ptr noundef %56, ptr noundef nonnull %q, ptr noundef nonnull %call4) #17, !dbg !1275
  %57 = load i8, ptr %call4, align 1, !dbg !1276, !tbaa !359
  %cmp162.not = icmp eq i8 %57, 61, !dbg !1278
  br i1 %cmp162.not, label %if.end165, label %while.cond149, !dbg !1279, !llvm.loop !1280

if.end165:                                        ; preds = %while.body158
  %58 = load ptr, ptr %q, align 8, !dbg !1282, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %q, metadata !1092, metadata !DIExpression(DW_OP_deref)), !dbg !1119
  call void @GetMagickToken(ptr noundef %58, ptr noundef nonnull %q, ptr noundef nonnull %call4) #17, !dbg !1283
  br label %while.cond149thread-pre-split, !dbg !1271, !llvm.loop !1280

if.end167:                                        ; preds = %if.end143
  %call169 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.35) #17, !dbg !1284
  %cmp170 = icmp eq i32 %call169, 0, !dbg !1286
  br i1 %cmp170, label %if.then172, label %if.end176, !dbg !1287

if.then172:                                       ; preds = %if.end167
  call void @llvm.dbg.value(metadata ptr %tag, metadata !1288, metadata !DIExpression()) #17, !dbg !1296
  call void @llvm.dbg.value(metadata i64 1, metadata !1293, metadata !DIExpression()) #17, !dbg !1296
  %59 = load i8, ptr %tag, align 16, !dbg !1299, !tbaa !359
  %cmp.i = icmp eq i8 %59, 0, !dbg !1301
  br i1 %cmp.i, label %ChopLocaleComponents.exit, label %if.end.i, !dbg !1302

if.end.i:                                         ; preds = %if.then172
  %call.i = call i64 @strlen(ptr noundef nonnull %tag) #21, !dbg !1303
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %call.i, !dbg !1304
  call void @llvm.dbg.value(metadata ptr %add.ptr2.i, metadata !1294, metadata !DIExpression()) #17, !dbg !1296
  %60 = load i8, ptr %add.ptr2.i, align 1, !dbg !1305, !tbaa !359
  %cmp4.i = icmp eq i8 %60, 47, !dbg !1307
  br i1 %cmp4.i, label %if.then6.i, label %if.end7.i, !dbg !1308

if.then6.i:                                       ; preds = %if.end.i
  store i8 0, ptr %add.ptr2.i, align 1, !dbg !1309, !tbaa !359
  br label %if.end7.i, !dbg !1310

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i
  %61 = phi i8 [ 0, %if.then6.i ], [ %60, %if.end.i ]
  call void @llvm.dbg.value(metadata i64 0, metadata !1295, metadata !DIExpression()) #17, !dbg !1296
  call void @llvm.dbg.value(metadata ptr %add.ptr2.i, metadata !1294, metadata !DIExpression()) #17, !dbg !1296
  %cmp1035.i = icmp ugt ptr %add.ptr2.i, %tag
  br i1 %cmp1035.i, label %for.body.i, label %if.then19.i, !dbg !1311

for.body.i:                                       ; preds = %if.end7.i, %for.inc.for.body_crit_edge.i
  %62 = phi i8 [ %.pre.i, %for.inc.for.body_crit_edge.i ], [ %61, %if.end7.i ], !dbg !1314
  %count.039.i = phi i64 [ %count.1.i, %for.inc.for.body_crit_edge.i ], [ 0, %if.end7.i ]
  %p.037.i = phi ptr [ %incdec.ptr.i, %for.inc.for.body_crit_edge.i ], [ %add.ptr2.i, %if.end7.i ]
  call void @llvm.dbg.value(metadata i64 %count.039.i, metadata !1295, metadata !DIExpression()) #17, !dbg !1296
  call void @llvm.dbg.value(metadata ptr %p.037.i, metadata !1294, metadata !DIExpression()) #17, !dbg !1296
  %cmp13.i = icmp eq i8 %62, 47, !dbg !1316
  br i1 %cmp13.i, label %if.then15.i, label %for.inc.i, !dbg !1317

if.then15.i:                                      ; preds = %for.body.i
  store i8 0, ptr %p.037.i, align 1, !dbg !1318, !tbaa !359
  %inc.i = add nsw i64 %count.039.i, 1, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !1295, metadata !DIExpression()) #17, !dbg !1296
  br label %for.inc.i, !dbg !1321

for.inc.i:                                        ; preds = %if.then15.i, %for.body.i
  %count.1.i = phi i64 [ %inc.i, %if.then15.i ], [ %count.039.i, %for.body.i ], !dbg !1322
  call void @llvm.dbg.value(metadata i64 %count.1.i, metadata !1295, metadata !DIExpression()) #17, !dbg !1296
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.037.i, i64 -1, !dbg !1323
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !1294, metadata !DIExpression()) #17, !dbg !1296
  %cmp8.i = icmp slt i64 %count.1.i, 1, !dbg !1324
  %cmp10.i = icmp ugt ptr %incdec.ptr.i, %tag
  %or.cond.i = select i1 %cmp8.i, i1 %cmp10.i, i1 false, !dbg !1311
  br i1 %or.cond.i, label %for.inc.for.body_crit_edge.i, label %for.end.i, !dbg !1311, !llvm.loop !1325

for.inc.for.body_crit_edge.i:                     ; preds = %for.inc.i
  %.pre.i = load i8, ptr %incdec.ptr.i, align 1, !dbg !1314, !tbaa !359
  br label %for.body.i, !dbg !1311

for.end.i:                                        ; preds = %for.inc.i
  br i1 %cmp8.i, label %if.then19.i, label %ChopLocaleComponents.exit, !dbg !1328

if.then19.i:                                      ; preds = %if.end7.i, %for.end.i
  store i8 0, ptr %tag, align 16, !dbg !1329, !tbaa !359
  br label %ChopLocaleComponents.exit, !dbg !1331

ChopLocaleComponents.exit:                        ; preds = %if.then172, %for.end.i, %if.then19.i
  %call175 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tag, ptr noundef nonnull @.str.33, i64 noundef 4096) #17, !dbg !1332
  br label %for.cond.backedge, !dbg !1333

if.end176:                                        ; preds = %if.end167
  %call178 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.36) #17, !dbg !1334
  %cmp179 = icmp eq i32 %call178, 0, !dbg !1336
  br i1 %cmp179, label %for.cond.backedge, label %if.end182, !dbg !1337

if.end182:                                        ; preds = %if.end176
  %call184 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.37) #17, !dbg !1338
  %cmp185 = icmp eq i32 %call184, 0, !dbg !1340
  br i1 %cmp185, label %for.cond.backedge, label %if.end188, !dbg !1341

if.end188:                                        ; preds = %if.end182
  %call190 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.38) #17, !dbg !1342
  %cmp191 = icmp eq i32 %call190, 0, !dbg !1343
  br i1 %cmp191, label %while.cond194thread-pre-split, label %if.end301, !dbg !1344

while.cond194thread-pre-split:                    ; preds = %if.end188, %while.cond194thread-pre-split.backedge
  %.pr480 = load i8, ptr %call4, align 1, !dbg !1345, !tbaa !359
  br label %while.cond194, !dbg !1345

while.cond194:                                    ; preds = %while.cond194thread-pre-split, %while.body203
  %63 = phi i8 [ %.pr480, %while.cond194thread-pre-split ], [ %66, %while.body203 ], !dbg !1345
  %cmp196.not = icmp eq i8 %63, 62, !dbg !1346
  %.pre = load ptr, ptr %q, align 8, !dbg !1347, !tbaa !430
  br i1 %cmp196.not, label %for.cond222.loopexit, label %land.rhs198, !dbg !1348

land.rhs198:                                      ; preds = %while.cond194
  call void @llvm.dbg.value(metadata ptr %.pre, metadata !1092, metadata !DIExpression()), !dbg !1119
  %64 = load i8, ptr %.pre, align 1, !dbg !1349, !tbaa !359
  %cmp200.not = icmp eq i8 %64, 0, !dbg !1350
  br i1 %cmp200.not, label %for.cond222.loopexit, label %while.body203, !dbg !1351

while.body203:                                    ; preds = %land.rhs198
  %call205 = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call4, i64 noundef 4096) #17, !dbg !1352
  %65 = load ptr, ptr %q, align 8, !dbg !1354, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %q, metadata !1092, metadata !DIExpression(DW_OP_deref)), !dbg !1119
  call void @GetMagickToken(ptr noundef %65, ptr noundef nonnull %q, ptr noundef nonnull %call4) #17, !dbg !1355
  %66 = load i8, ptr %call4, align 1, !dbg !1356, !tbaa !359
  %cmp207.not = icmp eq i8 %66, 61, !dbg !1358
  br i1 %cmp207.not, label %if.end210, label %while.cond194, !dbg !1359, !llvm.loop !1360

if.end210:                                        ; preds = %while.body203
  %67 = load ptr, ptr %q, align 8, !dbg !1362, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %q, metadata !1092, metadata !DIExpression(DW_OP_deref)), !dbg !1119
  call void @GetMagickToken(ptr noundef %67, ptr noundef nonnull %q, ptr noundef nonnull %call4) #17, !dbg !1363
  %call212 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.39) #17, !dbg !1364
  %cmp213 = icmp eq i32 %call212, 0, !dbg !1366
  br i1 %cmp213, label %if.then215, label %while.cond194thread-pre-split.backedge, !dbg !1367

if.then215:                                       ; preds = %if.end210
  %call217 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tag, ptr noundef nonnull %call4, i64 noundef 4096) #17, !dbg !1368
  %call219 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tag, ptr noundef nonnull @.str.33, i64 noundef 4096) #17, !dbg !1370
  br label %while.cond194thread-pre-split.backedge, !dbg !1371

while.cond194thread-pre-split.backedge:           ; preds = %if.then215, %if.end210
  br label %while.cond194thread-pre-split, !dbg !1345, !llvm.loop !1360

for.cond222.loopexit:                             ; preds = %land.rhs198, %while.cond194
  br label %for.cond222, !dbg !1372

for.cond222:                                      ; preds = %for.cond222.loopexit, %for.inc
  %68 = phi ptr [ %incdec.ptr232, %for.inc ], [ %.pre, %for.cond222.loopexit ], !dbg !1374
  call void @llvm.dbg.value(metadata ptr %68, metadata !1092, metadata !DIExpression()), !dbg !1119
  %69 = load i8, ptr %68, align 1, !dbg !1376, !tbaa !359
  switch i8 %69, label %for.inc [
    i8 60, label %for.end
    i8 0, label %for.end
  ], !dbg !1377

for.inc:                                          ; preds = %for.cond222
  %incdec.ptr232 = getelementptr inbounds i8, ptr %68, i64 1, !dbg !1378
  call void @llvm.dbg.value(metadata ptr %incdec.ptr232, metadata !1092, metadata !DIExpression()), !dbg !1119
  store ptr %incdec.ptr232, ptr %q, align 8, !dbg !1378, !tbaa !430
  br label %for.cond222, !dbg !1379, !llvm.loop !1380

for.end:                                          ; preds = %for.cond222, %for.cond222
  %call234 = tail call ptr @__ctype_b_loc() #18, !dbg !1119
  %70 = load ptr, ptr %call234, align 8, !tbaa !430
  br label %while.cond233, !dbg !1382

while.cond233:                                    ; preds = %while.cond233, %for.end
  %p.0 = phi ptr [ %.pre, %for.end ], [ %incdec.ptr243, %while.cond233 ], !dbg !1347
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !1100, metadata !DIExpression()), !dbg !1119
  %71 = load i8, ptr %p.0, align 1, !dbg !1383, !tbaa !359
  %72 = zext i8 %71 to i64
  %arrayidx237 = getelementptr inbounds i16, ptr %70, i64 %72, !dbg !1383
  %73 = load i16, ptr %arrayidx237, align 2, !dbg !1383, !tbaa !1162
  %74 = and i16 %73, 8192, !dbg !1383
  %cmp240.not = icmp eq i16 %74, 0, !dbg !1384
  %incdec.ptr243 = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !1385
  call void @llvm.dbg.value(metadata ptr %incdec.ptr243, metadata !1100, metadata !DIExpression()), !dbg !1119
  br i1 %cmp240.not, label %while.cond246, label %while.cond233, !dbg !1382, !llvm.loop !1386

while.cond246:                                    ; preds = %while.cond233, %while.cond246
  %.pn = phi ptr [ %storemerge, %while.cond246 ], [ %68, %while.cond233 ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 -1, !dbg !1347
  store ptr %storemerge, ptr %q, align 8, !dbg !1347, !tbaa !430
  %75 = load ptr, ptr %call234, align 8, !dbg !1387, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %storemerge, metadata !1092, metadata !DIExpression()), !dbg !1119
  %76 = load i8, ptr %storemerge, align 1, !dbg !1387, !tbaa !359
  %77 = zext i8 %76 to i64
  %arrayidx250 = getelementptr inbounds i16, ptr %75, i64 %77, !dbg !1387
  %78 = load i16, ptr %arrayidx250, align 2, !dbg !1387, !tbaa !1162
  %79 = and i16 %78, 8192, !dbg !1387
  %cmp253.not = icmp ne i16 %79, 0, !dbg !1388
  %cmp256 = icmp ugt ptr %storemerge, %p.0
  %or.cond = and i1 %cmp256, %cmp253.not, !dbg !1389
  br i1 %or.cond, label %while.cond246, label %while.end261, !dbg !1389, !llvm.loop !1390

while.end261:                                     ; preds = %while.cond246
  call void @llvm.dbg.value(metadata ptr %storemerge, metadata !1092, metadata !DIExpression()), !dbg !1119
  %sub.ptr.lhs.cast = ptrtoint ptr %storemerge to i64, !dbg !1393
  %sub.ptr.rhs.cast = ptrtoint ptr %p.0 to i64, !dbg !1393
  %sub.ptr.sub = sub i64 2, %sub.ptr.rhs.cast, !dbg !1393
  %add263 = add i64 %sub.ptr.sub, %sub.ptr.lhs.cast, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %add263, metadata !1395, metadata !DIExpression()) #17, !dbg !1401
  call void @llvm.dbg.value(metadata i64 4096, metadata !1400, metadata !DIExpression()) #17, !dbg !1401
  %80 = call i64 @llvm.umin.i64(i64 %add263, i64 4096) #17, !dbg !1401
  %call265 = call i64 @CopyMagickString(ptr noundef nonnull %message, ptr noundef nonnull %p.0, i64 noundef %80) #17, !dbg !1403
  %call266 = call ptr @AcquireMagickMemory(i64 noundef 56) #22, !dbg !1404
  call void @llvm.dbg.value(metadata ptr %call266, metadata !1098, metadata !DIExpression()), !dbg !1119
  %cmp267 = icmp eq ptr %call266, null, !dbg !1405
  br i1 %cmp267, label %if.then269, label %if.end277, !dbg !1406

if.then269:                                       ; preds = %while.end261
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception271) #17, !dbg !1407
  call void @llvm.dbg.declare(metadata ptr %exception271, metadata !1118, metadata !DIExpression()), !dbg !1407
  call void @GetExceptionInfo(ptr noundef nonnull %exception271) #17, !dbg !1407
  %call272 = tail call ptr @__errno_location() #18, !dbg !1407
  %81 = load i32, ptr %call272, align 4, !dbg !1407, !tbaa !494
  %call273 = call ptr @GetExceptionMessage(i32 noundef %81) #17, !dbg !1407
  call void @llvm.dbg.value(metadata ptr %call273, metadata !1113, metadata !DIExpression()), !dbg !1408
  %call274 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception271, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1335, i32 noundef 700, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %call273) #17, !dbg !1407
  %call275 = call ptr @DestroyString(ptr noundef %call273) #17, !dbg !1407
  call void @llvm.dbg.value(metadata ptr %call275, metadata !1113, metadata !DIExpression()), !dbg !1408
  call void @CatchException(ptr noundef nonnull %exception271) #17, !dbg !1407
  %call276 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception271) #17, !dbg !1407
  call void @MagickCoreTerminus() #17, !dbg !1407
  call void @_exit(i32 noundef 1) #19, !dbg !1407
  unreachable, !dbg !1407

if.end277:                                        ; preds = %while.end261
  %call278 = call ptr @ResetMagickMemory(ptr noundef nonnull %call266, i32 noundef 0, i64 noundef 56) #17, !dbg !1409
  %call279 = call ptr @ConstantString(ptr noundef %filename) #17, !dbg !1410
  store ptr %call279, ptr %call266, align 8, !dbg !1411, !tbaa !683
  %call282 = call ptr @ConstantString(ptr noundef nonnull %tag) #17, !dbg !1412
  %tag283 = getelementptr inbounds %struct._LocaleInfo, ptr %call266, i64 0, i32 1, !dbg !1413
  store ptr %call282, ptr %tag283, align 8, !dbg !1414, !tbaa !631
  %call285 = call ptr @ConstantString(ptr noundef nonnull %message) #17, !dbg !1415
  %message286 = getelementptr inbounds %struct._LocaleInfo, ptr %call266, i64 0, i32 2, !dbg !1416
  store ptr %call285, ptr %message286, align 8, !dbg !1417, !tbaa !794
  %signature = getelementptr inbounds %struct._LocaleInfo, ptr %call266, i64 0, i32 6, !dbg !1418
  store i64 2880220587, ptr %signature, align 8, !dbg !1419, !tbaa !1420
  %82 = load ptr, ptr %tag283, align 8, !dbg !1421, !tbaa !631
  %call288 = call i32 @AddValueToSplayTree(ptr noundef %locale_cache, ptr noundef %82, ptr noundef nonnull %call266) #17, !dbg !1422
  call void @llvm.dbg.value(metadata i32 %call288, metadata !1099, metadata !DIExpression()), !dbg !1119
  %cmp289 = icmp eq i32 %call288, 0, !dbg !1423
  br i1 %cmp289, label %if.then291, label %if.end294, !dbg !1425

if.then291:                                       ; preds = %if.end277
  %83 = load ptr, ptr %tag283, align 8, !dbg !1426, !tbaa !631
  %call293 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1343, i32 noundef 400, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %83) #17, !dbg !1427
  br label %if.end294, !dbg !1428

if.end294:                                        ; preds = %if.then291, %if.end277
  %call297 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tag, ptr noundef nonnull %message, i64 noundef 4096) #17, !dbg !1429
  %call299 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tag, ptr noundef nonnull @.str.13, i64 noundef 4096) #17, !dbg !1430
  %84 = load ptr, ptr %q, align 8, !dbg !1431, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %84, metadata !1092, metadata !DIExpression()), !dbg !1119
  %incdec.ptr300 = getelementptr inbounds i8, ptr %84, i64 1, !dbg !1431
  call void @llvm.dbg.value(metadata ptr %incdec.ptr300, metadata !1092, metadata !DIExpression()), !dbg !1119
  store ptr %incdec.ptr300, ptr %q, align 8, !dbg !1431, !tbaa !430
  br label %for.cond.backedge, !dbg !1432

if.end301:                                        ; preds = %if.end188
  %call303 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.40) #17, !dbg !1433
  %cmp304 = icmp eq i32 %call303, 0, !dbg !1435
  br i1 %cmp304, label %if.then306, label %if.end310, !dbg !1436

if.then306:                                       ; preds = %if.end301
  call void @llvm.dbg.value(metadata ptr %tag, metadata !1288, metadata !DIExpression()) #17, !dbg !1437
  call void @llvm.dbg.value(metadata i64 2, metadata !1293, metadata !DIExpression()) #17, !dbg !1437
  %85 = load i8, ptr %tag, align 16, !dbg !1440, !tbaa !359
  %cmp.i424 = icmp eq i8 %85, 0, !dbg !1441
  br i1 %cmp.i424, label %ChopLocaleComponents.exit450, label %if.end.i429, !dbg !1442

if.end.i429:                                      ; preds = %if.then306
  %call.i425 = call i64 @strlen(ptr noundef nonnull %tag) #21, !dbg !1443
  %add.ptr2.i427 = getelementptr inbounds i8, ptr %add.ptr.i426, i64 %call.i425, !dbg !1444
  call void @llvm.dbg.value(metadata ptr %add.ptr2.i427, metadata !1294, metadata !DIExpression()) #17, !dbg !1437
  %86 = load i8, ptr %add.ptr2.i427, align 1, !dbg !1445, !tbaa !359
  %cmp4.i428 = icmp eq i8 %86, 47, !dbg !1446
  br i1 %cmp4.i428, label %if.then6.i430, label %if.end7.i432, !dbg !1447

if.then6.i430:                                    ; preds = %if.end.i429
  store i8 0, ptr %add.ptr2.i427, align 1, !dbg !1448, !tbaa !359
  br label %if.end7.i432, !dbg !1449

if.end7.i432:                                     ; preds = %if.then6.i430, %if.end.i429
  %87 = phi i8 [ 0, %if.then6.i430 ], [ %86, %if.end.i429 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !1295, metadata !DIExpression()) #17, !dbg !1437
  call void @llvm.dbg.value(metadata ptr %add.ptr2.i427, metadata !1294, metadata !DIExpression()) #17, !dbg !1437
  %cmp1035.i431 = icmp ugt ptr %add.ptr2.i427, %tag
  br i1 %cmp1035.i431, label %for.body.i436, label %if.then19.i449, !dbg !1450

for.body.i436:                                    ; preds = %if.end7.i432, %for.inc.for.body_crit_edge.i446
  %88 = phi i8 [ %.pre.i445, %for.inc.for.body_crit_edge.i446 ], [ %87, %if.end7.i432 ], !dbg !1451
  %count.039.i433 = phi i64 [ %count.1.i439, %for.inc.for.body_crit_edge.i446 ], [ 0, %if.end7.i432 ]
  %p.037.i434 = phi ptr [ %incdec.ptr.i440, %for.inc.for.body_crit_edge.i446 ], [ %add.ptr2.i427, %if.end7.i432 ]
  call void @llvm.dbg.value(metadata i64 %count.039.i433, metadata !1295, metadata !DIExpression()) #17, !dbg !1437
  call void @llvm.dbg.value(metadata ptr %p.037.i434, metadata !1294, metadata !DIExpression()) #17, !dbg !1437
  %cmp13.i435 = icmp eq i8 %88, 47, !dbg !1452
  br i1 %cmp13.i435, label %if.then15.i438, label %for.inc.i444, !dbg !1453

if.then15.i438:                                   ; preds = %for.body.i436
  store i8 0, ptr %p.037.i434, align 1, !dbg !1454, !tbaa !359
  %inc.i437 = add nsw i64 %count.039.i433, 1, !dbg !1455
  call void @llvm.dbg.value(metadata i64 %inc.i437, metadata !1295, metadata !DIExpression()) #17, !dbg !1437
  br label %for.inc.i444, !dbg !1456

for.inc.i444:                                     ; preds = %if.then15.i438, %for.body.i436
  %count.1.i439 = phi i64 [ %inc.i437, %if.then15.i438 ], [ %count.039.i433, %for.body.i436 ], !dbg !1457
  call void @llvm.dbg.value(metadata i64 %count.1.i439, metadata !1295, metadata !DIExpression()) #17, !dbg !1437
  %incdec.ptr.i440 = getelementptr inbounds i8, ptr %p.037.i434, i64 -1, !dbg !1458
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i440, metadata !1294, metadata !DIExpression()) #17, !dbg !1437
  %cmp8.i441 = icmp slt i64 %count.1.i439, 2, !dbg !1459
  %cmp10.i442 = icmp ugt ptr %incdec.ptr.i440, %tag
  %or.cond.i443 = select i1 %cmp8.i441, i1 %cmp10.i442, i1 false, !dbg !1450
  br i1 %or.cond.i443, label %for.inc.for.body_crit_edge.i446, label %for.end.i448, !dbg !1450, !llvm.loop !1460

for.inc.for.body_crit_edge.i446:                  ; preds = %for.inc.i444
  %.pre.i445 = load i8, ptr %incdec.ptr.i440, align 1, !dbg !1451, !tbaa !359
  br label %for.body.i436, !dbg !1450

for.end.i448:                                     ; preds = %for.inc.i444
  br i1 %cmp8.i441, label %if.then19.i449, label %ChopLocaleComponents.exit450, !dbg !1463

if.then19.i449:                                   ; preds = %if.end7.i432, %for.end.i448
  store i8 0, ptr %tag, align 16, !dbg !1464, !tbaa !359
  br label %ChopLocaleComponents.exit450, !dbg !1465

ChopLocaleComponents.exit450:                     ; preds = %if.then306, %for.end.i448, %if.then19.i449
  %call309 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tag, ptr noundef nonnull @.str.33, i64 noundef 4096) #17, !dbg !1466
  br label %for.cond.backedge, !dbg !1467

if.end310:                                        ; preds = %if.end301
  %89 = load i8, ptr %keyword, align 16, !dbg !1468, !tbaa !359
  %cmp313 = icmp eq i8 %89, 60, !dbg !1470
  br i1 %cmp313, label %if.then315, label %if.end347, !dbg !1471

if.then315:                                       ; preds = %if.end310
  %90 = load i8, ptr %add.ptr317, align 1, !dbg !1472, !tbaa !359
  switch i8 %90, label %if.end338 [
    i8 63, label %for.cond.backedge
    i8 47, label %if.then328
  ], !dbg !1475

if.then328:                                       ; preds = %if.then315
  call void @llvm.dbg.value(metadata ptr %tag, metadata !1288, metadata !DIExpression()) #17, !dbg !1476
  call void @llvm.dbg.value(metadata i64 1, metadata !1293, metadata !DIExpression()) #17, !dbg !1476
  %91 = load i8, ptr %tag, align 16, !dbg !1480, !tbaa !359
  %cmp.i451 = icmp eq i8 %91, 0, !dbg !1481
  br i1 %cmp.i451, label %for.cond.backedge, label %if.end.i456, !dbg !1482

if.end.i456:                                      ; preds = %if.then328
  %call.i452 = call i64 @strlen(ptr noundef nonnull %tag) #21, !dbg !1483
  %add.ptr2.i454 = getelementptr inbounds i8, ptr %add.ptr.i453, i64 %call.i452, !dbg !1484
  call void @llvm.dbg.value(metadata ptr %add.ptr2.i454, metadata !1294, metadata !DIExpression()) #17, !dbg !1476
  %92 = load i8, ptr %add.ptr2.i454, align 1, !dbg !1485, !tbaa !359
  %cmp4.i455 = icmp eq i8 %92, 47, !dbg !1486
  br i1 %cmp4.i455, label %if.then6.i457, label %if.end7.i459, !dbg !1487

if.then6.i457:                                    ; preds = %if.end.i456
  store i8 0, ptr %add.ptr2.i454, align 1, !dbg !1488, !tbaa !359
  br label %if.end7.i459, !dbg !1489

if.end7.i459:                                     ; preds = %if.then6.i457, %if.end.i456
  %93 = phi i8 [ 0, %if.then6.i457 ], [ %92, %if.end.i456 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !1295, metadata !DIExpression()) #17, !dbg !1476
  call void @llvm.dbg.value(metadata ptr %add.ptr2.i454, metadata !1294, metadata !DIExpression()) #17, !dbg !1476
  %cmp1035.i458 = icmp ugt ptr %add.ptr2.i454, %tag
  br i1 %cmp1035.i458, label %for.body.i463, label %if.then19.i476, !dbg !1490

for.body.i463:                                    ; preds = %if.end7.i459, %for.inc.for.body_crit_edge.i473
  %94 = phi i8 [ %.pre.i472, %for.inc.for.body_crit_edge.i473 ], [ %93, %if.end7.i459 ], !dbg !1491
  %count.039.i460 = phi i64 [ %count.1.i466, %for.inc.for.body_crit_edge.i473 ], [ 0, %if.end7.i459 ]
  %p.037.i461 = phi ptr [ %incdec.ptr.i467, %for.inc.for.body_crit_edge.i473 ], [ %add.ptr2.i454, %if.end7.i459 ]
  call void @llvm.dbg.value(metadata i64 %count.039.i460, metadata !1295, metadata !DIExpression()) #17, !dbg !1476
  call void @llvm.dbg.value(metadata ptr %p.037.i461, metadata !1294, metadata !DIExpression()) #17, !dbg !1476
  %cmp13.i462 = icmp eq i8 %94, 47, !dbg !1492
  br i1 %cmp13.i462, label %if.then15.i465, label %for.inc.i471, !dbg !1493

if.then15.i465:                                   ; preds = %for.body.i463
  store i8 0, ptr %p.037.i461, align 1, !dbg !1494, !tbaa !359
  %inc.i464 = add nsw i64 %count.039.i460, 1, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %inc.i464, metadata !1295, metadata !DIExpression()) #17, !dbg !1476
  br label %for.inc.i471, !dbg !1496

for.inc.i471:                                     ; preds = %if.then15.i465, %for.body.i463
  %count.1.i466 = phi i64 [ %inc.i464, %if.then15.i465 ], [ %count.039.i460, %for.body.i463 ], !dbg !1497
  call void @llvm.dbg.value(metadata i64 %count.1.i466, metadata !1295, metadata !DIExpression()) #17, !dbg !1476
  %incdec.ptr.i467 = getelementptr inbounds i8, ptr %p.037.i461, i64 -1, !dbg !1498
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i467, metadata !1294, metadata !DIExpression()) #17, !dbg !1476
  %cmp8.i468 = icmp slt i64 %count.1.i466, 1, !dbg !1499
  %cmp10.i469 = icmp ugt ptr %incdec.ptr.i467, %tag
  %or.cond.i470 = select i1 %cmp8.i468, i1 %cmp10.i469, i1 false, !dbg !1490
  br i1 %or.cond.i470, label %for.inc.for.body_crit_edge.i473, label %for.end.i475, !dbg !1490, !llvm.loop !1500

for.inc.for.body_crit_edge.i473:                  ; preds = %for.inc.i471
  %.pre.i472 = load i8, ptr %incdec.ptr.i467, align 1, !dbg !1491, !tbaa !359
  br label %for.body.i463, !dbg !1490

for.end.i475:                                     ; preds = %for.inc.i471
  br i1 %cmp8.i468, label %if.then19.i476, label %ChopLocaleComponents.exit477, !dbg !1503

if.then19.i476:                                   ; preds = %if.end7.i459, %for.end.i475
  store i8 0, ptr %tag, align 16, !dbg !1504, !tbaa !359
  br label %for.cond.backedge, !dbg !1505

ChopLocaleComponents.exit477:                     ; preds = %for.end.i475
  %.pr483 = load i8, ptr %tag, align 16, !dbg !1506, !tbaa !359
  %cmp332.not = icmp eq i8 %.pr483, 0, !dbg !1508
  br i1 %cmp332.not, label %for.cond.backedge, label %if.then334, !dbg !1509

if.then334:                                       ; preds = %ChopLocaleComponents.exit477
  %call336 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tag, ptr noundef nonnull @.str.33, i64 noundef 4096) #17, !dbg !1510
  br label %for.cond.backedge, !dbg !1511

if.end338:                                        ; preds = %if.then315
  %call339 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call4) #21, !dbg !1512
  %sub = add i64 %call339, -1, !dbg !1513
  %arrayidx340 = getelementptr inbounds i8, ptr %call4, i64 %sub, !dbg !1514
  store i8 0, ptr %arrayidx340, align 1, !dbg !1515, !tbaa !359
  %call342 = call i64 @CopyMagickString(ptr noundef nonnull %call4, ptr noundef nonnull %add.ptr341, i64 noundef 4096) #17, !dbg !1516
  %call344 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tag, ptr noundef nonnull %call4, i64 noundef 4096) #17, !dbg !1517
  %call346 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tag, ptr noundef nonnull @.str.33, i64 noundef 4096) #17, !dbg !1518
  br label %for.cond.backedge, !dbg !1519

if.end347:                                        ; preds = %if.end310
  %95 = load ptr, ptr %q, align 8, !dbg !1520, !tbaa !430
  call void @llvm.dbg.value(metadata ptr %95, metadata !1092, metadata !DIExpression()), !dbg !1119
  call void @GetMagickToken(ptr noundef %95, ptr noundef null, ptr noundef nonnull %call4) #17, !dbg !1521
  br label %for.cond.backedge, !dbg !1522

for.end353:                                       ; preds = %for.cond.backedge, %for.body, %if.end
  %status.0.lcssa = phi i32 [ 1, %if.end ], [ %status.0506, %for.body ], [ %status.0.be, %for.cond.backedge ], !dbg !1119
  %call354 = call ptr @RelinquishMagickMemory(ptr noundef %call4) #17, !dbg !1523
  call void @llvm.dbg.value(metadata ptr %call354, metadata !1091, metadata !DIExpression()), !dbg !1119
  %call355 = call ptr @SetFatalErrorHandler(ptr noundef %call3) #17, !dbg !1524
  br label %cleanup, !dbg !1525

cleanup:                                          ; preds = %entry, %for.end353
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end353 ], [ 0, %entry ], !dbg !1119
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q) #17, !dbg !1526
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %tag) #17, !dbg !1526
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message) #17, !dbg !1526
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %keyword) #17, !dbg !1526
  ret i32 %retval.0, !dbg !1526
}

declare !dbg !1527 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

declare !dbg !1530 ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #2

declare !dbg !1533 ptr @SetFatalErrorHandler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @LocaleFatalErrorHandler(i32 noundef %severity, ptr noundef %reason, ptr noundef %description) #0 !dbg !1536 {
entry:
  call void @llvm.dbg.value(metadata i32 %severity, metadata !1538, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata ptr %reason, metadata !1539, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata ptr %description, metadata !1540, metadata !DIExpression()), !dbg !1541
  %cmp = icmp eq ptr %reason, null, !dbg !1542
  br i1 %cmp, label %if.then, label %if.end, !dbg !1544

if.then:                                          ; preds = %entry
  ret void, !dbg !1545

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !1546, !tbaa !430
  %call = tail call ptr @GetClientName() #17, !dbg !1547
  %call1 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef %call, ptr noundef nonnull %reason), !dbg !1548
  %cmp2.not = icmp eq ptr %description, null, !dbg !1549
  br i1 %cmp2.not, label %if.end5, label %if.then3, !dbg !1551

if.then3:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !1552, !tbaa !430
  %call4 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull %description), !dbg !1553
  br label %if.end5, !dbg !1554

if.end5:                                          ; preds = %if.then3, %if.end
  %2 = load ptr, ptr @stderr, align 8, !dbg !1555, !tbaa !430
  %call6 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %2, ptr noundef nonnull @.str.43), !dbg !1556
  %3 = load ptr, ptr @stderr, align 8, !dbg !1557, !tbaa !430
  %call7 = tail call i32 @fflush(ptr noundef %3), !dbg !1558
  tail call void @exit(i32 noundef 1) #19, !dbg !1559
  unreachable, !dbg !1559
}

declare !dbg !1560 ptr @AcquireString(ptr noundef) local_unnamed_addr #2

declare !dbg !1561 void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1564 i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #12

declare !dbg !1567 void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1571 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1572 hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare !dbg !1576 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #14

declare !dbg !1579 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1582 i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

declare !dbg !1585 ptr @GetClientName() local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { nounwind readnone willreturn }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!263, !264, !265, !266, !267, !268}
!llvm.ident = !{!269}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "locale_semaphore", scope: !2, file: !260, line: 91, type: !243, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !136, globals: !257, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/locale.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "3a28e1e25420d63eca02557c3ba5c08c")
!4 = !{!5, !31, !36, !109, !124}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 34, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!9 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!10 = !DIEnumerator(name: "NoEvents", value: 0)
!11 = !DIEnumerator(name: "TraceEvent", value: 1)
!12 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!13 = !DIEnumerator(name: "BlobEvent", value: 4)
!14 = !DIEnumerator(name: "CacheEvent", value: 8)
!15 = !DIEnumerator(name: "CoderEvent", value: 16)
!16 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!17 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!18 = !DIEnumerator(name: "DrawEvent", value: 128)
!19 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!20 = !DIEnumerator(name: "ImageEvent", value: 512)
!21 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!22 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!23 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!24 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!25 = !DIEnumerator(name: "TransformEvent", value: 16384)
!26 = !DIEnumerator(name: "UserEvent", value: 36864)
!27 = !DIEnumerator(name: "WandEvent", value: 65536)
!28 = !DIEnumerator(name: "X11Event", value: 131072)
!29 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!30 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 211, baseType: !7, size: 32, elements: !33)
!32 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!33 = !{!34, !35}
!34 = !DIEnumerator(name: "MagickFalse", value: 0)
!35 = !DIEnumerator(name: "MagickTrue", value: 1)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 28, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!39 = !DIEnumerator(name: "UndefinedException", value: 0)
!40 = !DIEnumerator(name: "WarningException", value: 300)
!41 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!42 = !DIEnumerator(name: "TypeWarning", value: 305)
!43 = !DIEnumerator(name: "OptionWarning", value: 310)
!44 = !DIEnumerator(name: "DelegateWarning", value: 315)
!45 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!46 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!47 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!48 = !DIEnumerator(name: "BlobWarning", value: 335)
!49 = !DIEnumerator(name: "StreamWarning", value: 340)
!50 = !DIEnumerator(name: "CacheWarning", value: 345)
!51 = !DIEnumerator(name: "CoderWarning", value: 350)
!52 = !DIEnumerator(name: "FilterWarning", value: 352)
!53 = !DIEnumerator(name: "ModuleWarning", value: 355)
!54 = !DIEnumerator(name: "DrawWarning", value: 360)
!55 = !DIEnumerator(name: "ImageWarning", value: 365)
!56 = !DIEnumerator(name: "WandWarning", value: 370)
!57 = !DIEnumerator(name: "RandomWarning", value: 375)
!58 = !DIEnumerator(name: "XServerWarning", value: 380)
!59 = !DIEnumerator(name: "MonitorWarning", value: 385)
!60 = !DIEnumerator(name: "RegistryWarning", value: 390)
!61 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!62 = !DIEnumerator(name: "PolicyWarning", value: 399)
!63 = !DIEnumerator(name: "ErrorException", value: 400)
!64 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!65 = !DIEnumerator(name: "TypeError", value: 405)
!66 = !DIEnumerator(name: "OptionError", value: 410)
!67 = !DIEnumerator(name: "DelegateError", value: 415)
!68 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!69 = !DIEnumerator(name: "CorruptImageError", value: 425)
!70 = !DIEnumerator(name: "FileOpenError", value: 430)
!71 = !DIEnumerator(name: "BlobError", value: 435)
!72 = !DIEnumerator(name: "StreamError", value: 440)
!73 = !DIEnumerator(name: "CacheError", value: 445)
!74 = !DIEnumerator(name: "CoderError", value: 450)
!75 = !DIEnumerator(name: "FilterError", value: 452)
!76 = !DIEnumerator(name: "ModuleError", value: 455)
!77 = !DIEnumerator(name: "DrawError", value: 460)
!78 = !DIEnumerator(name: "ImageError", value: 465)
!79 = !DIEnumerator(name: "WandError", value: 470)
!80 = !DIEnumerator(name: "RandomError", value: 475)
!81 = !DIEnumerator(name: "XServerError", value: 480)
!82 = !DIEnumerator(name: "MonitorError", value: 485)
!83 = !DIEnumerator(name: "RegistryError", value: 490)
!84 = !DIEnumerator(name: "ConfigureError", value: 495)
!85 = !DIEnumerator(name: "PolicyError", value: 499)
!86 = !DIEnumerator(name: "FatalErrorException", value: 700)
!87 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!88 = !DIEnumerator(name: "TypeFatalError", value: 705)
!89 = !DIEnumerator(name: "OptionFatalError", value: 710)
!90 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!91 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!92 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!93 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!94 = !DIEnumerator(name: "BlobFatalError", value: 735)
!95 = !DIEnumerator(name: "StreamFatalError", value: 740)
!96 = !DIEnumerator(name: "CacheFatalError", value: 745)
!97 = !DIEnumerator(name: "CoderFatalError", value: 750)
!98 = !DIEnumerator(name: "FilterFatalError", value: 752)
!99 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!100 = !DIEnumerator(name: "DrawFatalError", value: 760)
!101 = !DIEnumerator(name: "ImageFatalError", value: 765)
!102 = !DIEnumerator(name: "WandFatalError", value: 770)
!103 = !DIEnumerator(name: "RandomFatalError", value: 775)
!104 = !DIEnumerator(name: "XServerFatalError", value: 780)
!105 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!106 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!107 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!108 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !110, line: 46, baseType: !7, size: 32, elements: !111)
!110 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!112 = !DIEnumerator(name: "_ISupper", value: 256)
!113 = !DIEnumerator(name: "_ISlower", value: 512)
!114 = !DIEnumerator(name: "_ISalpha", value: 1024)
!115 = !DIEnumerator(name: "_ISdigit", value: 2048)
!116 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!117 = !DIEnumerator(name: "_ISspace", value: 8192)
!118 = !DIEnumerator(name: "_ISprint", value: 16384)
!119 = !DIEnumerator(name: "_ISgraph", value: 32768)
!120 = !DIEnumerator(name: "_ISblank", value: 1)
!121 = !DIEnumerator(name: "_IScntrl", value: 2)
!122 = !DIEnumerator(name: "_ISpunct", value: 4)
!123 = !DIEnumerator(name: "_ISalnum", value: 8)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !125, line: 25, baseType: !7, size: 32, elements: !126)
!125 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135}
!127 = !DIEnumerator(name: "UndefinedPath", value: 0)
!128 = !DIEnumerator(name: "MagickPath", value: 1)
!129 = !DIEnumerator(name: "RootPath", value: 2)
!130 = !DIEnumerator(name: "HeadPath", value: 3)
!131 = !DIEnumerator(name: "TailPath", value: 4)
!132 = !DIEnumerator(name: "BasePath", value: 5)
!133 = !DIEnumerator(name: "ExtensionPath", value: 6)
!134 = !DIEnumerator(name: "SubimagePath", value: 7)
!135 = !DIEnumerator(name: "CanonicalPath", value: 8)
!136 = !{!137, !138, !143, !162, !163, !165, !160, !166, !167, !150, !168, !172, !186, !187, !243, !247, !251, !195, !254, !183, !217, !256}
!137 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !139, line: 77, baseType: !140)
!139 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !141, line: 193, baseType: !142)
!141 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!142 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "LocaleInfo", file: !146, line: 43, baseType: !147)
!146 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LocaleInfo", file: !146, line: 27, size: 448, elements: !148)
!148 = !{!149, !152, !153, !154, !156, !158, !159}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !147, file: !146, line: 30, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !147, file: !146, line: 31, baseType: !150, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !147, file: !146, line: 32, baseType: !150, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !147, file: !146, line: 35, baseType: !155, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !32, line: 215, baseType: !31)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !147, file: !146, line: 38, baseType: !157, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !146, line: 39, baseType: !157, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !147, file: !146, line: 42, baseType: !160, size: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !161, line: 46, baseType: !137)
!161 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinkedListInfo", file: !170, line: 34, baseType: !171)
!170 = !DIFile(filename: "apps/538.imagick_r/src/magick/hashmap.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "683c2bd26601474466c188c023adadf2")
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LinkedListInfo", file: !170, line: 33, flags: DIFlagFwdDecl)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !174, line: 40, baseType: !175)
!174 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !174, line: 29, size: 32960, elements: !176)
!176 = !{!177, !181, !184, !185}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !175, file: !174, line: 32, baseType: !178, size: 32768)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 32768, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 4096)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !175, file: !174, line: 35, baseType: !182, size: 64, offset: 32768)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !175, file: !174, line: 38, baseType: !160, size: 64, offset: 32832)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !175, file: !174, line: 39, baseType: !160, size: 64, offset: 32896)
!186 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !190, line: 7, baseType: !191)
!190 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !192, line: 49, size: 1728, elements: !193)
!192 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!193 = !{!194, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !210, !212, !213, !214, !216, !218, !220, !224, !227, !229, !232, !235, !236, !237, !238, !239}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !191, file: !192, line: 51, baseType: !195, size: 32)
!195 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !191, file: !192, line: 54, baseType: !150, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !191, file: !192, line: 55, baseType: !150, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !191, file: !192, line: 56, baseType: !150, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !191, file: !192, line: 57, baseType: !150, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !191, file: !192, line: 58, baseType: !150, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !191, file: !192, line: 59, baseType: !150, size: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !191, file: !192, line: 60, baseType: !150, size: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !191, file: !192, line: 61, baseType: !150, size: 64, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !191, file: !192, line: 64, baseType: !150, size: 64, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !191, file: !192, line: 65, baseType: !150, size: 64, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !191, file: !192, line: 66, baseType: !150, size: 64, offset: 704)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !191, file: !192, line: 68, baseType: !208, size: 64, offset: 768)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !192, line: 36, flags: DIFlagFwdDecl)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !191, file: !192, line: 70, baseType: !211, size: 64, offset: 832)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !191, file: !192, line: 72, baseType: !195, size: 32, offset: 896)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !191, file: !192, line: 73, baseType: !195, size: 32, offset: 928)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !191, file: !192, line: 74, baseType: !215, size: 64, offset: 960)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !141, line: 152, baseType: !142)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !191, file: !192, line: 77, baseType: !217, size: 16, offset: 1024)
!217 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !191, file: !192, line: 78, baseType: !219, size: 8, offset: 1040)
!219 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !191, file: !192, line: 79, baseType: !221, size: 8, offset: 1048)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 8, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 1)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !191, file: !192, line: 81, baseType: !225, size: 64, offset: 1088)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !192, line: 43, baseType: null)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !191, file: !192, line: 89, baseType: !228, size: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !141, line: 153, baseType: !142)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !191, file: !192, line: 91, baseType: !230, size: 64, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !192, line: 37, flags: DIFlagFwdDecl)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !191, file: !192, line: 92, baseType: !233, size: 64, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !192, line: 38, flags: DIFlagFwdDecl)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !191, file: !192, line: 93, baseType: !211, size: 64, offset: 1344)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !191, file: !192, line: 94, baseType: !162, size: 64, offset: 1408)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !191, file: !192, line: 95, baseType: !160, size: 64, offset: 1472)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !191, file: !192, line: 96, baseType: !195, size: 32, offset: 1536)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !191, file: !192, line: 98, baseType: !240, size: 160, offset: 1568)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 160, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 20)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !245, line: 26, baseType: !246)
!245 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !245, line: 25, flags: DIFlagFwdDecl)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "SplayTreeInfo", file: !249, line: 26, baseType: !250)
!249 = !DIFile(filename: "apps/538.imagick_r/src/magick/splay-tree.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9016e3627c0f26bd31d286f50189c16b")
!250 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SplayTreeInfo", file: !249, line: 25, flags: DIFlagFwdDecl)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!162, !162}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!257 = !{!0, !258, !261}
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "locale_cache", scope: !2, file: !260, line: 94, type: !247, isLocal: true, isDefinition: true)
!260 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3a28e1e25420d63eca02557c3ba5c08c")
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "LocaleMap", scope: !2, file: !260, line: 79, type: !163, isLocal: true, isDefinition: true)
!263 = !{i32 7, !"Dwarf Version", i32 5}
!264 = !{i32 2, !"Debug Info Version", i32 3}
!265 = !{i32 1, !"wchar_size", i32 4}
!266 = !{i32 7, !"PIC Level", i32 2}
!267 = !{i32 7, !"PIE Level", i32 2}
!268 = !{i32 7, !"uwtable", i32 2}
!269 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!270 = distinct !DISubprogram(name: "DestroyLocaleOptions", scope: !260, file: !260, line: 301, type: !271, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !273)
!271 = !DISubroutineType(types: !272)
!272 = !{!168, !168}
!273 = !{!274}
!274 = !DILocalVariable(name: "messages", arg: 1, scope: !270, file: !260, line: 301, type: !168)
!275 = !DILocation(line: 0, scope: !270)
!276 = !DILocation(line: 304, column: 10, scope: !270)
!277 = !DILocation(line: 305, column: 10, scope: !270)
!278 = !DILocation(line: 305, column: 3, scope: !270)
!279 = !DISubprogram(name: "LogMagickEvent", scope: !6, file: !6, line: 83, type: !280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!280 = !DISubroutineType(types: !281)
!281 = !{!155, !282, !163, !163, !284, !163, null}
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !6, line: 58, baseType: !5)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!285 = !{}
!286 = !DISubprogram(name: "DestroyLinkedList", scope: !170, file: !170, line: 42, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!287 = !DISubroutineType(types: !288)
!288 = !{!168, !168, !251}
!289 = distinct !DISubprogram(name: "DestroyOptions", scope: !260, file: !260, line: 296, type: !252, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !290)
!290 = !{!291}
!291 = !DILocalVariable(name: "message", arg: 1, scope: !289, file: !260, line: 296, type: !162)
!292 = !DILocation(line: 0, scope: !289)
!293 = !DILocation(line: 298, column: 10, scope: !289)
!294 = !DILocation(line: 298, column: 3, scope: !289)
!295 = distinct !DISubprogram(name: "FormatLocaleFileList", scope: !260, file: !260, line: 335, type: !296, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !308)
!296 = !DISubroutineType(types: !297)
!297 = !{!138, !298, !299, !300}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !163)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !302)
!302 = !{!303, !305, !306, !307}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !301, file: !304, line: 306, baseType: !7, size: 32)
!304 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!305 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !301, file: !304, line: 306, baseType: !7, size: 32, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !301, file: !304, line: 306, baseType: !162, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !301, file: !304, line: 306, baseType: !162, size: 64, offset: 128)
!308 = !{!309, !310, !311, !312}
!309 = !DILocalVariable(name: "file", arg: 1, scope: !295, file: !260, line: 335, type: !298)
!310 = !DILocalVariable(name: "format", arg: 2, scope: !295, file: !260, line: 336, type: !299)
!311 = !DILocalVariable(name: "operands", arg: 3, scope: !295, file: !260, line: 336, type: !300)
!312 = !DILocalVariable(name: "n", scope: !295, file: !260, line: 339, type: !138)
!313 = !DILocation(line: 0, scope: !295)
!314 = !DILocation(line: 374, column: 15, scope: !295)
!315 = !DILocation(line: 374, column: 5, scope: !295)
!316 = !DILocation(line: 377, column: 3, scope: !295)
!317 = distinct !DISubprogram(name: "FormatLocaleFile", scope: !260, file: !260, line: 380, type: !318, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{!138, !298, !299, null}
!320 = !{!321, !322, !323, !324}
!321 = !DILocalVariable(name: "file", arg: 1, scope: !317, file: !260, line: 380, type: !298)
!322 = !DILocalVariable(name: "format", arg: 2, scope: !317, file: !260, line: 380, type: !299)
!323 = !DILocalVariable(name: "n", scope: !317, file: !260, line: 384, type: !138)
!324 = !DILocalVariable(name: "operands", scope: !317, file: !260, line: 387, type: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !139, line: 52, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !327, line: 32, baseType: !328)
!327 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stdarg.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !304, baseType: !329)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 192, elements: !222)
!330 = !DILocation(line: 0, scope: !317)
!331 = !DILocation(line: 386, column: 3, scope: !317)
!332 = !DILocation(line: 387, column: 5, scope: !317)
!333 = !DILocation(line: 389, column: 3, scope: !317)
!334 = !DILocation(line: 0, scope: !295, inlinedAt: !335)
!335 = distinct !DILocation(line: 390, column: 5, scope: !317)
!336 = !DILocation(line: 374, column: 15, scope: !295, inlinedAt: !335)
!337 = !DILocation(line: 374, column: 5, scope: !295, inlinedAt: !335)
!338 = !DILocation(line: 391, column: 3, scope: !317)
!339 = !DILocation(line: 393, column: 1, scope: !317)
!340 = !DILocation(line: 392, column: 3, scope: !317)
!341 = distinct !DISubprogram(name: "FormatLocaleStringList", scope: !260, file: !260, line: 426, type: !342, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !345)
!342 = !DISubroutineType(types: !343)
!343 = !{!138, !344, !284, !299, !300}
!344 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !150)
!345 = !{!346, !347, !348, !349, !350}
!346 = !DILocalVariable(name: "string", arg: 1, scope: !341, file: !260, line: 426, type: !344)
!347 = !DILocalVariable(name: "length", arg: 2, scope: !341, file: !260, line: 427, type: !284)
!348 = !DILocalVariable(name: "format", arg: 3, scope: !341, file: !260, line: 427, type: !299)
!349 = !DILocalVariable(name: "operands", arg: 4, scope: !341, file: !260, line: 427, type: !300)
!350 = !DILocalVariable(name: "n", scope: !341, file: !260, line: 430, type: !138)
!351 = !DILocation(line: 0, scope: !341)
!352 = !DILocation(line: 465, column: 15, scope: !341)
!353 = !DILocation(line: 470, column: 9, scope: !354)
!354 = distinct !DILexicalBlock(scope: !341, file: !260, line: 470, column: 7)
!355 = !DILocation(line: 470, column: 7, scope: !341)
!356 = !DILocation(line: 471, column: 18, scope: !354)
!357 = !DILocation(line: 471, column: 5, scope: !354)
!358 = !DILocation(line: 471, column: 21, scope: !354)
!359 = !{!360, !360, i64 0}
!360 = !{!"omnipotent char", !361, i64 0}
!361 = !{!"Simple C/C++ TBAA"}
!362 = !DILocation(line: 465, column: 5, scope: !341)
!363 = !DILocation(line: 472, column: 3, scope: !341)
!364 = distinct !DISubprogram(name: "FormatLocaleString", scope: !260, file: !260, line: 475, type: !365, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{!138, !344, !284, !299, null}
!367 = !{!368, !369, !370, !371, !372}
!368 = !DILocalVariable(name: "string", arg: 1, scope: !364, file: !260, line: 475, type: !344)
!369 = !DILocalVariable(name: "length", arg: 2, scope: !364, file: !260, line: 476, type: !284)
!370 = !DILocalVariable(name: "format", arg: 3, scope: !364, file: !260, line: 476, type: !299)
!371 = !DILocalVariable(name: "n", scope: !364, file: !260, line: 479, type: !138)
!372 = !DILocalVariable(name: "operands", scope: !364, file: !260, line: 482, type: !325)
!373 = !DILocation(line: 0, scope: !364)
!374 = !DILocation(line: 481, column: 3, scope: !364)
!375 = !DILocation(line: 482, column: 5, scope: !364)
!376 = !DILocation(line: 484, column: 3, scope: !364)
!377 = !DILocation(line: 0, scope: !341, inlinedAt: !378)
!378 = distinct !DILocation(line: 485, column: 5, scope: !364)
!379 = !DILocation(line: 465, column: 15, scope: !341, inlinedAt: !378)
!380 = !DILocation(line: 470, column: 9, scope: !354, inlinedAt: !378)
!381 = !DILocation(line: 470, column: 7, scope: !341, inlinedAt: !378)
!382 = !DILocation(line: 471, column: 18, scope: !354, inlinedAt: !378)
!383 = !DILocation(line: 471, column: 5, scope: !354, inlinedAt: !378)
!384 = !DILocation(line: 471, column: 21, scope: !354, inlinedAt: !378)
!385 = !{!386}
!386 = distinct !{!386, !387, !"FormatLocaleStringList: %string"}
!387 = distinct !{!387, !"FormatLocaleStringList"}
!388 = !{!389}
!389 = distinct !{!389, !387, !"FormatLocaleStringList: %format"}
!390 = !DILocation(line: 465, column: 5, scope: !341, inlinedAt: !378)
!391 = !DILocation(line: 486, column: 3, scope: !364)
!392 = !DILocation(line: 488, column: 1, scope: !364)
!393 = !DILocation(line: 487, column: 3, scope: !364)
!394 = distinct !DISubprogram(name: "GetLocaleInfo_", scope: !260, file: !260, line: 516, type: !395, scopeLine: 518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !410)
!395 = !DISubroutineType(types: !396)
!396 = !{!143, !163, !397}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !32, line: 219, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !37, line: 102, size: 448, elements: !400)
!400 = !{!401, !403, !404, !405, !406, !407, !408, !409}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !399, file: !37, line: 105, baseType: !402, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !37, line: 100, baseType: !36)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !399, file: !37, line: 108, baseType: !195, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !399, file: !37, line: 111, baseType: !150, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !399, file: !37, line: 112, baseType: !150, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !399, file: !37, line: 115, baseType: !162, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !399, file: !37, line: 118, baseType: !155, size: 32, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !399, file: !37, line: 121, baseType: !243, size: 64, offset: 320)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !399, file: !37, line: 124, baseType: !160, size: 64, offset: 384)
!410 = !{!411, !412, !413}
!411 = !DILocalVariable(name: "tag", arg: 1, scope: !394, file: !260, line: 516, type: !163)
!412 = !DILocalVariable(name: "exception", arg: 2, scope: !394, file: !260, line: 517, type: !397)
!413 = !DILocalVariable(name: "locale_info", scope: !394, file: !260, line: 520, type: !143)
!414 = !DILocation(line: 0, scope: !394)
!415 = !DILocalVariable(name: "exception", arg: 1, scope: !416, file: !260, line: 911, type: !397)
!416 = distinct !DISubprogram(name: "IsLocaleTreeInstantiated", scope: !260, file: !260, line: 911, type: !417, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{!155, !397}
!419 = !{!415, !420, !425}
!420 = !DILocalVariable(name: "locale", scope: !421, file: !260, line: 921, type: !150)
!421 = distinct !DILexicalBlock(scope: !422, file: !260, line: 919, column: 9)
!422 = distinct !DILexicalBlock(scope: !423, file: !260, line: 918, column: 11)
!423 = distinct !DILexicalBlock(scope: !424, file: !260, line: 914, column: 5)
!424 = distinct !DILexicalBlock(scope: !416, file: !260, line: 913, column: 7)
!425 = !DILocalVariable(name: "p", scope: !421, file: !260, line: 924, type: !163)
!426 = !DILocation(line: 0, scope: !416, inlinedAt: !427)
!427 = distinct !DILocation(line: 523, column: 7, scope: !428)
!428 = distinct !DILexicalBlock(scope: !394, file: !260, line: 523, column: 7)
!429 = !DILocation(line: 913, column: 7, scope: !424, inlinedAt: !427)
!430 = !{!431, !431, i64 0}
!431 = !{!"any pointer", !360, i64 0}
!432 = !DILocation(line: 913, column: 20, scope: !424, inlinedAt: !427)
!433 = !DILocation(line: 913, column: 7, scope: !416, inlinedAt: !427)
!434 = !DILocation(line: 915, column: 11, scope: !435, inlinedAt: !427)
!435 = distinct !DILexicalBlock(scope: !423, file: !260, line: 915, column: 11)
!436 = !DILocation(line: 915, column: 28, scope: !435, inlinedAt: !427)
!437 = !DILocation(line: 915, column: 11, scope: !423, inlinedAt: !427)
!438 = !DILocation(line: 916, column: 9, scope: !435, inlinedAt: !427)
!439 = !DILocation(line: 917, column: 25, scope: !423, inlinedAt: !427)
!440 = !DILocation(line: 917, column: 7, scope: !423, inlinedAt: !427)
!441 = !DILocation(line: 918, column: 11, scope: !422, inlinedAt: !427)
!442 = !DILocation(line: 918, column: 24, scope: !422, inlinedAt: !427)
!443 = !DILocation(line: 918, column: 11, scope: !423, inlinedAt: !427)
!444 = !DILocation(line: 0, scope: !421, inlinedAt: !427)
!445 = !DILocation(line: 927, column: 13, scope: !421, inlinedAt: !427)
!446 = !DILocation(line: 928, column: 17, scope: !447, inlinedAt: !427)
!447 = distinct !DILexicalBlock(scope: !421, file: !260, line: 928, column: 15)
!448 = !DILocation(line: 928, column: 15, scope: !421, inlinedAt: !427)
!449 = !DILocation(line: 929, column: 20, scope: !447, inlinedAt: !427)
!450 = !DILocation(line: 930, column: 22, scope: !451, inlinedAt: !427)
!451 = distinct !DILexicalBlock(scope: !421, file: !260, line: 930, column: 15)
!452 = !DILocation(line: 930, column: 15, scope: !421, inlinedAt: !427)
!453 = !DILocation(line: 931, column: 20, scope: !451, inlinedAt: !427)
!454 = !DILocation(line: 932, column: 22, scope: !455, inlinedAt: !427)
!455 = distinct !DILexicalBlock(scope: !421, file: !260, line: 932, column: 15)
!456 = !DILocation(line: 932, column: 15, scope: !421, inlinedAt: !427)
!457 = !DILocation(line: 933, column: 20, scope: !455, inlinedAt: !427)
!458 = !DILocation(line: 934, column: 22, scope: !459, inlinedAt: !427)
!459 = distinct !DILexicalBlock(scope: !421, file: !260, line: 934, column: 15)
!460 = !DILocation(line: 934, column: 15, scope: !421, inlinedAt: !427)
!461 = !DILocation(line: 935, column: 20, scope: !459, inlinedAt: !427)
!462 = !DILocation(line: 936, column: 22, scope: !463, inlinedAt: !427)
!463 = distinct !DILexicalBlock(scope: !421, file: !260, line: 936, column: 15)
!464 = !DILocation(line: 936, column: 15, scope: !421, inlinedAt: !427)
!465 = !DILocation(line: 937, column: 20, scope: !463, inlinedAt: !427)
!466 = !DILocation(line: 938, column: 22, scope: !467, inlinedAt: !427)
!467 = distinct !DILexicalBlock(scope: !421, file: !260, line: 938, column: 15)
!468 = !DILocation(line: 938, column: 15, scope: !421, inlinedAt: !427)
!469 = !DILocation(line: 939, column: 20, scope: !467, inlinedAt: !427)
!470 = !DILocation(line: 939, column: 13, scope: !467, inlinedAt: !427)
!471 = !DILocalVariable(name: "filename", arg: 1, scope: !472, file: !260, line: 186, type: !163)
!472 = distinct !DISubprogram(name: "AcquireLocaleSplayTree", scope: !260, file: !260, line: 186, type: !473, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{!247, !163, !163, !397}
!475 = !{!471, !476, !477, !478, !480, !481, !484, !485, !487}
!476 = !DILocalVariable(name: "locale", arg: 2, scope: !472, file: !260, line: 187, type: !163)
!477 = !DILocalVariable(name: "exception", arg: 3, scope: !472, file: !260, line: 187, type: !397)
!478 = !DILocalVariable(name: "status", scope: !472, file: !260, line: 190, type: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !32, line: 147, baseType: !7)
!480 = !DILocalVariable(name: "locale_cache", scope: !472, file: !260, line: 193, type: !247)
!481 = !DILocalVariable(name: "message", scope: !482, file: !260, line: 198, type: !150)
!482 = distinct !DILexicalBlock(scope: !483, file: !260, line: 198, column: 5)
!483 = distinct !DILexicalBlock(scope: !472, file: !260, line: 197, column: 7)
!484 = !DILocalVariable(name: "exception", scope: !482, file: !260, line: 198, type: !398)
!485 = !DILocalVariable(name: "option", scope: !486, file: !260, line: 203, type: !254)
!486 = distinct !DILexicalBlock(scope: !472, file: !260, line: 201, column: 3)
!487 = !DILocalVariable(name: "options", scope: !486, file: !260, line: 206, type: !168)
!488 = !DILocation(line: 0, scope: !472, inlinedAt: !489)
!489 = distinct !DILocation(line: 940, column: 24, scope: !421, inlinedAt: !427)
!490 = !DILocation(line: 195, column: 16, scope: !472, inlinedAt: !489)
!491 = !DILocation(line: 197, column: 20, scope: !483, inlinedAt: !489)
!492 = !DILocation(line: 197, column: 7, scope: !472, inlinedAt: !489)
!493 = !DILocation(line: 198, column: 5, scope: !482, inlinedAt: !489)
!494 = !{!495, !495, i64 0}
!495 = !{!"int", !360, i64 0}
!496 = !DILocation(line: 0, scope: !482, inlinedAt: !489)
!497 = !DILocation(line: 208, column: 13, scope: !486, inlinedAt: !489)
!498 = !DILocation(line: 0, scope: !486, inlinedAt: !489)
!499 = !DILocation(line: 209, column: 33, scope: !486, inlinedAt: !489)
!500 = !DILocation(line: 210, column: 19, scope: !486, inlinedAt: !489)
!501 = !DILocation(line: 210, column: 5, scope: !486, inlinedAt: !489)
!502 = !DILocation(line: 213, column: 9, scope: !503, inlinedAt: !489)
!503 = distinct !DILexicalBlock(scope: !486, file: !260, line: 211, column: 5)
!504 = !DILocation(line: 213, column: 36, scope: !503, inlinedAt: !489)
!505 = !DILocation(line: 212, column: 15, scope: !503, inlinedAt: !489)
!506 = !DILocation(line: 215, column: 35, scope: !503, inlinedAt: !489)
!507 = distinct !{!507, !501, !508, !509, !510}
!508 = !DILocation(line: 216, column: 5, scope: !486, inlinedAt: !489)
!509 = !{!"llvm.loop.mustprogress"}
!510 = !{!"llvm.loop.unroll.disable"}
!511 = !DILocation(line: 0, scope: !270, inlinedAt: !512)
!512 = distinct !DILocation(line: 217, column: 13, scope: !486, inlinedAt: !489)
!513 = !DILocation(line: 304, column: 10, scope: !270, inlinedAt: !512)
!514 = !DILocation(line: 305, column: 10, scope: !270, inlinedAt: !512)
!515 = !DILocation(line: 218, column: 9, scope: !516, inlinedAt: !489)
!516 = distinct !DILexicalBlock(scope: !486, file: !260, line: 218, column: 9)
!517 = !DILocation(line: 218, column: 51, scope: !516, inlinedAt: !489)
!518 = !DILocation(line: 218, column: 9, scope: !486, inlinedAt: !489)
!519 = !DILocation(line: 220, column: 17, scope: !520, inlinedAt: !489)
!520 = distinct !DILexicalBlock(scope: !516, file: !260, line: 219, column: 7)
!521 = !DILocation(line: 221, column: 37, scope: !520, inlinedAt: !489)
!522 = !DILocation(line: 222, column: 23, scope: !520, inlinedAt: !489)
!523 = !DILocation(line: 222, column: 9, scope: !520, inlinedAt: !489)
!524 = !DILocation(line: 225, column: 13, scope: !525, inlinedAt: !489)
!525 = distinct !DILexicalBlock(scope: !520, file: !260, line: 223, column: 9)
!526 = !DILocation(line: 225, column: 40, scope: !525, inlinedAt: !489)
!527 = !DILocation(line: 224, column: 19, scope: !525, inlinedAt: !489)
!528 = !DILocation(line: 227, column: 39, scope: !525, inlinedAt: !489)
!529 = distinct !{!529, !523, !530, !509, !510}
!530 = !DILocation(line: 228, column: 9, scope: !520, inlinedAt: !489)
!531 = !DILocation(line: 0, scope: !270, inlinedAt: !532)
!532 = distinct !DILocation(line: 229, column: 17, scope: !520, inlinedAt: !489)
!533 = !DILocation(line: 304, column: 10, scope: !270, inlinedAt: !532)
!534 = !DILocation(line: 305, column: 10, scope: !270, inlinedAt: !532)
!535 = !DILocation(line: 230, column: 7, scope: !520, inlinedAt: !489)
!536 = !DILocation(line: 233, column: 7, scope: !537, inlinedAt: !489)
!537 = distinct !DILexicalBlock(scope: !472, file: !260, line: 233, column: 7)
!538 = !DILocation(line: 233, column: 49, scope: !537, inlinedAt: !489)
!539 = !DILocation(line: 233, column: 7, scope: !472, inlinedAt: !489)
!540 = !DILocation(line: 234, column: 13, scope: !537, inlinedAt: !489)
!541 = !DILocation(line: 234, column: 5, scope: !537, inlinedAt: !489)
!542 = !DILocation(line: 940, column: 23, scope: !421, inlinedAt: !427)
!543 = !DILocation(line: 941, column: 18, scope: !421, inlinedAt: !427)
!544 = !DILocation(line: 942, column: 9, scope: !421, inlinedAt: !427)
!545 = !DILocation(line: 943, column: 27, scope: !423, inlinedAt: !427)
!546 = !DILocation(line: 943, column: 7, scope: !423, inlinedAt: !427)
!547 = !DILocation(line: 945, column: 10, scope: !416, inlinedAt: !427)
!548 = !DILocation(line: 945, column: 23, scope: !416, inlinedAt: !427)
!549 = !DILocation(line: 523, column: 7, scope: !394)
!550 = !DILocation(line: 525, column: 21, scope: !394)
!551 = !DILocation(line: 525, column: 3, scope: !394)
!552 = !DILocation(line: 526, column: 12, scope: !553)
!553 = distinct !DILexicalBlock(scope: !394, file: !260, line: 526, column: 7)
!554 = !DILocation(line: 526, column: 36, scope: !553)
!555 = !DILocation(line: 526, column: 40, scope: !553)
!556 = !DILocation(line: 526, column: 63, scope: !553)
!557 = !DILocation(line: 526, column: 7, scope: !394)
!558 = !DILocation(line: 528, column: 30, scope: !559)
!559 = distinct !DILexicalBlock(scope: !553, file: !260, line: 527, column: 5)
!560 = !DILocation(line: 528, column: 7, scope: !559)
!561 = !DILocation(line: 529, column: 64, scope: !559)
!562 = !DILocation(line: 529, column: 40, scope: !559)
!563 = !DILocation(line: 531, column: 7, scope: !559)
!564 = !DILocation(line: 533, column: 58, scope: !394)
!565 = !DILocation(line: 533, column: 36, scope: !394)
!566 = !DILocation(line: 535, column: 3, scope: !394)
!567 = !DILocation(line: 536, column: 1, scope: !394)
!568 = !DISubprogram(name: "LockSemaphoreInfo", scope: !245, file: !245, line: 37, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !243}
!571 = !DISubprogram(name: "LocaleCompare", scope: !174, file: !174, line: 66, type: !572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!572 = !DISubroutineType(types: !573)
!573 = !{!195, !163, !163}
!574 = !DISubprogram(name: "ResetSplayTreeIterator", scope: !249, file: !249, line: 55, type: !575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !247}
!577 = !DISubprogram(name: "GetNextValueInSplayTree", scope: !249, file: !249, line: 35, type: !578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!578 = !DISubroutineType(types: !579)
!579 = !{!580, !247}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!582 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !245, file: !245, line: 39, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!583 = !DISubprogram(name: "GetValueFromSplayTree", scope: !249, file: !249, line: 36, type: !584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!584 = !DISubroutineType(types: !585)
!585 = !{!580, !247, !580}
!586 = distinct !DISubprogram(name: "GetLocaleInfoList", scope: !260, file: !260, line: 589, type: !587, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !590)
!587 = !DISubroutineType(types: !588)
!588 = !{!165, !163, !589, !397}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!590 = !{!591, !592, !593, !594, !595, !596}
!591 = !DILocalVariable(name: "pattern", arg: 1, scope: !586, file: !260, line: 589, type: !163)
!592 = !DILocalVariable(name: "number_messages", arg: 2, scope: !586, file: !260, line: 590, type: !589)
!593 = !DILocalVariable(name: "exception", arg: 3, scope: !586, file: !260, line: 590, type: !397)
!594 = !DILocalVariable(name: "messages", scope: !586, file: !260, line: 593, type: !165)
!595 = !DILocalVariable(name: "p", scope: !586, file: !260, line: 596, type: !143)
!596 = !DILocalVariable(name: "i", scope: !586, file: !260, line: 599, type: !138)
!597 = !DILocation(line: 0, scope: !586)
!598 = !DILocation(line: 605, column: 10, scope: !586)
!599 = !DILocation(line: 607, column: 19, scope: !586)
!600 = !{!601, !601, i64 0}
!601 = !{!"long", !360, i64 0}
!602 = !DILocation(line: 608, column: 5, scope: !586)
!603 = !DILocation(line: 609, column: 9, scope: !604)
!604 = distinct !DILexicalBlock(scope: !586, file: !260, line: 609, column: 7)
!605 = !DILocation(line: 609, column: 7, scope: !586)
!606 = !DILocation(line: 612, column: 33, scope: !586)
!607 = !DILocation(line: 612, column: 5, scope: !586)
!608 = !DILocation(line: 612, column: 46, scope: !586)
!609 = !DILocation(line: 611, column: 34, scope: !586)
!610 = !DILocation(line: 613, column: 16, scope: !611)
!611 = distinct !DILexicalBlock(scope: !586, file: !260, line: 613, column: 7)
!612 = !DILocation(line: 613, column: 7, scope: !586)
!613 = !DILocation(line: 618, column: 21, scope: !586)
!614 = !DILocation(line: 618, column: 3, scope: !586)
!615 = !DILocation(line: 619, column: 26, scope: !586)
!616 = !DILocation(line: 619, column: 3, scope: !586)
!617 = !DILocation(line: 620, column: 50, scope: !586)
!618 = !DILocation(line: 620, column: 26, scope: !586)
!619 = !DILocation(line: 621, column: 15, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !260, line: 621, column: 3)
!621 = distinct !DILexicalBlock(scope: !586, file: !260, line: 621, column: 3)
!622 = !DILocation(line: 621, column: 3, scope: !621)
!623 = !DILocation(line: 623, column: 13, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !260, line: 623, column: 9)
!625 = distinct !DILexicalBlock(scope: !620, file: !260, line: 622, column: 3)
!626 = !{!627, !360, i64 24}
!627 = !{!"_LocaleInfo", !431, i64 0, !431, i64 8, !431, i64 16, !360, i64 24, !431, i64 32, !431, i64 40, !601, i64 48}
!628 = !DILocation(line: 623, column: 21, scope: !624)
!629 = !DILocation(line: 623, column: 37, scope: !624)
!630 = !DILocation(line: 624, column: 28, scope: !624)
!631 = !{!627, !431, i64 8}
!632 = !DILocation(line: 624, column: 10, scope: !624)
!633 = !DILocation(line: 624, column: 52, scope: !624)
!634 = !DILocation(line: 623, column: 9, scope: !625)
!635 = !DILocation(line: 625, column: 17, scope: !624)
!636 = !DILocation(line: 625, column: 7, scope: !624)
!637 = !DILocation(line: 625, column: 20, scope: !624)
!638 = !DILocation(line: 0, scope: !621)
!639 = !DILocation(line: 626, column: 52, scope: !625)
!640 = !DILocation(line: 626, column: 28, scope: !625)
!641 = distinct !{!641, !622, !642, !509, !510}
!642 = !DILocation(line: 627, column: 3, scope: !621)
!643 = !DILocation(line: 628, column: 23, scope: !586)
!644 = !DILocation(line: 628, column: 3, scope: !586)
!645 = !DILocation(line: 629, column: 3, scope: !586)
!646 = !DILocation(line: 630, column: 3, scope: !586)
!647 = !DILocation(line: 630, column: 14, scope: !586)
!648 = !DILocation(line: 631, column: 19, scope: !586)
!649 = !DILocation(line: 632, column: 3, scope: !586)
!650 = !DILocation(line: 633, column: 1, scope: !586)
!651 = !DISubprogram(name: "AcquireQuantumMemory", scope: !652, file: !652, line: 42, type: !653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!652 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!653 = !DISubroutineType(types: !654)
!654 = !{!162, !284, !284}
!655 = !DISubprogram(name: "GetNumberOfNodesInSplayTree", scope: !249, file: !249, line: 49, type: !656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!656 = !DISubroutineType(types: !657)
!657 = !{!160, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!660 = !DISubprogram(name: "GlobExpression", scope: !661, file: !661, line: 36, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!661 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!662 = !DISubroutineType(types: !663)
!663 = !{!155, !163, !163, !664}
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!665 = !DISubprogram(name: "qsort", scope: !666, file: !666, line: 830, type: !667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!666 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!667 = !DISubroutineType(types: !668)
!668 = !{null, !162, !160, !160, !669}
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !666, line: 808, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!195, !580, !580}
!673 = distinct !DISubprogram(name: "LocaleInfoCompare", scope: !260, file: !260, line: 572, type: !671, scopeLine: 573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !674)
!674 = !{!675, !676, !677, !678}
!675 = !DILocalVariable(name: "x", arg: 1, scope: !673, file: !260, line: 572, type: !580)
!676 = !DILocalVariable(name: "y", arg: 2, scope: !673, file: !260, line: 572, type: !580)
!677 = !DILocalVariable(name: "p", scope: !673, file: !260, line: 575, type: !165)
!678 = !DILocalVariable(name: "q", scope: !673, file: !260, line: 576, type: !165)
!679 = !DILocation(line: 0, scope: !673)
!680 = !DILocation(line: 580, column: 22, scope: !681)
!681 = distinct !DILexicalBlock(scope: !673, file: !260, line: 580, column: 7)
!682 = !DILocation(line: 580, column: 27, scope: !681)
!683 = !{!627, !431, i64 0}
!684 = !DILocation(line: 580, column: 33, scope: !681)
!685 = !DILocation(line: 580, column: 38, scope: !681)
!686 = !DILocation(line: 580, column: 7, scope: !681)
!687 = !DILocation(line: 580, column: 44, scope: !681)
!688 = !DILocation(line: 580, column: 7, scope: !673)
!689 = !DILocation(line: 581, column: 32, scope: !681)
!690 = !DILocation(line: 581, column: 37, scope: !681)
!691 = !DILocation(line: 581, column: 42, scope: !681)
!692 = !DILocation(line: 581, column: 5, scope: !681)
!693 = !DILocation(line: 582, column: 36, scope: !673)
!694 = !DILocation(line: 582, column: 3, scope: !673)
!695 = !DILocation(line: 583, column: 1, scope: !673)
!696 = distinct !DISubprogram(name: "GetLocaleList", scope: !260, file: !260, line: 684, type: !697, scopeLine: 686, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !699)
!697 = !DISubroutineType(types: !698)
!698 = !{!167, !163, !589, !397}
!699 = !{!700, !701, !702, !703, !704, !705}
!700 = !DILocalVariable(name: "pattern", arg: 1, scope: !696, file: !260, line: 684, type: !163)
!701 = !DILocalVariable(name: "number_messages", arg: 2, scope: !696, file: !260, line: 685, type: !589)
!702 = !DILocalVariable(name: "exception", arg: 3, scope: !696, file: !260, line: 685, type: !397)
!703 = !DILocalVariable(name: "messages", scope: !696, file: !260, line: 688, type: !167)
!704 = !DILocalVariable(name: "p", scope: !696, file: !260, line: 691, type: !143)
!705 = !DILocalVariable(name: "i", scope: !696, file: !260, line: 694, type: !138)
!706 = !DILocation(line: 0, scope: !696)
!707 = !DILocation(line: 700, column: 10, scope: !696)
!708 = !DILocation(line: 702, column: 19, scope: !696)
!709 = !DILocation(line: 703, column: 5, scope: !696)
!710 = !DILocation(line: 704, column: 9, scope: !711)
!711 = distinct !DILexicalBlock(scope: !696, file: !260, line: 704, column: 7)
!712 = !DILocation(line: 704, column: 7, scope: !696)
!713 = !DILocation(line: 707, column: 33, scope: !696)
!714 = !DILocation(line: 707, column: 5, scope: !696)
!715 = !DILocation(line: 707, column: 46, scope: !696)
!716 = !DILocation(line: 706, column: 22, scope: !696)
!717 = !DILocation(line: 708, column: 16, scope: !718)
!718 = distinct !DILexicalBlock(scope: !696, file: !260, line: 708, column: 7)
!719 = !DILocation(line: 708, column: 7, scope: !696)
!720 = !DILocation(line: 710, column: 21, scope: !696)
!721 = !DILocation(line: 710, column: 3, scope: !696)
!722 = !DILocation(line: 711, column: 50, scope: !696)
!723 = !DILocation(line: 711, column: 26, scope: !696)
!724 = !DILocation(line: 712, column: 15, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !260, line: 712, column: 3)
!726 = distinct !DILexicalBlock(scope: !696, file: !260, line: 712, column: 3)
!727 = !DILocation(line: 712, column: 3, scope: !726)
!728 = !DILocation(line: 714, column: 13, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !260, line: 714, column: 9)
!730 = distinct !DILexicalBlock(scope: !725, file: !260, line: 713, column: 3)
!731 = !DILocation(line: 714, column: 21, scope: !729)
!732 = !DILocation(line: 714, column: 37, scope: !729)
!733 = !DILocation(line: 715, column: 28, scope: !729)
!734 = !DILocation(line: 715, column: 10, scope: !729)
!735 = !DILocation(line: 715, column: 52, scope: !729)
!736 = !DILocation(line: 714, column: 9, scope: !730)
!737 = !DILocation(line: 716, column: 39, scope: !729)
!738 = !DILocation(line: 716, column: 21, scope: !729)
!739 = !DILocation(line: 716, column: 17, scope: !729)
!740 = !DILocation(line: 716, column: 7, scope: !729)
!741 = !DILocation(line: 716, column: 20, scope: !729)
!742 = !DILocation(line: 0, scope: !726)
!743 = !DILocation(line: 717, column: 52, scope: !730)
!744 = !DILocation(line: 717, column: 28, scope: !730)
!745 = distinct !{!745, !727, !746, !509, !510}
!746 = !DILocation(line: 718, column: 3, scope: !726)
!747 = !DILocation(line: 719, column: 23, scope: !696)
!748 = !DILocation(line: 719, column: 3, scope: !696)
!749 = !DILocation(line: 720, column: 3, scope: !696)
!750 = !DILocation(line: 721, column: 3, scope: !696)
!751 = !DILocation(line: 721, column: 14, scope: !696)
!752 = !DILocation(line: 722, column: 19, scope: !696)
!753 = !DILocation(line: 723, column: 3, scope: !696)
!754 = !DILocation(line: 724, column: 1, scope: !696)
!755 = !DISubprogram(name: "ConstantString", scope: !174, file: !174, line: 45, type: !756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!756 = !DISubroutineType(types: !757)
!757 = !{!150, !163}
!758 = distinct !DISubprogram(name: "LocaleTagCompare", scope: !260, file: !260, line: 669, type: !671, scopeLine: 670, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !759)
!759 = !{!760, !761, !762, !763}
!760 = !DILocalVariable(name: "x", arg: 1, scope: !758, file: !260, line: 669, type: !580)
!761 = !DILocalVariable(name: "y", arg: 2, scope: !758, file: !260, line: 669, type: !580)
!762 = !DILocalVariable(name: "p", scope: !758, file: !260, line: 672, type: !167)
!763 = !DILocalVariable(name: "q", scope: !758, file: !260, line: 673, type: !167)
!764 = !DILocation(line: 0, scope: !758)
!765 = !DILocation(line: 677, column: 24, scope: !758)
!766 = !DILocation(line: 677, column: 27, scope: !758)
!767 = !DILocation(line: 677, column: 10, scope: !758)
!768 = !DILocation(line: 677, column: 3, scope: !758)
!769 = distinct !DISubprogram(name: "GetLocaleMessage", scope: !260, file: !260, line: 749, type: !770, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{!163, !163}
!772 = !{!773, !774, !775, !776}
!773 = !DILocalVariable(name: "tag", arg: 1, scope: !769, file: !260, line: 749, type: !163)
!774 = !DILocalVariable(name: "name", scope: !769, file: !260, line: 752, type: !178)
!775 = !DILocalVariable(name: "locale_info", scope: !769, file: !260, line: 755, type: !143)
!776 = !DILocalVariable(name: "exception", scope: !769, file: !260, line: 758, type: !397)
!777 = !DILocation(line: 0, scope: !769)
!778 = !DILocation(line: 751, column: 3, scope: !769)
!779 = !DILocation(line: 752, column: 5, scope: !769)
!780 = !DILocation(line: 760, column: 12, scope: !781)
!781 = distinct !DILexicalBlock(scope: !769, file: !260, line: 760, column: 7)
!782 = !DILocation(line: 760, column: 36, scope: !781)
!783 = !DILocation(line: 760, column: 40, scope: !781)
!784 = !DILocation(line: 760, column: 45, scope: !781)
!785 = !DILocation(line: 760, column: 7, scope: !769)
!786 = !DILocation(line: 762, column: 13, scope: !769)
!787 = !DILocation(line: 763, column: 10, scope: !769)
!788 = !DILocation(line: 764, column: 15, scope: !769)
!789 = !DILocation(line: 765, column: 13, scope: !769)
!790 = !DILocation(line: 766, column: 19, scope: !791)
!791 = distinct !DILexicalBlock(scope: !769, file: !260, line: 766, column: 7)
!792 = !DILocation(line: 766, column: 7, scope: !769)
!793 = !DILocation(line: 767, column: 25, scope: !791)
!794 = !{!627, !431, i64 16}
!795 = !DILocation(line: 767, column: 5, scope: !791)
!796 = !DILocation(line: 769, column: 1, scope: !769)
!797 = !DISubprogram(name: "AcquireExceptionInfo", scope: !37, file: !37, line: 146, type: !798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!798 = !DISubroutineType(types: !799)
!799 = !{!397}
!800 = !DISubprogram(name: "DestroyExceptionInfo", scope: !37, file: !37, line: 148, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!801 = !DISubroutineType(types: !802)
!802 = !{!397, !397}
!803 = distinct !DISubprogram(name: "GetLocaleOptions", scope: !260, file: !260, line: 797, type: !804, scopeLine: 799, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !806)
!804 = !DISubroutineType(types: !805)
!805 = !{!168, !163, !397}
!806 = !{!807, !808, !809, !810, !811, !812, !813}
!807 = !DILocalVariable(name: "filename", arg: 1, scope: !803, file: !260, line: 797, type: !163)
!808 = !DILocalVariable(name: "exception", arg: 2, scope: !803, file: !260, line: 798, type: !397)
!809 = !DILocalVariable(name: "path", scope: !803, file: !260, line: 801, type: !178)
!810 = !DILocalVariable(name: "element", scope: !803, file: !260, line: 804, type: !163)
!811 = !DILocalVariable(name: "messages", scope: !803, file: !260, line: 807, type: !168)
!812 = !DILocalVariable(name: "paths", scope: !803, file: !260, line: 808, type: !168)
!813 = !DILocalVariable(name: "xml", scope: !803, file: !260, line: 811, type: !172)
!814 = !DILocation(line: 0, scope: !803)
!815 = !DILocation(line: 800, column: 3, scope: !803)
!816 = !DILocation(line: 801, column: 5, scope: !803)
!817 = !DILocation(line: 814, column: 10, scope: !803)
!818 = !DILocation(line: 816, column: 10, scope: !803)
!819 = !DILocation(line: 820, column: 12, scope: !803)
!820 = !DILocation(line: 821, column: 9, scope: !803)
!821 = !DILocation(line: 822, column: 13, scope: !822)
!822 = distinct !DILexicalBlock(scope: !803, file: !260, line: 822, column: 7)
!823 = !DILocation(line: 822, column: 7, scope: !803)
!824 = !DILocation(line: 824, column: 7, scope: !825)
!825 = distinct !DILexicalBlock(scope: !822, file: !260, line: 823, column: 5)
!826 = !DILocation(line: 825, column: 30, scope: !825)
!827 = !DILocation(line: 826, column: 22, scope: !825)
!828 = !DILocation(line: 826, column: 7, scope: !825)
!829 = !DILocation(line: 828, column: 16, scope: !830)
!830 = distinct !DILexicalBlock(scope: !825, file: !260, line: 827, column: 7)
!831 = !DILocation(line: 829, column: 16, scope: !830)
!832 = !DILocation(line: 831, column: 13, scope: !830)
!833 = !DILocation(line: 832, column: 17, scope: !834)
!834 = distinct !DILexicalBlock(scope: !830, file: !260, line: 832, column: 13)
!835 = !DILocation(line: 832, column: 13, scope: !830)
!836 = !DILocation(line: 833, column: 18, scope: !834)
!837 = !DILocation(line: 833, column: 11, scope: !834)
!838 = !DILocation(line: 834, column: 32, scope: !830)
!839 = distinct !{!839, !828, !840, !509, !510}
!840 = !DILocation(line: 835, column: 7, scope: !825)
!841 = !DILocation(line: 836, column: 13, scope: !825)
!842 = !DILocation(line: 837, column: 5, scope: !825)
!843 = !DILocation(line: 854, column: 3, scope: !803)
!844 = !DILocation(line: 856, column: 1, scope: !803)
!845 = !DILocation(line: 855, column: 3, scope: !803)
!846 = !DISubprogram(name: "CopyMagickString", scope: !174, file: !174, line: 78, type: !847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!847 = !DISubroutineType(types: !848)
!848 = !{!160, !150, !163, !284}
!849 = !DISubprogram(name: "NewLinkedList", scope: !170, file: !170, line: 43, type: !850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!850 = !DISubroutineType(types: !851)
!851 = !{!168, !284}
!852 = !DISubprogram(name: "GetConfigurePaths", scope: !853, file: !853, line: 59, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!853 = !DIFile(filename: "apps/538.imagick_r/src/magick/configure.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "509000215663377a353fdb892d1d0c76")
!854 = !DISubprogram(name: "ResetLinkedListIterator", scope: !170, file: !170, line: 77, type: !855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !168}
!857 = !DISubprogram(name: "GetNextValueInLinkedList", scope: !170, file: !170, line: 69, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!858 = !DISubroutineType(types: !859)
!859 = !{!162, !168}
!860 = !DISubprogram(name: "ConfigureFileToStringInfo", scope: !174, file: !174, line: 90, type: !861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!861 = !DISubroutineType(types: !862)
!862 = !{!172, !163}
!863 = !DISubprogram(name: "AppendValueToLinkedList", scope: !170, file: !170, line: 46, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!864 = !DISubroutineType(types: !865)
!865 = !{!155, !168, !580}
!866 = !DISubprogram(name: "RelinquishMagickMemory", scope: !652, file: !652, line: 51, type: !252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!867 = distinct !DISubprogram(name: "GetLocaleValue", scope: !260, file: !260, line: 880, type: !868, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !870)
!868 = !DISubroutineType(types: !869)
!869 = !{!163, !143}
!870 = !{!871}
!871 = !DILocalVariable(name: "locale_info", arg: 1, scope: !867, file: !260, line: 880, type: !143)
!872 = !DILocation(line: 0, scope: !867)
!873 = !DILocation(line: 882, column: 10, scope: !867)
!874 = !DILocation(line: 885, column: 23, scope: !867)
!875 = !DILocation(line: 885, column: 3, scope: !867)
!876 = distinct !DISubprogram(name: "InterpretLocaleValue", scope: !260, file: !260, line: 977, type: !877, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !880)
!877 = !DISubroutineType(types: !878)
!878 = !{!186, !299, !879}
!879 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !167)
!880 = !{!881, !882, !883, !884}
!881 = !DILocalVariable(name: "string", arg: 1, scope: !876, file: !260, line: 977, type: !299)
!882 = !DILocalVariable(name: "sentinal", arg: 2, scope: !876, file: !260, line: 978, type: !879)
!883 = !DILocalVariable(name: "q", scope: !876, file: !260, line: 981, type: !150)
!884 = !DILocalVariable(name: "value", scope: !876, file: !260, line: 984, type: !186)
!885 = !DILocation(line: 0, scope: !876)
!886 = !DILocation(line: 980, column: 3, scope: !876)
!887 = !DILocation(line: 986, column: 8, scope: !888)
!888 = distinct !DILexicalBlock(scope: !876, file: !260, line: 986, column: 7)
!889 = !DILocation(line: 986, column: 16, scope: !888)
!890 = !DILocation(line: 986, column: 24, scope: !888)
!891 = !DILocation(line: 986, column: 29, scope: !888)
!892 = !DILocation(line: 986, column: 46, scope: !888)
!893 = !DILocation(line: 986, column: 7, scope: !876)
!894 = !DILocation(line: 987, column: 20, scope: !888)
!895 = !DILocation(line: 987, column: 11, scope: !888)
!896 = !DILocation(line: 987, column: 5, scope: !888)
!897 = !DILocation(line: 1000, column: 13, scope: !898)
!898 = distinct !DILexicalBlock(scope: !888, file: !260, line: 989, column: 5)
!899 = !DILocation(line: 0, scope: !888)
!900 = !DILocation(line: 1003, column: 16, scope: !901)
!901 = distinct !DILexicalBlock(scope: !876, file: !260, line: 1003, column: 7)
!902 = !DILocation(line: 1003, column: 7, scope: !876)
!903 = !DILocation(line: 1004, column: 15, scope: !901)
!904 = !DILocation(line: 1004, column: 14, scope: !901)
!905 = !DILocation(line: 1004, column: 5, scope: !901)
!906 = !DILocation(line: 1006, column: 1, scope: !876)
!907 = !DILocation(line: 1005, column: 3, scope: !876)
!908 = distinct !DISubprogram(name: "ListLocaleInfo", scope: !260, file: !260, line: 1032, type: !909, scopeLine: 1034, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !911)
!909 = !DISubroutineType(types: !910)
!910 = !{!155, !298, !397}
!911 = !{!912, !913, !914, !915, !916, !917}
!912 = !DILocalVariable(name: "file", arg: 1, scope: !908, file: !260, line: 1032, type: !298)
!913 = !DILocalVariable(name: "exception", arg: 2, scope: !908, file: !260, line: 1033, type: !397)
!914 = !DILocalVariable(name: "path", scope: !908, file: !260, line: 1036, type: !163)
!915 = !DILocalVariable(name: "locale_info", scope: !908, file: !260, line: 1039, type: !165)
!916 = !DILocalVariable(name: "i", scope: !908, file: !260, line: 1042, type: !138)
!917 = !DILocalVariable(name: "number_messages", scope: !908, file: !260, line: 1045, type: !160)
!918 = !DILocation(line: 0, scope: !908)
!919 = !DILocation(line: 1044, column: 3, scope: !908)
!920 = !DILocation(line: 1047, column: 12, scope: !921)
!921 = distinct !DILexicalBlock(scope: !908, file: !260, line: 1047, column: 7)
!922 = !DILocation(line: 1047, column: 7, scope: !908)
!923 = !DILocation(line: 1049, column: 18, scope: !908)
!924 = !DILocation(line: 1050, column: 15, scope: !908)
!925 = !DILocation(line: 1051, column: 19, scope: !926)
!926 = distinct !DILexicalBlock(scope: !908, file: !260, line: 1051, column: 7)
!927 = !DILocation(line: 1051, column: 7, scope: !908)
!928 = !DILocation(line: 1054, column: 15, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !260, line: 1054, column: 3)
!930 = distinct !DILexicalBlock(scope: !908, file: !260, line: 1054, column: 3)
!931 = !DILocation(line: 1054, column: 3, scope: !930)
!932 = !DILocation(line: 1056, column: 9, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !260, line: 1056, column: 9)
!934 = distinct !DILexicalBlock(scope: !929, file: !260, line: 1055, column: 3)
!935 = !DILocation(line: 1056, column: 25, scope: !933)
!936 = !DILocation(line: 1056, column: 33, scope: !933)
!937 = !DILocation(line: 1056, column: 9, scope: !934)
!938 = !DILocation(line: 1058, column: 15, scope: !939)
!939 = distinct !DILexicalBlock(scope: !934, file: !260, line: 1058, column: 9)
!940 = !DILocation(line: 1058, column: 39, scope: !939)
!941 = !DILocation(line: 1059, column: 45, scope: !939)
!942 = !DILocation(line: 1059, column: 10, scope: !939)
!943 = !DILocation(line: 1059, column: 51, scope: !939)
!944 = !DILocation(line: 1058, column: 9, scope: !934)
!945 = !DILocation(line: 1061, column: 13, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !260, line: 1061, column: 13)
!947 = distinct !DILexicalBlock(scope: !939, file: !260, line: 1060, column: 7)
!948 = !DILocation(line: 1061, column: 29, scope: !946)
!949 = !DILocation(line: 1061, column: 34, scope: !946)
!950 = !DILocation(line: 1061, column: 13, scope: !947)
!951 = !DILocation(line: 1062, column: 18, scope: !946)
!952 = !DILocation(line: 1062, column: 11, scope: !946)
!953 = !DILocation(line: 1063, column: 16, scope: !947)
!954 = !DILocation(line: 1064, column: 16, scope: !947)
!955 = !DILocation(line: 1067, column: 7, scope: !947)
!956 = !DILocation(line: 1068, column: 10, scope: !934)
!957 = !DILocation(line: 1068, column: 26, scope: !934)
!958 = !DILocation(line: 1069, column: 57, scope: !934)
!959 = !DILocation(line: 1069, column: 12, scope: !934)
!960 = !DILocation(line: 1070, column: 9, scope: !961)
!961 = distinct !DILexicalBlock(scope: !934, file: !260, line: 1070, column: 9)
!962 = !DILocation(line: 1070, column: 25, scope: !961)
!963 = !DILocation(line: 1070, column: 33, scope: !961)
!964 = !DILocation(line: 1070, column: 9, scope: !934)
!965 = !DILocation(line: 1071, column: 14, scope: !961)
!966 = !DILocation(line: 1071, column: 7, scope: !961)
!967 = !DILocation(line: 1072, column: 12, scope: !934)
!968 = !DILocation(line: 1073, column: 3, scope: !934)
!969 = !DILocation(line: 1054, column: 45, scope: !929)
!970 = distinct !{!970, !931, !971, !509, !510}
!971 = !DILocation(line: 1073, column: 3, scope: !930)
!972 = !DILocation(line: 1074, column: 10, scope: !908)
!973 = !DILocation(line: 1076, column: 5, scope: !908)
!974 = !DILocation(line: 1077, column: 3, scope: !908)
!975 = !DILocation(line: 1078, column: 1, scope: !908)
!976 = !DISubprogram(name: "fflush", scope: !139, file: !139, line: 218, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!977 = !DISubroutineType(types: !978)
!978 = !{!195, !298}
!979 = distinct !DISubprogram(name: "LocaleComponentGenesis", scope: !260, file: !260, line: 1404, type: !980, scopeLine: 1405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !285)
!980 = !DISubroutineType(types: !981)
!981 = !{!155}
!982 = !DILocation(line: 1406, column: 7, scope: !983)
!983 = distinct !DILexicalBlock(scope: !979, file: !260, line: 1406, column: 7)
!984 = !DILocation(line: 1406, column: 24, scope: !983)
!985 = !DILocation(line: 1406, column: 7, scope: !979)
!986 = !DILocation(line: 1407, column: 22, scope: !983)
!987 = !DILocation(line: 1407, column: 21, scope: !983)
!988 = !DILocation(line: 1407, column: 5, scope: !983)
!989 = !DILocation(line: 1408, column: 3, scope: !979)
!990 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !245, file: !245, line: 32, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!991 = !DISubroutineType(types: !992)
!992 = !{!243}
!993 = distinct !DISubprogram(name: "LocaleComponentTerminus", scope: !260, file: !260, line: 1429, type: !994, scopeLine: 1430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !285)
!994 = !DISubroutineType(types: !995)
!995 = !{null}
!996 = !DILocation(line: 1431, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !993, file: !260, line: 1431, column: 7)
!998 = !DILocation(line: 1431, column: 24, scope: !997)
!999 = !DILocation(line: 1431, column: 7, scope: !993)
!1000 = !DILocation(line: 1432, column: 5, scope: !997)
!1001 = !DILocation(line: 1433, column: 21, scope: !993)
!1002 = !DILocation(line: 1433, column: 3, scope: !993)
!1003 = !DILocation(line: 1434, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !993, file: !260, line: 1434, column: 7)
!1005 = !DILocation(line: 1434, column: 20, scope: !1004)
!1006 = !DILocation(line: 1434, column: 7, scope: !993)
!1007 = !DILocation(line: 1435, column: 18, scope: !1004)
!1008 = !DILocation(line: 1435, column: 17, scope: !1004)
!1009 = !DILocation(line: 1435, column: 5, scope: !1004)
!1010 = !DILocation(line: 1439, column: 23, scope: !993)
!1011 = !DILocation(line: 1439, column: 3, scope: !993)
!1012 = !DILocation(line: 1440, column: 3, scope: !993)
!1013 = !DILocation(line: 1441, column: 1, scope: !993)
!1014 = !DISubprogram(name: "ActivateSemaphoreInfo", scope: !245, file: !245, line: 35, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !1017}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!1018 = !DISubprogram(name: "DestroySplayTree", scope: !249, file: !249, line: 44, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!247, !247}
!1021 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !245, file: !245, line: 36, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1022 = !DISubprogram(name: "DestroyStringInfo", scope: !174, file: !174, line: 91, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!172, !172}
!1025 = !DISubprogram(name: "setlocale", scope: !1026, file: !1026, line: 122, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1026 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!150, !195, !163}
!1029 = !DISubprogram(name: "GetEnvironmentValue", scope: !174, file: !174, line: 50, type: !756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1030 = !DISubprogram(name: "DestroyString", scope: !174, file: !174, line: 46, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!150, !150}
!1033 = !DISubprogram(name: "NewSplayTree", scope: !249, file: !249, line: 45, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!247, !670, !251, !251}
!1036 = distinct !DISubprogram(name: "DestroyLocaleNode", scope: !260, file: !260, line: 171, type: !252, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1037)
!1037 = !{!1038, !1039}
!1038 = !DILocalVariable(name: "locale_info", arg: 1, scope: !1036, file: !260, line: 171, type: !162)
!1039 = !DILocalVariable(name: "p", scope: !1036, file: !260, line: 174, type: !166)
!1040 = !DILocation(line: 0, scope: !1036)
!1041 = !DILocation(line: 177, column: 10, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1036, file: !260, line: 177, column: 7)
!1043 = !DILocation(line: 177, column: 15, scope: !1042)
!1044 = !DILocation(line: 177, column: 7, scope: !1036)
!1045 = !DILocation(line: 178, column: 13, scope: !1042)
!1046 = !DILocation(line: 178, column: 12, scope: !1042)
!1047 = !DILocation(line: 178, column: 5, scope: !1042)
!1048 = !DILocation(line: 179, column: 10, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1036, file: !260, line: 179, column: 7)
!1050 = !DILocation(line: 179, column: 14, scope: !1049)
!1051 = !DILocation(line: 179, column: 7, scope: !1036)
!1052 = !DILocation(line: 180, column: 12, scope: !1049)
!1053 = !DILocation(line: 180, column: 11, scope: !1049)
!1054 = !DILocation(line: 180, column: 5, scope: !1049)
!1055 = !DILocation(line: 181, column: 10, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1036, file: !260, line: 181, column: 7)
!1057 = !DILocation(line: 181, column: 18, scope: !1056)
!1058 = !DILocation(line: 181, column: 7, scope: !1036)
!1059 = !DILocation(line: 182, column: 16, scope: !1056)
!1060 = !DILocation(line: 182, column: 15, scope: !1056)
!1061 = !DILocation(line: 182, column: 5, scope: !1056)
!1062 = !DILocation(line: 183, column: 10, scope: !1036)
!1063 = !DILocation(line: 183, column: 3, scope: !1036)
!1064 = !DISubprogram(name: "GetExceptionInfo", scope: !37, file: !37, line: 166, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !397}
!1067 = !DISubprogram(name: "GetExceptionMessage", scope: !37, file: !37, line: 137, type: !1068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!150, !1070}
!1070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!1071 = !DISubprogram(name: "ThrowMagickException", scope: !37, file: !37, line: 156, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!155, !397, !163, !163, !284, !1074, !163, !163, null}
!1074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!1075 = !DISubprogram(name: "CatchException", scope: !37, file: !37, line: 164, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1076 = !DISubprogram(name: "MagickCoreTerminus", scope: !1077, file: !1077, line: 147, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1077 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1078 = distinct !DISubprogram(name: "LoadLocaleCache", scope: !260, file: !260, line: 1158, type: !1079, scopeLine: 1161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1081)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!155, !247, !163, !163, !163, !284, !397}
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1098, !1099, !1100, !1101, !1112, !1113, !1118}
!1082 = !DILocalVariable(name: "locale_cache", arg: 1, scope: !1078, file: !260, line: 1158, type: !247)
!1083 = !DILocalVariable(name: "xml", arg: 2, scope: !1078, file: !260, line: 1159, type: !163)
!1084 = !DILocalVariable(name: "filename", arg: 3, scope: !1078, file: !260, line: 1159, type: !163)
!1085 = !DILocalVariable(name: "locale", arg: 4, scope: !1078, file: !260, line: 1159, type: !163)
!1086 = !DILocalVariable(name: "depth", arg: 5, scope: !1078, file: !260, line: 1159, type: !284)
!1087 = !DILocalVariable(name: "exception", arg: 6, scope: !1078, file: !260, line: 1160, type: !397)
!1088 = !DILocalVariable(name: "keyword", scope: !1078, file: !260, line: 1163, type: !178)
!1089 = !DILocalVariable(name: "message", scope: !1078, file: !260, line: 1164, type: !178)
!1090 = !DILocalVariable(name: "tag", scope: !1078, file: !260, line: 1165, type: !178)
!1091 = !DILocalVariable(name: "token", scope: !1078, file: !260, line: 1166, type: !150)
!1092 = !DILocalVariable(name: "q", scope: !1078, file: !260, line: 1169, type: !163)
!1093 = !DILocalVariable(name: "fatal_handler", scope: !1078, file: !260, line: 1172, type: !1094)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "FatalErrorHandler", file: !37, line: 131, baseType: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{null, !1074, !163, !163}
!1098 = !DILocalVariable(name: "locale_info", scope: !1078, file: !260, line: 1175, type: !166)
!1099 = !DILocalVariable(name: "status", scope: !1078, file: !260, line: 1178, type: !155)
!1100 = !DILocalVariable(name: "p", scope: !1078, file: !260, line: 1181, type: !150)
!1101 = !DILocalVariable(name: "path", scope: !1102, file: !260, line: 1258, type: !178)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !260, line: 1256, column: 17)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !260, line: 1252, column: 19)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !260, line: 1251, column: 13)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !260, line: 1250, column: 15)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !260, line: 1238, column: 9)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !260, line: 1233, column: 7)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !260, line: 1232, column: 9)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !260, line: 1198, column: 3)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !260, line: 1197, column: 3)
!1111 = distinct !DILexicalBlock(scope: !1078, file: !260, line: 1197, column: 3)
!1112 = !DILocalVariable(name: "xml", scope: !1102, file: !260, line: 1259, type: !150)
!1113 = !DILocalVariable(name: "message", scope: !1114, file: !260, line: 1335, type: !150)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !260, line: 1335, column: 11)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !260, line: 1334, column: 13)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !260, line: 1308, column: 7)
!1117 = distinct !DILexicalBlock(scope: !1109, file: !260, line: 1307, column: 9)
!1118 = !DILocalVariable(name: "exception", scope: !1114, file: !260, line: 1335, type: !398)
!1119 = !DILocation(line: 0, scope: !1078)
!1120 = !DILocation(line: 1162, column: 3, scope: !1078)
!1121 = !DILocation(line: 1163, column: 5, scope: !1078)
!1122 = !DILocation(line: 1164, column: 5, scope: !1078)
!1123 = !DILocation(line: 1165, column: 5, scope: !1078)
!1124 = !DILocation(line: 1168, column: 3, scope: !1078)
!1125 = !DILocation(line: 1186, column: 10, scope: !1078)
!1126 = !DILocation(line: 1188, column: 11, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1078, file: !260, line: 1188, column: 7)
!1128 = !DILocation(line: 1188, column: 7, scope: !1078)
!1129 = !DILocation(line: 1192, column: 7, scope: !1078)
!1130 = !DILocation(line: 1193, column: 11, scope: !1078)
!1131 = !DILocation(line: 1194, column: 11, scope: !1078)
!1132 = !DILocation(line: 1195, column: 17, scope: !1078)
!1133 = !DILocation(line: 1196, column: 9, scope: !1078)
!1134 = !DILocation(line: 1197, column: 9, scope: !1111)
!1135 = !DILocation(line: 1197, column: 24, scope: !1110)
!1136 = !DILocation(line: 1197, column: 27, scope: !1110)
!1137 = !DILocation(line: 1197, column: 3, scope: !1111)
!1138 = !DILocation(line: 1202, column: 5, scope: !1109)
!1139 = !DILocation(line: 1203, column: 9, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1109, file: !260, line: 1203, column: 9)
!1141 = !DILocation(line: 1203, column: 16, scope: !1140)
!1142 = !DILocation(line: 1203, column: 9, scope: !1109)
!1143 = !DILocation(line: 1205, column: 12, scope: !1109)
!1144 = !DILocation(line: 1206, column: 9, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1109, file: !260, line: 1206, column: 9)
!1146 = !DILocation(line: 1206, column: 47, scope: !1145)
!1147 = !DILocation(line: 1206, column: 9, scope: !1109)
!1148 = !DILocation(line: 1211, column: 32, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !260, line: 1207, column: 7)
!1150 = !DILocation(line: 1211, column: 17, scope: !1149)
!1151 = !DILocation(line: 1211, column: 42, scope: !1149)
!1152 = !DILocation(line: 1211, column: 48, scope: !1149)
!1153 = distinct !{!1153, !1154, !1155, !509, !510}
!1154 = !DILocation(line: 1211, column: 9, scope: !1149)
!1155 = !DILocation(line: 1216, column: 9, scope: !1149)
!1156 = !DILocation(line: 1211, column: 53, scope: !1149)
!1157 = !DILocation(line: 1211, column: 52, scope: !1149)
!1158 = !DILocation(line: 1211, column: 55, scope: !1149)
!1159 = !DILocation(line: 1213, column: 11, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1149, file: !260, line: 1212, column: 9)
!1161 = !DILocation(line: 1214, column: 18, scope: !1160)
!1162 = !{!1163, !1163, i64 0}
!1163 = !{!"short", !360, i64 0}
!1164 = !DILocation(line: 1214, column: 54, scope: !1160)
!1165 = !DILocation(line: 1214, column: 11, scope: !1160)
!1166 = !DILocation(line: 1215, column: 14, scope: !1160)
!1167 = distinct !{!1167, !1165, !1166, !509, !510}
!1168 = !DILocation(line: 1197, column: 25, scope: !1110)
!1169 = distinct !{!1169, !1137, !1170, !509, !510}
!1170 = !DILocation(line: 1380, column: 3, scope: !1111)
!1171 = !DILocation(line: 1219, column: 9, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1109, file: !260, line: 1219, column: 9)
!1173 = !DILocation(line: 1219, column: 42, scope: !1172)
!1174 = !DILocation(line: 1219, column: 9, scope: !1109)
!1175 = !DILocation(line: 1224, column: 32, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1172, file: !260, line: 1220, column: 7)
!1177 = !DILocation(line: 1224, column: 17, scope: !1176)
!1178 = !DILocation(line: 1224, column: 42, scope: !1176)
!1179 = !DILocation(line: 1224, column: 48, scope: !1176)
!1180 = distinct !{!1180, !1181, !1182, !509, !510}
!1181 = !DILocation(line: 1224, column: 9, scope: !1176)
!1182 = !DILocation(line: 1229, column: 9, scope: !1176)
!1183 = !DILocation(line: 1224, column: 53, scope: !1176)
!1184 = !DILocation(line: 1224, column: 52, scope: !1176)
!1185 = !DILocation(line: 1224, column: 55, scope: !1176)
!1186 = !DILocation(line: 1226, column: 11, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1176, file: !260, line: 1225, column: 9)
!1188 = !DILocation(line: 1227, column: 18, scope: !1187)
!1189 = !DILocation(line: 1227, column: 54, scope: !1187)
!1190 = !DILocation(line: 1227, column: 11, scope: !1187)
!1191 = !DILocation(line: 1228, column: 14, scope: !1187)
!1192 = distinct !{!1192, !1190, !1191, !509, !510}
!1193 = !DILocation(line: 1232, column: 9, scope: !1108)
!1194 = !DILocation(line: 1232, column: 43, scope: !1108)
!1195 = !DILocation(line: 1232, column: 9, scope: !1109)
!1196 = !DILocation(line: 1252, column: 19, scope: !1104)
!1197 = !DILocation(line: 1237, column: 18, scope: !1107)
!1198 = !DILocation(line: 1237, column: 25, scope: !1107)
!1199 = !DILocation(line: 1237, column: 33, scope: !1107)
!1200 = !DILocation(line: 1237, column: 37, scope: !1107)
!1201 = !DILocation(line: 1237, column: 48, scope: !1107)
!1202 = !DILocation(line: 1237, column: 57, scope: !1107)
!1203 = !DILocation(line: 1237, column: 62, scope: !1107)
!1204 = !DILocation(line: 1237, column: 61, scope: !1107)
!1205 = !DILocation(line: 1237, column: 64, scope: !1107)
!1206 = !DILocation(line: 1237, column: 9, scope: !1107)
!1207 = !DILocation(line: 1239, column: 18, scope: !1106)
!1208 = !DILocation(line: 1240, column: 26, scope: !1106)
!1209 = !DILocation(line: 1240, column: 11, scope: !1106)
!1210 = !DILocation(line: 1241, column: 15, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1106, file: !260, line: 1241, column: 15)
!1212 = !DILocation(line: 1241, column: 22, scope: !1211)
!1213 = !DILocation(line: 1241, column: 15, scope: !1106)
!1214 = distinct !{!1214, !1206, !1215, !509, !510}
!1215 = !DILocation(line: 1279, column: 9, scope: !1107)
!1216 = !DILocation(line: 1243, column: 26, scope: !1106)
!1217 = !DILocation(line: 1243, column: 11, scope: !1106)
!1218 = !DILocation(line: 1244, column: 15, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1106, file: !260, line: 1244, column: 15)
!1220 = !DILocation(line: 1244, column: 47, scope: !1219)
!1221 = !DILocation(line: 1244, column: 15, scope: !1106)
!1222 = !DILocation(line: 1250, column: 15, scope: !1105)
!1223 = !DILocation(line: 1250, column: 45, scope: !1105)
!1224 = !DILocation(line: 1250, column: 15, scope: !1106)
!1225 = !DILocation(line: 1253, column: 24, scope: !1103)
!1226 = !DILocation(line: 1253, column: 17, scope: !1103)
!1227 = !DILocation(line: 1246, column: 19, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !260, line: 1246, column: 19)
!1229 = distinct !DILexicalBlock(scope: !1219, file: !260, line: 1245, column: 13)
!1230 = !DILocation(line: 1246, column: 47, scope: !1228)
!1231 = !DILocation(line: 1246, column: 19, scope: !1229)
!1232 = !DILocation(line: 1257, column: 19, scope: !1102)
!1233 = !DILocation(line: 1258, column: 21, scope: !1102)
!1234 = !DILocation(line: 1261, column: 24, scope: !1102)
!1235 = !DILocation(line: 1262, column: 19, scope: !1102)
!1236 = !DILocation(line: 1263, column: 23, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1102, file: !260, line: 1263, column: 23)
!1238 = !DILocation(line: 1263, column: 29, scope: !1237)
!1239 = !DILocation(line: 1263, column: 23, scope: !1102)
!1240 = !DILocation(line: 1264, column: 28, scope: !1237)
!1241 = !DILocation(line: 1264, column: 21, scope: !1237)
!1242 = !DILocation(line: 1266, column: 23, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1102, file: !260, line: 1266, column: 23)
!1244 = !DILocation(line: 1266, column: 30, scope: !1243)
!1245 = !DILocation(line: 1266, column: 23, scope: !1102)
!1246 = !DILocation(line: 1267, column: 28, scope: !1243)
!1247 = !DILocation(line: 1267, column: 21, scope: !1243)
!1248 = !DILocation(line: 1269, column: 28, scope: !1243)
!1249 = !DILocation(line: 1270, column: 23, scope: !1102)
!1250 = !DILocation(line: 0, scope: !1102)
!1251 = !DILocation(line: 1271, column: 27, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1102, file: !260, line: 1271, column: 23)
!1253 = !DILocation(line: 1271, column: 23, scope: !1102)
!1254 = !DILocation(line: 1273, column: 31, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1252, file: !260, line: 1272, column: 21)
!1256 = !DILocation(line: 1273, column: 29, scope: !1255)
!1257 = !DILocation(line: 1275, column: 36, scope: !1255)
!1258 = !DILocation(line: 1276, column: 21, scope: !1255)
!1259 = !DILocation(line: 1277, column: 17, scope: !1103)
!1260 = !DILocation(line: 1282, column: 9, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1109, file: !260, line: 1282, column: 9)
!1262 = !DILocation(line: 1282, column: 42, scope: !1261)
!1263 = !DILocation(line: 1282, column: 9, scope: !1109)
!1264 = !DILocation(line: 1287, column: 17, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !260, line: 1283, column: 7)
!1266 = !DILocation(line: 1287, column: 24, scope: !1265)
!1267 = !DILocation(line: 1287, column: 32, scope: !1265)
!1268 = !DILocation(line: 1287, column: 37, scope: !1265)
!1269 = !DILocation(line: 1287, column: 36, scope: !1265)
!1270 = !DILocation(line: 1287, column: 39, scope: !1265)
!1271 = !DILocation(line: 1287, column: 9, scope: !1265)
!1272 = !DILocation(line: 1289, column: 18, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1265, file: !260, line: 1288, column: 9)
!1274 = !DILocation(line: 1290, column: 26, scope: !1273)
!1275 = !DILocation(line: 1290, column: 11, scope: !1273)
!1276 = !DILocation(line: 1291, column: 15, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !260, line: 1291, column: 15)
!1278 = !DILocation(line: 1291, column: 22, scope: !1277)
!1279 = !DILocation(line: 1291, column: 15, scope: !1273)
!1280 = distinct !{!1280, !1271, !1281, !509, !510}
!1281 = !DILocation(line: 1294, column: 9, scope: !1265)
!1282 = !DILocation(line: 1293, column: 26, scope: !1273)
!1283 = !DILocation(line: 1293, column: 11, scope: !1273)
!1284 = !DILocation(line: 1297, column: 9, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1109, file: !260, line: 1297, column: 9)
!1286 = !DILocation(line: 1297, column: 44, scope: !1285)
!1287 = !DILocation(line: 1297, column: 9, scope: !1109)
!1288 = !DILocalVariable(name: "path", arg: 1, scope: !1289, file: !260, line: 1112, type: !150)
!1289 = distinct !DISubprogram(name: "ChopLocaleComponents", scope: !260, file: !260, line: 1112, type: !1290, scopeLine: 1113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1292)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !150, !284}
!1292 = !{!1288, !1293, !1294, !1295}
!1293 = !DILocalVariable(name: "components", arg: 2, scope: !1289, file: !260, line: 1112, type: !284)
!1294 = !DILocalVariable(name: "p", scope: !1289, file: !260, line: 1115, type: !150)
!1295 = !DILocalVariable(name: "count", scope: !1289, file: !260, line: 1118, type: !138)
!1296 = !DILocation(line: 0, scope: !1289, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 1299, column: 9, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1285, file: !260, line: 1298, column: 7)
!1299 = !DILocation(line: 1120, column: 7, scope: !1300, inlinedAt: !1297)
!1300 = distinct !DILexicalBlock(scope: !1289, file: !260, line: 1120, column: 7)
!1301 = !DILocation(line: 1120, column: 13, scope: !1300, inlinedAt: !1297)
!1302 = !DILocation(line: 1120, column: 7, scope: !1289, inlinedAt: !1297)
!1303 = !DILocation(line: 1122, column: 10, scope: !1289, inlinedAt: !1297)
!1304 = !DILocation(line: 1122, column: 22, scope: !1289, inlinedAt: !1297)
!1305 = !DILocation(line: 1123, column: 7, scope: !1306, inlinedAt: !1297)
!1306 = distinct !DILexicalBlock(scope: !1289, file: !260, line: 1123, column: 7)
!1307 = !DILocation(line: 1123, column: 10, scope: !1306, inlinedAt: !1297)
!1308 = !DILocation(line: 1123, column: 7, scope: !1289, inlinedAt: !1297)
!1309 = !DILocation(line: 1124, column: 7, scope: !1306, inlinedAt: !1297)
!1310 = !DILocation(line: 1124, column: 5, scope: !1306, inlinedAt: !1297)
!1311 = !DILocation(line: 1125, column: 48, scope: !1312, inlinedAt: !1297)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !260, line: 1125, column: 3)
!1313 = distinct !DILexicalBlock(scope: !1289, file: !260, line: 1125, column: 3)
!1314 = !DILocation(line: 1126, column: 9, scope: !1315, inlinedAt: !1297)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !260, line: 1126, column: 9)
!1316 = !DILocation(line: 1126, column: 12, scope: !1315, inlinedAt: !1297)
!1317 = !DILocation(line: 1126, column: 9, scope: !1312, inlinedAt: !1297)
!1318 = !DILocation(line: 1128, column: 11, scope: !1319, inlinedAt: !1297)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !260, line: 1127, column: 7)
!1320 = !DILocation(line: 1129, column: 14, scope: !1319, inlinedAt: !1297)
!1321 = !DILocation(line: 1130, column: 7, scope: !1319, inlinedAt: !1297)
!1322 = !DILocation(line: 0, scope: !1313, inlinedAt: !1297)
!1323 = !DILocation(line: 1125, column: 64, scope: !1312, inlinedAt: !1297)
!1324 = !DILocation(line: 1125, column: 24, scope: !1312, inlinedAt: !1297)
!1325 = distinct !{!1325, !1326, !1327, !509, !510}
!1326 = !DILocation(line: 1125, column: 3, scope: !1313, inlinedAt: !1297)
!1327 = !DILocation(line: 1130, column: 7, scope: !1313, inlinedAt: !1297)
!1328 = !DILocation(line: 1131, column: 7, scope: !1289, inlinedAt: !1297)
!1329 = !DILocation(line: 1132, column: 10, scope: !1330, inlinedAt: !1297)
!1330 = distinct !DILexicalBlock(scope: !1289, file: !260, line: 1131, column: 7)
!1331 = !DILocation(line: 1132, column: 5, scope: !1330, inlinedAt: !1297)
!1332 = !DILocation(line: 1300, column: 16, scope: !1298)
!1333 = !DILocation(line: 1301, column: 9, scope: !1298)
!1334 = !DILocation(line: 1303, column: 9, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1109, file: !260, line: 1303, column: 9)
!1336 = !DILocation(line: 1303, column: 46, scope: !1335)
!1337 = !DILocation(line: 1303, column: 9, scope: !1109)
!1338 = !DILocation(line: 1305, column: 9, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1109, file: !260, line: 1305, column: 9)
!1340 = !DILocation(line: 1305, column: 47, scope: !1339)
!1341 = !DILocation(line: 1305, column: 9, scope: !1109)
!1342 = !DILocation(line: 1307, column: 9, scope: !1117)
!1343 = !DILocation(line: 1307, column: 43, scope: !1117)
!1344 = !DILocation(line: 1307, column: 9, scope: !1109)
!1345 = !DILocation(line: 1312, column: 17, scope: !1116)
!1346 = !DILocation(line: 1312, column: 24, scope: !1116)
!1347 = !DILocation(line: 0, scope: !1116)
!1348 = !DILocation(line: 1312, column: 32, scope: !1116)
!1349 = !DILocation(line: 1312, column: 36, scope: !1116)
!1350 = !DILocation(line: 1312, column: 39, scope: !1116)
!1351 = !DILocation(line: 1312, column: 9, scope: !1116)
!1352 = !DILocation(line: 1314, column: 18, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1116, file: !260, line: 1313, column: 9)
!1354 = !DILocation(line: 1315, column: 26, scope: !1353)
!1355 = !DILocation(line: 1315, column: 11, scope: !1353)
!1356 = !DILocation(line: 1316, column: 15, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !260, line: 1316, column: 15)
!1358 = !DILocation(line: 1316, column: 22, scope: !1357)
!1359 = !DILocation(line: 1316, column: 15, scope: !1353)
!1360 = distinct !{!1360, !1351, !1361, !509, !510}
!1361 = !DILocation(line: 1324, column: 9, scope: !1116)
!1362 = !DILocation(line: 1318, column: 26, scope: !1353)
!1363 = !DILocation(line: 1318, column: 11, scope: !1353)
!1364 = !DILocation(line: 1319, column: 15, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1353, file: !260, line: 1319, column: 15)
!1366 = !DILocation(line: 1319, column: 45, scope: !1365)
!1367 = !DILocation(line: 1319, column: 15, scope: !1353)
!1368 = !DILocation(line: 1321, column: 22, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1365, file: !260, line: 1320, column: 13)
!1370 = !DILocation(line: 1322, column: 22, scope: !1369)
!1371 = !DILocation(line: 1323, column: 13, scope: !1369)
!1372 = !DILocation(line: 1325, column: 9, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1116, file: !260, line: 1325, column: 9)
!1374 = !DILocation(line: 1325, column: 30, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1373, file: !260, line: 1325, column: 9)
!1376 = !DILocation(line: 1325, column: 29, scope: !1375)
!1377 = !DILocation(line: 1325, column: 40, scope: !1375)
!1378 = !DILocation(line: 1325, column: 58, scope: !1375)
!1379 = !DILocation(line: 1325, column: 9, scope: !1375)
!1380 = distinct !{!1380, !1372, !1381, !509, !510}
!1381 = !DILocation(line: 1325, column: 62, scope: !1373)
!1382 = !DILocation(line: 1326, column: 9, scope: !1116)
!1383 = !DILocation(line: 1326, column: 16, scope: !1116)
!1384 = !DILocation(line: 1326, column: 52, scope: !1116)
!1385 = !DILocation(line: 1327, column: 12, scope: !1116)
!1386 = distinct !{!1386, !1382, !1385, !509, !510}
!1387 = !DILocation(line: 1329, column: 17, scope: !1116)
!1388 = !DILocation(line: 1329, column: 53, scope: !1116)
!1389 = !DILocation(line: 1329, column: 59, scope: !1116)
!1390 = distinct !{!1390, !1391, !1392, !509, !510}
!1391 = !DILocation(line: 1329, column: 9, scope: !1116)
!1392 = !DILocation(line: 1330, column: 12, scope: !1116)
!1393 = !DILocation(line: 1331, column: 64, scope: !1116)
!1394 = !DILocation(line: 1331, column: 66, scope: !1116)
!1395 = !DILocalVariable(name: "x", arg: 1, scope: !1396, file: !260, line: 1151, type: !284)
!1396 = distinct !DISubprogram(name: "MagickMin", scope: !260, file: !260, line: 1151, type: !1397, scopeLine: 1152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1399)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!160, !284, !284}
!1399 = !{!1395, !1400}
!1400 = !DILocalVariable(name: "y", arg: 2, scope: !1396, file: !260, line: 1151, type: !284)
!1401 = !DILocation(line: 0, scope: !1396, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 1331, column: 43, scope: !1116)
!1403 = !DILocation(line: 1331, column: 16, scope: !1116)
!1404 = !DILocation(line: 1333, column: 36, scope: !1116)
!1405 = !DILocation(line: 1334, column: 25, scope: !1115)
!1406 = !DILocation(line: 1334, column: 13, scope: !1116)
!1407 = !DILocation(line: 1335, column: 11, scope: !1114)
!1408 = !DILocation(line: 0, scope: !1114)
!1409 = !DILocation(line: 1336, column: 16, scope: !1116)
!1410 = !DILocation(line: 1337, column: 27, scope: !1116)
!1411 = !DILocation(line: 1337, column: 26, scope: !1116)
!1412 = !DILocation(line: 1338, column: 26, scope: !1116)
!1413 = !DILocation(line: 1338, column: 22, scope: !1116)
!1414 = !DILocation(line: 1338, column: 25, scope: !1116)
!1415 = !DILocation(line: 1339, column: 30, scope: !1116)
!1416 = !DILocation(line: 1339, column: 22, scope: !1116)
!1417 = !DILocation(line: 1339, column: 29, scope: !1116)
!1418 = !DILocation(line: 1340, column: 22, scope: !1116)
!1419 = !DILocation(line: 1340, column: 31, scope: !1116)
!1420 = !{!627, !601, i64 48}
!1421 = !DILocation(line: 1341, column: 62, scope: !1116)
!1422 = !DILocation(line: 1341, column: 16, scope: !1116)
!1423 = !DILocation(line: 1342, column: 20, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1116, file: !260, line: 1342, column: 13)
!1425 = !DILocation(line: 1342, column: 13, scope: !1116)
!1426 = !DILocation(line: 1345, column: 26, scope: !1424)
!1427 = !DILocation(line: 1343, column: 18, scope: !1424)
!1428 = !DILocation(line: 1343, column: 11, scope: !1424)
!1429 = !DILocation(line: 1346, column: 16, scope: !1116)
!1430 = !DILocation(line: 1347, column: 16, scope: !1116)
!1431 = !DILocation(line: 1348, column: 10, scope: !1116)
!1432 = !DILocation(line: 1349, column: 9, scope: !1116)
!1433 = !DILocation(line: 1351, column: 9, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1109, file: !260, line: 1351, column: 9)
!1435 = !DILocation(line: 1351, column: 45, scope: !1434)
!1436 = !DILocation(line: 1351, column: 9, scope: !1109)
!1437 = !DILocation(line: 0, scope: !1289, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 1353, column: 9, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1434, file: !260, line: 1352, column: 7)
!1440 = !DILocation(line: 1120, column: 7, scope: !1300, inlinedAt: !1438)
!1441 = !DILocation(line: 1120, column: 13, scope: !1300, inlinedAt: !1438)
!1442 = !DILocation(line: 1120, column: 7, scope: !1289, inlinedAt: !1438)
!1443 = !DILocation(line: 1122, column: 10, scope: !1289, inlinedAt: !1438)
!1444 = !DILocation(line: 1122, column: 22, scope: !1289, inlinedAt: !1438)
!1445 = !DILocation(line: 1123, column: 7, scope: !1306, inlinedAt: !1438)
!1446 = !DILocation(line: 1123, column: 10, scope: !1306, inlinedAt: !1438)
!1447 = !DILocation(line: 1123, column: 7, scope: !1289, inlinedAt: !1438)
!1448 = !DILocation(line: 1124, column: 7, scope: !1306, inlinedAt: !1438)
!1449 = !DILocation(line: 1124, column: 5, scope: !1306, inlinedAt: !1438)
!1450 = !DILocation(line: 1125, column: 48, scope: !1312, inlinedAt: !1438)
!1451 = !DILocation(line: 1126, column: 9, scope: !1315, inlinedAt: !1438)
!1452 = !DILocation(line: 1126, column: 12, scope: !1315, inlinedAt: !1438)
!1453 = !DILocation(line: 1126, column: 9, scope: !1312, inlinedAt: !1438)
!1454 = !DILocation(line: 1128, column: 11, scope: !1319, inlinedAt: !1438)
!1455 = !DILocation(line: 1129, column: 14, scope: !1319, inlinedAt: !1438)
!1456 = !DILocation(line: 1130, column: 7, scope: !1319, inlinedAt: !1438)
!1457 = !DILocation(line: 0, scope: !1313, inlinedAt: !1438)
!1458 = !DILocation(line: 1125, column: 64, scope: !1312, inlinedAt: !1438)
!1459 = !DILocation(line: 1125, column: 24, scope: !1312, inlinedAt: !1438)
!1460 = distinct !{!1460, !1461, !1462, !509, !510}
!1461 = !DILocation(line: 1125, column: 3, scope: !1313, inlinedAt: !1438)
!1462 = !DILocation(line: 1130, column: 7, scope: !1313, inlinedAt: !1438)
!1463 = !DILocation(line: 1131, column: 7, scope: !1289, inlinedAt: !1438)
!1464 = !DILocation(line: 1132, column: 10, scope: !1330, inlinedAt: !1438)
!1465 = !DILocation(line: 1132, column: 5, scope: !1330, inlinedAt: !1438)
!1466 = !DILocation(line: 1354, column: 16, scope: !1439)
!1467 = !DILocation(line: 1355, column: 9, scope: !1439)
!1468 = !DILocation(line: 1357, column: 9, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1109, file: !260, line: 1357, column: 9)
!1470 = !DILocation(line: 1357, column: 18, scope: !1469)
!1471 = !DILocation(line: 1357, column: 9, scope: !1109)
!1472 = !DILocation(line: 1362, column: 13, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !260, line: 1362, column: 13)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !260, line: 1358, column: 7)
!1475 = !DILocation(line: 1362, column: 13, scope: !1474)
!1476 = !DILocation(line: 0, scope: !1289, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 1366, column: 13, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !260, line: 1365, column: 11)
!1479 = distinct !DILexicalBlock(scope: !1474, file: !260, line: 1364, column: 13)
!1480 = !DILocation(line: 1120, column: 7, scope: !1300, inlinedAt: !1477)
!1481 = !DILocation(line: 1120, column: 13, scope: !1300, inlinedAt: !1477)
!1482 = !DILocation(line: 1120, column: 7, scope: !1289, inlinedAt: !1477)
!1483 = !DILocation(line: 1122, column: 10, scope: !1289, inlinedAt: !1477)
!1484 = !DILocation(line: 1122, column: 22, scope: !1289, inlinedAt: !1477)
!1485 = !DILocation(line: 1123, column: 7, scope: !1306, inlinedAt: !1477)
!1486 = !DILocation(line: 1123, column: 10, scope: !1306, inlinedAt: !1477)
!1487 = !DILocation(line: 1123, column: 7, scope: !1289, inlinedAt: !1477)
!1488 = !DILocation(line: 1124, column: 7, scope: !1306, inlinedAt: !1477)
!1489 = !DILocation(line: 1124, column: 5, scope: !1306, inlinedAt: !1477)
!1490 = !DILocation(line: 1125, column: 48, scope: !1312, inlinedAt: !1477)
!1491 = !DILocation(line: 1126, column: 9, scope: !1315, inlinedAt: !1477)
!1492 = !DILocation(line: 1126, column: 12, scope: !1315, inlinedAt: !1477)
!1493 = !DILocation(line: 1126, column: 9, scope: !1312, inlinedAt: !1477)
!1494 = !DILocation(line: 1128, column: 11, scope: !1319, inlinedAt: !1477)
!1495 = !DILocation(line: 1129, column: 14, scope: !1319, inlinedAt: !1477)
!1496 = !DILocation(line: 1130, column: 7, scope: !1319, inlinedAt: !1477)
!1497 = !DILocation(line: 0, scope: !1313, inlinedAt: !1477)
!1498 = !DILocation(line: 1125, column: 64, scope: !1312, inlinedAt: !1477)
!1499 = !DILocation(line: 1125, column: 24, scope: !1312, inlinedAt: !1477)
!1500 = distinct !{!1500, !1501, !1502, !509, !510}
!1501 = !DILocation(line: 1125, column: 3, scope: !1313, inlinedAt: !1477)
!1502 = !DILocation(line: 1130, column: 7, scope: !1313, inlinedAt: !1477)
!1503 = !DILocation(line: 1131, column: 7, scope: !1289, inlinedAt: !1477)
!1504 = !DILocation(line: 1132, column: 10, scope: !1330, inlinedAt: !1477)
!1505 = !DILocation(line: 1132, column: 5, scope: !1330, inlinedAt: !1477)
!1506 = !DILocation(line: 1367, column: 17, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1478, file: !260, line: 1367, column: 17)
!1508 = !DILocation(line: 1367, column: 22, scope: !1507)
!1509 = !DILocation(line: 1367, column: 17, scope: !1478)
!1510 = !DILocation(line: 1368, column: 22, scope: !1507)
!1511 = !DILocation(line: 1368, column: 15, scope: !1507)
!1512 = !DILocation(line: 1371, column: 15, scope: !1474)
!1513 = !DILocation(line: 1371, column: 28, scope: !1474)
!1514 = !DILocation(line: 1371, column: 9, scope: !1474)
!1515 = !DILocation(line: 1371, column: 31, scope: !1474)
!1516 = !DILocation(line: 1372, column: 16, scope: !1474)
!1517 = !DILocation(line: 1373, column: 16, scope: !1474)
!1518 = !DILocation(line: 1374, column: 16, scope: !1474)
!1519 = !DILocation(line: 1375, column: 9, scope: !1474)
!1520 = !DILocation(line: 1377, column: 20, scope: !1109)
!1521 = !DILocation(line: 1377, column: 5, scope: !1109)
!1522 = !DILocation(line: 0, scope: !1110)
!1523 = !DILocation(line: 1381, column: 18, scope: !1078)
!1524 = !DILocation(line: 1382, column: 10, scope: !1078)
!1525 = !DILocation(line: 1383, column: 3, scope: !1078)
!1526 = !DILocation(line: 1384, column: 1, scope: !1078)
!1527 = !DISubprogram(name: "GetStringInfoDatum", scope: !174, file: !174, line: 97, type: !1528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!182, !254}
!1530 = !DISubprogram(name: "GetStringInfoPath", scope: !174, file: !174, line: 58, type: !1531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!163, !254}
!1533 = !DISubprogram(name: "SetFatalErrorHandler", scope: !37, file: !37, line: 151, type: !1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!1094, !1094}
!1536 = distinct !DISubprogram(name: "LocaleFatalErrorHandler", scope: !260, file: !260, line: 1135, type: !1096, scopeLine: 1138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1537)
!1537 = !{!1538, !1539, !1540}
!1538 = !DILocalVariable(name: "severity", arg: 1, scope: !1536, file: !260, line: 1136, type: !1074)
!1539 = !DILocalVariable(name: "reason", arg: 2, scope: !1536, file: !260, line: 1137, type: !163)
!1540 = !DILocalVariable(name: "description", arg: 3, scope: !1536, file: !260, line: 1137, type: !163)
!1541 = !DILocation(line: 0, scope: !1536)
!1542 = !DILocation(line: 1141, column: 14, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1536, file: !260, line: 1141, column: 7)
!1544 = !DILocation(line: 1141, column: 7, scope: !1536)
!1545 = !DILocation(line: 1142, column: 5, scope: !1543)
!1546 = !DILocation(line: 1143, column: 27, scope: !1536)
!1547 = !DILocation(line: 1143, column: 43, scope: !1536)
!1548 = !DILocation(line: 1143, column: 10, scope: !1536)
!1549 = !DILocation(line: 1144, column: 19, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1536, file: !260, line: 1144, column: 7)
!1551 = !DILocation(line: 1144, column: 7, scope: !1536)
!1552 = !DILocation(line: 1145, column: 29, scope: !1550)
!1553 = !DILocation(line: 1145, column: 12, scope: !1550)
!1554 = !DILocation(line: 1145, column: 5, scope: !1550)
!1555 = !DILocation(line: 1146, column: 27, scope: !1536)
!1556 = !DILocation(line: 1146, column: 10, scope: !1536)
!1557 = !DILocation(line: 1147, column: 17, scope: !1536)
!1558 = !DILocation(line: 1147, column: 10, scope: !1536)
!1559 = !DILocation(line: 1148, column: 3, scope: !1536)
!1560 = !DISubprogram(name: "AcquireString", scope: !174, file: !174, line: 43, type: !756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1561 = !DISubprogram(name: "GetMagickToken", scope: !661, file: !661, line: 45, type: !1562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{null, !163, !256, !150}
!1564 = !DISubprogram(name: "LocaleNCompare", scope: !174, file: !174, line: 67, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!195, !163, !163, !284}
!1567 = !DISubprogram(name: "GetPathComponent", scope: !125, file: !125, line: 68, type: !1568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !163, !1570, !150}
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "PathType", file: !125, line: 36, baseType: !124)
!1571 = !DISubprogram(name: "ConcatenateMagickString", scope: !174, file: !174, line: 76, type: !847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1572 = !DISubprogram(name: "FileToXML", scope: !1573, file: !1573, line: 26, type: !1574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1573 = !DIFile(filename: "apps/538.imagick_r/src/magick/xml-tree-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "588d2b9ea15fe3943faca01fa62215a3")
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!150, !163, !284}
!1576 = !DISubprogram(name: "AcquireMagickMemory", scope: !652, file: !652, line: 40, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!162, !284}
!1579 = !DISubprogram(name: "ResetMagickMemory", scope: !652, file: !652, line: 52, type: !1580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!162, !162, !195, !284}
!1582 = !DISubprogram(name: "AddValueToSplayTree", scope: !249, file: !249, line: 29, type: !1583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!155, !247, !580, !580}
!1585 = !DISubprogram(name: "GetClientName", scope: !1586, file: !1586, line: 27, type: !1587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !285)
!1586 = !DIFile(filename: "apps/538.imagick_r/src/magick/client.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "344c97aae512d59869dffffe3d724c6b")
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!163}
