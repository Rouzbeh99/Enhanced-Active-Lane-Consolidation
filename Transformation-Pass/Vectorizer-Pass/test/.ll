; ModuleID = 'compiled_with_O3.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@EventSet = dso_local global i32 -1, align 4, !dbg !0
@CounterValues = dso_local global [4 x i64] zeroinitializer, align 8, !dbg !11
@EventCodes = dso_local global [4 x i32] [i32 -2147483598, i32 -2147483589, i32 -2147483648, i32 -2147483602], align 4, !dbg !17
@ExecutionTime = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !20
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Error %d %s:line %d: \0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@a = dso_local local_unnamed_addr global ptr null, align 8, !dbg !23
@b = dso_local local_unnamed_addr global ptr null, align 8, !dbg !25
@c = dso_local local_unnamed_addr global ptr null, align 8, !dbg !27
@cond = dso_local local_unnamed_addr global ptr null, align 8, !dbg !29
@.str.4 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\0ATotal instructions executed: %lld\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Total cycles: %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Total L1 data cache misses: %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Total branch mispredicted: %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Execution time: %lf ms\0A\00", align 1
@str.10 = private unnamed_addr constant [33 x i8] c"error: failed to allocate memory\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @getTimeMiliSeconds() local_unnamed_addr #0 !dbg !43 {
entry:
  %ts = alloca %struct.timespec, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #10, !dbg !57
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !47, metadata !DIExpression()), !dbg !58
  %call = call i32 @clock_gettime(i32 noundef 2, ptr noundef nonnull %ts) #10, !dbg !59
  %0 = load i64, ptr %ts, align 8, !dbg !60, !tbaa !61
  %conv = sitofp i64 %0 to double, !dbg !66
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %ts, i64 0, i32 1, !dbg !67
  %1 = load i64, ptr %tv_nsec, align 8, !dbg !67, !tbaa !68
  %conv1 = sitofp i64 %1 to double, !dbg !69
  %mul2 = fmul double %conv1, 0x3EB0C6F7A0B5ED8D, !dbg !70
  %2 = call double @llvm.fmuladd.f64(double %conv, double 1.000000e+03, double %mul2), !dbg !71
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #10, !dbg !72
  ret double %2, !dbg !73
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare !dbg !74 i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_if(ptr noalias nocapture noundef writeonly %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !83 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !89, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata ptr %b, metadata !90, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata ptr %c, metadata !91, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata ptr %cond, metadata !92, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i32 %n, metadata !93, metadata !DIExpression()), !dbg !98
  %call = tail call double @getTimeMiliSeconds(), !dbg !99
  call void @llvm.dbg.value(metadata double %call, metadata !95, metadata !DIExpression()), !dbg !98
  %0 = load i32, ptr @EventSet, align 4, !dbg !100, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !104
  call void @llvm.dbg.value(metadata i32 %call1, metadata !94, metadata !DIExpression()), !dbg !98
  %cmp.not = icmp eq i32 %call1, 0, !dbg !105
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !106

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !107
  %cmp3131 = icmp sgt i32 %n, 0, !dbg !108
  br i1 %cmp3131, label %for.body.preheader, label %for.cond.cleanup, !dbg !110

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !108
  br label %for.body, !dbg !110

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !111, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 37) #11, !dbg !111
  tail call void @exit(i32 noundef %call1) #12, !dbg !111
  unreachable, !dbg !111

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !115

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !115, !tbaa !102
  %call73 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !117
  call void @llvm.dbg.value(metadata i32 %call73, metadata !94, metadata !DIExpression()), !dbg !98
  %cmp74.not = icmp eq i32 %call73, 0, !dbg !118
  br i1 %cmp74.not, label %if.end77, label %if.then75, !dbg !119

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !96, metadata !DIExpression()), !dbg !107
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !120
  %3 = load i8, ptr %arrayidx, align 1, !dbg !120, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !120
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !126

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !127
  %arrayidx8 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !129
  %4 = load i32, ptr %arrayidx8, align 4, !dbg !129, !tbaa !102
  %arrayidx11 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !130
  %5 = load i32, ptr %arrayidx11, align 4, !dbg !130, !tbaa !102
  %6 = trunc i64 %indvars.iv to i32, !dbg !131
  %mul21 = mul nsw i32 %5, %6, !dbg !131
  %reass.add = sub i32 %6, %4
  %reass.mul = shl i32 %reass.add, 1
  %add = add i32 %mul21, %5, !dbg !132
  %add25 = add i32 %add, %reass.mul, !dbg !133
  store i32 %add25, ptr %arrayidx6, align 4, !dbg !133, !tbaa !102
  %mul43127.neg = sub i32 -3, %4, !dbg !134
  %add44.neg134 = mul i32 %mul43127.neg, %6, !dbg !134
  %7 = add i32 %5, %4
  %reass.add129 = sub i32 %add25, %7
  %reass.mul130 = shl i32 %reass.add129, 1
  %add37 = add i32 %add44.neg134, 2, !dbg !135
  %sub47 = add i32 %add37, %reass.mul130, !dbg !136
  store i32 %sub47, ptr %arrayidx11, align 4, !dbg !136, !tbaa !102
  %8 = sub nsw i32 %4, %sub47, !dbg !137
  %sub61 = shl nsw i32 %8, 1, !dbg !137
  %mul62 = mul nsw i32 %6, %6, !dbg !138
  %add63 = add nsw i32 %sub61, %mul62, !dbg !139
  %mul64.neg = mul i32 %add63, -3, !dbg !140
  %9 = sub i32 %add25, %6, !dbg !141
  %10 = add i32 %9, %sub47, !dbg !142
  %sub65 = shl i32 %10, 1, !dbg !142
  %sub71 = add i32 %mul64.neg, %sub65, !dbg !143
  store i32 %sub71, ptr %arrayidx8, align 4, !dbg !143, !tbaa !102
  br label %for.inc, !dbg !144

for.inc:                                          ; preds = %if.then4, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !145
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !96, metadata !DIExpression()), !dbg !107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !108
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !110, !llvm.loop !146

if.then75:                                        ; preds = %for.cond.cleanup
  %11 = load ptr, ptr @stderr, align 8, !dbg !150, !tbaa !113
  %call76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef %call73, ptr noundef nonnull @.str.1, i32 noundef 53) #11, !dbg !150
  tail call void @exit(i32 noundef %call73) #12, !dbg !150
  unreachable, !dbg !150

if.end77:                                         ; preds = %for.cond.cleanup
  %call78 = tail call double @getTimeMiliSeconds(), !dbg !152
  %sub79 = fsub double %call78, %call, !dbg !153
  store double %sub79, ptr @ExecutionTime, align 8, !dbg !154, !tbaa !155
  ret void, !dbg !157
}

declare !dbg !158 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !162 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @nested_if_case_1(ptr noalias nocapture noundef writeonly %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !166 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !168, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata ptr %b, metadata !169, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata ptr %c, metadata !170, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata ptr %cond, metadata !171, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i32 %n, metadata !172, metadata !DIExpression()), !dbg !181
  %call = tail call double @getTimeMiliSeconds(), !dbg !182
  call void @llvm.dbg.value(metadata double %call, metadata !174, metadata !DIExpression()), !dbg !181
  %0 = load i32, ptr @EventSet, align 4, !dbg !183, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !185
  call void @llvm.dbg.value(metadata i32 %call1, metadata !173, metadata !DIExpression()), !dbg !181
  %cmp.not = icmp eq i32 %call1, 0, !dbg !186
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !187

for.cond.preheader:                               ; preds = %entry
  %cmp566 = icmp sgt i32 %n, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !175, metadata !DIExpression()), !dbg !188
  br i1 %cmp566, label %for.cond4.preheader.us.preheader, label %for.cond.cleanup, !dbg !189

for.cond4.preheader.us.preheader:                 ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond4.preheader.us, !dbg !190

for.cond4.preheader.us:                           ; preds = %for.cond4.for.cond.cleanup6_crit_edge.us, %for.cond4.preheader.us.preheader
  %j.068.us = phi i32 [ %inc35.us, %for.cond4.for.cond.cleanup6_crit_edge.us ], [ 0, %for.cond4.preheader.us.preheader ]
  call void @llvm.dbg.value(metadata i32 %j.068.us, metadata !175, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata i32 0, metadata !177, metadata !DIExpression()), !dbg !191
  br label %for.body7.us, !dbg !189

for.body7.us:                                     ; preds = %for.inc.us, %for.cond4.preheader.us
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !177, metadata !DIExpression()), !dbg !191
  %arrayidx.us = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !192
  %1 = load i8, ptr %arrayidx.us, align 1, !dbg !192, !tbaa !123, !range !125
  %tobool.not.us = icmp eq i8 %1, 0, !dbg !192
  br i1 %tobool.not.us, label %for.inc.us, label %if.then8.us, !dbg !196

if.then8.us:                                      ; preds = %for.body7.us
  %arrayidx10.us = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !197
  %2 = load i32, ptr %arrayidx10.us, align 4, !dbg !197, !tbaa !102
  %add.us = add nsw i32 %2, 4, !dbg !199
  %arrayidx12.us = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !200
  store i32 %add.us, ptr %arrayidx12.us, align 4, !dbg !201, !tbaa !102
  %arrayidx14.us = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !202
  %3 = load i32, ptr %arrayidx14.us, align 4, !dbg !202, !tbaa !102
  %cmp17.us = icmp slt i32 %3, %add.us, !dbg !204
  br i1 %cmp17.us, label %if.then18.us, label %if.end25.us, !dbg !205

