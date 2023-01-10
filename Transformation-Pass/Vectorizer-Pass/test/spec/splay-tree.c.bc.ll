; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/splay-tree.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/splay-tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._SplayTreeInfo = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i32, ptr, i64 }
%struct._NodeInfo = type { ptr, ptr, ptr, ptr }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }

@.str = private unnamed_addr constant [89 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/splay-tree.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @AddValueToSplayTree(ptr noundef %splay_tree, ptr noundef %key, ptr noundef %value) local_unnamed_addr #0 !dbg !228 {
entry:
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !232, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %key, metadata !233, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %value, metadata !234, metadata !DIExpression()), !dbg !237
  %semaphore = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 9, !dbg !238
  %0 = load ptr, ptr %semaphore, align 8, !dbg !238, !tbaa !239
  tail call void @LockSemaphoreInfo(ptr noundef %0) #11, !dbg !245
  tail call fastcc void @SplaySplayTree(ptr noundef %splay_tree, ptr noundef %key), !dbg !246
  call void @llvm.dbg.value(metadata i32 0, metadata !235, metadata !DIExpression()), !dbg !237
  %1 = load ptr, ptr %splay_tree, align 8, !dbg !247, !tbaa !249
  %cmp.not = icmp eq ptr %1, null, !dbg !250
  br i1 %cmp.not, label %if.end47, label %if.then, !dbg !251

if.then:                                          ; preds = %entry
  %compare1 = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 1, !dbg !252
  %2 = load ptr, ptr %compare1, align 8, !dbg !252, !tbaa !255
  %cmp2.not = icmp eq ptr %2, null, !dbg !256
  %3 = load ptr, ptr %1, align 8, !dbg !257, !tbaa !258
  br i1 %cmp2.not, label %if.else, label %if.then3, !dbg !260

if.then3:                                         ; preds = %if.then
  %call = tail call i32 %2(ptr noundef %3, ptr noundef %key) #11, !dbg !261
  call void @llvm.dbg.value(metadata i32 %call, metadata !235, metadata !DIExpression()), !dbg !237
  br label %if.end, !dbg !262

if.else:                                          ; preds = %if.then
  %cmp9 = icmp ugt ptr %3, %key, !dbg !263
  br i1 %cmp9, label %if.end47, label %cond.false, !dbg !264

cond.false:                                       ; preds = %if.else
  %cmp12 = icmp ult ptr %3, %key, !dbg !265
  %cond = sext i1 %cmp12 to i32, !dbg !266
  br label %if.end, !dbg !264

if.end:                                           ; preds = %cond.false, %if.then3
  %compare.0 = phi i32 [ %call, %if.then3 ], [ %cond, %cond.false ], !dbg !257
  call void @llvm.dbg.value(metadata i32 %compare.0, metadata !235, metadata !DIExpression()), !dbg !237
  %cmp14 = icmp eq i32 %compare.0, 0, !dbg !267
  br i1 %cmp14, label %if.then15, label %if.end47, !dbg !269

if.then15:                                        ; preds = %if.end
  %relinquish_value = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 3, !dbg !270
  %4 = load ptr, ptr %relinquish_value, align 8, !dbg !270, !tbaa !273
  %cmp16.not = icmp eq ptr %4, null, !dbg !274
  br i1 %cmp16.not, label %if.end27, label %land.lhs.true, !dbg !275

land.lhs.true:                                    ; preds = %if.then15
  %5 = load ptr, ptr %splay_tree, align 8, !dbg !276, !tbaa !249
  %value18 = getelementptr inbounds %struct._NodeInfo, ptr %5, i64 0, i32 1, !dbg !277
  %6 = load ptr, ptr %value18, align 8, !dbg !277, !tbaa !278
  %cmp19.not = icmp eq ptr %6, null, !dbg !279
  br i1 %cmp19.not, label %if.end27, label %if.then20, !dbg !280

if.then20:                                        ; preds = %land.lhs.true
  %call24 = tail call ptr %4(ptr noundef nonnull %6) #11, !dbg !281
  %7 = load ptr, ptr %splay_tree, align 8, !dbg !282, !tbaa !249
  %value26 = getelementptr inbounds %struct._NodeInfo, ptr %7, i64 0, i32 1, !dbg !283
  store ptr %call24, ptr %value26, align 8, !dbg !284, !tbaa !278
  br label %if.end27, !dbg !285

if.end27:                                         ; preds = %if.then20, %land.lhs.true, %if.then15
  %relinquish_key = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 2, !dbg !286
  %8 = load ptr, ptr %relinquish_key, align 8, !dbg !286, !tbaa !288
  %cmp28.not = icmp eq ptr %8, null, !dbg !289
  %.pre = load ptr, ptr %splay_tree, align 8, !dbg !290, !tbaa !249
  br i1 %cmp28.not, label %if.end40, label %land.lhs.true29, !dbg !291

land.lhs.true29:                                  ; preds = %if.end27
  %9 = load ptr, ptr %.pre, align 8, !dbg !292, !tbaa !258
  %cmp32.not = icmp eq ptr %9, null, !dbg !293
  br i1 %cmp32.not, label %if.end40, label %if.then33, !dbg !294

if.then33:                                        ; preds = %land.lhs.true29
  %call37 = tail call ptr %8(ptr noundef nonnull %9) #11, !dbg !295
  %10 = load ptr, ptr %splay_tree, align 8, !dbg !296, !tbaa !249
  store ptr %call37, ptr %10, align 8, !dbg !297, !tbaa !258
  br label %if.end40, !dbg !298

if.end40:                                         ; preds = %if.end27, %if.then33, %land.lhs.true29
  %11 = phi ptr [ %10, %if.then33 ], [ %.pre, %land.lhs.true29 ], [ %.pre, %if.end27 ], !dbg !299
  store ptr %key, ptr %11, align 8, !dbg !300, !tbaa !258
  %value44 = getelementptr inbounds %struct._NodeInfo, ptr %11, i64 0, i32 1, !dbg !301
  store ptr %value, ptr %value44, align 8, !dbg !302, !tbaa !278
  br label %cleanup, !dbg !303

if.end47:                                         ; preds = %if.else, %if.end, %entry
  %compare.1 = phi i32 [ %compare.0, %if.end ], [ 0, %entry ], [ 1, %if.else ], !dbg !237
  call void @llvm.dbg.value(metadata i32 %compare.1, metadata !235, metadata !DIExpression()), !dbg !237
  %call48 = tail call ptr @AcquireMagickMemory(i64 noundef 32) #12, !dbg !304
  call void @llvm.dbg.value(metadata ptr %call48, metadata !236, metadata !DIExpression()), !dbg !237
  %cmp49 = icmp eq ptr %call48, null, !dbg !305
  br i1 %cmp49, label %cleanup, label %if.end52, !dbg !307

if.end52:                                         ; preds = %if.end47
  store ptr %key, ptr %call48, align 8, !dbg !308, !tbaa !258
  %value54 = getelementptr inbounds %struct._NodeInfo, ptr %call48, i64 0, i32 1, !dbg !309
  store ptr %value, ptr %value54, align 8, !dbg !310, !tbaa !278
  %12 = load ptr, ptr %splay_tree, align 8, !dbg !311, !tbaa !249
  %cmp56 = icmp eq ptr %12, null, !dbg !313
  br i1 %cmp56, label %if.then57, label %if.else58, !dbg !314

if.then57:                                        ; preds = %if.end52
  %left = getelementptr inbounds %struct._NodeInfo, ptr %call48, i64 0, i32 2, !dbg !315
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %left, i8 0, i64 16, i1 false), !dbg !317
  br label %if.end77, !dbg !318

if.else58:                                        ; preds = %if.end52
  %cmp59 = icmp slt i32 %compare.1, 0, !dbg !319
  br i1 %cmp59, label %if.then60, label %if.else68, !dbg !321

if.then60:                                        ; preds = %if.else58
  %left62 = getelementptr inbounds %struct._NodeInfo, ptr %call48, i64 0, i32 2, !dbg !322
  store ptr %12, ptr %left62, align 8, !dbg !324, !tbaa !325
  %right64 = getelementptr inbounds %struct._NodeInfo, ptr %12, i64 0, i32 3, !dbg !326
  %13 = load ptr, ptr %right64, align 8, !dbg !326, !tbaa !327
  %right65 = getelementptr inbounds %struct._NodeInfo, ptr %call48, i64 0, i32 3, !dbg !328
  store ptr %13, ptr %right65, align 8, !dbg !329, !tbaa !327
  store ptr null, ptr %right64, align 8, !dbg !330, !tbaa !327
  br label %if.end77, !dbg !331

if.else68:                                        ; preds = %if.else58
  %right70 = getelementptr inbounds %struct._NodeInfo, ptr %call48, i64 0, i32 3, !dbg !332
  store ptr %12, ptr %right70, align 8, !dbg !334, !tbaa !327
  %left72 = getelementptr inbounds %struct._NodeInfo, ptr %12, i64 0, i32 2, !dbg !335
  %14 = load ptr, ptr %left72, align 8, !dbg !335, !tbaa !325
  %left73 = getelementptr inbounds %struct._NodeInfo, ptr %call48, i64 0, i32 2, !dbg !336
  store ptr %14, ptr %left73, align 8, !dbg !337, !tbaa !325
  store ptr null, ptr %left72, align 8, !dbg !338, !tbaa !325
  br label %if.end77

if.end77:                                         ; preds = %if.then60, %if.else68, %if.then57
  store ptr %call48, ptr %splay_tree, align 8, !dbg !339, !tbaa !249
  %key79 = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 5, !dbg !340
  store ptr null, ptr %key79, align 8, !dbg !341, !tbaa !342
  %nodes = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 7, !dbg !343
  %15 = load i64, ptr %nodes, align 8, !dbg !344, !tbaa !345
  %inc = add i64 %15, 1, !dbg !344
  store i64 %inc, ptr %nodes, align 8, !dbg !344, !tbaa !345
  br label %cleanup, !dbg !346

cleanup:                                          ; preds = %if.end47, %if.end77, %if.end40
  %retval.0 = phi i32 [ 1, %if.end40 ], [ 1, %if.end77 ], [ 0, %if.end47 ], !dbg !237
  %16 = load ptr, ptr %semaphore, align 8, !dbg !237, !tbaa !239
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #11, !dbg !237
  ret i32 %retval.0, !dbg !347
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !348 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @SplaySplayTree(ptr noundef %splay_tree, ptr noundef %key) unnamed_addr #0 !dbg !352 {
entry:
  %exception.i.i = alloca %struct._ExceptionInfo, align 8
  %exception.i = alloca %struct._ExceptionInfo, align 8
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !356, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata ptr %key, metadata !357, metadata !DIExpression()), !dbg !367
  %0 = load ptr, ptr %splay_tree, align 8, !dbg !368, !tbaa !249
  %cmp = icmp eq ptr %0, null, !dbg !370
  br i1 %cmp, label %return, label %if.end, !dbg !371

if.end:                                           ; preds = %entry
  %key1 = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 5, !dbg !372
  %1 = load ptr, ptr %key1, align 8, !dbg !372, !tbaa !342
  %cmp2.not = icmp eq ptr %1, null, !dbg !373
  br i1 %cmp2.not, label %if.end19, label %if.then3, !dbg !374

if.then3:                                         ; preds = %if.end
  %compare4 = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 1, !dbg !375
  %2 = load ptr, ptr %compare4, align 8, !dbg !375, !tbaa !255
  %cmp5.not = icmp eq ptr %2, null, !dbg !377
  br i1 %cmp5.not, label %if.else, label %if.then6, !dbg !378

if.then6:                                         ; preds = %if.then3
  %3 = load ptr, ptr %0, align 8, !dbg !379, !tbaa !258
  %call = tail call i32 %2(ptr noundef %3, ptr noundef %key) #11, !dbg !380
  call void @llvm.dbg.value(metadata i32 %call, metadata !358, metadata !DIExpression()), !dbg !381
  br label %if.end15, !dbg !382

if.else:                                          ; preds = %if.then3
  %cmp11 = icmp ugt ptr %1, %key, !dbg !383
  br i1 %cmp11, label %if.end19, label %cond.false, !dbg !384

cond.false:                                       ; preds = %if.else
  %cmp13 = icmp ult ptr %1, %key, !dbg !385
  %cond = sext i1 %cmp13 to i32, !dbg !386
  br label %if.end15, !dbg !384

if.end15:                                         ; preds = %cond.false, %if.then6
  %compare.0 = phi i32 [ %call, %if.then6 ], [ %cond, %cond.false ], !dbg !387
  call void @llvm.dbg.value(metadata i32 %compare.0, metadata !358, metadata !DIExpression()), !dbg !381
  %cmp16.not = icmp eq i32 %compare.0, 0, !dbg !388
  br i1 %cmp16.not, label %return, label %if.end19

if.end19:                                         ; preds = %if.else, %if.end15, %if.end
  %call21 = tail call fastcc ptr @Splay(ptr noundef nonnull %splay_tree, i64 noundef 0, ptr noundef %key, ptr noundef nonnull %splay_tree, ptr noundef null, ptr noundef null), !dbg !390
  %balance = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 4, !dbg !391
  %4 = load i32, ptr %balance, align 8, !dbg !391, !tbaa !392
  %cmp22.not = icmp eq i32 %4, 0, !dbg !393
  br i1 %cmp22.not, label %if.end35, label %if.then23, !dbg !394

if.then23:                                        ; preds = %if.end19
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !395, metadata !DIExpression()) #11, !dbg !406
  %nodes1.i = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 7, !dbg !408
  %5 = load i64, ptr %nodes1.i, align 8, !dbg !408, !tbaa !345
  %cmp.i = icmp ult i64 %5, 3, !dbg !410
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !411

if.then.i:                                        ; preds = %if.then23
  store i32 0, ptr %balance, align 8, !dbg !412, !tbaa !392
  br label %BalanceSplayTree.exit, !dbg !414

if.end.i:                                         ; preds = %if.then23
  %call.i = tail call ptr @AcquireQuantumMemory(i64 noundef %5, i64 noundef 8) #13, !dbg !415
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !401, metadata !DIExpression()) #11, !dbg !406
  %cmp3.i = icmp eq ptr %call.i, null, !dbg !416
  br i1 %cmp3.i, label %if.then4.i, label %if.end10.i, !dbg !417

if.then4.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception.i) #11, !dbg !418
  call void @llvm.dbg.declare(metadata ptr %exception.i, metadata !405, metadata !DIExpression()) #11, !dbg !418
  call void @GetExceptionInfo(ptr noundef nonnull %exception.i) #11, !dbg !418
  %call5.i = tail call ptr @__errno_location() #14, !dbg !418
  %6 = load i32, ptr %call5.i, align 4, !dbg !418, !tbaa !419
  %call6.i = call ptr @GetExceptionMessage(i32 noundef %6) #11, !dbg !418
  call void @llvm.dbg.value(metadata ptr %call6.i, metadata !402, metadata !DIExpression()) #11, !dbg !421
  %call7.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 292, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call6.i) #11, !dbg !418
  %call8.i = call ptr @DestroyString(ptr noundef %call6.i) #11, !dbg !418
  call void @llvm.dbg.value(metadata ptr %call8.i, metadata !402, metadata !DIExpression()) #11, !dbg !421
  call void @CatchException(ptr noundef nonnull %exception.i) #11, !dbg !418
  %call9.i = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception.i) #11, !dbg !418
  call void @MagickCoreTerminus() #11, !dbg !418
  call void @_exit(i32 noundef 1) #15, !dbg !418
  unreachable, !dbg !418

if.end10.i:                                       ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !400, metadata !DIExpression()) #11, !dbg !406
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !159, metadata !DIExpression()) #11, !dbg !422
  call void @llvm.dbg.value(metadata ptr undef, metadata !161, metadata !DIExpression()) #11, !dbg !422
  %7 = load ptr, ptr %splay_tree, align 8, !dbg !424, !tbaa !249
  %cmp.i.i = icmp eq ptr %7, null, !dbg !426
  br i1 %cmp.i.i, label %IterateOverSplayTree.exit.i, label %if.end.i.i, !dbg !427

if.end.i.i:                                       ; preds = %if.end10.i
  %8 = load i64, ptr %nodes1.i, align 8, !dbg !428, !tbaa !345
  %call.i.i = tail call ptr @AcquireQuantumMemory(i64 noundef %8, i64 noundef 8) #13, !dbg !429
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !164, metadata !DIExpression()) #11, !dbg !422
  %9 = load i64, ptr %nodes1.i, align 8, !dbg !430, !tbaa !345
  %call3.i.i = tail call ptr @AcquireQuantumMemory(i64 noundef %9, i64 noundef 1) #13, !dbg !431
  call void @llvm.dbg.value(metadata ptr %call3.i.i, metadata !175, metadata !DIExpression()) #11, !dbg !422
  %cmp4.i.i = icmp eq ptr %call.i.i, null, !dbg !432
  %cmp5.i.i = icmp eq ptr %call3.i.i, null
  %or.cond.i.i = select i1 %cmp4.i.i, i1 true, i1 %cmp5.i.i, !dbg !433
  br i1 %or.cond.i.i, label %if.then6.i.i, label %if.end12.i.i, !dbg !433

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception.i.i) #11, !dbg !434
  call void @llvm.dbg.declare(metadata ptr %exception.i.i, metadata !183, metadata !DIExpression()) #11, !dbg !434
  call void @GetExceptionInfo(ptr noundef nonnull %exception.i.i) #11, !dbg !434
  %call7.i.i = tail call ptr @__errno_location() #14, !dbg !434
  %10 = load i32, ptr %call7.i.i, align 4, !dbg !434, !tbaa !419
  %call8.i.i = call ptr @GetExceptionMessage(i32 noundef %10) #11, !dbg !434
  call void @llvm.dbg.value(metadata ptr %call8.i.i, metadata !178, metadata !DIExpression()) #11, !dbg !435
  %call9.i.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1009, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call8.i.i) #11, !dbg !434
  %call10.i.i = call ptr @DestroyString(ptr noundef %call8.i.i) #11, !dbg !434
  call void @llvm.dbg.value(metadata ptr %call10.i.i, metadata !178, metadata !DIExpression()) #11, !dbg !435
  call void @CatchException(ptr noundef nonnull %exception.i.i) #11, !dbg !434
  %call11.i.i = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception.i.i) #11, !dbg !434
  call void @MagickCoreTerminus() #11, !dbg !434
  call void @_exit(i32 noundef 1) #15, !dbg !434
  unreachable, !dbg !434

if.end12.i.i:                                     ; preds = %if.end.i.i
  call void @llvm.dbg.value(metadata i32 0, metadata !162, metadata !DIExpression()) #11, !dbg !422
  call void @llvm.dbg.value(metadata i32 0, metadata !163, metadata !DIExpression()) #11, !dbg !422
  %11 = load ptr, ptr %splay_tree, align 8, !dbg !436, !tbaa !249
  store ptr %11, ptr %call.i.i, align 8, !dbg !437, !tbaa !438
  store i8 0, ptr %call3.i.i, align 1, !dbg !439, !tbaa !440
  call void @llvm.dbg.value(metadata i64 0, metadata !166, metadata !DIExpression()) #11, !dbg !422
  br label %for.body.i.i, !dbg !441

for.body.i.i:                                     ; preds = %sw.epilog.for.body_crit_edge.i.i, %if.end12.i.i
  %node.0.i = phi ptr [ %call.i, %if.end12.i.i ], [ %node.1.i, %sw.epilog.for.body_crit_edge.i.i ], !dbg !406
  %12 = phi i8 [ 0, %if.end12.i.i ], [ %.pre.i.i, %sw.epilog.for.body_crit_edge.i.i ], !dbg !443
  %i.04.i.i = phi i64 [ 0, %if.end12.i.i ], [ %i.18.i.i, %sw.epilog.for.body_crit_edge.i.i ]
  call void @llvm.dbg.value(metadata i64 %i.04.i.i, metadata !166, metadata !DIExpression()) #11, !dbg !422
  %arrayidx16.i.i = getelementptr inbounds ptr, ptr %call.i.i, i64 %i.04.i.i, !dbg !446
  %13 = load ptr, ptr %arrayidx16.i.i, align 8, !dbg !446, !tbaa !438
  call void @llvm.dbg.value(metadata ptr %13, metadata !172, metadata !DIExpression()) #11, !dbg !422
  %arrayidx17.i.i = getelementptr inbounds i8, ptr %call3.i.i, i64 %i.04.i.i, !dbg !443
  call void @llvm.dbg.value(metadata i8 undef, metadata !173, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !422
  switch i8 %12, label %sw.default.i.i [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb26.i.i
    i8 3, label %sw.epilog.i.i
  ], !dbg !447

sw.bb.i.i:                                        ; preds = %for.body.i.i
  store i8 2, ptr %arrayidx17.i.i, align 1, !dbg !448, !tbaa !440
  %left.i.i = getelementptr inbounds %struct._NodeInfo, ptr %13, i64 0, i32 2, !dbg !451
  %14 = load ptr, ptr %left.i.i, align 8, !dbg !451, !tbaa !325
  %cmp19.i.i = icmp eq ptr %14, null, !dbg !453
  br i1 %cmp19.i.i, label %sw.epilog.for.body_crit_edge.i.i, label %if.end22.i.i, !dbg !454

if.end22.i.i:                                     ; preds = %sw.bb.i.i
  %inc.i.i = add nsw i64 %i.04.i.i, 1, !dbg !455
  call void @llvm.dbg.value(metadata i64 %inc.i.i, metadata !166, metadata !DIExpression()) #11, !dbg !422
  %arrayidx24.i.i = getelementptr inbounds ptr, ptr %call.i.i, i64 %inc.i.i, !dbg !456
  store ptr %14, ptr %arrayidx24.i.i, align 8, !dbg !457, !tbaa !438
  %arrayidx25.i.i = getelementptr inbounds i8, ptr %call3.i.i, i64 %inc.i.i, !dbg !458
  store i8 0, ptr %arrayidx25.i.i, align 1, !dbg !459, !tbaa !440
  br label %sw.epilog.for.body_crit_edge.i.i, !dbg !460

sw.bb26.i.i:                                      ; preds = %for.body.i.i
  store i8 3, ptr %arrayidx17.i.i, align 1, !dbg !461, !tbaa !440
  %right.i.i = getelementptr inbounds %struct._NodeInfo, ptr %13, i64 0, i32 3, !dbg !463
  %15 = load ptr, ptr %right.i.i, align 8, !dbg !463, !tbaa !327
  %cmp28.i.i = icmp eq ptr %15, null, !dbg !465
  br i1 %cmp28.i.i, label %sw.epilog.for.body_crit_edge.i.i, label %if.end31.i.i, !dbg !466

if.end31.i.i:                                     ; preds = %sw.bb26.i.i
  %inc32.i.i = add nsw i64 %i.04.i.i, 1, !dbg !467
  call void @llvm.dbg.value(metadata i64 %inc32.i.i, metadata !166, metadata !DIExpression()) #11, !dbg !422
  %arrayidx34.i.i = getelementptr inbounds ptr, ptr %call.i.i, i64 %inc32.i.i, !dbg !468
  store ptr %15, ptr %arrayidx34.i.i, align 8, !dbg !469, !tbaa !438
  %arrayidx35.i.i = getelementptr inbounds i8, ptr %call3.i.i, i64 %inc32.i.i, !dbg !470
  store i8 0, ptr %arrayidx35.i.i, align 1, !dbg !471, !tbaa !440
  br label %sw.epilog.for.body_crit_edge.i.i, !dbg !472

sw.default.i.i:                                   ; preds = %for.body.i.i
  store i8 1, ptr %arrayidx17.i.i, align 1, !dbg !473, !tbaa !440
  call void @llvm.dbg.value(metadata ptr %13, metadata !475, metadata !DIExpression()) #11, !dbg !480
  call void @llvm.dbg.value(metadata ptr undef, metadata !478, metadata !DIExpression()) #11, !dbg !480
  call void @llvm.dbg.value(metadata ptr undef, metadata !479, metadata !DIExpression()) #11, !dbg !480
  store ptr %13, ptr %node.0.i, align 8, !dbg !482, !tbaa !438
  %incdec.ptr.i.i.i = getelementptr inbounds ptr, ptr %node.0.i, i64 1, !dbg !483
  call void @llvm.dbg.value(metadata i32 0, metadata !162, metadata !DIExpression()) #11, !dbg !422
  br label %sw.epilog.for.body_crit_edge.i.i, !dbg !484

sw.epilog.i.i:                                    ; preds = %for.body.i.i
  %cmp44.i.i = icmp eq i64 %i.04.i.i, 0, !dbg !485
  %dec.i.i = add nsw i64 %i.04.i.i, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !162, metadata !DIExpression()) #11, !dbg !422
  call void @llvm.dbg.value(metadata i1 %cmp44.i.i, metadata !163, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !422
  call void @llvm.dbg.value(metadata i64 undef, metadata !166, metadata !DIExpression()) #11, !dbg !422
  br i1 %cmp44.i.i, label %for.end.i.i, label %sw.epilog.for.body_crit_edge.i.i, !dbg !441, !llvm.loop !488

sw.epilog.for.body_crit_edge.i.i:                 ; preds = %sw.epilog.i.i, %sw.default.i.i, %if.end31.i.i, %sw.bb26.i.i, %if.end22.i.i, %sw.bb.i.i
  %node.1.i = phi ptr [ %incdec.ptr.i.i.i, %sw.default.i.i ], [ %node.0.i, %sw.epilog.i.i ], [ %node.0.i, %sw.bb26.i.i ], [ %node.0.i, %if.end31.i.i ], [ %node.0.i, %sw.bb.i.i ], [ %node.0.i, %if.end22.i.i ], !dbg !406
  %i.18.i.i = phi i64 [ %i.04.i.i, %sw.default.i.i ], [ %dec.i.i, %sw.epilog.i.i ], [ %i.04.i.i, %sw.bb26.i.i ], [ %inc32.i.i, %if.end31.i.i ], [ %i.04.i.i, %sw.bb.i.i ], [ %inc.i.i, %if.end22.i.i ]
  %arrayidx17.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %call3.i.i, i64 %i.18.i.i
  %.pre.i.i = load i8, ptr %arrayidx17.phi.trans.insert.i.i, align 1, !dbg !443, !tbaa !440
  br label %for.body.i.i, !dbg !441

for.end.i.i:                                      ; preds = %sw.epilog.i.i
  %call48.i.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call.i.i) #11, !dbg !492
  call void @llvm.dbg.value(metadata ptr %call48.i.i, metadata !164, metadata !DIExpression()) #11, !dbg !422
  %call49.i.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call3.i.i) #11, !dbg !493
  call void @llvm.dbg.value(metadata ptr %call49.i.i, metadata !175, metadata !DIExpression()) #11, !dbg !422
  br label %IterateOverSplayTree.exit.i, !dbg !494

IterateOverSplayTree.exit.i:                      ; preds = %for.end.i.i, %if.end10.i
  %16 = load i64, ptr %nodes1.i, align 8, !dbg !495, !tbaa !345
  %sub.i = add i64 %16, -1, !dbg !496
  %call13.i = tail call fastcc ptr @LinkSplayTreeNodes(ptr noundef nonnull %call.i, i64 noundef 0, i64 noundef %sub.i) #11, !dbg !497
  store ptr %call13.i, ptr %splay_tree, align 8, !dbg !498, !tbaa !249
  store i32 0, ptr %balance, align 8, !dbg !499, !tbaa !392
  %call15.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call.i) #11, !dbg !500
  call void @llvm.dbg.value(metadata ptr %call15.i, metadata !401, metadata !DIExpression()) #11, !dbg !406
  br label %BalanceSplayTree.exit, !dbg !501

BalanceSplayTree.exit:                            ; preds = %if.then.i, %IterateOverSplayTree.exit.i
  %call25 = tail call fastcc ptr @Splay(ptr noundef nonnull %splay_tree, i64 noundef 0, ptr noundef %key, ptr noundef nonnull %splay_tree, ptr noundef null, ptr noundef null), !dbg !502
  %17 = load i32, ptr %balance, align 8, !dbg !503, !tbaa !392
  %cmp27.not = icmp eq i32 %17, 0, !dbg !504
  br i1 %cmp27.not, label %if.end35, label %if.then28, !dbg !505

if.then28:                                        ; preds = %BalanceSplayTree.exit
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #11, !dbg !506
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !366, metadata !DIExpression()), !dbg !506
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #11, !dbg !506
  %call29 = tail call ptr @__errno_location() #14, !dbg !506
  %18 = load i32, ptr %call29, align 4, !dbg !506, !tbaa !419
  %call30 = call ptr @GetExceptionMessage(i32 noundef %18) #11, !dbg !506
  call void @llvm.dbg.value(metadata ptr %call30, metadata !361, metadata !DIExpression()), !dbg !507
  %call31 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1590, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call30) #11, !dbg !506
  %call32 = call ptr @DestroyString(ptr noundef %call30) #11, !dbg !506
  call void @llvm.dbg.value(metadata ptr %call32, metadata !361, metadata !DIExpression()), !dbg !507
  call void @CatchException(ptr noundef nonnull %exception) #11, !dbg !506
  %call33 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #11, !dbg !506
  call void @MagickCoreTerminus() #11, !dbg !506
  call void @_exit(i32 noundef 1) #15, !dbg !506
  unreachable, !dbg !506

if.end35:                                         ; preds = %BalanceSplayTree.exit, %if.end19
  store ptr %key, ptr %key1, align 8, !dbg !508, !tbaa !342
  br label %return, !dbg !509

return:                                           ; preds = %if.end15, %entry, %if.end35
  ret void, !dbg !509
}

declare !dbg !510 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare !dbg !511 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @CloneSplayTree(ptr noundef %splay_tree, ptr nocapture noundef readonly %clone_key, ptr nocapture noundef readonly %clone_value) local_unnamed_addr #0 !dbg !516 {
entry:
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !520, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata ptr %clone_key, metadata !521, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata ptr %clone_value, metadata !522, metadata !DIExpression()), !dbg !526
  %debug = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 8, !dbg !527
  %0 = load i32, ptr %debug, align 8, !dbg !527, !tbaa !529
  %cmp.not = icmp eq i32 %0, 0, !dbg !530
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !531

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 357, ptr noundef nonnull @.str.2) #11, !dbg !532
  br label %if.end, !dbg !533

if.end:                                           ; preds = %if.then, %entry
  %compare = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 1, !dbg !534
  %1 = load ptr, ptr %compare, align 8, !dbg !534, !tbaa !255
  %relinquish_key = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 2, !dbg !535
  %2 = load ptr, ptr %relinquish_key, align 8, !dbg !535, !tbaa !288
  %relinquish_value = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 3, !dbg !536
  %3 = load ptr, ptr %relinquish_value, align 8, !dbg !536, !tbaa !273
  %call1 = tail call ptr @NewSplayTree(ptr noundef %1, ptr noundef %2, ptr noundef %3), !dbg !537
  call void @llvm.dbg.value(metadata ptr %call1, metadata !525, metadata !DIExpression()), !dbg !526
  %semaphore = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 9, !dbg !538
  %4 = load ptr, ptr %semaphore, align 8, !dbg !538, !tbaa !239
  tail call void @LockSemaphoreInfo(ptr noundef %4) #11, !dbg !539
  %5 = load ptr, ptr %splay_tree, align 8, !dbg !540, !tbaa !249
  %cmp2 = icmp eq ptr %5, null, !dbg !542
  br i1 %cmp2, label %cleanup, label %while.cond.i, !dbg !543

while.cond.i:                                     ; preds = %if.end, %while.cond.i
  %node.0.i = phi ptr [ %6, %while.cond.i ], [ %5, %if.end ], !dbg !544
  call void @llvm.dbg.value(metadata ptr %node.0.i, metadata !550, metadata !DIExpression()), !dbg !544
  %left.i = getelementptr inbounds %struct._NodeInfo, ptr %node.0.i, i64 0, i32 2, !dbg !552
  %6 = load ptr, ptr %left.i, align 8, !dbg !552, !tbaa !325
  %cmp2.not.i = icmp eq ptr %6, null, !dbg !553
  br i1 %cmp2.not.i, label %GetFirstSplayTreeNode.exit, label %while.cond.i, !dbg !554, !llvm.loop !555

