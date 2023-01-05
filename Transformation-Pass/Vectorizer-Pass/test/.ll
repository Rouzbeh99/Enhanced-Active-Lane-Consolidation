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
  call void @llvm.dbg.value(metadata ptr %a, metadata !169, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata ptr %b, metadata !170, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata ptr %c, metadata !171, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata ptr %cond, metadata !172, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata i32 %n, metadata !173, metadata !DIExpression()), !dbg !178
  %call = tail call double @getTimeMiliSeconds(), !dbg !179
  call void @llvm.dbg.value(metadata double %call, metadata !175, metadata !DIExpression()), !dbg !178
  %0 = load i32, ptr @EventSet, align 4, !dbg !180, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !182
  call void @llvm.dbg.value(metadata i32 %call1, metadata !174, metadata !DIExpression()), !dbg !178
  %cmp.not = icmp eq i32 %call1, 0, !dbg !183
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !184

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !176, metadata !DIExpression()), !dbg !185
  %cmp358 = icmp sgt i32 %n, 0, !dbg !186
  br i1 %cmp358, label %for.body.preheader, label %for.cond.cleanup, !dbg !188

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !186
  br label %for.body, !dbg !188

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !189, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 66) #11, !dbg !189
  tail call void @exit(i32 noundef %call1) #12, !dbg !189
  unreachable, !dbg !189

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !191

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !191, !tbaa !102
  %call30 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !193
  call void @llvm.dbg.value(metadata i32 %call30, metadata !174, metadata !DIExpression()), !dbg !178
  %cmp31.not = icmp eq i32 %call30, 0, !dbg !194
  br i1 %cmp31.not, label %if.end34, label %if.then32, !dbg !195

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !176, metadata !DIExpression()), !dbg !185
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !196
  %3 = load i8, ptr %arrayidx, align 1, !dbg !196, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !196
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !199

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !200
  %4 = load i32, ptr %arrayidx6, align 4, !dbg !200, !tbaa !102
  %add = add nsw i32 %4, 4, !dbg !202
  %arrayidx8 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !203
  store i32 %add, ptr %arrayidx8, align 4, !dbg !204, !tbaa !102
  %arrayidx10 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !205
  %5 = load i32, ptr %arrayidx10, align 4, !dbg !205, !tbaa !102
  %cmp13 = icmp slt i32 %5, %add, !dbg !207
  br i1 %cmp13, label %if.then14, label %if.end21, !dbg !208

if.then14:                                        ; preds = %if.then4
  %mul = mul nsw i32 %add, %4, !dbg !209
  store i32 %mul, ptr %arrayidx10, align 4, !dbg !211, !tbaa !102
  br label %if.end21, !dbg !212

if.end21:                                         ; preds = %if.then14, %if.then4
  %6 = phi i32 [ %mul, %if.then14 ], [ %5, %if.then4 ], !dbg !213
  %add26 = add nsw i32 %6, %add, !dbg !214
  store i32 %add26, ptr %arrayidx6, align 4, !dbg !215, !tbaa !102
  br label %for.inc, !dbg !216

for.inc:                                          ; preds = %if.end21, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !217
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !176, metadata !DIExpression()), !dbg !185
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !186
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !188, !llvm.loop !218

if.then32:                                        ; preds = %for.cond.cleanup
  %7 = load ptr, ptr @stderr, align 8, !dbg !220, !tbaa !113
  %call33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %call30, ptr noundef nonnull @.str.1, i32 noundef 81) #11, !dbg !220
  tail call void @exit(i32 noundef %call30) #12, !dbg !220
  unreachable, !dbg !220

if.end34:                                         ; preds = %for.cond.cleanup
  %call35 = tail call double @getTimeMiliSeconds(), !dbg !222
  %sub = fsub double %call35, %call, !dbg !223
  store double %sub, ptr @ExecutionTime, align 8, !dbg !224, !tbaa !156
  ret void, !dbg !225
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @nested_if_case_2(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !226 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !228, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %b, metadata !229, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %c, metadata !230, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %cond, metadata !231, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i32 %n, metadata !232, metadata !DIExpression()), !dbg !237
  %call = tail call double @getTimeMiliSeconds(), !dbg !238
  call void @llvm.dbg.value(metadata double %call, metadata !234, metadata !DIExpression()), !dbg !237
  %0 = load i32, ptr @EventSet, align 4, !dbg !239, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !241
  call void @llvm.dbg.value(metadata i32 %call1, metadata !233, metadata !DIExpression()), !dbg !237
  %cmp.not = icmp eq i32 %call1, 0, !dbg !242
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !243

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !235, metadata !DIExpression()), !dbg !244
  %cmp386 = icmp sgt i32 %n, 0, !dbg !245
  br i1 %cmp386, label %for.body.preheader, label %for.cond.cleanup, !dbg !247

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !245
  br label %for.body, !dbg !247

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !248, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 93) #11, !dbg !248
  tail call void @exit(i32 noundef %call1) #12, !dbg !248
  unreachable, !dbg !248

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !250

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !250, !tbaa !102
  %call46 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !252
  call void @llvm.dbg.value(metadata i32 %call46, metadata !233, metadata !DIExpression()), !dbg !237
  %cmp47.not = icmp eq i32 %call46, 0, !dbg !253
  br i1 %cmp47.not, label %if.end50, label %if.then48, !dbg !254

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !235, metadata !DIExpression()), !dbg !244
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !255
  %3 = load i8, ptr %arrayidx, align 1, !dbg !255, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !255
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !258

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !259
  %4 = load i32, ptr %arrayidx6, align 4, !dbg !259, !tbaa !102
  %add = add nsw i32 %4, 4, !dbg !261
  %arrayidx8 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !262
  store i32 %add, ptr %arrayidx8, align 4, !dbg !263, !tbaa !102
  %arrayidx10 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !264
  %5 = load i32, ptr %arrayidx10, align 4, !dbg !264, !tbaa !102
  %cmp13 = icmp slt i32 %5, %add, !dbg !266
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !267

if.then14:                                        ; preds = %if.then4
  %mul = mul nsw i32 %add, %4, !dbg !268
  br label %if.end37, !dbg !270

if.else:                                          ; preds = %if.then4
  %mul25 = mul nsw i32 %5, %4, !dbg !271
  %cmp32 = icmp sgt i32 %mul25, %add, !dbg !273
  %spec.store.select = select i1 %cmp32, i32 0, i32 %mul25, !dbg !275
  br label %if.end37, !dbg !275

if.end37:                                         ; preds = %if.else, %if.then14
  %storemerge = phi i32 [ %spec.store.select, %if.else ], [ %mul, %if.then14 ], !dbg !276
  store i32 %storemerge, ptr %arrayidx10, align 4, !dbg !276
  %add42 = add nsw i32 %storemerge, %add, !dbg !277
  store i32 %add42, ptr %arrayidx6, align 4, !dbg !278, !tbaa !102
  br label %for.inc, !dbg !279

for.inc:                                          ; preds = %if.end37, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !280
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !235, metadata !DIExpression()), !dbg !244
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !245
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !247, !llvm.loop !281

if.then48:                                        ; preds = %for.cond.cleanup
  %6 = load ptr, ptr @stderr, align 8, !dbg !283, !tbaa !113
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef %call46, ptr noundef nonnull @.str.1, i32 noundef 113) #11, !dbg !283
  tail call void @exit(i32 noundef %call46) #12, !dbg !283
  unreachable, !dbg !283

