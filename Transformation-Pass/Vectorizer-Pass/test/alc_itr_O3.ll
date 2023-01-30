; ModuleID = 'alc_itr.ll'
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

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare !dbg !74 i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_if_else(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !83 {
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
  %cmp339 = icmp sgt i32 %n, 0, !dbg !108
  br i1 %cmp339, label %for.body.preheader, label %for.cond.cleanup, !dbg !110

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !108
  br label %for.body, !dbg !110

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !111, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 65) #11, !dbg !111
  tail call void @exit(i32 noundef %call1) #12, !dbg !111
  unreachable, !dbg !111

for.cond.cleanup:                                 ; preds = %for.inc, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !115, !tbaa !102
  %call18 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #10, !dbg !117
  call void @llvm.dbg.value(metadata i32 %call18, metadata !94, metadata !DIExpression()), !dbg !98
  %cmp19.not = icmp eq i32 %call18, 0, !dbg !118
  br i1 %cmp19.not, label %if.end22, label %if.then20, !dbg !119

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !96, metadata !DIExpression()), !dbg !107
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !120
  %3 = load i8, ptr %arrayidx, align 1, !dbg !120, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !120
  %arrayidx12 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !126
  %4 = load i32, ptr %arrayidx12, align 4, !dbg !126, !tbaa !102
  %arrayidx14 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !126
  %5 = load i32, ptr %arrayidx14, align 4, !dbg !126, !tbaa !102
  br i1 %tobool.not, label %if.else, label %if.then4, !dbg !127

if.then4:                                         ; preds = %for.body
  %add = add nsw i32 %5, %4, !dbg !128
  %arrayidx10 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !130
  store i32 %add, ptr %arrayidx10, align 4, !dbg !131, !tbaa !102
  br label %for.inc, !dbg !132

if.else:                                          ; preds = %for.body
  %sub = sub nsw i32 %4, %5, !dbg !133
  store i32 %sub, ptr %arrayidx12, align 4, !dbg !135, !tbaa !102
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !136
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !96, metadata !DIExpression()), !dbg !107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !108
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !110, !llvm.loop !137

if.then20:                                        ; preds = %for.cond.cleanup
  %6 = load ptr, ptr @stderr, align 8, !dbg !141, !tbaa !113
  %call21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef %call18, ptr noundef nonnull @.str.1, i32 noundef 78) #11, !dbg !141
  tail call void @exit(i32 noundef %call18) #12, !dbg !141
  unreachable, !dbg !141

if.end22:                                         ; preds = %for.cond.cleanup
  %call23 = tail call double @getTimeMiliSeconds(), !dbg !143
  %sub24 = fsub double %call23, %call, !dbg !144
  store double %sub24, ptr @ExecutionTime, align 8, !dbg !145, !tbaa !146
  ret void, !dbg !148
}

