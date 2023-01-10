; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/timer.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }

@.str = private unnamed_addr constant [84 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/timer.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"UnableToAcquireString\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireTimerInfo() local_unnamed_addr #0 !dbg !117 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 64) #9, !dbg !146
  call void @llvm.dbg.value(metadata ptr %call, metadata !122, metadata !DIExpression()), !dbg !147
  %cmp = icmp eq ptr %call, null, !dbg !148
  br i1 %cmp, label %if.then, label %if.end, !dbg !149

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #10, !dbg !150
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !128, metadata !DIExpression()), !dbg !150
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #10, !dbg !150
  %call1 = tail call ptr @__errno_location() #11, !dbg !150
  %0 = load i32, ptr %call1, align 4, !dbg !150, !tbaa !151
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #10, !dbg !150
  call void @llvm.dbg.value(metadata ptr %call2, metadata !123, metadata !DIExpression()), !dbg !155
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 98, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call2) #10, !dbg !150
  %call4 = call ptr @DestroyString(ptr noundef %call2) #10, !dbg !150
  call void @llvm.dbg.value(metadata ptr %call4, metadata !123, metadata !DIExpression()), !dbg !155
  call void @CatchException(ptr noundef nonnull %exception) #10, !dbg !150
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #10, !dbg !150
  call void @MagickCoreTerminus() #10, !dbg !150
  call void @_exit(i32 noundef 1) #12, !dbg !150
  unreachable, !dbg !150

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 64) #10, !dbg !156
  %signature = getelementptr inbounds %struct._TimerInfo, ptr %call, i64 0, i32 3, !dbg !157
  store i64 2880220587, ptr %signature, align 8, !dbg !158, !tbaa !159
  call void @llvm.dbg.value(metadata ptr %call, metadata !164, metadata !DIExpression()) #10, !dbg !169
  %call.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 64) #10, !dbg !171
  %state.i = getelementptr inbounds %struct._TimerInfo, ptr %call, i64 0, i32 2, !dbg !172
  store i64 2880220587, ptr %signature, align 8, !dbg !173, !tbaa !159
  call void @llvm.dbg.value(metadata ptr %call, metadata !174, metadata !DIExpression()) #10, !dbg !181
  call void @llvm.dbg.value(metadata i32 1, metadata !180, metadata !DIExpression()) #10, !dbg !181
  %total.i.i = getelementptr inbounds %struct._Timer, ptr %call, i64 0, i32 2, !dbg !183
  %total1.i.i = getelementptr inbounds %struct._TimerInfo, ptr %call, i64 0, i32 1, i32 2, !dbg !186
  store double 0.000000e+00, ptr %total1.i.i, align 8, !dbg !187, !tbaa !188
  store double 0.000000e+00, ptr %call, align 8, !dbg !189, !tbaa !192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %total.i.i, i8 0, i64 16, i1 false) #10, !dbg !193
  store i32 2, ptr %state.i, align 8, !dbg !194, !tbaa !195
  ret ptr %call, !dbg !196
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: allocsize(0)
declare !dbg !197 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

declare !dbg !203 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !207 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #5

declare !dbg !211 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !217 ptr @DestroyString(ptr noundef) local_unnamed_addr #4

declare !dbg !221 void @CatchException(ptr noundef) local_unnamed_addr #4

declare !dbg !222 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !225 void @MagickCoreTerminus() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

declare !dbg !229 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @GetTimerInfo(ptr noundef %time_info) local_unnamed_addr #0 !dbg !165 {
StartTimer.exit:
  call void @llvm.dbg.value(metadata ptr %time_info, metadata !164, metadata !DIExpression()), !dbg !232
  %call = tail call ptr @ResetMagickMemory(ptr noundef %time_info, i32 noundef 0, i64 noundef 64) #10, !dbg !233
  %state = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 2, !dbg !234
  %signature = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 3, !dbg !235
  store i64 2880220587, ptr %signature, align 8, !dbg !236, !tbaa !159
  call void @llvm.dbg.value(metadata ptr %time_info, metadata !174, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i32 1, metadata !180, metadata !DIExpression()), !dbg !237
  %total.i = getelementptr inbounds %struct._Timer, ptr %time_info, i64 0, i32 2, !dbg !239
  %total1.i = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 1, i32 2, !dbg !240
  store double 0.000000e+00, ptr %total1.i, align 8, !dbg !241, !tbaa !188
  store double 0.000000e+00, ptr %time_info, align 8, !dbg !242, !tbaa !192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %total.i, i8 0, i64 16, i1 false), !dbg !243
  store i32 2, ptr %state, align 8, !dbg !244, !tbaa !195
  ret void, !dbg !245
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local i32 @ContinueTimer(ptr nocapture noundef %time_info) local_unnamed_addr #7 !dbg !246 {
entry:
  call void @llvm.dbg.value(metadata ptr %time_info, metadata !250, metadata !DIExpression()), !dbg !251
  %state = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 2, !dbg !252
  %0 = load i32, ptr %state, align 8, !dbg !252, !tbaa !195
  switch i32 %0, label %if.end14 [
    i32 0, label %return
    i32 1, label %if.then3
  ], !dbg !254