if.end50:                                         ; preds = %for.cond.cleanup
  %call51 = tail call double @getTimeMiliSeconds(), !dbg !285
  %sub = fsub double %call51, %call, !dbg !286
  store double %sub, ptr @ExecutionTime, align 8, !dbg !287, !tbaa !156
  ret void, !dbg !288
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @perfect_nested_if_case_1(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !289 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !291, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata ptr %b, metadata !292, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata ptr %c, metadata !293, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata ptr %cond, metadata !294, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i32 %n, metadata !295, metadata !DIExpression()), !dbg !300
  %call = tail call double @getTimeMiliSeconds(), !dbg !301
  call void @llvm.dbg.value(metadata double %call, metadata !297, metadata !DIExpression()), !dbg !300
  %0 = load i32, ptr @EventSet, align 4, !dbg !302, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !304
  call void @llvm.dbg.value(metadata i32 %call1, metadata !296, metadata !DIExpression()), !dbg !300
  %cmp.not = icmp eq i32 %call1, 0, !dbg !305
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !306

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !298, metadata !DIExpression()), !dbg !307
  %cmp349 = icmp sgt i32 %n, 0, !dbg !308
  br i1 %cmp349, label %for.body.preheader, label %for.cond.cleanup, !dbg !310

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !308
  br label %for.body, !dbg !310

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !311, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 125) #11, !dbg !311
  tail call void @exit(i32 noundef %call1) #12, !dbg !311
  unreachable, !dbg !311

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !313

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !313, !tbaa !102
  %call26 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !315
  call void @llvm.dbg.value(metadata i32 %call26, metadata !296, metadata !DIExpression()), !dbg !300
  %cmp27.not = icmp eq i32 %call26, 0, !dbg !316
  br i1 %cmp27.not, label %if.end30, label %if.then28, !dbg !317

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !298, metadata !DIExpression()), !dbg !307
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !318
  %3 = load i8, ptr %arrayidx, align 1, !dbg !318, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !318
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !321

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !322
  %4 = load i32, ptr %arrayidx6, align 4, !dbg !322, !tbaa !102
  %arrayidx8 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !325
  %5 = load i32, ptr %arrayidx8, align 4, !dbg !325, !tbaa !102
  %cmp9 = icmp sgt i32 %4, %5, !dbg !326
  br i1 %cmp9, label %if.then10, label %for.inc, !dbg !327

if.then10:                                        ; preds = %if.then4
  %arrayidx12 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !328
  %6 = load i32, ptr %arrayidx12, align 4, !dbg !328, !tbaa !102
  %cmp15 = icmp sgt i32 %6, %5, !dbg !331
  br i1 %cmp15, label %if.then16, label %for.inc, !dbg !332

if.then16:                                        ; preds = %if.then10
  %add = add nsw i32 %5, %4, !dbg !333
  store i32 %add, ptr %arrayidx12, align 4, !dbg !335, !tbaa !102
  br label %for.inc, !dbg !336

for.inc:                                          ; preds = %if.then16, %if.then10, %if.then4, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !337
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !298, metadata !DIExpression()), !dbg !307
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !308
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !310, !llvm.loop !338

if.then28:                                        ; preds = %for.cond.cleanup
  %7 = load ptr, ptr @stderr, align 8, !dbg !340, !tbaa !113
  %call29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %call26, ptr noundef nonnull @.str.1, i32 noundef 140) #11, !dbg !340
  tail call void @exit(i32 noundef %call26) #12, !dbg !340
  unreachable, !dbg !340

if.end30:                                         ; preds = %for.cond.cleanup
  %call31 = tail call double @getTimeMiliSeconds(), !dbg !342
  %sub = fsub double %call31, %call, !dbg !343
  store double %sub, ptr @ExecutionTime, align 8, !dbg !344, !tbaa !156
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @perfect_nested_if_case_2(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !346 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !348, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata ptr %b, metadata !349, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata ptr %c, metadata !350, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata ptr %cond, metadata !351, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i32 %n, metadata !352, metadata !DIExpression()), !dbg !357
  %call = tail call double @getTimeMiliSeconds(), !dbg !358
  call void @llvm.dbg.value(metadata double %call, metadata !354, metadata !DIExpression()), !dbg !357
  %0 = load i32, ptr @EventSet, align 4, !dbg !359, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !361
  call void @llvm.dbg.value(metadata i32 %call1, metadata !353, metadata !DIExpression()), !dbg !357
  %cmp.not = icmp eq i32 %call1, 0, !dbg !362
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !363

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !355, metadata !DIExpression()), !dbg !364
  %cmp362 = icmp sgt i32 %n, 0, !dbg !365
  br i1 %cmp362, label %for.body.preheader, label %for.cond.cleanup, !dbg !367

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !365
  br label %for.body, !dbg !367

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !368, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 152) #11, !dbg !368
  tail call void @exit(i32 noundef %call1) #12, !dbg !368
  unreachable, !dbg !368

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !370

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !370, !tbaa !102
  %call32 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !372
  call void @llvm.dbg.value(metadata i32 %call32, metadata !353, metadata !DIExpression()), !dbg !357
  %cmp33.not = icmp eq i32 %call32, 0, !dbg !373
  br i1 %cmp33.not, label %if.end36, label %if.then34, !dbg !374

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !355, metadata !DIExpression()), !dbg !364
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !375
  %3 = load i8, ptr %arrayidx, align 1, !dbg !375, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !375
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !378

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !379
  %4 = load i32, ptr %arrayidx6, align 4, !dbg !379, !tbaa !102
  %arrayidx8 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !382
  %5 = load i32, ptr %arrayidx8, align 4, !dbg !382, !tbaa !102
  %cmp9 = icmp sgt i32 %4, %5, !dbg !383
  br i1 %cmp9, label %if.then10, label %for.inc, !dbg !384

if.then10:                                        ; preds = %if.then4
  %arrayidx12 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !385
  %6 = load i32, ptr %arrayidx12, align 4, !dbg !385, !tbaa !102
  %cmp15 = icmp sgt i32 %6, %5, !dbg !388
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !389

if.then16:                                        ; preds = %if.then10
  %add = add nsw i32 %5, %4, !dbg !390
  store i32 %add, ptr %arrayidx12, align 4, !dbg !392, !tbaa !102
  br label %for.inc, !dbg !393

if.else:                                          ; preds = %if.then10
  %sub = sub nsw i32 %4, %5, !dbg !394
  store i32 %sub, ptr %arrayidx6, align 4, !dbg !396, !tbaa !102
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then16, %if.then4, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !397
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !355, metadata !DIExpression()), !dbg !364
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !365
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !367, !llvm.loop !398

if.then34:                                        ; preds = %for.cond.cleanup
  %7 = load ptr, ptr @stderr, align 8, !dbg !400, !tbaa !113
  %call35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %call32, ptr noundef nonnull @.str.1, i32 noundef 169) #11, !dbg !400
  tail call void @exit(i32 noundef %call32) #12, !dbg !400
  unreachable, !dbg !400