declare !dbg !149 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !153 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !157 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !161, metadata !DIExpression()), !dbg !163
  %conv = sext i32 %n to i64, !dbg !164
  %mul = shl nsw i64 %conv, 2, !dbg !165
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #13, !dbg !166
  call void @llvm.dbg.value(metadata ptr %call, metadata !162, metadata !DIExpression()), !dbg !163
  %cmp = icmp eq ptr %call, null, !dbg !167
  br i1 %cmp, label %if.then, label %if.end, !dbg !169

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !170
  tail call void @exit(i32 noundef 1) #12, !dbg !172
  unreachable, !dbg !172

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !173
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !174 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !178, metadata !DIExpression()), !dbg !180
  %conv = sext i32 %n to i64, !dbg !181
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #13, !dbg !182
  call void @llvm.dbg.value(metadata ptr %call, metadata !179, metadata !DIExpression()), !dbg !180
  %cmp = icmp eq ptr %call, null, !dbg !183
  br i1 %cmp, label %if.then, label %if.end, !dbg !185

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !186
  tail call void @exit(i32 noundef 1) #12, !dbg !188
  unreachable, !dbg !188

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !189
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !190 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #10, !dbg !206
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !195, metadata !DIExpression()), !dbg !207
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #10, !dbg !208
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !210
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !211

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !212, !tbaa !113
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #11, !dbg !214
  call void @exit(i32 noundef 1) #12, !dbg !215
  unreachable, !dbg !215

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #10, !dbg !216
  call void @llvm.dbg.value(metadata i32 %call2, metadata !194, metadata !DIExpression()), !dbg !218
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !219
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !220

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !221, !tbaa !113
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 293) #11, !dbg !221
  tail call void @exit(i32 noundef %call2) #12, !dbg !221
  unreachable, !dbg !221

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !223, !tbaa !102
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #10, !dbg !225
  call void @llvm.dbg.value(metadata i32 %call7, metadata !194, metadata !DIExpression()), !dbg !218
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !226
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !227

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !228, !tbaa !113
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 296) #11, !dbg !228
  tail call void @exit(i32 noundef %call7) #12, !dbg !228
  unreachable, !dbg !228

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 1000, metadata !200, metadata !DIExpression()), !dbg !218
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 1000), !dbg !230
  store ptr %call12, ptr @a, align 8, !dbg !231, !tbaa !113
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 1000), !dbg !232
  store ptr %call13, ptr @b, align 8, !dbg !233, !tbaa !113
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 1000), !dbg !234
  store ptr %call14, ptr @c, align 8, !dbg !235, !tbaa !113
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 1000), !dbg !236
  store ptr %call15, ptr @cond, align 8, !dbg !237, !tbaa !113
  store i8 0, ptr %call15, align 1, !dbg !238, !tbaa !123
  %call16 = tail call i64 @time(ptr noundef null) #10, !dbg !239
  %conv = trunc i64 %call16 to i32, !dbg !239
  tail call void @srand(i32 noundef %conv) #10, !dbg !240
  call void @llvm.dbg.value(metadata i32 0, metadata !201, metadata !DIExpression()), !dbg !241
  %4 = load ptr, ptr @a, align 8, !tbaa !113
  %5 = load ptr, ptr @b, align 8, !tbaa !113
  %6 = load ptr, ptr @c, align 8, !tbaa !113
  %7 = load ptr, ptr @cond, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !201, metadata !DIExpression()), !dbg !241
  br label %for.body, !dbg !242

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.body ]
  %indvars83 = trunc i64 %indvars.iv to i32
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !201, metadata !DIExpression()), !dbg !241
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !243
  store i32 %indvars83, ptr %arrayidx19, align 4, !dbg !246, !tbaa !102
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !247
  store i32 2, ptr %arrayidx21, align 4, !dbg !248, !tbaa !102
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !249
  store i32 0, ptr %arrayidx23, align 4, !dbg !250, !tbaa !102
  %rem.lhs.trunc = trunc i64 %indvars.iv to i16, !dbg !251
  %rem79 = urem i16 %rem.lhs.trunc, 3, !dbg !251
  %cmp24 = icmp eq i16 %rem79, 0, !dbg !252
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !253
  %frombool = zext i1 %cmp24 to i8, !dbg !254
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !254, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !255
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !201, metadata !DIExpression()), !dbg !241
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1000, !dbg !256
  br i1 %exitcond.not, label %for.body33, label %for.body, !dbg !242, !llvm.loop !257