if.then3:                                         ; preds = %entry
  %stop = getelementptr inbounds %struct._Timer, ptr %time_info, i64 0, i32 1, !dbg !255
  %1 = load double, ptr %stop, align 8, !dbg !255, !tbaa !258
  %2 = load double, ptr %time_info, align 8, !dbg !259, !tbaa !192
  %sub = fsub double %1, %2, !dbg !260
  %total = getelementptr inbounds %struct._Timer, ptr %time_info, i64 0, i32 2, !dbg !261
  %3 = load double, ptr %total, align 8, !dbg !262, !tbaa !263
  %sub6 = fsub double %3, %sub, !dbg !262
  store double %sub6, ptr %total, align 8, !dbg !262, !tbaa !263
  %elapsed = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 1, !dbg !264
  %stop7 = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 1, i32 1, !dbg !265
  %4 = load double, ptr %stop7, align 8, !dbg !265, !tbaa !266
  %5 = load double, ptr %elapsed, align 8, !dbg !267, !tbaa !268
  %sub10 = fsub double %4, %5, !dbg !269
  %total12 = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 1, i32 2, !dbg !270
  %6 = load double, ptr %total12, align 8, !dbg !271, !tbaa !188
  %sub13 = fsub double %6, %sub10, !dbg !271
  store double %sub13, ptr %total12, align 8, !dbg !271, !tbaa !188
  br label %if.end14, !dbg !272

if.end14:                                         ; preds = %entry, %if.then3
  store i32 2, ptr %state, align 8, !dbg !273, !tbaa !195
  br label %return, !dbg !274

return:                                           ; preds = %entry, %if.end14
  %retval.0 = phi i32 [ 1, %if.end14 ], [ %0, %entry ], !dbg !251
  ret i32 %retval.0, !dbg !275
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyTimerInfo(ptr noundef %timer_info) local_unnamed_addr #0 !dbg !276 {
entry:
  call void @llvm.dbg.value(metadata ptr %timer_info, metadata !280, metadata !DIExpression()), !dbg !281
  %signature = getelementptr inbounds %struct._TimerInfo, ptr %timer_info, i64 0, i32 3, !dbg !282
  store i64 -2880220588, ptr %signature, align 8, !dbg !283, !tbaa !159
  %call = tail call ptr @RelinquishMagickMemory(ptr noundef %timer_info) #10, !dbg !284
  call void @llvm.dbg.value(metadata ptr %call, metadata !280, metadata !DIExpression()), !dbg !281
  ret ptr %call, !dbg !285
}

declare !dbg !286 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local double @GetElapsedTime(ptr nocapture noundef %time_info) local_unnamed_addr #7 !dbg !289 {
entry:
  call void @llvm.dbg.value(metadata ptr %time_info, metadata !293, metadata !DIExpression()), !dbg !294
  %state = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 2, !dbg !295
  %0 = load i32, ptr %state, align 8, !dbg !295, !tbaa !195
  switch i32 %0, label %entry.if.end4_crit_edge [
    i32 0, label %return
    i32 2, label %StopTimer.exit
  ], !dbg !297

entry.if.end4_crit_edge:                          ; preds = %entry
  %total.phi.trans.insert = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 1, i32 2
  %.pre = load double, ptr %total.phi.trans.insert, align 8, !dbg !298, !tbaa !188
  br label %return, !dbg !297

StopTimer.exit:                                   ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %time_info, metadata !299, metadata !DIExpression()), !dbg !302
  %stop.i = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 1, i32 1, !dbg !305
  store double 0.000000e+00, ptr %stop.i, align 8, !dbg !306, !tbaa !266
  %stop2.i = getelementptr inbounds %struct._Timer, ptr %time_info, i64 0, i32 1, !dbg !307
  store double 0.000000e+00, ptr %stop2.i, align 8, !dbg !308, !tbaa !258
  %elapsed.i = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 1, !dbg !309
  %1 = load double, ptr %time_info, align 8, !dbg !310, !tbaa !192
  %sub.i = fsub double 0.000000e+00, %1, !dbg !313
  %add.i = fadd double %sub.i, 1.000000e-15, !dbg !314
  %total.i = getelementptr inbounds %struct._Timer, ptr %time_info, i64 0, i32 2, !dbg !315
  %2 = load double, ptr %total.i, align 8, !dbg !316, !tbaa !263
  %add7.i = fadd double %2, %add.i, !dbg !316
  store double %add7.i, ptr %total.i, align 8, !dbg !316, !tbaa !263
  %3 = load double, ptr %elapsed.i, align 8, !dbg !317, !tbaa !268
  %sub12.i = fsub double 0.000000e+00, %3, !dbg !318
  %add13.i = fadd double %sub12.i, 1.000000e-15, !dbg !319
  %total15.i = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 1, i32 2, !dbg !320
  %4 = load double, ptr %total15.i, align 8, !dbg !321, !tbaa !188
  %add16.i = fadd double %4, %add13.i, !dbg !321
  store double %add16.i, ptr %total15.i, align 8, !dbg !321, !tbaa !188
  store i32 1, ptr %state, align 8, !dbg !322, !tbaa !195
  br label %return, !dbg !323

return:                                           ; preds = %StopTimer.exit, %entry.if.end4_crit_edge, %entry
  %retval.0 = phi double [ 0.000000e+00, %entry ], [ %.pre, %entry.if.end4_crit_edge ], [ %add16.i, %StopTimer.exit ], !dbg !294
  ret double %retval.0, !dbg !324
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @StartTimer(ptr nocapture noundef %time_info, i32 noundef %reset) local_unnamed_addr #7 !dbg !175 {
entry:
  call void @llvm.dbg.value(metadata ptr %time_info, metadata !174, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i32 %reset, metadata !180, metadata !DIExpression()), !dbg !325
  %cmp.not = icmp eq i32 %reset, 0, !dbg !326
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !327