if.end36:                                         ; preds = %for.cond.cleanup
  %call37 = tail call double @getTimeMiliSeconds(), !dbg !402
  %sub38 = fsub double %call37, %call, !dbg !403
  store double %sub38, ptr @ExecutionTime, align 8, !dbg !404, !tbaa !156
  ret void, !dbg !405
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_if_else(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !406 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !408, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata ptr %b, metadata !409, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata ptr %c, metadata !410, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata ptr %cond, metadata !411, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.value(metadata i32 %n, metadata !412, metadata !DIExpression()), !dbg !417
  %call = tail call double @getTimeMiliSeconds(), !dbg !418
  call void @llvm.dbg.value(metadata double %call, metadata !414, metadata !DIExpression()), !dbg !417
  %0 = load i32, ptr @EventSet, align 4, !dbg !419, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #10, !dbg !421
  call void @llvm.dbg.value(metadata i32 %call1, metadata !413, metadata !DIExpression()), !dbg !417
  %cmp.not = icmp eq i32 %call1, 0, !dbg !422
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !423

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !415, metadata !DIExpression()), !dbg !424
  %cmp339 = icmp sgt i32 %n, 0, !dbg !425
  br i1 %cmp339, label %for.body.preheader, label %for.cond.cleanup, !dbg !427

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !425
  br label %for.body, !dbg !427

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !428, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 182) #11, !dbg !428
  tail call void @exit(i32 noundef %call1) #12, !dbg !428
  unreachable, !dbg !428

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !430

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !430, !tbaa !102
  %call18 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !432
  call void @llvm.dbg.value(metadata i32 %call18, metadata !413, metadata !DIExpression()), !dbg !417
  %cmp19.not = icmp eq i32 %call18, 0, !dbg !433
  br i1 %cmp19.not, label %if.end22, label %if.then20, !dbg !434

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !415, metadata !DIExpression()), !dbg !424
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !435
  %3 = load i8, ptr %arrayidx, align 1, !dbg !435, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !435
  %arrayidx12 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !438
  %4 = load i32, ptr %arrayidx12, align 4, !dbg !438, !tbaa !102
  %arrayidx14 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !438
  %5 = load i32, ptr %arrayidx14, align 4, !dbg !438, !tbaa !102
  br i1 %tobool.not, label %if.else, label %if.then4, !dbg !439

if.then4:                                         ; preds = %for.body
  %add = add nsw i32 %5, %4, !dbg !440
  %arrayidx10 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !442
  store i32 %add, ptr %arrayidx10, align 4, !dbg !443, !tbaa !102
  br label %for.inc, !dbg !444

if.else:                                          ; preds = %for.body
  %sub = sub nsw i32 %4, %5, !dbg !445
  store i32 %sub, ptr %arrayidx12, align 4, !dbg !447, !tbaa !102
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !448
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !415, metadata !DIExpression()), !dbg !424
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !425
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !427, !llvm.loop !449

if.then20:                                        ; preds = %for.cond.cleanup
  %6 = load ptr, ptr @stderr, align 8, !dbg !451, !tbaa !113
  %call21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef %call18, ptr noundef nonnull @.str.1, i32 noundef 195) #11, !dbg !451
  tail call void @exit(i32 noundef %call18) #12, !dbg !451
  unreachable, !dbg !451

if.end22:                                         ; preds = %for.cond.cleanup
  %call23 = tail call double @getTimeMiliSeconds(), !dbg !453
  %sub24 = fsub double %call23, %call, !dbg !454
  store double %sub24, ptr @ExecutionTime, align 8, !dbg !455, !tbaa !156
  ret void, !dbg !456
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !457 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !461, metadata !DIExpression()), !dbg !463
  %conv = sext i32 %n to i64, !dbg !464
  %mul = shl nsw i64 %conv, 2, !dbg !465
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #13, !dbg !466
  call void @llvm.dbg.value(metadata ptr %call, metadata !462, metadata !DIExpression()), !dbg !463
  %cmp = icmp eq ptr %call, null, !dbg !467
  br i1 %cmp, label %if.then, label %if.end, !dbg !469

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !470
  tail call void @exit(i32 noundef 1) #12, !dbg !472
  unreachable, !dbg !472

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !473
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !474 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !478, metadata !DIExpression()), !dbg !480
  %conv = sext i32 %n to i64, !dbg !481
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #13, !dbg !482
  call void @llvm.dbg.value(metadata ptr %call, metadata !479, metadata !DIExpression()), !dbg !480
  %cmp = icmp eq ptr %call, null, !dbg !483
  br i1 %cmp, label %if.then, label %if.end, !dbg !485

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !486
  tail call void @exit(i32 noundef 1) #12, !dbg !488
  unreachable, !dbg !488

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !489
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !490 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #10, !dbg !506
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !495, metadata !DIExpression()), !dbg !507
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #10, !dbg !508
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !510
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !511

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !512, !tbaa !113
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #11, !dbg !514
  call void @exit(i32 noundef 1) #12, !dbg !515
  unreachable, !dbg !515

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #10, !dbg !516
  call void @llvm.dbg.value(metadata i32 %call2, metadata !494, metadata !DIExpression()), !dbg !518
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !519
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !520

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !521, !tbaa !113
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 233) #11, !dbg !521
  tail call void @exit(i32 noundef %call2) #12, !dbg !521
  unreachable, !dbg !521

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !523, !tbaa !102
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #10, !dbg !525
  call void @llvm.dbg.value(metadata i32 %call7, metadata !494, metadata !DIExpression()), !dbg !518
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !526
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !527

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !528, !tbaa !113
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 236) #11, !dbg !528
  tail call void @exit(i32 noundef %call7) #12, !dbg !528
  unreachable, !dbg !528

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 5000000, metadata !500, metadata !DIExpression()), !dbg !518
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !530
  store ptr %call12, ptr @a, align 8, !dbg !531, !tbaa !113
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !532
  store ptr %call13, ptr @b, align 8, !dbg !533, !tbaa !113
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !534
  store ptr %call14, ptr @c, align 8, !dbg !535, !tbaa !113
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !536
  store ptr %call15, ptr @cond, align 8, !dbg !537, !tbaa !113
  store i8 0, ptr %call15, align 1, !dbg !538, !tbaa !123
  %call16 = tail call i64 @time(ptr noundef null) #10, !dbg !539
  %conv = trunc i64 %call16 to i32, !dbg !539
  tail call void @srand(i32 noundef %conv) #10, !dbg !540
  call void @llvm.dbg.value(metadata i32 0, metadata !501, metadata !DIExpression()), !dbg !541
  %4 = load ptr, ptr @a, align 8, !tbaa !113
  %5 = load ptr, ptr @b, align 8, !tbaa !113
  %6 = load ptr, ptr @c, align 8, !tbaa !113
  %7 = load ptr, ptr @cond, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !501, metadata !DIExpression()), !dbg !541
  br label %for.body, !dbg !542

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !501, metadata !DIExpression()), !dbg !541
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !543
  %8 = trunc i64 %indvars.iv to i32, !dbg !546
  store i32 %8, ptr %arrayidx19, align 4, !dbg !546, !tbaa !102
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !547
  store i32 2, ptr %arrayidx21, align 4, !dbg !548, !tbaa !102
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !549
  store i32 0, ptr %arrayidx23, align 4, !dbg !550, !tbaa !102
  %rem = urem i32 %8, 100, !dbg !551
  %cmp24 = icmp ult i32 %rem, 40, !dbg !552
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !553
  %frombool = zext i1 %cmp24 to i8, !dbg !554
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !554, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !555
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !501, metadata !DIExpression()), !dbg !541
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !556
  br i1 %exitcond.not, label %for.body33.preheader, label %for.body, !dbg !542, !llvm.loop !557

for.body33.preheader:                             ; preds = %for.body
  br label %for.body33, !dbg !559

