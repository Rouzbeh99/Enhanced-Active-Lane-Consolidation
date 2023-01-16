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
define dso_local void @simple_if(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !83 {
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
  %.neg = mul i32 %4, -2
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !132
  %7 = shl i32 %indvars.iv.tr, 1, !dbg !132
  %sub15 = add i32 %5, %7, !dbg !132
  %add = add i32 %sub15, %mul21, !dbg !133
  %add25 = add i32 %add, %.neg, !dbg !134
  store i32 %add25, ptr %arrayidx6, align 4, !dbg !134, !tbaa !102
  %mul43127.neg = sub i32 -3, %4, !dbg !135
  %add44.neg134 = mul i32 %mul43127.neg, %6, !dbg !135
  %8 = add i32 %4, %5
  %reass.add129 = sub i32 %add25, %8
  %reass.mul130 = shl i32 %reass.add129, 1
  %add37 = add i32 %add44.neg134, 2, !dbg !136
  %sub47 = add i32 %add37, %reass.mul130, !dbg !137
  store i32 %sub47, ptr %arrayidx11, align 4, !dbg !137, !tbaa !102
  %9 = add nsw i32 %sub47, %add25, !dbg !138
  %10 = sub nsw i32 %4, %sub47, !dbg !139
  %sub61 = shl nsw i32 %10, 1, !dbg !139
  %mul62 = mul nsw i32 %6, %6, !dbg !140
  %add63 = add nsw i32 %sub61, %mul62, !dbg !141
  %mul64.neg = mul i32 %add63, -3, !dbg !142
  %11 = sub i32 %9, %6, !dbg !143
  %sub65 = shl i32 %11, 1, !dbg !143
  %sub71 = add i32 %sub65, %mul64.neg, !dbg !144
  store i32 %sub71, ptr %arrayidx8, align 4, !dbg !144, !tbaa !102
  br label %for.inc, !dbg !145

for.inc:                                          ; preds = %if.then4, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !146
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !96, metadata !DIExpression()), !dbg !107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !108
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !110, !llvm.loop !147

if.then75:                                        ; preds = %for.cond.cleanup
  %12 = load ptr, ptr @stderr, align 8, !dbg !151, !tbaa !113
  %call76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str, i32 noundef %call73, ptr noundef nonnull @.str.1, i32 noundef 53) #11, !dbg !151
  tail call void @exit(i32 noundef %call73) #12, !dbg !151
  unreachable, !dbg !151

if.end77:                                         ; preds = %for.cond.cleanup
  %call78 = tail call double @getTimeMiliSeconds(), !dbg !153
  %sub79 = fsub double %call78, %call, !dbg !154
  store double %sub79, ptr @ExecutionTime, align 8, !dbg !155, !tbaa !156
  ret void, !dbg !158
}

declare !dbg !159 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !163 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @nested_if_case_1(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !167 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !169, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata ptr %b, metadata !170, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata ptr %c, metadata !171, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata ptr %cond, metadata !172, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata i32 %n, metadata !173, metadata !DIExpression()), !dbg !182
  %call = tail call double @getTimeMiliSeconds(), !dbg !183
  call void @llvm.dbg.value(metadata double %call, metadata !175, metadata !DIExpression()), !dbg !182
  %0 = load i32, ptr @EventSet, align 4, !dbg !184, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !186
  call void @llvm.dbg.value(metadata i32 %call1, metadata !174, metadata !DIExpression()), !dbg !182
  %cmp.not = icmp eq i32 %call1, 0, !dbg !187
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !188

for.cond.preheader:                               ; preds = %entry
  %cmp566 = icmp sgt i32 %n, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !176, metadata !DIExpression()), !dbg !189
  br i1 %cmp566, label %for.cond4.preheader.us.preheader, label %for.cond.cleanup, !dbg !190

for.cond4.preheader.us.preheader:                 ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond4.preheader.us, !dbg !191

for.cond4.preheader.us:                           ; preds = %for.cond4.for.cond.cleanup6_crit_edge.us, %for.cond4.preheader.us.preheader
  %j.068.us = phi i32 [ %inc35.us, %for.cond4.for.cond.cleanup6_crit_edge.us ], [ 0, %for.cond4.preheader.us.preheader ]
  call void @llvm.dbg.value(metadata i32 %j.068.us, metadata !176, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i32 0, metadata !178, metadata !DIExpression()), !dbg !192
  br label %for.body7.us, !dbg !190

for.body7.us:                                     ; preds = %for.inc.us, %for.cond4.preheader.us
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !178, metadata !DIExpression()), !dbg !192
  %arrayidx.us = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !193
  %1 = load i8, ptr %arrayidx.us, align 1, !dbg !193, !tbaa !123, !range !125
  %tobool.not.us = icmp eq i8 %1, 0, !dbg !193
  br i1 %tobool.not.us, label %for.inc.us, label %if.then8.us, !dbg !197

if.then8.us:                                      ; preds = %for.body7.us
  %arrayidx10.us = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !198
  %2 = load i32, ptr %arrayidx10.us, align 4, !dbg !198, !tbaa !102
  %add.us = add nsw i32 %2, 4, !dbg !200
  %arrayidx12.us = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !201
  store i32 %add.us, ptr %arrayidx12.us, align 4, !dbg !202, !tbaa !102
  %arrayidx14.us = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !203
  %3 = load i32, ptr %arrayidx14.us, align 4, !dbg !203, !tbaa !102
  %cmp17.us = icmp slt i32 %3, %add.us, !dbg !205
  br i1 %cmp17.us, label %if.then18.us, label %if.end25.us, !dbg !206

if.then18.us:                                     ; preds = %if.then8.us
  %mul.us = mul nsw i32 %add.us, %2, !dbg !207
  store i32 %mul.us, ptr %arrayidx14.us, align 4, !dbg !209, !tbaa !102
  br label %if.end25.us, !dbg !210

if.end25.us:                                      ; preds = %if.then18.us, %if.then8.us
  %4 = phi i32 [ %mul.us, %if.then18.us ], [ %3, %if.then8.us ], !dbg !211
  %add30.us = add nsw i32 %4, %add.us, !dbg !212
  store i32 %add30.us, ptr %arrayidx10.us, align 4, !dbg !213, !tbaa !102
  br label %for.inc.us, !dbg !214

for.inc.us:                                       ; preds = %if.end25.us, %for.body7.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !215
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !178, metadata !DIExpression()), !dbg !192
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !216
  br i1 %exitcond.not, label %for.cond4.for.cond.cleanup6_crit_edge.us, label %for.body7.us, !dbg !190, !llvm.loop !217

for.cond4.for.cond.cleanup6_crit_edge.us:         ; preds = %for.inc.us
  %inc35.us = add nuw nsw i32 %j.068.us, 1, !dbg !219
  call void @llvm.dbg.value(metadata i32 %inc35.us, metadata !176, metadata !DIExpression()), !dbg !189
  %exitcond71.not = icmp eq i32 %inc35.us, 10, !dbg !220
  br i1 %exitcond71.not, label %for.cond.cleanup.loopexit, label %for.cond4.preheader.us, !dbg !191, !llvm.loop !221

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr @stderr, align 8, !dbg !223, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 66) #11, !dbg !223
  tail call void @exit(i32 noundef %call1) #12, !dbg !223
  unreachable, !dbg !223

for.cond.cleanup.loopexit:                        ; preds = %for.cond4.for.cond.cleanup6_crit_edge.us
  br label %for.cond.cleanup, !dbg !225

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %6 = load i32, ptr @EventSet, align 4, !dbg !225, !tbaa !102
  %call37 = tail call i32 @PAPI_stop(i32 noundef %6, ptr noundef nonnull @CounterValues) #10, !dbg !227
  call void @llvm.dbg.value(metadata i32 %call37, metadata !174, metadata !DIExpression()), !dbg !182
  %cmp38.not = icmp eq i32 %call37, 0, !dbg !228
  br i1 %cmp38.not, label %if.end41, label %if.then39, !dbg !229

if.then39:                                        ; preds = %for.cond.cleanup
  %7 = load ptr, ptr @stderr, align 8, !dbg !230, !tbaa !113
  %call40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %call37, ptr noundef nonnull @.str.1, i32 noundef 81) #11, !dbg !230
  tail call void @exit(i32 noundef %call37) #12, !dbg !230
  unreachable, !dbg !230

if.end41:                                         ; preds = %for.cond.cleanup
  %call42 = tail call double @getTimeMiliSeconds(), !dbg !232
  %sub = fsub double %call42, %call, !dbg !233
  store double %sub, ptr @ExecutionTime, align 8, !dbg !234, !tbaa !156
  ret void, !dbg !235
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @nested_if_case_2(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !236 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !238, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata ptr %b, metadata !239, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata ptr %c, metadata !240, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata ptr %cond, metadata !241, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i32 %n, metadata !242, metadata !DIExpression()), !dbg !247
  %call = tail call double @getTimeMiliSeconds(), !dbg !248
  call void @llvm.dbg.value(metadata double %call, metadata !244, metadata !DIExpression()), !dbg !247
  %0 = load i32, ptr @EventSet, align 4, !dbg !249, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !251
  call void @llvm.dbg.value(metadata i32 %call1, metadata !243, metadata !DIExpression()), !dbg !247
  %cmp.not = icmp eq i32 %call1, 0, !dbg !252
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !253

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !245, metadata !DIExpression()), !dbg !254
  %cmp391 = icmp sgt i32 %n, 0, !dbg !255
  br i1 %cmp391, label %for.body.preheader, label %for.cond.cleanup, !dbg !257

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !255
  br label %for.body, !dbg !257

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !258, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 92) #11, !dbg !258
  tail call void @exit(i32 noundef %call1) #12, !dbg !258
  unreachable, !dbg !258

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !260

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !260, !tbaa !102
  %call48 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !262
  call void @llvm.dbg.value(metadata i32 %call48, metadata !243, metadata !DIExpression()), !dbg !247
  %cmp49.not = icmp eq i32 %call48, 0, !dbg !263
  br i1 %cmp49.not, label %if.end52, label %if.then50, !dbg !264

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !245, metadata !DIExpression()), !dbg !254
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !265
  %3 = load i8, ptr %arrayidx, align 1, !dbg !265, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !265
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !268

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !269
  %4 = load i32, ptr %arrayidx6, align 4, !dbg !269, !tbaa !102
  %add = add nsw i32 %4, 4, !dbg !271
  %arrayidx8 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !272
  store i32 %add, ptr %arrayidx8, align 4, !dbg !273, !tbaa !102
  %arrayidx10 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !274
  %5 = load i32, ptr %arrayidx10, align 4, !dbg !274, !tbaa !102
  %cmp13 = icmp slt i32 %5, %add, !dbg !276
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !277