if.then:                                          ; preds = %entry
  %total = getelementptr inbounds %struct._Timer, ptr %time_info, i64 0, i32 2, !dbg !328
  store double 0.000000e+00, ptr %total, align 8, !dbg !329, !tbaa !263
  %total1 = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 1, i32 2, !dbg !330
  store double 0.000000e+00, ptr %total1, align 8, !dbg !331, !tbaa !188
  br label %if.end, !dbg !332

if.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 2, !dbg !333
  %0 = load i32, ptr %state, align 8, !dbg !333, !tbaa !195
  %cmp2.not = icmp eq i32 %0, 2, !dbg !334
  br i1 %cmp2.not, label %if.end8, label %if.then3, !dbg !335

if.then3:                                         ; preds = %if.end
  %elapsed4 = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 1, !dbg !336
  store double 0.000000e+00, ptr %elapsed4, align 8, !dbg !337, !tbaa !268
  store double 0.000000e+00, ptr %time_info, align 8, !dbg !338, !tbaa !192
  br label %if.end8, !dbg !339

if.end8:                                          ; preds = %if.then3, %if.end
  store i32 2, ptr %state, align 8, !dbg !340, !tbaa !195
  ret void, !dbg !341
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local double @GetUserTime(ptr nocapture noundef %time_info) local_unnamed_addr #7 !dbg !342 {
entry:
  call void @llvm.dbg.value(metadata ptr %time_info, metadata !344, metadata !DIExpression()), !dbg !345
  %state = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 2, !dbg !346
  %0 = load i32, ptr %state, align 8, !dbg !346, !tbaa !195
  switch i32 %0, label %entry.if.end4_crit_edge [
    i32 0, label %return
    i32 2, label %StopTimer.exit
  ], !dbg !348

entry.if.end4_crit_edge:                          ; preds = %entry
  %total.phi.trans.insert = getelementptr inbounds %struct._Timer, ptr %time_info, i64 0, i32 2
  %.pre = load double, ptr %total.phi.trans.insert, align 8, !dbg !349, !tbaa !263
  br label %return, !dbg !348

StopTimer.exit:                                   ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %time_info, metadata !299, metadata !DIExpression()), !dbg !350
  %stop.i = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 1, i32 1, !dbg !353
  store double 0.000000e+00, ptr %stop.i, align 8, !dbg !354, !tbaa !266
  %stop2.i = getelementptr inbounds %struct._Timer, ptr %time_info, i64 0, i32 1, !dbg !355
  store double 0.000000e+00, ptr %stop2.i, align 8, !dbg !356, !tbaa !258
  %elapsed.i = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 1, !dbg !357
  %1 = load double, ptr %time_info, align 8, !dbg !358, !tbaa !192
  %sub.i = fsub double 0.000000e+00, %1, !dbg !359
  %add.i = fadd double %sub.i, 1.000000e-15, !dbg !360
  %total.i = getelementptr inbounds %struct._Timer, ptr %time_info, i64 0, i32 2, !dbg !361
  %2 = load double, ptr %total.i, align 8, !dbg !362, !tbaa !263
  %add7.i = fadd double %2, %add.i, !dbg !362
  store double %add7.i, ptr %total.i, align 8, !dbg !362, !tbaa !263
  %3 = load double, ptr %elapsed.i, align 8, !dbg !363, !tbaa !268
  %sub12.i = fsub double 0.000000e+00, %3, !dbg !364
  %add13.i = fadd double %sub12.i, 1.000000e-15, !dbg !365
  %total15.i = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 1, i32 2, !dbg !366
  %4 = load double, ptr %total15.i, align 8, !dbg !367, !tbaa !188
  %add16.i = fadd double %4, %add13.i, !dbg !367
  store double %add16.i, ptr %total15.i, align 8, !dbg !367, !tbaa !188
  store i32 1, ptr %state, align 8, !dbg !368, !tbaa !195
  br label %return, !dbg !369

return:                                           ; preds = %StopTimer.exit, %entry.if.end4_crit_edge, %entry
  %retval.0 = phi double [ 0.000000e+00, %entry ], [ %.pre, %entry.if.end4_crit_edge ], [ %add7.i, %StopTimer.exit ], !dbg !345
  ret double %retval.0, !dbg !370
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @ResetTimer(ptr nocapture noundef %time_info) local_unnamed_addr #7 !dbg !371 {
entry:
  call void @llvm.dbg.value(metadata ptr %time_info, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata ptr %time_info, metadata !299, metadata !DIExpression()), !dbg !375
  %state.i = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 2, !dbg !377
  %0 = load i32, ptr %state.i, align 8, !dbg !377, !tbaa !195
  %cmp.i = icmp eq i32 %0, 2, !dbg !378
  br i1 %cmp.i, label %if.then.i, label %StopTimer.exit, !dbg !379