if.then18.us:                                     ; preds = %if.then8.us
  %mul.us = mul nsw i32 %add.us, %2, !dbg !206
  store i32 %mul.us, ptr %arrayidx14.us, align 4, !dbg !208, !tbaa !102
  br label %if.end25.us, !dbg !209

if.end25.us:                                      ; preds = %if.then18.us, %if.then8.us
  %4 = phi i32 [ %mul.us, %if.then18.us ], [ %3, %if.then8.us ], !dbg !210
  %add30.us = add nsw i32 %4, %add.us, !dbg !211
  store i32 %add30.us, ptr %arrayidx10.us, align 4, !dbg !212, !tbaa !102
  br label %for.inc.us, !dbg !213

for.inc.us:                                       ; preds = %if.end25.us, %for.body7.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !214
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !177, metadata !DIExpression()), !dbg !191
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !215
  br i1 %exitcond.not, label %for.cond4.for.cond.cleanup6_crit_edge.us, label %for.body7.us, !dbg !189, !llvm.loop !216

for.cond4.for.cond.cleanup6_crit_edge.us:         ; preds = %for.inc.us
  %inc35.us = add nuw nsw i32 %j.068.us, 1, !dbg !218
  call void @llvm.dbg.value(metadata i32 %inc35.us, metadata !175, metadata !DIExpression()), !dbg !188
  %exitcond71.not = icmp eq i32 %inc35.us, 10, !dbg !219
  br i1 %exitcond71.not, label %for.cond.cleanup.loopexit, label %for.cond4.preheader.us, !dbg !190, !llvm.loop !220

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr @stderr, align 8, !dbg !222, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 66) #11, !dbg !222
  tail call void @exit(i32 noundef %call1) #12, !dbg !222
  unreachable, !dbg !222

for.cond.cleanup.loopexit:                        ; preds = %for.cond4.for.cond.cleanup6_crit_edge.us
  br label %for.cond.cleanup, !dbg !224

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %6 = load i32, ptr @EventSet, align 4, !dbg !224, !tbaa !102
  %call37 = tail call i32 @PAPI_stop(i32 noundef %6, ptr noundef nonnull @CounterValues) #10, !dbg !226
  call void @llvm.dbg.value(metadata i32 %call37, metadata !173, metadata !DIExpression()), !dbg !181
  %cmp38.not = icmp eq i32 %call37, 0, !dbg !227
  br i1 %cmp38.not, label %if.end41, label %if.then39, !dbg !228

if.then39:                                        ; preds = %for.cond.cleanup
  %7 = load ptr, ptr @stderr, align 8, !dbg !229, !tbaa !113
  %call40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %call37, ptr noundef nonnull @.str.1, i32 noundef 81) #11, !dbg !229
  tail call void @exit(i32 noundef %call37) #12, !dbg !229
  unreachable, !dbg !229

if.end41:                                         ; preds = %for.cond.cleanup
  %call42 = tail call double @getTimeMiliSeconds(), !dbg !231
  %sub = fsub double %call42, %call, !dbg !232
  store double %sub, ptr @ExecutionTime, align 8, !dbg !233, !tbaa !155
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @nested_if_case_2(ptr noalias nocapture noundef writeonly %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !235 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !237, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata ptr %b, metadata !238, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata ptr %c, metadata !239, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata ptr %cond, metadata !240, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i32 %n, metadata !241, metadata !DIExpression()), !dbg !246
  %call = tail call double @getTimeMiliSeconds(), !dbg !247
  call void @llvm.dbg.value(metadata double %call, metadata !243, metadata !DIExpression()), !dbg !246
  %0 = load i32, ptr @EventSet, align 4, !dbg !248, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !250
  call void @llvm.dbg.value(metadata i32 %call1, metadata !242, metadata !DIExpression()), !dbg !246
  %cmp.not = icmp eq i32 %call1, 0, !dbg !251
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !252

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !244, metadata !DIExpression()), !dbg !253
  %cmp391 = icmp sgt i32 %n, 0, !dbg !254
  br i1 %cmp391, label %for.body.preheader, label %for.cond.cleanup, !dbg !256

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !254
  br label %for.body, !dbg !256

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !257, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 92) #11, !dbg !257
  tail call void @exit(i32 noundef %call1) #12, !dbg !257
  unreachable, !dbg !257

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !259

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !259, !tbaa !102
  %call48 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !261
  call void @llvm.dbg.value(metadata i32 %call48, metadata !242, metadata !DIExpression()), !dbg !246
  %cmp49.not = icmp eq i32 %call48, 0, !dbg !262
  br i1 %cmp49.not, label %if.end52, label %if.then50, !dbg !263

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !244, metadata !DIExpression()), !dbg !253
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !264
  %3 = load i8, ptr %arrayidx, align 1, !dbg !264, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !264
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !267

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !268
  %4 = load i32, ptr %arrayidx6, align 4, !dbg !268, !tbaa !102
  %add = add nsw i32 %4, 4, !dbg !270
  %arrayidx8 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !271
  store i32 %add, ptr %arrayidx8, align 4, !dbg !272, !tbaa !102
  %arrayidx10 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !273
  %5 = load i32, ptr %arrayidx10, align 4, !dbg !273, !tbaa !102
  %cmp13 = icmp slt i32 %5, %add, !dbg !275
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !276

if.then14:                                        ; preds = %if.then4
  %mul = mul nsw i32 %add, %4, !dbg !277
  br label %if.end39.sink.split, !dbg !279

if.else:                                          ; preds = %if.then4
  %mul25 = mul nsw i32 %5, %4, !dbg !280
  store i32 %mul25, ptr %arrayidx10, align 4, !dbg !282, !tbaa !102
  %cmp32 = icmp sgt i32 %mul25, %add, !dbg !283
  br i1 %cmp32, label %if.then33, label %if.end39, !dbg !285

if.then33:                                        ; preds = %if.else
  %sub = add nsw i32 %4, -76, !dbg !286
  br label %if.end39.sink.split, !dbg !288

if.end39.sink.split:                              ; preds = %if.then33, %if.then14
  %sub.sink = phi i32 [ %sub, %if.then33 ], [ %mul, %if.then14 ]
  store i32 %sub.sink, ptr %arrayidx10, align 4, !dbg !289, !tbaa !102
  br label %if.end39, !dbg !290

if.end39:                                         ; preds = %if.end39.sink.split, %if.else
  %6 = phi i32 [ %mul25, %if.else ], [ %sub.sink, %if.end39.sink.split ], !dbg !291
  %add44 = add nsw i32 %6, %add, !dbg !290
  store i32 %add44, ptr %arrayidx6, align 4, !dbg !292, !tbaa !102
  br label %for.inc, !dbg !293

for.inc:                                          ; preds = %if.end39, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !294
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !244, metadata !DIExpression()), !dbg !253
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !254
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !256, !llvm.loop !295

if.then50:                                        ; preds = %for.cond.cleanup
  %7 = load ptr, ptr @stderr, align 8, !dbg !297, !tbaa !113
  %call51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %call48, ptr noundef nonnull @.str.1, i32 noundef 112) #11, !dbg !297
  tail call void @exit(i32 noundef %call48) #12, !dbg !297
  unreachable, !dbg !297

if.end52:                                         ; preds = %for.cond.cleanup
  %call53 = tail call double @getTimeMiliSeconds(), !dbg !299
  %sub54 = fsub double %call53, %call, !dbg !300
  store double %sub54, ptr @ExecutionTime, align 8, !dbg !301, !tbaa !155
  ret void, !dbg !302
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @perfect_nested_if_case_1(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !303 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !305, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata ptr %b, metadata !306, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata ptr %c, metadata !307, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata ptr %cond, metadata !308, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i32 %n, metadata !309, metadata !DIExpression()), !dbg !314
  %call = tail call double @getTimeMiliSeconds(), !dbg !315
  call void @llvm.dbg.value(metadata double %call, metadata !311, metadata !DIExpression()), !dbg !314
  %0 = load i32, ptr @EventSet, align 4, !dbg !316, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !318
  call void @llvm.dbg.value(metadata i32 %call1, metadata !310, metadata !DIExpression()), !dbg !314
  %cmp.not = icmp eq i32 %call1, 0, !dbg !319
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !320

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !312, metadata !DIExpression()), !dbg !321
  %cmp349 = icmp sgt i32 %n, 0, !dbg !322
  br i1 %cmp349, label %for.body.preheader, label %for.cond.cleanup, !dbg !324

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !322
  br label %for.body, !dbg !324

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !325, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 124) #11, !dbg !325
  tail call void @exit(i32 noundef %call1) #12, !dbg !325
  unreachable, !dbg !325

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !327

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !327, !tbaa !102
  %call26 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !329
  call void @llvm.dbg.value(metadata i32 %call26, metadata !310, metadata !DIExpression()), !dbg !314
  %cmp27.not = icmp eq i32 %call26, 0, !dbg !330
  br i1 %cmp27.not, label %if.end30, label %if.then28, !dbg !331

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !312, metadata !DIExpression()), !dbg !321
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !332
  %3 = load i8, ptr %arrayidx, align 1, !dbg !332, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !332
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !335

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !336
  %4 = load i32, ptr %arrayidx6, align 4, !dbg !336, !tbaa !102
  %arrayidx8 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !339
  %5 = load i32, ptr %arrayidx8, align 4, !dbg !339, !tbaa !102
  %cmp9 = icmp sgt i32 %4, %5, !dbg !340
  br i1 %cmp9, label %if.then10, label %for.inc, !dbg !341

if.then10:                                        ; preds = %if.then4
  %arrayidx12 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !342
  %6 = load i32, ptr %arrayidx12, align 4, !dbg !342, !tbaa !102
  %cmp15 = icmp sgt i32 %6, %5, !dbg !345
  br i1 %cmp15, label %if.then16, label %for.inc, !dbg !346