GetFirstSplayTreeNode.exit:                       ; preds = %while.cond.i
  %7 = load ptr, ptr %node.0.i, align 8, !dbg !557, !tbaa !258
  call void @llvm.dbg.value(metadata ptr %7, metadata !523, metadata !DIExpression()), !dbg !526
  %cmp7.not45 = icmp eq ptr %7, null, !dbg !558
  br i1 %cmp7.not45, label %cleanup, label %while.body, !dbg !559

while.body:                                       ; preds = %GetFirstSplayTreeNode.exit, %if.end21
  %next.046 = phi ptr [ %15, %if.end21 ], [ %7, %GetFirstSplayTreeNode.exit ]
  call void @llvm.dbg.value(metadata ptr %next.046, metadata !523, metadata !DIExpression()), !dbg !526
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %splay_tree, ptr noundef nonnull %next.046), !dbg !560
  %8 = load ptr, ptr %splay_tree, align 8, !dbg !562, !tbaa !249
  %9 = load ptr, ptr %8, align 8, !dbg !563, !tbaa !258
  %call9 = tail call ptr %clone_key(ptr noundef %9) #11, !dbg !564
  %10 = load ptr, ptr %splay_tree, align 8, !dbg !565, !tbaa !249
  %value = getelementptr inbounds %struct._NodeInfo, ptr %10, i64 0, i32 1, !dbg !566
  %11 = load ptr, ptr %value, align 8, !dbg !566, !tbaa !278
  %call11 = tail call ptr %clone_value(ptr noundef %11) #11, !dbg !567
  %call12 = tail call i32 @AddValueToSplayTree(ptr noundef %call1, ptr noundef %call9, ptr noundef %call11), !dbg !568
  call void @llvm.dbg.value(metadata ptr null, metadata !523, metadata !DIExpression()), !dbg !526
  %12 = load ptr, ptr %splay_tree, align 8, !dbg !569, !tbaa !249
  %right = getelementptr inbounds %struct._NodeInfo, ptr %12, i64 0, i32 3, !dbg !570
  %13 = load ptr, ptr %right, align 8, !dbg !570, !tbaa !327
  call void @llvm.dbg.value(metadata ptr %13, metadata !524, metadata !DIExpression()), !dbg !526
  %cmp14.not = icmp eq ptr %13, null, !dbg !571
  br i1 %cmp14.not, label %cleanup, label %while.cond16, !dbg !573

while.cond16:                                     ; preds = %while.body, %while.cond16
  %node.0 = phi ptr [ %14, %while.cond16 ], [ %13, %while.body ], !dbg !574
  call void @llvm.dbg.value(metadata ptr %node.0, metadata !524, metadata !DIExpression()), !dbg !526
  %left = getelementptr inbounds %struct._NodeInfo, ptr %node.0, i64 0, i32 2, !dbg !575
  %14 = load ptr, ptr %left, align 8, !dbg !575, !tbaa !325
  %cmp17.not = icmp eq ptr %14, null, !dbg !577
  br i1 %cmp17.not, label %if.end21, label %while.cond16, !dbg !578, !llvm.loop !579

if.end21:                                         ; preds = %while.cond16
  %15 = load ptr, ptr %node.0, align 8, !dbg !581, !tbaa !258
  call void @llvm.dbg.value(metadata ptr %15, metadata !523, metadata !DIExpression()), !dbg !526
  %cmp7.not = icmp eq ptr %15, null, !dbg !558
  br i1 %cmp7.not, label %cleanup, label %while.body, !dbg !559, !llvm.loop !582

cleanup:                                          ; preds = %if.end21, %while.body, %GetFirstSplayTreeNode.exit, %if.end
  %16 = load ptr, ptr %semaphore, align 8, !dbg !526, !tbaa !239
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #11, !dbg !526
  ret ptr %call1, !dbg !584
}

declare !dbg !585 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @NewSplayTree(ptr noundef %compare, ptr noundef %relinquish_key, ptr noundef %relinquish_value) local_unnamed_addr #0 !dbg !590 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %compare, metadata !594, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata ptr %relinquish_key, metadata !595, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata ptr %relinquish_value, metadata !596, metadata !DIExpression()), !dbg !602
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 88) #12, !dbg !603
  call void @llvm.dbg.value(metadata ptr %call, metadata !597, metadata !DIExpression()), !dbg !602
  %cmp = icmp eq ptr %call, null, !dbg !604
  br i1 %cmp, label %if.then, label %if.end, !dbg !605

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #11, !dbg !606
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !601, metadata !DIExpression()), !dbg !606
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #11, !dbg !606
  %call1 = tail call ptr @__errno_location() #14, !dbg !606
  %0 = load i32, ptr %call1, align 4, !dbg !606, !tbaa !419
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #11, !dbg !606
  call void @llvm.dbg.value(metadata ptr %call2, metadata !598, metadata !DIExpression()), !dbg !607
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1107, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call2) #11, !dbg !606
  %call4 = call ptr @DestroyString(ptr noundef %call2) #11, !dbg !606
  call void @llvm.dbg.value(metadata ptr %call4, metadata !598, metadata !DIExpression()), !dbg !607
  call void @CatchException(ptr noundef nonnull %exception) #11, !dbg !606
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #11, !dbg !606
  call void @MagickCoreTerminus() #11, !dbg !606
  call void @_exit(i32 noundef 1) #15, !dbg !606
  unreachable, !dbg !606

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 88) #11, !dbg !608
  store ptr null, ptr %call, align 8, !dbg !609, !tbaa !249
  %compare7 = getelementptr inbounds %struct._SplayTreeInfo, ptr %call, i64 0, i32 1, !dbg !610
  store ptr %compare, ptr %compare7, align 8, !dbg !611, !tbaa !255
  %relinquish_key8 = getelementptr inbounds %struct._SplayTreeInfo, ptr %call, i64 0, i32 2, !dbg !612
  store ptr %relinquish_key, ptr %relinquish_key8, align 8, !dbg !613, !tbaa !288
  %relinquish_value9 = getelementptr inbounds %struct._SplayTreeInfo, ptr %call, i64 0, i32 3, !dbg !614
  store ptr %relinquish_value, ptr %relinquish_value9, align 8, !dbg !615, !tbaa !273
  %balance = getelementptr inbounds %struct._SplayTreeInfo, ptr %call, i64 0, i32 4, !dbg !616
  store i32 0, ptr %balance, align 8, !dbg !617, !tbaa !392
  %key = getelementptr inbounds %struct._SplayTreeInfo, ptr %call, i64 0, i32 5, !dbg !618
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %key, i8 0, i64 24, i1 false), !dbg !619
  %call10 = tail call i32 @IsEventLogging() #11, !dbg !620
  %debug = getelementptr inbounds %struct._SplayTreeInfo, ptr %call, i64 0, i32 8, !dbg !621
  store i32 %call10, ptr %debug, align 8, !dbg !622, !tbaa !529
  %call11 = tail call ptr @AllocateSemaphoreInfo() #11, !dbg !623
  %semaphore = getelementptr inbounds %struct._SplayTreeInfo, ptr %call, i64 0, i32 9, !dbg !624
  store ptr %call11, ptr %semaphore, align 8, !dbg !625, !tbaa !239
  %signature = getelementptr inbounds %struct._SplayTreeInfo, ptr %call, i64 0, i32 10, !dbg !626
  store i64 2880220587, ptr %signature, align 8, !dbg !627, !tbaa !628
  ret ptr %call, !dbg !629
}

; Function Attrs: nounwind uwtable
define dso_local i32 @CompareSplayTreeString(ptr noundef %target, ptr noundef %source) local_unnamed_addr #0 !dbg !630 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !632, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata ptr %source, metadata !633, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata ptr %target, metadata !634, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata ptr %source, metadata !635, metadata !DIExpression()), !dbg !636
  %call = tail call i32 @LocaleCompare(ptr noundef %target, ptr noundef %source) #11, !dbg !637
  ret i32 %call, !dbg !638
}

declare !dbg !639 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @CompareSplayTreeStringInfo(ptr noundef %target, ptr noundef %source) local_unnamed_addr #0 !dbg !642 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !644, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata ptr %source, metadata !645, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata ptr %target, metadata !646, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata ptr %source, metadata !647, metadata !DIExpression()), !dbg !648
  %call = tail call i32 @CompareStringInfo(ptr noundef %target, ptr noundef %source) #11, !dbg !649
  ret i32 %call, !dbg !650
}

declare !dbg !651 i32 @CompareStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @DeleteNodeByValueFromSplayTree(ptr noundef %splay_tree, ptr noundef readnone %value) local_unnamed_addr #0 !dbg !654 {
entry:
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !658, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata ptr %value, metadata !659, metadata !DIExpression()), !dbg !669
  %debug = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 8, !dbg !670
  %0 = load i32, ptr %debug, align 8, !dbg !670, !tbaa !529
  %cmp.not = icmp eq i32 %0, 0, !dbg !672
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !673

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 494, ptr noundef nonnull @.str.2) #11, !dbg !674
  br label %if.end, !dbg !675

if.end:                                           ; preds = %if.then, %entry
  %semaphore = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 9, !dbg !676
  %1 = load ptr, ptr %semaphore, align 8, !dbg !676, !tbaa !239
  tail call void @LockSemaphoreInfo(ptr noundef %1) #11, !dbg !677
  %2 = load ptr, ptr %splay_tree, align 8, !dbg !678, !tbaa !249
  %cmp1 = icmp eq ptr %2, null, !dbg !680
  br i1 %cmp1, label %cleanup99, label %while.cond.i, !dbg !681

while.cond.i:                                     ; preds = %if.end, %while.cond.i
  %node.0.i = phi ptr [ %3, %while.cond.i ], [ %2, %if.end ], !dbg !682
  call void @llvm.dbg.value(metadata ptr %node.0.i, metadata !550, metadata !DIExpression()), !dbg !682
  %left.i = getelementptr inbounds %struct._NodeInfo, ptr %node.0.i, i64 0, i32 2, !dbg !684
  %3 = load ptr, ptr %left.i, align 8, !dbg !684, !tbaa !325
  %cmp2.not.i = icmp eq ptr %3, null, !dbg !685
  br i1 %cmp2.not.i, label %GetFirstSplayTreeNode.exit, label %while.cond.i, !dbg !686, !llvm.loop !687

GetFirstSplayTreeNode.exit:                       ; preds = %while.cond.i
  %4 = load ptr, ptr %node.0.i, align 8, !dbg !689, !tbaa !258
  call void @llvm.dbg.value(metadata ptr %4, metadata !660, metadata !DIExpression()), !dbg !669
  br label %while.cond, !dbg !690

while.cond:                                       ; preds = %if.end14, %GetFirstSplayTreeNode.exit
  %next.0 = phi ptr [ %4, %GetFirstSplayTreeNode.exit ], [ %next.1, %if.end14 ], !dbg !669
  call void @llvm.dbg.value(metadata ptr %next.0, metadata !660, metadata !DIExpression()), !dbg !669
  %cmp6.not = icmp eq ptr %next.0, null, !dbg !691
  br i1 %cmp6.not, label %cleanup99, label %while.body, !dbg !690

while.body:                                       ; preds = %while.cond
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %splay_tree, ptr noundef nonnull %next.0), !dbg !692
  call void @llvm.dbg.value(metadata ptr null, metadata !660, metadata !DIExpression()), !dbg !669
  %5 = load ptr, ptr %splay_tree, align 8, !dbg !693, !tbaa !249
  %right = getelementptr inbounds %struct._NodeInfo, ptr %5, i64 0, i32 3, !dbg !694
  %6 = load ptr, ptr %right, align 8, !dbg !694, !tbaa !327
  call void @llvm.dbg.value(metadata ptr %6, metadata !661, metadata !DIExpression()), !dbg !669
  %cmp8.not = icmp eq ptr %6, null, !dbg !695
  br i1 %cmp8.not, label %if.end14, label %while.cond10, !dbg !697

while.cond10:                                     ; preds = %while.body, %while.cond10
  %node.0 = phi ptr [ %7, %while.cond10 ], [ %6, %while.body ], !dbg !698
  call void @llvm.dbg.value(metadata ptr %node.0, metadata !661, metadata !DIExpression()), !dbg !669
  %left = getelementptr inbounds %struct._NodeInfo, ptr %node.0, i64 0, i32 2, !dbg !699
  %7 = load ptr, ptr %left, align 8, !dbg !699, !tbaa !325
  %cmp11.not = icmp eq ptr %7, null, !dbg !701
  br i1 %cmp11.not, label %while.end, label %while.cond10, !dbg !702, !llvm.loop !703

while.end:                                        ; preds = %while.cond10
  %8 = load ptr, ptr %node.0, align 8, !dbg !705, !tbaa !258
  call void @llvm.dbg.value(metadata ptr %8, metadata !660, metadata !DIExpression()), !dbg !669
  br label %if.end14, !dbg !706

if.end14:                                         ; preds = %while.end, %while.body
  %next.1 = phi ptr [ %8, %while.end ], [ null, %while.body ], !dbg !698
  call void @llvm.dbg.value(metadata ptr %next.1, metadata !660, metadata !DIExpression()), !dbg !669
  %value16 = getelementptr inbounds %struct._NodeInfo, ptr %5, i64 0, i32 1, !dbg !707
  %9 = load ptr, ptr %value16, align 8, !dbg !707, !tbaa !278
  %cmp17 = icmp eq ptr %9, %value, !dbg !708
  br i1 %cmp17, label %if.then18, label %while.cond, !dbg !709, !llvm.loop !710

if.then18:                                        ; preds = %if.end14
  %10 = load ptr, ptr %5, align 8, !dbg !712, !tbaa !258
  call void @llvm.dbg.value(metadata ptr %10, metadata !668, metadata !DIExpression()), !dbg !713
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %splay_tree, ptr noundef %10), !dbg !714
  %key24 = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 5, !dbg !715
  store ptr null, ptr %key24, align 8, !dbg !716, !tbaa !342
  %compare25 = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 1, !dbg !717
  %11 = load ptr, ptr %compare25, align 8, !dbg !717, !tbaa !255
  %cmp26.not = icmp eq ptr %11, null, !dbg !719
  %12 = load ptr, ptr %splay_tree, align 8, !dbg !720, !tbaa !249
  %13 = load ptr, ptr %12, align 8, !dbg !720, !tbaa !258
  br i1 %cmp26.not, label %if.else, label %if.then27, !dbg !721

if.then27:                                        ; preds = %if.then18
  %call31 = tail call i32 %11(ptr noundef %13, ptr noundef %10) #11, !dbg !722
  call void @llvm.dbg.value(metadata i32 %call31, metadata !662, metadata !DIExpression()), !dbg !713
  br label %if.end39, !dbg !723

if.else:                                          ; preds = %if.then18
  %cmp34 = icmp ugt ptr %13, %10, !dbg !724
  br i1 %cmp34, label %cleanup99, label %cond.false, !dbg !725

cond.false:                                       ; preds = %if.else
  %cmp37 = icmp ult ptr %13, %10, !dbg !726
  %cond = sext i1 %cmp37 to i32, !dbg !727
  br label %if.end39, !dbg !725

if.end39:                                         ; preds = %cond.false, %if.then27
  %compare.0 = phi i32 [ %call31, %if.then27 ], [ %cond, %cond.false ], !dbg !720
  call void @llvm.dbg.value(metadata i32 %compare.0, metadata !662, metadata !DIExpression()), !dbg !713
  %cmp40.not = icmp eq i32 %compare.0, 0, !dbg !728
  br i1 %cmp40.not, label %if.end43, label %cleanup99, !dbg !730

if.end43:                                         ; preds = %if.end39
  %14 = load ptr, ptr %splay_tree, align 8, !dbg !731, !tbaa !249
  %left45 = getelementptr inbounds %struct._NodeInfo, ptr %14, i64 0, i32 2, !dbg !732
  %15 = load ptr, ptr %left45, align 8, !dbg !732, !tbaa !325
  call void @llvm.dbg.value(metadata ptr %15, metadata !666, metadata !DIExpression()), !dbg !713
  %right47 = getelementptr inbounds %struct._NodeInfo, ptr %14, i64 0, i32 3, !dbg !733
  %16 = load ptr, ptr %right47, align 8, !dbg !733, !tbaa !327
  call void @llvm.dbg.value(metadata ptr %16, metadata !667, metadata !DIExpression()), !dbg !713
  %relinquish_value = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 3, !dbg !734
  %17 = load ptr, ptr %relinquish_value, align 8, !dbg !734, !tbaa !273
  %cmp48.not = icmp eq ptr %17, null, !dbg !736
  br i1 %cmp48.not, label %if.end59, label %land.lhs.true, !dbg !737

land.lhs.true:                                    ; preds = %if.end43
  %value50 = getelementptr inbounds %struct._NodeInfo, ptr %14, i64 0, i32 1, !dbg !738
  %18 = load ptr, ptr %value50, align 8, !dbg !738, !tbaa !278
  %cmp51.not = icmp eq ptr %18, null, !dbg !739
  br i1 %cmp51.not, label %if.end59, label %if.then52, !dbg !740

if.then52:                                        ; preds = %land.lhs.true
  %call56 = tail call ptr %17(ptr noundef nonnull %18) #11, !dbg !741
  %19 = load ptr, ptr %splay_tree, align 8, !dbg !742, !tbaa !249
  %value58 = getelementptr inbounds %struct._NodeInfo, ptr %19, i64 0, i32 1, !dbg !743
  store ptr %call56, ptr %value58, align 8, !dbg !744, !tbaa !278
  br label %if.end59, !dbg !745

if.end59:                                         ; preds = %if.then52, %land.lhs.true, %if.end43
  %20 = phi ptr [ %19, %if.then52 ], [ %14, %land.lhs.true ], [ %14, %if.end43 ]
  %relinquish_key = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 2, !dbg !746
  %21 = load ptr, ptr %relinquish_key, align 8, !dbg !746, !tbaa !288
  %cmp60.not = icmp eq ptr %21, null, !dbg !748
  br i1 %cmp60.not, label %if.end72, label %land.lhs.true61, !dbg !749

land.lhs.true61:                                  ; preds = %if.end59
  %22 = load ptr, ptr %20, align 8, !dbg !750, !tbaa !258
  %cmp64.not = icmp eq ptr %22, null, !dbg !751
  br i1 %cmp64.not, label %if.end72, label %if.then65, !dbg !752

if.then65:                                        ; preds = %land.lhs.true61
  %call69 = tail call ptr %21(ptr noundef nonnull %22) #11, !dbg !753
  %23 = load ptr, ptr %splay_tree, align 8, !dbg !754, !tbaa !249
  store ptr %call69, ptr %23, align 8, !dbg !755, !tbaa !258
  br label %if.end72, !dbg !756

if.end72:                                         ; preds = %if.then65, %land.lhs.true61, %if.end59
  %24 = phi ptr [ %23, %if.then65 ], [ %20, %land.lhs.true61 ], [ %20, %if.end59 ], !dbg !757
  %call74 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %24) #11, !dbg !758
  %nodes = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 7, !dbg !759
  %25 = load i64, ptr %nodes, align 8, !dbg !760, !tbaa !345
  %dec = add i64 %25, -1, !dbg !760
  store i64 %dec, ptr %nodes, align 8, !dbg !760, !tbaa !345
  %cmp76 = icmp eq ptr %15, null, !dbg !761
  br i1 %cmp76, label %cleanup99.sink.split, label %if.end80, !dbg !763

if.end80:                                         ; preds = %if.end72
  store ptr %15, ptr %splay_tree, align 8, !dbg !764, !tbaa !249
  %cmp82.not = icmp eq ptr %16, null, !dbg !765
  br i1 %cmp82.not, label %cleanup99, label %while.cond84, !dbg !767

while.cond84:                                     ; preds = %if.end80, %while.cond84
  %left19.0 = phi ptr [ %26, %while.cond84 ], [ %15, %if.end80 ], !dbg !713
  call void @llvm.dbg.value(metadata ptr %left19.0, metadata !666, metadata !DIExpression()), !dbg !713
  %right85 = getelementptr inbounds %struct._NodeInfo, ptr %left19.0, i64 0, i32 3, !dbg !768
  %26 = load ptr, ptr %right85, align 8, !dbg !768, !tbaa !327
  %cmp86.not = icmp eq ptr %26, null, !dbg !770
  br i1 %cmp86.not, label %while.end89, label %while.cond84, !dbg !771, !llvm.loop !772

while.end89:                                      ; preds = %while.cond84
  %right85.le = getelementptr inbounds %struct._NodeInfo, ptr %left19.0, i64 0, i32 3, !dbg !768
  br label %cleanup99.sink.split, !dbg !774

cleanup99.sink.split:                             ; preds = %if.end72, %while.end89
  %right85.le.sink = phi ptr [ %right85.le, %while.end89 ], [ %splay_tree, %if.end72 ]
  store ptr %16, ptr %right85.le.sink, align 8, !dbg !713, !tbaa !438
  br label %cleanup99, !dbg !669

cleanup99:                                        ; preds = %while.cond, %cleanup99.sink.split, %if.end80, %if.end39, %if.else, %if.end
  %retval.1 = phi i32 [ 0, %if.end ], [ 0, %if.else ], [ 0, %if.end39 ], [ 1, %if.end80 ], [ 1, %cleanup99.sink.split ], [ 0, %while.cond ], !dbg !669
  %27 = load ptr, ptr %semaphore, align 8, !dbg !669, !tbaa !239
  tail call void @UnlockSemaphoreInfo(ptr noundef %27) #11, !dbg !669
  ret i32 %retval.1, !dbg !775
}

declare !dbg !776 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @DeleteNodeFromSplayTree(ptr noundef %splay_tree, ptr noundef %key) local_unnamed_addr #0 !dbg !777 {
entry:
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !779, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata ptr %key, metadata !780, metadata !DIExpression()), !dbg !784
  %debug = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 8, !dbg !785
  %0 = load i32, ptr %debug, align 8, !dbg !785, !tbaa !529
  %cmp.not = icmp eq i32 %0, 0, !dbg !787
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !788

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 614, ptr noundef nonnull @.str.2) #11, !dbg !789
  br label %if.end, !dbg !790

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %splay_tree, align 8, !dbg !791, !tbaa !249
  %cmp1 = icmp eq ptr %1, null, !dbg !793
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !794

if.end3:                                          ; preds = %if.end
  %semaphore = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 9, !dbg !795
  %2 = load ptr, ptr %semaphore, align 8, !dbg !795, !tbaa !239
  tail call void @LockSemaphoreInfo(ptr noundef %2) #11, !dbg !796
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %splay_tree, ptr noundef %key), !dbg !797
  %key4 = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 5, !dbg !798
  store ptr null, ptr %key4, align 8, !dbg !799, !tbaa !342
  %compare5 = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 1, !dbg !800
  %3 = load ptr, ptr %compare5, align 8, !dbg !800, !tbaa !255
  %cmp6.not = icmp eq ptr %3, null, !dbg !802
  %4 = load ptr, ptr %splay_tree, align 8, !dbg !803, !tbaa !249
  %5 = load ptr, ptr %4, align 8, !dbg !803, !tbaa !258
  br i1 %cmp6.not, label %if.else, label %if.then7, !dbg !804

if.then7:                                         ; preds = %if.end3
  %call11 = tail call i32 %3(ptr noundef %5, ptr noundef %key) #11, !dbg !805
  call void @llvm.dbg.value(metadata i32 %call11, metadata !781, metadata !DIExpression()), !dbg !784
  br label %if.end19, !dbg !806

if.else:                                          ; preds = %if.end3
  %cmp14 = icmp ugt ptr %5, %key, !dbg !807
  br i1 %cmp14, label %cleanup.sink.split, label %cond.false, !dbg !808

cond.false:                                       ; preds = %if.else
  %cmp17 = icmp ult ptr %5, %key, !dbg !809
  %cond = sext i1 %cmp17 to i32, !dbg !810
  br label %if.end19, !dbg !808

if.end19:                                         ; preds = %cond.false, %if.then7
  %compare.0 = phi i32 [ %call11, %if.then7 ], [ %cond, %cond.false ], !dbg !803
  call void @llvm.dbg.value(metadata i32 %compare.0, metadata !781, metadata !DIExpression()), !dbg !784
  %cmp20.not = icmp eq i32 %compare.0, 0, !dbg !811
  br i1 %cmp20.not, label %if.end23, label %cleanup.sink.split, !dbg !813

if.end23:                                         ; preds = %if.end19
  %6 = load ptr, ptr %splay_tree, align 8, !dbg !814, !tbaa !249
  %left25 = getelementptr inbounds %struct._NodeInfo, ptr %6, i64 0, i32 2, !dbg !815
  %7 = load ptr, ptr %left25, align 8, !dbg !815, !tbaa !325
  call void @llvm.dbg.value(metadata ptr %7, metadata !782, metadata !DIExpression()), !dbg !784
  %right27 = getelementptr inbounds %struct._NodeInfo, ptr %6, i64 0, i32 3, !dbg !816
  %8 = load ptr, ptr %right27, align 8, !dbg !816, !tbaa !327
  call void @llvm.dbg.value(metadata ptr %8, metadata !783, metadata !DIExpression()), !dbg !784
  %relinquish_value = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 3, !dbg !817
  %9 = load ptr, ptr %relinquish_value, align 8, !dbg !817, !tbaa !273
  %cmp28.not = icmp eq ptr %9, null, !dbg !819
  br i1 %cmp28.not, label %if.end38, label %land.lhs.true, !dbg !820

land.lhs.true:                                    ; preds = %if.end23
  %value = getelementptr inbounds %struct._NodeInfo, ptr %6, i64 0, i32 1, !dbg !821
  %10 = load ptr, ptr %value, align 8, !dbg !821, !tbaa !278
  %cmp30.not = icmp eq ptr %10, null, !dbg !822
  br i1 %cmp30.not, label %if.end38, label %if.then31, !dbg !823

if.then31:                                        ; preds = %land.lhs.true
  %call35 = tail call ptr %9(ptr noundef nonnull %10) #11, !dbg !824
  %11 = load ptr, ptr %splay_tree, align 8, !dbg !825, !tbaa !249
  %value37 = getelementptr inbounds %struct._NodeInfo, ptr %11, i64 0, i32 1, !dbg !826
  store ptr %call35, ptr %value37, align 8, !dbg !827, !tbaa !278
  br label %if.end38, !dbg !828

if.end38:                                         ; preds = %if.then31, %land.lhs.true, %if.end23
  %12 = phi ptr [ %11, %if.then31 ], [ %6, %land.lhs.true ], [ %6, %if.end23 ]
  %relinquish_key = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 2, !dbg !829
  %13 = load ptr, ptr %relinquish_key, align 8, !dbg !829, !tbaa !288
  %cmp39.not = icmp eq ptr %13, null, !dbg !831
  br i1 %cmp39.not, label %if.end51, label %land.lhs.true40, !dbg !832

land.lhs.true40:                                  ; preds = %if.end38
  %14 = load ptr, ptr %12, align 8, !dbg !833, !tbaa !258
  %cmp43.not = icmp eq ptr %14, null, !dbg !834
  br i1 %cmp43.not, label %if.end51, label %if.then44, !dbg !835

if.then44:                                        ; preds = %land.lhs.true40
  %call48 = tail call ptr %13(ptr noundef nonnull %14) #11, !dbg !836
  %15 = load ptr, ptr %splay_tree, align 8, !dbg !837, !tbaa !249
  store ptr %call48, ptr %15, align 8, !dbg !838, !tbaa !258
  br label %if.end51, !dbg !839

if.end51:                                         ; preds = %if.then44, %land.lhs.true40, %if.end38
  %16 = phi ptr [ %15, %if.then44 ], [ %12, %land.lhs.true40 ], [ %12, %if.end38 ], !dbg !840
  %call53 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %16) #11, !dbg !841
  %nodes = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 7, !dbg !842
  %17 = load i64, ptr %nodes, align 8, !dbg !843, !tbaa !345
  %dec = add i64 %17, -1, !dbg !843
  store i64 %dec, ptr %nodes, align 8, !dbg !843, !tbaa !345
  %cmp55 = icmp eq ptr %7, null, !dbg !844
  br i1 %cmp55, label %cleanup.sink.split.sink.split, label %if.end59, !dbg !846

if.end59:                                         ; preds = %if.end51
  store ptr %7, ptr %splay_tree, align 8, !dbg !847, !tbaa !249
  %cmp61.not = icmp eq ptr %8, null, !dbg !848
  br i1 %cmp61.not, label %cleanup.sink.split, label %while.cond, !dbg !850

while.cond:                                       ; preds = %if.end59, %while.cond
  %left.0 = phi ptr [ %18, %while.cond ], [ %7, %if.end59 ], !dbg !784
  call void @llvm.dbg.value(metadata ptr %left.0, metadata !782, metadata !DIExpression()), !dbg !784
  %right63 = getelementptr inbounds %struct._NodeInfo, ptr %left.0, i64 0, i32 3, !dbg !851
  %18 = load ptr, ptr %right63, align 8, !dbg !851, !tbaa !327
  %cmp64.not = icmp eq ptr %18, null, !dbg !853
  br i1 %cmp64.not, label %while.end, label %while.cond, !dbg !854, !llvm.loop !855

while.end:                                        ; preds = %while.cond
  %right63.le = getelementptr inbounds %struct._NodeInfo, ptr %left.0, i64 0, i32 3, !dbg !851
  br label %cleanup.sink.split.sink.split, !dbg !857

cleanup.sink.split.sink.split:                    ; preds = %if.end51, %while.end
  %right63.le.sink = phi ptr [ %right63.le, %while.end ], [ %splay_tree, %if.end51 ]
  store ptr %8, ptr %right63.le.sink, align 8, !dbg !784, !tbaa !438
  br label %cleanup.sink.split, !dbg !784

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end59, %if.end19, %if.else
  %retval.0.ph = phi i32 [ 0, %if.else ], [ 0, %if.end19 ], [ 1, %if.end59 ], [ 1, %cleanup.sink.split.sink.split ]
  %19 = load ptr, ptr %semaphore, align 8, !dbg !784, !tbaa !239
  tail call void @UnlockSemaphoreInfo(ptr noundef %19) #11, !dbg !784
  br label %cleanup, !dbg !858

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !784
  ret i32 %retval.0, !dbg !858
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroySplayTree(ptr noundef %splay_tree) local_unnamed_addr #0 !dbg !859 {
entry:
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !863, metadata !DIExpression()), !dbg !867
  %semaphore = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 9, !dbg !868
  %0 = load ptr, ptr %semaphore, align 8, !dbg !868, !tbaa !239
  tail call void @LockSemaphoreInfo(ptr noundef %0) #11, !dbg !869
  %1 = load ptr, ptr %splay_tree, align 8, !dbg !870, !tbaa !249
  %cmp.not = icmp eq ptr %1, null, !dbg !872
  br i1 %cmp.not, label %if.end100, label %if.then, !dbg !873

if.then:                                          ; preds = %entry
  %relinquish_value = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 3, !dbg !874
  %2 = load ptr, ptr %relinquish_value, align 8, !dbg !874, !tbaa !273
  %cmp1.not = icmp eq ptr %2, null, !dbg !877
  br i1 %cmp1.not, label %if.end, label %land.lhs.true, !dbg !878

land.lhs.true:                                    ; preds = %if.then
  %value = getelementptr inbounds %struct._NodeInfo, ptr %1, i64 0, i32 1, !dbg !879
  %3 = load ptr, ptr %value, align 8, !dbg !879, !tbaa !278
  %cmp3.not = icmp eq ptr %3, null, !dbg !880
  br i1 %cmp3.not, label %if.end, label %if.then4, !dbg !881