if.then.i:                                        ; preds = %entry
  %elapsed.i = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 1, !dbg !380
  %1 = load double, ptr %time_info, align 8, !dbg !381, !tbaa !192
  %sub.i = fsub double 0.000000e+00, %1, !dbg !382
  %add.i = fadd double %sub.i, 1.000000e-15, !dbg !383
  %total.i = getelementptr inbounds %struct._Timer, ptr %time_info, i64 0, i32 2, !dbg !384
  %2 = load double, ptr %total.i, align 8, !dbg !385, !tbaa !263
  %add7.i = fadd double %2, %add.i, !dbg !385
  store double %add7.i, ptr %total.i, align 8, !dbg !385, !tbaa !263
  %3 = load double, ptr %elapsed.i, align 8, !dbg !386, !tbaa !268
  %sub12.i = fsub double 0.000000e+00, %3, !dbg !387
  %add13.i = fadd double %sub12.i, 1.000000e-15, !dbg !388
  %total15.i = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 1, i32 2, !dbg !389
  %4 = load double, ptr %total15.i, align 8, !dbg !390, !tbaa !188
  %add16.i = fadd double %4, %add13.i, !dbg !390
  store double %add16.i, ptr %total15.i, align 8, !dbg !390, !tbaa !188
  br label %StopTimer.exit, !dbg !391