if.then16:                                        ; preds = %if.then10
  %add = add nsw i32 %5, %4, !dbg !347
  store i32 %add, ptr %arrayidx12, align 4, !dbg !349, !tbaa !102
  br label %for.inc, !dbg !350

for.inc:                                          ; preds = %if.then16, %if.then10, %if.then4, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !351
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !312, metadata !DIExpression()), !dbg !321
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !322
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !324, !llvm.loop !352

if.then28:                                        ; preds = %for.cond.cleanup
  %7 = load ptr, ptr @stderr, align 8, !dbg !354, !tbaa !113
  %call29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %call26, ptr noundef nonnull @.str.1, i32 noundef 139) #11, !dbg !354
  tail call void @exit(i32 noundef %call26) #12, !dbg !354
  unreachable, !dbg !354

if.end30:                                         ; preds = %for.cond.cleanup
  %call31 = tail call double @getTimeMiliSeconds(), !dbg !356
  %sub = fsub double %call31, %call, !dbg !357
  store double %sub, ptr @ExecutionTime, align 8, !dbg !358, !tbaa !155
  ret void, !dbg !359
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @perfect_nested_if_case_2(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !360 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !362, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata ptr %b, metadata !363, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata ptr %c, metadata !364, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata ptr %cond, metadata !365, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i32 %n, metadata !366, metadata !DIExpression()), !dbg !371
  %call = tail call double @getTimeMiliSeconds(), !dbg !372
  call void @llvm.dbg.value(metadata double %call, metadata !368, metadata !DIExpression()), !dbg !371
  %0 = load i32, ptr @EventSet, align 4, !dbg !373, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !375
  call void @llvm.dbg.value(metadata i32 %call1, metadata !367, metadata !DIExpression()), !dbg !371
  %cmp.not = icmp eq i32 %call1, 0, !dbg !376
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !377

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !369, metadata !DIExpression()), !dbg !378
  %cmp362 = icmp sgt i32 %n, 0, !dbg !379
  br i1 %cmp362, label %for.body.preheader, label %for.cond.cleanup, !dbg !381

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !379
  br label %for.body, !dbg !381

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !382, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 151) #11, !dbg !382
  tail call void @exit(i32 noundef %call1) #12, !dbg !382
  unreachable, !dbg !382

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !384

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !384, !tbaa !102
  %call32 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !386
  call void @llvm.dbg.value(metadata i32 %call32, metadata !367, metadata !DIExpression()), !dbg !371
  %cmp33.not = icmp eq i32 %call32, 0, !dbg !387
  br i1 %cmp33.not, label %if.end36, label %if.then34, !dbg !388

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !369, metadata !DIExpression()), !dbg !378
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !389
  %3 = load i8, ptr %arrayidx, align 1, !dbg !389, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !389
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !392

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !393
  %4 = load i32, ptr %arrayidx6, align 4, !dbg !393, !tbaa !102
  %arrayidx8 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !396
  %5 = load i32, ptr %arrayidx8, align 4, !dbg !396, !tbaa !102
  %cmp9 = icmp sgt i32 %4, %5, !dbg !397
  br i1 %cmp9, label %if.then10, label %for.inc, !dbg !398

if.then10:                                        ; preds = %if.then4
  %arrayidx12 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !399
  %6 = load i32, ptr %arrayidx12, align 4, !dbg !399, !tbaa !102
  %cmp15 = icmp sgt i32 %6, %5, !dbg !402
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !403

if.then16:                                        ; preds = %if.then10
  %add = add nsw i32 %5, %4, !dbg !404
  store i32 %add, ptr %arrayidx12, align 4, !dbg !406, !tbaa !102
  br label %for.inc, !dbg !407

if.else:                                          ; preds = %if.then10
  %sub = sub nsw i32 %4, %5, !dbg !408
  store i32 %sub, ptr %arrayidx6, align 4, !dbg !410, !tbaa !102
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then16, %if.then4, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !411
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !369, metadata !DIExpression()), !dbg !378
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !379
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !381, !llvm.loop !412

if.then34:                                        ; preds = %for.cond.cleanup
  %7 = load ptr, ptr @stderr, align 8, !dbg !414, !tbaa !113
  %call35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %call32, ptr noundef nonnull @.str.1, i32 noundef 168) #11, !dbg !414
  tail call void @exit(i32 noundef %call32) #12, !dbg !414
  unreachable, !dbg !414

if.end36:                                         ; preds = %for.cond.cleanup
  %call37 = tail call double @getTimeMiliSeconds(), !dbg !416
  %sub38 = fsub double %call37, %call, !dbg !417
  store double %sub38, ptr @ExecutionTime, align 8, !dbg !418, !tbaa !155
  ret void, !dbg !419
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_if_else(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !420 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !422, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata ptr %b, metadata !423, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata ptr %c, metadata !424, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata ptr %cond, metadata !425, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i32 %n, metadata !426, metadata !DIExpression()), !dbg !431
  %call = tail call double @getTimeMiliSeconds(), !dbg !432
  call void @llvm.dbg.value(metadata double %call, metadata !428, metadata !DIExpression()), !dbg !431
  %0 = load i32, ptr @EventSet, align 4, !dbg !433, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !435
  call void @llvm.dbg.value(metadata i32 %call1, metadata !427, metadata !DIExpression()), !dbg !431
  %cmp.not = icmp eq i32 %call1, 0, !dbg !436
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !437

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !429, metadata !DIExpression()), !dbg !438
  %cmp339 = icmp sgt i32 %n, 0, !dbg !439
  br i1 %cmp339, label %for.body.preheader, label %for.cond.cleanup, !dbg !441

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !439
  br label %for.body, !dbg !441

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !442, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 181) #11, !dbg !442
  tail call void @exit(i32 noundef %call1) #12, !dbg !442
  unreachable, !dbg !442

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !444

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !444, !tbaa !102
  %call18 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !446
  call void @llvm.dbg.value(metadata i32 %call18, metadata !427, metadata !DIExpression()), !dbg !431
  %cmp19.not = icmp eq i32 %call18, 0, !dbg !447
  br i1 %cmp19.not, label %if.end22, label %if.then20, !dbg !448

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !429, metadata !DIExpression()), !dbg !438
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !449
  %3 = load i8, ptr %arrayidx, align 1, !dbg !449, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !449
  %arrayidx12 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !452
  %4 = load i32, ptr %arrayidx12, align 4, !dbg !452, !tbaa !102
  %arrayidx14 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !452
  %5 = load i32, ptr %arrayidx14, align 4, !dbg !452, !tbaa !102
  br i1 %tobool.not, label %if.else, label %if.then4, !dbg !453

if.then4:                                         ; preds = %for.body
  %add = add nsw i32 %5, %4, !dbg !454
  %arrayidx10 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !456
  store i32 %add, ptr %arrayidx10, align 4, !dbg !457, !tbaa !102
  br label %for.inc, !dbg !458

if.else:                                          ; preds = %for.body
  %sub = sub nsw i32 %4, %5, !dbg !459
  store i32 %sub, ptr %arrayidx12, align 4, !dbg !461, !tbaa !102
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !462
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !429, metadata !DIExpression()), !dbg !438
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !439
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !441, !llvm.loop !463

if.then20:                                        ; preds = %for.cond.cleanup
  %6 = load ptr, ptr @stderr, align 8, !dbg !465, !tbaa !113
  %call21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef %call18, ptr noundef nonnull @.str.1, i32 noundef 194) #11, !dbg !465
  tail call void @exit(i32 noundef %call18) #12, !dbg !465
  unreachable, !dbg !465

