; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/string.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._StringInfo = type { [4096 x i8], ptr, i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str = private unnamed_addr constant [85 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/string.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"UnableToAcquireString\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"UnableToConcatenateString\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"UnableToEscapeString\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FormatMagickSize.bi_units = internal unnamed_addr constant [10 x ptr] [ptr @.str.1, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr null], align 16, !dbg !0
@.str.8 = private unnamed_addr constant [3 x i8] c"Ki\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"Mi\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"Gi\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"Ti\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"Pi\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"Ei\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"Zi\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"Yi\00", align 1
@FormatMagickSize.traditional_units = internal unnamed_addr constant [10 x ptr] [ptr @.str.1, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr null], align 16, !dbg !197
@.str.16 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"%.*g%sB\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"%04d-%02d-%02dT%02d:%02d:%02d%+03ld:00\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"%s(%.20g): \00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"0x%08lx: \00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"%02lx\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"UnableToConvertStringToARGV\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"magick\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"UnableToConvertText\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireString(ptr noundef readonly %source) local_unnamed_addr #0 !dbg !220 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception14 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %source, metadata !224, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression()), !dbg !251
  %cmp.not = icmp eq ptr %source, null, !dbg !252
  br i1 %cmp.not, label %if.end8, label %if.end, !dbg !254

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(ptr noundef nonnull %source) #23, !dbg !255
  call void @llvm.dbg.value(metadata i64 %call, metadata !226, metadata !DIExpression()), !dbg !251
  %cmp1 = icmp ugt i64 %call, -4097, !dbg !256
  br i1 %cmp1, label %if.then2, label %if.end8, !dbg !257

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #24, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !230, metadata !DIExpression()), !dbg !258
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !258
  %call3 = tail call ptr @__errno_location() #25, !dbg !258
  %0 = load i32, ptr %call3, align 4, !dbg !258, !tbaa !259
  %call4 = call ptr @GetExceptionMessage(i32 noundef %0) #24, !dbg !258
  call void @llvm.dbg.value(metadata ptr %call4, metadata !227, metadata !DIExpression()), !dbg !263
  %call5 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 132, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call4) #24, !dbg !258
  %call6 = call ptr @DestroyString(ptr noundef %call4), !dbg !258
  call void @llvm.dbg.value(metadata ptr %call6, metadata !227, metadata !DIExpression()), !dbg !263
  call void @CatchException(ptr noundef nonnull %exception) #24, !dbg !258
  %call7 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !258
  call void @MagickCoreTerminus() #24, !dbg !258
  call void @_exit(i32 noundef 1) #26, !dbg !258
  unreachable, !dbg !258

if.end8:                                          ; preds = %entry, %if.end
  %length.039 = phi i64 [ %call, %if.end ], [ 0, %entry ]
  %add9 = add nuw i64 %length.039, 4096, !dbg !264
  %call10 = tail call ptr @AcquireQuantumMemory(i64 noundef %add9, i64 noundef 1) #27, !dbg !265
  call void @llvm.dbg.value(metadata ptr %call10, metadata !225, metadata !DIExpression()), !dbg !251
  %cmp11 = icmp eq ptr %call10, null, !dbg !266
  br i1 %cmp11, label %if.then12, label %if.end20, !dbg !267

if.then12:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception14) #24, !dbg !268
  call void @llvm.dbg.declare(metadata ptr %exception14, metadata !250, metadata !DIExpression()), !dbg !268
  call void @GetExceptionInfo(ptr noundef nonnull %exception14) #24, !dbg !268
  %call15 = tail call ptr @__errno_location() #25, !dbg !268
  %1 = load i32, ptr %call15, align 4, !dbg !268, !tbaa !259
  %call16 = call ptr @GetExceptionMessage(i32 noundef %1) #24, !dbg !268
  call void @llvm.dbg.value(metadata ptr %call16, metadata !247, metadata !DIExpression()), !dbg !269
  %call17 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 136, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call16) #24, !dbg !268
  %call18 = call ptr @DestroyString(ptr noundef %call16), !dbg !268
  call void @llvm.dbg.value(metadata ptr %call18, metadata !247, metadata !DIExpression()), !dbg !269
  call void @CatchException(ptr noundef nonnull %exception14) #24, !dbg !268
  %call19 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception14) #24, !dbg !268
  call void @MagickCoreTerminus() #24, !dbg !268
  call void @_exit(i32 noundef 1) #26, !dbg !268
  unreachable, !dbg !268

if.end20:                                         ; preds = %if.end8
  store i8 0, ptr %call10, align 1, !dbg !270, !tbaa !271
  br i1 %cmp.not, label %if.end23, label %if.then22, !dbg !272

if.then22:                                        ; preds = %if.end20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call10, ptr nonnull align 1 %source, i64 %length.039, i1 false), !dbg !273
  br label %if.end23, !dbg !275

if.end23:                                         ; preds = %if.then22, %if.end20
  %arrayidx = getelementptr inbounds i8, ptr %call10, i64 %length.039, !dbg !276
  store i8 0, ptr %arrayidx, align 1, !dbg !277, !tbaa !271
  ret ptr %call10, !dbg !278
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

declare !dbg !279 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !284 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #5

declare !dbg !288 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyString(ptr noundef %string) local_unnamed_addr #0 !dbg !293 {
entry:
  call void @llvm.dbg.value(metadata ptr %string, metadata !297, metadata !DIExpression()), !dbg !298
  %call = tail call ptr @RelinquishMagickMemory(ptr noundef %string) #24, !dbg !299
  ret ptr %call, !dbg !300
}

declare !dbg !301 void @CatchException(ptr noundef) local_unnamed_addr #4

declare !dbg !302 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !305 void @MagickCoreTerminus() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: allocsize(0,1)
declare !dbg !309 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireStringInfo(i64 noundef %length) local_unnamed_addr #0 !dbg !313 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception19 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata i64 %length, metadata !317, metadata !DIExpression()), !dbg !327
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 4120) #28, !dbg !328
  call void @llvm.dbg.value(metadata ptr %call, metadata !318, metadata !DIExpression()), !dbg !327
  %cmp = icmp eq ptr %call, null, !dbg !329
  br i1 %cmp, label %if.then, label %if.end, !dbg !330

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #24, !dbg !331
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !322, metadata !DIExpression()), !dbg !331
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !331
  %call1 = tail call ptr @__errno_location() #25, !dbg !331
  %0 = load i32, ptr %call1, align 4, !dbg !331, !tbaa !259
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #24, !dbg !331
  call void @llvm.dbg.value(metadata ptr %call2, metadata !319, metadata !DIExpression()), !dbg !332
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 173, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %call2) #24, !dbg !331
  %call4 = call ptr @DestroyString(ptr noundef %call2), !dbg !331
  call void @llvm.dbg.value(metadata ptr %call4, metadata !319, metadata !DIExpression()), !dbg !332
  call void @CatchException(ptr noundef nonnull %exception) #24, !dbg !331
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !331
  call void @MagickCoreTerminus() #24, !dbg !331
  call void @_exit(i32 noundef 1) #26, !dbg !331
  unreachable, !dbg !331

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 4120) #24, !dbg !333
  %signature = getelementptr inbounds %struct._StringInfo, ptr %call, i64 0, i32 3, !dbg !334
  store i64 2880220587, ptr %signature, align 8, !dbg !335, !tbaa !336
  %length7 = getelementptr inbounds %struct._StringInfo, ptr %call, i64 0, i32 2, !dbg !340
  store i64 %length, ptr %length7, align 8, !dbg !341, !tbaa !342
  %datum = getelementptr inbounds %struct._StringInfo, ptr %call, i64 0, i32 1, !dbg !343
  store ptr null, ptr %datum, align 8, !dbg !344, !tbaa !345
  %cmp9 = icmp ult i64 %length, -4095, !dbg !346
  br i1 %cmp9, label %if.end14, label %if.then17, !dbg !348

if.end14:                                         ; preds = %if.end
  %add = add i64 %length, 4096, !dbg !349
  %call12 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 1) #27, !dbg !350
  store ptr %call12, ptr %datum, align 8, !dbg !351, !tbaa !345
  %cmp16 = icmp eq ptr %call12, null, !dbg !352
  br i1 %cmp16, label %if.then17, label %if.end25, !dbg !353

if.then17:                                        ; preds = %if.end, %if.end14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception19) #24, !dbg !354
  call void @llvm.dbg.declare(metadata ptr %exception19, metadata !326, metadata !DIExpression()), !dbg !354
  call void @GetExceptionInfo(ptr noundef nonnull %exception19) #24, !dbg !354
  %call20 = tail call ptr @__errno_location() #25, !dbg !354
  %1 = load i32, ptr %call20, align 4, !dbg !354, !tbaa !259
  %call21 = call ptr @GetExceptionMessage(i32 noundef %1) #24, !dbg !354
  call void @llvm.dbg.value(metadata ptr %call21, metadata !323, metadata !DIExpression()), !dbg !355
  %call22 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 182, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %call21) #24, !dbg !354
  %call23 = call ptr @DestroyString(ptr noundef %call21), !dbg !354
  call void @llvm.dbg.value(metadata ptr %call23, metadata !323, metadata !DIExpression()), !dbg !355
  call void @CatchException(ptr noundef nonnull %exception19) #24, !dbg !354
  %call24 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception19) #24, !dbg !354
  call void @MagickCoreTerminus() #24, !dbg !354
  call void @_exit(i32 noundef 1) #26, !dbg !354
  unreachable, !dbg !354

if.end25:                                         ; preds = %if.end14
  ret ptr %call, !dbg !356
}

; Function Attrs: allocsize(0)
declare !dbg !357 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #9

declare !dbg !360 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @BlobToStringInfo(ptr noundef readonly %blob, i64 noundef %length) local_unnamed_addr #0 !dbg !363 {
entry:
  call void @llvm.dbg.value(metadata ptr %blob, metadata !367, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i64 %length, metadata !368, metadata !DIExpression()), !dbg !370
  %call = tail call ptr @AcquireStringInfo(i64 noundef 0), !dbg !371
  call void @llvm.dbg.value(metadata ptr %call, metadata !369, metadata !DIExpression()), !dbg !370
  %length1 = getelementptr inbounds %struct._StringInfo, ptr %call, i64 0, i32 2, !dbg !372
  store i64 %length, ptr %length1, align 8, !dbg !373, !tbaa !342
  %cmp = icmp ult i64 %length, -4095, !dbg !374
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !376

entry.if.end_crit_edge:                           ; preds = %entry
  %datum5.phi.trans.insert = getelementptr inbounds %struct._StringInfo, ptr %call, i64 0, i32 1
  %.pre = load ptr, ptr %datum5.phi.trans.insert, align 8, !dbg !377, !tbaa !345
  br label %if.end, !dbg !376

if.then:                                          ; preds = %entry
  %add = add i64 %length, 4096, !dbg !379
  %call4 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 1) #27, !dbg !380
  %datum = getelementptr inbounds %struct._StringInfo, ptr %call, i64 0, i32 1, !dbg !381
  store ptr %call4, ptr %datum, align 8, !dbg !382, !tbaa !345
  br label %if.end, !dbg !383

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %0 = phi ptr [ %.pre, %entry.if.end_crit_edge ], [ %call4, %if.then ], !dbg !377
  %cmp6 = icmp eq ptr %0, null, !dbg !384
  br i1 %cmp6, label %DestroyStringInfo.exit, label %if.end9, !dbg !385

DestroyStringInfo.exit:                           ; preds = %if.end
  %signature.i = getelementptr inbounds %struct._StringInfo, ptr %call, i64 0, i32 3, !dbg !386
  store i64 -2880220588, ptr %signature.i, align 8, !dbg !394, !tbaa !336
  %call3.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #24, !dbg !395
  call void @llvm.dbg.value(metadata ptr %call3.i, metadata !391, metadata !DIExpression()) #24, !dbg !396
  call void @llvm.dbg.value(metadata ptr undef, metadata !369, metadata !DIExpression()), !dbg !370
  br label %cleanup, !dbg !397

if.end9:                                          ; preds = %if.end
  %cmp10.not = icmp eq ptr %blob, null, !dbg !398
  br i1 %cmp10.not, label %cleanup, label %if.then11, !dbg !400

if.then11:                                        ; preds = %if.end9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %blob, i64 %length, i1 false), !dbg !401
  br label %cleanup, !dbg !402

cleanup:                                          ; preds = %if.end9, %if.then11, %DestroyStringInfo.exit
  %retval.0 = phi ptr [ null, %DestroyStringInfo.exit ], [ %call, %if.then11 ], [ %call, %if.end9 ], !dbg !370
  ret ptr %retval.0, !dbg !403
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyStringInfo(ptr noundef %string_info) local_unnamed_addr #0 !dbg !387 {
entry:
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !391, metadata !DIExpression()), !dbg !404
  %datum = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 1, !dbg !405
  %0 = load ptr, ptr %datum, align 8, !dbg !405, !tbaa !345
  %cmp.not = icmp eq ptr %0, null, !dbg !407
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !408

if.then:                                          ; preds = %entry
  %call = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #24, !dbg !409
  store ptr %call, ptr %datum, align 8, !dbg !410, !tbaa !345
  br label %if.end, !dbg !411

if.end:                                           ; preds = %if.then, %entry
  %signature = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 3, !dbg !412
  store i64 -2880220588, ptr %signature, align 8, !dbg !413, !tbaa !336
  %call3 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %string_info) #24, !dbg !414
  call void @llvm.dbg.value(metadata ptr %call3, metadata !391, metadata !DIExpression()), !dbg !404
  ret ptr %call3, !dbg !415
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneString(ptr nocapture noundef %destination, ptr noundef %source) local_unnamed_addr #0 !dbg !416 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception21 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %destination, metadata !420, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata ptr %source, metadata !421, metadata !DIExpression()), !dbg !431
  %cmp = icmp eq ptr %source, null, !dbg !432
  %0 = load ptr, ptr %destination, align 8, !dbg !431, !tbaa !434
  %cmp1.not = icmp eq ptr %0, null, !dbg !431
  br i1 %cmp, label %if.then, label %if.end3, !dbg !435

if.then:                                          ; preds = %entry
  br i1 %cmp1.not, label %cleanup, label %if.then2, !dbg !436

if.then2:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata ptr %0, metadata !297, metadata !DIExpression()) #24, !dbg !438
  %call.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #24, !dbg !441
  store ptr %call.i, ptr %destination, align 8, !dbg !442, !tbaa !434
  br label %cleanup, !dbg !443

if.end3:                                          ; preds = %entry
  br i1 %cmp1.not, label %if.then5, label %if.end7, !dbg !444

if.then5:                                         ; preds = %if.end3
  %call6 = tail call ptr @AcquireString(ptr noundef nonnull %source), !dbg !445
  store ptr %call6, ptr %destination, align 8, !dbg !448, !tbaa !434
  br label %cleanup, !dbg !449

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i64 @strlen(ptr noundef nonnull %source) #23, !dbg !450
  call void @llvm.dbg.value(metadata i64 %call8, metadata !422, metadata !DIExpression()), !dbg !431
  %cmp9 = icmp ugt i64 %call8, -4097, !dbg !451
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !452

if.then10:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #24, !dbg !453
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !426, metadata !DIExpression()), !dbg !453
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !453
  %call11 = tail call ptr @__errno_location() #25, !dbg !453
  %1 = load i32, ptr %call11, align 4, !dbg !453, !tbaa !259
  %call12 = call ptr @GetExceptionMessage(i32 noundef %1) #24, !dbg !453
  call void @llvm.dbg.value(metadata ptr %call12, metadata !423, metadata !DIExpression()), !dbg !454
  %call13 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 282, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call12) #24, !dbg !453
  %call14 = call ptr @DestroyString(ptr noundef %call12), !dbg !453
  call void @llvm.dbg.value(metadata ptr %call14, metadata !423, metadata !DIExpression()), !dbg !454
  call void @CatchException(ptr noundef nonnull %exception) #24, !dbg !453
  %call15 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !453
  call void @MagickCoreTerminus() #24, !dbg !453
  call void @_exit(i32 noundef 1) #26, !dbg !453
  unreachable, !dbg !453

if.end16:                                         ; preds = %if.end7
  %add = add nuw i64 %call8, 4096, !dbg !455
  %call17 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %0, i64 noundef %add, i64 noundef 1) #29, !dbg !456
  store ptr %call17, ptr %destination, align 8, !dbg !457, !tbaa !434
  %cmp18 = icmp eq ptr %call17, null, !dbg !458
  br i1 %cmp18, label %if.then19, label %if.end27, !dbg !459

if.then19:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception21) #24, !dbg !460
  call void @llvm.dbg.declare(metadata ptr %exception21, metadata !430, metadata !DIExpression()), !dbg !460
  call void @GetExceptionInfo(ptr noundef nonnull %exception21) #24, !dbg !460
  %call22 = tail call ptr @__errno_location() #25, !dbg !460
  %2 = load i32, ptr %call22, align 4, !dbg !460, !tbaa !259
  %call23 = call ptr @GetExceptionMessage(i32 noundef %2) #24, !dbg !460
  call void @llvm.dbg.value(metadata ptr %call23, metadata !427, metadata !DIExpression()), !dbg !461
  %call24 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 286, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call23) #24, !dbg !460
  %call25 = call ptr @DestroyString(ptr noundef %call23), !dbg !460
  call void @llvm.dbg.value(metadata ptr %call25, metadata !427, metadata !DIExpression()), !dbg !461
  call void @CatchException(ptr noundef nonnull %exception21) #24, !dbg !460
  %call26 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception21) #24, !dbg !460
  call void @MagickCoreTerminus() #24, !dbg !460
  call void @_exit(i32 noundef 1) #26, !dbg !460
  unreachable, !dbg !460

if.end27:                                         ; preds = %if.end16
  %cmp28.not = icmp eq i64 %call8, 0, !dbg !462
  br i1 %cmp28.not, label %if.end30, label %if.then29, !dbg !464

if.then29:                                        ; preds = %if.end27
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call17, ptr nonnull align 1 %source, i64 %call8, i1 false), !dbg !465
  %.pre = load ptr, ptr %destination, align 8, !dbg !466, !tbaa !434
  br label %if.end30, !dbg !467

if.end30:                                         ; preds = %if.then29, %if.end27
  %3 = phi ptr [ %.pre, %if.then29 ], [ %call17, %if.end27 ], !dbg !466
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %call8, !dbg !468
  store i8 0, ptr %arrayidx, align 1, !dbg !469, !tbaa !271
  %4 = load ptr, ptr %destination, align 8, !dbg !470, !tbaa !434
  br label %cleanup, !dbg !471

cleanup:                                          ; preds = %if.then, %if.then2, %if.end30, %if.then5
  %retval.0 = phi ptr [ %call6, %if.then5 ], [ %4, %if.end30 ], [ %call.i, %if.then2 ], [ null, %if.then ], !dbg !431
  ret ptr %retval.0, !dbg !472
}

; Function Attrs: allocsize(1,2)
declare !dbg !473 ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneStringInfo(ptr nocapture noundef readonly %string_info) local_unnamed_addr #0 !dbg !476 {
entry:
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !482, metadata !DIExpression()), !dbg !484
  %length = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 2, !dbg !485
  %0 = load i64, ptr %length, align 8, !dbg !485, !tbaa !342
  %call = tail call ptr @AcquireStringInfo(i64 noundef %0), !dbg !486
  call void @llvm.dbg.value(metadata ptr %call, metadata !483, metadata !DIExpression()), !dbg !484
  %1 = load i64, ptr %length, align 8, !dbg !487, !tbaa !342
  %cmp.not = icmp eq i64 %1, 0, !dbg !489
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !490

if.then:                                          ; preds = %entry
  %datum = getelementptr inbounds %struct._StringInfo, ptr %call, i64 0, i32 1, !dbg !491
  %2 = load ptr, ptr %datum, align 8, !dbg !491, !tbaa !345
  %datum2 = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 1, !dbg !492
  %3 = load ptr, ptr %datum2, align 8, !dbg !492, !tbaa !345
  %add = add i64 %1, 1, !dbg !493
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %3, i64 %add, i1 false), !dbg !494
  br label %if.end, !dbg !495

if.end:                                           ; preds = %if.then, %entry
  ret ptr %call, !dbg !496
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define dso_local i32 @CompareStringInfo(ptr nocapture noundef readonly %target, ptr nocapture noundef readonly %source) local_unnamed_addr #11 !dbg !497 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !501, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata ptr %source, metadata !502, metadata !DIExpression()), !dbg !504
  %datum = getelementptr inbounds %struct._StringInfo, ptr %target, i64 0, i32 1, !dbg !505
  %0 = load ptr, ptr %datum, align 8, !dbg !505, !tbaa !345
  %datum1 = getelementptr inbounds %struct._StringInfo, ptr %source, i64 0, i32 1, !dbg !506
  %1 = load ptr, ptr %datum1, align 8, !dbg !506, !tbaa !345
  %length = getelementptr inbounds %struct._StringInfo, ptr %target, i64 0, i32 2, !dbg !507
  %2 = load i64, ptr %length, align 8, !dbg !507, !tbaa !342
  %length2 = getelementptr inbounds %struct._StringInfo, ptr %source, i64 0, i32 2, !dbg !508
  %3 = load i64, ptr %length2, align 8, !dbg !508, !tbaa !342
  call void @llvm.dbg.value(metadata i64 %2, metadata !509, metadata !DIExpression()) #24, !dbg !515
  call void @llvm.dbg.value(metadata i64 %3, metadata !514, metadata !DIExpression()) #24, !dbg !515
  %4 = tail call i64 @llvm.umin.i64(i64 %2, i64 %3) #24, !dbg !515
  %call3 = tail call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef %4) #23, !dbg !517
  call void @llvm.dbg.value(metadata i32 %call3, metadata !503, metadata !DIExpression()), !dbg !504
  %cmp.not = icmp eq i32 %call3, 0, !dbg !518
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !520

if.end:                                           ; preds = %entry
  %cmp6 = icmp eq i64 %2, %3, !dbg !521
  br i1 %cmp6, label %cleanup, label %if.end8, !dbg !523

if.end8:                                          ; preds = %if.end
  %cmp11 = icmp ult i64 %2, %3, !dbg !524
  %cond = select i1 %cmp11, i32 -1, i32 1, !dbg !525
  br label %cleanup, !dbg !526

cleanup:                                          ; preds = %if.end, %entry, %if.end8
  %retval.0 = phi i32 [ %cond, %if.end8 ], [ %call3, %entry ], [ 0, %if.end ], !dbg !504
  ret i32 %retval.0, !dbg !527
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @ConcatenateMagickString(ptr noundef %destination, ptr noundef %source, i64 noundef %length) local_unnamed_addr #12 !dbg !528 {
entry:
  call void @llvm.dbg.value(metadata ptr %destination, metadata !532, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %source, metadata !533, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i64 %length, metadata !534, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %source, metadata !536, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %destination, metadata !535, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i64 %length, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i64 %length, metadata !537, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !539
  %cmp.not42 = icmp eq i64 %length, 0, !dbg !540
  br i1 %cmp.not42, label %while.end, label %land.rhs.preheader, !dbg !541

land.rhs.preheader:                               ; preds = %entry
  %uglygep = getelementptr i8, ptr %destination, i64 %length, !dbg !542
  br label %land.rhs, !dbg !542

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %dec44.in = phi i64 [ %dec44, %while.body ], [ %length, %land.rhs.preheader ]
  %q.043 = phi ptr [ %incdec.ptr, %while.body ], [ %destination, %land.rhs.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.043, metadata !535, metadata !DIExpression()), !dbg !539
  %0 = load i8, ptr %q.043, align 1, !dbg !543, !tbaa !271
  %cmp1.not = icmp eq i8 %0, 0, !dbg !544
  br i1 %cmp1.not, label %while.end, label %while.body, !dbg !542

while.body:                                       ; preds = %land.rhs
  %dec44 = add i64 %dec44.in, -1, !dbg !545
  %incdec.ptr = getelementptr inbounds i8, ptr %q.043, i64 1, !dbg !546
  call void @llvm.dbg.value(metadata i64 %dec44, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !535, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata i64 %dec44, metadata !537, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !539
  %cmp.not = icmp eq i64 %dec44, 0, !dbg !540
  br i1 %cmp.not, label %while.end, label %land.rhs, !dbg !541, !llvm.loop !547

while.end:                                        ; preds = %land.rhs, %while.body, %entry
  %q.0.lcssa = phi ptr [ %destination, %entry ], [ %uglygep, %while.body ], [ %q.043, %land.rhs ], !dbg !539
  %sub.ptr.lhs.cast = ptrtoint ptr %q.0.lcssa to i64, !dbg !550
  %sub.ptr.rhs.cast = ptrtoint ptr %destination to i64, !dbg !550
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !550
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !538, metadata !DIExpression()), !dbg !539
  %sub = sub i64 %length, %sub.ptr.sub, !dbg !551
  call void @llvm.dbg.value(metadata i64 %sub, metadata !537, metadata !DIExpression()), !dbg !539
  %cmp3 = icmp eq i64 %sub, 0, !dbg !552
  br i1 %cmp3, label %if.then, label %while.cond5.preheader, !dbg !554

while.cond5.preheader:                            ; preds = %while.end
  call void @llvm.dbg.value(metadata i64 %sub, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %source, metadata !536, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %q.0.lcssa, metadata !535, metadata !DIExpression()), !dbg !539
  %1 = load i8, ptr %source, align 1, !dbg !555, !tbaa !271
  %cmp7.not46 = icmp eq i8 %1, 0, !dbg !556
  br i1 %cmp7.not46, label %while.end17, label %while.body9, !dbg !557

if.then:                                          ; preds = %while.end
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %source) #23, !dbg !558
  br label %cleanup, !dbg !559

while.body9:                                      ; preds = %while.cond5.preheader, %if.end15
  %2 = phi i8 [ %3, %if.end15 ], [ %1, %while.cond5.preheader ]
  %i.149 = phi i64 [ %i.2, %if.end15 ], [ %sub, %while.cond5.preheader ]
  %p.048 = phi ptr [ %incdec.ptr16, %if.end15 ], [ %source, %while.cond5.preheader ]
  %q.147 = phi ptr [ %q.2, %if.end15 ], [ %q.0.lcssa, %while.cond5.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.149, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %p.048, metadata !536, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %q.147, metadata !535, metadata !DIExpression()), !dbg !539
  %cmp10.not = icmp eq i64 %i.149, 1, !dbg !560
  br i1 %cmp10.not, label %if.end15, label %if.then12, !dbg !563

if.then12:                                        ; preds = %while.body9
  %incdec.ptr13 = getelementptr inbounds i8, ptr %q.147, i64 1, !dbg !564
  call void @llvm.dbg.value(metadata ptr %incdec.ptr13, metadata !535, metadata !DIExpression()), !dbg !539
  store i8 %2, ptr %q.147, align 1, !dbg !566, !tbaa !271
  %dec14 = add i64 %i.149, -1, !dbg !567
  call void @llvm.dbg.value(metadata i64 %dec14, metadata !537, metadata !DIExpression()), !dbg !539
  br label %if.end15, !dbg !568

if.end15:                                         ; preds = %if.then12, %while.body9
  %q.2 = phi ptr [ %incdec.ptr13, %if.then12 ], [ %q.147, %while.body9 ], !dbg !539
  %i.2 = phi i64 [ %dec14, %if.then12 ], [ 1, %while.body9 ], !dbg !539
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr %q.2, metadata !535, metadata !DIExpression()), !dbg !539
  %incdec.ptr16 = getelementptr inbounds i8, ptr %p.048, i64 1, !dbg !569
  call void @llvm.dbg.value(metadata ptr %incdec.ptr16, metadata !536, metadata !DIExpression()), !dbg !539
  %3 = load i8, ptr %incdec.ptr16, align 1, !dbg !555, !tbaa !271
  %cmp7.not = icmp eq i8 %3, 0, !dbg !556
  br i1 %cmp7.not, label %while.end17, label %while.body9, !dbg !557, !llvm.loop !570

while.end17:                                      ; preds = %if.end15, %while.cond5.preheader
  %q.1.lcssa = phi ptr [ %q.0.lcssa, %while.cond5.preheader ], [ %q.2, %if.end15 ], !dbg !539
  %p.0.lcssa = phi ptr [ %source, %while.cond5.preheader ], [ %incdec.ptr16, %if.end15 ], !dbg !539
  store i8 0, ptr %q.1.lcssa, align 1, !dbg !572, !tbaa !271
  %sub.ptr.lhs.cast18 = ptrtoint ptr %p.0.lcssa to i64, !dbg !573
  %sub.ptr.rhs.cast19 = ptrtoint ptr %source to i64, !dbg !573
  %sub.ptr.sub20 = sub i64 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19, !dbg !573
  br label %cleanup, !dbg !574

cleanup:                                          ; preds = %while.end17, %if.then
  %call.pn = phi i64 [ %call, %if.then ], [ %sub.ptr.sub20, %while.end17 ]
  %retval.0 = add i64 %call.pn, %sub.ptr.sub, !dbg !539
  ret i64 %retval.0, !dbg !575
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ConcatenateString(ptr nocapture noundef %destination, ptr noundef %source) local_unnamed_addr #0 !dbg !576 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception18 = alloca %struct._ExceptionInfo, align 8
  %exception30 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %destination, metadata !580, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata ptr %source, metadata !581, metadata !DIExpression()), !dbg !597
  %cmp = icmp eq ptr %source, null, !dbg !598
  br i1 %cmp, label %cleanup, label %if.end, !dbg !600

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %destination, align 8, !dbg !601, !tbaa !434
  %cmp1 = icmp eq ptr %0, null, !dbg !603
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !604

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @AcquireString(ptr noundef nonnull %source), !dbg !605
  store ptr %call, ptr %destination, align 8, !dbg !607, !tbaa !434
  br label %cleanup, !dbg !608

if.end3:                                          ; preds = %if.end
  %call4 = tail call i64 @strlen(ptr noundef nonnull %0) #23, !dbg !609
  call void @llvm.dbg.value(metadata i64 %call4, metadata !582, metadata !DIExpression()), !dbg !597
  %call5 = tail call i64 @strlen(ptr noundef nonnull %source) #23, !dbg !610
  call void @llvm.dbg.value(metadata i64 %call5, metadata !584, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata i64 %call4, metadata !583, metadata !DIExpression()), !dbg !597
  %neg = xor i64 %call4, -1, !dbg !611
  %cmp6 = icmp ugt i64 %call5, %neg, !dbg !612
  br i1 %cmp6, label %if.then7, label %if.end13, !dbg !613

if.then7:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #24, !dbg !614
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !588, metadata !DIExpression()), !dbg !614
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !614
  %call8 = tail call ptr @__errno_location() #25, !dbg !614
  %1 = load i32, ptr %call8, align 4, !dbg !614, !tbaa !259
  %call9 = call ptr @GetExceptionMessage(i32 noundef %1) #24, !dbg !614
  call void @llvm.dbg.value(metadata ptr %call9, metadata !585, metadata !DIExpression()), !dbg !615
  %call10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 496, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %call9) #24, !dbg !614
  %call11 = call ptr @DestroyString(ptr noundef %call9), !dbg !614
  call void @llvm.dbg.value(metadata ptr %call11, metadata !585, metadata !DIExpression()), !dbg !615
  call void @CatchException(ptr noundef nonnull %exception) #24, !dbg !614
  %call12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !614
  call void @MagickCoreTerminus() #24, !dbg !614
  call void @_exit(i32 noundef 1) #26, !dbg !614
  unreachable, !dbg !614

if.end13:                                         ; preds = %if.end3
  %add = add i64 %call5, %call4, !dbg !616
  call void @llvm.dbg.value(metadata i64 %add, metadata !583, metadata !DIExpression()), !dbg !597
  %cmp15 = icmp ugt i64 %add, -4097, !dbg !617
  br i1 %cmp15, label %if.then16, label %if.end24, !dbg !618

if.then16:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception18) #24, !dbg !619
  call void @llvm.dbg.declare(metadata ptr %exception18, metadata !592, metadata !DIExpression()), !dbg !619
  call void @GetExceptionInfo(ptr noundef nonnull %exception18) #24, !dbg !619
  %call19 = tail call ptr @__errno_location() #25, !dbg !619
  %2 = load i32, ptr %call19, align 4, !dbg !619, !tbaa !259
  %call20 = call ptr @GetExceptionMessage(i32 noundef %2) #24, !dbg !619
  call void @llvm.dbg.value(metadata ptr %call20, metadata !589, metadata !DIExpression()), !dbg !620
  %call21 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 499, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %call20) #24, !dbg !619
  %call22 = call ptr @DestroyString(ptr noundef %call20), !dbg !619
  call void @llvm.dbg.value(metadata ptr %call22, metadata !589, metadata !DIExpression()), !dbg !620
  call void @CatchException(ptr noundef nonnull %exception18) #24, !dbg !619
  %call23 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception18) #24, !dbg !619
  call void @MagickCoreTerminus() #24, !dbg !619
  call void @_exit(i32 noundef 1) #26, !dbg !619
  unreachable, !dbg !619

if.end24:                                         ; preds = %if.end13
  %add25 = add nuw i64 %add, 4096, !dbg !621
  %call26 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %0, i64 noundef %add25, i64 noundef 1) #29, !dbg !622
  store ptr %call26, ptr %destination, align 8, !dbg !623, !tbaa !434
  %cmp27 = icmp eq ptr %call26, null, !dbg !624
  br i1 %cmp27, label %if.then28, label %if.end36, !dbg !625

if.then28:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception30) #24, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %exception30, metadata !596, metadata !DIExpression()), !dbg !626
  call void @GetExceptionInfo(ptr noundef nonnull %exception30) #24, !dbg !626
  %call31 = tail call ptr @__errno_location() #25, !dbg !626
  %3 = load i32, ptr %call31, align 4, !dbg !626, !tbaa !259
  %call32 = call ptr @GetExceptionMessage(i32 noundef %3) #24, !dbg !626
  call void @llvm.dbg.value(metadata ptr %call32, metadata !593, metadata !DIExpression()), !dbg !627
  %call33 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception30, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 503, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %call32) #24, !dbg !626
  %call34 = call ptr @DestroyString(ptr noundef %call32), !dbg !626
  call void @llvm.dbg.value(metadata ptr %call34, metadata !593, metadata !DIExpression()), !dbg !627
  call void @CatchException(ptr noundef nonnull %exception30) #24, !dbg !626
  %call35 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception30) #24, !dbg !626
  call void @MagickCoreTerminus() #24, !dbg !626
  call void @_exit(i32 noundef 1) #26, !dbg !626
  unreachable, !dbg !626

if.end36:                                         ; preds = %if.end24
  %cmp37.not = icmp eq i64 %call5, 0, !dbg !628
  br i1 %cmp37.not, label %if.end39, label %if.then38, !dbg !630

if.then38:                                        ; preds = %if.end36
  %add.ptr = getelementptr inbounds i8, ptr %call26, i64 %call4, !dbg !631
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr, ptr nonnull align 1 %source, i64 %call5, i1 false), !dbg !632
  %.pre = load ptr, ptr %destination, align 8, !dbg !633, !tbaa !434
  br label %if.end39, !dbg !634

if.end39:                                         ; preds = %if.then38, %if.end36
  %4 = phi ptr [ %.pre, %if.then38 ], [ %call26, %if.end36 ], !dbg !633
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %add, !dbg !635
  store i8 0, ptr %arrayidx, align 1, !dbg !636, !tbaa !271
  br label %cleanup, !dbg !637

cleanup:                                          ; preds = %entry, %if.end39, %if.then2
  ret i32 1, !dbg !638
}

; Function Attrs: nounwind uwtable
define dso_local void @ConcatenateStringInfo(ptr nocapture noundef %string_info, ptr nocapture noundef readonly %source) local_unnamed_addr #0 !dbg !639 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !643, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata ptr %source, metadata !644, metadata !DIExpression()), !dbg !650
  %length1 = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 2, !dbg !651
  %0 = load i64, ptr %length1, align 8, !dbg !651, !tbaa !342
  call void @llvm.dbg.value(metadata i64 %0, metadata !645, metadata !DIExpression()), !dbg !650
  %neg = xor i64 %0, -1, !dbg !652
  %length2 = getelementptr inbounds %struct._StringInfo, ptr %source, i64 0, i32 2, !dbg !653
  %1 = load i64, ptr %length2, align 8, !dbg !653, !tbaa !342
  %cmp = icmp ugt i64 %1, %neg, !dbg !654
  br i1 %cmp, label %if.then, label %if.end, !dbg !655

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #24, !dbg !656
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !649, metadata !DIExpression()), !dbg !656
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !656
  %call = tail call ptr @__errno_location() #25, !dbg !656
  %2 = load i32, ptr %call, align 4, !dbg !656, !tbaa !259
  %call3 = call ptr @GetExceptionMessage(i32 noundef %2) #24, !dbg !656
  call void @llvm.dbg.value(metadata ptr %call3, metadata !646, metadata !DIExpression()), !dbg !657
  %call4 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 547, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %call3) #24, !dbg !656
  %call5 = call ptr @DestroyString(ptr noundef %call3), !dbg !656
  call void @llvm.dbg.value(metadata ptr %call5, metadata !646, metadata !DIExpression()), !dbg !657
  call void @CatchException(ptr noundef nonnull %exception) #24, !dbg !656
  %call6 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !656
  call void @MagickCoreTerminus() #24, !dbg !656
  call void @_exit(i32 noundef 1) #26, !dbg !656
  unreachable, !dbg !656

if.end:                                           ; preds = %entry
  %add = add i64 %1, %0, !dbg !658
  tail call void @SetStringInfoLength(ptr noundef nonnull %string_info, i64 noundef %add), !dbg !659
  %datum = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 1, !dbg !660
  %3 = load ptr, ptr %datum, align 8, !dbg !660, !tbaa !345
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %0, !dbg !661
  %datum8 = getelementptr inbounds %struct._StringInfo, ptr %source, i64 0, i32 1, !dbg !662
  %4 = load ptr, ptr %datum8, align 8, !dbg !662, !tbaa !345
  %5 = load i64, ptr %length2, align 8, !dbg !663, !tbaa !342
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %4, i64 %5, i1 false), !dbg !664
  ret void, !dbg !665
}

; Function Attrs: nounwind uwtable
define dso_local void @SetStringInfoLength(ptr nocapture noundef %string_info, i64 noundef %length) local_unnamed_addr #0 !dbg !666 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception19 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !670, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i64 %length, metadata !671, metadata !DIExpression()), !dbg !680
  %cmp = icmp ugt i64 %length, -4097, !dbg !681
  br i1 %cmp, label %if.then, label %if.end, !dbg !682

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #24, !dbg !683
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !675, metadata !DIExpression()), !dbg !683
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !683
  %call = tail call ptr @__errno_location() #25, !dbg !683
  %0 = load i32, ptr %call, align 4, !dbg !683, !tbaa !259
  %call1 = call ptr @GetExceptionMessage(i32 noundef %0) #24, !dbg !683
  call void @llvm.dbg.value(metadata ptr %call1, metadata !672, metadata !DIExpression()), !dbg !684
  %call2 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1916, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %call1) #24, !dbg !683
  %call3 = call ptr @DestroyString(ptr noundef %call1), !dbg !683
  call void @llvm.dbg.value(metadata ptr %call3, metadata !672, metadata !DIExpression()), !dbg !684
  call void @CatchException(ptr noundef nonnull %exception) #24, !dbg !683
  %call4 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !683
  call void @MagickCoreTerminus() #24, !dbg !683
  call void @_exit(i32 noundef 1) #26, !dbg !683
  unreachable, !dbg !683

if.end:                                           ; preds = %entry
  %length5 = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 2, !dbg !685
  store i64 %length, ptr %length5, align 8, !dbg !686, !tbaa !342
  %datum = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 1, !dbg !687
  %1 = load ptr, ptr %datum, align 8, !dbg !687, !tbaa !345
  %cmp6 = icmp eq ptr %1, null, !dbg !689
  %add = add nuw i64 %length, 4096, !dbg !690
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !691

if.then7:                                         ; preds = %if.end
  %call8 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 1) #27, !dbg !692
  br label %if.end14, !dbg !693

if.else:                                          ; preds = %if.end
  %call12 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %1, i64 noundef %add, i64 noundef 1) #29, !dbg !694
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then7
  %storemerge = phi ptr [ %call12, %if.else ], [ %call8, %if.then7 ], !dbg !690
  store ptr %storemerge, ptr %datum, align 8, !dbg !690, !tbaa !345
  %cmp16 = icmp eq ptr %storemerge, null, !dbg !695
  br i1 %cmp16, label %if.then17, label %if.end25, !dbg !696

if.then17:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception19) #24, !dbg !697
  call void @llvm.dbg.declare(metadata ptr %exception19, metadata !679, metadata !DIExpression()), !dbg !697
  call void @GetExceptionInfo(ptr noundef nonnull %exception19) #24, !dbg !697
  %call20 = tail call ptr @__errno_location() #25, !dbg !697
  %2 = load i32, ptr %call20, align 4, !dbg !697, !tbaa !259
  %call21 = call ptr @GetExceptionMessage(i32 noundef %2) #24, !dbg !697
  call void @llvm.dbg.value(metadata ptr %call21, metadata !676, metadata !DIExpression()), !dbg !698
  %call22 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1925, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %call21) #24, !dbg !697
  %call23 = call ptr @DestroyString(ptr noundef %call21), !dbg !697
  call void @llvm.dbg.value(metadata ptr %call23, metadata !676, metadata !DIExpression()), !dbg !698
  call void @CatchException(ptr noundef nonnull %exception19) #24, !dbg !697
  %call24 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception19) #24, !dbg !697
  call void @MagickCoreTerminus() #24, !dbg !697
  call void @_exit(i32 noundef 1) #26, !dbg !697
  unreachable, !dbg !697

if.end25:                                         ; preds = %if.end14
  ret void, !dbg !699
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ConfigureFileToStringInfo(ptr noundef %filename) local_unnamed_addr #0 !dbg !700 {
entry:
  call void @llvm.dbg.value(metadata ptr %filename, metadata !704, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata ptr %filename, metadata !716, metadata !DIExpression()) #24, !dbg !727
  call void @llvm.dbg.value(metadata i32 0, metadata !725, metadata !DIExpression()) #24, !dbg !727
  call void @llvm.dbg.value(metadata i32 0, metadata !726, metadata !DIExpression()) #24, !dbg !727
  %call.i = tail call i32 (ptr, i32, ...) @open(ptr noundef %filename, i32 noundef 0, i32 noundef 0) #24, !dbg !729
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !706, metadata !DIExpression()), !dbg !715
  %cmp = icmp eq i32 %call.i, -1, !dbg !730
  br i1 %cmp, label %cleanup46, label %if.end, !dbg !732

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @lseek(i32 noundef %call.i, i64 noundef 0, i32 noundef 2) #24, !dbg !733
  call void @llvm.dbg.value(metadata i64 %call1, metadata !707, metadata !DIExpression()), !dbg !715
  %cmp2 = icmp slt i64 %call1, 0, !dbg !734
  br i1 %cmp2, label %if.then4, label %if.then8, !dbg !736

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @close(i32 noundef %call.i) #24, !dbg !737
  call void @llvm.dbg.value(metadata i32 %call5, metadata !706, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !715
  br label %cleanup46, !dbg !739

if.then8:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 %call1, metadata !708, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata ptr null, metadata !705, metadata !DIExpression()), !dbg !715
  %add = add nuw i64 %call1, 4096, !dbg !740
  %call9 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 1) #27, !dbg !742
  call void @llvm.dbg.value(metadata ptr %call9, metadata !705, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata ptr %call9, metadata !705, metadata !DIExpression()), !dbg !715
  %cmp11 = icmp eq ptr %call9, null, !dbg !743
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !745

if.then12:                                        ; preds = %if.then8
  %call13 = tail call i32 @close(i32 noundef %call.i) #24, !dbg !746
  call void @llvm.dbg.value(metadata i32 %call13, metadata !706, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !715
  br label %cleanup46, !dbg !748

if.end15:                                         ; preds = %if.then8
  %call16 = tail call ptr @MapBlob(i32 noundef %call.i, i32 noundef 0, i64 noundef 0, i64 noundef %call1) #24, !dbg !749
  call void @llvm.dbg.value(metadata ptr %call16, metadata !710, metadata !DIExpression()), !dbg !715
  %cmp17.not = icmp eq ptr %call16, null, !dbg !750
  br i1 %cmp17.not, label %if.else, label %if.then18, !dbg !751

if.then18:                                        ; preds = %if.end15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call9, ptr nonnull align 1 %call16, i64 %call1, i1 false), !dbg !752
  %call19 = tail call i32 @UnmapBlob(ptr noundef nonnull %call16, i64 noundef %call1) #24, !dbg !754
  br label %if.end40, !dbg !755

if.else:                                          ; preds = %if.end15
  %call20 = tail call i64 @lseek(i32 noundef %call.i, i64 noundef 0, i32 noundef 0) #24, !dbg !756
  call void @llvm.dbg.value(metadata i64 0, metadata !711, metadata !DIExpression()), !dbg !757
  %cmp2193.not = icmp eq i64 %call1, 0, !dbg !758
  br i1 %cmp2193.not, label %if.end40, label %for.body, !dbg !761

for.body:                                         ; preds = %if.else, %for.inc
  %i.094 = phi i64 [ %add32, %for.inc ], [ 0, %if.else ]
  call void @llvm.dbg.value(metadata i64 %i.094, metadata !711, metadata !DIExpression()), !dbg !757
  %add.ptr = getelementptr inbounds i8, ptr %call9, i64 %i.094, !dbg !762
  %sub22 = sub i64 %call1, %i.094, !dbg !764
  call void @llvm.dbg.value(metadata i64 %sub22, metadata !509, metadata !DIExpression()) #24, !dbg !765
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !514, metadata !DIExpression()) #24, !dbg !765
  %0 = tail call i64 @llvm.umin.i64(i64 %sub22, i64 9223372036854775807) #24, !dbg !765
  %call24 = tail call i64 @read(i32 noundef %call.i, ptr noundef nonnull %add.ptr, i64 noundef %0) #24, !dbg !767
  call void @llvm.dbg.value(metadata i64 %call24, metadata !714, metadata !DIExpression()), !dbg !757
  %cmp25 = icmp slt i64 %call24, 1, !dbg !768
  br i1 %cmp25, label %if.then26, label %for.inc, !dbg !770

if.then26:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 0, metadata !714, metadata !DIExpression()), !dbg !757
  %call27 = tail call ptr @__errno_location() #25, !dbg !771
  %1 = load i32, ptr %call27, align 4, !dbg !771, !tbaa !259
  %cmp28.not = icmp eq i32 %1, 4, !dbg !774
  br i1 %cmp28.not, label %for.inc, label %cleanup.thread, !dbg !775

for.inc:                                          ; preds = %for.body, %if.then26
  %count.0 = phi i64 [ 0, %if.then26 ], [ %call24, %for.body ], !dbg !776
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !714, metadata !DIExpression()), !dbg !757
  %add32 = add i64 %count.0, %i.094, !dbg !777
  call void @llvm.dbg.value(metadata i64 %add32, metadata !711, metadata !DIExpression()), !dbg !757
  %cmp21 = icmp ugt i64 %call1, %add32, !dbg !758
  br i1 %cmp21, label %for.body, label %if.end40, !dbg !761, !llvm.loop !778

cleanup.thread:                                   ; preds = %if.then26
  %call35 = tail call i32 @close(i32 noundef %call.i) #24, !dbg !780
  call void @llvm.dbg.value(metadata i32 %call35, metadata !706, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !715
  call void @llvm.dbg.value(metadata ptr %call9, metadata !297, metadata !DIExpression()) #24, !dbg !783
  %call.i88 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call9) #24, !dbg !785
  call void @llvm.dbg.value(metadata ptr undef, metadata !705, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i32 undef, metadata !706, metadata !DIExpression()), !dbg !715
  br label %cleanup46

if.end40:                                         ; preds = %for.inc, %if.else, %if.then18
  call void @llvm.dbg.value(metadata ptr %call9, metadata !705, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !706, metadata !DIExpression()), !dbg !715
  %arrayidx = getelementptr inbounds i8, ptr %call9, i64 %call1, !dbg !786
  store i8 0, ptr %arrayidx, align 1, !dbg !787, !tbaa !271
  %call41 = tail call i32 @close(i32 noundef %call.i) #24, !dbg !788
  call void @llvm.dbg.value(metadata i32 %call41, metadata !706, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !715
  %call43 = tail call ptr @AcquireStringInfo(i64 noundef 0), !dbg !789
  call void @llvm.dbg.value(metadata ptr %call43, metadata !709, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata ptr %call43, metadata !790, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata ptr %filename, metadata !793, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 4096, metadata !794, metadata !DIExpression()), !dbg !798
  %cmp.i = icmp eq ptr %filename, null, !dbg !800
  br i1 %cmp.i, label %CopyMagickString.exit, label %for.body.i, !dbg !802

for.body.i:                                       ; preds = %if.end40, %if.end38.i
  %n.0134.i = phi i64 [ %sub40.i, %if.end38.i ], [ 4096, %if.end40 ]
  %p.0133.i = phi ptr [ %incdec.ptr29.i, %if.end38.i ], [ %filename, %if.end40 ]
  %q.0132.i = phi ptr [ %incdec.ptr39.i, %if.end38.i ], [ %call43, %if.end40 ]
  call void @llvm.dbg.value(metadata i64 %n.0134.i, metadata !797, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata ptr %q.0132.i, metadata !795, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !798
  %2 = load i8, ptr %p.0133.i, align 1, !dbg !803, !tbaa !271
  store i8 %2, ptr %q.0132.i, align 1, !dbg !807, !tbaa !271
  %cmp2.i = icmp eq i8 %2, 0, !dbg !808
  br i1 %cmp2.i, label %CopyMagickString.exit, label %if.end5.i, !dbg !810

if.end5.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.0133.i, i64 1, !dbg !811
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !796, metadata !DIExpression()), !dbg !798
  %incdec.ptr6.i = getelementptr inbounds i8, ptr %q.0132.i, i64 1, !dbg !812
  call void @llvm.dbg.value(metadata ptr %incdec.ptr6.i, metadata !795, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !798
  %3 = load i8, ptr %incdec.ptr.i, align 1, !dbg !813, !tbaa !271
  store i8 %3, ptr %incdec.ptr6.i, align 1, !dbg !814, !tbaa !271
  %cmp9.i = icmp eq i8 %3, 0, !dbg !815
  br i1 %cmp9.i, label %CopyMagickString.exit, label %if.end16.i, !dbg !817

if.end16.i:                                       ; preds = %if.end5.i
  %incdec.ptr7.i = getelementptr inbounds i8, ptr %p.0133.i, i64 2, !dbg !818
  call void @llvm.dbg.value(metadata ptr %incdec.ptr7.i, metadata !796, metadata !DIExpression()), !dbg !798
  %incdec.ptr17.i = getelementptr inbounds i8, ptr %q.0132.i, i64 2, !dbg !819
  call void @llvm.dbg.value(metadata ptr %incdec.ptr17.i, metadata !795, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !798
  %4 = load i8, ptr %incdec.ptr7.i, align 1, !dbg !820, !tbaa !271
  store i8 %4, ptr %incdec.ptr17.i, align 1, !dbg !821, !tbaa !271
  %cmp20.i = icmp eq i8 %4, 0, !dbg !822
  br i1 %cmp20.i, label %CopyMagickString.exit, label %if.end27.i, !dbg !824

if.end27.i:                                       ; preds = %if.end16.i
  %incdec.ptr18.i = getelementptr inbounds i8, ptr %p.0133.i, i64 3, !dbg !825
  call void @llvm.dbg.value(metadata ptr %incdec.ptr18.i, metadata !796, metadata !DIExpression()), !dbg !798
  %incdec.ptr28.i = getelementptr inbounds i8, ptr %q.0132.i, i64 3, !dbg !826
  call void @llvm.dbg.value(metadata ptr %incdec.ptr28.i, metadata !795, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !798
  %5 = load i8, ptr %incdec.ptr18.i, align 1, !dbg !827, !tbaa !271
  store i8 %5, ptr %incdec.ptr28.i, align 1, !dbg !828, !tbaa !271
  %cmp31.i = icmp eq i8 %5, 0, !dbg !829
  br i1 %cmp31.i, label %CopyMagickString.exit, label %if.end38.i, !dbg !831

if.end38.i:                                       ; preds = %if.end27.i
  %incdec.ptr29.i = getelementptr inbounds i8, ptr %p.0133.i, i64 4, !dbg !832
  call void @llvm.dbg.value(metadata ptr %incdec.ptr29.i, metadata !796, metadata !DIExpression()), !dbg !798
  %incdec.ptr39.i = getelementptr inbounds i8, ptr %q.0132.i, i64 4, !dbg !833
  call void @llvm.dbg.value(metadata ptr %incdec.ptr39.i, metadata !795, metadata !DIExpression()), !dbg !798
  %sub40.i = add nsw i64 %n.0134.i, -4, !dbg !834
  call void @llvm.dbg.value(metadata i64 %sub40.i, metadata !797, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !798
  %cmp1.i = icmp ugt i64 %sub40.i, 4, !dbg !835
  br i1 %cmp1.i, label %for.body.i, label %for.body47.i, !dbg !836, !llvm.loop !837

for.body47.i:                                     ; preds = %if.end38.i, %if.end57.i
  %n.1141.i = phi i64 [ %n.1.i, %if.end57.i ], [ 3, %if.end38.i ]
  %p.1140.i = phi ptr [ %incdec.ptr48.i, %if.end57.i ], [ %incdec.ptr29.i, %if.end38.i ]
  %q.1139.i = phi ptr [ %incdec.ptr58.i, %if.end57.i ], [ %incdec.ptr39.i, %if.end38.i ]
  call void @llvm.dbg.value(metadata ptr %q.1139.i, metadata !795, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata ptr %p.1140.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !798
  %6 = load i8, ptr %p.1140.i, align 1, !dbg !839, !tbaa !271
  store i8 %6, ptr %q.1139.i, align 1, !dbg !844, !tbaa !271
  %cmp50.i = icmp eq i8 %6, 0, !dbg !845
  br i1 %cmp50.i, label %CopyMagickString.exit, label %if.end57.i, !dbg !847

if.end57.i:                                       ; preds = %for.body47.i
  %incdec.ptr48.i = getelementptr inbounds i8, ptr %p.1140.i, i64 1, !dbg !848
  call void @llvm.dbg.value(metadata ptr %incdec.ptr48.i, metadata !796, metadata !DIExpression()), !dbg !798
  %incdec.ptr58.i = getelementptr inbounds i8, ptr %q.1139.i, i64 1, !dbg !849
  call void @llvm.dbg.value(metadata ptr %incdec.ptr58.i, metadata !795, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 %n.1141.i, metadata !797, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !798
  %n.1.i = add nsw i64 %n.1141.i, -1, !dbg !850
  call void @llvm.dbg.value(metadata i64 %n.1.i, metadata !797, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata ptr %p.1140.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !798
  %cmp45.not.i = icmp eq i64 %n.1.i, 0, !dbg !851
  br i1 %cmp45.not.i, label %if.end62.i, label %for.body47.i, !dbg !852, !llvm.loop !853

if.end62.i:                                       ; preds = %if.end57.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !796, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata ptr %incdec.ptr58.i, metadata !795, metadata !DIExpression()), !dbg !798
  store i8 0, ptr %incdec.ptr58.i, align 1, !dbg !855, !tbaa !271
  br label %CopyMagickString.exit, !dbg !857

CopyMagickString.exit:                            ; preds = %if.end27.i, %if.end16.i, %if.end5.i, %for.body.i, %for.body47.i, %if.end40, %if.end62.i
  %length45 = getelementptr inbounds %struct._StringInfo, ptr %call43, i64 0, i32 2, !dbg !858
  store i64 %call1, ptr %length45, align 8, !dbg !859, !tbaa !342
  %datum = getelementptr inbounds %struct._StringInfo, ptr %call43, i64 0, i32 1, !dbg !860
  store ptr %call9, ptr %datum, align 8, !dbg !861, !tbaa !345
  br label %cleanup46, !dbg !862

cleanup46:                                        ; preds = %cleanup.thread, %entry, %CopyMagickString.exit, %if.then12, %if.then4
  %retval.1 = phi ptr [ null, %if.then4 ], [ null, %if.then12 ], [ %call43, %CopyMagickString.exit ], [ null, %entry ], [ null, %cleanup.thread ], !dbg !715
  ret ptr %retval.1, !dbg !863
}

; Function Attrs: nounwind
declare !dbg !864 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

declare !dbg !869 i32 @close(i32 noundef) local_unnamed_addr #4

declare !dbg !872 ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !879 i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !882 noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i64 @CopyMagickString(ptr nocapture noundef writeonly %destination, ptr noundef %source, i64 noundef %length) local_unnamed_addr #15 !dbg !791 {
entry:
  call void @llvm.dbg.value(metadata ptr %destination, metadata !790, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %source, metadata !793, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i64 %length, metadata !794, metadata !DIExpression()), !dbg !885
  %cmp = icmp eq ptr %source, null, !dbg !886
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !887

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 %length, metadata !797, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %source, metadata !796, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %destination, metadata !795, metadata !DIExpression()), !dbg !885
  %cmp1131 = icmp ugt i64 %length, 4, !dbg !888
  br i1 %cmp1131, label %for.body, label %for.end, !dbg !889

for.body:                                         ; preds = %for.cond.preheader, %if.end38
  %n.0134 = phi i64 [ %sub40, %if.end38 ], [ %length, %for.cond.preheader ]
  %p.0133 = phi ptr [ %incdec.ptr29, %if.end38 ], [ %source, %for.cond.preheader ]
  %q.0132 = phi ptr [ %incdec.ptr39, %if.end38 ], [ %destination, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %n.0134, metadata !797, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %p.0133, metadata !796, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %q.0132, metadata !795, metadata !DIExpression()), !dbg !885
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0133, i64 1, !dbg !890
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !796, metadata !DIExpression()), !dbg !885
  %0 = load i8, ptr %p.0133, align 1, !dbg !891, !tbaa !271
  store i8 %0, ptr %q.0132, align 1, !dbg !892, !tbaa !271
  %cmp2 = icmp eq i8 %0, 0, !dbg !893
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !894

if.then4:                                         ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i64, !dbg !895
  %sub.ptr.rhs.cast = ptrtoint ptr %source to i64, !dbg !895
  %1 = xor i64 %sub.ptr.rhs.cast, -1, !dbg !896
  %sub = add i64 %sub.ptr.lhs.cast, %1, !dbg !896
  br label %cleanup, !dbg !897

if.end5:                                          ; preds = %for.body
  %incdec.ptr6 = getelementptr inbounds i8, ptr %q.0132, i64 1, !dbg !898
  call void @llvm.dbg.value(metadata ptr %incdec.ptr6, metadata !795, metadata !DIExpression()), !dbg !885
  %incdec.ptr7 = getelementptr inbounds i8, ptr %p.0133, i64 2, !dbg !899
  call void @llvm.dbg.value(metadata ptr %incdec.ptr7, metadata !796, metadata !DIExpression()), !dbg !885
  %2 = load i8, ptr %incdec.ptr, align 1, !dbg !900, !tbaa !271
  store i8 %2, ptr %incdec.ptr6, align 1, !dbg !901, !tbaa !271
  %cmp9 = icmp eq i8 %2, 0, !dbg !902
  br i1 %cmp9, label %if.then11, label %if.end16, !dbg !903

if.then11:                                        ; preds = %if.end5
  %sub.ptr.lhs.cast12 = ptrtoint ptr %incdec.ptr7 to i64, !dbg !904
  %sub.ptr.rhs.cast13 = ptrtoint ptr %source to i64, !dbg !904
  %3 = xor i64 %sub.ptr.rhs.cast13, -1, !dbg !905
  %sub15 = add i64 %sub.ptr.lhs.cast12, %3, !dbg !905
  br label %cleanup, !dbg !906

if.end16:                                         ; preds = %if.end5
  %incdec.ptr17 = getelementptr inbounds i8, ptr %q.0132, i64 2, !dbg !907
  call void @llvm.dbg.value(metadata ptr %incdec.ptr17, metadata !795, metadata !DIExpression()), !dbg !885
  %incdec.ptr18 = getelementptr inbounds i8, ptr %p.0133, i64 3, !dbg !908
  call void @llvm.dbg.value(metadata ptr %incdec.ptr18, metadata !796, metadata !DIExpression()), !dbg !885
  %4 = load i8, ptr %incdec.ptr7, align 1, !dbg !909, !tbaa !271
  store i8 %4, ptr %incdec.ptr17, align 1, !dbg !910, !tbaa !271
  %cmp20 = icmp eq i8 %4, 0, !dbg !911
  br i1 %cmp20, label %if.then22, label %if.end27, !dbg !912

if.then22:                                        ; preds = %if.end16
  %sub.ptr.lhs.cast23 = ptrtoint ptr %incdec.ptr18 to i64, !dbg !913
  %sub.ptr.rhs.cast24 = ptrtoint ptr %source to i64, !dbg !913
  %5 = xor i64 %sub.ptr.rhs.cast24, -1, !dbg !914
  %sub26 = add i64 %sub.ptr.lhs.cast23, %5, !dbg !914
  br label %cleanup, !dbg !915

if.end27:                                         ; preds = %if.end16
  %incdec.ptr28 = getelementptr inbounds i8, ptr %q.0132, i64 3, !dbg !916
  call void @llvm.dbg.value(metadata ptr %incdec.ptr28, metadata !795, metadata !DIExpression()), !dbg !885
  %incdec.ptr29 = getelementptr inbounds i8, ptr %p.0133, i64 4, !dbg !917
  call void @llvm.dbg.value(metadata ptr %incdec.ptr29, metadata !796, metadata !DIExpression()), !dbg !885
  %6 = load i8, ptr %incdec.ptr18, align 1, !dbg !918, !tbaa !271
  store i8 %6, ptr %incdec.ptr28, align 1, !dbg !919, !tbaa !271
  %cmp31 = icmp eq i8 %6, 0, !dbg !920
  br i1 %cmp31, label %if.then33, label %if.end38, !dbg !921

if.then33:                                        ; preds = %if.end27
  %sub.ptr.lhs.cast34 = ptrtoint ptr %incdec.ptr29 to i64, !dbg !922
  %sub.ptr.rhs.cast35 = ptrtoint ptr %source to i64, !dbg !922
  %7 = xor i64 %sub.ptr.rhs.cast35, -1, !dbg !923
  %sub37 = add i64 %sub.ptr.lhs.cast34, %7, !dbg !923
  br label %cleanup, !dbg !924

if.end38:                                         ; preds = %if.end27
  %incdec.ptr39 = getelementptr inbounds i8, ptr %q.0132, i64 4, !dbg !925
  call void @llvm.dbg.value(metadata ptr %incdec.ptr39, metadata !795, metadata !DIExpression()), !dbg !885
  %sub40 = add i64 %n.0134, -4, !dbg !926
  call void @llvm.dbg.value(metadata i64 %sub40, metadata !797, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %incdec.ptr29, metadata !796, metadata !DIExpression()), !dbg !885
  %cmp1 = icmp ugt i64 %sub40, 4, !dbg !888
  br i1 %cmp1, label %for.body, label %for.end, !dbg !889, !llvm.loop !927

for.end:                                          ; preds = %if.end38, %for.cond.preheader
  %q.0.lcssa = phi ptr [ %destination, %for.cond.preheader ], [ %incdec.ptr39, %if.end38 ], !dbg !885
  %p.0.lcssa = phi ptr [ %source, %for.cond.preheader ], [ %incdec.ptr29, %if.end38 ], !dbg !885
  %n.0.lcssa = phi i64 [ %length, %for.cond.preheader ], [ %sub40, %if.end38 ], !dbg !929
  %8 = icmp ult i64 %n.0.lcssa, 2, !dbg !930
  call void @llvm.dbg.value(metadata i64 %n.0.lcssa, metadata !797, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !885
  call void @llvm.dbg.value(metadata ptr %p.0.lcssa, metadata !796, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %q.0.lcssa, metadata !795, metadata !DIExpression()), !dbg !885
  br i1 %8, label %if.end62, label %for.body47.preheader, !dbg !930

for.body47.preheader:                             ; preds = %for.end
  %n.1137 = add nsw i64 %n.0.lcssa, -1
  call void @llvm.dbg.value(metadata i64 %n.1137, metadata !797, metadata !DIExpression()), !dbg !885
  br label %for.body47, !dbg !931

for.body47:                                       ; preds = %for.body47.preheader, %if.end57
  %n.1141 = phi i64 [ %n.1, %if.end57 ], [ %n.1137, %for.body47.preheader ]
  %p.1140 = phi ptr [ %incdec.ptr48, %if.end57 ], [ %p.0.lcssa, %for.body47.preheader ]
  %q.1139 = phi ptr [ %incdec.ptr58, %if.end57 ], [ %q.0.lcssa, %for.body47.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.1140, metadata !796, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %q.1139, metadata !795, metadata !DIExpression()), !dbg !885
  %incdec.ptr48 = getelementptr inbounds i8, ptr %p.1140, i64 1, !dbg !932
  call void @llvm.dbg.value(metadata ptr %incdec.ptr48, metadata !796, metadata !DIExpression()), !dbg !885
  %9 = load i8, ptr %p.1140, align 1, !dbg !933, !tbaa !271
  store i8 %9, ptr %q.1139, align 1, !dbg !934, !tbaa !271
  %cmp50 = icmp eq i8 %9, 0, !dbg !935
  br i1 %cmp50, label %if.then52, label %if.end57, !dbg !936

if.then52:                                        ; preds = %for.body47
  %sub.ptr.lhs.cast53 = ptrtoint ptr %incdec.ptr48 to i64, !dbg !937
  %sub.ptr.rhs.cast54 = ptrtoint ptr %source to i64, !dbg !937
  %10 = xor i64 %sub.ptr.rhs.cast54, -1, !dbg !938
  %sub56 = add i64 %sub.ptr.lhs.cast53, %10, !dbg !938
  br label %cleanup, !dbg !939

if.end57:                                         ; preds = %for.body47
  %incdec.ptr58 = getelementptr inbounds i8, ptr %q.1139, i64 1, !dbg !940
  call void @llvm.dbg.value(metadata ptr %incdec.ptr58, metadata !795, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i64 %n.1141, metadata !797, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !885
  %n.1 = add i64 %n.1141, -1, !dbg !941
  call void @llvm.dbg.value(metadata i64 %n.1, metadata !797, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %incdec.ptr48, metadata !796, metadata !DIExpression()), !dbg !885
  %cmp45.not = icmp eq i64 %n.1, 0, !dbg !942
  br i1 %cmp45.not, label %if.end62, label %for.body47, !dbg !931, !llvm.loop !943

if.end62:                                         ; preds = %if.end57, %for.end
  %q.2 = phi ptr [ %q.0.lcssa, %for.end ], [ %incdec.ptr58, %if.end57 ], !dbg !945
  %p.2 = phi ptr [ %p.0.lcssa, %for.end ], [ %incdec.ptr48, %if.end57 ], !dbg !946
  call void @llvm.dbg.value(metadata ptr %p.2, metadata !796, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr %q.2, metadata !795, metadata !DIExpression()), !dbg !885
  %cmp63.not = icmp eq i64 %length, 0, !dbg !947
  br i1 %cmp63.not, label %if.end66, label %if.then65, !dbg !948

if.then65:                                        ; preds = %if.end62
  store i8 0, ptr %q.2, align 1, !dbg !949, !tbaa !271
  br label %if.end66, !dbg !950

if.end66:                                         ; preds = %if.then65, %if.end62
  %sub.ptr.lhs.cast67 = ptrtoint ptr %p.2 to i64, !dbg !951
  %sub.ptr.rhs.cast68 = ptrtoint ptr %source to i64, !dbg !951
  %11 = xor i64 %sub.ptr.rhs.cast68, -1, !dbg !952
  %sub70 = add i64 %sub.ptr.lhs.cast67, %11, !dbg !952
  br label %cleanup, !dbg !953

cleanup:                                          ; preds = %entry, %if.end66, %if.then52, %if.then33, %if.then22, %if.then11, %if.then4
  %retval.0 = phi i64 [ %sub, %if.then4 ], [ %sub15, %if.then11 ], [ %sub26, %if.then22 ], [ %sub37, %if.then33 ], [ %sub56, %if.then52 ], [ %sub70, %if.end66 ], [ 0, %entry ], !dbg !885
  ret i64 %retval.0, !dbg !954
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ConstantString(ptr noundef readonly %source) local_unnamed_addr #0 !dbg !955 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %source, metadata !957, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 0, metadata !959, metadata !DIExpression()), !dbg !964
  %cmp.not = icmp eq ptr %source, null, !dbg !965
  br i1 %cmp.not, label %if.end5, label %if.end, !dbg !967

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(ptr noundef nonnull %source) #23, !dbg !968
  call void @llvm.dbg.value(metadata i64 %call, metadata !959, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata ptr null, metadata !958, metadata !DIExpression()), !dbg !964
  %cmp1.not = icmp eq i64 %call, -1, !dbg !969
  br i1 %cmp1.not, label %if.then7, label %if.end5, !dbg !971

if.end5:                                          ; preds = %entry, %if.end
  %length.031 = phi i64 [ %call, %if.end ], [ 0, %entry ]
  %add3 = add nuw i64 %length.031, 1, !dbg !972
  %call4 = tail call ptr @AcquireQuantumMemory(i64 noundef %add3, i64 noundef 1) #27, !dbg !973
  call void @llvm.dbg.value(metadata ptr %call4, metadata !958, metadata !DIExpression()), !dbg !964
  %cmp6 = icmp eq ptr %call4, null, !dbg !974
  br i1 %cmp6, label %if.then7, label %if.end13, !dbg !975

if.then7:                                         ; preds = %if.end, %if.end5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #24, !dbg !976
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !963, metadata !DIExpression()), !dbg !976
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !976
  %call8 = tail call ptr @__errno_location() #25, !dbg !976
  %0 = load i32, ptr %call8, align 4, !dbg !976, !tbaa !259
  %call9 = call ptr @GetExceptionMessage(i32 noundef %0) #24, !dbg !976
  call void @llvm.dbg.value(metadata ptr %call9, metadata !960, metadata !DIExpression()), !dbg !977
  %call10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 698, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call9) #24, !dbg !976
  %call11 = call ptr @DestroyString(ptr noundef %call9), !dbg !976
  call void @llvm.dbg.value(metadata ptr %call11, metadata !960, metadata !DIExpression()), !dbg !977
  call void @CatchException(ptr noundef nonnull %exception) #24, !dbg !976
  %call12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !976
  call void @MagickCoreTerminus() #24, !dbg !976
  call void @_exit(i32 noundef 1) #26, !dbg !976
  unreachable, !dbg !976

if.end13:                                         ; preds = %if.end5
  store i8 0, ptr %call4, align 1, !dbg !978, !tbaa !271
  br i1 %cmp.not, label %if.end16, label %if.then15, !dbg !979

if.then15:                                        ; preds = %if.end13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call4, ptr nonnull align 1 %source, i64 %length.031, i1 false), !dbg !980
  br label %if.end16, !dbg !982

if.end16:                                         ; preds = %if.then15, %if.end13
  %arrayidx = getelementptr inbounds i8, ptr %call4, i64 %length.031, !dbg !983
  store i8 0, ptr %arrayidx, align 1, !dbg !984, !tbaa !271
  ret ptr %call4, !dbg !985
}

declare !dbg !986 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyStringList(ptr noundef %list) local_unnamed_addr #0 !dbg !989 {
entry:
  call void @llvm.dbg.value(metadata ptr %list, metadata !993, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata i64 0, metadata !994, metadata !DIExpression()), !dbg !995
  %0 = load ptr, ptr %list, align 8, !dbg !996, !tbaa !434
  %cmp.not11 = icmp eq ptr %0, null, !dbg !999
  br i1 %cmp.not11, label %for.end, label %for.body, !dbg !1000

for.body:                                         ; preds = %entry, %for.body
  %1 = phi ptr [ %2, %for.body ], [ %0, %entry ]
  %arrayidx13 = phi ptr [ %arrayidx, %for.body ], [ %list, %entry ]
  %i.012 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.012, metadata !994, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr %1, metadata !297, metadata !DIExpression()) #24, !dbg !1001
  %call.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %1) #24, !dbg !1003
  store ptr %call.i, ptr %arrayidx13, align 8, !dbg !1004, !tbaa !434
  %inc = add nuw nsw i64 %i.012, 1, !dbg !1005
  call void @llvm.dbg.value(metadata i64 %inc, metadata !994, metadata !DIExpression()), !dbg !995
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %inc, !dbg !996
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !996, !tbaa !434
  %cmp.not = icmp eq ptr %2, null, !dbg !999
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !1000, !llvm.loop !1006

for.end:                                          ; preds = %for.body, %entry
  %call3 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %list) #24, !dbg !1008
  call void @llvm.dbg.value(metadata ptr %call3, metadata !993, metadata !DIExpression()), !dbg !995
  ret ptr %call3, !dbg !1009
}

; Function Attrs: nounwind uwtable
define dso_local ptr @EscapeString(ptr noundef readonly %source, i8 noundef signext %escape) local_unnamed_addr #0 !dbg !1010 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception28 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %source, metadata !1014, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i8 %escape, metadata !1015, metadata !DIExpression()), !dbg !1032
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %source) #23, !dbg !1033
  call void @llvm.dbg.value(metadata i64 %call, metadata !1019, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata ptr %source, metadata !1018, metadata !DIExpression()), !dbg !1032
  br label %for.cond, !dbg !1034

for.cond:                                         ; preds = %for.inc, %entry
  %p.0 = phi ptr [ %source, %entry ], [ %incdec.ptr, %for.inc ], !dbg !1035
  %length.0 = phi i64 [ %call, %entry ], [ %length.1, %for.inc ], !dbg !1032
  call void @llvm.dbg.value(metadata i64 %length.0, metadata !1019, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !1018, metadata !DIExpression()), !dbg !1032
  %0 = load i8, ptr %p.0, align 1, !dbg !1036, !tbaa !271
  switch i8 %0, label %lor.lhs.false [
    i8 0, label %for.end
    i8 92, label %if.then
  ], !dbg !1037

lor.lhs.false:                                    ; preds = %for.cond
  %cmp7 = icmp eq i8 %0, %escape, !dbg !1038
  br i1 %cmp7, label %if.then, label %for.inc, !dbg !1039

if.then:                                          ; preds = %for.cond, %lor.lhs.false
  %cmp9 = icmp eq i64 %length.0, -1, !dbg !1040
  br i1 %cmp9, label %if.then11, label %if.end, !dbg !1041

if.then11:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #24, !dbg !1042
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1027, metadata !DIExpression()), !dbg !1042
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !1042
  %call12 = tail call ptr @__errno_location() #25, !dbg !1042
  %1 = load i32, ptr %call12, align 4, !dbg !1042, !tbaa !259
  %call13 = call ptr @GetExceptionMessage(i32 noundef %1) #24, !dbg !1042
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1020, metadata !DIExpression()), !dbg !1043
  %call14 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 930, i32 noundef 700, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef %call13) #24, !dbg !1042
  %call15 = call ptr @DestroyString(ptr noundef %call13), !dbg !1042
  call void @llvm.dbg.value(metadata ptr %call15, metadata !1020, metadata !DIExpression()), !dbg !1043
  call void @CatchException(ptr noundef nonnull %exception) #24, !dbg !1042
  %call16 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !1042
  call void @MagickCoreTerminus() #24, !dbg !1042
  call void @_exit(i32 noundef 1) #26, !dbg !1042
  unreachable, !dbg !1042

if.end:                                           ; preds = %if.then
  %inc = add nuw i64 %length.0, 1, !dbg !1044
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1019, metadata !DIExpression()), !dbg !1032
  br label %for.inc, !dbg !1045

for.inc:                                          ; preds = %lor.lhs.false, %if.end
  %length.1 = phi i64 [ %inc, %if.end ], [ %length.0, %lor.lhs.false ], !dbg !1032
  call void @llvm.dbg.value(metadata i64 %length.1, metadata !1019, metadata !DIExpression()), !dbg !1032
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !1046
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1018, metadata !DIExpression()), !dbg !1032
  br label %for.cond, !dbg !1047, !llvm.loop !1048

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata ptr null, metadata !1016, metadata !DIExpression()), !dbg !1032
  %cmp19 = icmp ult i64 %length.0, -4095, !dbg !1050
  br i1 %cmp19, label %if.end23, label %if.then26, !dbg !1052

if.end23:                                         ; preds = %for.end
  %add = add i64 %length.0, 4096, !dbg !1053
  %call22 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 1) #27, !dbg !1054
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1016, metadata !DIExpression()), !dbg !1032
  %cmp24 = icmp eq ptr %call22, null, !dbg !1055
  br i1 %cmp24, label %if.then26, label %if.end34, !dbg !1056

if.then26:                                        ; preds = %for.end, %if.end23
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception28) #24, !dbg !1057
  call void @llvm.dbg.declare(metadata ptr %exception28, metadata !1031, metadata !DIExpression()), !dbg !1057
  call void @GetExceptionInfo(ptr noundef nonnull %exception28) #24, !dbg !1057
  %call29 = tail call ptr @__errno_location() #25, !dbg !1057
  %2 = load i32, ptr %call29, align 4, !dbg !1057, !tbaa !259
  %call30 = call ptr @GetExceptionMessage(i32 noundef %2) #24, !dbg !1057
  call void @llvm.dbg.value(metadata ptr %call30, metadata !1028, metadata !DIExpression()), !dbg !1058
  %call31 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception28, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 938, i32 noundef 700, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef %call30) #24, !dbg !1057
  %call32 = call ptr @DestroyString(ptr noundef %call30), !dbg !1057
  call void @llvm.dbg.value(metadata ptr %call32, metadata !1028, metadata !DIExpression()), !dbg !1058
  call void @CatchException(ptr noundef nonnull %exception28) #24, !dbg !1057
  %call33 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception28) #24, !dbg !1057
  call void @MagickCoreTerminus() #24, !dbg !1057
  call void @_exit(i32 noundef 1) #26, !dbg !1057
  unreachable, !dbg !1057

if.end34:                                         ; preds = %if.end23
  store i8 0, ptr %call22, align 1, !dbg !1059, !tbaa !271
  %cmp35.not = icmp eq ptr %source, null, !dbg !1060
  br i1 %cmp35.not, label %if.end58, label %for.cond38, !dbg !1062

for.cond38:                                       ; preds = %if.end34, %if.end53
  %p.1 = phi ptr [ %incdec.ptr56, %if.end53 ], [ %source, %if.end34 ], !dbg !1063
  %q.0 = phi ptr [ %incdec.ptr54, %if.end53 ], [ %call22, %if.end34 ], !dbg !1066
  call void @llvm.dbg.value(metadata ptr %q.0, metadata !1017, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !1018, metadata !DIExpression()), !dbg !1032
  %3 = load i8, ptr %p.1, align 1, !dbg !1067, !tbaa !271
  switch i8 %3, label %lor.lhs.false46 [
    i8 0, label %for.end57
    i8 92, label %if.then51
  ], !dbg !1069

lor.lhs.false46:                                  ; preds = %for.cond38
  %cmp49 = icmp eq i8 %3, %escape, !dbg !1070
  br i1 %cmp49, label %if.then51, label %if.end53, !dbg !1073

if.then51:                                        ; preds = %for.cond38, %lor.lhs.false46
  %incdec.ptr52 = getelementptr inbounds i8, ptr %q.0, i64 1, !dbg !1074
  call void @llvm.dbg.value(metadata ptr %incdec.ptr52, metadata !1017, metadata !DIExpression()), !dbg !1032
  store i8 92, ptr %q.0, align 1, !dbg !1075, !tbaa !271
  %.pre = load i8, ptr %p.1, align 1, !dbg !1076, !tbaa !271
  br label %if.end53, !dbg !1077

if.end53:                                         ; preds = %if.then51, %lor.lhs.false46
  %4 = phi i8 [ %.pre, %if.then51 ], [ %3, %lor.lhs.false46 ], !dbg !1076
  %q.1 = phi ptr [ %incdec.ptr52, %if.then51 ], [ %q.0, %lor.lhs.false46 ], !dbg !1066
  call void @llvm.dbg.value(metadata ptr %q.1, metadata !1017, metadata !DIExpression()), !dbg !1032
  %incdec.ptr54 = getelementptr inbounds i8, ptr %q.1, i64 1, !dbg !1078
  call void @llvm.dbg.value(metadata ptr %incdec.ptr54, metadata !1017, metadata !DIExpression()), !dbg !1032
  store i8 %4, ptr %q.1, align 1, !dbg !1079, !tbaa !271
  %incdec.ptr56 = getelementptr inbounds i8, ptr %p.1, i64 1, !dbg !1080
  call void @llvm.dbg.value(metadata ptr %incdec.ptr56, metadata !1018, metadata !DIExpression()), !dbg !1032
  br label %for.cond38, !dbg !1081, !llvm.loop !1082

for.end57:                                        ; preds = %for.cond38
  store i8 0, ptr %q.0, align 1, !dbg !1084, !tbaa !271
  br label %if.end58, !dbg !1085

if.end58:                                         ; preds = %for.end57, %if.end34
  ret ptr %call22, !dbg !1086
}

; Function Attrs: nounwind uwtable
define dso_local ptr @FileToString(ptr noundef %filename, i64 noundef %extent, ptr noundef %exception) local_unnamed_addr #0 !dbg !1087 {
entry:
  %length = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1091, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %extent, metadata !1092, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1093, metadata !DIExpression()), !dbg !1095
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length) #24, !dbg !1096
  call void @llvm.dbg.value(metadata ptr %length, metadata !1094, metadata !DIExpression(DW_OP_deref)), !dbg !1095
  %call = call ptr @FileToBlob(ptr noundef %filename, i64 noundef %extent, ptr noundef nonnull %length, ptr noundef %exception) #24, !dbg !1097
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length) #24, !dbg !1098
  ret ptr %call, !dbg !1099
}

declare !dbg !1100 ptr @FileToBlob(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @FileToStringInfo(ptr noundef %filename, i64 noundef %extent, ptr noundef %exception) local_unnamed_addr #0 !dbg !1104 {
entry:
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1108, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %extent, metadata !1109, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1110, metadata !DIExpression()), !dbg !1112
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1026, ptr noundef nonnull @.str.7, ptr noundef %filename) #24, !dbg !1113
  %call1 = tail call ptr @AcquireStringInfo(i64 noundef 0), !dbg !1114
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1111, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata ptr %call1, metadata !790, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %filename, metadata !793, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 4096, metadata !794, metadata !DIExpression()), !dbg !1115
  %cmp.i = icmp eq ptr %filename, null, !dbg !1117
  br i1 %cmp.i, label %CopyMagickString.exit, label %for.body.i, !dbg !1118

for.body.i:                                       ; preds = %entry, %if.end38.i
  %n.0134.i = phi i64 [ %sub40.i, %if.end38.i ], [ 4096, %entry ]
  %p.0133.i = phi ptr [ %incdec.ptr29.i, %if.end38.i ], [ %filename, %entry ]
  %q.0132.i = phi ptr [ %incdec.ptr39.i, %if.end38.i ], [ %call1, %entry ]
  call void @llvm.dbg.value(metadata i64 %n.0134.i, metadata !797, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %q.0132.i, metadata !795, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1115
  %0 = load i8, ptr %p.0133.i, align 1, !dbg !1119, !tbaa !271
  store i8 %0, ptr %q.0132.i, align 1, !dbg !1120, !tbaa !271
  %cmp2.i = icmp eq i8 %0, 0, !dbg !1121
  br i1 %cmp2.i, label %CopyMagickString.exit, label %if.end5.i, !dbg !1122

if.end5.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.0133.i, i64 1, !dbg !1123
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !796, metadata !DIExpression()), !dbg !1115
  %incdec.ptr6.i = getelementptr inbounds i8, ptr %q.0132.i, i64 1, !dbg !1124
  call void @llvm.dbg.value(metadata ptr %incdec.ptr6.i, metadata !795, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1115
  %1 = load i8, ptr %incdec.ptr.i, align 1, !dbg !1125, !tbaa !271
  store i8 %1, ptr %incdec.ptr6.i, align 1, !dbg !1126, !tbaa !271
  %cmp9.i = icmp eq i8 %1, 0, !dbg !1127
  br i1 %cmp9.i, label %CopyMagickString.exit, label %if.end16.i, !dbg !1128

if.end16.i:                                       ; preds = %if.end5.i
  %incdec.ptr7.i = getelementptr inbounds i8, ptr %p.0133.i, i64 2, !dbg !1129
  call void @llvm.dbg.value(metadata ptr %incdec.ptr7.i, metadata !796, metadata !DIExpression()), !dbg !1115
  %incdec.ptr17.i = getelementptr inbounds i8, ptr %q.0132.i, i64 2, !dbg !1130
  call void @llvm.dbg.value(metadata ptr %incdec.ptr17.i, metadata !795, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1115
  %2 = load i8, ptr %incdec.ptr7.i, align 1, !dbg !1131, !tbaa !271
  store i8 %2, ptr %incdec.ptr17.i, align 1, !dbg !1132, !tbaa !271
  %cmp20.i = icmp eq i8 %2, 0, !dbg !1133
  br i1 %cmp20.i, label %CopyMagickString.exit, label %if.end27.i, !dbg !1134

if.end27.i:                                       ; preds = %if.end16.i
  %incdec.ptr18.i = getelementptr inbounds i8, ptr %p.0133.i, i64 3, !dbg !1135
  call void @llvm.dbg.value(metadata ptr %incdec.ptr18.i, metadata !796, metadata !DIExpression()), !dbg !1115
  %incdec.ptr28.i = getelementptr inbounds i8, ptr %q.0132.i, i64 3, !dbg !1136
  call void @llvm.dbg.value(metadata ptr %incdec.ptr28.i, metadata !795, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1115
  %3 = load i8, ptr %incdec.ptr18.i, align 1, !dbg !1137, !tbaa !271
  store i8 %3, ptr %incdec.ptr28.i, align 1, !dbg !1138, !tbaa !271
  %cmp31.i = icmp eq i8 %3, 0, !dbg !1139
  br i1 %cmp31.i, label %CopyMagickString.exit, label %if.end38.i, !dbg !1140

if.end38.i:                                       ; preds = %if.end27.i
  %incdec.ptr29.i = getelementptr inbounds i8, ptr %p.0133.i, i64 4, !dbg !1141
  call void @llvm.dbg.value(metadata ptr %incdec.ptr29.i, metadata !796, metadata !DIExpression()), !dbg !1115
  %incdec.ptr39.i = getelementptr inbounds i8, ptr %q.0132.i, i64 4, !dbg !1142
  call void @llvm.dbg.value(metadata ptr %incdec.ptr39.i, metadata !795, metadata !DIExpression()), !dbg !1115
  %sub40.i = add nsw i64 %n.0134.i, -4, !dbg !1143
  call void @llvm.dbg.value(metadata i64 %sub40.i, metadata !797, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1115
  %cmp1.i = icmp ugt i64 %sub40.i, 4, !dbg !1144
  br i1 %cmp1.i, label %for.body.i, label %for.body47.i, !dbg !1145, !llvm.loop !1146

for.body47.i:                                     ; preds = %if.end38.i, %if.end57.i
  %n.1141.i = phi i64 [ %n.1.i, %if.end57.i ], [ 3, %if.end38.i ]
  %p.1140.i = phi ptr [ %incdec.ptr48.i, %if.end57.i ], [ %incdec.ptr29.i, %if.end38.i ]
  %q.1139.i = phi ptr [ %incdec.ptr58.i, %if.end57.i ], [ %incdec.ptr39.i, %if.end38.i ]
  call void @llvm.dbg.value(metadata ptr %q.1139.i, metadata !795, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %p.1140.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1115
  %4 = load i8, ptr %p.1140.i, align 1, !dbg !1148, !tbaa !271
  store i8 %4, ptr %q.1139.i, align 1, !dbg !1149, !tbaa !271
  %cmp50.i = icmp eq i8 %4, 0, !dbg !1150
  br i1 %cmp50.i, label %CopyMagickString.exit, label %if.end57.i, !dbg !1151

if.end57.i:                                       ; preds = %for.body47.i
  %incdec.ptr48.i = getelementptr inbounds i8, ptr %p.1140.i, i64 1, !dbg !1152
  call void @llvm.dbg.value(metadata ptr %incdec.ptr48.i, metadata !796, metadata !DIExpression()), !dbg !1115
  %incdec.ptr58.i = getelementptr inbounds i8, ptr %q.1139.i, i64 1, !dbg !1153
  call void @llvm.dbg.value(metadata ptr %incdec.ptr58.i, metadata !795, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %n.1141.i, metadata !797, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1115
  %n.1.i = add nsw i64 %n.1141.i, -1, !dbg !1154
  call void @llvm.dbg.value(metadata i64 %n.1.i, metadata !797, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %p.1140.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1115
  %cmp45.not.i = icmp eq i64 %n.1.i, 0, !dbg !1155
  br i1 %cmp45.not.i, label %if.end62.i, label %for.body47.i, !dbg !1156, !llvm.loop !1157

if.end62.i:                                       ; preds = %if.end57.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !796, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %incdec.ptr58.i, metadata !795, metadata !DIExpression()), !dbg !1115
  store i8 0, ptr %incdec.ptr58.i, align 1, !dbg !1159, !tbaa !271
  br label %CopyMagickString.exit, !dbg !1160

CopyMagickString.exit:                            ; preds = %if.end27.i, %if.end16.i, %if.end5.i, %for.body.i, %for.body47.i, %entry, %if.end62.i
  %length = getelementptr inbounds %struct._StringInfo, ptr %call1, i64 0, i32 2, !dbg !1161
  %call3 = tail call ptr @FileToBlob(ptr noundef %filename, i64 noundef %extent, ptr noundef nonnull %length, ptr noundef %exception) #24, !dbg !1162
  %datum = getelementptr inbounds %struct._StringInfo, ptr %call1, i64 0, i32 1, !dbg !1163
  store ptr %call3, ptr %datum, align 8, !dbg !1164, !tbaa !345
  %cmp = icmp eq ptr %call3, null, !dbg !1165
  br i1 %cmp, label %DestroyStringInfo.exit, label %cleanup, !dbg !1167

DestroyStringInfo.exit:                           ; preds = %CopyMagickString.exit
  %signature.i = getelementptr inbounds %struct._StringInfo, ptr %call1, i64 0, i32 3, !dbg !1168
  store i64 -2880220588, ptr %signature.i, align 8, !dbg !1171, !tbaa !336
  %call3.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1) #24, !dbg !1172
  call void @llvm.dbg.value(metadata ptr %call3.i, metadata !391, metadata !DIExpression()) #24, !dbg !1173
  call void @llvm.dbg.value(metadata ptr undef, metadata !1111, metadata !DIExpression()), !dbg !1112
  br label %cleanup, !dbg !1174

cleanup:                                          ; preds = %CopyMagickString.exit, %DestroyStringInfo.exit
  %retval.0 = phi ptr [ null, %DestroyStringInfo.exit ], [ %call1, %CopyMagickString.exit ], !dbg !1112
  ret ptr %retval.0, !dbg !1175
}

declare !dbg !1176 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @FormatMagickSize(i64 noundef %size, i32 noundef %bi, ptr noundef %format) local_unnamed_addr #0 !dbg !2 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !203, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i32 %bi, metadata !204, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata ptr %format, metadata !205, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata double 1.000000e+03, metadata !208, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata ptr @FormatMagickSize.traditional_units, metadata !206, metadata !DIExpression()), !dbg !1181
  %cmp.not = icmp eq i32 %bi, 0, !dbg !1182
  %spec.select = select i1 %cmp.not, ptr @FormatMagickSize.traditional_units, ptr @FormatMagickSize.bi_units, !dbg !1184
  %spec.select30 = select i1 %cmp.not, double 1.000000e+03, double 1.024000e+03, !dbg !1184
  call void @llvm.dbg.value(metadata double %spec.select30, metadata !208, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !206, metadata !DIExpression()), !dbg !1181
  %conv = uitofp i64 %size to double, !dbg !1185
  call void @llvm.dbg.value(metadata double %conv, metadata !209, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 0, metadata !210, metadata !DIExpression()), !dbg !1181
  %cmp131 = fcmp ugt double %spec.select30, %conv, !dbg !1186
  br i1 %cmp131, label %for.end, label %land.rhs, !dbg !1189

land.rhs:                                         ; preds = %entry, %for.body
  %i.033 = phi i64 [ %add, %for.body ], [ 0, %entry ]
  %length.032 = phi double [ %div, %for.body ], [ %conv, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.033, metadata !210, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata double %length.032, metadata !209, metadata !DIExpression()), !dbg !1181
  %add = add nuw nsw i64 %i.033, 1, !dbg !1190
  %arrayidx = getelementptr inbounds ptr, ptr %spec.select, i64 %add, !dbg !1191
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !1191, !tbaa !434
  %cmp3.not = icmp eq ptr %0, null, !dbg !1192
  br i1 %cmp3.not, label %for.end, label %for.body, !dbg !1193

for.body:                                         ; preds = %land.rhs
  %div = fdiv double %length.032, %spec.select30, !dbg !1194
  call void @llvm.dbg.value(metadata i64 %add, metadata !210, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata double %div, metadata !209, metadata !DIExpression()), !dbg !1181
  %cmp1 = fcmp ult double %div, %spec.select30, !dbg !1186
  br i1 %cmp1, label %for.end, label %land.rhs, !dbg !1189, !llvm.loop !1195

for.end:                                          ; preds = %land.rhs, %for.body, %entry
  %length.0.lcssa = phi double [ %conv, %entry ], [ %div, %for.body ], [ %length.032, %land.rhs ], !dbg !1181
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %add, %for.body ], [ %i.033, %land.rhs ], !dbg !1197
  call void @llvm.dbg.value(metadata i64 0, metadata !212, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 2, metadata !211, metadata !DIExpression()), !dbg !1181
  %arrayidx11 = getelementptr inbounds ptr, ptr %spec.select, i64 %i.0.lcssa
  %1 = load ptr, ptr %arrayidx11, align 8, !tbaa !434
  br label %for.body8, !dbg !1198

for.body8:                                        ; preds = %for.body8, %for.end
  %j.037 = phi i64 [ 2, %for.end ], [ %inc18, %for.body8 ]
  call void @llvm.dbg.value(metadata i64 %j.037, metadata !211, metadata !DIExpression()), !dbg !1181
  %add9 = add nuw nsw i64 %j.037, %i.0.lcssa, !dbg !1200
  %conv10 = trunc i64 %add9 to i32, !dbg !1203
  %call = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %format, i64 noundef 4096, ptr noundef nonnull @.str.24, i32 noundef %conv10, double noundef %length.0.lcssa, ptr noundef %1) #24, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %call, metadata !212, metadata !DIExpression()), !dbg !1181
  %call12 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %format, i32 noundef 43) #23, !dbg !1205
  %cmp13 = icmp eq ptr %call12, null, !dbg !1207
  call void @llvm.dbg.value(metadata i64 %j.037, metadata !211, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1181
  %inc18 = add nuw nsw i64 %j.037, 1
  %exitcond.not = icmp eq i64 %inc18, 12
  %or.cond = select i1 %cmp13, i1 true, i1 %exitcond.not, !dbg !1208
  call void @llvm.dbg.value(metadata i64 %call, metadata !212, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %j.037, metadata !211, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1181
  br i1 %or.cond, label %for.end19, label %for.body8, !dbg !1208, !llvm.loop !1209

for.end19:                                        ; preds = %for.body8
  call void @llvm.dbg.value(metadata i64 %call, metadata !212, metadata !DIExpression()), !dbg !1181
  ret i64 %call, !dbg !1211
}

declare !dbg !1212 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @FormatMagickTime(i64 noundef %time, i64 noundef %length, ptr noundef %timestamp) local_unnamed_addr #0 !dbg !1218 {
entry:
  %time.addr = alloca i64, align 8
  %gm_time = alloca %struct.tm, align 8
  %local_time = alloca %struct.tm, align 8
  call void @llvm.dbg.value(metadata i64 %time, metadata !1223, metadata !DIExpression()), !dbg !1234
  store i64 %time, ptr %time.addr, align 8, !tbaa !1235
  call void @llvm.dbg.value(metadata i64 %length, metadata !1224, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata ptr %timestamp, metadata !1225, metadata !DIExpression()), !dbg !1234
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %gm_time) #24, !dbg !1236
  call void @llvm.dbg.declare(metadata ptr %gm_time, metadata !1227, metadata !DIExpression()), !dbg !1237
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %local_time) #24, !dbg !1236
  call void @llvm.dbg.declare(metadata ptr %local_time, metadata !1228, metadata !DIExpression()), !dbg !1238
  %call = call ptr @ResetMagickMemory(ptr noundef nonnull %local_time, i32 noundef 0, i64 noundef 56) #24, !dbg !1239
  %call1 = call ptr @ResetMagickMemory(ptr noundef nonnull %gm_time, i32 noundef 0, i64 noundef 56) #24, !dbg !1240
  call void @llvm.dbg.value(metadata ptr %time.addr, metadata !1223, metadata !DIExpression(DW_OP_deref)), !dbg !1234
  %call2 = call ptr @localtime(ptr noundef nonnull %time.addr) #24, !dbg !1241
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1230, metadata !DIExpression()), !dbg !1242
  %cmp.not = icmp eq ptr %call2, null, !dbg !1243
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1245

if.then:                                          ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %local_time, ptr noundef nonnull align 8 dereferenceable(56) %call2, i64 56, i1 false), !dbg !1246
  br label %if.end, !dbg !1247

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr %time.addr, metadata !1223, metadata !DIExpression(DW_OP_deref)), !dbg !1234
  %call4 = call ptr @gmtime(ptr noundef nonnull %time.addr) #24, !dbg !1248
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1232, metadata !DIExpression()), !dbg !1249
  %cmp5.not = icmp eq ptr %call4, null, !dbg !1250
  br i1 %cmp5.not, label %if.end7, label %if.then6, !dbg !1252

if.then6:                                         ; preds = %if.end
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %gm_time, ptr noundef nonnull align 8 dereferenceable(56) %call4, i64 56, i1 false), !dbg !1253
  br label %if.end7, !dbg !1254

if.end7:                                          ; preds = %if.then6, %if.end
  %tm_min = getelementptr inbounds %struct.tm, ptr %local_time, i64 0, i32 1, !dbg !1255
  %0 = load i32, ptr %tm_min, align 4, !dbg !1255, !tbaa !1256
  %tm_min8 = getelementptr inbounds %struct.tm, ptr %gm_time, i64 0, i32 1, !dbg !1258
  %1 = load i32, ptr %tm_min8, align 4, !dbg !1258, !tbaa !1256
  %tm_hour = getelementptr inbounds %struct.tm, ptr %local_time, i64 0, i32 2, !dbg !1259
  %2 = load i32, ptr %tm_hour, align 8, !dbg !1259, !tbaa !1260
  %tm_hour9 = getelementptr inbounds %struct.tm, ptr %gm_time, i64 0, i32 2, !dbg !1261
  %3 = load i32, ptr %tm_hour9, align 8, !dbg !1261, !tbaa !1260
  %tm_year = getelementptr inbounds %struct.tm, ptr %local_time, i64 0, i32 5, !dbg !1262
  %4 = load i32, ptr %tm_year, align 4, !dbg !1262, !tbaa !1263
  %tm_year11 = getelementptr inbounds %struct.tm, ptr %gm_time, i64 0, i32 5, !dbg !1264
  %5 = load i32, ptr %tm_year11, align 4, !dbg !1264, !tbaa !1263
  %sub12 = sub nsw i32 %4, %5, !dbg !1265
  %cmp13.not = icmp eq i32 %sub12, 0, !dbg !1266
  br i1 %cmp13.not, label %cond.false, label %cond.end, !dbg !1267

cond.false:                                       ; preds = %if.end7
  %tm_yday = getelementptr inbounds %struct.tm, ptr %local_time, i64 0, i32 7, !dbg !1268
  %6 = load i32, ptr %tm_yday, align 4, !dbg !1268, !tbaa !1269
  %tm_yday17 = getelementptr inbounds %struct.tm, ptr %gm_time, i64 0, i32 7, !dbg !1270
  %7 = load i32, ptr %tm_yday17, align 4, !dbg !1270, !tbaa !1269
  %sub18 = sub nsw i32 %6, %7, !dbg !1271
  br label %cond.end, !dbg !1267

cond.end:                                         ; preds = %if.end7, %cond.false
  %cond = phi i32 [ %sub18, %cond.false ], [ %sub12, %if.end7 ], !dbg !1267
  %sub = sub nsw i32 %0, %1, !dbg !1272
  %div = sdiv i32 %sub, 60, !dbg !1273
  %add = add nsw i32 %div, %2, !dbg !1274
  %sub10 = sub i32 %add, %3, !dbg !1275
  %mul = mul nsw i32 %cond, 24, !dbg !1276
  %add19 = add nsw i32 %sub10, %mul, !dbg !1277
  %conv = sext i32 %add19 to i64, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %conv, metadata !1229, metadata !DIExpression()), !dbg !1234
  %add21 = add nsw i32 %4, 1900, !dbg !1279
  %tm_mon = getelementptr inbounds %struct.tm, ptr %local_time, i64 0, i32 4, !dbg !1280
  %8 = load i32, ptr %tm_mon, align 8, !dbg !1280, !tbaa !1281
  %add22 = add nsw i32 %8, 1, !dbg !1282
  %tm_mday = getelementptr inbounds %struct.tm, ptr %local_time, i64 0, i32 3, !dbg !1283
  %9 = load i32, ptr %tm_mday, align 4, !dbg !1283, !tbaa !1284
  %10 = load i32, ptr %local_time, align 8, !dbg !1285, !tbaa !1286
  %call25 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %timestamp, i64 noundef %length, ptr noundef nonnull @.str.25, i32 noundef %add21, i32 noundef %add22, i32 noundef %9, i32 noundef %2, i32 noundef %0, i32 noundef %10, i64 noundef %conv) #24, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %call25, metadata !1226, metadata !DIExpression()), !dbg !1234
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %local_time) #24, !dbg !1288
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %gm_time) #24, !dbg !1288
  ret i64 %call25, !dbg !1289
}

; Function Attrs: nounwind
declare !dbg !1290 ptr @localtime(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !1295 ptr @gmtime(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local noalias ptr @GetEnvironmentValue(ptr nocapture noundef readnone %name) local_unnamed_addr #16 !dbg !1296 {
entry:
  call void @llvm.dbg.value(metadata ptr %name, metadata !1298, metadata !DIExpression()), !dbg !1299
  ret ptr null, !dbg !1300
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @GetStringInfoDatum(ptr nocapture noundef readonly %string_info) local_unnamed_addr #17 !dbg !1301 {
entry:
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !1305, metadata !DIExpression()), !dbg !1306
  %datum = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 1, !dbg !1307
  %0 = load ptr, ptr %datum, align 8, !dbg !1307, !tbaa !345
  ret ptr %0, !dbg !1308
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @GetStringInfoLength(ptr nocapture noundef readonly %string_info) local_unnamed_addr #17 !dbg !1309 {
entry:
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !1313, metadata !DIExpression()), !dbg !1314
  %length = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 2, !dbg !1315
  %0 = load i64, ptr %length, align 8, !dbg !1315, !tbaa !342
  ret i64 %0, !dbg !1316
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local ptr @GetStringInfoPath(ptr noundef readnone returned %string_info) local_unnamed_addr #16 !dbg !1317 {
entry:
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !1321, metadata !DIExpression()), !dbg !1322
  ret ptr %string_info, !dbg !1323
}

; Function Attrs: nounwind uwtable
define dso_local double @InterpretSiPrefixValue(ptr noalias noundef %string, ptr noalias noundef writeonly %sentinal) local_unnamed_addr #0 !dbg !1324 {
entry:
  %q = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %string, metadata !1329, metadata !DIExpression()), !dbg !1338
  call void @llvm.dbg.value(metadata ptr %sentinal, metadata !1330, metadata !DIExpression()), !dbg !1338
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q) #24, !dbg !1339
  call void @llvm.dbg.value(metadata ptr %q, metadata !1331, metadata !DIExpression(DW_OP_deref)), !dbg !1338
  %call = call double @InterpretLocaleValue(ptr noundef %string, ptr noundef nonnull %q) #24, !dbg !1340
  call void @llvm.dbg.value(metadata double %call, metadata !1332, metadata !DIExpression()), !dbg !1338
  %0 = load ptr, ptr %q, align 8, !dbg !1341, !tbaa !434
  call void @llvm.dbg.value(metadata ptr %0, metadata !1331, metadata !DIExpression()), !dbg !1338
  %cmp.not = icmp eq ptr %0, %string, !dbg !1342
  br i1 %cmp.not, label %if.end45, label %if.then, !dbg !1343

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %0, align 1, !dbg !1344, !tbaa !271
  %2 = add i8 %1, -69, !dbg !1345
  %3 = icmp ult i8 %2, 54, !dbg !1345
  br i1 %3, label %if.then6, label %if.end38, !dbg !1345

if.then6:                                         ; preds = %if.then
  switch i8 %1, label %if.end45 [
    i8 89, label %sw.bb26
    i8 90, label %sw.bb25
    i8 69, label %sw.bb24
    i8 80, label %sw.bb23
    i8 84, label %sw.bb22
    i8 71, label %sw.bb21
    i8 77, label %sw.bb20
    i8 75, label %sw.bb19
    i8 107, label %sw.bb18
    i8 104, label %if.then29
  ], !dbg !1346

sw.bb18:                                          ; preds = %if.then6
  call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !1333, metadata !DIExpression()), !dbg !1347
  br label %if.then29, !dbg !1348

sw.bb19:                                          ; preds = %if.then6
  call void @llvm.dbg.value(metadata double 3.000000e+00, metadata !1333, metadata !DIExpression()), !dbg !1347
  br label %if.then29, !dbg !1350

sw.bb20:                                          ; preds = %if.then6
  call void @llvm.dbg.value(metadata double 6.000000e+00, metadata !1333, metadata !DIExpression()), !dbg !1347
  br label %if.then29, !dbg !1351

sw.bb21:                                          ; preds = %if.then6
  call void @llvm.dbg.value(metadata double 9.000000e+00, metadata !1333, metadata !DIExpression()), !dbg !1347
  br label %if.then29, !dbg !1352

sw.bb22:                                          ; preds = %if.then6
  call void @llvm.dbg.value(metadata double 1.200000e+01, metadata !1333, metadata !DIExpression()), !dbg !1347
  br label %if.then29, !dbg !1353

sw.bb23:                                          ; preds = %if.then6
  call void @llvm.dbg.value(metadata double 1.500000e+01, metadata !1333, metadata !DIExpression()), !dbg !1347
  br label %if.then29, !dbg !1354

sw.bb24:                                          ; preds = %if.then6
  call void @llvm.dbg.value(metadata double 1.800000e+01, metadata !1333, metadata !DIExpression()), !dbg !1347
  br label %if.then29, !dbg !1355

sw.bb25:                                          ; preds = %if.then6
  call void @llvm.dbg.value(metadata double 2.100000e+01, metadata !1333, metadata !DIExpression()), !dbg !1347
  br label %if.then29, !dbg !1356

sw.bb26:                                          ; preds = %if.then6
  call void @llvm.dbg.value(metadata double 2.400000e+01, metadata !1333, metadata !DIExpression()), !dbg !1347
  br label %if.then29, !dbg !1357

if.then29:                                        ; preds = %if.then6, %sw.bb18, %sw.bb19, %sw.bb20, %sw.bb21, %sw.bb22, %sw.bb23, %sw.bb24, %sw.bb25, %sw.bb26
  %e.0 = phi double [ 2.400000e+01, %sw.bb26 ], [ 2.100000e+01, %sw.bb25 ], [ 1.800000e+01, %sw.bb24 ], [ 1.500000e+01, %sw.bb23 ], [ 1.200000e+01, %sw.bb22 ], [ 9.000000e+00, %sw.bb21 ], [ 6.000000e+00, %sw.bb20 ], [ 3.000000e+00, %sw.bb19 ], [ 3.000000e+00, %sw.bb18 ], [ 2.000000e+00, %if.then6 ], !dbg !1358
  call void @llvm.dbg.value(metadata double %e.0, metadata !1333, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr %0, metadata !1331, metadata !DIExpression()), !dbg !1338
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 1, !dbg !1359
  %4 = load i8, ptr %arrayidx, align 1, !dbg !1359, !tbaa !271
  %cmp31 = icmp eq i8 %4, 105, !dbg !1363
  br i1 %cmp31, label %if.then33, label %if.else, !dbg !1364

if.then33:                                        ; preds = %if.then29
  %div = fdiv double %e.0, 3.000000e-01, !dbg !1365
  %exp2 = call double @exp2(double %div) #24, !dbg !1367
  call void @llvm.dbg.value(metadata double undef, metadata !1332, metadata !DIExpression()), !dbg !1338
  %5 = load ptr, ptr %q, align 8, !dbg !1368, !tbaa !434
  call void @llvm.dbg.value(metadata ptr %5, metadata !1331, metadata !DIExpression()), !dbg !1338
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 2, !dbg !1368
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1331, metadata !DIExpression()), !dbg !1338
  br label %if.end38thread-pre-split, !dbg !1369

if.else:                                          ; preds = %if.then29
  %call35 = call double @pow(double noundef 1.000000e+01, double noundef %e.0) #24, !dbg !1370
  call void @llvm.dbg.value(metadata double undef, metadata !1332, metadata !DIExpression()), !dbg !1338
  %6 = load ptr, ptr %q, align 8, !dbg !1372, !tbaa !434
  call void @llvm.dbg.value(metadata ptr %6, metadata !1331, metadata !DIExpression()), !dbg !1338
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1, !dbg !1372
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1331, metadata !DIExpression()), !dbg !1338
  br label %if.end38thread-pre-split

if.end38thread-pre-split:                         ; preds = %if.then33, %if.else
  %.ph = phi ptr [ %incdec.ptr, %if.else ], [ %add.ptr, %if.then33 ]
  %call35.pn = phi double [ %call35, %if.else ], [ %exp2, %if.then33 ]
  %value.1.ph = fmul double %call, %call35.pn, !dbg !1373
  store ptr %.ph, ptr %q, align 8, !dbg !1373, !tbaa !434
  %.pr = load i8, ptr %.ph, align 1, !dbg !1374, !tbaa !271
  br label %if.end38, !dbg !1374

if.end38:                                         ; preds = %if.end38thread-pre-split, %if.then
  %7 = phi i8 [ %.pr, %if.end38thread-pre-split ], [ %1, %if.then ], !dbg !1374
  %8 = phi ptr [ %.ph, %if.end38thread-pre-split ], [ %0, %if.then ], !dbg !1376
  %value.1 = phi double [ %value.1.ph, %if.end38thread-pre-split ], [ %call, %if.then ], !dbg !1338
  call void @llvm.dbg.value(metadata double %value.1, metadata !1332, metadata !DIExpression()), !dbg !1338
  call void @llvm.dbg.value(metadata ptr %8, metadata !1331, metadata !DIExpression()), !dbg !1338
  %cmp40 = icmp eq i8 %7, 66, !dbg !1377
  %spec.select.idx = zext i1 %cmp40 to i64, !dbg !1378
  %spec.select = getelementptr i8, ptr %8, i64 %spec.select.idx, !dbg !1378
  br label %if.end45, !dbg !1378

if.end45:                                         ; preds = %if.end38, %if.then6, %entry
  %9 = phi ptr [ %string, %entry ], [ %0, %if.then6 ], [ %spec.select, %if.end38 ]
  %value.2 = phi double [ %call, %entry ], [ %call, %if.then6 ], [ %value.1, %if.end38 ], !dbg !1338
  call void @llvm.dbg.value(metadata double %value.2, metadata !1332, metadata !DIExpression()), !dbg !1338
  %cmp46.not = icmp eq ptr %sentinal, null, !dbg !1379
  br i1 %cmp46.not, label %if.end49, label %if.then48, !dbg !1381

if.then48:                                        ; preds = %if.end45
  call void @llvm.dbg.value(metadata ptr %9, metadata !1331, metadata !DIExpression()), !dbg !1338
  store ptr %9, ptr %sentinal, align 8, !dbg !1382, !tbaa !434
  br label %if.end49, !dbg !1383

if.end49:                                         ; preds = %if.then48, %if.end45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q) #24, !dbg !1384
  ret double %value.2, !dbg !1385
}

declare !dbg !1386 double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @pow(double noundef, double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define dso_local i32 @IsStringTrue(ptr noundef readonly %value) local_unnamed_addr #11 !dbg !1387 {
entry:
  call void @llvm.dbg.value(metadata ptr %value, metadata !1391, metadata !DIExpression()), !dbg !1392
  %cmp = icmp eq ptr %value, null, !dbg !1393
  br i1 %cmp, label %return, label %LocaleCompare.exit, !dbg !1395

LocaleCompare.exit:                               ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %value, metadata !1396, metadata !DIExpression()) #24, !dbg !1402
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !1401, metadata !DIExpression()) #24, !dbg !1402
  %call.i = tail call i32 @strcasecmp(ptr noundef nonnull %value, ptr noundef nonnull @.str.26) #23, !dbg !1405
  %cmp1 = icmp eq i32 %call.i, 0, !dbg !1406
  br i1 %cmp1, label %return, label %LocaleCompare.exit25, !dbg !1407

LocaleCompare.exit25:                             ; preds = %LocaleCompare.exit
  call void @llvm.dbg.value(metadata ptr %value, metadata !1396, metadata !DIExpression()) #24, !dbg !1408
  call void @llvm.dbg.value(metadata ptr @.str.27, metadata !1401, metadata !DIExpression()) #24, !dbg !1408
  %call.i22 = tail call i32 @strcasecmp(ptr noundef nonnull %value, ptr noundef nonnull @.str.27) #23, !dbg !1411
  %cmp5 = icmp eq i32 %call.i22, 0, !dbg !1412
  br i1 %cmp5, label %return, label %LocaleCompare.exit31, !dbg !1413

LocaleCompare.exit31:                             ; preds = %LocaleCompare.exit25
  call void @llvm.dbg.value(metadata ptr %value, metadata !1396, metadata !DIExpression()) #24, !dbg !1414
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !1401, metadata !DIExpression()) #24, !dbg !1414
  %call.i28 = tail call i32 @strcasecmp(ptr noundef nonnull %value, ptr noundef nonnull @.str.28) #23, !dbg !1417
  %cmp9 = icmp eq i32 %call.i28, 0, !dbg !1418
  br i1 %cmp9, label %return, label %LocaleCompare.exit37, !dbg !1419

LocaleCompare.exit37:                             ; preds = %LocaleCompare.exit31
  call void @llvm.dbg.value(metadata ptr %value, metadata !1396, metadata !DIExpression()) #24, !dbg !1420
  call void @llvm.dbg.value(metadata ptr @.str.29, metadata !1401, metadata !DIExpression()) #24, !dbg !1420
  %call.i34 = tail call i32 @strcasecmp(ptr noundef nonnull %value, ptr noundef nonnull @.str.29) #23, !dbg !1423
  %cmp13 = icmp eq i32 %call.i34, 0, !dbg !1424
  %. = zext i1 %cmp13 to i32, !dbg !1392
  br label %return, !dbg !1392

return:                                           ; preds = %LocaleCompare.exit37, %LocaleCompare.exit31, %LocaleCompare.exit25, %LocaleCompare.exit, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %LocaleCompare.exit ], [ 1, %LocaleCompare.exit25 ], [ 1, %LocaleCompare.exit31 ], [ %., %LocaleCompare.exit37 ], !dbg !1392
  ret i32 %retval.0, !dbg !1425
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define dso_local i32 @LocaleCompare(ptr noundef readonly %p, ptr noundef readonly %q) local_unnamed_addr #11 !dbg !1397 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !1396, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata ptr %q, metadata !1401, metadata !DIExpression()), !dbg !1426
  %cmp = icmp eq ptr %p, null, !dbg !1427
  %cmp1 = icmp eq ptr %q, null
  %or.cond = and i1 %cmp, %cmp1, !dbg !1429
  %not.or.cond = xor i1 %or.cond, true, !dbg !1429
  %.mux = sext i1 %not.or.cond to i32, !dbg !1429
  %brmerge12 = or i1 %cmp, %cmp1, !dbg !1429
  %.mux.mux = select i1 %cmp, i32 %.mux, i32 1, !dbg !1429
  br i1 %brmerge12, label %return, label %if.end7, !dbg !1429

if.end7:                                          ; preds = %entry
  %call = tail call i32 @strcasecmp(ptr noundef nonnull %p, ptr noundef nonnull %q) #23, !dbg !1430
  br label %return, !dbg !1431

return:                                           ; preds = %entry, %if.end7
  %retval.0 = phi i32 [ %call, %if.end7 ], [ %.mux.mux, %entry ], !dbg !1426
  ret i32 %retval.0, !dbg !1432
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define dso_local i32 @IsStringNotFalse(ptr noundef readonly %value) local_unnamed_addr #11 !dbg !1433 {
entry:
  call void @llvm.dbg.value(metadata ptr %value, metadata !1435, metadata !DIExpression()), !dbg !1436
  %cmp = icmp eq ptr %value, null, !dbg !1437
  br i1 %cmp, label %return, label %LocaleCompare.exit, !dbg !1439

LocaleCompare.exit:                               ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %value, metadata !1396, metadata !DIExpression()) #24, !dbg !1440
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !1401, metadata !DIExpression()) #24, !dbg !1440
  %call.i = tail call i32 @strcasecmp(ptr noundef nonnull %value, ptr noundef nonnull @.str.30) #23, !dbg !1443
  %cmp1 = icmp eq i32 %call.i, 0, !dbg !1444
  br i1 %cmp1, label %return, label %LocaleCompare.exit25, !dbg !1445

LocaleCompare.exit25:                             ; preds = %LocaleCompare.exit
  call void @llvm.dbg.value(metadata ptr %value, metadata !1396, metadata !DIExpression()) #24, !dbg !1446
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !1401, metadata !DIExpression()) #24, !dbg !1446
  %call.i22 = tail call i32 @strcasecmp(ptr noundef nonnull %value, ptr noundef nonnull @.str.31) #23, !dbg !1449
  %cmp5 = icmp eq i32 %call.i22, 0, !dbg !1450
  br i1 %cmp5, label %return, label %LocaleCompare.exit31, !dbg !1451

LocaleCompare.exit31:                             ; preds = %LocaleCompare.exit25
  call void @llvm.dbg.value(metadata ptr %value, metadata !1396, metadata !DIExpression()) #24, !dbg !1452
  call void @llvm.dbg.value(metadata ptr @.str.32, metadata !1401, metadata !DIExpression()) #24, !dbg !1452
  %call.i28 = tail call i32 @strcasecmp(ptr noundef nonnull %value, ptr noundef nonnull @.str.32) #23, !dbg !1455
  %cmp9 = icmp eq i32 %call.i28, 0, !dbg !1456
  br i1 %cmp9, label %return, label %LocaleCompare.exit37, !dbg !1457

LocaleCompare.exit37:                             ; preds = %LocaleCompare.exit31
  call void @llvm.dbg.value(metadata ptr %value, metadata !1396, metadata !DIExpression()) #24, !dbg !1458
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !1401, metadata !DIExpression()) #24, !dbg !1458
  %call.i34 = tail call i32 @strcasecmp(ptr noundef nonnull %value, ptr noundef nonnull @.str.33) #23, !dbg !1461
  %cmp13 = icmp ne i32 %call.i34, 0, !dbg !1462
  %. = zext i1 %cmp13 to i32, !dbg !1436
  br label %return, !dbg !1436

return:                                           ; preds = %LocaleCompare.exit37, %LocaleCompare.exit31, %LocaleCompare.exit25, %LocaleCompare.exit, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %LocaleCompare.exit ], [ 0, %LocaleCompare.exit25 ], [ 0, %LocaleCompare.exit31 ], [ %., %LocaleCompare.exit37 ], !dbg !1436
  ret i32 %retval.0, !dbg !1463
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @LocaleLower(ptr nocapture noundef %string) local_unnamed_addr #20 !dbg !1464 {
entry:
  call void @llvm.dbg.value(metadata ptr %string, metadata !1468, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata ptr %string, metadata !1469, metadata !DIExpression()), !dbg !1479
  %0 = load i8, ptr %string, align 1, !dbg !1480, !tbaa !271
  %cmp.not19 = icmp eq i8 %0, 0, !dbg !1481
  br i1 %cmp.not19, label %for.end, label %for.body.preheader, !dbg !1482

for.body.preheader:                               ; preds = %entry
  %call = tail call ptr @__ctype_tolower_loc() #25, !dbg !1479
  br label %for.body, !dbg !1482

for.body:                                         ; preds = %for.body.preheader, %for.body
  %1 = phi i8 [ %3, %for.body ], [ %0, %for.body.preheader ]
  %q.020 = phi ptr [ %incdec.ptr, %for.body ], [ %string, %for.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.020, metadata !1469, metadata !DIExpression()), !dbg !1479
  %2 = load ptr, ptr %call, align 8, !dbg !1483, !tbaa !434
  %idxprom = sext i8 %1 to i64, !dbg !1483
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom, !dbg !1483
  call void @llvm.dbg.value(metadata i32 undef, metadata !1470, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 undef, metadata !1470, metadata !DIExpression()), !dbg !1484
  %__res.0 = load i32, ptr %arrayidx, align 4, !dbg !1483, !tbaa !259
  call void @llvm.dbg.value(metadata i32 %__res.0, metadata !1470, metadata !DIExpression()), !dbg !1484
  %conv10 = trunc i32 %__res.0 to i8, !dbg !1485
  store i8 %conv10, ptr %q.020, align 1, !dbg !1486, !tbaa !271
  %incdec.ptr = getelementptr inbounds i8, ptr %q.020, i64 1, !dbg !1487
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1469, metadata !DIExpression()), !dbg !1479
  %3 = load i8, ptr %incdec.ptr, align 1, !dbg !1480, !tbaa !271
  %cmp.not = icmp eq i8 %3, 0, !dbg !1481
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !1482, !llvm.loop !1488

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !1490
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_tolower_loc() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define dso_local i32 @LocaleNCompare(ptr noundef readonly %p, ptr noundef readonly %q, i64 noundef %length) local_unnamed_addr #11 !dbg !1491 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !1495, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata ptr %q, metadata !1496, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i64 %length, metadata !1497, metadata !DIExpression()), !dbg !1498
  %cmp = icmp eq ptr %p, null, !dbg !1499
  %cmp1 = icmp eq ptr %q, null
  %or.cond = and i1 %cmp, %cmp1, !dbg !1501
  %not.or.cond = xor i1 %or.cond, true, !dbg !1501
  %.mux = sext i1 %not.or.cond to i32, !dbg !1501
  %brmerge12 = or i1 %cmp, %cmp1, !dbg !1501
  %.mux.mux = select i1 %cmp, i32 %.mux, i32 1, !dbg !1501
  br i1 %brmerge12, label %return, label %if.end7, !dbg !1501

if.end7:                                          ; preds = %entry
  %call = tail call i32 @strncasecmp(ptr noundef nonnull %p, ptr noundef nonnull %q, i64 noundef %length) #23, !dbg !1502
  br label %return, !dbg !1503

return:                                           ; preds = %entry, %if.end7
  %retval.0 = phi i32 [ %call, %if.end7 ], [ %.mux.mux, %entry ], !dbg !1498
  ret i32 %retval.0, !dbg !1504
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @LocaleUpper(ptr nocapture noundef %string) local_unnamed_addr #20 !dbg !1505 {
entry:
  call void @llvm.dbg.value(metadata ptr %string, metadata !1507, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata ptr %string, metadata !1508, metadata !DIExpression()), !dbg !1518
  %0 = load i8, ptr %string, align 1, !dbg !1519, !tbaa !271
  %cmp.not19 = icmp eq i8 %0, 0, !dbg !1520
  br i1 %cmp.not19, label %for.end, label %for.body.preheader, !dbg !1521

for.body.preheader:                               ; preds = %entry
  %call = tail call ptr @__ctype_toupper_loc() #25, !dbg !1518
  br label %for.body, !dbg !1521

for.body:                                         ; preds = %for.body.preheader, %for.body
  %1 = phi i8 [ %3, %for.body ], [ %0, %for.body.preheader ]
  %q.020 = phi ptr [ %incdec.ptr, %for.body ], [ %string, %for.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.020, metadata !1508, metadata !DIExpression()), !dbg !1518
  %2 = load ptr, ptr %call, align 8, !dbg !1522, !tbaa !434
  %idxprom = sext i8 %1 to i64, !dbg !1522
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom, !dbg !1522
  call void @llvm.dbg.value(metadata i32 undef, metadata !1509, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 undef, metadata !1509, metadata !DIExpression()), !dbg !1523
  %__res.0 = load i32, ptr %arrayidx, align 4, !dbg !1522, !tbaa !259
  call void @llvm.dbg.value(metadata i32 %__res.0, metadata !1509, metadata !DIExpression()), !dbg !1523
  %conv10 = trunc i32 %__res.0 to i8, !dbg !1524
  store i8 %conv10, ptr %q.020, align 1, !dbg !1525, !tbaa !271
  %incdec.ptr = getelementptr inbounds i8, ptr %q.020, i64 1, !dbg !1526
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1508, metadata !DIExpression()), !dbg !1518
  %3 = load i8, ptr %incdec.ptr, align 1, !dbg !1519, !tbaa !271
  %cmp.not = icmp eq i8 %3, 0, !dbg !1520
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !1521, !llvm.loop !1527

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !1529
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_toupper_loc() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @PrintStringInfo(ptr noundef %file, ptr noundef %id, ptr nocapture noundef readonly %string_info) local_unnamed_addr #0 !dbg !1530 {
entry:
  call void @llvm.dbg.value(metadata ptr %file, metadata !1586, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata ptr %id, metadata !1587, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !1588, metadata !DIExpression()), !dbg !1592
  %datum = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 1, !dbg !1593
  call void @llvm.dbg.value(metadata ptr undef, metadata !1589, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 0, metadata !1590, metadata !DIExpression()), !dbg !1592
  %length = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 2
  %0 = load i64, ptr %length, align 8, !tbaa !342
  call void @llvm.dbg.value(metadata i64 0, metadata !1590, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata ptr undef, metadata !1589, metadata !DIExpression()), !dbg !1592
  %cmp143.not = icmp eq i64 %0, 0, !dbg !1594
  br i1 %cmp143.not, label %for.end, label %for.body.preheader, !dbg !1597

for.body.preheader:                               ; preds = %entry
  %1 = load ptr, ptr %datum, align 8, !dbg !1593, !tbaa !345
  call void @llvm.dbg.value(metadata ptr %1, metadata !1589, metadata !DIExpression()), !dbg !1592
  br label %for.body, !dbg !1597

for.body:                                         ; preds = %for.body.preheader, %if.end
  %i.0145 = phi i64 [ %inc, %if.end ], [ 0, %for.body.preheader ]
  %p.0144 = phi ptr [ %incdec.ptr, %if.end ], [ %1, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0145, metadata !1590, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata ptr %p.0144, metadata !1589, metadata !DIExpression()), !dbg !1592
  %2 = load i8, ptr %p.0144, align 1, !dbg !1598, !tbaa !271
  %cmp1 = icmp ult i8 %2, 32, !dbg !1601
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !1602

land.lhs.true:                                    ; preds = %for.body
  %call = tail call ptr @__ctype_b_loc() #25, !dbg !1603
  %3 = load ptr, ptr %call, align 8, !dbg !1603, !tbaa !434
  %idxprom = zext i8 %2 to i64, !dbg !1603
  %arrayidx = getelementptr inbounds i16, ptr %3, i64 %idxprom, !dbg !1603
  %4 = load i16, ptr %arrayidx, align 2, !dbg !1603, !tbaa !1604
  %5 = and i16 %4, 8192, !dbg !1603
  %cmp5 = icmp eq i16 %5, 0, !dbg !1606
  br i1 %cmp5, label %for.end, label %if.end, !dbg !1607

if.end:                                           ; preds = %land.lhs.true, %for.body
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0144, i64 1, !dbg !1608
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1589, metadata !DIExpression()), !dbg !1592
  %inc = add nuw i64 %i.0145, 1, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1590, metadata !DIExpression()), !dbg !1592
  %exitcond.not = icmp eq i64 %inc, %0, !dbg !1594
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1597, !llvm.loop !1610

for.end:                                          ; preds = %if.end, %land.lhs.true, %entry
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %i.0145, %land.lhs.true ], [ %0, %if.end ], !dbg !1612
  %conv8 = uitofp i64 %0 to double, !dbg !1613
  %call9 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.34, ptr noundef %id, double noundef %conv8) #24, !dbg !1614
  %6 = load i64, ptr %length, align 8, !dbg !1615, !tbaa !342
  %cmp11 = icmp eq i64 %i.0.lcssa, %6, !dbg !1617
  br i1 %cmp11, label %for.cond14.preheader, label %if.end27, !dbg !1618

for.cond14.preheader:                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1590, metadata !DIExpression()), !dbg !1592
  %cmp16165.not = icmp eq i64 %i.0.lcssa, 0, !dbg !1619
  br i1 %cmp16165.not, label %for.end25, label %for.body18, !dbg !1623

for.body18:                                       ; preds = %for.cond14.preheader, %for.body18
  %i.1166 = phi i64 [ %inc24, %for.body18 ], [ 0, %for.cond14.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.1166, metadata !1590, metadata !DIExpression()), !dbg !1592
  %7 = load ptr, ptr %datum, align 8, !dbg !1624, !tbaa !345
  %arrayidx20 = getelementptr inbounds i8, ptr %7, i64 %i.1166, !dbg !1625
  %8 = load i8, ptr %arrayidx20, align 1, !dbg !1625, !tbaa !271
  %conv21 = zext i8 %8 to i32, !dbg !1625
  %call22 = tail call i32 @fputc(i32 noundef %conv21, ptr noundef %file), !dbg !1626
  %inc24 = add nuw i64 %i.1166, 1, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %inc24, metadata !1590, metadata !DIExpression()), !dbg !1592
  %9 = load i64, ptr %length, align 8, !dbg !1628, !tbaa !342
  %cmp16 = icmp ult i64 %inc24, %9, !dbg !1619
  br i1 %cmp16, label %for.body18, label %for.end25, !dbg !1623, !llvm.loop !1629

for.end25:                                        ; preds = %for.body18, %for.cond14.preheader
  %call26 = tail call i32 @fputc(i32 noundef 10, ptr noundef %file), !dbg !1631
  br label %cleanup, !dbg !1632

if.end27:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata ptr undef, metadata !1589, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 0, metadata !1590, metadata !DIExpression()), !dbg !1592
  %cmp31161.not = icmp eq i64 %6, 0, !dbg !1633
  br i1 %cmp31161.not, label %cleanup, label %for.body33.preheader, !dbg !1636

for.body33.preheader:                             ; preds = %if.end27
  %10 = load ptr, ptr %datum, align 8, !dbg !1637, !tbaa !345
  call void @llvm.dbg.value(metadata ptr %10, metadata !1589, metadata !DIExpression()), !dbg !1592
  br label %for.body33, !dbg !1636

for.body33:                                       ; preds = %for.body33.preheader, %for.end91
  %i.2163 = phi i64 [ %add, %for.end91 ], [ 0, %for.body33.preheader ]
  %p.1162 = phi ptr [ %p.2.lcssa, %for.end91 ], [ %10, %for.body33.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.2163, metadata !1590, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata ptr %p.1162, metadata !1589, metadata !DIExpression()), !dbg !1592
  %mul = mul i64 %i.2163, 20, !dbg !1638
  %call34 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.35, i64 noundef %mul) #24, !dbg !1640
  call void @llvm.dbg.value(metadata i64 1, metadata !1591, metadata !DIExpression()), !dbg !1592
  %11 = load i64, ptr %length, align 8, !dbg !1641, !tbaa !342
  %sub150 = sub i64 %11, %i.2163, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %sub150, metadata !509, metadata !DIExpression()) #24, !dbg !1645
  call void @llvm.dbg.value(metadata i64 20, metadata !514, metadata !DIExpression()) #24, !dbg !1645
  %12 = tail call i64 @llvm.umin.i64(i64 %sub150, i64 20) #24, !dbg !1645
  %cmp38.not151 = icmp eq i64 %12, 0, !dbg !1647
  br i1 %cmp38.not151, label %for.body55.preheader, label %for.body40, !dbg !1648

for.cond52.preheader:                             ; preds = %for.inc49
  call void @llvm.dbg.value(metadata i64 %inc50, metadata !1591, metadata !DIExpression()), !dbg !1592
  %cmp53154 = icmp ult i64 %j.0152, 20, !dbg !1649
  br i1 %cmp53154, label %for.body55.preheader, label %for.end66, !dbg !1652

for.body55.preheader:                             ; preds = %for.body33, %for.cond52.preheader
  %j.1155.ph = phi i64 [ 1, %for.body33 ], [ %inc50, %for.cond52.preheader ]
  br label %for.body55, !dbg !1652

for.body40:                                       ; preds = %for.body33, %for.inc49
  %j.0152 = phi i64 [ %inc50, %for.inc49 ], [ 1, %for.body33 ]
  call void @llvm.dbg.value(metadata i64 %j.0152, metadata !1591, metadata !DIExpression()), !dbg !1592
  %add.ptr = getelementptr inbounds i8, ptr %p.1162, i64 %j.0152, !dbg !1653
  %13 = load i8, ptr %add.ptr, align 1, !dbg !1655, !tbaa !271
  %conv41142 = zext i8 %13 to i64, !dbg !1656
  %call43 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.36, i64 noundef %conv41142) #24, !dbg !1657
  %rem = and i64 %j.0152, 3, !dbg !1658
  %cmp44 = icmp eq i64 %rem, 0, !dbg !1660
  br i1 %cmp44, label %if.then46, label %for.inc49, !dbg !1661

if.then46:                                        ; preds = %for.body40
  %call47 = tail call i32 @fputc(i32 noundef 32, ptr noundef %file), !dbg !1662
  br label %for.inc49, !dbg !1663

for.inc49:                                        ; preds = %for.body40, %if.then46
  %inc50 = add nuw nsw i64 %j.0152, 1, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %inc50, metadata !1591, metadata !DIExpression()), !dbg !1592
  %14 = load i64, ptr %length, align 8, !dbg !1641, !tbaa !342
  %sub = sub i64 %14, %i.2163, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %sub, metadata !509, metadata !DIExpression()) #24, !dbg !1645
  call void @llvm.dbg.value(metadata i64 20, metadata !514, metadata !DIExpression()) #24, !dbg !1645
  %15 = tail call i64 @llvm.umin.i64(i64 %sub, i64 20) #24, !dbg !1645
  %cmp38.not.not = icmp ult i64 %j.0152, %15, !dbg !1647
  br i1 %cmp38.not.not, label %for.body40, label %for.cond52.preheader, !dbg !1648, !llvm.loop !1665

for.body55:                                       ; preds = %for.body55.preheader, %for.inc64
  %j.1155 = phi i64 [ %inc65, %for.inc64 ], [ %j.1155.ph, %for.body55.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.1155, metadata !1591, metadata !DIExpression()), !dbg !1592
  %call56 = tail call i32 @fputc(i32 noundef 32, ptr noundef %file), !dbg !1667
  %call57 = tail call i32 @fputc(i32 noundef 32, ptr noundef %file), !dbg !1669
  %rem58 = and i64 %j.1155, 3, !dbg !1670
  %cmp59 = icmp eq i64 %rem58, 0, !dbg !1672
  br i1 %cmp59, label %if.then61, label %for.inc64, !dbg !1673

if.then61:                                        ; preds = %for.body55
  %call62 = tail call i32 @fputc(i32 noundef 32, ptr noundef %file), !dbg !1674
  br label %for.inc64, !dbg !1675

for.inc64:                                        ; preds = %for.body55, %if.then61
  %inc65 = add nuw nsw i64 %j.1155, 1, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %inc65, metadata !1591, metadata !DIExpression()), !dbg !1592
  %exitcond167.not = icmp eq i64 %inc65, 21, !dbg !1649
  br i1 %exitcond167.not, label %for.end66, label %for.body55, !dbg !1652, !llvm.loop !1677

for.end66:                                        ; preds = %for.inc64, %for.cond52.preheader
  %call67 = tail call i32 @fputc(i32 noundef 32, ptr noundef %file), !dbg !1679
  call void @llvm.dbg.value(metadata i64 1, metadata !1591, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata ptr %p.1162, metadata !1589, metadata !DIExpression()), !dbg !1592
  %16 = load i64, ptr %length, align 8, !dbg !1680, !tbaa !342
  %sub70156 = sub i64 %16, %i.2163, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %sub70156, metadata !509, metadata !DIExpression()) #24, !dbg !1684
  call void @llvm.dbg.value(metadata i64 20, metadata !514, metadata !DIExpression()) #24, !dbg !1684
  %17 = tail call i64 @llvm.umin.i64(i64 %sub70156, i64 20) #24, !dbg !1684
  %cmp72.not157 = icmp eq i64 %17, 0, !dbg !1686
  br i1 %cmp72.not157, label %for.end91, label %for.body74.lr.ph, !dbg !1687

for.body74.lr.ph:                                 ; preds = %for.end66
  %call75 = tail call ptr @__ctype_b_loc() #25, !dbg !1592
  br label %for.body74, !dbg !1687

for.body74:                                       ; preds = %for.body74.lr.ph, %for.body74
  %j.2159 = phi i64 [ 1, %for.body74.lr.ph ], [ %inc90, %for.body74 ]
  %p.2158 = phi ptr [ %p.1162, %for.body74.lr.ph ], [ %incdec.ptr88, %for.body74 ]
  call void @llvm.dbg.value(metadata i64 %j.2159, metadata !1591, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata ptr %p.2158, metadata !1589, metadata !DIExpression()), !dbg !1592
  %18 = load ptr, ptr %call75, align 8, !dbg !1688, !tbaa !434
  %19 = load i8, ptr %p.2158, align 1, !dbg !1688, !tbaa !271
  %20 = zext i8 %19 to i64
  %arrayidx78 = getelementptr inbounds i16, ptr %18, i64 %20, !dbg !1688
  %21 = load i16, ptr %arrayidx78, align 2, !dbg !1688, !tbaa !1604
  %22 = and i16 %21, 16384, !dbg !1688
  %cmp81.not = icmp eq i16 %22, 0, !dbg !1691
  %conv84 = sext i8 %19 to i32
  %spec.select = select i1 %cmp81.not, i32 45, i32 %conv84, !dbg !1692
  %call86 = tail call i32 @fputc(i32 noundef %spec.select, ptr noundef %file), !dbg !1693
  %incdec.ptr88 = getelementptr inbounds i8, ptr %p.2158, i64 1, !dbg !1694
  call void @llvm.dbg.value(metadata ptr %incdec.ptr88, metadata !1589, metadata !DIExpression()), !dbg !1592
  %inc90 = add nuw nsw i64 %j.2159, 1, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %inc90, metadata !1591, metadata !DIExpression()), !dbg !1592
  %23 = load i64, ptr %length, align 8, !dbg !1680, !tbaa !342
  %sub70 = sub i64 %23, %i.2163, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %sub70, metadata !509, metadata !DIExpression()) #24, !dbg !1684
  call void @llvm.dbg.value(metadata i64 20, metadata !514, metadata !DIExpression()) #24, !dbg !1684
  %24 = tail call i64 @llvm.umin.i64(i64 %sub70, i64 20) #24, !dbg !1684
  %cmp72.not.not = icmp ult i64 %j.2159, %24, !dbg !1686
  br i1 %cmp72.not.not, label %for.body74, label %for.end91, !dbg !1687, !llvm.loop !1696

for.end91:                                        ; preds = %for.body74, %for.end66
  %p.2.lcssa = phi ptr [ %p.1162, %for.end66 ], [ %incdec.ptr88, %for.body74 ], !dbg !1592
  %call92 = tail call i32 @fputc(i32 noundef 10, ptr noundef %file), !dbg !1698
  %add = add i64 %i.2163, 20, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %add, metadata !1590, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata ptr %p.2.lcssa, metadata !1589, metadata !DIExpression()), !dbg !1592
  %25 = load i64, ptr %length, align 8, !dbg !1700, !tbaa !342
  %cmp31 = icmp ult i64 %add, %25, !dbg !1633
  br i1 %cmp31, label %for.body33, label %cleanup, !dbg !1636, !llvm.loop !1701

cleanup:                                          ; preds = %for.end91, %if.end27, %for.end25
  ret void, !dbg !1703
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #5

declare !dbg !1704 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1707 noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local void @ResetStringInfo(ptr nocapture noundef readonly %string_info) local_unnamed_addr #0 !dbg !1710 {
entry:
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !1714, metadata !DIExpression()), !dbg !1715
  %datum = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 1, !dbg !1716
  %0 = load ptr, ptr %datum, align 8, !dbg !1716, !tbaa !345
  %length = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 2, !dbg !1717
  %1 = load i64, ptr %length, align 8, !dbg !1717, !tbaa !342
  %call = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef %1) #24, !dbg !1718
  ret void, !dbg !1719
}

; Function Attrs: nounwind uwtable
define dso_local void @SetStringInfo(ptr nocapture noundef readonly %string_info, ptr nocapture noundef readonly %source) local_unnamed_addr #0 !dbg !1720 {
entry:
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !1722, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata ptr %source, metadata !1723, metadata !DIExpression()), !dbg !1724
  %length = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 2, !dbg !1725
  %0 = load i64, ptr %length, align 8, !dbg !1725, !tbaa !342
  %cmp = icmp eq i64 %0, 0, !dbg !1727
  br i1 %cmp, label %return, label %if.end, !dbg !1728

if.end:                                           ; preds = %entry
  %datum = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 1, !dbg !1729
  %1 = load ptr, ptr %datum, align 8, !dbg !1729, !tbaa !345
  %call = tail call ptr @ResetMagickMemory(ptr noundef %1, i32 noundef 0, i64 noundef %0) #24, !dbg !1730
  %2 = load ptr, ptr %datum, align 8, !dbg !1731, !tbaa !345
  %datum3 = getelementptr inbounds %struct._StringInfo, ptr %source, i64 0, i32 1, !dbg !1732
  %3 = load ptr, ptr %datum3, align 8, !dbg !1732, !tbaa !345
  %4 = load i64, ptr %length, align 8, !dbg !1733, !tbaa !342
  %length5 = getelementptr inbounds %struct._StringInfo, ptr %source, i64 0, i32 2, !dbg !1734
  %5 = load i64, ptr %length5, align 8, !dbg !1734, !tbaa !342
  call void @llvm.dbg.value(metadata i64 %4, metadata !509, metadata !DIExpression()) #24, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %5, metadata !514, metadata !DIExpression()) #24, !dbg !1735
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 %5) #24, !dbg !1735
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %3, i64 %6, i1 false), !dbg !1737
  br label %return, !dbg !1738

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !1738
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn uwtable
define dso_local void @SetStringInfoDatum(ptr nocapture noundef readonly %string_info, ptr nocapture noundef readonly %source) local_unnamed_addr #22 !dbg !1739 {
entry:
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !1743, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata ptr %source, metadata !1744, metadata !DIExpression()), !dbg !1745
  %length = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 2, !dbg !1746
  %0 = load i64, ptr %length, align 8, !dbg !1746, !tbaa !342
  %cmp.not = icmp eq i64 %0, 0, !dbg !1748
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1749

if.then:                                          ; preds = %entry
  %datum = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 1, !dbg !1750
  %1 = load ptr, ptr %datum, align 8, !dbg !1750, !tbaa !345
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %source, i64 %0, i1 false), !dbg !1751
  br label %if.end, !dbg !1752

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1753
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @SetStringInfoPath(ptr nocapture noundef writeonly %string_info, ptr noundef %path) local_unnamed_addr #15 !dbg !1754 {
entry:
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !1758, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata ptr %path, metadata !1759, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !790, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata ptr %path, metadata !793, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i64 4096, metadata !794, metadata !DIExpression()), !dbg !1761
  %cmp.i = icmp eq ptr %path, null, !dbg !1763
  br i1 %cmp.i, label %CopyMagickString.exit, label %for.body.i, !dbg !1764

for.body.i:                                       ; preds = %entry, %if.end38.i
  %n.0134.i = phi i64 [ %sub40.i, %if.end38.i ], [ 4096, %entry ]
  %p.0133.i = phi ptr [ %incdec.ptr29.i, %if.end38.i ], [ %path, %entry ]
  %q.0132.i = phi ptr [ %incdec.ptr39.i, %if.end38.i ], [ %string_info, %entry ]
  call void @llvm.dbg.value(metadata i64 %n.0134.i, metadata !797, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata ptr %q.0132.i, metadata !795, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1761
  %0 = load i8, ptr %p.0133.i, align 1, !dbg !1765, !tbaa !271
  store i8 %0, ptr %q.0132.i, align 1, !dbg !1766, !tbaa !271
  %cmp2.i = icmp eq i8 %0, 0, !dbg !1767
  br i1 %cmp2.i, label %CopyMagickString.exit, label %if.end5.i, !dbg !1768

if.end5.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.0133.i, i64 1, !dbg !1769
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !796, metadata !DIExpression()), !dbg !1761
  %incdec.ptr6.i = getelementptr inbounds i8, ptr %q.0132.i, i64 1, !dbg !1770
  call void @llvm.dbg.value(metadata ptr %incdec.ptr6.i, metadata !795, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1761
  %1 = load i8, ptr %incdec.ptr.i, align 1, !dbg !1771, !tbaa !271
  store i8 %1, ptr %incdec.ptr6.i, align 1, !dbg !1772, !tbaa !271
  %cmp9.i = icmp eq i8 %1, 0, !dbg !1773
  br i1 %cmp9.i, label %CopyMagickString.exit, label %if.end16.i, !dbg !1774

if.end16.i:                                       ; preds = %if.end5.i
  %incdec.ptr7.i = getelementptr inbounds i8, ptr %p.0133.i, i64 2, !dbg !1775
  call void @llvm.dbg.value(metadata ptr %incdec.ptr7.i, metadata !796, metadata !DIExpression()), !dbg !1761
  %incdec.ptr17.i = getelementptr inbounds i8, ptr %q.0132.i, i64 2, !dbg !1776
  call void @llvm.dbg.value(metadata ptr %incdec.ptr17.i, metadata !795, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1761
  %2 = load i8, ptr %incdec.ptr7.i, align 1, !dbg !1777, !tbaa !271
  store i8 %2, ptr %incdec.ptr17.i, align 1, !dbg !1778, !tbaa !271
  %cmp20.i = icmp eq i8 %2, 0, !dbg !1779
  br i1 %cmp20.i, label %CopyMagickString.exit, label %if.end27.i, !dbg !1780

if.end27.i:                                       ; preds = %if.end16.i
  %incdec.ptr18.i = getelementptr inbounds i8, ptr %p.0133.i, i64 3, !dbg !1781
  call void @llvm.dbg.value(metadata ptr %incdec.ptr18.i, metadata !796, metadata !DIExpression()), !dbg !1761
  %incdec.ptr28.i = getelementptr inbounds i8, ptr %q.0132.i, i64 3, !dbg !1782
  call void @llvm.dbg.value(metadata ptr %incdec.ptr28.i, metadata !795, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1761
  %3 = load i8, ptr %incdec.ptr18.i, align 1, !dbg !1783, !tbaa !271
  store i8 %3, ptr %incdec.ptr28.i, align 1, !dbg !1784, !tbaa !271
  %cmp31.i = icmp eq i8 %3, 0, !dbg !1785
  br i1 %cmp31.i, label %CopyMagickString.exit, label %if.end38.i, !dbg !1786

if.end38.i:                                       ; preds = %if.end27.i
  %incdec.ptr29.i = getelementptr inbounds i8, ptr %p.0133.i, i64 4, !dbg !1787
  call void @llvm.dbg.value(metadata ptr %incdec.ptr29.i, metadata !796, metadata !DIExpression()), !dbg !1761
  %incdec.ptr39.i = getelementptr inbounds i8, ptr %q.0132.i, i64 4, !dbg !1788
  call void @llvm.dbg.value(metadata ptr %incdec.ptr39.i, metadata !795, metadata !DIExpression()), !dbg !1761
  %sub40.i = add nsw i64 %n.0134.i, -4, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %sub40.i, metadata !797, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1761
  %cmp1.i = icmp ugt i64 %sub40.i, 4, !dbg !1790
  br i1 %cmp1.i, label %for.body.i, label %for.body47.i, !dbg !1791, !llvm.loop !1792

for.body47.i:                                     ; preds = %if.end38.i, %if.end57.i
  %n.1141.i = phi i64 [ %n.1.i, %if.end57.i ], [ 3, %if.end38.i ]
  %p.1140.i = phi ptr [ %incdec.ptr48.i, %if.end57.i ], [ %incdec.ptr29.i, %if.end38.i ]
  %q.1139.i = phi ptr [ %incdec.ptr58.i, %if.end57.i ], [ %incdec.ptr39.i, %if.end38.i ]
  call void @llvm.dbg.value(metadata ptr %q.1139.i, metadata !795, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata ptr %p.1140.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1761
  %4 = load i8, ptr %p.1140.i, align 1, !dbg !1794, !tbaa !271
  store i8 %4, ptr %q.1139.i, align 1, !dbg !1795, !tbaa !271
  %cmp50.i = icmp eq i8 %4, 0, !dbg !1796
  br i1 %cmp50.i, label %CopyMagickString.exit, label %if.end57.i, !dbg !1797

if.end57.i:                                       ; preds = %for.body47.i
  %incdec.ptr48.i = getelementptr inbounds i8, ptr %p.1140.i, i64 1, !dbg !1798
  call void @llvm.dbg.value(metadata ptr %incdec.ptr48.i, metadata !796, metadata !DIExpression()), !dbg !1761
  %incdec.ptr58.i = getelementptr inbounds i8, ptr %q.1139.i, i64 1, !dbg !1799
  call void @llvm.dbg.value(metadata ptr %incdec.ptr58.i, metadata !795, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %n.1141.i, metadata !797, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1761
  %n.1.i = add nsw i64 %n.1141.i, -1, !dbg !1800
  call void @llvm.dbg.value(metadata i64 %n.1.i, metadata !797, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata ptr %p.1140.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1761
  %cmp45.not.i = icmp eq i64 %n.1.i, 0, !dbg !1801
  br i1 %cmp45.not.i, label %if.end62.i, label %for.body47.i, !dbg !1802, !llvm.loop !1803

if.end62.i:                                       ; preds = %if.end57.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !796, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata ptr %incdec.ptr58.i, metadata !795, metadata !DIExpression()), !dbg !1761
  store i8 0, ptr %incdec.ptr58.i, align 1, !dbg !1805, !tbaa !271
  br label %CopyMagickString.exit, !dbg !1806

CopyMagickString.exit:                            ; preds = %if.end27.i, %if.end16.i, %if.end5.i, %for.body.i, %for.body47.i, %entry, %if.end62.i
  ret void, !dbg !1807
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SplitStringInfo(ptr nocapture noundef %string_info, i64 noundef %offset) local_unnamed_addr #0 !dbg !1808 {
entry:
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !1812, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i64 %offset, metadata !1813, metadata !DIExpression()), !dbg !1815
  %length = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 2, !dbg !1816
  %0 = load i64, ptr %length, align 8, !dbg !1816, !tbaa !342
  %cmp = icmp ult i64 %0, %offset, !dbg !1818
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1819

if.end:                                           ; preds = %entry
  %call = tail call ptr @AcquireStringInfo(i64 noundef %offset), !dbg !1820
  call void @llvm.dbg.value(metadata ptr %call, metadata !1814, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata ptr %call, metadata !1722, metadata !DIExpression()) #24, !dbg !1821
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !1723, metadata !DIExpression()) #24, !dbg !1821
  %length.i = getelementptr inbounds %struct._StringInfo, ptr %call, i64 0, i32 2, !dbg !1823
  %1 = load i64, ptr %length.i, align 8, !dbg !1823, !tbaa !342
  %cmp.i = icmp eq i64 %1, 0, !dbg !1824
  br i1 %cmp.i, label %SetStringInfo.exit, label %if.end.i, !dbg !1825

if.end.i:                                         ; preds = %if.end
  %datum.i = getelementptr inbounds %struct._StringInfo, ptr %call, i64 0, i32 1, !dbg !1826
  %2 = load ptr, ptr %datum.i, align 8, !dbg !1826, !tbaa !345
  %call.i = tail call ptr @ResetMagickMemory(ptr noundef %2, i32 noundef 0, i64 noundef %1) #24, !dbg !1827
  %3 = load ptr, ptr %datum.i, align 8, !dbg !1828, !tbaa !345
  %datum3.i = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 1, !dbg !1829
  %4 = load ptr, ptr %datum3.i, align 8, !dbg !1829, !tbaa !345
  %5 = load i64, ptr %length.i, align 8, !dbg !1830, !tbaa !342
  %6 = load i64, ptr %length, align 8, !dbg !1831, !tbaa !342
  call void @llvm.dbg.value(metadata i64 %5, metadata !509, metadata !DIExpression()) #24, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %6, metadata !514, metadata !DIExpression()) #24, !dbg !1832
  %7 = tail call i64 @llvm.umin.i64(i64 %5, i64 %6) #24, !dbg !1832
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %4, i64 %7, i1 false) #24, !dbg !1834
  br label %SetStringInfo.exit, !dbg !1835

SetStringInfo.exit:                               ; preds = %if.end, %if.end.i
  %datum = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 1, !dbg !1836
  %8 = load ptr, ptr %datum, align 8, !dbg !1836, !tbaa !345
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %offset, !dbg !1837
  %9 = load i64, ptr %length, align 8, !dbg !1838, !tbaa !342
  %sub = sub i64 4096, %offset, !dbg !1839
  %add = add i64 %sub, %9, !dbg !1840
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %8, ptr align 1 %add.ptr, i64 %add, i1 false), !dbg !1841
  %10 = load i64, ptr %length, align 8, !dbg !1842, !tbaa !342
  %sub4 = sub i64 %10, %offset, !dbg !1843
  tail call void @SetStringInfoLength(ptr noundef nonnull %string_info, i64 noundef %sub4), !dbg !1844
  br label %cleanup, !dbg !1845

cleanup:                                          ; preds = %entry, %SetStringInfo.exit
  %retval.0 = phi ptr [ %call, %SetStringInfo.exit ], [ null, %entry ], !dbg !1815
  ret ptr %retval.0, !dbg !1846
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local ptr @StringInfoToString(ptr nocapture noundef readonly %string_info) local_unnamed_addr #0 !dbg !1847 {
entry:
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !1851, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata ptr null, metadata !1852, metadata !DIExpression()), !dbg !1854
  %length1 = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 2, !dbg !1855
  %0 = load i64, ptr %length1, align 8, !dbg !1855, !tbaa !342
  call void @llvm.dbg.value(metadata i64 %0, metadata !1853, metadata !DIExpression()), !dbg !1854
  %cmp = icmp ult i64 %0, -4095, !dbg !1856
  br i1 %cmp, label %if.end, label %cleanup, !dbg !1858

if.end:                                           ; preds = %entry
  %add = add i64 %0, 4096, !dbg !1859
  %call = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 1) #27, !dbg !1860
  call void @llvm.dbg.value(metadata ptr %call, metadata !1852, metadata !DIExpression()), !dbg !1854
  %cmp2 = icmp eq ptr %call, null, !dbg !1861
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !1863

if.end4:                                          ; preds = %if.end
  %datum = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 1, !dbg !1864
  %1 = load ptr, ptr %datum, align 8, !dbg !1864, !tbaa !345
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call, ptr align 1 %1, i64 %0, i1 false), !dbg !1865
  %arrayidx = getelementptr inbounds i8, ptr %call, i64 %0, !dbg !1866
  store i8 0, ptr %arrayidx, align 1, !dbg !1867, !tbaa !271
  br label %cleanup, !dbg !1868

cleanup:                                          ; preds = %entry, %if.end, %if.end4
  %retval.0 = phi ptr [ %call, %if.end4 ], [ null, %if.end ], [ null, %entry ], !dbg !1854
  ret ptr %retval.0, !dbg !1869
}

; Function Attrs: nounwind uwtable
define dso_local ptr @StringInfoToHexString(ptr nocapture noundef readonly %string_info) local_unnamed_addr #0 !dbg !1870 {
entry:
  %hex_digits = alloca [16 x i8], align 16
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception10 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !1872, metadata !DIExpression()), !dbg !1890
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hex_digits) #24, !dbg !1891
  call void @llvm.dbg.declare(metadata ptr %hex_digits, metadata !1878, metadata !DIExpression()), !dbg !1892
  %length1 = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 2, !dbg !1893
  %0 = load i64, ptr %length1, align 8, !dbg !1893, !tbaa !342
  call void @llvm.dbg.value(metadata i64 %0, metadata !1877, metadata !DIExpression()), !dbg !1890
  %cmp = icmp ugt i64 %0, -4097, !dbg !1894
  br i1 %cmp, label %if.then, label %if.end, !dbg !1895

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #24, !dbg !1896
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1885, metadata !DIExpression()), !dbg !1896
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !1896
  %call = tail call ptr @__errno_location() #25, !dbg !1896
  %1 = load i32, ptr %call, align 4, !dbg !1896, !tbaa !259
  %call2 = call ptr @GetExceptionMessage(i32 noundef %1) #24, !dbg !1896
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1882, metadata !DIExpression()), !dbg !1897
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2085, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call2) #24, !dbg !1896
  %call4 = call ptr @DestroyString(ptr noundef %call2), !dbg !1896
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1882, metadata !DIExpression()), !dbg !1897
  call void @CatchException(ptr noundef nonnull %exception) #24, !dbg !1896
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !1896
  call void @MagickCoreTerminus() #24, !dbg !1896
  call void @_exit(i32 noundef 1) #26, !dbg !1896
  unreachable, !dbg !1896

if.end:                                           ; preds = %entry
  %add = add nuw i64 %0, 4096, !dbg !1898
  %call6 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 2) #27, !dbg !1899
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1873, metadata !DIExpression()), !dbg !1890
  %cmp7 = icmp eq ptr %call6, null, !dbg !1900
  br i1 %cmp7, label %if.then8, label %if.end16, !dbg !1901

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception10) #24, !dbg !1902
  call void @llvm.dbg.declare(metadata ptr %exception10, metadata !1889, metadata !DIExpression()), !dbg !1902
  call void @GetExceptionInfo(ptr noundef nonnull %exception10) #24, !dbg !1902
  %call11 = tail call ptr @__errno_location() #25, !dbg !1902
  %2 = load i32, ptr %call11, align 4, !dbg !1902, !tbaa !259
  %call12 = call ptr @GetExceptionMessage(i32 noundef %2) #24, !dbg !1902
  call void @llvm.dbg.value(metadata ptr %call12, metadata !1886, metadata !DIExpression()), !dbg !1903
  %call13 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2088, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call12) #24, !dbg !1902
  %call14 = call ptr @DestroyString(ptr noundef %call12), !dbg !1902
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1886, metadata !DIExpression()), !dbg !1903
  call void @CatchException(ptr noundef nonnull %exception10) #24, !dbg !1902
  %call15 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception10) #24, !dbg !1902
  call void @MagickCoreTerminus() #24, !dbg !1902
  call void @_exit(i32 noundef 1) #26, !dbg !1902
  unreachable, !dbg !1902

if.end16:                                         ; preds = %if.end
  store i8 48, ptr %hex_digits, align 16, !dbg !1904, !tbaa !271
  %arrayidx17 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 1, !dbg !1905
  store i8 49, ptr %arrayidx17, align 1, !dbg !1906, !tbaa !271
  %arrayidx18 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 2, !dbg !1907
  store i8 50, ptr %arrayidx18, align 2, !dbg !1908, !tbaa !271
  %arrayidx19 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 3, !dbg !1909
  store i8 51, ptr %arrayidx19, align 1, !dbg !1910, !tbaa !271
  %arrayidx20 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 4, !dbg !1911
  store i8 52, ptr %arrayidx20, align 4, !dbg !1912, !tbaa !271
  %arrayidx21 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 5, !dbg !1913
  store i8 53, ptr %arrayidx21, align 1, !dbg !1914, !tbaa !271
  %arrayidx22 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 6, !dbg !1915
  store i8 54, ptr %arrayidx22, align 2, !dbg !1916, !tbaa !271
  %arrayidx23 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 7, !dbg !1917
  store i8 55, ptr %arrayidx23, align 1, !dbg !1918, !tbaa !271
  %arrayidx24 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 8, !dbg !1919
  store i8 56, ptr %arrayidx24, align 8, !dbg !1920, !tbaa !271
  %arrayidx25 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 9, !dbg !1921
  store i8 57, ptr %arrayidx25, align 1, !dbg !1922, !tbaa !271
  %arrayidx26 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 10, !dbg !1923
  store i8 97, ptr %arrayidx26, align 2, !dbg !1924, !tbaa !271
  %arrayidx27 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 11, !dbg !1925
  store i8 98, ptr %arrayidx27, align 1, !dbg !1926, !tbaa !271
  %arrayidx28 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 12, !dbg !1927
  store i8 99, ptr %arrayidx28, align 4, !dbg !1928, !tbaa !271
  %arrayidx29 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 13, !dbg !1929
  store i8 100, ptr %arrayidx29, align 1, !dbg !1930, !tbaa !271
  %arrayidx30 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 14, !dbg !1931
  store i8 101, ptr %arrayidx30, align 2, !dbg !1932, !tbaa !271
  %arrayidx31 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 15, !dbg !1933
  store i8 102, ptr %arrayidx31, align 1, !dbg !1934, !tbaa !271
  call void @llvm.dbg.value(metadata ptr undef, metadata !1874, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1876, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 0, metadata !1875, metadata !DIExpression()), !dbg !1890
  %3 = load i64, ptr %length1, align 8, !dbg !1935, !tbaa !342
  %cmp3353 = icmp sgt i64 %3, 0, !dbg !1938
  br i1 %cmp3353, label %for.body.preheader, label %for.end, !dbg !1939

for.body.preheader:                               ; preds = %if.end16
  %datum = getelementptr inbounds %struct._StringInfo, ptr %string_info, i64 0, i32 1, !dbg !1940
  %4 = load ptr, ptr %datum, align 8, !dbg !1940, !tbaa !345
  call void @llvm.dbg.value(metadata ptr %4, metadata !1874, metadata !DIExpression()), !dbg !1890
  br label %for.body, !dbg !1939

for.body:                                         ; preds = %for.body.preheader, %for.body
  %p.056 = phi ptr [ %incdec.ptr40, %for.body ], [ %4, %for.body.preheader ]
  %i.055 = phi i64 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %q.054 = phi ptr [ %incdec.ptr39, %for.body ], [ %call6, %for.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.056, metadata !1874, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %i.055, metadata !1875, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata ptr %q.054, metadata !1876, metadata !DIExpression()), !dbg !1890
  %5 = load i8, ptr %p.056, align 1, !dbg !1941, !tbaa !271
  %6 = lshr i8 %5, 4, !dbg !1943
  %7 = zext i8 %6 to i64
  %arrayidx34 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 %7, !dbg !1944
  %8 = load i8, ptr %arrayidx34, align 1, !dbg !1944, !tbaa !271
  %incdec.ptr = getelementptr inbounds i8, ptr %q.054, i64 1, !dbg !1945
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1876, metadata !DIExpression()), !dbg !1890
  store i8 %8, ptr %q.054, align 1, !dbg !1946, !tbaa !271
  %9 = load i8, ptr %p.056, align 1, !dbg !1947, !tbaa !271
  %10 = and i8 %9, 15, !dbg !1948
  %11 = zext i8 %10 to i64
  %arrayidx38 = getelementptr inbounds [16 x i8], ptr %hex_digits, i64 0, i64 %11, !dbg !1949
  %12 = load i8, ptr %arrayidx38, align 1, !dbg !1949, !tbaa !271
  %incdec.ptr39 = getelementptr inbounds i8, ptr %q.054, i64 2, !dbg !1950
  call void @llvm.dbg.value(metadata ptr %incdec.ptr39, metadata !1876, metadata !DIExpression()), !dbg !1890
  store i8 %12, ptr %incdec.ptr, align 1, !dbg !1951, !tbaa !271
  %incdec.ptr40 = getelementptr inbounds i8, ptr %p.056, i64 1, !dbg !1952
  call void @llvm.dbg.value(metadata ptr %incdec.ptr40, metadata !1874, metadata !DIExpression()), !dbg !1890
  %inc = add nuw nsw i64 %i.055, 1, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1875, metadata !DIExpression()), !dbg !1890
  %13 = load i64, ptr %length1, align 8, !dbg !1935, !tbaa !342
  %cmp33 = icmp slt i64 %inc, %13, !dbg !1938
  br i1 %cmp33, label %for.body, label %for.end, !dbg !1939, !llvm.loop !1954

for.end:                                          ; preds = %for.body, %if.end16
  %q.0.lcssa = phi ptr [ %call6, %if.end16 ], [ %incdec.ptr39, %for.body ], !dbg !1890
  store i8 0, ptr %q.0.lcssa, align 1, !dbg !1956, !tbaa !271
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hex_digits) #24, !dbg !1957
  ret ptr %call6, !dbg !1958
}

; Function Attrs: nounwind uwtable
define dso_local ptr @StringToArgv(ptr noundef %text, ptr nocapture noundef %argc) local_unnamed_addr #0 !dbg !1959 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception172 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %text, metadata !1964, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata ptr %argc, metadata !1965, metadata !DIExpression()), !dbg !1982
  store i32 0, ptr %argc, align 4, !dbg !1983, !tbaa !259
  %cmp = icmp eq ptr %text, null, !dbg !1984
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !1986

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %text, metadata !1967, metadata !DIExpression()), !dbg !1982
  %0 = load i8, ptr %text, align 1, !dbg !1987, !tbaa !271
  %cmp1.not301 = icmp eq i8 %0, 0, !dbg !1990
  br i1 %cmp1.not301, label %for.end63, label %while.cond.preheader.lr.ph, !dbg !1991

while.cond.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %call = tail call ptr @__ctype_b_loc() #25, !dbg !1982
  %1 = load ptr, ptr %call, align 8, !tbaa !434
  %.phi.trans.insert316 = zext i8 %0 to i64
  %arrayidx296.phi.trans.insert = getelementptr inbounds i16, ptr %1, i64 %.phi.trans.insert316
  %.pre317 = load i16, ptr %arrayidx296.phi.trans.insert, align 2, !dbg !1992, !tbaa !1604
  br label %while.cond.preheader, !dbg !1991

for.cond.loopexit:                                ; preds = %while.cond46.while.cond46_crit_edge, %if.end45
  %p.6.lcssa = phi ptr [ %p.5, %if.end45 ], [ %incdec.ptr61, %while.cond46.while.cond46_crit_edge ], !dbg !1994
  %.lcssa337 = phi i16 [ %13, %if.end45 ], [ %16, %while.cond46.while.cond46_crit_edge ], !dbg !1995
  %cmp57.not.lcssa = phi i1 [ %cmp57.not340, %if.end45 ], [ %cmp57.not, %while.cond46.while.cond46_crit_edge ]
  call void @llvm.dbg.value(metadata ptr %p.6.lcssa, metadata !1967, metadata !DIExpression()), !dbg !1982
  br i1 %cmp57.not.lcssa, label %for.end63, label %while.cond.preheader, !dbg !1991, !llvm.loop !1996

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %for.cond.loopexit
  %2 = phi i16 [ %.pre317, %while.cond.preheader.lr.ph ], [ %.lcssa337, %for.cond.loopexit ], !dbg !1992
  %3 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc, %for.cond.loopexit ]
  %p.0302 = phi ptr [ %text, %while.cond.preheader.lr.ph ], [ %p.6.lcssa, %for.cond.loopexit ]
  call void @llvm.dbg.value(metadata ptr %p.0302, metadata !1967, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata ptr %p.0302, metadata !1967, metadata !DIExpression()), !dbg !1982
  %4 = and i16 %2, 8192, !dbg !1992
  %cmp5.not297 = icmp eq i16 %4, 0, !dbg !1998
  br i1 %cmp5.not297, label %if.end11, label %while.body, !dbg !1999

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %p.1298 = phi ptr [ %incdec.ptr, %while.body ], [ %p.0302, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.1298, metadata !1967, metadata !DIExpression()), !dbg !1982
  %incdec.ptr = getelementptr inbounds i8, ptr %p.1298, i64 1, !dbg !2000
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1967, metadata !DIExpression()), !dbg !1982
  %.pr = load i8, ptr %incdec.ptr, align 1, !dbg !1992, !tbaa !271
  %5 = zext i8 %.pr to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %5, !dbg !1992
  %6 = load i16, ptr %arrayidx, align 2, !dbg !1992, !tbaa !1604
  %7 = and i16 %6, 8192, !dbg !1992
  %cmp5.not = icmp eq i16 %7, 0, !dbg !1998
  br i1 %cmp5.not, label %while.end, label %while.body, !dbg !1999, !llvm.loop !2001

while.end:                                        ; preds = %while.body
  %cmp8 = icmp eq i8 %.pr, 0, !dbg !2002
  br i1 %cmp8, label %for.end63, label %if.end11, !dbg !2004

if.end11:                                         ; preds = %while.cond.preheader, %while.end
  %p.1.lcssa321 = phi ptr [ %incdec.ptr, %while.end ], [ %p.0302, %while.cond.preheader ]
  %inc = add nuw nsw i32 %3, 1, !dbg !2005
  store i32 %inc, ptr %argc, align 4, !dbg !2005, !tbaa !259
  %8 = load i8, ptr %p.1.lcssa321, align 1, !dbg !2006, !tbaa !271
  switch i8 %8, label %if.end45 [
    i8 34, label %for.cond17
    i8 39, label %for.cond32
  ], !dbg !2008

for.cond17:                                       ; preds = %if.end11, %for.cond17
  %p.1.pn = phi ptr [ %p.2, %for.cond17 ], [ %p.1.lcssa321, %if.end11 ]
  %p.2 = getelementptr inbounds i8, ptr %p.1.pn, i64 1, !dbg !2009
  call void @llvm.dbg.value(metadata ptr %p.2, metadata !1967, metadata !DIExpression()), !dbg !1982
  %9 = load i8, ptr %p.2, align 1, !dbg !2011, !tbaa !271
  switch i8 %9, label %for.cond17 [
    i8 34, label %if.end45
    i8 0, label %if.end45
  ], !dbg !2013, !llvm.loop !2014

for.cond32:                                       ; preds = %if.end11, %for.cond32
  %p.3.pn = phi ptr [ %p.4, %for.cond32 ], [ %p.1.lcssa321, %if.end11 ]
  %p.4 = getelementptr inbounds i8, ptr %p.3.pn, i64 1, !dbg !2017
  call void @llvm.dbg.value(metadata ptr %p.4, metadata !1967, metadata !DIExpression()), !dbg !1982
  %10 = load i8, ptr %p.4, align 1, !dbg !2020, !tbaa !271
  switch i8 %10, label %for.cond32 [
    i8 39, label %if.end45
    i8 0, label %if.end45
  ], !dbg !2022, !llvm.loop !2023

if.end45:                                         ; preds = %for.cond32, %for.cond32, %for.cond17, %for.cond17, %if.end11
  %11 = phi i8 [ %8, %if.end11 ], [ %9, %for.cond17 ], [ %9, %for.cond17 ], [ %10, %for.cond32 ], [ %10, %for.cond32 ]
  %p.5 = phi ptr [ %p.1.lcssa321, %if.end11 ], [ %p.2, %for.cond17 ], [ %p.2, %for.cond17 ], [ %p.4, %for.cond32 ], [ %p.4, %for.cond32 ], !dbg !1994
  call void @llvm.dbg.value(metadata ptr %p.5, metadata !1967, metadata !DIExpression()), !dbg !1982
  %12 = zext i8 %11 to i64
  %arrayidx50338 = getelementptr inbounds i16, ptr %1, i64 %12, !dbg !1995
  %13 = load i16, ptr %arrayidx50338, align 2, !dbg !1995, !tbaa !1604
  %14 = and i16 %13, 8192, !dbg !1995
  %cmp53339 = icmp ne i16 %14, 0, !dbg !2026
  %cmp57.not340 = icmp eq i8 %11, 0
  %or.cond341 = select i1 %cmp53339, i1 true, i1 %cmp57.not340, !dbg !2027
  call void @llvm.dbg.value(metadata ptr %p.5, metadata !1967, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1982
  br i1 %or.cond341, label %for.cond.loopexit, label %while.cond46.while.cond46_crit_edge, !dbg !2027, !llvm.loop !2028

while.cond46.while.cond46_crit_edge:              ; preds = %if.end45, %while.cond46.while.cond46_crit_edge
  %p.6342 = phi ptr [ %incdec.ptr61, %while.cond46.while.cond46_crit_edge ], [ %p.5, %if.end45 ]
  call void @llvm.dbg.value(metadata ptr %p.6342, metadata !1967, metadata !DIExpression()), !dbg !1982
  %incdec.ptr61 = getelementptr inbounds i8, ptr %p.6342, i64 1, !dbg !2030
  call void @llvm.dbg.value(metadata ptr %incdec.ptr61, metadata !1967, metadata !DIExpression()), !dbg !1982
  %.pre = load i8, ptr %incdec.ptr61, align 1, !dbg !1995, !tbaa !271
  %15 = zext i8 %.pre to i64
  %arrayidx50 = getelementptr inbounds i16, ptr %1, i64 %15, !dbg !1995
  %16 = load i16, ptr %arrayidx50, align 2, !dbg !1995, !tbaa !1604
  %17 = and i16 %16, 8192, !dbg !1995
  %cmp53 = icmp ne i16 %17, 0, !dbg !2026
  %cmp57.not = icmp eq i8 %.pre, 0
  %or.cond = select i1 %cmp53, i1 true, i1 %cmp57.not, !dbg !2027
  call void @llvm.dbg.value(metadata ptr %incdec.ptr61, metadata !1967, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1982
  br i1 %or.cond, label %for.cond.loopexit, label %while.cond46.while.cond46_crit_edge, !dbg !2027, !llvm.loop !2028

for.end63:                                        ; preds = %for.cond.loopexit, %while.end, %for.cond.preheader
  %18 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.loopexit ], [ %3, %while.end ], !dbg !2031
  %inc64 = add nsw i32 %18, 1, !dbg !2031
  store i32 %inc64, ptr %argc, align 4, !dbg !2031, !tbaa !259
  %19 = sext i32 %18 to i64, !dbg !2032
  %add = add nsw i64 %19, 2, !dbg !2032
  %call66 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #27, !dbg !2033
  call void @llvm.dbg.value(metadata ptr %call66, metadata !1966, metadata !DIExpression()), !dbg !1982
  %cmp67 = icmp eq ptr %call66, null, !dbg !2034
  br i1 %cmp67, label %if.then69, label %if.end75, !dbg !2035

if.then69:                                        ; preds = %for.end63
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #24, !dbg !2036
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1973, metadata !DIExpression()), !dbg !2036
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !2036
  %call70 = tail call ptr @__errno_location() #25, !dbg !2036
  %20 = load i32, ptr %call70, align 4, !dbg !2036, !tbaa !259
  %call71 = call ptr @GetExceptionMessage(i32 noundef %20) #24, !dbg !2036
  call void @llvm.dbg.value(metadata ptr %call71, metadata !1970, metadata !DIExpression()), !dbg !2037
  %call72 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2186, i32 noundef 700, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef %call71) #24, !dbg !2036
  %call73 = call ptr @DestroyString(ptr noundef %call71), !dbg !2036
  call void @llvm.dbg.value(metadata ptr %call73, metadata !1970, metadata !DIExpression()), !dbg !2037
  call void @CatchException(ptr noundef nonnull %exception) #24, !dbg !2036
  %call74 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !2036
  call void @MagickCoreTerminus() #24, !dbg !2036
  call void @_exit(i32 noundef 1) #26, !dbg !2036
  unreachable, !dbg !2036

if.end75:                                         ; preds = %for.end63
  %call76 = tail call ptr @AcquireString(ptr noundef nonnull @.str.38), !dbg !2038
  store ptr %call76, ptr %call66, align 8, !dbg !2039, !tbaa !434
  call void @llvm.dbg.value(metadata ptr %text, metadata !1967, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i64 1, metadata !1969, metadata !DIExpression()), !dbg !1982
  %21 = load i32, ptr %argc, align 4, !dbg !2040, !tbaa !259
  %cmp80304 = icmp sgt i32 %21, 1, !dbg !2041
  br i1 %cmp80304, label %while.cond83.preheader.lr.ph, label %for.end207, !dbg !2042

while.cond83.preheader.lr.ph:                     ; preds = %if.end75
  %call84 = tail call ptr @__ctype_b_loc() #25, !dbg !1982
  %.pre313 = load ptr, ptr %call84, align 8, !tbaa !434
  br label %while.cond83.preheader, !dbg !2042

while.cond83.preheader:                           ; preds = %while.cond83.preheader.lr.ph, %for.inc205
  %22 = phi ptr [ %.pre313, %while.cond83.preheader.lr.ph ], [ %34, %for.inc205 ]
  %i.0306 = phi i64 [ 1, %while.cond83.preheader.lr.ph ], [ %inc206, %for.inc205 ]
  %p.7305 = phi ptr [ %text, %while.cond83.preheader.lr.ph ], [ %p.10, %for.inc205 ]
  call void @llvm.dbg.value(metadata i64 %i.0306, metadata !1969, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata ptr %p.7305, metadata !1967, metadata !DIExpression()), !dbg !1982
  br label %while.cond83, !dbg !2043

while.cond83:                                     ; preds = %while.cond83, %while.cond83.preheader
  %p.8 = phi ptr [ %incdec.ptr93, %while.cond83 ], [ %p.7305, %while.cond83.preheader ], !dbg !1982
  call void @llvm.dbg.value(metadata ptr %p.8, metadata !1967, metadata !DIExpression()), !dbg !1982
  %23 = load i8, ptr %p.8, align 1, !dbg !2044, !tbaa !271
  %24 = zext i8 %23 to i64
  %arrayidx87 = getelementptr inbounds i16, ptr %22, i64 %24, !dbg !2044
  %25 = load i16, ptr %arrayidx87, align 2, !dbg !2044, !tbaa !1604
  %26 = and i16 %25, 8192, !dbg !2044
  %cmp90.not = icmp eq i16 %26, 0, !dbg !2045
  %incdec.ptr93 = getelementptr inbounds i8, ptr %p.8, i64 1, !dbg !2046
  call void @llvm.dbg.value(metadata ptr %incdec.ptr93, metadata !1967, metadata !DIExpression()), !dbg !1982
  br i1 %cmp90.not, label %while.end94, label %while.cond83, !dbg !2043, !llvm.loop !2047

while.end94:                                      ; preds = %while.cond83
  call void @llvm.dbg.value(metadata ptr %p.8, metadata !1968, metadata !DIExpression()), !dbg !1982
  switch i8 %23, label %while.cond134.preheader [
    i8 34, label %for.cond101
    i8 39, label %for.cond120
  ], !dbg !2048

while.cond134.preheader:                          ; preds = %while.end94
  call void @llvm.dbg.value(metadata ptr %p.8, metadata !1968, metadata !DIExpression()), !dbg !1982
  %27 = and i16 %25, 8192, !dbg !2049
  %cmp141345 = icmp ne i16 %27, 0, !dbg !2052
  %cmp145.not346 = icmp eq i8 %23, 0
  %or.cond285347 = select i1 %cmp141345, i1 true, i1 %cmp145.not346, !dbg !2053
  call void @llvm.dbg.value(metadata ptr %p.8, metadata !1968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1982
  br i1 %or.cond285347, label %if.end152, label %while.cond134.while.cond134_crit_edge, !dbg !2053, !llvm.loop !2054

for.cond101:                                      ; preds = %while.end94, %for.inc111
  %q.0 = phi ptr [ %incdec.ptr112, %for.inc111 ], [ %incdec.ptr93, %while.end94 ], !dbg !2057
  call void @llvm.dbg.value(metadata ptr %q.0, metadata !1968, metadata !DIExpression()), !dbg !1982
  %28 = load i8, ptr %q.0, align 1, !dbg !2060, !tbaa !271
  switch i8 %28, label %for.inc111 [
    i8 34, label %if.end152
    i8 0, label %if.end152
  ], !dbg !2062

for.inc111:                                       ; preds = %for.cond101
  %incdec.ptr112 = getelementptr inbounds i8, ptr %q.0, i64 1, !dbg !2063
  call void @llvm.dbg.value(metadata ptr %incdec.ptr112, metadata !1968, metadata !DIExpression()), !dbg !1982
  br label %for.cond101, !dbg !2064, !llvm.loop !2065

for.cond120:                                      ; preds = %while.end94, %for.inc130
  %q.1 = phi ptr [ %incdec.ptr131, %for.inc130 ], [ %incdec.ptr93, %while.end94 ], !dbg !2068
  call void @llvm.dbg.value(metadata ptr %q.1, metadata !1968, metadata !DIExpression()), !dbg !1982
  %29 = load i8, ptr %q.1, align 1, !dbg !2071, !tbaa !271
  switch i8 %29, label %for.inc130 [
    i8 39, label %if.end152
    i8 0, label %if.end152
  ], !dbg !2073

for.inc130:                                       ; preds = %for.cond120
  %incdec.ptr131 = getelementptr inbounds i8, ptr %q.1, i64 1, !dbg !2074
  call void @llvm.dbg.value(metadata ptr %incdec.ptr131, metadata !1968, metadata !DIExpression()), !dbg !1982
  br label %for.cond120, !dbg !2075, !llvm.loop !2076

while.cond134.while.cond134_crit_edge:            ; preds = %while.cond134.preheader, %while.cond134.while.cond134_crit_edge
  %q.2348 = phi ptr [ %incdec.ptr149, %while.cond134.while.cond134_crit_edge ], [ %p.8, %while.cond134.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.2348, metadata !1968, metadata !DIExpression()), !dbg !1982
  %incdec.ptr149 = getelementptr inbounds i8, ptr %q.2348, i64 1, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %incdec.ptr149, metadata !1968, metadata !DIExpression()), !dbg !1982
  %.pre314 = load i8, ptr %incdec.ptr149, align 1, !dbg !2049, !tbaa !271
  %.phi.trans.insert = zext i8 %.pre314 to i64
  %arrayidx138.phi.trans.insert = getelementptr inbounds i16, ptr %22, i64 %.phi.trans.insert
  %.pre315 = load i16, ptr %arrayidx138.phi.trans.insert, align 2, !dbg !2049, !tbaa !1604
  %30 = and i16 %.pre315, 8192, !dbg !2049
  %cmp141 = icmp ne i16 %30, 0, !dbg !2052
  %cmp145.not = icmp eq i8 %.pre314, 0
  %or.cond285 = select i1 %cmp141, i1 true, i1 %cmp145.not, !dbg !2053
  call void @llvm.dbg.value(metadata ptr %incdec.ptr149, metadata !1968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1982
  br i1 %or.cond285, label %if.end152, label %while.cond134.while.cond134_crit_edge, !dbg !2053, !llvm.loop !2054

if.end152:                                        ; preds = %for.cond120, %for.cond120, %for.cond101, %for.cond101, %while.cond134.while.cond134_crit_edge, %while.cond134.preheader
  %p.9 = phi ptr [ %p.8, %while.cond134.preheader ], [ %p.8, %while.cond134.while.cond134_crit_edge ], [ %incdec.ptr93, %for.cond101 ], [ %incdec.ptr93, %for.cond101 ], [ %incdec.ptr93, %for.cond120 ], [ %incdec.ptr93, %for.cond120 ], !dbg !1982
  %q.3 = phi ptr [ %p.8, %while.cond134.preheader ], [ %incdec.ptr149, %while.cond134.while.cond134_crit_edge ], [ %q.0, %for.cond101 ], [ %q.0, %for.cond101 ], [ %q.1, %for.cond120 ], [ %q.1, %for.cond120 ], !dbg !2079
  call void @llvm.dbg.value(metadata ptr %q.3, metadata !1968, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata ptr %p.9, metadata !1967, metadata !DIExpression()), !dbg !1982
  %sub.ptr.lhs.cast = ptrtoint ptr %q.3 to i64, !dbg !2080
  %sub.ptr.rhs.cast = ptrtoint ptr %p.9 to i64, !dbg !2080
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2080
  %add153 = add i64 %sub.ptr.sub, 4096, !dbg !2081
  %call154 = tail call ptr @AcquireQuantumMemory(i64 noundef %add153, i64 noundef 1) #27, !dbg !2082
  %arrayidx155 = getelementptr inbounds ptr, ptr %call66, i64 %i.0306, !dbg !2083
  store ptr %call154, ptr %arrayidx155, align 8, !dbg !2084, !tbaa !434
  %cmp157 = icmp eq ptr %call154, null, !dbg !2085
  br i1 %cmp157, label %for.body163, label %if.end178, !dbg !2086

for.body163:                                      ; preds = %if.end152, %for.body163
  %i.1.in308 = phi i64 [ %i.1, %for.body163 ], [ %i.0306, %if.end152 ]
  call void @llvm.dbg.value(metadata i64 %i.1.in308, metadata !1969, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1982
  %i.1 = add nsw i64 %i.1.in308, -1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1969, metadata !DIExpression()), !dbg !1982
  %arrayidx164 = getelementptr inbounds ptr, ptr %call66, i64 %i.1, !dbg !2089
  %31 = load ptr, ptr %arrayidx164, align 8, !dbg !2089, !tbaa !434
  call void @llvm.dbg.value(metadata ptr %31, metadata !297, metadata !DIExpression()) #24, !dbg !2091
  %call.i = tail call ptr @RelinquishMagickMemory(ptr noundef %31) #24, !dbg !2093
  store ptr %call.i, ptr %arrayidx164, align 8, !dbg !2094, !tbaa !434
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1969, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1982
  %cmp161 = icmp sgt i64 %i.1.in308, 1, !dbg !2095
  br i1 %cmp161, label %for.body163, label %for.end169, !dbg !2096, !llvm.loop !2097

for.end169:                                       ; preds = %for.body163
  %call170 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call66) #24, !dbg !2099
  call void @llvm.dbg.value(metadata ptr %call170, metadata !1966, metadata !DIExpression()), !dbg !1982
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception172) #24, !dbg !2100
  call void @llvm.dbg.declare(metadata ptr %exception172, metadata !1981, metadata !DIExpression()), !dbg !2100
  call void @GetExceptionInfo(ptr noundef nonnull %exception172) #24, !dbg !2100
  %call173 = tail call ptr @__errno_location() #25, !dbg !2100
  %32 = load i32, ptr %call173, align 4, !dbg !2100, !tbaa !259
  %call174 = call ptr @GetExceptionMessage(i32 noundef %32) #24, !dbg !2100
  call void @llvm.dbg.value(metadata ptr %call174, metadata !1974, metadata !DIExpression()), !dbg !2101
  %call175 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception172, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2219, i32 noundef 700, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef %call174) #24, !dbg !2100
  %call176 = call ptr @DestroyString(ptr noundef %call174), !dbg !2100
  call void @llvm.dbg.value(metadata ptr %call176, metadata !1974, metadata !DIExpression()), !dbg !2101
  call void @CatchException(ptr noundef nonnull %exception172) #24, !dbg !2100
  %call177 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception172) #24, !dbg !2100
  call void @MagickCoreTerminus() #24, !dbg !2100
  call void @_exit(i32 noundef 1) #26, !dbg !2100
  unreachable, !dbg !2100

if.end178:                                        ; preds = %if.end152
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call154, ptr nonnull align 1 %p.9, i64 %sub.ptr.sub, i1 false), !dbg !2102
  %33 = load ptr, ptr %arrayidx155, align 8, !dbg !2103, !tbaa !434
  %arrayidx187 = getelementptr inbounds i8, ptr %33, i64 %sub.ptr.sub, !dbg !2103
  store i8 0, ptr %arrayidx187, align 1, !dbg !2104, !tbaa !271
  call void @llvm.dbg.value(metadata ptr %q.3, metadata !1967, metadata !DIExpression()), !dbg !1982
  %34 = load ptr, ptr %call84, align 8, !tbaa !434
  br label %while.cond188, !dbg !2105

while.cond188:                                    ; preds = %while.cond188, %if.end178
  %p.10 = phi ptr [ %q.3, %if.end178 ], [ %incdec.ptr203, %while.cond188 ], !dbg !2079
  call void @llvm.dbg.value(metadata ptr %p.10, metadata !1967, metadata !DIExpression()), !dbg !1982
  %35 = load i8, ptr %p.10, align 1, !dbg !2106, !tbaa !271
  %36 = zext i8 %35 to i64
  %arrayidx192 = getelementptr inbounds i16, ptr %34, i64 %36, !dbg !2106
  %37 = load i16, ptr %arrayidx192, align 2, !dbg !2106, !tbaa !1604
  %38 = and i16 %37, 8192, !dbg !2106
  %cmp195 = icmp ne i16 %38, 0, !dbg !2107
  %cmp199.not = icmp eq i8 %35, 0
  %or.cond286 = select i1 %cmp195, i1 true, i1 %cmp199.not, !dbg !2108
  %incdec.ptr203 = getelementptr inbounds i8, ptr %p.10, i64 1, !dbg !2109
  call void @llvm.dbg.value(metadata ptr %incdec.ptr203, metadata !1967, metadata !DIExpression()), !dbg !1982
  br i1 %or.cond286, label %for.inc205, label %while.cond188, !dbg !2108, !llvm.loop !2110

for.inc205:                                       ; preds = %while.cond188
  %inc206 = add nuw nsw i64 %i.0306, 1, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %inc206, metadata !1969, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata ptr %p.10, metadata !1967, metadata !DIExpression()), !dbg !1982
  %39 = load i32, ptr %argc, align 4, !dbg !2040, !tbaa !259
  %conv79 = sext i32 %39 to i64, !dbg !2112
  %cmp80 = icmp slt i64 %inc206, %conv79, !dbg !2041
  br i1 %cmp80, label %while.cond83.preheader, label %for.end207, !dbg !2042, !llvm.loop !2113

for.end207:                                       ; preds = %for.inc205, %if.end75
  %i.0.lcssa = phi i64 [ 1, %if.end75 ], [ %inc206, %for.inc205 ], !dbg !2115
  %arrayidx208 = getelementptr inbounds ptr, ptr %call66, i64 %i.0.lcssa, !dbg !2116
  store ptr null, ptr %arrayidx208, align 8, !dbg !2117, !tbaa !434
  br label %cleanup, !dbg !2118

cleanup:                                          ; preds = %entry, %for.end207
  %retval.0 = phi ptr [ %call66, %for.end207 ], [ null, %entry ], !dbg !1982
  ret ptr %retval.0, !dbg !2119
}

; Function Attrs: nounwind uwtable
define dso_local ptr @StringToArrayOfDoubles(ptr noundef %string, ptr nocapture noundef %count, ptr noundef %exception) local_unnamed_addr #0 !dbg !2120 {
entry:
  %q = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %string, metadata !2125, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata ptr %count, metadata !2126, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2127, metadata !DIExpression()), !dbg !2132
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q) #24, !dbg !2133
  store i64 0, ptr %count, align 8, !dbg !2134, !tbaa !1235
  call void @llvm.dbg.value(metadata i64 0, metadata !2131, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata ptr %string, metadata !2129, metadata !DIExpression()), !dbg !2132
  %0 = load i8, ptr %string, align 1, !dbg !2135, !tbaa !271
  %cmp.not91 = icmp eq i8 %0, 0, !dbg !2136
  br i1 %cmp.not91, label %while.end29, label %while.body, !dbg !2137

while.cond.loopexit:                              ; preds = %while.cond17
  %inc = add nuw nsw i64 %i.093, 1, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2131, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata ptr %p.3, metadata !2129, metadata !DIExpression()), !dbg !2132
  %cmp.not = icmp eq i8 %7, 0, !dbg !2136
  br i1 %cmp.not, label %while.end29, label %while.body, !dbg !2137, !llvm.loop !2140

while.body:                                       ; preds = %entry, %while.cond.loopexit
  %i.093 = phi i64 [ %inc, %while.cond.loopexit ], [ 0, %entry ]
  %p.092 = phi ptr [ %p.3, %while.cond.loopexit ], [ %string, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.093, metadata !2131, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata ptr %p.092, metadata !2129, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata ptr %q, metadata !2128, metadata !DIExpression(DW_OP_deref)), !dbg !2132
  call void @llvm.dbg.value(metadata ptr %p.092, metadata !2142, metadata !DIExpression()) #24, !dbg !2147
  call void @llvm.dbg.value(metadata ptr %q, metadata !2146, metadata !DIExpression()) #24, !dbg !2147
  %call.i = call double @InterpretLocaleValue(ptr noundef nonnull %p.092, ptr noundef nonnull %q) #24, !dbg !2149
  %1 = load ptr, ptr %q, align 8, !dbg !2150, !tbaa !434
  call void @llvm.dbg.value(metadata ptr %1, metadata !2128, metadata !DIExpression()), !dbg !2132
  %cmp2 = icmp eq ptr %p.092, %1, !dbg !2152
  br i1 %cmp2, label %cleanup, label %if.end, !dbg !2153

if.end:                                           ; preds = %while.body
  call void @llvm.dbg.value(metadata ptr %1, metadata !2129, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2131, metadata !DIExpression()), !dbg !2132
  %call5 = tail call ptr @__ctype_b_loc() #25, !dbg !2132
  %2 = load ptr, ptr %call5, align 8, !tbaa !434
  br label %while.cond4, !dbg !2154

while.cond4:                                      ; preds = %while.cond4, %if.end
  %p.1 = phi ptr [ %1, %if.end ], [ %incdec.ptr, %while.cond4 ], !dbg !2155
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !2129, metadata !DIExpression()), !dbg !2132
  %3 = load i8, ptr %p.1, align 1, !dbg !2156, !tbaa !271
  %4 = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %4, !dbg !2156
  %5 = load i16, ptr %arrayidx, align 2, !dbg !2156, !tbaa !1604
  %6 = and i16 %5, 8192, !dbg !2156
  %cmp8.not = icmp eq i16 %6, 0, !dbg !2157
  %incdec.ptr = getelementptr inbounds i8, ptr %p.1, i64 1, !dbg !2158
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2129, metadata !DIExpression()), !dbg !2132
  br i1 %cmp8.not, label %while.end, label %while.cond4, !dbg !2154, !llvm.loop !2159

while.end:                                        ; preds = %while.cond4
  %cmp12 = icmp eq i8 %3, 44, !dbg !2160
  %spec.select.idx = zext i1 %cmp12 to i64, !dbg !2162
  %spec.select = getelementptr i8, ptr %p.1, i64 %spec.select.idx, !dbg !2162
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !2129, metadata !DIExpression()), !dbg !2132
  br label %while.cond17, !dbg !2163

while.cond17:                                     ; preds = %while.cond17, %while.end
  %p.3 = phi ptr [ %spec.select, %while.end ], [ %incdec.ptr27, %while.cond17 ], !dbg !2155
  call void @llvm.dbg.value(metadata ptr %p.3, metadata !2129, metadata !DIExpression()), !dbg !2132
  %7 = load i8, ptr %p.3, align 1, !dbg !2164, !tbaa !271
  %8 = zext i8 %7 to i64
  %arrayidx21 = getelementptr inbounds i16, ptr %2, i64 %8, !dbg !2164
  %9 = load i16, ptr %arrayidx21, align 2, !dbg !2164, !tbaa !1604
  %10 = and i16 %9, 8192, !dbg !2164
  %cmp24.not = icmp eq i16 %10, 0, !dbg !2165
  %incdec.ptr27 = getelementptr inbounds i8, ptr %p.3, i64 1, !dbg !2166
  call void @llvm.dbg.value(metadata ptr %incdec.ptr27, metadata !2129, metadata !DIExpression()), !dbg !2132
  br i1 %cmp24.not, label %while.cond.loopexit, label %while.cond17, !dbg !2163, !llvm.loop !2167

while.end29:                                      ; preds = %while.cond.loopexit, %entry
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %inc, %while.cond.loopexit ], !dbg !2132
  store i64 %i.0.lcssa, ptr %count, align 8, !dbg !2168, !tbaa !1235
  %call30 = call ptr @AcquireQuantumMemory(i64 noundef %i.0.lcssa, i64 noundef 8) #27, !dbg !2169
  call void @llvm.dbg.value(metadata ptr %call30, metadata !2130, metadata !DIExpression()), !dbg !2132
  %cmp31 = icmp eq ptr %call30, null, !dbg !2170
  br i1 %cmp31, label %if.then33, label %while.cond36.preheader, !dbg !2172

while.cond36.preheader:                           ; preds = %while.end29
  call void @llvm.dbg.value(metadata i64 0, metadata !2131, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata ptr %string, metadata !2129, metadata !DIExpression()), !dbg !2132
  %11 = load i8, ptr %string, align 1, !dbg !2173, !tbaa !271
  %cmp38.not94 = icmp eq i8 %11, 0, !dbg !2174
  br i1 %cmp38.not94, label %cleanup, label %land.rhs, !dbg !2175

if.then33:                                        ; preds = %while.end29
  %call34 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2310, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #24, !dbg !2176
  br label %cleanup, !dbg !2178

while.cond36.loopexit:                            ; preds = %while.cond46
  %inc44 = add nuw nsw i64 %i.196, 1, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %inc44, metadata !2131, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata ptr %p.5, metadata !2129, metadata !DIExpression()), !dbg !2132
  %cmp38.not = icmp eq i8 %15, 0, !dbg !2174
  br i1 %cmp38.not, label %cleanup, label %land.rhs, !dbg !2175, !llvm.loop !2181

land.rhs:                                         ; preds = %while.cond36.preheader, %while.cond36.loopexit
  %i.196 = phi i64 [ %inc44, %while.cond36.loopexit ], [ 0, %while.cond36.preheader ]
  %p.495 = phi ptr [ %p.5, %while.cond36.loopexit ], [ %string, %while.cond36.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.196, metadata !2131, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata ptr %p.495, metadata !2129, metadata !DIExpression()), !dbg !2132
  %12 = load i64, ptr %count, align 8, !dbg !2184, !tbaa !1235
  %cmp40 = icmp slt i64 %i.196, %12, !dbg !2185
  br i1 %cmp40, label %while.body42, label %cleanup, !dbg !2182

while.body42:                                     ; preds = %land.rhs
  call void @llvm.dbg.value(metadata ptr %q, metadata !2128, metadata !DIExpression(DW_OP_deref)), !dbg !2132
  call void @llvm.dbg.value(metadata ptr %p.495, metadata !2142, metadata !DIExpression()) #24, !dbg !2186
  call void @llvm.dbg.value(metadata ptr %q, metadata !2146, metadata !DIExpression()) #24, !dbg !2186
  %call.i87 = call double @InterpretLocaleValue(ptr noundef nonnull %p.495, ptr noundef nonnull %q) #24, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %inc44, metadata !2131, metadata !DIExpression()), !dbg !2132
  %arrayidx45 = getelementptr inbounds double, ptr %call30, i64 %i.196, !dbg !2189
  store double %call.i87, ptr %arrayidx45, align 8, !dbg !2190, !tbaa !2191
  %13 = load ptr, ptr %q, align 8, !dbg !2193, !tbaa !434
  call void @llvm.dbg.value(metadata ptr %13, metadata !2128, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata ptr %13, metadata !2129, metadata !DIExpression()), !dbg !2132
  %call47 = tail call ptr @__ctype_b_loc() #25, !dbg !2132
  %14 = load ptr, ptr %call47, align 8, !tbaa !434
  br label %while.cond46, !dbg !2194

while.cond46:                                     ; preds = %while.cond46, %while.body42
  %p.5 = phi ptr [ %13, %while.body42 ], [ %incdec.ptr59, %while.cond46 ], !dbg !2195
  call void @llvm.dbg.value(metadata ptr %p.5, metadata !2129, metadata !DIExpression()), !dbg !2132
  %15 = load i8, ptr %p.5, align 1, !dbg !2196, !tbaa !271
  %16 = zext i8 %15 to i64
  %arrayidx50 = getelementptr inbounds i16, ptr %14, i64 %16, !dbg !2196
  %17 = load i16, ptr %arrayidx50, align 2, !dbg !2196, !tbaa !1604
  %18 = and i16 %17, 8192, !dbg !2196
  %cmp53.not = icmp ne i16 %18, 0, !dbg !2197
  %cmp56 = icmp eq i8 %15, 44
  %or.cond = select i1 %cmp53.not, i1 true, i1 %cmp56, !dbg !2198
  %incdec.ptr59 = getelementptr inbounds i8, ptr %p.5, i64 1, !dbg !2199
  call void @llvm.dbg.value(metadata ptr %incdec.ptr59, metadata !2129, metadata !DIExpression()), !dbg !2132
  br i1 %or.cond, label %while.cond46, label %while.cond36.loopexit, !dbg !2198, !llvm.loop !2200

cleanup:                                          ; preds = %while.body, %while.cond36.loopexit, %land.rhs, %while.cond36.preheader, %if.then33
  %retval.0 = phi ptr [ null, %if.then33 ], [ %call30, %while.cond36.preheader ], [ %call30, %land.rhs ], [ %call30, %while.cond36.loopexit ], [ null, %while.body ], !dbg !2132
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q) #24, !dbg !2201
  ret ptr %retval.0, !dbg !2201
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local ptr @StringToken(ptr nocapture noundef readonly %delimiters, ptr nocapture noundef %string) local_unnamed_addr #15 !dbg !2202 {
entry:
  call void @llvm.dbg.value(metadata ptr %delimiters, metadata !2206, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata ptr %string, metadata !2207, metadata !DIExpression()), !dbg !2213
  %0 = load ptr, ptr %string, align 8, !dbg !2214, !tbaa !434
  call void @llvm.dbg.value(metadata ptr %0, metadata !2209, metadata !DIExpression()), !dbg !2213
  %cmp = icmp eq ptr %0, null, !dbg !2215
  br i1 %cmp, label %cleanup, label %for.cond, !dbg !2217

for.cond:                                         ; preds = %do.cond, %entry
  %p.0 = phi ptr [ %0, %entry ], [ %incdec.ptr, %do.cond ], !dbg !2213
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2209, metadata !DIExpression()), !dbg !2213
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !2218
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2209, metadata !DIExpression()), !dbg !2213
  %1 = load i8, ptr %p.0, align 1, !dbg !2222, !tbaa !271
  call void @llvm.dbg.value(metadata i8 %1, metadata !2211, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2213
  call void @llvm.dbg.value(metadata ptr %delimiters, metadata !2210, metadata !DIExpression()), !dbg !2213
  br label %do.body, !dbg !2223

do.body:                                          ; preds = %do.cond, %for.cond
  %r.0 = phi ptr [ %delimiters, %for.cond ], [ %incdec.ptr1, %do.cond ], !dbg !2224
  call void @llvm.dbg.value(metadata ptr %r.0, metadata !2210, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata ptr %r.0, metadata !2210, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2213
  %2 = load i8, ptr %r.0, align 1, !dbg !2225, !tbaa !271
  call void @llvm.dbg.value(metadata i8 %2, metadata !2212, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2213
  %cmp3 = icmp eq i8 %1, %2, !dbg !2227
  br i1 %cmp3, label %if.then5, label %do.cond, !dbg !2229

if.then5:                                         ; preds = %do.body
  %cmp6 = icmp eq i8 %1, 0, !dbg !2230
  br i1 %cmp6, label %if.end9, label %if.else, !dbg !2233

if.else:                                          ; preds = %if.then5
  store i8 0, ptr %p.0, align 1, !dbg !2234, !tbaa !271
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.else
  %p.1 = phi ptr [ %incdec.ptr, %if.else ], [ null, %if.then5 ], !dbg !2224
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !2209, metadata !DIExpression()), !dbg !2213
  store ptr %p.1, ptr %string, align 8, !dbg !2235, !tbaa !434
  br label %cleanup, !dbg !2236

do.cond:                                          ; preds = %do.body
  call void @llvm.dbg.value(metadata i8 %2, metadata !2212, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2213
  %incdec.ptr1 = getelementptr inbounds i8, ptr %r.0, i64 1, !dbg !2237
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1, metadata !2210, metadata !DIExpression()), !dbg !2213
  %cmp11.not = icmp eq i8 %2, 0, !dbg !2238
  br i1 %cmp11.not, label %for.cond, label %do.body, !dbg !2239, !llvm.loop !2240

cleanup:                                          ; preds = %entry, %if.end9
  ret ptr %0, !dbg !2243
}

; Function Attrs: nounwind uwtable
define dso_local ptr @StringToList(ptr noundef %text) local_unnamed_addr #0 !dbg !2244 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception67 = alloca %struct._ExceptionInfo, align 8
  %hex_string = alloca [4096 x i8], align 16
  %exception101 = alloca %struct._ExceptionInfo, align 8
  %exception119 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %text, metadata !2248, metadata !DIExpression()), !dbg !2282
  %cmp = icmp eq ptr %text, null, !dbg !2283
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !2285

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %text, metadata !2250, metadata !DIExpression()), !dbg !2282
  %0 = load i8, ptr %text, align 1, !dbg !2286, !tbaa !271
  %cmp1.not286 = icmp eq i8 %0, 0, !dbg !2289
  br i1 %cmp1.not286, label %for.cond16.preheader, label %for.body, !dbg !2290

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %1 = phi i8 [ %5, %for.inc ], [ %0, %for.cond.preheader ]
  %p.0287 = phi ptr [ %incdec.ptr, %for.inc ], [ %text, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.0287, metadata !2250, metadata !DIExpression()), !dbg !2282
  %cmp4 = icmp ult i8 %1, 32, !dbg !2291
  br i1 %cmp4, label %land.lhs.true, label %for.inc, !dbg !2293

land.lhs.true:                                    ; preds = %for.body
  %call = tail call ptr @__ctype_b_loc() #25, !dbg !2294
  %2 = load ptr, ptr %call, align 8, !dbg !2294, !tbaa !434
  %idxprom = zext i8 %1 to i64, !dbg !2294
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom, !dbg !2294
  %3 = load i16, ptr %arrayidx, align 2, !dbg !2294, !tbaa !1604
  %4 = and i16 %3, 8192, !dbg !2294
  %cmp8 = icmp eq i16 %4, 0, !dbg !2295
  br i1 %cmp8, label %if.else, label %for.inc, !dbg !2296

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0287, i64 1, !dbg !2297
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2250, metadata !DIExpression()), !dbg !2282
  %5 = load i8, ptr %incdec.ptr, align 1, !dbg !2286, !tbaa !271
  %cmp1.not = icmp eq i8 %5, 0, !dbg !2289
  br i1 %cmp1.not, label %for.cond16.preheader, label %for.body, !dbg !2290, !llvm.loop !2298

for.cond16.preheader:                             ; preds = %for.inc, %for.cond.preheader
  br label %for.cond16, !dbg !2300

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc26
  %6 = phi i8 [ %.pre, %for.inc26 ], [ %0, %for.cond16.preheader ], !dbg !2302
  %lines.0 = phi i64 [ %lines.1, %for.inc26 ], [ 1, %for.cond16.preheader ], !dbg !2304
  %p.1 = phi ptr [ %incdec.ptr27, %for.inc26 ], [ %text, %for.cond16.preheader ], !dbg !2305
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !2250, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %lines.0, metadata !2252, metadata !DIExpression()), !dbg !2282
  switch i8 %6, label %for.inc26 [
    i8 0, label %for.end28
    i8 10, label %if.then24
  ], !dbg !2300

if.then24:                                        ; preds = %for.cond16
  %inc = add i64 %lines.0, 1, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2252, metadata !DIExpression()), !dbg !2282
  br label %for.inc26, !dbg !2308

for.inc26:                                        ; preds = %for.cond16, %if.then24
  %lines.1 = phi i64 [ %inc, %if.then24 ], [ %lines.0, %for.cond16 ], !dbg !2304
  call void @llvm.dbg.value(metadata i64 %lines.1, metadata !2252, metadata !DIExpression()), !dbg !2282
  %incdec.ptr27 = getelementptr inbounds i8, ptr %p.1, i64 1, !dbg !2309
  call void @llvm.dbg.value(metadata ptr %incdec.ptr27, metadata !2250, metadata !DIExpression()), !dbg !2282
  %.pre = load i8, ptr %incdec.ptr27, align 1, !dbg !2302, !tbaa !271
  br label %for.cond16, !dbg !2310, !llvm.loop !2311

for.end28:                                        ; preds = %for.cond16
  %add = add i64 %lines.0, 1, !dbg !2313
  %call29 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #27, !dbg !2314
  call void @llvm.dbg.value(metadata ptr %call29, metadata !2249, metadata !DIExpression()), !dbg !2282
  %cmp30 = icmp eq ptr %call29, null, !dbg !2315
  br i1 %cmp30, label %if.then32, label %for.cond39.preheader, !dbg !2316

for.cond39.preheader:                             ; preds = %for.end28
  call void @llvm.dbg.value(metadata ptr %text, metadata !2250, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 0, metadata !2251, metadata !DIExpression()), !dbg !2282
  %cmp40307 = icmp sgt i64 %lines.0, 0, !dbg !2317
  br i1 %cmp40307, label %for.cond43.preheader, label %if.end194, !dbg !2318

if.then32:                                        ; preds = %for.end28
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #24, !dbg !2319
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !2259, metadata !DIExpression()), !dbg !2319
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !2319
  %call33 = tail call ptr @__errno_location() #25, !dbg !2319
  %7 = load i32, ptr %call33, align 4, !dbg !2319, !tbaa !259
  %call34 = call ptr @GetExceptionMessage(i32 noundef %7) #24, !dbg !2319
  call void @llvm.dbg.value(metadata ptr %call34, metadata !2256, metadata !DIExpression()), !dbg !2320
  %call35 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2461, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef %call34) #24, !dbg !2319
  %call36 = call ptr @DestroyString(ptr noundef %call34), !dbg !2319
  call void @llvm.dbg.value(metadata ptr %call36, metadata !2256, metadata !DIExpression()), !dbg !2320
  call void @CatchException(ptr noundef nonnull %exception) #24, !dbg !2319
  %call37 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !2319
  call void @MagickCoreTerminus() #24, !dbg !2319
  call void @_exit(i32 noundef 1) #26, !dbg !2319
  unreachable, !dbg !2319

for.cond43.preheader:                             ; preds = %for.cond39.preheader, %if.end73
  %p.2309 = phi ptr [ %add.ptr, %if.end73 ], [ %text, %for.cond39.preheader ]
  %i.0308 = phi i64 [ %inc90, %if.end73 ], [ 0, %for.cond39.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.2309, metadata !2250, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %i.0308, metadata !2251, metadata !DIExpression()), !dbg !2282
  br label %for.cond43, !dbg !2321

for.cond43:                                       ; preds = %for.cond43.preheader, %for.inc56
  %q.0 = phi ptr [ %incdec.ptr57, %for.inc56 ], [ %p.2309, %for.cond43.preheader ], !dbg !2323
  call void @llvm.dbg.value(metadata ptr %q.0, metadata !2253, metadata !DIExpression()), !dbg !2304
  %8 = load i8, ptr %q.0, align 1, !dbg !2324, !tbaa !271
  switch i8 %8, label %for.inc56 [
    i8 0, label %for.end58
    i8 13, label %for.end58
    i8 10, label %for.end58
  ], !dbg !2321

for.inc56:                                        ; preds = %for.cond43
  %incdec.ptr57 = getelementptr inbounds i8, ptr %q.0, i64 1, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %incdec.ptr57, metadata !2253, metadata !DIExpression()), !dbg !2304
  br label %for.cond43, !dbg !2327, !llvm.loop !2328

for.end58:                                        ; preds = %for.cond43, %for.cond43, %for.cond43
  %sub.ptr.lhs.cast = ptrtoint ptr %q.0 to i64, !dbg !2330
  %sub.ptr.rhs.cast = ptrtoint ptr %p.2309 to i64, !dbg !2330
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2330
  %add59 = add i64 %sub.ptr.sub, 4096, !dbg !2331
  %call60 = tail call ptr @AcquireQuantumMemory(i64 noundef %add59, i64 noundef 1) #27, !dbg !2332
  %arrayidx61 = getelementptr inbounds ptr, ptr %call29, i64 %i.0308, !dbg !2333
  store ptr %call60, ptr %arrayidx61, align 8, !dbg !2334, !tbaa !434
  %cmp63 = icmp eq ptr %call60, null, !dbg !2335
  br i1 %cmp63, label %if.then65, label %if.end73, !dbg !2336

if.then65:                                        ; preds = %for.end58
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception67) #24, !dbg !2337
  call void @llvm.dbg.declare(metadata ptr %exception67, metadata !2266, metadata !DIExpression()), !dbg !2337
  call void @GetExceptionInfo(ptr noundef nonnull %exception67) #24, !dbg !2337
  %call68 = tail call ptr @__errno_location() #25, !dbg !2337
  %9 = load i32, ptr %call68, align 4, !dbg !2337, !tbaa !259
  %call69 = call ptr @GetExceptionMessage(i32 noundef %9) #24, !dbg !2337
  call void @llvm.dbg.value(metadata ptr %call69, metadata !2260, metadata !DIExpression()), !dbg !2338
  %call70 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception67, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2471, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef %call69) #24, !dbg !2337
  %call71 = call ptr @DestroyString(ptr noundef %call69), !dbg !2337
  call void @llvm.dbg.value(metadata ptr %call71, metadata !2260, metadata !DIExpression()), !dbg !2338
  call void @CatchException(ptr noundef nonnull %exception67) #24, !dbg !2337
  %call72 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception67) #24, !dbg !2337
  call void @MagickCoreTerminus() #24, !dbg !2337
  call void @_exit(i32 noundef 1) #26, !dbg !2337
  unreachable, !dbg !2337

if.end73:                                         ; preds = %for.end58
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call60, ptr nonnull align 1 %p.2309, i64 %sub.ptr.sub, i1 false), !dbg !2339
  %10 = load ptr, ptr %arrayidx61, align 8, !dbg !2340, !tbaa !434
  %arrayidx82 = getelementptr inbounds i8, ptr %10, i64 %sub.ptr.sub, !dbg !2340
  store i8 0, ptr %arrayidx82, align 1, !dbg !2341, !tbaa !271
  %11 = load i8, ptr %q.0, align 1, !dbg !2342, !tbaa !271
  %cmp84 = icmp eq i8 %11, 13, !dbg !2344
  %spec.select.idx = zext i1 %cmp84 to i64, !dbg !2345
  %spec.select = getelementptr i8, ptr %q.0, i64 1, !dbg !2345
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !2253, metadata !DIExpression()), !dbg !2304
  %add.ptr = getelementptr inbounds i8, ptr %spec.select, i64 %spec.select.idx, !dbg !2346
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2250, metadata !DIExpression()), !dbg !2282
  %inc90 = add nuw nsw i64 %i.0308, 1, !dbg !2347
  call void @llvm.dbg.value(metadata i64 %inc90, metadata !2251, metadata !DIExpression()), !dbg !2282
  %exitcond315.not = icmp eq i64 %inc90, %lines.0, !dbg !2317
  br i1 %exitcond315.not, label %if.end194, label %for.cond43.preheader, !dbg !2318, !llvm.loop !2348

if.else:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %hex_string) #24, !dbg !2350
  call void @llvm.dbg.declare(metadata ptr %hex_string, metadata !2267, metadata !DIExpression()), !dbg !2351
  %call93 = tail call i64 @strlen(ptr noundef nonnull %text) #23, !dbg !2352
  %div = udiv i64 %call93, 20, !dbg !2353
  call void @llvm.dbg.value(metadata i64 %div, metadata !2252, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2282
  %add95 = add nuw nsw i64 %div, 2, !dbg !2354
  %call96 = tail call ptr @AcquireQuantumMemory(i64 noundef %add95, i64 noundef 8) #27, !dbg !2355
  call void @llvm.dbg.value(metadata ptr %call96, metadata !2249, metadata !DIExpression()), !dbg !2282
  %cmp97 = icmp eq ptr %call96, null, !dbg !2356
  br i1 %cmp97, label %if.then99, label %for.body111.preheader, !dbg !2357

for.body111.preheader:                            ; preds = %if.else
  %12 = add nuw nsw i64 %div, 1, !dbg !2358
  br label %for.body111, !dbg !2358

if.then99:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception101) #24, !dbg !2359
  call void @llvm.dbg.declare(metadata ptr %exception101, metadata !2274, metadata !DIExpression()), !dbg !2359
  call void @GetExceptionInfo(ptr noundef nonnull %exception101) #24, !dbg !2359
  %call102 = tail call ptr @__errno_location() #25, !dbg !2359
  %13 = load i32, ptr %call102, align 4, !dbg !2359, !tbaa !259
  %call103 = call ptr @GetExceptionMessage(i32 noundef %13) #24, !dbg !2359
  call void @llvm.dbg.value(metadata ptr %call103, metadata !2271, metadata !DIExpression()), !dbg !2360
  %call104 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception101, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2497, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef %call103) #24, !dbg !2359
  %call105 = call ptr @DestroyString(ptr noundef %call103), !dbg !2359
  call void @llvm.dbg.value(metadata ptr %call105, metadata !2271, metadata !DIExpression()), !dbg !2360
  call void @CatchException(ptr noundef nonnull %exception101) #24, !dbg !2359
  %call106 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception101) #24, !dbg !2359
  call void @MagickCoreTerminus() #24, !dbg !2359
  call void @_exit(i32 noundef 1) #26, !dbg !2359
  unreachable, !dbg !2359

for.body111:                                      ; preds = %for.body111.preheader, %for.end190
  %p.3306 = phi ptr [ %p.4.lcssa, %for.end190 ], [ %text, %for.body111.preheader ]
  %i.1305 = phi i64 [ %inc192, %for.end190 ], [ 0, %for.body111.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.3306, metadata !2250, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %i.1305, metadata !2251, metadata !DIExpression()), !dbg !2282
  %call112 = call ptr @AcquireQuantumMemory(i64 noundef 8192, i64 noundef 1) #27, !dbg !2361
  %arrayidx113 = getelementptr inbounds ptr, ptr %call96, i64 %i.1305, !dbg !2362
  store ptr %call112, ptr %arrayidx113, align 8, !dbg !2363, !tbaa !434
  %cmp115 = icmp eq ptr %call112, null, !dbg !2364
  br i1 %cmp115, label %if.then117, label %if.end125, !dbg !2365

if.then117:                                       ; preds = %for.body111
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception119) #24, !dbg !2366
  call void @llvm.dbg.declare(metadata ptr %exception119, metadata !2281, metadata !DIExpression()), !dbg !2366
  call void @GetExceptionInfo(ptr noundef nonnull %exception119) #24, !dbg !2366
  %call120 = tail call ptr @__errno_location() #25, !dbg !2366
  %14 = load i32, ptr %call120, align 4, !dbg !2366, !tbaa !259
  %call121 = call ptr @GetExceptionMessage(i32 noundef %14) #24, !dbg !2366
  call void @llvm.dbg.value(metadata ptr %call121, metadata !2275, metadata !DIExpression()), !dbg !2367
  %call122 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception119, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2504, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef %call121) #24, !dbg !2366
  %call123 = call ptr @DestroyString(ptr noundef %call121), !dbg !2366
  call void @llvm.dbg.value(metadata ptr %call123, metadata !2275, metadata !DIExpression()), !dbg !2367
  call void @CatchException(ptr noundef nonnull %exception119) #24, !dbg !2366
  %call124 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception119) #24, !dbg !2366
  call void @MagickCoreTerminus() #24, !dbg !2366
  call void @_exit(i32 noundef 1) #26, !dbg !2366
  unreachable, !dbg !2366

if.end125:                                        ; preds = %for.body111
  %mul = mul nuw nsw i64 %i.1305, 20, !dbg !2368
  %call127 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %call112, i64 noundef 4096, ptr noundef nonnull @.str.35, i64 noundef %mul) #24, !dbg !2369
  %15 = load ptr, ptr %arrayidx113, align 8, !dbg !2370, !tbaa !434
  %call130 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #23, !dbg !2371
  %add.ptr131 = getelementptr inbounds i8, ptr %15, i64 %call130, !dbg !2372
  call void @llvm.dbg.value(metadata ptr %add.ptr131, metadata !2269, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i64 1, metadata !2270, metadata !DIExpression()), !dbg !2373
  %call133288 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %p.3306) #23, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %call133288, metadata !509, metadata !DIExpression()) #24, !dbg !2377
  call void @llvm.dbg.value(metadata i64 20, metadata !514, metadata !DIExpression()) #24, !dbg !2377
  %16 = call i64 @llvm.umin.i64(i64 %call133288, i64 20) #24, !dbg !2377
  %cmp135.not289 = icmp eq i64 %16, 0, !dbg !2379
  br i1 %cmp135.not289, label %for.body155.preheader, label %for.body137, !dbg !2380

for.cond152.preheader:                            ; preds = %for.inc149
  call void @llvm.dbg.value(metadata i64 %inc150, metadata !2270, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata ptr %q92.1, metadata !2269, metadata !DIExpression()), !dbg !2373
  %cmp153293 = icmp ult i64 %j.0291, 20, !dbg !2381
  br i1 %cmp153293, label %for.body155.preheader, label %for.end166, !dbg !2384

for.body155.preheader:                            ; preds = %if.end125, %for.cond152.preheader
  %j.1295.ph = phi i64 [ 1, %if.end125 ], [ %inc150, %for.cond152.preheader ]
  %q92.2294.ph = phi ptr [ %add.ptr131, %if.end125 ], [ %q92.1, %for.cond152.preheader ]
  br label %for.body155, !dbg !2384

for.body137:                                      ; preds = %if.end125, %for.inc149
  %j.0291 = phi i64 [ %inc150, %for.inc149 ], [ 1, %if.end125 ]
  %q92.0290 = phi ptr [ %q92.1, %for.inc149 ], [ %add.ptr131, %if.end125 ]
  call void @llvm.dbg.value(metadata i64 %j.0291, metadata !2270, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata ptr %q92.0290, metadata !2269, metadata !DIExpression()), !dbg !2373
  %add.ptr138 = getelementptr inbounds i8, ptr %p.3306, i64 %j.0291, !dbg !2385
  %17 = load i8, ptr %add.ptr138, align 1, !dbg !2387, !tbaa !271
  %conv139 = sext i8 %17 to i32, !dbg !2387
  %call140 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %hex_string, i64 noundef 4096, ptr noundef nonnull @.str.40, i32 noundef %conv139) #24, !dbg !2388
  call void @llvm.dbg.value(metadata ptr %q92.0290, metadata !790, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr %hex_string, metadata !793, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 4096, metadata !794, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 4096, metadata !797, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr %hex_string, metadata !796, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr %q92.0290, metadata !795, metadata !DIExpression()), !dbg !2389
  br label %for.body.i

for.body.i:                                       ; preds = %if.end38.i, %for.body137
  %n.0134.i = phi i64 [ %sub40.i, %if.end38.i ], [ 4096, %for.body137 ]
  %p.0133.i = phi ptr [ %incdec.ptr29.i, %if.end38.i ], [ %hex_string, %for.body137 ]
  %q.0132.i = phi ptr [ %incdec.ptr39.i, %if.end38.i ], [ %q92.0290, %for.body137 ]
  call void @llvm.dbg.value(metadata i64 %n.0134.i, metadata !797, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr %q.0132.i, metadata !795, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2389
  %18 = load i8, ptr %p.0133.i, align 1, !dbg !2391, !tbaa !271
  store i8 %18, ptr %q.0132.i, align 1, !dbg !2392, !tbaa !271
  %cmp2.i = icmp eq i8 %18, 0, !dbg !2393
  br i1 %cmp2.i, label %CopyMagickString.exit, label %if.end5.i, !dbg !2394

if.end5.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.0133.i, i64 1, !dbg !2395
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !796, metadata !DIExpression()), !dbg !2389
  %incdec.ptr6.i = getelementptr inbounds i8, ptr %q.0132.i, i64 1, !dbg !2396
  call void @llvm.dbg.value(metadata ptr %incdec.ptr6.i, metadata !795, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2389
  %19 = load i8, ptr %incdec.ptr.i, align 1, !dbg !2397, !tbaa !271
  store i8 %19, ptr %incdec.ptr6.i, align 1, !dbg !2398, !tbaa !271
  %cmp9.i = icmp eq i8 %19, 0, !dbg !2399
  br i1 %cmp9.i, label %CopyMagickString.exit, label %if.end16.i, !dbg !2400

if.end16.i:                                       ; preds = %if.end5.i
  %incdec.ptr7.i = getelementptr inbounds i8, ptr %p.0133.i, i64 2, !dbg !2401
  call void @llvm.dbg.value(metadata ptr %incdec.ptr7.i, metadata !796, metadata !DIExpression()), !dbg !2389
  %incdec.ptr17.i = getelementptr inbounds i8, ptr %q.0132.i, i64 2, !dbg !2402
  call void @llvm.dbg.value(metadata ptr %incdec.ptr17.i, metadata !795, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !2389
  %20 = load i8, ptr %incdec.ptr7.i, align 1, !dbg !2403, !tbaa !271
  store i8 %20, ptr %incdec.ptr17.i, align 1, !dbg !2404, !tbaa !271
  %cmp20.i = icmp eq i8 %20, 0, !dbg !2405
  br i1 %cmp20.i, label %CopyMagickString.exit, label %if.end27.i, !dbg !2406

if.end27.i:                                       ; preds = %if.end16.i
  %incdec.ptr18.i = getelementptr inbounds i8, ptr %p.0133.i, i64 3, !dbg !2407
  call void @llvm.dbg.value(metadata ptr %incdec.ptr18.i, metadata !796, metadata !DIExpression()), !dbg !2389
  %incdec.ptr28.i = getelementptr inbounds i8, ptr %q.0132.i, i64 3, !dbg !2408
  call void @llvm.dbg.value(metadata ptr %incdec.ptr28.i, metadata !795, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !2389
  %21 = load i8, ptr %incdec.ptr18.i, align 1, !dbg !2409, !tbaa !271
  store i8 %21, ptr %incdec.ptr28.i, align 1, !dbg !2410, !tbaa !271
  %cmp31.i = icmp eq i8 %21, 0, !dbg !2411
  br i1 %cmp31.i, label %CopyMagickString.exit, label %if.end38.i, !dbg !2412

if.end38.i:                                       ; preds = %if.end27.i
  %incdec.ptr29.i = getelementptr inbounds i8, ptr %p.0133.i, i64 4, !dbg !2413
  call void @llvm.dbg.value(metadata ptr %incdec.ptr29.i, metadata !796, metadata !DIExpression()), !dbg !2389
  %incdec.ptr39.i = getelementptr inbounds i8, ptr %q.0132.i, i64 4, !dbg !2414
  call void @llvm.dbg.value(metadata ptr %incdec.ptr39.i, metadata !795, metadata !DIExpression()), !dbg !2389
  %sub40.i = add nsw i64 %n.0134.i, -4, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %sub40.i, metadata !797, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr %p.0133.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !2389
  %cmp1.i = icmp ugt i64 %sub40.i, 4, !dbg !2416
  br i1 %cmp1.i, label %for.body.i, label %for.body47.i, !dbg !2417, !llvm.loop !2418

for.body47.i:                                     ; preds = %if.end38.i, %if.end57.i
  %n.1141.i = phi i64 [ %n.1.i, %if.end57.i ], [ 3, %if.end38.i ]
  %p.1140.i = phi ptr [ %incdec.ptr48.i, %if.end57.i ], [ %incdec.ptr29.i, %if.end38.i ]
  %q.1139.i = phi ptr [ %incdec.ptr58.i, %if.end57.i ], [ %incdec.ptr39.i, %if.end38.i ]
  call void @llvm.dbg.value(metadata ptr %q.1139.i, metadata !795, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr %p.1140.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2389
  %22 = load i8, ptr %p.1140.i, align 1, !dbg !2420, !tbaa !271
  store i8 %22, ptr %q.1139.i, align 1, !dbg !2421, !tbaa !271
  %cmp50.i = icmp eq i8 %22, 0, !dbg !2422
  br i1 %cmp50.i, label %CopyMagickString.exit, label %if.end57.i, !dbg !2423

if.end57.i:                                       ; preds = %for.body47.i
  %incdec.ptr48.i = getelementptr inbounds i8, ptr %p.1140.i, i64 1, !dbg !2424
  call void @llvm.dbg.value(metadata ptr %incdec.ptr48.i, metadata !796, metadata !DIExpression()), !dbg !2389
  %incdec.ptr58.i = getelementptr inbounds i8, ptr %q.1139.i, i64 1, !dbg !2425
  call void @llvm.dbg.value(metadata ptr %incdec.ptr58.i, metadata !795, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i64 %n.1141.i, metadata !797, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2389
  %n.1.i = add nsw i64 %n.1141.i, -1, !dbg !2426
  call void @llvm.dbg.value(metadata i64 %n.1.i, metadata !797, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr %p.1140.i, metadata !796, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2389
  %cmp45.not.i = icmp eq i64 %n.1.i, 0, !dbg !2427
  br i1 %cmp45.not.i, label %if.end62.i, label %for.body47.i, !dbg !2428, !llvm.loop !2429

if.end62.i:                                       ; preds = %if.end57.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !796, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr %incdec.ptr58.i, metadata !795, metadata !DIExpression()), !dbg !2389
  store i8 0, ptr %incdec.ptr58.i, align 1, !dbg !2431, !tbaa !271
  br label %CopyMagickString.exit, !dbg !2432

CopyMagickString.exit:                            ; preds = %if.end27.i, %if.end16.i, %if.end5.i, %for.body.i, %for.body47.i, %if.end62.i
  %add.ptr143 = getelementptr inbounds i8, ptr %q92.0290, i64 2, !dbg !2433
  call void @llvm.dbg.value(metadata ptr %add.ptr143, metadata !2269, metadata !DIExpression()), !dbg !2373
  %rem = and i64 %j.0291, 3, !dbg !2434
  %cmp144 = icmp eq i64 %rem, 0, !dbg !2436
  br i1 %cmp144, label %if.then146, label %for.inc149, !dbg !2437

if.then146:                                       ; preds = %CopyMagickString.exit
  %incdec.ptr147 = getelementptr inbounds i8, ptr %q92.0290, i64 3, !dbg !2438
  call void @llvm.dbg.value(metadata ptr %incdec.ptr147, metadata !2269, metadata !DIExpression()), !dbg !2373
  store i8 32, ptr %add.ptr143, align 1, !dbg !2439, !tbaa !271
  br label %for.inc149, !dbg !2440

for.inc149:                                       ; preds = %CopyMagickString.exit, %if.then146
  %q92.1 = phi ptr [ %incdec.ptr147, %if.then146 ], [ %add.ptr143, %CopyMagickString.exit ], !dbg !2441
  call void @llvm.dbg.value(metadata ptr %q92.1, metadata !2269, metadata !DIExpression()), !dbg !2373
  %inc150 = add nuw nsw i64 %j.0291, 1, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %inc150, metadata !2270, metadata !DIExpression()), !dbg !2373
  %call133 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %p.3306) #23, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %call133, metadata !509, metadata !DIExpression()) #24, !dbg !2377
  call void @llvm.dbg.value(metadata i64 20, metadata !514, metadata !DIExpression()) #24, !dbg !2377
  %23 = call i64 @llvm.umin.i64(i64 %call133, i64 20) #24, !dbg !2377
  %cmp135.not.not = icmp ult i64 %j.0291, %23, !dbg !2379
  br i1 %cmp135.not.not, label %for.body137, label %for.cond152.preheader, !dbg !2380, !llvm.loop !2443

for.body155:                                      ; preds = %for.body155.preheader, %for.inc164
  %j.1295 = phi i64 [ %inc165, %for.inc164 ], [ %j.1295.ph, %for.body155.preheader ]
  %q92.2294 = phi ptr [ %q92.3, %for.inc164 ], [ %q92.2294.ph, %for.body155.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.1295, metadata !2270, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata ptr %q92.2294, metadata !2269, metadata !DIExpression()), !dbg !2373
  %incdec.ptr156 = getelementptr inbounds i8, ptr %q92.2294, i64 1, !dbg !2445
  call void @llvm.dbg.value(metadata ptr %incdec.ptr156, metadata !2269, metadata !DIExpression()), !dbg !2373
  store i8 32, ptr %q92.2294, align 1, !dbg !2447, !tbaa !271
  %incdec.ptr157 = getelementptr inbounds i8, ptr %q92.2294, i64 2, !dbg !2448
  call void @llvm.dbg.value(metadata ptr %incdec.ptr157, metadata !2269, metadata !DIExpression()), !dbg !2373
  store i8 32, ptr %incdec.ptr156, align 1, !dbg !2449, !tbaa !271
  %rem158 = and i64 %j.1295, 3, !dbg !2450
  %cmp159 = icmp eq i64 %rem158, 0, !dbg !2452
  br i1 %cmp159, label %if.then161, label %for.inc164, !dbg !2453

if.then161:                                       ; preds = %for.body155
  %incdec.ptr162 = getelementptr inbounds i8, ptr %q92.2294, i64 3, !dbg !2454
  call void @llvm.dbg.value(metadata ptr %incdec.ptr162, metadata !2269, metadata !DIExpression()), !dbg !2373
  store i8 32, ptr %incdec.ptr157, align 1, !dbg !2455, !tbaa !271
  br label %for.inc164, !dbg !2456

for.inc164:                                       ; preds = %for.body155, %if.then161
  %q92.3 = phi ptr [ %incdec.ptr162, %if.then161 ], [ %incdec.ptr157, %for.body155 ], !dbg !2457
  call void @llvm.dbg.value(metadata ptr %q92.3, metadata !2269, metadata !DIExpression()), !dbg !2373
  %inc165 = add nuw nsw i64 %j.1295, 1, !dbg !2458
  call void @llvm.dbg.value(metadata i64 %inc165, metadata !2270, metadata !DIExpression()), !dbg !2373
  %exitcond.not = icmp eq i64 %inc165, 21, !dbg !2381
  br i1 %exitcond.not, label %for.end166, label %for.body155, !dbg !2384, !llvm.loop !2459

for.end166:                                       ; preds = %for.inc164, %for.cond152.preheader
  %q92.2.lcssa = phi ptr [ %q92.1, %for.cond152.preheader ], [ %q92.3, %for.inc164 ], !dbg !2461
  call void @llvm.dbg.value(metadata ptr %q92.2.lcssa, metadata !2269, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2373
  store i8 32, ptr %q92.2.lcssa, align 1, !dbg !2462, !tbaa !271
  call void @llvm.dbg.value(metadata i64 1, metadata !2270, metadata !DIExpression()), !dbg !2373
  %q92.4297 = getelementptr inbounds i8, ptr %q92.2.lcssa, i64 1, !dbg !2461
  call void @llvm.dbg.value(metadata ptr %q92.4297, metadata !2269, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata ptr %p.3306, metadata !2250, metadata !DIExpression()), !dbg !2282
  %call169298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %p.3306) #23, !dbg !2463
  call void @llvm.dbg.value(metadata i64 %call169298, metadata !509, metadata !DIExpression()) #24, !dbg !2466
  call void @llvm.dbg.value(metadata i64 20, metadata !514, metadata !DIExpression()) #24, !dbg !2466
  %24 = call i64 @llvm.umin.i64(i64 %call169298, i64 20) #24, !dbg !2466
  %cmp171.not299 = icmp eq i64 %24, 0, !dbg !2468
  br i1 %cmp171.not299, label %for.end190, label %for.body173, !dbg !2469

for.body173:                                      ; preds = %for.end166, %for.body173
  %q92.4302 = phi ptr [ %q92.4, %for.body173 ], [ %q92.4297, %for.end166 ]
  %j.2301 = phi i64 [ %inc189, %for.body173 ], [ 1, %for.end166 ]
  %p.4300 = phi ptr [ %incdec.ptr187, %for.body173 ], [ %p.3306, %for.end166 ]
  call void @llvm.dbg.value(metadata i64 %j.2301, metadata !2270, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata ptr %p.4300, metadata !2250, metadata !DIExpression()), !dbg !2282
  %25 = load ptr, ptr %call, align 8, !dbg !2470, !tbaa !434
  %26 = load i8, ptr %p.4300, align 1, !dbg !2470, !tbaa !271
  %27 = zext i8 %26 to i64
  %arrayidx177 = getelementptr inbounds i16, ptr %25, i64 %27, !dbg !2470
  %28 = load i16, ptr %arrayidx177, align 2, !dbg !2470, !tbaa !1604
  %29 = and i16 %28, 16384, !dbg !2470
  %cmp180.not = icmp eq i16 %29, 0, !dbg !2473
  call void @llvm.dbg.value(metadata ptr %q92.4302, metadata !2269, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2373
  %. = select i1 %cmp180.not, i8 45, i8 %26
  store i8 %., ptr %q92.4302, align 1, !dbg !2474, !tbaa !271
  %incdec.ptr187 = getelementptr inbounds i8, ptr %p.4300, i64 1, !dbg !2475
  call void @llvm.dbg.value(metadata ptr %incdec.ptr187, metadata !2250, metadata !DIExpression()), !dbg !2282
  %inc189 = add nuw nsw i64 %j.2301, 1, !dbg !2476
  call void @llvm.dbg.value(metadata i64 %inc189, metadata !2270, metadata !DIExpression()), !dbg !2373
  %q92.4 = getelementptr inbounds i8, ptr %q92.4302, i64 1, !dbg !2461
  call void @llvm.dbg.value(metadata ptr %q92.4, metadata !2269, metadata !DIExpression()), !dbg !2373
  %call169 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %incdec.ptr187) #23, !dbg !2463
  call void @llvm.dbg.value(metadata i64 %call169, metadata !509, metadata !DIExpression()) #24, !dbg !2466
  call void @llvm.dbg.value(metadata i64 20, metadata !514, metadata !DIExpression()) #24, !dbg !2466
  %30 = call i64 @llvm.umin.i64(i64 %call169, i64 20) #24, !dbg !2466
  %cmp171.not.not = icmp ult i64 %j.2301, %30, !dbg !2468
  br i1 %cmp171.not.not, label %for.body173, label %for.end190, !dbg !2469, !llvm.loop !2477

for.end190:                                       ; preds = %for.body173, %for.end166
  %p.4.lcssa = phi ptr [ %p.3306, %for.end166 ], [ %incdec.ptr187, %for.body173 ], !dbg !2373
  %q92.4.lcssa = phi ptr [ %q92.4297, %for.end166 ], [ %q92.4, %for.body173 ], !dbg !2461
  store i8 0, ptr %q92.4.lcssa, align 1, !dbg !2479, !tbaa !271
  %inc192 = add nuw nsw i64 %i.1305, 1, !dbg !2480
  call void @llvm.dbg.value(metadata ptr %p.4.lcssa, metadata !2250, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %inc192, metadata !2251, metadata !DIExpression()), !dbg !2282
  %exitcond314.not = icmp eq i64 %i.1305, %div, !dbg !2481
  br i1 %exitcond314.not, label %for.end193, label %for.body111, !dbg !2358, !llvm.loop !2482

for.end193:                                       ; preds = %for.end190
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %hex_string) #24, !dbg !2484
  br label %if.end194

if.end194:                                        ; preds = %if.end73, %for.cond39.preheader, %for.end193
  %i.2 = phi i64 [ %12, %for.end193 ], [ 0, %for.cond39.preheader ], [ %lines.0, %if.end73 ], !dbg !2485
  %textlist.0 = phi ptr [ %call96, %for.end193 ], [ %call29, %for.cond39.preheader ], [ %call29, %if.end73 ], !dbg !2485
  call void @llvm.dbg.value(metadata ptr %textlist.0, metadata !2249, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !2251, metadata !DIExpression()), !dbg !2282
  %arrayidx195 = getelementptr inbounds ptr, ptr %textlist.0, i64 %i.2, !dbg !2486
  store ptr null, ptr %arrayidx195, align 8, !dbg !2487, !tbaa !434
  br label %cleanup, !dbg !2488

cleanup:                                          ; preds = %entry, %if.end194
  %retval.0 = phi ptr [ %textlist.0, %if.end194 ], [ null, %entry ], !dbg !2282
  ret ptr %retval.0, !dbg !2489
}

; Function Attrs: nounwind uwtable
define dso_local ptr @StringToStringInfo(ptr nocapture noundef readonly %string) local_unnamed_addr #0 !dbg !2490 {
entry:
  call void @llvm.dbg.value(metadata ptr %string, metadata !2492, metadata !DIExpression()), !dbg !2494
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %string) #23, !dbg !2495
  %call1 = tail call ptr @AcquireStringInfo(i64 noundef %call), !dbg !2496
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2493, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1743, metadata !DIExpression()) #24, !dbg !2497
  call void @llvm.dbg.value(metadata ptr %string, metadata !1744, metadata !DIExpression()) #24, !dbg !2497
  %length.i = getelementptr inbounds %struct._StringInfo, ptr %call1, i64 0, i32 2, !dbg !2499
  %0 = load i64, ptr %length.i, align 8, !dbg !2499, !tbaa !342
  %cmp.not.i = icmp eq i64 %0, 0, !dbg !2500
  br i1 %cmp.not.i, label %SetStringInfoDatum.exit, label %if.then.i, !dbg !2501

if.then.i:                                        ; preds = %entry
  %datum.i = getelementptr inbounds %struct._StringInfo, ptr %call1, i64 0, i32 1, !dbg !2502
  %1 = load ptr, ptr %datum.i, align 8, !dbg !2502, !tbaa !345
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %string, i64 %0, i1 false) #24, !dbg !2503
  br label %SetStringInfoDatum.exit, !dbg !2504

SetStringInfoDatum.exit:                          ; preds = %entry, %if.then.i
  ret ptr %call1, !dbg !2505
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @StripString(ptr noundef %message) local_unnamed_addr #12 !dbg !2506 {
entry:
  call void @llvm.dbg.value(metadata ptr %message, metadata !2508, metadata !DIExpression()), !dbg !2512
  %0 = load i8, ptr %message, align 1, !dbg !2513, !tbaa !271
  %cmp = icmp eq i8 %0, 0, !dbg !2515
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2516

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(ptr noundef nonnull %message) #23, !dbg !2517
  call void @llvm.dbg.value(metadata i64 %call, metadata !2511, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata ptr %message, metadata !2509, metadata !DIExpression()), !dbg !2512
  %call2 = tail call ptr @__ctype_b_loc() #25, !dbg !2512
  %1 = load ptr, ptr %call2, align 8, !tbaa !434
  call void @llvm.dbg.value(metadata ptr %message, metadata !2509, metadata !DIExpression()), !dbg !2512
  %2 = zext i8 %0 to i64
  %arrayidx90 = getelementptr inbounds i16, ptr %1, i64 %2, !dbg !2518
  %3 = load i16, ptr %arrayidx90, align 2, !dbg !2518, !tbaa !1604
  %4 = and i16 %3, 8192, !dbg !2518
  %cmp5.not91 = icmp eq i16 %4, 0, !dbg !2519
  br i1 %cmp5.not91, label %while.end, label %while.body, !dbg !2520

while.body:                                       ; preds = %if.end, %while.body
  %p.092 = phi ptr [ %incdec.ptr, %while.body ], [ %message, %if.end ]
  call void @llvm.dbg.value(metadata ptr %p.092, metadata !2509, metadata !DIExpression()), !dbg !2512
  %incdec.ptr = getelementptr inbounds i8, ptr %p.092, i64 1, !dbg !2521
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2509, metadata !DIExpression()), !dbg !2512
  %.pr = load i8, ptr %incdec.ptr, align 1, !dbg !2518, !tbaa !271
  %5 = zext i8 %.pr to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %5, !dbg !2518
  %6 = load i16, ptr %arrayidx, align 2, !dbg !2518, !tbaa !1604
  %7 = and i16 %6, 8192, !dbg !2518
  %cmp5.not = icmp eq i16 %7, 0, !dbg !2519
  br i1 %cmp5.not, label %while.end, label %while.body, !dbg !2520, !llvm.loop !2522

while.end:                                        ; preds = %while.body, %if.end
  %.lcssa89 = phi i8 [ %0, %if.end ], [ %.pr, %while.body ], !dbg !2518
  %p.0.lcssa = phi ptr [ %message, %if.end ], [ %incdec.ptr, %while.body ], !dbg !2512
  switch i8 %.lcssa89, label %if.end15 [
    i8 39, label %if.then13
    i8 34, label %if.then13
  ], !dbg !2523

if.then13:                                        ; preds = %while.end, %while.end
  %incdec.ptr14 = getelementptr inbounds i8, ptr %p.0.lcssa, i64 1, !dbg !2525
  call void @llvm.dbg.value(metadata ptr %incdec.ptr14, metadata !2509, metadata !DIExpression()), !dbg !2512
  br label %if.end15, !dbg !2526

if.end15:                                         ; preds = %while.end, %if.then13
  %p.1 = phi ptr [ %incdec.ptr14, %if.then13 ], [ %p.0.lcssa, %while.end ], !dbg !2512
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !2509, metadata !DIExpression()), !dbg !2512
  %add.ptr = getelementptr inbounds i8, ptr %message, i64 %call, !dbg !2527
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2510, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2512
  br label %while.cond17, !dbg !2528

while.cond17:                                     ; preds = %while.cond17, %if.end15
  %add.ptr.pn = phi ptr [ %add.ptr, %if.end15 ], [ %q.0, %while.cond17 ]
  %q.0 = getelementptr inbounds i8, ptr %add.ptr.pn, i64 -1, !dbg !2512
  call void @llvm.dbg.value(metadata ptr %q.0, metadata !2510, metadata !DIExpression()), !dbg !2512
  %8 = load i8, ptr %q.0, align 1, !dbg !2529, !tbaa !271
  %9 = zext i8 %8 to i64
  %arrayidx21 = getelementptr inbounds i16, ptr %1, i64 %9, !dbg !2529
  %10 = load i16, ptr %arrayidx21, align 2, !dbg !2529, !tbaa !1604
  %11 = and i16 %10, 8192, !dbg !2529
  %cmp24.not = icmp ne i16 %11, 0, !dbg !2530
  %cmp26 = icmp ugt ptr %q.0, %p.1
  %or.cond = select i1 %cmp24.not, i1 %cmp26, i1 false, !dbg !2531
  br i1 %or.cond, label %while.cond17, label %while.end30, !dbg !2531, !llvm.loop !2532

while.end30:                                      ; preds = %while.cond17
  br i1 %cmp26, label %if.then33, label %if.end44, !dbg !2534

if.then33:                                        ; preds = %while.end30
  switch i8 %8, label %if.end44 [
    i8 39, label %if.then41
    i8 34, label %if.then41
  ], !dbg !2535

if.then41:                                        ; preds = %if.then33, %if.then33
  %incdec.ptr42 = getelementptr inbounds i8, ptr %add.ptr.pn, i64 -2, !dbg !2538
  call void @llvm.dbg.value(metadata ptr %incdec.ptr42, metadata !2510, metadata !DIExpression()), !dbg !2512
  br label %if.end44, !dbg !2539

if.end44:                                         ; preds = %if.then33, %if.then41, %while.end30
  %q.1 = phi ptr [ %incdec.ptr42, %if.then41 ], [ %q.0, %while.end30 ], [ %q.0, %if.then33 ], !dbg !2512
  call void @llvm.dbg.value(metadata ptr %q.1, metadata !2510, metadata !DIExpression()), !dbg !2512
  %sub.ptr.lhs.cast = ptrtoint ptr %q.1 to i64, !dbg !2540
  %sub.ptr.rhs.cast = ptrtoint ptr %p.1 to i64, !dbg !2540
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2540
  %add = add nsw i64 %sub.ptr.sub, 1, !dbg !2541
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %message, ptr nonnull align 1 %p.1, i64 %add, i1 false), !dbg !2542
  %arrayidx49 = getelementptr inbounds i8, ptr %message, i64 %add, !dbg !2543
  store i8 0, ptr %arrayidx49, align 1, !dbg !2544, !tbaa !271
  call void @llvm.dbg.value(metadata ptr %message, metadata !2509, metadata !DIExpression()), !dbg !2512
  br label %for.cond, !dbg !2545

for.cond:                                         ; preds = %for.inc, %if.end44
  %p.2 = phi ptr [ %message, %if.end44 ], [ %incdec.ptr58, %for.inc ], !dbg !2547
  call void @llvm.dbg.value(metadata ptr %p.2, metadata !2509, metadata !DIExpression()), !dbg !2512
  %12 = load i8, ptr %p.2, align 1, !dbg !2548, !tbaa !271
  switch i8 %12, label %for.inc [
    i8 0, label %cleanup
    i8 10, label %if.then56
  ], !dbg !2550

if.then56:                                        ; preds = %for.cond
  store i8 32, ptr %p.2, align 1, !dbg !2551, !tbaa !271
  br label %for.inc, !dbg !2553

for.inc:                                          ; preds = %for.cond, %if.then56
  %incdec.ptr58 = getelementptr inbounds i8, ptr %p.2, i64 1, !dbg !2554
  call void @llvm.dbg.value(metadata ptr %incdec.ptr58, metadata !2509, metadata !DIExpression()), !dbg !2512
  br label %for.cond, !dbg !2555, !llvm.loop !2556

cleanup:                                          ; preds = %for.cond, %entry
  ret void, !dbg !2558
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SubstituteString(ptr nocapture noundef %string, ptr nocapture noundef readonly %search, ptr noundef %replace) local_unnamed_addr #0 !dbg !2559 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %string, metadata !2563, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata ptr %search, metadata !2564, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata ptr %replace, metadata !2565, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i32 0, metadata !2566, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 0, metadata !2570, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 0, metadata !2569, metadata !DIExpression()), !dbg !2581
  %0 = load ptr, ptr %string, align 8, !dbg !2582, !tbaa !434
  %1 = load i8, ptr %search, align 1, !dbg !2583, !tbaa !271
  %conv = sext i8 %1 to i32, !dbg !2583
  %call = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef %conv) #23, !dbg !2584
  call void @llvm.dbg.value(metadata ptr %call, metadata !2567, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i32 0, metadata !2566, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 0, metadata !2570, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 0, metadata !2569, metadata !DIExpression()), !dbg !2581
  %cmp.not80 = icmp eq ptr %call, null, !dbg !2585
  br i1 %cmp.not80, label %for.end, label %for.body, !dbg !2586

for.body:                                         ; preds = %entry, %for.inc
  %2 = phi i8 [ %5, %for.inc ], [ %1, %entry ]
  %status.084 = phi i32 [ %status.1, %for.inc ], [ 0, %entry ]
  %p.083 = phi ptr [ %call47, %for.inc ], [ %call, %entry ]
  %search_extent.082 = phi i64 [ %search_extent.1, %for.inc ], [ 0, %entry ]
  %replace_extent.081 = phi i64 [ %replace_extent.2, %for.inc ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i32 %status.084, metadata !2566, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata ptr %p.083, metadata !2567, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %search_extent.082, metadata !2570, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %replace_extent.081, metadata !2569, metadata !DIExpression()), !dbg !2581
  %cmp2 = icmp eq i64 %search_extent.082, 0, !dbg !2587
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2589

if.then:                                          ; preds = %for.body
  %call4 = tail call i64 @strlen(ptr noundef nonnull %search) #23, !dbg !2590
  call void @llvm.dbg.value(metadata i64 %call4, metadata !2570, metadata !DIExpression()), !dbg !2581
  br label %if.end, !dbg !2591

if.end:                                           ; preds = %if.then, %for.body
  %search_extent.1 = phi i64 [ %call4, %if.then ], [ %search_extent.082, %for.body ], !dbg !2581
  call void @llvm.dbg.value(metadata i64 %search_extent.1, metadata !2570, metadata !DIExpression()), !dbg !2581
  %call5 = tail call i32 @strncmp(ptr noundef nonnull %p.083, ptr noundef nonnull %search, i64 noundef %search_extent.1) #23, !dbg !2592
  %cmp6.not = icmp eq i32 %call5, 0, !dbg !2594
  br i1 %cmp6.not, label %if.end9, label %for.inc, !dbg !2595

if.end9:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !2566, metadata !DIExpression()), !dbg !2581
  %cmp10 = icmp eq i64 %replace_extent.081, 0, !dbg !2596
  br i1 %cmp10, label %if.then12, label %if.end14, !dbg !2598

if.then12:                                        ; preds = %if.end9
  %call13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %replace) #23, !dbg !2599
  call void @llvm.dbg.value(metadata i64 %call13, metadata !2569, metadata !DIExpression()), !dbg !2581
  br label %if.end14, !dbg !2600

if.end14:                                         ; preds = %if.then12, %if.end9
  %replace_extent.1 = phi i64 [ %call13, %if.then12 ], [ %replace_extent.081, %if.end9 ], !dbg !2581
  call void @llvm.dbg.value(metadata i64 %replace_extent.1, metadata !2569, metadata !DIExpression()), !dbg !2581
  %cmp15 = icmp ugt i64 %replace_extent.1, %search_extent.1, !dbg !2601
  br i1 %cmp15, label %if.then17, label %if.end31, !dbg !2602

if.then17:                                        ; preds = %if.end14
  %3 = load ptr, ptr %string, align 8, !dbg !2603, !tbaa !434
  call void @llvm.dbg.value(metadata !DIArgList(ptr %p.083, ptr %3), metadata !2571, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2581
  %call18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #23, !dbg !2604
  call void @llvm.dbg.value(metadata i64 undef, metadata !2568, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2581
  %add = sub i64 4097, %search_extent.1, !dbg !2605
  %sub = add i64 %add, %replace_extent.1, !dbg !2606
  %add20 = add i64 %sub, %call18, !dbg !2607
  %call21 = tail call ptr @ResizeQuantumMemory(ptr noundef %3, i64 noundef %add20, i64 noundef 1) #29, !dbg !2608
  store ptr %call21, ptr %string, align 8, !dbg !2609, !tbaa !434
  %cmp22 = icmp eq ptr %call21, null, !dbg !2610
  br i1 %cmp22, label %if.then24, label %if.end30, !dbg !2611

if.then24:                                        ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #24, !dbg !2612
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !2580, metadata !DIExpression()), !dbg !2612
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !2612
  %call25 = tail call ptr @__errno_location() #25, !dbg !2612
  %4 = load i32, ptr %call25, align 4, !dbg !2612, !tbaa !259
  %call26 = call ptr @GetExceptionMessage(i32 noundef %4) #24, !dbg !2612
  call void @llvm.dbg.value(metadata ptr %call26, metadata !2572, metadata !DIExpression()), !dbg !2613
  %call27 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2699, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call26) #24, !dbg !2612
  %call28 = call ptr @DestroyString(ptr noundef %call26), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %call28, metadata !2572, metadata !DIExpression()), !dbg !2613
  call void @CatchException(ptr noundef nonnull %exception) #24, !dbg !2612
  %call29 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #24, !dbg !2612
  call void @MagickCoreTerminus() #24, !dbg !2612
  call void @_exit(i32 noundef 1) #26, !dbg !2612
  unreachable, !dbg !2612

if.end30:                                         ; preds = %if.then17
  %sub.ptr.lhs.cast = ptrtoint ptr %p.083 to i64, !dbg !2614
  call void @llvm.dbg.value(metadata !DIArgList(i64 %sub.ptr.lhs.cast, ptr %3), metadata !2571, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2581
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64, !dbg !2614
  call void @llvm.dbg.value(metadata !DIArgList(ptr %p.083, i64 %sub.ptr.rhs.cast), metadata !2571, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2581
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2614
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !2571, metadata !DIExpression()), !dbg !2581
  %add.ptr = getelementptr inbounds i8, ptr %call21, i64 %sub.ptr.sub, !dbg !2615
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2567, metadata !DIExpression()), !dbg !2581
  br label %if.end31, !dbg !2616

if.end31:                                         ; preds = %if.end30, %if.end14
  %p.1 = phi ptr [ %add.ptr, %if.end30 ], [ %p.083, %if.end14 ], !dbg !2617
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !2567, metadata !DIExpression()), !dbg !2581
  %cmp32.not = icmp eq i64 %search_extent.1, %replace_extent.1, !dbg !2618
  br i1 %cmp32.not, label %if.end41, label %if.then34, !dbg !2620

if.then34:                                        ; preds = %if.end31
  %add.ptr35 = getelementptr inbounds i8, ptr %p.1, i64 %replace_extent.1, !dbg !2621
  %add.ptr36 = getelementptr inbounds i8, ptr %p.1, i64 %search_extent.1, !dbg !2622
  %call38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr36) #23, !dbg !2623
  %add39 = add i64 %call38, 1, !dbg !2624
  %call40 = tail call ptr @CopyMagickMemory(ptr noundef %add.ptr35, ptr noundef %add.ptr36, i64 noundef %add39) #24, !dbg !2625
  br label %if.end41, !dbg !2626

if.end41:                                         ; preds = %if.then34, %if.end31
  %call42 = tail call ptr @CopyMagickMemory(ptr noundef %p.1, ptr noundef %replace, i64 noundef %replace_extent.1) #24, !dbg !2627
  %sub43 = add i64 %replace_extent.1, -1, !dbg !2628
  %add.ptr44 = getelementptr inbounds i8, ptr %p.1, i64 %sub43, !dbg !2629
  call void @llvm.dbg.value(metadata ptr %add.ptr44, metadata !2567, metadata !DIExpression()), !dbg !2581
  %.pre = load i8, ptr %search, align 1, !dbg !2630, !tbaa !271
  br label %for.inc, !dbg !2631

for.inc:                                          ; preds = %if.end, %if.end41
  %5 = phi i8 [ %2, %if.end ], [ %.pre, %if.end41 ], !dbg !2630
  %replace_extent.2 = phi i64 [ %replace_extent.081, %if.end ], [ %replace_extent.1, %if.end41 ], !dbg !2581
  %p.2 = phi ptr [ %p.083, %if.end ], [ %add.ptr44, %if.end41 ], !dbg !2617
  %status.1 = phi i32 [ %status.084, %if.end ], [ 1, %if.end41 ], !dbg !2581
  call void @llvm.dbg.value(metadata i32 %status.1, metadata !2566, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata ptr %p.2, metadata !2567, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %replace_extent.2, metadata !2569, metadata !DIExpression()), !dbg !2581
  %add.ptr45 = getelementptr inbounds i8, ptr %p.2, i64 1, !dbg !2632
  %conv46 = sext i8 %5 to i32, !dbg !2630
  %call47 = tail call ptr @strchr(ptr noundef nonnull %add.ptr45, i32 noundef %conv46) #23, !dbg !2633
  call void @llvm.dbg.value(metadata ptr %call47, metadata !2567, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %search_extent.1, metadata !2570, metadata !DIExpression()), !dbg !2581
  %cmp.not = icmp eq ptr %call47, null, !dbg !2585
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !2586, !llvm.loop !2634

for.end:                                          ; preds = %for.inc, %entry
  %status.0.lcssa = phi i32 [ 0, %entry ], [ %status.1, %for.inc ], !dbg !2636
  ret i32 %status.0.lcssa, !dbg !2637
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !2638 ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !2641 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(1,2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind readonly willreturn }
attributes #24 = { nounwind }
attributes #25 = { nounwind readnone willreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind allocsize(1,2) }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "bi_units", scope: !2, file: !3, line: 1085, type: !199, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "FormatMagickSize", scope: !3, file: !3, line: 1067, type: !4, scopeLine: 1069, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !202)
!3 = !DIFile(filename: "apps/538.imagick_r/src/magick/string.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "00a5c34ad222acddc979a5c1716365f2")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !11, !15, !22}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !7, line: 77, baseType: !8)
!7 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !9, line: 193, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!10 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !13, line: 151, baseType: !14)
!13 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!14 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !13, line: 215, baseType: !17)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 211, baseType: !18, size: 32, elements: !19)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "MagickFalse", value: 0)
!21 = !DIEnumerator(name: "MagickTrue", value: 1)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !26, retainedTypes: !146, globals: !196, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/string.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "00a5c34ad222acddc979a5c1716365f2")
!26 = !{!27, !17, !100, !106, !131}
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 28, baseType: !18, size: 32, elements: !29)
!28 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!30 = !DIEnumerator(name: "UndefinedException", value: 0)
!31 = !DIEnumerator(name: "WarningException", value: 300)
!32 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!33 = !DIEnumerator(name: "TypeWarning", value: 305)
!34 = !DIEnumerator(name: "OptionWarning", value: 310)
!35 = !DIEnumerator(name: "DelegateWarning", value: 315)
!36 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!37 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!38 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!39 = !DIEnumerator(name: "BlobWarning", value: 335)
!40 = !DIEnumerator(name: "StreamWarning", value: 340)
!41 = !DIEnumerator(name: "CacheWarning", value: 345)
!42 = !DIEnumerator(name: "CoderWarning", value: 350)
!43 = !DIEnumerator(name: "FilterWarning", value: 352)
!44 = !DIEnumerator(name: "ModuleWarning", value: 355)
!45 = !DIEnumerator(name: "DrawWarning", value: 360)
!46 = !DIEnumerator(name: "ImageWarning", value: 365)
!47 = !DIEnumerator(name: "WandWarning", value: 370)
!48 = !DIEnumerator(name: "RandomWarning", value: 375)
!49 = !DIEnumerator(name: "XServerWarning", value: 380)
!50 = !DIEnumerator(name: "MonitorWarning", value: 385)
!51 = !DIEnumerator(name: "RegistryWarning", value: 390)
!52 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!53 = !DIEnumerator(name: "PolicyWarning", value: 399)
!54 = !DIEnumerator(name: "ErrorException", value: 400)
!55 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!56 = !DIEnumerator(name: "TypeError", value: 405)
!57 = !DIEnumerator(name: "OptionError", value: 410)
!58 = !DIEnumerator(name: "DelegateError", value: 415)
!59 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!60 = !DIEnumerator(name: "CorruptImageError", value: 425)
!61 = !DIEnumerator(name: "FileOpenError", value: 430)
!62 = !DIEnumerator(name: "BlobError", value: 435)
!63 = !DIEnumerator(name: "StreamError", value: 440)
!64 = !DIEnumerator(name: "CacheError", value: 445)
!65 = !DIEnumerator(name: "CoderError", value: 450)
!66 = !DIEnumerator(name: "FilterError", value: 452)
!67 = !DIEnumerator(name: "ModuleError", value: 455)
!68 = !DIEnumerator(name: "DrawError", value: 460)
!69 = !DIEnumerator(name: "ImageError", value: 465)
!70 = !DIEnumerator(name: "WandError", value: 470)
!71 = !DIEnumerator(name: "RandomError", value: 475)
!72 = !DIEnumerator(name: "XServerError", value: 480)
!73 = !DIEnumerator(name: "MonitorError", value: 485)
!74 = !DIEnumerator(name: "RegistryError", value: 490)
!75 = !DIEnumerator(name: "ConfigureError", value: 495)
!76 = !DIEnumerator(name: "PolicyError", value: 499)
!77 = !DIEnumerator(name: "FatalErrorException", value: 700)
!78 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!79 = !DIEnumerator(name: "TypeFatalError", value: 705)
!80 = !DIEnumerator(name: "OptionFatalError", value: 710)
!81 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!82 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!83 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!84 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!85 = !DIEnumerator(name: "BlobFatalError", value: 735)
!86 = !DIEnumerator(name: "StreamFatalError", value: 740)
!87 = !DIEnumerator(name: "CacheFatalError", value: 745)
!88 = !DIEnumerator(name: "CoderFatalError", value: 750)
!89 = !DIEnumerator(name: "FilterFatalError", value: 752)
!90 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!91 = !DIEnumerator(name: "DrawFatalError", value: 760)
!92 = !DIEnumerator(name: "ImageFatalError", value: 765)
!93 = !DIEnumerator(name: "WandFatalError", value: 770)
!94 = !DIEnumerator(name: "RandomFatalError", value: 775)
!95 = !DIEnumerator(name: "XServerFatalError", value: 780)
!96 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!97 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!98 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!99 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 30, baseType: !18, size: 32, elements: !102)
!101 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "aeac60f5bee0fb1a4f0bd1456ae975f0")
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "ReadMode", value: 0)
!104 = !DIEnumerator(name: "WriteMode", value: 1)
!105 = !DIEnumerator(name: "IOMode", value: 2)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !107, line: 34, baseType: !18, size: 32, elements: !108)
!107 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!109 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!110 = !DIEnumerator(name: "NoEvents", value: 0)
!111 = !DIEnumerator(name: "TraceEvent", value: 1)
!112 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!113 = !DIEnumerator(name: "BlobEvent", value: 4)
!114 = !DIEnumerator(name: "CacheEvent", value: 8)
!115 = !DIEnumerator(name: "CoderEvent", value: 16)
!116 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!117 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!118 = !DIEnumerator(name: "DrawEvent", value: 128)
!119 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!120 = !DIEnumerator(name: "ImageEvent", value: 512)
!121 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!122 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!123 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!124 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!125 = !DIEnumerator(name: "TransformEvent", value: 16384)
!126 = !DIEnumerator(name: "UserEvent", value: 36864)
!127 = !DIEnumerator(name: "WandEvent", value: 65536)
!128 = !DIEnumerator(name: "X11Event", value: 131072)
!129 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!130 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !132, line: 46, baseType: !18, size: 32, elements: !133)
!132 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!134 = !DIEnumerator(name: "_ISupper", value: 256)
!135 = !DIEnumerator(name: "_ISlower", value: 512)
!136 = !DIEnumerator(name: "_ISalpha", value: 1024)
!137 = !DIEnumerator(name: "_ISdigit", value: 2048)
!138 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!139 = !DIEnumerator(name: "_ISspace", value: 8192)
!140 = !DIEnumerator(name: "_ISprint", value: 16384)
!141 = !DIEnumerator(name: "_ISgraph", value: 32768)
!142 = !DIEnumerator(name: "_ISblank", value: 1)
!143 = !DIEnumerator(name: "_IScntrl", value: 2)
!144 = !DIEnumerator(name: "_ISpunct", value: 4)
!145 = !DIEnumerator(name: "_ISalnum", value: 8)
!146 = !{!22, !147, !148, !149, !150, !160, !166, !168, !163, !170, !6, !172, !173, !174, !189, !10, !161, !23, !192, !193, !194}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!148 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!149 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !152, line: 40, baseType: !153)
!152 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !152, line: 29, size: 32960, elements: !154)
!154 = !{!155, !159, !162, !165}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !153, file: !152, line: 32, baseType: !156, size: 32768)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32768, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 4096)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !153, file: !152, line: 35, baseType: !160, size: 64, offset: 32768)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !153, file: !152, line: 38, baseType: !163, size: 64, offset: 32832)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 46, baseType: !148)
!164 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!165 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !153, file: !152, line: 39, baseType: !163, size: 64, offset: 32896)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !13, line: 150, baseType: !171)
!171 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!173 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !176, line: 7, size: 448, elements: !177)
!176 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "", checksumkind: CSK_MD5, checksum: "9e5545b565ef031c4cd0faf90b69386f")
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !175, file: !176, line: 9, baseType: !149, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !175, file: !176, line: 10, baseType: !149, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !175, file: !176, line: 11, baseType: !149, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !175, file: !176, line: 12, baseType: !149, size: 32, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !175, file: !176, line: 13, baseType: !149, size: 32, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !175, file: !176, line: 14, baseType: !149, size: 32, offset: 160)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !175, file: !176, line: 15, baseType: !149, size: 32, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !175, file: !176, line: 16, baseType: !149, size: 32, offset: 224)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !175, file: !176, line: 17, baseType: !149, size: 32, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !175, file: !176, line: 20, baseType: !10, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !175, file: !176, line: 21, baseType: !168, size: 64, offset: 384)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !190, line: 7, baseType: !191)
!190 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !9, line: 160, baseType: !10)
!192 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!196 = !{!0, !197}
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "traditional_units", scope: !2, file: !3, line: 1089, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 640, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 10)
!202 = !{!203, !204, !205, !206, !208, !209, !210, !211, !212}
!203 = !DILocalVariable(name: "size", arg: 1, scope: !2, file: !3, line: 1067, type: !11)
!204 = !DILocalVariable(name: "bi", arg: 2, scope: !2, file: !3, line: 1068, type: !15)
!205 = !DILocalVariable(name: "format", arg: 3, scope: !2, file: !3, line: 1068, type: !22)
!206 = !DILocalVariable(name: "units", scope: !2, file: !3, line: 1071, type: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!208 = !DILocalVariable(name: "bytes", scope: !2, file: !3, line: 1074, type: !173)
!209 = !DILocalVariable(name: "length", scope: !2, file: !3, line: 1075, type: !173)
!210 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 1078, type: !6)
!211 = !DILocalVariable(name: "j", scope: !2, file: !3, line: 1079, type: !6)
!212 = !DILocalVariable(name: "count", scope: !2, file: !3, line: 1082, type: !6)
!213 = !{i32 7, !"Dwarf Version", i32 5}
!214 = !{i32 2, !"Debug Info Version", i32 3}
!215 = !{i32 1, !"wchar_size", i32 4}
!216 = !{i32 7, !"PIC Level", i32 2}
!217 = !{i32 7, !"PIE Level", i32 2}
!218 = !{i32 7, !"uwtable", i32 2}
!219 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!220 = distinct !DISubprogram(name: "AcquireString", scope: !3, file: !3, line: 120, type: !221, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !223)
!221 = !DISubroutineType(types: !222)
!222 = !{!22, !168}
!223 = !{!224, !225, !226, !227, !230, !247, !250}
!224 = !DILocalVariable(name: "source", arg: 1, scope: !220, file: !3, line: 120, type: !168)
!225 = !DILocalVariable(name: "destination", scope: !220, file: !3, line: 123, type: !22)
!226 = !DILocalVariable(name: "length", scope: !220, file: !3, line: 126, type: !163)
!227 = !DILocalVariable(name: "message", scope: !228, file: !3, line: 132, type: !22)
!228 = distinct !DILexicalBlock(scope: !229, file: !3, line: 132, column: 5)
!229 = distinct !DILexicalBlock(scope: !220, file: !3, line: 131, column: 7)
!230 = !DILocalVariable(name: "exception", scope: !228, file: !3, line: 132, type: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !13, line: 219, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !28, line: 102, size: 448, elements: !233)
!233 = !{!234, !236, !237, !238, !239, !240, !241, !246}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !232, file: !28, line: 105, baseType: !235, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !28, line: 100, baseType: !27)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !232, file: !28, line: 108, baseType: !149, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !232, file: !28, line: 111, baseType: !22, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !232, file: !28, line: 112, baseType: !22, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !232, file: !28, line: 115, baseType: !147, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !232, file: !28, line: 118, baseType: !16, size: 32, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !232, file: !28, line: 121, baseType: !242, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !244, line: 26, baseType: !245)
!244 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !244, line: 25, flags: DIFlagFwdDecl)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !232, file: !28, line: 124, baseType: !163, size: 64, offset: 384)
!247 = !DILocalVariable(name: "message", scope: !248, file: !3, line: 136, type: !22)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 136, column: 5)
!249 = distinct !DILexicalBlock(scope: !220, file: !3, line: 135, column: 7)
!250 = !DILocalVariable(name: "exception", scope: !248, file: !3, line: 136, type: !231)
!251 = !DILocation(line: 0, scope: !220)
!252 = !DILocation(line: 129, column: 14, scope: !253)
!253 = distinct !DILexicalBlock(scope: !220, file: !3, line: 129, column: 7)
!254 = !DILocation(line: 129, column: 7, scope: !220)
!255 = !DILocation(line: 130, column: 13, scope: !253)
!256 = !DILocation(line: 131, column: 15, scope: !229)
!257 = !DILocation(line: 131, column: 7, scope: !220)
!258 = !DILocation(line: 132, column: 5, scope: !228)
!259 = !{!260, !260, i64 0}
!260 = !{!"int", !261, i64 0}
!261 = !{!"omnipotent char", !262, i64 0}
!262 = !{!"Simple C/C++ TBAA"}
!263 = !DILocation(line: 0, scope: !228)
!264 = !DILocation(line: 133, column: 51, scope: !220)
!265 = !DILocation(line: 133, column: 24, scope: !220)
!266 = !DILocation(line: 135, column: 19, scope: !249)
!267 = !DILocation(line: 135, column: 7, scope: !220)
!268 = !DILocation(line: 136, column: 5, scope: !248)
!269 = !DILocation(line: 0, scope: !248)
!270 = !DILocation(line: 137, column: 15, scope: !220)
!271 = !{!261, !261, i64 0}
!272 = !DILocation(line: 138, column: 7, scope: !220)
!273 = !DILocation(line: 139, column: 12, scope: !274)
!274 = distinct !DILexicalBlock(scope: !220, file: !3, line: 138, column: 7)
!275 = !DILocation(line: 139, column: 5, scope: !274)
!276 = !DILocation(line: 140, column: 3, scope: !220)
!277 = !DILocation(line: 140, column: 22, scope: !220)
!278 = !DILocation(line: 141, column: 3, scope: !220)
!279 = !DISubprogram(name: "GetExceptionInfo", scope: !28, file: !28, line: 166, type: !280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!283 = !{}
!284 = !DISubprogram(name: "GetExceptionMessage", scope: !28, file: !28, line: 137, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!285 = !DISubroutineType(types: !286)
!286 = !{!22, !287}
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!288 = !DISubprogram(name: "ThrowMagickException", scope: !28, file: !28, line: 156, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!289 = !DISubroutineType(types: !290)
!290 = !{!16, !282, !168, !168, !291, !292, !168, !168, null}
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!293 = distinct !DISubprogram(name: "DestroyString", scope: !3, file: !3, line: 808, type: !294, scopeLine: 809, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !296)
!294 = !DISubroutineType(types: !295)
!295 = !{!22, !22}
!296 = !{!297}
!297 = !DILocalVariable(name: "string", arg: 1, scope: !293, file: !3, line: 808, type: !22)
!298 = !DILocation(line: 0, scope: !293)
!299 = !DILocation(line: 810, column: 19, scope: !293)
!300 = !DILocation(line: 810, column: 3, scope: !293)
!301 = !DISubprogram(name: "CatchException", scope: !28, file: !28, line: 164, type: !280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!302 = !DISubprogram(name: "DestroyExceptionInfo", scope: !28, file: !28, line: 148, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!303 = !DISubroutineType(types: !304)
!304 = !{!282, !282}
!305 = !DISubprogram(name: "MagickCoreTerminus", scope: !306, file: !306, line: 147, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!306 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!307 = !DISubroutineType(types: !308)
!308 = !{null}
!309 = !DISubprogram(name: "AcquireQuantumMemory", scope: !310, file: !310, line: 42, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!310 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!311 = !DISubroutineType(types: !312)
!312 = !{!147, !291, !291}
!313 = distinct !DISubprogram(name: "AcquireStringInfo", scope: !3, file: !3, line: 166, type: !314, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !316)
!314 = !DISubroutineType(types: !315)
!315 = !{!150, !291}
!316 = !{!317, !318, !319, !322, !323, !326}
!317 = !DILocalVariable(name: "length", arg: 1, scope: !313, file: !3, line: 166, type: !291)
!318 = !DILocalVariable(name: "string_info", scope: !313, file: !3, line: 169, type: !150)
!319 = !DILocalVariable(name: "message", scope: !320, file: !3, line: 173, type: !22)
!320 = distinct !DILexicalBlock(scope: !321, file: !3, line: 173, column: 5)
!321 = distinct !DILexicalBlock(scope: !313, file: !3, line: 172, column: 7)
!322 = !DILocalVariable(name: "exception", scope: !320, file: !3, line: 173, type: !231)
!323 = !DILocalVariable(name: "message", scope: !324, file: !3, line: 182, type: !22)
!324 = distinct !DILexicalBlock(scope: !325, file: !3, line: 182, column: 5)
!325 = distinct !DILexicalBlock(scope: !313, file: !3, line: 181, column: 7)
!326 = !DILocalVariable(name: "exception", scope: !324, file: !3, line: 182, type: !231)
!327 = !DILocation(line: 0, scope: !313)
!328 = !DILocation(line: 171, column: 30, scope: !313)
!329 = !DILocation(line: 172, column: 19, scope: !321)
!330 = !DILocation(line: 172, column: 7, scope: !313)
!331 = !DILocation(line: 173, column: 5, scope: !320)
!332 = !DILocation(line: 0, scope: !320)
!333 = !DILocation(line: 174, column: 10, scope: !313)
!334 = !DILocation(line: 175, column: 16, scope: !313)
!335 = !DILocation(line: 175, column: 25, scope: !313)
!336 = !{!337, !339, i64 4112}
!337 = !{!"_StringInfo", !261, i64 0, !338, i64 4096, !339, i64 4104, !339, i64 4112}
!338 = !{!"any pointer", !261, i64 0}
!339 = !{!"long", !261, i64 0}
!340 = !DILocation(line: 176, column: 16, scope: !313)
!341 = !DILocation(line: 176, column: 22, scope: !313)
!342 = !{!337, !339, i64 4104}
!343 = !DILocation(line: 177, column: 16, scope: !313)
!344 = !DILocation(line: 177, column: 21, scope: !313)
!345 = !{!337, !338, i64 4096}
!346 = !DILocation(line: 178, column: 28, scope: !347)
!347 = distinct !DILexicalBlock(scope: !313, file: !3, line: 178, column: 7)
!348 = !DILocation(line: 178, column: 7, scope: !313)
!349 = !DILocation(line: 180, column: 26, scope: !347)
!350 = !DILocation(line: 179, column: 42, scope: !347)
!351 = !DILocation(line: 179, column: 23, scope: !347)
!352 = !DILocation(line: 181, column: 26, scope: !325)
!353 = !DILocation(line: 181, column: 7, scope: !313)
!354 = !DILocation(line: 182, column: 5, scope: !324)
!355 = !DILocation(line: 0, scope: !324)
!356 = !DILocation(line: 183, column: 3, scope: !313)
!357 = !DISubprogram(name: "AcquireMagickMemory", scope: !310, file: !310, line: 40, type: !358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!358 = !DISubroutineType(types: !359)
!359 = !{!147, !291}
!360 = !DISubprogram(name: "ResetMagickMemory", scope: !310, file: !310, line: 52, type: !361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!361 = !DISubroutineType(types: !362)
!362 = !{!147, !147, !149, !291}
!363 = distinct !DISubprogram(name: "BlobToStringInfo", scope: !3, file: !3, line: 211, type: !364, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !366)
!364 = !DISubroutineType(types: !365)
!365 = !{!150, !166, !291}
!366 = !{!367, !368, !369}
!367 = !DILocalVariable(name: "blob", arg: 1, scope: !363, file: !3, line: 211, type: !166)
!368 = !DILocalVariable(name: "length", arg: 2, scope: !363, file: !3, line: 211, type: !291)
!369 = !DILocalVariable(name: "string_info", scope: !363, file: !3, line: 214, type: !150)
!370 = !DILocation(line: 0, scope: !363)
!371 = !DILocation(line: 216, column: 15, scope: !363)
!372 = !DILocation(line: 217, column: 16, scope: !363)
!373 = !DILocation(line: 217, column: 22, scope: !363)
!374 = !DILocation(line: 218, column: 28, scope: !375)
!375 = distinct !DILexicalBlock(scope: !363, file: !3, line: 218, column: 7)
!376 = !DILocation(line: 218, column: 7, scope: !363)
!377 = !DILocation(line: 221, column: 20, scope: !378)
!378 = distinct !DILexicalBlock(scope: !363, file: !3, line: 221, column: 7)
!379 = !DILocation(line: 220, column: 26, scope: !375)
!380 = !DILocation(line: 219, column: 42, scope: !375)
!381 = !DILocation(line: 219, column: 18, scope: !375)
!382 = !DILocation(line: 219, column: 23, scope: !375)
!383 = !DILocation(line: 219, column: 5, scope: !375)
!384 = !DILocation(line: 221, column: 26, scope: !378)
!385 = !DILocation(line: 221, column: 7, scope: !363)
!386 = !DILocation(line: 842, column: 16, scope: !387, inlinedAt: !392)
!387 = distinct !DISubprogram(name: "DestroyStringInfo", scope: !3, file: !3, line: 835, type: !388, scopeLine: 836, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !390)
!388 = !DISubroutineType(types: !389)
!389 = !{!150, !150}
!390 = !{!391}
!391 = !DILocalVariable(name: "string_info", arg: 1, scope: !387, file: !3, line: 835, type: !150)
!392 = distinct !DILocation(line: 223, column: 19, scope: !393)
!393 = distinct !DILexicalBlock(scope: !378, file: !3, line: 222, column: 5)
!394 = !DILocation(line: 842, column: 25, scope: !387, inlinedAt: !392)
!395 = !DILocation(line: 843, column: 30, scope: !387, inlinedAt: !392)
!396 = !DILocation(line: 0, scope: !387, inlinedAt: !392)
!397 = !DILocation(line: 224, column: 7, scope: !393)
!398 = !DILocation(line: 226, column: 12, scope: !399)
!399 = distinct !DILexicalBlock(scope: !363, file: !3, line: 226, column: 7)
!400 = !DILocation(line: 226, column: 7, scope: !363)
!401 = !DILocation(line: 227, column: 12, scope: !399)
!402 = !DILocation(line: 227, column: 5, scope: !399)
!403 = !DILocation(line: 229, column: 1, scope: !363)
!404 = !DILocation(line: 0, scope: !387)
!405 = !DILocation(line: 839, column: 20, scope: !406)
!406 = distinct !DILexicalBlock(scope: !387, file: !3, line: 839, column: 7)
!407 = !DILocation(line: 839, column: 26, scope: !406)
!408 = !DILocation(line: 839, column: 7, scope: !387)
!409 = !DILocation(line: 840, column: 42, scope: !406)
!410 = !DILocation(line: 840, column: 23, scope: !406)
!411 = !DILocation(line: 840, column: 5, scope: !406)
!412 = !DILocation(line: 842, column: 16, scope: !387)
!413 = !DILocation(line: 842, column: 25, scope: !387)
!414 = !DILocation(line: 843, column: 30, scope: !387)
!415 = !DILocation(line: 844, column: 3, scope: !387)
!416 = distinct !DISubprogram(name: "CloneString", scope: !3, file: !3, line: 263, type: !417, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{!22, !172, !168}
!419 = !{!420, !421, !422, !423, !426, !427, !430}
!420 = !DILocalVariable(name: "destination", arg: 1, scope: !416, file: !3, line: 263, type: !172)
!421 = !DILocalVariable(name: "source", arg: 2, scope: !416, file: !3, line: 263, type: !168)
!422 = !DILocalVariable(name: "length", scope: !416, file: !3, line: 266, type: !163)
!423 = !DILocalVariable(name: "message", scope: !424, file: !3, line: 282, type: !22)
!424 = distinct !DILexicalBlock(scope: !425, file: !3, line: 282, column: 5)
!425 = distinct !DILexicalBlock(scope: !416, file: !3, line: 281, column: 7)
!426 = !DILocalVariable(name: "exception", scope: !424, file: !3, line: 282, type: !231)
!427 = !DILocalVariable(name: "message", scope: !428, file: !3, line: 286, type: !22)
!428 = distinct !DILexicalBlock(scope: !429, file: !3, line: 286, column: 5)
!429 = distinct !DILexicalBlock(scope: !416, file: !3, line: 285, column: 7)
!430 = !DILocalVariable(name: "exception", scope: !428, file: !3, line: 286, type: !231)
!431 = !DILocation(line: 0, scope: !416)
!432 = !DILocation(line: 269, column: 14, scope: !433)
!433 = distinct !DILexicalBlock(scope: !416, file: !3, line: 269, column: 7)
!434 = !{!338, !338, i64 0}
!435 = !DILocation(line: 269, column: 7, scope: !416)
!436 = !DILocation(line: 271, column: 11, scope: !437)
!437 = distinct !DILexicalBlock(scope: !433, file: !3, line: 270, column: 5)
!438 = !DILocation(line: 0, scope: !293, inlinedAt: !439)
!439 = distinct !DILocation(line: 272, column: 22, scope: !440)
!440 = distinct !DILexicalBlock(scope: !437, file: !3, line: 271, column: 11)
!441 = !DILocation(line: 810, column: 19, scope: !293, inlinedAt: !439)
!442 = !DILocation(line: 272, column: 21, scope: !440)
!443 = !DILocation(line: 272, column: 9, scope: !440)
!444 = !DILocation(line: 275, column: 7, scope: !416)
!445 = !DILocation(line: 277, column: 20, scope: !446)
!446 = distinct !DILexicalBlock(scope: !447, file: !3, line: 276, column: 5)
!447 = distinct !DILexicalBlock(scope: !416, file: !3, line: 275, column: 7)
!448 = !DILocation(line: 277, column: 19, scope: !446)
!449 = !DILocation(line: 278, column: 7, scope: !446)
!450 = !DILocation(line: 280, column: 10, scope: !416)
!451 = !DILocation(line: 281, column: 15, scope: !425)
!452 = !DILocation(line: 281, column: 7, scope: !416)
!453 = !DILocation(line: 282, column: 5, scope: !424)
!454 = !DILocation(line: 0, scope: !424)
!455 = !DILocation(line: 283, column: 64, scope: !416)
!456 = !DILocation(line: 283, column: 25, scope: !416)
!457 = !DILocation(line: 283, column: 15, scope: !416)
!458 = !DILocation(line: 285, column: 20, scope: !429)
!459 = !DILocation(line: 285, column: 7, scope: !416)
!460 = !DILocation(line: 286, column: 5, scope: !428)
!461 = !DILocation(line: 0, scope: !428)
!462 = !DILocation(line: 287, column: 14, scope: !463)
!463 = distinct !DILexicalBlock(scope: !416, file: !3, line: 287, column: 7)
!464 = !DILocation(line: 287, column: 7, scope: !416)
!465 = !DILocation(line: 288, column: 12, scope: !463)
!466 = !DILocation(line: 289, column: 4, scope: !416)
!467 = !DILocation(line: 288, column: 5, scope: !463)
!468 = !DILocation(line: 289, column: 3, scope: !416)
!469 = !DILocation(line: 289, column: 25, scope: !416)
!470 = !DILocation(line: 290, column: 10, scope: !416)
!471 = !DILocation(line: 290, column: 3, scope: !416)
!472 = !DILocation(line: 291, column: 1, scope: !416)
!473 = !DISubprogram(name: "ResizeQuantumMemory", scope: !310, file: !310, line: 55, type: !474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!474 = !DISubroutineType(types: !475)
!475 = !{!147, !147, !291, !291}
!476 = distinct !DISubprogram(name: "CloneStringInfo", scope: !3, file: !3, line: 315, type: !477, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !481)
!477 = !DISubroutineType(types: !478)
!478 = !{!150, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!481 = !{!482, !483}
!482 = !DILocalVariable(name: "string_info", arg: 1, scope: !476, file: !3, line: 315, type: !479)
!483 = !DILocalVariable(name: "clone_info", scope: !476, file: !3, line: 318, type: !150)
!484 = !DILocation(line: 0, scope: !476)
!485 = !DILocation(line: 322, column: 45, scope: !476)
!486 = !DILocation(line: 322, column: 14, scope: !476)
!487 = !DILocation(line: 323, column: 20, scope: !488)
!488 = distinct !DILexicalBlock(scope: !476, file: !3, line: 323, column: 7)
!489 = !DILocation(line: 323, column: 27, scope: !488)
!490 = !DILocation(line: 323, column: 7, scope: !476)
!491 = !DILocation(line: 324, column: 31, scope: !488)
!492 = !DILocation(line: 324, column: 50, scope: !488)
!493 = !DILocation(line: 324, column: 75, scope: !488)
!494 = !DILocation(line: 324, column: 12, scope: !488)
!495 = !DILocation(line: 324, column: 5, scope: !488)
!496 = !DILocation(line: 325, column: 3, scope: !476)
!497 = distinct !DISubprogram(name: "CompareStringInfo", scope: !3, file: !3, line: 362, type: !498, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !500)
!498 = !DISubroutineType(types: !499)
!499 = !{!149, !479, !479}
!500 = !{!501, !502, !503}
!501 = !DILocalVariable(name: "target", arg: 1, scope: !497, file: !3, line: 362, type: !479)
!502 = !DILocalVariable(name: "source", arg: 2, scope: !497, file: !3, line: 363, type: !479)
!503 = !DILocalVariable(name: "status", scope: !497, file: !3, line: 366, type: !149)
!504 = !DILocation(line: 0, scope: !497)
!505 = !DILocation(line: 372, column: 25, scope: !497)
!506 = !DILocation(line: 372, column: 39, scope: !497)
!507 = !DILocation(line: 372, column: 63, scope: !497)
!508 = !DILocation(line: 373, column: 13, scope: !497)
!509 = !DILocalVariable(name: "x", arg: 1, scope: !510, file: !3, line: 355, type: !291)
!510 = distinct !DISubprogram(name: "MagickMin", scope: !3, file: !3, line: 355, type: !511, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{!163, !291, !291}
!513 = !{!509, !514}
!514 = !DILocalVariable(name: "y", arg: 2, scope: !510, file: !3, line: 355, type: !291)
!515 = !DILocation(line: 0, scope: !510, inlinedAt: !516)
!516 = distinct !DILocation(line: 372, column: 45, scope: !497)
!517 = !DILocation(line: 372, column: 10, scope: !497)
!518 = !DILocation(line: 374, column: 14, scope: !519)
!519 = distinct !DILexicalBlock(scope: !497, file: !3, line: 374, column: 7)
!520 = !DILocation(line: 374, column: 7, scope: !497)
!521 = !DILocation(line: 376, column: 22, scope: !522)
!522 = distinct !DILexicalBlock(scope: !497, file: !3, line: 376, column: 7)
!523 = !DILocation(line: 376, column: 7, scope: !497)
!524 = !DILocation(line: 378, column: 25, scope: !497)
!525 = !DILocation(line: 378, column: 10, scope: !497)
!526 = !DILocation(line: 378, column: 3, scope: !497)
!527 = !DILocation(line: 379, column: 1, scope: !497)
!528 = distinct !DISubprogram(name: "ConcatenateMagickString", scope: !3, file: !3, line: 410, type: !529, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !531)
!529 = !DISubroutineType(types: !530)
!530 = !{!163, !22, !168, !291}
!531 = !{!532, !533, !534, !535, !536, !537, !538}
!532 = !DILocalVariable(name: "destination", arg: 1, scope: !528, file: !3, line: 410, type: !22)
!533 = !DILocalVariable(name: "source", arg: 2, scope: !528, file: !3, line: 411, type: !168)
!534 = !DILocalVariable(name: "length", arg: 3, scope: !528, file: !3, line: 411, type: !291)
!535 = !DILocalVariable(name: "q", scope: !528, file: !3, line: 414, type: !22)
!536 = !DILocalVariable(name: "p", scope: !528, file: !3, line: 417, type: !168)
!537 = !DILocalVariable(name: "i", scope: !528, file: !3, line: 420, type: !163)
!538 = !DILocalVariable(name: "count", scope: !528, file: !3, line: 423, type: !163)
!539 = !DILocation(line: 0, scope: !528)
!540 = !DILocation(line: 431, column: 15, scope: !528)
!541 = !DILocation(line: 431, column: 21, scope: !528)
!542 = !DILocation(line: 431, column: 3, scope: !528)
!543 = !DILocation(line: 431, column: 25, scope: !528)
!544 = !DILocation(line: 431, column: 28, scope: !528)
!545 = !DILocation(line: 431, column: 12, scope: !528)
!546 = !DILocation(line: 432, column: 6, scope: !528)
!547 = distinct !{!547, !542, !546, !548, !549}
!548 = !{!"llvm.loop.mustprogress"}
!549 = !{!"llvm.loop.unroll.disable"}
!550 = !DILocation(line: 433, column: 20, scope: !528)
!551 = !DILocation(line: 434, column: 11, scope: !528)
!552 = !DILocation(line: 435, column: 9, scope: !553)
!553 = distinct !DILexicalBlock(scope: !528, file: !3, line: 435, column: 7)
!554 = !DILocation(line: 435, column: 7, scope: !528)
!555 = !DILocation(line: 437, column: 10, scope: !528)
!556 = !DILocation(line: 437, column: 13, scope: !528)
!557 = !DILocation(line: 437, column: 3, scope: !528)
!558 = !DILocation(line: 436, column: 18, scope: !553)
!559 = !DILocation(line: 436, column: 5, scope: !553)
!560 = !DILocation(line: 439, column: 11, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 439, column: 9)
!562 = distinct !DILexicalBlock(scope: !528, file: !3, line: 438, column: 3)
!563 = !DILocation(line: 439, column: 9, scope: !562)
!564 = !DILocation(line: 441, column: 11, scope: !565)
!565 = distinct !DILexicalBlock(scope: !561, file: !3, line: 440, column: 7)
!566 = !DILocation(line: 441, column: 13, scope: !565)
!567 = !DILocation(line: 442, column: 10, scope: !565)
!568 = !DILocation(line: 443, column: 7, scope: !565)
!569 = !DILocation(line: 444, column: 6, scope: !562)
!570 = distinct !{!570, !557, !571, !548, !549}
!571 = !DILocation(line: 445, column: 3, scope: !528)
!572 = !DILocation(line: 446, column: 5, scope: !528)
!573 = !DILocation(line: 447, column: 18, scope: !528)
!574 = !DILocation(line: 447, column: 3, scope: !528)
!575 = !DILocation(line: 448, column: 1, scope: !528)
!576 = distinct !DISubprogram(name: "ConcatenateString", scope: !3, file: !3, line: 476, type: !577, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{!16, !172, !168}
!579 = !{!580, !581, !582, !583, !584, !585, !588, !589, !592, !593, !596}
!580 = !DILocalVariable(name: "destination", arg: 1, scope: !576, file: !3, line: 476, type: !172)
!581 = !DILocalVariable(name: "source", arg: 2, scope: !576, file: !3, line: 477, type: !168)
!582 = !DILocalVariable(name: "destination_length", scope: !576, file: !3, line: 480, type: !163)
!583 = !DILocalVariable(name: "length", scope: !576, file: !3, line: 481, type: !163)
!584 = !DILocalVariable(name: "source_length", scope: !576, file: !3, line: 482, type: !163)
!585 = !DILocalVariable(name: "message", scope: !586, file: !3, line: 496, type: !22)
!586 = distinct !DILexicalBlock(scope: !587, file: !3, line: 496, column: 5)
!587 = distinct !DILexicalBlock(scope: !576, file: !3, line: 495, column: 7)
!588 = !DILocalVariable(name: "exception", scope: !586, file: !3, line: 496, type: !231)
!589 = !DILocalVariable(name: "message", scope: !590, file: !3, line: 499, type: !22)
!590 = distinct !DILexicalBlock(scope: !591, file: !3, line: 499, column: 5)
!591 = distinct !DILexicalBlock(scope: !576, file: !3, line: 498, column: 7)
!592 = !DILocalVariable(name: "exception", scope: !590, file: !3, line: 499, type: !231)
!593 = !DILocalVariable(name: "message", scope: !594, file: !3, line: 503, type: !22)
!594 = distinct !DILexicalBlock(scope: !595, file: !3, line: 503, column: 5)
!595 = distinct !DILexicalBlock(scope: !576, file: !3, line: 502, column: 7)
!596 = !DILocalVariable(name: "exception", scope: !594, file: !3, line: 503, type: !231)
!597 = !DILocation(line: 0, scope: !576)
!598 = !DILocation(line: 485, column: 14, scope: !599)
!599 = distinct !DILexicalBlock(scope: !576, file: !3, line: 485, column: 7)
!600 = !DILocation(line: 485, column: 7, scope: !576)
!601 = !DILocation(line: 487, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !576, file: !3, line: 487, column: 7)
!603 = !DILocation(line: 487, column: 20, scope: !602)
!604 = !DILocation(line: 487, column: 7, scope: !576)
!605 = !DILocation(line: 489, column: 20, scope: !606)
!606 = distinct !DILexicalBlock(scope: !602, file: !3, line: 488, column: 5)
!607 = !DILocation(line: 489, column: 19, scope: !606)
!608 = !DILocation(line: 490, column: 7, scope: !606)
!609 = !DILocation(line: 492, column: 22, scope: !576)
!610 = !DILocation(line: 493, column: 17, scope: !576)
!611 = !DILocation(line: 495, column: 7, scope: !587)
!612 = !DILocation(line: 495, column: 15, scope: !587)
!613 = !DILocation(line: 495, column: 7, scope: !576)
!614 = !DILocation(line: 496, column: 5, scope: !586)
!615 = !DILocation(line: 0, scope: !586)
!616 = !DILocation(line: 497, column: 9, scope: !576)
!617 = !DILocation(line: 498, column: 15, scope: !591)
!618 = !DILocation(line: 498, column: 7, scope: !576)
!619 = !DILocation(line: 499, column: 5, scope: !590)
!620 = !DILocation(line: 0, scope: !590)
!621 = !DILocation(line: 500, column: 64, scope: !576)
!622 = !DILocation(line: 500, column: 25, scope: !576)
!623 = !DILocation(line: 500, column: 15, scope: !576)
!624 = !DILocation(line: 502, column: 20, scope: !595)
!625 = !DILocation(line: 502, column: 7, scope: !576)
!626 = !DILocation(line: 503, column: 5, scope: !594)
!627 = !DILocation(line: 0, scope: !594)
!628 = !DILocation(line: 504, column: 21, scope: !629)
!629 = distinct !DILexicalBlock(scope: !576, file: !3, line: 504, column: 7)
!630 = !DILocation(line: 504, column: 7, scope: !576)
!631 = !DILocation(line: 505, column: 33, scope: !629)
!632 = !DILocation(line: 505, column: 12, scope: !629)
!633 = !DILocation(line: 506, column: 4, scope: !576)
!634 = !DILocation(line: 505, column: 5, scope: !629)
!635 = !DILocation(line: 506, column: 3, scope: !576)
!636 = !DILocation(line: 506, column: 25, scope: !576)
!637 = !DILocation(line: 507, column: 3, scope: !576)
!638 = !DILocation(line: 508, column: 1, scope: !576)
!639 = distinct !DISubprogram(name: "ConcatenateStringInfo", scope: !3, file: !3, line: 536, type: !640, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !642)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !150, !479}
!642 = !{!643, !644, !645, !646, !649}
!643 = !DILocalVariable(name: "string_info", arg: 1, scope: !639, file: !3, line: 536, type: !150)
!644 = !DILocalVariable(name: "source", arg: 2, scope: !639, file: !3, line: 537, type: !479)
!645 = !DILocalVariable(name: "length", scope: !639, file: !3, line: 540, type: !163)
!646 = !DILocalVariable(name: "message", scope: !647, file: !3, line: 547, type: !22)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 547, column: 5)
!648 = distinct !DILexicalBlock(scope: !639, file: !3, line: 546, column: 7)
!649 = !DILocalVariable(name: "exception", scope: !647, file: !3, line: 547, type: !231)
!650 = !DILocation(line: 0, scope: !639)
!651 = !DILocation(line: 545, column: 23, scope: !639)
!652 = !DILocation(line: 546, column: 7, scope: !648)
!653 = !DILocation(line: 546, column: 25, scope: !648)
!654 = !DILocation(line: 546, column: 15, scope: !648)
!655 = !DILocation(line: 546, column: 7, scope: !639)
!656 = !DILocation(line: 547, column: 5, scope: !647)
!657 = !DILocation(line: 0, scope: !647)
!658 = !DILocation(line: 548, column: 41, scope: !639)
!659 = !DILocation(line: 548, column: 3, scope: !639)
!660 = !DILocation(line: 549, column: 30, scope: !639)
!661 = !DILocation(line: 549, column: 35, scope: !639)
!662 = !DILocation(line: 549, column: 51, scope: !639)
!663 = !DILocation(line: 549, column: 65, scope: !639)
!664 = !DILocation(line: 549, column: 10, scope: !639)
!665 = !DILocation(line: 550, column: 1, scope: !639)
!666 = distinct !DISubprogram(name: "SetStringInfoLength", scope: !3, file: !3, line: 1910, type: !667, scopeLine: 1912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !150, !291}
!669 = !{!670, !671, !672, !675, !676, !679}
!670 = !DILocalVariable(name: "string_info", arg: 1, scope: !666, file: !3, line: 1910, type: !150)
!671 = !DILocalVariable(name: "length", arg: 2, scope: !666, file: !3, line: 1911, type: !291)
!672 = !DILocalVariable(name: "message", scope: !673, file: !3, line: 1916, type: !22)
!673 = distinct !DILexicalBlock(scope: !674, file: !3, line: 1916, column: 5)
!674 = distinct !DILexicalBlock(scope: !666, file: !3, line: 1915, column: 7)
!675 = !DILocalVariable(name: "exception", scope: !673, file: !3, line: 1916, type: !231)
!676 = !DILocalVariable(name: "message", scope: !677, file: !3, line: 1925, type: !22)
!677 = distinct !DILexicalBlock(scope: !678, file: !3, line: 1925, column: 5)
!678 = distinct !DILexicalBlock(scope: !666, file: !3, line: 1924, column: 7)
!679 = !DILocalVariable(name: "exception", scope: !677, file: !3, line: 1925, type: !231)
!680 = !DILocation(line: 0, scope: !666)
!681 = !DILocation(line: 1915, column: 15, scope: !674)
!682 = !DILocation(line: 1915, column: 7, scope: !666)
!683 = !DILocation(line: 1916, column: 5, scope: !673)
!684 = !DILocation(line: 0, scope: !673)
!685 = !DILocation(line: 1917, column: 16, scope: !666)
!686 = !DILocation(line: 1917, column: 22, scope: !666)
!687 = !DILocation(line: 1918, column: 20, scope: !688)
!688 = distinct !DILexicalBlock(scope: !666, file: !3, line: 1918, column: 7)
!689 = !DILocation(line: 1918, column: 26, scope: !688)
!690 = !DILocation(line: 0, scope: !688)
!691 = !DILocation(line: 1918, column: 7, scope: !666)
!692 = !DILocation(line: 1919, column: 42, scope: !688)
!693 = !DILocation(line: 1919, column: 5, scope: !688)
!694 = !DILocation(line: 1922, column: 42, scope: !688)
!695 = !DILocation(line: 1924, column: 26, scope: !678)
!696 = !DILocation(line: 1924, column: 7, scope: !666)
!697 = !DILocation(line: 1925, column: 5, scope: !677)
!698 = !DILocation(line: 0, scope: !677)
!699 = !DILocation(line: 1926, column: 1, scope: !666)
!700 = distinct !DISubprogram(name: "ConfigureFileToStringInfo", scope: !3, file: !3, line: 576, type: !701, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !703)
!701 = !DISubroutineType(types: !702)
!702 = !{!150, !168}
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !714}
!704 = !DILocalVariable(name: "filename", arg: 1, scope: !700, file: !3, line: 576, type: !168)
!705 = !DILocalVariable(name: "string", scope: !700, file: !3, line: 579, type: !22)
!706 = !DILocalVariable(name: "file", scope: !700, file: !3, line: 582, type: !149)
!707 = !DILocalVariable(name: "offset", scope: !700, file: !3, line: 585, type: !170)
!708 = !DILocalVariable(name: "length", scope: !700, file: !3, line: 588, type: !163)
!709 = !DILocalVariable(name: "string_info", scope: !700, file: !3, line: 591, type: !150)
!710 = !DILocalVariable(name: "map", scope: !700, file: !3, line: 594, type: !147)
!711 = !DILocalVariable(name: "i", scope: !712, file: !3, line: 624, type: !163)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 622, column: 5)
!713 = distinct !DILexicalBlock(scope: !700, file: !3, line: 616, column: 7)
!714 = !DILocalVariable(name: "count", scope: !712, file: !3, line: 627, type: !6)
!715 = !DILocation(line: 0, scope: !700)
!716 = !DILocalVariable(name: "path", arg: 1, scope: !717, file: !718, line: 136, type: !168)
!717 = distinct !DISubprogram(name: "open_utf8", scope: !718, file: !718, line: 136, type: !719, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !724)
!718 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f0938b0b9be15949da14cdcfd7e813d9")
!719 = !DISubroutineType(types: !720)
!720 = !{!149, !168, !149, !721}
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !722, line: 59, baseType: !723)
!722 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "461013b06495e219438a7cca03a67307")
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !9, line: 150, baseType: !18)
!724 = !{!716, !725, !726}
!725 = !DILocalVariable(name: "flags", arg: 2, scope: !717, file: !718, line: 136, type: !149)
!726 = !DILocalVariable(name: "mode", arg: 3, scope: !717, file: !718, line: 136, type: !721)
!727 = !DILocation(line: 0, scope: !717, inlinedAt: !728)
!728 = distinct !DILocation(line: 597, column: 8, scope: !700)
!729 = !DILocation(line: 139, column: 10, scope: !717, inlinedAt: !728)
!730 = !DILocation(line: 598, column: 12, scope: !731)
!731 = distinct !DILexicalBlock(scope: !700, file: !3, line: 598, column: 7)
!732 = !DILocation(line: 598, column: 7, scope: !700)
!733 = !DILocation(line: 600, column: 29, scope: !700)
!734 = !DILocation(line: 601, column: 15, scope: !735)
!735 = distinct !DILexicalBlock(scope: !700, file: !3, line: 601, column: 7)
!736 = !DILocation(line: 601, column: 20, scope: !735)
!737 = !DILocation(line: 603, column: 12, scope: !738)
!738 = distinct !DILexicalBlock(scope: !735, file: !3, line: 602, column: 5)
!739 = !DILocation(line: 604, column: 7, scope: !738)
!740 = !DILocation(line: 609, column: 48, scope: !741)
!741 = distinct !DILexicalBlock(scope: !700, file: !3, line: 608, column: 7)
!742 = !DILocation(line: 609, column: 21, scope: !741)
!743 = !DILocation(line: 610, column: 14, scope: !744)
!744 = distinct !DILexicalBlock(scope: !700, file: !3, line: 610, column: 7)
!745 = !DILocation(line: 610, column: 7, scope: !700)
!746 = !DILocation(line: 612, column: 12, scope: !747)
!747 = distinct !DILexicalBlock(scope: !744, file: !3, line: 611, column: 5)
!748 = !DILocation(line: 613, column: 7, scope: !747)
!749 = !DILocation(line: 615, column: 7, scope: !700)
!750 = !DILocation(line: 616, column: 11, scope: !713)
!751 = !DILocation(line: 616, column: 7, scope: !700)
!752 = !DILocation(line: 618, column: 14, scope: !753)
!753 = distinct !DILexicalBlock(scope: !713, file: !3, line: 617, column: 5)
!754 = !DILocation(line: 619, column: 14, scope: !753)
!755 = !DILocation(line: 620, column: 5, scope: !753)
!756 = !DILocation(line: 629, column: 14, scope: !712)
!757 = !DILocation(line: 0, scope: !712)
!758 = !DILocation(line: 630, column: 19, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 630, column: 7)
!760 = distinct !DILexicalBlock(scope: !712, file: !3, line: 630, column: 7)
!761 = !DILocation(line: 630, column: 7, scope: !760)
!762 = !DILocation(line: 632, column: 31, scope: !763)
!763 = distinct !DILexicalBlock(scope: !759, file: !3, line: 631, column: 7)
!764 = !DILocation(line: 632, column: 59, scope: !763)
!765 = !DILocation(line: 0, scope: !510, inlinedAt: !766)
!766 = distinct !DILocation(line: 632, column: 43, scope: !763)
!767 = !DILocation(line: 632, column: 15, scope: !763)
!768 = !DILocation(line: 634, column: 19, scope: !769)
!769 = distinct !DILexicalBlock(scope: !763, file: !3, line: 634, column: 13)
!770 = !DILocation(line: 634, column: 13, scope: !763)
!771 = !DILocation(line: 637, column: 17, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 637, column: 17)
!773 = distinct !DILexicalBlock(scope: !769, file: !3, line: 635, column: 11)
!774 = !DILocation(line: 637, column: 23, scope: !772)
!775 = !DILocation(line: 637, column: 17, scope: !773)
!776 = !DILocation(line: 0, scope: !763)
!777 = !DILocation(line: 630, column: 30, scope: !759)
!778 = distinct !{!778, !761, !779, !548, !549}
!779 = !DILocation(line: 640, column: 7, scope: !760)
!780 = !DILocation(line: 643, column: 16, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 642, column: 9)
!782 = distinct !DILexicalBlock(scope: !712, file: !3, line: 641, column: 11)
!783 = !DILocation(line: 0, scope: !293, inlinedAt: !784)
!784 = distinct !DILocation(line: 644, column: 18, scope: !781)
!785 = !DILocation(line: 810, column: 19, scope: !293, inlinedAt: !784)
!786 = !DILocation(line: 648, column: 3, scope: !700)
!787 = !DILocation(line: 648, column: 17, scope: !700)
!788 = !DILocation(line: 649, column: 8, scope: !700)
!789 = !DILocation(line: 650, column: 15, scope: !700)
!790 = !DILocalVariable(name: "destination", arg: 1, scope: !791, file: !3, line: 738, type: !22)
!791 = distinct !DISubprogram(name: "CopyMagickString", scope: !3, file: !3, line: 738, type: !529, scopeLine: 740, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !792)
!792 = !{!790, !793, !794, !795, !796, !797}
!793 = !DILocalVariable(name: "source", arg: 2, scope: !791, file: !3, line: 738, type: !168)
!794 = !DILocalVariable(name: "length", arg: 3, scope: !791, file: !3, line: 739, type: !291)
!795 = !DILocalVariable(name: "q", scope: !791, file: !3, line: 742, type: !22)
!796 = !DILocalVariable(name: "p", scope: !791, file: !3, line: 745, type: !168)
!797 = !DILocalVariable(name: "n", scope: !791, file: !3, line: 748, type: !163)
!798 = !DILocation(line: 0, scope: !791, inlinedAt: !799)
!799 = distinct !DILocation(line: 651, column: 10, scope: !700)
!800 = !DILocation(line: 750, column: 14, scope: !801, inlinedAt: !799)
!801 = distinct !DILexicalBlock(scope: !791, file: !3, line: 750, column: 7)
!802 = !DILocation(line: 750, column: 7, scope: !791, inlinedAt: !799)
!803 = !DILocation(line: 756, column: 9, scope: !804, inlinedAt: !799)
!804 = distinct !DILexicalBlock(scope: !805, file: !3, line: 755, column: 3)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 754, column: 3)
!806 = distinct !DILexicalBlock(scope: !791, file: !3, line: 754, column: 3)
!807 = !DILocation(line: 756, column: 7, scope: !804, inlinedAt: !799)
!808 = !DILocation(line: 757, column: 12, scope: !809, inlinedAt: !799)
!809 = distinct !DILexicalBlock(scope: !804, file: !3, line: 757, column: 9)
!810 = !DILocation(line: 757, column: 9, scope: !804, inlinedAt: !799)
!811 = !DILocation(line: 756, column: 11, scope: !804, inlinedAt: !799)
!812 = !DILocation(line: 759, column: 6, scope: !804, inlinedAt: !799)
!813 = !DILocation(line: 760, column: 9, scope: !804, inlinedAt: !799)
!814 = !DILocation(line: 760, column: 7, scope: !804, inlinedAt: !799)
!815 = !DILocation(line: 761, column: 12, scope: !816, inlinedAt: !799)
!816 = distinct !DILexicalBlock(scope: !804, file: !3, line: 761, column: 9)
!817 = !DILocation(line: 761, column: 9, scope: !804, inlinedAt: !799)
!818 = !DILocation(line: 760, column: 11, scope: !804, inlinedAt: !799)
!819 = !DILocation(line: 763, column: 6, scope: !804, inlinedAt: !799)
!820 = !DILocation(line: 764, column: 9, scope: !804, inlinedAt: !799)
!821 = !DILocation(line: 764, column: 7, scope: !804, inlinedAt: !799)
!822 = !DILocation(line: 765, column: 12, scope: !823, inlinedAt: !799)
!823 = distinct !DILexicalBlock(scope: !804, file: !3, line: 765, column: 9)
!824 = !DILocation(line: 765, column: 9, scope: !804, inlinedAt: !799)
!825 = !DILocation(line: 764, column: 11, scope: !804, inlinedAt: !799)
!826 = !DILocation(line: 767, column: 6, scope: !804, inlinedAt: !799)
!827 = !DILocation(line: 768, column: 9, scope: !804, inlinedAt: !799)
!828 = !DILocation(line: 768, column: 7, scope: !804, inlinedAt: !799)
!829 = !DILocation(line: 769, column: 12, scope: !830, inlinedAt: !799)
!830 = distinct !DILexicalBlock(scope: !804, file: !3, line: 769, column: 9)
!831 = !DILocation(line: 769, column: 9, scope: !804, inlinedAt: !799)
!832 = !DILocation(line: 768, column: 11, scope: !804, inlinedAt: !799)
!833 = !DILocation(line: 771, column: 6, scope: !804, inlinedAt: !799)
!834 = !DILocation(line: 754, column: 26, scope: !805, inlinedAt: !799)
!835 = !DILocation(line: 754, column: 20, scope: !805, inlinedAt: !799)
!836 = !DILocation(line: 754, column: 3, scope: !806, inlinedAt: !799)
!837 = distinct !{!837, !836, !838, !548, !549}
!838 = !DILocation(line: 772, column: 3, scope: !806, inlinedAt: !799)
!839 = !DILocation(line: 776, column: 11, scope: !840, inlinedAt: !799)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 775, column: 5)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 774, column: 5)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 774, column: 5)
!843 = distinct !DILexicalBlock(scope: !791, file: !3, line: 773, column: 7)
!844 = !DILocation(line: 776, column: 9, scope: !840, inlinedAt: !799)
!845 = !DILocation(line: 777, column: 14, scope: !846, inlinedAt: !799)
!846 = distinct !DILexicalBlock(scope: !840, file: !3, line: 777, column: 11)
!847 = !DILocation(line: 777, column: 11, scope: !840, inlinedAt: !799)
!848 = !DILocation(line: 776, column: 13, scope: !840, inlinedAt: !799)
!849 = !DILocation(line: 779, column: 8, scope: !840, inlinedAt: !799)
!850 = !DILocation(line: 0, scope: !842, inlinedAt: !799)
!851 = !DILocation(line: 774, column: 17, scope: !841, inlinedAt: !799)
!852 = !DILocation(line: 774, column: 5, scope: !842, inlinedAt: !799)
!853 = distinct !{!853, !852, !854, !548, !549}
!854 = !DILocation(line: 780, column: 5, scope: !842, inlinedAt: !799)
!855 = !DILocation(line: 782, column: 7, scope: !856, inlinedAt: !799)
!856 = distinct !DILexicalBlock(scope: !791, file: !3, line: 781, column: 7)
!857 = !DILocation(line: 783, column: 3, scope: !791, inlinedAt: !799)
!858 = !DILocation(line: 652, column: 16, scope: !700)
!859 = !DILocation(line: 652, column: 22, scope: !700)
!860 = !DILocation(line: 653, column: 16, scope: !700)
!861 = !DILocation(line: 653, column: 21, scope: !700)
!862 = !DILocation(line: 654, column: 3, scope: !700)
!863 = !DILocation(line: 655, column: 1, scope: !700)
!864 = !DISubprogram(name: "lseek", scope: !865, file: !865, line: 334, type: !866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!865 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!866 = !DISubroutineType(types: !867)
!867 = !{!868, !149, !868, !149}
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !9, line: 152, baseType: !10)
!869 = !DISubprogram(name: "close", scope: !865, file: !865, line: 353, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!870 = !DISubroutineType(types: !871)
!871 = !{!149, !149}
!872 = !DISubprogram(name: "MapBlob", scope: !873, file: !873, line: 112, type: !874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!873 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a66ea2eabdd36512a199f3a0075ea4ad")
!874 = !DISubroutineType(types: !875)
!875 = !{!160, !149, !876, !878, !291}
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "MapMode", file: !101, line: 35, baseType: !100)
!878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!879 = !DISubprogram(name: "UnmapBlob", scope: !873, file: !873, line: 86, type: !880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!880 = !DISubroutineType(types: !881)
!881 = !{!16, !147, !291}
!882 = !DISubprogram(name: "read", scope: !865, file: !865, line: 360, type: !883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!883 = !DISubroutineType(types: !884)
!884 = !{!6, !149, !147, !163}
!885 = !DILocation(line: 0, scope: !791)
!886 = !DILocation(line: 750, column: 14, scope: !801)
!887 = !DILocation(line: 750, column: 7, scope: !791)
!888 = !DILocation(line: 754, column: 20, scope: !805)
!889 = !DILocation(line: 754, column: 3, scope: !806)
!890 = !DILocation(line: 756, column: 11, scope: !804)
!891 = !DILocation(line: 756, column: 9, scope: !804)
!892 = !DILocation(line: 756, column: 7, scope: !804)
!893 = !DILocation(line: 757, column: 12, scope: !809)
!894 = !DILocation(line: 757, column: 9, scope: !804)
!895 = !DILocation(line: 758, column: 25, scope: !809)
!896 = !DILocation(line: 758, column: 32, scope: !809)
!897 = !DILocation(line: 758, column: 7, scope: !809)
!898 = !DILocation(line: 759, column: 6, scope: !804)
!899 = !DILocation(line: 760, column: 11, scope: !804)
!900 = !DILocation(line: 760, column: 9, scope: !804)
!901 = !DILocation(line: 760, column: 7, scope: !804)
!902 = !DILocation(line: 761, column: 12, scope: !816)
!903 = !DILocation(line: 761, column: 9, scope: !804)
!904 = !DILocation(line: 762, column: 25, scope: !816)
!905 = !DILocation(line: 762, column: 32, scope: !816)
!906 = !DILocation(line: 762, column: 7, scope: !816)
!907 = !DILocation(line: 763, column: 6, scope: !804)
!908 = !DILocation(line: 764, column: 11, scope: !804)
!909 = !DILocation(line: 764, column: 9, scope: !804)
!910 = !DILocation(line: 764, column: 7, scope: !804)
!911 = !DILocation(line: 765, column: 12, scope: !823)
!912 = !DILocation(line: 765, column: 9, scope: !804)
!913 = !DILocation(line: 766, column: 25, scope: !823)
!914 = !DILocation(line: 766, column: 32, scope: !823)
!915 = !DILocation(line: 766, column: 7, scope: !823)
!916 = !DILocation(line: 767, column: 6, scope: !804)
!917 = !DILocation(line: 768, column: 11, scope: !804)
!918 = !DILocation(line: 768, column: 9, scope: !804)
!919 = !DILocation(line: 768, column: 7, scope: !804)
!920 = !DILocation(line: 769, column: 12, scope: !830)
!921 = !DILocation(line: 769, column: 9, scope: !804)
!922 = !DILocation(line: 770, column: 25, scope: !830)
!923 = !DILocation(line: 770, column: 32, scope: !830)
!924 = !DILocation(line: 770, column: 7, scope: !830)
!925 = !DILocation(line: 771, column: 6, scope: !804)
!926 = !DILocation(line: 754, column: 26, scope: !805)
!927 = distinct !{!927, !889, !928, !548, !549}
!928 = !DILocation(line: 772, column: 3, scope: !806)
!929 = !DILocation(line: 0, scope: !806)
!930 = !DILocation(line: 773, column: 7, scope: !791)
!931 = !DILocation(line: 774, column: 5, scope: !842)
!932 = !DILocation(line: 776, column: 13, scope: !840)
!933 = !DILocation(line: 776, column: 11, scope: !840)
!934 = !DILocation(line: 776, column: 9, scope: !840)
!935 = !DILocation(line: 777, column: 14, scope: !846)
!936 = !DILocation(line: 777, column: 11, scope: !840)
!937 = !DILocation(line: 778, column: 27, scope: !846)
!938 = !DILocation(line: 778, column: 34, scope: !846)
!939 = !DILocation(line: 778, column: 9, scope: !846)
!940 = !DILocation(line: 779, column: 8, scope: !840)
!941 = !DILocation(line: 0, scope: !842)
!942 = !DILocation(line: 774, column: 17, scope: !841)
!943 = distinct !{!943, !931, !944, !548, !549}
!944 = !DILocation(line: 780, column: 5, scope: !842)
!945 = !DILocation(line: 753, column: 4, scope: !791)
!946 = !DILocation(line: 752, column: 4, scope: !791)
!947 = !DILocation(line: 781, column: 14, scope: !856)
!948 = !DILocation(line: 781, column: 7, scope: !791)
!949 = !DILocation(line: 782, column: 7, scope: !856)
!950 = !DILocation(line: 782, column: 5, scope: !856)
!951 = !DILocation(line: 783, column: 21, scope: !791)
!952 = !DILocation(line: 783, column: 28, scope: !791)
!953 = !DILocation(line: 783, column: 3, scope: !791)
!954 = !DILocation(line: 784, column: 1, scope: !791)
!955 = distinct !DISubprogram(name: "ConstantString", scope: !3, file: !3, line: 683, type: !221, scopeLine: 684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !956)
!956 = !{!957, !958, !959, !960, !963}
!957 = !DILocalVariable(name: "source", arg: 1, scope: !955, file: !3, line: 683, type: !168)
!958 = !DILocalVariable(name: "destination", scope: !955, file: !3, line: 686, type: !22)
!959 = !DILocalVariable(name: "length", scope: !955, file: !3, line: 689, type: !163)
!960 = !DILocalVariable(name: "message", scope: !961, file: !3, line: 698, type: !22)
!961 = distinct !DILexicalBlock(scope: !962, file: !3, line: 698, column: 5)
!962 = distinct !DILexicalBlock(scope: !955, file: !3, line: 697, column: 7)
!963 = !DILocalVariable(name: "exception", scope: !961, file: !3, line: 698, type: !231)
!964 = !DILocation(line: 0, scope: !955)
!965 = !DILocation(line: 692, column: 14, scope: !966)
!966 = distinct !DILexicalBlock(scope: !955, file: !3, line: 692, column: 7)
!967 = !DILocation(line: 692, column: 7, scope: !955)
!968 = !DILocation(line: 693, column: 13, scope: !966)
!969 = !DILocation(line: 695, column: 15, scope: !970)
!970 = distinct !DILexicalBlock(scope: !955, file: !3, line: 695, column: 7)
!971 = !DILocation(line: 695, column: 7, scope: !955)
!972 = !DILocation(line: 696, column: 53, scope: !970)
!973 = !DILocation(line: 696, column: 26, scope: !970)
!974 = !DILocation(line: 697, column: 19, scope: !962)
!975 = !DILocation(line: 697, column: 7, scope: !955)
!976 = !DILocation(line: 698, column: 5, scope: !961)
!977 = !DILocation(line: 0, scope: !961)
!978 = !DILocation(line: 699, column: 15, scope: !955)
!979 = !DILocation(line: 700, column: 7, scope: !955)
!980 = !DILocation(line: 701, column: 12, scope: !981)
!981 = distinct !DILexicalBlock(scope: !955, file: !3, line: 700, column: 7)
!982 = !DILocation(line: 701, column: 5, scope: !981)
!983 = !DILocation(line: 702, column: 3, scope: !955)
!984 = !DILocation(line: 702, column: 22, scope: !955)
!985 = !DILocation(line: 703, column: 3, scope: !955)
!986 = !DISubprogram(name: "RelinquishMagickMemory", scope: !310, file: !310, line: 51, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!987 = !DISubroutineType(types: !988)
!988 = !{!147, !147}
!989 = distinct !DISubprogram(name: "DestroyStringList", scope: !3, file: !3, line: 869, type: !990, scopeLine: 870, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !992)
!990 = !DISubroutineType(types: !991)
!991 = !{!172, !172}
!992 = !{!993, !994}
!993 = !DILocalVariable(name: "list", arg: 1, scope: !989, file: !3, line: 869, type: !172)
!994 = !DILocalVariable(name: "i", scope: !989, file: !3, line: 872, type: !6)
!995 = !DILocation(line: 0, scope: !989)
!996 = !DILocation(line: 875, column: 13, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !3, line: 875, column: 3)
!998 = distinct !DILexicalBlock(scope: !989, file: !3, line: 875, column: 3)
!999 = !DILocation(line: 875, column: 21, scope: !997)
!1000 = !DILocation(line: 875, column: 3, scope: !998)
!1001 = !DILocation(line: 0, scope: !293, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 876, column: 13, scope: !997)
!1003 = !DILocation(line: 810, column: 19, scope: !293, inlinedAt: !1002)
!1004 = !DILocation(line: 876, column: 12, scope: !997)
!1005 = !DILocation(line: 875, column: 40, scope: !997)
!1006 = distinct !{!1006, !1000, !1007, !548, !549}
!1007 = !DILocation(line: 876, column: 34, scope: !998)
!1008 = !DILocation(line: 877, column: 18, scope: !989)
!1009 = !DILocation(line: 878, column: 3, scope: !989)
!1010 = distinct !DISubprogram(name: "EscapeString", scope: !3, file: !3, line: 910, type: !1011, scopeLine: 911, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1013)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!22, !168, !169}
!1013 = !{!1014, !1015, !1016, !1017, !1018, !1019, !1020, !1027, !1028, !1031}
!1014 = !DILocalVariable(name: "source", arg: 1, scope: !1010, file: !3, line: 910, type: !168)
!1015 = !DILocalVariable(name: "escape", arg: 2, scope: !1010, file: !3, line: 910, type: !169)
!1016 = !DILocalVariable(name: "destination", scope: !1010, file: !3, line: 913, type: !22)
!1017 = !DILocalVariable(name: "q", scope: !1010, file: !3, line: 916, type: !22)
!1018 = !DILocalVariable(name: "p", scope: !1010, file: !3, line: 919, type: !168)
!1019 = !DILocalVariable(name: "length", scope: !1010, file: !3, line: 922, type: !163)
!1020 = !DILocalVariable(name: "message", scope: !1021, file: !3, line: 930, type: !22)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 930, column: 11)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 929, column: 13)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 928, column: 7)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 927, column: 9)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 926, column: 3)
!1026 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 926, column: 3)
!1027 = !DILocalVariable(name: "exception", scope: !1021, file: !3, line: 930, type: !231)
!1028 = !DILocalVariable(name: "message", scope: !1029, file: !3, line: 938, type: !22)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 938, column: 5)
!1030 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 937, column: 7)
!1031 = !DILocalVariable(name: "exception", scope: !1029, file: !3, line: 938, type: !231)
!1032 = !DILocation(line: 0, scope: !1010)
!1033 = !DILocation(line: 925, column: 10, scope: !1010)
!1034 = !DILocation(line: 926, column: 8, scope: !1026)
!1035 = !DILocation(line: 0, scope: !1026)
!1036 = !DILocation(line: 926, column: 18, scope: !1025)
!1037 = !DILocation(line: 926, column: 3, scope: !1026)
!1038 = !DILocation(line: 927, column: 29, scope: !1024)
!1039 = !DILocation(line: 927, column: 9, scope: !1025)
!1040 = !DILocation(line: 929, column: 21, scope: !1022)
!1041 = !DILocation(line: 929, column: 13, scope: !1023)
!1042 = !DILocation(line: 930, column: 11, scope: !1021)
!1043 = !DILocation(line: 0, scope: !1021)
!1044 = !DILocation(line: 931, column: 15, scope: !1023)
!1045 = !DILocation(line: 932, column: 7, scope: !1023)
!1046 = !DILocation(line: 926, column: 31, scope: !1025)
!1047 = !DILocation(line: 926, column: 3, scope: !1025)
!1048 = distinct !{!1048, !1037, !1049, !548, !549}
!1049 = !DILocation(line: 932, column: 7, scope: !1026)
!1050 = !DILocation(line: 934, column: 15, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 934, column: 7)
!1052 = !DILocation(line: 934, column: 7, scope: !1010)
!1053 = !DILocation(line: 935, column: 53, scope: !1051)
!1054 = !DILocation(line: 935, column: 26, scope: !1051)
!1055 = !DILocation(line: 937, column: 19, scope: !1030)
!1056 = !DILocation(line: 937, column: 7, scope: !1010)
!1057 = !DILocation(line: 938, column: 5, scope: !1029)
!1058 = !DILocation(line: 0, scope: !1029)
!1059 = !DILocation(line: 939, column: 15, scope: !1010)
!1060 = !DILocation(line: 940, column: 14, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 940, column: 7)
!1062 = !DILocation(line: 940, column: 7, scope: !1010)
!1063 = !DILocation(line: 0, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 943, column: 7)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 941, column: 5)
!1066 = !DILocation(line: 0, scope: !1065)
!1067 = !DILocation(line: 943, column: 22, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 943, column: 7)
!1069 = !DILocation(line: 943, column: 7, scope: !1064)
!1070 = !DILocation(line: 945, column: 33, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 945, column: 13)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 944, column: 7)
!1073 = !DILocation(line: 945, column: 13, scope: !1072)
!1074 = !DILocation(line: 946, column: 13, scope: !1071)
!1075 = !DILocation(line: 946, column: 15, scope: !1071)
!1076 = !DILocation(line: 947, column: 15, scope: !1072)
!1077 = !DILocation(line: 946, column: 11, scope: !1071)
!1078 = !DILocation(line: 947, column: 11, scope: !1072)
!1079 = !DILocation(line: 947, column: 13, scope: !1072)
!1080 = !DILocation(line: 943, column: 35, scope: !1068)
!1081 = !DILocation(line: 943, column: 7, scope: !1068)
!1082 = distinct !{!1082, !1069, !1083, !548, !549}
!1083 = !DILocation(line: 948, column: 7, scope: !1064)
!1084 = !DILocation(line: 949, column: 9, scope: !1065)
!1085 = !DILocation(line: 950, column: 5, scope: !1065)
!1086 = !DILocation(line: 951, column: 3, scope: !1010)
!1087 = distinct !DISubprogram(name: "FileToString", scope: !3, file: !3, line: 981, type: !1088, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!22, !168, !291, !282}
!1090 = !{!1091, !1092, !1093, !1094}
!1091 = !DILocalVariable(name: "filename", arg: 1, scope: !1087, file: !3, line: 981, type: !168)
!1092 = !DILocalVariable(name: "extent", arg: 2, scope: !1087, file: !3, line: 981, type: !291)
!1093 = !DILocalVariable(name: "exception", arg: 3, scope: !1087, file: !3, line: 982, type: !282)
!1094 = !DILocalVariable(name: "length", scope: !1087, file: !3, line: 985, type: !163)
!1095 = !DILocation(line: 0, scope: !1087)
!1096 = !DILocation(line: 984, column: 3, scope: !1087)
!1097 = !DILocation(line: 989, column: 19, scope: !1087)
!1098 = !DILocation(line: 990, column: 1, scope: !1087)
!1099 = !DILocation(line: 989, column: 3, scope: !1087)
!1100 = !DISubprogram(name: "FileToBlob", scope: !101, file: !101, line: 62, type: !1101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!160, !168, !291, !1103, !282}
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1104 = distinct !DISubprogram(name: "FileToStringInfo", scope: !3, file: !3, line: 1019, type: !1105, scopeLine: 1021, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1107)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!150, !168, !291, !282}
!1107 = !{!1108, !1109, !1110, !1111}
!1108 = !DILocalVariable(name: "filename", arg: 1, scope: !1104, file: !3, line: 1019, type: !168)
!1109 = !DILocalVariable(name: "extent", arg: 2, scope: !1104, file: !3, line: 1020, type: !291)
!1110 = !DILocalVariable(name: "exception", arg: 3, scope: !1104, file: !3, line: 1020, type: !282)
!1111 = !DILocalVariable(name: "string_info", scope: !1104, file: !3, line: 1023, type: !150)
!1112 = !DILocation(line: 0, scope: !1104)
!1113 = !DILocation(line: 1026, column: 10, scope: !1104)
!1114 = !DILocation(line: 1028, column: 15, scope: !1104)
!1115 = !DILocation(line: 0, scope: !791, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 1029, column: 10, scope: !1104)
!1117 = !DILocation(line: 750, column: 14, scope: !801, inlinedAt: !1116)
!1118 = !DILocation(line: 750, column: 7, scope: !791, inlinedAt: !1116)
!1119 = !DILocation(line: 756, column: 9, scope: !804, inlinedAt: !1116)
!1120 = !DILocation(line: 756, column: 7, scope: !804, inlinedAt: !1116)
!1121 = !DILocation(line: 757, column: 12, scope: !809, inlinedAt: !1116)
!1122 = !DILocation(line: 757, column: 9, scope: !804, inlinedAt: !1116)
!1123 = !DILocation(line: 756, column: 11, scope: !804, inlinedAt: !1116)
!1124 = !DILocation(line: 759, column: 6, scope: !804, inlinedAt: !1116)
!1125 = !DILocation(line: 760, column: 9, scope: !804, inlinedAt: !1116)
!1126 = !DILocation(line: 760, column: 7, scope: !804, inlinedAt: !1116)
!1127 = !DILocation(line: 761, column: 12, scope: !816, inlinedAt: !1116)
!1128 = !DILocation(line: 761, column: 9, scope: !804, inlinedAt: !1116)
!1129 = !DILocation(line: 760, column: 11, scope: !804, inlinedAt: !1116)
!1130 = !DILocation(line: 763, column: 6, scope: !804, inlinedAt: !1116)
!1131 = !DILocation(line: 764, column: 9, scope: !804, inlinedAt: !1116)
!1132 = !DILocation(line: 764, column: 7, scope: !804, inlinedAt: !1116)
!1133 = !DILocation(line: 765, column: 12, scope: !823, inlinedAt: !1116)
!1134 = !DILocation(line: 765, column: 9, scope: !804, inlinedAt: !1116)
!1135 = !DILocation(line: 764, column: 11, scope: !804, inlinedAt: !1116)
!1136 = !DILocation(line: 767, column: 6, scope: !804, inlinedAt: !1116)
!1137 = !DILocation(line: 768, column: 9, scope: !804, inlinedAt: !1116)
!1138 = !DILocation(line: 768, column: 7, scope: !804, inlinedAt: !1116)
!1139 = !DILocation(line: 769, column: 12, scope: !830, inlinedAt: !1116)
!1140 = !DILocation(line: 769, column: 9, scope: !804, inlinedAt: !1116)
!1141 = !DILocation(line: 768, column: 11, scope: !804, inlinedAt: !1116)
!1142 = !DILocation(line: 771, column: 6, scope: !804, inlinedAt: !1116)
!1143 = !DILocation(line: 754, column: 26, scope: !805, inlinedAt: !1116)
!1144 = !DILocation(line: 754, column: 20, scope: !805, inlinedAt: !1116)
!1145 = !DILocation(line: 754, column: 3, scope: !806, inlinedAt: !1116)
!1146 = distinct !{!1146, !1145, !1147, !548, !549}
!1147 = !DILocation(line: 772, column: 3, scope: !806, inlinedAt: !1116)
!1148 = !DILocation(line: 776, column: 11, scope: !840, inlinedAt: !1116)
!1149 = !DILocation(line: 776, column: 9, scope: !840, inlinedAt: !1116)
!1150 = !DILocation(line: 777, column: 14, scope: !846, inlinedAt: !1116)
!1151 = !DILocation(line: 777, column: 11, scope: !840, inlinedAt: !1116)
!1152 = !DILocation(line: 776, column: 13, scope: !840, inlinedAt: !1116)
!1153 = !DILocation(line: 779, column: 8, scope: !840, inlinedAt: !1116)
!1154 = !DILocation(line: 0, scope: !842, inlinedAt: !1116)
!1155 = !DILocation(line: 774, column: 17, scope: !841, inlinedAt: !1116)
!1156 = !DILocation(line: 774, column: 5, scope: !842, inlinedAt: !1116)
!1157 = distinct !{!1157, !1156, !1158, !548, !549}
!1158 = !DILocation(line: 780, column: 5, scope: !842, inlinedAt: !1116)
!1159 = !DILocation(line: 782, column: 7, scope: !856, inlinedAt: !1116)
!1160 = !DILocation(line: 783, column: 3, scope: !791, inlinedAt: !1116)
!1161 = !DILocation(line: 1030, column: 63, scope: !1104)
!1162 = !DILocation(line: 1030, column: 22, scope: !1104)
!1163 = !DILocation(line: 1030, column: 16, scope: !1104)
!1164 = !DILocation(line: 1030, column: 21, scope: !1104)
!1165 = !DILocation(line: 1031, column: 26, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 1031, column: 7)
!1167 = !DILocation(line: 1031, column: 7, scope: !1104)
!1168 = !DILocation(line: 842, column: 16, scope: !387, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 1033, column: 19, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 1032, column: 5)
!1171 = !DILocation(line: 842, column: 25, scope: !387, inlinedAt: !1169)
!1172 = !DILocation(line: 843, column: 30, scope: !387, inlinedAt: !1169)
!1173 = !DILocation(line: 0, scope: !387, inlinedAt: !1169)
!1174 = !DILocation(line: 1034, column: 7, scope: !1170)
!1175 = !DILocation(line: 1037, column: 1, scope: !1104)
!1176 = !DISubprogram(name: "LogMagickEvent", scope: !107, file: !107, line: 83, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!16, !1179, !168, !168, !291, !168, null}
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1180)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !107, line: 58, baseType: !106)
!1181 = !DILocation(line: 0, scope: !2)
!1182 = !DILocation(line: 1096, column: 10, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1096, column: 7)
!1184 = !DILocation(line: 1096, column: 7, scope: !2)
!1185 = !DILocation(line: 1104, column: 10, scope: !2)
!1186 = !DILocation(line: 1106, column: 21, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 1106, column: 3)
!1188 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1106, column: 3)
!1189 = !DILocation(line: 1106, column: 31, scope: !1187)
!1190 = !DILocation(line: 1106, column: 42, scope: !1187)
!1191 = !DILocation(line: 1106, column: 35, scope: !1187)
!1192 = !DILocation(line: 1106, column: 46, scope: !1187)
!1193 = !DILocation(line: 1106, column: 3, scope: !1188)
!1194 = !DILocation(line: 1107, column: 11, scope: !1187)
!1195 = distinct !{!1195, !1193, !1196, !548, !549}
!1196 = !DILocation(line: 1107, column: 13, scope: !1188)
!1197 = !DILocation(line: 0, scope: !1188)
!1198 = !DILocation(line: 1109, column: 3, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1109, column: 3)
!1200 = !DILocation(line: 1111, column: 69, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1110, column: 3)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 1109, column: 3)
!1203 = !DILocation(line: 1111, column: 61, scope: !1201)
!1204 = !DILocation(line: 1111, column: 11, scope: !1201)
!1205 = !DILocation(line: 1113, column: 9, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 1113, column: 9)
!1207 = !DILocation(line: 1113, column: 28, scope: !1206)
!1208 = !DILocation(line: 1113, column: 9, scope: !1201)
!1209 = distinct !{!1209, !1198, !1210, !548, !549}
!1210 = !DILocation(line: 1115, column: 3, scope: !1199)
!1211 = !DILocation(line: 1116, column: 3, scope: !2)
!1212 = !DISubprogram(name: "FormatLocaleString", scope: !1213, file: !1213, line: 71, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!1213 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!6, !1216, !291, !1217, null}
!1216 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!1217 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !168)
!1218 = distinct !DISubprogram(name: "FormatMagickTime", scope: !3, file: !3, line: 1148, type: !1219, scopeLine: 1150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1222)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!6, !1221, !291, !22}
!1221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!1222 = !{!1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1232}
!1223 = !DILocalVariable(name: "time", arg: 1, scope: !1218, file: !3, line: 1148, type: !1221)
!1224 = !DILocalVariable(name: "length", arg: 2, scope: !1218, file: !3, line: 1148, type: !291)
!1225 = !DILocalVariable(name: "timestamp", arg: 3, scope: !1218, file: !3, line: 1149, type: !22)
!1226 = !DILocalVariable(name: "count", scope: !1218, file: !3, line: 1152, type: !6)
!1227 = !DILocalVariable(name: "gm_time", scope: !1218, file: !3, line: 1155, type: !175)
!1228 = !DILocalVariable(name: "local_time", scope: !1218, file: !3, line: 1156, type: !175)
!1229 = !DILocalVariable(name: "timezone", scope: !1218, file: !3, line: 1159, type: !189)
!1230 = !DILocalVariable(name: "my_time", scope: !1231, file: !3, line: 1169, type: !174)
!1231 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 1167, column: 3)
!1232 = !DILocalVariable(name: "my_time", scope: !1233, file: !3, line: 1181, type: !174)
!1233 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 1179, column: 3)
!1234 = !DILocation(line: 0, scope: !1218)
!1235 = !{!339, !339, i64 0}
!1236 = !DILocation(line: 1154, column: 3, scope: !1218)
!1237 = !DILocation(line: 1155, column: 5, scope: !1218)
!1238 = !DILocation(line: 1156, column: 5, scope: !1218)
!1239 = !DILocation(line: 1162, column: 10, scope: !1218)
!1240 = !DILocation(line: 1163, column: 10, scope: !1218)
!1241 = !DILocation(line: 1171, column: 13, scope: !1231)
!1242 = !DILocation(line: 0, scope: !1231)
!1243 = !DILocation(line: 1172, column: 17, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 1172, column: 9)
!1245 = !DILocation(line: 1172, column: 9, scope: !1231)
!1246 = !DILocation(line: 1173, column: 14, scope: !1244)
!1247 = !DILocation(line: 1173, column: 7, scope: !1244)
!1248 = !DILocation(line: 1183, column: 13, scope: !1233)
!1249 = !DILocation(line: 0, scope: !1233)
!1250 = !DILocation(line: 1184, column: 17, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 1184, column: 9)
!1252 = !DILocation(line: 1184, column: 9, scope: !1233)
!1253 = !DILocation(line: 1185, column: 14, scope: !1251)
!1254 = !DILocation(line: 1185, column: 7, scope: !1251)
!1255 = !DILocation(line: 1188, column: 34, scope: !1218)
!1256 = !{!1257, !260, i64 4}
!1257 = !{!"tm", !260, i64 0, !260, i64 4, !260, i64 8, !260, i64 12, !260, i64 16, !260, i64 20, !260, i64 24, !260, i64 28, !260, i64 32, !339, i64 40, !338, i64 48}
!1258 = !DILocation(line: 1188, column: 49, scope: !1218)
!1259 = !DILocation(line: 1189, column: 16, scope: !1218)
!1260 = !{!1257, !260, i64 8}
!1261 = !DILocation(line: 1189, column: 32, scope: !1218)
!1262 = !DILocation(line: 1189, column: 56, scope: !1218)
!1263 = !{!1257, !260, i64 20}
!1264 = !DILocation(line: 1190, column: 13, scope: !1218)
!1265 = !DILocation(line: 1189, column: 63, scope: !1218)
!1266 = !DILocation(line: 1190, column: 22, scope: !1218)
!1267 = !DILocation(line: 1189, column: 44, scope: !1218)
!1268 = !DILocation(line: 1191, column: 17, scope: !1218)
!1269 = !{!1257, !260, i64 28}
!1270 = !DILocation(line: 1191, column: 33, scope: !1218)
!1271 = !DILocation(line: 1191, column: 24, scope: !1218)
!1272 = !DILocation(line: 1188, column: 40, scope: !1218)
!1273 = !DILocation(line: 1188, column: 56, scope: !1218)
!1274 = !DILocation(line: 1188, column: 59, scope: !1218)
!1275 = !DILocation(line: 1189, column: 23, scope: !1218)
!1276 = !DILocation(line: 1189, column: 42, scope: !1218)
!1277 = !DILocation(line: 1189, column: 39, scope: !1218)
!1278 = !DILocation(line: 1188, column: 12, scope: !1218)
!1279 = !DILocation(line: 1193, column: 64, scope: !1218)
!1280 = !DILocation(line: 1194, column: 16, scope: !1218)
!1281 = !{!1257, !260, i64 16}
!1282 = !DILocation(line: 1194, column: 22, scope: !1218)
!1283 = !DILocation(line: 1194, column: 36, scope: !1218)
!1284 = !{!1257, !260, i64 12}
!1285 = !DILocation(line: 1195, column: 34, scope: !1218)
!1286 = !{!1257, !260, i64 0}
!1287 = !DILocation(line: 1192, column: 9, scope: !1218)
!1288 = !DILocation(line: 1197, column: 1, scope: !1218)
!1289 = !DILocation(line: 1196, column: 3, scope: !1218)
!1290 = !DISubprogram(name: "localtime", scope: !1291, file: !1291, line: 123, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!1291 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!174, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1295 = !DISubprogram(name: "gmtime", scope: !1291, file: !1291, line: 119, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!1296 = distinct !DISubprogram(name: "GetEnvironmentValue", scope: !3, file: !3, line: 1222, type: !221, scopeLine: 1223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1297)
!1297 = !{!1298}
!1298 = !DILocalVariable(name: "name", arg: 1, scope: !1296, file: !3, line: 1222, type: !168)
!1299 = !DILocation(line: 0, scope: !1296)
!1300 = !DILocation(line: 1225, column: 5, scope: !1296)
!1301 = distinct !DISubprogram(name: "GetStringInfoDatum", scope: !3, file: !3, line: 1259, type: !1302, scopeLine: 1260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1304)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!160, !479}
!1304 = !{!1305}
!1305 = !DILocalVariable(name: "string_info", arg: 1, scope: !1301, file: !3, line: 1259, type: !479)
!1306 = !DILocation(line: 0, scope: !1301)
!1307 = !DILocation(line: 1263, column: 23, scope: !1301)
!1308 = !DILocation(line: 1263, column: 3, scope: !1301)
!1309 = distinct !DISubprogram(name: "GetStringInfoLength", scope: !3, file: !3, line: 1288, type: !1310, scopeLine: 1289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1312)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!163, !479}
!1312 = !{!1313}
!1313 = !DILocalVariable(name: "string_info", arg: 1, scope: !1309, file: !3, line: 1288, type: !479)
!1314 = !DILocation(line: 0, scope: !1309)
!1315 = !DILocation(line: 1292, column: 23, scope: !1309)
!1316 = !DILocation(line: 1292, column: 3, scope: !1309)
!1317 = distinct !DISubprogram(name: "GetStringInfoPath", scope: !3, file: !3, line: 1317, type: !1318, scopeLine: 1318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1320)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!168, !479}
!1320 = !{!1321}
!1321 = !DILocalVariable(name: "string_info", arg: 1, scope: !1317, file: !3, line: 1317, type: !479)
!1322 = !DILocation(line: 0, scope: !1317)
!1323 = !DILocation(line: 1321, column: 3, scope: !1317)
!1324 = distinct !DISubprogram(name: "InterpretSiPrefixValue", scope: !3, file: !3, line: 1351, type: !1325, scopeLine: 1353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1328)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!173, !1217, !1327}
!1327 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !172)
!1328 = !{!1329, !1330, !1331, !1332, !1333}
!1329 = !DILocalVariable(name: "string", arg: 1, scope: !1324, file: !3, line: 1351, type: !1217)
!1330 = !DILocalVariable(name: "sentinal", arg: 2, scope: !1324, file: !3, line: 1352, type: !1327)
!1331 = !DILocalVariable(name: "q", scope: !1324, file: !3, line: 1355, type: !22)
!1332 = !DILocalVariable(name: "value", scope: !1324, file: !3, line: 1358, type: !173)
!1333 = !DILocalVariable(name: "e", scope: !1334, file: !3, line: 1366, type: !173)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 1364, column: 9)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 1363, column: 11)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 1362, column: 5)
!1337 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1361, column: 7)
!1338 = !DILocation(line: 0, scope: !1324)
!1339 = !DILocation(line: 1354, column: 3, scope: !1324)
!1340 = !DILocation(line: 1360, column: 9, scope: !1324)
!1341 = !DILocation(line: 1361, column: 7, scope: !1337)
!1342 = !DILocation(line: 1361, column: 9, scope: !1337)
!1343 = !DILocation(line: 1361, column: 7, scope: !1324)
!1344 = !DILocation(line: 1363, column: 12, scope: !1335)
!1345 = !DILocation(line: 1363, column: 23, scope: !1335)
!1346 = !DILocation(line: 1368, column: 11, scope: !1334)
!1347 = !DILocation(line: 0, scope: !1334)
!1348 = !DILocation(line: 1381, column: 30, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 1369, column: 11)
!1350 = !DILocation(line: 1382, column: 30, scope: !1349)
!1351 = !DILocation(line: 1383, column: 30, scope: !1349)
!1352 = !DILocation(line: 1384, column: 30, scope: !1349)
!1353 = !DILocation(line: 1385, column: 31, scope: !1349)
!1354 = !DILocation(line: 1386, column: 31, scope: !1349)
!1355 = !DILocation(line: 1387, column: 31, scope: !1349)
!1356 = !DILocation(line: 1388, column: 31, scope: !1349)
!1357 = !DILocation(line: 1389, column: 31, scope: !1349)
!1358 = !DILocation(line: 0, scope: !1349)
!1359 = !DILocation(line: 1394, column: 19, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 1394, column: 19)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 1393, column: 13)
!1362 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 1392, column: 15)
!1363 = !DILocation(line: 1394, column: 24, scope: !1360)
!1364 = !DILocation(line: 1394, column: 19, scope: !1361)
!1365 = !DILocation(line: 1396, column: 35, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 1395, column: 17)
!1367 = !DILocation(line: 1396, column: 26, scope: !1366)
!1368 = !DILocation(line: 1397, column: 20, scope: !1366)
!1369 = !DILocation(line: 1398, column: 17, scope: !1366)
!1370 = !DILocation(line: 1401, column: 26, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 1400, column: 17)
!1372 = !DILocation(line: 1402, column: 20, scope: !1371)
!1373 = !DILocation(line: 0, scope: !1360)
!1374 = !DILocation(line: 1406, column: 11, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 1406, column: 11)
!1376 = !DILocation(line: 1406, column: 12, scope: !1375)
!1377 = !DILocation(line: 1406, column: 14, scope: !1375)
!1378 = !DILocation(line: 1406, column: 11, scope: !1336)
!1379 = !DILocation(line: 1409, column: 16, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1409, column: 7)
!1381 = !DILocation(line: 1409, column: 7, scope: !1324)
!1382 = !DILocation(line: 1410, column: 14, scope: !1380)
!1383 = !DILocation(line: 1410, column: 5, scope: !1380)
!1384 = !DILocation(line: 1412, column: 1, scope: !1324)
!1385 = !DILocation(line: 1411, column: 3, scope: !1324)
!1386 = !DISubprogram(name: "InterpretLocaleValue", scope: !1213, file: !1213, line: 56, type: !1325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!1387 = distinct !DISubprogram(name: "IsStringTrue", scope: !3, file: !3, line: 1440, type: !1388, scopeLine: 1441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1390)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!16, !168}
!1390 = !{!1391}
!1391 = !DILocalVariable(name: "value", arg: 1, scope: !1387, file: !3, line: 1440, type: !168)
!1392 = !DILocation(line: 0, scope: !1387)
!1393 = !DILocation(line: 1442, column: 13, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1442, column: 7)
!1395 = !DILocation(line: 1442, column: 7, scope: !1387)
!1396 = !DILocalVariable(name: "p", arg: 1, scope: !1397, file: !3, line: 1527, type: !168)
!1397 = distinct !DISubprogram(name: "LocaleCompare", scope: !3, file: !3, line: 1527, type: !1398, scopeLine: 1528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!149, !168, !168}
!1400 = !{!1396, !1401}
!1401 = !DILocalVariable(name: "q", arg: 2, scope: !1397, file: !3, line: 1527, type: !168)
!1402 = !DILocation(line: 0, scope: !1397, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 1444, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1444, column: 7)
!1405 = !DILocation(line: 1536, column: 10, scope: !1397, inlinedAt: !1403)
!1406 = !DILocation(line: 1444, column: 35, scope: !1404)
!1407 = !DILocation(line: 1444, column: 7, scope: !1387)
!1408 = !DILocation(line: 0, scope: !1397, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 1446, column: 7, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1446, column: 7)
!1411 = !DILocation(line: 1536, column: 10, scope: !1397, inlinedAt: !1409)
!1412 = !DILocation(line: 1446, column: 33, scope: !1410)
!1413 = !DILocation(line: 1446, column: 7, scope: !1387)
!1414 = !DILocation(line: 0, scope: !1397, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 1448, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1448, column: 7)
!1417 = !DILocation(line: 1536, column: 10, scope: !1397, inlinedAt: !1415)
!1418 = !DILocation(line: 1448, column: 34, scope: !1416)
!1419 = !DILocation(line: 1448, column: 7, scope: !1387)
!1420 = !DILocation(line: 0, scope: !1397, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 1450, column: 7, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1450, column: 7)
!1423 = !DILocation(line: 1536, column: 10, scope: !1397, inlinedAt: !1421)
!1424 = !DILocation(line: 1450, column: 32, scope: !1422)
!1425 = !DILocation(line: 1453, column: 1, scope: !1387)
!1426 = !DILocation(line: 0, scope: !1397)
!1427 = !DILocation(line: 1529, column: 10, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 1529, column: 7)
!1429 = !DILocation(line: 1529, column: 28, scope: !1428)
!1430 = !DILocation(line: 1536, column: 10, scope: !1397)
!1431 = !DILocation(line: 1536, column: 3, scope: !1397)
!1432 = !DILocation(line: 1555, column: 1, scope: !1397)
!1433 = distinct !DISubprogram(name: "IsStringNotFalse", scope: !3, file: !3, line: 1482, type: !1388, scopeLine: 1483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1434)
!1434 = !{!1435}
!1435 = !DILocalVariable(name: "value", arg: 1, scope: !1433, file: !3, line: 1482, type: !168)
!1436 = !DILocation(line: 0, scope: !1433)
!1437 = !DILocation(line: 1484, column: 13, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 1484, column: 7)
!1439 = !DILocation(line: 1484, column: 7, scope: !1433)
!1440 = !DILocation(line: 0, scope: !1397, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 1486, column: 7, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 1486, column: 7)
!1443 = !DILocation(line: 1536, column: 10, scope: !1397, inlinedAt: !1441)
!1444 = !DILocation(line: 1486, column: 36, scope: !1442)
!1445 = !DILocation(line: 1486, column: 7, scope: !1433)
!1446 = !DILocation(line: 0, scope: !1397, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 1488, column: 7, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 1488, column: 7)
!1449 = !DILocation(line: 1536, column: 10, scope: !1397, inlinedAt: !1447)
!1450 = !DILocation(line: 1488, column: 34, scope: !1448)
!1451 = !DILocation(line: 1488, column: 7, scope: !1433)
!1452 = !DILocation(line: 0, scope: !1397, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 1490, column: 7, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 1490, column: 7)
!1455 = !DILocation(line: 1536, column: 10, scope: !1397, inlinedAt: !1453)
!1456 = !DILocation(line: 1490, column: 33, scope: !1454)
!1457 = !DILocation(line: 1490, column: 7, scope: !1433)
!1458 = !DILocation(line: 0, scope: !1397, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 1492, column: 7, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 1492, column: 7)
!1461 = !DILocation(line: 1536, column: 10, scope: !1397, inlinedAt: !1459)
!1462 = !DILocation(line: 1492, column: 32, scope: !1460)
!1463 = !DILocation(line: 1495, column: 1, scope: !1433)
!1464 = distinct !DISubprogram(name: "LocaleLower", scope: !3, file: !3, line: 1580, type: !1465, scopeLine: 1581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1467)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{null, !22}
!1467 = !{!1468, !1469, !1470, !1474}
!1468 = !DILocalVariable(name: "string", arg: 1, scope: !1464, file: !3, line: 1580, type: !22)
!1469 = !DILocalVariable(name: "q", scope: !1464, file: !3, line: 1583, type: !22)
!1470 = !DILocalVariable(name: "__res", scope: !1471, file: !3, line: 1587, type: !149)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 1587, column: 15)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 1586, column: 3)
!1473 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 1586, column: 3)
!1474 = !DILocalVariable(name: "__c", scope: !1475, file: !3, line: 1587, type: !149)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 1587, column: 15)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 1587, column: 15)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 1587, column: 15)
!1478 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 1587, column: 15)
!1479 = !DILocation(line: 0, scope: !1464)
!1480 = !DILocation(line: 1586, column: 18, scope: !1472)
!1481 = !DILocation(line: 1586, column: 21, scope: !1472)
!1482 = !DILocation(line: 1586, column: 3, scope: !1473)
!1483 = !DILocation(line: 0, scope: !1476)
!1484 = !DILocation(line: 0, scope: !1471)
!1485 = !DILocation(line: 1587, column: 8, scope: !1472)
!1486 = !DILocation(line: 1587, column: 7, scope: !1472)
!1487 = !DILocation(line: 1586, column: 31, scope: !1472)
!1488 = distinct !{!1488, !1482, !1489, !548, !549}
!1489 = !DILocation(line: 1587, column: 15, scope: !1473)
!1490 = !DILocation(line: 1588, column: 1, scope: !1464)
!1491 = distinct !DISubprogram(name: "LocaleNCompare", scope: !3, file: !3, line: 1627, type: !1492, scopeLine: 1628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1494)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!149, !168, !168, !291}
!1494 = !{!1495, !1496, !1497}
!1495 = !DILocalVariable(name: "p", arg: 1, scope: !1491, file: !3, line: 1627, type: !168)
!1496 = !DILocalVariable(name: "q", arg: 2, scope: !1491, file: !3, line: 1627, type: !168)
!1497 = !DILocalVariable(name: "length", arg: 3, scope: !1491, file: !3, line: 1627, type: !291)
!1498 = !DILocation(line: 0, scope: !1491)
!1499 = !DILocation(line: 1629, column: 10, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 1629, column: 7)
!1501 = !DILocation(line: 1629, column: 28, scope: !1500)
!1502 = !DILocation(line: 1636, column: 10, scope: !1491)
!1503 = !DILocation(line: 1636, column: 3, scope: !1491)
!1504 = !DILocation(line: 1660, column: 1, scope: !1491)
!1505 = distinct !DISubprogram(name: "LocaleUpper", scope: !3, file: !3, line: 1685, type: !1465, scopeLine: 1686, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1506)
!1506 = !{!1507, !1508, !1509, !1513}
!1507 = !DILocalVariable(name: "string", arg: 1, scope: !1505, file: !3, line: 1685, type: !22)
!1508 = !DILocalVariable(name: "q", scope: !1505, file: !3, line: 1688, type: !22)
!1509 = !DILocalVariable(name: "__res", scope: !1510, file: !3, line: 1692, type: !149)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 1692, column: 15)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 1691, column: 3)
!1512 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 1691, column: 3)
!1513 = !DILocalVariable(name: "__c", scope: !1514, file: !3, line: 1692, type: !149)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 1692, column: 15)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 1692, column: 15)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 1692, column: 15)
!1517 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 1692, column: 15)
!1518 = !DILocation(line: 0, scope: !1505)
!1519 = !DILocation(line: 1691, column: 18, scope: !1511)
!1520 = !DILocation(line: 1691, column: 21, scope: !1511)
!1521 = !DILocation(line: 1691, column: 3, scope: !1512)
!1522 = !DILocation(line: 0, scope: !1515)
!1523 = !DILocation(line: 0, scope: !1510)
!1524 = !DILocation(line: 1692, column: 8, scope: !1511)
!1525 = !DILocation(line: 1692, column: 7, scope: !1511)
!1526 = !DILocation(line: 1691, column: 31, scope: !1511)
!1527 = distinct !{!1527, !1521, !1528, !548, !549}
!1528 = !DILocation(line: 1692, column: 15, scope: !1512)
!1529 = !DILocation(line: 1693, column: 1, scope: !1505)
!1530 = distinct !DISubprogram(name: "PrintStringInfo", scope: !3, file: !3, line: 1722, type: !1531, scopeLine: 1724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1585)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !1533, !168, !479}
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1535, line: 7, baseType: !1536)
!1535 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1537, line: 49, size: 1728, elements: !1538)
!1537 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1554, !1556, !1557, !1558, !1559, !1560, !1562, !1566, !1569, !1571, !1574, !1577, !1578, !1579, !1580, !1581}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1536, file: !1537, line: 51, baseType: !149, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1536, file: !1537, line: 54, baseType: !22, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1536, file: !1537, line: 55, baseType: !22, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1536, file: !1537, line: 56, baseType: !22, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1536, file: !1537, line: 57, baseType: !22, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1536, file: !1537, line: 58, baseType: !22, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1536, file: !1537, line: 59, baseType: !22, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1536, file: !1537, line: 60, baseType: !22, size: 64, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1536, file: !1537, line: 61, baseType: !22, size: 64, offset: 512)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1536, file: !1537, line: 64, baseType: !22, size: 64, offset: 576)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1536, file: !1537, line: 65, baseType: !22, size: 64, offset: 640)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1536, file: !1537, line: 66, baseType: !22, size: 64, offset: 704)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1536, file: !1537, line: 68, baseType: !1552, size: 64, offset: 768)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1537, line: 36, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1536, file: !1537, line: 70, baseType: !1555, size: 64, offset: 832)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1536, file: !1537, line: 72, baseType: !149, size: 32, offset: 896)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1536, file: !1537, line: 73, baseType: !149, size: 32, offset: 928)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1536, file: !1537, line: 74, baseType: !868, size: 64, offset: 960)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1536, file: !1537, line: 77, baseType: !192, size: 16, offset: 1024)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1536, file: !1537, line: 78, baseType: !1561, size: 8, offset: 1040)
!1561 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1536, file: !1537, line: 79, baseType: !1563, size: 8, offset: 1048)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !1564)
!1564 = !{!1565}
!1565 = !DISubrange(count: 1)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1536, file: !1537, line: 81, baseType: !1567, size: 64, offset: 1088)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1537, line: 43, baseType: null)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1536, file: !1537, line: 89, baseType: !1570, size: 64, offset: 1152)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !9, line: 153, baseType: !10)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1536, file: !1537, line: 91, baseType: !1572, size: 64, offset: 1216)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1537, line: 37, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1536, file: !1537, line: 92, baseType: !1575, size: 64, offset: 1280)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1537, line: 38, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1536, file: !1537, line: 93, baseType: !1555, size: 64, offset: 1344)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1536, file: !1537, line: 94, baseType: !147, size: 64, offset: 1408)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1536, file: !1537, line: 95, baseType: !163, size: 64, offset: 1472)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1536, file: !1537, line: 96, baseType: !149, size: 32, offset: 1536)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1536, file: !1537, line: 98, baseType: !1582, size: 160, offset: 1568)
!1582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !1583)
!1583 = !{!1584}
!1584 = !DISubrange(count: 20)
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1591}
!1586 = !DILocalVariable(name: "file", arg: 1, scope: !1530, file: !3, line: 1722, type: !1533)
!1587 = !DILocalVariable(name: "id", arg: 2, scope: !1530, file: !3, line: 1722, type: !168)
!1588 = !DILocalVariable(name: "string_info", arg: 3, scope: !1530, file: !3, line: 1723, type: !479)
!1589 = !DILocalVariable(name: "p", scope: !1530, file: !3, line: 1726, type: !168)
!1590 = !DILocalVariable(name: "i", scope: !1530, file: !3, line: 1729, type: !163)
!1591 = !DILocalVariable(name: "j", scope: !1530, file: !3, line: 1730, type: !163)
!1592 = !DILocation(line: 0, scope: !1530)
!1593 = !DILocation(line: 1735, column: 27, scope: !1530)
!1594 = !DILocation(line: 1736, column: 15, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 1736, column: 3)
!1596 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 1736, column: 3)
!1597 = !DILocation(line: 1736, column: 3, scope: !1596)
!1598 = !DILocation(line: 1738, column: 33, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 1738, column: 9)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 1737, column: 3)
!1601 = !DILocation(line: 1738, column: 37, scope: !1599)
!1602 = !DILocation(line: 1738, column: 43, scope: !1599)
!1603 = !DILocation(line: 1739, column: 10, scope: !1599)
!1604 = !{!1605, !1605, i64 0}
!1605 = !{!"short", !261, i64 0}
!1606 = !DILocation(line: 1739, column: 46, scope: !1599)
!1607 = !DILocation(line: 1738, column: 9, scope: !1600)
!1608 = !DILocation(line: 1741, column: 6, scope: !1600)
!1609 = !DILocation(line: 1736, column: 39, scope: !1595)
!1610 = distinct !{!1610, !1597, !1611, !548, !549}
!1611 = !DILocation(line: 1742, column: 3, scope: !1596)
!1612 = !DILocation(line: 0, scope: !1596)
!1613 = !DILocation(line: 1743, column: 49, scope: !1530)
!1614 = !DILocation(line: 1743, column: 10, scope: !1530)
!1615 = !DILocation(line: 1744, column: 25, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 1744, column: 7)
!1617 = !DILocation(line: 1744, column: 9, scope: !1616)
!1618 = !DILocation(line: 1744, column: 7, scope: !1530)
!1619 = !DILocation(line: 1746, column: 19, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 1746, column: 7)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 1746, column: 7)
!1622 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 1745, column: 5)
!1623 = !DILocation(line: 1746, column: 7, scope: !1621)
!1624 = !DILocation(line: 1747, column: 35, scope: !1620)
!1625 = !DILocation(line: 1747, column: 22, scope: !1620)
!1626 = !DILocation(line: 1747, column: 16, scope: !1620)
!1627 = !DILocation(line: 1746, column: 43, scope: !1620)
!1628 = !DILocation(line: 1746, column: 34, scope: !1620)
!1629 = distinct !{!1629, !1623, !1630, !548, !549}
!1630 = !DILocation(line: 1747, column: 48, scope: !1621)
!1631 = !DILocation(line: 1748, column: 14, scope: !1622)
!1632 = !DILocation(line: 1749, column: 7, scope: !1622)
!1633 = !DILocation(line: 1755, column: 15, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 1755, column: 3)
!1635 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 1755, column: 3)
!1636 = !DILocation(line: 1755, column: 3, scope: !1635)
!1637 = !DILocation(line: 1754, column: 27, scope: !1530)
!1638 = !DILocation(line: 1757, column: 67, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 1756, column: 3)
!1640 = !DILocation(line: 1757, column: 12, scope: !1639)
!1641 = !DILocation(line: 1758, column: 43, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 1758, column: 5)
!1643 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 1758, column: 5)
!1644 = !DILocation(line: 1758, column: 49, scope: !1642)
!1645 = !DILocation(line: 0, scope: !510, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 1758, column: 20, scope: !1642)
!1647 = !DILocation(line: 1758, column: 17, scope: !1642)
!1648 = !DILocation(line: 1758, column: 5, scope: !1643)
!1649 = !DILocation(line: 1764, column: 15, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 1764, column: 5)
!1651 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 1764, column: 5)
!1652 = !DILocation(line: 1764, column: 5, scope: !1651)
!1653 = !DILocation(line: 1760, column: 64, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 1759, column: 5)
!1655 = !DILocation(line: 1760, column: 61, scope: !1654)
!1656 = !DILocation(line: 1760, column: 44, scope: !1654)
!1657 = !DILocation(line: 1760, column: 14, scope: !1654)
!1658 = !DILocation(line: 1761, column: 14, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 1761, column: 11)
!1660 = !DILocation(line: 1761, column: 22, scope: !1659)
!1661 = !DILocation(line: 1761, column: 11, scope: !1654)
!1662 = !DILocation(line: 1762, column: 16, scope: !1659)
!1663 = !DILocation(line: 1762, column: 9, scope: !1659)
!1664 = !DILocation(line: 1758, column: 60, scope: !1642)
!1665 = distinct !{!1665, !1648, !1666, !548, !549}
!1666 = !DILocation(line: 1763, column: 5, scope: !1643)
!1667 = !DILocation(line: 1766, column: 14, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 1765, column: 5)
!1669 = !DILocation(line: 1767, column: 14, scope: !1668)
!1670 = !DILocation(line: 1768, column: 14, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 1768, column: 11)
!1672 = !DILocation(line: 1768, column: 22, scope: !1671)
!1673 = !DILocation(line: 1768, column: 11, scope: !1668)
!1674 = !DILocation(line: 1769, column: 16, scope: !1671)
!1675 = !DILocation(line: 1769, column: 9, scope: !1671)
!1676 = !DILocation(line: 1764, column: 25, scope: !1650)
!1677 = distinct !{!1677, !1652, !1678, !548, !549}
!1678 = !DILocation(line: 1770, column: 5, scope: !1651)
!1679 = !DILocation(line: 1771, column: 12, scope: !1639)
!1680 = !DILocation(line: 1772, column: 43, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 1772, column: 5)
!1682 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 1772, column: 5)
!1683 = !DILocation(line: 1772, column: 49, scope: !1681)
!1684 = !DILocation(line: 0, scope: !510, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 1772, column: 20, scope: !1681)
!1686 = !DILocation(line: 1772, column: 17, scope: !1681)
!1687 = !DILocation(line: 1772, column: 5, scope: !1682)
!1688 = !DILocation(line: 1774, column: 11, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 1774, column: 11)
!1690 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 1773, column: 5)
!1691 = !DILocation(line: 1774, column: 47, scope: !1689)
!1692 = !DILocation(line: 1774, column: 11, scope: !1690)
!1693 = !DILocation(line: 0, scope: !1689)
!1694 = !DILocation(line: 1778, column: 8, scope: !1690)
!1695 = !DILocation(line: 1772, column: 60, scope: !1681)
!1696 = distinct !{!1696, !1687, !1697, !548, !549}
!1697 = !DILocation(line: 1779, column: 5, scope: !1682)
!1698 = !DILocation(line: 1780, column: 12, scope: !1639)
!1699 = !DILocation(line: 1755, column: 39, scope: !1634)
!1700 = !DILocation(line: 1755, column: 30, scope: !1634)
!1701 = distinct !{!1701, !1636, !1702, !548, !549}
!1702 = !DILocation(line: 1781, column: 3, scope: !1635)
!1703 = !DILocation(line: 1782, column: 1, scope: !1530)
!1704 = !DISubprogram(name: "FormatLocaleFile", scope: !1213, file: !1213, line: 67, type: !1705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!6, !1533, !1217, null}
!1707 = !DISubprogram(name: "fputc", scope: !7, file: !7, line: 521, type: !1708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!149, !149, !1533}
!1710 = distinct !DISubprogram(name: "ResetStringInfo", scope: !3, file: !3, line: 1806, type: !1711, scopeLine: 1807, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1713)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null, !150}
!1713 = !{!1714}
!1714 = !DILocalVariable(name: "string_info", arg: 1, scope: !1710, file: !3, line: 1806, type: !150)
!1715 = !DILocation(line: 0, scope: !1710)
!1716 = !DILocation(line: 1810, column: 41, scope: !1710)
!1717 = !DILocation(line: 1810, column: 62, scope: !1710)
!1718 = !DILocation(line: 1810, column: 10, scope: !1710)
!1719 = !DILocation(line: 1811, column: 1, scope: !1710)
!1720 = distinct !DISubprogram(name: "SetStringInfo", scope: !3, file: !3, line: 1837, type: !640, scopeLine: 1839, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1721)
!1721 = !{!1722, !1723}
!1722 = !DILocalVariable(name: "string_info", arg: 1, scope: !1720, file: !3, line: 1837, type: !150)
!1723 = !DILocalVariable(name: "source", arg: 2, scope: !1720, file: !3, line: 1838, type: !479)
!1724 = !DILocation(line: 0, scope: !1720)
!1725 = !DILocation(line: 1844, column: 20, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 1844, column: 7)
!1727 = !DILocation(line: 1844, column: 27, scope: !1726)
!1728 = !DILocation(line: 1844, column: 7, scope: !1720)
!1729 = !DILocation(line: 1846, column: 41, scope: !1720)
!1730 = !DILocation(line: 1846, column: 10, scope: !1720)
!1731 = !DILocation(line: 1847, column: 30, scope: !1720)
!1732 = !DILocation(line: 1847, column: 44, scope: !1720)
!1733 = !DILocation(line: 1847, column: 73, scope: !1720)
!1734 = !DILocation(line: 1848, column: 13, scope: !1720)
!1735 = !DILocation(line: 0, scope: !510, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 1847, column: 50, scope: !1720)
!1737 = !DILocation(line: 1847, column: 10, scope: !1720)
!1738 = !DILocation(line: 1849, column: 1, scope: !1720)
!1739 = distinct !DISubprogram(name: "SetStringInfoDatum", scope: !3, file: !3, line: 1877, type: !1740, scopeLine: 1879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !150, !194}
!1742 = !{!1743, !1744}
!1743 = !DILocalVariable(name: "string_info", arg: 1, scope: !1739, file: !3, line: 1877, type: !150)
!1744 = !DILocalVariable(name: "source", arg: 2, scope: !1739, file: !3, line: 1878, type: !194)
!1745 = !DILocation(line: 0, scope: !1739)
!1746 = !DILocation(line: 1882, column: 20, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 1882, column: 7)
!1748 = !DILocation(line: 1882, column: 27, scope: !1747)
!1749 = !DILocation(line: 1882, column: 7, scope: !1739)
!1750 = !DILocation(line: 1883, column: 32, scope: !1747)
!1751 = !DILocation(line: 1883, column: 12, scope: !1747)
!1752 = !DILocation(line: 1883, column: 5, scope: !1747)
!1753 = !DILocation(line: 1884, column: 1, scope: !1739)
!1754 = distinct !DISubprogram(name: "SetStringInfoPath", scope: !3, file: !3, line: 1952, type: !1755, scopeLine: 1953, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1757)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{null, !150, !168}
!1757 = !{!1758, !1759}
!1758 = !DILocalVariable(name: "string_info", arg: 1, scope: !1754, file: !3, line: 1952, type: !150)
!1759 = !DILocalVariable(name: "path", arg: 2, scope: !1754, file: !3, line: 1952, type: !168)
!1760 = !DILocation(line: 0, scope: !1754)
!1761 = !DILocation(line: 0, scope: !791, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 1957, column: 10, scope: !1754)
!1763 = !DILocation(line: 750, column: 14, scope: !801, inlinedAt: !1762)
!1764 = !DILocation(line: 750, column: 7, scope: !791, inlinedAt: !1762)
!1765 = !DILocation(line: 756, column: 9, scope: !804, inlinedAt: !1762)
!1766 = !DILocation(line: 756, column: 7, scope: !804, inlinedAt: !1762)
!1767 = !DILocation(line: 757, column: 12, scope: !809, inlinedAt: !1762)
!1768 = !DILocation(line: 757, column: 9, scope: !804, inlinedAt: !1762)
!1769 = !DILocation(line: 756, column: 11, scope: !804, inlinedAt: !1762)
!1770 = !DILocation(line: 759, column: 6, scope: !804, inlinedAt: !1762)
!1771 = !DILocation(line: 760, column: 9, scope: !804, inlinedAt: !1762)
!1772 = !DILocation(line: 760, column: 7, scope: !804, inlinedAt: !1762)
!1773 = !DILocation(line: 761, column: 12, scope: !816, inlinedAt: !1762)
!1774 = !DILocation(line: 761, column: 9, scope: !804, inlinedAt: !1762)
!1775 = !DILocation(line: 760, column: 11, scope: !804, inlinedAt: !1762)
!1776 = !DILocation(line: 763, column: 6, scope: !804, inlinedAt: !1762)
!1777 = !DILocation(line: 764, column: 9, scope: !804, inlinedAt: !1762)
!1778 = !DILocation(line: 764, column: 7, scope: !804, inlinedAt: !1762)
!1779 = !DILocation(line: 765, column: 12, scope: !823, inlinedAt: !1762)
!1780 = !DILocation(line: 765, column: 9, scope: !804, inlinedAt: !1762)
!1781 = !DILocation(line: 764, column: 11, scope: !804, inlinedAt: !1762)
!1782 = !DILocation(line: 767, column: 6, scope: !804, inlinedAt: !1762)
!1783 = !DILocation(line: 768, column: 9, scope: !804, inlinedAt: !1762)
!1784 = !DILocation(line: 768, column: 7, scope: !804, inlinedAt: !1762)
!1785 = !DILocation(line: 769, column: 12, scope: !830, inlinedAt: !1762)
!1786 = !DILocation(line: 769, column: 9, scope: !804, inlinedAt: !1762)
!1787 = !DILocation(line: 768, column: 11, scope: !804, inlinedAt: !1762)
!1788 = !DILocation(line: 771, column: 6, scope: !804, inlinedAt: !1762)
!1789 = !DILocation(line: 754, column: 26, scope: !805, inlinedAt: !1762)
!1790 = !DILocation(line: 754, column: 20, scope: !805, inlinedAt: !1762)
!1791 = !DILocation(line: 754, column: 3, scope: !806, inlinedAt: !1762)
!1792 = distinct !{!1792, !1791, !1793, !548, !549}
!1793 = !DILocation(line: 772, column: 3, scope: !806, inlinedAt: !1762)
!1794 = !DILocation(line: 776, column: 11, scope: !840, inlinedAt: !1762)
!1795 = !DILocation(line: 776, column: 9, scope: !840, inlinedAt: !1762)
!1796 = !DILocation(line: 777, column: 14, scope: !846, inlinedAt: !1762)
!1797 = !DILocation(line: 777, column: 11, scope: !840, inlinedAt: !1762)
!1798 = !DILocation(line: 776, column: 13, scope: !840, inlinedAt: !1762)
!1799 = !DILocation(line: 779, column: 8, scope: !840, inlinedAt: !1762)
!1800 = !DILocation(line: 0, scope: !842, inlinedAt: !1762)
!1801 = !DILocation(line: 774, column: 17, scope: !841, inlinedAt: !1762)
!1802 = !DILocation(line: 774, column: 5, scope: !842, inlinedAt: !1762)
!1803 = distinct !{!1803, !1802, !1804, !548, !549}
!1804 = !DILocation(line: 780, column: 5, scope: !842, inlinedAt: !1762)
!1805 = !DILocation(line: 782, column: 7, scope: !856, inlinedAt: !1762)
!1806 = !DILocation(line: 783, column: 3, scope: !791, inlinedAt: !1762)
!1807 = !DILocation(line: 1958, column: 1, scope: !1754)
!1808 = distinct !DISubprogram(name: "SplitStringInfo", scope: !3, file: !3, line: 1982, type: !1809, scopeLine: 1984, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1811)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!150, !150, !291}
!1811 = !{!1812, !1813, !1814}
!1812 = !DILocalVariable(name: "string_info", arg: 1, scope: !1808, file: !3, line: 1982, type: !150)
!1813 = !DILocalVariable(name: "offset", arg: 2, scope: !1808, file: !3, line: 1983, type: !291)
!1814 = !DILocalVariable(name: "split_info", scope: !1808, file: !3, line: 1986, type: !150)
!1815 = !DILocation(line: 0, scope: !1808)
!1816 = !DILocation(line: 1990, column: 29, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 1990, column: 7)
!1818 = !DILocation(line: 1990, column: 14, scope: !1817)
!1819 = !DILocation(line: 1990, column: 7, scope: !1808)
!1820 = !DILocation(line: 1992, column: 14, scope: !1808)
!1821 = !DILocation(line: 0, scope: !1720, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 1993, column: 3, scope: !1808)
!1823 = !DILocation(line: 1844, column: 20, scope: !1726, inlinedAt: !1822)
!1824 = !DILocation(line: 1844, column: 27, scope: !1726, inlinedAt: !1822)
!1825 = !DILocation(line: 1844, column: 7, scope: !1720, inlinedAt: !1822)
!1826 = !DILocation(line: 1846, column: 41, scope: !1720, inlinedAt: !1822)
!1827 = !DILocation(line: 1846, column: 10, scope: !1720, inlinedAt: !1822)
!1828 = !DILocation(line: 1847, column: 30, scope: !1720, inlinedAt: !1822)
!1829 = !DILocation(line: 1847, column: 44, scope: !1720, inlinedAt: !1822)
!1830 = !DILocation(line: 1847, column: 73, scope: !1720, inlinedAt: !1822)
!1831 = !DILocation(line: 1848, column: 13, scope: !1720, inlinedAt: !1822)
!1832 = !DILocation(line: 0, scope: !510, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 1847, column: 50, scope: !1720, inlinedAt: !1822)
!1834 = !DILocation(line: 1847, column: 10, scope: !1720, inlinedAt: !1822)
!1835 = !DILocation(line: 1849, column: 1, scope: !1720, inlinedAt: !1822)
!1836 = !DILocation(line: 1994, column: 31, scope: !1808)
!1837 = !DILocation(line: 1994, column: 55, scope: !1808)
!1838 = !DILocation(line: 1995, column: 18, scope: !1808)
!1839 = !DILocation(line: 1995, column: 24, scope: !1808)
!1840 = !DILocation(line: 1995, column: 31, scope: !1808)
!1841 = !DILocation(line: 1994, column: 10, scope: !1808)
!1842 = !DILocation(line: 1996, column: 48, scope: !1808)
!1843 = !DILocation(line: 1996, column: 54, scope: !1808)
!1844 = !DILocation(line: 1996, column: 3, scope: !1808)
!1845 = !DILocation(line: 1997, column: 3, scope: !1808)
!1846 = !DILocation(line: 1998, column: 1, scope: !1808)
!1847 = distinct !DISubprogram(name: "StringInfoToString", scope: !3, file: !3, line: 2022, type: !1848, scopeLine: 2023, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1850)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!22, !479}
!1850 = !{!1851, !1852, !1853}
!1851 = !DILocalVariable(name: "string_info", arg: 1, scope: !1847, file: !3, line: 2022, type: !479)
!1852 = !DILocalVariable(name: "string", scope: !1847, file: !3, line: 2025, type: !22)
!1853 = !DILocalVariable(name: "length", scope: !1847, file: !3, line: 2028, type: !163)
!1854 = !DILocation(line: 0, scope: !1847)
!1855 = !DILocation(line: 2031, column: 23, scope: !1847)
!1856 = !DILocation(line: 2032, column: 15, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 2032, column: 7)
!1858 = !DILocation(line: 2032, column: 7, scope: !1847)
!1859 = !DILocation(line: 2033, column: 48, scope: !1857)
!1860 = !DILocation(line: 2033, column: 21, scope: !1857)
!1861 = !DILocation(line: 2034, column: 14, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 2034, column: 7)
!1863 = !DILocation(line: 2034, column: 7, scope: !1847)
!1864 = !DILocation(line: 2036, column: 46, scope: !1847)
!1865 = !DILocation(line: 2036, column: 10, scope: !1847)
!1866 = !DILocation(line: 2037, column: 3, scope: !1847)
!1867 = !DILocation(line: 2037, column: 17, scope: !1847)
!1868 = !DILocation(line: 2038, column: 3, scope: !1847)
!1869 = !DILocation(line: 2039, column: 1, scope: !1847)
!1870 = distinct !DISubprogram(name: "StringInfoToHexString", scope: !3, file: !3, line: 2063, type: !1848, scopeLine: 2064, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1871)
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878, !1882, !1885, !1886, !1889}
!1872 = !DILocalVariable(name: "string_info", arg: 1, scope: !1870, file: !3, line: 2063, type: !479)
!1873 = !DILocalVariable(name: "string", scope: !1870, file: !3, line: 2066, type: !22)
!1874 = !DILocalVariable(name: "p", scope: !1870, file: !3, line: 2069, type: !194)
!1875 = !DILocalVariable(name: "i", scope: !1870, file: !3, line: 2072, type: !6)
!1876 = !DILocalVariable(name: "q", scope: !1870, file: !3, line: 2075, type: !160)
!1877 = !DILocalVariable(name: "length", scope: !1870, file: !3, line: 2078, type: !163)
!1878 = !DILocalVariable(name: "hex_digits", scope: !1870, file: !3, line: 2081, type: !1879)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 128, elements: !1880)
!1880 = !{!1881}
!1881 = !DISubrange(count: 16)
!1882 = !DILocalVariable(name: "message", scope: !1883, file: !3, line: 2085, type: !22)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 2085, column: 5)
!1884 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 2084, column: 7)
!1885 = !DILocalVariable(name: "exception", scope: !1883, file: !3, line: 2085, type: !231)
!1886 = !DILocalVariable(name: "message", scope: !1887, file: !3, line: 2088, type: !22)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 2088, column: 5)
!1888 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 2087, column: 7)
!1889 = !DILocalVariable(name: "exception", scope: !1887, file: !3, line: 2088, type: !231)
!1890 = !DILocation(line: 0, scope: !1870)
!1891 = !DILocation(line: 2080, column: 3, scope: !1870)
!1892 = !DILocation(line: 2081, column: 5, scope: !1870)
!1893 = !DILocation(line: 2083, column: 23, scope: !1870)
!1894 = !DILocation(line: 2084, column: 15, scope: !1884)
!1895 = !DILocation(line: 2084, column: 7, scope: !1870)
!1896 = !DILocation(line: 2085, column: 5, scope: !1883)
!1897 = !DILocation(line: 0, scope: !1883)
!1898 = !DILocation(line: 2086, column: 46, scope: !1870)
!1899 = !DILocation(line: 2086, column: 19, scope: !1870)
!1900 = !DILocation(line: 2087, column: 14, scope: !1888)
!1901 = !DILocation(line: 2087, column: 7, scope: !1870)
!1902 = !DILocation(line: 2088, column: 5, scope: !1887)
!1903 = !DILocation(line: 0, scope: !1887)
!1904 = !DILocation(line: 2089, column: 16, scope: !1870)
!1905 = !DILocation(line: 2090, column: 3, scope: !1870)
!1906 = !DILocation(line: 2090, column: 16, scope: !1870)
!1907 = !DILocation(line: 2091, column: 3, scope: !1870)
!1908 = !DILocation(line: 2091, column: 16, scope: !1870)
!1909 = !DILocation(line: 2092, column: 3, scope: !1870)
!1910 = !DILocation(line: 2092, column: 16, scope: !1870)
!1911 = !DILocation(line: 2093, column: 3, scope: !1870)
!1912 = !DILocation(line: 2093, column: 16, scope: !1870)
!1913 = !DILocation(line: 2094, column: 3, scope: !1870)
!1914 = !DILocation(line: 2094, column: 16, scope: !1870)
!1915 = !DILocation(line: 2095, column: 3, scope: !1870)
!1916 = !DILocation(line: 2095, column: 16, scope: !1870)
!1917 = !DILocation(line: 2096, column: 3, scope: !1870)
!1918 = !DILocation(line: 2096, column: 16, scope: !1870)
!1919 = !DILocation(line: 2097, column: 3, scope: !1870)
!1920 = !DILocation(line: 2097, column: 16, scope: !1870)
!1921 = !DILocation(line: 2098, column: 3, scope: !1870)
!1922 = !DILocation(line: 2098, column: 16, scope: !1870)
!1923 = !DILocation(line: 2099, column: 3, scope: !1870)
!1924 = !DILocation(line: 2099, column: 17, scope: !1870)
!1925 = !DILocation(line: 2100, column: 3, scope: !1870)
!1926 = !DILocation(line: 2100, column: 17, scope: !1870)
!1927 = !DILocation(line: 2101, column: 3, scope: !1870)
!1928 = !DILocation(line: 2101, column: 17, scope: !1870)
!1929 = !DILocation(line: 2102, column: 3, scope: !1870)
!1930 = !DILocation(line: 2102, column: 17, scope: !1870)
!1931 = !DILocation(line: 2103, column: 3, scope: !1870)
!1932 = !DILocation(line: 2103, column: 17, scope: !1870)
!1933 = !DILocation(line: 2104, column: 3, scope: !1870)
!1934 = !DILocation(line: 2104, column: 17, scope: !1870)
!1935 = !DILocation(line: 2107, column: 40, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 2107, column: 3)
!1937 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 2107, column: 3)
!1938 = !DILocation(line: 2107, column: 15, scope: !1936)
!1939 = !DILocation(line: 2107, column: 3, scope: !1937)
!1940 = !DILocation(line: 2105, column: 18, scope: !1870)
!1941 = !DILocation(line: 2109, column: 22, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 2108, column: 3)
!1943 = !DILocation(line: 2109, column: 25, scope: !1942)
!1944 = !DILocation(line: 2109, column: 10, scope: !1942)
!1945 = !DILocation(line: 2109, column: 7, scope: !1942)
!1946 = !DILocation(line: 2109, column: 9, scope: !1942)
!1947 = !DILocation(line: 2110, column: 21, scope: !1942)
!1948 = !DILocation(line: 2110, column: 24, scope: !1942)
!1949 = !DILocation(line: 2110, column: 10, scope: !1942)
!1950 = !DILocation(line: 2110, column: 7, scope: !1942)
!1951 = !DILocation(line: 2110, column: 9, scope: !1942)
!1952 = !DILocation(line: 2111, column: 6, scope: !1942)
!1953 = !DILocation(line: 2107, column: 49, scope: !1936)
!1954 = distinct !{!1954, !1939, !1955, !548, !549}
!1955 = !DILocation(line: 2112, column: 3, scope: !1937)
!1956 = !DILocation(line: 2113, column: 5, scope: !1870)
!1957 = !DILocation(line: 2115, column: 1, scope: !1870)
!1958 = !DILocation(line: 2114, column: 3, scope: !1870)
!1959 = distinct !DISubprogram(name: "StringToArgv", scope: !3, file: !3, line: 2151, type: !1960, scopeLine: 2152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1963)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!172, !168, !1962}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!1963 = !{!1964, !1965, !1966, !1967, !1968, !1969, !1970, !1973, !1974, !1981}
!1964 = !DILocalVariable(name: "text", arg: 1, scope: !1959, file: !3, line: 2151, type: !168)
!1965 = !DILocalVariable(name: "argc", arg: 2, scope: !1959, file: !3, line: 2151, type: !1962)
!1966 = !DILocalVariable(name: "argv", scope: !1959, file: !3, line: 2154, type: !172)
!1967 = !DILocalVariable(name: "p", scope: !1959, file: !3, line: 2157, type: !168)
!1968 = !DILocalVariable(name: "q", scope: !1959, file: !3, line: 2158, type: !168)
!1969 = !DILocalVariable(name: "i", scope: !1959, file: !3, line: 2161, type: !6)
!1970 = !DILocalVariable(name: "message", scope: !1971, file: !3, line: 2186, type: !22)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 2186, column: 5)
!1972 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 2185, column: 7)
!1973 = !DILocalVariable(name: "exception", scope: !1971, file: !3, line: 2186, type: !231)
!1974 = !DILocalVariable(name: "message", scope: !1975, file: !3, line: 2218, type: !22)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 2218, column: 9)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 2214, column: 7)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 2213, column: 9)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !3, line: 2193, column: 3)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 2192, column: 3)
!1980 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 2192, column: 3)
!1981 = !DILocalVariable(name: "exception", scope: !1975, file: !3, line: 2218, type: !231)
!1982 = !DILocation(line: 0, scope: !1959)
!1983 = !DILocation(line: 2163, column: 8, scope: !1959)
!1984 = !DILocation(line: 2164, column: 12, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 2164, column: 7)
!1986 = !DILocation(line: 2164, column: 7, scope: !1959)
!1987 = !DILocation(line: 2169, column: 16, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 2169, column: 3)
!1989 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 2169, column: 3)
!1990 = !DILocation(line: 2169, column: 19, scope: !1988)
!1991 = !DILocation(line: 2169, column: 3, scope: !1989)
!1992 = !DILocation(line: 2171, column: 12, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 2170, column: 3)
!1994 = !DILocation(line: 0, scope: !1993)
!1995 = !DILocation(line: 2180, column: 13, scope: !1993)
!1996 = distinct !{!1996, !1991, !1997, !548, !549}
!1997 = !DILocation(line: 2182, column: 3, scope: !1989)
!1998 = !DILocation(line: 2171, column: 48, scope: !1993)
!1999 = !DILocation(line: 2171, column: 5, scope: !1993)
!2000 = !DILocation(line: 2172, column: 8, scope: !1993)
!2001 = distinct !{!2001, !1999, !2000, !548, !549}
!2002 = !DILocation(line: 2173, column: 12, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 2173, column: 9)
!2004 = !DILocation(line: 2173, column: 9, scope: !1993)
!2005 = !DILocation(line: 2175, column: 12, scope: !1993)
!2006 = !DILocation(line: 2176, column: 9, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 2176, column: 9)
!2008 = !DILocation(line: 2176, column: 9, scope: !1993)
!2009 = !DILocation(line: 0, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 2177, column: 7)
!2011 = !DILocation(line: 2177, column: 18, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 2177, column: 7)
!2013 = !DILocation(line: 2177, column: 29, scope: !2012)
!2014 = distinct !{!2014, !2015, !2016, !548, !549}
!2015 = !DILocation(line: 2177, column: 7, scope: !2010)
!2016 = !DILocation(line: 2177, column: 51, scope: !2010)
!2017 = !DILocation(line: 0, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 2179, column: 7)
!2019 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 2178, column: 9)
!2020 = !DILocation(line: 2179, column: 18, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 2179, column: 7)
!2022 = !DILocation(line: 2179, column: 30, scope: !2021)
!2023 = distinct !{!2023, !2024, !2025, !548, !549}
!2024 = !DILocation(line: 2179, column: 7, scope: !2018)
!2025 = !DILocation(line: 2179, column: 52, scope: !2018)
!2026 = !DILocation(line: 2180, column: 49, scope: !1993)
!2027 = !DILocation(line: 2180, column: 55, scope: !1993)
!2028 = distinct !{!2028, !2029, !2030, !548, !549}
!2029 = !DILocation(line: 2180, column: 5, scope: !1993)
!2030 = !DILocation(line: 2181, column: 8, scope: !1993)
!2031 = !DILocation(line: 2183, column: 10, scope: !1959)
!2032 = !DILocation(line: 2184, column: 54, scope: !1959)
!2033 = !DILocation(line: 2184, column: 18, scope: !1959)
!2034 = !DILocation(line: 2185, column: 12, scope: !1972)
!2035 = !DILocation(line: 2185, column: 7, scope: !1959)
!2036 = !DILocation(line: 2186, column: 5, scope: !1971)
!2037 = !DILocation(line: 0, scope: !1971)
!2038 = !DILocation(line: 2190, column: 11, scope: !1959)
!2039 = !DILocation(line: 2190, column: 10, scope: !1959)
!2040 = !DILocation(line: 2192, column: 27, scope: !1979)
!2041 = !DILocation(line: 2192, column: 15, scope: !1979)
!2042 = !DILocation(line: 2192, column: 3, scope: !1980)
!2043 = !DILocation(line: 2194, column: 5, scope: !1978)
!2044 = !DILocation(line: 2194, column: 12, scope: !1978)
!2045 = !DILocation(line: 2194, column: 48, scope: !1978)
!2046 = !DILocation(line: 2195, column: 8, scope: !1978)
!2047 = distinct !{!2047, !2043, !2046, !548, !549}
!2048 = !DILocation(line: 2197, column: 9, scope: !1978)
!2049 = !DILocation(line: 2209, column: 17, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 2203, column: 11)
!2051 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 2197, column: 9)
!2052 = !DILocation(line: 2209, column: 53, scope: !2050)
!2053 = !DILocation(line: 2209, column: 59, scope: !2050)
!2054 = distinct !{!2054, !2055, !2056, !548, !549}
!2055 = !DILocation(line: 2209, column: 9, scope: !2050)
!2056 = !DILocation(line: 2210, column: 12, scope: !2050)
!2057 = !DILocation(line: 0, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 2200, column: 9)
!2059 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 2198, column: 7)
!2060 = !DILocation(line: 2200, column: 20, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 2200, column: 9)
!2062 = !DILocation(line: 2200, column: 31, scope: !2061)
!2063 = !DILocation(line: 2200, column: 49, scope: !2061)
!2064 = !DILocation(line: 2200, column: 9, scope: !2061)
!2065 = distinct !{!2065, !2066, !2067, !548, !549}
!2066 = !DILocation(line: 2200, column: 9, scope: !2058)
!2067 = !DILocation(line: 2200, column: 53, scope: !2058)
!2068 = !DILocation(line: 0, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 2206, column: 11)
!2070 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 2204, column: 9)
!2071 = !DILocation(line: 2206, column: 22, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 2206, column: 11)
!2073 = !DILocation(line: 2206, column: 34, scope: !2072)
!2074 = !DILocation(line: 2206, column: 52, scope: !2072)
!2075 = !DILocation(line: 2206, column: 11, scope: !2072)
!2076 = distinct !{!2076, !2077, !2078, !548, !549}
!2077 = !DILocation(line: 2206, column: 11, scope: !2069)
!2078 = !DILocation(line: 2206, column: 56, scope: !2069)
!2079 = !DILocation(line: 0, scope: !1978)
!2080 = !DILocation(line: 2211, column: 54, scope: !1978)
!2081 = !DILocation(line: 2211, column: 57, scope: !1978)
!2082 = !DILocation(line: 2211, column: 22, scope: !1978)
!2083 = !DILocation(line: 2211, column: 5, scope: !1978)
!2084 = !DILocation(line: 2211, column: 12, scope: !1978)
!2085 = !DILocation(line: 2213, column: 17, scope: !1977)
!2086 = !DILocation(line: 2213, column: 9, scope: !1978)
!2087 = !DILocation(line: 0, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 2215, column: 9)
!2089 = !DILocation(line: 2216, column: 33, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 2215, column: 9)
!2091 = !DILocation(line: 0, scope: !293, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 2216, column: 19, scope: !2090)
!2093 = !DILocation(line: 810, column: 19, scope: !293, inlinedAt: !2092)
!2094 = !DILocation(line: 2216, column: 18, scope: !2090)
!2095 = !DILocation(line: 2215, column: 21, scope: !2090)
!2096 = !DILocation(line: 2215, column: 9, scope: !2088)
!2097 = distinct !{!2097, !2096, !2098, !548, !549}
!2098 = !DILocation(line: 2216, column: 40, scope: !2088)
!2099 = !DILocation(line: 2217, column: 24, scope: !1976)
!2100 = !DILocation(line: 2218, column: 9, scope: !1975)
!2101 = !DILocation(line: 0, scope: !1975)
!2102 = !DILocation(line: 2221, column: 12, scope: !1978)
!2103 = !DILocation(line: 2222, column: 5, scope: !1978)
!2104 = !DILocation(line: 2222, column: 17, scope: !1978)
!2105 = !DILocation(line: 2224, column: 5, scope: !1978)
!2106 = !DILocation(line: 2224, column: 13, scope: !1978)
!2107 = !DILocation(line: 2224, column: 49, scope: !1978)
!2108 = !DILocation(line: 2224, column: 55, scope: !1978)
!2109 = !DILocation(line: 2225, column: 8, scope: !1978)
!2110 = distinct !{!2110, !2105, !2109, !548, !549}
!2111 = !DILocation(line: 2192, column: 35, scope: !1979)
!2112 = !DILocation(line: 2192, column: 17, scope: !1979)
!2113 = distinct !{!2113, !2042, !2114, !548, !549}
!2114 = !DILocation(line: 2226, column: 3, scope: !1980)
!2115 = !DILocation(line: 0, scope: !1980)
!2116 = !DILocation(line: 2227, column: 3, scope: !1959)
!2117 = !DILocation(line: 2227, column: 10, scope: !1959)
!2118 = !DILocation(line: 2228, column: 3, scope: !1959)
!2119 = !DILocation(line: 2229, column: 1, scope: !1959)
!2120 = distinct !DISubprogram(name: "StringToArrayOfDoubles", scope: !3, file: !3, line: 2266, type: !2121, scopeLine: 2268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2124)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!193, !168, !2123, !282}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2124 = !{!2125, !2126, !2127, !2128, !2129, !2130, !2131}
!2125 = !DILocalVariable(name: "string", arg: 1, scope: !2120, file: !3, line: 2266, type: !168)
!2126 = !DILocalVariable(name: "count", arg: 2, scope: !2120, file: !3, line: 2266, type: !2123)
!2127 = !DILocalVariable(name: "exception", arg: 3, scope: !2120, file: !3, line: 2267, type: !282)
!2128 = !DILocalVariable(name: "q", scope: !2120, file: !3, line: 2270, type: !22)
!2129 = !DILocalVariable(name: "p", scope: !2120, file: !3, line: 2273, type: !168)
!2130 = !DILocalVariable(name: "array", scope: !2120, file: !3, line: 2276, type: !193)
!2131 = !DILocalVariable(name: "i", scope: !2120, file: !3, line: 2279, type: !6)
!2132 = !DILocation(line: 0, scope: !2120)
!2133 = !DILocation(line: 2269, column: 3, scope: !2120)
!2134 = !DILocation(line: 2286, column: 9, scope: !2120)
!2135 = !DILocation(line: 2289, column: 10, scope: !2120)
!2136 = !DILocation(line: 2289, column: 13, scope: !2120)
!2137 = !DILocation(line: 2289, column: 3, scope: !2120)
!2138 = !DILocation(line: 2295, column: 6, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 2290, column: 3)
!2140 = distinct !{!2140, !2137, !2141, !548, !549}
!2141 = !DILocation(line: 2302, column: 3, scope: !2120)
!2142 = !DILocalVariable(name: "string", arg: 1, scope: !2143, file: !2144, line: 42, type: !1217)
!2143 = distinct !DISubprogram(name: "StringToDouble", scope: !2144, file: !2144, line: 42, type: !1325, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2145)
!2144 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!2145 = !{!2142, !2146}
!2146 = !DILocalVariable(name: "sentinal", arg: 2, scope: !2143, file: !2144, line: 43, type: !1327)
!2147 = !DILocation(line: 0, scope: !2143, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 2291, column: 12, scope: !2139)
!2149 = !DILocation(line: 45, column: 10, scope: !2143, inlinedAt: !2148)
!2150 = !DILocation(line: 2292, column: 14, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 2292, column: 9)
!2152 = !DILocation(line: 2292, column: 11, scope: !2151)
!2153 = !DILocation(line: 2292, column: 9, scope: !2139)
!2154 = !DILocation(line: 2296, column: 5, scope: !2139)
!2155 = !DILocation(line: 0, scope: !2139)
!2156 = !DILocation(line: 2296, column: 12, scope: !2139)
!2157 = !DILocation(line: 2296, column: 48, scope: !2139)
!2158 = !DILocation(line: 2297, column: 8, scope: !2139)
!2159 = distinct !{!2159, !2154, !2158, !548, !549}
!2160 = !DILocation(line: 2298, column: 12, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 2298, column: 9)
!2162 = !DILocation(line: 2298, column: 9, scope: !2139)
!2163 = !DILocation(line: 2300, column: 5, scope: !2139)
!2164 = !DILocation(line: 2300, column: 12, scope: !2139)
!2165 = !DILocation(line: 2300, column: 48, scope: !2139)
!2166 = !DILocation(line: 2301, column: 8, scope: !2139)
!2167 = distinct !{!2167, !2163, !2166, !548, !549}
!2168 = !DILocation(line: 2306, column: 9, scope: !2120)
!2169 = !DILocation(line: 2307, column: 20, scope: !2120)
!2170 = !DILocation(line: 2308, column: 13, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 2308, column: 7)
!2172 = !DILocation(line: 2308, column: 7, scope: !2120)
!2173 = !DILocation(line: 2319, column: 11, scope: !2120)
!2174 = !DILocation(line: 2319, column: 14, scope: !2120)
!2175 = !DILocation(line: 2319, column: 23, scope: !2120)
!2176 = !DILocation(line: 2310, column: 14, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 2309, column: 5)
!2178 = !DILocation(line: 2312, column: 7, scope: !2177)
!2179 = !DILocation(line: 2321, column: 12, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 2320, column: 3)
!2181 = distinct !{!2181, !2182, !2183, !548, !549}
!2182 = !DILocation(line: 2319, column: 3, scope: !2120)
!2183 = !DILocation(line: 2325, column: 3, scope: !2120)
!2184 = !DILocation(line: 2319, column: 31, scope: !2120)
!2185 = !DILocation(line: 2319, column: 29, scope: !2120)
!2186 = !DILocation(line: 0, scope: !2143, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 2321, column: 16, scope: !2180)
!2188 = !DILocation(line: 45, column: 10, scope: !2143, inlinedAt: !2187)
!2189 = !DILocation(line: 2321, column: 5, scope: !2180)
!2190 = !DILocation(line: 2321, column: 15, scope: !2180)
!2191 = !{!2192, !2192, i64 0}
!2192 = !{!"double", !261, i64 0}
!2193 = !DILocation(line: 2322, column: 7, scope: !2180)
!2194 = !DILocation(line: 2323, column: 5, scope: !2180)
!2195 = !DILocation(line: 0, scope: !2180)
!2196 = !DILocation(line: 2323, column: 13, scope: !2180)
!2197 = !DILocation(line: 2323, column: 49, scope: !2180)
!2198 = !DILocation(line: 2323, column: 55, scope: !2180)
!2199 = !DILocation(line: 2324, column: 8, scope: !2180)
!2200 = distinct !{!2200, !2194, !2199, !548, !549}
!2201 = !DILocation(line: 2327, column: 1, scope: !2120)
!2202 = distinct !DISubprogram(name: "StringToken", scope: !3, file: !3, line: 2363, type: !2203, scopeLine: 2364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!22, !168, !172}
!2205 = !{!2206, !2207, !2208, !2209, !2210, !2211, !2212}
!2206 = !DILocalVariable(name: "delimiters", arg: 1, scope: !2202, file: !3, line: 2363, type: !168)
!2207 = !DILocalVariable(name: "string", arg: 2, scope: !2202, file: !3, line: 2363, type: !172)
!2208 = !DILocalVariable(name: "q", scope: !2202, file: !3, line: 2366, type: !22)
!2209 = !DILocalVariable(name: "p", scope: !2202, file: !3, line: 2369, type: !22)
!2210 = !DILocalVariable(name: "r", scope: !2202, file: !3, line: 2372, type: !168)
!2211 = !DILocalVariable(name: "c", scope: !2202, file: !3, line: 2375, type: !149)
!2212 = !DILocalVariable(name: "d", scope: !2202, file: !3, line: 2376, type: !149)
!2213 = !DILocation(line: 0, scope: !2202)
!2214 = !DILocation(line: 2378, column: 6, scope: !2202)
!2215 = !DILocation(line: 2379, column: 9, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 2379, column: 7)
!2217 = !DILocation(line: 2379, column: 7, scope: !2202)
!2218 = !DILocation(line: 2384, column: 10, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 2383, column: 3)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 2382, column: 3)
!2221 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 2382, column: 3)
!2222 = !DILocation(line: 2384, column: 8, scope: !2219)
!2223 = !DILocation(line: 2386, column: 5, scope: !2219)
!2224 = !DILocation(line: 0, scope: !2219)
!2225 = !DILocation(line: 2388, column: 10, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 2387, column: 5)
!2227 = !DILocation(line: 2389, column: 13, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 2389, column: 11)
!2229 = !DILocation(line: 2389, column: 11, scope: !2226)
!2230 = !DILocation(line: 2391, column: 17, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 2391, column: 15)
!2232 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 2390, column: 9)
!2233 = !DILocation(line: 2391, column: 15, scope: !2232)
!2234 = !DILocation(line: 2394, column: 18, scope: !2231)
!2235 = !DILocation(line: 2395, column: 18, scope: !2232)
!2236 = !DILocation(line: 2396, column: 11, scope: !2232)
!2237 = !DILocation(line: 2388, column: 12, scope: !2226)
!2238 = !DILocation(line: 2398, column: 16, scope: !2219)
!2239 = !DILocation(line: 2398, column: 5, scope: !2226)
!2240 = distinct !{!2240, !2241, !2242, !549}
!2241 = !DILocation(line: 2382, column: 3, scope: !2221)
!2242 = !DILocation(line: 2399, column: 3, scope: !2221)
!2243 = !DILocation(line: 2400, column: 1, scope: !2202)
!2244 = distinct !DISubprogram(name: "StringToList", scope: !3, file: !3, line: 2426, type: !2245, scopeLine: 2427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!172, !168}
!2247 = !{!2248, !2249, !2250, !2251, !2252, !2253, !2256, !2259, !2260, !2266, !2267, !2269, !2270, !2271, !2274, !2275, !2281}
!2248 = !DILocalVariable(name: "text", arg: 1, scope: !2244, file: !3, line: 2426, type: !168)
!2249 = !DILocalVariable(name: "textlist", scope: !2244, file: !3, line: 2429, type: !172)
!2250 = !DILocalVariable(name: "p", scope: !2244, file: !3, line: 2432, type: !168)
!2251 = !DILocalVariable(name: "i", scope: !2244, file: !3, line: 2435, type: !6)
!2252 = !DILocalVariable(name: "lines", scope: !2244, file: !3, line: 2438, type: !163)
!2253 = !DILocalVariable(name: "q", scope: !2254, file: !3, line: 2449, type: !168)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 2447, column: 5)
!2255 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 2446, column: 7)
!2256 = !DILocalVariable(name: "message", scope: !2257, file: !3, line: 2461, type: !22)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 2461, column: 9)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 2460, column: 11)
!2259 = !DILocalVariable(name: "exception", scope: !2257, file: !3, line: 2461, type: !231)
!2260 = !DILocalVariable(name: "message", scope: !2261, file: !3, line: 2471, type: !22)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 2471, column: 11)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 2470, column: 13)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 2464, column: 7)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 2463, column: 7)
!2265 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 2463, column: 7)
!2266 = !DILocalVariable(name: "exception", scope: !2261, file: !3, line: 2471, type: !231)
!2267 = !DILocalVariable(name: "hex_string", scope: !2268, file: !3, line: 2482, type: !156)
!2268 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 2480, column: 5)
!2269 = !DILocalVariable(name: "q", scope: !2268, file: !3, line: 2485, type: !22)
!2270 = !DILocalVariable(name: "j", scope: !2268, file: !3, line: 2488, type: !6)
!2271 = !DILocalVariable(name: "message", scope: !2272, file: !3, line: 2497, type: !22)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 2497, column: 9)
!2273 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 2496, column: 11)
!2274 = !DILocalVariable(name: "exception", scope: !2272, file: !3, line: 2497, type: !231)
!2275 = !DILocalVariable(name: "message", scope: !2276, file: !3, line: 2504, type: !22)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 2504, column: 11)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 2503, column: 13)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 2500, column: 7)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 2499, column: 7)
!2280 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 2499, column: 7)
!2281 = !DILocalVariable(name: "exception", scope: !2276, file: !3, line: 2504, type: !231)
!2282 = !DILocation(line: 0, scope: !2244)
!2283 = !DILocation(line: 2440, column: 12, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 2440, column: 7)
!2285 = !DILocation(line: 2440, column: 7, scope: !2244)
!2286 = !DILocation(line: 2442, column: 16, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 2442, column: 3)
!2288 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 2442, column: 3)
!2289 = !DILocation(line: 2442, column: 19, scope: !2287)
!2290 = !DILocation(line: 2442, column: 3, scope: !2288)
!2291 = !DILocation(line: 2443, column: 37, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 2443, column: 9)
!2293 = !DILocation(line: 2443, column: 43, scope: !2292)
!2294 = !DILocation(line: 2444, column: 10, scope: !2292)
!2295 = !DILocation(line: 2444, column: 46, scope: !2292)
!2296 = !DILocation(line: 2443, column: 9, scope: !2287)
!2297 = !DILocation(line: 2442, column: 29, scope: !2287)
!2298 = distinct !{!2298, !2290, !2299, !548, !549}
!2299 = !DILocation(line: 2445, column: 7, scope: !2288)
!2300 = !DILocation(line: 2455, column: 7, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 2455, column: 7)
!2302 = !DILocation(line: 2455, column: 20, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 2455, column: 7)
!2304 = !DILocation(line: 0, scope: !2254)
!2305 = !DILocation(line: 0, scope: !2301)
!2306 = !DILocation(line: 2457, column: 16, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 2456, column: 13)
!2308 = !DILocation(line: 2457, column: 11, scope: !2307)
!2309 = !DILocation(line: 2455, column: 33, scope: !2303)
!2310 = !DILocation(line: 2455, column: 7, scope: !2303)
!2311 = distinct !{!2311, !2300, !2312, !548, !549}
!2312 = !DILocation(line: 2457, column: 16, scope: !2301)
!2313 = !DILocation(line: 2458, column: 61, scope: !2254)
!2314 = !DILocation(line: 2458, column: 26, scope: !2254)
!2315 = !DILocation(line: 2460, column: 20, scope: !2258)
!2316 = !DILocation(line: 2460, column: 11, scope: !2254)
!2317 = !DILocation(line: 2463, column: 19, scope: !2264)
!2318 = !DILocation(line: 2463, column: 7, scope: !2265)
!2319 = !DILocation(line: 2461, column: 9, scope: !2257)
!2320 = !DILocation(line: 0, scope: !2257)
!2321 = !DILocation(line: 2465, column: 9, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 2465, column: 9)
!2323 = !DILocation(line: 0, scope: !2322)
!2324 = !DILocation(line: 2465, column: 19, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 2465, column: 9)
!2326 = !DILocation(line: 2465, column: 32, scope: !2325)
!2327 = !DILocation(line: 2465, column: 9, scope: !2325)
!2328 = distinct !{!2328, !2321, !2329, !548, !549}
!2329 = !DILocation(line: 2467, column: 13, scope: !2322)
!2330 = !DILocation(line: 2468, column: 62, scope: !2263)
!2331 = !DILocation(line: 2468, column: 65, scope: !2263)
!2332 = !DILocation(line: 2468, column: 30, scope: !2263)
!2333 = !DILocation(line: 2468, column: 9, scope: !2263)
!2334 = !DILocation(line: 2468, column: 20, scope: !2263)
!2335 = !DILocation(line: 2470, column: 25, scope: !2262)
!2336 = !DILocation(line: 2470, column: 13, scope: !2263)
!2337 = !DILocation(line: 2471, column: 11, scope: !2261)
!2338 = !DILocation(line: 0, scope: !2261)
!2339 = !DILocation(line: 2472, column: 16, scope: !2263)
!2340 = !DILocation(line: 2473, column: 9, scope: !2263)
!2341 = !DILocation(line: 2473, column: 25, scope: !2263)
!2342 = !DILocation(line: 2474, column: 13, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 2474, column: 13)
!2344 = !DILocation(line: 2474, column: 16, scope: !2343)
!2345 = !DILocation(line: 2474, column: 13, scope: !2263)
!2346 = !DILocation(line: 2476, column: 12, scope: !2263)
!2347 = !DILocation(line: 2463, column: 39, scope: !2264)
!2348 = distinct !{!2348, !2318, !2349, !548, !549}
!2349 = !DILocation(line: 2477, column: 7, scope: !2265)
!2350 = !DILocation(line: 2481, column: 7, scope: !2268)
!2351 = !DILocation(line: 2482, column: 9, scope: !2268)
!2352 = !DILocation(line: 2493, column: 23, scope: !2268)
!2353 = !DILocation(line: 2493, column: 35, scope: !2268)
!2354 = !DILocation(line: 2494, column: 61, scope: !2268)
!2355 = !DILocation(line: 2494, column: 26, scope: !2268)
!2356 = !DILocation(line: 2496, column: 20, scope: !2273)
!2357 = !DILocation(line: 2496, column: 11, scope: !2268)
!2358 = !DILocation(line: 2499, column: 7, scope: !2280)
!2359 = !DILocation(line: 2497, column: 9, scope: !2272)
!2360 = !DILocation(line: 0, scope: !2272)
!2361 = !DILocation(line: 2501, column: 30, scope: !2278)
!2362 = !DILocation(line: 2501, column: 9, scope: !2278)
!2363 = !DILocation(line: 2501, column: 20, scope: !2278)
!2364 = !DILocation(line: 2503, column: 25, scope: !2277)
!2365 = !DILocation(line: 2503, column: 13, scope: !2278)
!2366 = !DILocation(line: 2504, column: 11, scope: !2276)
!2367 = !DILocation(line: 0, scope: !2276)
!2368 = !DILocation(line: 2506, column: 23, scope: !2278)
!2369 = !DILocation(line: 2505, column: 16, scope: !2278)
!2370 = !DILocation(line: 2507, column: 11, scope: !2278)
!2371 = !DILocation(line: 2507, column: 23, scope: !2278)
!2372 = !DILocation(line: 2507, column: 22, scope: !2278)
!2373 = !DILocation(line: 0, scope: !2268)
!2374 = !DILocation(line: 2508, column: 44, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 2508, column: 9)
!2376 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 2508, column: 9)
!2377 = !DILocation(line: 0, scope: !510, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 2508, column: 34, scope: !2375)
!2379 = !DILocation(line: 2508, column: 21, scope: !2375)
!2380 = !DILocation(line: 2508, column: 9, scope: !2376)
!2381 = !DILocation(line: 2516, column: 19, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 2516, column: 9)
!2383 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 2516, column: 9)
!2384 = !DILocation(line: 2516, column: 9, scope: !2383)
!2385 = !DILocation(line: 2510, column: 72, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 2509, column: 9)
!2387 = !DILocation(line: 2510, column: 69, scope: !2386)
!2388 = !DILocation(line: 2510, column: 18, scope: !2386)
!2389 = !DILocation(line: 0, scope: !791, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 2511, column: 18, scope: !2386)
!2391 = !DILocation(line: 756, column: 9, scope: !804, inlinedAt: !2390)
!2392 = !DILocation(line: 756, column: 7, scope: !804, inlinedAt: !2390)
!2393 = !DILocation(line: 757, column: 12, scope: !809, inlinedAt: !2390)
!2394 = !DILocation(line: 757, column: 9, scope: !804, inlinedAt: !2390)
!2395 = !DILocation(line: 756, column: 11, scope: !804, inlinedAt: !2390)
!2396 = !DILocation(line: 759, column: 6, scope: !804, inlinedAt: !2390)
!2397 = !DILocation(line: 760, column: 9, scope: !804, inlinedAt: !2390)
!2398 = !DILocation(line: 760, column: 7, scope: !804, inlinedAt: !2390)
!2399 = !DILocation(line: 761, column: 12, scope: !816, inlinedAt: !2390)
!2400 = !DILocation(line: 761, column: 9, scope: !804, inlinedAt: !2390)
!2401 = !DILocation(line: 760, column: 11, scope: !804, inlinedAt: !2390)
!2402 = !DILocation(line: 763, column: 6, scope: !804, inlinedAt: !2390)
!2403 = !DILocation(line: 764, column: 9, scope: !804, inlinedAt: !2390)
!2404 = !DILocation(line: 764, column: 7, scope: !804, inlinedAt: !2390)
!2405 = !DILocation(line: 765, column: 12, scope: !823, inlinedAt: !2390)
!2406 = !DILocation(line: 765, column: 9, scope: !804, inlinedAt: !2390)
!2407 = !DILocation(line: 764, column: 11, scope: !804, inlinedAt: !2390)
!2408 = !DILocation(line: 767, column: 6, scope: !804, inlinedAt: !2390)
!2409 = !DILocation(line: 768, column: 9, scope: !804, inlinedAt: !2390)
!2410 = !DILocation(line: 768, column: 7, scope: !804, inlinedAt: !2390)
!2411 = !DILocation(line: 769, column: 12, scope: !830, inlinedAt: !2390)
!2412 = !DILocation(line: 769, column: 9, scope: !804, inlinedAt: !2390)
!2413 = !DILocation(line: 768, column: 11, scope: !804, inlinedAt: !2390)
!2414 = !DILocation(line: 771, column: 6, scope: !804, inlinedAt: !2390)
!2415 = !DILocation(line: 754, column: 26, scope: !805, inlinedAt: !2390)
!2416 = !DILocation(line: 754, column: 20, scope: !805, inlinedAt: !2390)
!2417 = !DILocation(line: 754, column: 3, scope: !806, inlinedAt: !2390)
!2418 = distinct !{!2418, !2417, !2419, !548, !549}
!2419 = !DILocation(line: 772, column: 3, scope: !806, inlinedAt: !2390)
!2420 = !DILocation(line: 776, column: 11, scope: !840, inlinedAt: !2390)
!2421 = !DILocation(line: 776, column: 9, scope: !840, inlinedAt: !2390)
!2422 = !DILocation(line: 777, column: 14, scope: !846, inlinedAt: !2390)
!2423 = !DILocation(line: 777, column: 11, scope: !840, inlinedAt: !2390)
!2424 = !DILocation(line: 776, column: 13, scope: !840, inlinedAt: !2390)
!2425 = !DILocation(line: 779, column: 8, scope: !840, inlinedAt: !2390)
!2426 = !DILocation(line: 0, scope: !842, inlinedAt: !2390)
!2427 = !DILocation(line: 774, column: 17, scope: !841, inlinedAt: !2390)
!2428 = !DILocation(line: 774, column: 5, scope: !842, inlinedAt: !2390)
!2429 = distinct !{!2429, !2428, !2430, !548, !549}
!2430 = !DILocation(line: 780, column: 5, scope: !842, inlinedAt: !2390)
!2431 = !DILocation(line: 782, column: 7, scope: !856, inlinedAt: !2390)
!2432 = !DILocation(line: 783, column: 3, scope: !791, inlinedAt: !2390)
!2433 = !DILocation(line: 2512, column: 12, scope: !2386)
!2434 = !DILocation(line: 2513, column: 18, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 2513, column: 15)
!2436 = !DILocation(line: 2513, column: 26, scope: !2435)
!2437 = !DILocation(line: 2513, column: 15, scope: !2386)
!2438 = !DILocation(line: 2514, column: 15, scope: !2435)
!2439 = !DILocation(line: 2514, column: 17, scope: !2435)
!2440 = !DILocation(line: 2514, column: 13, scope: !2435)
!2441 = !DILocation(line: 0, scope: !2386)
!2442 = !DILocation(line: 2508, column: 62, scope: !2375)
!2443 = distinct !{!2443, !2380, !2444, !548, !549}
!2444 = !DILocation(line: 2515, column: 9, scope: !2376)
!2445 = !DILocation(line: 2518, column: 13, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 2517, column: 9)
!2447 = !DILocation(line: 2518, column: 15, scope: !2446)
!2448 = !DILocation(line: 2519, column: 13, scope: !2446)
!2449 = !DILocation(line: 2519, column: 15, scope: !2446)
!2450 = !DILocation(line: 2520, column: 18, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 2520, column: 15)
!2452 = !DILocation(line: 2520, column: 26, scope: !2451)
!2453 = !DILocation(line: 2520, column: 15, scope: !2446)
!2454 = !DILocation(line: 2521, column: 15, scope: !2451)
!2455 = !DILocation(line: 2521, column: 17, scope: !2451)
!2456 = !DILocation(line: 2521, column: 13, scope: !2451)
!2457 = !DILocation(line: 0, scope: !2446)
!2458 = !DILocation(line: 2516, column: 29, scope: !2382)
!2459 = distinct !{!2459, !2384, !2460, !548, !549}
!2460 = !DILocation(line: 2522, column: 9, scope: !2383)
!2461 = !DILocation(line: 0, scope: !2278)
!2462 = !DILocation(line: 2523, column: 13, scope: !2278)
!2463 = !DILocation(line: 2524, column: 44, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 2524, column: 9)
!2465 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 2524, column: 9)
!2466 = !DILocation(line: 0, scope: !510, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 2524, column: 34, scope: !2464)
!2468 = !DILocation(line: 2524, column: 21, scope: !2464)
!2469 = !DILocation(line: 2524, column: 9, scope: !2465)
!2470 = !DILocation(line: 2526, column: 15, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 2526, column: 15)
!2472 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 2525, column: 9)
!2473 = !DILocation(line: 2526, column: 51, scope: !2471)
!2474 = !DILocation(line: 0, scope: !2471)
!2475 = !DILocation(line: 2530, column: 12, scope: !2472)
!2476 = !DILocation(line: 2524, column: 62, scope: !2464)
!2477 = distinct !{!2477, !2469, !2478, !548, !549}
!2478 = !DILocation(line: 2531, column: 9, scope: !2465)
!2479 = !DILocation(line: 2532, column: 11, scope: !2278)
!2480 = !DILocation(line: 2499, column: 39, scope: !2279)
!2481 = !DILocation(line: 2499, column: 19, scope: !2279)
!2482 = distinct !{!2482, !2358, !2483, !548, !549}
!2483 = !DILocation(line: 2533, column: 7, scope: !2280)
!2484 = !DILocation(line: 2534, column: 5, scope: !2255)
!2485 = !DILocation(line: 0, scope: !2255)
!2486 = !DILocation(line: 2535, column: 3, scope: !2244)
!2487 = !DILocation(line: 2535, column: 14, scope: !2244)
!2488 = !DILocation(line: 2536, column: 3, scope: !2244)
!2489 = !DILocation(line: 2537, column: 1, scope: !2244)
!2490 = distinct !DISubprogram(name: "StringToStringInfo", scope: !3, file: !3, line: 2561, type: !701, scopeLine: 2562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2491)
!2491 = !{!2492, !2493}
!2492 = !DILocalVariable(name: "string", arg: 1, scope: !2490, file: !3, line: 2561, type: !168)
!2493 = !DILocalVariable(name: "string_info", scope: !2490, file: !3, line: 2564, type: !150)
!2494 = !DILocation(line: 0, scope: !2490)
!2495 = !DILocation(line: 2567, column: 33, scope: !2490)
!2496 = !DILocation(line: 2567, column: 15, scope: !2490)
!2497 = !DILocation(line: 0, scope: !1739, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 2568, column: 3, scope: !2490)
!2499 = !DILocation(line: 1882, column: 20, scope: !1747, inlinedAt: !2498)
!2500 = !DILocation(line: 1882, column: 27, scope: !1747, inlinedAt: !2498)
!2501 = !DILocation(line: 1882, column: 7, scope: !1739, inlinedAt: !2498)
!2502 = !DILocation(line: 1883, column: 32, scope: !1747, inlinedAt: !2498)
!2503 = !DILocation(line: 1883, column: 12, scope: !1747, inlinedAt: !2498)
!2504 = !DILocation(line: 1883, column: 5, scope: !1747, inlinedAt: !2498)
!2505 = !DILocation(line: 2569, column: 3, scope: !2490)
!2506 = distinct !DISubprogram(name: "StripString", scope: !3, file: !3, line: 2595, type: !1465, scopeLine: 2596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2507)
!2507 = !{!2508, !2509, !2510, !2511}
!2508 = !DILocalVariable(name: "message", arg: 1, scope: !2506, file: !3, line: 2595, type: !22)
!2509 = !DILocalVariable(name: "p", scope: !2506, file: !3, line: 2598, type: !22)
!2510 = !DILocalVariable(name: "q", scope: !2506, file: !3, line: 2599, type: !22)
!2511 = !DILocalVariable(name: "length", scope: !2506, file: !3, line: 2602, type: !163)
!2512 = !DILocation(line: 0, scope: !2506)
!2513 = !DILocation(line: 2605, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 2605, column: 7)
!2515 = !DILocation(line: 2605, column: 16, scope: !2514)
!2516 = !DILocation(line: 2605, column: 7, scope: !2506)
!2517 = !DILocation(line: 2607, column: 10, scope: !2506)
!2518 = !DILocation(line: 2609, column: 10, scope: !2506)
!2519 = !DILocation(line: 2609, column: 46, scope: !2506)
!2520 = !DILocation(line: 2609, column: 3, scope: !2506)
!2521 = !DILocation(line: 2610, column: 6, scope: !2506)
!2522 = distinct !{!2522, !2520, !2521, !548, !549}
!2523 = !DILocation(line: 2611, column: 20, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 2611, column: 7)
!2525 = !DILocation(line: 2612, column: 6, scope: !2524)
!2526 = !DILocation(line: 2612, column: 5, scope: !2524)
!2527 = !DILocation(line: 2613, column: 12, scope: !2506)
!2528 = !DILocation(line: 2614, column: 3, scope: !2506)
!2529 = !DILocation(line: 2614, column: 11, scope: !2506)
!2530 = !DILocation(line: 2614, column: 47, scope: !2506)
!2531 = !DILocation(line: 2614, column: 53, scope: !2506)
!2532 = distinct !{!2532, !2528, !2533, !548, !549}
!2533 = !DILocation(line: 2615, column: 6, scope: !2506)
!2534 = !DILocation(line: 2616, column: 7, scope: !2506)
!2535 = !DILocation(line: 2617, column: 22, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 2617, column: 9)
!2537 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 2616, column: 7)
!2538 = !DILocation(line: 2618, column: 8, scope: !2536)
!2539 = !DILocation(line: 2618, column: 7, scope: !2536)
!2540 = !DILocation(line: 2619, column: 39, scope: !2506)
!2541 = !DILocation(line: 2619, column: 41, scope: !2506)
!2542 = !DILocation(line: 2619, column: 10, scope: !2506)
!2543 = !DILocation(line: 2620, column: 3, scope: !2506)
!2544 = !DILocation(line: 2620, column: 17, scope: !2506)
!2545 = !DILocation(line: 2621, column: 8, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 2621, column: 3)
!2547 = !DILocation(line: 0, scope: !2546)
!2548 = !DILocation(line: 2621, column: 19, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 2621, column: 3)
!2550 = !DILocation(line: 2621, column: 3, scope: !2546)
!2551 = !DILocation(line: 2623, column: 9, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 2622, column: 9)
!2553 = !DILocation(line: 2623, column: 7, scope: !2552)
!2554 = !DILocation(line: 2621, column: 32, scope: !2549)
!2555 = !DILocation(line: 2621, column: 3, scope: !2549)
!2556 = distinct !{!2556, !2550, !2557, !548, !549}
!2557 = !DILocation(line: 2623, column: 10, scope: !2546)
!2558 = !DILocation(line: 2624, column: 1, scope: !2506)
!2559 = distinct !DISubprogram(name: "SubstituteString", scope: !3, file: !3, line: 2657, type: !2560, scopeLine: 2659, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!16, !172, !168, !168}
!2562 = !{!2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2580}
!2563 = !DILocalVariable(name: "string", arg: 1, scope: !2559, file: !3, line: 2657, type: !172)
!2564 = !DILocalVariable(name: "search", arg: 2, scope: !2559, file: !3, line: 2658, type: !168)
!2565 = !DILocalVariable(name: "replace", arg: 3, scope: !2559, file: !3, line: 2658, type: !168)
!2566 = !DILocalVariable(name: "status", scope: !2559, file: !3, line: 2661, type: !16)
!2567 = !DILocalVariable(name: "p", scope: !2559, file: !3, line: 2664, type: !22)
!2568 = !DILocalVariable(name: "extent", scope: !2559, file: !3, line: 2667, type: !163)
!2569 = !DILocalVariable(name: "replace_extent", scope: !2559, file: !3, line: 2668, type: !163)
!2570 = !DILocalVariable(name: "search_extent", scope: !2559, file: !3, line: 2669, type: !163)
!2571 = !DILocalVariable(name: "offset", scope: !2559, file: !3, line: 2672, type: !6)
!2572 = !DILocalVariable(name: "message", scope: !2573, file: !3, line: 2699, type: !22)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 2699, column: 11)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 2698, column: 13)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 2690, column: 7)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 2689, column: 9)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 2678, column: 3)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 2677, column: 3)
!2579 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 2677, column: 3)
!2580 = !DILocalVariable(name: "exception", scope: !2573, file: !3, line: 2699, type: !231)
!2581 = !DILocation(line: 0, scope: !2559)
!2582 = !DILocation(line: 2677, column: 17, scope: !2579)
!2583 = !DILocation(line: 2677, column: 25, scope: !2579)
!2584 = !DILocation(line: 2677, column: 10, scope: !2579)
!2585 = !DILocation(line: 2677, column: 37, scope: !2578)
!2586 = !DILocation(line: 2677, column: 3, scope: !2579)
!2587 = !DILocation(line: 2679, column: 23, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 2679, column: 9)
!2589 = !DILocation(line: 2679, column: 9, scope: !2577)
!2590 = !DILocation(line: 2680, column: 21, scope: !2588)
!2591 = !DILocation(line: 2680, column: 7, scope: !2588)
!2592 = !DILocation(line: 2681, column: 9, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 2681, column: 9)
!2594 = !DILocation(line: 2681, column: 41, scope: !2593)
!2595 = !DILocation(line: 2681, column: 9, scope: !2577)
!2596 = !DILocation(line: 2687, column: 24, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 2687, column: 9)
!2598 = !DILocation(line: 2687, column: 9, scope: !2577)
!2599 = !DILocation(line: 2688, column: 22, scope: !2597)
!2600 = !DILocation(line: 2688, column: 7, scope: !2597)
!2601 = !DILocation(line: 2689, column: 24, scope: !2576)
!2602 = !DILocation(line: 2689, column: 9, scope: !2577)
!2603 = !DILocation(line: 2694, column: 30, scope: !2575)
!2604 = !DILocation(line: 2695, column: 16, scope: !2575)
!2605 = !DILocation(line: 2695, column: 31, scope: !2575)
!2606 = !DILocation(line: 2695, column: 46, scope: !2575)
!2607 = !DILocation(line: 2696, column: 60, scope: !2575)
!2608 = !DILocation(line: 2696, column: 26, scope: !2575)
!2609 = !DILocation(line: 2696, column: 16, scope: !2575)
!2610 = !DILocation(line: 2698, column: 21, scope: !2574)
!2611 = !DILocation(line: 2698, column: 13, scope: !2575)
!2612 = !DILocation(line: 2699, column: 11, scope: !2573)
!2613 = !DILocation(line: 0, scope: !2573)
!2614 = !DILocation(line: 2694, column: 28, scope: !2575)
!2615 = !DILocation(line: 2700, column: 20, scope: !2575)
!2616 = !DILocation(line: 2701, column: 7, scope: !2575)
!2617 = !DILocation(line: 0, scope: !2579)
!2618 = !DILocation(line: 2705, column: 23, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 2705, column: 9)
!2620 = !DILocation(line: 2705, column: 9, scope: !2577)
!2621 = !DILocation(line: 2706, column: 32, scope: !2619)
!2622 = !DILocation(line: 2706, column: 49, scope: !2619)
!2623 = !DILocation(line: 2707, column: 9, scope: !2619)
!2624 = !DILocation(line: 2707, column: 32, scope: !2619)
!2625 = !DILocation(line: 2706, column: 14, scope: !2619)
!2626 = !DILocation(line: 2706, column: 7, scope: !2619)
!2627 = !DILocation(line: 2708, column: 12, scope: !2577)
!2628 = !DILocation(line: 2709, column: 22, scope: !2577)
!2629 = !DILocation(line: 2709, column: 6, scope: !2577)
!2630 = !DILocation(line: 2677, column: 68, scope: !2578)
!2631 = !DILocation(line: 2710, column: 3, scope: !2577)
!2632 = !DILocation(line: 2677, column: 65, scope: !2578)
!2633 = !DILocation(line: 2677, column: 57, scope: !2578)
!2634 = distinct !{!2634, !2586, !2635, !548, !549}
!2635 = !DILocation(line: 2710, column: 3, scope: !2579)
!2636 = !DILocation(line: 2674, column: 9, scope: !2559)
!2637 = !DILocation(line: 2711, column: 3, scope: !2559)
!2638 = !DISubprogram(name: "CopyMagickMemory", scope: !310, file: !310, line: 44, type: !2639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!147, !147, !166, !291}
!2641 = !DISubprogram(name: "open", scope: !2642, file: !2642, line: 168, type: !2643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !283)
!2642 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "270596b098606fab5166d0114edf8288")
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!149, !168, !149, null}
