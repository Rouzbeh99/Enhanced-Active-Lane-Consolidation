; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/hashmap.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/hashmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._LinkedListInfo = type { i64, i64, ptr, ptr, ptr, ptr, i64 }
%struct._ElementInfo = type { ptr, ptr }
%struct._HashmapInfo = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, ptr, ptr, i64 }
%struct._EntryInfo = type { i64, ptr, ptr }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }

@.str = private unnamed_addr constant [86 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/hashmap.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@__const.IncreaseHashmapCapacity.capacities = private unnamed_addr constant [20 x i64] [i64 17, i64 31, i64 61, i64 131, i64 257, i64 509, i64 1021, i64 2053, i64 4099, i64 8191, i64 16381, i64 32771, i64 65537, i64 131071, i64 262147, i64 524287, i64 1048573, i64 2097143, i64 4194301, i64 8388617], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @AppendValueToLinkedList(ptr nocapture noundef %list_info, ptr noundef %value) local_unnamed_addr #0 !dbg !181 {
entry:
  call void @llvm.dbg.value(metadata ptr %list_info, metadata !185, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata ptr %value, metadata !186, metadata !DIExpression()), !dbg !188
  %elements = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 1, !dbg !189
  %0 = load i64, ptr %elements, align 8, !dbg !189, !tbaa !191
  %1 = load i64, ptr %list_info, align 8, !dbg !197, !tbaa !198
  %cmp = icmp eq i64 %0, %1, !dbg !199
  br i1 %cmp, label %cleanup, label %if.end, !dbg !200

if.end:                                           ; preds = %entry
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 16) #11, !dbg !201
  call void @llvm.dbg.value(metadata ptr %call, metadata !187, metadata !DIExpression()), !dbg !188
  %cmp1 = icmp eq ptr %call, null, !dbg !202
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !204

if.end3:                                          ; preds = %if.end
  store ptr %value, ptr %call, align 8, !dbg !205, !tbaa !206
  %next5 = getelementptr inbounds %struct._ElementInfo, ptr %call, i64 0, i32 1, !dbg !208
  store ptr null, ptr %next5, align 8, !dbg !209, !tbaa !210
  %semaphore = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 5, !dbg !211
  %2 = load ptr, ptr %semaphore, align 8, !dbg !211, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %2) #12, !dbg !213
  %next6 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 4, !dbg !214
  %3 = load ptr, ptr %next6, align 8, !dbg !214, !tbaa !216
  %cmp7 = icmp eq ptr %3, null, !dbg !217
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !218

if.then8:                                         ; preds = %if.end3
  store ptr %call, ptr %next6, align 8, !dbg !219, !tbaa !216
  br label %if.end10, !dbg !220

if.end10:                                         ; preds = %if.then8, %if.end3
  %4 = load i64, ptr %elements, align 8, !dbg !221, !tbaa !191
  %cmp12 = icmp eq i64 %4, 0, !dbg !223
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !224

if.then13:                                        ; preds = %if.end10
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 2, !dbg !225
  br label %if.end15, !dbg !226

if.else:                                          ; preds = %if.end10
  %tail = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 3, !dbg !227
  %5 = load ptr, ptr %tail, align 8, !dbg !227, !tbaa !228
  %next14 = getelementptr inbounds %struct._ElementInfo, ptr %5, i64 0, i32 1, !dbg !229
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  %next14.sink = phi ptr [ %next14, %if.else ], [ %head, %if.then13 ]
  store ptr %call, ptr %next14.sink, align 8, !dbg !230, !tbaa !231
  %tail16 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 3, !dbg !232
  store ptr %call, ptr %tail16, align 8, !dbg !233, !tbaa !228
  %inc = add i64 %4, 1, !dbg !234
  store i64 %inc, ptr %elements, align 8, !dbg !234, !tbaa !191
  %6 = load ptr, ptr %semaphore, align 8, !dbg !235, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %6) #12, !dbg !236
  br label %cleanup, !dbg !237

cleanup:                                          ; preds = %if.end, %entry, %if.end15
  %retval.0 = phi i32 [ 1, %if.end15 ], [ 0, %entry ], [ 0, %if.end ], !dbg !188
  ret i32 %retval.0, !dbg !238
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: allocsize(0)
declare !dbg !239 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

declare !dbg !245 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !248 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ClearLinkedList(ptr nocapture noundef %list_info, ptr noundef readonly %relinquish_value) local_unnamed_addr #0 !dbg !249 {
entry:
  call void @llvm.dbg.value(metadata ptr %list_info, metadata !253, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata ptr %relinquish_value, metadata !254, metadata !DIExpression()), !dbg !257
  %semaphore = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 5, !dbg !258
  %0 = load ptr, ptr %semaphore, align 8, !dbg !258, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %0) #12, !dbg !259
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 2, !dbg !260
  %1 = load ptr, ptr %head, align 8, !dbg !260, !tbaa !261
  call void @llvm.dbg.value(metadata ptr %1, metadata !256, metadata !DIExpression()), !dbg !257
  %cmp.not19 = icmp eq ptr %1, null, !dbg !262
  br i1 %cmp.not19, label %while.end, label %while.body.lr.ph, !dbg !263

while.body.lr.ph:                                 ; preds = %entry
  %cmp1.not = icmp eq ptr %relinquish_value, null
  br i1 %cmp1.not, label %while.body.us, label %while.body, !dbg !264

while.body.us:                                    ; preds = %while.body.lr.ph, %while.body.us
  %next.020.us = phi ptr [ %2, %while.body.us ], [ %1, %while.body.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %next.020.us, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata ptr %next.020.us, metadata !255, metadata !DIExpression()), !dbg !257
  %next3.us = getelementptr inbounds %struct._ElementInfo, ptr %next.020.us, i64 0, i32 1, !dbg !266
  %2 = load ptr, ptr %next3.us, align 8, !dbg !266, !tbaa !210
  call void @llvm.dbg.value(metadata ptr %2, metadata !256, metadata !DIExpression()), !dbg !257
  %call4.us = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %next.020.us) #12, !dbg !267
  call void @llvm.dbg.value(metadata ptr %call4.us, metadata !255, metadata !DIExpression()), !dbg !257
  %cmp.not.us = icmp eq ptr %2, null, !dbg !262
  br i1 %cmp.not.us, label %while.end, label %while.body.us, !dbg !263, !llvm.loop !268

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %next.020 = phi ptr [ %4, %while.body ], [ %1, %while.body.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %next.020, metadata !256, metadata !DIExpression()), !dbg !257
  %3 = load ptr, ptr %next.020, align 8, !dbg !272, !tbaa !206
  %call = tail call ptr %relinquish_value(ptr noundef %3) #12, !dbg !274
  store ptr %call, ptr %next.020, align 8, !dbg !275, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %next.020, metadata !255, metadata !DIExpression()), !dbg !257
  %next3 = getelementptr inbounds %struct._ElementInfo, ptr %next.020, i64 0, i32 1, !dbg !266
  %4 = load ptr, ptr %next3, align 8, !dbg !266, !tbaa !210
  call void @llvm.dbg.value(metadata ptr %4, metadata !256, metadata !DIExpression()), !dbg !257
  %call4 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %next.020) #12, !dbg !267
  call void @llvm.dbg.value(metadata ptr %call4, metadata !255, metadata !DIExpression()), !dbg !257
  %cmp.not = icmp eq ptr %4, null, !dbg !262
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !263, !llvm.loop !268

while.end:                                        ; preds = %while.body, %while.body.us, %entry
  %elements = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 1, !dbg !276
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %elements, i8 0, i64 32, i1 false), !dbg !277
  %5 = load ptr, ptr %semaphore, align 8, !dbg !278, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %5) #12, !dbg !279
  ret void, !dbg !280
}

declare !dbg !281 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @CompareHashmapString(ptr noundef %target, ptr noundef %source) local_unnamed_addr #0 !dbg !282 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !284, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata ptr %source, metadata !285, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata ptr %target, metadata !286, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata ptr %source, metadata !287, metadata !DIExpression()), !dbg !288
  %call = tail call i32 @LocaleCompare(ptr noundef %target, ptr noundef %source) #12, !dbg !289
  %cmp = icmp eq i32 %call, 0, !dbg !290
  %cond = zext i1 %cmp to i32, !dbg !289
  ret i32 %cond, !dbg !291
}

declare !dbg !292 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @CompareHashmapStringInfo(ptr noundef %target, ptr noundef %source) local_unnamed_addr #0 !dbg !295 {
entry:
  call void @llvm.dbg.value(metadata ptr %target, metadata !297, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata ptr %source, metadata !298, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata ptr %target, metadata !299, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata ptr %source, metadata !300, metadata !DIExpression()), !dbg !301
  %call = tail call i32 @CompareStringInfo(ptr noundef %target, ptr noundef %source) #12, !dbg !302
  %cmp = icmp eq i32 %call, 0, !dbg !303
  %cond = zext i1 %cmp to i32, !dbg !302
  ret i32 %cond, !dbg !304
}

declare !dbg !305 i32 @CompareStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyHashmap(ptr noundef %hashmap_info) local_unnamed_addr #0 !dbg !308 {
entry:
  call void @llvm.dbg.value(metadata ptr %hashmap_info, metadata !312, metadata !DIExpression()), !dbg !316
  %semaphore = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 9, !dbg !317
  %0 = load ptr, ptr %semaphore, align 8, !dbg !317, !tbaa !318
  tail call void @LockSemaphoreInfo(ptr noundef %0) #12, !dbg !320
  call void @llvm.dbg.value(metadata i64 0, metadata !315, metadata !DIExpression()), !dbg !316
  %capacity = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 4
  call void @llvm.dbg.value(metadata i64 0, metadata !315, metadata !DIExpression()), !dbg !316
  %1 = load i64, ptr %capacity, align 8, !dbg !321, !tbaa !324
  %cmp65 = icmp sgt i64 %1, 0, !dbg !325
  br i1 %cmp65, label %for.body.lr.ph, label %for.end, !dbg !326

for.body.lr.ph:                                   ; preds = %entry
  %map = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 8
  %relinquish_key = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 2
  %relinquish_value = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 3
  br label %for.body, !dbg !326

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %2 = phi i64 [ %1, %for.body.lr.ph ], [ %26, %for.inc ]
  %i.066 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.066, metadata !315, metadata !DIExpression()), !dbg !316
  %3 = load ptr, ptr %map, align 8, !dbg !327, !tbaa !329
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %i.066, !dbg !330
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !330, !tbaa !231
  call void @llvm.dbg.value(metadata ptr %4, metadata !313, metadata !DIExpression()), !dbg !316
  %cmp2.not = icmp eq ptr %4, null, !dbg !331
  br i1 %cmp2.not, label %for.inc, label %if.then, !dbg !333

if.then:                                          ; preds = %for.body
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %4, i64 0, i32 2, !dbg !334
  %5 = load ptr, ptr %head, align 8, !dbg !334, !tbaa !261
  %next = getelementptr inbounds %struct._LinkedListInfo, ptr %4, i64 0, i32 4, !dbg !336
  store ptr %5, ptr %next, align 8, !dbg !337, !tbaa !216
  call void @llvm.dbg.value(metadata ptr %4, metadata !338, metadata !DIExpression()) #12, !dbg !344
  %semaphore.i = getelementptr inbounds %struct._LinkedListInfo, ptr %4, i64 0, i32 5, !dbg !346
  %6 = load ptr, ptr %semaphore.i, align 8, !dbg !346, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %6) #12, !dbg !347
  %7 = load ptr, ptr %next, align 8, !dbg !348, !tbaa !216
  %cmp.i = icmp eq ptr %7, null, !dbg !350
  br i1 %cmp.i, label %if.then18.sink.split, label %GetNextValueInLinkedList.exit, !dbg !351

GetNextValueInLinkedList.exit:                    ; preds = %if.then
  %8 = load ptr, ptr %7, align 8, !dbg !352, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %8, metadata !343, metadata !DIExpression()) #12, !dbg !344
  %next5.i = getelementptr inbounds %struct._ElementInfo, ptr %7, i64 0, i32 1, !dbg !353
  %9 = load ptr, ptr %next5.i, align 8, !dbg !353, !tbaa !210
  store ptr %9, ptr %next, align 8, !dbg !354, !tbaa !216
  %10 = load ptr, ptr %semaphore.i, align 8, !dbg !344, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %10) #12, !dbg !344
  call void @llvm.dbg.value(metadata ptr %8, metadata !314, metadata !DIExpression()), !dbg !316
  %cmp3.not62 = icmp eq ptr %8, null, !dbg !355
  br i1 %cmp3.not62, label %if.then18, label %while.body, !dbg !356

while.body:                                       ; preds = %GetNextValueInLinkedList.exit, %GetNextValueInLinkedList.exit60
  %entry1.063 = phi ptr [ %17, %GetNextValueInLinkedList.exit60 ], [ %8, %GetNextValueInLinkedList.exit ]
  call void @llvm.dbg.value(metadata ptr %entry1.063, metadata !314, metadata !DIExpression()), !dbg !316
  %11 = load ptr, ptr %relinquish_key, align 8, !dbg !357, !tbaa !360
  %cmp4.not = icmp eq ptr %11, null, !dbg !361
  br i1 %cmp4.not, label %if.end, label %if.then5, !dbg !362

if.then5:                                         ; preds = %while.body
  %key = getelementptr inbounds %struct._EntryInfo, ptr %entry1.063, i64 0, i32 1, !dbg !363
  %12 = load ptr, ptr %key, align 8, !dbg !363, !tbaa !364
  %call7 = tail call ptr %11(ptr noundef %12) #12, !dbg !366
  store ptr %call7, ptr %key, align 8, !dbg !367, !tbaa !364
  br label %if.end, !dbg !368

if.end:                                           ; preds = %if.then5, %while.body
  %13 = load ptr, ptr %relinquish_value, align 8, !dbg !369, !tbaa !371
  %cmp9.not = icmp eq ptr %13, null, !dbg !372
  br i1 %cmp9.not, label %if.end14, label %if.then10, !dbg !373

if.then10:                                        ; preds = %if.end
  %value = getelementptr inbounds %struct._EntryInfo, ptr %entry1.063, i64 0, i32 2, !dbg !374
  %14 = load ptr, ptr %value, align 8, !dbg !374, !tbaa !375
  %call12 = tail call ptr %13(ptr noundef %14) #12, !dbg !376
  store ptr %call12, ptr %value, align 8, !dbg !377, !tbaa !375
  br label %if.end14, !dbg !378

if.end14:                                         ; preds = %if.then10, %if.end
  call void @llvm.dbg.value(metadata ptr %4, metadata !338, metadata !DIExpression()) #12, !dbg !379
  %15 = load ptr, ptr %semaphore.i, align 8, !dbg !381, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %15) #12, !dbg !382
  %16 = load ptr, ptr %next, align 8, !dbg !383, !tbaa !216
  %cmp.i56 = icmp eq ptr %16, null, !dbg !384
  br i1 %cmp.i56, label %if.then18.sink.split, label %GetNextValueInLinkedList.exit60, !dbg !385

GetNextValueInLinkedList.exit60:                  ; preds = %if.end14
  %17 = load ptr, ptr %16, align 8, !dbg !386, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %17, metadata !343, metadata !DIExpression()) #12, !dbg !379
  %next5.i57 = getelementptr inbounds %struct._ElementInfo, ptr %16, i64 0, i32 1, !dbg !387
  %18 = load ptr, ptr %next5.i57, align 8, !dbg !387, !tbaa !210
  store ptr %18, ptr %next, align 8, !dbg !388, !tbaa !216
  %19 = load ptr, ptr %semaphore.i, align 8, !dbg !379, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %19) #12, !dbg !379
  call void @llvm.dbg.value(metadata ptr %17, metadata !314, metadata !DIExpression()), !dbg !316
  %cmp3.not = icmp eq ptr %17, null, !dbg !355
  br i1 %cmp3.not, label %if.then18, label %while.body, !dbg !356, !llvm.loop !389

if.then18.sink.split:                             ; preds = %if.end14, %if.then
  %20 = load ptr, ptr %semaphore.i, align 8, !dbg !391, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %20) #12, !dbg !391
  br label %if.then18, !dbg !392

if.then18:                                        ; preds = %GetNextValueInLinkedList.exit60, %if.then18.sink.split, %GetNextValueInLinkedList.exit
  call void @llvm.dbg.value(metadata ptr %4, metadata !397, metadata !DIExpression()) #12, !dbg !403
  call void @llvm.dbg.value(metadata ptr @RelinquishMagickMemory, metadata !398, metadata !DIExpression()) #12, !dbg !403
  %21 = load ptr, ptr %semaphore.i, align 8, !dbg !392, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %21) #12, !dbg !404
  %22 = load ptr, ptr %head, align 8, !dbg !405, !tbaa !261
  call void @llvm.dbg.value(metadata ptr %22, metadata !400, metadata !DIExpression()) #12, !dbg !403
  %cmp.not20.i = icmp eq ptr %22, null, !dbg !407
  br i1 %cmp.not20.i, label %DestroyLinkedList.exit, label %for.body.i, !dbg !409

for.body.i:                                       ; preds = %if.then18, %for.body.i
  %next.021.i = phi ptr [ %24, %for.body.i ], [ %22, %if.then18 ]
  call void @llvm.dbg.value(metadata ptr %next.021.i, metadata !400, metadata !DIExpression()) #12, !dbg !403
  %23 = load ptr, ptr %next.021.i, align 8, !dbg !410, !tbaa !206
  %call.i = tail call ptr @RelinquishMagickMemory(ptr noundef %23) #12, !dbg !413
  store ptr %call.i, ptr %next.021.i, align 8, !dbg !414, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %next.021.i, metadata !399, metadata !DIExpression()) #12, !dbg !403
  %next4.i = getelementptr inbounds %struct._ElementInfo, ptr %next.021.i, i64 0, i32 1, !dbg !415
  %24 = load ptr, ptr %next4.i, align 8, !dbg !415, !tbaa !210
  call void @llvm.dbg.value(metadata ptr %24, metadata !400, metadata !DIExpression()) #12, !dbg !403
  %call5.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %next.021.i) #12, !dbg !416
  call void @llvm.dbg.value(metadata ptr %call5.i, metadata !399, metadata !DIExpression()) #12, !dbg !403
  %cmp.not.i = icmp eq ptr %24, null, !dbg !407
  br i1 %cmp.not.i, label %DestroyLinkedList.exit, label %for.body.i, !dbg !409, !llvm.loop !417

DestroyLinkedList.exit:                           ; preds = %for.body.i, %if.then18
  %signature.i = getelementptr inbounds %struct._LinkedListInfo, ptr %4, i64 0, i32 6, !dbg !419
  store i64 -2880220588, ptr %signature.i, align 8, !dbg !420, !tbaa !421
  %25 = load ptr, ptr %semaphore.i, align 8, !dbg !422, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %25) #12, !dbg !423
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %semaphore.i) #12, !dbg !424
  %call8.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %4) #12, !dbg !425
  call void @llvm.dbg.value(metadata ptr %call8.i, metadata !397, metadata !DIExpression()) #12, !dbg !403
  call void @llvm.dbg.value(metadata ptr undef, metadata !313, metadata !DIExpression()), !dbg !316
  %.pre = load i64, ptr %capacity, align 8, !dbg !321, !tbaa !324
  br label %for.inc, !dbg !426

for.inc:                                          ; preds = %for.body, %DestroyLinkedList.exit
  %26 = phi i64 [ %2, %for.body ], [ %.pre, %DestroyLinkedList.exit ], !dbg !321
  %inc = add nuw nsw i64 %i.066, 1, !dbg !427
  call void @llvm.dbg.value(metadata i64 %inc, metadata !315, metadata !DIExpression()), !dbg !316
  %cmp = icmp slt i64 %inc, %26, !dbg !325
  br i1 %cmp, label %for.body, label %for.end, !dbg !326, !llvm.loop !428

for.end:                                          ; preds = %for.inc, %entry
  %map21 = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 8, !dbg !430
  %27 = load ptr, ptr %map21, align 8, !dbg !430, !tbaa !329
  %call22 = tail call ptr @RelinquishMagickMemory(ptr noundef %27) #12, !dbg !431
  store ptr %call22, ptr %map21, align 8, !dbg !432, !tbaa !329
  %signature = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 10, !dbg !433
  store i64 -2880220588, ptr %signature, align 8, !dbg !434, !tbaa !435
  %28 = load ptr, ptr %semaphore, align 8, !dbg !436, !tbaa !318
  tail call void @UnlockSemaphoreInfo(ptr noundef %28) #12, !dbg !437
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %semaphore) #12, !dbg !438
  %call26 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %hashmap_info) #12, !dbg !439
  call void @llvm.dbg.value(metadata ptr %call26, metadata !312, metadata !DIExpression()), !dbg !316
  ret ptr %call26, !dbg !440
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextValueInLinkedList(ptr nocapture noundef %list_info) local_unnamed_addr #0 !dbg !339 {
entry:
  call void @llvm.dbg.value(metadata ptr %list_info, metadata !338, metadata !DIExpression()), !dbg !441
  %semaphore = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 5, !dbg !442
  %0 = load ptr, ptr %semaphore, align 8, !dbg !442, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %0) #12, !dbg !443
  %next = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 4, !dbg !444
  %1 = load ptr, ptr %next, align 8, !dbg !444, !tbaa !216
  %cmp = icmp eq ptr %1, null, !dbg !445
  br i1 %cmp, label %cleanup, label %if.end, !dbg !446

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %1, align 8, !dbg !447, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %2, metadata !343, metadata !DIExpression()), !dbg !441
  %next5 = getelementptr inbounds %struct._ElementInfo, ptr %1, i64 0, i32 1, !dbg !448
  %3 = load ptr, ptr %next5, align 8, !dbg !448, !tbaa !210
  store ptr %3, ptr %next, align 8, !dbg !449, !tbaa !216
  br label %cleanup, !dbg !450

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi ptr [ %2, %if.end ], [ null, %entry ], !dbg !441
  %4 = load ptr, ptr %semaphore, align 8, !dbg !441, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %4) #12, !dbg !441
  ret ptr %retval.0, !dbg !451
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyLinkedList(ptr noundef %list_info, ptr noundef readonly %relinquish_value) local_unnamed_addr #0 !dbg !393 {
entry:
  call void @llvm.dbg.value(metadata ptr %list_info, metadata !397, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata ptr %relinquish_value, metadata !398, metadata !DIExpression()), !dbg !452
  %semaphore = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 5, !dbg !453
  %0 = load ptr, ptr %semaphore, align 8, !dbg !453, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %0) #12, !dbg !454
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 2, !dbg !455
  %1 = load ptr, ptr %head, align 8, !dbg !455, !tbaa !261
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !452
  %cmp.not20 = icmp eq ptr %1, null, !dbg !456
  br i1 %cmp.not20, label %for.end, label %for.body.lr.ph, !dbg !457

for.body.lr.ph:                                   ; preds = %entry
  %cmp2.not = icmp eq ptr %relinquish_value, null
  br i1 %cmp2.not, label %for.body.us, label %for.body, !dbg !458

for.body.us:                                      ; preds = %for.body.lr.ph, %for.body.us
  %next.021.us = phi ptr [ %2, %for.body.us ], [ %1, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %next.021.us, metadata !400, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata ptr %next.021.us, metadata !399, metadata !DIExpression()), !dbg !452
  %next4.us = getelementptr inbounds %struct._ElementInfo, ptr %next.021.us, i64 0, i32 1, !dbg !459
  %2 = load ptr, ptr %next4.us, align 8, !dbg !459, !tbaa !210
  call void @llvm.dbg.value(metadata ptr %2, metadata !400, metadata !DIExpression()), !dbg !452
  %call5.us = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %next.021.us) #12, !dbg !460
  call void @llvm.dbg.value(metadata ptr %call5.us, metadata !399, metadata !DIExpression()), !dbg !452
  %cmp.not.us = icmp eq ptr %2, null, !dbg !456
  br i1 %cmp.not.us, label %for.end, label %for.body.us, !dbg !457, !llvm.loop !461

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %next.021 = phi ptr [ %4, %for.body ], [ %1, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %next.021, metadata !400, metadata !DIExpression()), !dbg !452
  %3 = load ptr, ptr %next.021, align 8, !dbg !463, !tbaa !206
  %call = tail call ptr %relinquish_value(ptr noundef %3) #12, !dbg !464
  store ptr %call, ptr %next.021, align 8, !dbg !465, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %next.021, metadata !399, metadata !DIExpression()), !dbg !452
  %next4 = getelementptr inbounds %struct._ElementInfo, ptr %next.021, i64 0, i32 1, !dbg !459
  %4 = load ptr, ptr %next4, align 8, !dbg !459, !tbaa !210
  call void @llvm.dbg.value(metadata ptr %4, metadata !400, metadata !DIExpression()), !dbg !452
  %call5 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %next.021) #12, !dbg !460
  call void @llvm.dbg.value(metadata ptr %call5, metadata !399, metadata !DIExpression()), !dbg !452
  %cmp.not = icmp eq ptr %4, null, !dbg !456
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !457, !llvm.loop !461

for.end:                                          ; preds = %for.body, %for.body.us, %entry
  %signature = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 6, !dbg !466
  store i64 -2880220588, ptr %signature, align 8, !dbg !467, !tbaa !421
  %5 = load ptr, ptr %semaphore, align 8, !dbg !468, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %5) #12, !dbg !469
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %semaphore) #12, !dbg !470
  %call8 = tail call ptr @RelinquishMagickMemory(ptr noundef %list_info) #12, !dbg !471
  call void @llvm.dbg.value(metadata ptr %call8, metadata !397, metadata !DIExpression()), !dbg !452
  ret ptr %call8, !dbg !472
}

declare !dbg !473 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @GetLastValueInLinkedList(ptr nocapture noundef readonly %list_info) local_unnamed_addr #0 !dbg !477 {
entry:
  call void @llvm.dbg.value(metadata ptr %list_info, metadata !479, metadata !DIExpression()), !dbg !481
  %elements = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 1, !dbg !482
  %0 = load i64, ptr %elements, align 8, !dbg !482, !tbaa !191
  %cmp = icmp eq i64 %0, 0, !dbg !484
  br i1 %cmp, label %cleanup, label %if.end, !dbg !485

if.end:                                           ; preds = %entry
  %semaphore = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 5, !dbg !486
  %1 = load ptr, ptr %semaphore, align 8, !dbg !486, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %1) #12, !dbg !487
  %tail = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 3, !dbg !488
  %2 = load ptr, ptr %tail, align 8, !dbg !488, !tbaa !228
  %3 = load ptr, ptr %2, align 8, !dbg !489, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %3, metadata !480, metadata !DIExpression()), !dbg !481
  %4 = load ptr, ptr %semaphore, align 8, !dbg !490, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %4) #12, !dbg !491
  br label %cleanup, !dbg !492

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi ptr [ %3, %if.end ], [ null, %entry ], !dbg !481
  ret ptr %retval.0, !dbg !493
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextKeyInHashmap(ptr nocapture noundef %hashmap_info) local_unnamed_addr #0 !dbg !494 {
entry:
  call void @llvm.dbg.value(metadata ptr %hashmap_info, metadata !498, metadata !DIExpression()), !dbg !502
  %semaphore = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 9, !dbg !503
  %0 = load ptr, ptr %semaphore, align 8, !dbg !503, !tbaa !318
  tail call void @LockSemaphoreInfo(ptr noundef %0) #12, !dbg !504
  %next = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 6
  %capacity = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 4
  %1 = load i64, ptr %next, align 8, !dbg !505, !tbaa !506
  %2 = load i64, ptr %capacity, align 8, !dbg !507, !tbaa !324
  %cmp36 = icmp ult i64 %1, %2, !dbg !508
  br i1 %cmp36, label %while.body.lr.ph, label %cleanup, !dbg !509

while.body.lr.ph:                                 ; preds = %entry
  %map = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 8
  %head_of_list = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 7
  br label %while.body, !dbg !509

while.body:                                       ; preds = %while.body.lr.ph, %if.end14
  %3 = phi i64 [ %2, %while.body.lr.ph ], [ %16, %if.end14 ]
  %4 = phi i64 [ %1, %while.body.lr.ph ], [ %inc, %if.end14 ]
  %5 = load ptr, ptr %map, align 8, !dbg !510, !tbaa !329
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %4, !dbg !512
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !512, !tbaa !231
  call void @llvm.dbg.value(metadata ptr %6, metadata !499, metadata !DIExpression()), !dbg !502
  %cmp3.not = icmp eq ptr %6, null, !dbg !513
  br i1 %cmp3.not, label %if.end14, label %if.then, !dbg !515

if.then:                                          ; preds = %while.body
  %7 = load i32, ptr %head_of_list, align 8, !dbg !516, !tbaa !519
  %cmp4 = icmp eq i32 %7, 0, !dbg !520
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !521

if.then5:                                         ; preds = %if.then
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %6, i64 0, i32 2, !dbg !522
  %8 = load ptr, ptr %head, align 8, !dbg !522, !tbaa !261
  %next6 = getelementptr inbounds %struct._LinkedListInfo, ptr %6, i64 0, i32 4, !dbg !524
  store ptr %8, ptr %next6, align 8, !dbg !525, !tbaa !216
  store i32 1, ptr %head_of_list, align 8, !dbg !526, !tbaa !519
  br label %if.end, !dbg !527

if.end:                                           ; preds = %if.then5, %if.then
  call void @llvm.dbg.value(metadata ptr %6, metadata !338, metadata !DIExpression()) #12, !dbg !528
  %semaphore.i = getelementptr inbounds %struct._LinkedListInfo, ptr %6, i64 0, i32 5, !dbg !530
  %9 = load ptr, ptr %semaphore.i, align 8, !dbg !530, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %9) #12, !dbg !531
  %next.i = getelementptr inbounds %struct._LinkedListInfo, ptr %6, i64 0, i32 4, !dbg !532
  %10 = load ptr, ptr %next.i, align 8, !dbg !532, !tbaa !216
  %cmp.i = icmp eq ptr %10, null, !dbg !533
  br i1 %cmp.i, label %GetNextValueInLinkedList.exit.thread, label %GetNextValueInLinkedList.exit, !dbg !534

GetNextValueInLinkedList.exit.thread:             ; preds = %if.end
  %11 = load ptr, ptr %semaphore.i, align 8, !dbg !528, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #12, !dbg !528
  call void @llvm.dbg.value(metadata ptr %12, metadata !500, metadata !DIExpression()), !dbg !502
  br label %if.end12, !dbg !535

GetNextValueInLinkedList.exit:                    ; preds = %if.end
  %12 = load ptr, ptr %10, align 8, !dbg !536, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %12, metadata !343, metadata !DIExpression()) #12, !dbg !528
  %next5.i = getelementptr inbounds %struct._ElementInfo, ptr %10, i64 0, i32 1, !dbg !537
  %13 = load ptr, ptr %next5.i, align 8, !dbg !537, !tbaa !210
  store ptr %13, ptr %next.i, align 8, !dbg !538, !tbaa !216
  %14 = load ptr, ptr %semaphore.i, align 8, !dbg !528, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %14) #12, !dbg !528
  call void @llvm.dbg.value(metadata ptr %12, metadata !500, metadata !DIExpression()), !dbg !502
  %cmp8.not = icmp eq ptr %12, null, !dbg !539
  br i1 %cmp8.not, label %if.end12, label %if.then9, !dbg !535

if.then9:                                         ; preds = %GetNextValueInLinkedList.exit
  %key10 = getelementptr inbounds %struct._EntryInfo, ptr %12, i64 0, i32 1, !dbg !541
  %15 = load ptr, ptr %key10, align 8, !dbg !541, !tbaa !364
  call void @llvm.dbg.value(metadata ptr %15, metadata !501, metadata !DIExpression()), !dbg !502
  br label %cleanup, !dbg !543

if.end12:                                         ; preds = %GetNextValueInLinkedList.exit.thread, %GetNextValueInLinkedList.exit
  store i32 0, ptr %head_of_list, align 8, !dbg !544, !tbaa !519
  %.pre = load i64, ptr %next, align 8, !dbg !545, !tbaa !506
  %.pre37 = load i64, ptr %capacity, align 8, !dbg !507, !tbaa !324
  br label %if.end14, !dbg !546

if.end14:                                         ; preds = %if.end12, %while.body
  %16 = phi i64 [ %.pre37, %if.end12 ], [ %3, %while.body ], !dbg !507
  %17 = phi i64 [ %.pre, %if.end12 ], [ %4, %while.body ], !dbg !545
  %inc = add i64 %17, 1, !dbg !545
  store i64 %inc, ptr %next, align 8, !dbg !545, !tbaa !506
  %cmp = icmp ult i64 %inc, %16, !dbg !508
  br i1 %cmp, label %while.body, label %cleanup, !dbg !509, !llvm.loop !547

cleanup:                                          ; preds = %if.end14, %entry, %if.then9
  %retval.0 = phi ptr [ %15, %if.then9 ], [ null, %entry ], [ null, %if.end14 ], !dbg !502
  %18 = load ptr, ptr %semaphore, align 8, !dbg !502, !tbaa !318
  tail call void @UnlockSemaphoreInfo(ptr noundef %18) #12, !dbg !502
  ret ptr %retval.0, !dbg !549
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextValueInHashmap(ptr nocapture noundef %hashmap_info) local_unnamed_addr #0 !dbg !550 {
entry:
  call void @llvm.dbg.value(metadata ptr %hashmap_info, metadata !552, metadata !DIExpression()), !dbg !556
  %semaphore = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 9, !dbg !557
  %0 = load ptr, ptr %semaphore, align 8, !dbg !557, !tbaa !318
  tail call void @LockSemaphoreInfo(ptr noundef %0) #12, !dbg !558
  %next = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 6
  %capacity = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 4
  %1 = load i64, ptr %next, align 8, !dbg !559, !tbaa !506
  %2 = load i64, ptr %capacity, align 8, !dbg !560, !tbaa !324
  %cmp36 = icmp ult i64 %1, %2, !dbg !561
  br i1 %cmp36, label %while.body.lr.ph, label %cleanup, !dbg !562

while.body.lr.ph:                                 ; preds = %entry
  %map = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 8
  %head_of_list = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 7
  br label %while.body, !dbg !562

while.body:                                       ; preds = %while.body.lr.ph, %if.end14
  %3 = phi i64 [ %2, %while.body.lr.ph ], [ %16, %if.end14 ]
  %4 = phi i64 [ %1, %while.body.lr.ph ], [ %inc, %if.end14 ]
  %5 = load ptr, ptr %map, align 8, !dbg !563, !tbaa !329
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %4, !dbg !565
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !565, !tbaa !231
  call void @llvm.dbg.value(metadata ptr %6, metadata !553, metadata !DIExpression()), !dbg !556
  %cmp3.not = icmp eq ptr %6, null, !dbg !566
  br i1 %cmp3.not, label %if.end14, label %if.then, !dbg !568

if.then:                                          ; preds = %while.body
  %7 = load i32, ptr %head_of_list, align 8, !dbg !569, !tbaa !519
  %cmp4 = icmp eq i32 %7, 0, !dbg !572
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !573