for.cond.cleanup32:                               ; preds = %for.body33
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add), !dbg !259
  %8 = load ptr, ptr @a, align 8, !dbg !260, !tbaa !113
  tail call void @free(ptr noundef %8) #10, !dbg !261
  %9 = load ptr, ptr @b, align 8, !dbg !262, !tbaa !113
  tail call void @free(ptr noundef %9) #10, !dbg !263
  %10 = load ptr, ptr @c, align 8, !dbg !264, !tbaa !113
  tail call void @free(ptr noundef %10) #10, !dbg !265
  %11 = load ptr, ptr @cond, align 8, !dbg !266, !tbaa !113
  tail call void @free(ptr noundef %11) #10, !dbg !267
  %12 = load i64, ptr @CounterValues, align 8, !dbg !268, !tbaa !269
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %12), !dbg !271
  %13 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !272, !tbaa !269
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %13), !dbg !273
  %14 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !274, !tbaa !269
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %14), !dbg !275
  %15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !276, !tbaa !269
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %15), !dbg !277
  %16 = load double, ptr @ExecutionTime, align 8, !dbg !278, !tbaa !146
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %16), !dbg !279
  %17 = load i32, ptr @EventSet, align 4, !dbg !280, !tbaa !102
  %call45 = tail call i32 @PAPI_remove_events(i32 noundef %17, ptr noundef nonnull @EventCodes, i32 noundef 4) #10, !dbg !282
  call void @llvm.dbg.value(metadata i32 %call45, metadata !194, metadata !DIExpression()), !dbg !218
  %cmp46.not = icmp eq i32 %call45, 0, !dbg !283
  br i1 %cmp46.not, label %if.end50, label %if.then48, !dbg !284

for.body33:                                       ; preds = %for.body, %for.body33
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.body33 ], [ 0, %for.body ]
  %sum.081 = phi i32 [ %add, %for.body33 ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv84, metadata !204, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 %sum.081, metadata !203, metadata !DIExpression()), !dbg !218
  %arrayidx35 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv84, !dbg !286
  %18 = load i32, ptr %arrayidx35, align 4, !dbg !286, !tbaa !102
  %add = add nsw i32 %18, %sum.081, !dbg !289
  call void @llvm.dbg.value(metadata i32 %add, metadata !203, metadata !DIExpression()), !dbg !218
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1, !dbg !290
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next85, metadata !204, metadata !DIExpression()), !dbg !285
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 1000, !dbg !291
  br i1 %exitcond87.not, label %for.cond.cleanup32, label %for.body33, !dbg !292, !llvm.loop !293

if.then48:                                        ; preds = %for.cond.cleanup32
  %19 = load ptr, ptr @stderr, align 8, !dbg !295, !tbaa !113
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str, i32 noundef %call45, ptr noundef nonnull @.str.1, i32 noundef 340) #11, !dbg !295
  tail call void @exit(i32 noundef %call45) #12, !dbg !295
  unreachable, !dbg !295

if.end50:                                         ; preds = %for.cond.cleanup32
  %call51 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #10, !dbg !297
  call void @llvm.dbg.value(metadata i32 %call51, metadata !194, metadata !DIExpression()), !dbg !218
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !299
  br i1 %cmp52.not, label %if.end56, label %if.then54, !dbg !300

if.then54:                                        ; preds = %if.end50
  %20 = load ptr, ptr @stderr, align 8, !dbg !301, !tbaa !113
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef %call51, ptr noundef nonnull @.str.1, i32 noundef 343) #11, !dbg !301
  tail call void @exit(i32 noundef %call51) #12, !dbg !301
  unreachable, !dbg !301

if.end56:                                         ; preds = %if.end50
  tail call void @PAPI_shutdown() #10, !dbg !303
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #10, !dbg !304
  ret i32 0, !dbg !305
}