if.then14:                                        ; preds = %if.then4
  %mul = mul nsw i32 %add, %4, !dbg !278
  br label %if.end39.sink.split, !dbg !280

if.else:                                          ; preds = %if.then4
  %mul25 = mul nsw i32 %5, %4, !dbg !281
  store i32 %mul25, ptr %arrayidx10, align 4, !dbg !283, !tbaa !102
  %cmp32 = icmp sgt i32 %mul25, %add, !dbg !284
  br i1 %cmp32, label %if.then33, label %if.end39, !dbg !286

if.then33:                                        ; preds = %if.else
  %sub = add nsw i32 %4, -76, !dbg !287
  br label %if.end39.sink.split, !dbg !289

if.end39.sink.split:                              ; preds = %if.then33, %if.then14
  %sub.sink = phi i32 [ %sub, %if.then33 ], [ %mul, %if.then14 ]
  store i32 %sub.sink, ptr %arrayidx10, align 4, !dbg !290, !tbaa !102
  br label %if.end39, !dbg !291

if.end39:                                         ; preds = %if.end39.sink.split, %if.else
  %6 = phi i32 [ %mul25, %if.else ], [ %sub.sink, %if.end39.sink.split ], !dbg !292
  %add44 = add nsw i32 %6, %add, !dbg !291
  store i32 %add44, ptr %arrayidx6, align 4, !dbg !293, !tbaa !102
  br label %for.inc, !dbg !294

for.inc:                                          ; preds = %if.end39, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !295
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !245, metadata !DIExpression()), !dbg !254
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !255
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !257, !llvm.loop !296

if.then50:                                        ; preds = %for.cond.cleanup
  %7 = load ptr, ptr @stderr, align 8, !dbg !298, !tbaa !113
  %call51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %call48, ptr noundef nonnull @.str.1, i32 noundef 112) #11, !dbg !298
  tail call void @exit(i32 noundef %call48) #12, !dbg !298
  unreachable, !dbg !298

if.end52:                                         ; preds = %for.cond.cleanup
  %call53 = tail call double @getTimeMiliSeconds(), !dbg !300
  %sub54 = fsub double %call53, %call, !dbg !301
  store double %sub54, ptr @ExecutionTime, align 8, !dbg !302, !tbaa !156
  ret void, !dbg !303
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @perfect_nested_if_case_1(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !304 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !306, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata ptr %b, metadata !307, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata ptr %c, metadata !308, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata ptr %cond, metadata !309, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i32 %n, metadata !310, metadata !DIExpression()), !dbg !315
  %call = tail call double @getTimeMiliSeconds(), !dbg !316
  call void @llvm.dbg.value(metadata double %call, metadata !312, metadata !DIExpression()), !dbg !315
  %0 = load i32, ptr @EventSet, align 4, !dbg !317, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !319
  call void @llvm.dbg.value(metadata i32 %call1, metadata !311, metadata !DIExpression()), !dbg !315
  %cmp.not = icmp eq i32 %call1, 0, !dbg !320
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !321

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !313, metadata !DIExpression()), !dbg !322
  %cmp349 = icmp sgt i32 %n, 0, !dbg !323
  br i1 %cmp349, label %for.body.preheader, label %for.cond.cleanup, !dbg !325

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !323
  br label %for.body, !dbg !325

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !326, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 124) #11, !dbg !326
  tail call void @exit(i32 noundef %call1) #12, !dbg !326
  unreachable, !dbg !326

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !328

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !328, !tbaa !102
  %call26 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !330
  call void @llvm.dbg.value(metadata i32 %call26, metadata !311, metadata !DIExpression()), !dbg !315
  %cmp27.not = icmp eq i32 %call26, 0, !dbg !331
  br i1 %cmp27.not, label %if.end30, label %if.then28, !dbg !332

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !313, metadata !DIExpression()), !dbg !322
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !333
  %3 = load i8, ptr %arrayidx, align 1, !dbg !333, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !333
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !336

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !337
  %4 = load i32, ptr %arrayidx6, align 4, !dbg !337, !tbaa !102
  %arrayidx8 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !340
  %5 = load i32, ptr %arrayidx8, align 4, !dbg !340, !tbaa !102
  %cmp9 = icmp sgt i32 %4, %5, !dbg !341
  br i1 %cmp9, label %if.then10, label %for.inc, !dbg !342

if.then10:                                        ; preds = %if.then4
  %arrayidx12 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !343
  %6 = load i32, ptr %arrayidx12, align 4, !dbg !343, !tbaa !102
  %cmp15 = icmp sgt i32 %6, %5, !dbg !346
  br i1 %cmp15, label %if.then16, label %for.inc, !dbg !347

if.then16:                                        ; preds = %if.then10
  %add = add nsw i32 %5, %4, !dbg !348
  store i32 %add, ptr %arrayidx12, align 4, !dbg !350, !tbaa !102
  br label %for.inc, !dbg !351

for.inc:                                          ; preds = %if.then16, %if.then10, %if.then4, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !352
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !313, metadata !DIExpression()), !dbg !322
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !323
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !325, !llvm.loop !353

if.then28:                                        ; preds = %for.cond.cleanup
  %7 = load ptr, ptr @stderr, align 8, !dbg !355, !tbaa !113
  %call29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %call26, ptr noundef nonnull @.str.1, i32 noundef 139) #11, !dbg !355
  tail call void @exit(i32 noundef %call26) #12, !dbg !355
  unreachable, !dbg !355

if.end30:                                         ; preds = %for.cond.cleanup
  %call31 = tail call double @getTimeMiliSeconds(), !dbg !357
  %sub = fsub double %call31, %call, !dbg !358
  store double %sub, ptr @ExecutionTime, align 8, !dbg !359, !tbaa !156
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @perfect_nested_if_case_2(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !361 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !363, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata ptr %b, metadata !364, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata ptr %c, metadata !365, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata ptr %cond, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 %n, metadata !367, metadata !DIExpression()), !dbg !372
  %call = tail call double @getTimeMiliSeconds(), !dbg !373
  call void @llvm.dbg.value(metadata double %call, metadata !369, metadata !DIExpression()), !dbg !372
  %0 = load i32, ptr @EventSet, align 4, !dbg !374, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !376
  call void @llvm.dbg.value(metadata i32 %call1, metadata !368, metadata !DIExpression()), !dbg !372
  %cmp.not = icmp eq i32 %call1, 0, !dbg !377
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !378

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !370, metadata !DIExpression()), !dbg !379
  %cmp362 = icmp sgt i32 %n, 0, !dbg !380
  br i1 %cmp362, label %for.body.preheader, label %for.cond.cleanup, !dbg !382

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !380
  br label %for.body, !dbg !382

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !383, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 151) #11, !dbg !383
  tail call void @exit(i32 noundef %call1) #12, !dbg !383
  unreachable, !dbg !383

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !385

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !385, !tbaa !102
  %call32 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !387
  call void @llvm.dbg.value(metadata i32 %call32, metadata !368, metadata !DIExpression()), !dbg !372
  %cmp33.not = icmp eq i32 %call32, 0, !dbg !388
  br i1 %cmp33.not, label %if.end36, label %if.then34, !dbg !389

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !370, metadata !DIExpression()), !dbg !379
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !390
  %3 = load i8, ptr %arrayidx, align 1, !dbg !390, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !390
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !393

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !394
  %4 = load i32, ptr %arrayidx6, align 4, !dbg !394, !tbaa !102
  %arrayidx8 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !397
  %5 = load i32, ptr %arrayidx8, align 4, !dbg !397, !tbaa !102
  %cmp9 = icmp sgt i32 %4, %5, !dbg !398
  br i1 %cmp9, label %if.then10, label %for.inc, !dbg !399

if.then10:                                        ; preds = %if.then4
  %arrayidx12 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !400
  %6 = load i32, ptr %arrayidx12, align 4, !dbg !400, !tbaa !102
  %cmp15 = icmp sgt i32 %6, %5, !dbg !403
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !404

if.then16:                                        ; preds = %if.then10
  %add = add nsw i32 %5, %4, !dbg !405
  store i32 %add, ptr %arrayidx12, align 4, !dbg !407, !tbaa !102
  br label %for.inc, !dbg !408

if.else:                                          ; preds = %if.then10
  %sub = sub nsw i32 %4, %5, !dbg !409
  store i32 %sub, ptr %arrayidx6, align 4, !dbg !411, !tbaa !102
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then16, %if.then4, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !412
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !370, metadata !DIExpression()), !dbg !379
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !380
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !382, !llvm.loop !413

if.then34:                                        ; preds = %for.cond.cleanup
  %7 = load ptr, ptr @stderr, align 8, !dbg !415, !tbaa !113
  %call35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %call32, ptr noundef nonnull @.str.1, i32 noundef 168) #11, !dbg !415
  tail call void @exit(i32 noundef %call32) #12, !dbg !415
  unreachable, !dbg !415

if.end36:                                         ; preds = %for.cond.cleanup
  %call37 = tail call double @getTimeMiliSeconds(), !dbg !417
  %sub38 = fsub double %call37, %call, !dbg !418
  store double %sub38, ptr @ExecutionTime, align 8, !dbg !419, !tbaa !156
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_if_else(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !421 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !423, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata ptr %b, metadata !424, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata ptr %c, metadata !425, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata ptr %cond, metadata !426, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata i32 %n, metadata !427, metadata !DIExpression()), !dbg !432
  %call = tail call double @getTimeMiliSeconds(), !dbg !433
  call void @llvm.dbg.value(metadata double %call, metadata !429, metadata !DIExpression()), !dbg !432
  %0 = load i32, ptr @EventSet, align 4, !dbg !434, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !436
  call void @llvm.dbg.value(metadata i32 %call1, metadata !428, metadata !DIExpression()), !dbg !432
  %cmp.not = icmp eq i32 %call1, 0, !dbg !437
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !438

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !430, metadata !DIExpression()), !dbg !439
  %cmp339 = icmp sgt i32 %n, 0, !dbg !440
  br i1 %cmp339, label %for.body.preheader, label %for.cond.cleanup, !dbg !442

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !440
  br label %for.body, !dbg !442

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !443, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 181) #11, !dbg !443
  tail call void @exit(i32 noundef %call1) #12, !dbg !443
  unreachable, !dbg !443

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !445

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !445, !tbaa !102
  %call18 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !447
  call void @llvm.dbg.value(metadata i32 %call18, metadata !428, metadata !DIExpression()), !dbg !432
  %cmp19.not = icmp eq i32 %call18, 0, !dbg !448
  br i1 %cmp19.not, label %if.end22, label %if.then20, !dbg !449

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !430, metadata !DIExpression()), !dbg !439
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !450
  %3 = load i8, ptr %arrayidx, align 1, !dbg !450, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !450
  %arrayidx12 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !453
  %4 = load i32, ptr %arrayidx12, align 4, !dbg !453, !tbaa !102
  %arrayidx14 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !453
  %5 = load i32, ptr %arrayidx14, align 4, !dbg !453, !tbaa !102
  br i1 %tobool.not, label %if.else, label %if.then4, !dbg !454

