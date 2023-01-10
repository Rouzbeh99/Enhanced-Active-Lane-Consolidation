; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/version.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"Copyright (C) 1999-2014 ImageMagick Studio LLC\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DPC\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"index.html\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"file:///usr/share/doc/ImageMagick-6/index.html\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"ImageMagick (CPU2017 version)\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Q16\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"65535\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"2014-05-09\00", align 1
@.str.11 = private unnamed_addr constant [143 x i8] c"ImageMagick (CPU2017 version) 6.8.9-1 Q16 generic 2014-05-09 http://www.spec.org/cpu2017 (http://www.imagemagick.org for the original version)\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Version: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Copyright: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Features: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Delegates: %s\0A\0A\00", align 1
@CRC32.crc_initial = internal unnamed_addr global i1 false, align 4, !dbg !0
@CRC32.crc_xor = internal unnamed_addr global [256 x i32] zeroinitializer, align 16, !dbg !128

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local nonnull ptr @GetMagickCopyright() local_unnamed_addr #0 !dbg !154 {
entry:
  ret ptr @.str, !dbg !158
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local nonnull ptr @GetMagickDelegates() local_unnamed_addr #0 !dbg !159 {
entry:
  ret ptr @.str.1, !dbg !160
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local nonnull ptr @GetMagickFeatures() local_unnamed_addr #0 !dbg !161 {
entry:
  ret ptr @.str.2, !dbg !162
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMagickHomeURL() local_unnamed_addr #1 !dbg !163 {
entry:
  %path = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path) #6, !dbg !190
  call void @llvm.dbg.declare(metadata ptr %path, metadata !168, metadata !DIExpression()), !dbg !191
  %call = tail call ptr @AcquireExceptionInfo() #6, !dbg !192
  call void @llvm.dbg.value(metadata ptr %call, metadata !170, metadata !DIExpression()), !dbg !193
  %call1 = tail call ptr @GetConfigurePaths(ptr noundef nonnull @.str.3, ptr noundef %call) #6, !dbg !194
  call void @llvm.dbg.value(metadata ptr %call1, metadata !189, metadata !DIExpression()), !dbg !193
  %call2 = tail call ptr @DestroyExceptionInfo(ptr noundef %call) #6, !dbg !195
  call void @llvm.dbg.value(metadata ptr %call2, metadata !170, metadata !DIExpression()), !dbg !193
  %cmp = icmp eq ptr %call1, null, !dbg !196
  br i1 %cmp, label %if.then, label %if.end, !dbg !198

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @ConstantString(ptr noundef nonnull @.str.4) #6, !dbg !199
  br label %cleanup, !dbg !200

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @GetNextValueInLinkedList(ptr noundef nonnull %call1) #6, !dbg !201
  call void @llvm.dbg.value(metadata ptr %call4, metadata !169, metadata !DIExpression()), !dbg !193
  %cmp5.not23 = icmp eq ptr %call4, null, !dbg !202
  br i1 %cmp5.not23, label %while.end, label %while.body, !dbg !203

while.body:                                       ; preds = %if.end, %if.end13
  %element.024 = phi ptr [ %call14, %if.end13 ], [ %call4, %if.end ]
  call void @llvm.dbg.value(metadata ptr %element.024, metadata !169, metadata !DIExpression()), !dbg !193
  %call6 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %path, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull %element.024, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #6, !dbg !204
  %call8 = call i32 @IsPathAccessible(ptr noundef nonnull %path) #6, !dbg !206
  %cmp9.not = icmp eq i32 %call8, 0, !dbg !208
  br i1 %cmp9.not, label %if.end13, label %if.then10, !dbg !209

if.then10:                                        ; preds = %while.body
  %call12 = call ptr @ConstantString(ptr noundef nonnull %path) #6, !dbg !210
  br label %cleanup, !dbg !211

if.end13:                                         ; preds = %while.body
  %call14 = call ptr @GetNextValueInLinkedList(ptr noundef nonnull %call1) #6, !dbg !212
  call void @llvm.dbg.value(metadata ptr %call14, metadata !169, metadata !DIExpression()), !dbg !193
  %cmp5.not = icmp eq ptr %call14, null, !dbg !202
  br i1 %cmp5.not, label %while.end, label %while.body, !dbg !203, !llvm.loop !213

while.end:                                        ; preds = %if.end13, %if.end
  %call15 = call ptr @ConstantString(ptr noundef nonnull @.str.4) #6, !dbg !217
  br label %cleanup, !dbg !218

cleanup:                                          ; preds = %while.end, %if.then10, %if.then
  %retval.0 = phi ptr [ %call3, %if.then ], [ %call12, %if.then10 ], [ %call15, %while.end ], !dbg !193
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #6, !dbg !219
  ret ptr %retval.0, !dbg !219
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

declare !dbg !220 ptr @AcquireExceptionInfo() local_unnamed_addr #4