if.then5:                                         ; preds = %if.then
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %6, i64 0, i32 2, !dbg !574
  %8 = load ptr, ptr %head, align 8, !dbg !574, !tbaa !261
  %next6 = getelementptr inbounds %struct._LinkedListInfo, ptr %6, i64 0, i32 4, !dbg !576
  store ptr %8, ptr %next6, align 8, !dbg !577, !tbaa !216
  store i32 1, ptr %head_of_list, align 8, !dbg !578, !tbaa !519
  br label %if.end, !dbg !579

if.end:                                           ; preds = %if.then5, %if.then
  call void @llvm.dbg.value(metadata ptr %6, metadata !338, metadata !DIExpression()) #12, !dbg !580
  %semaphore.i = getelementptr inbounds %struct._LinkedListInfo, ptr %6, i64 0, i32 5, !dbg !582
  %9 = load ptr, ptr %semaphore.i, align 8, !dbg !582, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %9) #12, !dbg !583
  %next.i = getelementptr inbounds %struct._LinkedListInfo, ptr %6, i64 0, i32 4, !dbg !584
  %10 = load ptr, ptr %next.i, align 8, !dbg !584, !tbaa !216
  %cmp.i = icmp eq ptr %10, null, !dbg !585
  br i1 %cmp.i, label %GetNextValueInLinkedList.exit.thread, label %GetNextValueInLinkedList.exit, !dbg !586

GetNextValueInLinkedList.exit.thread:             ; preds = %if.end
  %11 = load ptr, ptr %semaphore.i, align 8, !dbg !580, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #12, !dbg !580
  call void @llvm.dbg.value(metadata ptr %12, metadata !554, metadata !DIExpression()), !dbg !556
  br label %if.end12, !dbg !587

GetNextValueInLinkedList.exit:                    ; preds = %if.end
  %12 = load ptr, ptr %10, align 8, !dbg !588, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %12, metadata !343, metadata !DIExpression()) #12, !dbg !580
  %next5.i = getelementptr inbounds %struct._ElementInfo, ptr %10, i64 0, i32 1, !dbg !589
  %13 = load ptr, ptr %next5.i, align 8, !dbg !589, !tbaa !210
  store ptr %13, ptr %next.i, align 8, !dbg !590, !tbaa !216
  %14 = load ptr, ptr %semaphore.i, align 8, !dbg !580, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %14) #12, !dbg !580
  call void @llvm.dbg.value(metadata ptr %12, metadata !554, metadata !DIExpression()), !dbg !556
  %cmp8.not = icmp eq ptr %12, null, !dbg !591
  br i1 %cmp8.not, label %if.end12, label %if.then9, !dbg !587

if.then9:                                         ; preds = %GetNextValueInLinkedList.exit
  %value10 = getelementptr inbounds %struct._EntryInfo, ptr %12, i64 0, i32 2, !dbg !593
  %15 = load ptr, ptr %value10, align 8, !dbg !593, !tbaa !375
  call void @llvm.dbg.value(metadata ptr %15, metadata !555, metadata !DIExpression()), !dbg !556
  br label %cleanup, !dbg !595

if.end12:                                         ; preds = %GetNextValueInLinkedList.exit.thread, %GetNextValueInLinkedList.exit
  store i32 0, ptr %head_of_list, align 8, !dbg !596, !tbaa !519
  %.pre = load i64, ptr %next, align 8, !dbg !597, !tbaa !506
  %.pre37 = load i64, ptr %capacity, align 8, !dbg !560, !tbaa !324
  br label %if.end14, !dbg !598

if.end14:                                         ; preds = %if.end12, %while.body
  %16 = phi i64 [ %.pre37, %if.end12 ], [ %3, %while.body ], !dbg !560
  %17 = phi i64 [ %.pre, %if.end12 ], [ %4, %while.body ], !dbg !597
  %inc = add i64 %17, 1, !dbg !597
  store i64 %inc, ptr %next, align 8, !dbg !597, !tbaa !506
  %cmp = icmp ult i64 %inc, %16, !dbg !561
  br i1 %cmp, label %while.body, label %cleanup, !dbg !562, !llvm.loop !599

cleanup:                                          ; preds = %if.end14, %entry, %if.then9
  %retval.0 = phi ptr [ %15, %if.then9 ], [ null, %entry ], [ null, %if.end14 ], !dbg !556
  %18 = load ptr, ptr %semaphore, align 8, !dbg !556, !tbaa !318
  tail call void @UnlockSemaphoreInfo(ptr noundef %18) #12, !dbg !556
  ret ptr %retval.0, !dbg !601
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @GetNumberOfEntriesInHashmap(ptr nocapture noundef readonly %hashmap_info) local_unnamed_addr #5 !dbg !602 {
entry:
  call void @llvm.dbg.value(metadata ptr %hashmap_info, metadata !608, metadata !DIExpression()), !dbg !609
  %entries = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 5, !dbg !610
  %0 = load i64, ptr %entries, align 8, !dbg !610, !tbaa !611
  ret i64 %0, !dbg !612
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @GetNumberOfElementsInLinkedList(ptr nocapture noundef readonly %list_info) local_unnamed_addr #5 !dbg !613 {
entry:
  call void @llvm.dbg.value(metadata ptr %list_info, metadata !619, metadata !DIExpression()), !dbg !620
  %elements = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 1, !dbg !621
  %0 = load i64, ptr %elements, align 8, !dbg !621, !tbaa !191
  ret i64 %0, !dbg !622
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetValueFromHashmap(ptr nocapture noundef readonly %hashmap_info, ptr noundef %key) local_unnamed_addr #0 !dbg !623 {
entry:
  call void @llvm.dbg.value(metadata ptr %hashmap_info, metadata !627, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.value(metadata ptr %key, metadata !628, metadata !DIExpression()), !dbg !639
  %cmp = icmp eq ptr %key, null, !dbg !640
  br i1 %cmp, label %cleanup26, label %if.end, !dbg !642

if.end:                                           ; preds = %entry
  %semaphore = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 9, !dbg !643
  %0 = load ptr, ptr %semaphore, align 8, !dbg !643, !tbaa !318
  tail call void @LockSemaphoreInfo(ptr noundef %0) #12, !dbg !644
  %1 = load ptr, ptr %hashmap_info, align 8, !dbg !645, !tbaa !646
  %call = tail call i64 %1(ptr noundef nonnull %key) #12, !dbg !647
  call void @llvm.dbg.value(metadata i64 %call, metadata !631, metadata !DIExpression()), !dbg !639
  %map = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 8, !dbg !648
  %2 = load ptr, ptr %map, align 8, !dbg !648, !tbaa !329
  %capacity = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 4, !dbg !649
  %3 = load i64, ptr %capacity, align 8, !dbg !649, !tbaa !324
  %rem = urem i64 %call, %3, !dbg !650
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %rem, !dbg !651
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !651, !tbaa !231
  call void @llvm.dbg.value(metadata ptr %4, metadata !629, metadata !DIExpression()), !dbg !639
  %cmp3.not = icmp eq ptr %4, null, !dbg !652
  br i1 %cmp3.not, label %cleanup26.sink.split, label %if.then4, !dbg !653

if.then4:                                         ; preds = %if.end
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %4, i64 0, i32 2, !dbg !654
  %5 = load ptr, ptr %head, align 8, !dbg !654, !tbaa !261
  %next = getelementptr inbounds %struct._LinkedListInfo, ptr %4, i64 0, i32 4, !dbg !655
  store ptr %5, ptr %next, align 8, !dbg !656, !tbaa !216
  call void @llvm.dbg.value(metadata ptr %4, metadata !338, metadata !DIExpression()) #12, !dbg !657
  %semaphore.i = getelementptr inbounds %struct._LinkedListInfo, ptr %4, i64 0, i32 5, !dbg !659
  %6 = load ptr, ptr %semaphore.i, align 8, !dbg !659, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %6) #12, !dbg !660
  %7 = load ptr, ptr %next, align 8, !dbg !661, !tbaa !216
  %cmp.i = icmp eq ptr %7, null, !dbg !662
  br i1 %cmp.i, label %if.end24.sink.split, label %GetNextValueInLinkedList.exit, !dbg !663

GetNextValueInLinkedList.exit:                    ; preds = %if.then4
  %8 = load ptr, ptr %7, align 8, !dbg !664, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %8, metadata !343, metadata !DIExpression()) #12, !dbg !657
  %next5.i = getelementptr inbounds %struct._ElementInfo, ptr %7, i64 0, i32 1, !dbg !665
  %9 = load ptr, ptr %next5.i, align 8, !dbg !665, !tbaa !210
  store ptr %9, ptr %next, align 8, !dbg !666, !tbaa !216
  %10 = load ptr, ptr %semaphore.i, align 8, !dbg !657, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %10) #12, !dbg !657
  call void @llvm.dbg.value(metadata ptr %8, metadata !630, metadata !DIExpression()), !dbg !639
  %cmp6.not62 = icmp eq ptr %8, null, !dbg !667
  br i1 %cmp6.not62, label %cleanup26.sink.split, label %while.body.lr.ph, !dbg !668

while.body.lr.ph:                                 ; preds = %GetNextValueInLinkedList.exit
  %compare10 = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 1
  br label %while.body, !dbg !668

while.body:                                       ; preds = %while.body.lr.ph, %GetNextValueInLinkedList.exit54
  %entry1.063 = phi ptr [ %8, %while.body.lr.ph ], [ %17, %GetNextValueInLinkedList.exit54 ]
  call void @llvm.dbg.value(metadata ptr %entry1.063, metadata !630, metadata !DIExpression()), !dbg !639
  %11 = load i64, ptr %entry1.063, align 8, !dbg !669, !tbaa !670
  %cmp8 = icmp eq i64 %11, %call, !dbg !671
  br i1 %cmp8, label %if.then9, label %if.end22, !dbg !672

if.then9:                                         ; preds = %while.body
  call void @llvm.dbg.value(metadata i32 1, metadata !633, metadata !DIExpression()), !dbg !673
  %12 = load ptr, ptr %compare10, align 8, !dbg !674, !tbaa !676
  %cmp11.not = icmp eq ptr %12, null, !dbg !677
  br i1 %cmp11.not, label %cleanup, label %if.end16, !dbg !678

if.end16:                                         ; preds = %if.then9
  %key14 = getelementptr inbounds %struct._EntryInfo, ptr %entry1.063, i64 0, i32 1, !dbg !679
  %13 = load ptr, ptr %key14, align 8, !dbg !679, !tbaa !364
  %call15 = tail call i32 %12(ptr noundef nonnull %key, ptr noundef %13) #12, !dbg !680
  call void @llvm.dbg.value(metadata i32 %call15, metadata !633, metadata !DIExpression()), !dbg !673
  %cmp17.not = icmp eq i32 %call15, 0, !dbg !681
  br i1 %cmp17.not, label %if.end22, label %cleanup, !dbg !683

cleanup:                                          ; preds = %if.then9, %if.end16
  %value19 = getelementptr inbounds %struct._EntryInfo, ptr %entry1.063, i64 0, i32 2, !dbg !684
  %14 = load ptr, ptr %value19, align 8, !dbg !684, !tbaa !375
  call void @llvm.dbg.value(metadata ptr %14, metadata !632, metadata !DIExpression()), !dbg !639
  br label %cleanup26.sink.split

if.end22:                                         ; preds = %if.end16, %while.body
  call void @llvm.dbg.value(metadata ptr %4, metadata !338, metadata !DIExpression()) #12, !dbg !686
  %15 = load ptr, ptr %semaphore.i, align 8, !dbg !688, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %15) #12, !dbg !689
  %16 = load ptr, ptr %next, align 8, !dbg !690, !tbaa !216
  %cmp.i50 = icmp eq ptr %16, null, !dbg !691
  br i1 %cmp.i50, label %if.end24.sink.split, label %GetNextValueInLinkedList.exit54, !dbg !692

GetNextValueInLinkedList.exit54:                  ; preds = %if.end22
  %17 = load ptr, ptr %16, align 8, !dbg !693, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %17, metadata !343, metadata !DIExpression()) #12, !dbg !686
  %next5.i51 = getelementptr inbounds %struct._ElementInfo, ptr %16, i64 0, i32 1, !dbg !694
  %18 = load ptr, ptr %next5.i51, align 8, !dbg !694, !tbaa !210
  store ptr %18, ptr %next, align 8, !dbg !695, !tbaa !216
  %19 = load ptr, ptr %semaphore.i, align 8, !dbg !686, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %19) #12, !dbg !686
  call void @llvm.dbg.value(metadata ptr %17, metadata !630, metadata !DIExpression()), !dbg !639
  %cmp6.not = icmp eq ptr %17, null, !dbg !667
  br i1 %cmp6.not, label %cleanup26.sink.split, label %while.body, !dbg !668, !llvm.loop !696

if.end24.sink.split:                              ; preds = %if.end22, %if.then4
  %20 = load ptr, ptr %semaphore.i, align 8, !dbg !698, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %20) #12, !dbg !698
  br label %cleanup26.sink.split, !dbg !699

cleanup26.sink.split:                             ; preds = %GetNextValueInLinkedList.exit54, %if.end, %GetNextValueInLinkedList.exit, %if.end24.sink.split, %cleanup
  %retval.3.ph = phi ptr [ %14, %cleanup ], [ null, %if.end24.sink.split ], [ null, %GetNextValueInLinkedList.exit ], [ null, %if.end ], [ null, %GetNextValueInLinkedList.exit54 ]
  %21 = load ptr, ptr %semaphore, align 8, !dbg !639, !tbaa !318
  tail call void @UnlockSemaphoreInfo(ptr noundef %21) #12, !dbg !639
  br label %cleanup26, !dbg !700

cleanup26:                                        ; preds = %cleanup26.sink.split, %entry
  %retval.3 = phi ptr [ null, %entry ], [ %retval.3.ph, %cleanup26.sink.split ], !dbg !639
  ret ptr %retval.3, !dbg !700
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetValueFromLinkedList(ptr nocapture noundef readonly %list_info, i64 noundef %index) local_unnamed_addr #0 !dbg !701 {
entry:
  call void @llvm.dbg.value(metadata ptr %list_info, metadata !705, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 %index, metadata !706, metadata !DIExpression()), !dbg !710
  %elements = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 1, !dbg !711
  %0 = load i64, ptr %elements, align 8, !dbg !711, !tbaa !191
  %cmp.not = icmp ugt i64 %0, %index, !dbg !713
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !714

if.end:                                           ; preds = %entry
  %semaphore = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 5, !dbg !715
  %1 = load ptr, ptr %semaphore, align 8, !dbg !715, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %1) #12, !dbg !716
  %cmp1 = icmp eq i64 %index, 0, !dbg !717
  br i1 %cmp1, label %if.then2, label %if.end5, !dbg !719

if.then2:                                         ; preds = %if.end
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 2, !dbg !720
  call void @llvm.dbg.value(metadata ptr undef, metadata !709, metadata !DIExpression()), !dbg !710
  br label %cleanup.sink.split.sink.split, !dbg !722

if.end5:                                          ; preds = %if.end
  %2 = load i64, ptr %elements, align 8, !dbg !723, !tbaa !191
  %sub = add i64 %2, -1, !dbg !725
  %cmp7 = icmp eq i64 %sub, %index, !dbg !726
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !727

if.then8:                                         ; preds = %if.end5
  %tail = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 3, !dbg !728
  call void @llvm.dbg.value(metadata ptr undef, metadata !709, metadata !DIExpression()), !dbg !710
  br label %cleanup.sink.split.sink.split, !dbg !730

if.end11:                                         ; preds = %if.end5
  %head12 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 2, !dbg !731
  call void @llvm.dbg.value(metadata ptr undef, metadata !707, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 0, metadata !708, metadata !DIExpression()), !dbg !710
  %next.034 = load ptr, ptr %head12, align 8, !dbg !710, !tbaa !231
  call void @llvm.dbg.value(metadata ptr %next.034, metadata !707, metadata !DIExpression()), !dbg !710
  %cmp1335 = icmp sgt i64 %index, 0, !dbg !732
  br i1 %cmp1335, label %for.body, label %cleanup.sink.split, !dbg !735

for.body:                                         ; preds = %if.end11, %for.body
  %next.037 = phi ptr [ %next.0, %for.body ], [ %next.034, %if.end11 ]
  %i.036 = phi i64 [ %inc, %for.body ], [ 0, %if.end11 ]
  call void @llvm.dbg.value(metadata i64 %i.036, metadata !708, metadata !DIExpression()), !dbg !710
  %next14 = getelementptr inbounds %struct._ElementInfo, ptr %next.037, i64 0, i32 1, !dbg !736
  call void @llvm.dbg.value(metadata ptr undef, metadata !707, metadata !DIExpression()), !dbg !710
  %inc = add nuw nsw i64 %i.036, 1, !dbg !737
  call void @llvm.dbg.value(metadata i64 %inc, metadata !708, metadata !DIExpression()), !dbg !710
  %next.0 = load ptr, ptr %next14, align 8, !dbg !710, !tbaa !231
  call void @llvm.dbg.value(metadata ptr %next.0, metadata !707, metadata !DIExpression()), !dbg !710
  %exitcond.not = icmp eq i64 %inc, %index, !dbg !732
  br i1 %exitcond.not, label %cleanup.sink.split, label %for.body, !dbg !735, !llvm.loop !738

cleanup.sink.split.sink.split:                    ; preds = %if.then8, %if.then2
  %head.sink = phi ptr [ %head, %if.then2 ], [ %tail, %if.then8 ]
  %3 = load ptr, ptr %head.sink, align 8, !dbg !710, !tbaa !231
  br label %cleanup.sink.split, !dbg !710

cleanup.sink.split:                               ; preds = %for.body, %cleanup.sink.split.sink.split, %if.end11
  %next.0.lcssa.sink = phi ptr [ %next.034, %if.end11 ], [ %3, %cleanup.sink.split.sink.split ], [ %next.0, %for.body ]
  %4 = load ptr, ptr %next.0.lcssa.sink, align 8, !dbg !710, !tbaa !206
  %5 = load ptr, ptr %semaphore, align 8, !dbg !710, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %5) #12, !dbg !710
  br label %cleanup, !dbg !740

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi ptr [ null, %entry ], [ %4, %cleanup.sink.split ], !dbg !710
  ret ptr %retval.0, !dbg !740
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @HashPointerType(ptr noundef %pointer) #6 !dbg !741 {
entry:
  call void @llvm.dbg.value(metadata ptr %pointer, metadata !743, metadata !DIExpression()), !dbg !745
  %0 = ptrtoint ptr %pointer to i64, !dbg !746
  call void @llvm.dbg.value(metadata i64 %0, metadata !744, metadata !DIExpression()), !dbg !745
  %shl = shl i64 %0, 9, !dbg !747
  %neg = xor i64 %shl, -1, !dbg !748
  %add = add i64 %neg, %0, !dbg !749
  call void @llvm.dbg.value(metadata i64 %add, metadata !744, metadata !DIExpression()), !dbg !745
  %shr = lshr i64 %add, 14, !dbg !750
  %xor = xor i64 %shr, %add, !dbg !751
  call void @llvm.dbg.value(metadata i64 %xor, metadata !744, metadata !DIExpression()), !dbg !745
  %add2 = mul i64 %xor, 17, !dbg !752
  call void @llvm.dbg.value(metadata i64 %add2, metadata !744, metadata !DIExpression()), !dbg !745
  %shr3 = lshr i64 %add2, 10, !dbg !753
  %xor4 = xor i64 %shr3, %add2, !dbg !754
  call void @llvm.dbg.value(metadata i64 %xor4, metadata !744, metadata !DIExpression()), !dbg !745
  ret i64 %xor4, !dbg !755
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HashStringType(ptr noundef %string) local_unnamed_addr #0 !dbg !756 {
entry:
  call void @llvm.dbg.value(metadata ptr %string, metadata !758, metadata !DIExpression()), !dbg !771
  %call = tail call ptr @AcquireSignatureInfo() #12, !dbg !772
  call void @llvm.dbg.value(metadata ptr %call, metadata !763, metadata !DIExpression()), !dbg !771
  %call1 = tail call ptr @StringToStringInfo(ptr noundef %string) #12, !dbg !773
  call void @llvm.dbg.value(metadata ptr %call1, metadata !769, metadata !DIExpression()), !dbg !771
  tail call void @UpdateSignature(ptr noundef %call, ptr noundef %call1) #12, !dbg !774
  tail call void @FinalizeSignature(ptr noundef %call) #12, !dbg !775
  %call2 = tail call ptr @GetSignatureDigest(ptr noundef %call) #12, !dbg !776
  %call3 = tail call ptr @GetStringInfoDatum(ptr noundef %call2) #12, !dbg !777
  call void @llvm.dbg.value(metadata ptr %call3, metadata !759, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i64 0, metadata !768, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i64 0, metadata !762, metadata !DIExpression()), !dbg !771
  br label %for.body, !dbg !778

for.body:                                         ; preds = %entry, %for.body
  %hash.014 = phi i64 [ 0, %entry ], [ %xor, %for.body ]
  %i.013 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %hash.014, metadata !768, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i64 %i.013, metadata !762, metadata !DIExpression()), !dbg !771
  %arrayidx = getelementptr inbounds i8, ptr %call3, i64 %i.013, !dbg !780
  %0 = load i8, ptr %arrayidx, align 1, !dbg !780, !tbaa !782
  %conv = zext i8 %0 to i64, !dbg !780
  %xor = xor i64 %hash.014, %conv, !dbg !783
  call void @llvm.dbg.value(metadata i64 %xor, metadata !768, metadata !DIExpression()), !dbg !771
  %inc = add nuw nsw i64 %i.013, 1, !dbg !784
  call void @llvm.dbg.value(metadata i64 %inc, metadata !762, metadata !DIExpression()), !dbg !771
  %exitcond.not = icmp eq i64 %inc, 8, !dbg !785
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !778, !llvm.loop !786

for.end:                                          ; preds = %for.body
  %call4 = tail call ptr @DestroyStringInfo(ptr noundef %call1) #12, !dbg !788
  call void @llvm.dbg.value(metadata ptr %call4, metadata !769, metadata !DIExpression()), !dbg !771
  %call5 = tail call ptr @DestroySignatureInfo(ptr noundef %call) #12, !dbg !789
  call void @llvm.dbg.value(metadata ptr %call5, metadata !763, metadata !DIExpression()), !dbg !771
  ret i64 %xor, !dbg !790
}

declare !dbg !791 ptr @AcquireSignatureInfo() local_unnamed_addr #4

declare !dbg !794 ptr @StringToStringInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !797 void @UpdateSignature(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !800 void @FinalizeSignature(ptr noundef) local_unnamed_addr #4

declare !dbg !803 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #4

declare !dbg !806 ptr @GetSignatureDigest(ptr noundef) local_unnamed_addr #4

declare !dbg !811 ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !814 ptr @DestroySignatureInfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @HashStringInfoType(ptr noundef %string_info) local_unnamed_addr #0 !dbg !817 {
entry:
  call void @llvm.dbg.value(metadata ptr %string_info, metadata !819, metadata !DIExpression()), !dbg !824
  %call = tail call ptr @AcquireSignatureInfo() #12, !dbg !825
  call void @llvm.dbg.value(metadata ptr %call, metadata !822, metadata !DIExpression()), !dbg !824
  tail call void @UpdateSignature(ptr noundef %call, ptr noundef %string_info) #12, !dbg !826
  tail call void @FinalizeSignature(ptr noundef %call) #12, !dbg !827
  %call1 = tail call ptr @GetSignatureDigest(ptr noundef %call) #12, !dbg !828
  %call2 = tail call ptr @GetStringInfoDatum(ptr noundef %call1) #12, !dbg !829
  call void @llvm.dbg.value(metadata ptr %call2, metadata !820, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i64 0, metadata !823, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i64 0, metadata !821, metadata !DIExpression()), !dbg !824
  br label %for.body, !dbg !830

for.body:                                         ; preds = %entry, %for.body
  %hash.011 = phi i64 [ 0, %entry ], [ %xor, %for.body ]
  %i.010 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %hash.011, metadata !823, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i64 %i.010, metadata !821, metadata !DIExpression()), !dbg !824
  %arrayidx = getelementptr inbounds i8, ptr %call2, i64 %i.010, !dbg !832
  %0 = load i8, ptr %arrayidx, align 1, !dbg !832, !tbaa !782
  %conv = zext i8 %0 to i64, !dbg !832
  %xor = xor i64 %hash.011, %conv, !dbg !834
  call void @llvm.dbg.value(metadata i64 %xor, metadata !823, metadata !DIExpression()), !dbg !824
  %inc = add nuw nsw i64 %i.010, 1, !dbg !835
  call void @llvm.dbg.value(metadata i64 %inc, metadata !821, metadata !DIExpression()), !dbg !824
  %exitcond.not = icmp eq i64 %inc, 8, !dbg !836
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !830, !llvm.loop !837

for.end:                                          ; preds = %for.body
  %call3 = tail call ptr @DestroySignatureInfo(ptr noundef %call) #12, !dbg !839
  call void @llvm.dbg.value(metadata ptr %call3, metadata !822, metadata !DIExpression()), !dbg !824
  ret i64 %xor, !dbg !840
}

; Function Attrs: nounwind uwtable
define dso_local i32 @InsertValueInLinkedList(ptr nocapture noundef %list_info, i64 noundef %index, ptr noundef %value) local_unnamed_addr #0 !dbg !841 {
entry:
  call void @llvm.dbg.value(metadata ptr %list_info, metadata !845, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64 %index, metadata !846, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata ptr %value, metadata !847, metadata !DIExpression()), !dbg !856
  %cmp = icmp eq ptr %value, null, !dbg !857
  br i1 %cmp, label %cleanup, label %if.end, !dbg !859

if.end:                                           ; preds = %entry
  %elements = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 1, !dbg !860
  %0 = load i64, ptr %elements, align 8, !dbg !860, !tbaa !191
  %cmp1 = icmp ult i64 %0, %index, !dbg !862
  br i1 %cmp1, label %cleanup, label %lor.lhs.false, !dbg !863

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i64, ptr %list_info, align 8, !dbg !864, !tbaa !198
  %cmp3 = icmp eq i64 %0, %1, !dbg !865
  br i1 %cmp3, label %cleanup, label %if.end5, !dbg !866

if.end5:                                          ; preds = %lor.lhs.false
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 16) #11, !dbg !867
  call void @llvm.dbg.value(metadata ptr %call, metadata !848, metadata !DIExpression()), !dbg !856
  %cmp6 = icmp eq ptr %call, null, !dbg !868
  br i1 %cmp6, label %cleanup, label %if.end8, !dbg !870

if.end8:                                          ; preds = %if.end5
  store ptr %value, ptr %call, align 8, !dbg !871, !tbaa !206
  %next10 = getelementptr inbounds %struct._ElementInfo, ptr %call, i64 0, i32 1, !dbg !872
  store ptr null, ptr %next10, align 8, !dbg !873, !tbaa !210
  %semaphore = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 5, !dbg !874
  %2 = load ptr, ptr %semaphore, align 8, !dbg !874, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %2) #12, !dbg !875
  %3 = load i64, ptr %elements, align 8, !dbg !876, !tbaa !191
  %cmp12 = icmp eq i64 %3, 0, !dbg !877
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !878

if.then13:                                        ; preds = %if.end8
  %next14 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 4, !dbg !879
  %4 = load ptr, ptr %next14, align 8, !dbg !879, !tbaa !216
  %cmp15 = icmp eq ptr %4, null, !dbg !882
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !883

if.then16:                                        ; preds = %if.then13
  store ptr %call, ptr %next14, align 8, !dbg !884, !tbaa !216
  br label %if.end18, !dbg !885

if.end18:                                         ; preds = %if.then16, %if.then13
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 2, !dbg !886
  store ptr %call, ptr %head, align 8, !dbg !887, !tbaa !261
  %tail = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 3, !dbg !888
  store ptr %call, ptr %tail, align 8, !dbg !889, !tbaa !228
  br label %if.end60, !dbg !890

if.else:                                          ; preds = %if.end8
  %cmp19 = icmp eq i64 %index, 0, !dbg !891
  br i1 %cmp19, label %if.then20, label %if.else30, !dbg !892

if.then20:                                        ; preds = %if.else
  %next21 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 4, !dbg !893
  %5 = load ptr, ptr %next21, align 8, !dbg !893, !tbaa !216
  %head22 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 2, !dbg !896
  %6 = load ptr, ptr %head22, align 8, !dbg !896, !tbaa !261
  %cmp23 = icmp eq ptr %5, %6, !dbg !897
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !898

if.then24:                                        ; preds = %if.then20
  store ptr %call, ptr %next21, align 8, !dbg !899, !tbaa !216
  br label %if.end26, !dbg !900

if.end26:                                         ; preds = %if.then24, %if.then20
  store ptr %6, ptr %next10, align 8, !dbg !901, !tbaa !210
  store ptr %call, ptr %head22, align 8, !dbg !902, !tbaa !261
  br label %if.end60, !dbg !903

if.else30:                                        ; preds = %if.else
  %cmp32 = icmp eq i64 %3, %index, !dbg !904
  br i1 %cmp32, label %if.then33, label %if.else42, !dbg !905

if.then33:                                        ; preds = %if.else30
  %next34 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 4, !dbg !906
  %7 = load ptr, ptr %next34, align 8, !dbg !906, !tbaa !216
  %cmp35 = icmp eq ptr %7, null, !dbg !909
  br i1 %cmp35, label %if.then36, label %if.end38, !dbg !910

if.then36:                                        ; preds = %if.then33
  store ptr %call, ptr %next34, align 8, !dbg !911, !tbaa !216
  br label %if.end38, !dbg !912

if.end38:                                         ; preds = %if.then36, %if.then33
  %tail39 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 3, !dbg !913
  %8 = load ptr, ptr %tail39, align 8, !dbg !913, !tbaa !228
  %next40 = getelementptr inbounds %struct._ElementInfo, ptr %8, i64 0, i32 1, !dbg !914
  store ptr %call, ptr %next40, align 8, !dbg !915, !tbaa !210
  store ptr %call, ptr %tail39, align 8, !dbg !916, !tbaa !228
  br label %if.end60, !dbg !917

if.else42:                                        ; preds = %if.else30
  %head43 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 2, !dbg !918
  %9 = load ptr, ptr %head43, align 8, !dbg !918, !tbaa !261
  call void @llvm.dbg.value(metadata ptr %9, metadata !850, metadata !DIExpression()), !dbg !919
  %next44 = getelementptr inbounds %struct._ElementInfo, ptr %9, i64 0, i32 1, !dbg !920
  %10 = load ptr, ptr %next44, align 8, !dbg !920, !tbaa !210
  store ptr %10, ptr %next10, align 8, !dbg !921, !tbaa !210
  call void @llvm.dbg.value(metadata i64 1, metadata !849, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata ptr %9, metadata !850, metadata !DIExpression()), !dbg !919
  %cmp46114 = icmp sgt i64 %index, 1, !dbg !922
  br i1 %cmp46114, label %for.body, label %for.end, !dbg !925

for.body:                                         ; preds = %if.else42, %for.body
  %element.0116 = phi ptr [ %11, %for.body ], [ %9, %if.else42 ]
  %i.0115 = phi i64 [ %inc, %for.body ], [ 1, %if.else42 ]
  call void @llvm.dbg.value(metadata ptr %element.0116, metadata !850, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata i64 %i.0115, metadata !849, metadata !DIExpression()), !dbg !856
  %next47 = getelementptr inbounds %struct._ElementInfo, ptr %element.0116, i64 0, i32 1, !dbg !926
  %11 = load ptr, ptr %next47, align 8, !dbg !926, !tbaa !210
  call void @llvm.dbg.value(metadata ptr %11, metadata !850, metadata !DIExpression()), !dbg !919
  %next48 = getelementptr inbounds %struct._ElementInfo, ptr %11, i64 0, i32 1, !dbg !928
  %12 = load ptr, ptr %next48, align 8, !dbg !928, !tbaa !210
  store ptr %12, ptr %next10, align 8, !dbg !929, !tbaa !210
  %inc = add nuw nsw i64 %i.0115, 1, !dbg !930
  call void @llvm.dbg.value(metadata i64 %inc, metadata !849, metadata !DIExpression()), !dbg !856
  %exitcond.not = icmp eq i64 %inc, %index, !dbg !922
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !925, !llvm.loop !931

for.end:                                          ; preds = %for.body, %if.else42
  %13 = phi ptr [ %10, %if.else42 ], [ %12, %for.body ], !dbg !933
  %element.0.lcssa = phi ptr [ %9, %if.else42 ], [ %11, %for.body ], !dbg !919
  call void @llvm.dbg.value(metadata ptr %13, metadata !848, metadata !DIExpression()), !dbg !856
  %next51 = getelementptr inbounds %struct._ElementInfo, ptr %element.0.lcssa, i64 0, i32 1, !dbg !934
  store ptr %13, ptr %next51, align 8, !dbg !935, !tbaa !210
  %next52 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 4, !dbg !936
  %14 = load ptr, ptr %next52, align 8, !dbg !936, !tbaa !216
  %next53 = getelementptr inbounds %struct._ElementInfo, ptr %13, i64 0, i32 1, !dbg !938
  %15 = load ptr, ptr %next53, align 8, !dbg !938, !tbaa !210
  %cmp54 = icmp eq ptr %14, %15, !dbg !939
  br i1 %cmp54, label %if.then55, label %if.end60, !dbg !940

if.then55:                                        ; preds = %for.end
  store ptr %13, ptr %next52, align 8, !dbg !941, !tbaa !216
  br label %if.end60, !dbg !942

if.end60:                                         ; preds = %for.end, %if.then55, %if.end26, %if.end38, %if.end18
  %inc62 = add i64 %3, 1, !dbg !943
  store i64 %inc62, ptr %elements, align 8, !dbg !943, !tbaa !191
  %16 = load ptr, ptr %semaphore, align 8, !dbg !944, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #12, !dbg !945
  br label %cleanup, !dbg !946

cleanup:                                          ; preds = %if.end5, %if.end, %lor.lhs.false, %entry, %if.end60
  %retval.0 = phi i32 [ 1, %if.end60 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %if.end5 ], !dbg !856
  ret i32 %retval.0, !dbg !947
}

; Function Attrs: nounwind uwtable
define dso_local i32 @InsertValueInSortedLinkedList(ptr nocapture noundef %list_info, ptr noundef readonly %compare, ptr noundef writeonly %replace, ptr noundef %value) local_unnamed_addr #0 !dbg !948 {
entry:
  call void @llvm.dbg.value(metadata ptr %list_info, metadata !952, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata ptr %compare, metadata !953, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata ptr %replace, metadata !954, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata ptr %value, metadata !955, metadata !DIExpression()), !dbg !959
  %cmp = icmp eq ptr %compare, null, !dbg !960
  %cmp1 = icmp eq ptr %value, null
  %or.cond = or i1 %cmp, %cmp1, !dbg !962
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !962

if.end:                                           ; preds = %entry
  %elements = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 1, !dbg !963
  %0 = load i64, ptr %elements, align 8, !dbg !963, !tbaa !191
  %1 = load i64, ptr %list_info, align 8, !dbg !965, !tbaa !198
  %cmp2 = icmp eq i64 %0, %1, !dbg !966
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !967