if.end22:                                         ; preds = %for.cond.cleanup
  %call23 = tail call double @getTimeMiliSeconds(), !dbg !467
  %sub24 = fsub double %call23, %call, !dbg !468
  store double %sub24, ptr @ExecutionTime, align 8, !dbg !469, !tbaa !155
  ret void, !dbg !470
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !471 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !475, metadata !DIExpression()), !dbg !477
  %conv = sext i32 %n to i64, !dbg !478
  %mul = shl nsw i64 %conv, 2, !dbg !479
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #13, !dbg !480
  call void @llvm.dbg.value(metadata ptr %call, metadata !476, metadata !DIExpression()), !dbg !477
  %cmp = icmp eq ptr %call, null, !dbg !481
  br i1 %cmp, label %if.then, label %if.end, !dbg !483

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !484
  tail call void @exit(i32 noundef 1) #12, !dbg !486
  unreachable, !dbg !486

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !487
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !488 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !492, metadata !DIExpression()), !dbg !494
  %conv = sext i32 %n to i64, !dbg !495
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #13, !dbg !496
  call void @llvm.dbg.value(metadata ptr %call, metadata !493, metadata !DIExpression()), !dbg !494
  %cmp = icmp eq ptr %call, null, !dbg !497
  br i1 %cmp, label %if.then, label %if.end, !dbg !499

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !500
  tail call void @exit(i32 noundef 1) #12, !dbg !502
  unreachable, !dbg !502

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !503
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !504 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #10, !dbg !520
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !509, metadata !DIExpression()), !dbg !521
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #10, !dbg !522
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !524
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !525

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !526, !tbaa !113
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #11, !dbg !528
  call void @exit(i32 noundef 1) #12, !dbg !529
  unreachable, !dbg !529

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #10, !dbg !530
  call void @llvm.dbg.value(metadata i32 %call2, metadata !508, metadata !DIExpression()), !dbg !532
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !533
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !534

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !535, !tbaa !113
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 232) #11, !dbg !535
  tail call void @exit(i32 noundef %call2) #12, !dbg !535
  unreachable, !dbg !535

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !537, !tbaa !102
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #10, !dbg !539
  call void @llvm.dbg.value(metadata i32 %call7, metadata !508, metadata !DIExpression()), !dbg !532
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !540
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !541

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !542, !tbaa !113
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 235) #11, !dbg !542
  tail call void @exit(i32 noundef %call7) #12, !dbg !542
  unreachable, !dbg !542

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 5000000, metadata !514, metadata !DIExpression()), !dbg !532
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !544
  store ptr %call12, ptr @a, align 8, !dbg !545, !tbaa !113
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !546
  store ptr %call13, ptr @b, align 8, !dbg !547, !tbaa !113
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !548
  store ptr %call14, ptr @c, align 8, !dbg !549, !tbaa !113
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !550
  store ptr %call15, ptr @cond, align 8, !dbg !551, !tbaa !113
  store i8 0, ptr %call15, align 1, !dbg !552, !tbaa !123
  %call16 = tail call i64 @time(ptr noundef null) #10, !dbg !553
  %conv = trunc i64 %call16 to i32, !dbg !553
  tail call void @srand(i32 noundef %conv) #10, !dbg !554
  call void @llvm.dbg.value(metadata i32 0, metadata !515, metadata !DIExpression()), !dbg !555
  %4 = load ptr, ptr @a, align 8, !tbaa !113
  %5 = load ptr, ptr @b, align 8, !tbaa !113
  %6 = load ptr, ptr @c, align 8, !tbaa !113
  %7 = load ptr, ptr @cond, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !515, metadata !DIExpression()), !dbg !555
  br label %for.body, !dbg !556

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !515, metadata !DIExpression()), !dbg !555
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !557
  %8 = trunc i64 %indvars.iv to i32, !dbg !560
  store i32 %8, ptr %arrayidx19, align 4, !dbg !560, !tbaa !102
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !561
  store i32 2, ptr %arrayidx21, align 4, !dbg !562, !tbaa !102
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !563
  store i32 0, ptr %arrayidx23, align 4, !dbg !564, !tbaa !102
  %rem = urem i32 %8, 100, !dbg !565
  %cmp24 = icmp ult i32 %rem, 40, !dbg !566
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !567
  %frombool = zext i1 %cmp24 to i8, !dbg !568
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !568, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !569
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !515, metadata !DIExpression()), !dbg !555
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !570
  br i1 %exitcond.not, label %for.body33.preheader, label %for.body, !dbg !556, !llvm.loop !571

for.body33.preheader:                             ; preds = %for.body
  br label %for.body33, !dbg !573

for.cond.cleanup32:                               ; preds = %for.body33
  %add.lcssa = phi i32 [ %add, %for.body33 ], !dbg !574
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add.lcssa), !dbg !577
  %9 = load ptr, ptr @a, align 8, !dbg !578, !tbaa !113
  tail call void @free(ptr noundef %9) #10, !dbg !579
  %10 = load ptr, ptr @b, align 8, !dbg !580, !tbaa !113
  tail call void @free(ptr noundef %10) #10, !dbg !581
  %11 = load ptr, ptr @c, align 8, !dbg !582, !tbaa !113
  tail call void @free(ptr noundef %11) #10, !dbg !583
  %12 = load ptr, ptr @cond, align 8, !dbg !584, !tbaa !113
  tail call void @free(ptr noundef %12) #10, !dbg !585
  %13 = load i64, ptr @CounterValues, align 8, !dbg !586, !tbaa !587
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %13), !dbg !589
  %14 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !590, !tbaa !587
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %14), !dbg !591
  %15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !592, !tbaa !587
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %15), !dbg !593
  %16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !594, !tbaa !587
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %16), !dbg !595
  %17 = load double, ptr @ExecutionTime, align 8, !dbg !596, !tbaa !155
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %17), !dbg !597
  %18 = load i32, ptr @EventSet, align 4, !dbg !598, !tbaa !102
  %call45 = tail call i32 @PAPI_remove_events(i32 noundef %18, ptr noundef nonnull @EventCodes, i32 noundef 4) #10, !dbg !600
  call void @llvm.dbg.value(metadata i32 %call45, metadata !508, metadata !DIExpression()), !dbg !532
  %cmp46.not = icmp eq i32 %call45, 0, !dbg !601
  br i1 %cmp46.not, label %if.end50, label %if.then48, !dbg !602

for.body33:                                       ; preds = %for.body33.preheader, %for.body33
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.body33 ], [ 0, %for.body33.preheader ]
  %sum.080 = phi i32 [ %add, %for.body33 ], [ 0, %for.body33.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv83, metadata !518, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata i32 %sum.080, metadata !517, metadata !DIExpression()), !dbg !532
  %arrayidx35 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv83, !dbg !604
  %19 = load i32, ptr %arrayidx35, align 4, !dbg !604, !tbaa !102
  %add = add nsw i32 %19, %sum.080, !dbg !574
  call void @llvm.dbg.value(metadata i32 %add, metadata !517, metadata !DIExpression()), !dbg !532
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1, !dbg !605
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next84, metadata !518, metadata !DIExpression()), !dbg !603
  %exitcond86.not = icmp eq i64 %indvars.iv.next84, 5000000, !dbg !606
  br i1 %exitcond86.not, label %for.cond.cleanup32, label %for.body33, !dbg !573, !llvm.loop !607

if.then48:                                        ; preds = %for.cond.cleanup32
  %20 = load ptr, ptr @stderr, align 8, !dbg !609, !tbaa !113
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef %call45, ptr noundef nonnull @.str.1, i32 noundef 278) #11, !dbg !609
  tail call void @exit(i32 noundef %call45) #12, !dbg !609
  unreachable, !dbg !609

if.end50:                                         ; preds = %for.cond.cleanup32
  %call51 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #10, !dbg !611
  call void @llvm.dbg.value(metadata i32 %call51, metadata !508, metadata !DIExpression()), !dbg !532
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !613
  br i1 %cmp52.not, label %if.end56, label %if.then54, !dbg !614

if.then54:                                        ; preds = %if.end50
  %21 = load ptr, ptr @stderr, align 8, !dbg !615, !tbaa !113
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %call51, ptr noundef nonnull @.str.1, i32 noundef 281) #11, !dbg !615
  tail call void @exit(i32 noundef %call51) #12, !dbg !615
  unreachable, !dbg !615

if.end56:                                         ; preds = %if.end50
  tail call void @PAPI_shutdown() #10, !dbg !617
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #10, !dbg !618
  ret i32 0, !dbg !619
}