declare !dbg !223 ptr @GetConfigurePaths(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !227 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !230 ptr @ConstantString(ptr noundef) local_unnamed_addr #4

declare !dbg !233 ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #4

declare !dbg !236 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !242 i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local nonnull ptr @GetMagickPackageName() local_unnamed_addr #0 !dbg !246 {
entry:
  ret ptr @.str.7, !dbg !247
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local nonnull ptr @GetMagickQuantumDepth(ptr noundef writeonly %depth) local_unnamed_addr #5 !dbg !248 {
entry:
  call void @llvm.dbg.value(metadata ptr %depth, metadata !252, metadata !DIExpression()), !dbg !253
  %cmp.not = icmp eq ptr %depth, null, !dbg !254
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !256

if.then:                                          ; preds = %entry
  store i64 16, ptr %depth, align 8, !dbg !257, !tbaa !258
  br label %if.end, !dbg !262

if.end:                                           ; preds = %if.then, %entry
  ret ptr @.str.8, !dbg !263
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local nonnull ptr @GetMagickQuantumRange(ptr noundef writeonly %range) local_unnamed_addr #5 !dbg !264 {
entry:
  call void @llvm.dbg.value(metadata ptr %range, metadata !266, metadata !DIExpression()), !dbg !267
  %cmp.not = icmp eq ptr %range, null, !dbg !268
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !270

if.then:                                          ; preds = %entry
  store i64 65535, ptr %range, align 8, !dbg !271, !tbaa !258
  br label %if.end, !dbg !272

if.end:                                           ; preds = %if.then, %entry
  ret ptr @.str.9, !dbg !273
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local nonnull ptr @GetMagickReleaseDate() local_unnamed_addr #0 !dbg !274 {
entry:
  ret ptr @.str.10, !dbg !275
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetMagickSignature(ptr noundef %nonce) local_unnamed_addr #1 !dbg !276 {
entry:
  call void @llvm.dbg.value(metadata ptr %nonce, metadata !280, metadata !DIExpression()), !dbg !285
  %call = tail call ptr @AcquireStringInfo(i64 noundef 4096) #6, !dbg !286
  call void @llvm.dbg.value(metadata ptr %call, metadata !282, metadata !DIExpression()), !dbg !285
  %call1 = tail call ptr @GetStringInfoDatum(ptr noundef %call) #6, !dbg !287
  call void @llvm.dbg.value(metadata ptr %call1, metadata !281, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 16, metadata !284, metadata !DIExpression()), !dbg !285
  store i32 16, ptr %call1, align 1, !dbg !288
  %add.ptr = getelementptr inbounds i8, ptr %call1, i64 4, !dbg !289
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !281, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 0, metadata !284, metadata !DIExpression()), !dbg !285
  store i32 0, ptr %add.ptr, align 1, !dbg !290
  %add.ptr2 = getelementptr inbounds i8, ptr %call1, i64 8, !dbg !291
  call void @llvm.dbg.value(metadata ptr %add.ptr2, metadata !281, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 2, metadata !284, metadata !DIExpression()), !dbg !285
  store i32 2, ptr %add.ptr2, align 1, !dbg !292
  %add.ptr3 = getelementptr inbounds i8, ptr %call1, i64 12, !dbg !293
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !281, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 1, metadata !284, metadata !DIExpression()), !dbg !285
  store i32 1, ptr %add.ptr3, align 1, !dbg !294
  %add.ptr4 = getelementptr inbounds i8, ptr %call1, i64 16, !dbg !295
  call void @llvm.dbg.value(metadata ptr %add.ptr4, metadata !281, metadata !DIExpression()), !dbg !285
  %call5 = tail call ptr @GetStringInfoDatum(ptr noundef %call) #6, !dbg !296
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr4 to i64, !dbg !297
  %sub.ptr.rhs.cast = ptrtoint ptr %call5 to i64, !dbg !297
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !297
  tail call void @SetStringInfoLength(ptr noundef %call, i64 noundef %sub.ptr.sub) #6, !dbg !298
  %cmp.not = icmp eq ptr %nonce, null, !dbg !299
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !301

if.then:                                          ; preds = %entry
  tail call void @ConcatenateStringInfo(ptr noundef %call, ptr noundef nonnull %nonce) #6, !dbg !302
  br label %if.end, !dbg !302

if.end:                                           ; preds = %if.then, %entry
  %call6 = tail call ptr @GetStringInfoDatum(ptr noundef %call) #6, !dbg !303
  %call7 = tail call i64 @GetStringInfoLength(ptr noundef %call) #6, !dbg !304
  call void @llvm.dbg.value(metadata ptr %call6, metadata !134, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i64 %call7, metadata !135, metadata !DIExpression()), !dbg !305
  %.b.i = load i1, ptr @CRC32.crc_initial, align 4, !dbg !307
  br i1 %.b.i, label %if.end.i, label %for.cond3.preheader.i, !dbg !308

for.cond3.preheader.i:                            ; preds = %if.end, %for.end.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.end.i ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !138, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i64 0, metadata !142, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !141, metadata !DIExpression()), !dbg !309
  %0 = trunc i64 %indvars.iv.i to i32, !dbg !311
  br label %for.body5.i, !dbg !311

for.body5.i:                                      ; preds = %for.body5.i, %for.cond3.preheader.i
  %j.036.i = phi i64 [ 0, %for.cond3.preheader.i ], [ %inc.i, %for.body5.i ]
  %alpha.035.i = phi i32 [ %0, %for.cond3.preheader.i ], [ %spec.select.i, %for.body5.i ]
  call void @llvm.dbg.value(metadata i64 %j.036.i, metadata !142, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i32 %alpha.035.i, metadata !141, metadata !DIExpression()), !dbg !309
  %and.i = and i32 %alpha.035.i, 1, !dbg !313
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !313
  %shr6.i = lshr i32 %alpha.035.i, 1, !dbg !315
  %xor.i = xor i32 %shr6.i, -306674912
  %spec.select.i = select i1 %tobool.not.i, i32 %shr6.i, i32 %xor.i, !dbg !316
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !141, metadata !DIExpression()), !dbg !309
  %inc.i = add nuw nsw i64 %j.036.i, 1, !dbg !317
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !142, metadata !DIExpression()), !dbg !310
  %exitcond.not.i = icmp eq i64 %inc.i, 8, !dbg !318
  br i1 %exitcond.not.i, label %for.end.i, label %for.body5.i, !dbg !311, !llvm.loop !319