if.then4:                                         ; preds = %land.lhs.true
  %call = tail call ptr %2(ptr noundef nonnull %3) #11, !dbg !882
  %4 = load ptr, ptr %splay_tree, align 8, !dbg !883, !tbaa !249
  %value9 = getelementptr inbounds %struct._NodeInfo, ptr %4, i64 0, i32 1, !dbg !884
  store ptr %call, ptr %value9, align 8, !dbg !885, !tbaa !278
  br label %if.end, !dbg !886

if.end:                                           ; preds = %if.then4, %land.lhs.true, %if.then
  %5 = phi ptr [ %4, %if.then4 ], [ %1, %land.lhs.true ], [ %1, %if.then ]
  %relinquish_key = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 2, !dbg !887
  %6 = load ptr, ptr %relinquish_key, align 8, !dbg !887, !tbaa !288
  %cmp10.not = icmp eq ptr %6, null, !dbg !889
  br i1 %cmp10.not, label %for.cond26.preheader.preheader, label %land.lhs.true11, !dbg !890

land.lhs.true11:                                  ; preds = %if.end
  %7 = load ptr, ptr %5, align 8, !dbg !891, !tbaa !258
  %cmp13.not = icmp eq ptr %7, null, !dbg !892
  br i1 %cmp13.not, label %for.cond26.preheader.preheader, label %if.then14, !dbg !893

if.then14:                                        ; preds = %land.lhs.true11
  %call18 = tail call ptr %6(ptr noundef nonnull %7) #11, !dbg !894
  %8 = load ptr, ptr %splay_tree, align 8, !dbg !895, !tbaa !249
  store ptr %call18, ptr %8, align 8, !dbg !896, !tbaa !258
  br label %for.cond26.preheader.preheader, !dbg !897

for.cond26.preheader.preheader:                   ; preds = %if.end, %land.lhs.true11, %if.then14
  %9 = phi ptr [ %8, %if.then14 ], [ %5, %land.lhs.true11 ], [ %5, %if.end ], !dbg !898
  store ptr null, ptr %9, align 8, !dbg !899, !tbaa !258
  call void @llvm.dbg.value(metadata ptr %9, metadata !866, metadata !DIExpression()), !dbg !867
  br label %for.body28, !dbg !900

for.cond26.for.cond.loopexit_crit_edge:           ; preds = %if.end96
  call void @llvm.dbg.value(metadata ptr %pend.3, metadata !866, metadata !DIExpression()), !dbg !867
  %cmp25.not = icmp eq ptr %pend.3, null, !dbg !902
  br i1 %cmp25.not, label %if.end100, label %for.body28.backedge, !dbg !900

for.body28:                                       ; preds = %for.body28.backedge, %for.cond26.preheader.preheader
  %pend.1169 = phi ptr [ null, %for.cond26.preheader.preheader ], [ %pend.1169.be, %for.body28.backedge ]
  %active.0168 = phi ptr [ %9, %for.cond26.preheader.preheader ], [ %active.0168.be, %for.body28.backedge ]
  call void @llvm.dbg.value(metadata ptr %pend.1169, metadata !866, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata ptr %active.0168, metadata !865, metadata !DIExpression()), !dbg !867
  %left = getelementptr inbounds %struct._NodeInfo, ptr %active.0168, i64 0, i32 2, !dbg !904
  %10 = load ptr, ptr %left, align 8, !dbg !904, !tbaa !325
  %cmp29.not = icmp eq ptr %10, null, !dbg !910
  br i1 %cmp29.not, label %if.end62, label %if.then30, !dbg !911

if.then30:                                        ; preds = %for.body28
  %11 = load ptr, ptr %relinquish_value, align 8, !dbg !912, !tbaa !273
  %cmp32.not = icmp eq ptr %11, null, !dbg !915
  br i1 %cmp32.not, label %if.end44, label %land.lhs.true33, !dbg !916

land.lhs.true33:                                  ; preds = %if.then30
  %value35 = getelementptr inbounds %struct._NodeInfo, ptr %10, i64 0, i32 1, !dbg !917
  %12 = load ptr, ptr %value35, align 8, !dbg !917, !tbaa !278
  %cmp36.not = icmp eq ptr %12, null, !dbg !918
  br i1 %cmp36.not, label %if.end44, label %if.then37, !dbg !919

if.then37:                                        ; preds = %land.lhs.true33
  %call41 = tail call ptr %11(ptr noundef nonnull %12) #11, !dbg !920
  %13 = load ptr, ptr %left, align 8, !dbg !921, !tbaa !325
  %value43 = getelementptr inbounds %struct._NodeInfo, ptr %13, i64 0, i32 1, !dbg !922
  store ptr %call41, ptr %value43, align 8, !dbg !923, !tbaa !278
  br label %if.end44, !dbg !924

if.end44:                                         ; preds = %if.then37, %land.lhs.true33, %if.then30
  %14 = phi ptr [ %13, %if.then37 ], [ %10, %land.lhs.true33 ], [ %10, %if.then30 ]
  %15 = load ptr, ptr %relinquish_key, align 8, !dbg !925, !tbaa !288
  %cmp46.not = icmp eq ptr %15, null, !dbg !927
  br i1 %cmp46.not, label %if.end58, label %land.lhs.true47, !dbg !928

land.lhs.true47:                                  ; preds = %if.end44
  %16 = load ptr, ptr %14, align 8, !dbg !929, !tbaa !258
  %cmp50.not = icmp eq ptr %16, null, !dbg !930
  br i1 %cmp50.not, label %if.end58, label %if.then51, !dbg !931

if.then51:                                        ; preds = %land.lhs.true47
  %call55 = tail call ptr %15(ptr noundef nonnull %16) #11, !dbg !932
  %17 = load ptr, ptr %left, align 8, !dbg !933, !tbaa !325
  store ptr %call55, ptr %17, align 8, !dbg !934, !tbaa !258
  br label %if.end58, !dbg !935

if.end58:                                         ; preds = %if.then51, %land.lhs.true47, %if.end44
  %18 = phi ptr [ %17, %if.then51 ], [ %14, %land.lhs.true47 ], [ %14, %if.end44 ], !dbg !936
  store ptr %pend.1169, ptr %18, align 8, !dbg !937, !tbaa !258
  call void @llvm.dbg.value(metadata ptr %18, metadata !866, metadata !DIExpression()), !dbg !867
  br label %if.end62, !dbg !938

if.end62:                                         ; preds = %if.end58, %for.body28
  %pend.2 = phi ptr [ %18, %if.end58 ], [ %pend.1169, %for.body28 ], !dbg !939
  call void @llvm.dbg.value(metadata ptr %pend.2, metadata !866, metadata !DIExpression()), !dbg !867
  %right = getelementptr inbounds %struct._NodeInfo, ptr %active.0168, i64 0, i32 3, !dbg !940
  %19 = load ptr, ptr %right, align 8, !dbg !940, !tbaa !327
  %cmp63.not = icmp eq ptr %19, null, !dbg !942
  br i1 %cmp63.not, label %if.end96, label %if.then64, !dbg !943

if.then64:                                        ; preds = %if.end62
  %20 = load ptr, ptr %relinquish_value, align 8, !dbg !944, !tbaa !273
  %cmp66.not = icmp eq ptr %20, null, !dbg !947
  br i1 %cmp66.not, label %if.end78, label %land.lhs.true67, !dbg !948

land.lhs.true67:                                  ; preds = %if.then64
  %value69 = getelementptr inbounds %struct._NodeInfo, ptr %19, i64 0, i32 1, !dbg !949
  %21 = load ptr, ptr %value69, align 8, !dbg !949, !tbaa !278
  %cmp70.not = icmp eq ptr %21, null, !dbg !950
  br i1 %cmp70.not, label %if.end78, label %if.then71, !dbg !951

if.then71:                                        ; preds = %land.lhs.true67
  %call75 = tail call ptr %20(ptr noundef nonnull %21) #11, !dbg !952
  %22 = load ptr, ptr %right, align 8, !dbg !953, !tbaa !327
  %value77 = getelementptr inbounds %struct._NodeInfo, ptr %22, i64 0, i32 1, !dbg !954
  store ptr %call75, ptr %value77, align 8, !dbg !955, !tbaa !278
  br label %if.end78, !dbg !956

if.end78:                                         ; preds = %if.then71, %land.lhs.true67, %if.then64
  %23 = phi ptr [ %22, %if.then71 ], [ %19, %land.lhs.true67 ], [ %19, %if.then64 ]
  %24 = load ptr, ptr %relinquish_key, align 8, !dbg !957, !tbaa !288
  %cmp80.not = icmp eq ptr %24, null, !dbg !959
  br i1 %cmp80.not, label %if.end92, label %land.lhs.true81, !dbg !960

land.lhs.true81:                                  ; preds = %if.end78
  %25 = load ptr, ptr %23, align 8, !dbg !961, !tbaa !258
  %cmp84.not = icmp eq ptr %25, null, !dbg !962
  br i1 %cmp84.not, label %if.end92, label %if.then85, !dbg !963

if.then85:                                        ; preds = %land.lhs.true81
  %call89 = tail call ptr %24(ptr noundef nonnull %25) #11, !dbg !964
  %26 = load ptr, ptr %right, align 8, !dbg !965, !tbaa !327
  store ptr %call89, ptr %26, align 8, !dbg !966, !tbaa !258
  br label %if.end92, !dbg !967

if.end92:                                         ; preds = %if.then85, %land.lhs.true81, %if.end78
  %27 = phi ptr [ %26, %if.then85 ], [ %23, %land.lhs.true81 ], [ %23, %if.end78 ], !dbg !968
  store ptr %pend.2, ptr %27, align 8, !dbg !969, !tbaa !258
  call void @llvm.dbg.value(metadata ptr %27, metadata !866, metadata !DIExpression()), !dbg !867
  br label %if.end96, !dbg !970

if.end96:                                         ; preds = %if.end92, %if.end62
  %pend.3 = phi ptr [ %27, %if.end92 ], [ %pend.2, %if.end62 ], !dbg !971
  call void @llvm.dbg.value(metadata ptr %pend.3, metadata !866, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata ptr %active.0168, metadata !864, metadata !DIExpression()), !dbg !867
  %28 = load ptr, ptr %active.0168, align 8, !dbg !972, !tbaa !258
  call void @llvm.dbg.value(metadata ptr %28, metadata !865, metadata !DIExpression()), !dbg !867
  %call98 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %active.0168) #11, !dbg !973
  call void @llvm.dbg.value(metadata ptr %call98, metadata !864, metadata !DIExpression()), !dbg !867
  %cmp27.not = icmp eq ptr %28, null, !dbg !974
  br i1 %cmp27.not, label %for.cond26.for.cond.loopexit_crit_edge, label %for.body28.backedge, !dbg !975

for.body28.backedge:                              ; preds = %if.end96, %for.cond26.for.cond.loopexit_crit_edge
  %pend.1169.be = phi ptr [ %pend.3, %if.end96 ], [ null, %for.cond26.for.cond.loopexit_crit_edge ]
  %active.0168.be = phi ptr [ %28, %if.end96 ], [ %pend.3, %for.cond26.for.cond.loopexit_crit_edge ]
  br label %for.body28, !dbg !867, !llvm.loop !976

if.end100:                                        ; preds = %for.cond26.for.cond.loopexit_crit_edge, %entry
  %signature = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 10, !dbg !978
  store i64 -2880220588, ptr %signature, align 8, !dbg !979, !tbaa !628
  %29 = load ptr, ptr %semaphore, align 8, !dbg !980, !tbaa !239
  tail call void @UnlockSemaphoreInfo(ptr noundef %29) #11, !dbg !981
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %semaphore) #11, !dbg !982
  %call103 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %splay_tree) #11, !dbg !983
  call void @llvm.dbg.value(metadata ptr %call103, metadata !863, metadata !DIExpression()), !dbg !867
  ret ptr %call103, !dbg !984
}

declare !dbg !985 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextKeyInSplayTree(ptr noundef %splay_tree) local_unnamed_addr #0 !dbg !989 {
entry:
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !993, metadata !DIExpression()), !dbg !996
  %debug = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 8, !dbg !997
  %0 = load i32, ptr %debug, align 8, !dbg !997, !tbaa !529
  %cmp.not = icmp eq i32 %0, 0, !dbg !999
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1000

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 778, ptr noundef nonnull @.str.2) #11, !dbg !1001
  br label %if.end, !dbg !1002

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %splay_tree, align 8, !dbg !1003, !tbaa !249
  %cmp1 = icmp eq ptr %1, null, !dbg !1005
  br i1 %cmp1, label %cleanup, label %lor.lhs.false, !dbg !1006

lor.lhs.false:                                    ; preds = %if.end
  %next = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 6, !dbg !1007
  %2 = load ptr, ptr %next, align 8, !dbg !1007, !tbaa !1008
  %cmp2 = icmp eq ptr %2, null, !dbg !1009
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !1010

if.end4:                                          ; preds = %lor.lhs.false
  %semaphore = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 9, !dbg !1011
  %3 = load ptr, ptr %semaphore, align 8, !dbg !1011, !tbaa !239
  tail call void @LockSemaphoreInfo(ptr noundef %3) #11, !dbg !1012
  %4 = load ptr, ptr %next, align 8, !dbg !1013, !tbaa !1008
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %splay_tree, ptr noundef %4), !dbg !1014
  store ptr null, ptr %next, align 8, !dbg !1015, !tbaa !1008
  %5 = load ptr, ptr %splay_tree, align 8, !dbg !1016, !tbaa !249
  %right = getelementptr inbounds %struct._NodeInfo, ptr %5, i64 0, i32 3, !dbg !1017
  %6 = load ptr, ptr %right, align 8, !dbg !1017, !tbaa !327
  call void @llvm.dbg.value(metadata ptr %6, metadata !994, metadata !DIExpression()), !dbg !996
  %cmp8.not = icmp eq ptr %6, null, !dbg !1018
  br i1 %cmp8.not, label %if.end14, label %while.cond, !dbg !1020

while.cond:                                       ; preds = %if.end4, %while.cond
  %node.0 = phi ptr [ %7, %while.cond ], [ %6, %if.end4 ], !dbg !996
  call void @llvm.dbg.value(metadata ptr %node.0, metadata !994, metadata !DIExpression()), !dbg !996
  %left = getelementptr inbounds %struct._NodeInfo, ptr %node.0, i64 0, i32 2, !dbg !1021
  %7 = load ptr, ptr %left, align 8, !dbg !1021, !tbaa !325
  %cmp10.not = icmp eq ptr %7, null, !dbg !1023
  br i1 %cmp10.not, label %while.end, label %while.cond, !dbg !1024, !llvm.loop !1025

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %node.0, align 8, !dbg !1027, !tbaa !258
  store ptr %8, ptr %next, align 8, !dbg !1028, !tbaa !1008
  br label %if.end14, !dbg !1029

if.end14:                                         ; preds = %while.end, %if.end4
  %9 = load ptr, ptr %5, align 8, !dbg !1030, !tbaa !258
  call void @llvm.dbg.value(metadata ptr %9, metadata !995, metadata !DIExpression()), !dbg !996
  %10 = load ptr, ptr %semaphore, align 8, !dbg !1031, !tbaa !239
  tail call void @UnlockSemaphoreInfo(ptr noundef %10) #11, !dbg !1032
  br label %cleanup, !dbg !1033

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %if.end14
  %retval.0 = phi ptr [ %9, %if.end14 ], [ null, %lor.lhs.false ], [ null, %if.end ], !dbg !996
  ret ptr %retval.0, !dbg !1034
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextValueInSplayTree(ptr noundef %splay_tree) local_unnamed_addr #0 !dbg !1035 {
entry:
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !1037, metadata !DIExpression()), !dbg !1040
  %debug = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 8, !dbg !1041
  %0 = load i32, ptr %debug, align 8, !dbg !1041, !tbaa !529
  %cmp.not = icmp eq i32 %0, 0, !dbg !1043
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1044

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 832, ptr noundef nonnull @.str.2) #11, !dbg !1045
  br label %if.end, !dbg !1046

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %splay_tree, align 8, !dbg !1047, !tbaa !249
  %cmp1 = icmp eq ptr %1, null, !dbg !1049
  br i1 %cmp1, label %cleanup, label %lor.lhs.false, !dbg !1050

lor.lhs.false:                                    ; preds = %if.end
  %next = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 6, !dbg !1051
  %2 = load ptr, ptr %next, align 8, !dbg !1051, !tbaa !1008
  %cmp2 = icmp eq ptr %2, null, !dbg !1052
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !1053

if.end4:                                          ; preds = %lor.lhs.false
  %semaphore = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 9, !dbg !1054
  %3 = load ptr, ptr %semaphore, align 8, !dbg !1054, !tbaa !239
  tail call void @LockSemaphoreInfo(ptr noundef %3) #11, !dbg !1055
  %4 = load ptr, ptr %next, align 8, !dbg !1056, !tbaa !1008
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %splay_tree, ptr noundef %4), !dbg !1057
  store ptr null, ptr %next, align 8, !dbg !1058, !tbaa !1008
  %5 = load ptr, ptr %splay_tree, align 8, !dbg !1059, !tbaa !249
  %right = getelementptr inbounds %struct._NodeInfo, ptr %5, i64 0, i32 3, !dbg !1060
  %6 = load ptr, ptr %right, align 8, !dbg !1060, !tbaa !327
  call void @llvm.dbg.value(metadata ptr %6, metadata !1038, metadata !DIExpression()), !dbg !1040
  %cmp8.not = icmp eq ptr %6, null, !dbg !1061
  br i1 %cmp8.not, label %if.end13, label %while.cond, !dbg !1063

while.cond:                                       ; preds = %if.end4, %while.cond
  %node.0 = phi ptr [ %7, %while.cond ], [ %6, %if.end4 ], !dbg !1040
  call void @llvm.dbg.value(metadata ptr %node.0, metadata !1038, metadata !DIExpression()), !dbg !1040
  %left = getelementptr inbounds %struct._NodeInfo, ptr %node.0, i64 0, i32 2, !dbg !1064
  %7 = load ptr, ptr %left, align 8, !dbg !1064, !tbaa !325
  %cmp10.not = icmp eq ptr %7, null, !dbg !1066
  br i1 %cmp10.not, label %while.end, label %while.cond, !dbg !1067, !llvm.loop !1068

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %node.0, align 8, !dbg !1070, !tbaa !258
  store ptr %8, ptr %next, align 8, !dbg !1071, !tbaa !1008
  br label %if.end13, !dbg !1072

if.end13:                                         ; preds = %while.end, %if.end4
  %value15 = getelementptr inbounds %struct._NodeInfo, ptr %5, i64 0, i32 1, !dbg !1073
  %9 = load ptr, ptr %value15, align 8, !dbg !1073, !tbaa !278
  call void @llvm.dbg.value(metadata ptr %9, metadata !1039, metadata !DIExpression()), !dbg !1040
  %10 = load ptr, ptr %semaphore, align 8, !dbg !1074, !tbaa !239
  tail call void @UnlockSemaphoreInfo(ptr noundef %10) #11, !dbg !1075
  br label %cleanup, !dbg !1076

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %if.end13
  %retval.0 = phi ptr [ %9, %if.end13 ], [ null, %lor.lhs.false ], [ null, %if.end ], !dbg !1040
  ret ptr %retval.0, !dbg !1077
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetValueFromSplayTree(ptr noundef %splay_tree, ptr noundef %key) local_unnamed_addr #0 !dbg !1078 {
entry:
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !1082, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata ptr %key, metadata !1083, metadata !DIExpression()), !dbg !1086
  %debug = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 8, !dbg !1087
  %0 = load i32, ptr %debug, align 8, !dbg !1087, !tbaa !529
  %cmp.not = icmp eq i32 %0, 0, !dbg !1089
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1090

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 890, ptr noundef nonnull @.str.2) #11, !dbg !1091
  br label %if.end, !dbg !1092

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %splay_tree, align 8, !dbg !1093, !tbaa !249
  %cmp1 = icmp eq ptr %1, null, !dbg !1095
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !1096

if.end3:                                          ; preds = %if.end
  %semaphore = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 9, !dbg !1097
  %2 = load ptr, ptr %semaphore, align 8, !dbg !1097, !tbaa !239
  tail call void @LockSemaphoreInfo(ptr noundef %2) #11, !dbg !1098
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %splay_tree, ptr noundef %key), !dbg !1099
  %compare4 = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 1, !dbg !1100
  %3 = load ptr, ptr %compare4, align 8, !dbg !1100, !tbaa !255
  %cmp5.not = icmp eq ptr %3, null, !dbg !1102
  %4 = load ptr, ptr %splay_tree, align 8, !dbg !1103, !tbaa !249
  %5 = load ptr, ptr %4, align 8, !dbg !1103, !tbaa !258
  br i1 %cmp5.not, label %if.else, label %if.then6, !dbg !1104

if.then6:                                         ; preds = %if.end3
  %call10 = tail call i32 %3(ptr noundef %5, ptr noundef %key) #11, !dbg !1105
  call void @llvm.dbg.value(metadata i32 %call10, metadata !1084, metadata !DIExpression()), !dbg !1086
  br label %if.end18, !dbg !1106

if.else:                                          ; preds = %if.end3
  %cmp13 = icmp ugt ptr %5, %key, !dbg !1107
  br i1 %cmp13, label %cleanup.sink.split, label %cond.false, !dbg !1108

cond.false:                                       ; preds = %if.else
  %cmp16 = icmp ult ptr %5, %key, !dbg !1109
  %cond = sext i1 %cmp16 to i32, !dbg !1110
  br label %if.end18, !dbg !1108

if.end18:                                         ; preds = %cond.false, %if.then6
  %compare.0 = phi i32 [ %call10, %if.then6 ], [ %cond, %cond.false ], !dbg !1103
  call void @llvm.dbg.value(metadata i32 %compare.0, metadata !1084, metadata !DIExpression()), !dbg !1086
  %cmp19.not = icmp eq i32 %compare.0, 0, !dbg !1111
  br i1 %cmp19.not, label %if.end22, label %cleanup.sink.split, !dbg !1113

if.end22:                                         ; preds = %if.end18
  %6 = load ptr, ptr %splay_tree, align 8, !dbg !1114, !tbaa !249
  %value24 = getelementptr inbounds %struct._NodeInfo, ptr %6, i64 0, i32 1, !dbg !1115
  %7 = load ptr, ptr %value24, align 8, !dbg !1115, !tbaa !278
  call void @llvm.dbg.value(metadata ptr %7, metadata !1085, metadata !DIExpression()), !dbg !1086
  br label %cleanup.sink.split, !dbg !1116

cleanup.sink.split:                               ; preds = %if.end18, %if.else, %if.end22
  %retval.0.ph = phi ptr [ %7, %if.end22 ], [ null, %if.else ], [ null, %if.end18 ]
  %8 = load ptr, ptr %semaphore, align 8, !dbg !1086, !tbaa !239
  tail call void @UnlockSemaphoreInfo(ptr noundef %8) #11, !dbg !1086
  br label %cleanup, !dbg !1117

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi ptr [ null, %if.end ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !1086
  ret ptr %retval.0, !dbg !1117
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetNumberOfNodesInSplayTree(ptr nocapture noundef readonly %splay_tree) local_unnamed_addr #0 !dbg !1118 {
entry:
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !1124, metadata !DIExpression()), !dbg !1125
  %debug = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 8, !dbg !1126
  %0 = load i32, ptr %debug, align 8, !dbg !1126, !tbaa !529
  %cmp.not = icmp eq i32 %0, 0, !dbg !1128
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1129

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 939, ptr noundef nonnull @.str.2) #11, !dbg !1130
  br label %if.end, !dbg !1131

if.end:                                           ; preds = %if.then, %entry
  %nodes = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 7, !dbg !1132
  %1 = load i64, ptr %nodes, align 8, !dbg !1132, !tbaa !345
  ret i64 %1, !dbg !1133
}

declare !dbg !1134 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1138 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #5

declare !dbg !1142 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1146 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !1149 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !1150 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1153 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

declare !dbg !1157 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1160 i32 @IsEventLogging() local_unnamed_addr #3

declare !dbg !1163 ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveNodeByValueFromSplayTree(ptr noundef %splay_tree, ptr noundef readnone %value) local_unnamed_addr #0 !dbg !1166 {
entry:
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !1170, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata ptr %value, metadata !1171, metadata !DIExpression()), !dbg !1181
  %debug = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 8, !dbg !1182
  %0 = load i32, ptr %debug, align 8, !dbg !1182, !tbaa !529
  %cmp.not = icmp eq i32 %0, 0, !dbg !1184
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1185

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1162, ptr noundef nonnull @.str.2) #11, !dbg !1186
  br label %if.end, !dbg !1187

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr null, metadata !1174, metadata !DIExpression()), !dbg !1181
  %1 = load ptr, ptr %splay_tree, align 8, !dbg !1188, !tbaa !249
  %cmp1 = icmp eq ptr %1, null, !dbg !1190
  br i1 %cmp1, label %cleanup84, label %if.end3, !dbg !1191

if.end3:                                          ; preds = %if.end
  %semaphore = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 9, !dbg !1192
  %2 = load ptr, ptr %semaphore, align 8, !dbg !1192, !tbaa !239
  tail call void @LockSemaphoreInfo(ptr noundef %2) #11, !dbg !1193
  %splay_tree.val = load ptr, ptr %splay_tree, align 8, !dbg !1194, !tbaa !249
  call void @llvm.dbg.value(metadata ptr undef, metadata !549, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr %splay_tree.val, metadata !550, metadata !DIExpression()), !dbg !1195
  %cmp.i = icmp eq ptr %splay_tree.val, null, !dbg !1197
  br i1 %cmp.i, label %while.cond.preheader, label %while.cond.i, !dbg !1199

while.cond.i:                                     ; preds = %if.end3, %while.cond.i
  %node.0.i = phi ptr [ %3, %while.cond.i ], [ %splay_tree.val, %if.end3 ], !dbg !1195
  call void @llvm.dbg.value(metadata ptr %node.0.i, metadata !550, metadata !DIExpression()), !dbg !1195
  %left.i = getelementptr inbounds %struct._NodeInfo, ptr %node.0.i, i64 0, i32 2, !dbg !1200
  %3 = load ptr, ptr %left.i, align 8, !dbg !1200, !tbaa !325
  %cmp2.not.i = icmp eq ptr %3, null, !dbg !1201
  br i1 %cmp2.not.i, label %while.end.i, label %while.cond.i, !dbg !1202, !llvm.loop !1203

while.end.i:                                      ; preds = %while.cond.i
  %4 = load ptr, ptr %node.0.i, align 8, !dbg !1205, !tbaa !258
  br label %while.cond.preheader, !dbg !1206

while.cond.preheader:                             ; preds = %if.end3, %while.end.i
  %next.0.ph = phi ptr [ null, %if.end3 ], [ %4, %while.end.i ]
  br label %while.cond, !dbg !1207

while.cond:                                       ; preds = %while.cond.preheader, %if.end14
  %next.0 = phi ptr [ %next.1, %if.end14 ], [ %next.0.ph, %while.cond.preheader ], !dbg !1181
  call void @llvm.dbg.value(metadata ptr %next.0, metadata !1172, metadata !DIExpression()), !dbg !1181
  %cmp5.not = icmp eq ptr %next.0, null, !dbg !1208
  br i1 %cmp5.not, label %cleanup84.sink.split, label %while.body, !dbg !1207

while.body:                                       ; preds = %while.cond
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %splay_tree, ptr noundef nonnull %next.0), !dbg !1209
  call void @llvm.dbg.value(metadata ptr null, metadata !1172, metadata !DIExpression()), !dbg !1181
  %5 = load ptr, ptr %splay_tree, align 8, !dbg !1210, !tbaa !249
  %right = getelementptr inbounds %struct._NodeInfo, ptr %5, i64 0, i32 3, !dbg !1211
  %6 = load ptr, ptr %right, align 8, !dbg !1211, !tbaa !327
  call void @llvm.dbg.value(metadata ptr %6, metadata !1173, metadata !DIExpression()), !dbg !1181
  %cmp7.not = icmp eq ptr %6, null, !dbg !1212
  br i1 %cmp7.not, label %if.end14, label %while.cond9, !dbg !1214

while.cond9:                                      ; preds = %while.body, %while.cond9
  %node.0 = phi ptr [ %7, %while.cond9 ], [ %6, %while.body ], !dbg !1215
  call void @llvm.dbg.value(metadata ptr %node.0, metadata !1173, metadata !DIExpression()), !dbg !1181
  %left = getelementptr inbounds %struct._NodeInfo, ptr %node.0, i64 0, i32 2, !dbg !1216
  %7 = load ptr, ptr %left, align 8, !dbg !1216, !tbaa !325
  %cmp10.not = icmp eq ptr %7, null, !dbg !1218
  br i1 %cmp10.not, label %while.end, label %while.cond9, !dbg !1219, !llvm.loop !1220

while.end:                                        ; preds = %while.cond9
  %8 = load ptr, ptr %node.0, align 8, !dbg !1222, !tbaa !258
  call void @llvm.dbg.value(metadata ptr %8, metadata !1172, metadata !DIExpression()), !dbg !1181
  br label %if.end14, !dbg !1223

if.end14:                                         ; preds = %while.end, %while.body
  %next.1 = phi ptr [ %8, %while.end ], [ null, %while.body ], !dbg !1215
  call void @llvm.dbg.value(metadata ptr %next.1, metadata !1172, metadata !DIExpression()), !dbg !1181
  %value16 = getelementptr inbounds %struct._NodeInfo, ptr %5, i64 0, i32 1, !dbg !1224
  %9 = load ptr, ptr %value16, align 8, !dbg !1224, !tbaa !278
  %cmp17 = icmp eq ptr %9, %value, !dbg !1225
  br i1 %cmp17, label %if.then18, label %while.cond, !dbg !1226, !llvm.loop !1227

if.then18:                                        ; preds = %if.end14
  %10 = load ptr, ptr %5, align 8, !dbg !1229, !tbaa !258
  call void @llvm.dbg.value(metadata ptr %10, metadata !1174, metadata !DIExpression()), !dbg !1181
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %splay_tree, ptr noundef %10), !dbg !1230
  %key23 = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 5, !dbg !1231
  store ptr null, ptr %key23, align 8, !dbg !1232, !tbaa !342
  %compare24 = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 1, !dbg !1233
  %11 = load ptr, ptr %compare24, align 8, !dbg !1233, !tbaa !255
  %cmp25.not = icmp eq ptr %11, null, !dbg !1235
  %12 = load ptr, ptr %splay_tree, align 8, !dbg !1236, !tbaa !249
  %13 = load ptr, ptr %12, align 8, !dbg !1236, !tbaa !258
  br i1 %cmp25.not, label %if.else, label %if.then26, !dbg !1237

if.then26:                                        ; preds = %if.then18
  %call30 = tail call i32 %11(ptr noundef %13, ptr noundef %10) #11, !dbg !1238
  call void @llvm.dbg.value(metadata i32 %call30, metadata !1175, metadata !DIExpression()), !dbg !1239
  br label %if.end38, !dbg !1240

if.else:                                          ; preds = %if.then18
  %cmp33 = icmp ugt ptr %13, %10, !dbg !1241
  br i1 %cmp33, label %cleanup84.sink.split, label %cond.false, !dbg !1242

cond.false:                                       ; preds = %if.else
  %cmp36 = icmp ult ptr %13, %10, !dbg !1243
  %cond = sext i1 %cmp36 to i32, !dbg !1244
  br label %if.end38, !dbg !1242

if.end38:                                         ; preds = %cond.false, %if.then26
  %compare.0 = phi i32 [ %call30, %if.then26 ], [ %cond, %cond.false ], !dbg !1236
  call void @llvm.dbg.value(metadata i32 %compare.0, metadata !1175, metadata !DIExpression()), !dbg !1239
  %cmp39.not = icmp eq i32 %compare.0, 0, !dbg !1245
  br i1 %cmp39.not, label %if.end42, label %cleanup84.sink.split, !dbg !1247