if.end4:                                          ; preds = %if.end
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 16) #11, !dbg !968
  call void @llvm.dbg.value(metadata ptr %call, metadata !957, metadata !DIExpression()), !dbg !959
  %cmp5 = icmp eq ptr %call, null, !dbg !969
  br i1 %cmp5, label %cleanup, label %if.end7, !dbg !971

if.end7:                                          ; preds = %if.end4
  store ptr %value, ptr %call, align 8, !dbg !972, !tbaa !206
  call void @llvm.dbg.value(metadata ptr null, metadata !956, metadata !DIExpression()), !dbg !959
  %semaphore = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 5, !dbg !973
  %2 = load ptr, ptr %semaphore, align 8, !dbg !973, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %2) #12, !dbg !974
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 2, !dbg !975
  %next9 = getelementptr inbounds %struct._ElementInfo, ptr %call, i64 0, i32 1, !dbg !976
  %storemerge111 = load ptr, ptr %head, align 8, !dbg !959, !tbaa !231
  store ptr %storemerge111, ptr %next9, align 8, !dbg !959, !tbaa !210
  call void @llvm.dbg.value(metadata ptr null, metadata !956, metadata !DIExpression()), !dbg !959
  %cmp11.not112 = icmp eq ptr %storemerge111, null, !dbg !977
  br i1 %cmp11.not112, label %if.end61, label %while.body.lr.ph, !dbg !978

while.body.lr.ph:                                 ; preds = %if.end7
  %cmp18.not = icmp eq ptr %replace, null
  br i1 %cmp18.not, label %while.body.lr.ph.split.us, label %while.body

while.body.lr.ph.split.us:                        ; preds = %while.body.lr.ph
  call void @llvm.dbg.value(metadata ptr null, metadata !956, metadata !DIExpression()), !dbg !959
  %3 = load ptr, ptr %storemerge111, align 8, !dbg !979, !tbaa !206
  %call14.us116 = tail call i32 %compare(ptr noundef nonnull %value, ptr noundef %3) #12, !dbg !981
  call void @llvm.dbg.value(metadata i32 %call14.us116, metadata !958, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !959
  %cmp15.us117 = icmp slt i32 %call14.us116, 0, !dbg !982
  br i1 %cmp15.us117, label %while.end, label %lor.lhs.false17.us, !dbg !984

while.body.us:                                    ; preds = %lor.lhs.false17.us
  call void @llvm.dbg.value(metadata ptr %5, metadata !956, metadata !DIExpression()), !dbg !959
  %4 = load ptr, ptr %storemerge.us, align 8, !dbg !979, !tbaa !206
  %call14.us = tail call i32 %compare(ptr noundef %value, ptr noundef %4) #12, !dbg !981
  call void @llvm.dbg.value(metadata i32 %call14.us, metadata !958, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !959
  %cmp15.us = icmp slt i32 %call14.us, 0, !dbg !982
  br i1 %cmp15.us, label %if.then42, label %lor.lhs.false17.us, !dbg !984, !llvm.loop !985

lor.lhs.false17.us:                               ; preds = %while.body.lr.ph.split.us, %while.body.us
  %5 = load ptr, ptr %next9, align 8, !dbg !987, !tbaa !210
  call void @llvm.dbg.value(metadata ptr %5, metadata !956, metadata !DIExpression()), !dbg !959
  %next49.us = getelementptr inbounds %struct._ElementInfo, ptr %5, i64 0, i32 1, !dbg !988
  %storemerge.us = load ptr, ptr %next49.us, align 8, !dbg !959, !tbaa !231
  store ptr %storemerge.us, ptr %next9, align 8, !dbg !959, !tbaa !210
  %cmp11.not.us = icmp eq ptr %storemerge.us, null, !dbg !977
  br i1 %cmp11.not.us, label %if.then57, label %while.body.us, !dbg !978, !llvm.loop !985

while.body:                                       ; preds = %while.body.lr.ph, %if.end46
  %storemerge114 = phi ptr [ %storemerge, %if.end46 ], [ %storemerge111, %while.body.lr.ph ]
  %element.0113 = phi ptr [ %7, %if.end46 ], [ null, %while.body.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %element.0113, metadata !956, metadata !DIExpression()), !dbg !959
  %6 = load ptr, ptr %storemerge114, align 8, !dbg !979, !tbaa !206
  %call14 = tail call i32 %compare(ptr noundef %value, ptr noundef %6) #12, !dbg !981
  call void @llvm.dbg.value(metadata i32 %call14, metadata !958, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !959
  %cmp15 = icmp slt i32 %call14, 0, !dbg !982
  br i1 %cmp15, label %if.end39, label %lor.lhs.false17, !dbg !984

lor.lhs.false17:                                  ; preds = %while.body
  %cmp20 = icmp eq i32 %call14, 0
  %7 = load ptr, ptr %next9, align 8, !dbg !989, !tbaa !210
  br i1 %cmp20, label %if.then25, label %if.end46, !dbg !990

if.then25:                                        ; preds = %lor.lhs.false17
  %8 = load ptr, ptr %7, align 8, !dbg !991, !tbaa !206
  store ptr %8, ptr %replace, align 8, !dbg !995, !tbaa !231
  %9 = load ptr, ptr %next9, align 8, !dbg !996, !tbaa !210
  %next29 = getelementptr inbounds %struct._ElementInfo, ptr %9, i64 0, i32 1, !dbg !997
  %10 = load ptr, ptr %next29, align 8, !dbg !997, !tbaa !210
  store ptr %10, ptr %next9, align 8, !dbg !998, !tbaa !210
  %cmp31.not = icmp eq ptr %element.0113, null, !dbg !999
  br i1 %cmp31.not, label %if.end37, label %if.then33, !dbg !1001

if.then33:                                        ; preds = %if.then25
  %next34 = getelementptr inbounds %struct._ElementInfo, ptr %element.0113, i64 0, i32 1, !dbg !1002
  %11 = load ptr, ptr %next34, align 8, !dbg !1002, !tbaa !210
  %call35 = tail call ptr @RelinquishMagickMemory(ptr noundef %11) #12, !dbg !1003
  store ptr %call35, ptr %next34, align 8, !dbg !1004, !tbaa !210
  br label %if.end37, !dbg !1005

if.end37:                                         ; preds = %if.then33, %if.then25
  %12 = load i64, ptr %elements, align 8, !dbg !1006, !tbaa !191
  %dec = add i64 %12, -1, !dbg !1006
  store i64 %dec, ptr %elements, align 8, !dbg !1006, !tbaa !191
  br label %if.end39, !dbg !1007

if.end39:                                         ; preds = %while.body, %if.end37
  %cmp40.not = icmp eq ptr %element.0113, null, !dbg !1008
  br i1 %cmp40.not, label %while.end, label %if.then42, !dbg !1010

if.then42:                                        ; preds = %while.body.us, %if.end39
  %element.0110133 = phi ptr [ %element.0113, %if.end39 ], [ %5, %while.body.us ]
  %next43 = getelementptr inbounds %struct._ElementInfo, ptr %element.0110133, i64 0, i32 1, !dbg !1011
  br label %while.end, !dbg !1012

if.end46:                                         ; preds = %lor.lhs.false17
  call void @llvm.dbg.value(metadata ptr %7, metadata !956, metadata !DIExpression()), !dbg !959
  %next49 = getelementptr inbounds %struct._ElementInfo, ptr %7, i64 0, i32 1, !dbg !988
  %storemerge = load ptr, ptr %next49, align 8, !dbg !959, !tbaa !231
  store ptr %storemerge, ptr %next9, align 8, !dbg !959, !tbaa !210
  %cmp11.not = icmp eq ptr %storemerge, null, !dbg !977
  br i1 %cmp11.not, label %if.then57, label %while.body, !dbg !978, !llvm.loop !985

while.end:                                        ; preds = %if.end39, %while.body.lr.ph.split.us, %if.then42
  %next43.sink = phi ptr [ %next43, %if.then42 ], [ %head, %while.body.lr.ph.split.us ], [ %head, %if.end39 ]
  %element.0110128 = phi ptr [ %element.0110133, %if.then42 ], [ null, %while.body.lr.ph.split.us ], [ null, %if.end39 ]
  store ptr %call, ptr %next43.sink, align 8, !dbg !1013, !tbaa !231
  %.pr = load ptr, ptr %next9, align 8, !dbg !1014, !tbaa !210
  %cmp52 = icmp eq ptr %.pr, null, !dbg !1016
  br i1 %cmp52, label %if.then54, label %if.end62, !dbg !1017

if.then54:                                        ; preds = %while.end
  %cmp55.not = icmp eq ptr %element.0110128, null, !dbg !1018
  br i1 %cmp55.not, label %if.end61, label %if.then57, !dbg !1021

if.then57:                                        ; preds = %if.end46, %lor.lhs.false17.us, %if.then54
  %element.0109136 = phi ptr [ %element.0110128, %if.then54 ], [ %5, %lor.lhs.false17.us ], [ %7, %if.end46 ]
  %next58 = getelementptr inbounds %struct._ElementInfo, ptr %element.0109136, i64 0, i32 1, !dbg !1022
  br label %if.end61, !dbg !1023

if.end61:                                         ; preds = %if.then54, %if.end7, %if.then57
  %head.sink = phi ptr [ %next58, %if.then57 ], [ %head, %if.end7 ], [ %head, %if.then54 ]
  store ptr %call, ptr %head.sink, align 8, !dbg !1024, !tbaa !231
  %tail = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 3, !dbg !1025
  store ptr %call, ptr %tail, align 8, !dbg !1026, !tbaa !228
  br label %if.end62, !dbg !1027

if.end62:                                         ; preds = %if.end61, %while.end
  %13 = load i64, ptr %elements, align 8, !dbg !1028, !tbaa !191
  %inc = add i64 %13, 1, !dbg !1028
  store i64 %inc, ptr %elements, align 8, !dbg !1028, !tbaa !191
  %14 = load ptr, ptr %semaphore, align 8, !dbg !1029, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %14) #12, !dbg !1030
  br label %cleanup, !dbg !1031

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end62
  %retval.0 = phi i32 [ 1, %if.end62 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end4 ], !dbg !959
  ret i32 %retval.0, !dbg !1032
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @IsHashmapEmpty(ptr nocapture noundef readonly %hashmap_info) local_unnamed_addr #5 !dbg !1033 {
entry:
  call void @llvm.dbg.value(metadata ptr %hashmap_info, metadata !1037, metadata !DIExpression()), !dbg !1038
  %entries = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 5, !dbg !1039
  %0 = load i64, ptr %entries, align 8, !dbg !1039, !tbaa !611
  %cmp = icmp eq i64 %0, 0, !dbg !1040
  %cond = zext i1 %cmp to i32, !dbg !1041
  ret i32 %cond, !dbg !1042
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @IsLinkedListEmpty(ptr nocapture noundef readonly %list_info) local_unnamed_addr #5 !dbg !1043 {
entry:
  call void @llvm.dbg.value(metadata ptr %list_info, metadata !1047, metadata !DIExpression()), !dbg !1048
  %elements = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 1, !dbg !1049
  %0 = load i64, ptr %elements, align 8, !dbg !1049, !tbaa !191
  %cmp = icmp eq i64 %0, 0, !dbg !1050
  %cond = zext i1 %cmp to i32, !dbg !1051
  ret i32 %cond, !dbg !1052
}

; Function Attrs: nounwind uwtable
define dso_local i32 @LinkedListToArray(ptr nocapture noundef readonly %list_info, ptr noundef writeonly %array) local_unnamed_addr #0 !dbg !1053 {
entry:
  call void @llvm.dbg.value(metadata ptr %list_info, metadata !1057, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata ptr %array, metadata !1058, metadata !DIExpression()), !dbg !1061
  %cmp = icmp eq ptr %array, null, !dbg !1062
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1064

if.end:                                           ; preds = %entry
  %semaphore = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 5, !dbg !1065
  %0 = load ptr, ptr %semaphore, align 8, !dbg !1065, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %0) #12, !dbg !1066
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 2, !dbg !1067
  call void @llvm.dbg.value(metadata ptr undef, metadata !1059, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i64 0, metadata !1060, metadata !DIExpression()), !dbg !1061
  %next.011 = load ptr, ptr %head, align 8, !dbg !1061, !tbaa !231
  call void @llvm.dbg.value(metadata ptr %next.011, metadata !1059, metadata !DIExpression()), !dbg !1061
  %cmp1.not12 = icmp eq ptr %next.011, null, !dbg !1068
  br i1 %cmp1.not12, label %for.end, label %for.body, !dbg !1071

for.body:                                         ; preds = %if.end, %for.body
  %next.014 = phi ptr [ %next.0, %for.body ], [ %next.011, %if.end ]
  %i.013 = phi i64 [ %inc, %for.body ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.013, metadata !1060, metadata !DIExpression()), !dbg !1061
  %1 = load ptr, ptr %next.014, align 8, !dbg !1072, !tbaa !206
  %arrayidx = getelementptr inbounds ptr, ptr %array, i64 %i.013, !dbg !1074
  store ptr %1, ptr %arrayidx, align 8, !dbg !1075, !tbaa !231
  %next2 = getelementptr inbounds %struct._ElementInfo, ptr %next.014, i64 0, i32 1, !dbg !1076
  call void @llvm.dbg.value(metadata ptr undef, metadata !1059, metadata !DIExpression()), !dbg !1061
  %inc = add nuw nsw i64 %i.013, 1, !dbg !1077
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1060, metadata !DIExpression()), !dbg !1061
  %next.0 = load ptr, ptr %next2, align 8, !dbg !1061, !tbaa !231
  call void @llvm.dbg.value(metadata ptr %next.0, metadata !1059, metadata !DIExpression()), !dbg !1061
  %cmp1.not = icmp eq ptr %next.0, null, !dbg !1068
  br i1 %cmp1.not, label %for.end, label %for.body, !dbg !1071, !llvm.loop !1078

for.end:                                          ; preds = %for.body, %if.end
  %2 = load ptr, ptr %semaphore, align 8, !dbg !1080, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %2) #12, !dbg !1081
  br label %cleanup, !dbg !1082

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], !dbg !1061
  ret i32 %retval.0, !dbg !1083
}

; Function Attrs: nounwind uwtable
define dso_local ptr @NewHashmap(i64 noundef %capacity, ptr noundef %hash, ptr noundef %compare, ptr noundef %relinquish_key, ptr noundef %relinquish_value) local_unnamed_addr #0 !dbg !1084 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %exception29 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata i64 %capacity, metadata !1088, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %hash, metadata !1089, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %compare, metadata !1090, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %relinquish_key, metadata !1091, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata ptr %relinquish_value, metadata !1092, metadata !DIExpression()), !dbg !1115
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 88) #11, !dbg !1116
  call void @llvm.dbg.value(metadata ptr %call, metadata !1093, metadata !DIExpression()), !dbg !1115
  %cmp = icmp eq ptr %call, null, !dbg !1117
  br i1 %cmp, label %if.then, label %if.end, !dbg !1118

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #12, !dbg !1119
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1098, metadata !DIExpression()), !dbg !1119
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #12, !dbg !1119
  %call1 = tail call ptr @__errno_location() #13, !dbg !1119
  %0 = load i32, ptr %call1, align 4, !dbg !1119, !tbaa !1120
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #12, !dbg !1119
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1094, metadata !DIExpression()), !dbg !1122
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1314, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call2) #12, !dbg !1119
  %call4 = call ptr @DestroyString(ptr noundef %call2) #12, !dbg !1119
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1094, metadata !DIExpression()), !dbg !1122
  call void @CatchException(ptr noundef nonnull %exception) #12, !dbg !1119
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #12, !dbg !1119
  call void @MagickCoreTerminus() #12, !dbg !1119
  call void @_exit(i32 noundef 1) #14, !dbg !1119
  unreachable, !dbg !1119

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 88) #12, !dbg !1123
  %cmp8.not = icmp eq ptr %hash, null, !dbg !1124
  %spec.select = select i1 %cmp8.not, ptr @HashPointerType, ptr %hash, !dbg !1126
  store ptr %spec.select, ptr %call, align 8, !dbg !1115, !tbaa !646
  %compare12 = getelementptr inbounds %struct._HashmapInfo, ptr %call, i64 0, i32 1, !dbg !1127
  store ptr %compare, ptr %compare12, align 8, !dbg !1115, !tbaa !676
  %relinquish_key17 = getelementptr inbounds %struct._HashmapInfo, ptr %call, i64 0, i32 2, !dbg !1128
  store ptr %relinquish_key, ptr %relinquish_key17, align 8, !dbg !1129, !tbaa !360
  %relinquish_value18 = getelementptr inbounds %struct._HashmapInfo, ptr %call, i64 0, i32 3, !dbg !1130
  store ptr %relinquish_value, ptr %relinquish_value18, align 8, !dbg !1131, !tbaa !371
  %entries = getelementptr inbounds %struct._HashmapInfo, ptr %call, i64 0, i32 5, !dbg !1132
  store i64 0, ptr %entries, align 8, !dbg !1133, !tbaa !611
  %capacity19 = getelementptr inbounds %struct._HashmapInfo, ptr %call, i64 0, i32 4, !dbg !1134
  store i64 %capacity, ptr %capacity19, align 8, !dbg !1135, !tbaa !324
  %map = getelementptr inbounds %struct._HashmapInfo, ptr %call, i64 0, i32 8, !dbg !1136
  store ptr null, ptr %map, align 8, !dbg !1137, !tbaa !329
  %cmp20.not = icmp eq i64 %capacity, -1, !dbg !1138
  br i1 %cmp20.not, label %if.then27, label %if.end24, !dbg !1140

if.end24:                                         ; preds = %if.end
  %add = add nuw i64 %capacity, 1, !dbg !1141
  %call22 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #15, !dbg !1142
  store ptr %call22, ptr %map, align 8, !dbg !1143, !tbaa !329
  %cmp26 = icmp eq ptr %call22, null, !dbg !1144
  br i1 %cmp26, label %if.then27, label %if.end35, !dbg !1145

if.then27:                                        ; preds = %if.end, %if.end24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception29) #12, !dbg !1146
  call void @llvm.dbg.declare(metadata ptr %exception29, metadata !1114, metadata !DIExpression()), !dbg !1146
  call void @GetExceptionInfo(ptr noundef nonnull %exception29) #12, !dbg !1146
  %call30 = tail call ptr @__errno_location() #13, !dbg !1146
  %1 = load i32, ptr %call30, align 4, !dbg !1146, !tbaa !1120
  %call31 = call ptr @GetExceptionMessage(i32 noundef %1) #12, !dbg !1146
  call void @llvm.dbg.value(metadata ptr %call31, metadata !1111, metadata !DIExpression()), !dbg !1147
  %call32 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1331, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call31) #12, !dbg !1146
  %call33 = call ptr @DestroyString(ptr noundef %call31) #12, !dbg !1146
  call void @llvm.dbg.value(metadata ptr %call33, metadata !1111, metadata !DIExpression()), !dbg !1147
  call void @CatchException(ptr noundef nonnull %exception29) #12, !dbg !1146
  %call34 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception29) #12, !dbg !1146
  call void @MagickCoreTerminus() #12, !dbg !1146
  call void @_exit(i32 noundef 1) #14, !dbg !1146
  unreachable, !dbg !1146

if.end35:                                         ; preds = %if.end24
  %mul = shl i64 %capacity, 3, !dbg !1148
  %call37 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call22, i32 noundef 0, i64 noundef %mul) #12, !dbg !1149
  %call38 = tail call ptr @AllocateSemaphoreInfo() #12, !dbg !1150
  %semaphore = getelementptr inbounds %struct._HashmapInfo, ptr %call, i64 0, i32 9, !dbg !1151
  store ptr %call38, ptr %semaphore, align 8, !dbg !1152, !tbaa !318
  %signature = getelementptr inbounds %struct._HashmapInfo, ptr %call, i64 0, i32 10, !dbg !1153
  store i64 2880220587, ptr %signature, align 8, !dbg !1154, !tbaa !435
  ret ptr %call, !dbg !1155
}

declare !dbg !1156 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1160 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #7

declare !dbg !1164 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !1168 ptr @DestroyString(ptr noundef) local_unnamed_addr #4

declare !dbg !1171 void @CatchException(ptr noundef) local_unnamed_addr #4

declare !dbg !1172 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !1175 void @MagickCoreTerminus() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #8

declare !dbg !1179 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0,1)
declare !dbg !1182 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #9

declare !dbg !1185 ptr @AllocateSemaphoreInfo() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @NewLinkedList(i64 noundef %capacity) local_unnamed_addr #0 !dbg !1188 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata i64 %capacity, metadata !1192, metadata !DIExpression()), !dbg !1198
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 56) #11, !dbg !1199
  call void @llvm.dbg.value(metadata ptr %call, metadata !1193, metadata !DIExpression()), !dbg !1198
  %cmp = icmp eq ptr %call, null, !dbg !1200
  br i1 %cmp, label %if.then, label %if.end, !dbg !1201

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #12, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1197, metadata !DIExpression()), !dbg !1202
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #12, !dbg !1202
  %call1 = tail call ptr @__errno_location() #13, !dbg !1202
  %0 = load i32, ptr %call1, align 4, !dbg !1202, !tbaa !1120
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #12, !dbg !1202
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1194, metadata !DIExpression()), !dbg !1203
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1369, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call2) #12, !dbg !1202
  %call4 = call ptr @DestroyString(ptr noundef %call2) #12, !dbg !1202
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1194, metadata !DIExpression()), !dbg !1203
  call void @CatchException(ptr noundef nonnull %exception) #12, !dbg !1202
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #12, !dbg !1202
  call void @MagickCoreTerminus() #12, !dbg !1202
  call void @_exit(i32 noundef 1) #14, !dbg !1202
  unreachable, !dbg !1202

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 56) #12, !dbg !1204
  %cmp7 = icmp eq i64 %capacity, 0, !dbg !1205
  %spec.select = select i1 %cmp7, i64 -1, i64 %capacity, !dbg !1206
  store i64 %spec.select, ptr %call, align 8, !dbg !1207, !tbaa !198
  %elements = getelementptr inbounds %struct._LinkedListInfo, ptr %call, i64 0, i32 1, !dbg !1208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %elements, i8 0, i64 32, i1 false), !dbg !1209
  %call9 = tail call ptr @AllocateSemaphoreInfo() #12, !dbg !1210
  %semaphore = getelementptr inbounds %struct._LinkedListInfo, ptr %call, i64 0, i32 5, !dbg !1211
  store ptr %call9, ptr %semaphore, align 8, !dbg !1212, !tbaa !212
  %signature = getelementptr inbounds %struct._LinkedListInfo, ptr %call, i64 0, i32 6, !dbg !1213
  store i64 2880220587, ptr %signature, align 8, !dbg !1214, !tbaa !421
  ret ptr %call, !dbg !1215
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PutEntryInHashmap(ptr nocapture noundef %hashmap_info, ptr noundef %key, ptr noundef %value) local_unnamed_addr #0 !dbg !1216 {
entry:
  %exception.i.i = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %hashmap_info, metadata !1220, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata ptr %key, metadata !1221, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata ptr %value, metadata !1222, metadata !DIExpression()), !dbg !1235
  %cmp = icmp eq ptr %key, null, !dbg !1236
  %cmp2 = icmp eq ptr %value, null
  %or.cond = or i1 %cmp, %cmp2, !dbg !1238
  br i1 %or.cond, label %cleanup72, label %if.end, !dbg !1238

if.end:                                           ; preds = %entry
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 24) #11, !dbg !1239
  call void @llvm.dbg.value(metadata ptr %call, metadata !1224, metadata !DIExpression()), !dbg !1235
  %cmp3 = icmp eq ptr %call, null, !dbg !1240
  br i1 %cmp3, label %cleanup72, label %if.end5, !dbg !1242

if.end5:                                          ; preds = %if.end
  %semaphore = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 9, !dbg !1243
  %0 = load ptr, ptr %semaphore, align 8, !dbg !1243, !tbaa !318
  tail call void @LockSemaphoreInfo(ptr noundef %0) #12, !dbg !1244
  %1 = load ptr, ptr %hashmap_info, align 8, !dbg !1245, !tbaa !646
  %call6 = tail call i64 %1(ptr noundef nonnull %key) #12, !dbg !1246
  store i64 %call6, ptr %call, align 8, !dbg !1247, !tbaa !670
  %key8 = getelementptr inbounds %struct._EntryInfo, ptr %call, i64 0, i32 1, !dbg !1248
  store ptr %key, ptr %key8, align 8, !dbg !1249, !tbaa !364
  %value9 = getelementptr inbounds %struct._EntryInfo, ptr %call, i64 0, i32 2, !dbg !1250
  store ptr %value, ptr %value9, align 8, !dbg !1251, !tbaa !375
  %map = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 8, !dbg !1252
  %2 = load ptr, ptr %map, align 8, !dbg !1252, !tbaa !329
  %capacity = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 4, !dbg !1253
  %3 = load i64, ptr %capacity, align 8, !dbg !1253, !tbaa !324
  %rem = urem i64 %call6, %3, !dbg !1254
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %rem, !dbg !1255
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !1255, !tbaa !231
  call void @llvm.dbg.value(metadata ptr %4, metadata !1225, metadata !DIExpression()), !dbg !1235
  %cmp11 = icmp eq ptr %4, null, !dbg !1256
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !1257

if.then12:                                        ; preds = %if.end5
  %call13 = tail call ptr @NewLinkedList(i64 noundef 0), !dbg !1258
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1225, metadata !DIExpression()), !dbg !1235
  %5 = load ptr, ptr %map, align 8, !dbg !1260, !tbaa !329
  %6 = load i64, ptr %call, align 8, !dbg !1261, !tbaa !670
  %7 = load i64, ptr %capacity, align 8, !dbg !1262, !tbaa !324
  %rem17 = urem i64 %6, %7, !dbg !1263
  %arrayidx18 = getelementptr inbounds ptr, ptr %5, i64 %rem17, !dbg !1264
  store ptr %call13, ptr %arrayidx18, align 8, !dbg !1265, !tbaa !231
  br label %if.end.i132, !dbg !1266

if.else:                                          ; preds = %if.end5
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %4, i64 0, i32 2, !dbg !1267
  %8 = load ptr, ptr %head, align 8, !dbg !1267, !tbaa !261
  %next19 = getelementptr inbounds %struct._LinkedListInfo, ptr %4, i64 0, i32 4, !dbg !1268
  store ptr %8, ptr %next19, align 8, !dbg !1269, !tbaa !216
  call void @llvm.dbg.value(metadata ptr %4, metadata !338, metadata !DIExpression()) #12, !dbg !1270
  %semaphore.i = getelementptr inbounds %struct._LinkedListInfo, ptr %4, i64 0, i32 5, !dbg !1272
  %9 = load ptr, ptr %semaphore.i, align 8, !dbg !1272, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %9) #12, !dbg !1273
  %10 = load ptr, ptr %next19, align 8, !dbg !1274, !tbaa !216
  %cmp.i = icmp eq ptr %10, null, !dbg !1275
  br i1 %cmp.i, label %GetNextValueInLinkedList.exit.thread, label %GetNextValueInLinkedList.exit, !dbg !1276

GetNextValueInLinkedList.exit.thread:             ; preds = %if.else
  %11 = load ptr, ptr %semaphore.i, align 8, !dbg !1270, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #12, !dbg !1270
  call void @llvm.dbg.value(metadata ptr %12, metadata !1223, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i64 0, metadata !1226, metadata !DIExpression()), !dbg !1235
  br label %if.end.i132, !dbg !1277

GetNextValueInLinkedList.exit:                    ; preds = %if.else
  %12 = load ptr, ptr %10, align 8, !dbg !1278, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %12, metadata !343, metadata !DIExpression()) #12, !dbg !1270
  %next5.i = getelementptr inbounds %struct._ElementInfo, ptr %10, i64 0, i32 1, !dbg !1279
  %13 = load ptr, ptr %next5.i, align 8, !dbg !1279, !tbaa !210
  store ptr %13, ptr %next19, align 8, !dbg !1280, !tbaa !216
  %14 = load ptr, ptr %semaphore.i, align 8, !dbg !1270, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %14) #12, !dbg !1270
  call void @llvm.dbg.value(metadata ptr %12, metadata !1223, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i64 0, metadata !1226, metadata !DIExpression()), !dbg !1235
  %cmp21.not155 = icmp eq ptr %12, null, !dbg !1281
  br i1 %cmp21.not155, label %if.end.i132, label %for.body.lr.ph, !dbg !1277

for.body.lr.ph:                                   ; preds = %GetNextValueInLinkedList.exit
  %compare26 = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 1
  br label %for.body, !dbg !1277

for.body:                                         ; preds = %for.body.lr.ph, %GetNextValueInLinkedList.exit130
  %i.0157 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %GetNextValueInLinkedList.exit130 ]
  %entry1.0156 = phi ptr [ %12, %for.body.lr.ph ], [ %retval.0.i129, %GetNextValueInLinkedList.exit130 ]
  call void @llvm.dbg.value(metadata i64 %i.0157, metadata !1226, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata ptr %entry1.0156, metadata !1223, metadata !DIExpression()), !dbg !1235
  %15 = load i64, ptr %entry1.0156, align 8, !dbg !1282, !tbaa !670
  %16 = load i64, ptr %call, align 8, !dbg !1283, !tbaa !670
  %cmp24 = icmp eq i64 %15, %16, !dbg !1284
  br i1 %cmp24, label %if.then25, label %if.end52, !dbg !1285

if.then25:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 1, metadata !1227, metadata !DIExpression()), !dbg !1286
  %17 = load ptr, ptr %compare26, align 8, !dbg !1287, !tbaa !676
  %cmp27.not = icmp eq ptr %17, null, !dbg !1289
  br i1 %cmp27.not, label %if.then34, label %if.end32, !dbg !1290

if.end32:                                         ; preds = %if.then25
  %key30 = getelementptr inbounds %struct._EntryInfo, ptr %entry1.0156, i64 0, i32 1, !dbg !1291
  %18 = load ptr, ptr %key30, align 8, !dbg !1291, !tbaa !364
  %call31 = tail call i32 %17(ptr noundef %key, ptr noundef %18) #12, !dbg !1292
  call void @llvm.dbg.value(metadata i32 %call31, metadata !1227, metadata !DIExpression()), !dbg !1286
  %cmp33.not = icmp eq i32 %call31, 0, !dbg !1293
  br i1 %cmp33.not, label %if.end52, label %if.then34, !dbg !1295

if.then34:                                        ; preds = %if.then25, %if.end32
  %call35 = tail call ptr @RemoveElementFromLinkedList(ptr noundef nonnull %4, i64 noundef %i.0157), !dbg !1296
  %relinquish_key = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 2, !dbg !1298
  %19 = load ptr, ptr %relinquish_key, align 8, !dbg !1298, !tbaa !360
  %cmp36.not = icmp eq ptr %19, null, !dbg !1300
  br i1 %cmp36.not, label %if.end42, label %if.then37, !dbg !1301

if.then37:                                        ; preds = %if.then34
  %key39 = getelementptr inbounds %struct._EntryInfo, ptr %entry1.0156, i64 0, i32 1, !dbg !1302
  %20 = load ptr, ptr %key39, align 8, !dbg !1302, !tbaa !364
  %call40 = tail call ptr %19(ptr noundef %20) #12, !dbg !1303
  store ptr %call40, ptr %key39, align 8, !dbg !1304, !tbaa !364
  br label %if.end42, !dbg !1305

if.end42:                                         ; preds = %if.then37, %if.then34
  %relinquish_value = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 3, !dbg !1306
  %21 = load ptr, ptr %relinquish_value, align 8, !dbg !1306, !tbaa !371
  %cmp43.not = icmp eq ptr %21, null, !dbg !1308
  br i1 %cmp43.not, label %cleanup, label %if.then44, !dbg !1309

if.then44:                                        ; preds = %if.end42
  %value46 = getelementptr inbounds %struct._EntryInfo, ptr %entry1.0156, i64 0, i32 2, !dbg !1310
  %22 = load ptr, ptr %value46, align 8, !dbg !1310, !tbaa !375
  %call47 = tail call ptr %21(ptr noundef %22) #12, !dbg !1311
  store ptr %call47, ptr %value46, align 8, !dbg !1312, !tbaa !375
  br label %cleanup, !dbg !1313

cleanup:                                          ; preds = %if.end42, %if.then44
  %call50 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %entry1.0156) #12, !dbg !1314
  call void @llvm.dbg.value(metadata ptr %call50, metadata !1223, metadata !DIExpression()), !dbg !1235
  br label %if.end.i132

if.end52:                                         ; preds = %if.end32, %for.body
  call void @llvm.dbg.value(metadata ptr %4, metadata !338, metadata !DIExpression()) #12, !dbg !1315
  %23 = load ptr, ptr %semaphore.i, align 8, !dbg !1317, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %23) #12, !dbg !1318
  %24 = load ptr, ptr %next19, align 8, !dbg !1319, !tbaa !216
  %cmp.i126 = icmp eq ptr %24, null, !dbg !1320
  br i1 %cmp.i126, label %GetNextValueInLinkedList.exit130, label %if.end.i128, !dbg !1321

if.end.i128:                                      ; preds = %if.end52
  %25 = load ptr, ptr %24, align 8, !dbg !1322, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %25, metadata !343, metadata !DIExpression()) #12, !dbg !1315
  %next5.i127 = getelementptr inbounds %struct._ElementInfo, ptr %24, i64 0, i32 1, !dbg !1323
  %26 = load ptr, ptr %next5.i127, align 8, !dbg !1323, !tbaa !210
  store ptr %26, ptr %next19, align 8, !dbg !1324, !tbaa !216
  br label %GetNextValueInLinkedList.exit130, !dbg !1325

GetNextValueInLinkedList.exit130:                 ; preds = %if.end52, %if.end.i128
  %retval.0.i129 = phi ptr [ %25, %if.end.i128 ], [ null, %if.end52 ], !dbg !1315
  %27 = load ptr, ptr %semaphore.i, align 8, !dbg !1315, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %27) #12, !dbg !1315
  call void @llvm.dbg.value(metadata ptr %retval.0.i129, metadata !1223, metadata !DIExpression()), !dbg !1235
  %inc = add i64 %i.0157, 1, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1226, metadata !DIExpression()), !dbg !1235
  %cmp21.not = icmp eq ptr %retval.0.i129, null, !dbg !1281
  br i1 %cmp21.not, label %if.end.i132, label %for.body, !dbg !1277, !llvm.loop !1327

if.end.i132:                                      ; preds = %GetNextValueInLinkedList.exit130, %GetNextValueInLinkedList.exit.thread, %GetNextValueInLinkedList.exit, %if.then12, %cleanup
  %list_info.0 = phi ptr [ %call13, %if.then12 ], [ %4, %cleanup ], [ %4, %GetNextValueInLinkedList.exit ], [ %4, %GetNextValueInLinkedList.exit.thread ], [ %4, %GetNextValueInLinkedList.exit130 ], !dbg !1235
  call void @llvm.dbg.value(metadata ptr %list_info.0, metadata !1225, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata ptr %list_info.0, metadata !845, metadata !DIExpression()) #12, !dbg !1329
  call void @llvm.dbg.value(metadata i64 0, metadata !846, metadata !DIExpression()) #12, !dbg !1329
  call void @llvm.dbg.value(metadata ptr %call, metadata !847, metadata !DIExpression()) #12, !dbg !1329
  %elements.i = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info.0, i64 0, i32 1, !dbg !1332
  %28 = load i64, ptr %elements.i, align 8, !dbg !1332, !tbaa !191
  %29 = load i64, ptr %list_info.0, align 8, !dbg !1333, !tbaa !198
  %cmp3.i = icmp eq i64 %28, %29, !dbg !1334
  br i1 %cmp3.i, label %if.then57, label %if.end5.i, !dbg !1335