for.end.i:                                        ; preds = %for.body5.i
  %arrayidx.i = getelementptr inbounds [256 x i32], ptr @CRC32.crc_xor, i64 0, i64 %indvars.iv.i, !dbg !321
  store i32 %spec.select.i, ptr %arrayidx.i, align 4, !dbg !322, !tbaa !323
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !325
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !138, metadata !DIExpression()), !dbg !309
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next.i, 256, !dbg !326
  br i1 %exitcond42.not.i, label %for.end9.i, label %for.cond3.preheader.i, !dbg !327, !llvm.loop !328

for.end9.i:                                       ; preds = %for.end.i
  store i1 true, ptr @CRC32.crc_initial, align 4, !dbg !330
  br label %if.end.i, !dbg !331

if.end.i:                                         ; preds = %for.end9.i, %if.end
  call void @llvm.dbg.value(metadata i32 -1, metadata !137, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i64 0, metadata !136, metadata !DIExpression()), !dbg !305
  %cmp1138.i = icmp sgt i64 %call7, 0, !dbg !332
  br i1 %cmp1138.i, label %for.body12.i, label %CRC32.exit, !dbg !335

for.body12.i:                                     ; preds = %if.end.i, %for.body12.i
  %crc.040.i = phi i32 [ %xor19.i, %for.body12.i ], [ -1, %if.end.i ]
  %i.039.i = phi i64 [ %inc21.i, %for.body12.i ], [ 0, %if.end.i ]
  call void @llvm.dbg.value(metadata i32 %crc.040.i, metadata !137, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i64 %i.039.i, metadata !136, metadata !DIExpression()), !dbg !305
  %arrayidx13.i = getelementptr inbounds i8, ptr %call6, i64 %i.039.i, !dbg !336
  %1 = load i8, ptr %arrayidx13.i, align 1, !dbg !336, !tbaa !337
  %conv.i = zext i8 %1 to i32, !dbg !336
  %crc.0.masked.i = and i32 %crc.040.i, 255, !dbg !338
  %and15.i = xor i32 %crc.0.masked.i, %conv.i, !dbg !338
  %idxprom16.i = zext i32 %and15.i to i64, !dbg !339
  %arrayidx17.i = getelementptr inbounds [256 x i32], ptr @CRC32.crc_xor, i64 0, i64 %idxprom16.i, !dbg !339
  %2 = load i32, ptr %arrayidx17.i, align 4, !dbg !339, !tbaa !323
  %shr18.i = lshr i32 %crc.040.i, 8, !dbg !340
  %xor19.i = xor i32 %2, %shr18.i, !dbg !341
  call void @llvm.dbg.value(metadata i32 %xor19.i, metadata !137, metadata !DIExpression()), !dbg !305
  %inc21.i = add nuw nsw i64 %i.039.i, 1, !dbg !342
  call void @llvm.dbg.value(metadata i64 %inc21.i, metadata !136, metadata !DIExpression()), !dbg !305
  %exitcond43.not.i = icmp eq i64 %inc21.i, %call7, !dbg !332
  br i1 %exitcond43.not.i, label %for.end22.loopexit.i, label %for.body12.i, !dbg !335, !llvm.loop !343

for.end22.loopexit.i:                             ; preds = %for.body12.i
  %phi.bo.i = xor i32 %xor19.i, -1, !dbg !345
  br label %CRC32.exit, !dbg !345

CRC32.exit:                                       ; preds = %if.end.i, %for.end22.loopexit.i
  %crc.0.lcssa.i = phi i32 [ 0, %if.end.i ], [ %phi.bo.i, %for.end22.loopexit.i ]
  call void @llvm.dbg.value(metadata i32 %crc.0.lcssa.i, metadata !284, metadata !DIExpression()), !dbg !285
  %call9 = tail call ptr @DestroyStringInfo(ptr noundef %call) #6, !dbg !346
  call void @llvm.dbg.value(metadata ptr %call9, metadata !282, metadata !DIExpression()), !dbg !285
  ret i32 %crc.0.lcssa.i, !dbg !347
}

declare !dbg !348 ptr @AcquireStringInfo(i64 noundef) local_unnamed_addr #4

declare !dbg !351 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #4

declare !dbg !354 void @SetStringInfoLength(ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !357 void @ConcatenateStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !360 i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #4

declare !dbg !363 ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local nonnull ptr @GetMagickVersion(ptr noundef writeonly %version) local_unnamed_addr #5 !dbg !366 {
entry:
  call void @llvm.dbg.value(metadata ptr %version, metadata !368, metadata !DIExpression()), !dbg !369
  %cmp.not = icmp eq ptr %version, null, !dbg !370
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !372

if.then:                                          ; preds = %entry
  store i64 1673, ptr %version, align 8, !dbg !373, !tbaa !258
  br label %if.end, !dbg !374

if.end:                                           ; preds = %if.then, %entry
  ret ptr @.str.11, !dbg !375
}