if.then4:                                         ; preds = %for.body
  %add = add nsw i32 %5, %4, !dbg !455
  %arrayidx10 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !457
  store i32 %add, ptr %arrayidx10, align 4, !dbg !458, !tbaa !102
  br label %for.inc, !dbg !459

if.else:                                          ; preds = %for.body
  %sub = sub nsw i32 %4, %5, !dbg !460
  store i32 %sub, ptr %arrayidx12, align 4, !dbg !462, !tbaa !102
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !463
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !430, metadata !DIExpression()), !dbg !439
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !440
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !442, !llvm.loop !464

if.then20:                                        ; preds = %for.cond.cleanup
  %6 = load ptr, ptr @stderr, align 8, !dbg !466, !tbaa !113
  %call21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef %call18, ptr noundef nonnull @.str.1, i32 noundef 194) #11, !dbg !466
  tail call void @exit(i32 noundef %call18) #12, !dbg !466
  unreachable, !dbg !466

if.end22:                                         ; preds = %for.cond.cleanup
  %call23 = tail call double @getTimeMiliSeconds(), !dbg !468
  %sub24 = fsub double %call23, %call, !dbg !469
  store double %sub24, ptr @ExecutionTime, align 8, !dbg !470, !tbaa !156
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @multiple_if_else_case_1(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !472 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !474, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata ptr %b, metadata !475, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata ptr %c, metadata !476, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata ptr %cond, metadata !477, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata i32 %n, metadata !478, metadata !DIExpression()), !dbg !483
  %call = tail call double @getTimeMiliSeconds(), !dbg !484
  call void @llvm.dbg.value(metadata double %call, metadata !480, metadata !DIExpression()), !dbg !483
  %0 = load i32, ptr @EventSet, align 4, !dbg !485, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !487
  call void @llvm.dbg.value(metadata i32 %call1, metadata !479, metadata !DIExpression()), !dbg !483
  %cmp.not = icmp eq i32 %call1, 0, !dbg !488
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !489

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !481, metadata !DIExpression()), !dbg !490
  %cmp365 = icmp sgt i32 %n, 0, !dbg !491
  br i1 %cmp365, label %for.body.preheader, label %for.cond.cleanup, !dbg !493

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !491
  br label %for.body, !dbg !493

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !494, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 206) #11, !dbg !494
  tail call void @exit(i32 noundef %call1) #12, !dbg !494
  unreachable, !dbg !494

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !496

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !496, !tbaa !102
  %call33 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !498
  call void @llvm.dbg.value(metadata i32 %call33, metadata !479, metadata !DIExpression()), !dbg !483
  %cmp34.not = icmp eq i32 %call33, 0, !dbg !499
  br i1 %cmp34.not, label %if.end37, label %if.then35, !dbg !500

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !481, metadata !DIExpression()), !dbg !490
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !501
  %3 = load i8, ptr %arrayidx, align 1, !dbg !501, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !501
  %arrayidx12 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !504
  %4 = load i32, ptr %arrayidx12, align 4, !dbg !504, !tbaa !102
  %arrayidx14 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !504
  %5 = load i32, ptr %arrayidx14, align 4, !dbg !504, !tbaa !102
  br i1 %tobool.not, label %if.else, label %if.then4, !dbg !505

if.then4:                                         ; preds = %for.body
  %add = add nsw i32 %5, %4, !dbg !506
  %arrayidx10 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !508
  store i32 %add, ptr %arrayidx10, align 4, !dbg !509, !tbaa !102
  br label %for.inc, !dbg !510

if.else:                                          ; preds = %for.body
  %cmp15 = icmp sgt i32 %4, %5, !dbg !511
  br i1 %cmp15, label %if.then16, label %if.else23, !dbg !513

if.then16:                                        ; preds = %if.else
  %sub = sub nsw i32 %4, %5, !dbg !514
  store i32 %sub, ptr %arrayidx12, align 4, !dbg !516, !tbaa !102
  br label %for.inc, !dbg !517

if.else23:                                        ; preds = %if.else
  %arrayidx25 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !518
  %6 = load i32, ptr %arrayidx25, align 4, !dbg !518, !tbaa !102
  %add28 = add nsw i32 %6, %4, !dbg !520
  store i32 %add28, ptr %arrayidx14, align 4, !dbg !521, !tbaa !102
  br label %for.inc

for.inc:                                          ; preds = %if.else23, %if.then16, %if.then4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !522
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !481, metadata !DIExpression()), !dbg !490
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !491
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !493, !llvm.loop !523

if.then35:                                        ; preds = %for.cond.cleanup
  %7 = load ptr, ptr @stderr, align 8, !dbg !525, !tbaa !113
  %call36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %call33, ptr noundef nonnull @.str.1, i32 noundef 221) #11, !dbg !525
  tail call void @exit(i32 noundef %call33) #12, !dbg !525
  unreachable, !dbg !525

if.end37:                                         ; preds = %for.cond.cleanup
  %call38 = tail call double @getTimeMiliSeconds(), !dbg !527
  %sub39 = fsub double %call38, %call, !dbg !528
  store double %sub39, ptr @ExecutionTime, align 8, !dbg !529, !tbaa !156
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @multiple_if_else_case_2(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !531 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !533, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata ptr %b, metadata !534, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata ptr %c, metadata !535, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata ptr %cond, metadata !536, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i32 %n, metadata !537, metadata !DIExpression()), !dbg !542
  %call = tail call double @getTimeMiliSeconds(), !dbg !543
  call void @llvm.dbg.value(metadata double %call, metadata !539, metadata !DIExpression()), !dbg !542
  %0 = load i32, ptr @EventSet, align 4, !dbg !544, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !546
  call void @llvm.dbg.value(metadata i32 %call1, metadata !538, metadata !DIExpression()), !dbg !542
  %cmp.not = icmp eq i32 %call1, 0, !dbg !547
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !548

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !540, metadata !DIExpression()), !dbg !549
  %cmp386 = icmp sgt i32 %n, 0, !dbg !550
  br i1 %cmp386, label %for.body.preheader, label %for.cond.cleanup, !dbg !552

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !550
  br label %for.body, !dbg !552

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !553, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 233) #11, !dbg !553
  tail call void @exit(i32 noundef %call1) #12, !dbg !553
  unreachable, !dbg !553

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !555

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !555, !tbaa !102
  %call46 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !557
  call void @llvm.dbg.value(metadata i32 %call46, metadata !538, metadata !DIExpression()), !dbg !542
  %cmp47.not = icmp eq i32 %call46, 0, !dbg !558
  br i1 %cmp47.not, label %if.end50, label %if.then48, !dbg !559

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !540, metadata !DIExpression()), !dbg !549
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !560
  %3 = load i8, ptr %arrayidx, align 1, !dbg !560, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !560
  %arrayidx12 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !563
  %4 = load i32, ptr %arrayidx12, align 4, !dbg !563, !tbaa !102
  %arrayidx14 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !563
  %5 = load i32, ptr %arrayidx14, align 4, !dbg !563, !tbaa !102
  br i1 %tobool.not, label %if.else, label %if.then4, !dbg !564

if.then4:                                         ; preds = %for.body
  %add = add nsw i32 %5, %4, !dbg !565
  %arrayidx10 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !567
  store i32 %add, ptr %arrayidx10, align 4, !dbg !568, !tbaa !102
  br label %for.inc, !dbg !569

if.else:                                          ; preds = %for.body
  %cmp15 = icmp sgt i32 %4, %5, !dbg !570
  %arrayidx18 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !572
  %6 = load i32, ptr %arrayidx18, align 4, !dbg !572, !tbaa !102
  br i1 %cmp15, label %if.then16, label %if.else36, !dbg !573

if.then16:                                        ; preds = %if.else
  %tobool19.not = icmp eq i32 %6, 0, !dbg !574
  br i1 %tobool19.not, label %if.then20, label %if.else23, !dbg !577

if.then20:                                        ; preds = %if.then16
  store i32 1, ptr %arrayidx18, align 4, !dbg !578, !tbaa !102
  br label %if.end29, !dbg !580

if.else23:                                        ; preds = %if.then16
  %add26 = add nsw i32 %6, 1, !dbg !581
  store i32 %add26, ptr %arrayidx14, align 4, !dbg !583, !tbaa !102
  br label %if.end29

if.end29:                                         ; preds = %if.else23, %if.then20
  %7 = phi i32 [ %add26, %if.else23 ], [ %5, %if.then20 ], !dbg !584
  %sub = sub nsw i32 %4, %7, !dbg !585
  store i32 %sub, ptr %arrayidx12, align 4, !dbg !586, !tbaa !102
  br label %for.inc, !dbg !587

if.else36:                                        ; preds = %if.else
  %add41 = add nsw i32 %6, %4, !dbg !588
  store i32 %add41, ptr %arrayidx14, align 4, !dbg !590, !tbaa !102
  br label %for.inc

for.inc:                                          ; preds = %if.else36, %if.end29, %if.then4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !591
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !540, metadata !DIExpression()), !dbg !549
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !550
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !552, !llvm.loop !592

if.then48:                                        ; preds = %for.cond.cleanup
  %8 = load ptr, ptr @stderr, align 8, !dbg !594, !tbaa !113
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef %call46, ptr noundef nonnull @.str.1, i32 noundef 253) #11, !dbg !594
  tail call void @exit(i32 noundef %call46) #12, !dbg !594
  unreachable, !dbg !594