if.end42:                                         ; preds = %if.end38
  %14 = load ptr, ptr %splay_tree, align 8, !dbg !1248, !tbaa !249
  %left44 = getelementptr inbounds %struct._NodeInfo, ptr %14, i64 0, i32 2, !dbg !1249
  %15 = load ptr, ptr %left44, align 8, !dbg !1249, !tbaa !325
  call void @llvm.dbg.value(metadata ptr %15, metadata !1179, metadata !DIExpression()), !dbg !1239
  %right46 = getelementptr inbounds %struct._NodeInfo, ptr %14, i64 0, i32 3, !dbg !1250
  %16 = load ptr, ptr %right46, align 8, !dbg !1250, !tbaa !327
  call void @llvm.dbg.value(metadata ptr %16, metadata !1180, metadata !DIExpression()), !dbg !1239
  %relinquish_value = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 3, !dbg !1251
  %17 = load ptr, ptr %relinquish_value, align 8, !dbg !1251, !tbaa !273
  %cmp47.not = icmp eq ptr %17, null, !dbg !1253
  br i1 %cmp47.not, label %if.end58, label %land.lhs.true, !dbg !1254

land.lhs.true:                                    ; preds = %if.end42
  %value49 = getelementptr inbounds %struct._NodeInfo, ptr %14, i64 0, i32 1, !dbg !1255
  %18 = load ptr, ptr %value49, align 8, !dbg !1255, !tbaa !278
  %cmp50.not = icmp eq ptr %18, null, !dbg !1256
  br i1 %cmp50.not, label %if.end58, label %if.then51, !dbg !1257

if.then51:                                        ; preds = %land.lhs.true
  %call55 = tail call ptr %17(ptr noundef nonnull %18) #11, !dbg !1258
  %19 = load ptr, ptr %splay_tree, align 8, !dbg !1259, !tbaa !249
  %value57 = getelementptr inbounds %struct._NodeInfo, ptr %19, i64 0, i32 1, !dbg !1260
  store ptr %call55, ptr %value57, align 8, !dbg !1261, !tbaa !278
  br label %if.end58, !dbg !1262

if.end58:                                         ; preds = %if.then51, %land.lhs.true, %if.end42
  %20 = phi ptr [ %19, %if.then51 ], [ %14, %land.lhs.true ], [ %14, %if.end42 ], !dbg !1263
  %call60 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %20) #11, !dbg !1264
  %nodes = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 7, !dbg !1265
  %21 = load i64, ptr %nodes, align 8, !dbg !1266, !tbaa !345
  %dec = add i64 %21, -1, !dbg !1266
  store i64 %dec, ptr %nodes, align 8, !dbg !1266, !tbaa !345
  %cmp62 = icmp eq ptr %15, null, !dbg !1267
  br i1 %cmp62, label %cleanup84.sink.split.sink.split, label %if.end66, !dbg !1269

if.end66:                                         ; preds = %if.end58
  store ptr %15, ptr %splay_tree, align 8, !dbg !1270, !tbaa !249
  %cmp68.not = icmp eq ptr %16, null, !dbg !1271
  br i1 %cmp68.not, label %cleanup84.sink.split, label %while.cond70, !dbg !1273

while.cond70:                                     ; preds = %if.end66, %while.cond70
  %left19.0 = phi ptr [ %22, %while.cond70 ], [ %15, %if.end66 ], !dbg !1239
  call void @llvm.dbg.value(metadata ptr %left19.0, metadata !1179, metadata !DIExpression()), !dbg !1239
  %right71 = getelementptr inbounds %struct._NodeInfo, ptr %left19.0, i64 0, i32 3, !dbg !1274
  %22 = load ptr, ptr %right71, align 8, !dbg !1274, !tbaa !327
  %cmp72.not = icmp eq ptr %22, null, !dbg !1276
  br i1 %cmp72.not, label %while.end75, label %while.cond70, !dbg !1277, !llvm.loop !1278

while.end75:                                      ; preds = %while.cond70
  %right71.le = getelementptr inbounds %struct._NodeInfo, ptr %left19.0, i64 0, i32 3, !dbg !1274
  br label %cleanup84.sink.split.sink.split, !dbg !1280

cleanup84.sink.split.sink.split:                  ; preds = %if.end58, %while.end75
  %right71.le.sink = phi ptr [ %right71.le, %while.end75 ], [ %splay_tree, %if.end58 ]
  store ptr %16, ptr %right71.le.sink, align 8, !dbg !1239, !tbaa !438
  br label %cleanup84.sink.split, !dbg !1181

cleanup84.sink.split:                             ; preds = %while.cond, %cleanup84.sink.split.sink.split, %if.end66, %if.end38, %if.else
  %retval.1.ph = phi ptr [ %10, %if.else ], [ %10, %if.end38 ], [ %10, %if.end66 ], [ %10, %cleanup84.sink.split.sink.split ], [ null, %while.cond ]
  %23 = load ptr, ptr %semaphore, align 8, !dbg !1181, !tbaa !239
  tail call void @UnlockSemaphoreInfo(ptr noundef %23) #11, !dbg !1181
  br label %cleanup84, !dbg !1281

cleanup84:                                        ; preds = %cleanup84.sink.split, %if.end
  %retval.1 = phi ptr [ null, %if.end ], [ %retval.1.ph, %cleanup84.sink.split ], !dbg !1181
  ret ptr %retval.1, !dbg !1281
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveNodeFromSplayTree(ptr noundef %splay_tree, ptr noundef %key) local_unnamed_addr #0 !dbg !1282 {
entry:
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !1284, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata ptr %key, metadata !1285, metadata !DIExpression()), !dbg !1290
  %debug = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 8, !dbg !1291
  %0 = load i32, ptr %debug, align 8, !dbg !1291, !tbaa !529
  %cmp.not = icmp eq i32 %0, 0, !dbg !1293
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1294

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1274, ptr noundef nonnull @.str.2) #11, !dbg !1295
  br label %if.end, !dbg !1296

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr null, metadata !1289, metadata !DIExpression()), !dbg !1290
  %1 = load ptr, ptr %splay_tree, align 8, !dbg !1297, !tbaa !249
  %cmp1 = icmp eq ptr %1, null, !dbg !1299
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !1300

if.end3:                                          ; preds = %if.end
  %semaphore = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 9, !dbg !1301
  %2 = load ptr, ptr %semaphore, align 8, !dbg !1301, !tbaa !239
  tail call void @LockSemaphoreInfo(ptr noundef %2) #11, !dbg !1302
  tail call fastcc void @SplaySplayTree(ptr noundef nonnull %splay_tree, ptr noundef %key), !dbg !1303
  %key4 = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 5, !dbg !1304
  store ptr null, ptr %key4, align 8, !dbg !1305, !tbaa !342
  %compare5 = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 1, !dbg !1306
  %3 = load ptr, ptr %compare5, align 8, !dbg !1306, !tbaa !255
  %cmp6.not = icmp eq ptr %3, null, !dbg !1308
  %4 = load ptr, ptr %splay_tree, align 8, !dbg !1309, !tbaa !249
  %5 = load ptr, ptr %4, align 8, !dbg !1309, !tbaa !258
  br i1 %cmp6.not, label %if.else, label %if.then7, !dbg !1310

if.then7:                                         ; preds = %if.end3
  %call11 = tail call i32 %3(ptr noundef %5, ptr noundef %key) #11, !dbg !1311
  call void @llvm.dbg.value(metadata i32 %call11, metadata !1286, metadata !DIExpression()), !dbg !1290
  br label %if.end19, !dbg !1312

if.else:                                          ; preds = %if.end3
  %cmp14 = icmp ugt ptr %5, %key, !dbg !1313
  br i1 %cmp14, label %cleanup.sink.split, label %cond.false, !dbg !1314

cond.false:                                       ; preds = %if.else
  %cmp17 = icmp ult ptr %5, %key, !dbg !1315
  %cond = sext i1 %cmp17 to i32, !dbg !1316
  br label %if.end19, !dbg !1314

if.end19:                                         ; preds = %cond.false, %if.then7
  %compare.0 = phi i32 [ %call11, %if.then7 ], [ %cond, %cond.false ], !dbg !1309
  call void @llvm.dbg.value(metadata i32 %compare.0, metadata !1286, metadata !DIExpression()), !dbg !1290
  %cmp20.not = icmp eq i32 %compare.0, 0, !dbg !1317
  br i1 %cmp20.not, label %if.end23, label %cleanup.sink.split, !dbg !1319

if.end23:                                         ; preds = %if.end19
  %6 = load ptr, ptr %splay_tree, align 8, !dbg !1320, !tbaa !249
  %left25 = getelementptr inbounds %struct._NodeInfo, ptr %6, i64 0, i32 2, !dbg !1321
  %7 = load ptr, ptr %left25, align 8, !dbg !1321, !tbaa !325
  call void @llvm.dbg.value(metadata ptr %7, metadata !1287, metadata !DIExpression()), !dbg !1290
  %right27 = getelementptr inbounds %struct._NodeInfo, ptr %6, i64 0, i32 3, !dbg !1322
  %8 = load ptr, ptr %right27, align 8, !dbg !1322, !tbaa !327
  call void @llvm.dbg.value(metadata ptr %8, metadata !1288, metadata !DIExpression()), !dbg !1290
  %value29 = getelementptr inbounds %struct._NodeInfo, ptr %6, i64 0, i32 1, !dbg !1323
  %9 = load ptr, ptr %value29, align 8, !dbg !1323, !tbaa !278
  call void @llvm.dbg.value(metadata ptr %9, metadata !1289, metadata !DIExpression()), !dbg !1290
  %relinquish_key = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 2, !dbg !1324
  %10 = load ptr, ptr %relinquish_key, align 8, !dbg !1324, !tbaa !288
  %cmp30.not = icmp eq ptr %10, null, !dbg !1326
  br i1 %cmp30.not, label %if.end41, label %land.lhs.true, !dbg !1327

land.lhs.true:                                    ; preds = %if.end23
  %11 = load ptr, ptr %6, align 8, !dbg !1328, !tbaa !258
  %cmp33.not = icmp eq ptr %11, null, !dbg !1329
  br i1 %cmp33.not, label %if.end41, label %if.then34, !dbg !1330

if.then34:                                        ; preds = %land.lhs.true
  %call38 = tail call ptr %10(ptr noundef nonnull %11) #11, !dbg !1331
  %12 = load ptr, ptr %splay_tree, align 8, !dbg !1332, !tbaa !249
  store ptr %call38, ptr %12, align 8, !dbg !1333, !tbaa !258
  br label %if.end41, !dbg !1334

if.end41:                                         ; preds = %if.then34, %land.lhs.true, %if.end23
  %13 = phi ptr [ %12, %if.then34 ], [ %6, %land.lhs.true ], [ %6, %if.end23 ], !dbg !1335
  %call43 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %13) #11, !dbg !1336
  %nodes = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 7, !dbg !1337
  %14 = load i64, ptr %nodes, align 8, !dbg !1338, !tbaa !345
  %dec = add i64 %14, -1, !dbg !1338
  store i64 %dec, ptr %nodes, align 8, !dbg !1338, !tbaa !345
  %cmp45 = icmp eq ptr %7, null, !dbg !1339
  br i1 %cmp45, label %cleanup.sink.split.sink.split, label %if.end49, !dbg !1341

if.end49:                                         ; preds = %if.end41
  store ptr %7, ptr %splay_tree, align 8, !dbg !1342, !tbaa !249
  %cmp51.not = icmp eq ptr %8, null, !dbg !1343
  br i1 %cmp51.not, label %cleanup.sink.split, label %while.cond, !dbg !1345

while.cond:                                       ; preds = %if.end49, %while.cond
  %left.0 = phi ptr [ %15, %while.cond ], [ %7, %if.end49 ], !dbg !1290
  call void @llvm.dbg.value(metadata ptr %left.0, metadata !1287, metadata !DIExpression()), !dbg !1290
  %right53 = getelementptr inbounds %struct._NodeInfo, ptr %left.0, i64 0, i32 3, !dbg !1346
  %15 = load ptr, ptr %right53, align 8, !dbg !1346, !tbaa !327
  %cmp54.not = icmp eq ptr %15, null, !dbg !1348
  br i1 %cmp54.not, label %while.end, label %while.cond, !dbg !1349, !llvm.loop !1350

while.end:                                        ; preds = %while.cond
  %right53.le = getelementptr inbounds %struct._NodeInfo, ptr %left.0, i64 0, i32 3, !dbg !1346
  br label %cleanup.sink.split.sink.split, !dbg !1352

cleanup.sink.split.sink.split:                    ; preds = %if.end41, %while.end
  %right53.le.sink = phi ptr [ %right53.le, %while.end ], [ %splay_tree, %if.end41 ]
  store ptr %8, ptr %right53.le.sink, align 8, !dbg !1290, !tbaa !438
  br label %cleanup.sink.split, !dbg !1290

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end49, %if.end19, %if.else
  %retval.0.ph = phi ptr [ null, %if.else ], [ null, %if.end19 ], [ %9, %if.end49 ], [ %9, %cleanup.sink.split.sink.split ]
  %16 = load ptr, ptr %semaphore, align 8, !dbg !1290, !tbaa !239
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #11, !dbg !1290
  br label %cleanup, !dbg !1353

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi ptr [ null, %if.end ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !1290
  ret ptr %retval.0, !dbg !1353
}

; Function Attrs: nounwind uwtable
define dso_local void @ResetSplayTree(ptr nocapture noundef %splay_tree) local_unnamed_addr #0 !dbg !1354 {
entry:
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !1356, metadata !DIExpression()), !dbg !1360
  %debug = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 8, !dbg !1361
  %0 = load i32, ptr %debug, align 8, !dbg !1361, !tbaa !529
  %cmp.not = icmp eq i32 %0, 0, !dbg !1363
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1364

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1351, ptr noundef nonnull @.str.2) #11, !dbg !1365
  br label %if.end, !dbg !1366

if.end:                                           ; preds = %if.then, %entry
  %semaphore = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 9, !dbg !1367
  %1 = load ptr, ptr %semaphore, align 8, !dbg !1367, !tbaa !239
  tail call void @LockSemaphoreInfo(ptr noundef %1) #11, !dbg !1368
  %2 = load ptr, ptr %splay_tree, align 8, !dbg !1369, !tbaa !249
  %cmp1.not = icmp eq ptr %2, null, !dbg !1371
  br i1 %cmp1.not, label %if.end104, label %if.then2, !dbg !1372

if.then2:                                         ; preds = %if.end
  %relinquish_value = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 3, !dbg !1373
  %3 = load ptr, ptr %relinquish_value, align 8, !dbg !1373, !tbaa !273
  %cmp3.not = icmp eq ptr %3, null, !dbg !1376
  br i1 %cmp3.not, label %if.end13, label %land.lhs.true, !dbg !1377

land.lhs.true:                                    ; preds = %if.then2
  %value = getelementptr inbounds %struct._NodeInfo, ptr %2, i64 0, i32 1, !dbg !1378
  %4 = load ptr, ptr %value, align 8, !dbg !1378, !tbaa !278
  %cmp5.not = icmp eq ptr %4, null, !dbg !1379
  br i1 %cmp5.not, label %if.end13, label %if.then6, !dbg !1380

if.then6:                                         ; preds = %land.lhs.true
  %call10 = tail call ptr %3(ptr noundef nonnull %4) #11, !dbg !1381
  %5 = load ptr, ptr %splay_tree, align 8, !dbg !1382, !tbaa !249
  %value12 = getelementptr inbounds %struct._NodeInfo, ptr %5, i64 0, i32 1, !dbg !1383
  store ptr %call10, ptr %value12, align 8, !dbg !1384, !tbaa !278
  br label %if.end13, !dbg !1385

if.end13:                                         ; preds = %if.then6, %land.lhs.true, %if.then2
  %6 = phi ptr [ %5, %if.then6 ], [ %2, %land.lhs.true ], [ %2, %if.then2 ]
  %relinquish_key = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 2, !dbg !1386
  %7 = load ptr, ptr %relinquish_key, align 8, !dbg !1386, !tbaa !288
  %cmp14.not = icmp eq ptr %7, null, !dbg !1388
  br i1 %cmp14.not, label %for.cond30.preheader.preheader, label %land.lhs.true15, !dbg !1389

land.lhs.true15:                                  ; preds = %if.end13
  %8 = load ptr, ptr %6, align 8, !dbg !1390, !tbaa !258
  %cmp17.not = icmp eq ptr %8, null, !dbg !1391
  br i1 %cmp17.not, label %for.cond30.preheader.preheader, label %if.then18, !dbg !1392

if.then18:                                        ; preds = %land.lhs.true15
  %call22 = tail call ptr %7(ptr noundef nonnull %8) #11, !dbg !1393
  %9 = load ptr, ptr %splay_tree, align 8, !dbg !1394, !tbaa !249
  store ptr %call22, ptr %9, align 8, !dbg !1395, !tbaa !258
  br label %for.cond30.preheader.preheader, !dbg !1396

for.cond30.preheader.preheader:                   ; preds = %if.end13, %land.lhs.true15, %if.then18
  %10 = phi ptr [ %9, %if.then18 ], [ %6, %land.lhs.true15 ], [ %6, %if.end13 ], !dbg !1397
  store ptr null, ptr %10, align 8, !dbg !1398, !tbaa !258
  call void @llvm.dbg.value(metadata ptr %10, metadata !1359, metadata !DIExpression()), !dbg !1360
  br label %for.body32, !dbg !1399

for.cond30.for.cond.loopexit_crit_edge:           ; preds = %if.end100
  call void @llvm.dbg.value(metadata ptr %pend.3, metadata !1359, metadata !DIExpression()), !dbg !1360
  %cmp29.not = icmp eq ptr %pend.3, null, !dbg !1401
  br i1 %cmp29.not, label %if.end104, label %for.body32.backedge, !dbg !1399

for.body32:                                       ; preds = %for.body32.backedge, %for.cond30.preheader.preheader
  %pend.1175 = phi ptr [ null, %for.cond30.preheader.preheader ], [ %pend.1175.be, %for.body32.backedge ]
  %active.0174 = phi ptr [ %10, %for.cond30.preheader.preheader ], [ %active.0174.be, %for.body32.backedge ]
  call void @llvm.dbg.value(metadata ptr %pend.1175, metadata !1359, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata ptr %active.0174, metadata !1358, metadata !DIExpression()), !dbg !1360
  %left = getelementptr inbounds %struct._NodeInfo, ptr %active.0174, i64 0, i32 2, !dbg !1403
  %11 = load ptr, ptr %left, align 8, !dbg !1403, !tbaa !325
  %cmp33.not = icmp eq ptr %11, null, !dbg !1409
  br i1 %cmp33.not, label %if.end66, label %if.then34, !dbg !1410

if.then34:                                        ; preds = %for.body32
  %12 = load ptr, ptr %relinquish_value, align 8, !dbg !1411, !tbaa !273
  %cmp36.not = icmp eq ptr %12, null, !dbg !1414
  br i1 %cmp36.not, label %if.end48, label %land.lhs.true37, !dbg !1415

land.lhs.true37:                                  ; preds = %if.then34
  %value39 = getelementptr inbounds %struct._NodeInfo, ptr %11, i64 0, i32 1, !dbg !1416
  %13 = load ptr, ptr %value39, align 8, !dbg !1416, !tbaa !278
  %cmp40.not = icmp eq ptr %13, null, !dbg !1417
  br i1 %cmp40.not, label %if.end48, label %if.then41, !dbg !1418

if.then41:                                        ; preds = %land.lhs.true37
  %call45 = tail call ptr %12(ptr noundef nonnull %13) #11, !dbg !1419
  %14 = load ptr, ptr %left, align 8, !dbg !1420, !tbaa !325
  %value47 = getelementptr inbounds %struct._NodeInfo, ptr %14, i64 0, i32 1, !dbg !1421
  store ptr %call45, ptr %value47, align 8, !dbg !1422, !tbaa !278
  br label %if.end48, !dbg !1423

if.end48:                                         ; preds = %if.then41, %land.lhs.true37, %if.then34
  %15 = phi ptr [ %14, %if.then41 ], [ %11, %land.lhs.true37 ], [ %11, %if.then34 ]
  %16 = load ptr, ptr %relinquish_key, align 8, !dbg !1424, !tbaa !288
  %cmp50.not = icmp eq ptr %16, null, !dbg !1426
  br i1 %cmp50.not, label %if.end62, label %land.lhs.true51, !dbg !1427

land.lhs.true51:                                  ; preds = %if.end48
  %17 = load ptr, ptr %15, align 8, !dbg !1428, !tbaa !258
  %cmp54.not = icmp eq ptr %17, null, !dbg !1429
  br i1 %cmp54.not, label %if.end62, label %if.then55, !dbg !1430

if.then55:                                        ; preds = %land.lhs.true51
  %call59 = tail call ptr %16(ptr noundef nonnull %17) #11, !dbg !1431
  %18 = load ptr, ptr %left, align 8, !dbg !1432, !tbaa !325
  store ptr %call59, ptr %18, align 8, !dbg !1433, !tbaa !258
  br label %if.end62, !dbg !1434

if.end62:                                         ; preds = %if.then55, %land.lhs.true51, %if.end48
  %19 = phi ptr [ %18, %if.then55 ], [ %15, %land.lhs.true51 ], [ %15, %if.end48 ], !dbg !1435
  store ptr %pend.1175, ptr %19, align 8, !dbg !1436, !tbaa !258
  call void @llvm.dbg.value(metadata ptr %19, metadata !1359, metadata !DIExpression()), !dbg !1360
  br label %if.end66, !dbg !1437

if.end66:                                         ; preds = %if.end62, %for.body32
  %pend.2 = phi ptr [ %19, %if.end62 ], [ %pend.1175, %for.body32 ], !dbg !1438
  call void @llvm.dbg.value(metadata ptr %pend.2, metadata !1359, metadata !DIExpression()), !dbg !1360
  %right = getelementptr inbounds %struct._NodeInfo, ptr %active.0174, i64 0, i32 3, !dbg !1439
  %20 = load ptr, ptr %right, align 8, !dbg !1439, !tbaa !327
  %cmp67.not = icmp eq ptr %20, null, !dbg !1441
  br i1 %cmp67.not, label %if.end100, label %if.then68, !dbg !1442

if.then68:                                        ; preds = %if.end66
  %21 = load ptr, ptr %relinquish_value, align 8, !dbg !1443, !tbaa !273
  %cmp70.not = icmp eq ptr %21, null, !dbg !1446
  br i1 %cmp70.not, label %if.end82, label %land.lhs.true71, !dbg !1447

land.lhs.true71:                                  ; preds = %if.then68
  %value73 = getelementptr inbounds %struct._NodeInfo, ptr %20, i64 0, i32 1, !dbg !1448
  %22 = load ptr, ptr %value73, align 8, !dbg !1448, !tbaa !278
  %cmp74.not = icmp eq ptr %22, null, !dbg !1449
  br i1 %cmp74.not, label %if.end82, label %if.then75, !dbg !1450

if.then75:                                        ; preds = %land.lhs.true71
  %call79 = tail call ptr %21(ptr noundef nonnull %22) #11, !dbg !1451
  %23 = load ptr, ptr %right, align 8, !dbg !1452, !tbaa !327
  %value81 = getelementptr inbounds %struct._NodeInfo, ptr %23, i64 0, i32 1, !dbg !1453
  store ptr %call79, ptr %value81, align 8, !dbg !1454, !tbaa !278
  br label %if.end82, !dbg !1455

if.end82:                                         ; preds = %if.then75, %land.lhs.true71, %if.then68
  %24 = phi ptr [ %23, %if.then75 ], [ %20, %land.lhs.true71 ], [ %20, %if.then68 ]
  %25 = load ptr, ptr %relinquish_key, align 8, !dbg !1456, !tbaa !288
  %cmp84.not = icmp eq ptr %25, null, !dbg !1458
  br i1 %cmp84.not, label %if.end96, label %land.lhs.true85, !dbg !1459

land.lhs.true85:                                  ; preds = %if.end82
  %26 = load ptr, ptr %24, align 8, !dbg !1460, !tbaa !258
  %cmp88.not = icmp eq ptr %26, null, !dbg !1461
  br i1 %cmp88.not, label %if.end96, label %if.then89, !dbg !1462

if.then89:                                        ; preds = %land.lhs.true85
  %call93 = tail call ptr %25(ptr noundef nonnull %26) #11, !dbg !1463
  %27 = load ptr, ptr %right, align 8, !dbg !1464, !tbaa !327
  store ptr %call93, ptr %27, align 8, !dbg !1465, !tbaa !258
  br label %if.end96, !dbg !1466

if.end96:                                         ; preds = %if.then89, %land.lhs.true85, %if.end82
  %28 = phi ptr [ %27, %if.then89 ], [ %24, %land.lhs.true85 ], [ %24, %if.end82 ], !dbg !1467
  store ptr %pend.2, ptr %28, align 8, !dbg !1468, !tbaa !258
  call void @llvm.dbg.value(metadata ptr %28, metadata !1359, metadata !DIExpression()), !dbg !1360
  br label %if.end100, !dbg !1469

if.end100:                                        ; preds = %if.end96, %if.end66
  %pend.3 = phi ptr [ %28, %if.end96 ], [ %pend.2, %if.end66 ], !dbg !1470
  call void @llvm.dbg.value(metadata ptr %pend.3, metadata !1359, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata ptr %active.0174, metadata !1357, metadata !DIExpression()), !dbg !1360
  %29 = load ptr, ptr %active.0174, align 8, !dbg !1471, !tbaa !258
  call void @llvm.dbg.value(metadata ptr %29, metadata !1358, metadata !DIExpression()), !dbg !1360
  %call102 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %active.0174) #11, !dbg !1472
  call void @llvm.dbg.value(metadata ptr %call102, metadata !1357, metadata !DIExpression()), !dbg !1360
  %cmp31.not = icmp eq ptr %29, null, !dbg !1473
  br i1 %cmp31.not, label %for.cond30.for.cond.loopexit_crit_edge, label %for.body32.backedge, !dbg !1474

for.body32.backedge:                              ; preds = %if.end100, %for.cond30.for.cond.loopexit_crit_edge
  %pend.1175.be = phi ptr [ %pend.3, %if.end100 ], [ null, %for.cond30.for.cond.loopexit_crit_edge ]
  %active.0174.be = phi ptr [ %29, %if.end100 ], [ %pend.3, %for.cond30.for.cond.loopexit_crit_edge ]
  br label %for.body32, !dbg !1360, !llvm.loop !1475

if.end104:                                        ; preds = %for.cond30.for.cond.loopexit_crit_edge, %if.end
  store ptr null, ptr %splay_tree, align 8, !dbg !1477, !tbaa !249
  %key106 = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 5, !dbg !1478
  %balance = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 4, !dbg !1479
  store i32 0, ptr %balance, align 8, !dbg !1480, !tbaa !392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %key106, i8 0, i64 24, i1 false), !dbg !1481
  %30 = load ptr, ptr %semaphore, align 8, !dbg !1482, !tbaa !239
  tail call void @UnlockSemaphoreInfo(ptr noundef %30) #11, !dbg !1483
  ret void, !dbg !1484
}

; Function Attrs: nounwind uwtable
define dso_local void @ResetSplayTreeIterator(ptr nocapture noundef %splay_tree) local_unnamed_addr #0 !dbg !1485 {
entry:
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !1487, metadata !DIExpression()), !dbg !1488
  %debug = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 8, !dbg !1489
  %0 = load i32, ptr %debug, align 8, !dbg !1489, !tbaa !529
  %cmp.not = icmp eq i32 %0, 0, !dbg !1491
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1492

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1436, ptr noundef nonnull @.str.2) #11, !dbg !1493
  br label %if.end, !dbg !1494

if.end:                                           ; preds = %if.then, %entry
  %semaphore = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 9, !dbg !1495
  %1 = load ptr, ptr %semaphore, align 8, !dbg !1495, !tbaa !239
  tail call void @LockSemaphoreInfo(ptr noundef %1) #11, !dbg !1496
  %splay_tree.val = load ptr, ptr %splay_tree, align 8, !dbg !1497, !tbaa !249
  call void @llvm.dbg.value(metadata ptr undef, metadata !549, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata ptr %splay_tree.val, metadata !550, metadata !DIExpression()), !dbg !1498
  %cmp.i = icmp eq ptr %splay_tree.val, null, !dbg !1500
  br i1 %cmp.i, label %GetFirstSplayTreeNode.exit, label %while.cond.i, !dbg !1501

while.cond.i:                                     ; preds = %if.end, %while.cond.i
  %node.0.i = phi ptr [ %2, %while.cond.i ], [ %splay_tree.val, %if.end ], !dbg !1498
  call void @llvm.dbg.value(metadata ptr %node.0.i, metadata !550, metadata !DIExpression()), !dbg !1498
  %left.i = getelementptr inbounds %struct._NodeInfo, ptr %node.0.i, i64 0, i32 2, !dbg !1502
  %2 = load ptr, ptr %left.i, align 8, !dbg !1502, !tbaa !325
  %cmp2.not.i = icmp eq ptr %2, null, !dbg !1503
  br i1 %cmp2.not.i, label %while.end.i, label %while.cond.i, !dbg !1504, !llvm.loop !1505

while.end.i:                                      ; preds = %while.cond.i
  %3 = load ptr, ptr %node.0.i, align 8, !dbg !1507, !tbaa !258
  br label %GetFirstSplayTreeNode.exit, !dbg !1508

GetFirstSplayTreeNode.exit:                       ; preds = %if.end, %while.end.i
  %retval.0.i = phi ptr [ %3, %while.end.i ], [ null, %if.end ], !dbg !1498
  %next = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 6, !dbg !1509
  store ptr %retval.0.i, ptr %next, align 8, !dbg !1510, !tbaa !1008
  %4 = load ptr, ptr %semaphore, align 8, !dbg !1511, !tbaa !239
  tail call void @UnlockSemaphoreInfo(ptr noundef %4) #11, !dbg !1512
  ret void, !dbg !1513
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @Splay(ptr nocapture noundef %splay_tree, i64 noundef %depth, ptr noundef %key, ptr noundef %node, ptr noundef %parent, ptr noundef %grandparent) unnamed_addr #7 !dbg !1514 {
entry:
  call void @llvm.dbg.value(metadata ptr %splay_tree, metadata !1518, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i64 %depth, metadata !1519, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata ptr %key, metadata !1520, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata ptr %node, metadata !1521, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata ptr %parent, metadata !1522, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata ptr %grandparent, metadata !1523, metadata !DIExpression()), !dbg !1528
  %0 = load ptr, ptr %node, align 8, !dbg !1529, !tbaa !438
  call void @llvm.dbg.value(metadata ptr %0, metadata !1526, metadata !DIExpression()), !dbg !1528
  %cmp = icmp eq ptr %0, null, !dbg !1530
  br i1 %cmp, label %if.then, label %if.end, !dbg !1532

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %parent, align 8, !dbg !1533, !tbaa !438
  br label %cleanup, !dbg !1534

if.end:                                           ; preds = %entry
  %compare1 = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 1, !dbg !1535
  %2 = load ptr, ptr %compare1, align 8, !dbg !1535, !tbaa !255
  %cmp2.not = icmp eq ptr %2, null, !dbg !1537
  %3 = load ptr, ptr %0, align 8, !dbg !1538, !tbaa !258
  br i1 %cmp2.not, label %if.else, label %if.end11, !dbg !1539

if.else:                                          ; preds = %if.end
  %cmp7 = icmp ugt ptr %3, %key, !dbg !1540
  br i1 %cmp7, label %if.then13, label %if.end11.thread187, !dbg !1541