declare !dbg !620 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !621 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !624 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !627 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !632 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !638 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !639 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !640 void @PAPI_shutdown() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #6 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "EventSet", scope: !2, file: !3, line: 22, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "c8cc9ac159c7a7a5c294722993a3b7ec")
!4 = !{!5, !7, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = !{!0, !11, !17, !20, !23, !25, !27, !29}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CounterValues", scope: !2, file: !3, line: 24, type: !13, isLocal: false, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !15)
!14 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!15 = !{!16}
!16 = !DISubrange(count: 4)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "EventCodes", scope: !2, file: !3, line: 26, type: !19, isLocal: false, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !15)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "ExecutionTime", scope: !2, file: !3, line: 27, type: !22, isLocal: false, isDefinition: true)
!22 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 199, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 200, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 201, type: !5, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 202, type: !8, isLocal: false, isDefinition: true)
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"PIC Level", i32 2}
!39 = !{i32 7, !"PIE Level", i32 2}
!40 = !{i32 7, !"uwtable", i32 2}
!41 = !{i32 7, !"frame-pointer", i32 1}
!42 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!43 = distinct !DISubprogram(name: "getTimeMiliSeconds", scope: !3, file: !3, line: 15, type: !44, scopeLine: 15, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!44 = !DISubroutineType(types: !45)
!45 = !{!22}
!46 = !{!47}
!47 = !DILocalVariable(name: "ts", scope: !43, file: !3, line: 16, type: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !49, line: 10, size: 128, elements: !50)
!49 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!50 = !{!51, !55}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !48, file: !49, line: 12, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !53, line: 160, baseType: !54)
!53 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!54 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !48, file: !49, line: 16, baseType: !56, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !53, line: 196, baseType: !54)
!57 = !DILocation(line: 16, column: 5, scope: !43)
!58 = !DILocation(line: 16, column: 21, scope: !43)
!59 = !DILocation(line: 17, column: 5, scope: !43)
!60 = !DILocation(line: 18, column: 15, scope: !43)
!61 = !{!62, !63, i64 0}
!62 = !{!"timespec", !63, i64 0, !63, i64 8}
!63 = !{!"long", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !DILocation(line: 18, column: 12, scope: !43)
!67 = !DILocation(line: 18, column: 35, scope: !43)
!68 = !{!62, !63, i64 8}
!69 = !DILocation(line: 18, column: 32, scope: !43)
!70 = !DILocation(line: 18, column: 43, scope: !43)
!71 = !DILocation(line: 18, column: 30, scope: !43)
!72 = !DILocation(line: 19, column: 1, scope: !43)
!73 = !DILocation(line: 18, column: 5, scope: !43)
!74 = !DISubprogram(name: "clock_gettime", scope: !75, file: !75, line: 213, type: !76, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!75 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!76 = !DISubroutineType(types: !77)
!77 = !{!6, !78, !81}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !79, line: 7, baseType: !80)
!79 = !DIFile(filename: "/usr/include/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !53, line: 168, baseType: !6)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!82 = !{}
!83 = distinct !DISubprogram(name: "simple_if", scope: !3, file: !3, line: 30, type: !84, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !86, !86, !87, !6}
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96}
!89 = !DILocalVariable(name: "a", arg: 1, scope: !83, file: !3, line: 30, type: !86)
!90 = !DILocalVariable(name: "b", arg: 2, scope: !83, file: !3, line: 30, type: !86)
!91 = !DILocalVariable(name: "c", arg: 3, scope: !83, file: !3, line: 30, type: !86)
!92 = !DILocalVariable(name: "cond", arg: 4, scope: !83, file: !3, line: 31, type: !87)
!93 = !DILocalVariable(name: "n", arg: 5, scope: !83, file: !3, line: 31, type: !6)
!94 = !DILocalVariable(name: "status", scope: !83, file: !3, line: 33, type: !6)
!95 = !DILocalVariable(name: "t", scope: !83, file: !3, line: 35, type: !22)
!96 = !DILocalVariable(name: "i", scope: !97, file: !3, line: 40, type: !6)
!97 = distinct !DILexicalBlock(scope: !83, file: !3, line: 40, column: 5)
!98 = !DILocation(line: 0, scope: !83)
!99 = !DILocation(line: 35, column: 16, scope: !83)
!100 = !DILocation(line: 37, column: 30, scope: !101)
!101 = distinct !DILexicalBlock(scope: !83, file: !3, line: 37, column: 9)
!102 = !{!103, !103, i64 0}
!103 = !{!"int", !64, i64 0}
!104 = !DILocation(line: 37, column: 19, scope: !101)
!105 = !DILocation(line: 37, column: 41, scope: !101)
!106 = !DILocation(line: 37, column: 9, scope: !83)
!107 = !DILocation(line: 0, scope: !97)
!108 = !DILocation(line: 40, column: 23, scope: !109)
!109 = distinct !DILexicalBlock(scope: !97, file: !3, line: 40, column: 5)
!110 = !DILocation(line: 40, column: 5, scope: !97)
!111 = !DILocation(line: 37, column: 53, scope: !112)
!112 = distinct !DILexicalBlock(scope: !101, file: !3, line: 37, column: 53)
!113 = !{!114, !114, i64 0}
!114 = !{!"any pointer", !64, i64 0}
!115 = !DILocation(line: 53, column: 29, scope: !116)
!116 = distinct !DILexicalBlock(scope: !83, file: !3, line: 53, column: 9)
!117 = !DILocation(line: 53, column: 19, scope: !116)
!118 = !DILocation(line: 53, column: 55, scope: !116)
!119 = !DILocation(line: 53, column: 9, scope: !83)
!120 = !DILocation(line: 41, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 41, column: 13)
!122 = distinct !DILexicalBlock(scope: !109, file: !3, line: 40, column: 33)
!123 = !{!124, !124, i64 0}
!124 = !{!"_Bool", !64, i64 0}
!125 = !{i8 0, i8 2}
!126 = !DILocation(line: 41, column: 13, scope: !122)
!127 = !DILocation(line: 42, column: 25, scope: !128)
!128 = distinct !DILexicalBlock(scope: !121, file: !3, line: 41, column: 22)
!129 = !DILocation(line: 42, column: 36, scope: !128)
!130 = !DILocation(line: 42, column: 45, scope: !128)
!131 = !DILocation(line: 43, column: 31, scope: !128)
!132 = !DILocation(line: 42, column: 42, scope: !128)
!133 = !DILocation(line: 43, column: 18, scope: !128)
!134 = !DILocation(line: 45, column: 27, scope: !128)
!135 = !DILocation(line: 44, column: 33, scope: !128)
!136 = !DILocation(line: 45, column: 18, scope: !128)
!137 = !DILocation(line: 46, column: 56, scope: !128)
!138 = !DILocation(line: 46, column: 71, scope: !128)
!139 = !DILocation(line: 46, column: 67, scope: !128)
!140 = !DILocation(line: 46, column: 44, scope: !128)
!141 = !DILocation(line: 46, column: 29, scope: !128)
!142 = !DILocation(line: 46, column: 40, scope: !128)
!143 = !DILocation(line: 47, column: 18, scope: !128)
!144 = !DILocation(line: 48, column: 9, scope: !128)
!145 = !DILocation(line: 40, column: 28, scope: !109)
!146 = distinct !{!146, !110, !147, !148, !149}
!147 = !DILocation(line: 49, column: 5, scope: !97)
!148 = !{!"llvm.loop.mustprogress"}
!149 = !{!"llvm.loop.unroll.disable"}
!150 = !DILocation(line: 53, column: 67, scope: !151)
!151 = distinct !DILexicalBlock(scope: !116, file: !3, line: 53, column: 67)
!152 = !DILocation(line: 55, column: 21, scope: !83)
!153 = !DILocation(line: 55, column: 42, scope: !83)
!154 = !DILocation(line: 55, column: 19, scope: !83)
!155 = !{!156, !156, i64 0}
!156 = !{!"double", !64, i64 0}
!157 = !DILocation(line: 56, column: 1, scope: !83)
!158 = !DISubprogram(name: "PAPI_start", scope: !159, file: !159, line: 1204, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!159 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!160 = !DISubroutineType(types: !161)
!161 = !{!6, !6}
!162 = !DISubprogram(name: "PAPI_stop", scope: !159, file: !159, line: 1206, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!163 = !DISubroutineType(types: !164)
!164 = !{!6, !6, !165}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!166 = distinct !DISubprogram(name: "nested_if_case_1", scope: !3, file: !3, line: 59, type: !84, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !177}
!168 = !DILocalVariable(name: "a", arg: 1, scope: !166, file: !3, line: 59, type: !86)
!169 = !DILocalVariable(name: "b", arg: 2, scope: !166, file: !3, line: 59, type: !86)
!170 = !DILocalVariable(name: "c", arg: 3, scope: !166, file: !3, line: 59, type: !86)
!171 = !DILocalVariable(name: "cond", arg: 4, scope: !166, file: !3, line: 60, type: !87)
!172 = !DILocalVariable(name: "n", arg: 5, scope: !166, file: !3, line: 60, type: !6)
!173 = !DILocalVariable(name: "status", scope: !166, file: !3, line: 62, type: !6)
!174 = !DILocalVariable(name: "t", scope: !166, file: !3, line: 64, type: !22)
!175 = !DILocalVariable(name: "j", scope: !176, file: !3, line: 68, type: !6)
!176 = distinct !DILexicalBlock(scope: !166, file: !3, line: 68, column: 5)
!177 = !DILocalVariable(name: "i", scope: !178, file: !3, line: 69, type: !6)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 69, column: 5)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 68, column: 34)
!180 = distinct !DILexicalBlock(scope: !176, file: !3, line: 68, column: 5)
!181 = !DILocation(line: 0, scope: !166)
!182 = !DILocation(line: 64, column: 16, scope: !166)
!183 = !DILocation(line: 66, column: 30, scope: !184)
!184 = distinct !DILexicalBlock(scope: !166, file: !3, line: 66, column: 9)
!185 = !DILocation(line: 66, column: 19, scope: !184)
!186 = !DILocation(line: 66, column: 41, scope: !184)
!187 = !DILocation(line: 66, column: 9, scope: !166)
!188 = !DILocation(line: 0, scope: !176)
!189 = !DILocation(line: 69, column: 5, scope: !178)
!190 = !DILocation(line: 68, column: 5, scope: !176)
!191 = !DILocation(line: 0, scope: !178)
!192 = !DILocation(line: 70, column: 13, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !3, line: 70, column: 13)
!194 = distinct !DILexicalBlock(scope: !195, file: !3, line: 69, column: 33)
!195 = distinct !DILexicalBlock(scope: !178, file: !3, line: 69, column: 5)
!196 = !DILocation(line: 70, column: 13, scope: !194)
!197 = !DILocation(line: 71, column: 20, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !3, line: 70, column: 22)
!199 = !DILocation(line: 71, column: 25, scope: !198)
!200 = !DILocation(line: 71, column: 13, scope: !198)
!201 = !DILocation(line: 71, column: 18, scope: !198)
!202 = !DILocation(line: 72, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !198, file: !3, line: 72, column: 17)
!204 = !DILocation(line: 72, column: 22, scope: !203)
!205 = !DILocation(line: 72, column: 17, scope: !198)
!206 = !DILocation(line: 73, column: 29, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !3, line: 72, column: 30)
!208 = !DILocation(line: 73, column: 22, scope: !207)
!209 = !DILocation(line: 74, column: 13, scope: !207)
!210 = !DILocation(line: 75, column: 27, scope: !198)
!211 = !DILocation(line: 75, column: 25, scope: !198)
!212 = !DILocation(line: 75, column: 18, scope: !198)
!213 = !DILocation(line: 76, column: 9, scope: !198)
!214 = !DILocation(line: 69, column: 28, scope: !195)
!215 = !DILocation(line: 69, column: 23, scope: !195)
!216 = distinct !{!216, !189, !217, !148, !149}
!217 = !DILocation(line: 77, column: 5, scope: !178)
!218 = !DILocation(line: 68, column: 29, scope: !180)
!219 = !DILocation(line: 68, column: 23, scope: !180)
!220 = distinct !{!220, !190, !221, !148, !149}
!221 = !DILocation(line: 78, column: 5, scope: !176)
!222 = !DILocation(line: 66, column: 53, scope: !223)
!223 = distinct !DILexicalBlock(scope: !184, file: !3, line: 66, column: 53)
!224 = !DILocation(line: 81, column: 29, scope: !225)
!225 = distinct !DILexicalBlock(scope: !166, file: !3, line: 81, column: 9)
!226 = !DILocation(line: 81, column: 19, scope: !225)
!227 = !DILocation(line: 81, column: 55, scope: !225)
!228 = !DILocation(line: 81, column: 9, scope: !166)
!229 = !DILocation(line: 81, column: 67, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !3, line: 81, column: 67)
!231 = !DILocation(line: 82, column: 21, scope: !166)
!232 = !DILocation(line: 82, column: 42, scope: !166)
!233 = !DILocation(line: 82, column: 19, scope: !166)
!234 = !DILocation(line: 83, column: 1, scope: !166)
!235 = distinct !DISubprogram(name: "nested_if_case_2", scope: !3, file: !3, line: 85, type: !84, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244}
!237 = !DILocalVariable(name: "a", arg: 1, scope: !235, file: !3, line: 85, type: !86)
!238 = !DILocalVariable(name: "b", arg: 2, scope: !235, file: !3, line: 85, type: !86)
!239 = !DILocalVariable(name: "c", arg: 3, scope: !235, file: !3, line: 85, type: !86)
!240 = !DILocalVariable(name: "cond", arg: 4, scope: !235, file: !3, line: 86, type: !87)
!241 = !DILocalVariable(name: "n", arg: 5, scope: !235, file: !3, line: 86, type: !6)
!242 = !DILocalVariable(name: "status", scope: !235, file: !3, line: 88, type: !6)
!243 = !DILocalVariable(name: "t", scope: !235, file: !3, line: 90, type: !22)
!244 = !DILocalVariable(name: "i", scope: !245, file: !3, line: 95, type: !6)
!245 = distinct !DILexicalBlock(scope: !235, file: !3, line: 95, column: 5)
!246 = !DILocation(line: 0, scope: !235)
!247 = !DILocation(line: 90, column: 16, scope: !235)
!248 = !DILocation(line: 92, column: 30, scope: !249)
!249 = distinct !DILexicalBlock(scope: !235, file: !3, line: 92, column: 9)
!250 = !DILocation(line: 92, column: 19, scope: !249)
!251 = !DILocation(line: 92, column: 41, scope: !249)
!252 = !DILocation(line: 92, column: 9, scope: !235)
!253 = !DILocation(line: 0, scope: !245)
!254 = !DILocation(line: 95, column: 23, scope: !255)
!255 = distinct !DILexicalBlock(scope: !245, file: !3, line: 95, column: 5)
!256 = !DILocation(line: 95, column: 5, scope: !245)
!257 = !DILocation(line: 92, column: 53, scope: !258)
!258 = distinct !DILexicalBlock(scope: !249, file: !3, line: 92, column: 53)
!259 = !DILocation(line: 112, column: 29, scope: !260)
!260 = distinct !DILexicalBlock(scope: !235, file: !3, line: 112, column: 9)
!261 = !DILocation(line: 112, column: 19, scope: !260)
!262 = !DILocation(line: 112, column: 55, scope: !260)
!263 = !DILocation(line: 112, column: 9, scope: !235)
!264 = !DILocation(line: 96, column: 13, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !3, line: 96, column: 13)
!266 = distinct !DILexicalBlock(scope: !255, file: !3, line: 95, column: 33)
!267 = !DILocation(line: 96, column: 13, scope: !266)
!268 = !DILocation(line: 97, column: 20, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !3, line: 96, column: 22)
!270 = !DILocation(line: 97, column: 25, scope: !269)
!271 = !DILocation(line: 97, column: 13, scope: !269)
!272 = !DILocation(line: 97, column: 18, scope: !269)
!273 = !DILocation(line: 98, column: 17, scope: !274)
!274 = distinct !DILexicalBlock(scope: !269, file: !3, line: 98, column: 17)
!275 = !DILocation(line: 98, column: 22, scope: !274)
!276 = !DILocation(line: 98, column: 17, scope: !269)
!277 = !DILocation(line: 99, column: 29, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !3, line: 98, column: 30)
!279 = !DILocation(line: 100, column: 13, scope: !278)
!280 = !DILocation(line: 101, column: 29, scope: !281)
!281 = distinct !DILexicalBlock(scope: !274, file: !3, line: 100, column: 20)
!282 = !DILocation(line: 101, column: 22, scope: !281)
!283 = !DILocation(line: 102, column: 26, scope: !284)
!284 = distinct !DILexicalBlock(scope: !281, file: !3, line: 102, column: 21)
!285 = !DILocation(line: 102, column: 21, scope: !281)
!286 = !DILocation(line: 103, column: 33, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !3, line: 102, column: 34)
!288 = !DILocation(line: 104, column: 17, scope: !287)
!289 = !DILocation(line: 0, scope: !274)
!290 = !DILocation(line: 106, column: 25, scope: !269)
!291 = !DILocation(line: 106, column: 27, scope: !269)
!292 = !DILocation(line: 106, column: 18, scope: !269)
!293 = !DILocation(line: 107, column: 9, scope: !269)
!294 = !DILocation(line: 95, column: 28, scope: !255)
!295 = distinct !{!295, !256, !296, !148, !149}
!296 = !DILocation(line: 108, column: 5, scope: !245)
!297 = !DILocation(line: 112, column: 67, scope: !298)
!298 = distinct !DILexicalBlock(scope: !260, file: !3, line: 112, column: 67)
!299 = !DILocation(line: 114, column: 21, scope: !235)
!300 = !DILocation(line: 114, column: 42, scope: !235)
!301 = !DILocation(line: 114, column: 19, scope: !235)
!302 = !DILocation(line: 115, column: 1, scope: !235)
!303 = distinct !DISubprogram(name: "perfect_nested_if_case_1", scope: !3, file: !3, line: 117, type: !84, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !304)
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312}
!305 = !DILocalVariable(name: "a", arg: 1, scope: !303, file: !3, line: 117, type: !86)
!306 = !DILocalVariable(name: "b", arg: 2, scope: !303, file: !3, line: 117, type: !86)
!307 = !DILocalVariable(name: "c", arg: 3, scope: !303, file: !3, line: 117, type: !86)
!308 = !DILocalVariable(name: "cond", arg: 4, scope: !303, file: !3, line: 118, type: !87)
!309 = !DILocalVariable(name: "n", arg: 5, scope: !303, file: !3, line: 118, type: !6)
!310 = !DILocalVariable(name: "status", scope: !303, file: !3, line: 120, type: !6)
!311 = !DILocalVariable(name: "t", scope: !303, file: !3, line: 122, type: !22)
!312 = !DILocalVariable(name: "i", scope: !313, file: !3, line: 127, type: !6)
!313 = distinct !DILexicalBlock(scope: !303, file: !3, line: 127, column: 5)
!314 = !DILocation(line: 0, scope: !303)
!315 = !DILocation(line: 122, column: 16, scope: !303)
!316 = !DILocation(line: 124, column: 30, scope: !317)
!317 = distinct !DILexicalBlock(scope: !303, file: !3, line: 124, column: 9)
!318 = !DILocation(line: 124, column: 19, scope: !317)
!319 = !DILocation(line: 124, column: 41, scope: !317)
!320 = !DILocation(line: 124, column: 9, scope: !303)
!321 = !DILocation(line: 0, scope: !313)
!322 = !DILocation(line: 127, column: 23, scope: !323)
!323 = distinct !DILexicalBlock(scope: !313, file: !3, line: 127, column: 5)
!324 = !DILocation(line: 127, column: 5, scope: !313)
!325 = !DILocation(line: 124, column: 53, scope: !326)
!326 = distinct !DILexicalBlock(scope: !317, file: !3, line: 124, column: 53)
!327 = !DILocation(line: 139, column: 29, scope: !328)
!328 = distinct !DILexicalBlock(scope: !303, file: !3, line: 139, column: 9)
!329 = !DILocation(line: 139, column: 19, scope: !328)
!330 = !DILocation(line: 139, column: 55, scope: !328)
!331 = !DILocation(line: 139, column: 9, scope: !303)
!332 = !DILocation(line: 128, column: 13, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !3, line: 128, column: 13)
!334 = distinct !DILexicalBlock(scope: !323, file: !3, line: 127, column: 33)
!335 = !DILocation(line: 128, column: 13, scope: !334)
!336 = !DILocation(line: 129, column: 17, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !3, line: 129, column: 17)
!338 = distinct !DILexicalBlock(scope: !333, file: !3, line: 128, column: 22)
!339 = !DILocation(line: 129, column: 24, scope: !337)
!340 = !DILocation(line: 129, column: 22, scope: !337)
!341 = !DILocation(line: 129, column: 17, scope: !338)
!342 = !DILocation(line: 130, column: 21, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !3, line: 130, column: 21)
!344 = distinct !DILexicalBlock(scope: !337, file: !3, line: 129, column: 30)
!345 = !DILocation(line: 130, column: 26, scope: !343)
!346 = !DILocation(line: 130, column: 21, scope: !344)
!347 = !DILocation(line: 131, column: 33, scope: !348)
!348 = distinct !DILexicalBlock(scope: !343, file: !3, line: 130, column: 34)
!349 = !DILocation(line: 131, column: 26, scope: !348)
!350 = !DILocation(line: 132, column: 17, scope: !348)
!351 = !DILocation(line: 127, column: 28, scope: !323)
!352 = distinct !{!352, !324, !353, !148, !149}
!353 = !DILocation(line: 135, column: 5, scope: !313)
!354 = !DILocation(line: 139, column: 67, scope: !355)
!355 = distinct !DILexicalBlock(scope: !328, file: !3, line: 139, column: 67)
!356 = !DILocation(line: 141, column: 21, scope: !303)
!357 = !DILocation(line: 141, column: 42, scope: !303)
!358 = !DILocation(line: 141, column: 19, scope: !303)
!359 = !DILocation(line: 142, column: 1, scope: !303)
!360 = distinct !DISubprogram(name: "perfect_nested_if_case_2", scope: !3, file: !3, line: 144, type: !84, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369}
!362 = !DILocalVariable(name: "a", arg: 1, scope: !360, file: !3, line: 144, type: !86)
!363 = !DILocalVariable(name: "b", arg: 2, scope: !360, file: !3, line: 144, type: !86)
!364 = !DILocalVariable(name: "c", arg: 3, scope: !360, file: !3, line: 144, type: !86)
!365 = !DILocalVariable(name: "cond", arg: 4, scope: !360, file: !3, line: 145, type: !87)
!366 = !DILocalVariable(name: "n", arg: 5, scope: !360, file: !3, line: 145, type: !6)
!367 = !DILocalVariable(name: "status", scope: !360, file: !3, line: 147, type: !6)
!368 = !DILocalVariable(name: "t", scope: !360, file: !3, line: 149, type: !22)
!369 = !DILocalVariable(name: "i", scope: !370, file: !3, line: 154, type: !6)
!370 = distinct !DILexicalBlock(scope: !360, file: !3, line: 154, column: 5)
!371 = !DILocation(line: 0, scope: !360)
!372 = !DILocation(line: 149, column: 16, scope: !360)
!373 = !DILocation(line: 151, column: 30, scope: !374)
!374 = distinct !DILexicalBlock(scope: !360, file: !3, line: 151, column: 9)
!375 = !DILocation(line: 151, column: 19, scope: !374)
!376 = !DILocation(line: 151, column: 41, scope: !374)
!377 = !DILocation(line: 151, column: 9, scope: !360)
!378 = !DILocation(line: 0, scope: !370)
!379 = !DILocation(line: 154, column: 23, scope: !380)
!380 = distinct !DILexicalBlock(scope: !370, file: !3, line: 154, column: 5)
!381 = !DILocation(line: 154, column: 5, scope: !370)
!382 = !DILocation(line: 151, column: 53, scope: !383)
!383 = distinct !DILexicalBlock(scope: !374, file: !3, line: 151, column: 53)
!384 = !DILocation(line: 168, column: 29, scope: !385)
!385 = distinct !DILexicalBlock(scope: !360, file: !3, line: 168, column: 9)
!386 = !DILocation(line: 168, column: 19, scope: !385)
!387 = !DILocation(line: 168, column: 55, scope: !385)
!388 = !DILocation(line: 168, column: 9, scope: !360)
!389 = !DILocation(line: 155, column: 13, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !3, line: 155, column: 13)
!391 = distinct !DILexicalBlock(scope: !380, file: !3, line: 154, column: 33)
!392 = !DILocation(line: 155, column: 13, scope: !391)
!393 = !DILocation(line: 156, column: 17, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !3, line: 156, column: 17)
!395 = distinct !DILexicalBlock(scope: !390, file: !3, line: 155, column: 22)
!396 = !DILocation(line: 156, column: 24, scope: !394)
!397 = !DILocation(line: 156, column: 22, scope: !394)
!398 = !DILocation(line: 156, column: 17, scope: !395)
!399 = !DILocation(line: 157, column: 21, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !3, line: 157, column: 21)
!401 = distinct !DILexicalBlock(scope: !394, file: !3, line: 156, column: 30)
!402 = !DILocation(line: 157, column: 26, scope: !400)
!403 = !DILocation(line: 157, column: 21, scope: !401)
!404 = !DILocation(line: 158, column: 33, scope: !405)
!405 = distinct !DILexicalBlock(scope: !400, file: !3, line: 157, column: 34)
!406 = !DILocation(line: 158, column: 26, scope: !405)
!407 = !DILocation(line: 159, column: 17, scope: !405)
!408 = !DILocation(line: 160, column: 33, scope: !409)
!409 = distinct !DILexicalBlock(scope: !400, file: !3, line: 159, column: 24)
!410 = !DILocation(line: 160, column: 26, scope: !409)
!411 = !DILocation(line: 154, column: 28, scope: !380)
!412 = distinct !{!412, !381, !413, !148, !149}
!413 = !DILocation(line: 164, column: 5, scope: !370)
!414 = !DILocation(line: 168, column: 67, scope: !415)
!415 = distinct !DILexicalBlock(scope: !385, file: !3, line: 168, column: 67)
!416 = !DILocation(line: 170, column: 21, scope: !360)
!417 = !DILocation(line: 170, column: 42, scope: !360)
!418 = !DILocation(line: 170, column: 19, scope: !360)
!419 = !DILocation(line: 171, column: 1, scope: !360)
!420 = distinct !DISubprogram(name: "simple_if_else", scope: !3, file: !3, line: 174, type: !84, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !421)
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429}
!422 = !DILocalVariable(name: "a", arg: 1, scope: !420, file: !3, line: 174, type: !86)
!423 = !DILocalVariable(name: "b", arg: 2, scope: !420, file: !3, line: 174, type: !86)
!424 = !DILocalVariable(name: "c", arg: 3, scope: !420, file: !3, line: 174, type: !86)
!425 = !DILocalVariable(name: "cond", arg: 4, scope: !420, file: !3, line: 175, type: !87)
!426 = !DILocalVariable(name: "n", arg: 5, scope: !420, file: !3, line: 175, type: !6)
!427 = !DILocalVariable(name: "status", scope: !420, file: !3, line: 177, type: !6)
!428 = !DILocalVariable(name: "t", scope: !420, file: !3, line: 179, type: !22)
!429 = !DILocalVariable(name: "i", scope: !430, file: !3, line: 184, type: !6)
!430 = distinct !DILexicalBlock(scope: !420, file: !3, line: 184, column: 5)
!431 = !DILocation(line: 0, scope: !420)
!432 = !DILocation(line: 179, column: 16, scope: !420)
!433 = !DILocation(line: 181, column: 30, scope: !434)
!434 = distinct !DILexicalBlock(scope: !420, file: !3, line: 181, column: 9)
!435 = !DILocation(line: 181, column: 19, scope: !434)
!436 = !DILocation(line: 181, column: 41, scope: !434)
!437 = !DILocation(line: 181, column: 9, scope: !420)
!438 = !DILocation(line: 0, scope: !430)
!439 = !DILocation(line: 184, column: 23, scope: !440)
!440 = distinct !DILexicalBlock(scope: !430, file: !3, line: 184, column: 5)
!441 = !DILocation(line: 184, column: 5, scope: !430)
!442 = !DILocation(line: 181, column: 53, scope: !443)
!443 = distinct !DILexicalBlock(scope: !434, file: !3, line: 181, column: 53)
!444 = !DILocation(line: 194, column: 29, scope: !445)
!445 = distinct !DILexicalBlock(scope: !420, file: !3, line: 194, column: 9)
!446 = !DILocation(line: 194, column: 19, scope: !445)
!447 = !DILocation(line: 194, column: 55, scope: !445)
!448 = !DILocation(line: 194, column: 9, scope: !420)
!449 = !DILocation(line: 185, column: 17, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !3, line: 185, column: 17)
!451 = distinct !DILexicalBlock(scope: !440, file: !3, line: 184, column: 33)
!452 = !DILocation(line: 0, scope: !450)
!453 = !DILocation(line: 185, column: 17, scope: !451)
!454 = !DILocation(line: 186, column: 29, scope: !455)
!455 = distinct !DILexicalBlock(scope: !450, file: !3, line: 185, column: 26)
!456 = !DILocation(line: 186, column: 17, scope: !455)
!457 = !DILocation(line: 186, column: 22, scope: !455)
!458 = !DILocation(line: 187, column: 13, scope: !455)
!459 = !DILocation(line: 188, column: 29, scope: !460)
!460 = distinct !DILexicalBlock(scope: !450, file: !3, line: 187, column: 20)
!461 = !DILocation(line: 188, column: 22, scope: !460)
!462 = !DILocation(line: 184, column: 28, scope: !440)
!463 = distinct !{!463, !441, !464, !148, !149}
!464 = !DILocation(line: 190, column: 5, scope: !430)
!465 = !DILocation(line: 194, column: 67, scope: !466)
!466 = distinct !DILexicalBlock(scope: !445, file: !3, line: 194, column: 67)
!467 = !DILocation(line: 196, column: 21, scope: !420)
!468 = !DILocation(line: 196, column: 42, scope: !420)
!469 = !DILocation(line: 196, column: 19, scope: !420)
!470 = !DILocation(line: 197, column: 1, scope: !420)
!471 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 204, type: !472, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{!5, !6}
!474 = !{!475, !476}
!475 = !DILocalVariable(name: "n", arg: 1, scope: !471, file: !3, line: 204, type: !6)
!476 = !DILocalVariable(name: "ptr", scope: !471, file: !3, line: 205, type: !5)
!477 = !DILocation(line: 0, scope: !471)
!478 = !DILocation(line: 205, column: 45, scope: !471)
!479 = !DILocation(line: 205, column: 43, scope: !471)
!480 = !DILocation(line: 205, column: 24, scope: !471)
!481 = !DILocation(line: 206, column: 13, scope: !482)
!482 = distinct !DILexicalBlock(scope: !471, file: !3, line: 206, column: 9)
!483 = !DILocation(line: 206, column: 9, scope: !471)
!484 = !DILocation(line: 207, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !3, line: 206, column: 22)
!486 = !DILocation(line: 208, column: 9, scope: !485)
!487 = !DILocation(line: 210, column: 5, scope: !471)
!488 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 213, type: !489, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !491)
!489 = !DISubroutineType(types: !490)
!490 = !{!8, !6}
!491 = !{!492, !493}
!492 = !DILocalVariable(name: "n", arg: 1, scope: !488, file: !3, line: 213, type: !6)
!493 = !DILocalVariable(name: "ptr", scope: !488, file: !3, line: 214, type: !8)
!494 = !DILocation(line: 0, scope: !488)
!495 = !DILocation(line: 214, column: 48, scope: !488)
!496 = !DILocation(line: 214, column: 26, scope: !488)
!497 = !DILocation(line: 215, column: 13, scope: !498)
!498 = distinct !DILexicalBlock(scope: !488, file: !3, line: 215, column: 9)
!499 = !DILocation(line: 215, column: 9, scope: !488)
!500 = !DILocation(line: 216, column: 9, scope: !501)
!501 = distinct !DILexicalBlock(scope: !498, file: !3, line: 215, column: 22)
!502 = !DILocation(line: 217, column: 9, scope: !501)
!503 = !DILocation(line: 219, column: 5, scope: !488)
!504 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 222, type: !505, scopeLine: 222, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !507)
!505 = !DISubroutineType(types: !506)
!506 = !{!6}
!507 = !{!508, !509, !514, !515, !517, !518}
!508 = !DILocalVariable(name: "status", scope: !504, file: !3, line: 223, type: !6)
!509 = !DILocalVariable(name: "errstring", scope: !504, file: !3, line: 224, type: !510)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 1024, elements: !512)
!511 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!512 = !{!513}
!513 = !DISubrange(count: 128)
!514 = !DILocalVariable(name: "n", scope: !504, file: !3, line: 237, type: !6)
!515 = !DILocalVariable(name: "i", scope: !516, file: !3, line: 248, type: !6)
!516 = distinct !DILexicalBlock(scope: !504, file: !3, line: 248, column: 5)
!517 = !DILocalVariable(name: "sum", scope: !504, file: !3, line: 259, type: !6)
!518 = !DILocalVariable(name: "i", scope: !519, file: !3, line: 261, type: !6)
!519 = distinct !DILexicalBlock(scope: !504, file: !3, line: 261, column: 5)
!520 = !DILocation(line: 224, column: 5, scope: !504)
!521 = !DILocation(line: 224, column: 10, scope: !504)
!522 = !DILocation(line: 226, column: 9, scope: !523)
!523 = distinct !DILexicalBlock(scope: !504, file: !3, line: 226, column: 9)
!524 = !DILocation(line: 226, column: 45, scope: !523)
!525 = !DILocation(line: 226, column: 9, scope: !504)
!526 = !DILocation(line: 227, column: 17, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !3, line: 226, column: 66)
!528 = !DILocation(line: 227, column: 9, scope: !527)
!529 = !DILocation(line: 228, column: 9, scope: !527)
!530 = !DILocation(line: 232, column: 19, scope: !531)
!531 = distinct !DILexicalBlock(scope: !504, file: !3, line: 232, column: 9)
!532 = !DILocation(line: 0, scope: !504)
!533 = !DILocation(line: 232, column: 52, scope: !531)
!534 = !DILocation(line: 232, column: 9, scope: !504)
!535 = !DILocation(line: 232, column: 64, scope: !536)
!536 = distinct !DILexicalBlock(scope: !531, file: !3, line: 232, column: 64)
!537 = !DILocation(line: 235, column: 35, scope: !538)
!538 = distinct !DILexicalBlock(scope: !504, file: !3, line: 235, column: 9)
!539 = !DILocation(line: 235, column: 19, scope: !538)
!540 = !DILocation(line: 235, column: 69, scope: !538)
!541 = !DILocation(line: 235, column: 9, scope: !504)
!542 = !DILocation(line: 235, column: 81, scope: !543)
!543 = distinct !DILexicalBlock(scope: !538, file: !3, line: 235, column: 81)
!544 = !DILocation(line: 239, column: 9, scope: !504)
!545 = !DILocation(line: 239, column: 7, scope: !504)
!546 = !DILocation(line: 240, column: 9, scope: !504)
!547 = !DILocation(line: 240, column: 7, scope: !504)
!548 = !DILocation(line: 241, column: 9, scope: !504)
!549 = !DILocation(line: 241, column: 7, scope: !504)
!550 = !DILocation(line: 242, column: 12, scope: !504)
!551 = !DILocation(line: 242, column: 10, scope: !504)
!552 = !DILocation(line: 244, column: 13, scope: !504)
!553 = !DILocation(line: 246, column: 11, scope: !504)
!554 = !DILocation(line: 246, column: 5, scope: !504)
!555 = !DILocation(line: 0, scope: !516)
!556 = !DILocation(line: 248, column: 5, scope: !516)
!557 = !DILocation(line: 249, column: 9, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !3, line: 248, column: 33)
!559 = distinct !DILexicalBlock(scope: !516, file: !3, line: 248, column: 5)
!560 = !DILocation(line: 249, column: 14, scope: !558)
!561 = !DILocation(line: 250, column: 9, scope: !558)
!562 = !DILocation(line: 250, column: 14, scope: !558)
!563 = !DILocation(line: 251, column: 9, scope: !558)
!564 = !DILocation(line: 251, column: 14, scope: !558)
!565 = !DILocation(line: 252, column: 22, scope: !558)
!566 = !DILocation(line: 252, column: 28, scope: !558)
!567 = !DILocation(line: 252, column: 9, scope: !558)
!568 = !DILocation(line: 252, column: 17, scope: !558)
!569 = !DILocation(line: 248, column: 28, scope: !559)
!570 = !DILocation(line: 248, column: 23, scope: !559)
!571 = distinct !{!571, !556, !572, !148, !149}
!572 = !DILocation(line: 253, column: 5, scope: !516)
!573 = !DILocation(line: 261, column: 5, scope: !519)
!574 = !DILocation(line: 262, column: 13, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !3, line: 261, column: 33)
!576 = distinct !DILexicalBlock(scope: !519, file: !3, line: 261, column: 5)
!577 = !DILocation(line: 265, column: 5, scope: !504)
!578 = !DILocation(line: 267, column: 10, scope: !504)
!579 = !DILocation(line: 267, column: 5, scope: !504)
!580 = !DILocation(line: 268, column: 10, scope: !504)
!581 = !DILocation(line: 268, column: 5, scope: !504)
!582 = !DILocation(line: 269, column: 10, scope: !504)
!583 = !DILocation(line: 269, column: 5, scope: !504)
!584 = !DILocation(line: 270, column: 10, scope: !504)
!585 = !DILocation(line: 270, column: 5, scope: !504)
!586 = !DILocation(line: 272, column: 53, scope: !504)
!587 = !{!588, !588, i64 0}
!588 = !{!"long long", !64, i64 0}
!589 = !DILocation(line: 272, column: 5, scope: !504)
!590 = !DILocation(line: 273, column: 36, scope: !504)
!591 = !DILocation(line: 273, column: 5, scope: !504)
!592 = !DILocation(line: 274, column: 50, scope: !504)
!593 = !DILocation(line: 274, column: 5, scope: !504)
!594 = !DILocation(line: 275, column: 49, scope: !504)
!595 = !DILocation(line: 275, column: 5, scope: !504)
!596 = !DILocation(line: 276, column: 40, scope: !504)
!597 = !DILocation(line: 276, column: 5, scope: !504)
!598 = !DILocation(line: 278, column: 38, scope: !599)
!599 = distinct !DILexicalBlock(scope: !504, file: !3, line: 278, column: 9)
!600 = !DILocation(line: 278, column: 19, scope: !599)
!601 = !DILocation(line: 278, column: 72, scope: !599)
!602 = !DILocation(line: 278, column: 9, scope: !504)
!603 = !DILocation(line: 0, scope: !519)
!604 = !DILocation(line: 262, column: 16, scope: !575)
!605 = !DILocation(line: 261, column: 28, scope: !576)
!606 = !DILocation(line: 261, column: 23, scope: !576)
!607 = distinct !{!607, !573, !608, !148, !149}
!608 = !DILocation(line: 263, column: 5, scope: !519)
!609 = !DILocation(line: 278, column: 84, scope: !610)
!610 = distinct !DILexicalBlock(scope: !599, file: !3, line: 278, column: 84)
!611 = !DILocation(line: 281, column: 19, scope: !612)
!612 = distinct !DILexicalBlock(scope: !504, file: !3, line: 281, column: 9)
!613 = !DILocation(line: 281, column: 53, scope: !612)
!614 = !DILocation(line: 281, column: 9, scope: !504)
!615 = !DILocation(line: 281, column: 65, scope: !616)
!616 = distinct !DILexicalBlock(scope: !612, file: !3, line: 281, column: 65)
!617 = !DILocation(line: 284, column: 5, scope: !504)
!618 = !DILocation(line: 287, column: 1, scope: !504)
!619 = !DILocation(line: 286, column: 5, scope: !504)
!620 = !DISubprogram(name: "PAPI_library_init", scope: !159, file: !159, line: 1172, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!621 = !DISubprogram(name: "PAPI_create_eventset", scope: !159, file: !159, line: 1147, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!622 = !DISubroutineType(types: !623)
!623 = !{!6, !5}
!624 = !DISubprogram(name: "PAPI_add_events", scope: !159, file: !159, line: 1143, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!625 = !DISubroutineType(types: !626)
!626 = !{!6, !6, !5, !6}
!627 = !DISubprogram(name: "srand", scope: !628, file: !628, line: 455, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!628 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!629 = !DISubroutineType(types: !630)
!630 = !{null, !631}
!631 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!632 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!633 = !DISubroutineType(types: !634)
!634 = !{!635, !637}
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !636, line: 7, baseType: !52)
!636 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!638 = !DISubprogram(name: "PAPI_remove_events", scope: !159, file: !159, line: 1192, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!639 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !159, file: !159, line: 1149, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!640 = !DISubprogram(name: "PAPI_shutdown", scope: !159, file: !159, line: 1202, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!641 = !DISubroutineType(types: !642)
!642 = !{null}