for.cond.cleanup32:                               ; preds = %for.body33
  %add.lcssa = phi i32 [ %add, %for.body33 ], !dbg !560
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add.lcssa), !dbg !563
  %9 = load ptr, ptr @a, align 8, !dbg !564, !tbaa !113
  tail call void @free(ptr noundef %9) #10, !dbg !565
  %10 = load ptr, ptr @b, align 8, !dbg !566, !tbaa !113
  tail call void @free(ptr noundef %10) #10, !dbg !567
  %11 = load ptr, ptr @c, align 8, !dbg !568, !tbaa !113
  tail call void @free(ptr noundef %11) #10, !dbg !569
  %12 = load ptr, ptr @cond, align 8, !dbg !570, !tbaa !113
  tail call void @free(ptr noundef %12) #10, !dbg !571
  %13 = load i64, ptr @CounterValues, align 8, !dbg !572, !tbaa !573
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %13), !dbg !575
  %14 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !576, !tbaa !573
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %14), !dbg !577
  %15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !578, !tbaa !573
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %15), !dbg !579
  %16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !580, !tbaa !573
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %16), !dbg !581
  %17 = load double, ptr @ExecutionTime, align 8, !dbg !582, !tbaa !156
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %17), !dbg !583
  %18 = load i32, ptr @EventSet, align 4, !dbg !584, !tbaa !102
  %call45 = tail call i32 @PAPI_remove_events(i32 noundef %18, ptr noundef nonnull @EventCodes, i32 noundef 4) #10, !dbg !586
  call void @llvm.dbg.value(metadata i32 %call45, metadata !494, metadata !DIExpression()), !dbg !518
  %cmp46.not = icmp eq i32 %call45, 0, !dbg !587
  br i1 %cmp46.not, label %if.end50, label %if.then48, !dbg !588

for.body33:                                       ; preds = %for.body33.preheader, %for.body33
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.body33 ], [ 0, %for.body33.preheader ]
  %sum.080 = phi i32 [ %add, %for.body33 ], [ 0, %for.body33.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv83, metadata !504, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i32 %sum.080, metadata !503, metadata !DIExpression()), !dbg !518
  %arrayidx35 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv83, !dbg !590
  %19 = load i32, ptr %arrayidx35, align 4, !dbg !590, !tbaa !102
  %add = add nsw i32 %19, %sum.080, !dbg !560
  call void @llvm.dbg.value(metadata i32 %add, metadata !503, metadata !DIExpression()), !dbg !518
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1, !dbg !591
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next84, metadata !504, metadata !DIExpression()), !dbg !589
  %exitcond86.not = icmp eq i64 %indvars.iv.next84, 5000000, !dbg !592
  br i1 %exitcond86.not, label %for.cond.cleanup32, label %for.body33, !dbg !559, !llvm.loop !593

if.then48:                                        ; preds = %for.cond.cleanup32
  %20 = load ptr, ptr @stderr, align 8, !dbg !595, !tbaa !113
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef %call45, ptr noundef nonnull @.str.1, i32 noundef 279) #11, !dbg !595
  tail call void @exit(i32 noundef %call45) #12, !dbg !595
  unreachable, !dbg !595

if.end50:                                         ; preds = %for.cond.cleanup32
  %call51 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #10, !dbg !597
  call void @llvm.dbg.value(metadata i32 %call51, metadata !494, metadata !DIExpression()), !dbg !518
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !599
  br i1 %cmp52.not, label %if.end56, label %if.then54, !dbg !600

if.then54:                                        ; preds = %if.end50
  %21 = load ptr, ptr @stderr, align 8, !dbg !601, !tbaa !113
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %call51, ptr noundef nonnull @.str.1, i32 noundef 282) #11, !dbg !601
  tail call void @exit(i32 noundef %call51) #12, !dbg !601
  unreachable, !dbg !601

if.end56:                                         ; preds = %if.end50
  tail call void @PAPI_shutdown() #10, !dbg !603
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #10, !dbg !604
  ret i32 0, !dbg !605
}