if.end50:                                         ; preds = %for.cond.cleanup
  %call51 = tail call double @getTimeMiliSeconds(), !dbg !596
  %sub52 = fsub double %call51, %call, !dbg !597
  store double %sub52, ptr @ExecutionTime, align 8, !dbg !598, !tbaa !156
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !600 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !604, metadata !DIExpression()), !dbg !606
  %conv = sext i32 %n to i64, !dbg !607
  %mul = shl nsw i64 %conv, 2, !dbg !608
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #13, !dbg !609
  call void @llvm.dbg.value(metadata ptr %call, metadata !605, metadata !DIExpression()), !dbg !606
  %cmp = icmp eq ptr %call, null, !dbg !610
  br i1 %cmp, label %if.then, label %if.end, !dbg !612

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !613
  tail call void @exit(i32 noundef 1) #12, !dbg !615
  unreachable, !dbg !615

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !616
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !617 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !621, metadata !DIExpression()), !dbg !623
  %conv = sext i32 %n to i64, !dbg !624
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #13, !dbg !625
  call void @llvm.dbg.value(metadata ptr %call, metadata !622, metadata !DIExpression()), !dbg !623
  %cmp = icmp eq ptr %call, null, !dbg !626
  br i1 %cmp, label %if.then, label %if.end, !dbg !628

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !629
  tail call void @exit(i32 noundef 1) #12, !dbg !631
  unreachable, !dbg !631

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !632
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !633 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #10, !dbg !649
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !638, metadata !DIExpression()), !dbg !650
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #10, !dbg !651
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !653
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !654

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !655, !tbaa !113
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #11, !dbg !657
  call void @exit(i32 noundef 1) #12, !dbg !658
  unreachable, !dbg !658

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #10, !dbg !659
  call void @llvm.dbg.value(metadata i32 %call2, metadata !637, metadata !DIExpression()), !dbg !661
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !662
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !663

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !664, !tbaa !113
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 291) #11, !dbg !664
  tail call void @exit(i32 noundef %call2) #12, !dbg !664
  unreachable, !dbg !664

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !666, !tbaa !102
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #10, !dbg !668
  call void @llvm.dbg.value(metadata i32 %call7, metadata !637, metadata !DIExpression()), !dbg !661
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !669
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !670

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !671, !tbaa !113
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 294) #11, !dbg !671
  tail call void @exit(i32 noundef %call7) #12, !dbg !671
  unreachable, !dbg !671

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 5000000, metadata !643, metadata !DIExpression()), !dbg !661
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !673
  store ptr %call12, ptr @a, align 8, !dbg !674, !tbaa !113
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !675
  store ptr %call13, ptr @b, align 8, !dbg !676, !tbaa !113
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !677
  store ptr %call14, ptr @c, align 8, !dbg !678, !tbaa !113
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !679
  store ptr %call15, ptr @cond, align 8, !dbg !680, !tbaa !113
  store i8 0, ptr %call15, align 1, !dbg !681, !tbaa !123
  %call16 = tail call i64 @time(ptr noundef null) #10, !dbg !682
  %conv = trunc i64 %call16 to i32, !dbg !682
  tail call void @srand(i32 noundef %conv) #10, !dbg !683
  call void @llvm.dbg.value(metadata i32 0, metadata !644, metadata !DIExpression()), !dbg !684
  %4 = load ptr, ptr @a, align 8, !tbaa !113
  %5 = load ptr, ptr @b, align 8, !tbaa !113
  %6 = load ptr, ptr @c, align 8, !tbaa !113
  %7 = load ptr, ptr @cond, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !644, metadata !DIExpression()), !dbg !684
  br label %for.body, !dbg !685

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !644, metadata !DIExpression()), !dbg !684
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !686
  %8 = trunc i64 %indvars.iv to i32, !dbg !689
  store i32 %8, ptr %arrayidx19, align 4, !dbg !689, !tbaa !102
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !690
  store i32 2, ptr %arrayidx21, align 4, !dbg !691, !tbaa !102
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !692
  store i32 0, ptr %arrayidx23, align 4, !dbg !693, !tbaa !102
  %rem = urem i32 %8, 100, !dbg !694
  %cmp24 = icmp ult i32 %rem, 40, !dbg !695
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !696
  %frombool = zext i1 %cmp24 to i8, !dbg !697
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !697, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !698
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !644, metadata !DIExpression()), !dbg !684
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !699
  br i1 %exitcond.not, label %for.body33.preheader, label %for.body, !dbg !685, !llvm.loop !700

for.body33.preheader:                             ; preds = %for.body
  br label %for.body33, !dbg !702

for.cond.cleanup32:                               ; preds = %for.body33
  %add.lcssa = phi i32 [ %add, %for.body33 ], !dbg !703
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add.lcssa), !dbg !706
  %9 = load ptr, ptr @a, align 8, !dbg !707, !tbaa !113
  tail call void @free(ptr noundef %9) #10, !dbg !708
  %10 = load ptr, ptr @b, align 8, !dbg !709, !tbaa !113
  tail call void @free(ptr noundef %10) #10, !dbg !710
  %11 = load ptr, ptr @c, align 8, !dbg !711, !tbaa !113
  tail call void @free(ptr noundef %11) #10, !dbg !712
  %12 = load ptr, ptr @cond, align 8, !dbg !713, !tbaa !113
  tail call void @free(ptr noundef %12) #10, !dbg !714
  %13 = load i64, ptr @CounterValues, align 8, !dbg !715, !tbaa !716
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %13), !dbg !718
  %14 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !719, !tbaa !716
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %14), !dbg !720
  %15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !721, !tbaa !716
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %15), !dbg !722
  %16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !723, !tbaa !716
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %16), !dbg !724
  %17 = load double, ptr @ExecutionTime, align 8, !dbg !725, !tbaa !156
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %17), !dbg !726
  %18 = load i32, ptr @EventSet, align 4, !dbg !727, !tbaa !102
  %call45 = tail call i32 @PAPI_remove_events(i32 noundef %18, ptr noundef nonnull @EventCodes, i32 noundef 4) #10, !dbg !729
  call void @llvm.dbg.value(metadata i32 %call45, metadata !637, metadata !DIExpression()), !dbg !661
  %cmp46.not = icmp eq i32 %call45, 0, !dbg !730
  br i1 %cmp46.not, label %if.end50, label %if.then48, !dbg !731

for.body33:                                       ; preds = %for.body33.preheader, %for.body33
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.body33 ], [ 0, %for.body33.preheader ]
  %sum.080 = phi i32 [ %add, %for.body33 ], [ 0, %for.body33.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv83, metadata !647, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i32 %sum.080, metadata !646, metadata !DIExpression()), !dbg !661
  %arrayidx35 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv83, !dbg !733
  %19 = load i32, ptr %arrayidx35, align 4, !dbg !733, !tbaa !102
  %add = add nsw i32 %19, %sum.080, !dbg !703
  call void @llvm.dbg.value(metadata i32 %add, metadata !646, metadata !DIExpression()), !dbg !661
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1, !dbg !734
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next84, metadata !647, metadata !DIExpression()), !dbg !732
  %exitcond86.not = icmp eq i64 %indvars.iv.next84, 5000000, !dbg !735
  br i1 %exitcond86.not, label %for.cond.cleanup32, label %for.body33, !dbg !702, !llvm.loop !736

if.then48:                                        ; preds = %for.cond.cleanup32
  %20 = load ptr, ptr @stderr, align 8, !dbg !738, !tbaa !113
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef %call45, ptr noundef nonnull @.str.1, i32 noundef 337) #11, !dbg !738
  tail call void @exit(i32 noundef %call45) #12, !dbg !738
  unreachable, !dbg !738

if.end50:                                         ; preds = %for.cond.cleanup32
  %call51 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #10, !dbg !740
  call void @llvm.dbg.value(metadata i32 %call51, metadata !637, metadata !DIExpression()), !dbg !661
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !742
  br i1 %cmp52.not, label %if.end56, label %if.then54, !dbg !743

if.then54:                                        ; preds = %if.end50
  %21 = load ptr, ptr @stderr, align 8, !dbg !744, !tbaa !113
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %call51, ptr noundef nonnull @.str.1, i32 noundef 340) #11, !dbg !744
  tail call void @exit(i32 noundef %call51) #12, !dbg !744
  unreachable, !dbg !744

if.end56:                                         ; preds = %if.end50
  tail call void @PAPI_shutdown() #10, !dbg !746
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #10, !dbg !747
  ret i32 0, !dbg !748
}