StopTimer.exit:                                   ; preds = %entry, %if.then.i
  %stop2.i = getelementptr inbounds %struct._Timer, ptr %time_info, i64 0, i32 1, !dbg !392
  %stop.i = getelementptr inbounds %struct._TimerInfo, ptr %time_info, i64 0, i32 1, i32 1, !dbg !393
  store i32 1, ptr %state.i, align 8, !dbg !394, !tbaa !195
  store double 0.000000e+00, ptr %stop.i, align 8, !dbg !395, !tbaa !266
  store double 0.000000e+00, ptr %stop2.i, align 8, !dbg !396, !tbaa !258
  ret void, !dbg !397
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone willreturn }
attributes #12 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !88, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/timer.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "5664d1abba1627c0ba1a6fd1276b8710")
!2 = !{!3, !10, !83}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 25, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!8 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!9 = !DIEnumerator(name: "RunningTimerState", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 28, baseType: !5, size: 32, elements: !12)
!11 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!13 = !DIEnumerator(name: "UndefinedException", value: 0)
!14 = !DIEnumerator(name: "WarningException", value: 300)
!15 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!16 = !DIEnumerator(name: "TypeWarning", value: 305)
!17 = !DIEnumerator(name: "OptionWarning", value: 310)
!18 = !DIEnumerator(name: "DelegateWarning", value: 315)
!19 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!20 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!21 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!22 = !DIEnumerator(name: "BlobWarning", value: 335)
!23 = !DIEnumerator(name: "StreamWarning", value: 340)
!24 = !DIEnumerator(name: "CacheWarning", value: 345)
!25 = !DIEnumerator(name: "CoderWarning", value: 350)
!26 = !DIEnumerator(name: "FilterWarning", value: 352)
!27 = !DIEnumerator(name: "ModuleWarning", value: 355)
!28 = !DIEnumerator(name: "DrawWarning", value: 360)
!29 = !DIEnumerator(name: "ImageWarning", value: 365)
!30 = !DIEnumerator(name: "WandWarning", value: 370)
!31 = !DIEnumerator(name: "RandomWarning", value: 375)
!32 = !DIEnumerator(name: "XServerWarning", value: 380)
!33 = !DIEnumerator(name: "MonitorWarning", value: 385)
!34 = !DIEnumerator(name: "RegistryWarning", value: 390)
!35 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!36 = !DIEnumerator(name: "PolicyWarning", value: 399)
!37 = !DIEnumerator(name: "ErrorException", value: 400)
!38 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!39 = !DIEnumerator(name: "TypeError", value: 405)
!40 = !DIEnumerator(name: "OptionError", value: 410)
!41 = !DIEnumerator(name: "DelegateError", value: 415)
!42 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!43 = !DIEnumerator(name: "CorruptImageError", value: 425)
!44 = !DIEnumerator(name: "FileOpenError", value: 430)
!45 = !DIEnumerator(name: "BlobError", value: 435)
!46 = !DIEnumerator(name: "StreamError", value: 440)
!47 = !DIEnumerator(name: "CacheError", value: 445)
!48 = !DIEnumerator(name: "CoderError", value: 450)
!49 = !DIEnumerator(name: "FilterError", value: 452)
!50 = !DIEnumerator(name: "ModuleError", value: 455)
!51 = !DIEnumerator(name: "DrawError", value: 460)
!52 = !DIEnumerator(name: "ImageError", value: 465)
!53 = !DIEnumerator(name: "WandError", value: 470)
!54 = !DIEnumerator(name: "RandomError", value: 475)
!55 = !DIEnumerator(name: "XServerError", value: 480)
!56 = !DIEnumerator(name: "MonitorError", value: 485)
!57 = !DIEnumerator(name: "RegistryError", value: 490)
!58 = !DIEnumerator(name: "ConfigureError", value: 495)
!59 = !DIEnumerator(name: "PolicyError", value: 499)
!60 = !DIEnumerator(name: "FatalErrorException", value: 700)
!61 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!62 = !DIEnumerator(name: "TypeFatalError", value: 705)
!63 = !DIEnumerator(name: "OptionFatalError", value: 710)
!64 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!65 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!66 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!67 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!68 = !DIEnumerator(name: "BlobFatalError", value: 735)
!69 = !DIEnumerator(name: "StreamFatalError", value: 740)
!70 = !DIEnumerator(name: "CacheFatalError", value: 745)
!71 = !DIEnumerator(name: "CoderFatalError", value: 750)
!72 = !DIEnumerator(name: "FilterFatalError", value: 752)
!73 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!74 = !DIEnumerator(name: "DrawFatalError", value: 760)
!75 = !DIEnumerator(name: "ImageFatalError", value: 765)
!76 = !DIEnumerator(name: "WandFatalError", value: 770)
!77 = !DIEnumerator(name: "RandomFatalError", value: 775)
!78 = !DIEnumerator(name: "XServerFatalError", value: 780)
!79 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!80 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!81 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!82 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 211, baseType: !5, size: 32, elements: !85)
!84 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!85 = !{!86, !87}
!86 = !DIEnumerator(name: "MagickFalse", value: 0)
!87 = !DIEnumerator(name: "MagickTrue", value: 1)
!88 = !{!89, !108, !107, !109}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !4, line: 51, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !4, line: 40, size: 512, elements: !92)
!92 = !{!93, !101, !102, !104}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !91, file: !4, line: 43, baseType: !94, size: 192)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !4, line: 38, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !4, line: 32, size: 192, elements: !96)
!96 = !{!97, !99, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !95, file: !4, line: 35, baseType: !98, size: 64)
!98 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !95, file: !4, line: 36, baseType: !98, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !95, file: !4, line: 37, baseType: !98, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !91, file: !4, line: 44, baseType: !94, size: 192, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !91, file: !4, line: 47, baseType: !103, size: 32, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !4, line: 30, baseType: !3)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !91, file: !4, line: 50, baseType: !105, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !106, line: 46, baseType: !107)
!106 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!107 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{i32 7, !"Dwarf Version", i32 5}
!111 = !{i32 2, !"Debug Info Version", i32 3}
!112 = !{i32 1, !"wchar_size", i32 4}
!113 = !{i32 7, !"PIC Level", i32 2}
!114 = !{i32 7, !"PIE Level", i32 2}
!115 = !{i32 7, !"uwtable", i32 2}
!116 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!117 = distinct !DISubprogram(name: "AcquireTimerInfo", scope: !118, file: !118, line: 91, type: !119, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!118 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5664d1abba1627c0ba1a6fd1276b8710")
!119 = !DISubroutineType(types: !120)
!120 = !{!89}
!121 = !{!122, !123, !128}
!122 = !DILocalVariable(name: "timer_info", scope: !117, file: !118, line: 94, type: !89)
!123 = !DILocalVariable(name: "message", scope: !124, file: !118, line: 98, type: !126)
!124 = distinct !DILexicalBlock(scope: !125, file: !118, line: 98, column: 5)
!125 = distinct !DILexicalBlock(scope: !117, file: !118, line: 97, column: 7)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!128 = !DILocalVariable(name: "exception", scope: !124, file: !118, line: 98, type: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !84, line: 219, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !11, line: 102, size: 448, elements: !131)
!131 = !{!132, !134, !135, !136, !137, !138, !140, !145}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !130, file: !11, line: 105, baseType: !133, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !11, line: 100, baseType: !10)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !130, file: !11, line: 108, baseType: !109, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !130, file: !11, line: 111, baseType: !126, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !130, file: !11, line: 112, baseType: !126, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !130, file: !11, line: 115, baseType: !108, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !130, file: !11, line: 118, baseType: !139, size: 32, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !84, line: 215, baseType: !83)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !130, file: !11, line: 121, baseType: !141, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !143, line: 26, baseType: !144)
!143 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !143, line: 25, flags: DIFlagFwdDecl)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !130, file: !11, line: 124, baseType: !105, size: 64, offset: 384)
!146 = !DILocation(line: 96, column: 28, scope: !117)
!147 = !DILocation(line: 0, scope: !117)
!148 = !DILocation(line: 97, column: 18, scope: !125)
!149 = !DILocation(line: 97, column: 7, scope: !117)
!150 = !DILocation(line: 98, column: 5, scope: !124)
!151 = !{!152, !152, i64 0}
!152 = !{!"int", !153, i64 0}
!153 = !{!"omnipotent char", !154, i64 0}
!154 = !{!"Simple C/C++ TBAA"}
!155 = !DILocation(line: 0, scope: !124)
!156 = !DILocation(line: 99, column: 10, scope: !117)
!157 = !DILocation(line: 100, column: 15, scope: !117)
!158 = !DILocation(line: 100, column: 24, scope: !117)
!159 = !{!160, !163, i64 56}
!160 = !{!"_TimerInfo", !161, i64 0, !161, i64 24, !153, i64 48, !163, i64 56}
!161 = !{!"_Timer", !162, i64 0, !162, i64 8, !162, i64 16}
!162 = !{!"double", !153, i64 0}
!163 = !{!"long", !153, i64 0}
!164 = !DILocalVariable(name: "time_info", arg: 1, scope: !165, file: !118, line: 271, type: !89)
!165 = distinct !DISubprogram(name: "GetTimerInfo", scope: !118, file: !118, line: 271, type: !166, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !89}
!168 = !{!164}
!169 = !DILocation(line: 0, scope: !165, inlinedAt: !170)
!170 = distinct !DILocation(line: 101, column: 3, scope: !117)
!171 = !DILocation(line: 277, column: 10, scope: !165, inlinedAt: !170)
!172 = !DILocation(line: 278, column: 14, scope: !165, inlinedAt: !170)
!173 = !DILocation(line: 279, column: 23, scope: !165, inlinedAt: !170)
!174 = !DILocalVariable(name: "time_info", arg: 1, scope: !175, file: !118, line: 375, type: !89)
!175 = distinct !DISubprogram(name: "StartTimer", scope: !118, file: !118, line: 375, type: !176, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !179)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !89, !178}
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!179 = !{!174, !180}
!180 = !DILocalVariable(name: "reset", arg: 2, scope: !175, file: !118, line: 375, type: !178)
!181 = !DILocation(line: 0, scope: !175, inlinedAt: !182)
!182 = distinct !DILocation(line: 280, column: 3, scope: !165, inlinedAt: !170)
!183 = !DILocation(line: 384, column: 23, scope: !184, inlinedAt: !182)
!184 = distinct !DILexicalBlock(scope: !185, file: !118, line: 380, column: 5)
!185 = distinct !DILexicalBlock(scope: !175, file: !118, line: 379, column: 7)
!186 = !DILocation(line: 385, column: 26, scope: !184, inlinedAt: !182)
!187 = !DILocation(line: 385, column: 31, scope: !184, inlinedAt: !182)
!188 = !{!160, !162, i64 40}
!189 = !DILocation(line: 390, column: 28, scope: !190, inlinedAt: !182)
!190 = distinct !DILexicalBlock(scope: !191, file: !118, line: 388, column: 5)
!191 = distinct !DILexicalBlock(scope: !175, file: !118, line: 387, column: 7)
!192 = !{!160, !162, i64 0}
!193 = !DILocation(line: 389, column: 31, scope: !190, inlinedAt: !182)
!194 = !DILocation(line: 392, column: 19, scope: !175, inlinedAt: !182)
!195 = !{!160, !153, i64 48}
!196 = !DILocation(line: 102, column: 3, scope: !117)
!197 = !DISubprogram(name: "AcquireMagickMemory", scope: !198, file: !198, line: 40, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !202)
!198 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!199 = !DISubroutineType(types: !200)
!200 = !{!108, !201}
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!202 = !{}
!203 = !DISubprogram(name: "GetExceptionInfo", scope: !11, file: !11, line: 166, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !202)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !206}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!207 = !DISubprogram(name: "GetExceptionMessage", scope: !11, file: !11, line: 137, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !202)
!208 = !DISubroutineType(types: !209)
!209 = !{!126, !210}
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!211 = !DISubprogram(name: "ThrowMagickException", scope: !11, file: !11, line: 156, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !202)
!212 = !DISubroutineType(types: !213)
!213 = !{!139, !206, !214, !214, !201, !216, !214, !214, null}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!217 = !DISubprogram(name: "DestroyString", scope: !218, file: !218, line: 46, type: !219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !202)
!218 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!219 = !DISubroutineType(types: !220)
!220 = !{!126, !126}
!221 = !DISubprogram(name: "CatchException", scope: !11, file: !11, line: 164, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !202)
!222 = !DISubprogram(name: "DestroyExceptionInfo", scope: !11, file: !11, line: 148, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !202)
!223 = !DISubroutineType(types: !224)
!224 = !{!206, !206}
!225 = !DISubprogram(name: "MagickCoreTerminus", scope: !226, file: !226, line: 147, type: !227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !202)
!226 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!227 = !DISubroutineType(types: !228)
!228 = !{null}
!229 = !DISubprogram(name: "ResetMagickMemory", scope: !198, file: !198, line: 52, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !202)
!230 = !DISubroutineType(types: !231)
!231 = !{!108, !108, !109, !201}
!232 = !DILocation(line: 0, scope: !165)
!233 = !DILocation(line: 277, column: 10, scope: !165)
!234 = !DILocation(line: 278, column: 14, scope: !165)
!235 = !DILocation(line: 279, column: 14, scope: !165)
!236 = !DILocation(line: 279, column: 23, scope: !165)
!237 = !DILocation(line: 0, scope: !175, inlinedAt: !238)
!238 = distinct !DILocation(line: 280, column: 3, scope: !165)
!239 = !DILocation(line: 384, column: 23, scope: !184, inlinedAt: !238)
!240 = !DILocation(line: 385, column: 26, scope: !184, inlinedAt: !238)
!241 = !DILocation(line: 385, column: 31, scope: !184, inlinedAt: !238)
!242 = !DILocation(line: 390, column: 28, scope: !190, inlinedAt: !238)
!243 = !DILocation(line: 389, column: 31, scope: !190, inlinedAt: !238)
!244 = !DILocation(line: 392, column: 19, scope: !175, inlinedAt: !238)
!245 = !DILocation(line: 281, column: 1, scope: !165)
!246 = distinct !DISubprogram(name: "ContinueTimer", scope: !118, file: !118, line: 128, type: !247, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !249)
!247 = !DISubroutineType(types: !248)
!248 = !{!139, !89}
!249 = !{!250}
!250 = !DILocalVariable(name: "time_info", arg: 1, scope: !246, file: !118, line: 128, type: !89)
!251 = !DILocation(line: 0, scope: !246)
!252 = !DILocation(line: 132, column: 18, scope: !253)
!253 = distinct !DILexicalBlock(scope: !246, file: !118, line: 132, column: 7)
!254 = !DILocation(line: 132, column: 7, scope: !246)
!255 = !DILocation(line: 136, column: 46, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !118, line: 135, column: 5)
!257 = distinct !DILexicalBlock(scope: !246, file: !118, line: 134, column: 7)
!258 = !{!160, !162, i64 8}
!259 = !DILocation(line: 136, column: 67, scope: !256)
!260 = !DILocation(line: 136, column: 50, scope: !256)
!261 = !DILocation(line: 136, column: 23, scope: !256)
!262 = !DILocation(line: 136, column: 28, scope: !256)
!263 = !{!160, !162, i64 16}
!264 = !DILocation(line: 137, column: 44, scope: !256)
!265 = !DILocation(line: 137, column: 52, scope: !256)
!266 = !{!160, !162, i64 32}
!267 = !DILocation(line: 138, column: 28, scope: !256)
!268 = !{!160, !162, i64 24}
!269 = !DILocation(line: 137, column: 56, scope: !256)
!270 = !DILocation(line: 137, column: 26, scope: !256)
!271 = !DILocation(line: 137, column: 31, scope: !256)
!272 = !DILocation(line: 139, column: 5, scope: !256)
!273 = !DILocation(line: 140, column: 19, scope: !246)
!274 = !DILocation(line: 141, column: 3, scope: !246)
!275 = !DILocation(line: 142, column: 1, scope: !246)
!276 = distinct !DISubprogram(name: "DestroyTimerInfo", scope: !118, file: !118, line: 166, type: !277, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !279)
!277 = !DISubroutineType(types: !278)
!278 = !{!89, !89}
!279 = !{!280}
!280 = !DILocalVariable(name: "timer_info", arg: 1, scope: !276, file: !118, line: 166, type: !89)
!281 = !DILocation(line: 0, scope: !276)
!282 = !DILocation(line: 170, column: 15, scope: !276)
!283 = !DILocation(line: 170, column: 24, scope: !276)
!284 = !DILocation(line: 171, column: 28, scope: !276)
!285 = !DILocation(line: 172, column: 3, scope: !276)
!286 = !DISubprogram(name: "RelinquishMagickMemory", scope: !198, file: !198, line: 51, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !202)
!287 = !DISubroutineType(types: !288)
!288 = !{!108, !108}
!289 = distinct !DISubprogram(name: "GetElapsedTime", scope: !118, file: !118, line: 238, type: !290, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !292)
!290 = !DISubroutineType(types: !291)
!291 = !{!98, !89}
!292 = !{!293}
!293 = !DILocalVariable(name: "time_info", arg: 1, scope: !289, file: !118, line: 238, type: !89)
!294 = !DILocation(line: 0, scope: !289)
!295 = !DILocation(line: 242, column: 18, scope: !296)
!296 = distinct !DILexicalBlock(scope: !289, file: !118, line: 242, column: 7)
!297 = !DILocation(line: 242, column: 7, scope: !289)
!298 = !DILocation(line: 246, column: 29, scope: !289)
!299 = !DILocalVariable(name: "time_info", arg: 1, scope: !300, file: !118, line: 417, type: !89)
!300 = distinct !DISubprogram(name: "StopTimer", scope: !118, file: !118, line: 417, type: !166, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !301)
!301 = !{!299}
!302 = !DILocation(line: 0, scope: !300, inlinedAt: !303)
!303 = distinct !DILocation(line: 245, column: 5, scope: !304)
!304 = distinct !DILexicalBlock(scope: !289, file: !118, line: 244, column: 7)
!305 = !DILocation(line: 421, column: 22, scope: !300, inlinedAt: !303)
!306 = !DILocation(line: 421, column: 26, scope: !300, inlinedAt: !303)
!307 = !DILocation(line: 422, column: 19, scope: !300, inlinedAt: !303)
!308 = !DILocation(line: 422, column: 23, scope: !300, inlinedAt: !303)
!309 = !DILocation(line: 421, column: 14, scope: !300, inlinedAt: !303)
!310 = !DILocation(line: 426, column: 25, scope: !311, inlinedAt: !303)
!311 = distinct !DILexicalBlock(scope: !312, file: !118, line: 424, column: 5)
!312 = distinct !DILexicalBlock(scope: !300, file: !118, line: 423, column: 7)
!313 = !DILocation(line: 425, column: 50, scope: !311, inlinedAt: !303)
!314 = !DILocation(line: 426, column: 30, scope: !311, inlinedAt: !303)
!315 = !DILocation(line: 425, column: 23, scope: !311, inlinedAt: !303)
!316 = !DILocation(line: 425, column: 28, scope: !311, inlinedAt: !303)
!317 = !DILocation(line: 428, column: 28, scope: !311, inlinedAt: !303)
!318 = !DILocation(line: 427, column: 56, scope: !311, inlinedAt: !303)
!319 = !DILocation(line: 428, column: 33, scope: !311, inlinedAt: !303)
!320 = !DILocation(line: 427, column: 26, scope: !311, inlinedAt: !303)
!321 = !DILocation(line: 427, column: 31, scope: !311, inlinedAt: !303)
!322 = !DILocation(line: 430, column: 19, scope: !300, inlinedAt: !303)
!323 = !DILocation(line: 245, column: 5, scope: !304)
!324 = !DILocation(line: 247, column: 1, scope: !289)
!325 = !DILocation(line: 0, scope: !175)
!326 = !DILocation(line: 379, column: 13, scope: !185)
!327 = !DILocation(line: 379, column: 7, scope: !175)
!328 = !DILocation(line: 384, column: 23, scope: !184)
!329 = !DILocation(line: 384, column: 28, scope: !184)
!330 = !DILocation(line: 385, column: 26, scope: !184)
!331 = !DILocation(line: 385, column: 31, scope: !184)
!332 = !DILocation(line: 386, column: 5, scope: !184)
!333 = !DILocation(line: 387, column: 18, scope: !191)
!334 = !DILocation(line: 387, column: 24, scope: !191)
!335 = !DILocation(line: 387, column: 7, scope: !175)
!336 = !DILocation(line: 389, column: 18, scope: !190)
!337 = !DILocation(line: 389, column: 31, scope: !190)
!338 = !DILocation(line: 390, column: 28, scope: !190)
!339 = !DILocation(line: 391, column: 5, scope: !190)
!340 = !DILocation(line: 392, column: 19, scope: !175)
!341 = !DILocation(line: 393, column: 1, scope: !175)
!342 = distinct !DISubprogram(name: "GetUserTime", scope: !118, file: !118, line: 307, type: !290, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !343)
!343 = !{!344}
!344 = !DILocalVariable(name: "time_info", arg: 1, scope: !342, file: !118, line: 307, type: !89)
!345 = !DILocation(line: 0, scope: !342)
!346 = !DILocation(line: 311, column: 18, scope: !347)
!347 = distinct !DILexicalBlock(scope: !342, file: !118, line: 311, column: 7)
!348 = !DILocation(line: 311, column: 7, scope: !342)
!349 = !DILocation(line: 315, column: 26, scope: !342)
!350 = !DILocation(line: 0, scope: !300, inlinedAt: !351)
!351 = distinct !DILocation(line: 314, column: 5, scope: !352)
!352 = distinct !DILexicalBlock(scope: !342, file: !118, line: 313, column: 7)
!353 = !DILocation(line: 421, column: 22, scope: !300, inlinedAt: !351)
!354 = !DILocation(line: 421, column: 26, scope: !300, inlinedAt: !351)
!355 = !DILocation(line: 422, column: 19, scope: !300, inlinedAt: !351)
!356 = !DILocation(line: 422, column: 23, scope: !300, inlinedAt: !351)
!357 = !DILocation(line: 421, column: 14, scope: !300, inlinedAt: !351)
!358 = !DILocation(line: 426, column: 25, scope: !311, inlinedAt: !351)
!359 = !DILocation(line: 425, column: 50, scope: !311, inlinedAt: !351)
!360 = !DILocation(line: 426, column: 30, scope: !311, inlinedAt: !351)
!361 = !DILocation(line: 425, column: 23, scope: !311, inlinedAt: !351)
!362 = !DILocation(line: 425, column: 28, scope: !311, inlinedAt: !351)
!363 = !DILocation(line: 428, column: 28, scope: !311, inlinedAt: !351)
!364 = !DILocation(line: 427, column: 56, scope: !311, inlinedAt: !351)
!365 = !DILocation(line: 428, column: 33, scope: !311, inlinedAt: !351)
!366 = !DILocation(line: 427, column: 26, scope: !311, inlinedAt: !351)
!367 = !DILocation(line: 427, column: 31, scope: !311, inlinedAt: !351)
!368 = !DILocation(line: 430, column: 19, scope: !300, inlinedAt: !351)
!369 = !DILocation(line: 314, column: 5, scope: !352)
!370 = !DILocation(line: 316, column: 1, scope: !342)
!371 = distinct !DISubprogram(name: "ResetTimer", scope: !118, file: !118, line: 340, type: !166, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !372)
!372 = !{!373}
!373 = !DILocalVariable(name: "time_info", arg: 1, scope: !371, file: !118, line: 340, type: !89)
!374 = !DILocation(line: 0, scope: !371)
!375 = !DILocation(line: 0, scope: !300, inlinedAt: !376)
!376 = distinct !DILocation(line: 344, column: 3, scope: !371)
!377 = !DILocation(line: 423, column: 18, scope: !312, inlinedAt: !376)
!378 = !DILocation(line: 423, column: 24, scope: !312, inlinedAt: !376)
!379 = !DILocation(line: 423, column: 7, scope: !300, inlinedAt: !376)
!380 = !DILocation(line: 421, column: 14, scope: !300, inlinedAt: !376)
!381 = !DILocation(line: 426, column: 25, scope: !311, inlinedAt: !376)
!382 = !DILocation(line: 425, column: 50, scope: !311, inlinedAt: !376)
!383 = !DILocation(line: 426, column: 30, scope: !311, inlinedAt: !376)
!384 = !DILocation(line: 425, column: 23, scope: !311, inlinedAt: !376)
!385 = !DILocation(line: 425, column: 28, scope: !311, inlinedAt: !376)
!386 = !DILocation(line: 428, column: 28, scope: !311, inlinedAt: !376)
!387 = !DILocation(line: 427, column: 56, scope: !311, inlinedAt: !376)
!388 = !DILocation(line: 428, column: 33, scope: !311, inlinedAt: !376)
!389 = !DILocation(line: 427, column: 26, scope: !311, inlinedAt: !376)
!390 = !DILocation(line: 427, column: 31, scope: !311, inlinedAt: !376)
!391 = !DILocation(line: 429, column: 5, scope: !311, inlinedAt: !376)
!392 = !DILocation(line: 422, column: 19, scope: !300, inlinedAt: !376)
!393 = !DILocation(line: 421, column: 22, scope: !300, inlinedAt: !376)
!394 = !DILocation(line: 430, column: 19, scope: !300, inlinedAt: !376)
!395 = !DILocation(line: 345, column: 26, scope: !371)
!396 = !DILocation(line: 346, column: 23, scope: !371)
!397 = !DILocation(line: 347, column: 1, scope: !371)