if.end5.i:                                        ; preds = %if.end.i132
  %call.i = tail call ptr @AcquireMagickMemory(i64 noundef 16) #11, !dbg !1336
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !848, metadata !DIExpression()) #12, !dbg !1329
  %cmp6.i = icmp eq ptr %call.i, null, !dbg !1337
  br i1 %cmp6.i, label %if.then57, label %if.end8.i, !dbg !1338

if.end8.i:                                        ; preds = %if.end5.i
  store ptr %call, ptr %call.i, align 8, !dbg !1339, !tbaa !206
  %next10.i = getelementptr inbounds %struct._ElementInfo, ptr %call.i, i64 0, i32 1, !dbg !1340
  store ptr null, ptr %next10.i, align 8, !dbg !1341, !tbaa !210
  %semaphore.i133 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info.0, i64 0, i32 5, !dbg !1342
  %30 = load ptr, ptr %semaphore.i133, align 8, !dbg !1342, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %30) #12, !dbg !1343
  %31 = load i64, ptr %elements.i, align 8, !dbg !1344, !tbaa !191
  %cmp12.i = icmp eq i64 %31, 0, !dbg !1345
  %next14.i = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info.0, i64 0, i32 4, !dbg !1346
  %32 = load ptr, ptr %next14.i, align 8, !dbg !1346, !tbaa !216
  br i1 %cmp12.i, label %if.then13.i, label %if.else.i, !dbg !1347

if.then13.i:                                      ; preds = %if.end8.i
  %cmp15.i = icmp eq ptr %32, null, !dbg !1348
  br i1 %cmp15.i, label %if.then16.i, label %if.end18.i, !dbg !1349

if.then16.i:                                      ; preds = %if.then13.i
  store ptr %call.i, ptr %next14.i, align 8, !dbg !1350, !tbaa !216
  br label %if.end18.i, !dbg !1351

if.end18.i:                                       ; preds = %if.then16.i, %if.then13.i
  %head.i = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info.0, i64 0, i32 2, !dbg !1352
  store ptr %call.i, ptr %head.i, align 8, !dbg !1353, !tbaa !261
  %tail.i = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info.0, i64 0, i32 3, !dbg !1354
  br label %if.end60, !dbg !1355

if.else.i:                                        ; preds = %if.end8.i
  %head22.i = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info.0, i64 0, i32 2, !dbg !1356
  %33 = load ptr, ptr %head22.i, align 8, !dbg !1356, !tbaa !261
  %cmp23.i = icmp eq ptr %32, %33, !dbg !1357
  br i1 %cmp23.i, label %if.then24.i, label %if.end26.i, !dbg !1358

if.then24.i:                                      ; preds = %if.else.i
  store ptr %call.i, ptr %next14.i, align 8, !dbg !1359, !tbaa !216
  br label %if.end26.i, !dbg !1360

if.end26.i:                                       ; preds = %if.then24.i, %if.else.i
  store ptr %33, ptr %next10.i, align 8, !dbg !1361, !tbaa !210
  br label %if.end60, !dbg !1362

if.then57:                                        ; preds = %if.end.i132, %if.end5.i
  %call58 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #12, !dbg !1363
  call void @llvm.dbg.value(metadata ptr %call58, metadata !1224, metadata !DIExpression()), !dbg !1235
  br label %cleanup72.sink.split, !dbg !1365

if.end60:                                         ; preds = %if.end26.i, %if.end18.i
  %head22.i.sink = phi ptr [ %head22.i, %if.end26.i ], [ %tail.i, %if.end18.i ]
  store ptr %call.i, ptr %head22.i.sink, align 8, !dbg !1346, !tbaa !231
  %inc62.i = add i64 %31, 1, !dbg !1366
  store i64 %inc62.i, ptr %elements.i, align 8, !dbg !1366, !tbaa !191
  %34 = load ptr, ptr %semaphore.i133, align 8, !dbg !1367, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %34) #12, !dbg !1368
  %35 = load i64, ptr %elements.i, align 8, !dbg !1369, !tbaa !191
  %36 = load i64, ptr %capacity, align 8, !dbg !1371, !tbaa !324
  %sub = add i64 %36, -1, !dbg !1372
  %cmp62.not = icmp ult i64 %35, %sub, !dbg !1373
  br i1 %cmp62.not, label %if.end69, label %for.body.i, !dbg !1374

for.body.i:                                       ; preds = %if.end60, %for.inc.i
  %i.0101.i = phi i64 [ %inc.i, %for.inc.i ], [ 0, %if.end60 ]
  call void @llvm.dbg.value(metadata i64 %i.0101.i, metadata !1375, metadata !DIExpression()) #12, !dbg !1392
  %arrayidx.i = getelementptr inbounds [20 x i64], ptr @__const.IncreaseHashmapCapacity.capacities, i64 0, i64 %i.0101.i, !dbg !1395
  %37 = load i64, ptr %arrayidx.i, align 8, !dbg !1395, !tbaa !1399
  %cmp3.i135 = icmp ult i64 %36, %37, !dbg !1400
  br i1 %cmp3.i135, label %for.end.i, label %for.inc.i, !dbg !1401

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i64 %i.0101.i, 1, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !1375, metadata !DIExpression()) #12, !dbg !1392
  %exitcond.not.i = icmp eq i64 %inc.i, 20, !dbg !1403
  br i1 %exitcond.not.i, label %cleanup72.sink.split, label %for.body.i, !dbg !1404, !llvm.loop !1405

for.end.i:                                        ; preds = %for.body.i
  %cmp4.i = icmp ugt i64 %i.0101.i, 18, !dbg !1407
  br i1 %cmp4.i, label %cleanup72.sink.split, label %if.end6.i, !dbg !1409

if.end6.i:                                        ; preds = %for.end.i
  %add.i = add nuw nsw i64 %i.0101.i, 1, !dbg !1410
  %arrayidx7.i = getelementptr inbounds [20 x i64], ptr @__const.IncreaseHashmapCapacity.capacities, i64 0, i64 %add.i, !dbg !1411
  %38 = load i64, ptr %arrayidx7.i, align 8, !dbg !1411, !tbaa !1399
  call void @llvm.dbg.value(metadata i64 %38, metadata !1391, metadata !DIExpression()) #12, !dbg !1392
  %add8.i = add i64 %38, 1, !dbg !1412
  %call.i136 = tail call ptr @AcquireQuantumMemory(i64 noundef %add8.i, i64 noundef 8) #15, !dbg !1413
  call void @llvm.dbg.value(metadata ptr %call.i136, metadata !1389, metadata !DIExpression()) #12, !dbg !1392
  %cmp9.i = icmp eq ptr %call.i136, null, !dbg !1414
  br i1 %cmp9.i, label %cleanup72.sink.split, label %if.end11.i, !dbg !1416

if.end11.i:                                       ; preds = %if.end6.i
  %mul.i = shl i64 %38, 3, !dbg !1417
  %call12.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call.i136, i32 noundef 0, i64 noundef %mul.i) #12, !dbg !1418
  call void @llvm.dbg.value(metadata i64 0, metadata !1375, metadata !DIExpression()) #12, !dbg !1392
  %39 = load i64, ptr %capacity, align 8, !dbg !1419, !tbaa !324
  %cmp15104.i = icmp sgt i64 %39, 0, !dbg !1422
  br i1 %cmp15104.i, label %for.body16.i, label %IncreaseHashmapCapacity.exit, !dbg !1423

for.body16.i:                                     ; preds = %if.end11.i, %for.inc43.i
  %40 = phi i64 [ %54, %for.inc43.i ], [ %39, %if.end11.i ]
  %i.1105.i = phi i64 [ %inc44.i, %for.inc43.i ], [ 0, %if.end11.i ]
  call void @llvm.dbg.value(metadata i64 %i.1105.i, metadata !1375, metadata !DIExpression()) #12, !dbg !1392
  %41 = load ptr, ptr %map, align 8, !dbg !1424, !tbaa !329
  %arrayidx18.i = getelementptr inbounds ptr, ptr %41, i64 %i.1105.i, !dbg !1426
  %42 = load ptr, ptr %arrayidx18.i, align 8, !dbg !1426, !tbaa !231
  call void @llvm.dbg.value(metadata ptr %42, metadata !1387, metadata !DIExpression()) #12, !dbg !1392
  %cmp19.i = icmp eq ptr %42, null, !dbg !1427
  br i1 %cmp19.i, label %for.inc43.i, label %if.end21.i, !dbg !1429

if.end21.i:                                       ; preds = %for.body16.i
  %semaphore.i137 = getelementptr inbounds %struct._LinkedListInfo, ptr %42, i64 0, i32 5, !dbg !1430
  %43 = load ptr, ptr %semaphore.i137, align 8, !dbg !1430, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %43) #12, !dbg !1431
  %head.i138 = getelementptr inbounds %struct._LinkedListInfo, ptr %42, i64 0, i32 2, !dbg !1432
  %44 = load ptr, ptr %head.i138, align 8, !dbg !1432, !tbaa !261
  call void @llvm.dbg.value(metadata ptr %44, metadata !1390, metadata !DIExpression()) #12, !dbg !1392
  %cmp23.not102.i = icmp eq ptr %44, null, !dbg !1434
  br i1 %cmp23.not102.i, label %for.end39.i, label %for.body24.i, !dbg !1436

for.body24.i:                                     ; preds = %if.end21.i, %if.end33.i
  %next.0103.i = phi ptr [ %45, %if.end33.i ], [ %44, %if.end21.i ]
  call void @llvm.dbg.value(metadata ptr %next.0103.i, metadata !1390, metadata !DIExpression()) #12, !dbg !1392
  call void @llvm.dbg.value(metadata ptr %next.0103.i, metadata !1385, metadata !DIExpression()) #12, !dbg !1392
  %next25.i = getelementptr inbounds %struct._ElementInfo, ptr %next.0103.i, i64 0, i32 1, !dbg !1437
  %45 = load ptr, ptr %next25.i, align 8, !dbg !1437, !tbaa !210
  call void @llvm.dbg.value(metadata ptr %45, metadata !1390, metadata !DIExpression()) #12, !dbg !1392
  %46 = load ptr, ptr %next.0103.i, align 8, !dbg !1439, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %46, metadata !1386, metadata !DIExpression()) #12, !dbg !1392
  %47 = load i64, ptr %46, align 8, !dbg !1440, !tbaa !670
  %rem.i = urem i64 %47, %38, !dbg !1441
  %arrayidx26.i = getelementptr inbounds ptr, ptr %call.i136, i64 %rem.i, !dbg !1442
  %48 = load ptr, ptr %arrayidx26.i, align 8, !dbg !1442, !tbaa !231
  call void @llvm.dbg.value(metadata ptr %48, metadata !1388, metadata !DIExpression()) #12, !dbg !1392
  %cmp27.i = icmp eq ptr %48, null, !dbg !1443
  br i1 %cmp27.i, label %if.then28.i, label %if.end33.i, !dbg !1445

if.then28.i:                                      ; preds = %for.body24.i
  call void @llvm.dbg.value(metadata i64 0, metadata !1192, metadata !DIExpression()) #12, !dbg !1446
  %call.i.i = tail call ptr @AcquireMagickMemory(i64 noundef 56) #11, !dbg !1449
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !1193, metadata !DIExpression()) #12, !dbg !1446
  %cmp.i.i = icmp eq ptr %call.i.i, null, !dbg !1450
  br i1 %cmp.i.i, label %if.then.i.i, label %NewLinkedList.exit.i, !dbg !1451

if.then.i.i:                                      ; preds = %if.then28.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception.i.i) #12, !dbg !1452
  call void @llvm.dbg.declare(metadata ptr %exception.i.i, metadata !1197, metadata !DIExpression()) #12, !dbg !1452
  call void @GetExceptionInfo(ptr noundef nonnull %exception.i.i) #12, !dbg !1452
  %call1.i.i = tail call ptr @__errno_location() #13, !dbg !1452
  %49 = load i32, ptr %call1.i.i, align 4, !dbg !1452, !tbaa !1120
  %call2.i.i = call ptr @GetExceptionMessage(i32 noundef %49) #12, !dbg !1452
  call void @llvm.dbg.value(metadata ptr %call2.i.i, metadata !1194, metadata !DIExpression()) #12, !dbg !1453
  %call3.i.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1369, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call2.i.i) #12, !dbg !1452
  %call4.i.i = call ptr @DestroyString(ptr noundef %call2.i.i) #12, !dbg !1452
  call void @llvm.dbg.value(metadata ptr %call4.i.i, metadata !1194, metadata !DIExpression()) #12, !dbg !1453
  call void @CatchException(ptr noundef nonnull %exception.i.i) #12, !dbg !1452
  %call5.i.i = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception.i.i) #12, !dbg !1452
  call void @MagickCoreTerminus() #12, !dbg !1452
  call void @_exit(i32 noundef 1) #14, !dbg !1452
  unreachable, !dbg !1452

NewLinkedList.exit.i:                             ; preds = %if.then28.i
  %call6.i.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call.i.i, i32 noundef 0, i64 noundef 56) #12, !dbg !1454
  store i64 -1, ptr %call.i.i, align 8, !dbg !1455, !tbaa !198
  %elements.i.i = getelementptr inbounds %struct._LinkedListInfo, ptr %call.i.i, i64 0, i32 1, !dbg !1456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %elements.i.i, i8 0, i64 32, i1 false) #12, !dbg !1457
  %call9.i.i = tail call ptr @AllocateSemaphoreInfo() #12, !dbg !1458
  %semaphore.i.i = getelementptr inbounds %struct._LinkedListInfo, ptr %call.i.i, i64 0, i32 5, !dbg !1459
  store ptr %call9.i.i, ptr %semaphore.i.i, align 8, !dbg !1460, !tbaa !212
  %signature.i.i = getelementptr inbounds %struct._LinkedListInfo, ptr %call.i.i, i64 0, i32 6, !dbg !1461
  store i64 2880220587, ptr %signature.i.i, align 8, !dbg !1462, !tbaa !421
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !1388, metadata !DIExpression()) #12, !dbg !1392
  %50 = load i64, ptr %46, align 8, !dbg !1463, !tbaa !670
  %rem31.i = urem i64 %50, %38, !dbg !1464
  %arrayidx32.i = getelementptr inbounds ptr, ptr %call.i136, i64 %rem31.i, !dbg !1465
  store ptr %call.i.i, ptr %arrayidx32.i, align 8, !dbg !1466, !tbaa !231
  br label %if.end33.i, !dbg !1467

if.end33.i:                                       ; preds = %NewLinkedList.exit.i, %for.body24.i
  %map_info.0.i = phi ptr [ %call.i.i, %NewLinkedList.exit.i ], [ %48, %for.body24.i ], !dbg !1468
  call void @llvm.dbg.value(metadata ptr %map_info.0.i, metadata !1388, metadata !DIExpression()) #12, !dbg !1392
  %next34.i = getelementptr inbounds %struct._LinkedListInfo, ptr %map_info.0.i, i64 0, i32 4, !dbg !1469
  store ptr %next.0103.i, ptr %next34.i, align 8, !dbg !1470, !tbaa !216
  %head35.i = getelementptr inbounds %struct._LinkedListInfo, ptr %map_info.0.i, i64 0, i32 2, !dbg !1471
  %51 = load ptr, ptr %head35.i, align 8, !dbg !1471, !tbaa !261
  store ptr %51, ptr %next25.i, align 8, !dbg !1472, !tbaa !210
  store ptr %next.0103.i, ptr %head35.i, align 8, !dbg !1473, !tbaa !261
  %elements.i139 = getelementptr inbounds %struct._LinkedListInfo, ptr %map_info.0.i, i64 0, i32 1, !dbg !1474
  %52 = load i64, ptr %elements.i139, align 8, !dbg !1475, !tbaa !191
  %inc38.i = add i64 %52, 1, !dbg !1475
  store i64 %inc38.i, ptr %elements.i139, align 8, !dbg !1475, !tbaa !191
  call void @llvm.dbg.value(metadata ptr %45, metadata !1390, metadata !DIExpression()) #12, !dbg !1392
  %cmp23.not.i = icmp eq ptr %45, null, !dbg !1434
  br i1 %cmp23.not.i, label %for.end39.i, label %for.body24.i, !dbg !1436, !llvm.loop !1476

for.end39.i:                                      ; preds = %if.end33.i, %if.end21.i
  %signature.i = getelementptr inbounds %struct._LinkedListInfo, ptr %42, i64 0, i32 6, !dbg !1478
  store i64 -2880220588, ptr %signature.i, align 8, !dbg !1479, !tbaa !421
  %53 = load ptr, ptr %semaphore.i137, align 8, !dbg !1480, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %53) #12, !dbg !1481
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %semaphore.i137) #12, !dbg !1482
  %call42.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %42) #12, !dbg !1483
  call void @llvm.dbg.value(metadata ptr %call42.i, metadata !1387, metadata !DIExpression()) #12, !dbg !1392
  %.pre.i = load i64, ptr %capacity, align 8, !dbg !1419, !tbaa !324
  br label %for.inc43.i, !dbg !1484

for.inc43.i:                                      ; preds = %for.end39.i, %for.body16.i
  %54 = phi i64 [ %40, %for.body16.i ], [ %.pre.i, %for.end39.i ], !dbg !1419
  %inc44.i = add nuw nsw i64 %i.1105.i, 1, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %inc44.i, metadata !1375, metadata !DIExpression()) #12, !dbg !1392
  %cmp15.i140 = icmp slt i64 %inc44.i, %54, !dbg !1422
  br i1 %cmp15.i140, label %for.body16.i, label %IncreaseHashmapCapacity.exit, !dbg !1423, !llvm.loop !1486

IncreaseHashmapCapacity.exit:                     ; preds = %for.inc43.i, %if.end11.i
  %55 = load ptr, ptr %map, align 8, !dbg !1488, !tbaa !329
  %call47.i = tail call ptr @RelinquishMagickMemory(ptr noundef %55) #12, !dbg !1489
  store ptr %call.i136, ptr %map, align 8, !dbg !1490, !tbaa !329
  store i64 %38, ptr %capacity, align 8, !dbg !1491, !tbaa !324
  br label %if.end69, !dbg !1492

if.end69:                                         ; preds = %IncreaseHashmapCapacity.exit, %if.end60
  %entries = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 5, !dbg !1493
  %56 = load i64, ptr %entries, align 8, !dbg !1494, !tbaa !611
  %inc70 = add i64 %56, 1, !dbg !1494
  store i64 %inc70, ptr %entries, align 8, !dbg !1494, !tbaa !611
  br label %cleanup72.sink.split, !dbg !1495

cleanup72.sink.split:                             ; preds = %for.inc.i, %if.end6.i, %for.end.i, %if.then57, %if.end69
  %retval.0.ph = phi i32 [ 1, %if.end69 ], [ 0, %if.then57 ], [ 0, %for.end.i ], [ 0, %if.end6.i ], [ 0, %for.inc.i ]
  %57 = load ptr, ptr %semaphore, align 8, !dbg !1235, !tbaa !318
  tail call void @UnlockSemaphoreInfo(ptr noundef %57) #12, !dbg !1235
  br label %cleanup72, !dbg !1496

cleanup72:                                        ; preds = %cleanup72.sink.split, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %retval.0.ph, %cleanup72.sink.split ], !dbg !1235
  ret i32 %retval.0, !dbg !1496
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveElementFromLinkedList(ptr nocapture noundef %list_info, i64 noundef %index) local_unnamed_addr #0 !dbg !1497 {
entry:
  call void @llvm.dbg.value(metadata ptr %list_info, metadata !1499, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i64 %index, metadata !1500, metadata !DIExpression()), !dbg !1507
  %elements = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 1, !dbg !1508
  %0 = load i64, ptr %elements, align 8, !dbg !1508, !tbaa !191
  %cmp.not = icmp ugt i64 %0, %index, !dbg !1510
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !1511

if.end:                                           ; preds = %entry
  %semaphore = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 5, !dbg !1512
  %1 = load ptr, ptr %semaphore, align 8, !dbg !1512, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %1) #12, !dbg !1513
  %cmp1 = icmp eq i64 %index, 0, !dbg !1514
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !1515

if.then2:                                         ; preds = %if.end
  %next3 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 4, !dbg !1516
  %2 = load ptr, ptr %next3, align 8, !dbg !1516, !tbaa !216
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 2, !dbg !1519
  %3 = load ptr, ptr %head, align 8, !dbg !1519, !tbaa !261
  %cmp4 = icmp eq ptr %2, %3, !dbg !1520
  br i1 %cmp4, label %if.then5, label %if.end9, !dbg !1521

if.then5:                                         ; preds = %if.then2
  %next7 = getelementptr inbounds %struct._ElementInfo, ptr %2, i64 0, i32 1, !dbg !1522
  %4 = load ptr, ptr %next7, align 8, !dbg !1522, !tbaa !210
  store ptr %4, ptr %next3, align 8, !dbg !1523, !tbaa !216
  br label %if.end9, !dbg !1524

if.end9:                                          ; preds = %if.then5, %if.then2
  %5 = load ptr, ptr %3, align 8, !dbg !1525, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %5, metadata !1503, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata ptr %3, metadata !1501, metadata !DIExpression()), !dbg !1507
  %next14 = getelementptr inbounds %struct._ElementInfo, ptr %3, i64 0, i32 1, !dbg !1526
  %6 = load ptr, ptr %next14, align 8, !dbg !1526, !tbaa !210
  store ptr %6, ptr %head, align 8, !dbg !1527, !tbaa !261
  call void @llvm.dbg.value(metadata ptr undef, metadata !1501, metadata !DIExpression()), !dbg !1507
  br label %if.end34, !dbg !1528

if.else:                                          ; preds = %if.end
  %head16 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 2, !dbg !1529
  call void @llvm.dbg.value(metadata ptr undef, metadata !1501, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i64 1, metadata !1502, metadata !DIExpression()), !dbg !1507
  %next.067 = load ptr, ptr %head16, align 8, !dbg !1530, !tbaa !231
  call void @llvm.dbg.value(metadata ptr %next.067, metadata !1501, metadata !DIExpression()), !dbg !1507
  %cmp1768 = icmp sgt i64 %index, 1, !dbg !1531
  br i1 %cmp1768, label %for.body, label %for.end, !dbg !1534

for.body:                                         ; preds = %if.else, %for.body
  %next.070 = phi ptr [ %next.0, %for.body ], [ %next.067, %if.else ]
  %i.069 = phi i64 [ %inc, %for.body ], [ 1, %if.else ]
  call void @llvm.dbg.value(metadata i64 %i.069, metadata !1502, metadata !DIExpression()), !dbg !1507
  %next18 = getelementptr inbounds %struct._ElementInfo, ptr %next.070, i64 0, i32 1, !dbg !1535
  call void @llvm.dbg.value(metadata ptr undef, metadata !1501, metadata !DIExpression()), !dbg !1507
  %inc = add nuw nsw i64 %i.069, 1, !dbg !1536
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1502, metadata !DIExpression()), !dbg !1507
  %next.0 = load ptr, ptr %next18, align 8, !dbg !1530, !tbaa !231
  call void @llvm.dbg.value(metadata ptr %next.0, metadata !1501, metadata !DIExpression()), !dbg !1507
  %exitcond.not = icmp eq i64 %inc, %index, !dbg !1531
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1534, !llvm.loop !1537

for.end:                                          ; preds = %for.body, %if.else
  %next.0.lcssa = phi ptr [ %next.067, %if.else ], [ %next.0, %for.body ], !dbg !1530
  %next19 = getelementptr inbounds %struct._ElementInfo, ptr %next.0.lcssa, i64 0, i32 1, !dbg !1539
  %7 = load ptr, ptr %next19, align 8, !dbg !1539, !tbaa !210
  call void @llvm.dbg.value(metadata ptr %7, metadata !1504, metadata !DIExpression()), !dbg !1530
  %next20 = getelementptr inbounds %struct._ElementInfo, ptr %7, i64 0, i32 1, !dbg !1540
  %8 = load ptr, ptr %next20, align 8, !dbg !1540, !tbaa !210
  store ptr %8, ptr %next19, align 8, !dbg !1541, !tbaa !210
  %tail = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 3, !dbg !1542
  %9 = load ptr, ptr %tail, align 8, !dbg !1542, !tbaa !228
  %cmp22 = icmp eq ptr %7, %9, !dbg !1544
  br i1 %cmp22, label %if.then23, label %if.end25, !dbg !1545

if.then23:                                        ; preds = %for.end
  store ptr %next.0.lcssa, ptr %tail, align 8, !dbg !1546, !tbaa !228
  br label %if.end25, !dbg !1547

if.end25:                                         ; preds = %if.then23, %for.end
  %next26 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 4, !dbg !1548
  %10 = load ptr, ptr %next26, align 8, !dbg !1548, !tbaa !216
  %cmp27 = icmp eq ptr %10, %7, !dbg !1550
  br i1 %cmp27, label %if.then28, label %if.end31, !dbg !1551

if.then28:                                        ; preds = %if.end25
  %11 = load ptr, ptr %next20, align 8, !dbg !1552, !tbaa !210
  store ptr %11, ptr %next26, align 8, !dbg !1553, !tbaa !216
  br label %if.end31, !dbg !1554

if.end31:                                         ; preds = %if.then28, %if.end25
  %12 = load ptr, ptr %7, align 8, !dbg !1555, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %12, metadata !1503, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata ptr %call33, metadata !1504, metadata !DIExpression()), !dbg !1530
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %if.end9
  %.sink = phi ptr [ %7, %if.end31 ], [ %3, %if.end9 ]
  %value.0 = phi ptr [ %12, %if.end31 ], [ %5, %if.end9 ], !dbg !1556
  %call33 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %.sink) #12, !dbg !1556
  call void @llvm.dbg.value(metadata ptr %value.0, metadata !1503, metadata !DIExpression()), !dbg !1507
  %13 = load i64, ptr %elements, align 8, !dbg !1557, !tbaa !191
  %dec = add i64 %13, -1, !dbg !1557
  store i64 %dec, ptr %elements, align 8, !dbg !1557, !tbaa !191
  %14 = load ptr, ptr %semaphore, align 8, !dbg !1558, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %14) #12, !dbg !1559
  br label %cleanup, !dbg !1560

cleanup:                                          ; preds = %entry, %if.end34
  %retval.0 = phi ptr [ %value.0, %if.end34 ], [ null, %entry ], !dbg !1507
  ret ptr %retval.0, !dbg !1561
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveElementByValueFromLinkedList(ptr nocapture noundef %list_info, ptr noundef readnone %value) local_unnamed_addr #0 !dbg !1562 {
entry:
  call void @llvm.dbg.value(metadata ptr %list_info, metadata !1566, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata ptr %value, metadata !1567, metadata !DIExpression()), !dbg !1572
  %elements = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 1, !dbg !1573
  %0 = load i64, ptr %elements, align 8, !dbg !1573, !tbaa !191
  %cmp = icmp eq i64 %0, 0, !dbg !1575
  %cmp1 = icmp eq ptr %value, null
  %or.cond = or i1 %cmp1, %cmp, !dbg !1576
  br i1 %or.cond, label %cleanup46, label %if.end, !dbg !1576

if.end:                                           ; preds = %entry
  %semaphore = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 5, !dbg !1577
  %1 = load ptr, ptr %semaphore, align 8, !dbg !1577, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %1) #12, !dbg !1578
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 2, !dbg !1579
  %2 = load ptr, ptr %head, align 8, !dbg !1579, !tbaa !261
  %3 = load ptr, ptr %2, align 8, !dbg !1580, !tbaa !206
  %cmp3 = icmp eq ptr %3, %value, !dbg !1581
  br i1 %cmp3, label %if.then4, label %while.cond, !dbg !1582

if.then4:                                         ; preds = %if.end
  %next5 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 4, !dbg !1583
  %4 = load ptr, ptr %next5, align 8, !dbg !1583, !tbaa !216
  %cmp7 = icmp eq ptr %4, %2, !dbg !1586
  %next10 = getelementptr inbounds %struct._ElementInfo, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %next10, align 8, !dbg !1587, !tbaa !210
  br i1 %cmp7, label %if.then8, label %if.end12, !dbg !1588

if.then8:                                         ; preds = %if.then4
  store ptr %5, ptr %next5, align 8, !dbg !1589, !tbaa !216
  br label %if.end12, !dbg !1590

if.end12:                                         ; preds = %if.then4, %if.then8
  call void @llvm.dbg.value(metadata ptr %2, metadata !1568, metadata !DIExpression()), !dbg !1572
  store ptr %5, ptr %head, align 8, !dbg !1591, !tbaa !261
  call void @llvm.dbg.value(metadata ptr undef, metadata !1568, metadata !DIExpression()), !dbg !1572
  br label %if.end43, !dbg !1592

while.cond:                                       ; preds = %if.end, %land.rhs
  %next.0 = phi ptr [ %6, %land.rhs ], [ %2, %if.end ], !dbg !1593
  call void @llvm.dbg.value(metadata ptr %next.0, metadata !1568, metadata !DIExpression()), !dbg !1572
  %next18 = getelementptr inbounds %struct._ElementInfo, ptr %next.0, i64 0, i32 1, !dbg !1594
  %6 = load ptr, ptr %next18, align 8, !dbg !1594, !tbaa !210
  %cmp19.not = icmp eq ptr %6, null, !dbg !1595
  br i1 %cmp19.not, label %cleanup46.sink.split, label %land.rhs, !dbg !1596

land.rhs:                                         ; preds = %while.cond
  %7 = load ptr, ptr %6, align 8, !dbg !1597, !tbaa !206
  %cmp22.not = icmp eq ptr %7, %value, !dbg !1598
  br i1 %cmp22.not, label %if.end28, label %while.cond, !dbg !1599, !llvm.loop !1600

if.end28:                                         ; preds = %land.rhs
  %next18.le = getelementptr inbounds %struct._ElementInfo, ptr %next.0, i64 0, i32 1, !dbg !1594
  call void @llvm.dbg.value(metadata ptr %6, metadata !1569, metadata !DIExpression()), !dbg !1593
  %next30 = getelementptr inbounds %struct._ElementInfo, ptr %6, i64 0, i32 1, !dbg !1602
  %8 = load ptr, ptr %next30, align 8, !dbg !1602, !tbaa !210
  store ptr %8, ptr %next18.le, align 8, !dbg !1603, !tbaa !210
  %tail = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 3, !dbg !1604
  %9 = load ptr, ptr %tail, align 8, !dbg !1604, !tbaa !228
  %cmp32 = icmp eq ptr %6, %9, !dbg !1606
  br i1 %cmp32, label %if.then33, label %if.end35, !dbg !1607

if.then33:                                        ; preds = %if.end28
  store ptr %next.0, ptr %tail, align 8, !dbg !1608, !tbaa !228
  br label %if.end35, !dbg !1609

if.end35:                                         ; preds = %if.then33, %if.end28
  %next36 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 4, !dbg !1610
  %10 = load ptr, ptr %next36, align 8, !dbg !1610, !tbaa !216
  %cmp37 = icmp eq ptr %10, %6, !dbg !1612
  br i1 %cmp37, label %if.then38, label %if.end43, !dbg !1613

if.then38:                                        ; preds = %if.end35
  %11 = load ptr, ptr %next30, align 8, !dbg !1614, !tbaa !210
  store ptr %11, ptr %next36, align 8, !dbg !1615, !tbaa !216
  br label %if.end43, !dbg !1616

if.end43:                                         ; preds = %if.then38, %if.end35, %if.end12
  %.lcssa85.sink = phi ptr [ %2, %if.end12 ], [ %6, %if.end35 ], [ %6, %if.then38 ]
  %call42 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %.lcssa85.sink) #12, !dbg !1617
  %12 = load i64, ptr %elements, align 8, !dbg !1618, !tbaa !191
  %dec = add i64 %12, -1, !dbg !1618
  store i64 %dec, ptr %elements, align 8, !dbg !1618, !tbaa !191
  br label %cleanup46.sink.split, !dbg !1619

cleanup46.sink.split:                             ; preds = %while.cond, %if.end43
  %retval.1.ph = phi ptr [ %value, %if.end43 ], [ null, %while.cond ]
  %13 = load ptr, ptr %semaphore, align 8, !dbg !1572, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %13) #12, !dbg !1572
  br label %cleanup46, !dbg !1620

cleanup46:                                        ; preds = %cleanup46.sink.split, %entry
  %retval.1 = phi ptr [ null, %entry ], [ %retval.1.ph, %cleanup46.sink.split ], !dbg !1572
  ret ptr %retval.1, !dbg !1620
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveEntryFromHashmap(ptr nocapture noundef %hashmap_info, ptr noundef %key) local_unnamed_addr #0 !dbg !1621 {
entry:
  call void @llvm.dbg.value(metadata ptr %hashmap_info, metadata !1623, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata ptr %key, metadata !1624, metadata !DIExpression()), !dbg !1638
  %cmp = icmp eq ptr %key, null, !dbg !1639
  br i1 %cmp, label %cleanup39, label %if.end, !dbg !1641

if.end:                                           ; preds = %entry
  %semaphore = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 9, !dbg !1642
  %0 = load ptr, ptr %semaphore, align 8, !dbg !1642, !tbaa !318
  tail call void @LockSemaphoreInfo(ptr noundef %0) #12, !dbg !1643
  %1 = load ptr, ptr %hashmap_info, align 8, !dbg !1644, !tbaa !646
  %call = tail call i64 %1(ptr noundef nonnull %key) #12, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %call, metadata !1628, metadata !DIExpression()), !dbg !1638
  %map = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 8, !dbg !1646
  %2 = load ptr, ptr %map, align 8, !dbg !1646, !tbaa !329
  %capacity = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 4, !dbg !1647
  %3 = load i64, ptr %capacity, align 8, !dbg !1647, !tbaa !324
  %rem = urem i64 %call, %3, !dbg !1648
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %rem, !dbg !1649
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !1649, !tbaa !231
  call void @llvm.dbg.value(metadata ptr %4, metadata !1626, metadata !DIExpression()), !dbg !1638
  %cmp3.not = icmp eq ptr %4, null, !dbg !1650
  br i1 %cmp3.not, label %cleanup39.sink.split, label %if.then4, !dbg !1651