declare !dbg !749 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !750 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !753 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !756 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !761 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !767 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !768 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !769 void @PAPI_shutdown() local_unnamed_addr #4

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
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "e10470897efcae509da0311030f19807")
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
!24 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 258, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 259, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 260, type: !5, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 261, type: !8, isLocal: false, isDefinition: true)
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
!132 = !DILocation(line: 42, column: 50, scope: !128)
!133 = !DILocation(line: 42, column: 42, scope: !128)
!134 = !DILocation(line: 43, column: 18, scope: !128)
!135 = !DILocation(line: 45, column: 27, scope: !128)
!136 = !DILocation(line: 44, column: 33, scope: !128)
!137 = !DILocation(line: 45, column: 18, scope: !128)
!138 = !DILocation(line: 46, column: 29, scope: !128)
!139 = !DILocation(line: 46, column: 56, scope: !128)
!140 = !DILocation(line: 46, column: 71, scope: !128)
!141 = !DILocation(line: 46, column: 67, scope: !128)
!142 = !DILocation(line: 46, column: 44, scope: !128)
!143 = !DILocation(line: 46, column: 40, scope: !128)
!144 = !DILocation(line: 47, column: 18, scope: !128)
!145 = !DILocation(line: 48, column: 9, scope: !128)
!146 = !DILocation(line: 40, column: 28, scope: !109)
!147 = distinct !{!147, !110, !148, !149, !150}
!148 = !DILocation(line: 49, column: 5, scope: !97)
!149 = !{!"llvm.loop.mustprogress"}
!150 = !{!"llvm.loop.unroll.disable"}
!151 = !DILocation(line: 53, column: 67, scope: !152)
!152 = distinct !DILexicalBlock(scope: !116, file: !3, line: 53, column: 67)
!153 = !DILocation(line: 55, column: 21, scope: !83)
!154 = !DILocation(line: 55, column: 42, scope: !83)
!155 = !DILocation(line: 55, column: 19, scope: !83)
!156 = !{!157, !157, i64 0}
!157 = !{!"double", !64, i64 0}
!158 = !DILocation(line: 56, column: 1, scope: !83)
!159 = !DISubprogram(name: "PAPI_start", scope: !160, file: !160, line: 1204, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!160 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!161 = !DISubroutineType(types: !162)
!162 = !{!6, !6}
!163 = !DISubprogram(name: "PAPI_stop", scope: !160, file: !160, line: 1206, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!164 = !DISubroutineType(types: !165)
!165 = !{!6, !6, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!167 = distinct !DISubprogram(name: "nested_if_case_1", scope: !3, file: !3, line: 59, type: !84, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !168)
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !178}
!169 = !DILocalVariable(name: "a", arg: 1, scope: !167, file: !3, line: 59, type: !86)
!170 = !DILocalVariable(name: "b", arg: 2, scope: !167, file: !3, line: 59, type: !86)
!171 = !DILocalVariable(name: "c", arg: 3, scope: !167, file: !3, line: 59, type: !86)
!172 = !DILocalVariable(name: "cond", arg: 4, scope: !167, file: !3, line: 60, type: !87)
!173 = !DILocalVariable(name: "n", arg: 5, scope: !167, file: !3, line: 60, type: !6)
!174 = !DILocalVariable(name: "status", scope: !167, file: !3, line: 62, type: !6)
!175 = !DILocalVariable(name: "t", scope: !167, file: !3, line: 64, type: !22)
!176 = !DILocalVariable(name: "j", scope: !177, file: !3, line: 68, type: !6)
!177 = distinct !DILexicalBlock(scope: !167, file: !3, line: 68, column: 5)
!178 = !DILocalVariable(name: "i", scope: !179, file: !3, line: 69, type: !6)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 69, column: 5)
!180 = distinct !DILexicalBlock(scope: !181, file: !3, line: 68, column: 34)
!181 = distinct !DILexicalBlock(scope: !177, file: !3, line: 68, column: 5)
!182 = !DILocation(line: 0, scope: !167)
!183 = !DILocation(line: 64, column: 16, scope: !167)
!184 = !DILocation(line: 66, column: 30, scope: !185)
!185 = distinct !DILexicalBlock(scope: !167, file: !3, line: 66, column: 9)
!186 = !DILocation(line: 66, column: 19, scope: !185)
!187 = !DILocation(line: 66, column: 41, scope: !185)
!188 = !DILocation(line: 66, column: 9, scope: !167)
!189 = !DILocation(line: 0, scope: !177)
!190 = !DILocation(line: 69, column: 5, scope: !179)
!191 = !DILocation(line: 68, column: 5, scope: !177)
!192 = !DILocation(line: 0, scope: !179)
!193 = !DILocation(line: 70, column: 13, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !3, line: 70, column: 13)
!195 = distinct !DILexicalBlock(scope: !196, file: !3, line: 69, column: 33)
!196 = distinct !DILexicalBlock(scope: !179, file: !3, line: 69, column: 5)
!197 = !DILocation(line: 70, column: 13, scope: !195)
!198 = !DILocation(line: 71, column: 20, scope: !199)
!199 = distinct !DILexicalBlock(scope: !194, file: !3, line: 70, column: 22)
!200 = !DILocation(line: 71, column: 25, scope: !199)
!201 = !DILocation(line: 71, column: 13, scope: !199)
!202 = !DILocation(line: 71, column: 18, scope: !199)
!203 = !DILocation(line: 72, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !3, line: 72, column: 17)
!205 = !DILocation(line: 72, column: 22, scope: !204)
!206 = !DILocation(line: 72, column: 17, scope: !199)
!207 = !DILocation(line: 73, column: 29, scope: !208)
!208 = distinct !DILexicalBlock(scope: !204, file: !3, line: 72, column: 30)
!209 = !DILocation(line: 73, column: 22, scope: !208)
!210 = !DILocation(line: 74, column: 13, scope: !208)
!211 = !DILocation(line: 75, column: 27, scope: !199)
!212 = !DILocation(line: 75, column: 25, scope: !199)
!213 = !DILocation(line: 75, column: 18, scope: !199)
!214 = !DILocation(line: 76, column: 9, scope: !199)
!215 = !DILocation(line: 69, column: 28, scope: !196)
!216 = !DILocation(line: 69, column: 23, scope: !196)
!217 = distinct !{!217, !190, !218, !149, !150}
!218 = !DILocation(line: 77, column: 5, scope: !179)
!219 = !DILocation(line: 68, column: 29, scope: !181)
!220 = !DILocation(line: 68, column: 23, scope: !181)
!221 = distinct !{!221, !191, !222, !149, !150}
!222 = !DILocation(line: 78, column: 5, scope: !177)
!223 = !DILocation(line: 66, column: 53, scope: !224)
!224 = distinct !DILexicalBlock(scope: !185, file: !3, line: 66, column: 53)
!225 = !DILocation(line: 81, column: 29, scope: !226)
!226 = distinct !DILexicalBlock(scope: !167, file: !3, line: 81, column: 9)
!227 = !DILocation(line: 81, column: 19, scope: !226)
!228 = !DILocation(line: 81, column: 55, scope: !226)
!229 = !DILocation(line: 81, column: 9, scope: !167)
!230 = !DILocation(line: 81, column: 67, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !3, line: 81, column: 67)
!232 = !DILocation(line: 82, column: 21, scope: !167)
!233 = !DILocation(line: 82, column: 42, scope: !167)
!234 = !DILocation(line: 82, column: 19, scope: !167)
!235 = !DILocation(line: 83, column: 1, scope: !167)
!236 = distinct !DISubprogram(name: "nested_if_case_2", scope: !3, file: !3, line: 85, type: !84, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245}
!238 = !DILocalVariable(name: "a", arg: 1, scope: !236, file: !3, line: 85, type: !86)
!239 = !DILocalVariable(name: "b", arg: 2, scope: !236, file: !3, line: 85, type: !86)
!240 = !DILocalVariable(name: "c", arg: 3, scope: !236, file: !3, line: 85, type: !86)
!241 = !DILocalVariable(name: "cond", arg: 4, scope: !236, file: !3, line: 86, type: !87)
!242 = !DILocalVariable(name: "n", arg: 5, scope: !236, file: !3, line: 86, type: !6)
!243 = !DILocalVariable(name: "status", scope: !236, file: !3, line: 88, type: !6)
!244 = !DILocalVariable(name: "t", scope: !236, file: !3, line: 90, type: !22)
!245 = !DILocalVariable(name: "i", scope: !246, file: !3, line: 95, type: !6)
!246 = distinct !DILexicalBlock(scope: !236, file: !3, line: 95, column: 5)
!247 = !DILocation(line: 0, scope: !236)
!248 = !DILocation(line: 90, column: 16, scope: !236)
!249 = !DILocation(line: 92, column: 30, scope: !250)
!250 = distinct !DILexicalBlock(scope: !236, file: !3, line: 92, column: 9)
!251 = !DILocation(line: 92, column: 19, scope: !250)
!252 = !DILocation(line: 92, column: 41, scope: !250)
!253 = !DILocation(line: 92, column: 9, scope: !236)
!254 = !DILocation(line: 0, scope: !246)
!255 = !DILocation(line: 95, column: 23, scope: !256)
!256 = distinct !DILexicalBlock(scope: !246, file: !3, line: 95, column: 5)
!257 = !DILocation(line: 95, column: 5, scope: !246)
!258 = !DILocation(line: 92, column: 53, scope: !259)
!259 = distinct !DILexicalBlock(scope: !250, file: !3, line: 92, column: 53)
!260 = !DILocation(line: 112, column: 29, scope: !261)
!261 = distinct !DILexicalBlock(scope: !236, file: !3, line: 112, column: 9)
!262 = !DILocation(line: 112, column: 19, scope: !261)
!263 = !DILocation(line: 112, column: 55, scope: !261)
!264 = !DILocation(line: 112, column: 9, scope: !236)
!265 = !DILocation(line: 96, column: 13, scope: !266)
!266 = distinct !DILexicalBlock(scope: !267, file: !3, line: 96, column: 13)
!267 = distinct !DILexicalBlock(scope: !256, file: !3, line: 95, column: 33)
!268 = !DILocation(line: 96, column: 13, scope: !267)
!269 = !DILocation(line: 97, column: 20, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !3, line: 96, column: 22)
!271 = !DILocation(line: 97, column: 25, scope: !270)
!272 = !DILocation(line: 97, column: 13, scope: !270)
!273 = !DILocation(line: 97, column: 18, scope: !270)
!274 = !DILocation(line: 98, column: 17, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !3, line: 98, column: 17)
!276 = !DILocation(line: 98, column: 22, scope: !275)
!277 = !DILocation(line: 98, column: 17, scope: !270)
!278 = !DILocation(line: 99, column: 29, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !3, line: 98, column: 30)
!280 = !DILocation(line: 100, column: 13, scope: !279)
!281 = !DILocation(line: 101, column: 29, scope: !282)
!282 = distinct !DILexicalBlock(scope: !275, file: !3, line: 100, column: 20)
!283 = !DILocation(line: 101, column: 22, scope: !282)
!284 = !DILocation(line: 102, column: 26, scope: !285)
!285 = distinct !DILexicalBlock(scope: !282, file: !3, line: 102, column: 21)
!286 = !DILocation(line: 102, column: 21, scope: !282)
!287 = !DILocation(line: 103, column: 33, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !3, line: 102, column: 34)
!289 = !DILocation(line: 104, column: 17, scope: !288)
!290 = !DILocation(line: 0, scope: !275)
!291 = !DILocation(line: 106, column: 25, scope: !270)
!292 = !DILocation(line: 106, column: 27, scope: !270)
!293 = !DILocation(line: 106, column: 18, scope: !270)
!294 = !DILocation(line: 107, column: 9, scope: !270)
!295 = !DILocation(line: 95, column: 28, scope: !256)
!296 = distinct !{!296, !257, !297, !149, !150}
!297 = !DILocation(line: 108, column: 5, scope: !246)
!298 = !DILocation(line: 112, column: 67, scope: !299)
!299 = distinct !DILexicalBlock(scope: !261, file: !3, line: 112, column: 67)
!300 = !DILocation(line: 114, column: 21, scope: !236)
!301 = !DILocation(line: 114, column: 42, scope: !236)
!302 = !DILocation(line: 114, column: 19, scope: !236)
!303 = !DILocation(line: 115, column: 1, scope: !236)
!304 = distinct !DISubprogram(name: "perfect_nested_if_case_1", scope: !3, file: !3, line: 117, type: !84, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313}
!306 = !DILocalVariable(name: "a", arg: 1, scope: !304, file: !3, line: 117, type: !86)
!307 = !DILocalVariable(name: "b", arg: 2, scope: !304, file: !3, line: 117, type: !86)
!308 = !DILocalVariable(name: "c", arg: 3, scope: !304, file: !3, line: 117, type: !86)
!309 = !DILocalVariable(name: "cond", arg: 4, scope: !304, file: !3, line: 118, type: !87)
!310 = !DILocalVariable(name: "n", arg: 5, scope: !304, file: !3, line: 118, type: !6)
!311 = !DILocalVariable(name: "status", scope: !304, file: !3, line: 120, type: !6)
!312 = !DILocalVariable(name: "t", scope: !304, file: !3, line: 122, type: !22)
!313 = !DILocalVariable(name: "i", scope: !314, file: !3, line: 127, type: !6)
!314 = distinct !DILexicalBlock(scope: !304, file: !3, line: 127, column: 5)
!315 = !DILocation(line: 0, scope: !304)
!316 = !DILocation(line: 122, column: 16, scope: !304)
!317 = !DILocation(line: 124, column: 30, scope: !318)
!318 = distinct !DILexicalBlock(scope: !304, file: !3, line: 124, column: 9)
!319 = !DILocation(line: 124, column: 19, scope: !318)
!320 = !DILocation(line: 124, column: 41, scope: !318)
!321 = !DILocation(line: 124, column: 9, scope: !304)
!322 = !DILocation(line: 0, scope: !314)
!323 = !DILocation(line: 127, column: 23, scope: !324)
!324 = distinct !DILexicalBlock(scope: !314, file: !3, line: 127, column: 5)
!325 = !DILocation(line: 127, column: 5, scope: !314)
!326 = !DILocation(line: 124, column: 53, scope: !327)
!327 = distinct !DILexicalBlock(scope: !318, file: !3, line: 124, column: 53)
!328 = !DILocation(line: 139, column: 29, scope: !329)
!329 = distinct !DILexicalBlock(scope: !304, file: !3, line: 139, column: 9)
!330 = !DILocation(line: 139, column: 19, scope: !329)
!331 = !DILocation(line: 139, column: 55, scope: !329)
!332 = !DILocation(line: 139, column: 9, scope: !304)
!333 = !DILocation(line: 128, column: 13, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !3, line: 128, column: 13)
!335 = distinct !DILexicalBlock(scope: !324, file: !3, line: 127, column: 33)
!336 = !DILocation(line: 128, column: 13, scope: !335)
!337 = !DILocation(line: 129, column: 17, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 129, column: 17)
!339 = distinct !DILexicalBlock(scope: !334, file: !3, line: 128, column: 22)
!340 = !DILocation(line: 129, column: 24, scope: !338)
!341 = !DILocation(line: 129, column: 22, scope: !338)
!342 = !DILocation(line: 129, column: 17, scope: !339)
!343 = !DILocation(line: 130, column: 21, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 130, column: 21)
!345 = distinct !DILexicalBlock(scope: !338, file: !3, line: 129, column: 30)
!346 = !DILocation(line: 130, column: 26, scope: !344)
!347 = !DILocation(line: 130, column: 21, scope: !345)
!348 = !DILocation(line: 131, column: 33, scope: !349)
!349 = distinct !DILexicalBlock(scope: !344, file: !3, line: 130, column: 34)
!350 = !DILocation(line: 131, column: 26, scope: !349)
!351 = !DILocation(line: 132, column: 17, scope: !349)
!352 = !DILocation(line: 127, column: 28, scope: !324)
!353 = distinct !{!353, !325, !354, !149, !150}
!354 = !DILocation(line: 135, column: 5, scope: !314)
!355 = !DILocation(line: 139, column: 67, scope: !356)
!356 = distinct !DILexicalBlock(scope: !329, file: !3, line: 139, column: 67)
!357 = !DILocation(line: 141, column: 21, scope: !304)
!358 = !DILocation(line: 141, column: 42, scope: !304)
!359 = !DILocation(line: 141, column: 19, scope: !304)
!360 = !DILocation(line: 142, column: 1, scope: !304)
!361 = distinct !DISubprogram(name: "perfect_nested_if_case_2", scope: !3, file: !3, line: 144, type: !84, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370}
!363 = !DILocalVariable(name: "a", arg: 1, scope: !361, file: !3, line: 144, type: !86)
!364 = !DILocalVariable(name: "b", arg: 2, scope: !361, file: !3, line: 144, type: !86)
!365 = !DILocalVariable(name: "c", arg: 3, scope: !361, file: !3, line: 144, type: !86)
!366 = !DILocalVariable(name: "cond", arg: 4, scope: !361, file: !3, line: 145, type: !87)
!367 = !DILocalVariable(name: "n", arg: 5, scope: !361, file: !3, line: 145, type: !6)
!368 = !DILocalVariable(name: "status", scope: !361, file: !3, line: 147, type: !6)
!369 = !DILocalVariable(name: "t", scope: !361, file: !3, line: 149, type: !22)
!370 = !DILocalVariable(name: "i", scope: !371, file: !3, line: 154, type: !6)
!371 = distinct !DILexicalBlock(scope: !361, file: !3, line: 154, column: 5)
!372 = !DILocation(line: 0, scope: !361)
!373 = !DILocation(line: 149, column: 16, scope: !361)
!374 = !DILocation(line: 151, column: 30, scope: !375)
!375 = distinct !DILexicalBlock(scope: !361, file: !3, line: 151, column: 9)
!376 = !DILocation(line: 151, column: 19, scope: !375)
!377 = !DILocation(line: 151, column: 41, scope: !375)
!378 = !DILocation(line: 151, column: 9, scope: !361)
!379 = !DILocation(line: 0, scope: !371)
!380 = !DILocation(line: 154, column: 23, scope: !381)
!381 = distinct !DILexicalBlock(scope: !371, file: !3, line: 154, column: 5)
!382 = !DILocation(line: 154, column: 5, scope: !371)
!383 = !DILocation(line: 151, column: 53, scope: !384)
!384 = distinct !DILexicalBlock(scope: !375, file: !3, line: 151, column: 53)
!385 = !DILocation(line: 168, column: 29, scope: !386)
!386 = distinct !DILexicalBlock(scope: !361, file: !3, line: 168, column: 9)
!387 = !DILocation(line: 168, column: 19, scope: !386)
!388 = !DILocation(line: 168, column: 55, scope: !386)
!389 = !DILocation(line: 168, column: 9, scope: !361)
!390 = !DILocation(line: 155, column: 13, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !3, line: 155, column: 13)
!392 = distinct !DILexicalBlock(scope: !381, file: !3, line: 154, column: 33)
!393 = !DILocation(line: 155, column: 13, scope: !392)
!394 = !DILocation(line: 156, column: 17, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !3, line: 156, column: 17)
!396 = distinct !DILexicalBlock(scope: !391, file: !3, line: 155, column: 22)
!397 = !DILocation(line: 156, column: 24, scope: !395)
!398 = !DILocation(line: 156, column: 22, scope: !395)
!399 = !DILocation(line: 156, column: 17, scope: !396)
!400 = !DILocation(line: 157, column: 21, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !3, line: 157, column: 21)
!402 = distinct !DILexicalBlock(scope: !395, file: !3, line: 156, column: 30)
!403 = !DILocation(line: 157, column: 26, scope: !401)
!404 = !DILocation(line: 157, column: 21, scope: !402)
!405 = !DILocation(line: 158, column: 33, scope: !406)
!406 = distinct !DILexicalBlock(scope: !401, file: !3, line: 157, column: 34)
!407 = !DILocation(line: 158, column: 26, scope: !406)
!408 = !DILocation(line: 159, column: 17, scope: !406)
!409 = !DILocation(line: 160, column: 33, scope: !410)
!410 = distinct !DILexicalBlock(scope: !401, file: !3, line: 159, column: 24)
!411 = !DILocation(line: 160, column: 26, scope: !410)
!412 = !DILocation(line: 154, column: 28, scope: !381)
!413 = distinct !{!413, !382, !414, !149, !150}
!414 = !DILocation(line: 164, column: 5, scope: !371)
!415 = !DILocation(line: 168, column: 67, scope: !416)
!416 = distinct !DILexicalBlock(scope: !386, file: !3, line: 168, column: 67)
!417 = !DILocation(line: 170, column: 21, scope: !361)
!418 = !DILocation(line: 170, column: 42, scope: !361)
!419 = !DILocation(line: 170, column: 19, scope: !361)
!420 = !DILocation(line: 171, column: 1, scope: !361)
!421 = distinct !DISubprogram(name: "simple_if_else", scope: !3, file: !3, line: 174, type: !84, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !422)
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430}
!423 = !DILocalVariable(name: "a", arg: 1, scope: !421, file: !3, line: 174, type: !86)
!424 = !DILocalVariable(name: "b", arg: 2, scope: !421, file: !3, line: 174, type: !86)
!425 = !DILocalVariable(name: "c", arg: 3, scope: !421, file: !3, line: 174, type: !86)
!426 = !DILocalVariable(name: "cond", arg: 4, scope: !421, file: !3, line: 175, type: !87)
!427 = !DILocalVariable(name: "n", arg: 5, scope: !421, file: !3, line: 175, type: !6)
!428 = !DILocalVariable(name: "status", scope: !421, file: !3, line: 177, type: !6)
!429 = !DILocalVariable(name: "t", scope: !421, file: !3, line: 179, type: !22)
!430 = !DILocalVariable(name: "i", scope: !431, file: !3, line: 184, type: !6)
!431 = distinct !DILexicalBlock(scope: !421, file: !3, line: 184, column: 5)
!432 = !DILocation(line: 0, scope: !421)
!433 = !DILocation(line: 179, column: 16, scope: !421)
!434 = !DILocation(line: 181, column: 30, scope: !435)
!435 = distinct !DILexicalBlock(scope: !421, file: !3, line: 181, column: 9)
!436 = !DILocation(line: 181, column: 19, scope: !435)
!437 = !DILocation(line: 181, column: 41, scope: !435)
!438 = !DILocation(line: 181, column: 9, scope: !421)
!439 = !DILocation(line: 0, scope: !431)
!440 = !DILocation(line: 184, column: 23, scope: !441)
!441 = distinct !DILexicalBlock(scope: !431, file: !3, line: 184, column: 5)
!442 = !DILocation(line: 184, column: 5, scope: !431)
!443 = !DILocation(line: 181, column: 53, scope: !444)
!444 = distinct !DILexicalBlock(scope: !435, file: !3, line: 181, column: 53)
!445 = !DILocation(line: 194, column: 29, scope: !446)
!446 = distinct !DILexicalBlock(scope: !421, file: !3, line: 194, column: 9)
!447 = !DILocation(line: 194, column: 19, scope: !446)
!448 = !DILocation(line: 194, column: 55, scope: !446)
!449 = !DILocation(line: 194, column: 9, scope: !421)
!450 = !DILocation(line: 185, column: 17, scope: !451)
!451 = distinct !DILexicalBlock(scope: !452, file: !3, line: 185, column: 17)
!452 = distinct !DILexicalBlock(scope: !441, file: !3, line: 184, column: 33)
!453 = !DILocation(line: 0, scope: !451)
!454 = !DILocation(line: 185, column: 17, scope: !452)
!455 = !DILocation(line: 186, column: 29, scope: !456)
!456 = distinct !DILexicalBlock(scope: !451, file: !3, line: 185, column: 26)
!457 = !DILocation(line: 186, column: 17, scope: !456)
!458 = !DILocation(line: 186, column: 22, scope: !456)
!459 = !DILocation(line: 187, column: 13, scope: !456)
!460 = !DILocation(line: 188, column: 29, scope: !461)
!461 = distinct !DILexicalBlock(scope: !451, file: !3, line: 187, column: 20)
!462 = !DILocation(line: 188, column: 22, scope: !461)
!463 = !DILocation(line: 184, column: 28, scope: !441)
!464 = distinct !{!464, !442, !465, !149, !150}
!465 = !DILocation(line: 190, column: 5, scope: !431)
!466 = !DILocation(line: 194, column: 67, scope: !467)
!467 = distinct !DILexicalBlock(scope: !446, file: !3, line: 194, column: 67)
!468 = !DILocation(line: 196, column: 21, scope: !421)
!469 = !DILocation(line: 196, column: 42, scope: !421)
!470 = !DILocation(line: 196, column: 19, scope: !421)
!471 = !DILocation(line: 197, column: 1, scope: !421)
!472 = distinct !DISubprogram(name: "multiple_if_else_case_1", scope: !3, file: !3, line: 199, type: !84, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481}
!474 = !DILocalVariable(name: "a", arg: 1, scope: !472, file: !3, line: 199, type: !86)
!475 = !DILocalVariable(name: "b", arg: 2, scope: !472, file: !3, line: 199, type: !86)
!476 = !DILocalVariable(name: "c", arg: 3, scope: !472, file: !3, line: 199, type: !86)
!477 = !DILocalVariable(name: "cond", arg: 4, scope: !472, file: !3, line: 200, type: !87)
!478 = !DILocalVariable(name: "n", arg: 5, scope: !472, file: !3, line: 200, type: !6)
!479 = !DILocalVariable(name: "status", scope: !472, file: !3, line: 202, type: !6)
!480 = !DILocalVariable(name: "t", scope: !472, file: !3, line: 204, type: !22)
!481 = !DILocalVariable(name: "i", scope: !482, file: !3, line: 209, type: !6)
!482 = distinct !DILexicalBlock(scope: !472, file: !3, line: 209, column: 5)
!483 = !DILocation(line: 0, scope: !472)
!484 = !DILocation(line: 204, column: 16, scope: !472)
!485 = !DILocation(line: 206, column: 30, scope: !486)
!486 = distinct !DILexicalBlock(scope: !472, file: !3, line: 206, column: 9)
!487 = !DILocation(line: 206, column: 19, scope: !486)
!488 = !DILocation(line: 206, column: 41, scope: !486)
!489 = !DILocation(line: 206, column: 9, scope: !472)
!490 = !DILocation(line: 0, scope: !482)
!491 = !DILocation(line: 209, column: 23, scope: !492)
!492 = distinct !DILexicalBlock(scope: !482, file: !3, line: 209, column: 5)
!493 = !DILocation(line: 209, column: 5, scope: !482)
!494 = !DILocation(line: 206, column: 53, scope: !495)
!495 = distinct !DILexicalBlock(scope: !486, file: !3, line: 206, column: 53)
!496 = !DILocation(line: 221, column: 29, scope: !497)
!497 = distinct !DILexicalBlock(scope: !472, file: !3, line: 221, column: 9)
!498 = !DILocation(line: 221, column: 19, scope: !497)
!499 = !DILocation(line: 221, column: 55, scope: !497)
!500 = !DILocation(line: 221, column: 9, scope: !472)
!501 = !DILocation(line: 210, column: 13, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !3, line: 210, column: 13)
!503 = distinct !DILexicalBlock(scope: !492, file: !3, line: 209, column: 33)
!504 = !DILocation(line: 0, scope: !502)
!505 = !DILocation(line: 210, column: 13, scope: !503)
!506 = !DILocation(line: 211, column: 25, scope: !507)
!507 = distinct !DILexicalBlock(scope: !502, file: !3, line: 210, column: 22)
!508 = !DILocation(line: 211, column: 13, scope: !507)
!509 = !DILocation(line: 211, column: 18, scope: !507)
!510 = !DILocation(line: 212, column: 9, scope: !507)
!511 = !DILocation(line: 212, column: 25, scope: !512)
!512 = distinct !DILexicalBlock(scope: !502, file: !3, line: 212, column: 20)
!513 = !DILocation(line: 212, column: 20, scope: !502)
!514 = !DILocation(line: 213, column: 25, scope: !515)
!515 = distinct !DILexicalBlock(scope: !512, file: !3, line: 212, column: 33)
!516 = !DILocation(line: 213, column: 18, scope: !515)
!517 = !DILocation(line: 214, column: 9, scope: !515)
!518 = !DILocation(line: 215, column: 20, scope: !519)
!519 = distinct !DILexicalBlock(scope: !512, file: !3, line: 214, column: 15)
!520 = !DILocation(line: 215, column: 25, scope: !519)
!521 = !DILocation(line: 215, column: 18, scope: !519)
!522 = !DILocation(line: 209, column: 28, scope: !492)
!523 = distinct !{!523, !493, !524, !149, !150}
!524 = !DILocation(line: 217, column: 5, scope: !482)
!525 = !DILocation(line: 221, column: 67, scope: !526)
!526 = distinct !DILexicalBlock(scope: !497, file: !3, line: 221, column: 67)
!527 = !DILocation(line: 223, column: 21, scope: !472)
!528 = !DILocation(line: 223, column: 42, scope: !472)
!529 = !DILocation(line: 223, column: 19, scope: !472)
!530 = !DILocation(line: 224, column: 1, scope: !472)
!531 = distinct !DISubprogram(name: "multiple_if_else_case_2", scope: !3, file: !3, line: 226, type: !84, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !532)
!532 = !{!533, !534, !535, !536, !537, !538, !539, !540}
!533 = !DILocalVariable(name: "a", arg: 1, scope: !531, file: !3, line: 226, type: !86)
!534 = !DILocalVariable(name: "b", arg: 2, scope: !531, file: !3, line: 226, type: !86)
!535 = !DILocalVariable(name: "c", arg: 3, scope: !531, file: !3, line: 226, type: !86)
!536 = !DILocalVariable(name: "cond", arg: 4, scope: !531, file: !3, line: 227, type: !87)
!537 = !DILocalVariable(name: "n", arg: 5, scope: !531, file: !3, line: 227, type: !6)
!538 = !DILocalVariable(name: "status", scope: !531, file: !3, line: 229, type: !6)
!539 = !DILocalVariable(name: "t", scope: !531, file: !3, line: 231, type: !22)
!540 = !DILocalVariable(name: "i", scope: !541, file: !3, line: 236, type: !6)
!541 = distinct !DILexicalBlock(scope: !531, file: !3, line: 236, column: 5)
!542 = !DILocation(line: 0, scope: !531)
!543 = !DILocation(line: 231, column: 16, scope: !531)
!544 = !DILocation(line: 233, column: 30, scope: !545)
!545 = distinct !DILexicalBlock(scope: !531, file: !3, line: 233, column: 9)
!546 = !DILocation(line: 233, column: 19, scope: !545)
!547 = !DILocation(line: 233, column: 41, scope: !545)
!548 = !DILocation(line: 233, column: 9, scope: !531)
!549 = !DILocation(line: 0, scope: !541)
!550 = !DILocation(line: 236, column: 23, scope: !551)
!551 = distinct !DILexicalBlock(scope: !541, file: !3, line: 236, column: 5)
!552 = !DILocation(line: 236, column: 5, scope: !541)
!553 = !DILocation(line: 233, column: 53, scope: !554)
!554 = distinct !DILexicalBlock(scope: !545, file: !3, line: 233, column: 53)
!555 = !DILocation(line: 253, column: 29, scope: !556)
!556 = distinct !DILexicalBlock(scope: !531, file: !3, line: 253, column: 9)
!557 = !DILocation(line: 253, column: 19, scope: !556)
!558 = !DILocation(line: 253, column: 55, scope: !556)
!559 = !DILocation(line: 253, column: 9, scope: !531)
!560 = !DILocation(line: 237, column: 13, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 237, column: 13)
!562 = distinct !DILexicalBlock(scope: !551, file: !3, line: 236, column: 33)
!563 = !DILocation(line: 0, scope: !561)
!564 = !DILocation(line: 237, column: 13, scope: !562)
!565 = !DILocation(line: 238, column: 25, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !3, line: 237, column: 22)
!567 = !DILocation(line: 238, column: 13, scope: !566)
!568 = !DILocation(line: 238, column: 18, scope: !566)
!569 = !DILocation(line: 239, column: 9, scope: !566)
!570 = !DILocation(line: 239, column: 25, scope: !571)
!571 = distinct !DILexicalBlock(scope: !561, file: !3, line: 239, column: 20)
!572 = !DILocation(line: 0, scope: !571)
!573 = !DILocation(line: 239, column: 20, scope: !561)
!574 = !DILocation(line: 240, column: 17, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !3, line: 240, column: 16)
!576 = distinct !DILexicalBlock(scope: !571, file: !3, line: 239, column: 33)
!577 = !DILocation(line: 240, column: 16, scope: !576)
!578 = !DILocation(line: 241, column: 22, scope: !579)
!579 = distinct !DILexicalBlock(scope: !575, file: !3, line: 240, column: 22)
!580 = !DILocation(line: 242, column: 13, scope: !579)
!581 = !DILocation(line: 243, column: 29, scope: !582)
!582 = distinct !DILexicalBlock(scope: !575, file: !3, line: 242, column: 19)
!583 = !DILocation(line: 243, column: 22, scope: !582)
!584 = !DILocation(line: 245, column: 27, scope: !576)
!585 = !DILocation(line: 245, column: 25, scope: !576)
!586 = !DILocation(line: 245, column: 18, scope: !576)
!587 = !DILocation(line: 246, column: 9, scope: !576)
!588 = !DILocation(line: 247, column: 25, scope: !589)
!589 = distinct !DILexicalBlock(scope: !571, file: !3, line: 246, column: 15)
!590 = !DILocation(line: 247, column: 18, scope: !589)
!591 = !DILocation(line: 236, column: 28, scope: !551)
!592 = distinct !{!592, !552, !593, !149, !150}
!593 = !DILocation(line: 249, column: 5, scope: !541)
!594 = !DILocation(line: 253, column: 67, scope: !595)
!595 = distinct !DILexicalBlock(scope: !556, file: !3, line: 253, column: 67)
!596 = !DILocation(line: 255, column: 21, scope: !531)
!597 = !DILocation(line: 255, column: 42, scope: !531)
!598 = !DILocation(line: 255, column: 19, scope: !531)
!599 = !DILocation(line: 256, column: 1, scope: !531)
!600 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 263, type: !601, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{!5, !6}
!603 = !{!604, !605}
!604 = !DILocalVariable(name: "n", arg: 1, scope: !600, file: !3, line: 263, type: !6)
!605 = !DILocalVariable(name: "ptr", scope: !600, file: !3, line: 264, type: !5)
!606 = !DILocation(line: 0, scope: !600)
!607 = !DILocation(line: 264, column: 45, scope: !600)
!608 = !DILocation(line: 264, column: 43, scope: !600)
!609 = !DILocation(line: 264, column: 24, scope: !600)
!610 = !DILocation(line: 265, column: 13, scope: !611)
!611 = distinct !DILexicalBlock(scope: !600, file: !3, line: 265, column: 9)
!612 = !DILocation(line: 265, column: 9, scope: !600)
!613 = !DILocation(line: 266, column: 9, scope: !614)
!614 = distinct !DILexicalBlock(scope: !611, file: !3, line: 265, column: 22)
!615 = !DILocation(line: 267, column: 9, scope: !614)
!616 = !DILocation(line: 269, column: 5, scope: !600)
!617 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 272, type: !618, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !620)
!618 = !DISubroutineType(types: !619)
!619 = !{!8, !6}
!620 = !{!621, !622}
!621 = !DILocalVariable(name: "n", arg: 1, scope: !617, file: !3, line: 272, type: !6)
!622 = !DILocalVariable(name: "ptr", scope: !617, file: !3, line: 273, type: !8)
!623 = !DILocation(line: 0, scope: !617)
!624 = !DILocation(line: 273, column: 48, scope: !617)
!625 = !DILocation(line: 273, column: 26, scope: !617)
!626 = !DILocation(line: 274, column: 13, scope: !627)
!627 = distinct !DILexicalBlock(scope: !617, file: !3, line: 274, column: 9)
!628 = !DILocation(line: 274, column: 9, scope: !617)
!629 = !DILocation(line: 275, column: 9, scope: !630)
!630 = distinct !DILexicalBlock(scope: !627, file: !3, line: 274, column: 22)
!631 = !DILocation(line: 276, column: 9, scope: !630)
!632 = !DILocation(line: 278, column: 5, scope: !617)
!633 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 281, type: !634, scopeLine: 281, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !636)
!634 = !DISubroutineType(types: !635)
!635 = !{!6}
!636 = !{!637, !638, !643, !644, !646, !647}
!637 = !DILocalVariable(name: "status", scope: !633, file: !3, line: 282, type: !6)
!638 = !DILocalVariable(name: "errstring", scope: !633, file: !3, line: 283, type: !639)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 1024, elements: !641)
!640 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!641 = !{!642}
!642 = !DISubrange(count: 128)
!643 = !DILocalVariable(name: "n", scope: !633, file: !3, line: 296, type: !6)
!644 = !DILocalVariable(name: "i", scope: !645, file: !3, line: 307, type: !6)
!645 = distinct !DILexicalBlock(scope: !633, file: !3, line: 307, column: 5)
!646 = !DILocalVariable(name: "sum", scope: !633, file: !3, line: 318, type: !6)
!647 = !DILocalVariable(name: "i", scope: !648, file: !3, line: 320, type: !6)
!648 = distinct !DILexicalBlock(scope: !633, file: !3, line: 320, column: 5)
!649 = !DILocation(line: 283, column: 5, scope: !633)
!650 = !DILocation(line: 283, column: 10, scope: !633)
!651 = !DILocation(line: 285, column: 9, scope: !652)
!652 = distinct !DILexicalBlock(scope: !633, file: !3, line: 285, column: 9)
!653 = !DILocation(line: 285, column: 45, scope: !652)
!654 = !DILocation(line: 285, column: 9, scope: !633)
!655 = !DILocation(line: 286, column: 17, scope: !656)
!656 = distinct !DILexicalBlock(scope: !652, file: !3, line: 285, column: 66)
!657 = !DILocation(line: 286, column: 9, scope: !656)
!658 = !DILocation(line: 287, column: 9, scope: !656)
!659 = !DILocation(line: 291, column: 19, scope: !660)
!660 = distinct !DILexicalBlock(scope: !633, file: !3, line: 291, column: 9)
!661 = !DILocation(line: 0, scope: !633)
!662 = !DILocation(line: 291, column: 52, scope: !660)
!663 = !DILocation(line: 291, column: 9, scope: !633)
!664 = !DILocation(line: 291, column: 64, scope: !665)
!665 = distinct !DILexicalBlock(scope: !660, file: !3, line: 291, column: 64)
!666 = !DILocation(line: 294, column: 35, scope: !667)
!667 = distinct !DILexicalBlock(scope: !633, file: !3, line: 294, column: 9)
!668 = !DILocation(line: 294, column: 19, scope: !667)
!669 = !DILocation(line: 294, column: 69, scope: !667)
!670 = !DILocation(line: 294, column: 9, scope: !633)
!671 = !DILocation(line: 294, column: 81, scope: !672)
!672 = distinct !DILexicalBlock(scope: !667, file: !3, line: 294, column: 81)
!673 = !DILocation(line: 298, column: 9, scope: !633)
!674 = !DILocation(line: 298, column: 7, scope: !633)
!675 = !DILocation(line: 299, column: 9, scope: !633)
!676 = !DILocation(line: 299, column: 7, scope: !633)
!677 = !DILocation(line: 300, column: 9, scope: !633)
!678 = !DILocation(line: 300, column: 7, scope: !633)
!679 = !DILocation(line: 301, column: 12, scope: !633)
!680 = !DILocation(line: 301, column: 10, scope: !633)
!681 = !DILocation(line: 303, column: 13, scope: !633)
!682 = !DILocation(line: 305, column: 11, scope: !633)
!683 = !DILocation(line: 305, column: 5, scope: !633)
!684 = !DILocation(line: 0, scope: !645)
!685 = !DILocation(line: 307, column: 5, scope: !645)
!686 = !DILocation(line: 308, column: 9, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 307, column: 33)
!688 = distinct !DILexicalBlock(scope: !645, file: !3, line: 307, column: 5)
!689 = !DILocation(line: 308, column: 14, scope: !687)
!690 = !DILocation(line: 309, column: 9, scope: !687)
!691 = !DILocation(line: 309, column: 14, scope: !687)
!692 = !DILocation(line: 310, column: 9, scope: !687)
!693 = !DILocation(line: 310, column: 14, scope: !687)
!694 = !DILocation(line: 311, column: 22, scope: !687)
!695 = !DILocation(line: 311, column: 28, scope: !687)
!696 = !DILocation(line: 311, column: 9, scope: !687)
!697 = !DILocation(line: 311, column: 17, scope: !687)
!698 = !DILocation(line: 307, column: 28, scope: !688)
!699 = !DILocation(line: 307, column: 23, scope: !688)
!700 = distinct !{!700, !685, !701, !149, !150}
!701 = !DILocation(line: 312, column: 5, scope: !645)
!702 = !DILocation(line: 320, column: 5, scope: !648)
!703 = !DILocation(line: 321, column: 13, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 320, column: 33)
!705 = distinct !DILexicalBlock(scope: !648, file: !3, line: 320, column: 5)
!706 = !DILocation(line: 324, column: 5, scope: !633)
!707 = !DILocation(line: 326, column: 10, scope: !633)
!708 = !DILocation(line: 326, column: 5, scope: !633)
!709 = !DILocation(line: 327, column: 10, scope: !633)
!710 = !DILocation(line: 327, column: 5, scope: !633)
!711 = !DILocation(line: 328, column: 10, scope: !633)
!712 = !DILocation(line: 328, column: 5, scope: !633)
!713 = !DILocation(line: 329, column: 10, scope: !633)
!714 = !DILocation(line: 329, column: 5, scope: !633)
!715 = !DILocation(line: 331, column: 53, scope: !633)
!716 = !{!717, !717, i64 0}
!717 = !{!"long long", !64, i64 0}
!718 = !DILocation(line: 331, column: 5, scope: !633)
!719 = !DILocation(line: 332, column: 36, scope: !633)
!720 = !DILocation(line: 332, column: 5, scope: !633)
!721 = !DILocation(line: 333, column: 50, scope: !633)
!722 = !DILocation(line: 333, column: 5, scope: !633)
!723 = !DILocation(line: 334, column: 49, scope: !633)
!724 = !DILocation(line: 334, column: 5, scope: !633)
!725 = !DILocation(line: 335, column: 40, scope: !633)
!726 = !DILocation(line: 335, column: 5, scope: !633)
!727 = !DILocation(line: 337, column: 38, scope: !728)
!728 = distinct !DILexicalBlock(scope: !633, file: !3, line: 337, column: 9)
!729 = !DILocation(line: 337, column: 19, scope: !728)
!730 = !DILocation(line: 337, column: 72, scope: !728)
!731 = !DILocation(line: 337, column: 9, scope: !633)
!732 = !DILocation(line: 0, scope: !648)
!733 = !DILocation(line: 321, column: 16, scope: !704)
!734 = !DILocation(line: 320, column: 28, scope: !705)
!735 = !DILocation(line: 320, column: 23, scope: !705)
!736 = distinct !{!736, !702, !737, !149, !150}
!737 = !DILocation(line: 322, column: 5, scope: !648)
!738 = !DILocation(line: 337, column: 84, scope: !739)
!739 = distinct !DILexicalBlock(scope: !728, file: !3, line: 337, column: 84)
!740 = !DILocation(line: 340, column: 19, scope: !741)
!741 = distinct !DILexicalBlock(scope: !633, file: !3, line: 340, column: 9)
!742 = !DILocation(line: 340, column: 53, scope: !741)
!743 = !DILocation(line: 340, column: 9, scope: !633)
!744 = !DILocation(line: 340, column: 65, scope: !745)
!745 = distinct !DILexicalBlock(scope: !741, file: !3, line: 340, column: 65)
!746 = !DILocation(line: 343, column: 5, scope: !633)
!747 = !DILocation(line: 346, column: 1, scope: !633)
!748 = !DILocation(line: 345, column: 5, scope: !633)
!749 = !DISubprogram(name: "PAPI_library_init", scope: !160, file: !160, line: 1172, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!750 = !DISubprogram(name: "PAPI_create_eventset", scope: !160, file: !160, line: 1147, type: !751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!751 = !DISubroutineType(types: !752)
!752 = !{!6, !5}
!753 = !DISubprogram(name: "PAPI_add_events", scope: !160, file: !160, line: 1143, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!754 = !DISubroutineType(types: !755)
!755 = !{!6, !6, !5, !6}
!756 = !DISubprogram(name: "srand", scope: !757, file: !757, line: 455, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!757 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!758 = !DISubroutineType(types: !759)
!759 = !{null, !760}
!760 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!761 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!762 = !DISubroutineType(types: !763)
!763 = !{!764, !766}
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !765, line: 7, baseType: !52)
!765 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!767 = !DISubprogram(name: "PAPI_remove_events", scope: !160, file: !160, line: 1192, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!768 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !160, file: !160, line: 1149, type: !751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!769 = !DISubprogram(name: "PAPI_shutdown", scope: !160, file: !160, line: 1202, type: !770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!770 = !DISubroutineType(types: !771)
!771 = !{null}