declare !dbg !306 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !307 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !310 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !313 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !318 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !324 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !325 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !326 void @PAPI_shutdown() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "1288b253febc89105cb3a359d878b257")
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
!24 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 260, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 261, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 262, type: !5, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 263, type: !8, isLocal: false, isDefinition: true)
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
!83 = distinct !DISubprogram(name: "simple_if_else", scope: !3, file: !3, line: 58, type: !84, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !86, !86, !87, !6}
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96}
!89 = !DILocalVariable(name: "a", arg: 1, scope: !83, file: !3, line: 58, type: !86)
!90 = !DILocalVariable(name: "b", arg: 2, scope: !83, file: !3, line: 58, type: !86)
!91 = !DILocalVariable(name: "c", arg: 3, scope: !83, file: !3, line: 58, type: !86)
!92 = !DILocalVariable(name: "cond", arg: 4, scope: !83, file: !3, line: 59, type: !87)
!93 = !DILocalVariable(name: "n", arg: 5, scope: !83, file: !3, line: 59, type: !6)
!94 = !DILocalVariable(name: "status", scope: !83, file: !3, line: 61, type: !6)
!95 = !DILocalVariable(name: "t", scope: !83, file: !3, line: 63, type: !22)
!96 = !DILocalVariable(name: "i", scope: !97, file: !3, line: 68, type: !6)
!97 = distinct !DILexicalBlock(scope: !83, file: !3, line: 68, column: 5)
!98 = !DILocation(line: 0, scope: !83)
!99 = !DILocation(line: 63, column: 16, scope: !83)
!100 = !DILocation(line: 65, column: 30, scope: !101)
!101 = distinct !DILexicalBlock(scope: !83, file: !3, line: 65, column: 9)
!102 = !{!103, !103, i64 0}
!103 = !{!"int", !64, i64 0}
!104 = !DILocation(line: 65, column: 19, scope: !101)
!105 = !DILocation(line: 65, column: 41, scope: !101)
!106 = !DILocation(line: 65, column: 9, scope: !83)
!107 = !DILocation(line: 0, scope: !97)
!108 = !DILocation(line: 68, column: 23, scope: !109)
!109 = distinct !DILexicalBlock(scope: !97, file: !3, line: 68, column: 5)
!110 = !DILocation(line: 68, column: 5, scope: !97)
!111 = !DILocation(line: 65, column: 53, scope: !112)
!112 = distinct !DILexicalBlock(scope: !101, file: !3, line: 65, column: 53)
!113 = !{!114, !114, i64 0}
!114 = !{!"any pointer", !64, i64 0}
!115 = !DILocation(line: 78, column: 29, scope: !116)
!116 = distinct !DILexicalBlock(scope: !83, file: !3, line: 78, column: 9)
!117 = !DILocation(line: 78, column: 19, scope: !116)
!118 = !DILocation(line: 78, column: 55, scope: !116)
!119 = !DILocation(line: 78, column: 9, scope: !83)
!120 = !DILocation(line: 69, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 69, column: 13)
!122 = distinct !DILexicalBlock(scope: !109, file: !3, line: 68, column: 33)
!123 = !{!124, !124, i64 0}
!124 = !{!"_Bool", !64, i64 0}
!125 = !{i8 0, i8 2}
!126 = !DILocation(line: 0, scope: !121)
!127 = !DILocation(line: 69, column: 13, scope: !122)
!128 = !DILocation(line: 70, column: 25, scope: !129)
!129 = distinct !DILexicalBlock(scope: !121, file: !3, line: 69, column: 22)
!130 = !DILocation(line: 70, column: 13, scope: !129)
!131 = !DILocation(line: 70, column: 18, scope: !129)
!132 = !DILocation(line: 71, column: 9, scope: !129)
!133 = !DILocation(line: 72, column: 25, scope: !134)
!134 = distinct !DILexicalBlock(scope: !121, file: !3, line: 71, column: 16)
!135 = !DILocation(line: 72, column: 18, scope: !134)
!136 = !DILocation(line: 68, column: 28, scope: !109)
!137 = distinct !{!137, !110, !138, !139, !140}
!138 = !DILocation(line: 74, column: 5, scope: !97)
!139 = !{!"llvm.loop.mustprogress"}
!140 = !{!"llvm.loop.unroll.disable"}
!141 = !DILocation(line: 78, column: 67, scope: !142)
!142 = distinct !DILexicalBlock(scope: !116, file: !3, line: 78, column: 67)
!143 = !DILocation(line: 80, column: 21, scope: !83)
!144 = !DILocation(line: 80, column: 42, scope: !83)
!145 = !DILocation(line: 80, column: 19, scope: !83)
!146 = !{!147, !147, i64 0}
!147 = !{!"double", !64, i64 0}
!148 = !DILocation(line: 81, column: 1, scope: !83)
!149 = !DISubprogram(name: "PAPI_start", scope: !150, file: !150, line: 1204, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!150 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!151 = !DISubroutineType(types: !152)
!152 = !{!6, !6}
!153 = !DISubprogram(name: "PAPI_stop", scope: !150, file: !150, line: 1206, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!154 = !DISubroutineType(types: !155)
!155 = !{!6, !6, !156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!157 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 265, type: !158, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{!5, !6}
!160 = !{!161, !162}
!161 = !DILocalVariable(name: "n", arg: 1, scope: !157, file: !3, line: 265, type: !6)
!162 = !DILocalVariable(name: "ptr", scope: !157, file: !3, line: 266, type: !5)
!163 = !DILocation(line: 0, scope: !157)
!164 = !DILocation(line: 266, column: 45, scope: !157)
!165 = !DILocation(line: 266, column: 43, scope: !157)
!166 = !DILocation(line: 266, column: 24, scope: !157)
!167 = !DILocation(line: 267, column: 13, scope: !168)
!168 = distinct !DILexicalBlock(scope: !157, file: !3, line: 267, column: 9)
!169 = !DILocation(line: 267, column: 9, scope: !157)
!170 = !DILocation(line: 268, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !3, line: 267, column: 22)
!172 = !DILocation(line: 269, column: 9, scope: !171)
!173 = !DILocation(line: 271, column: 5, scope: !157)
!174 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 274, type: !175, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !177)
!175 = !DISubroutineType(types: !176)
!176 = !{!8, !6}
!177 = !{!178, !179}
!178 = !DILocalVariable(name: "n", arg: 1, scope: !174, file: !3, line: 274, type: !6)
!179 = !DILocalVariable(name: "ptr", scope: !174, file: !3, line: 275, type: !8)
!180 = !DILocation(line: 0, scope: !174)
!181 = !DILocation(line: 275, column: 48, scope: !174)
!182 = !DILocation(line: 275, column: 26, scope: !174)
!183 = !DILocation(line: 276, column: 13, scope: !184)
!184 = distinct !DILexicalBlock(scope: !174, file: !3, line: 276, column: 9)
!185 = !DILocation(line: 276, column: 9, scope: !174)
!186 = !DILocation(line: 277, column: 9, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !3, line: 276, column: 22)
!188 = !DILocation(line: 278, column: 9, scope: !187)
!189 = !DILocation(line: 280, column: 5, scope: !174)
!190 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 283, type: !191, scopeLine: 283, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{!6}
!193 = !{!194, !195, !200, !201, !203, !204}
!194 = !DILocalVariable(name: "status", scope: !190, file: !3, line: 284, type: !6)
!195 = !DILocalVariable(name: "errstring", scope: !190, file: !3, line: 285, type: !196)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 1024, elements: !198)
!197 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!198 = !{!199}
!199 = !DISubrange(count: 128)
!200 = !DILocalVariable(name: "n", scope: !190, file: !3, line: 298, type: !6)
!201 = !DILocalVariable(name: "i", scope: !202, file: !3, line: 309, type: !6)
!202 = distinct !DILexicalBlock(scope: !190, file: !3, line: 309, column: 5)
!203 = !DILocalVariable(name: "sum", scope: !190, file: !3, line: 321, type: !6)
!204 = !DILocalVariable(name: "i", scope: !205, file: !3, line: 323, type: !6)
!205 = distinct !DILexicalBlock(scope: !190, file: !3, line: 323, column: 5)
!206 = !DILocation(line: 285, column: 5, scope: !190)
!207 = !DILocation(line: 285, column: 10, scope: !190)
!208 = !DILocation(line: 287, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !190, file: !3, line: 287, column: 9)
!210 = !DILocation(line: 287, column: 45, scope: !209)
!211 = !DILocation(line: 287, column: 9, scope: !190)
!212 = !DILocation(line: 288, column: 17, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !3, line: 287, column: 66)
!214 = !DILocation(line: 288, column: 9, scope: !213)
!215 = !DILocation(line: 289, column: 9, scope: !213)
!216 = !DILocation(line: 293, column: 19, scope: !217)
!217 = distinct !DILexicalBlock(scope: !190, file: !3, line: 293, column: 9)
!218 = !DILocation(line: 0, scope: !190)
!219 = !DILocation(line: 293, column: 52, scope: !217)
!220 = !DILocation(line: 293, column: 9, scope: !190)
!221 = !DILocation(line: 293, column: 64, scope: !222)
!222 = distinct !DILexicalBlock(scope: !217, file: !3, line: 293, column: 64)
!223 = !DILocation(line: 296, column: 35, scope: !224)
!224 = distinct !DILexicalBlock(scope: !190, file: !3, line: 296, column: 9)
!225 = !DILocation(line: 296, column: 19, scope: !224)
!226 = !DILocation(line: 296, column: 69, scope: !224)
!227 = !DILocation(line: 296, column: 9, scope: !190)
!228 = !DILocation(line: 296, column: 81, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !3, line: 296, column: 81)
!230 = !DILocation(line: 300, column: 9, scope: !190)
!231 = !DILocation(line: 300, column: 7, scope: !190)
!232 = !DILocation(line: 301, column: 9, scope: !190)
!233 = !DILocation(line: 301, column: 7, scope: !190)
!234 = !DILocation(line: 302, column: 9, scope: !190)
!235 = !DILocation(line: 302, column: 7, scope: !190)
!236 = !DILocation(line: 303, column: 12, scope: !190)
!237 = !DILocation(line: 303, column: 10, scope: !190)
!238 = !DILocation(line: 305, column: 13, scope: !190)
!239 = !DILocation(line: 307, column: 11, scope: !190)
!240 = !DILocation(line: 307, column: 5, scope: !190)
!241 = !DILocation(line: 0, scope: !202)
!242 = !DILocation(line: 309, column: 5, scope: !202)
!243 = !DILocation(line: 310, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 309, column: 33)
!245 = distinct !DILexicalBlock(scope: !202, file: !3, line: 309, column: 5)
!246 = !DILocation(line: 310, column: 14, scope: !244)
!247 = !DILocation(line: 311, column: 9, scope: !244)
!248 = !DILocation(line: 311, column: 14, scope: !244)
!249 = !DILocation(line: 312, column: 9, scope: !244)
!250 = !DILocation(line: 312, column: 14, scope: !244)
!251 = !DILocation(line: 313, column: 22, scope: !244)
!252 = !DILocation(line: 313, column: 26, scope: !244)
!253 = !DILocation(line: 313, column: 9, scope: !244)
!254 = !DILocation(line: 313, column: 17, scope: !244)
!255 = !DILocation(line: 309, column: 28, scope: !245)
!256 = !DILocation(line: 309, column: 23, scope: !245)
!257 = distinct !{!257, !242, !258, !139, !140}
!258 = !DILocation(line: 314, column: 5, scope: !202)
!259 = !DILocation(line: 327, column: 5, scope: !190)
!260 = !DILocation(line: 329, column: 10, scope: !190)
!261 = !DILocation(line: 329, column: 5, scope: !190)
!262 = !DILocation(line: 330, column: 10, scope: !190)
!263 = !DILocation(line: 330, column: 5, scope: !190)
!264 = !DILocation(line: 331, column: 10, scope: !190)
!265 = !DILocation(line: 331, column: 5, scope: !190)
!266 = !DILocation(line: 332, column: 10, scope: !190)
!267 = !DILocation(line: 332, column: 5, scope: !190)
!268 = !DILocation(line: 334, column: 53, scope: !190)
!269 = !{!270, !270, i64 0}
!270 = !{!"long long", !64, i64 0}
!271 = !DILocation(line: 334, column: 5, scope: !190)
!272 = !DILocation(line: 335, column: 36, scope: !190)
!273 = !DILocation(line: 335, column: 5, scope: !190)
!274 = !DILocation(line: 336, column: 50, scope: !190)
!275 = !DILocation(line: 336, column: 5, scope: !190)
!276 = !DILocation(line: 337, column: 49, scope: !190)
!277 = !DILocation(line: 337, column: 5, scope: !190)
!278 = !DILocation(line: 338, column: 40, scope: !190)
!279 = !DILocation(line: 338, column: 5, scope: !190)
!280 = !DILocation(line: 340, column: 38, scope: !281)
!281 = distinct !DILexicalBlock(scope: !190, file: !3, line: 340, column: 9)
!282 = !DILocation(line: 340, column: 19, scope: !281)
!283 = !DILocation(line: 340, column: 72, scope: !281)
!284 = !DILocation(line: 340, column: 9, scope: !190)
!285 = !DILocation(line: 0, scope: !205)
!286 = !DILocation(line: 324, column: 16, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 323, column: 33)
!288 = distinct !DILexicalBlock(scope: !205, file: !3, line: 323, column: 5)
!289 = !DILocation(line: 324, column: 13, scope: !287)
!290 = !DILocation(line: 323, column: 28, scope: !288)
!291 = !DILocation(line: 323, column: 23, scope: !288)
!292 = !DILocation(line: 323, column: 5, scope: !205)
!293 = distinct !{!293, !292, !294, !139, !140}
!294 = !DILocation(line: 325, column: 5, scope: !205)
!295 = !DILocation(line: 340, column: 84, scope: !296)
!296 = distinct !DILexicalBlock(scope: !281, file: !3, line: 340, column: 84)
!297 = !DILocation(line: 343, column: 19, scope: !298)
!298 = distinct !DILexicalBlock(scope: !190, file: !3, line: 343, column: 9)
!299 = !DILocation(line: 343, column: 53, scope: !298)
!300 = !DILocation(line: 343, column: 9, scope: !190)
!301 = !DILocation(line: 343, column: 65, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !3, line: 343, column: 65)
!303 = !DILocation(line: 346, column: 5, scope: !190)
!304 = !DILocation(line: 349, column: 1, scope: !190)
!305 = !DILocation(line: 348, column: 5, scope: !190)
!306 = !DISubprogram(name: "PAPI_library_init", scope: !150, file: !150, line: 1172, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!307 = !DISubprogram(name: "PAPI_create_eventset", scope: !150, file: !150, line: 1147, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!308 = !DISubroutineType(types: !309)
!309 = !{!6, !5}
!310 = !DISubprogram(name: "PAPI_add_events", scope: !150, file: !150, line: 1143, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!311 = !DISubroutineType(types: !312)
!312 = !{!6, !6, !5, !6}
!313 = !DISubprogram(name: "srand", scope: !314, file: !314, line: 455, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!314 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!315 = !DISubroutineType(types: !316)
!316 = !{null, !317}
!317 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!318 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !323}
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !322, line: 7, baseType: !52)
!322 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!324 = !DISubprogram(name: "PAPI_remove_events", scope: !150, file: !150, line: 1192, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!325 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !150, file: !150, line: 1149, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!326 = !DISubprogram(name: "PAPI_shutdown", scope: !150, file: !150, line: 1202, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!327 = !DISubroutineType(types: !328)
!328 = !{null}