if.then4:                                         ; preds = %if.end
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %4, i64 0, i32 2, !dbg !1652
  %5 = load ptr, ptr %head, align 8, !dbg !1652, !tbaa !261
  %next = getelementptr inbounds %struct._LinkedListInfo, ptr %4, i64 0, i32 4, !dbg !1653
  store ptr %5, ptr %next, align 8, !dbg !1654, !tbaa !216
  call void @llvm.dbg.value(metadata ptr %4, metadata !338, metadata !DIExpression()) #12, !dbg !1655
  %semaphore.i = getelementptr inbounds %struct._LinkedListInfo, ptr %4, i64 0, i32 5, !dbg !1657
  %6 = load ptr, ptr %semaphore.i, align 8, !dbg !1657, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %6) #12, !dbg !1658
  %7 = load ptr, ptr %next, align 8, !dbg !1659, !tbaa !216
  %cmp.i = icmp eq ptr %7, null, !dbg !1660
  br i1 %cmp.i, label %GetNextValueInLinkedList.exit.thread, label %GetNextValueInLinkedList.exit, !dbg !1661

GetNextValueInLinkedList.exit.thread:             ; preds = %if.then4
  %8 = load ptr, ptr %semaphore.i, align 8, !dbg !1655, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %8) #12, !dbg !1655
  call void @llvm.dbg.value(metadata ptr %9, metadata !1625, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1627, metadata !DIExpression()), !dbg !1638
  br label %cleanup39.sink.split, !dbg !1662

GetNextValueInLinkedList.exit:                    ; preds = %if.then4
  %9 = load ptr, ptr %7, align 8, !dbg !1663, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %9, metadata !343, metadata !DIExpression()) #12, !dbg !1655
  %next5.i = getelementptr inbounds %struct._ElementInfo, ptr %7, i64 0, i32 1, !dbg !1664
  %10 = load ptr, ptr %next5.i, align 8, !dbg !1664, !tbaa !210
  store ptr %10, ptr %next, align 8, !dbg !1665, !tbaa !216
  %11 = load ptr, ptr %semaphore.i, align 8, !dbg !1655, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #12, !dbg !1655
  call void @llvm.dbg.value(metadata ptr %9, metadata !1625, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1627, metadata !DIExpression()), !dbg !1638
  %cmp6.not87 = icmp eq ptr %9, null, !dbg !1666
  br i1 %cmp6.not87, label %cleanup39.sink.split, label %for.body.lr.ph, !dbg !1662

for.body.lr.ph:                                   ; preds = %GetNextValueInLinkedList.exit
  %compare10 = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 1
  br label %for.body, !dbg !1662

for.body:                                         ; preds = %for.body.lr.ph, %GetNextValueInLinkedList.exit79
  %entry1.090 = phi ptr [ %9, %for.body.lr.ph ], [ %retval.0.i78, %GetNextValueInLinkedList.exit79 ]
  %i.088 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %GetNextValueInLinkedList.exit79 ]
  call void @llvm.dbg.value(metadata ptr %entry1.090, metadata !1625, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %i.088, metadata !1627, metadata !DIExpression()), !dbg !1638
  %12 = load i64, ptr %entry1.090, align 8, !dbg !1667, !tbaa !670
  %cmp8 = icmp eq i64 %12, %call, !dbg !1668
  br i1 %cmp8, label %if.then9, label %if.end35, !dbg !1669

if.then9:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 1, metadata !1630, metadata !DIExpression()), !dbg !1670
  %13 = load ptr, ptr %compare10, align 8, !dbg !1671, !tbaa !676
  %cmp11.not = icmp eq ptr %13, null, !dbg !1673
  br i1 %cmp11.not, label %if.then18, label %if.end16, !dbg !1674

if.end16:                                         ; preds = %if.then9
  %key14 = getelementptr inbounds %struct._EntryInfo, ptr %entry1.090, i64 0, i32 1, !dbg !1675
  %14 = load ptr, ptr %key14, align 8, !dbg !1675, !tbaa !364
  %call15 = tail call i32 %13(ptr noundef nonnull %key, ptr noundef %14) #12, !dbg !1676
  call void @llvm.dbg.value(metadata i32 %call15, metadata !1630, metadata !DIExpression()), !dbg !1670
  %cmp17.not = icmp eq i32 %call15, 0, !dbg !1677
  br i1 %cmp17.not, label %if.end35, label %if.then18, !dbg !1679

if.then18:                                        ; preds = %if.then9, %if.end16
  %call19 = tail call ptr @RemoveElementFromLinkedList(ptr noundef nonnull %4, i64 noundef %i.088), !dbg !1680
  call void @llvm.dbg.value(metadata ptr %call19, metadata !1625, metadata !DIExpression()), !dbg !1638
  %cmp20 = icmp eq ptr %call19, null, !dbg !1682
  br i1 %cmp20, label %cleanup39.sink.split, label %if.end23, !dbg !1684

if.end23:                                         ; preds = %if.then18
  %relinquish_key = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 2, !dbg !1685
  %15 = load ptr, ptr %relinquish_key, align 8, !dbg !1685, !tbaa !360
  %cmp24.not = icmp eq ptr %15, null, !dbg !1687
  br i1 %cmp24.not, label %if.end30, label %if.then25, !dbg !1688

if.then25:                                        ; preds = %if.end23
  %key27 = getelementptr inbounds %struct._EntryInfo, ptr %call19, i64 0, i32 1, !dbg !1689
  %16 = load ptr, ptr %key27, align 8, !dbg !1689, !tbaa !364
  %call28 = tail call ptr %15(ptr noundef %16) #12, !dbg !1690
  store ptr %call28, ptr %key27, align 8, !dbg !1691, !tbaa !364
  br label %if.end30, !dbg !1692

if.end30:                                         ; preds = %if.then25, %if.end23
  %value31 = getelementptr inbounds %struct._EntryInfo, ptr %call19, i64 0, i32 2, !dbg !1693
  %17 = load ptr, ptr %value31, align 8, !dbg !1693, !tbaa !375
  call void @llvm.dbg.value(metadata ptr %17, metadata !1629, metadata !DIExpression()), !dbg !1638
  %call32 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call19) #12, !dbg !1694
  call void @llvm.dbg.value(metadata ptr %call32, metadata !1625, metadata !DIExpression()), !dbg !1638
  %entries = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 5, !dbg !1695
  %18 = load i64, ptr %entries, align 8, !dbg !1696, !tbaa !611
  %dec = add i64 %18, -1, !dbg !1696
  store i64 %dec, ptr %entries, align 8, !dbg !1696, !tbaa !611
  br label %cleanup39.sink.split, !dbg !1697

if.end35:                                         ; preds = %if.end16, %for.body
  call void @llvm.dbg.value(metadata ptr %4, metadata !338, metadata !DIExpression()) #12, !dbg !1698
  %19 = load ptr, ptr %semaphore.i, align 8, !dbg !1700, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %19) #12, !dbg !1701
  %20 = load ptr, ptr %next, align 8, !dbg !1702, !tbaa !216
  %cmp.i75 = icmp eq ptr %20, null, !dbg !1703
  br i1 %cmp.i75, label %GetNextValueInLinkedList.exit79, label %if.end.i77, !dbg !1704

if.end.i77:                                       ; preds = %if.end35
  %21 = load ptr, ptr %20, align 8, !dbg !1705, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %21, metadata !343, metadata !DIExpression()) #12, !dbg !1698
  %next5.i76 = getelementptr inbounds %struct._ElementInfo, ptr %20, i64 0, i32 1, !dbg !1706
  %22 = load ptr, ptr %next5.i76, align 8, !dbg !1706, !tbaa !210
  store ptr %22, ptr %next, align 8, !dbg !1707, !tbaa !216
  br label %GetNextValueInLinkedList.exit79, !dbg !1708

GetNextValueInLinkedList.exit79:                  ; preds = %if.end35, %if.end.i77
  %retval.0.i78 = phi ptr [ %21, %if.end.i77 ], [ null, %if.end35 ], !dbg !1698
  %23 = load ptr, ptr %semaphore.i, align 8, !dbg !1698, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %23) #12, !dbg !1698
  call void @llvm.dbg.value(metadata ptr %retval.0.i78, metadata !1625, metadata !DIExpression()), !dbg !1638
  %inc = add i64 %i.088, 1, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1627, metadata !DIExpression()), !dbg !1638
  %cmp6.not = icmp eq ptr %retval.0.i78, null, !dbg !1666
  br i1 %cmp6.not, label %cleanup39.sink.split, label %for.body, !dbg !1662, !llvm.loop !1710

cleanup39.sink.split:                             ; preds = %GetNextValueInLinkedList.exit79, %if.end, %GetNextValueInLinkedList.exit, %GetNextValueInLinkedList.exit.thread, %if.then18, %if.end30
  %retval.3.ph = phi ptr [ %17, %if.end30 ], [ null, %if.then18 ], [ null, %GetNextValueInLinkedList.exit.thread ], [ null, %GetNextValueInLinkedList.exit ], [ null, %if.end ], [ null, %GetNextValueInLinkedList.exit79 ]
  %24 = load ptr, ptr %semaphore, align 8, !dbg !1638, !tbaa !318
  tail call void @UnlockSemaphoreInfo(ptr noundef %24) #12, !dbg !1638
  br label %cleanup39, !dbg !1712

cleanup39:                                        ; preds = %cleanup39.sink.split, %entry
  %retval.3 = phi ptr [ null, %entry ], [ %retval.3.ph, %cleanup39.sink.split ], !dbg !1638
  ret ptr %retval.3, !dbg !1712
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveLastElementFromLinkedList(ptr nocapture noundef %list_info) local_unnamed_addr #0 !dbg !1713 {
entry:
  call void @llvm.dbg.value(metadata ptr %list_info, metadata !1715, metadata !DIExpression()), !dbg !1720
  %elements = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 1, !dbg !1721
  %0 = load i64, ptr %elements, align 8, !dbg !1721, !tbaa !191
  %cmp = icmp eq i64 %0, 0, !dbg !1723
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1724

if.end:                                           ; preds = %entry
  %semaphore = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 5, !dbg !1725
  %1 = load ptr, ptr %semaphore, align 8, !dbg !1725, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %1) #12, !dbg !1726
  %next = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 4, !dbg !1727
  %2 = load ptr, ptr %next, align 8, !dbg !1727, !tbaa !216
  %tail = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 3, !dbg !1729
  %3 = load ptr, ptr %tail, align 8, !dbg !1729, !tbaa !228
  %cmp1 = icmp eq ptr %2, %3, !dbg !1730
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !1731

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %next, align 8, !dbg !1732, !tbaa !216
  br label %if.end4, !dbg !1733

if.end4:                                          ; preds = %if.then2, %if.end
  %4 = load i64, ptr %elements, align 8, !dbg !1734, !tbaa !191
  %cmp6 = icmp eq i64 %4, 1, !dbg !1735
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !1736

if.then7:                                         ; preds = %if.end4
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 2, !dbg !1737
  %5 = load ptr, ptr %head, align 8, !dbg !1737, !tbaa !261
  %6 = load ptr, ptr %5, align 8, !dbg !1739, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %6, metadata !1716, metadata !DIExpression()), !dbg !1720
  store ptr null, ptr %head, align 8, !dbg !1740, !tbaa !261
  %call = tail call ptr @RelinquishMagickMemory(ptr noundef %3) #12, !dbg !1741
  store ptr %call, ptr %tail, align 8, !dbg !1742, !tbaa !228
  br label %if.end25, !dbg !1743

if.else:                                          ; preds = %if.end4
  %7 = load ptr, ptr %3, align 8, !dbg !1744, !tbaa !206
  call void @llvm.dbg.value(metadata ptr %7, metadata !1716, metadata !DIExpression()), !dbg !1720
  %head15 = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 2, !dbg !1745
  %8 = load ptr, ptr %head15, align 8, !dbg !1745, !tbaa !261
  call void @llvm.dbg.value(metadata ptr %8, metadata !1717, metadata !DIExpression()), !dbg !1746
  br label %while.cond, !dbg !1747

while.cond:                                       ; preds = %while.cond, %if.else
  %next12.0 = phi ptr [ %8, %if.else ], [ %9, %while.cond ], !dbg !1746
  call void @llvm.dbg.value(metadata ptr %next12.0, metadata !1717, metadata !DIExpression()), !dbg !1746
  %next16 = getelementptr inbounds %struct._ElementInfo, ptr %next12.0, i64 0, i32 1, !dbg !1748
  %9 = load ptr, ptr %next16, align 8, !dbg !1748, !tbaa !210
  %cmp18.not = icmp eq ptr %9, %3, !dbg !1749
  br i1 %cmp18.not, label %while.end, label %while.cond, !dbg !1747, !llvm.loop !1750

while.end:                                        ; preds = %while.cond
  %next16.le = getelementptr inbounds %struct._ElementInfo, ptr %next12.0, i64 0, i32 1, !dbg !1748
  %call21 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %3) #12, !dbg !1752
  store ptr %next12.0, ptr %tail, align 8, !dbg !1753, !tbaa !228
  store ptr null, ptr %next16.le, align 8, !dbg !1754, !tbaa !210
  br label %if.end25

if.end25:                                         ; preds = %while.end, %if.then7
  %value.0 = phi ptr [ %6, %if.then7 ], [ %7, %while.end ], !dbg !1755
  call void @llvm.dbg.value(metadata ptr %value.0, metadata !1716, metadata !DIExpression()), !dbg !1720
  %10 = load i64, ptr %elements, align 8, !dbg !1756, !tbaa !191
  %dec = add i64 %10, -1, !dbg !1756
  store i64 %dec, ptr %elements, align 8, !dbg !1756, !tbaa !191
  %11 = load ptr, ptr %semaphore, align 8, !dbg !1757, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #12, !dbg !1758
  br label %cleanup, !dbg !1759

cleanup:                                          ; preds = %entry, %if.end25
  %retval.0 = phi ptr [ %value.0, %if.end25 ], [ null, %entry ], !dbg !1720
  ret ptr %retval.0, !dbg !1760
}

; Function Attrs: nounwind uwtable
define dso_local void @ResetHashmapIterator(ptr nocapture noundef %hashmap_info) local_unnamed_addr #0 !dbg !1761 {
entry:
  call void @llvm.dbg.value(metadata ptr %hashmap_info, metadata !1765, metadata !DIExpression()), !dbg !1766
  %semaphore = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 9, !dbg !1767
  %0 = load ptr, ptr %semaphore, align 8, !dbg !1767, !tbaa !318
  tail call void @LockSemaphoreInfo(ptr noundef %0) #12, !dbg !1768
  %next = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 6, !dbg !1769
  store i64 0, ptr %next, align 8, !dbg !1770, !tbaa !506
  %head_of_list = getelementptr inbounds %struct._HashmapInfo, ptr %hashmap_info, i64 0, i32 7, !dbg !1771
  store i32 0, ptr %head_of_list, align 8, !dbg !1772, !tbaa !519
  %1 = load ptr, ptr %semaphore, align 8, !dbg !1773, !tbaa !318
  tail call void @UnlockSemaphoreInfo(ptr noundef %1) #12, !dbg !1774
  ret void, !dbg !1775
}