; Function Attrs: nounwind uwtable
define dso_local void @ListMagickVersion(ptr noundef %file) local_unnamed_addr #1 !dbg !376 {
entry:
  call void @llvm.dbg.value(metadata ptr %file, metadata !433, metadata !DIExpression()), !dbg !434
  %call1 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11) #6, !dbg !435
  %call3 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str) #6, !dbg !436
  %call5 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2) #6, !dbg !437
  %call7 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1) #6, !dbg !438
  ret void, !dbg !439
}

declare !dbg !440 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "crc_initial", scope: !2, file: !3, line: 427, type: !146, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "CRC32", scope: !3, file: !3, line: 421, type: !4, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !133)
!3 = !DIFile(filename: "apps/538.imagick_r/src/magick/version.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7667737bc3f7d73537583b0c94628b1a")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !10}
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 46, baseType: !13)
!12 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!13 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !95, globals: !126, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/version.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "7667737bc3f7d73537583b0c94628b1a")
!16 = !{!17, !90}
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 28, baseType: !6, size: 32, elements: !19)
!18 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!20 = !DIEnumerator(name: "UndefinedException", value: 0)
!21 = !DIEnumerator(name: "WarningException", value: 300)
!22 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!23 = !DIEnumerator(name: "TypeWarning", value: 305)
!24 = !DIEnumerator(name: "OptionWarning", value: 310)
!25 = !DIEnumerator(name: "DelegateWarning", value: 315)
!26 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!27 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!28 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!29 = !DIEnumerator(name: "BlobWarning", value: 335)
!30 = !DIEnumerator(name: "StreamWarning", value: 340)
!31 = !DIEnumerator(name: "CacheWarning", value: 345)
!32 = !DIEnumerator(name: "CoderWarning", value: 350)
!33 = !DIEnumerator(name: "FilterWarning", value: 352)
!34 = !DIEnumerator(name: "ModuleWarning", value: 355)
!35 = !DIEnumerator(name: "DrawWarning", value: 360)
!36 = !DIEnumerator(name: "ImageWarning", value: 365)
!37 = !DIEnumerator(name: "WandWarning", value: 370)
!38 = !DIEnumerator(name: "RandomWarning", value: 375)
!39 = !DIEnumerator(name: "XServerWarning", value: 380)
!40 = !DIEnumerator(name: "MonitorWarning", value: 385)
!41 = !DIEnumerator(name: "RegistryWarning", value: 390)
!42 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!43 = !DIEnumerator(name: "PolicyWarning", value: 399)
!44 = !DIEnumerator(name: "ErrorException", value: 400)
!45 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!46 = !DIEnumerator(name: "TypeError", value: 405)
!47 = !DIEnumerator(name: "OptionError", value: 410)
!48 = !DIEnumerator(name: "DelegateError", value: 415)
!49 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!50 = !DIEnumerator(name: "CorruptImageError", value: 425)
!51 = !DIEnumerator(name: "FileOpenError", value: 430)
!52 = !DIEnumerator(name: "BlobError", value: 435)
!53 = !DIEnumerator(name: "StreamError", value: 440)
!54 = !DIEnumerator(name: "CacheError", value: 445)
!55 = !DIEnumerator(name: "CoderError", value: 450)
!56 = !DIEnumerator(name: "FilterError", value: 452)
!57 = !DIEnumerator(name: "ModuleError", value: 455)
!58 = !DIEnumerator(name: "DrawError", value: 460)
!59 = !DIEnumerator(name: "ImageError", value: 465)
!60 = !DIEnumerator(name: "WandError", value: 470)
!61 = !DIEnumerator(name: "RandomError", value: 475)
!62 = !DIEnumerator(name: "XServerError", value: 480)
!63 = !DIEnumerator(name: "MonitorError", value: 485)
!64 = !DIEnumerator(name: "RegistryError", value: 490)
!65 = !DIEnumerator(name: "ConfigureError", value: 495)
!66 = !DIEnumerator(name: "PolicyError", value: 499)
!67 = !DIEnumerator(name: "FatalErrorException", value: 700)
!68 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!69 = !DIEnumerator(name: "TypeFatalError", value: 705)
!70 = !DIEnumerator(name: "OptionFatalError", value: 710)
!71 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!72 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!73 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!74 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!75 = !DIEnumerator(name: "BlobFatalError", value: 735)
!76 = !DIEnumerator(name: "StreamFatalError", value: 740)
!77 = !DIEnumerator(name: "CacheFatalError", value: 745)
!78 = !DIEnumerator(name: "CoderFatalError", value: 750)
!79 = !DIEnumerator(name: "FilterFatalError", value: 752)
!80 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!81 = !DIEnumerator(name: "DrawFatalError", value: 760)
!82 = !DIEnumerator(name: "ImageFatalError", value: 765)
!83 = !DIEnumerator(name: "WandFatalError", value: 770)
!84 = !DIEnumerator(name: "RandomFatalError", value: 775)
!85 = !DIEnumerator(name: "XServerFatalError", value: 780)
!86 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!87 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!88 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!89 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !91, line: 211, baseType: !6, size: 32, elements: !92)
!91 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!92 = !{!93, !94}
!93 = !DIEnumerator(name: "MagickFalse", value: 0)
!94 = !DIEnumerator(name: "MagickTrue", value: 1)
!95 = !{!96, !100, !101, !104, !11, !105, !107, !121}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinkedListInfo", file: !98, line: 34, baseType: !99)
!98 = !DIFile(filename: "apps/538.imagick_r/src/magick/hashmap.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "683c2bd26601474466c188c023adadf2")
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LinkedListInfo", file: !98, line: 33, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !91, line: 93, baseType: !106)
!106 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !110, line: 40, baseType: !111)
!110 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !110, line: 29, size: 32960, elements: !112)
!112 = !{!113, !117, !119, !120}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !111, file: !110, line: 32, baseType: !114, size: 32768)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 32768, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 4096)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !111, file: !110, line: 35, baseType: !118, size: 64, offset: 32768)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !111, file: !110, line: 38, baseType: !11, size: 64, offset: 32832)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !111, file: !110, line: 39, baseType: !11, size: 64, offset: 32896)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !122, line: 77, baseType: !123)
!122 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !124, line: 193, baseType: !125)
!124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!125 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!126 = !{!127, !128}
!127 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "crc_xor", scope: !2, file: !3, line: 430, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8192, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 256)
!133 = !{!134, !135, !136, !137, !138, !141, !142}
!134 = !DILocalVariable(name: "message", arg: 1, scope: !2, file: !3, line: 421, type: !7)
!135 = !DILocalVariable(name: "length", arg: 2, scope: !2, file: !3, line: 421, type: !10)
!136 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 424, type: !121)
!137 = !DILocalVariable(name: "crc", scope: !2, file: !3, line: 433, type: !6)
!138 = !DILocalVariable(name: "i", scope: !139, file: !3, line: 441, type: !6)
!139 = distinct !DILexicalBlock(scope: !140, file: !3, line: 439, column: 5)
!140 = distinct !DILexicalBlock(scope: !2, file: !3, line: 438, column: 7)
!141 = !DILocalVariable(name: "alpha", scope: !139, file: !3, line: 444, type: !6)
!142 = !DILocalVariable(name: "j", scope: !143, file: !3, line: 449, type: !121)
!143 = distinct !DILexicalBlock(scope: !144, file: !3, line: 447, column: 7)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 446, column: 7)
!145 = distinct !DILexicalBlock(scope: !139, file: !3, line: 446, column: 7)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !91, line: 215, baseType: !90)
!147 = !{i32 7, !"Dwarf Version", i32 5}
!148 = !{i32 2, !"Debug Info Version", i32 3}
!149 = !{i32 1, !"wchar_size", i32 4}
!150 = !{i32 7, !"PIC Level", i32 2}
!151 = !{i32 7, !"PIE Level", i32 2}
!152 = !{i32 7, !"uwtable", i32 2}
!153 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!154 = distinct !DISubprogram(name: "GetMagickCopyright", scope: !3, file: !3, line: 74, type: !155, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !157)
!155 = !DISubroutineType(types: !156)
!156 = !{!101}
!157 = !{}
!158 = !DILocation(line: 76, column: 3, scope: !154)
!159 = distinct !DISubprogram(name: "GetMagickDelegates", scope: !3, file: !3, line: 99, type: !155, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !157)
!160 = !DILocation(line: 101, column: 3, scope: !159)
!161 = distinct !DISubprogram(name: "GetMagickFeatures", scope: !3, file: !3, line: 218, type: !155, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !157)
!162 = !DILocation(line: 220, column: 3, scope: !161)
!163 = distinct !DISubprogram(name: "GetMagickHomeURL", scope: !3, file: !3, line: 257, type: !164, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !167)
!164 = !DISubroutineType(types: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!167 = !{!168, !169, !170, !189}
!168 = !DILocalVariable(name: "path", scope: !163, file: !3, line: 260, type: !114)
!169 = !DILocalVariable(name: "element", scope: !163, file: !3, line: 263, type: !101)
!170 = !DILocalVariable(name: "exception", scope: !163, file: !3, line: 266, type: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !91, line: 219, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !18, line: 102, size: 448, elements: !174)
!174 = !{!175, !177, !179, !180, !181, !182, !183, !188}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !173, file: !18, line: 105, baseType: !176, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !18, line: 100, baseType: !17)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !173, file: !18, line: 108, baseType: !178, size: 32, offset: 32)
!178 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !173, file: !18, line: 111, baseType: !166, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !173, file: !18, line: 112, baseType: !166, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !173, file: !18, line: 115, baseType: !100, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !173, file: !18, line: 118, baseType: !146, size: 32, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !173, file: !18, line: 121, baseType: !184, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !186, line: 26, baseType: !187)
!186 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!187 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !186, line: 25, flags: DIFlagFwdDecl)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !173, file: !18, line: 124, baseType: !11, size: 64, offset: 384)
!189 = !DILocalVariable(name: "paths", scope: !163, file: !3, line: 269, type: !96)
!190 = !DILocation(line: 259, column: 3, scope: !163)
!191 = !DILocation(line: 260, column: 5, scope: !163)
!192 = !DILocation(line: 271, column: 13, scope: !163)
!193 = !DILocation(line: 0, scope: !163)
!194 = !DILocation(line: 272, column: 9, scope: !163)
!195 = !DILocation(line: 273, column: 13, scope: !163)
!196 = !DILocation(line: 274, column: 13, scope: !197)
!197 = distinct !DILexicalBlock(scope: !163, file: !3, line: 274, column: 7)
!198 = !DILocation(line: 274, column: 7, scope: !163)
!199 = !DILocation(line: 275, column: 12, scope: !197)
!200 = !DILocation(line: 275, column: 5, scope: !197)
!201 = !DILocation(line: 276, column: 26, scope: !163)
!202 = !DILocation(line: 277, column: 18, scope: !163)
!203 = !DILocation(line: 277, column: 3, scope: !163)
!204 = !DILocation(line: 279, column: 12, scope: !205)
!205 = distinct !DILexicalBlock(scope: !163, file: !3, line: 278, column: 3)
!206 = !DILocation(line: 281, column: 9, scope: !207)
!207 = distinct !DILexicalBlock(scope: !205, file: !3, line: 281, column: 9)
!208 = !DILocation(line: 281, column: 32, scope: !207)
!209 = !DILocation(line: 281, column: 9, scope: !205)
!210 = !DILocation(line: 282, column: 14, scope: !207)
!211 = !DILocation(line: 282, column: 7, scope: !207)
!212 = !DILocation(line: 283, column: 28, scope: !205)
!213 = distinct !{!213, !203, !214, !215, !216}
!214 = !DILocation(line: 284, column: 3, scope: !163)
!215 = !{!"llvm.loop.mustprogress"}
!216 = !{!"llvm.loop.unroll.disable"}
!217 = !DILocation(line: 285, column: 10, scope: !163)
!218 = !DILocation(line: 285, column: 3, scope: !163)
!219 = !DILocation(line: 286, column: 1, scope: !163)
!220 = !DISubprogram(name: "AcquireExceptionInfo", scope: !18, file: !18, line: 146, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !157)
!221 = !DISubroutineType(types: !222)
!222 = !{!171}
!223 = !DISubprogram(name: "GetConfigurePaths", scope: !224, file: !224, line: 59, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !157)
!224 = !DIFile(filename: "apps/538.imagick_r/src/magick/configure.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "509000215663377a353fdb892d1d0c76")
!225 = !DISubroutineType(types: !226)
!226 = !{!96, !101, !171}
!227 = !DISubprogram(name: "DestroyExceptionInfo", scope: !18, file: !18, line: 148, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !157)
!228 = !DISubroutineType(types: !229)
!229 = !{!171, !171}
!230 = !DISubprogram(name: "ConstantString", scope: !110, file: !110, line: 45, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !157)
!231 = !DISubroutineType(types: !232)
!232 = !{!166, !101}
!233 = !DISubprogram(name: "GetNextValueInLinkedList", scope: !98, file: !98, line: 69, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !157)
!234 = !DISubroutineType(types: !235)
!235 = !{!100, !96}
!236 = !DISubprogram(name: "FormatLocaleString", scope: !237, file: !237, line: 71, type: !238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !157)
!237 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!238 = !DISubroutineType(types: !239)
!239 = !{!121, !240, !10, !241, null}
!240 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !166)
!241 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!242 = !DISubprogram(name: "IsPathAccessible", scope: !243, file: !243, line: 53, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !157)
!243 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!244 = !DISubroutineType(types: !245)
!245 = !{!146, !101}
!246 = distinct !DISubprogram(name: "GetMagickPackageName", scope: !3, file: !3, line: 308, type: !155, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !157)
!247 = !DILocation(line: 310, column: 3, scope: !246)
!248 = distinct !DISubprogram(name: "GetMagickQuantumDepth", scope: !3, file: !3, line: 335, type: !249, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !251)
!249 = !DISubroutineType(types: !250)
!250 = !{!101, !104}
!251 = !{!252}
!252 = !DILocalVariable(name: "depth", arg: 1, scope: !248, file: !3, line: 335, type: !104)
!253 = !DILocation(line: 0, scope: !248)
!254 = !DILocation(line: 337, column: 13, scope: !255)
!255 = distinct !DILexicalBlock(scope: !248, file: !3, line: 337, column: 7)
!256 = !DILocation(line: 337, column: 7, scope: !248)
!257 = !DILocation(line: 338, column: 11, scope: !255)
!258 = !{!259, !259, i64 0}
!259 = !{!"long", !260, i64 0}
!260 = !{!"omnipotent char", !261, i64 0}
!261 = !{!"Simple C/C++ TBAA"}
!262 = !DILocation(line: 338, column: 5, scope: !255)
!263 = !DILocation(line: 339, column: 3, scope: !248)
!264 = distinct !DISubprogram(name: "GetMagickQuantumRange", scope: !3, file: !3, line: 364, type: !249, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !265)
!265 = !{!266}
!266 = !DILocalVariable(name: "range", arg: 1, scope: !264, file: !3, line: 364, type: !104)
!267 = !DILocation(line: 0, scope: !264)
!268 = !DILocation(line: 366, column: 13, scope: !269)
!269 = distinct !DILexicalBlock(scope: !264, file: !3, line: 366, column: 7)
!270 = !DILocation(line: 366, column: 7, scope: !264)
!271 = !DILocation(line: 367, column: 11, scope: !269)
!272 = !DILocation(line: 367, column: 5, scope: !269)
!273 = !DILocation(line: 368, column: 3, scope: !264)
!274 = distinct !DISubprogram(name: "GetMagickReleaseDate", scope: !3, file: !3, line: 391, type: !155, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !157)
!275 = !DILocation(line: 393, column: 3, scope: !274)
!276 = distinct !DISubprogram(name: "GetMagickSignature", scope: !3, file: !3, line: 464, type: !277, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !279)
!277 = !DISubroutineType(types: !278)
!278 = !{!6, !107}
!279 = !{!280, !281, !282, !284}
!280 = !DILocalVariable(name: "nonce", arg: 1, scope: !276, file: !3, line: 464, type: !107)
!281 = !DILocalVariable(name: "p", scope: !276, file: !3, line: 467, type: !118)
!282 = !DILocalVariable(name: "version", scope: !276, file: !3, line: 470, type: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!284 = !DILocalVariable(name: "signature", scope: !276, file: !3, line: 473, type: !6)
!285 = !DILocation(line: 0, scope: !276)
!286 = !DILocation(line: 475, column: 11, scope: !276)
!287 = !DILocation(line: 476, column: 5, scope: !276)
!288 = !DILocation(line: 478, column: 10, scope: !276)
!289 = !DILocation(line: 479, column: 4, scope: !276)
!290 = !DILocation(line: 481, column: 10, scope: !276)
!291 = !DILocation(line: 482, column: 4, scope: !276)
!292 = !DILocation(line: 484, column: 10, scope: !276)
!293 = !DILocation(line: 485, column: 4, scope: !276)
!294 = !DILocation(line: 487, column: 10, scope: !276)
!295 = !DILocation(line: 488, column: 4, scope: !276)
!296 = !DILocation(line: 489, column: 33, scope: !276)
!297 = !DILocation(line: 489, column: 32, scope: !276)
!298 = !DILocation(line: 489, column: 3, scope: !276)
!299 = !DILocation(line: 490, column: 13, scope: !300)
!300 = distinct !DILexicalBlock(scope: !276, file: !3, line: 490, column: 7)
!301 = !DILocation(line: 490, column: 7, scope: !276)
!302 = !DILocation(line: 491, column: 5, scope: !300)
!303 = !DILocation(line: 492, column: 19, scope: !276)
!304 = !DILocation(line: 492, column: 47, scope: !276)
!305 = !DILocation(line: 0, scope: !2, inlinedAt: !306)
!306 = distinct !DILocation(line: 492, column: 13, scope: !276)
!307 = !DILocation(line: 438, column: 7, scope: !140, inlinedAt: !306)
!308 = !DILocation(line: 438, column: 7, scope: !2, inlinedAt: !306)
!309 = !DILocation(line: 0, scope: !139, inlinedAt: !306)
!310 = !DILocation(line: 0, scope: !143, inlinedAt: !306)
!311 = !DILocation(line: 452, column: 9, scope: !312, inlinedAt: !306)
!312 = distinct !DILexicalBlock(scope: !143, file: !3, line: 452, column: 9)
!313 = !DILocation(line: 453, column: 24, scope: !314, inlinedAt: !306)
!314 = distinct !DILexicalBlock(scope: !312, file: !3, line: 452, column: 9)
!315 = !DILocation(line: 0, scope: !314, inlinedAt: !306)
!316 = !DILocation(line: 453, column: 17, scope: !314, inlinedAt: !306)
!317 = !DILocation(line: 452, column: 27, scope: !314, inlinedAt: !306)
!318 = !DILocation(line: 452, column: 21, scope: !314, inlinedAt: !306)
!319 = distinct !{!319, !311, !320, !215, !216}
!320 = !DILocation(line: 453, column: 75, scope: !312, inlinedAt: !306)
!321 = !DILocation(line: 454, column: 9, scope: !143, inlinedAt: !306)
!322 = !DILocation(line: 454, column: 19, scope: !143, inlinedAt: !306)
!323 = !{!324, !324, i64 0}
!324 = !{!"int", !260, i64 0}
!325 = !DILocation(line: 446, column: 27, scope: !144, inlinedAt: !306)
!326 = !DILocation(line: 446, column: 19, scope: !144, inlinedAt: !306)
!327 = !DILocation(line: 446, column: 7, scope: !145, inlinedAt: !306)
!328 = distinct !{!328, !327, !329, !215, !216}
!329 = !DILocation(line: 455, column: 7, scope: !145, inlinedAt: !306)
!330 = !DILocation(line: 456, column: 18, scope: !139, inlinedAt: !306)
!331 = !DILocation(line: 457, column: 5, scope: !139, inlinedAt: !306)
!332 = !DILocation(line: 459, column: 15, scope: !333, inlinedAt: !306)
!333 = distinct !DILexicalBlock(scope: !334, file: !3, line: 459, column: 3)
!334 = distinct !DILexicalBlock(scope: !2, file: !3, line: 459, column: 3)
!335 = !DILocation(line: 459, column: 3, scope: !334, inlinedAt: !306)
!336 = !DILocation(line: 460, column: 24, scope: !333, inlinedAt: !306)
!337 = !{!260, !260, i64 0}
!338 = !DILocation(line: 460, column: 36, scope: !333, inlinedAt: !306)
!339 = !DILocation(line: 460, column: 9, scope: !333, inlinedAt: !306)
!340 = !DILocation(line: 460, column: 51, scope: !333, inlinedAt: !306)
!341 = !DILocation(line: 460, column: 44, scope: !333, inlinedAt: !306)
!342 = !DILocation(line: 459, column: 36, scope: !333, inlinedAt: !306)
!343 = distinct !{!343, !335, !344, !215, !216}
!344 = !DILocation(line: 460, column: 55, scope: !334, inlinedAt: !306)
!345 = !DILocation(line: 461, column: 14, scope: !2, inlinedAt: !306)
!346 = !DILocation(line: 493, column: 11, scope: !276)
!347 = !DILocation(line: 494, column: 3, scope: !276)
!348 = !DISubprogram(name: "AcquireStringInfo", scope: !110, file: !110, line: 87, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !157)
!349 = !DISubroutineType(types: !350)
!350 = !{!283, !10}
!351 = !DISubprogram(name: "GetStringInfoDatum", scope: !110, file: !110, line: 97, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !157)
!352 = !DISubroutineType(types: !353)
!353 = !{!118, !107}
!354 = !DISubprogram(name: "SetStringInfoLength", scope: !110, file: !110, line: 108, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !157)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !283, !10}
!357 = !DISubprogram(name: "ConcatenateStringInfo", scope: !110, file: !110, line: 100, type: !358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !157)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !283, !107}
!360 = !DISubprogram(name: "GetStringInfoLength", scope: !110, file: !110, line: 80, type: !361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !157)
!361 = !DISubroutineType(types: !362)
!362 = !{!11, !107}
!363 = !DISubprogram(name: "DestroyStringInfo", scope: !110, file: !110, line: 91, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !157)
!364 = !DISubroutineType(types: !365)
!365 = !{!283, !283}
!366 = distinct !DISubprogram(name: "GetMagickVersion", scope: !3, file: !3, line: 520, type: !249, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !367)
!367 = !{!368}
!368 = !DILocalVariable(name: "version", arg: 1, scope: !366, file: !3, line: 520, type: !104)
!369 = !DILocation(line: 0, scope: !366)
!370 = !DILocation(line: 522, column: 15, scope: !371)
!371 = distinct !DILexicalBlock(scope: !366, file: !3, line: 522, column: 7)
!372 = !DILocation(line: 522, column: 7, scope: !366)
!373 = !DILocation(line: 523, column: 13, scope: !371)
!374 = !DILocation(line: 523, column: 5, scope: !371)
!375 = !DILocation(line: 524, column: 3, scope: !366)
!376 = distinct !DISubprogram(name: "ListMagickVersion", scope: !3, file: !3, line: 551, type: !377, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !432)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !381, line: 7, baseType: !382)
!381 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !383, line: 49, size: 1728, elements: !384)
!383 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !400, !402, !403, !404, !406, !407, !409, !413, !416, !418, !421, !424, !425, !426, !427, !428}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !382, file: !383, line: 51, baseType: !178, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !382, file: !383, line: 54, baseType: !166, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !382, file: !383, line: 55, baseType: !166, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !382, file: !383, line: 56, baseType: !166, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !382, file: !383, line: 57, baseType: !166, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !382, file: !383, line: 58, baseType: !166, size: 64, offset: 320)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !382, file: !383, line: 59, baseType: !166, size: 64, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !382, file: !383, line: 60, baseType: !166, size: 64, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !382, file: !383, line: 61, baseType: !166, size: 64, offset: 512)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !382, file: !383, line: 64, baseType: !166, size: 64, offset: 576)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !382, file: !383, line: 65, baseType: !166, size: 64, offset: 640)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !382, file: !383, line: 66, baseType: !166, size: 64, offset: 704)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !382, file: !383, line: 68, baseType: !398, size: 64, offset: 768)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !383, line: 36, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !382, file: !383, line: 70, baseType: !401, size: 64, offset: 832)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !382, file: !383, line: 72, baseType: !178, size: 32, offset: 896)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !382, file: !383, line: 73, baseType: !178, size: 32, offset: 928)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !382, file: !383, line: 74, baseType: !405, size: 64, offset: 960)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !124, line: 152, baseType: !125)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !382, file: !383, line: 77, baseType: !106, size: 16, offset: 1024)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !382, file: !383, line: 78, baseType: !408, size: 8, offset: 1040)
!408 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !382, file: !383, line: 79, baseType: !410, size: 8, offset: 1048)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 8, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 1)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !382, file: !383, line: 81, baseType: !414, size: 64, offset: 1088)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !383, line: 43, baseType: null)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !382, file: !383, line: 89, baseType: !417, size: 64, offset: 1152)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !124, line: 153, baseType: !125)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !382, file: !383, line: 91, baseType: !419, size: 64, offset: 1216)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !383, line: 37, flags: DIFlagFwdDecl)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !382, file: !383, line: 92, baseType: !422, size: 64, offset: 1280)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !383, line: 38, flags: DIFlagFwdDecl)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !382, file: !383, line: 93, baseType: !401, size: 64, offset: 1344)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !382, file: !383, line: 94, baseType: !100, size: 64, offset: 1408)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !382, file: !383, line: 95, baseType: !11, size: 64, offset: 1472)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !382, file: !383, line: 96, baseType: !178, size: 32, offset: 1536)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !382, file: !383, line: 98, baseType: !429, size: 160, offset: 1568)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 160, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 20)
!432 = !{!433}
!433 = !DILocalVariable(name: "file", arg: 1, scope: !376, file: !3, line: 551, type: !379)
!434 = !DILocation(line: 0, scope: !376)
!435 = !DILocation(line: 553, column: 10, scope: !376)
!436 = !DILocation(line: 555, column: 10, scope: !376)
!437 = !DILocation(line: 556, column: 10, scope: !376)
!438 = !DILocation(line: 557, column: 10, scope: !376)
!439 = !DILocation(line: 558, column: 1, scope: !376)
!440 = !DISubprogram(name: "FormatLocaleFile", scope: !237, file: !237, line: 67, type: !441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !157)
!441 = !DISubroutineType(types: !442)
!442 = !{!121, !379, !241, null}