if.end11.thread187:                               ; preds = %if.else
  %cmp9 = icmp ult ptr %3, %key, !dbg !1542
  %cond = sext i1 %cmp9 to i32, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %call, metadata !1524, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata ptr null, metadata !1525, metadata !DIExpression()), !dbg !1528
  br label %if.else14, !dbg !1544

if.end11:                                         ; preds = %if.end
  %call = tail call i32 %2(ptr noundef %3, ptr noundef %key) #11, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %call, metadata !1524, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata ptr null, metadata !1525, metadata !DIExpression()), !dbg !1528
  %cmp12 = icmp sgt i32 %call, 0, !dbg !1546
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !1544

if.then13:                                        ; preds = %if.else, %if.end11
  %left = getelementptr inbounds %struct._NodeInfo, ptr %0, i64 0, i32 2, !dbg !1548
  call void @llvm.dbg.value(metadata ptr %left, metadata !1525, metadata !DIExpression()), !dbg !1528
  br label %if.then20, !dbg !1549

if.else14:                                        ; preds = %if.end11.thread187, %if.end11
  %compare.0190 = phi i32 [ %cond, %if.end11.thread187 ], [ %call, %if.end11 ]
  %cmp15 = icmp slt i32 %compare.0190, 0, !dbg !1550
  %right = getelementptr inbounds %struct._NodeInfo, ptr %0, i64 0, i32 3
  br i1 %cmp15, label %if.then20, label %if.end30, !dbg !1552

if.then20:                                        ; preds = %if.else14, %if.then13
  %next.0.ph = phi ptr [ %left, %if.then13 ], [ %right, %if.else14 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !1525, metadata !DIExpression()), !dbg !1528
  %cmp21 = icmp ugt i64 %depth, 1023, !dbg !1553
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1557

if.then22:                                        ; preds = %if.then20
  %balance = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 4, !dbg !1558
  store i32 1, ptr %balance, align 8, !dbg !1560, !tbaa !392
  br label %cleanup, !dbg !1561

if.end23:                                         ; preds = %if.then20
  %add = add nuw nsw i64 %depth, 1, !dbg !1562
  %call24 = tail call fastcc ptr @Splay(ptr noundef nonnull %splay_tree, i64 noundef %add, ptr noundef %key, ptr noundef nonnull %next.0.ph, ptr noundef nonnull %node, ptr noundef %parent), !dbg !1563
  call void @llvm.dbg.value(metadata ptr %call24, metadata !1526, metadata !DIExpression()), !dbg !1528
  %4 = load ptr, ptr %node, align 8, !dbg !1564, !tbaa !438
  %cmp25.not = icmp eq ptr %call24, %4, !dbg !1566
  br i1 %cmp25.not, label %lor.lhs.false, label %cleanup, !dbg !1567

lor.lhs.false:                                    ; preds = %if.end23
  %balance26 = getelementptr inbounds %struct._SplayTreeInfo, ptr %splay_tree, i64 0, i32 4, !dbg !1568
  %5 = load i32, ptr %balance26, align 8, !dbg !1568, !tbaa !392
  %cmp27.not = icmp eq i32 %5, 0, !dbg !1569
  br i1 %cmp27.not, label %if.end30, label %cleanup, !dbg !1570

if.end30:                                         ; preds = %if.else14, %lor.lhs.false
  %n.0 = phi ptr [ %call24, %lor.lhs.false ], [ %0, %if.else14 ], !dbg !1528
  call void @llvm.dbg.value(metadata ptr %n.0, metadata !1526, metadata !DIExpression()), !dbg !1528
  %cmp31 = icmp eq ptr %parent, null, !dbg !1571
  br i1 %cmp31, label %cleanup, label %if.end33, !dbg !1573

if.end33:                                         ; preds = %if.end30
  %cmp34 = icmp eq ptr %grandparent, null, !dbg !1574
  %6 = load ptr, ptr %parent, align 8, !dbg !1528, !tbaa !438
  %left36 = getelementptr inbounds %struct._NodeInfo, ptr %6, i64 0, i32 2, !dbg !1528
  %7 = load ptr, ptr %left36, align 8, !dbg !1528, !tbaa !325
  %cmp37 = icmp eq ptr %n.0, %7, !dbg !1528
  br i1 %cmp34, label %if.then35, label %if.end45, !dbg !1576

if.then35:                                        ; preds = %if.end33
  br i1 %cmp37, label %if.then38, label %if.else41, !dbg !1577

if.then38:                                        ; preds = %if.then35
  %right39 = getelementptr inbounds %struct._NodeInfo, ptr %n.0, i64 0, i32 3, !dbg !1579
  br label %if.end44, !dbg !1582

if.else41:                                        ; preds = %if.then35
  %left42 = getelementptr inbounds %struct._NodeInfo, ptr %n.0, i64 0, i32 2, !dbg !1583
  br label %if.end44

if.end44:                                         ; preds = %if.else41, %if.then38
  %left42.sink194 = phi ptr [ %left42, %if.else41 ], [ %right39, %if.then38 ]
  %8 = load ptr, ptr %left42.sink194, align 8, !dbg !1585, !tbaa !438
  store ptr %8, ptr %node, align 8, !dbg !1585, !tbaa !438
  %9 = load ptr, ptr %parent, align 8, !dbg !1585, !tbaa !438
  store ptr %9, ptr %left42.sink194, align 8, !dbg !1585, !tbaa !438
  store ptr %n.0, ptr %parent, align 8, !dbg !1586, !tbaa !438
  br label %cleanup, !dbg !1587

if.end45:                                         ; preds = %if.end33
  br i1 %cmp37, label %land.lhs.true, label %if.end57, !dbg !1588

land.lhs.true:                                    ; preds = %if.end45
  %10 = load ptr, ptr %grandparent, align 8, !dbg !1590, !tbaa !438
  %left48 = getelementptr inbounds %struct._NodeInfo, ptr %10, i64 0, i32 2, !dbg !1591
  %11 = load ptr, ptr %left48, align 8, !dbg !1591, !tbaa !325
  %cmp49 = icmp eq ptr %6, %11, !dbg !1592
  br i1 %cmp49, label %if.then50, label %if.end57, !dbg !1593

if.then50:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata ptr %6, metadata !1527, metadata !DIExpression()), !dbg !1528
  %right51 = getelementptr inbounds %struct._NodeInfo, ptr %6, i64 0, i32 3, !dbg !1594
  %12 = load ptr, ptr %right51, align 8, !dbg !1594, !tbaa !327
  store ptr %12, ptr %left48, align 8, !dbg !1596, !tbaa !325
  %13 = load ptr, ptr %grandparent, align 8, !dbg !1597, !tbaa !438
  store ptr %13, ptr %right51, align 8, !dbg !1598, !tbaa !327
  %right54 = getelementptr inbounds %struct._NodeInfo, ptr %n.0, i64 0, i32 3, !dbg !1599
  %14 = load ptr, ptr %right54, align 8, !dbg !1599, !tbaa !327
  store ptr %14, ptr %left36, align 8, !dbg !1600, !tbaa !325
  store ptr %6, ptr %right54, align 8, !dbg !1601, !tbaa !327
  store ptr %n.0, ptr %grandparent, align 8, !dbg !1602, !tbaa !438
  br label %cleanup, !dbg !1603

if.end57:                                         ; preds = %land.lhs.true, %if.end45
  %right58 = getelementptr inbounds %struct._NodeInfo, ptr %6, i64 0, i32 3, !dbg !1604
  %15 = load ptr, ptr %right58, align 8, !dbg !1604, !tbaa !327
  %cmp59 = icmp eq ptr %n.0, %15, !dbg !1606
  br i1 %cmp59, label %land.lhs.true60, label %if.end70, !dbg !1607

land.lhs.true60:                                  ; preds = %if.end57
  %16 = load ptr, ptr %grandparent, align 8, !dbg !1608, !tbaa !438
  %right61 = getelementptr inbounds %struct._NodeInfo, ptr %16, i64 0, i32 3, !dbg !1609
  %17 = load ptr, ptr %right61, align 8, !dbg !1609, !tbaa !327
  %cmp62 = icmp eq ptr %6, %17, !dbg !1610
  br i1 %cmp62, label %if.then63, label %if.end70, !dbg !1611

if.then63:                                        ; preds = %land.lhs.true60
  call void @llvm.dbg.value(metadata ptr %6, metadata !1527, metadata !DIExpression()), !dbg !1528
  store ptr %7, ptr %right61, align 8, !dbg !1612, !tbaa !327
  %18 = load ptr, ptr %grandparent, align 8, !dbg !1614, !tbaa !438
  store ptr %18, ptr %left36, align 8, !dbg !1615, !tbaa !325
  %left67 = getelementptr inbounds %struct._NodeInfo, ptr %n.0, i64 0, i32 2, !dbg !1616
  %19 = load ptr, ptr %left67, align 8, !dbg !1616, !tbaa !325
  store ptr %19, ptr %right58, align 8, !dbg !1617, !tbaa !327
  store ptr %6, ptr %left67, align 8, !dbg !1618, !tbaa !325
  store ptr %n.0, ptr %grandparent, align 8, !dbg !1619, !tbaa !438
  br label %cleanup, !dbg !1620

if.end70:                                         ; preds = %land.lhs.true60, %if.end57
  br i1 %cmp37, label %if.then73, label %if.end80, !dbg !1621

if.then73:                                        ; preds = %if.end70
  %right74 = getelementptr inbounds %struct._NodeInfo, ptr %n.0, i64 0, i32 3, !dbg !1622
  %20 = load ptr, ptr %right74, align 8, !dbg !1622, !tbaa !327
  store ptr %20, ptr %left36, align 8, !dbg !1625, !tbaa !325
  %21 = load ptr, ptr %parent, align 8, !dbg !1626, !tbaa !438
  store ptr %21, ptr %right74, align 8, !dbg !1627, !tbaa !327
  %left77 = getelementptr inbounds %struct._NodeInfo, ptr %n.0, i64 0, i32 2, !dbg !1628
  %22 = load ptr, ptr %left77, align 8, !dbg !1628, !tbaa !325
  %23 = load ptr, ptr %grandparent, align 8, !dbg !1629, !tbaa !438
  %right78 = getelementptr inbounds %struct._NodeInfo, ptr %23, i64 0, i32 3, !dbg !1630
  store ptr %22, ptr %right78, align 8, !dbg !1631, !tbaa !327
  %24 = load ptr, ptr %grandparent, align 8, !dbg !1632, !tbaa !438
  store ptr %24, ptr %left77, align 8, !dbg !1633, !tbaa !325
  store ptr %n.0, ptr %grandparent, align 8, !dbg !1634, !tbaa !438
  br label %cleanup, !dbg !1635

if.end80:                                         ; preds = %if.end70
  %left81 = getelementptr inbounds %struct._NodeInfo, ptr %n.0, i64 0, i32 2, !dbg !1636
  %25 = load ptr, ptr %left81, align 8, !dbg !1636, !tbaa !325
  store ptr %25, ptr %right58, align 8, !dbg !1637, !tbaa !327
  %26 = load ptr, ptr %parent, align 8, !dbg !1638, !tbaa !438
  store ptr %26, ptr %left81, align 8, !dbg !1639, !tbaa !325
  %right84 = getelementptr inbounds %struct._NodeInfo, ptr %n.0, i64 0, i32 3, !dbg !1640
  %27 = load ptr, ptr %right84, align 8, !dbg !1640, !tbaa !327
  %28 = load ptr, ptr %grandparent, align 8, !dbg !1641, !tbaa !438
  %left85 = getelementptr inbounds %struct._NodeInfo, ptr %28, i64 0, i32 2, !dbg !1642
  store ptr %27, ptr %left85, align 8, !dbg !1643, !tbaa !325
  %29 = load ptr, ptr %grandparent, align 8, !dbg !1644, !tbaa !438
  store ptr %29, ptr %right84, align 8, !dbg !1645, !tbaa !327
  store ptr %n.0, ptr %grandparent, align 8, !dbg !1646, !tbaa !438
  br label %cleanup, !dbg !1647

cleanup:                                          ; preds = %if.end30, %if.end23, %lor.lhs.false, %if.end80, %if.then73, %if.then63, %if.then50, %if.end44, %if.then22, %if.then
  %retval.0 = phi ptr [ %1, %if.then ], [ %0, %if.then22 ], [ %n.0, %if.end44 ], [ %n.0, %if.then50 ], [ %n.0, %if.then63 ], [ %n.0, %if.then73 ], [ %n.0, %if.end80 ], [ %call24, %lor.lhs.false ], [ %call24, %if.end23 ], [ %n.0, %if.end30 ], !dbg !1528
  ret ptr %retval.0, !dbg !1648
}

; Function Attrs: allocsize(0,1)
declare !dbg !1649 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint nofree nosync nounwind uwtable
define internal fastcc ptr @LinkSplayTreeNodes(ptr noundef %nodes, i64 noundef %low, i64 noundef %high) unnamed_addr #9 !dbg !1652 {
entry:
  call void @llvm.dbg.value(metadata ptr %nodes, metadata !1656, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %low, metadata !1657, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i64 %high, metadata !1658, metadata !DIExpression()), !dbg !1661
  %sub = sub i64 %high, %low, !dbg !1662
  %div27 = lshr i64 %sub, 1, !dbg !1663
  %add = add i64 %div27, %low, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %add, metadata !1660, metadata !DIExpression()), !dbg !1661
  %arrayidx = getelementptr inbounds ptr, ptr %nodes, i64 %add, !dbg !1665
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !1665, !tbaa !438
  call void @llvm.dbg.value(metadata ptr %0, metadata !1659, metadata !DIExpression()), !dbg !1661
  %add1 = add i64 %low, 1, !dbg !1666
  %cmp = icmp ugt i64 %add1, %add, !dbg !1668
  br i1 %cmp, label %if.end, label %if.else, !dbg !1669

if.else:                                          ; preds = %entry
  %sub2 = add i64 %add, -1, !dbg !1670
  %call = tail call fastcc ptr @LinkSplayTreeNodes(ptr noundef nonnull %nodes, i64 noundef %low, i64 noundef %sub2), !dbg !1671
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %call.sink = phi ptr [ %call, %if.else ], [ null, %entry ], !dbg !1672
  %1 = getelementptr inbounds %struct._NodeInfo, ptr %0, i64 0, i32 2, !dbg !1673
  store ptr %call.sink, ptr %1, align 8, !dbg !1674
  %add4 = add i64 %add, 1, !dbg !1675
  %cmp5 = icmp ugt i64 %add4, %high, !dbg !1677
  br i1 %cmp5, label %common.ret, label %if.else7, !dbg !1678

common.ret:                                       ; preds = %if.end, %if.else7
  %call9.sink = phi ptr [ %call9, %if.else7 ], [ null, %if.end ], !dbg !1679
  %2 = getelementptr inbounds %struct._NodeInfo, ptr %0, i64 0, i32 3, !dbg !1680
  store ptr %call9.sink, ptr %2, align 8, !dbg !1681
  ret ptr %0, !dbg !1682