; Function Attrs: nounwind uwtable
define dso_local void @ResetLinkedListIterator(ptr nocapture noundef %list_info) local_unnamed_addr #0 !dbg !1776 {
entry:
  call void @llvm.dbg.value(metadata ptr %list_info, metadata !1780, metadata !DIExpression()), !dbg !1781
  %semaphore = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 5, !dbg !1782
  %0 = load ptr, ptr %semaphore, align 8, !dbg !1782, !tbaa !212
  tail call void @LockSemaphoreInfo(ptr noundef %0) #12, !dbg !1783
  %head = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 2, !dbg !1784
  %1 = load ptr, ptr %head, align 8, !dbg !1784, !tbaa !261
  %next = getelementptr inbounds %struct._LinkedListInfo, ptr %list_info, i64 0, i32 4, !dbg !1785
  store ptr %1, ptr %next, align 8, !dbg !1786, !tbaa !216
  %2 = load ptr, ptr %semaphore, align 8, !dbg !1787, !tbaa !212
  tail call void @UnlockSemaphoreInfo(ptr noundef %2) #12, !dbg !1788
  ret void, !dbg !1789
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !82, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/hashmap.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "577ae992415ecebf63235034b3c1eea2")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 211, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "MagickFalse", value: 0)
!8 = !DIEnumerator(name: "MagickTrue", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 28, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!12 = !DIEnumerator(name: "UndefinedException", value: 0)
!13 = !DIEnumerator(name: "WarningException", value: 300)
!14 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!15 = !DIEnumerator(name: "TypeWarning", value: 305)
!16 = !DIEnumerator(name: "OptionWarning", value: 310)
!17 = !DIEnumerator(name: "DelegateWarning", value: 315)
!18 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!19 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!20 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!21 = !DIEnumerator(name: "BlobWarning", value: 335)
!22 = !DIEnumerator(name: "StreamWarning", value: 340)
!23 = !DIEnumerator(name: "CacheWarning", value: 345)
!24 = !DIEnumerator(name: "CoderWarning", value: 350)
!25 = !DIEnumerator(name: "FilterWarning", value: 352)
!26 = !DIEnumerator(name: "ModuleWarning", value: 355)
!27 = !DIEnumerator(name: "DrawWarning", value: 360)
!28 = !DIEnumerator(name: "ImageWarning", value: 365)
!29 = !DIEnumerator(name: "WandWarning", value: 370)
!30 = !DIEnumerator(name: "RandomWarning", value: 375)
!31 = !DIEnumerator(name: "XServerWarning", value: 380)
!32 = !DIEnumerator(name: "MonitorWarning", value: 385)
!33 = !DIEnumerator(name: "RegistryWarning", value: 390)
!34 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!35 = !DIEnumerator(name: "PolicyWarning", value: 399)
!36 = !DIEnumerator(name: "ErrorException", value: 400)
!37 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!38 = !DIEnumerator(name: "TypeError", value: 405)
!39 = !DIEnumerator(name: "OptionError", value: 410)
!40 = !DIEnumerator(name: "DelegateError", value: 415)
!41 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!42 = !DIEnumerator(name: "CorruptImageError", value: 425)
!43 = !DIEnumerator(name: "FileOpenError", value: 430)
!44 = !DIEnumerator(name: "BlobError", value: 435)
!45 = !DIEnumerator(name: "StreamError", value: 440)
!46 = !DIEnumerator(name: "CacheError", value: 445)
!47 = !DIEnumerator(name: "CoderError", value: 450)
!48 = !DIEnumerator(name: "FilterError", value: 452)
!49 = !DIEnumerator(name: "ModuleError", value: 455)
!50 = !DIEnumerator(name: "DrawError", value: 460)
!51 = !DIEnumerator(name: "ImageError", value: 465)
!52 = !DIEnumerator(name: "WandError", value: 470)
!53 = !DIEnumerator(name: "RandomError", value: 475)
!54 = !DIEnumerator(name: "XServerError", value: 480)
!55 = !DIEnumerator(name: "MonitorError", value: 485)
!56 = !DIEnumerator(name: "RegistryError", value: 490)
!57 = !DIEnumerator(name: "ConfigureError", value: 495)
!58 = !DIEnumerator(name: "PolicyError", value: 499)
!59 = !DIEnumerator(name: "FatalErrorException", value: 700)
!60 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!61 = !DIEnumerator(name: "TypeFatalError", value: 705)
!62 = !DIEnumerator(name: "OptionFatalError", value: 710)
!63 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!64 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!65 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!66 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!67 = !DIEnumerator(name: "BlobFatalError", value: 735)
!68 = !DIEnumerator(name: "StreamFatalError", value: 740)
!69 = !DIEnumerator(name: "CacheFatalError", value: 745)
!70 = !DIEnumerator(name: "CoderFatalError", value: 750)
!71 = !DIEnumerator(name: "FilterFatalError", value: 752)
!72 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!73 = !DIEnumerator(name: "DrawFatalError", value: 760)
!74 = !DIEnumerator(name: "ImageFatalError", value: 765)
!75 = !DIEnumerator(name: "WandFatalError", value: 770)
!76 = !DIEnumerator(name: "RandomFatalError", value: 775)
!77 = !DIEnumerator(name: "XServerFatalError", value: 780)
!78 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!79 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!80 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!81 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!82 = !{!83, !89, !92, !95, !98, !116, !121, !137, !144, !145, !153, !156, !112, !169, !173, !114, !172, !150}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElementInfo", file: !85, line: 64, baseType: !86)
!85 = !DIFile(filename: "apps/538.imagick_r/src/magick/hashmap.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "577ae992415ecebf63235034b3c1eea2")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ElementInfo", file: !85, line: 57, size: 128, elements: !87)
!87 = !{!88, !90}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !86, file: !85, line: 60, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !86, file: !85, line: 63, baseType: !91, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!89, !89}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !101, line: 40, baseType: !102)
!101 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !101, line: 29, size: 32960, elements: !103)
!103 = !{!104, !108, !111, !115}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !102, file: !101, line: 32, baseType: !105, size: 32768)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 32768, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 4096)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !102, file: !101, line: 35, baseType: !109, size: 64, offset: 32768)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !102, file: !101, line: 38, baseType: !112, size: 64, offset: 32832)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 46, baseType: !114)
!113 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!114 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !102, file: !101, line: 39, baseType: !112, size: 64, offset: 32896)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !117, line: 77, baseType: !118)
!117 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !119, line: 193, baseType: !120)
!119 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!120 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinkedListInfo", file: !123, line: 34, baseType: !124)
!123 = !DIFile(filename: "apps/538.imagick_r/src/magick/hashmap.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "683c2bd26601474466c188c023adadf2")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LinkedListInfo", file: !85, line: 76, size: 448, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !136}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !124, file: !85, line: 79, baseType: !112, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !124, file: !85, line: 80, baseType: !112, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !124, file: !85, line: 83, baseType: !83, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !124, file: !85, line: 84, baseType: !83, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !85, line: 85, baseType: !83, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !124, file: !85, line: 88, baseType: !132, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !134, line: 26, baseType: !135)
!134 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !134, line: 25, flags: DIFlagFwdDecl)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !124, file: !85, line: 91, baseType: !112, size: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "EntryInfo", file: !85, line: 74, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_EntryInfo", file: !85, line: 66, size: 192, elements: !140)
!140 = !{!141, !142, !143}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !139, file: !85, line: 69, baseType: !112, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !139, file: !85, line: 72, baseType: !89, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !139, file: !85, line: 73, baseType: !89, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashmapInfo", file: !123, line: 31, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_HashmapInfo", file: !85, line: 94, size: 704, elements: !148)
!148 = !{!149, !155, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !147, file: !85, line: 97, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!112, !153}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "compare", scope: !147, file: !85, line: 100, baseType: !156, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !153, !153}
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !3)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish_key", scope: !147, file: !85, line: 103, baseType: !92, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish_value", scope: !147, file: !85, line: 104, baseType: !92, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !147, file: !85, line: 107, baseType: !112, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !147, file: !85, line: 108, baseType: !112, size: 64, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !85, line: 109, baseType: !112, size: 64, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "head_of_list", scope: !147, file: !85, line: 112, baseType: !159, size: 32, offset: 448)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !147, file: !85, line: 115, baseType: !144, size: 64, offset: 512)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !147, file: !85, line: 118, baseType: !132, size: 64, offset: 576)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !147, file: !85, line: 121, baseType: !112, size: 64, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!172, !153, !153}
!172 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!174 = !{i32 7, !"Dwarf Version", i32 5}
!175 = !{i32 2, !"Debug Info Version", i32 3}
!176 = !{i32 1, !"wchar_size", i32 4}
!177 = !{i32 7, !"PIC Level", i32 2}
!178 = !{i32 7, !"PIE Level", i32 2}
!179 = !{i32 7, !"uwtable", i32 2}
!180 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!181 = distinct !DISubprogram(name: "AppendValueToLinkedList", scope: !85, file: !85, line: 149, type: !182, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{!159, !121, !153}
!184 = !{!185, !186, !187}
!185 = !DILocalVariable(name: "list_info", arg: 1, scope: !181, file: !85, line: 150, type: !121)
!186 = !DILocalVariable(name: "value", arg: 2, scope: !181, file: !85, line: 150, type: !153)
!187 = !DILocalVariable(name: "next", scope: !181, file: !85, line: 153, type: !83)
!188 = !DILocation(line: 0, scope: !181)
!189 = !DILocation(line: 157, column: 18, scope: !190)
!190 = distinct !DILexicalBlock(scope: !181, file: !85, line: 157, column: 7)
!191 = !{!192, !193, i64 8}
!192 = !{!"_LinkedListInfo", !193, i64 0, !193, i64 8, !196, i64 16, !196, i64 24, !196, i64 32, !196, i64 40, !193, i64 48}
!193 = !{!"long", !194, i64 0}
!194 = !{!"omnipotent char", !195, i64 0}
!195 = !{!"Simple C/C++ TBAA"}
!196 = !{!"any pointer", !194, i64 0}
!197 = !DILocation(line: 157, column: 41, scope: !190)
!198 = !{!192, !193, i64 0}
!199 = !DILocation(line: 157, column: 27, scope: !190)
!200 = !DILocation(line: 157, column: 7, scope: !181)
!201 = !DILocation(line: 159, column: 24, scope: !181)
!202 = !DILocation(line: 160, column: 12, scope: !203)
!203 = distinct !DILexicalBlock(scope: !181, file: !85, line: 160, column: 7)
!204 = !DILocation(line: 160, column: 7, scope: !181)
!205 = !DILocation(line: 162, column: 14, scope: !181)
!206 = !{!207, !196, i64 0}
!207 = !{!"_ElementInfo", !196, i64 0, !196, i64 8}
!208 = !DILocation(line: 163, column: 9, scope: !181)
!209 = !DILocation(line: 163, column: 13, scope: !181)
!210 = !{!207, !196, i64 8}
!211 = !DILocation(line: 164, column: 32, scope: !181)
!212 = !{!192, !196, i64 40}
!213 = !DILocation(line: 164, column: 3, scope: !181)
!214 = !DILocation(line: 165, column: 18, scope: !215)
!215 = distinct !DILexicalBlock(scope: !181, file: !85, line: 165, column: 7)
!216 = !{!192, !196, i64 32}
!217 = !DILocation(line: 165, column: 23, scope: !215)
!218 = !DILocation(line: 165, column: 7, scope: !181)
!219 = !DILocation(line: 166, column: 20, scope: !215)
!220 = !DILocation(line: 166, column: 5, scope: !215)
!221 = !DILocation(line: 167, column: 18, scope: !222)
!222 = distinct !DILexicalBlock(scope: !181, file: !85, line: 167, column: 7)
!223 = !DILocation(line: 167, column: 27, scope: !222)
!224 = !DILocation(line: 167, column: 7, scope: !181)
!225 = !DILocation(line: 168, column: 16, scope: !222)
!226 = !DILocation(line: 168, column: 5, scope: !222)
!227 = !DILocation(line: 170, column: 16, scope: !222)
!228 = !{!192, !196, i64 24}
!229 = !DILocation(line: 170, column: 22, scope: !222)
!230 = !DILocation(line: 0, scope: !222)
!231 = !{!196, !196, i64 0}
!232 = !DILocation(line: 171, column: 14, scope: !181)
!233 = !DILocation(line: 171, column: 18, scope: !181)
!234 = !DILocation(line: 172, column: 22, scope: !181)
!235 = !DILocation(line: 173, column: 34, scope: !181)
!236 = !DILocation(line: 173, column: 3, scope: !181)
!237 = !DILocation(line: 174, column: 3, scope: !181)
!238 = !DILocation(line: 175, column: 1, scope: !181)
!239 = !DISubprogram(name: "AcquireMagickMemory", scope: !240, file: !240, line: 40, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!240 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!241 = !DISubroutineType(types: !242)
!242 = !{!89, !243}
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!244 = !{}
!245 = !DISubprogram(name: "LockSemaphoreInfo", scope: !134, file: !134, line: 37, type: !246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !132}
!248 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !134, file: !134, line: 39, type: !246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!249 = distinct !DISubprogram(name: "ClearLinkedList", scope: !85, file: !85, line: 203, type: !250, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !121, !92}
!252 = !{!253, !254, !255, !256}
!253 = !DILocalVariable(name: "list_info", arg: 1, scope: !249, file: !85, line: 203, type: !121)
!254 = !DILocalVariable(name: "relinquish_value", arg: 2, scope: !249, file: !85, line: 204, type: !92)
!255 = !DILocalVariable(name: "element", scope: !249, file: !85, line: 207, type: !83)
!256 = !DILocalVariable(name: "next", scope: !249, file: !85, line: 210, type: !83)
!257 = !DILocation(line: 0, scope: !249)
!258 = !DILocation(line: 214, column: 32, scope: !249)
!259 = !DILocation(line: 214, column: 3, scope: !249)
!260 = !DILocation(line: 215, column: 19, scope: !249)
!261 = !{!192, !196, i64 16}
!262 = !DILocation(line: 216, column: 15, scope: !249)
!263 = !DILocation(line: 216, column: 3, scope: !249)
!264 = !DILocation(line: 218, column: 9, scope: !265)
!265 = distinct !DILexicalBlock(scope: !249, file: !85, line: 217, column: 3)
!266 = !DILocation(line: 221, column: 16, scope: !265)
!267 = !DILocation(line: 222, column: 29, scope: !265)
!268 = distinct !{!268, !263, !269, !270, !271}
!269 = !DILocation(line: 223, column: 3, scope: !249)
!270 = !{!"llvm.loop.mustprogress"}
!271 = !{!"llvm.loop.unroll.disable"}
!272 = !DILocation(line: 219, column: 42, scope: !273)
!273 = distinct !DILexicalBlock(scope: !265, file: !85, line: 218, column: 9)
!274 = !DILocation(line: 219, column: 19, scope: !273)
!275 = !DILocation(line: 219, column: 18, scope: !273)
!276 = !DILocation(line: 227, column: 14, scope: !249)
!277 = !DILocation(line: 227, column: 22, scope: !249)
!278 = !DILocation(line: 228, column: 34, scope: !249)
!279 = !DILocation(line: 228, column: 3, scope: !249)
!280 = !DILocation(line: 229, column: 1, scope: !249)
!281 = !DISubprogram(name: "RelinquishMagickMemory", scope: !240, file: !240, line: 51, type: !93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!282 = distinct !DISubprogram(name: "CompareHashmapString", scope: !85, file: !85, line: 257, type: !157, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !283)
!283 = !{!284, !285, !286, !287}
!284 = !DILocalVariable(name: "target", arg: 1, scope: !282, file: !85, line: 257, type: !153)
!285 = !DILocalVariable(name: "source", arg: 2, scope: !282, file: !85, line: 258, type: !153)
!286 = !DILocalVariable(name: "p", scope: !282, file: !85, line: 261, type: !95)
!287 = !DILocalVariable(name: "q", scope: !282, file: !85, line: 262, type: !95)
!288 = !DILocation(line: 0, scope: !282)
!289 = !DILocation(line: 266, column: 10, scope: !282)
!290 = !DILocation(line: 266, column: 29, scope: !282)
!291 = !DILocation(line: 266, column: 3, scope: !282)
!292 = !DISubprogram(name: "LocaleCompare", scope: !101, file: !101, line: 66, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!293 = !DISubroutineType(types: !294)
!294 = !{!172, !95, !95}
!295 = distinct !DISubprogram(name: "CompareHashmapStringInfo", scope: !85, file: !85, line: 295, type: !157, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !296)
!296 = !{!297, !298, !299, !300}
!297 = !DILocalVariable(name: "target", arg: 1, scope: !295, file: !85, line: 295, type: !153)
!298 = !DILocalVariable(name: "source", arg: 2, scope: !295, file: !85, line: 296, type: !153)
!299 = !DILocalVariable(name: "p", scope: !295, file: !85, line: 299, type: !98)
!300 = !DILocalVariable(name: "q", scope: !295, file: !85, line: 300, type: !98)
!301 = !DILocation(line: 0, scope: !295)
!302 = !DILocation(line: 304, column: 10, scope: !295)
!303 = !DILocation(line: 304, column: 33, scope: !295)
!304 = !DILocation(line: 304, column: 3, scope: !295)
!305 = !DISubprogram(name: "CompareStringInfo", scope: !101, file: !101, line: 65, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!306 = !DISubroutineType(types: !307)
!307 = !{!172, !98, !98}
!308 = distinct !DISubprogram(name: "DestroyHashmap", scope: !85, file: !85, line: 329, type: !309, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !311)
!309 = !DISubroutineType(types: !310)
!310 = !{!145, !145}
!311 = !{!312, !313, !314, !315}
!312 = !DILocalVariable(name: "hashmap_info", arg: 1, scope: !308, file: !85, line: 329, type: !145)
!313 = !DILocalVariable(name: "list_info", scope: !308, file: !85, line: 332, type: !121)
!314 = !DILocalVariable(name: "entry", scope: !308, file: !85, line: 335, type: !137)
!315 = !DILocalVariable(name: "i", scope: !308, file: !85, line: 338, type: !116)
!316 = !DILocation(line: 0, scope: !308)
!317 = !DILocation(line: 342, column: 35, scope: !308)
!318 = !{!319, !196, i64 72}
!319 = !{!"_HashmapInfo", !196, i64 0, !196, i64 8, !196, i64 16, !196, i64 24, !193, i64 32, !193, i64 40, !193, i64 48, !194, i64 56, !196, i64 64, !196, i64 72, !193, i64 80}
!320 = !DILocation(line: 342, column: 3, scope: !308)
!321 = !DILocation(line: 343, column: 41, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !85, line: 343, column: 3)
!323 = distinct !DILexicalBlock(scope: !308, file: !85, line: 343, column: 3)
!324 = !{!319, !193, i64 32}
!325 = !DILocation(line: 343, column: 15, scope: !322)
!326 = !DILocation(line: 343, column: 3, scope: !323)
!327 = !DILocation(line: 345, column: 29, scope: !328)
!328 = distinct !DILexicalBlock(scope: !322, file: !85, line: 344, column: 3)
!329 = !{!319, !196, i64 64}
!330 = !DILocation(line: 345, column: 15, scope: !328)
!331 = !DILocation(line: 346, column: 19, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !85, line: 346, column: 9)
!333 = !DILocation(line: 346, column: 9, scope: !328)
!334 = !DILocation(line: 348, column: 36, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !85, line: 347, column: 7)
!336 = !DILocation(line: 348, column: 20, scope: !335)
!337 = !DILocation(line: 348, column: 24, scope: !335)
!338 = !DILocalVariable(name: "list_info", arg: 1, scope: !339, file: !85, line: 605, type: !121)
!339 = distinct !DISubprogram(name: "GetNextValueInLinkedList", scope: !85, file: !85, line: 605, type: !340, scopeLine: 606, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !342)
!340 = !DISubroutineType(types: !341)
!341 = !{!89, !121}
!342 = !{!338, !343}
!343 = !DILocalVariable(name: "value", scope: !339, file: !85, line: 608, type: !89)
!344 = !DILocation(line: 0, scope: !339, inlinedAt: !345)
!345 = distinct !DILocation(line: 349, column: 29, scope: !335)
!346 = !DILocation(line: 612, column: 32, scope: !339, inlinedAt: !345)
!347 = !DILocation(line: 612, column: 3, scope: !339, inlinedAt: !345)
!348 = !DILocation(line: 613, column: 18, scope: !349, inlinedAt: !345)
!349 = distinct !DILexicalBlock(scope: !339, file: !85, line: 613, column: 7)
!350 = !DILocation(line: 613, column: 23, scope: !349, inlinedAt: !345)
!351 = !DILocation(line: 613, column: 7, scope: !339, inlinedAt: !345)
!352 = !DILocation(line: 618, column: 26, scope: !339, inlinedAt: !345)
!353 = !DILocation(line: 619, column: 36, scope: !339, inlinedAt: !345)
!354 = !DILocation(line: 619, column: 18, scope: !339, inlinedAt: !345)
!355 = !DILocation(line: 350, column: 22, scope: !335)
!356 = !DILocation(line: 350, column: 9, scope: !335)
!357 = !DILocation(line: 352, column: 29, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !85, line: 352, column: 15)
!359 = distinct !DILexicalBlock(scope: !335, file: !85, line: 351, column: 9)
!360 = !{!319, !196, i64 16}
!361 = !DILocation(line: 352, column: 44, scope: !358)
!362 = !DILocation(line: 352, column: 15, scope: !359)
!363 = !DILocation(line: 353, column: 60, scope: !358)
!364 = !{!365, !196, i64 8}
!365 = !{!"_EntryInfo", !193, i64 0, !196, i64 8, !196, i64 16}
!366 = !DILocation(line: 353, column: 24, scope: !358)
!367 = !DILocation(line: 353, column: 23, scope: !358)
!368 = !DILocation(line: 353, column: 13, scope: !358)
!369 = !DILocation(line: 354, column: 29, scope: !370)
!370 = distinct !DILexicalBlock(scope: !359, file: !85, line: 354, column: 15)
!371 = !{!319, !196, i64 24}
!372 = !DILocation(line: 354, column: 46, scope: !370)
!373 = !DILocation(line: 354, column: 15, scope: !359)
!374 = !DILocation(line: 355, column: 64, scope: !370)
!375 = !{!365, !196, i64 16}
!376 = !DILocation(line: 355, column: 26, scope: !370)
!377 = !DILocation(line: 355, column: 25, scope: !370)
!378 = !DILocation(line: 355, column: 13, scope: !370)
!379 = !DILocation(line: 0, scope: !339, inlinedAt: !380)
!380 = distinct !DILocation(line: 356, column: 31, scope: !359)
!381 = !DILocation(line: 612, column: 32, scope: !339, inlinedAt: !380)
!382 = !DILocation(line: 612, column: 3, scope: !339, inlinedAt: !380)
!383 = !DILocation(line: 613, column: 18, scope: !349, inlinedAt: !380)
!384 = !DILocation(line: 613, column: 23, scope: !349, inlinedAt: !380)
!385 = !DILocation(line: 613, column: 7, scope: !339, inlinedAt: !380)
!386 = !DILocation(line: 618, column: 26, scope: !339, inlinedAt: !380)
!387 = !DILocation(line: 619, column: 36, scope: !339, inlinedAt: !380)
!388 = !DILocation(line: 619, column: 18, scope: !339, inlinedAt: !380)
!389 = distinct !{!389, !356, !390, !270, !271}
!390 = !DILocation(line: 357, column: 9, scope: !335)
!391 = !DILocation(line: 0, scope: !335)
!392 = !DILocation(line: 408, column: 32, scope: !393, inlinedAt: !401)
!393 = distinct !DISubprogram(name: "DestroyLinkedList", scope: !85, file: !85, line: 397, type: !394, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{!121, !121, !92}
!396 = !{!397, !398, !399, !400}
!397 = !DILocalVariable(name: "list_info", arg: 1, scope: !393, file: !85, line: 397, type: !121)
!398 = !DILocalVariable(name: "relinquish_value", arg: 2, scope: !393, file: !85, line: 398, type: !92)
!399 = !DILocalVariable(name: "entry", scope: !393, file: !85, line: 401, type: !83)
!400 = !DILocalVariable(name: "next", scope: !393, file: !85, line: 404, type: !83)
!401 = distinct !DILocation(line: 360, column: 17, scope: !402)
!402 = distinct !DILexicalBlock(scope: !328, file: !85, line: 359, column: 9)
!403 = !DILocation(line: 0, scope: !393, inlinedAt: !401)
!404 = !DILocation(line: 408, column: 3, scope: !393, inlinedAt: !401)
!405 = !DILocation(line: 409, column: 24, scope: !406, inlinedAt: !401)
!406 = distinct !DILexicalBlock(scope: !393, file: !85, line: 409, column: 3)
!407 = !DILocation(line: 409, column: 35, scope: !408, inlinedAt: !401)
!408 = distinct !DILexicalBlock(scope: !406, file: !85, line: 409, column: 3)
!409 = !DILocation(line: 409, column: 3, scope: !406, inlinedAt: !401)
!410 = !DILocation(line: 412, column: 42, scope: !411, inlinedAt: !401)
!411 = distinct !DILexicalBlock(scope: !412, file: !85, line: 411, column: 9)
!412 = distinct !DILexicalBlock(scope: !408, file: !85, line: 410, column: 3)
!413 = !DILocation(line: 412, column: 19, scope: !411, inlinedAt: !401)
!414 = !DILocation(line: 412, column: 18, scope: !411, inlinedAt: !401)
!415 = !DILocation(line: 414, column: 16, scope: !412, inlinedAt: !401)
!416 = !DILocation(line: 415, column: 27, scope: !412, inlinedAt: !401)
!417 = distinct !{!417, !409, !418, !270, !271}
!418 = !DILocation(line: 416, column: 3, scope: !406, inlinedAt: !401)
!419 = !DILocation(line: 417, column: 14, scope: !393, inlinedAt: !401)
!420 = !DILocation(line: 417, column: 23, scope: !393, inlinedAt: !401)
!421 = !{!192, !193, i64 48}
!422 = !DILocation(line: 418, column: 34, scope: !393, inlinedAt: !401)
!423 = !DILocation(line: 418, column: 3, scope: !393, inlinedAt: !401)
!424 = !DILocation(line: 419, column: 3, scope: !393, inlinedAt: !401)
!425 = !DILocation(line: 420, column: 32, scope: !393, inlinedAt: !401)
!426 = !DILocation(line: 360, column: 7, scope: !402)
!427 = !DILocation(line: 343, column: 52, scope: !322)
!428 = distinct !{!428, !326, !429, !270, !271}
!429 = !DILocation(line: 361, column: 3, scope: !323)
!430 = !DILocation(line: 363, column: 19, scope: !308)
!431 = !DILocation(line: 362, column: 41, scope: !308)
!432 = !DILocation(line: 362, column: 20, scope: !308)
!433 = !DILocation(line: 364, column: 17, scope: !308)
!434 = !DILocation(line: 364, column: 26, scope: !308)
!435 = !{!319, !193, i64 80}
!436 = !DILocation(line: 365, column: 37, scope: !308)
!437 = !DILocation(line: 365, column: 3, scope: !308)
!438 = !DILocation(line: 366, column: 3, scope: !308)
!439 = !DILocation(line: 367, column: 32, scope: !308)
!440 = !DILocation(line: 368, column: 3, scope: !308)
!441 = !DILocation(line: 0, scope: !339)
!442 = !DILocation(line: 612, column: 32, scope: !339)
!443 = !DILocation(line: 612, column: 3, scope: !339)
!444 = !DILocation(line: 613, column: 18, scope: !349)
!445 = !DILocation(line: 613, column: 23, scope: !349)
!446 = !DILocation(line: 613, column: 7, scope: !339)
!447 = !DILocation(line: 618, column: 26, scope: !339)
!448 = !DILocation(line: 619, column: 36, scope: !339)
!449 = !DILocation(line: 619, column: 18, scope: !339)
!450 = !DILocation(line: 621, column: 3, scope: !339)
!451 = !DILocation(line: 622, column: 1, scope: !339)
!452 = !DILocation(line: 0, scope: !393)
!453 = !DILocation(line: 408, column: 32, scope: !393)
!454 = !DILocation(line: 408, column: 3, scope: !393)
!455 = !DILocation(line: 409, column: 24, scope: !406)
!456 = !DILocation(line: 409, column: 35, scope: !408)
!457 = !DILocation(line: 409, column: 3, scope: !406)
!458 = !DILocation(line: 411, column: 9, scope: !412)
!459 = !DILocation(line: 414, column: 16, scope: !412)
!460 = !DILocation(line: 415, column: 27, scope: !412)
!461 = distinct !{!461, !457, !462, !270, !271}
!462 = !DILocation(line: 416, column: 3, scope: !406)
!463 = !DILocation(line: 412, column: 42, scope: !411)
!464 = !DILocation(line: 412, column: 19, scope: !411)
!465 = !DILocation(line: 412, column: 18, scope: !411)
!466 = !DILocation(line: 417, column: 14, scope: !393)
!467 = !DILocation(line: 417, column: 23, scope: !393)
!468 = !DILocation(line: 418, column: 34, scope: !393)
!469 = !DILocation(line: 418, column: 3, scope: !393)
!470 = !DILocation(line: 419, column: 3, scope: !393)
!471 = !DILocation(line: 420, column: 32, scope: !393)
!472 = !DILocation(line: 421, column: 3, scope: !393)
!473 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !134, file: !134, line: 36, type: !474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!477 = distinct !DISubprogram(name: "GetLastValueInLinkedList", scope: !85, file: !85, line: 446, type: !340, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !478)
!478 = !{!479, !480}
!479 = !DILocalVariable(name: "list_info", arg: 1, scope: !477, file: !85, line: 446, type: !121)
!480 = !DILocalVariable(name: "value", scope: !477, file: !85, line: 449, type: !89)
!481 = !DILocation(line: 0, scope: !477)
!482 = !DILocation(line: 453, column: 18, scope: !483)
!483 = distinct !DILexicalBlock(scope: !477, file: !85, line: 453, column: 7)
!484 = !DILocation(line: 453, column: 27, scope: !483)
!485 = !DILocation(line: 453, column: 7, scope: !477)
!486 = !DILocation(line: 455, column: 32, scope: !477)
!487 = !DILocation(line: 455, column: 3, scope: !477)
!488 = !DILocation(line: 456, column: 20, scope: !477)
!489 = !DILocation(line: 456, column: 26, scope: !477)
!490 = !DILocation(line: 457, column: 34, scope: !477)
!491 = !DILocation(line: 457, column: 3, scope: !477)
!492 = !DILocation(line: 458, column: 3, scope: !477)
!493 = !DILocation(line: 459, column: 1, scope: !477)
!494 = distinct !DISubprogram(name: "GetNextKeyInHashmap", scope: !85, file: !85, line: 483, type: !495, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !497)
!495 = !DISubroutineType(types: !496)
!496 = !{!89, !145}
!497 = !{!498, !499, !500, !501}
!498 = !DILocalVariable(name: "hashmap_info", arg: 1, scope: !494, file: !85, line: 483, type: !145)
!499 = !DILocalVariable(name: "list_info", scope: !494, file: !85, line: 486, type: !121)
!500 = !DILocalVariable(name: "entry", scope: !494, file: !85, line: 489, type: !137)
!501 = !DILocalVariable(name: "key", scope: !494, file: !85, line: 492, type: !89)
!502 = !DILocation(line: 0, scope: !494)
!503 = !DILocation(line: 496, column: 35, scope: !494)
!504 = !DILocation(line: 496, column: 3, scope: !494)
!505 = !DILocation(line: 497, column: 24, scope: !494)
!506 = !{!319, !193, i64 48}
!507 = !DILocation(line: 497, column: 45, scope: !494)
!508 = !DILocation(line: 497, column: 29, scope: !494)
!509 = !DILocation(line: 497, column: 3, scope: !494)
!510 = !DILocation(line: 499, column: 29, scope: !511)
!511 = distinct !DILexicalBlock(scope: !494, file: !85, line: 498, column: 3)
!512 = !DILocation(line: 499, column: 15, scope: !511)
!513 = !DILocation(line: 500, column: 19, scope: !514)
!514 = distinct !DILexicalBlock(scope: !511, file: !85, line: 500, column: 9)
!515 = !DILocation(line: 500, column: 9, scope: !511)
!516 = !DILocation(line: 502, column: 27, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !85, line: 502, column: 13)
!518 = distinct !DILexicalBlock(scope: !514, file: !85, line: 501, column: 7)
!519 = !{!319, !194, i64 56}
!520 = !DILocation(line: 502, column: 40, scope: !517)
!521 = !DILocation(line: 502, column: 13, scope: !518)
!522 = !DILocation(line: 504, column: 40, scope: !523)
!523 = distinct !DILexicalBlock(scope: !517, file: !85, line: 503, column: 11)
!524 = !DILocation(line: 504, column: 24, scope: !523)
!525 = !DILocation(line: 504, column: 28, scope: !523)
!526 = !DILocation(line: 505, column: 39, scope: !523)
!527 = !DILocation(line: 506, column: 11, scope: !523)
!528 = !DILocation(line: 0, scope: !339, inlinedAt: !529)
!529 = distinct !DILocation(line: 507, column: 29, scope: !518)
!530 = !DILocation(line: 612, column: 32, scope: !339, inlinedAt: !529)
!531 = !DILocation(line: 612, column: 3, scope: !339, inlinedAt: !529)
!532 = !DILocation(line: 613, column: 18, scope: !349, inlinedAt: !529)
!533 = !DILocation(line: 613, column: 23, scope: !349, inlinedAt: !529)
!534 = !DILocation(line: 613, column: 7, scope: !339, inlinedAt: !529)
!535 = !DILocation(line: 508, column: 13, scope: !518)
!536 = !DILocation(line: 618, column: 26, scope: !339, inlinedAt: !529)
!537 = !DILocation(line: 619, column: 36, scope: !339, inlinedAt: !529)
!538 = !DILocation(line: 619, column: 18, scope: !339, inlinedAt: !529)
!539 = !DILocation(line: 508, column: 19, scope: !540)
!540 = distinct !DILexicalBlock(scope: !518, file: !85, line: 508, column: 13)
!541 = !DILocation(line: 510, column: 24, scope: !542)
!542 = distinct !DILexicalBlock(scope: !540, file: !85, line: 509, column: 11)
!543 = !DILocation(line: 512, column: 13, scope: !542)
!544 = !DILocation(line: 514, column: 35, scope: !518)
!545 = !DILocation(line: 516, column: 23, scope: !511)
!546 = !DILocation(line: 515, column: 7, scope: !518)
!547 = distinct !{!547, !509, !548, !270, !271}
!548 = !DILocation(line: 517, column: 3, scope: !494)
!549 = !DILocation(line: 520, column: 1, scope: !494)
!550 = distinct !DISubprogram(name: "GetNextValueInHashmap", scope: !85, file: !85, line: 544, type: !495, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !551)
!551 = !{!552, !553, !554, !555}
!552 = !DILocalVariable(name: "hashmap_info", arg: 1, scope: !550, file: !85, line: 544, type: !145)
!553 = !DILocalVariable(name: "list_info", scope: !550, file: !85, line: 547, type: !121)
!554 = !DILocalVariable(name: "entry", scope: !550, file: !85, line: 550, type: !137)
!555 = !DILocalVariable(name: "value", scope: !550, file: !85, line: 553, type: !89)
!556 = !DILocation(line: 0, scope: !550)
!557 = !DILocation(line: 557, column: 35, scope: !550)
!558 = !DILocation(line: 557, column: 3, scope: !550)
!559 = !DILocation(line: 558, column: 24, scope: !550)
!560 = !DILocation(line: 558, column: 45, scope: !550)
!561 = !DILocation(line: 558, column: 29, scope: !550)
!562 = !DILocation(line: 558, column: 3, scope: !550)
!563 = !DILocation(line: 560, column: 29, scope: !564)
!564 = distinct !DILexicalBlock(scope: !550, file: !85, line: 559, column: 3)
!565 = !DILocation(line: 560, column: 15, scope: !564)
!566 = !DILocation(line: 561, column: 19, scope: !567)
!567 = distinct !DILexicalBlock(scope: !564, file: !85, line: 561, column: 9)
!568 = !DILocation(line: 561, column: 9, scope: !564)
!569 = !DILocation(line: 563, column: 27, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !85, line: 563, column: 13)
!571 = distinct !DILexicalBlock(scope: !567, file: !85, line: 562, column: 7)
!572 = !DILocation(line: 563, column: 40, scope: !570)
!573 = !DILocation(line: 563, column: 13, scope: !571)
!574 = !DILocation(line: 565, column: 40, scope: !575)
!575 = distinct !DILexicalBlock(scope: !570, file: !85, line: 564, column: 11)
!576 = !DILocation(line: 565, column: 24, scope: !575)
!577 = !DILocation(line: 565, column: 28, scope: !575)
!578 = !DILocation(line: 566, column: 39, scope: !575)
!579 = !DILocation(line: 567, column: 11, scope: !575)
!580 = !DILocation(line: 0, scope: !339, inlinedAt: !581)
!581 = distinct !DILocation(line: 568, column: 29, scope: !571)
!582 = !DILocation(line: 612, column: 32, scope: !339, inlinedAt: !581)
!583 = !DILocation(line: 612, column: 3, scope: !339, inlinedAt: !581)
!584 = !DILocation(line: 613, column: 18, scope: !349, inlinedAt: !581)
!585 = !DILocation(line: 613, column: 23, scope: !349, inlinedAt: !581)
!586 = !DILocation(line: 613, column: 7, scope: !339, inlinedAt: !581)
!587 = !DILocation(line: 569, column: 13, scope: !571)
!588 = !DILocation(line: 618, column: 26, scope: !339, inlinedAt: !581)
!589 = !DILocation(line: 619, column: 36, scope: !339, inlinedAt: !581)
!590 = !DILocation(line: 619, column: 18, scope: !339, inlinedAt: !581)
!591 = !DILocation(line: 569, column: 19, scope: !592)
!592 = distinct !DILexicalBlock(scope: !571, file: !85, line: 569, column: 13)
!593 = !DILocation(line: 571, column: 26, scope: !594)
!594 = distinct !DILexicalBlock(scope: !592, file: !85, line: 570, column: 11)
!595 = !DILocation(line: 573, column: 13, scope: !594)
!596 = !DILocation(line: 575, column: 35, scope: !571)
!597 = !DILocation(line: 577, column: 23, scope: !564)
!598 = !DILocation(line: 576, column: 7, scope: !571)
!599 = distinct !{!599, !562, !600, !270, !271}
!600 = !DILocation(line: 578, column: 3, scope: !550)
!601 = !DILocation(line: 581, column: 1, scope: !550)
!602 = distinct !DISubprogram(name: "GetNumberOfEntriesInHashmap", scope: !85, file: !85, line: 646, type: !603, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !607)
!603 = !DISubroutineType(types: !604)
!604 = !{!112, !605}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!607 = !{!608}
!608 = !DILocalVariable(name: "hashmap_info", arg: 1, scope: !602, file: !85, line: 647, type: !605)
!609 = !DILocation(line: 0, scope: !602)
!610 = !DILocation(line: 651, column: 24, scope: !602)
!611 = !{!319, !193, i64 40}
!612 = !DILocation(line: 651, column: 3, scope: !602)
!613 = distinct !DISubprogram(name: "GetNumberOfElementsInLinkedList", scope: !85, file: !85, line: 678, type: !614, scopeLine: 680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !618)
!614 = !DISubroutineType(types: !615)
!615 = !{!112, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!618 = !{!619}
!619 = !DILocalVariable(name: "list_info", arg: 1, scope: !613, file: !85, line: 679, type: !616)
!620 = !DILocation(line: 0, scope: !613)
!621 = !DILocation(line: 683, column: 21, scope: !613)
!622 = !DILocation(line: 683, column: 3, scope: !613)
!623 = distinct !DISubprogram(name: "GetValueFromHashmap", scope: !85, file: !85, line: 710, type: !624, scopeLine: 712, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !626)
!624 = !DISubroutineType(types: !625)
!625 = !{!89, !145, !153}
!626 = !{!627, !628, !629, !630, !631, !632, !633}
!627 = !DILocalVariable(name: "hashmap_info", arg: 1, scope: !623, file: !85, line: 710, type: !145)
!628 = !DILocalVariable(name: "key", arg: 2, scope: !623, file: !85, line: 711, type: !153)
!629 = !DILocalVariable(name: "list_info", scope: !623, file: !85, line: 714, type: !121)
!630 = !DILocalVariable(name: "entry", scope: !623, file: !85, line: 717, type: !137)
!631 = !DILocalVariable(name: "hash", scope: !623, file: !85, line: 720, type: !112)
!632 = !DILocalVariable(name: "value", scope: !623, file: !85, line: 723, type: !89)
!633 = !DILocalVariable(name: "compare", scope: !634, file: !85, line: 741, type: !159)
!634 = distinct !DILexicalBlock(scope: !635, file: !85, line: 739, column: 11)
!635 = distinct !DILexicalBlock(scope: !636, file: !85, line: 738, column: 13)
!636 = distinct !DILexicalBlock(scope: !637, file: !85, line: 737, column: 7)
!637 = distinct !DILexicalBlock(scope: !638, file: !85, line: 733, column: 5)
!638 = distinct !DILexicalBlock(scope: !623, file: !85, line: 732, column: 7)
!639 = !DILocation(line: 0, scope: !623)
!640 = !DILocation(line: 727, column: 11, scope: !641)
!641 = distinct !DILexicalBlock(scope: !623, file: !85, line: 727, column: 7)
!642 = !DILocation(line: 727, column: 7, scope: !623)
!643 = !DILocation(line: 729, column: 35, scope: !623)
!644 = !DILocation(line: 729, column: 3, scope: !623)
!645 = !DILocation(line: 730, column: 22, scope: !623)
!646 = !{!319, !196, i64 0}
!647 = !DILocation(line: 730, column: 8, scope: !623)
!648 = !DILocation(line: 731, column: 27, scope: !623)
!649 = !DILocation(line: 731, column: 52, scope: !623)
!650 = !DILocation(line: 731, column: 36, scope: !623)
!651 = !DILocation(line: 731, column: 13, scope: !623)
!652 = !DILocation(line: 732, column: 17, scope: !638)
!653 = !DILocation(line: 732, column: 7, scope: !623)
!654 = !DILocation(line: 734, column: 34, scope: !637)
!655 = !DILocation(line: 734, column: 18, scope: !637)
!656 = !DILocation(line: 734, column: 22, scope: !637)
!657 = !DILocation(line: 0, scope: !339, inlinedAt: !658)
!658 = distinct !DILocation(line: 735, column: 27, scope: !637)
!659 = !DILocation(line: 612, column: 32, scope: !339, inlinedAt: !658)
!660 = !DILocation(line: 612, column: 3, scope: !339, inlinedAt: !658)
!661 = !DILocation(line: 613, column: 18, scope: !349, inlinedAt: !658)
!662 = !DILocation(line: 613, column: 23, scope: !349, inlinedAt: !658)
!663 = !DILocation(line: 613, column: 7, scope: !339, inlinedAt: !658)
!664 = !DILocation(line: 618, column: 26, scope: !339, inlinedAt: !658)
!665 = !DILocation(line: 619, column: 36, scope: !339, inlinedAt: !658)
!666 = !DILocation(line: 619, column: 18, scope: !339, inlinedAt: !658)
!667 = !DILocation(line: 736, column: 20, scope: !637)
!668 = !DILocation(line: 736, column: 7, scope: !637)
!669 = !DILocation(line: 738, column: 20, scope: !635)
!670 = !{!365, !193, i64 0}
!671 = !DILocation(line: 738, column: 25, scope: !635)
!672 = !DILocation(line: 738, column: 13, scope: !636)
!673 = !DILocation(line: 0, scope: !634)
!674 = !DILocation(line: 744, column: 31, scope: !675)
!675 = distinct !DILexicalBlock(scope: !634, file: !85, line: 744, column: 17)
!676 = !{!319, !196, i64 8}
!677 = !DILocation(line: 744, column: 39, scope: !675)
!678 = !DILocation(line: 744, column: 17, scope: !634)
!679 = !DILocation(line: 746, column: 56, scope: !675)
!680 = !DILocation(line: 746, column: 23, scope: !675)
!681 = !DILocation(line: 747, column: 25, scope: !682)
!682 = distinct !DILexicalBlock(scope: !634, file: !85, line: 747, column: 17)
!683 = !DILocation(line: 747, column: 17, scope: !634)
!684 = !DILocation(line: 749, column: 30, scope: !685)
!685 = distinct !DILexicalBlock(scope: !682, file: !85, line: 748, column: 15)
!686 = !DILocation(line: 0, scope: !339, inlinedAt: !687)
!687 = distinct !DILocation(line: 754, column: 29, scope: !636)
!688 = !DILocation(line: 612, column: 32, scope: !339, inlinedAt: !687)
!689 = !DILocation(line: 612, column: 3, scope: !339, inlinedAt: !687)
!690 = !DILocation(line: 613, column: 18, scope: !349, inlinedAt: !687)
!691 = !DILocation(line: 613, column: 23, scope: !349, inlinedAt: !687)
!692 = !DILocation(line: 613, column: 7, scope: !339, inlinedAt: !687)
!693 = !DILocation(line: 618, column: 26, scope: !339, inlinedAt: !687)
!694 = !DILocation(line: 619, column: 36, scope: !339, inlinedAt: !687)
!695 = !DILocation(line: 619, column: 18, scope: !339, inlinedAt: !687)
!696 = distinct !{!696, !668, !697, !270, !271}
!697 = !DILocation(line: 755, column: 7, scope: !637)
!698 = !DILocation(line: 0, scope: !637)
!699 = !DILocation(line: 757, column: 37, scope: !623)
!700 = !DILocation(line: 759, column: 1, scope: !623)
!701 = distinct !DISubprogram(name: "GetValueFromLinkedList", scope: !85, file: !85, line: 787, type: !702, scopeLine: 789, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !704)
!702 = !DISubroutineType(types: !703)
!703 = !{!89, !121, !243}
!704 = !{!705, !706, !707, !708, !709}
!705 = !DILocalVariable(name: "list_info", arg: 1, scope: !701, file: !85, line: 787, type: !121)
!706 = !DILocalVariable(name: "index", arg: 2, scope: !701, file: !85, line: 788, type: !243)
!707 = !DILocalVariable(name: "next", scope: !701, file: !85, line: 791, type: !83)
!708 = !DILocalVariable(name: "i", scope: !701, file: !85, line: 794, type: !116)
!709 = !DILocalVariable(name: "value", scope: !701, file: !85, line: 797, type: !89)
!710 = !DILocation(line: 0, scope: !701)
!711 = !DILocation(line: 801, column: 27, scope: !712)
!712 = distinct !DILexicalBlock(scope: !701, file: !85, line: 801, column: 7)
!713 = !DILocation(line: 801, column: 13, scope: !712)
!714 = !DILocation(line: 801, column: 7, scope: !701)
!715 = !DILocation(line: 803, column: 32, scope: !701)
!716 = !DILocation(line: 803, column: 3, scope: !701)
!717 = !DILocation(line: 804, column: 13, scope: !718)
!718 = distinct !DILexicalBlock(scope: !701, file: !85, line: 804, column: 7)
!719 = !DILocation(line: 804, column: 7, scope: !701)
!720 = !DILocation(line: 806, column: 24, scope: !721)
!721 = distinct !DILexicalBlock(scope: !718, file: !85, line: 805, column: 5)
!722 = !DILocation(line: 808, column: 7, scope: !721)
!723 = !DILocation(line: 810, column: 28, scope: !724)
!724 = distinct !DILexicalBlock(scope: !701, file: !85, line: 810, column: 7)
!725 = !DILocation(line: 810, column: 36, scope: !724)
!726 = !DILocation(line: 810, column: 13, scope: !724)
!727 = !DILocation(line: 810, column: 7, scope: !701)
!728 = !DILocation(line: 812, column: 24, scope: !729)
!729 = distinct !DILexicalBlock(scope: !724, file: !85, line: 811, column: 5)
!730 = !DILocation(line: 814, column: 7, scope: !729)
!731 = !DILocation(line: 816, column: 19, scope: !701)
!732 = !DILocation(line: 817, column: 15, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !85, line: 817, column: 3)
!734 = distinct !DILexicalBlock(scope: !701, file: !85, line: 817, column: 3)
!735 = !DILocation(line: 817, column: 3, scope: !734)
!736 = !DILocation(line: 818, column: 16, scope: !733)
!737 = !DILocation(line: 817, column: 35, scope: !733)
!738 = distinct !{!738, !735, !739, !270, !271}
!739 = !DILocation(line: 818, column: 16, scope: !734)
!740 = !DILocation(line: 822, column: 1, scope: !701)
!741 = distinct !DISubprogram(name: "HashPointerType", scope: !85, file: !85, line: 847, type: !151, scopeLine: 848, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !742)
!742 = !{!743, !744}
!743 = !DILocalVariable(name: "pointer", arg: 1, scope: !741, file: !85, line: 847, type: !153)
!744 = !DILocalVariable(name: "hash", scope: !741, file: !85, line: 850, type: !112)
!745 = !DILocation(line: 0, scope: !741)
!746 = !DILocation(line: 852, column: 8, scope: !741)
!747 = !DILocation(line: 853, column: 17, scope: !741)
!748 = !DILocation(line: 853, column: 10, scope: !741)
!749 = !DILocation(line: 853, column: 7, scope: !741)
!750 = !DILocation(line: 854, column: 15, scope: !741)
!751 = !DILocation(line: 854, column: 7, scope: !741)
!752 = !DILocation(line: 855, column: 7, scope: !741)
!753 = !DILocation(line: 856, column: 15, scope: !741)
!754 = !DILocation(line: 856, column: 7, scope: !741)
!755 = !DILocation(line: 857, column: 3, scope: !741)
!756 = distinct !DISubprogram(name: "HashStringType", scope: !85, file: !85, line: 883, type: !151, scopeLine: 884, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !757)
!757 = !{!758, !759, !762, !763, !768, !769}
!758 = !DILocalVariable(name: "string", arg: 1, scope: !756, file: !85, line: 883, type: !153)
!759 = !DILocalVariable(name: "digest", scope: !756, file: !85, line: 886, type: !760)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!762 = !DILocalVariable(name: "i", scope: !756, file: !85, line: 889, type: !116)
!763 = !DILocalVariable(name: "signature_info", scope: !756, file: !85, line: 892, type: !764)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "SignatureInfo", file: !766, line: 30, baseType: !767)
!766 = !DIFile(filename: "apps/538.imagick_r/src/magick/signature-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f72c89ffa1995573b65986daac7c57d4")
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SignatureInfo", file: !766, line: 29, flags: DIFlagFwdDecl)
!768 = !DILocalVariable(name: "hash", scope: !756, file: !85, line: 895, type: !112)
!769 = !DILocalVariable(name: "signature", scope: !756, file: !85, line: 898, type: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!771 = !DILocation(line: 0, scope: !756)
!772 = !DILocation(line: 900, column: 18, scope: !756)
!773 = !DILocation(line: 901, column: 13, scope: !756)
!774 = !DILocation(line: 902, column: 3, scope: !756)
!775 = !DILocation(line: 903, column: 3, scope: !756)
!776 = !DILocation(line: 904, column: 29, scope: !756)
!777 = !DILocation(line: 904, column: 10, scope: !756)
!778 = !DILocation(line: 906, column: 3, scope: !779)
!779 = distinct !DILexicalBlock(scope: !756, file: !85, line: 906, column: 3)
!780 = !DILocation(line: 907, column: 11, scope: !781)
!781 = distinct !DILexicalBlock(scope: !779, file: !85, line: 906, column: 3)
!782 = !{!194, !194, i64 0}
!783 = !DILocation(line: 907, column: 9, scope: !781)
!784 = !DILocation(line: 906, column: 21, scope: !781)
!785 = !DILocation(line: 906, column: 15, scope: !781)
!786 = distinct !{!786, !778, !787, !270, !271}
!787 = !DILocation(line: 907, column: 19, scope: !779)
!788 = !DILocation(line: 908, column: 13, scope: !756)
!789 = !DILocation(line: 909, column: 18, scope: !756)
!790 = !DILocation(line: 910, column: 3, scope: !756)
!791 = !DISubprogram(name: "AcquireSignatureInfo", scope: !766, file: !766, line: 36, type: !792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!792 = !DISubroutineType(types: !793)
!793 = !{!764}
!794 = !DISubprogram(name: "StringToStringInfo", scope: !101, file: !101, line: 94, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!795 = !DISubroutineType(types: !796)
!796 = !{!770, !95}
!797 = !DISubprogram(name: "UpdateSignature", scope: !766, file: !766, line: 50, type: !798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !764, !98}
!800 = !DISubprogram(name: "FinalizeSignature", scope: !766, file: !766, line: 48, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !764}
!803 = !DISubprogram(name: "GetStringInfoDatum", scope: !101, file: !101, line: 97, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!804 = !DISubroutineType(types: !805)
!805 = !{!109, !98}
!806 = !DISubprogram(name: "GetSignatureDigest", scope: !766, file: !766, line: 40, type: !807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!807 = !DISubroutineType(types: !808)
!808 = !{!98, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!811 = !DISubprogram(name: "DestroyStringInfo", scope: !101, file: !101, line: 91, type: !812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!812 = !DISubroutineType(types: !813)
!813 = !{!770, !770}
!814 = !DISubprogram(name: "DestroySignatureInfo", scope: !766, file: !766, line: 37, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!815 = !DISubroutineType(types: !816)
!816 = !{!764, !764}
!817 = distinct !DISubprogram(name: "HashStringInfoType", scope: !85, file: !85, line: 936, type: !151, scopeLine: 937, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !818)
!818 = !{!819, !820, !821, !822, !823}
!819 = !DILocalVariable(name: "string_info", arg: 1, scope: !817, file: !85, line: 936, type: !153)
!820 = !DILocalVariable(name: "digest", scope: !817, file: !85, line: 939, type: !760)
!821 = !DILocalVariable(name: "i", scope: !817, file: !85, line: 942, type: !116)
!822 = !DILocalVariable(name: "signature_info", scope: !817, file: !85, line: 945, type: !764)
!823 = !DILocalVariable(name: "hash", scope: !817, file: !85, line: 948, type: !112)
!824 = !DILocation(line: 0, scope: !817)
!825 = !DILocation(line: 950, column: 18, scope: !817)
!826 = !DILocation(line: 951, column: 3, scope: !817)
!827 = !DILocation(line: 952, column: 3, scope: !817)
!828 = !DILocation(line: 953, column: 29, scope: !817)
!829 = !DILocation(line: 953, column: 10, scope: !817)
!830 = !DILocation(line: 955, column: 3, scope: !831)
!831 = distinct !DILexicalBlock(scope: !817, file: !85, line: 955, column: 3)
!832 = !DILocation(line: 956, column: 11, scope: !833)
!833 = distinct !DILexicalBlock(scope: !831, file: !85, line: 955, column: 3)
!834 = !DILocation(line: 956, column: 9, scope: !833)
!835 = !DILocation(line: 955, column: 21, scope: !833)
!836 = !DILocation(line: 955, column: 15, scope: !833)
!837 = distinct !{!837, !830, !838, !270, !271}
!838 = !DILocation(line: 956, column: 19, scope: !831)
!839 = !DILocation(line: 957, column: 18, scope: !817)
!840 = !DILocation(line: 958, column: 3, scope: !817)
!841 = distinct !DISubprogram(name: "InsertValueInLinkedList", scope: !85, file: !85, line: 989, type: !842, scopeLine: 991, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{!159, !121, !243, !153}
!844 = !{!845, !846, !847, !848, !849, !850}
!845 = !DILocalVariable(name: "list_info", arg: 1, scope: !841, file: !85, line: 990, type: !121)
!846 = !DILocalVariable(name: "index", arg: 2, scope: !841, file: !85, line: 990, type: !243)
!847 = !DILocalVariable(name: "value", arg: 3, scope: !841, file: !85, line: 990, type: !153)
!848 = !DILocalVariable(name: "next", scope: !841, file: !85, line: 993, type: !83)
!849 = !DILocalVariable(name: "i", scope: !841, file: !85, line: 996, type: !116)
!850 = !DILocalVariable(name: "element", scope: !851, file: !85, line: 1038, type: !83)
!851 = distinct !DILexicalBlock(scope: !852, file: !85, line: 1036, column: 11)
!852 = distinct !DILexicalBlock(scope: !853, file: !85, line: 1028, column: 13)
!853 = distinct !DILexicalBlock(scope: !854, file: !85, line: 1020, column: 11)
!854 = distinct !DILexicalBlock(scope: !855, file: !85, line: 1019, column: 5)
!855 = distinct !DILexicalBlock(scope: !841, file: !85, line: 1011, column: 7)
!856 = !DILocation(line: 0, scope: !841)
!857 = !DILocation(line: 1000, column: 13, scope: !858)
!858 = distinct !DILexicalBlock(scope: !841, file: !85, line: 1000, column: 7)
!859 = !DILocation(line: 1000, column: 7, scope: !841)
!860 = !DILocation(line: 1002, column: 27, scope: !861)
!861 = distinct !DILexicalBlock(scope: !841, file: !85, line: 1002, column: 7)
!862 = !DILocation(line: 1002, column: 14, scope: !861)
!863 = !DILocation(line: 1002, column: 37, scope: !861)
!864 = !DILocation(line: 1003, column: 42, scope: !861)
!865 = !DILocation(line: 1003, column: 28, scope: !861)
!866 = !DILocation(line: 1002, column: 7, scope: !841)
!867 = !DILocation(line: 1005, column: 24, scope: !841)
!868 = !DILocation(line: 1006, column: 12, scope: !869)
!869 = distinct !DILexicalBlock(scope: !841, file: !85, line: 1006, column: 7)
!870 = !DILocation(line: 1006, column: 7, scope: !841)
!871 = !DILocation(line: 1008, column: 14, scope: !841)
!872 = !DILocation(line: 1009, column: 9, scope: !841)
!873 = !DILocation(line: 1009, column: 13, scope: !841)
!874 = !DILocation(line: 1010, column: 32, scope: !841)
!875 = !DILocation(line: 1010, column: 3, scope: !841)
!876 = !DILocation(line: 1011, column: 18, scope: !855)
!877 = !DILocation(line: 1011, column: 27, scope: !855)
!878 = !DILocation(line: 1011, column: 7, scope: !841)
!879 = !DILocation(line: 1013, column: 22, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !85, line: 1013, column: 11)
!881 = distinct !DILexicalBlock(scope: !855, file: !85, line: 1012, column: 5)
!882 = !DILocation(line: 1013, column: 27, scope: !880)
!883 = !DILocation(line: 1013, column: 11, scope: !881)
!884 = !DILocation(line: 1014, column: 24, scope: !880)
!885 = !DILocation(line: 1014, column: 9, scope: !880)
!886 = !DILocation(line: 1015, column: 18, scope: !881)
!887 = !DILocation(line: 1015, column: 22, scope: !881)
!888 = !DILocation(line: 1016, column: 18, scope: !881)
!889 = !DILocation(line: 1016, column: 22, scope: !881)
!890 = !DILocation(line: 1017, column: 5, scope: !881)
!891 = !DILocation(line: 1020, column: 17, scope: !853)
!892 = !DILocation(line: 1020, column: 11, scope: !854)
!893 = !DILocation(line: 1022, column: 26, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !85, line: 1022, column: 15)
!895 = distinct !DILexicalBlock(scope: !853, file: !85, line: 1021, column: 9)
!896 = !DILocation(line: 1022, column: 45, scope: !894)
!897 = !DILocation(line: 1022, column: 31, scope: !894)
!898 = !DILocation(line: 1022, column: 15, scope: !895)
!899 = !DILocation(line: 1023, column: 28, scope: !894)
!900 = !DILocation(line: 1023, column: 13, scope: !894)
!901 = !DILocation(line: 1024, column: 21, scope: !895)
!902 = !DILocation(line: 1025, column: 26, scope: !895)
!903 = !DILocation(line: 1026, column: 9, scope: !895)
!904 = !DILocation(line: 1028, column: 19, scope: !852)
!905 = !DILocation(line: 1028, column: 13, scope: !853)
!906 = !DILocation(line: 1030, column: 28, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !85, line: 1030, column: 17)
!908 = distinct !DILexicalBlock(scope: !852, file: !85, line: 1029, column: 11)
!909 = !DILocation(line: 1030, column: 33, scope: !907)
!910 = !DILocation(line: 1030, column: 17, scope: !908)
!911 = !DILocation(line: 1031, column: 30, scope: !907)
!912 = !DILocation(line: 1031, column: 15, scope: !907)
!913 = !DILocation(line: 1032, column: 24, scope: !908)
!914 = !DILocation(line: 1032, column: 30, scope: !908)
!915 = !DILocation(line: 1032, column: 34, scope: !908)
!916 = !DILocation(line: 1033, column: 28, scope: !908)
!917 = !DILocation(line: 1034, column: 11, scope: !908)
!918 = !DILocation(line: 1040, column: 32, scope: !851)
!919 = !DILocation(line: 0, scope: !851)
!920 = !DILocation(line: 1041, column: 33, scope: !851)
!921 = !DILocation(line: 1041, column: 23, scope: !851)
!922 = !DILocation(line: 1042, column: 25, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !85, line: 1042, column: 13)
!924 = distinct !DILexicalBlock(scope: !851, file: !85, line: 1042, column: 13)
!925 = !DILocation(line: 1042, column: 13, scope: !924)
!926 = !DILocation(line: 1044, column: 32, scope: !927)
!927 = distinct !DILexicalBlock(scope: !923, file: !85, line: 1043, column: 13)
!928 = !DILocation(line: 1045, column: 35, scope: !927)
!929 = !DILocation(line: 1045, column: 25, scope: !927)
!930 = !DILocation(line: 1042, column: 45, scope: !923)
!931 = distinct !{!931, !925, !932, !270, !271}
!932 = !DILocation(line: 1046, column: 13, scope: !924)
!933 = !DILocation(line: 1047, column: 24, scope: !851)
!934 = !DILocation(line: 1048, column: 22, scope: !851)
!935 = !DILocation(line: 1048, column: 26, scope: !851)
!936 = !DILocation(line: 1049, column: 28, scope: !937)
!937 = distinct !DILexicalBlock(scope: !851, file: !85, line: 1049, column: 17)
!938 = !DILocation(line: 1049, column: 42, scope: !937)
!939 = !DILocation(line: 1049, column: 33, scope: !937)
!940 = !DILocation(line: 1049, column: 17, scope: !851)
!941 = !DILocation(line: 1050, column: 30, scope: !937)
!942 = !DILocation(line: 1050, column: 15, scope: !937)
!943 = !DILocation(line: 1053, column: 22, scope: !841)
!944 = !DILocation(line: 1054, column: 34, scope: !841)
!945 = !DILocation(line: 1054, column: 3, scope: !841)
!946 = !DILocation(line: 1055, column: 3, scope: !841)
!947 = !DILocation(line: 1056, column: 1, scope: !841)
!948 = distinct !DISubprogram(name: "InsertValueInSortedLinkedList", scope: !85, file: !85, line: 1090, type: !949, scopeLine: 1093, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{!159, !121, !169, !173, !153}
!951 = !{!952, !953, !954, !955, !956, !957, !958}
!952 = !DILocalVariable(name: "list_info", arg: 1, scope: !948, file: !85, line: 1091, type: !121)
!953 = !DILocalVariable(name: "compare", arg: 2, scope: !948, file: !85, line: 1091, type: !169)
!954 = !DILocalVariable(name: "replace", arg: 3, scope: !948, file: !85, line: 1092, type: !173)
!955 = !DILocalVariable(name: "value", arg: 4, scope: !948, file: !85, line: 1092, type: !153)
!956 = !DILocalVariable(name: "element", scope: !948, file: !85, line: 1095, type: !83)
!957 = !DILocalVariable(name: "next", scope: !948, file: !85, line: 1098, type: !83)
!958 = !DILocalVariable(name: "i", scope: !948, file: !85, line: 1101, type: !116)
!959 = !DILocation(line: 0, scope: !948)
!960 = !DILocation(line: 1105, column: 16, scope: !961)
!961 = distinct !DILexicalBlock(scope: !948, file: !85, line: 1105, column: 7)
!962 = !DILocation(line: 1105, column: 62, scope: !961)
!963 = !DILocation(line: 1108, column: 18, scope: !964)
!964 = distinct !DILexicalBlock(scope: !948, file: !85, line: 1108, column: 7)
!965 = !DILocation(line: 1108, column: 41, scope: !964)
!966 = !DILocation(line: 1108, column: 27, scope: !964)
!967 = !DILocation(line: 1108, column: 7, scope: !948)
!968 = !DILocation(line: 1110, column: 24, scope: !948)
!969 = !DILocation(line: 1111, column: 12, scope: !970)
!970 = distinct !DILexicalBlock(scope: !948, file: !85, line: 1111, column: 7)
!971 = !DILocation(line: 1111, column: 7, scope: !948)
!972 = !DILocation(line: 1113, column: 14, scope: !948)
!973 = !DILocation(line: 1115, column: 32, scope: !948)
!974 = !DILocation(line: 1115, column: 3, scope: !948)
!975 = !DILocation(line: 1116, column: 25, scope: !948)
!976 = !DILocation(line: 1116, column: 9, scope: !948)
!977 = !DILocation(line: 1117, column: 21, scope: !948)
!978 = !DILocation(line: 1117, column: 3, scope: !948)
!979 = !DILocation(line: 1119, column: 43, scope: !980)
!980 = distinct !DILexicalBlock(scope: !948, file: !85, line: 1118, column: 3)
!981 = !DILocation(line: 1119, column: 17, scope: !980)
!982 = !DILocation(line: 1120, column: 12, scope: !983)
!983 = distinct !DILexicalBlock(scope: !980, file: !85, line: 1120, column: 9)
!984 = !DILocation(line: 1120, column: 17, scope: !983)
!985 = distinct !{!985, !978, !986, !270, !271}
!986 = !DILocation(line: 1139, column: 3, scope: !948)
!987 = !DILocation(line: 1137, column: 19, scope: !980)
!988 = !DILocation(line: 1138, column: 28, scope: !980)
!989 = !DILocation(line: 0, scope: !980)
!990 = !DILocation(line: 1120, column: 49, scope: !983)
!991 = !DILocation(line: 1124, column: 34, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !85, line: 1123, column: 11)
!993 = distinct !DILexicalBlock(scope: !994, file: !85, line: 1122, column: 13)
!994 = distinct !DILexicalBlock(scope: !983, file: !85, line: 1121, column: 7)
!995 = !DILocation(line: 1124, column: 21, scope: !992)
!996 = !DILocation(line: 1125, column: 30, scope: !992)
!997 = !DILocation(line: 1125, column: 36, scope: !992)
!998 = !DILocation(line: 1125, column: 23, scope: !992)
!999 = !DILocation(line: 1126, column: 25, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !992, file: !85, line: 1126, column: 17)
!1001 = !DILocation(line: 1126, column: 17, scope: !992)
!1002 = !DILocation(line: 1128, column: 26, scope: !1000)
!1003 = !DILocation(line: 1127, column: 45, scope: !1000)
!1004 = !DILocation(line: 1127, column: 28, scope: !1000)
!1005 = !DILocation(line: 1127, column: 15, scope: !1000)
!1006 = !DILocation(line: 1129, column: 32, scope: !992)
!1007 = !DILocation(line: 1130, column: 11, scope: !992)
!1008 = !DILocation(line: 1131, column: 21, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !994, file: !85, line: 1131, column: 13)
!1010 = !DILocation(line: 1131, column: 13, scope: !994)
!1011 = !DILocation(line: 1132, column: 20, scope: !1009)
!1012 = !DILocation(line: 1132, column: 11, scope: !1009)
!1013 = !DILocation(line: 0, scope: !1009)
!1014 = !DILocation(line: 1140, column: 13, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !948, file: !85, line: 1140, column: 7)
!1016 = !DILocation(line: 1140, column: 18, scope: !1015)
!1017 = !DILocation(line: 1140, column: 7, scope: !948)
!1018 = !DILocation(line: 1142, column: 19, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !85, line: 1142, column: 11)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !85, line: 1141, column: 5)
!1021 = !DILocation(line: 1142, column: 11, scope: !1020)
!1022 = !DILocation(line: 1143, column: 18, scope: !1019)
!1023 = !DILocation(line: 1143, column: 9, scope: !1019)
!1024 = !DILocation(line: 0, scope: !1019)
!1025 = !DILocation(line: 1146, column: 18, scope: !1020)
!1026 = !DILocation(line: 1146, column: 22, scope: !1020)
!1027 = !DILocation(line: 1147, column: 5, scope: !1020)
!1028 = !DILocation(line: 1148, column: 22, scope: !948)
!1029 = !DILocation(line: 1149, column: 34, scope: !948)
!1030 = !DILocation(line: 1149, column: 3, scope: !948)
!1031 = !DILocation(line: 1150, column: 3, scope: !948)
!1032 = !DILocation(line: 1151, column: 1, scope: !948)
!1033 = distinct !DISubprogram(name: "IsHashmapEmpty", scope: !85, file: !85, line: 1175, type: !1034, scopeLine: 1176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1036)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!159, !605}
!1036 = !{!1037}
!1037 = !DILocalVariable(name: "hashmap_info", arg: 1, scope: !1033, file: !85, line: 1175, type: !605)
!1038 = !DILocation(line: 0, scope: !1033)
!1039 = !DILocation(line: 1179, column: 24, scope: !1033)
!1040 = !DILocation(line: 1179, column: 32, scope: !1033)
!1041 = !DILocation(line: 1179, column: 10, scope: !1033)
!1042 = !DILocation(line: 1179, column: 3, scope: !1033)
!1043 = distinct !DISubprogram(name: "IsLinkedListEmpty", scope: !85, file: !85, line: 1204, type: !1044, scopeLine: 1206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1046)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!159, !616}
!1046 = !{!1047}
!1047 = !DILocalVariable(name: "list_info", arg: 1, scope: !1043, file: !85, line: 1205, type: !616)
!1048 = !DILocation(line: 0, scope: !1043)
!1049 = !DILocation(line: 1209, column: 21, scope: !1043)
!1050 = !DILocation(line: 1209, column: 30, scope: !1043)
!1051 = !DILocation(line: 1209, column: 10, scope: !1043)
!1052 = !DILocation(line: 1209, column: 3, scope: !1043)
!1053 = distinct !DISubprogram(name: "LinkedListToArray", scope: !85, file: !85, line: 1237, type: !1054, scopeLine: 1239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1056)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!159, !121, !173}
!1056 = !{!1057, !1058, !1059, !1060}
!1057 = !DILocalVariable(name: "list_info", arg: 1, scope: !1053, file: !85, line: 1237, type: !121)
!1058 = !DILocalVariable(name: "array", arg: 2, scope: !1053, file: !85, line: 1238, type: !173)
!1059 = !DILocalVariable(name: "next", scope: !1053, file: !85, line: 1241, type: !83)
!1060 = !DILocalVariable(name: "i", scope: !1053, file: !85, line: 1244, type: !116)
!1061 = !DILocation(line: 0, scope: !1053)
!1062 = !DILocation(line: 1248, column: 13, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1053, file: !85, line: 1248, column: 7)
!1064 = !DILocation(line: 1248, column: 7, scope: !1053)
!1065 = !DILocation(line: 1250, column: 32, scope: !1053)
!1066 = !DILocation(line: 1250, column: 3, scope: !1053)
!1067 = !DILocation(line: 1251, column: 19, scope: !1053)
!1068 = !DILocation(line: 1252, column: 18, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !85, line: 1252, column: 3)
!1070 = distinct !DILexicalBlock(scope: !1053, file: !85, line: 1252, column: 3)
!1071 = !DILocation(line: 1252, column: 3, scope: !1070)
!1072 = !DILocation(line: 1254, column: 20, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !85, line: 1253, column: 3)
!1074 = !DILocation(line: 1254, column: 5, scope: !1073)
!1075 = !DILocation(line: 1254, column: 13, scope: !1073)
!1076 = !DILocation(line: 1255, column: 16, scope: !1073)
!1077 = !DILocation(line: 1252, column: 44, scope: !1069)
!1078 = distinct !{!1078, !1071, !1079, !270, !271}
!1079 = !DILocation(line: 1256, column: 3, scope: !1070)
!1080 = !DILocation(line: 1257, column: 34, scope: !1053)
!1081 = !DILocation(line: 1257, column: 3, scope: !1053)
!1082 = !DILocation(line: 1258, column: 3, scope: !1053)
!1083 = !DILocation(line: 1259, column: 1, scope: !1053)
!1084 = distinct !DISubprogram(name: "NewHashmap", scope: !85, file: !85, line: 1304, type: !1085, scopeLine: 1308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1087)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!145, !243, !150, !156, !92, !92}
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094, !1098, !1111, !1114}
!1088 = !DILocalVariable(name: "capacity", arg: 1, scope: !1084, file: !85, line: 1304, type: !243)
!1089 = !DILocalVariable(name: "hash", arg: 2, scope: !1084, file: !85, line: 1305, type: !150)
!1090 = !DILocalVariable(name: "compare", arg: 3, scope: !1084, file: !85, line: 1306, type: !156)
!1091 = !DILocalVariable(name: "relinquish_key", arg: 4, scope: !1084, file: !85, line: 1307, type: !92)
!1092 = !DILocalVariable(name: "relinquish_value", arg: 5, scope: !1084, file: !85, line: 1307, type: !92)
!1093 = !DILocalVariable(name: "hashmap_info", scope: !1084, file: !85, line: 1310, type: !145)
!1094 = !DILocalVariable(name: "message", scope: !1095, file: !85, line: 1314, type: !1097)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !85, line: 1314, column: 5)
!1096 = distinct !DILexicalBlock(scope: !1084, file: !85, line: 1313, column: 7)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!1098 = !DILocalVariable(name: "exception", scope: !1095, file: !85, line: 1314, type: !1099)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !10, line: 102, size: 448, elements: !1101)
!1101 = !{!1102, !1104, !1105, !1106, !1107, !1108, !1109, !1110}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !1100, file: !10, line: 105, baseType: !1103, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !10, line: 100, baseType: !9)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !1100, file: !10, line: 108, baseType: !172, size: 32, offset: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !1100, file: !10, line: 111, baseType: !1097, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1100, file: !10, line: 112, baseType: !1097, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !1100, file: !10, line: 115, baseType: !89, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !1100, file: !10, line: 118, baseType: !159, size: 32, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !1100, file: !10, line: 121, baseType: !132, size: 64, offset: 320)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1100, file: !10, line: 124, baseType: !112, size: 64, offset: 384)
!1111 = !DILocalVariable(name: "message", scope: !1112, file: !85, line: 1331, type: !1097)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !85, line: 1331, column: 5)
!1113 = distinct !DILexicalBlock(scope: !1084, file: !85, line: 1330, column: 7)
!1114 = !DILocalVariable(name: "exception", scope: !1112, file: !85, line: 1331, type: !1099)
!1115 = !DILocation(line: 0, scope: !1084)
!1116 = !DILocation(line: 1312, column: 32, scope: !1084)
!1117 = !DILocation(line: 1313, column: 20, scope: !1096)
!1118 = !DILocation(line: 1313, column: 7, scope: !1084)
!1119 = !DILocation(line: 1314, column: 5, scope: !1095)
!1120 = !{!1121, !1121, i64 0}
!1121 = !{!"int", !194, i64 0}
!1122 = !DILocation(line: 0, scope: !1095)
!1123 = !DILocation(line: 1315, column: 10, scope: !1084)
!1124 = !DILocation(line: 1317, column: 12, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1084, file: !85, line: 1317, column: 7)
!1126 = !DILocation(line: 1317, column: 7, scope: !1084)
!1127 = !DILocation(line: 1319, column: 17, scope: !1084)
!1128 = !DILocation(line: 1322, column: 17, scope: !1084)
!1129 = !DILocation(line: 1322, column: 31, scope: !1084)
!1130 = !DILocation(line: 1323, column: 17, scope: !1084)
!1131 = !DILocation(line: 1323, column: 33, scope: !1084)
!1132 = !DILocation(line: 1324, column: 17, scope: !1084)
!1133 = !DILocation(line: 1324, column: 24, scope: !1084)
!1134 = !DILocation(line: 1325, column: 17, scope: !1084)
!1135 = !DILocation(line: 1325, column: 25, scope: !1084)
!1136 = !DILocation(line: 1326, column: 17, scope: !1084)
!1137 = !DILocation(line: 1326, column: 20, scope: !1084)
!1138 = !DILocation(line: 1327, column: 17, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1084, file: !85, line: 1327, column: 7)
!1140 = !DILocation(line: 1327, column: 7, scope: !1084)
!1141 = !DILocation(line: 1329, column: 15, scope: !1139)
!1142 = !DILocation(line: 1328, column: 43, scope: !1139)
!1143 = !DILocation(line: 1328, column: 22, scope: !1139)
!1144 = !DILocation(line: 1330, column: 25, scope: !1113)
!1145 = !DILocation(line: 1330, column: 7, scope: !1084)
!1146 = !DILocation(line: 1331, column: 5, scope: !1112)
!1147 = !DILocation(line: 0, scope: !1112)
!1148 = !DILocation(line: 1332, column: 65, scope: !1084)
!1149 = !DILocation(line: 1332, column: 10, scope: !1084)
!1150 = !DILocation(line: 1334, column: 27, scope: !1084)
!1151 = !DILocation(line: 1334, column: 17, scope: !1084)
!1152 = !DILocation(line: 1334, column: 26, scope: !1084)
!1153 = !DILocation(line: 1335, column: 17, scope: !1084)
!1154 = !DILocation(line: 1335, column: 26, scope: !1084)
!1155 = !DILocation(line: 1336, column: 3, scope: !1084)
!1156 = !DISubprogram(name: "GetExceptionInfo", scope: !10, file: !10, line: 166, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !1159}
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1160 = !DISubprogram(name: "GetExceptionMessage", scope: !10, file: !10, line: 137, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!1097, !1163}
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!1164 = !DISubprogram(name: "ThrowMagickException", scope: !10, file: !10, line: 156, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!159, !1159, !95, !95, !243, !1167, !95, !95, null}
!1167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1103)
!1168 = !DISubprogram(name: "DestroyString", scope: !101, file: !101, line: 46, type: !1169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!1097, !1097}
!1171 = !DISubprogram(name: "CatchException", scope: !10, file: !10, line: 164, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!1172 = !DISubprogram(name: "DestroyExceptionInfo", scope: !10, file: !10, line: 148, type: !1173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!1159, !1159}
!1175 = !DISubprogram(name: "MagickCoreTerminus", scope: !1176, file: !1176, line: 147, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!1176 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null}
!1179 = !DISubprogram(name: "ResetMagickMemory", scope: !240, file: !240, line: 52, type: !1180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!89, !89, !172, !243}
!1182 = !DISubprogram(name: "AcquireQuantumMemory", scope: !240, file: !240, line: 42, type: !1183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!89, !243, !243}
!1185 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !134, file: !134, line: 32, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !244)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!132}
!1188 = distinct !DISubprogram(name: "NewLinkedList", scope: !85, file: !85, line: 1362, type: !1189, scopeLine: 1363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1191)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!121, !243}
!1191 = !{!1192, !1193, !1194, !1197}
!1192 = !DILocalVariable(name: "capacity", arg: 1, scope: !1188, file: !85, line: 1362, type: !243)
!1193 = !DILocalVariable(name: "list_info", scope: !1188, file: !85, line: 1365, type: !121)
!1194 = !DILocalVariable(name: "message", scope: !1195, file: !85, line: 1369, type: !1097)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !85, line: 1369, column: 5)
!1196 = distinct !DILexicalBlock(scope: !1188, file: !85, line: 1368, column: 7)
!1197 = !DILocalVariable(name: "exception", scope: !1195, file: !85, line: 1369, type: !1099)
!1198 = !DILocation(line: 0, scope: !1188)
!1199 = !DILocation(line: 1367, column: 32, scope: !1188)
!1200 = !DILocation(line: 1368, column: 17, scope: !1196)
!1201 = !DILocation(line: 1368, column: 7, scope: !1188)
!1202 = !DILocation(line: 1369, column: 5, scope: !1195)
!1203 = !DILocation(line: 0, scope: !1195)
!1204 = !DILocation(line: 1370, column: 10, scope: !1188)
!1205 = !DILocation(line: 1371, column: 32, scope: !1188)
!1206 = !DILocation(line: 1371, column: 23, scope: !1188)
!1207 = !DILocation(line: 1371, column: 22, scope: !1188)
!1208 = !DILocation(line: 1372, column: 14, scope: !1188)
!1209 = !DILocation(line: 1373, column: 18, scope: !1188)
!1210 = !DILocation(line: 1376, column: 24, scope: !1188)
!1211 = !DILocation(line: 1376, column: 14, scope: !1188)
!1212 = !DILocation(line: 1376, column: 23, scope: !1188)
!1213 = !DILocation(line: 1377, column: 14, scope: !1188)
!1214 = !DILocation(line: 1377, column: 23, scope: !1188)
!1215 = !DILocation(line: 1378, column: 3, scope: !1188)
!1216 = distinct !DISubprogram(name: "PutEntryInHashmap", scope: !85, file: !85, line: 1492, type: !1217, scopeLine: 1494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1219)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!159, !145, !153, !153}
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227}
!1220 = !DILocalVariable(name: "hashmap_info", arg: 1, scope: !1216, file: !85, line: 1492, type: !145)
!1221 = !DILocalVariable(name: "key", arg: 2, scope: !1216, file: !85, line: 1493, type: !153)
!1222 = !DILocalVariable(name: "value", arg: 3, scope: !1216, file: !85, line: 1493, type: !153)
!1223 = !DILocalVariable(name: "entry", scope: !1216, file: !85, line: 1496, type: !137)
!1224 = !DILocalVariable(name: "next", scope: !1216, file: !85, line: 1497, type: !137)
!1225 = !DILocalVariable(name: "list_info", scope: !1216, file: !85, line: 1500, type: !121)
!1226 = !DILocalVariable(name: "i", scope: !1216, file: !85, line: 1503, type: !112)
!1227 = !DILocalVariable(name: "compare", scope: !1228, file: !85, line: 1531, type: !159)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !85, line: 1529, column: 11)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !85, line: 1528, column: 13)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !85, line: 1527, column: 7)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !85, line: 1526, column: 7)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !85, line: 1526, column: 7)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !85, line: 1523, column: 5)
!1234 = distinct !DILexicalBlock(scope: !1216, file: !85, line: 1517, column: 7)
!1235 = !DILocation(line: 0, scope: !1216)
!1236 = !DILocation(line: 1507, column: 12, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1216, file: !85, line: 1507, column: 7)
!1238 = !DILocation(line: 1507, column: 30, scope: !1237)
!1239 = !DILocation(line: 1509, column: 22, scope: !1216)
!1240 = !DILocation(line: 1510, column: 12, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1216, file: !85, line: 1510, column: 7)
!1242 = !DILocation(line: 1510, column: 7, scope: !1216)
!1243 = !DILocation(line: 1512, column: 35, scope: !1216)
!1244 = !DILocation(line: 1512, column: 3, scope: !1216)
!1245 = !DILocation(line: 1513, column: 28, scope: !1216)
!1246 = !DILocation(line: 1513, column: 14, scope: !1216)
!1247 = !DILocation(line: 1513, column: 13, scope: !1216)
!1248 = !DILocation(line: 1514, column: 9, scope: !1216)
!1249 = !DILocation(line: 1514, column: 12, scope: !1216)
!1250 = !DILocation(line: 1515, column: 9, scope: !1216)
!1251 = !DILocation(line: 1515, column: 14, scope: !1216)
!1252 = !DILocation(line: 1516, column: 27, scope: !1216)
!1253 = !DILocation(line: 1516, column: 58, scope: !1216)
!1254 = !DILocation(line: 1516, column: 42, scope: !1216)
!1255 = !DILocation(line: 1516, column: 13, scope: !1216)
!1256 = !DILocation(line: 1517, column: 17, scope: !1234)
!1257 = !DILocation(line: 1517, column: 7, scope: !1216)
!1258 = !DILocation(line: 1519, column: 17, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1234, file: !85, line: 1518, column: 5)
!1260 = !DILocation(line: 1520, column: 21, scope: !1259)
!1261 = !DILocation(line: 1520, column: 31, scope: !1259)
!1262 = !DILocation(line: 1520, column: 52, scope: !1259)
!1263 = !DILocation(line: 1520, column: 36, scope: !1259)
!1264 = !DILocation(line: 1520, column: 7, scope: !1259)
!1265 = !DILocation(line: 1520, column: 61, scope: !1259)
!1266 = !DILocation(line: 1521, column: 5, scope: !1259)
!1267 = !DILocation(line: 1524, column: 34, scope: !1233)
!1268 = !DILocation(line: 1524, column: 18, scope: !1233)
!1269 = !DILocation(line: 1524, column: 22, scope: !1233)
!1270 = !DILocation(line: 0, scope: !339, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 1525, column: 27, scope: !1233)
!1272 = !DILocation(line: 612, column: 32, scope: !339, inlinedAt: !1271)
!1273 = !DILocation(line: 612, column: 3, scope: !339, inlinedAt: !1271)
!1274 = !DILocation(line: 613, column: 18, scope: !349, inlinedAt: !1271)
!1275 = !DILocation(line: 613, column: 23, scope: !349, inlinedAt: !1271)
!1276 = !DILocation(line: 613, column: 7, scope: !339, inlinedAt: !1271)
!1277 = !DILocation(line: 1526, column: 7, scope: !1232)
!1278 = !DILocation(line: 618, column: 26, scope: !339, inlinedAt: !1271)
!1279 = !DILocation(line: 619, column: 36, scope: !339, inlinedAt: !1271)
!1280 = !DILocation(line: 619, column: 18, scope: !339, inlinedAt: !1271)
!1281 = !DILocation(line: 1526, column: 23, scope: !1231)
!1282 = !DILocation(line: 1528, column: 20, scope: !1229)
!1283 = !DILocation(line: 1528, column: 34, scope: !1229)
!1284 = !DILocation(line: 1528, column: 25, scope: !1229)
!1285 = !DILocation(line: 1528, column: 13, scope: !1230)
!1286 = !DILocation(line: 0, scope: !1228)
!1287 = !DILocation(line: 1534, column: 31, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1228, file: !85, line: 1534, column: 17)
!1289 = !DILocation(line: 1534, column: 39, scope: !1288)
!1290 = !DILocation(line: 1534, column: 17, scope: !1228)
!1291 = !DILocation(line: 1536, column: 56, scope: !1288)
!1292 = !DILocation(line: 1536, column: 23, scope: !1288)
!1293 = !DILocation(line: 1537, column: 25, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1228, file: !85, line: 1537, column: 17)
!1295 = !DILocation(line: 1537, column: 17, scope: !1228)
!1296 = !DILocation(line: 1539, column: 24, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !85, line: 1538, column: 15)
!1298 = !DILocation(line: 1540, column: 35, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1297, file: !85, line: 1540, column: 21)
!1300 = !DILocation(line: 1540, column: 50, scope: !1299)
!1301 = !DILocation(line: 1540, column: 21, scope: !1297)
!1302 = !DILocation(line: 1541, column: 66, scope: !1299)
!1303 = !DILocation(line: 1541, column: 30, scope: !1299)
!1304 = !DILocation(line: 1541, column: 29, scope: !1299)
!1305 = !DILocation(line: 1541, column: 19, scope: !1299)
!1306 = !DILocation(line: 1542, column: 35, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1297, file: !85, line: 1542, column: 21)
!1308 = !DILocation(line: 1542, column: 52, scope: !1307)
!1309 = !DILocation(line: 1542, column: 21, scope: !1297)
!1310 = !DILocation(line: 1543, column: 70, scope: !1307)
!1311 = !DILocation(line: 1543, column: 32, scope: !1307)
!1312 = !DILocation(line: 1543, column: 31, scope: !1307)
!1313 = !DILocation(line: 1543, column: 19, scope: !1307)
!1314 = !DILocation(line: 1544, column: 37, scope: !1297)
!1315 = !DILocation(line: 0, scope: !339, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 1548, column: 29, scope: !1230)
!1317 = !DILocation(line: 612, column: 32, scope: !339, inlinedAt: !1316)
!1318 = !DILocation(line: 612, column: 3, scope: !339, inlinedAt: !1316)
!1319 = !DILocation(line: 613, column: 18, scope: !349, inlinedAt: !1316)
!1320 = !DILocation(line: 613, column: 23, scope: !349, inlinedAt: !1316)
!1321 = !DILocation(line: 613, column: 7, scope: !339, inlinedAt: !1316)
!1322 = !DILocation(line: 618, column: 26, scope: !339, inlinedAt: !1316)
!1323 = !DILocation(line: 619, column: 36, scope: !339, inlinedAt: !1316)
!1324 = !DILocation(line: 619, column: 18, scope: !339, inlinedAt: !1316)
!1325 = !DILocation(line: 621, column: 3, scope: !339, inlinedAt: !1316)
!1326 = !DILocation(line: 1526, column: 47, scope: !1231)
!1327 = distinct !{!1327, !1277, !1328, !270, !271}
!1328 = !DILocation(line: 1549, column: 7, scope: !1232)
!1329 = !DILocation(line: 0, scope: !841, inlinedAt: !1330)
!1330 = distinct !DILocation(line: 1551, column: 7, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1216, file: !85, line: 1551, column: 7)
!1332 = !DILocation(line: 1002, column: 27, scope: !861, inlinedAt: !1330)
!1333 = !DILocation(line: 1003, column: 42, scope: !861, inlinedAt: !1330)
!1334 = !DILocation(line: 1003, column: 28, scope: !861, inlinedAt: !1330)
!1335 = !DILocation(line: 1002, column: 7, scope: !841, inlinedAt: !1330)
!1336 = !DILocation(line: 1005, column: 24, scope: !841, inlinedAt: !1330)
!1337 = !DILocation(line: 1006, column: 12, scope: !869, inlinedAt: !1330)
!1338 = !DILocation(line: 1006, column: 7, scope: !841, inlinedAt: !1330)
!1339 = !DILocation(line: 1008, column: 14, scope: !841, inlinedAt: !1330)
!1340 = !DILocation(line: 1009, column: 9, scope: !841, inlinedAt: !1330)
!1341 = !DILocation(line: 1009, column: 13, scope: !841, inlinedAt: !1330)
!1342 = !DILocation(line: 1010, column: 32, scope: !841, inlinedAt: !1330)
!1343 = !DILocation(line: 1010, column: 3, scope: !841, inlinedAt: !1330)
!1344 = !DILocation(line: 1011, column: 18, scope: !855, inlinedAt: !1330)
!1345 = !DILocation(line: 1011, column: 27, scope: !855, inlinedAt: !1330)
!1346 = !DILocation(line: 0, scope: !855, inlinedAt: !1330)
!1347 = !DILocation(line: 1011, column: 7, scope: !841, inlinedAt: !1330)
!1348 = !DILocation(line: 1013, column: 27, scope: !880, inlinedAt: !1330)
!1349 = !DILocation(line: 1013, column: 11, scope: !881, inlinedAt: !1330)
!1350 = !DILocation(line: 1014, column: 24, scope: !880, inlinedAt: !1330)
!1351 = !DILocation(line: 1014, column: 9, scope: !880, inlinedAt: !1330)
!1352 = !DILocation(line: 1015, column: 18, scope: !881, inlinedAt: !1330)
!1353 = !DILocation(line: 1015, column: 22, scope: !881, inlinedAt: !1330)
!1354 = !DILocation(line: 1016, column: 18, scope: !881, inlinedAt: !1330)
!1355 = !DILocation(line: 1017, column: 5, scope: !881, inlinedAt: !1330)
!1356 = !DILocation(line: 1022, column: 45, scope: !894, inlinedAt: !1330)
!1357 = !DILocation(line: 1022, column: 31, scope: !894, inlinedAt: !1330)
!1358 = !DILocation(line: 1022, column: 15, scope: !895, inlinedAt: !1330)
!1359 = !DILocation(line: 1023, column: 28, scope: !894, inlinedAt: !1330)
!1360 = !DILocation(line: 1023, column: 13, scope: !894, inlinedAt: !1330)
!1361 = !DILocation(line: 1024, column: 21, scope: !895, inlinedAt: !1330)
!1362 = !DILocation(line: 1026, column: 9, scope: !895, inlinedAt: !1330)
!1363 = !DILocation(line: 1553, column: 26, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1331, file: !85, line: 1552, column: 5)
!1365 = !DILocation(line: 1555, column: 7, scope: !1364)
!1366 = !DILocation(line: 1053, column: 22, scope: !841, inlinedAt: !1330)
!1367 = !DILocation(line: 1054, column: 34, scope: !841, inlinedAt: !1330)
!1368 = !DILocation(line: 1054, column: 3, scope: !841, inlinedAt: !1330)
!1369 = !DILocation(line: 1557, column: 18, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1216, file: !85, line: 1557, column: 7)
!1371 = !DILocation(line: 1557, column: 45, scope: !1370)
!1372 = !DILocation(line: 1557, column: 53, scope: !1370)
!1373 = !DILocation(line: 1557, column: 27, scope: !1370)
!1374 = !DILocation(line: 1557, column: 7, scope: !1216)
!1375 = !DILocalVariable(name: "i", scope: !1376, file: !85, line: 1436, type: !116)
!1376 = distinct !DISubprogram(name: "IncreaseHashmapCapacity", scope: !85, file: !85, line: 1410, type: !1377, scopeLine: 1411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1379)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!159, !145}
!1379 = !{!1380, !1381, !1385, !1386, !1387, !1388, !1389, !1390, !1375, !1391}
!1380 = !DILocalVariable(name: "hashmap_info", arg: 1, scope: !1376, file: !85, line: 1410, type: !145)
!1381 = !DILocalVariable(name: "capacities", scope: !1376, file: !85, line: 1415, type: !1382)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 1280, elements: !1383)
!1383 = !{!1384}
!1384 = !DISubrange(count: 20)
!1385 = !DILocalVariable(name: "element", scope: !1376, file: !85, line: 1422, type: !83)
!1386 = !DILocalVariable(name: "entry", scope: !1376, file: !85, line: 1425, type: !137)
!1387 = !DILocalVariable(name: "list_info", scope: !1376, file: !85, line: 1428, type: !121)
!1388 = !DILocalVariable(name: "map_info", scope: !1376, file: !85, line: 1429, type: !121)
!1389 = !DILocalVariable(name: "map", scope: !1376, file: !85, line: 1430, type: !144)
!1390 = !DILocalVariable(name: "next", scope: !1376, file: !85, line: 1433, type: !83)
!1391 = !DILocalVariable(name: "capacity", scope: !1376, file: !85, line: 1439, type: !112)
!1392 = !DILocation(line: 0, scope: !1376, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 1558, column: 9, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1370, file: !85, line: 1558, column: 9)
!1395 = !DILocation(line: 1445, column: 34, scope: !1396, inlinedAt: !1393)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !85, line: 1445, column: 9)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !85, line: 1444, column: 3)
!1398 = distinct !DILexicalBlock(scope: !1376, file: !85, line: 1444, column: 3)
!1399 = !{!193, !193, i64 0}
!1400 = !DILocation(line: 1445, column: 32, scope: !1396, inlinedAt: !1393)
!1401 = !DILocation(line: 1445, column: 9, scope: !1397, inlinedAt: !1393)
!1402 = !DILocation(line: 1444, column: 33, scope: !1397, inlinedAt: !1393)
!1403 = !DILocation(line: 1444, column: 15, scope: !1397, inlinedAt: !1393)
!1404 = !DILocation(line: 1444, column: 3, scope: !1398, inlinedAt: !1393)
!1405 = distinct !{!1405, !1404, !1406, !270, !271}
!1406 = !DILocation(line: 1446, column: 7, scope: !1398, inlinedAt: !1393)
!1407 = !DILocation(line: 1447, column: 9, scope: !1408, inlinedAt: !1393)
!1408 = distinct !DILexicalBlock(scope: !1376, file: !85, line: 1447, column: 7)
!1409 = !DILocation(line: 1447, column: 7, scope: !1376, inlinedAt: !1393)
!1410 = !DILocation(line: 1449, column: 24, scope: !1376, inlinedAt: !1393)
!1411 = !DILocation(line: 1449, column: 12, scope: !1376, inlinedAt: !1393)
!1412 = !DILocation(line: 1450, column: 65, scope: !1376, inlinedAt: !1393)
!1413 = !DILocation(line: 1450, column: 27, scope: !1376, inlinedAt: !1393)
!1414 = !DILocation(line: 1452, column: 11, scope: !1415, inlinedAt: !1393)
!1415 = distinct !DILexicalBlock(scope: !1376, file: !85, line: 1452, column: 7)
!1416 = !DILocation(line: 1452, column: 7, scope: !1376, inlinedAt: !1393)
!1417 = !DILocation(line: 1454, column: 51, scope: !1376, inlinedAt: !1393)
!1418 = !DILocation(line: 1454, column: 10, scope: !1376, inlinedAt: !1393)
!1419 = !DILocation(line: 1458, column: 41, scope: !1420, inlinedAt: !1393)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !85, line: 1458, column: 3)
!1421 = distinct !DILexicalBlock(scope: !1376, file: !85, line: 1458, column: 3)
!1422 = !DILocation(line: 1458, column: 15, scope: !1420, inlinedAt: !1393)
!1423 = !DILocation(line: 1458, column: 3, scope: !1421, inlinedAt: !1393)
!1424 = !DILocation(line: 1460, column: 29, scope: !1425, inlinedAt: !1393)
!1425 = distinct !DILexicalBlock(scope: !1420, file: !85, line: 1459, column: 3)
!1426 = !DILocation(line: 1460, column: 15, scope: !1425, inlinedAt: !1393)
!1427 = !DILocation(line: 1461, column: 19, scope: !1428, inlinedAt: !1393)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !85, line: 1461, column: 9)
!1429 = !DILocation(line: 1461, column: 9, scope: !1425, inlinedAt: !1393)
!1430 = !DILocation(line: 1463, column: 34, scope: !1425, inlinedAt: !1393)
!1431 = !DILocation(line: 1463, column: 5, scope: !1425, inlinedAt: !1393)
!1432 = !DILocation(line: 1464, column: 26, scope: !1433, inlinedAt: !1393)
!1433 = distinct !DILexicalBlock(scope: !1425, file: !85, line: 1464, column: 5)
!1434 = !DILocation(line: 1464, column: 37, scope: !1435, inlinedAt: !1393)
!1435 = distinct !DILexicalBlock(scope: !1433, file: !85, line: 1464, column: 5)
!1436 = !DILocation(line: 1464, column: 5, scope: !1433, inlinedAt: !1393)
!1437 = !DILocation(line: 1467, column: 18, scope: !1438, inlinedAt: !1393)
!1438 = distinct !DILexicalBlock(scope: !1435, file: !85, line: 1465, column: 5)
!1439 = !DILocation(line: 1468, column: 36, scope: !1438, inlinedAt: !1393)
!1440 = !DILocation(line: 1469, column: 27, scope: !1438, inlinedAt: !1393)
!1441 = !DILocation(line: 1469, column: 32, scope: !1438, inlinedAt: !1393)
!1442 = !DILocation(line: 1469, column: 16, scope: !1438, inlinedAt: !1393)
!1443 = !DILocation(line: 1470, column: 20, scope: !1444, inlinedAt: !1393)
!1444 = distinct !DILexicalBlock(scope: !1438, file: !85, line: 1470, column: 11)
!1445 = !DILocation(line: 1470, column: 11, scope: !1438, inlinedAt: !1393)
!1446 = !DILocation(line: 0, scope: !1188, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 1472, column: 20, scope: !1448, inlinedAt: !1393)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !85, line: 1471, column: 9)
!1449 = !DILocation(line: 1367, column: 32, scope: !1188, inlinedAt: !1447)
!1450 = !DILocation(line: 1368, column: 17, scope: !1196, inlinedAt: !1447)
!1451 = !DILocation(line: 1368, column: 7, scope: !1188, inlinedAt: !1447)
!1452 = !DILocation(line: 1369, column: 5, scope: !1195, inlinedAt: !1447)
!1453 = !DILocation(line: 0, scope: !1195, inlinedAt: !1447)
!1454 = !DILocation(line: 1370, column: 10, scope: !1188, inlinedAt: !1447)
!1455 = !DILocation(line: 1371, column: 22, scope: !1188, inlinedAt: !1447)
!1456 = !DILocation(line: 1372, column: 14, scope: !1188, inlinedAt: !1447)
!1457 = !DILocation(line: 1373, column: 18, scope: !1188, inlinedAt: !1447)
!1458 = !DILocation(line: 1376, column: 24, scope: !1188, inlinedAt: !1447)
!1459 = !DILocation(line: 1376, column: 14, scope: !1188, inlinedAt: !1447)
!1460 = !DILocation(line: 1376, column: 23, scope: !1188, inlinedAt: !1447)
!1461 = !DILocation(line: 1377, column: 14, scope: !1188, inlinedAt: !1447)
!1462 = !DILocation(line: 1377, column: 23, scope: !1188, inlinedAt: !1447)
!1463 = !DILocation(line: 1473, column: 22, scope: !1448, inlinedAt: !1393)
!1464 = !DILocation(line: 1473, column: 27, scope: !1448, inlinedAt: !1393)
!1465 = !DILocation(line: 1473, column: 11, scope: !1448, inlinedAt: !1393)
!1466 = !DILocation(line: 1473, column: 38, scope: !1448, inlinedAt: !1393)
!1467 = !DILocation(line: 1474, column: 9, scope: !1448, inlinedAt: !1393)
!1468 = !DILocation(line: 0, scope: !1438, inlinedAt: !1393)
!1469 = !DILocation(line: 1475, column: 17, scope: !1438, inlinedAt: !1393)
!1470 = !DILocation(line: 1475, column: 21, scope: !1438, inlinedAt: !1393)
!1471 = !DILocation(line: 1476, column: 31, scope: !1438, inlinedAt: !1393)
!1472 = !DILocation(line: 1476, column: 20, scope: !1438, inlinedAt: !1393)
!1473 = !DILocation(line: 1477, column: 21, scope: !1438, inlinedAt: !1393)
!1474 = !DILocation(line: 1478, column: 17, scope: !1438, inlinedAt: !1393)
!1475 = !DILocation(line: 1478, column: 25, scope: !1438, inlinedAt: !1393)
!1476 = distinct !{!1476, !1436, !1477, !270, !271}
!1477 = !DILocation(line: 1479, column: 5, scope: !1433, inlinedAt: !1393)
!1478 = !DILocation(line: 1480, column: 16, scope: !1425, inlinedAt: !1393)
!1479 = !DILocation(line: 1480, column: 25, scope: !1425, inlinedAt: !1393)
!1480 = !DILocation(line: 1481, column: 36, scope: !1425, inlinedAt: !1393)
!1481 = !DILocation(line: 1481, column: 5, scope: !1425, inlinedAt: !1393)
!1482 = !DILocation(line: 1482, column: 5, scope: !1425, inlinedAt: !1393)
!1483 = !DILocation(line: 1483, column: 34, scope: !1425, inlinedAt: !1393)
!1484 = !DILocation(line: 1484, column: 3, scope: !1425, inlinedAt: !1393)
!1485 = !DILocation(line: 1458, column: 52, scope: !1420, inlinedAt: !1393)
!1486 = distinct !{!1486, !1423, !1487, !270, !271}
!1487 = !DILocation(line: 1484, column: 3, scope: !1421, inlinedAt: !1393)
!1488 = !DILocation(line: 1486, column: 19, scope: !1376, inlinedAt: !1393)
!1489 = !DILocation(line: 1485, column: 41, scope: !1376, inlinedAt: !1393)
!1490 = !DILocation(line: 1487, column: 20, scope: !1376, inlinedAt: !1393)
!1491 = !DILocation(line: 1488, column: 25, scope: !1376, inlinedAt: !1393)
!1492 = !DILocation(line: 1558, column: 9, scope: !1370)
!1493 = !DILocation(line: 1563, column: 17, scope: !1216)
!1494 = !DILocation(line: 1563, column: 24, scope: !1216)
!1495 = !DILocation(line: 1565, column: 3, scope: !1216)
!1496 = !DILocation(line: 1566, column: 1, scope: !1216)
!1497 = distinct !DISubprogram(name: "RemoveElementFromLinkedList", scope: !85, file: !85, line: 1666, type: !702, scopeLine: 1668, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1498)
!1498 = !{!1499, !1500, !1501, !1502, !1503, !1504}
!1499 = !DILocalVariable(name: "list_info", arg: 1, scope: !1497, file: !85, line: 1666, type: !121)
!1500 = !DILocalVariable(name: "index", arg: 2, scope: !1497, file: !85, line: 1667, type: !243)
!1501 = !DILocalVariable(name: "next", scope: !1497, file: !85, line: 1670, type: !83)
!1502 = !DILocalVariable(name: "i", scope: !1497, file: !85, line: 1673, type: !116)
!1503 = !DILocalVariable(name: "value", scope: !1497, file: !85, line: 1676, type: !89)
!1504 = !DILocalVariable(name: "element", scope: !1505, file: !85, line: 1695, type: !83)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !85, line: 1693, column: 5)
!1506 = distinct !DILexicalBlock(scope: !1497, file: !85, line: 1683, column: 7)
!1507 = !DILocation(line: 0, scope: !1497)
!1508 = !DILocation(line: 1680, column: 27, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1497, file: !85, line: 1680, column: 7)
!1510 = !DILocation(line: 1680, column: 13, scope: !1509)
!1511 = !DILocation(line: 1680, column: 7, scope: !1497)
!1512 = !DILocation(line: 1682, column: 32, scope: !1497)
!1513 = !DILocation(line: 1682, column: 3, scope: !1497)
!1514 = !DILocation(line: 1683, column: 13, scope: !1506)
!1515 = !DILocation(line: 1683, column: 7, scope: !1497)
!1516 = !DILocation(line: 1685, column: 22, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !85, line: 1685, column: 11)
!1518 = distinct !DILexicalBlock(scope: !1506, file: !85, line: 1684, column: 5)
!1519 = !DILocation(line: 1685, column: 41, scope: !1517)
!1520 = !DILocation(line: 1685, column: 27, scope: !1517)
!1521 = !DILocation(line: 1685, column: 11, scope: !1518)
!1522 = !DILocation(line: 1686, column: 42, scope: !1517)
!1523 = !DILocation(line: 1686, column: 24, scope: !1517)
!1524 = !DILocation(line: 1686, column: 9, scope: !1517)
!1525 = !DILocation(line: 1687, column: 30, scope: !1518)
!1526 = !DILocation(line: 1689, column: 40, scope: !1518)
!1527 = !DILocation(line: 1689, column: 22, scope: !1518)
!1528 = !DILocation(line: 1691, column: 5, scope: !1518)
!1529 = !DILocation(line: 1697, column: 23, scope: !1505)
!1530 = !DILocation(line: 0, scope: !1505)
!1531 = !DILocation(line: 1698, column: 19, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !85, line: 1698, column: 7)
!1533 = distinct !DILexicalBlock(scope: !1505, file: !85, line: 1698, column: 7)
!1534 = !DILocation(line: 1698, column: 7, scope: !1533)
!1535 = !DILocation(line: 1699, column: 20, scope: !1532)
!1536 = !DILocation(line: 1698, column: 39, scope: !1532)
!1537 = distinct !{!1537, !1534, !1538, !270, !271}
!1538 = !DILocation(line: 1699, column: 20, scope: !1533)
!1539 = !DILocation(line: 1700, column: 21, scope: !1505)
!1540 = !DILocation(line: 1701, column: 27, scope: !1505)
!1541 = !DILocation(line: 1701, column: 17, scope: !1505)
!1542 = !DILocation(line: 1702, column: 33, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1505, file: !85, line: 1702, column: 11)
!1544 = !DILocation(line: 1702, column: 19, scope: !1543)
!1545 = !DILocation(line: 1702, column: 11, scope: !1505)
!1546 = !DILocation(line: 1703, column: 24, scope: !1543)
!1547 = !DILocation(line: 1703, column: 9, scope: !1543)
!1548 = !DILocation(line: 1704, column: 22, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1505, file: !85, line: 1704, column: 11)
!1550 = !DILocation(line: 1704, column: 27, scope: !1549)
!1551 = !DILocation(line: 1704, column: 11, scope: !1505)
!1552 = !DILocation(line: 1705, column: 34, scope: !1549)
!1553 = !DILocation(line: 1705, column: 24, scope: !1549)
!1554 = !DILocation(line: 1705, column: 9, scope: !1549)
!1555 = !DILocation(line: 1706, column: 22, scope: !1505)
!1556 = !DILocation(line: 0, scope: !1506)
!1557 = !DILocation(line: 1709, column: 22, scope: !1497)
!1558 = !DILocation(line: 1710, column: 34, scope: !1497)
!1559 = !DILocation(line: 1710, column: 3, scope: !1497)
!1560 = !DILocation(line: 1711, column: 3, scope: !1497)
!1561 = !DILocation(line: 1712, column: 1, scope: !1497)
!1562 = distinct !DISubprogram(name: "RemoveElementByValueFromLinkedList", scope: !85, file: !85, line: 1594, type: !1563, scopeLine: 1596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!89, !121, !153}
!1565 = !{!1566, !1567, !1568, !1569}
!1566 = !DILocalVariable(name: "list_info", arg: 1, scope: !1562, file: !85, line: 1594, type: !121)
!1567 = !DILocalVariable(name: "value", arg: 2, scope: !1562, file: !85, line: 1595, type: !153)
!1568 = !DILocalVariable(name: "next", scope: !1562, file: !85, line: 1598, type: !83)
!1569 = !DILocalVariable(name: "element", scope: !1570, file: !85, line: 1616, type: !83)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !85, line: 1614, column: 5)
!1571 = distinct !DILexicalBlock(scope: !1562, file: !85, line: 1605, column: 7)
!1572 = !DILocation(line: 0, scope: !1562)
!1573 = !DILocation(line: 1602, column: 19, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1562, file: !85, line: 1602, column: 7)
!1575 = !DILocation(line: 1602, column: 28, scope: !1574)
!1576 = !DILocation(line: 1602, column: 34, scope: !1574)
!1577 = !DILocation(line: 1604, column: 32, scope: !1562)
!1578 = !DILocation(line: 1604, column: 3, scope: !1562)
!1579 = !DILocation(line: 1605, column: 27, scope: !1571)
!1580 = !DILocation(line: 1605, column: 33, scope: !1571)
!1581 = !DILocation(line: 1605, column: 13, scope: !1571)
!1582 = !DILocation(line: 1605, column: 7, scope: !1562)
!1583 = !DILocation(line: 1607, column: 22, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !85, line: 1607, column: 11)
!1585 = distinct !DILexicalBlock(scope: !1571, file: !85, line: 1606, column: 5)
!1586 = !DILocation(line: 1607, column: 27, scope: !1584)
!1587 = !DILocation(line: 0, scope: !1585)
!1588 = !DILocation(line: 1607, column: 11, scope: !1585)
!1589 = !DILocation(line: 1608, column: 24, scope: !1584)
!1590 = !DILocation(line: 1608, column: 9, scope: !1584)
!1591 = !DILocation(line: 1610, column: 22, scope: !1585)
!1592 = !DILocation(line: 1612, column: 5, scope: !1585)
!1593 = !DILocation(line: 0, scope: !1570)
!1594 = !DILocation(line: 1619, column: 21, scope: !1570)
!1595 = !DILocation(line: 1619, column: 26, scope: !1570)
!1596 = !DILocation(line: 1619, column: 51, scope: !1570)
!1597 = !DILocation(line: 1620, column: 27, scope: !1570)
!1598 = !DILocation(line: 1620, column: 33, scope: !1570)
!1599 = !DILocation(line: 1619, column: 7, scope: !1570)
!1600 = distinct !{!1600, !1599, !1601, !270, !271}
!1601 = !DILocation(line: 1621, column: 20, scope: !1570)
!1602 = !DILocation(line: 1628, column: 27, scope: !1570)
!1603 = !DILocation(line: 1628, column: 17, scope: !1570)
!1604 = !DILocation(line: 1629, column: 33, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1570, file: !85, line: 1629, column: 11)
!1606 = !DILocation(line: 1629, column: 19, scope: !1605)
!1607 = !DILocation(line: 1629, column: 11, scope: !1570)
!1608 = !DILocation(line: 1630, column: 24, scope: !1605)
!1609 = !DILocation(line: 1630, column: 9, scope: !1605)
!1610 = !DILocation(line: 1631, column: 22, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1570, file: !85, line: 1631, column: 11)
!1612 = !DILocation(line: 1631, column: 27, scope: !1611)
!1613 = !DILocation(line: 1631, column: 11, scope: !1570)
!1614 = !DILocation(line: 1632, column: 34, scope: !1611)
!1615 = !DILocation(line: 1632, column: 24, scope: !1611)
!1616 = !DILocation(line: 1632, column: 9, scope: !1611)
!1617 = !DILocation(line: 0, scope: !1571)
!1618 = !DILocation(line: 1635, column: 22, scope: !1562)
!1619 = !DILocation(line: 1637, column: 3, scope: !1562)
!1620 = !DILocation(line: 1638, column: 1, scope: !1562)
!1621 = distinct !DISubprogram(name: "RemoveEntryFromHashmap", scope: !85, file: !85, line: 1738, type: !624, scopeLine: 1740, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1622)
!1622 = !{!1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1623 = !DILocalVariable(name: "hashmap_info", arg: 1, scope: !1621, file: !85, line: 1738, type: !145)
!1624 = !DILocalVariable(name: "key", arg: 2, scope: !1621, file: !85, line: 1739, type: !153)
!1625 = !DILocalVariable(name: "entry", scope: !1621, file: !85, line: 1742, type: !137)
!1626 = !DILocalVariable(name: "list_info", scope: !1621, file: !85, line: 1745, type: !121)
!1627 = !DILocalVariable(name: "i", scope: !1621, file: !85, line: 1748, type: !112)
!1628 = !DILocalVariable(name: "hash", scope: !1621, file: !85, line: 1751, type: !112)
!1629 = !DILocalVariable(name: "value", scope: !1621, file: !85, line: 1754, type: !89)
!1630 = !DILocalVariable(name: "compare", scope: !1631, file: !85, line: 1772, type: !159)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !85, line: 1770, column: 11)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !85, line: 1769, column: 13)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !85, line: 1768, column: 7)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !85, line: 1767, column: 7)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !85, line: 1767, column: 7)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !85, line: 1764, column: 5)
!1637 = distinct !DILexicalBlock(scope: !1621, file: !85, line: 1763, column: 7)
!1638 = !DILocation(line: 0, scope: !1621)
!1639 = !DILocation(line: 1758, column: 11, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1621, file: !85, line: 1758, column: 7)
!1641 = !DILocation(line: 1758, column: 7, scope: !1621)
!1642 = !DILocation(line: 1760, column: 35, scope: !1621)
!1643 = !DILocation(line: 1760, column: 3, scope: !1621)
!1644 = !DILocation(line: 1761, column: 22, scope: !1621)
!1645 = !DILocation(line: 1761, column: 8, scope: !1621)
!1646 = !DILocation(line: 1762, column: 27, scope: !1621)
!1647 = !DILocation(line: 1762, column: 52, scope: !1621)
!1648 = !DILocation(line: 1762, column: 36, scope: !1621)
!1649 = !DILocation(line: 1762, column: 13, scope: !1621)
!1650 = !DILocation(line: 1763, column: 17, scope: !1637)
!1651 = !DILocation(line: 1763, column: 7, scope: !1621)
!1652 = !DILocation(line: 1765, column: 34, scope: !1636)
!1653 = !DILocation(line: 1765, column: 18, scope: !1636)
!1654 = !DILocation(line: 1765, column: 22, scope: !1636)
!1655 = !DILocation(line: 0, scope: !339, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 1766, column: 27, scope: !1636)
!1657 = !DILocation(line: 612, column: 32, scope: !339, inlinedAt: !1656)
!1658 = !DILocation(line: 612, column: 3, scope: !339, inlinedAt: !1656)
!1659 = !DILocation(line: 613, column: 18, scope: !349, inlinedAt: !1656)
!1660 = !DILocation(line: 613, column: 23, scope: !349, inlinedAt: !1656)
!1661 = !DILocation(line: 613, column: 7, scope: !339, inlinedAt: !1656)
!1662 = !DILocation(line: 1767, column: 7, scope: !1635)
!1663 = !DILocation(line: 618, column: 26, scope: !339, inlinedAt: !1656)
!1664 = !DILocation(line: 619, column: 36, scope: !339, inlinedAt: !1656)
!1665 = !DILocation(line: 619, column: 18, scope: !339, inlinedAt: !1656)
!1666 = !DILocation(line: 1767, column: 23, scope: !1634)
!1667 = !DILocation(line: 1769, column: 20, scope: !1632)
!1668 = !DILocation(line: 1769, column: 25, scope: !1632)
!1669 = !DILocation(line: 1769, column: 13, scope: !1633)
!1670 = !DILocation(line: 0, scope: !1631)
!1671 = !DILocation(line: 1775, column: 31, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1631, file: !85, line: 1775, column: 17)
!1673 = !DILocation(line: 1775, column: 39, scope: !1672)
!1674 = !DILocation(line: 1775, column: 17, scope: !1631)
!1675 = !DILocation(line: 1777, column: 56, scope: !1672)
!1676 = !DILocation(line: 1777, column: 23, scope: !1672)
!1677 = !DILocation(line: 1778, column: 25, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1631, file: !85, line: 1778, column: 17)
!1679 = !DILocation(line: 1778, column: 17, scope: !1631)
!1680 = !DILocation(line: 1780, column: 37, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1678, file: !85, line: 1779, column: 15)
!1682 = !DILocation(line: 1781, column: 27, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1681, file: !85, line: 1781, column: 21)
!1684 = !DILocation(line: 1781, column: 21, scope: !1681)
!1685 = !DILocation(line: 1786, column: 35, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1681, file: !85, line: 1786, column: 21)
!1687 = !DILocation(line: 1786, column: 50, scope: !1686)
!1688 = !DILocation(line: 1786, column: 21, scope: !1681)
!1689 = !DILocation(line: 1787, column: 66, scope: !1686)
!1690 = !DILocation(line: 1787, column: 30, scope: !1686)
!1691 = !DILocation(line: 1787, column: 29, scope: !1686)
!1692 = !DILocation(line: 1787, column: 19, scope: !1686)
!1693 = !DILocation(line: 1788, column: 30, scope: !1681)
!1694 = !DILocation(line: 1789, column: 37, scope: !1681)
!1695 = !DILocation(line: 1790, column: 31, scope: !1681)
!1696 = !DILocation(line: 1790, column: 38, scope: !1681)
!1697 = !DILocation(line: 1792, column: 17, scope: !1681)
!1698 = !DILocation(line: 0, scope: !339, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 1795, column: 29, scope: !1633)
!1700 = !DILocation(line: 612, column: 32, scope: !339, inlinedAt: !1699)
!1701 = !DILocation(line: 612, column: 3, scope: !339, inlinedAt: !1699)
!1702 = !DILocation(line: 613, column: 18, scope: !349, inlinedAt: !1699)
!1703 = !DILocation(line: 613, column: 23, scope: !349, inlinedAt: !1699)
!1704 = !DILocation(line: 613, column: 7, scope: !339, inlinedAt: !1699)
!1705 = !DILocation(line: 618, column: 26, scope: !339, inlinedAt: !1699)
!1706 = !DILocation(line: 619, column: 36, scope: !339, inlinedAt: !1699)
!1707 = !DILocation(line: 619, column: 18, scope: !339, inlinedAt: !1699)
!1708 = !DILocation(line: 621, column: 3, scope: !339, inlinedAt: !1699)
!1709 = !DILocation(line: 1767, column: 47, scope: !1634)
!1710 = distinct !{!1710, !1662, !1711, !270, !271}
!1711 = !DILocation(line: 1796, column: 7, scope: !1635)
!1712 = !DILocation(line: 1800, column: 1, scope: !1621)
!1713 = distinct !DISubprogram(name: "RemoveLastElementFromLinkedList", scope: !85, file: !85, line: 1825, type: !340, scopeLine: 1826, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1714)
!1714 = !{!1715, !1716, !1717}
!1715 = !DILocalVariable(name: "list_info", arg: 1, scope: !1713, file: !85, line: 1825, type: !121)
!1716 = !DILocalVariable(name: "value", scope: !1713, file: !85, line: 1828, type: !89)
!1717 = !DILocalVariable(name: "next", scope: !1718, file: !85, line: 1846, type: !83)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !85, line: 1844, column: 5)
!1719 = distinct !DILexicalBlock(scope: !1713, file: !85, line: 1837, column: 7)
!1720 = !DILocation(line: 0, scope: !1713)
!1721 = !DILocation(line: 1832, column: 18, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1713, file: !85, line: 1832, column: 7)
!1723 = !DILocation(line: 1832, column: 27, scope: !1722)
!1724 = !DILocation(line: 1832, column: 7, scope: !1713)
!1725 = !DILocation(line: 1834, column: 32, scope: !1713)
!1726 = !DILocation(line: 1834, column: 3, scope: !1713)
!1727 = !DILocation(line: 1835, column: 18, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1713, file: !85, line: 1835, column: 7)
!1729 = !DILocation(line: 1835, column: 37, scope: !1728)
!1730 = !DILocation(line: 1835, column: 23, scope: !1728)
!1731 = !DILocation(line: 1835, column: 7, scope: !1713)
!1732 = !DILocation(line: 1836, column: 20, scope: !1728)
!1733 = !DILocation(line: 1836, column: 5, scope: !1728)
!1734 = !DILocation(line: 1837, column: 18, scope: !1719)
!1735 = !DILocation(line: 1837, column: 27, scope: !1719)
!1736 = !DILocation(line: 1837, column: 7, scope: !1713)
!1737 = !DILocation(line: 1839, column: 24, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1719, file: !85, line: 1838, column: 5)
!1739 = !DILocation(line: 1839, column: 30, scope: !1738)
!1740 = !DILocation(line: 1840, column: 22, scope: !1738)
!1741 = !DILocation(line: 1841, column: 39, scope: !1738)
!1742 = !DILocation(line: 1841, column: 22, scope: !1738)
!1743 = !DILocation(line: 1842, column: 5, scope: !1738)
!1744 = !DILocation(line: 1848, column: 30, scope: !1718)
!1745 = !DILocation(line: 1849, column: 23, scope: !1718)
!1746 = !DILocation(line: 0, scope: !1718)
!1747 = !DILocation(line: 1850, column: 7, scope: !1718)
!1748 = !DILocation(line: 1850, column: 20, scope: !1718)
!1749 = !DILocation(line: 1850, column: 25, scope: !1718)
!1750 = distinct !{!1750, !1747, !1751, !270, !271}
!1751 = !DILocation(line: 1851, column: 20, scope: !1718)
!1752 = !DILocation(line: 1852, column: 39, scope: !1718)
!1753 = !DILocation(line: 1853, column: 22, scope: !1718)
!1754 = !DILocation(line: 1854, column: 17, scope: !1718)
!1755 = !DILocation(line: 0, scope: !1719)
!1756 = !DILocation(line: 1856, column: 22, scope: !1713)
!1757 = !DILocation(line: 1857, column: 34, scope: !1713)
!1758 = !DILocation(line: 1857, column: 3, scope: !1713)
!1759 = !DILocation(line: 1858, column: 3, scope: !1713)
!1760 = !DILocation(line: 1859, column: 1, scope: !1713)
!1761 = distinct !DISubprogram(name: "ResetHashmapIterator", scope: !85, file: !85, line: 1884, type: !1762, scopeLine: 1885, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1764)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !145}
!1764 = !{!1765}
!1765 = !DILocalVariable(name: "hashmap_info", arg: 1, scope: !1761, file: !85, line: 1884, type: !145)
!1766 = !DILocation(line: 0, scope: !1761)
!1767 = !DILocation(line: 1888, column: 35, scope: !1761)
!1768 = !DILocation(line: 1888, column: 3, scope: !1761)
!1769 = !DILocation(line: 1889, column: 17, scope: !1761)
!1770 = !DILocation(line: 1889, column: 21, scope: !1761)
!1771 = !DILocation(line: 1890, column: 17, scope: !1761)
!1772 = !DILocation(line: 1890, column: 29, scope: !1761)
!1773 = !DILocation(line: 1891, column: 37, scope: !1761)
!1774 = !DILocation(line: 1891, column: 3, scope: !1761)
!1775 = !DILocation(line: 1892, column: 1, scope: !1761)
!1776 = distinct !DISubprogram(name: "ResetLinkedListIterator", scope: !85, file: !85, line: 1918, type: !1777, scopeLine: 1919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1779)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{null, !121}
!1779 = !{!1780}
!1780 = !DILocalVariable(name: "list_info", arg: 1, scope: !1776, file: !85, line: 1918, type: !121)
!1781 = !DILocation(line: 0, scope: !1776)
!1782 = !DILocation(line: 1922, column: 32, scope: !1776)
!1783 = !DILocation(line: 1922, column: 3, scope: !1776)
!1784 = !DILocation(line: 1923, column: 30, scope: !1776)
!1785 = !DILocation(line: 1923, column: 14, scope: !1776)
!1786 = !DILocation(line: 1923, column: 18, scope: !1776)
!1787 = !DILocation(line: 1924, column: 34, scope: !1776)
!1788 = !DILocation(line: 1924, column: 3, scope: !1776)
!1789 = !DILocation(line: 1925, column: 1, scope: !1776)