declare !dbg !606 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !607 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !610 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !613 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !618 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !624 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !625 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !626 void @PAPI_shutdown() local_unnamed_addr #4

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
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "7c1c0a4658fe87b3316355b9a84fdb85")
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
!24 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 200, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 201, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 202, type: !5, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 203, type: !8, isLocal: false, isDefinition: true)
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
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176}
!169 = !DILocalVariable(name: "a", arg: 1, scope: !167, file: !3, line: 59, type: !86)
!170 = !DILocalVariable(name: "b", arg: 2, scope: !167, file: !3, line: 59, type: !86)
!171 = !DILocalVariable(name: "c", arg: 3, scope: !167, file: !3, line: 59, type: !86)
!172 = !DILocalVariable(name: "cond", arg: 4, scope: !167, file: !3, line: 60, type: !87)
!173 = !DILocalVariable(name: "n", arg: 5, scope: !167, file: !3, line: 60, type: !6)
!174 = !DILocalVariable(name: "status", scope: !167, file: !3, line: 62, type: !6)
!175 = !DILocalVariable(name: "t", scope: !167, file: !3, line: 64, type: !22)
!176 = !DILocalVariable(name: "i", scope: !177, file: !3, line: 69, type: !6)
!177 = distinct !DILexicalBlock(scope: !167, file: !3, line: 69, column: 5)
!178 = !DILocation(line: 0, scope: !167)
!179 = !DILocation(line: 64, column: 16, scope: !167)
!180 = !DILocation(line: 66, column: 30, scope: !181)
!181 = distinct !DILexicalBlock(scope: !167, file: !3, line: 66, column: 9)
!182 = !DILocation(line: 66, column: 19, scope: !181)
!183 = !DILocation(line: 66, column: 41, scope: !181)
!184 = !DILocation(line: 66, column: 9, scope: !167)
!185 = !DILocation(line: 0, scope: !177)
!186 = !DILocation(line: 69, column: 23, scope: !187)
!187 = distinct !DILexicalBlock(scope: !177, file: !3, line: 69, column: 5)
!188 = !DILocation(line: 69, column: 5, scope: !177)
!189 = !DILocation(line: 66, column: 53, scope: !190)
!190 = distinct !DILexicalBlock(scope: !181, file: !3, line: 66, column: 53)
!191 = !DILocation(line: 81, column: 29, scope: !192)
!192 = distinct !DILexicalBlock(scope: !167, file: !3, line: 81, column: 9)
!193 = !DILocation(line: 81, column: 19, scope: !192)
!194 = !DILocation(line: 81, column: 55, scope: !192)
!195 = !DILocation(line: 81, column: 9, scope: !167)
!196 = !DILocation(line: 70, column: 13, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !3, line: 70, column: 13)
!198 = distinct !DILexicalBlock(scope: !187, file: !3, line: 69, column: 33)
!199 = !DILocation(line: 70, column: 13, scope: !198)
!200 = !DILocation(line: 71, column: 20, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !3, line: 70, column: 22)
!202 = !DILocation(line: 71, column: 25, scope: !201)
!203 = !DILocation(line: 71, column: 13, scope: !201)
!204 = !DILocation(line: 71, column: 18, scope: !201)
!205 = !DILocation(line: 72, column: 17, scope: !206)
!206 = distinct !DILexicalBlock(scope: !201, file: !3, line: 72, column: 17)
!207 = !DILocation(line: 72, column: 22, scope: !206)
!208 = !DILocation(line: 72, column: 17, scope: !201)
!209 = !DILocation(line: 73, column: 29, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !3, line: 72, column: 30)
!211 = !DILocation(line: 73, column: 22, scope: !210)
!212 = !DILocation(line: 74, column: 13, scope: !210)
!213 = !DILocation(line: 75, column: 27, scope: !201)
!214 = !DILocation(line: 75, column: 25, scope: !201)
!215 = !DILocation(line: 75, column: 18, scope: !201)
!216 = !DILocation(line: 76, column: 9, scope: !201)
!217 = !DILocation(line: 69, column: 28, scope: !187)
!218 = distinct !{!218, !188, !219, !149, !150}
!219 = !DILocation(line: 77, column: 5, scope: !177)
!220 = !DILocation(line: 81, column: 67, scope: !221)
!221 = distinct !DILexicalBlock(scope: !192, file: !3, line: 81, column: 67)
!222 = !DILocation(line: 83, column: 21, scope: !167)
!223 = !DILocation(line: 83, column: 42, scope: !167)
!224 = !DILocation(line: 83, column: 19, scope: !167)
!225 = !DILocation(line: 84, column: 1, scope: !167)
!226 = distinct !DISubprogram(name: "nested_if_case_2", scope: !3, file: !3, line: 86, type: !84, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235}
!228 = !DILocalVariable(name: "a", arg: 1, scope: !226, file: !3, line: 86, type: !86)
!229 = !DILocalVariable(name: "b", arg: 2, scope: !226, file: !3, line: 86, type: !86)
!230 = !DILocalVariable(name: "c", arg: 3, scope: !226, file: !3, line: 86, type: !86)
!231 = !DILocalVariable(name: "cond", arg: 4, scope: !226, file: !3, line: 87, type: !87)
!232 = !DILocalVariable(name: "n", arg: 5, scope: !226, file: !3, line: 87, type: !6)
!233 = !DILocalVariable(name: "status", scope: !226, file: !3, line: 89, type: !6)
!234 = !DILocalVariable(name: "t", scope: !226, file: !3, line: 91, type: !22)
!235 = !DILocalVariable(name: "i", scope: !236, file: !3, line: 96, type: !6)
!236 = distinct !DILexicalBlock(scope: !226, file: !3, line: 96, column: 5)
!237 = !DILocation(line: 0, scope: !226)
!238 = !DILocation(line: 91, column: 16, scope: !226)
!239 = !DILocation(line: 93, column: 30, scope: !240)
!240 = distinct !DILexicalBlock(scope: !226, file: !3, line: 93, column: 9)
!241 = !DILocation(line: 93, column: 19, scope: !240)
!242 = !DILocation(line: 93, column: 41, scope: !240)
!243 = !DILocation(line: 93, column: 9, scope: !226)
!244 = !DILocation(line: 0, scope: !236)
!245 = !DILocation(line: 96, column: 23, scope: !246)
!246 = distinct !DILexicalBlock(scope: !236, file: !3, line: 96, column: 5)
!247 = !DILocation(line: 96, column: 5, scope: !236)
!248 = !DILocation(line: 93, column: 53, scope: !249)
!249 = distinct !DILexicalBlock(scope: !240, file: !3, line: 93, column: 53)
!250 = !DILocation(line: 113, column: 29, scope: !251)
!251 = distinct !DILexicalBlock(scope: !226, file: !3, line: 113, column: 9)
!252 = !DILocation(line: 113, column: 19, scope: !251)
!253 = !DILocation(line: 113, column: 55, scope: !251)
!254 = !DILocation(line: 113, column: 9, scope: !226)
!255 = !DILocation(line: 97, column: 13, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 97, column: 13)
!257 = distinct !DILexicalBlock(scope: !246, file: !3, line: 96, column: 33)
!258 = !DILocation(line: 97, column: 13, scope: !257)
!259 = !DILocation(line: 98, column: 20, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !3, line: 97, column: 22)
!261 = !DILocation(line: 98, column: 25, scope: !260)
!262 = !DILocation(line: 98, column: 13, scope: !260)
!263 = !DILocation(line: 98, column: 18, scope: !260)
!264 = !DILocation(line: 99, column: 17, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !3, line: 99, column: 17)
!266 = !DILocation(line: 99, column: 22, scope: !265)
!267 = !DILocation(line: 99, column: 17, scope: !260)
!268 = !DILocation(line: 100, column: 29, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !3, line: 99, column: 30)
!270 = !DILocation(line: 101, column: 13, scope: !269)
!271 = !DILocation(line: 102, column: 29, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !3, line: 101, column: 20)
!273 = !DILocation(line: 103, column: 26, scope: !274)
!274 = distinct !DILexicalBlock(scope: !272, file: !3, line: 103, column: 21)
!275 = !DILocation(line: 103, column: 21, scope: !272)
!276 = !DILocation(line: 0, scope: !265)
!277 = !DILocation(line: 107, column: 25, scope: !260)
!278 = !DILocation(line: 107, column: 18, scope: !260)
!279 = !DILocation(line: 108, column: 9, scope: !260)
!280 = !DILocation(line: 96, column: 28, scope: !246)
!281 = distinct !{!281, !247, !282, !149, !150}
!282 = !DILocation(line: 109, column: 5, scope: !236)
!283 = !DILocation(line: 113, column: 67, scope: !284)
!284 = distinct !DILexicalBlock(scope: !251, file: !3, line: 113, column: 67)
!285 = !DILocation(line: 115, column: 21, scope: !226)
!286 = !DILocation(line: 115, column: 42, scope: !226)
!287 = !DILocation(line: 115, column: 19, scope: !226)
!288 = !DILocation(line: 116, column: 1, scope: !226)
!289 = distinct !DISubprogram(name: "perfect_nested_if_case_1", scope: !3, file: !3, line: 118, type: !84, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298}
!291 = !DILocalVariable(name: "a", arg: 1, scope: !289, file: !3, line: 118, type: !86)
!292 = !DILocalVariable(name: "b", arg: 2, scope: !289, file: !3, line: 118, type: !86)
!293 = !DILocalVariable(name: "c", arg: 3, scope: !289, file: !3, line: 118, type: !86)
!294 = !DILocalVariable(name: "cond", arg: 4, scope: !289, file: !3, line: 119, type: !87)
!295 = !DILocalVariable(name: "n", arg: 5, scope: !289, file: !3, line: 119, type: !6)
!296 = !DILocalVariable(name: "status", scope: !289, file: !3, line: 121, type: !6)
!297 = !DILocalVariable(name: "t", scope: !289, file: !3, line: 123, type: !22)
!298 = !DILocalVariable(name: "i", scope: !299, file: !3, line: 128, type: !6)
!299 = distinct !DILexicalBlock(scope: !289, file: !3, line: 128, column: 5)
!300 = !DILocation(line: 0, scope: !289)
!301 = !DILocation(line: 123, column: 16, scope: !289)
!302 = !DILocation(line: 125, column: 30, scope: !303)
!303 = distinct !DILexicalBlock(scope: !289, file: !3, line: 125, column: 9)
!304 = !DILocation(line: 125, column: 19, scope: !303)
!305 = !DILocation(line: 125, column: 41, scope: !303)
!306 = !DILocation(line: 125, column: 9, scope: !289)
!307 = !DILocation(line: 0, scope: !299)
!308 = !DILocation(line: 128, column: 23, scope: !309)
!309 = distinct !DILexicalBlock(scope: !299, file: !3, line: 128, column: 5)
!310 = !DILocation(line: 128, column: 5, scope: !299)
!311 = !DILocation(line: 125, column: 53, scope: !312)
!312 = distinct !DILexicalBlock(scope: !303, file: !3, line: 125, column: 53)
!313 = !DILocation(line: 140, column: 29, scope: !314)
!314 = distinct !DILexicalBlock(scope: !289, file: !3, line: 140, column: 9)
!315 = !DILocation(line: 140, column: 19, scope: !314)
!316 = !DILocation(line: 140, column: 55, scope: !314)
!317 = !DILocation(line: 140, column: 9, scope: !289)
!318 = !DILocation(line: 129, column: 13, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !3, line: 129, column: 13)
!320 = distinct !DILexicalBlock(scope: !309, file: !3, line: 128, column: 33)
!321 = !DILocation(line: 129, column: 13, scope: !320)
!322 = !DILocation(line: 130, column: 17, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !3, line: 130, column: 17)
!324 = distinct !DILexicalBlock(scope: !319, file: !3, line: 129, column: 22)
!325 = !DILocation(line: 130, column: 24, scope: !323)
!326 = !DILocation(line: 130, column: 22, scope: !323)
!327 = !DILocation(line: 130, column: 17, scope: !324)
!328 = !DILocation(line: 131, column: 21, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !3, line: 131, column: 21)
!330 = distinct !DILexicalBlock(scope: !323, file: !3, line: 130, column: 30)
!331 = !DILocation(line: 131, column: 26, scope: !329)
!332 = !DILocation(line: 131, column: 21, scope: !330)
!333 = !DILocation(line: 132, column: 33, scope: !334)
!334 = distinct !DILexicalBlock(scope: !329, file: !3, line: 131, column: 34)
!335 = !DILocation(line: 132, column: 26, scope: !334)
!336 = !DILocation(line: 133, column: 17, scope: !334)
!337 = !DILocation(line: 128, column: 28, scope: !309)
!338 = distinct !{!338, !310, !339, !149, !150}
!339 = !DILocation(line: 136, column: 5, scope: !299)
!340 = !DILocation(line: 140, column: 67, scope: !341)
!341 = distinct !DILexicalBlock(scope: !314, file: !3, line: 140, column: 67)
!342 = !DILocation(line: 142, column: 21, scope: !289)
!343 = !DILocation(line: 142, column: 42, scope: !289)
!344 = !DILocation(line: 142, column: 19, scope: !289)
!345 = !DILocation(line: 143, column: 1, scope: !289)
!346 = distinct !DISubprogram(name: "perfect_nested_if_case_2", scope: !3, file: !3, line: 145, type: !84, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355}
!348 = !DILocalVariable(name: "a", arg: 1, scope: !346, file: !3, line: 145, type: !86)
!349 = !DILocalVariable(name: "b", arg: 2, scope: !346, file: !3, line: 145, type: !86)
!350 = !DILocalVariable(name: "c", arg: 3, scope: !346, file: !3, line: 145, type: !86)
!351 = !DILocalVariable(name: "cond", arg: 4, scope: !346, file: !3, line: 146, type: !87)
!352 = !DILocalVariable(name: "n", arg: 5, scope: !346, file: !3, line: 146, type: !6)
!353 = !DILocalVariable(name: "status", scope: !346, file: !3, line: 148, type: !6)
!354 = !DILocalVariable(name: "t", scope: !346, file: !3, line: 150, type: !22)
!355 = !DILocalVariable(name: "i", scope: !356, file: !3, line: 155, type: !6)
!356 = distinct !DILexicalBlock(scope: !346, file: !3, line: 155, column: 5)
!357 = !DILocation(line: 0, scope: !346)
!358 = !DILocation(line: 150, column: 16, scope: !346)
!359 = !DILocation(line: 152, column: 30, scope: !360)
!360 = distinct !DILexicalBlock(scope: !346, file: !3, line: 152, column: 9)
!361 = !DILocation(line: 152, column: 19, scope: !360)
!362 = !DILocation(line: 152, column: 41, scope: !360)
!363 = !DILocation(line: 152, column: 9, scope: !346)
!364 = !DILocation(line: 0, scope: !356)
!365 = !DILocation(line: 155, column: 23, scope: !366)
!366 = distinct !DILexicalBlock(scope: !356, file: !3, line: 155, column: 5)
!367 = !DILocation(line: 155, column: 5, scope: !356)
!368 = !DILocation(line: 152, column: 53, scope: !369)
!369 = distinct !DILexicalBlock(scope: !360, file: !3, line: 152, column: 53)
!370 = !DILocation(line: 169, column: 29, scope: !371)
!371 = distinct !DILexicalBlock(scope: !346, file: !3, line: 169, column: 9)
!372 = !DILocation(line: 169, column: 19, scope: !371)
!373 = !DILocation(line: 169, column: 55, scope: !371)
!374 = !DILocation(line: 169, column: 9, scope: !346)
!375 = !DILocation(line: 156, column: 13, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !3, line: 156, column: 13)
!377 = distinct !DILexicalBlock(scope: !366, file: !3, line: 155, column: 33)
!378 = !DILocation(line: 156, column: 13, scope: !377)
!379 = !DILocation(line: 157, column: 17, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !3, line: 157, column: 17)
!381 = distinct !DILexicalBlock(scope: !376, file: !3, line: 156, column: 22)
!382 = !DILocation(line: 157, column: 24, scope: !380)
!383 = !DILocation(line: 157, column: 22, scope: !380)
!384 = !DILocation(line: 157, column: 17, scope: !381)
!385 = !DILocation(line: 158, column: 21, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !3, line: 158, column: 21)
!387 = distinct !DILexicalBlock(scope: !380, file: !3, line: 157, column: 30)
!388 = !DILocation(line: 158, column: 26, scope: !386)
!389 = !DILocation(line: 158, column: 21, scope: !387)
!390 = !DILocation(line: 159, column: 33, scope: !391)
!391 = distinct !DILexicalBlock(scope: !386, file: !3, line: 158, column: 34)
!392 = !DILocation(line: 159, column: 26, scope: !391)
!393 = !DILocation(line: 160, column: 17, scope: !391)
!394 = !DILocation(line: 161, column: 33, scope: !395)
!395 = distinct !DILexicalBlock(scope: !386, file: !3, line: 160, column: 24)
!396 = !DILocation(line: 161, column: 26, scope: !395)
!397 = !DILocation(line: 155, column: 28, scope: !366)
!398 = distinct !{!398, !367, !399, !149, !150}
!399 = !DILocation(line: 165, column: 5, scope: !356)
!400 = !DILocation(line: 169, column: 67, scope: !401)
!401 = distinct !DILexicalBlock(scope: !371, file: !3, line: 169, column: 67)
!402 = !DILocation(line: 171, column: 21, scope: !346)
!403 = !DILocation(line: 171, column: 42, scope: !346)
!404 = !DILocation(line: 171, column: 19, scope: !346)
!405 = !DILocation(line: 172, column: 1, scope: !346)
!406 = distinct !DISubprogram(name: "simple_if_else", scope: !3, file: !3, line: 175, type: !84, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !407)
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415}
!408 = !DILocalVariable(name: "a", arg: 1, scope: !406, file: !3, line: 175, type: !86)
!409 = !DILocalVariable(name: "b", arg: 2, scope: !406, file: !3, line: 175, type: !86)
!410 = !DILocalVariable(name: "c", arg: 3, scope: !406, file: !3, line: 175, type: !86)
!411 = !DILocalVariable(name: "cond", arg: 4, scope: !406, file: !3, line: 176, type: !87)
!412 = !DILocalVariable(name: "n", arg: 5, scope: !406, file: !3, line: 176, type: !6)
!413 = !DILocalVariable(name: "status", scope: !406, file: !3, line: 178, type: !6)
!414 = !DILocalVariable(name: "t", scope: !406, file: !3, line: 180, type: !22)
!415 = !DILocalVariable(name: "i", scope: !416, file: !3, line: 185, type: !6)
!416 = distinct !DILexicalBlock(scope: !406, file: !3, line: 185, column: 5)
!417 = !DILocation(line: 0, scope: !406)
!418 = !DILocation(line: 180, column: 16, scope: !406)
!419 = !DILocation(line: 182, column: 30, scope: !420)
!420 = distinct !DILexicalBlock(scope: !406, file: !3, line: 182, column: 9)
!421 = !DILocation(line: 182, column: 19, scope: !420)
!422 = !DILocation(line: 182, column: 41, scope: !420)
!423 = !DILocation(line: 182, column: 9, scope: !406)
!424 = !DILocation(line: 0, scope: !416)
!425 = !DILocation(line: 185, column: 23, scope: !426)
!426 = distinct !DILexicalBlock(scope: !416, file: !3, line: 185, column: 5)
!427 = !DILocation(line: 185, column: 5, scope: !416)
!428 = !DILocation(line: 182, column: 53, scope: !429)
!429 = distinct !DILexicalBlock(scope: !420, file: !3, line: 182, column: 53)
!430 = !DILocation(line: 195, column: 29, scope: !431)
!431 = distinct !DILexicalBlock(scope: !406, file: !3, line: 195, column: 9)
!432 = !DILocation(line: 195, column: 19, scope: !431)
!433 = !DILocation(line: 195, column: 55, scope: !431)
!434 = !DILocation(line: 195, column: 9, scope: !406)
!435 = !DILocation(line: 186, column: 17, scope: !436)
!436 = distinct !DILexicalBlock(scope: !437, file: !3, line: 186, column: 17)
!437 = distinct !DILexicalBlock(scope: !426, file: !3, line: 185, column: 33)
!438 = !DILocation(line: 0, scope: !436)
!439 = !DILocation(line: 186, column: 17, scope: !437)
!440 = !DILocation(line: 187, column: 29, scope: !441)
!441 = distinct !DILexicalBlock(scope: !436, file: !3, line: 186, column: 26)
!442 = !DILocation(line: 187, column: 17, scope: !441)
!443 = !DILocation(line: 187, column: 22, scope: !441)
!444 = !DILocation(line: 188, column: 13, scope: !441)
!445 = !DILocation(line: 189, column: 29, scope: !446)
!446 = distinct !DILexicalBlock(scope: !436, file: !3, line: 188, column: 20)
!447 = !DILocation(line: 189, column: 22, scope: !446)
!448 = !DILocation(line: 185, column: 28, scope: !426)
!449 = distinct !{!449, !427, !450, !149, !150}
!450 = !DILocation(line: 191, column: 5, scope: !416)
!451 = !DILocation(line: 195, column: 67, scope: !452)
!452 = distinct !DILexicalBlock(scope: !431, file: !3, line: 195, column: 67)
!453 = !DILocation(line: 197, column: 21, scope: !406)
!454 = !DILocation(line: 197, column: 42, scope: !406)
!455 = !DILocation(line: 197, column: 19, scope: !406)
!456 = !DILocation(line: 198, column: 1, scope: !406)
!457 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 205, type: !458, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !460)
!458 = !DISubroutineType(types: !459)
!459 = !{!5, !6}
!460 = !{!461, !462}
!461 = !DILocalVariable(name: "n", arg: 1, scope: !457, file: !3, line: 205, type: !6)
!462 = !DILocalVariable(name: "ptr", scope: !457, file: !3, line: 206, type: !5)
!463 = !DILocation(line: 0, scope: !457)
!464 = !DILocation(line: 206, column: 45, scope: !457)
!465 = !DILocation(line: 206, column: 43, scope: !457)
!466 = !DILocation(line: 206, column: 24, scope: !457)
!467 = !DILocation(line: 207, column: 13, scope: !468)
!468 = distinct !DILexicalBlock(scope: !457, file: !3, line: 207, column: 9)
!469 = !DILocation(line: 207, column: 9, scope: !457)
!470 = !DILocation(line: 208, column: 9, scope: !471)
!471 = distinct !DILexicalBlock(scope: !468, file: !3, line: 207, column: 22)
!472 = !DILocation(line: 209, column: 9, scope: !471)
!473 = !DILocation(line: 211, column: 5, scope: !457)
!474 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 214, type: !475, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !477)
!475 = !DISubroutineType(types: !476)
!476 = !{!8, !6}
!477 = !{!478, !479}
!478 = !DILocalVariable(name: "n", arg: 1, scope: !474, file: !3, line: 214, type: !6)
!479 = !DILocalVariable(name: "ptr", scope: !474, file: !3, line: 215, type: !8)
!480 = !DILocation(line: 0, scope: !474)
!481 = !DILocation(line: 215, column: 48, scope: !474)
!482 = !DILocation(line: 215, column: 26, scope: !474)
!483 = !DILocation(line: 216, column: 13, scope: !484)
!484 = distinct !DILexicalBlock(scope: !474, file: !3, line: 216, column: 9)
!485 = !DILocation(line: 216, column: 9, scope: !474)
!486 = !DILocation(line: 217, column: 9, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !3, line: 216, column: 22)
!488 = !DILocation(line: 218, column: 9, scope: !487)
!489 = !DILocation(line: 220, column: 5, scope: !474)
!490 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 223, type: !491, scopeLine: 223, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{!6}
!493 = !{!494, !495, !500, !501, !503, !504}
!494 = !DILocalVariable(name: "status", scope: !490, file: !3, line: 224, type: !6)
!495 = !DILocalVariable(name: "errstring", scope: !490, file: !3, line: 225, type: !496)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, size: 1024, elements: !498)
!497 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!498 = !{!499}
!499 = !DISubrange(count: 128)
!500 = !DILocalVariable(name: "n", scope: !490, file: !3, line: 238, type: !6)
!501 = !DILocalVariable(name: "i", scope: !502, file: !3, line: 249, type: !6)
!502 = distinct !DILexicalBlock(scope: !490, file: !3, line: 249, column: 5)
!503 = !DILocalVariable(name: "sum", scope: !490, file: !3, line: 260, type: !6)
!504 = !DILocalVariable(name: "i", scope: !505, file: !3, line: 262, type: !6)
!505 = distinct !DILexicalBlock(scope: !490, file: !3, line: 262, column: 5)
!506 = !DILocation(line: 225, column: 5, scope: !490)
!507 = !DILocation(line: 225, column: 10, scope: !490)
!508 = !DILocation(line: 227, column: 9, scope: !509)
!509 = distinct !DILexicalBlock(scope: !490, file: !3, line: 227, column: 9)
!510 = !DILocation(line: 227, column: 45, scope: !509)
!511 = !DILocation(line: 227, column: 9, scope: !490)
!512 = !DILocation(line: 228, column: 17, scope: !513)
!513 = distinct !DILexicalBlock(scope: !509, file: !3, line: 227, column: 66)
!514 = !DILocation(line: 228, column: 9, scope: !513)
!515 = !DILocation(line: 229, column: 9, scope: !513)
!516 = !DILocation(line: 233, column: 19, scope: !517)
!517 = distinct !DILexicalBlock(scope: !490, file: !3, line: 233, column: 9)
!518 = !DILocation(line: 0, scope: !490)
!519 = !DILocation(line: 233, column: 52, scope: !517)
!520 = !DILocation(line: 233, column: 9, scope: !490)
!521 = !DILocation(line: 233, column: 64, scope: !522)
!522 = distinct !DILexicalBlock(scope: !517, file: !3, line: 233, column: 64)
!523 = !DILocation(line: 236, column: 35, scope: !524)
!524 = distinct !DILexicalBlock(scope: !490, file: !3, line: 236, column: 9)
!525 = !DILocation(line: 236, column: 19, scope: !524)
!526 = !DILocation(line: 236, column: 69, scope: !524)
!527 = !DILocation(line: 236, column: 9, scope: !490)
!528 = !DILocation(line: 236, column: 81, scope: !529)
!529 = distinct !DILexicalBlock(scope: !524, file: !3, line: 236, column: 81)
!530 = !DILocation(line: 240, column: 9, scope: !490)
!531 = !DILocation(line: 240, column: 7, scope: !490)
!532 = !DILocation(line: 241, column: 9, scope: !490)
!533 = !DILocation(line: 241, column: 7, scope: !490)
!534 = !DILocation(line: 242, column: 9, scope: !490)
!535 = !DILocation(line: 242, column: 7, scope: !490)
!536 = !DILocation(line: 243, column: 12, scope: !490)
!537 = !DILocation(line: 243, column: 10, scope: !490)
!538 = !DILocation(line: 245, column: 13, scope: !490)
!539 = !DILocation(line: 247, column: 11, scope: !490)
!540 = !DILocation(line: 247, column: 5, scope: !490)
!541 = !DILocation(line: 0, scope: !502)
!542 = !DILocation(line: 249, column: 5, scope: !502)
!543 = !DILocation(line: 250, column: 9, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !3, line: 249, column: 33)
!545 = distinct !DILexicalBlock(scope: !502, file: !3, line: 249, column: 5)
!546 = !DILocation(line: 250, column: 14, scope: !544)
!547 = !DILocation(line: 251, column: 9, scope: !544)
!548 = !DILocation(line: 251, column: 14, scope: !544)
!549 = !DILocation(line: 252, column: 9, scope: !544)
!550 = !DILocation(line: 252, column: 14, scope: !544)
!551 = !DILocation(line: 253, column: 22, scope: !544)
!552 = !DILocation(line: 253, column: 28, scope: !544)
!553 = !DILocation(line: 253, column: 9, scope: !544)
!554 = !DILocation(line: 253, column: 17, scope: !544)
!555 = !DILocation(line: 249, column: 28, scope: !545)
!556 = !DILocation(line: 249, column: 23, scope: !545)
!557 = distinct !{!557, !542, !558, !149, !150}
!558 = !DILocation(line: 254, column: 5, scope: !502)
!559 = !DILocation(line: 262, column: 5, scope: !505)
!560 = !DILocation(line: 263, column: 13, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 262, column: 33)
!562 = distinct !DILexicalBlock(scope: !505, file: !3, line: 262, column: 5)
!563 = !DILocation(line: 266, column: 5, scope: !490)
!564 = !DILocation(line: 268, column: 10, scope: !490)
!565 = !DILocation(line: 268, column: 5, scope: !490)
!566 = !DILocation(line: 269, column: 10, scope: !490)
!567 = !DILocation(line: 269, column: 5, scope: !490)
!568 = !DILocation(line: 270, column: 10, scope: !490)
!569 = !DILocation(line: 270, column: 5, scope: !490)
!570 = !DILocation(line: 271, column: 10, scope: !490)
!571 = !DILocation(line: 271, column: 5, scope: !490)
!572 = !DILocation(line: 273, column: 53, scope: !490)
!573 = !{!574, !574, i64 0}
!574 = !{!"long long", !64, i64 0}
!575 = !DILocation(line: 273, column: 5, scope: !490)
!576 = !DILocation(line: 274, column: 36, scope: !490)
!577 = !DILocation(line: 274, column: 5, scope: !490)
!578 = !DILocation(line: 275, column: 50, scope: !490)
!579 = !DILocation(line: 275, column: 5, scope: !490)
!580 = !DILocation(line: 276, column: 49, scope: !490)
!581 = !DILocation(line: 276, column: 5, scope: !490)
!582 = !DILocation(line: 277, column: 40, scope: !490)
!583 = !DILocation(line: 277, column: 5, scope: !490)
!584 = !DILocation(line: 279, column: 38, scope: !585)
!585 = distinct !DILexicalBlock(scope: !490, file: !3, line: 279, column: 9)
!586 = !DILocation(line: 279, column: 19, scope: !585)
!587 = !DILocation(line: 279, column: 72, scope: !585)
!588 = !DILocation(line: 279, column: 9, scope: !490)
!589 = !DILocation(line: 0, scope: !505)
!590 = !DILocation(line: 263, column: 16, scope: !561)
!591 = !DILocation(line: 262, column: 28, scope: !562)
!592 = !DILocation(line: 262, column: 23, scope: !562)
!593 = distinct !{!593, !559, !594, !149, !150}
!594 = !DILocation(line: 264, column: 5, scope: !505)
!595 = !DILocation(line: 279, column: 84, scope: !596)
!596 = distinct !DILexicalBlock(scope: !585, file: !3, line: 279, column: 84)
!597 = !DILocation(line: 282, column: 19, scope: !598)
!598 = distinct !DILexicalBlock(scope: !490, file: !3, line: 282, column: 9)
!599 = !DILocation(line: 282, column: 53, scope: !598)
!600 = !DILocation(line: 282, column: 9, scope: !490)
!601 = !DILocation(line: 282, column: 65, scope: !602)
!602 = distinct !DILexicalBlock(scope: !598, file: !3, line: 282, column: 65)
!603 = !DILocation(line: 285, column: 5, scope: !490)
!604 = !DILocation(line: 288, column: 1, scope: !490)
!605 = !DILocation(line: 287, column: 5, scope: !490)
!606 = !DISubprogram(name: "PAPI_library_init", scope: !160, file: !160, line: 1172, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!607 = !DISubprogram(name: "PAPI_create_eventset", scope: !160, file: !160, line: 1147, type: !608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!608 = !DISubroutineType(types: !609)
!609 = !{!6, !5}
!610 = !DISubprogram(name: "PAPI_add_events", scope: !160, file: !160, line: 1143, type: !611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!611 = !DISubroutineType(types: !612)
!612 = !{!6, !6, !5, !6}
!613 = !DISubprogram(name: "srand", scope: !614, file: !614, line: 455, type: !615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!614 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!615 = !DISubroutineType(types: !616)
!616 = !{null, !617}
!617 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!618 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!619 = !DISubroutineType(types: !620)
!620 = !{!621, !623}
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !622, line: 7, baseType: !52)
!622 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!624 = !DISubprogram(name: "PAPI_remove_events", scope: !160, file: !160, line: 1192, type: !611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!625 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !160, file: !160, line: 1149, type: !608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!626 = !DISubprogram(name: "PAPI_shutdown", scope: !160, file: !160, line: 1202, type: !627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!627 = !DISubroutineType(types: !628)
!628 = !{null}