if.else7:                                         ; preds = %if.end
  %call9 = tail call fastcc ptr @LinkSplayTreeNodes(ptr noundef nonnull %nodes, i64 noundef %add4, i64 noundef %high), !dbg !1683
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !201, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/splay-tree.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "9a25c715b4b49609266da0c625b88de9")
!2 = !{!3, !9, !34, !107}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 211, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "MagickFalse", value: 0)
!8 = !DIEnumerator(name: "MagickTrue", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 34, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!12 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!13 = !DIEnumerator(name: "NoEvents", value: 0)
!14 = !DIEnumerator(name: "TraceEvent", value: 1)
!15 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!16 = !DIEnumerator(name: "BlobEvent", value: 4)
!17 = !DIEnumerator(name: "CacheEvent", value: 8)
!18 = !DIEnumerator(name: "CoderEvent", value: 16)
!19 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!20 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!21 = !DIEnumerator(name: "DrawEvent", value: 128)
!22 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!23 = !DIEnumerator(name: "ImageEvent", value: 512)
!24 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!25 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!26 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!27 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!28 = !DIEnumerator(name: "TransformEvent", value: 16384)
!29 = !DIEnumerator(name: "UserEvent", value: 36864)
!30 = !DIEnumerator(name: "WandEvent", value: 65536)
!31 = !DIEnumerator(name: "X11Event", value: 131072)
!32 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!33 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 28, baseType: !5, size: 32, elements: !36)
!35 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!37 = !DIEnumerator(name: "UndefinedException", value: 0)
!38 = !DIEnumerator(name: "WarningException", value: 300)
!39 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!40 = !DIEnumerator(name: "TypeWarning", value: 305)
!41 = !DIEnumerator(name: "OptionWarning", value: 310)
!42 = !DIEnumerator(name: "DelegateWarning", value: 315)
!43 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!44 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!45 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!46 = !DIEnumerator(name: "BlobWarning", value: 335)
!47 = !DIEnumerator(name: "StreamWarning", value: 340)
!48 = !DIEnumerator(name: "CacheWarning", value: 345)
!49 = !DIEnumerator(name: "CoderWarning", value: 350)
!50 = !DIEnumerator(name: "FilterWarning", value: 352)
!51 = !DIEnumerator(name: "ModuleWarning", value: 355)
!52 = !DIEnumerator(name: "DrawWarning", value: 360)
!53 = !DIEnumerator(name: "ImageWarning", value: 365)
!54 = !DIEnumerator(name: "WandWarning", value: 370)
!55 = !DIEnumerator(name: "RandomWarning", value: 375)
!56 = !DIEnumerator(name: "XServerWarning", value: 380)
!57 = !DIEnumerator(name: "MonitorWarning", value: 385)
!58 = !DIEnumerator(name: "RegistryWarning", value: 390)
!59 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!60 = !DIEnumerator(name: "PolicyWarning", value: 399)
!61 = !DIEnumerator(name: "ErrorException", value: 400)
!62 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!63 = !DIEnumerator(name: "TypeError", value: 405)
!64 = !DIEnumerator(name: "OptionError", value: 410)
!65 = !DIEnumerator(name: "DelegateError", value: 415)
!66 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!67 = !DIEnumerator(name: "CorruptImageError", value: 425)
!68 = !DIEnumerator(name: "FileOpenError", value: 430)
!69 = !DIEnumerator(name: "BlobError", value: 435)
!70 = !DIEnumerator(name: "StreamError", value: 440)
!71 = !DIEnumerator(name: "CacheError", value: 445)
!72 = !DIEnumerator(name: "CoderError", value: 450)
!73 = !DIEnumerator(name: "FilterError", value: 452)
!74 = !DIEnumerator(name: "ModuleError", value: 455)
!75 = !DIEnumerator(name: "DrawError", value: 460)
!76 = !DIEnumerator(name: "ImageError", value: 465)
!77 = !DIEnumerator(name: "WandError", value: 470)
!78 = !DIEnumerator(name: "RandomError", value: 475)
!79 = !DIEnumerator(name: "XServerError", value: 480)
!80 = !DIEnumerator(name: "MonitorError", value: 485)
!81 = !DIEnumerator(name: "RegistryError", value: 490)
!82 = !DIEnumerator(name: "ConfigureError", value: 495)
!83 = !DIEnumerator(name: "PolicyError", value: 499)
!84 = !DIEnumerator(name: "FatalErrorException", value: 700)
!85 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!86 = !DIEnumerator(name: "TypeFatalError", value: 705)
!87 = !DIEnumerator(name: "OptionFatalError", value: 710)
!88 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!89 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!90 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!91 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!92 = !DIEnumerator(name: "BlobFatalError", value: 735)
!93 = !DIEnumerator(name: "StreamFatalError", value: 740)
!94 = !DIEnumerator(name: "CacheFatalError", value: 745)
!95 = !DIEnumerator(name: "CoderFatalError", value: 750)
!96 = !DIEnumerator(name: "FilterFatalError", value: 752)
!97 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!98 = !DIEnumerator(name: "DrawFatalError", value: 760)
!99 = !DIEnumerator(name: "ImageFatalError", value: 765)
!100 = !DIEnumerator(name: "WandFatalError", value: 770)
!101 = !DIEnumerator(name: "RandomFatalError", value: 775)
!102 = !DIEnumerator(name: "XServerFatalError", value: 780)
!103 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!104 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!105 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!106 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !109, file: !108, line: 973, baseType: !5, size: 32, elements: !196)
!108 = !DIFile(filename: "apps/538.imagick_r/src/magick/splay-tree.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9a25c715b4b49609266da0c625b88de9")
!109 = distinct !DISubprogram(name: "IterateOverSplayTree", scope: !108, file: !108, line: 970, type: !110, scopeLine: 972, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !158)
!110 = !DISubroutineType(types: !111)
!111 = !{!112, !113, !155, !133}
!112 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "SplayTreeInfo", file: !115, line: 26, baseType: !116)
!115 = !DIFile(filename: "apps/538.imagick_r/src/magick/splay-tree.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9016e3627c0f26bd31d286f50189c16b")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SplayTreeInfo", file: !108, line: 81, size: 704, elements: !117)
!117 = !{!118, !129, !135, !139, !140, !142, !143, !144, !148, !149, !154}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !116, file: !108, line: 84, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "NodeInfo", file: !108, line: 79, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NodeInfo", file: !108, line: 68, size: 256, elements: !122)
!122 = !{!123, !125, !126, !128}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !121, file: !108, line: 71, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !121, file: !108, line: 74, baseType: !124, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !121, file: !108, line: 77, baseType: !127, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !121, file: !108, line: 78, baseType: !127, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "compare", scope: !116, file: !108, line: 87, baseType: !130, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!112, !133, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish_key", scope: !116, file: !108, line: 90, baseType: !136, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!124, !124}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish_value", scope: !116, file: !108, line: 91, baseType: !136, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "balance", scope: !116, file: !108, line: 94, baseType: !141, size: 32, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !3)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !116, file: !108, line: 97, baseType: !124, size: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !108, line: 98, baseType: !124, size: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !116, file: !108, line: 101, baseType: !145, size: 64, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !146, line: 46, baseType: !147)
!146 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!147 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !116, file: !108, line: 104, baseType: !141, size: 32, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !116, file: !108, line: 107, baseType: !150, size: 64, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !152, line: 26, baseType: !153)
!152 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !152, line: 25, flags: DIFlagFwdDecl)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !116, file: !108, line: 110, baseType: !145, size: 64, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!112, !119, !133}
!158 = !{!159, !160, !161, !162, !163, !164, !166, !172, !173, !175, !178, !183}
!159 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !109, file: !108, line: 970, type: !113)
!160 = !DILocalVariable(name: "method", arg: 2, scope: !109, file: !108, line: 971, type: !155)
!161 = !DILocalVariable(name: "value", arg: 3, scope: !109, file: !108, line: 971, type: !133)
!162 = !DILocalVariable(name: "status", scope: !109, file: !108, line: 982, type: !112)
!163 = !DILocalVariable(name: "final_transition", scope: !109, file: !108, line: 985, type: !141)
!164 = !DILocalVariable(name: "nodes", scope: !109, file: !108, line: 988, type: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!166 = !DILocalVariable(name: "i", scope: !109, file: !108, line: 991, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !168, line: 77, baseType: !169)
!168 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !170, line: 193, baseType: !171)
!170 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!171 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!172 = !DILocalVariable(name: "node", scope: !109, file: !108, line: 994, type: !119)
!173 = !DILocalVariable(name: "transition", scope: !109, file: !108, line: 997, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "TransitionType", scope: !109, file: !108, line: 979, baseType: !107)
!175 = !DILocalVariable(name: "transitions", scope: !109, file: !108, line: 1000, type: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!178 = !DILocalVariable(name: "message", scope: !179, file: !108, line: 1009, type: !181)
!179 = distinct !DILexicalBlock(scope: !180, file: !108, line: 1009, column: 5)
!180 = distinct !DILexicalBlock(scope: !109, file: !108, line: 1008, column: 7)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!183 = !DILocalVariable(name: "exception", scope: !179, file: !108, line: 1009, type: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !35, line: 102, size: 448, elements: !186)
!186 = !{!187, !189, !190, !191, !192, !193, !194, !195}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !185, file: !35, line: 105, baseType: !188, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !35, line: 100, baseType: !34)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !185, file: !35, line: 108, baseType: !112, size: 32, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !185, file: !35, line: 111, baseType: !181, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !185, file: !35, line: 112, baseType: !181, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !185, file: !35, line: 115, baseType: !124, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !185, file: !35, line: 118, baseType: !141, size: 32, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !185, file: !35, line: 121, baseType: !150, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !185, file: !35, line: 124, baseType: !145, size: 64, offset: 384)
!196 = !{!197, !198, !199, !200}
!197 = !DIEnumerator(name: "LeftTransition", value: 0)
!198 = !DIEnumerator(name: "RightTransition", value: 1)
!199 = !DIEnumerator(name: "DownTransition", value: 2)
!200 = !DIEnumerator(name: "UpTransition", value: 3)
!201 = !{!119, !124, !130, !136, !147, !202, !204, !113, !112, !165, !145, !133, !176, !177, !174, !217}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !207, line: 40, baseType: !208)
!207 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !207, line: 29, size: 32960, elements: !209)
!209 = !{!210, !214, !215, !216}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !208, file: !207, line: 32, baseType: !211, size: 32768)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 32768, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 4096)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !208, file: !207, line: 35, baseType: !176, size: 64, offset: 32768)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !208, file: !207, line: 38, baseType: !145, size: 64, offset: 32832)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !208, file: !207, line: 39, baseType: !145, size: 64, offset: 32896)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!221 = !{i32 7, !"Dwarf Version", i32 5}
!222 = !{i32 2, !"Debug Info Version", i32 3}
!223 = !{i32 1, !"wchar_size", i32 4}
!224 = !{i32 7, !"PIC Level", i32 2}
!225 = !{i32 7, !"PIE Level", i32 2}
!226 = !{i32 7, !"uwtable", i32 2}
!227 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!228 = distinct !DISubprogram(name: "AddValueToSplayTree", scope: !108, file: !108, line: 152, type: !229, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{!141, !113, !133, !133}
!231 = !{!232, !233, !234, !235, !236}
!232 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !228, file: !108, line: 152, type: !113)
!233 = !DILocalVariable(name: "key", arg: 2, scope: !228, file: !108, line: 153, type: !133)
!234 = !DILocalVariable(name: "value", arg: 3, scope: !228, file: !108, line: 153, type: !133)
!235 = !DILocalVariable(name: "compare", scope: !228, file: !108, line: 156, type: !112)
!236 = !DILocalVariable(name: "node", scope: !228, file: !108, line: 159, type: !119)
!237 = !DILocation(line: 0, scope: !228)
!238 = !DILocation(line: 161, column: 33, scope: !228)
!239 = !{!240, !241, i64 72}
!240 = !{!"_SplayTreeInfo", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !242, i64 32, !241, i64 40, !241, i64 48, !244, i64 56, !242, i64 64, !241, i64 72, !244, i64 80}
!241 = !{!"any pointer", !242, i64 0}
!242 = !{!"omnipotent char", !243, i64 0}
!243 = !{!"Simple C/C++ TBAA"}
!244 = !{!"long", !242, i64 0}
!245 = !DILocation(line: 161, column: 3, scope: !228)
!246 = !DILocation(line: 162, column: 3, scope: !228)
!247 = !DILocation(line: 164, column: 19, scope: !248)
!248 = distinct !DILexicalBlock(scope: !228, file: !108, line: 164, column: 7)
!249 = !{!240, !241, i64 0}
!250 = !DILocation(line: 164, column: 24, scope: !248)
!251 = !DILocation(line: 164, column: 7, scope: !228)
!252 = !DILocation(line: 166, column: 23, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !108, line: 166, column: 11)
!254 = distinct !DILexicalBlock(scope: !248, file: !108, line: 165, column: 5)
!255 = !{!240, !241, i64 8}
!256 = !DILocation(line: 166, column: 31, scope: !253)
!257 = !DILocation(line: 0, scope: !253)
!258 = !{!259, !241, i64 0}
!259 = !{!"_NodeInfo", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24}
!260 = !DILocation(line: 166, column: 11, scope: !254)
!261 = !DILocation(line: 167, column: 17, scope: !253)
!262 = !DILocation(line: 167, column: 9, scope: !253)
!263 = !DILocation(line: 169, column: 40, scope: !253)
!264 = !DILocation(line: 169, column: 17, scope: !253)
!265 = !DILocation(line: 170, column: 35, scope: !253)
!266 = !DILocation(line: 170, column: 12, scope: !253)
!267 = !DILocation(line: 171, column: 19, scope: !268)
!268 = distinct !DILexicalBlock(scope: !254, file: !108, line: 171, column: 11)
!269 = !DILocation(line: 171, column: 11, scope: !254)
!270 = !DILocation(line: 173, column: 28, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !108, line: 173, column: 15)
!272 = distinct !DILexicalBlock(scope: !268, file: !108, line: 172, column: 9)
!273 = !{!240, !241, i64 24}
!274 = !DILocation(line: 173, column: 45, scope: !271)
!275 = !DILocation(line: 173, column: 74, scope: !271)
!276 = !DILocation(line: 174, column: 28, scope: !271)
!277 = !DILocation(line: 174, column: 34, scope: !271)
!278 = !{!259, !241, i64 8}
!279 = !DILocation(line: 174, column: 40, scope: !271)
!280 = !DILocation(line: 173, column: 15, scope: !272)
!281 = !DILocation(line: 175, column: 37, scope: !271)
!282 = !DILocation(line: 175, column: 25, scope: !271)
!283 = !DILocation(line: 175, column: 31, scope: !271)
!284 = !DILocation(line: 175, column: 36, scope: !271)
!285 = !DILocation(line: 175, column: 13, scope: !271)
!286 = !DILocation(line: 177, column: 28, scope: !287)
!287 = distinct !DILexicalBlock(scope: !272, file: !108, line: 177, column: 15)
!288 = !{!240, !241, i64 16}
!289 = !DILocation(line: 177, column: 43, scope: !287)
!290 = !DILocation(line: 0, scope: !272)
!291 = !DILocation(line: 177, column: 72, scope: !287)
!292 = !DILocation(line: 178, column: 34, scope: !287)
!293 = !DILocation(line: 178, column: 38, scope: !287)
!294 = !DILocation(line: 177, column: 15, scope: !272)
!295 = !DILocation(line: 179, column: 35, scope: !287)
!296 = !DILocation(line: 179, column: 25, scope: !287)
!297 = !DILocation(line: 179, column: 34, scope: !287)
!298 = !DILocation(line: 179, column: 13, scope: !287)
!299 = !DILocation(line: 181, column: 23, scope: !272)
!300 = !DILocation(line: 181, column: 32, scope: !272)
!301 = !DILocation(line: 182, column: 29, scope: !272)
!302 = !DILocation(line: 182, column: 34, scope: !272)
!303 = !DILocation(line: 184, column: 11, scope: !272)
!304 = !DILocation(line: 187, column: 21, scope: !228)
!305 = !DILocation(line: 188, column: 12, scope: !306)
!306 = distinct !DILexicalBlock(scope: !228, file: !108, line: 188, column: 7)
!307 = !DILocation(line: 188, column: 7, scope: !228)
!308 = !DILocation(line: 193, column: 12, scope: !228)
!309 = !DILocation(line: 194, column: 9, scope: !228)
!310 = !DILocation(line: 194, column: 14, scope: !228)
!311 = !DILocation(line: 195, column: 19, scope: !312)
!312 = distinct !DILexicalBlock(scope: !228, file: !108, line: 195, column: 7)
!313 = !DILocation(line: 195, column: 24, scope: !312)
!314 = !DILocation(line: 195, column: 7, scope: !228)
!315 = !DILocation(line: 197, column: 13, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !108, line: 196, column: 5)
!317 = !DILocation(line: 198, column: 18, scope: !316)
!318 = !DILocation(line: 199, column: 5, scope: !316)
!319 = !DILocation(line: 201, column: 17, scope: !320)
!320 = distinct !DILexicalBlock(scope: !312, file: !108, line: 201, column: 9)
!321 = !DILocation(line: 201, column: 9, scope: !312)
!322 = !DILocation(line: 203, column: 15, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !108, line: 202, column: 7)
!324 = !DILocation(line: 203, column: 19, scope: !323)
!325 = !{!259, !241, i64 16}
!326 = !DILocation(line: 204, column: 33, scope: !323)
!327 = !{!259, !241, i64 24}
!328 = !DILocation(line: 204, column: 15, scope: !323)
!329 = !DILocation(line: 204, column: 20, scope: !323)
!330 = !DILocation(line: 205, column: 26, scope: !323)
!331 = !DILocation(line: 206, column: 7, scope: !323)
!332 = !DILocation(line: 209, column: 15, scope: !333)
!333 = distinct !DILexicalBlock(scope: !320, file: !108, line: 208, column: 7)
!334 = !DILocation(line: 209, column: 20, scope: !333)
!335 = !DILocation(line: 210, column: 33, scope: !333)
!336 = !DILocation(line: 210, column: 15, scope: !333)
!337 = !DILocation(line: 210, column: 19, scope: !333)
!338 = !DILocation(line: 211, column: 26, scope: !333)
!339 = !DILocation(line: 213, column: 19, scope: !228)
!340 = !DILocation(line: 214, column: 15, scope: !228)
!341 = !DILocation(line: 214, column: 18, scope: !228)
!342 = !{!240, !241, i64 40}
!343 = !DILocation(line: 215, column: 15, scope: !228)
!344 = !DILocation(line: 215, column: 20, scope: !228)
!345 = !{!240, !244, i64 56}
!346 = !DILocation(line: 217, column: 3, scope: !228)
!347 = !DILocation(line: 218, column: 1, scope: !228)
!348 = !DISubprogram(name: "LockSemaphoreInfo", scope: !152, file: !152, line: 37, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !150}
!351 = !{}
!352 = distinct !DISubprogram(name: "SplaySplayTree", scope: !108, file: !108, line: 1565, type: !353, scopeLine: 1566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !355)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !113, !133}
!355 = !{!356, !357, !358, !361, !366}
!356 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !352, file: !108, line: 1565, type: !113)
!357 = !DILocalVariable(name: "key", arg: 2, scope: !352, file: !108, line: 1565, type: !133)
!358 = !DILocalVariable(name: "compare", scope: !359, file: !108, line: 1572, type: !112)
!359 = distinct !DILexicalBlock(scope: !360, file: !108, line: 1570, column: 5)
!360 = distinct !DILexicalBlock(scope: !352, file: !108, line: 1569, column: 7)
!361 = !DILocalVariable(name: "message", scope: !362, file: !108, line: 1590, type: !181)
!362 = distinct !DILexicalBlock(scope: !363, file: !108, line: 1590, column: 9)
!363 = distinct !DILexicalBlock(scope: !364, file: !108, line: 1589, column: 11)
!364 = distinct !DILexicalBlock(scope: !365, file: !108, line: 1585, column: 5)
!365 = distinct !DILexicalBlock(scope: !352, file: !108, line: 1584, column: 7)
!366 = !DILocalVariable(name: "exception", scope: !362, file: !108, line: 1590, type: !184)
!367 = !DILocation(line: 0, scope: !352)
!368 = !DILocation(line: 1567, column: 19, scope: !369)
!369 = distinct !DILexicalBlock(scope: !352, file: !108, line: 1567, column: 7)
!370 = !DILocation(line: 1567, column: 24, scope: !369)
!371 = !DILocation(line: 1567, column: 7, scope: !352)
!372 = !DILocation(line: 1569, column: 19, scope: !360)
!373 = !DILocation(line: 1569, column: 23, scope: !360)
!374 = !DILocation(line: 1569, column: 7, scope: !352)
!375 = !DILocation(line: 1574, column: 23, scope: !376)
!376 = distinct !DILexicalBlock(scope: !359, file: !108, line: 1574, column: 11)
!377 = !DILocation(line: 1574, column: 31, scope: !376)
!378 = !DILocation(line: 1574, column: 11, scope: !359)
!379 = !DILocation(line: 1575, column: 55, scope: !376)
!380 = !DILocation(line: 1575, column: 17, scope: !376)
!381 = !DILocation(line: 0, scope: !359)
!382 = !DILocation(line: 1575, column: 9, scope: !376)
!383 = !DILocation(line: 1577, column: 34, scope: !376)
!384 = !DILocation(line: 1577, column: 17, scope: !376)
!385 = !DILocation(line: 1578, column: 29, scope: !376)
!386 = !DILocation(line: 1578, column: 12, scope: !376)
!387 = !DILocation(line: 0, scope: !376)
!388 = !DILocation(line: 1579, column: 19, scope: !389)
!389 = distinct !DILexicalBlock(scope: !359, file: !108, line: 1579, column: 11)
!390 = !DILocation(line: 1582, column: 10, scope: !352)
!391 = !DILocation(line: 1584, column: 19, scope: !365)
!392 = !{!240, !242, i64 32}
!393 = !DILocation(line: 1584, column: 27, scope: !365)
!394 = !DILocation(line: 1584, column: 7, scope: !352)
!395 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !396, file: !108, line: 278, type: !113)
!396 = distinct !DISubprogram(name: "BalanceSplayTree", scope: !108, file: !108, line: 278, type: !397, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !113}
!399 = !{!395, !400, !401, !402, !405}
!400 = !DILocalVariable(name: "node", scope: !396, file: !108, line: 281, type: !165)
!401 = !DILocalVariable(name: "nodes", scope: !396, file: !108, line: 282, type: !165)
!402 = !DILocalVariable(name: "message", scope: !403, file: !108, line: 292, type: !181)
!403 = distinct !DILexicalBlock(scope: !404, file: !108, line: 292, column: 5)
!404 = distinct !DILexicalBlock(scope: !396, file: !108, line: 291, column: 7)
!405 = !DILocalVariable(name: "exception", scope: !403, file: !108, line: 292, type: !184)
!406 = !DILocation(line: 0, scope: !396, inlinedAt: !407)
!407 = distinct !DILocation(line: 1586, column: 7, scope: !364)
!408 = !DILocation(line: 284, column: 19, scope: !409, inlinedAt: !407)
!409 = distinct !DILexicalBlock(scope: !396, file: !108, line: 284, column: 7)
!410 = !DILocation(line: 284, column: 25, scope: !409, inlinedAt: !407)
!411 = !DILocation(line: 284, column: 7, scope: !396, inlinedAt: !407)
!412 = !DILocation(line: 286, column: 26, scope: !413, inlinedAt: !407)
!413 = distinct !DILexicalBlock(scope: !409, file: !108, line: 285, column: 5)
!414 = !DILocation(line: 287, column: 7, scope: !413, inlinedAt: !407)
!415 = !DILocation(line: 289, column: 23, scope: !396, inlinedAt: !407)
!416 = !DILocation(line: 291, column: 13, scope: !404, inlinedAt: !407)
!417 = !DILocation(line: 291, column: 7, scope: !396, inlinedAt: !407)
!418 = !DILocation(line: 292, column: 5, scope: !403, inlinedAt: !407)
!419 = !{!420, !420, i64 0}
!420 = !{!"int", !242, i64 0}
!421 = !DILocation(line: 0, scope: !403, inlinedAt: !407)
!422 = !DILocation(line: 0, scope: !109, inlinedAt: !423)
!423 = distinct !DILocation(line: 294, column: 10, scope: !396, inlinedAt: !407)
!424 = !DILocation(line: 1002, column: 19, scope: !425, inlinedAt: !423)
!425 = distinct !DILexicalBlock(scope: !109, file: !108, line: 1002, column: 7)
!426 = !DILocation(line: 1002, column: 24, scope: !425, inlinedAt: !423)
!427 = !DILocation(line: 1002, column: 7, scope: !109, inlinedAt: !423)
!428 = !DILocation(line: 1004, column: 65, scope: !109, inlinedAt: !423)
!429 = !DILocation(line: 1004, column: 23, scope: !109, inlinedAt: !423)
!430 = !DILocation(line: 1006, column: 75, scope: !109, inlinedAt: !423)
!431 = !DILocation(line: 1006, column: 33, scope: !109, inlinedAt: !423)
!432 = !DILocation(line: 1008, column: 14, scope: !180, inlinedAt: !423)
!433 = !DILocation(line: 1008, column: 37, scope: !180, inlinedAt: !423)
!434 = !DILocation(line: 1009, column: 5, scope: !179, inlinedAt: !423)
!435 = !DILocation(line: 0, scope: !179, inlinedAt: !423)
!436 = !DILocation(line: 1012, column: 24, scope: !109, inlinedAt: !423)
!437 = !DILocation(line: 1012, column: 11, scope: !109, inlinedAt: !423)
!438 = !{!241, !241, i64 0}
!439 = !DILocation(line: 1013, column: 17, scope: !109, inlinedAt: !423)
!440 = !{!242, !242, i64 0}
!441 = !DILocation(line: 1014, column: 3, scope: !442, inlinedAt: !423)
!442 = distinct !DILexicalBlock(scope: !109, file: !108, line: 1014, column: 3)
!443 = !DILocation(line: 1017, column: 33, scope: !444, inlinedAt: !423)
!444 = distinct !DILexicalBlock(scope: !445, file: !108, line: 1015, column: 3)
!445 = distinct !DILexicalBlock(scope: !442, file: !108, line: 1014, column: 3)
!446 = !DILocation(line: 1016, column: 10, scope: !444, inlinedAt: !423)
!447 = !DILocation(line: 1018, column: 5, scope: !444, inlinedAt: !423)
!448 = !DILocation(line: 1022, column: 23, scope: !449, inlinedAt: !423)
!449 = distinct !DILexicalBlock(scope: !450, file: !108, line: 1021, column: 7)
!450 = distinct !DILexicalBlock(scope: !444, file: !108, line: 1019, column: 5)
!451 = !DILocation(line: 1023, column: 19, scope: !452, inlinedAt: !423)
!452 = distinct !DILexicalBlock(scope: !449, file: !108, line: 1023, column: 13)
!453 = !DILocation(line: 1023, column: 24, scope: !452, inlinedAt: !423)
!454 = !DILocation(line: 1023, column: 13, scope: !449, inlinedAt: !423)
!455 = !DILocation(line: 1025, column: 10, scope: !449, inlinedAt: !423)
!456 = !DILocation(line: 1026, column: 9, scope: !449, inlinedAt: !423)
!457 = !DILocation(line: 1026, column: 17, scope: !449, inlinedAt: !423)
!458 = !DILocation(line: 1027, column: 9, scope: !449, inlinedAt: !423)
!459 = !DILocation(line: 1027, column: 23, scope: !449, inlinedAt: !423)
!460 = !DILocation(line: 1028, column: 9, scope: !449, inlinedAt: !423)
!461 = !DILocation(line: 1032, column: 23, scope: !462, inlinedAt: !423)
!462 = distinct !DILexicalBlock(scope: !450, file: !108, line: 1031, column: 7)
!463 = !DILocation(line: 1033, column: 19, scope: !464, inlinedAt: !423)
!464 = distinct !DILexicalBlock(scope: !462, file: !108, line: 1033, column: 13)
!465 = !DILocation(line: 1033, column: 25, scope: !464, inlinedAt: !423)
!466 = !DILocation(line: 1033, column: 13, scope: !462, inlinedAt: !423)
!467 = !DILocation(line: 1035, column: 10, scope: !462, inlinedAt: !423)
!468 = !DILocation(line: 1036, column: 9, scope: !462, inlinedAt: !423)
!469 = !DILocation(line: 1036, column: 17, scope: !462, inlinedAt: !423)
!470 = !DILocation(line: 1037, column: 9, scope: !462, inlinedAt: !423)
!471 = !DILocation(line: 1037, column: 23, scope: !462, inlinedAt: !423)
!472 = !DILocation(line: 1038, column: 9, scope: !462, inlinedAt: !423)
!473 = !DILocation(line: 1043, column: 23, scope: !474, inlinedAt: !423)
!474 = distinct !DILexicalBlock(scope: !450, file: !108, line: 1042, column: 7)
!475 = !DILocalVariable(name: "node", arg: 1, scope: !476, file: !108, line: 267, type: !119)
!476 = distinct !DISubprogram(name: "SplayTreeToNodeArray", scope: !108, file: !108, line: 267, type: !156, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !477)
!477 = !{!475, !478, !479}
!478 = !DILocalVariable(name: "nodes", arg: 2, scope: !476, file: !108, line: 267, type: !133)
!479 = !DILocalVariable(name: "p", scope: !476, file: !108, line: 270, type: !217)
!480 = !DILocation(line: 0, scope: !476, inlinedAt: !481)
!481 = distinct !DILocation(line: 1044, column: 16, scope: !474, inlinedAt: !423)
!482 = !DILocation(line: 273, column: 8, scope: !476, inlinedAt: !481)
!483 = !DILocation(line: 274, column: 7, scope: !476, inlinedAt: !481)
!484 = !DILocation(line: 1045, column: 13, scope: !474, inlinedAt: !423)
!485 = !DILocation(line: 1051, column: 15, scope: !486, inlinedAt: !423)
!486 = distinct !DILexicalBlock(scope: !487, file: !108, line: 1051, column: 13)
!487 = distinct !DILexicalBlock(scope: !450, file: !108, line: 1050, column: 7)
!488 = distinct !{!488, !441, !489, !490, !491}
!489 = !DILocation(line: 1060, column: 3, scope: !442, inlinedAt: !423)
!490 = !{!"llvm.loop.mustprogress"}
!491 = !{!"llvm.loop.unroll.disable"}
!492 = !DILocation(line: 1061, column: 23, scope: !109, inlinedAt: !423)
!493 = !DILocation(line: 1062, column: 33, scope: !109, inlinedAt: !423)
!494 = !DILocation(line: 1063, column: 3, scope: !109, inlinedAt: !423)
!495 = !DILocation(line: 296, column: 59, scope: !396, inlinedAt: !407)
!496 = !DILocation(line: 296, column: 64, scope: !396, inlinedAt: !407)
!497 = !DILocation(line: 296, column: 20, scope: !396, inlinedAt: !407)
!498 = !DILocation(line: 296, column: 19, scope: !396, inlinedAt: !407)
!499 = !DILocation(line: 297, column: 22, scope: !396, inlinedAt: !407)
!500 = !DILocation(line: 298, column: 23, scope: !396, inlinedAt: !407)
!501 = !DILocation(line: 299, column: 1, scope: !396, inlinedAt: !407)
!502 = !DILocation(line: 1587, column: 14, scope: !364)
!503 = !DILocation(line: 1589, column: 23, scope: !363)
!504 = !DILocation(line: 1589, column: 31, scope: !363)
!505 = !DILocation(line: 1589, column: 11, scope: !364)
!506 = !DILocation(line: 1590, column: 9, scope: !362)
!507 = !DILocation(line: 0, scope: !362)
!508 = !DILocation(line: 1592, column: 18, scope: !352)
!509 = !DILocation(line: 1593, column: 1, scope: !352)
!510 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !152, file: !152, line: 39, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!511 = !DISubprogram(name: "AcquireMagickMemory", scope: !512, file: !512, line: 40, type: !513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!512 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!513 = !DISubroutineType(types: !514)
!514 = !{!124, !515}
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!516 = distinct !DISubprogram(name: "CloneSplayTree", scope: !108, file: !108, line: 344, type: !517, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !519)
!517 = !DISubroutineType(types: !518)
!518 = !{!113, !113, !136, !136}
!519 = !{!520, !521, !522, !523, !524, !525}
!520 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !516, file: !108, line: 344, type: !113)
!521 = !DILocalVariable(name: "clone_key", arg: 2, scope: !516, file: !108, line: 345, type: !136)
!522 = !DILocalVariable(name: "clone_value", arg: 3, scope: !516, file: !108, line: 345, type: !136)
!523 = !DILocalVariable(name: "next", scope: !516, file: !108, line: 348, type: !119)
!524 = !DILocalVariable(name: "node", scope: !516, file: !108, line: 349, type: !119)
!525 = !DILocalVariable(name: "clone_tree", scope: !516, file: !108, line: 352, type: !113)
!526 = !DILocation(line: 0, scope: !516)
!527 = !DILocation(line: 356, column: 19, scope: !528)
!528 = distinct !DILexicalBlock(scope: !516, file: !108, line: 356, column: 7)
!529 = !{!240, !242, i64 64}
!530 = !DILocation(line: 356, column: 25, scope: !528)
!531 = !DILocation(line: 356, column: 7, scope: !516)
!532 = !DILocation(line: 357, column: 12, scope: !528)
!533 = !DILocation(line: 357, column: 5, scope: !528)
!534 = !DILocation(line: 358, column: 39, scope: !516)
!535 = !DILocation(line: 358, column: 59, scope: !516)
!536 = !DILocation(line: 359, column: 17, scope: !516)
!537 = !DILocation(line: 358, column: 14, scope: !516)
!538 = !DILocation(line: 360, column: 33, scope: !516)
!539 = !DILocation(line: 360, column: 3, scope: !516)
!540 = !DILocation(line: 361, column: 19, scope: !541)
!541 = distinct !DILexicalBlock(scope: !516, file: !108, line: 361, column: 7)
!542 = !DILocation(line: 361, column: 24, scope: !541)
!543 = !DILocation(line: 361, column: 7, scope: !516)
!544 = !DILocation(line: 0, scope: !545, inlinedAt: !551)
!545 = distinct !DISubprogram(name: "GetFirstSplayTreeNode", scope: !108, file: !108, line: 331, type: !546, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{!124, !113}
!548 = !{!549, !550}
!549 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !545, file: !108, line: 331, type: !113)
!550 = !DILocalVariable(name: "node", scope: !545, file: !108, line: 334, type: !119)
!551 = distinct !DILocation(line: 366, column: 21, scope: !516)
!552 = !DILocation(line: 339, column: 16, scope: !545, inlinedAt: !551)
!553 = !DILocation(line: 339, column: 21, scope: !545, inlinedAt: !551)
!554 = !DILocation(line: 339, column: 3, scope: !545, inlinedAt: !551)
!555 = distinct !{!555, !554, !556, !490, !491}
!556 = !DILocation(line: 340, column: 16, scope: !545, inlinedAt: !551)
!557 = !DILocation(line: 341, column: 16, scope: !545, inlinedAt: !551)
!558 = !DILocation(line: 367, column: 15, scope: !516)
!559 = !DILocation(line: 367, column: 3, scope: !516)
!560 = !DILocation(line: 369, column: 5, scope: !561)
!561 = distinct !DILexicalBlock(scope: !516, file: !108, line: 368, column: 3)
!562 = !DILocation(line: 370, column: 65, scope: !561)
!563 = !DILocation(line: 370, column: 71, scope: !561)
!564 = !DILocation(line: 370, column: 43, scope: !561)
!565 = !DILocation(line: 371, column: 31, scope: !561)
!566 = !DILocation(line: 371, column: 37, scope: !561)
!567 = !DILocation(line: 371, column: 7, scope: !561)
!568 = !DILocation(line: 370, column: 12, scope: !561)
!569 = !DILocation(line: 373, column: 22, scope: !561)
!570 = !DILocation(line: 373, column: 28, scope: !561)
!571 = !DILocation(line: 374, column: 14, scope: !572)
!572 = distinct !DILexicalBlock(scope: !561, file: !108, line: 374, column: 9)
!573 = !DILocation(line: 374, column: 9, scope: !561)
!574 = !DILocation(line: 0, scope: !561)
!575 = !DILocation(line: 376, column: 22, scope: !576)
!576 = distinct !DILexicalBlock(scope: !572, file: !108, line: 375, column: 7)
!577 = !DILocation(line: 376, column: 27, scope: !576)
!578 = !DILocation(line: 376, column: 9, scope: !576)
!579 = distinct !{!579, !578, !580, !490, !491}
!580 = !DILocation(line: 377, column: 22, scope: !576)
!581 = !DILocation(line: 378, column: 33, scope: !576)
!582 = distinct !{!582, !559, !583, !490, !491}
!583 = !DILocation(line: 380, column: 3, scope: !516)
!584 = !DILocation(line: 383, column: 1, scope: !516)
!585 = !DISubprogram(name: "LogMagickEvent", scope: !10, file: !10, line: 83, type: !586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!586 = !DISubroutineType(types: !587)
!587 = !{!141, !588, !202, !202, !515, !202, null}
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !10, line: 58, baseType: !9)
!590 = distinct !DISubprogram(name: "NewSplayTree", scope: !108, file: !108, line: 1098, type: !591, scopeLine: 1101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !593)
!591 = !DISubroutineType(types: !592)
!592 = !{!113, !130, !136, !136}
!593 = !{!594, !595, !596, !597, !598, !601}
!594 = !DILocalVariable(name: "compare", arg: 1, scope: !590, file: !108, line: 1099, type: !130)
!595 = !DILocalVariable(name: "relinquish_key", arg: 2, scope: !590, file: !108, line: 1099, type: !136)
!596 = !DILocalVariable(name: "relinquish_value", arg: 3, scope: !590, file: !108, line: 1100, type: !136)
!597 = !DILocalVariable(name: "splay_tree", scope: !590, file: !108, line: 1103, type: !113)
!598 = !DILocalVariable(name: "message", scope: !599, file: !108, line: 1107, type: !181)
!599 = distinct !DILexicalBlock(scope: !600, file: !108, line: 1107, column: 5)
!600 = distinct !DILexicalBlock(scope: !590, file: !108, line: 1106, column: 7)
!601 = !DILocalVariable(name: "exception", scope: !599, file: !108, line: 1107, type: !184)
!602 = !DILocation(line: 0, scope: !590)
!603 = !DILocation(line: 1105, column: 32, scope: !590)
!604 = !DILocation(line: 1106, column: 18, scope: !600)
!605 = !DILocation(line: 1106, column: 7, scope: !590)
!606 = !DILocation(line: 1107, column: 5, scope: !599)
!607 = !DILocation(line: 0, scope: !599)
!608 = !DILocation(line: 1108, column: 10, scope: !590)
!609 = !DILocation(line: 1109, column: 19, scope: !590)
!610 = !DILocation(line: 1110, column: 15, scope: !590)
!611 = !DILocation(line: 1110, column: 22, scope: !590)
!612 = !DILocation(line: 1111, column: 15, scope: !590)
!613 = !DILocation(line: 1111, column: 29, scope: !590)
!614 = !DILocation(line: 1112, column: 15, scope: !590)
!615 = !DILocation(line: 1112, column: 31, scope: !590)
!616 = !DILocation(line: 1113, column: 15, scope: !590)
!617 = !DILocation(line: 1113, column: 22, scope: !590)
!618 = !DILocation(line: 1114, column: 15, scope: !590)
!619 = !DILocation(line: 1114, column: 18, scope: !590)
!620 = !DILocation(line: 1117, column: 21, scope: !590)
!621 = !DILocation(line: 1117, column: 15, scope: !590)
!622 = !DILocation(line: 1117, column: 20, scope: !590)
!623 = !DILocation(line: 1118, column: 25, scope: !590)
!624 = !DILocation(line: 1118, column: 15, scope: !590)
!625 = !DILocation(line: 1118, column: 24, scope: !590)
!626 = !DILocation(line: 1119, column: 15, scope: !590)
!627 = !DILocation(line: 1119, column: 24, scope: !590)
!628 = !{!240, !244, i64 80}
!629 = !DILocation(line: 1120, column: 3, scope: !590)
!630 = distinct !DISubprogram(name: "CompareSplayTreeString", scope: !108, file: !108, line: 410, type: !131, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !631)
!631 = !{!632, !633, !634, !635}
!632 = !DILocalVariable(name: "target", arg: 1, scope: !630, file: !108, line: 410, type: !133)
!633 = !DILocalVariable(name: "source", arg: 2, scope: !630, file: !108, line: 410, type: !133)
!634 = !DILocalVariable(name: "p", scope: !630, file: !108, line: 413, type: !202)
!635 = !DILocalVariable(name: "q", scope: !630, file: !108, line: 414, type: !202)
!636 = !DILocation(line: 0, scope: !630)
!637 = !DILocation(line: 418, column: 10, scope: !630)
!638 = !DILocation(line: 418, column: 3, scope: !630)
!639 = !DISubprogram(name: "LocaleCompare", scope: !207, file: !207, line: 66, type: !640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!640 = !DISubroutineType(types: !641)
!641 = !{!112, !202, !202}
!642 = distinct !DISubprogram(name: "CompareSplayTreeStringInfo", scope: !108, file: !108, line: 446, type: !131, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !643)
!643 = !{!644, !645, !646, !647}
!644 = !DILocalVariable(name: "target", arg: 1, scope: !642, file: !108, line: 446, type: !133)
!645 = !DILocalVariable(name: "source", arg: 2, scope: !642, file: !108, line: 447, type: !133)
!646 = !DILocalVariable(name: "p", scope: !642, file: !108, line: 450, type: !204)
!647 = !DILocalVariable(name: "q", scope: !642, file: !108, line: 451, type: !204)
!648 = !DILocation(line: 0, scope: !642)
!649 = !DILocation(line: 455, column: 10, scope: !642)
!650 = !DILocation(line: 455, column: 3, scope: !642)
!651 = !DISubprogram(name: "CompareStringInfo", scope: !207, file: !207, line: 65, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!652 = !DISubroutineType(types: !653)
!653 = !{!112, !204, !204}
!654 = distinct !DISubprogram(name: "DeleteNodeByValueFromSplayTree", scope: !108, file: !108, line: 484, type: !655, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !657)
!655 = !DISubroutineType(types: !656)
!656 = !{!141, !113, !133}
!657 = !{!658, !659, !660, !661, !662, !666, !667, !668}
!658 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !654, file: !108, line: 485, type: !113)
!659 = !DILocalVariable(name: "value", arg: 2, scope: !654, file: !108, line: 485, type: !133)
!660 = !DILocalVariable(name: "next", scope: !654, file: !108, line: 488, type: !119)
!661 = !DILocalVariable(name: "node", scope: !654, file: !108, line: 489, type: !119)
!662 = !DILocalVariable(name: "compare", scope: !663, file: !108, line: 516, type: !112)
!663 = distinct !DILexicalBlock(scope: !664, file: !108, line: 514, column: 7)
!664 = distinct !DILexicalBlock(scope: !665, file: !108, line: 513, column: 9)
!665 = distinct !DILexicalBlock(scope: !654, file: !108, line: 503, column: 3)
!666 = !DILocalVariable(name: "left", scope: !663, file: !108, line: 519, type: !119)
!667 = !DILocalVariable(name: "right", scope: !663, file: !108, line: 520, type: !119)
!668 = !DILocalVariable(name: "key", scope: !663, file: !108, line: 523, type: !124)
!669 = !DILocation(line: 0, scope: !654)
!670 = !DILocation(line: 493, column: 19, scope: !671)
!671 = distinct !DILexicalBlock(scope: !654, file: !108, line: 493, column: 7)
!672 = !DILocation(line: 493, column: 25, scope: !671)
!673 = !DILocation(line: 493, column: 7, scope: !654)
!674 = !DILocation(line: 494, column: 12, scope: !671)
!675 = !DILocation(line: 494, column: 5, scope: !671)
!676 = !DILocation(line: 495, column: 33, scope: !654)
!677 = !DILocation(line: 495, column: 3, scope: !654)
!678 = !DILocation(line: 496, column: 19, scope: !679)
!679 = distinct !DILexicalBlock(scope: !654, file: !108, line: 496, column: 7)
!680 = !DILocation(line: 496, column: 24, scope: !679)
!681 = !DILocation(line: 496, column: 7, scope: !654)
!682 = !DILocation(line: 0, scope: !545, inlinedAt: !683)
!683 = distinct !DILocation(line: 501, column: 21, scope: !654)
!684 = !DILocation(line: 339, column: 16, scope: !545, inlinedAt: !683)
!685 = !DILocation(line: 339, column: 21, scope: !545, inlinedAt: !683)
!686 = !DILocation(line: 339, column: 3, scope: !545, inlinedAt: !683)
!687 = distinct !{!687, !686, !688, !490, !491}
!688 = !DILocation(line: 340, column: 16, scope: !545, inlinedAt: !683)
!689 = !DILocation(line: 341, column: 16, scope: !545, inlinedAt: !683)
!690 = !DILocation(line: 502, column: 3, scope: !654)
!691 = !DILocation(line: 502, column: 15, scope: !654)
!692 = !DILocation(line: 504, column: 5, scope: !665)
!693 = !DILocation(line: 506, column: 22, scope: !665)
!694 = !DILocation(line: 506, column: 28, scope: !665)
!695 = !DILocation(line: 507, column: 14, scope: !696)
!696 = distinct !DILexicalBlock(scope: !665, file: !108, line: 507, column: 9)
!697 = !DILocation(line: 507, column: 9, scope: !665)
!698 = !DILocation(line: 0, scope: !665)
!699 = !DILocation(line: 509, column: 22, scope: !700)
!700 = distinct !DILexicalBlock(scope: !696, file: !108, line: 508, column: 7)
!701 = !DILocation(line: 509, column: 27, scope: !700)
!702 = !DILocation(line: 509, column: 9, scope: !700)
!703 = distinct !{!703, !702, !704, !490, !491}
!704 = !DILocation(line: 510, column: 22, scope: !700)
!705 = !DILocation(line: 511, column: 33, scope: !700)
!706 = !DILocation(line: 512, column: 7, scope: !700)
!707 = !DILocation(line: 513, column: 27, scope: !664)
!708 = !DILocation(line: 513, column: 33, scope: !664)
!709 = !DILocation(line: 513, column: 9, scope: !665)
!710 = distinct !{!710, !690, !711, !490, !491}
!711 = !DILocation(line: 569, column: 3, scope: !654)
!712 = !DILocation(line: 528, column: 31, scope: !663)
!713 = !DILocation(line: 0, scope: !663)
!714 = !DILocation(line: 529, column: 9, scope: !663)
!715 = !DILocation(line: 530, column: 21, scope: !663)
!716 = !DILocation(line: 530, column: 24, scope: !663)
!717 = !DILocation(line: 531, column: 25, scope: !718)
!718 = distinct !DILexicalBlock(scope: !663, file: !108, line: 531, column: 13)
!719 = !DILocation(line: 531, column: 33, scope: !718)
!720 = !DILocation(line: 0, scope: !718)
!721 = !DILocation(line: 531, column: 13, scope: !663)
!722 = !DILocation(line: 532, column: 19, scope: !718)
!723 = !DILocation(line: 532, column: 11, scope: !718)
!724 = !DILocation(line: 534, column: 42, scope: !718)
!725 = !DILocation(line: 534, column: 19, scope: !718)
!726 = !DILocation(line: 535, column: 37, scope: !718)
!727 = !DILocation(line: 535, column: 14, scope: !718)
!728 = !DILocation(line: 536, column: 21, scope: !729)
!729 = distinct !DILexicalBlock(scope: !663, file: !108, line: 536, column: 13)
!730 = !DILocation(line: 536, column: 13, scope: !663)
!731 = !DILocation(line: 541, column: 26, scope: !663)
!732 = !DILocation(line: 541, column: 32, scope: !663)
!733 = !DILocation(line: 542, column: 33, scope: !663)
!734 = !DILocation(line: 543, column: 26, scope: !735)
!735 = distinct !DILexicalBlock(scope: !663, file: !108, line: 543, column: 13)
!736 = !DILocation(line: 543, column: 43, scope: !735)
!737 = !DILocation(line: 543, column: 72, scope: !735)
!738 = !DILocation(line: 544, column: 32, scope: !735)
!739 = !DILocation(line: 544, column: 38, scope: !735)
!740 = !DILocation(line: 543, column: 13, scope: !663)
!741 = !DILocation(line: 545, column: 35, scope: !735)
!742 = !DILocation(line: 545, column: 23, scope: !735)
!743 = !DILocation(line: 545, column: 29, scope: !735)
!744 = !DILocation(line: 545, column: 34, scope: !735)
!745 = !DILocation(line: 545, column: 11, scope: !735)
!746 = !DILocation(line: 547, column: 26, scope: !747)
!747 = distinct !DILexicalBlock(scope: !663, file: !108, line: 547, column: 13)
!748 = !DILocation(line: 547, column: 41, scope: !747)
!749 = !DILocation(line: 547, column: 70, scope: !747)
!750 = !DILocation(line: 548, column: 32, scope: !747)
!751 = !DILocation(line: 548, column: 36, scope: !747)
!752 = !DILocation(line: 547, column: 13, scope: !663)
!753 = !DILocation(line: 549, column: 33, scope: !747)
!754 = !DILocation(line: 549, column: 23, scope: !747)
!755 = !DILocation(line: 549, column: 32, scope: !747)
!756 = !DILocation(line: 549, column: 11, scope: !747)
!757 = !DILocation(line: 551, column: 74, scope: !663)
!758 = !DILocation(line: 551, column: 39, scope: !663)
!759 = !DILocation(line: 552, column: 21, scope: !663)
!760 = !DILocation(line: 552, column: 26, scope: !663)
!761 = !DILocation(line: 553, column: 18, scope: !762)
!762 = distinct !DILexicalBlock(scope: !663, file: !108, line: 553, column: 13)
!763 = !DILocation(line: 553, column: 13, scope: !663)
!764 = !DILocation(line: 559, column: 25, scope: !663)
!765 = !DILocation(line: 560, column: 19, scope: !766)
!766 = distinct !DILexicalBlock(scope: !663, file: !108, line: 560, column: 13)
!767 = !DILocation(line: 560, column: 13, scope: !663)
!768 = !DILocation(line: 562, column: 26, scope: !769)
!769 = distinct !DILexicalBlock(scope: !766, file: !108, line: 561, column: 11)
!770 = !DILocation(line: 562, column: 32, scope: !769)
!771 = !DILocation(line: 562, column: 13, scope: !769)
!772 = distinct !{!772, !771, !773, !490, !491}
!773 = !DILocation(line: 563, column: 26, scope: !769)
!774 = !DILocation(line: 565, column: 11, scope: !769)
!775 = !DILocation(line: 572, column: 1, scope: !654)
!776 = !DISubprogram(name: "RelinquishMagickMemory", scope: !512, file: !512, line: 51, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!777 = distinct !DISubprogram(name: "DeleteNodeFromSplayTree", scope: !108, file: !108, line: 601, type: !655, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !778)
!778 = !{!779, !780, !781, !782, !783}
!779 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !777, file: !108, line: 602, type: !113)
!780 = !DILocalVariable(name: "key", arg: 2, scope: !777, file: !108, line: 602, type: !133)
!781 = !DILocalVariable(name: "compare", scope: !777, file: !108, line: 605, type: !112)
!782 = !DILocalVariable(name: "left", scope: !777, file: !108, line: 608, type: !119)
!783 = !DILocalVariable(name: "right", scope: !777, file: !108, line: 609, type: !119)
!784 = !DILocation(line: 0, scope: !777)
!785 = !DILocation(line: 613, column: 19, scope: !786)
!786 = distinct !DILexicalBlock(scope: !777, file: !108, line: 613, column: 7)
!787 = !DILocation(line: 613, column: 25, scope: !786)
!788 = !DILocation(line: 613, column: 7, scope: !777)
!789 = !DILocation(line: 614, column: 12, scope: !786)
!790 = !DILocation(line: 614, column: 5, scope: !786)
!791 = !DILocation(line: 615, column: 19, scope: !792)
!792 = distinct !DILexicalBlock(scope: !777, file: !108, line: 615, column: 7)
!793 = !DILocation(line: 615, column: 24, scope: !792)
!794 = !DILocation(line: 615, column: 7, scope: !777)
!795 = !DILocation(line: 617, column: 33, scope: !777)
!796 = !DILocation(line: 617, column: 3, scope: !777)
!797 = !DILocation(line: 618, column: 3, scope: !777)
!798 = !DILocation(line: 619, column: 15, scope: !777)
!799 = !DILocation(line: 619, column: 18, scope: !777)
!800 = !DILocation(line: 620, column: 19, scope: !801)
!801 = distinct !DILexicalBlock(scope: !777, file: !108, line: 620, column: 7)
!802 = !DILocation(line: 620, column: 27, scope: !801)
!803 = !DILocation(line: 0, scope: !801)
!804 = !DILocation(line: 620, column: 7, scope: !777)
!805 = !DILocation(line: 621, column: 13, scope: !801)
!806 = !DILocation(line: 621, column: 5, scope: !801)
!807 = !DILocation(line: 623, column: 36, scope: !801)
!808 = !DILocation(line: 623, column: 13, scope: !801)
!809 = !DILocation(line: 624, column: 31, scope: !801)
!810 = !DILocation(line: 624, column: 8, scope: !801)
!811 = !DILocation(line: 625, column: 15, scope: !812)
!812 = distinct !DILexicalBlock(scope: !777, file: !108, line: 625, column: 7)
!813 = !DILocation(line: 625, column: 7, scope: !777)
!814 = !DILocation(line: 630, column: 20, scope: !777)
!815 = !DILocation(line: 630, column: 26, scope: !777)
!816 = !DILocation(line: 631, column: 27, scope: !777)
!817 = !DILocation(line: 632, column: 20, scope: !818)
!818 = distinct !DILexicalBlock(scope: !777, file: !108, line: 632, column: 7)
!819 = !DILocation(line: 632, column: 37, scope: !818)
!820 = !DILocation(line: 632, column: 66, scope: !818)
!821 = !DILocation(line: 633, column: 26, scope: !818)
!822 = !DILocation(line: 633, column: 32, scope: !818)
!823 = !DILocation(line: 632, column: 7, scope: !777)
!824 = !DILocation(line: 634, column: 29, scope: !818)
!825 = !DILocation(line: 634, column: 17, scope: !818)
!826 = !DILocation(line: 634, column: 23, scope: !818)
!827 = !DILocation(line: 634, column: 28, scope: !818)
!828 = !DILocation(line: 634, column: 5, scope: !818)
!829 = !DILocation(line: 636, column: 20, scope: !830)
!830 = distinct !DILexicalBlock(scope: !777, file: !108, line: 636, column: 7)
!831 = !DILocation(line: 636, column: 35, scope: !830)
!832 = !DILocation(line: 636, column: 64, scope: !830)
!833 = !DILocation(line: 637, column: 26, scope: !830)
!834 = !DILocation(line: 637, column: 30, scope: !830)
!835 = !DILocation(line: 636, column: 7, scope: !777)
!836 = !DILocation(line: 638, column: 27, scope: !830)
!837 = !DILocation(line: 638, column: 17, scope: !830)
!838 = !DILocation(line: 638, column: 26, scope: !830)
!839 = !DILocation(line: 638, column: 5, scope: !830)
!840 = !DILocation(line: 639, column: 68, scope: !777)
!841 = !DILocation(line: 639, column: 33, scope: !777)
!842 = !DILocation(line: 640, column: 15, scope: !777)
!843 = !DILocation(line: 640, column: 20, scope: !777)
!844 = !DILocation(line: 641, column: 12, scope: !845)
!845 = distinct !DILexicalBlock(scope: !777, file: !108, line: 641, column: 7)
!846 = !DILocation(line: 641, column: 7, scope: !777)
!847 = !DILocation(line: 647, column: 19, scope: !777)
!848 = !DILocation(line: 648, column: 13, scope: !849)
!849 = distinct !DILexicalBlock(scope: !777, file: !108, line: 648, column: 7)
!850 = !DILocation(line: 648, column: 7, scope: !777)
!851 = !DILocation(line: 650, column: 20, scope: !852)
!852 = distinct !DILexicalBlock(scope: !849, file: !108, line: 649, column: 5)
!853 = !DILocation(line: 650, column: 26, scope: !852)
!854 = !DILocation(line: 650, column: 7, scope: !852)
!855 = distinct !{!855, !854, !856, !490, !491}
!856 = !DILocation(line: 651, column: 20, scope: !852)
!857 = !DILocation(line: 653, column: 5, scope: !852)
!858 = !DILocation(line: 656, column: 1, scope: !777)
!859 = distinct !DISubprogram(name: "DestroySplayTree", scope: !108, file: !108, line: 680, type: !860, scopeLine: 681, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !862)
!860 = !DISubroutineType(types: !861)
!861 = !{!113, !113}
!862 = !{!863, !864, !865, !866}
!863 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !859, file: !108, line: 680, type: !113)
!864 = !DILocalVariable(name: "node", scope: !859, file: !108, line: 683, type: !119)
!865 = !DILocalVariable(name: "active", scope: !859, file: !108, line: 686, type: !119)
!866 = !DILocalVariable(name: "pend", scope: !859, file: !108, line: 687, type: !119)
!867 = !DILocation(line: 0, scope: !859)
!868 = !DILocation(line: 689, column: 33, scope: !859)
!869 = !DILocation(line: 689, column: 3, scope: !859)
!870 = !DILocation(line: 690, column: 19, scope: !871)
!871 = distinct !DILexicalBlock(scope: !859, file: !108, line: 690, column: 7)
!872 = !DILocation(line: 690, column: 24, scope: !871)
!873 = !DILocation(line: 690, column: 7, scope: !859)
!874 = !DILocation(line: 692, column: 24, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !108, line: 692, column: 11)
!876 = distinct !DILexicalBlock(scope: !871, file: !108, line: 691, column: 5)
!877 = !DILocation(line: 692, column: 41, scope: !875)
!878 = !DILocation(line: 692, column: 70, scope: !875)
!879 = !DILocation(line: 693, column: 30, scope: !875)
!880 = !DILocation(line: 693, column: 36, scope: !875)
!881 = !DILocation(line: 692, column: 11, scope: !876)
!882 = !DILocation(line: 694, column: 33, scope: !875)
!883 = !DILocation(line: 694, column: 21, scope: !875)
!884 = !DILocation(line: 694, column: 27, scope: !875)
!885 = !DILocation(line: 694, column: 32, scope: !875)
!886 = !DILocation(line: 694, column: 9, scope: !875)
!887 = !DILocation(line: 696, column: 24, scope: !888)
!888 = distinct !DILexicalBlock(scope: !876, file: !108, line: 696, column: 11)
!889 = !DILocation(line: 696, column: 39, scope: !888)
!890 = !DILocation(line: 696, column: 68, scope: !888)
!891 = !DILocation(line: 697, column: 30, scope: !888)
!892 = !DILocation(line: 697, column: 34, scope: !888)
!893 = !DILocation(line: 696, column: 11, scope: !876)
!894 = !DILocation(line: 698, column: 31, scope: !888)
!895 = !DILocation(line: 698, column: 21, scope: !888)
!896 = !DILocation(line: 698, column: 30, scope: !888)
!897 = !DILocation(line: 698, column: 9, scope: !888)
!898 = !DILocation(line: 699, column: 19, scope: !876)
!899 = !DILocation(line: 699, column: 28, scope: !876)
!900 = !DILocation(line: 700, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !876, file: !108, line: 700, column: 7)
!902 = !DILocation(line: 700, column: 40, scope: !903)
!903 = distinct !DILexicalBlock(scope: !901, file: !108, line: 700, column: 7)
!904 = !DILocation(line: 705, column: 23, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !108, line: 705, column: 15)
!906 = distinct !DILexicalBlock(scope: !907, file: !108, line: 704, column: 9)
!907 = distinct !DILexicalBlock(scope: !908, file: !108, line: 703, column: 9)
!908 = distinct !DILexicalBlock(scope: !909, file: !108, line: 703, column: 9)
!909 = distinct !DILexicalBlock(scope: !903, file: !108, line: 701, column: 7)
!910 = !DILocation(line: 705, column: 28, scope: !905)
!911 = !DILocation(line: 705, column: 15, scope: !906)
!912 = !DILocation(line: 707, column: 32, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !108, line: 707, column: 19)
!914 = distinct !DILexicalBlock(scope: !905, file: !108, line: 706, column: 13)
!915 = !DILocation(line: 707, column: 49, scope: !913)
!916 = !DILocation(line: 707, column: 78, scope: !913)
!917 = !DILocation(line: 708, column: 34, scope: !913)
!918 = !DILocation(line: 708, column: 40, scope: !913)
!919 = !DILocation(line: 707, column: 19, scope: !914)
!920 = !DILocation(line: 709, column: 37, scope: !913)
!921 = !DILocation(line: 709, column: 25, scope: !913)
!922 = !DILocation(line: 709, column: 31, scope: !913)
!923 = !DILocation(line: 709, column: 36, scope: !913)
!924 = !DILocation(line: 709, column: 17, scope: !913)
!925 = !DILocation(line: 711, column: 32, scope: !926)
!926 = distinct !DILexicalBlock(scope: !914, file: !108, line: 711, column: 19)
!927 = !DILocation(line: 711, column: 47, scope: !926)
!928 = !DILocation(line: 711, column: 76, scope: !926)
!929 = !DILocation(line: 712, column: 34, scope: !926)
!930 = !DILocation(line: 712, column: 38, scope: !926)
!931 = !DILocation(line: 711, column: 19, scope: !914)
!932 = !DILocation(line: 713, column: 35, scope: !926)
!933 = !DILocation(line: 713, column: 25, scope: !926)
!934 = !DILocation(line: 713, column: 34, scope: !926)
!935 = !DILocation(line: 713, column: 17, scope: !926)
!936 = !DILocation(line: 714, column: 23, scope: !914)
!937 = !DILocation(line: 714, column: 32, scope: !914)
!938 = !DILocation(line: 716, column: 13, scope: !914)
!939 = !DILocation(line: 0, scope: !908)
!940 = !DILocation(line: 717, column: 23, scope: !941)
!941 = distinct !DILexicalBlock(scope: !906, file: !108, line: 717, column: 15)
!942 = !DILocation(line: 717, column: 29, scope: !941)
!943 = !DILocation(line: 717, column: 15, scope: !906)
!944 = !DILocation(line: 719, column: 32, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !108, line: 719, column: 19)
!946 = distinct !DILexicalBlock(scope: !941, file: !108, line: 718, column: 13)
!947 = !DILocation(line: 719, column: 49, scope: !945)
!948 = !DILocation(line: 719, column: 78, scope: !945)
!949 = !DILocation(line: 720, column: 35, scope: !945)
!950 = !DILocation(line: 720, column: 41, scope: !945)
!951 = !DILocation(line: 719, column: 19, scope: !946)
!952 = !DILocation(line: 721, column: 38, scope: !945)
!953 = !DILocation(line: 721, column: 25, scope: !945)
!954 = !DILocation(line: 721, column: 32, scope: !945)
!955 = !DILocation(line: 721, column: 37, scope: !945)
!956 = !DILocation(line: 721, column: 17, scope: !945)
!957 = !DILocation(line: 723, column: 32, scope: !958)
!958 = distinct !DILexicalBlock(scope: !946, file: !108, line: 723, column: 19)
!959 = !DILocation(line: 723, column: 47, scope: !958)
!960 = !DILocation(line: 723, column: 76, scope: !958)
!961 = !DILocation(line: 724, column: 35, scope: !958)
!962 = !DILocation(line: 724, column: 39, scope: !958)
!963 = !DILocation(line: 723, column: 19, scope: !946)
!964 = !DILocation(line: 725, column: 36, scope: !958)
!965 = !DILocation(line: 725, column: 25, scope: !958)
!966 = !DILocation(line: 725, column: 35, scope: !958)
!967 = !DILocation(line: 725, column: 17, scope: !958)
!968 = !DILocation(line: 727, column: 23, scope: !946)
!969 = !DILocation(line: 727, column: 33, scope: !946)
!970 = !DILocation(line: 729, column: 13, scope: !946)
!971 = !DILocation(line: 0, scope: !906)
!972 = !DILocation(line: 731, column: 37, scope: !906)
!973 = !DILocation(line: 732, column: 29, scope: !906)
!974 = !DILocation(line: 703, column: 45, scope: !907)
!975 = !DILocation(line: 703, column: 9, scope: !908)
!976 = distinct !{!976, !900, !977, !490, !491}
!977 = !DILocation(line: 734, column: 7, scope: !901)
!978 = !DILocation(line: 736, column: 15, scope: !859)
!979 = !DILocation(line: 736, column: 24, scope: !859)
!980 = !DILocation(line: 737, column: 35, scope: !859)
!981 = !DILocation(line: 737, column: 3, scope: !859)
!982 = !DILocation(line: 738, column: 3, scope: !859)
!983 = !DILocation(line: 739, column: 32, scope: !859)
!984 = !DILocation(line: 740, column: 3, scope: !859)
!985 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !152, file: !152, line: 36, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !988}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!989 = distinct !DISubprogram(name: "GetNextKeyInSplayTree", scope: !108, file: !108, line: 767, type: !990, scopeLine: 768, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !992)
!990 = !DISubroutineType(types: !991)
!991 = !{!133, !113}
!992 = !{!993, !994, !995}
!993 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !989, file: !108, line: 767, type: !113)
!994 = !DILocalVariable(name: "node", scope: !989, file: !108, line: 770, type: !119)
!995 = !DILocalVariable(name: "key", scope: !989, file: !108, line: 773, type: !124)
!996 = !DILocation(line: 0, scope: !989)
!997 = !DILocation(line: 777, column: 19, scope: !998)
!998 = distinct !DILexicalBlock(scope: !989, file: !108, line: 777, column: 7)
!999 = !DILocation(line: 777, column: 25, scope: !998)
!1000 = !DILocation(line: 777, column: 7, scope: !989)
!1001 = !DILocation(line: 778, column: 12, scope: !998)
!1002 = !DILocation(line: 778, column: 5, scope: !998)
!1003 = !DILocation(line: 779, column: 20, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !989, file: !108, line: 779, column: 7)
!1005 = !DILocation(line: 779, column: 25, scope: !1004)
!1006 = !DILocation(line: 779, column: 47, scope: !1004)
!1007 = !DILocation(line: 780, column: 20, scope: !1004)
!1008 = !{!240, !241, i64 48}
!1009 = !DILocation(line: 780, column: 25, scope: !1004)
!1010 = !DILocation(line: 779, column: 7, scope: !989)
!1011 = !DILocation(line: 782, column: 33, scope: !989)
!1012 = !DILocation(line: 782, column: 3, scope: !989)
!1013 = !DILocation(line: 783, column: 41, scope: !989)
!1014 = !DILocation(line: 783, column: 3, scope: !989)
!1015 = !DILocation(line: 784, column: 19, scope: !989)
!1016 = !DILocation(line: 785, column: 20, scope: !989)
!1017 = !DILocation(line: 785, column: 26, scope: !989)
!1018 = !DILocation(line: 786, column: 12, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !989, file: !108, line: 786, column: 7)
!1020 = !DILocation(line: 786, column: 7, scope: !989)
!1021 = !DILocation(line: 788, column: 20, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !108, line: 787, column: 5)
!1023 = !DILocation(line: 788, column: 25, scope: !1022)
!1024 = !DILocation(line: 788, column: 7, scope: !1022)
!1025 = distinct !{!1025, !1024, !1026, !490, !491}
!1026 = !DILocation(line: 789, column: 20, scope: !1022)
!1027 = !DILocation(line: 790, column: 30, scope: !1022)
!1028 = !DILocation(line: 790, column: 23, scope: !1022)
!1029 = !DILocation(line: 791, column: 5, scope: !1022)
!1030 = !DILocation(line: 792, column: 25, scope: !989)
!1031 = !DILocation(line: 793, column: 35, scope: !989)
!1032 = !DILocation(line: 793, column: 3, scope: !989)
!1033 = !DILocation(line: 794, column: 3, scope: !989)
!1034 = !DILocation(line: 795, column: 1, scope: !989)
!1035 = distinct !DISubprogram(name: "GetNextValueInSplayTree", scope: !108, file: !108, line: 821, type: !990, scopeLine: 822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1036)
!1036 = !{!1037, !1038, !1039}
!1037 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !1035, file: !108, line: 821, type: !113)
!1038 = !DILocalVariable(name: "node", scope: !1035, file: !108, line: 824, type: !119)
!1039 = !DILocalVariable(name: "value", scope: !1035, file: !108, line: 827, type: !124)
!1040 = !DILocation(line: 0, scope: !1035)
!1041 = !DILocation(line: 831, column: 19, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1035, file: !108, line: 831, column: 7)
!1043 = !DILocation(line: 831, column: 25, scope: !1042)
!1044 = !DILocation(line: 831, column: 7, scope: !1035)
!1045 = !DILocation(line: 832, column: 12, scope: !1042)
!1046 = !DILocation(line: 832, column: 5, scope: !1042)
!1047 = !DILocation(line: 833, column: 20, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1035, file: !108, line: 833, column: 7)
!1049 = !DILocation(line: 833, column: 25, scope: !1048)
!1050 = !DILocation(line: 833, column: 47, scope: !1048)
!1051 = !DILocation(line: 834, column: 20, scope: !1048)
!1052 = !DILocation(line: 834, column: 25, scope: !1048)
!1053 = !DILocation(line: 833, column: 7, scope: !1035)
!1054 = !DILocation(line: 836, column: 33, scope: !1035)
!1055 = !DILocation(line: 836, column: 3, scope: !1035)
!1056 = !DILocation(line: 837, column: 41, scope: !1035)
!1057 = !DILocation(line: 837, column: 3, scope: !1035)
!1058 = !DILocation(line: 838, column: 19, scope: !1035)
!1059 = !DILocation(line: 839, column: 20, scope: !1035)
!1060 = !DILocation(line: 839, column: 26, scope: !1035)
!1061 = !DILocation(line: 840, column: 12, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1035, file: !108, line: 840, column: 7)
!1063 = !DILocation(line: 840, column: 7, scope: !1035)
!1064 = !DILocation(line: 842, column: 20, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1062, file: !108, line: 841, column: 5)
!1066 = !DILocation(line: 842, column: 25, scope: !1065)
!1067 = !DILocation(line: 842, column: 7, scope: !1065)
!1068 = distinct !{!1068, !1067, !1069, !490, !491}
!1069 = !DILocation(line: 843, column: 20, scope: !1065)
!1070 = !DILocation(line: 844, column: 30, scope: !1065)
!1071 = !DILocation(line: 844, column: 23, scope: !1065)
!1072 = !DILocation(line: 845, column: 5, scope: !1065)
!1073 = !DILocation(line: 846, column: 27, scope: !1035)
!1074 = !DILocation(line: 847, column: 35, scope: !1035)
!1075 = !DILocation(line: 847, column: 3, scope: !1035)
!1076 = !DILocation(line: 848, column: 3, scope: !1035)
!1077 = !DILocation(line: 849, column: 1, scope: !1035)
!1078 = distinct !DISubprogram(name: "GetValueFromSplayTree", scope: !108, file: !108, line: 878, type: !1079, scopeLine: 880, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1081)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!133, !113, !133}
!1081 = !{!1082, !1083, !1084, !1085}
!1082 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !1078, file: !108, line: 878, type: !113)
!1083 = !DILocalVariable(name: "key", arg: 2, scope: !1078, file: !108, line: 879, type: !133)
!1084 = !DILocalVariable(name: "compare", scope: !1078, file: !108, line: 882, type: !112)
!1085 = !DILocalVariable(name: "value", scope: !1078, file: !108, line: 885, type: !124)
!1086 = !DILocation(line: 0, scope: !1078)
!1087 = !DILocation(line: 889, column: 19, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1078, file: !108, line: 889, column: 7)
!1089 = !DILocation(line: 889, column: 25, scope: !1088)
!1090 = !DILocation(line: 889, column: 7, scope: !1078)
!1091 = !DILocation(line: 890, column: 12, scope: !1088)
!1092 = !DILocation(line: 890, column: 5, scope: !1088)
!1093 = !DILocation(line: 891, column: 19, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1078, file: !108, line: 891, column: 7)
!1095 = !DILocation(line: 891, column: 24, scope: !1094)
!1096 = !DILocation(line: 891, column: 7, scope: !1078)
!1097 = !DILocation(line: 893, column: 33, scope: !1078)
!1098 = !DILocation(line: 893, column: 3, scope: !1078)
!1099 = !DILocation(line: 894, column: 3, scope: !1078)
!1100 = !DILocation(line: 895, column: 19, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1078, file: !108, line: 895, column: 7)
!1102 = !DILocation(line: 895, column: 27, scope: !1101)
!1103 = !DILocation(line: 0, scope: !1101)
!1104 = !DILocation(line: 895, column: 7, scope: !1078)
!1105 = !DILocation(line: 896, column: 13, scope: !1101)
!1106 = !DILocation(line: 896, column: 5, scope: !1101)
!1107 = !DILocation(line: 898, column: 36, scope: !1101)
!1108 = !DILocation(line: 898, column: 13, scope: !1101)
!1109 = !DILocation(line: 899, column: 31, scope: !1101)
!1110 = !DILocation(line: 899, column: 8, scope: !1101)
!1111 = !DILocation(line: 900, column: 15, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1078, file: !108, line: 900, column: 7)
!1113 = !DILocation(line: 900, column: 7, scope: !1078)
!1114 = !DILocation(line: 905, column: 21, scope: !1078)
!1115 = !DILocation(line: 905, column: 27, scope: !1078)
!1116 = !DILocation(line: 907, column: 3, scope: !1078)
!1117 = !DILocation(line: 908, column: 1, scope: !1078)
!1118 = distinct !DISubprogram(name: "GetNumberOfNodesInSplayTree", scope: !108, file: !108, line: 933, type: !1119, scopeLine: 935, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1123)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!145, !1121}
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!1123 = !{!1124}
!1124 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !1118, file: !108, line: 934, type: !1121)
!1125 = !DILocation(line: 0, scope: !1118)
!1126 = !DILocation(line: 938, column: 19, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1118, file: !108, line: 938, column: 7)
!1128 = !DILocation(line: 938, column: 25, scope: !1127)
!1129 = !DILocation(line: 938, column: 7, scope: !1118)
!1130 = !DILocation(line: 939, column: 12, scope: !1127)
!1131 = !DILocation(line: 939, column: 5, scope: !1127)
!1132 = !DILocation(line: 940, column: 22, scope: !1118)
!1133 = !DILocation(line: 940, column: 3, scope: !1118)
!1134 = !DISubprogram(name: "GetExceptionInfo", scope: !35, file: !35, line: 166, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!1138 = !DISubprogram(name: "GetExceptionMessage", scope: !35, file: !35, line: 137, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!181, !1141}
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!1142 = !DISubprogram(name: "ThrowMagickException", scope: !35, file: !35, line: 156, type: !1143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!141, !1137, !202, !202, !515, !1145, !202, !202, null}
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!1146 = !DISubprogram(name: "DestroyString", scope: !207, file: !207, line: 46, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!181, !181}
!1149 = !DISubprogram(name: "CatchException", scope: !35, file: !35, line: 164, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!1150 = !DISubprogram(name: "DestroyExceptionInfo", scope: !35, file: !35, line: 148, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!1137, !1137}
!1153 = !DISubprogram(name: "MagickCoreTerminus", scope: !1154, file: !1154, line: 147, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!1154 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null}
!1157 = !DISubprogram(name: "ResetMagickMemory", scope: !512, file: !512, line: 52, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!124, !124, !112, !515}
!1160 = !DISubprogram(name: "IsEventLogging", scope: !10, file: !10, line: 80, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!141}
!1163 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !152, file: !152, line: 32, type: !1164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!150}
!1166 = distinct !DISubprogram(name: "RemoveNodeByValueFromSplayTree", scope: !108, file: !108, line: 1149, type: !1167, scopeLine: 1151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1169)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!124, !113, !133}
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175, !1179, !1180}
!1170 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !1166, file: !108, line: 1149, type: !113)
!1171 = !DILocalVariable(name: "value", arg: 2, scope: !1166, file: !108, line: 1150, type: !133)
!1172 = !DILocalVariable(name: "next", scope: !1166, file: !108, line: 1153, type: !119)
!1173 = !DILocalVariable(name: "node", scope: !1166, file: !108, line: 1154, type: !119)
!1174 = !DILocalVariable(name: "key", scope: !1166, file: !108, line: 1157, type: !124)
!1175 = !DILocalVariable(name: "compare", scope: !1176, file: !108, line: 1182, type: !112)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !108, line: 1180, column: 7)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !108, line: 1179, column: 9)
!1178 = distinct !DILexicalBlock(scope: !1166, file: !108, line: 1169, column: 3)
!1179 = !DILocalVariable(name: "left", scope: !1176, file: !108, line: 1185, type: !119)
!1180 = !DILocalVariable(name: "right", scope: !1176, file: !108, line: 1186, type: !119)
!1181 = !DILocation(line: 0, scope: !1166)
!1182 = !DILocation(line: 1161, column: 19, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1166, file: !108, line: 1161, column: 7)
!1184 = !DILocation(line: 1161, column: 25, scope: !1183)
!1185 = !DILocation(line: 1161, column: 7, scope: !1166)
!1186 = !DILocation(line: 1162, column: 12, scope: !1183)
!1187 = !DILocation(line: 1162, column: 5, scope: !1183)
!1188 = !DILocation(line: 1164, column: 19, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1166, file: !108, line: 1164, column: 7)
!1190 = !DILocation(line: 1164, column: 24, scope: !1189)
!1191 = !DILocation(line: 1164, column: 7, scope: !1166)
!1192 = !DILocation(line: 1166, column: 33, scope: !1166)
!1193 = !DILocation(line: 1166, column: 3, scope: !1166)
!1194 = !DILocation(line: 1167, column: 21, scope: !1166)
!1195 = !DILocation(line: 0, scope: !545, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 1167, column: 21, scope: !1166)
!1197 = !DILocation(line: 337, column: 24, scope: !1198, inlinedAt: !1196)
!1198 = distinct !DILexicalBlock(scope: !545, file: !108, line: 337, column: 7)
!1199 = !DILocation(line: 337, column: 7, scope: !545, inlinedAt: !1196)
!1200 = !DILocation(line: 339, column: 16, scope: !545, inlinedAt: !1196)
!1201 = !DILocation(line: 339, column: 21, scope: !545, inlinedAt: !1196)
!1202 = !DILocation(line: 339, column: 3, scope: !545, inlinedAt: !1196)
!1203 = distinct !{!1203, !1202, !1204, !490, !491}
!1204 = !DILocation(line: 340, column: 16, scope: !545, inlinedAt: !1196)
!1205 = !DILocation(line: 341, column: 16, scope: !545, inlinedAt: !1196)
!1206 = !DILocation(line: 341, column: 3, scope: !545, inlinedAt: !1196)
!1207 = !DILocation(line: 1168, column: 3, scope: !1166)
!1208 = !DILocation(line: 1168, column: 15, scope: !1166)
!1209 = !DILocation(line: 1170, column: 5, scope: !1178)
!1210 = !DILocation(line: 1172, column: 22, scope: !1178)
!1211 = !DILocation(line: 1172, column: 28, scope: !1178)
!1212 = !DILocation(line: 1173, column: 14, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1178, file: !108, line: 1173, column: 9)
!1214 = !DILocation(line: 1173, column: 9, scope: !1178)
!1215 = !DILocation(line: 0, scope: !1178)
!1216 = !DILocation(line: 1175, column: 22, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !108, line: 1174, column: 7)
!1218 = !DILocation(line: 1175, column: 27, scope: !1217)
!1219 = !DILocation(line: 1175, column: 9, scope: !1217)
!1220 = distinct !{!1220, !1219, !1221, !490, !491}
!1221 = !DILocation(line: 1176, column: 22, scope: !1217)
!1222 = !DILocation(line: 1177, column: 33, scope: !1217)
!1223 = !DILocation(line: 1178, column: 7, scope: !1217)
!1224 = !DILocation(line: 1179, column: 27, scope: !1177)
!1225 = !DILocation(line: 1179, column: 33, scope: !1177)
!1226 = !DILocation(line: 1179, column: 9, scope: !1178)
!1227 = distinct !{!1227, !1207, !1228, !490, !491}
!1228 = !DILocation(line: 1228, column: 3, scope: !1166)
!1229 = !DILocation(line: 1191, column: 31, scope: !1176)
!1230 = !DILocation(line: 1192, column: 9, scope: !1176)
!1231 = !DILocation(line: 1193, column: 21, scope: !1176)
!1232 = !DILocation(line: 1193, column: 24, scope: !1176)
!1233 = !DILocation(line: 1194, column: 25, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1176, file: !108, line: 1194, column: 13)
!1235 = !DILocation(line: 1194, column: 33, scope: !1234)
!1236 = !DILocation(line: 0, scope: !1234)
!1237 = !DILocation(line: 1194, column: 13, scope: !1176)
!1238 = !DILocation(line: 1195, column: 19, scope: !1234)
!1239 = !DILocation(line: 0, scope: !1176)
!1240 = !DILocation(line: 1195, column: 11, scope: !1234)
!1241 = !DILocation(line: 1197, column: 42, scope: !1234)
!1242 = !DILocation(line: 1197, column: 19, scope: !1234)
!1243 = !DILocation(line: 1198, column: 37, scope: !1234)
!1244 = !DILocation(line: 1198, column: 14, scope: !1234)
!1245 = !DILocation(line: 1199, column: 21, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1176, file: !108, line: 1199, column: 13)
!1247 = !DILocation(line: 1199, column: 13, scope: !1176)
!1248 = !DILocation(line: 1204, column: 26, scope: !1176)
!1249 = !DILocation(line: 1204, column: 32, scope: !1176)
!1250 = !DILocation(line: 1205, column: 33, scope: !1176)
!1251 = !DILocation(line: 1206, column: 26, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1176, file: !108, line: 1206, column: 13)
!1253 = !DILocation(line: 1206, column: 43, scope: !1252)
!1254 = !DILocation(line: 1206, column: 72, scope: !1252)
!1255 = !DILocation(line: 1207, column: 32, scope: !1252)
!1256 = !DILocation(line: 1207, column: 38, scope: !1252)
!1257 = !DILocation(line: 1206, column: 13, scope: !1176)
!1258 = !DILocation(line: 1208, column: 35, scope: !1252)
!1259 = !DILocation(line: 1208, column: 23, scope: !1252)
!1260 = !DILocation(line: 1208, column: 29, scope: !1252)
!1261 = !DILocation(line: 1208, column: 34, scope: !1252)
!1262 = !DILocation(line: 1208, column: 11, scope: !1252)
!1263 = !DILocation(line: 1210, column: 74, scope: !1176)
!1264 = !DILocation(line: 1210, column: 39, scope: !1176)
!1265 = !DILocation(line: 1211, column: 21, scope: !1176)
!1266 = !DILocation(line: 1211, column: 26, scope: !1176)
!1267 = !DILocation(line: 1212, column: 18, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1176, file: !108, line: 1212, column: 13)
!1269 = !DILocation(line: 1212, column: 13, scope: !1176)
!1270 = !DILocation(line: 1218, column: 25, scope: !1176)
!1271 = !DILocation(line: 1219, column: 19, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1176, file: !108, line: 1219, column: 13)
!1273 = !DILocation(line: 1219, column: 13, scope: !1176)
!1274 = !DILocation(line: 1221, column: 26, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1272, file: !108, line: 1220, column: 11)
!1276 = !DILocation(line: 1221, column: 32, scope: !1275)
!1277 = !DILocation(line: 1221, column: 13, scope: !1275)
!1278 = distinct !{!1278, !1277, !1279, !490, !491}
!1279 = !DILocation(line: 1222, column: 26, scope: !1275)
!1280 = !DILocation(line: 1224, column: 11, scope: !1275)
!1281 = !DILocation(line: 1231, column: 1, scope: !1166)
!1282 = distinct !DISubprogram(name: "RemoveNodeFromSplayTree", scope: !108, file: !108, line: 1258, type: !1167, scopeLine: 1260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289}
!1284 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !1282, file: !108, line: 1258, type: !113)
!1285 = !DILocalVariable(name: "key", arg: 2, scope: !1282, file: !108, line: 1259, type: !133)
!1286 = !DILocalVariable(name: "compare", scope: !1282, file: !108, line: 1262, type: !112)
!1287 = !DILocalVariable(name: "left", scope: !1282, file: !108, line: 1265, type: !119)
!1288 = !DILocalVariable(name: "right", scope: !1282, file: !108, line: 1266, type: !119)
!1289 = !DILocalVariable(name: "value", scope: !1282, file: !108, line: 1269, type: !124)
!1290 = !DILocation(line: 0, scope: !1282)
!1291 = !DILocation(line: 1273, column: 19, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1282, file: !108, line: 1273, column: 7)
!1293 = !DILocation(line: 1273, column: 25, scope: !1292)
!1294 = !DILocation(line: 1273, column: 7, scope: !1282)
!1295 = !DILocation(line: 1274, column: 12, scope: !1292)
!1296 = !DILocation(line: 1274, column: 5, scope: !1292)
!1297 = !DILocation(line: 1276, column: 19, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1282, file: !108, line: 1276, column: 7)
!1299 = !DILocation(line: 1276, column: 24, scope: !1298)
!1300 = !DILocation(line: 1276, column: 7, scope: !1282)
!1301 = !DILocation(line: 1278, column: 33, scope: !1282)
!1302 = !DILocation(line: 1278, column: 3, scope: !1282)
!1303 = !DILocation(line: 1279, column: 3, scope: !1282)
!1304 = !DILocation(line: 1280, column: 15, scope: !1282)
!1305 = !DILocation(line: 1280, column: 18, scope: !1282)
!1306 = !DILocation(line: 1281, column: 19, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1282, file: !108, line: 1281, column: 7)
!1308 = !DILocation(line: 1281, column: 27, scope: !1307)
!1309 = !DILocation(line: 0, scope: !1307)
!1310 = !DILocation(line: 1281, column: 7, scope: !1282)
!1311 = !DILocation(line: 1282, column: 13, scope: !1307)
!1312 = !DILocation(line: 1282, column: 5, scope: !1307)
!1313 = !DILocation(line: 1284, column: 36, scope: !1307)
!1314 = !DILocation(line: 1284, column: 13, scope: !1307)
!1315 = !DILocation(line: 1285, column: 31, scope: !1307)
!1316 = !DILocation(line: 1285, column: 8, scope: !1307)
!1317 = !DILocation(line: 1286, column: 15, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1282, file: !108, line: 1286, column: 7)
!1319 = !DILocation(line: 1286, column: 7, scope: !1282)
!1320 = !DILocation(line: 1291, column: 20, scope: !1282)
!1321 = !DILocation(line: 1291, column: 26, scope: !1282)
!1322 = !DILocation(line: 1292, column: 27, scope: !1282)
!1323 = !DILocation(line: 1293, column: 27, scope: !1282)
!1324 = !DILocation(line: 1294, column: 20, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1282, file: !108, line: 1294, column: 7)
!1326 = !DILocation(line: 1294, column: 35, scope: !1325)
!1327 = !DILocation(line: 1294, column: 64, scope: !1325)
!1328 = !DILocation(line: 1295, column: 26, scope: !1325)
!1329 = !DILocation(line: 1295, column: 30, scope: !1325)
!1330 = !DILocation(line: 1294, column: 7, scope: !1282)
!1331 = !DILocation(line: 1296, column: 27, scope: !1325)
!1332 = !DILocation(line: 1296, column: 17, scope: !1325)
!1333 = !DILocation(line: 1296, column: 26, scope: !1325)
!1334 = !DILocation(line: 1296, column: 5, scope: !1325)
!1335 = !DILocation(line: 1297, column: 68, scope: !1282)
!1336 = !DILocation(line: 1297, column: 33, scope: !1282)
!1337 = !DILocation(line: 1298, column: 15, scope: !1282)
!1338 = !DILocation(line: 1298, column: 20, scope: !1282)
!1339 = !DILocation(line: 1299, column: 12, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1282, file: !108, line: 1299, column: 7)
!1341 = !DILocation(line: 1299, column: 7, scope: !1282)
!1342 = !DILocation(line: 1305, column: 19, scope: !1282)
!1343 = !DILocation(line: 1306, column: 13, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1282, file: !108, line: 1306, column: 7)
!1345 = !DILocation(line: 1306, column: 7, scope: !1282)
!1346 = !DILocation(line: 1308, column: 20, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1344, file: !108, line: 1307, column: 5)
!1348 = !DILocation(line: 1308, column: 26, scope: !1347)
!1349 = !DILocation(line: 1308, column: 7, scope: !1347)
!1350 = distinct !{!1350, !1349, !1351, !490, !491}
!1351 = !DILocation(line: 1309, column: 20, scope: !1347)
!1352 = !DILocation(line: 1311, column: 5, scope: !1347)
!1353 = !DILocation(line: 1314, column: 1, scope: !1282)
!1354 = distinct !DISubprogram(name: "ResetSplayTree", scope: !108, file: !108, line: 1339, type: !397, scopeLine: 1340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1355)
!1355 = !{!1356, !1357, !1358, !1359}
!1356 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !1354, file: !108, line: 1339, type: !113)
!1357 = !DILocalVariable(name: "node", scope: !1354, file: !108, line: 1342, type: !119)
!1358 = !DILocalVariable(name: "active", scope: !1354, file: !108, line: 1345, type: !119)
!1359 = !DILocalVariable(name: "pend", scope: !1354, file: !108, line: 1346, type: !119)
!1360 = !DILocation(line: 0, scope: !1354)
!1361 = !DILocation(line: 1350, column: 19, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1354, file: !108, line: 1350, column: 7)
!1363 = !DILocation(line: 1350, column: 25, scope: !1362)
!1364 = !DILocation(line: 1350, column: 7, scope: !1354)
!1365 = !DILocation(line: 1351, column: 12, scope: !1362)
!1366 = !DILocation(line: 1351, column: 5, scope: !1362)
!1367 = !DILocation(line: 1352, column: 33, scope: !1354)
!1368 = !DILocation(line: 1352, column: 3, scope: !1354)
!1369 = !DILocation(line: 1353, column: 19, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1354, file: !108, line: 1353, column: 7)
!1371 = !DILocation(line: 1353, column: 24, scope: !1370)
!1372 = !DILocation(line: 1353, column: 7, scope: !1354)
!1373 = !DILocation(line: 1355, column: 24, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !108, line: 1355, column: 11)
!1375 = distinct !DILexicalBlock(scope: !1370, file: !108, line: 1354, column: 5)
!1376 = !DILocation(line: 1355, column: 41, scope: !1374)
!1377 = !DILocation(line: 1355, column: 70, scope: !1374)
!1378 = !DILocation(line: 1356, column: 30, scope: !1374)
!1379 = !DILocation(line: 1356, column: 36, scope: !1374)
!1380 = !DILocation(line: 1355, column: 11, scope: !1375)
!1381 = !DILocation(line: 1357, column: 33, scope: !1374)
!1382 = !DILocation(line: 1357, column: 21, scope: !1374)
!1383 = !DILocation(line: 1357, column: 27, scope: !1374)
!1384 = !DILocation(line: 1357, column: 32, scope: !1374)
!1385 = !DILocation(line: 1357, column: 9, scope: !1374)
!1386 = !DILocation(line: 1359, column: 24, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1375, file: !108, line: 1359, column: 11)
!1388 = !DILocation(line: 1359, column: 39, scope: !1387)
!1389 = !DILocation(line: 1359, column: 68, scope: !1387)
!1390 = !DILocation(line: 1360, column: 30, scope: !1387)
!1391 = !DILocation(line: 1360, column: 34, scope: !1387)
!1392 = !DILocation(line: 1359, column: 11, scope: !1375)
!1393 = !DILocation(line: 1361, column: 31, scope: !1387)
!1394 = !DILocation(line: 1361, column: 21, scope: !1387)
!1395 = !DILocation(line: 1361, column: 30, scope: !1387)
!1396 = !DILocation(line: 1361, column: 9, scope: !1387)
!1397 = !DILocation(line: 1362, column: 19, scope: !1375)
!1398 = !DILocation(line: 1362, column: 28, scope: !1375)
!1399 = !DILocation(line: 1363, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1375, file: !108, line: 1363, column: 7)
!1401 = !DILocation(line: 1363, column: 40, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1400, file: !108, line: 1363, column: 7)
!1403 = !DILocation(line: 1368, column: 23, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !108, line: 1368, column: 15)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !108, line: 1367, column: 9)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !108, line: 1366, column: 9)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !108, line: 1366, column: 9)
!1408 = distinct !DILexicalBlock(scope: !1402, file: !108, line: 1364, column: 7)
!1409 = !DILocation(line: 1368, column: 28, scope: !1404)
!1410 = !DILocation(line: 1368, column: 15, scope: !1405)
!1411 = !DILocation(line: 1370, column: 32, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !108, line: 1370, column: 19)
!1413 = distinct !DILexicalBlock(scope: !1404, file: !108, line: 1369, column: 13)
!1414 = !DILocation(line: 1370, column: 49, scope: !1412)
!1415 = !DILocation(line: 1370, column: 78, scope: !1412)
!1416 = !DILocation(line: 1371, column: 34, scope: !1412)
!1417 = !DILocation(line: 1371, column: 40, scope: !1412)
!1418 = !DILocation(line: 1370, column: 19, scope: !1413)
!1419 = !DILocation(line: 1372, column: 37, scope: !1412)
!1420 = !DILocation(line: 1372, column: 25, scope: !1412)
!1421 = !DILocation(line: 1372, column: 31, scope: !1412)
!1422 = !DILocation(line: 1372, column: 36, scope: !1412)
!1423 = !DILocation(line: 1372, column: 17, scope: !1412)
!1424 = !DILocation(line: 1374, column: 32, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1413, file: !108, line: 1374, column: 19)
!1426 = !DILocation(line: 1374, column: 47, scope: !1425)
!1427 = !DILocation(line: 1374, column: 76, scope: !1425)
!1428 = !DILocation(line: 1375, column: 34, scope: !1425)
!1429 = !DILocation(line: 1375, column: 38, scope: !1425)
!1430 = !DILocation(line: 1374, column: 19, scope: !1413)
!1431 = !DILocation(line: 1376, column: 35, scope: !1425)
!1432 = !DILocation(line: 1376, column: 25, scope: !1425)
!1433 = !DILocation(line: 1376, column: 34, scope: !1425)
!1434 = !DILocation(line: 1376, column: 17, scope: !1425)
!1435 = !DILocation(line: 1377, column: 23, scope: !1413)
!1436 = !DILocation(line: 1377, column: 32, scope: !1413)
!1437 = !DILocation(line: 1379, column: 13, scope: !1413)
!1438 = !DILocation(line: 0, scope: !1407)
!1439 = !DILocation(line: 1380, column: 23, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1405, file: !108, line: 1380, column: 15)
!1441 = !DILocation(line: 1380, column: 29, scope: !1440)
!1442 = !DILocation(line: 1380, column: 15, scope: !1405)
!1443 = !DILocation(line: 1382, column: 32, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !108, line: 1382, column: 19)
!1445 = distinct !DILexicalBlock(scope: !1440, file: !108, line: 1381, column: 13)
!1446 = !DILocation(line: 1382, column: 49, scope: !1444)
!1447 = !DILocation(line: 1382, column: 78, scope: !1444)
!1448 = !DILocation(line: 1383, column: 35, scope: !1444)
!1449 = !DILocation(line: 1383, column: 41, scope: !1444)
!1450 = !DILocation(line: 1382, column: 19, scope: !1445)
!1451 = !DILocation(line: 1384, column: 38, scope: !1444)
!1452 = !DILocation(line: 1384, column: 25, scope: !1444)
!1453 = !DILocation(line: 1384, column: 32, scope: !1444)
!1454 = !DILocation(line: 1384, column: 37, scope: !1444)
!1455 = !DILocation(line: 1384, column: 17, scope: !1444)
!1456 = !DILocation(line: 1386, column: 32, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1445, file: !108, line: 1386, column: 19)
!1458 = !DILocation(line: 1386, column: 47, scope: !1457)
!1459 = !DILocation(line: 1386, column: 76, scope: !1457)
!1460 = !DILocation(line: 1387, column: 35, scope: !1457)
!1461 = !DILocation(line: 1387, column: 39, scope: !1457)
!1462 = !DILocation(line: 1386, column: 19, scope: !1445)
!1463 = !DILocation(line: 1388, column: 36, scope: !1457)
!1464 = !DILocation(line: 1388, column: 25, scope: !1457)
!1465 = !DILocation(line: 1388, column: 35, scope: !1457)
!1466 = !DILocation(line: 1388, column: 17, scope: !1457)
!1467 = !DILocation(line: 1390, column: 23, scope: !1445)
!1468 = !DILocation(line: 1390, column: 33, scope: !1445)
!1469 = !DILocation(line: 1392, column: 13, scope: !1445)
!1470 = !DILocation(line: 0, scope: !1405)
!1471 = !DILocation(line: 1394, column: 37, scope: !1405)
!1472 = !DILocation(line: 1395, column: 29, scope: !1405)
!1473 = !DILocation(line: 1366, column: 45, scope: !1406)
!1474 = !DILocation(line: 1366, column: 9, scope: !1407)
!1475 = distinct !{!1475, !1399, !1476, !490, !491}
!1476 = !DILocation(line: 1397, column: 7, scope: !1400)
!1477 = !DILocation(line: 1399, column: 19, scope: !1354)
!1478 = !DILocation(line: 1400, column: 15, scope: !1354)
!1479 = !DILocation(line: 1403, column: 15, scope: !1354)
!1480 = !DILocation(line: 1403, column: 22, scope: !1354)
!1481 = !DILocation(line: 1400, column: 18, scope: !1354)
!1482 = !DILocation(line: 1404, column: 35, scope: !1354)
!1483 = !DILocation(line: 1404, column: 3, scope: !1354)
!1484 = !DILocation(line: 1405, column: 1, scope: !1354)
!1485 = distinct !DISubprogram(name: "ResetSplayTreeIterator", scope: !108, file: !108, line: 1431, type: !397, scopeLine: 1432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1486)
!1486 = !{!1487}
!1487 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !1485, file: !108, line: 1431, type: !113)
!1488 = !DILocation(line: 0, scope: !1485)
!1489 = !DILocation(line: 1435, column: 19, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1485, file: !108, line: 1435, column: 7)
!1491 = !DILocation(line: 1435, column: 25, scope: !1490)
!1492 = !DILocation(line: 1435, column: 7, scope: !1485)
!1493 = !DILocation(line: 1436, column: 12, scope: !1490)
!1494 = !DILocation(line: 1436, column: 5, scope: !1490)
!1495 = !DILocation(line: 1437, column: 33, scope: !1485)
!1496 = !DILocation(line: 1437, column: 3, scope: !1485)
!1497 = !DILocation(line: 1438, column: 20, scope: !1485)
!1498 = !DILocation(line: 0, scope: !545, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 1438, column: 20, scope: !1485)
!1500 = !DILocation(line: 337, column: 24, scope: !1198, inlinedAt: !1499)
!1501 = !DILocation(line: 337, column: 7, scope: !545, inlinedAt: !1499)
!1502 = !DILocation(line: 339, column: 16, scope: !545, inlinedAt: !1499)
!1503 = !DILocation(line: 339, column: 21, scope: !545, inlinedAt: !1499)
!1504 = !DILocation(line: 339, column: 3, scope: !545, inlinedAt: !1499)
!1505 = distinct !{!1505, !1504, !1506, !490, !491}
!1506 = !DILocation(line: 340, column: 16, scope: !545, inlinedAt: !1499)
!1507 = !DILocation(line: 341, column: 16, scope: !545, inlinedAt: !1499)
!1508 = !DILocation(line: 341, column: 3, scope: !545, inlinedAt: !1499)
!1509 = !DILocation(line: 1438, column: 15, scope: !1485)
!1510 = !DILocation(line: 1438, column: 19, scope: !1485)
!1511 = !DILocation(line: 1439, column: 35, scope: !1485)
!1512 = !DILocation(line: 1439, column: 3, scope: !1485)
!1513 = !DILocation(line: 1440, column: 1, scope: !1485)
!1514 = distinct !DISubprogram(name: "Splay", scope: !108, file: !108, line: 1474, type: !1515, scopeLine: 1476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!119, !113, !515, !133, !165, !165, !165}
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527}
!1518 = !DILocalVariable(name: "splay_tree", arg: 1, scope: !1514, file: !108, line: 1474, type: !113)
!1519 = !DILocalVariable(name: "depth", arg: 2, scope: !1514, file: !108, line: 1474, type: !515)
!1520 = !DILocalVariable(name: "key", arg: 3, scope: !1514, file: !108, line: 1475, type: !133)
!1521 = !DILocalVariable(name: "node", arg: 4, scope: !1514, file: !108, line: 1475, type: !165)
!1522 = !DILocalVariable(name: "parent", arg: 5, scope: !1514, file: !108, line: 1475, type: !165)
!1523 = !DILocalVariable(name: "grandparent", arg: 6, scope: !1514, file: !108, line: 1475, type: !165)
!1524 = !DILocalVariable(name: "compare", scope: !1514, file: !108, line: 1478, type: !112)
!1525 = !DILocalVariable(name: "next", scope: !1514, file: !108, line: 1481, type: !165)
!1526 = !DILocalVariable(name: "n", scope: !1514, file: !108, line: 1484, type: !119)
!1527 = !DILocalVariable(name: "p", scope: !1514, file: !108, line: 1485, type: !119)
!1528 = !DILocation(line: 0, scope: !1514)
!1529 = !DILocation(line: 1487, column: 6, scope: !1514)
!1530 = !DILocation(line: 1488, column: 9, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1514, file: !108, line: 1488, column: 7)
!1532 = !DILocation(line: 1488, column: 7, scope: !1514)
!1533 = !DILocation(line: 1489, column: 12, scope: !1531)
!1534 = !DILocation(line: 1489, column: 5, scope: !1531)
!1535 = !DILocation(line: 1490, column: 19, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1514, file: !108, line: 1490, column: 7)
!1537 = !DILocation(line: 1490, column: 27, scope: !1536)
!1538 = !DILocation(line: 0, scope: !1536)
!1539 = !DILocation(line: 1490, column: 7, scope: !1514)
!1540 = !DILocation(line: 1493, column: 21, scope: !1536)
!1541 = !DILocation(line: 1493, column: 13, scope: !1536)
!1542 = !DILocation(line: 1493, column: 43, scope: !1536)
!1543 = !DILocation(line: 1493, column: 35, scope: !1536)
!1544 = !DILocation(line: 1495, column: 7, scope: !1514)
!1545 = !DILocation(line: 1491, column: 13, scope: !1536)
!1546 = !DILocation(line: 1495, column: 15, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1514, file: !108, line: 1495, column: 7)
!1548 = !DILocation(line: 1496, column: 15, scope: !1547)
!1549 = !DILocation(line: 1496, column: 5, scope: !1547)
!1550 = !DILocation(line: 1498, column: 17, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !108, line: 1498, column: 9)
!1552 = !DILocation(line: 1498, column: 9, scope: !1547)
!1553 = !DILocation(line: 1502, column: 17, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !108, line: 1502, column: 11)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !108, line: 1501, column: 5)
!1556 = distinct !DILexicalBlock(scope: !1514, file: !108, line: 1500, column: 7)
!1557 = !DILocation(line: 1502, column: 11, scope: !1555)
!1558 = !DILocation(line: 1504, column: 23, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1554, file: !108, line: 1503, column: 9)
!1560 = !DILocation(line: 1504, column: 30, scope: !1559)
!1561 = !DILocation(line: 1505, column: 11, scope: !1559)
!1562 = !DILocation(line: 1507, column: 31, scope: !1555)
!1563 = !DILocation(line: 1507, column: 9, scope: !1555)
!1564 = !DILocation(line: 1508, column: 17, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1555, file: !108, line: 1508, column: 11)
!1566 = !DILocation(line: 1508, column: 14, scope: !1565)
!1567 = !DILocation(line: 1508, column: 24, scope: !1565)
!1568 = !DILocation(line: 1508, column: 40, scope: !1565)
!1569 = !DILocation(line: 1508, column: 48, scope: !1565)
!1570 = !DILocation(line: 1508, column: 11, scope: !1555)
!1571 = !DILocation(line: 1511, column: 14, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1514, file: !108, line: 1511, column: 7)
!1573 = !DILocation(line: 1511, column: 7, scope: !1514)
!1574 = !DILocation(line: 1513, column: 19, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1514, file: !108, line: 1513, column: 7)
!1576 = !DILocation(line: 1513, column: 7, scope: !1514)
!1577 = !DILocation(line: 1515, column: 11, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1575, file: !108, line: 1514, column: 5)
!1579 = !DILocation(line: 1517, column: 20, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !108, line: 1516, column: 9)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !108, line: 1515, column: 11)
!1582 = !DILocation(line: 1519, column: 9, scope: !1580)
!1583 = !DILocation(line: 1522, column: 20, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1581, file: !108, line: 1521, column: 9)
!1585 = !DILocation(line: 0, scope: !1581)
!1586 = !DILocation(line: 1525, column: 14, scope: !1578)
!1587 = !DILocation(line: 1526, column: 7, scope: !1578)
!1588 = !DILocation(line: 1528, column: 30, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1514, file: !108, line: 1528, column: 7)
!1590 = !DILocation(line: 1528, column: 46, scope: !1589)
!1591 = !DILocation(line: 1528, column: 61, scope: !1589)
!1592 = !DILocation(line: 1528, column: 42, scope: !1589)
!1593 = !DILocation(line: 1528, column: 7, scope: !1514)
!1594 = !DILocation(line: 1531, column: 31, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1589, file: !108, line: 1529, column: 5)
!1596 = !DILocation(line: 1531, column: 27, scope: !1595)
!1597 = !DILocation(line: 1532, column: 17, scope: !1595)
!1598 = !DILocation(line: 1532, column: 15, scope: !1595)
!1599 = !DILocation(line: 1533, column: 18, scope: !1595)
!1600 = !DILocation(line: 1533, column: 14, scope: !1595)
!1601 = !DILocation(line: 1534, column: 15, scope: !1595)
!1602 = !DILocation(line: 1535, column: 19, scope: !1595)
!1603 = !DILocation(line: 1536, column: 7, scope: !1595)
!1604 = !DILocation(line: 1538, column: 24, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1514, file: !108, line: 1538, column: 7)
!1606 = !DILocation(line: 1538, column: 10, scope: !1605)
!1607 = !DILocation(line: 1538, column: 31, scope: !1605)
!1608 = !DILocation(line: 1538, column: 47, scope: !1605)
!1609 = !DILocation(line: 1538, column: 62, scope: !1605)
!1610 = !DILocation(line: 1538, column: 43, scope: !1605)
!1611 = !DILocation(line: 1538, column: 7, scope: !1514)
!1612 = !DILocation(line: 1541, column: 28, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1605, file: !108, line: 1539, column: 5)
!1614 = !DILocation(line: 1542, column: 16, scope: !1613)
!1615 = !DILocation(line: 1542, column: 14, scope: !1613)
!1616 = !DILocation(line: 1543, column: 19, scope: !1613)
!1617 = !DILocation(line: 1543, column: 15, scope: !1613)
!1618 = !DILocation(line: 1544, column: 14, scope: !1613)
!1619 = !DILocation(line: 1545, column: 19, scope: !1613)
!1620 = !DILocation(line: 1546, column: 7, scope: !1613)
!1621 = !DILocation(line: 1548, column: 7, scope: !1514)
!1622 = !DILocation(line: 1550, column: 26, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !108, line: 1549, column: 5)
!1624 = distinct !DILexicalBlock(scope: !1514, file: !108, line: 1548, column: 7)
!1625 = !DILocation(line: 1550, column: 22, scope: !1623)
!1626 = !DILocation(line: 1551, column: 17, scope: !1623)
!1627 = !DILocation(line: 1551, column: 15, scope: !1623)
!1628 = !DILocation(line: 1552, column: 32, scope: !1623)
!1629 = !DILocation(line: 1552, column: 8, scope: !1623)
!1630 = !DILocation(line: 1552, column: 23, scope: !1623)
!1631 = !DILocation(line: 1552, column: 28, scope: !1623)
!1632 = !DILocation(line: 1553, column: 16, scope: !1623)
!1633 = !DILocation(line: 1553, column: 14, scope: !1623)
!1634 = !DILocation(line: 1554, column: 19, scope: !1623)
!1635 = !DILocation(line: 1555, column: 7, scope: !1623)
!1636 = !DILocation(line: 1557, column: 23, scope: !1514)
!1637 = !DILocation(line: 1557, column: 19, scope: !1514)
!1638 = !DILocation(line: 1558, column: 12, scope: !1514)
!1639 = !DILocation(line: 1558, column: 10, scope: !1514)
!1640 = !DILocation(line: 1559, column: 27, scope: !1514)
!1641 = !DILocation(line: 1559, column: 4, scope: !1514)
!1642 = !DILocation(line: 1559, column: 19, scope: !1514)
!1643 = !DILocation(line: 1559, column: 23, scope: !1514)
!1644 = !DILocation(line: 1560, column: 13, scope: !1514)
!1645 = !DILocation(line: 1560, column: 11, scope: !1514)
!1646 = !DILocation(line: 1561, column: 15, scope: !1514)
!1647 = !DILocation(line: 1562, column: 3, scope: !1514)
!1648 = !DILocation(line: 1563, column: 1, scope: !1514)
!1649 = !DISubprogram(name: "AcquireQuantumMemory", scope: !512, file: !512, line: 42, type: !1650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !351)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!124, !515, !515}
!1652 = distinct !DISubprogram(name: "LinkSplayTreeNodes", scope: !108, file: !108, line: 245, type: !1653, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1655)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!119, !165, !515, !515}
!1655 = !{!1656, !1657, !1658, !1659, !1660}
!1656 = !DILocalVariable(name: "nodes", arg: 1, scope: !1652, file: !108, line: 245, type: !165)
!1657 = !DILocalVariable(name: "low", arg: 2, scope: !1652, file: !108, line: 245, type: !515)
!1658 = !DILocalVariable(name: "high", arg: 3, scope: !1652, file: !108, line: 246, type: !515)
!1659 = !DILocalVariable(name: "node", scope: !1652, file: !108, line: 249, type: !119)
!1660 = !DILocalVariable(name: "bisect", scope: !1652, file: !108, line: 252, type: !145)
!1661 = !DILocation(line: 0, scope: !1652)
!1662 = !DILocation(line: 254, column: 19, scope: !1652)
!1663 = !DILocation(line: 254, column: 24, scope: !1652)
!1664 = !DILocation(line: 254, column: 13, scope: !1652)
!1665 = !DILocation(line: 255, column: 8, scope: !1652)
!1666 = !DILocation(line: 256, column: 11, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1652, file: !108, line: 256, column: 7)
!1668 = !DILocation(line: 256, column: 15, scope: !1667)
!1669 = !DILocation(line: 256, column: 7, scope: !1652)
!1670 = !DILocation(line: 259, column: 51, scope: !1667)
!1671 = !DILocation(line: 259, column: 16, scope: !1667)
!1672 = !DILocation(line: 0, scope: !1667)
!1673 = !DILocation(line: 257, column: 11, scope: !1667)
!1674 = !DILocation(line: 257, column: 15, scope: !1667)
!1675 = !DILocation(line: 260, column: 14, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1652, file: !108, line: 260, column: 7)
!1677 = !DILocation(line: 260, column: 18, scope: !1676)
!1678 = !DILocation(line: 260, column: 7, scope: !1652)
!1679 = !DILocation(line: 0, scope: !1676)
!1680 = !DILocation(line: 261, column: 11, scope: !1676)
!1681 = !DILocation(line: 261, column: 16, scope: !1676)
!1682 = !DILocation(line: 264, column: 3, scope: !1652)
!1683 = !DILocation(line: 263, column: 17, scope: !1676)
