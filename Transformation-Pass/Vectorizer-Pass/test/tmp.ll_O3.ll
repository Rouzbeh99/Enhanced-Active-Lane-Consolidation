; ModuleID = 'tmp.ll.ll'
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

for.cond.cleanup:                                 ; preds = %for.inc, %for.cond.preheader
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
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !110, !llvm.loop !146

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
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !166 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !170, metadata !DIExpression()), !dbg !172
  %conv = sext i32 %n to i64, !dbg !173
  %mul = shl nsw i64 %conv, 2, !dbg !174
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #13, !dbg !175
  call void @llvm.dbg.value(metadata ptr %call, metadata !171, metadata !DIExpression()), !dbg !172
  %cmp = icmp eq ptr %call, null, !dbg !176
  br i1 %cmp, label %if.then, label %if.end, !dbg !178

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !179
  tail call void @exit(i32 noundef 1) #12, !dbg !181
  unreachable, !dbg !181

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !182
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !183 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !187, metadata !DIExpression()), !dbg !189
  %conv = sext i32 %n to i64, !dbg !190
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #13, !dbg !191
  call void @llvm.dbg.value(metadata ptr %call, metadata !188, metadata !DIExpression()), !dbg !189
  %cmp = icmp eq ptr %call, null, !dbg !192
  br i1 %cmp, label %if.then, label %if.end, !dbg !194

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !195
  tail call void @exit(i32 noundef 1) #12, !dbg !197
  unreachable, !dbg !197

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !198
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !199 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #10, !dbg !215
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !204, metadata !DIExpression()), !dbg !216
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #10, !dbg !217
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !219
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !220

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !221, !tbaa !113
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #11, !dbg !223
  call void @exit(i32 noundef 1) #12, !dbg !224
  unreachable, !dbg !224

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #10, !dbg !225
  call void @llvm.dbg.value(metadata i32 %call2, metadata !203, metadata !DIExpression()), !dbg !227
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !228
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !229

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !230, !tbaa !113
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 291) #11, !dbg !230
  tail call void @exit(i32 noundef %call2) #12, !dbg !230
  unreachable, !dbg !230

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !232, !tbaa !102
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #10, !dbg !234
  call void @llvm.dbg.value(metadata i32 %call7, metadata !203, metadata !DIExpression()), !dbg !227
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !235
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !236

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !237, !tbaa !113
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 294) #11, !dbg !237
  tail call void @exit(i32 noundef %call7) #12, !dbg !237
  unreachable, !dbg !237

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 5000000, metadata !209, metadata !DIExpression()), !dbg !227
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !239
  store ptr %call12, ptr @a, align 8, !dbg !240, !tbaa !113
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !241
  store ptr %call13, ptr @b, align 8, !dbg !242, !tbaa !113
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !243
  store ptr %call14, ptr @c, align 8, !dbg !244, !tbaa !113
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !245
  store ptr %call15, ptr @cond, align 8, !dbg !246, !tbaa !113
  store i8 0, ptr %call15, align 1, !dbg !247, !tbaa !123
  %call16 = tail call i64 @time(ptr noundef null) #10, !dbg !248
  %conv = trunc i64 %call16 to i32, !dbg !248
  tail call void @srand(i32 noundef %conv) #10, !dbg !249
  call void @llvm.dbg.value(metadata i32 0, metadata !210, metadata !DIExpression()), !dbg !250
  %4 = load ptr, ptr @a, align 8, !tbaa !113
  %5 = load ptr, ptr @b, align 8, !tbaa !113
  %6 = load ptr, ptr @c, align 8, !tbaa !113
  %7 = load ptr, ptr @cond, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !210, metadata !DIExpression()), !dbg !250
  br label %for.body, !dbg !251

for.cond.cleanup:                                 ; preds = %for.body
  tail call void @simple_if(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 5000000), !dbg !252
  call void @llvm.dbg.value(metadata i32 0, metadata !212, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i32 0, metadata !213, metadata !DIExpression()), !dbg !253
  %8 = load ptr, ptr @c, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !213, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 0, metadata !212, metadata !DIExpression()), !dbg !227
  br label %for.body33, !dbg !254

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !210, metadata !DIExpression()), !dbg !250
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !255
  %9 = trunc i64 %indvars.iv to i32, !dbg !258
  store i32 %9, ptr %arrayidx19, align 4, !dbg !258, !tbaa !102
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !259
  store i32 2, ptr %arrayidx21, align 4, !dbg !260, !tbaa !102
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !261
  store i32 0, ptr %arrayidx23, align 4, !dbg !262, !tbaa !102
  %rem = urem i32 %9, 10, !dbg !263
  %cmp24 = icmp eq i32 %rem, 0, !dbg !264
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !265
  %frombool = zext i1 %cmp24 to i8, !dbg !266
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !266, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !267
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !210, metadata !DIExpression()), !dbg !250
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !268
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !251, !llvm.loop !269

for.cond.cleanup32:                               ; preds = %for.body33
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add), !dbg !271
  %10 = load ptr, ptr @a, align 8, !dbg !272, !tbaa !113
  tail call void @free(ptr noundef %10) #10, !dbg !273
  %11 = load ptr, ptr @b, align 8, !dbg !274, !tbaa !113
  tail call void @free(ptr noundef %11) #10, !dbg !275
  %12 = load ptr, ptr @c, align 8, !dbg !276, !tbaa !113
  tail call void @free(ptr noundef %12) #10, !dbg !277
  %13 = load ptr, ptr @cond, align 8, !dbg !278, !tbaa !113
  tail call void @free(ptr noundef %13) #10, !dbg !279
  %14 = load i64, ptr @CounterValues, align 8, !dbg !280, !tbaa !281
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %14), !dbg !283
  %15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !284, !tbaa !281
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %15), !dbg !285
  %16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !286, !tbaa !281
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %16), !dbg !287
  %17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !288, !tbaa !281
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %17), !dbg !289
  %18 = load double, ptr @ExecutionTime, align 8, !dbg !290, !tbaa !155
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %18), !dbg !291
  %19 = load i32, ptr @EventSet, align 4, !dbg !292, !tbaa !102
  %call45 = tail call i32 @PAPI_remove_events(i32 noundef %19, ptr noundef nonnull @EventCodes, i32 noundef 4) #10, !dbg !294
  call void @llvm.dbg.value(metadata i32 %call45, metadata !203, metadata !DIExpression()), !dbg !227
  %cmp46.not = icmp eq i32 %call45, 0, !dbg !295
  br i1 %cmp46.not, label %if.end50, label %if.then48, !dbg !296

for.body33:                                       ; preds = %for.body33, %for.cond.cleanup
  %indvars.iv84 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next85, %for.body33 ]
  %sum.081 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body33 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv84, metadata !213, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.value(metadata i32 %sum.081, metadata !212, metadata !DIExpression()), !dbg !227
  %arrayidx35 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv84, !dbg !297
  %20 = load i32, ptr %arrayidx35, align 4, !dbg !297, !tbaa !102
  %add = add nsw i32 %20, %sum.081, !dbg !300
  call void @llvm.dbg.value(metadata i32 %add, metadata !212, metadata !DIExpression()), !dbg !227
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1, !dbg !301
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next85, metadata !213, metadata !DIExpression()), !dbg !253
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 5000000, !dbg !302
  br i1 %exitcond87.not, label %for.cond.cleanup32, label %for.body33, !dbg !254, !llvm.loop !303

if.then48:                                        ; preds = %for.cond.cleanup32
  %21 = load ptr, ptr @stderr, align 8, !dbg !305, !tbaa !113
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %call45, ptr noundef nonnull @.str.1, i32 noundef 337) #11, !dbg !305
  tail call void @exit(i32 noundef %call45) #12, !dbg !305
  unreachable, !dbg !305

if.end50:                                         ; preds = %for.cond.cleanup32
  %call51 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #10, !dbg !307
  call void @llvm.dbg.value(metadata i32 %call51, metadata !203, metadata !DIExpression()), !dbg !227
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !309
  br i1 %cmp52.not, label %if.end56, label %if.then54, !dbg !310

if.then54:                                        ; preds = %if.end50
  %22 = load ptr, ptr @stderr, align 8, !dbg !311, !tbaa !113
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str, i32 noundef %call51, ptr noundef nonnull @.str.1, i32 noundef 340) #11, !dbg !311
  tail call void @exit(i32 noundef %call51) #12, !dbg !311
  unreachable, !dbg !311

if.end56:                                         ; preds = %if.end50
  tail call void @PAPI_shutdown() #10, !dbg !313
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #10, !dbg !314
  ret i32 0, !dbg !315
}

declare !dbg !316 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !317 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !320 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !323 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !328 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !334 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !335 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !336 void @PAPI_shutdown() local_unnamed_addr #4

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
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "0bac8bb2e28d0b449a0dc3cb3874ce07")
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
!166 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 263, type: !167, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !169)
!167 = !DISubroutineType(types: !168)
!168 = !{!5, !6}
!169 = !{!170, !171}
!170 = !DILocalVariable(name: "n", arg: 1, scope: !166, file: !3, line: 263, type: !6)
!171 = !DILocalVariable(name: "ptr", scope: !166, file: !3, line: 264, type: !5)
!172 = !DILocation(line: 0, scope: !166)
!173 = !DILocation(line: 264, column: 45, scope: !166)
!174 = !DILocation(line: 264, column: 43, scope: !166)
!175 = !DILocation(line: 264, column: 24, scope: !166)
!176 = !DILocation(line: 265, column: 13, scope: !177)
!177 = distinct !DILexicalBlock(scope: !166, file: !3, line: 265, column: 9)
!178 = !DILocation(line: 265, column: 9, scope: !166)
!179 = !DILocation(line: 266, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !3, line: 265, column: 22)
!181 = !DILocation(line: 267, column: 9, scope: !180)
!182 = !DILocation(line: 269, column: 5, scope: !166)
!183 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 272, type: !184, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !186)
!184 = !DISubroutineType(types: !185)
!185 = !{!8, !6}
!186 = !{!187, !188}
!187 = !DILocalVariable(name: "n", arg: 1, scope: !183, file: !3, line: 272, type: !6)
!188 = !DILocalVariable(name: "ptr", scope: !183, file: !3, line: 273, type: !8)
!189 = !DILocation(line: 0, scope: !183)
!190 = !DILocation(line: 273, column: 48, scope: !183)
!191 = !DILocation(line: 273, column: 26, scope: !183)
!192 = !DILocation(line: 274, column: 13, scope: !193)
!193 = distinct !DILexicalBlock(scope: !183, file: !3, line: 274, column: 9)
!194 = !DILocation(line: 274, column: 9, scope: !183)
!195 = !DILocation(line: 275, column: 9, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !3, line: 274, column: 22)
!197 = !DILocation(line: 276, column: 9, scope: !196)
!198 = !DILocation(line: 278, column: 5, scope: !183)
!199 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 281, type: !200, scopeLine: 281, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !202)
!200 = !DISubroutineType(types: !201)
!201 = !{!6}
!202 = !{!203, !204, !209, !210, !212, !213}
!203 = !DILocalVariable(name: "status", scope: !199, file: !3, line: 282, type: !6)
!204 = !DILocalVariable(name: "errstring", scope: !199, file: !3, line: 283, type: !205)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 1024, elements: !207)
!206 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!207 = !{!208}
!208 = !DISubrange(count: 128)
!209 = !DILocalVariable(name: "n", scope: !199, file: !3, line: 296, type: !6)
!210 = !DILocalVariable(name: "i", scope: !211, file: !3, line: 307, type: !6)
!211 = distinct !DILexicalBlock(scope: !199, file: !3, line: 307, column: 5)
!212 = !DILocalVariable(name: "sum", scope: !199, file: !3, line: 318, type: !6)
!213 = !DILocalVariable(name: "i", scope: !214, file: !3, line: 320, type: !6)
!214 = distinct !DILexicalBlock(scope: !199, file: !3, line: 320, column: 5)
!215 = !DILocation(line: 283, column: 5, scope: !199)
!216 = !DILocation(line: 283, column: 10, scope: !199)
!217 = !DILocation(line: 285, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !199, file: !3, line: 285, column: 9)
!219 = !DILocation(line: 285, column: 45, scope: !218)
!220 = !DILocation(line: 285, column: 9, scope: !199)
!221 = !DILocation(line: 286, column: 17, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !3, line: 285, column: 66)
!223 = !DILocation(line: 286, column: 9, scope: !222)
!224 = !DILocation(line: 287, column: 9, scope: !222)
!225 = !DILocation(line: 291, column: 19, scope: !226)
!226 = distinct !DILexicalBlock(scope: !199, file: !3, line: 291, column: 9)
!227 = !DILocation(line: 0, scope: !199)
!228 = !DILocation(line: 291, column: 52, scope: !226)
!229 = !DILocation(line: 291, column: 9, scope: !199)
!230 = !DILocation(line: 291, column: 64, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !3, line: 291, column: 64)
!232 = !DILocation(line: 294, column: 35, scope: !233)
!233 = distinct !DILexicalBlock(scope: !199, file: !3, line: 294, column: 9)
!234 = !DILocation(line: 294, column: 19, scope: !233)
!235 = !DILocation(line: 294, column: 69, scope: !233)
!236 = !DILocation(line: 294, column: 9, scope: !199)
!237 = !DILocation(line: 294, column: 81, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !3, line: 294, column: 81)
!239 = !DILocation(line: 298, column: 9, scope: !199)
!240 = !DILocation(line: 298, column: 7, scope: !199)
!241 = !DILocation(line: 299, column: 9, scope: !199)
!242 = !DILocation(line: 299, column: 7, scope: !199)
!243 = !DILocation(line: 300, column: 9, scope: !199)
!244 = !DILocation(line: 300, column: 7, scope: !199)
!245 = !DILocation(line: 301, column: 12, scope: !199)
!246 = !DILocation(line: 301, column: 10, scope: !199)
!247 = !DILocation(line: 303, column: 13, scope: !199)
!248 = !DILocation(line: 305, column: 11, scope: !199)
!249 = !DILocation(line: 305, column: 5, scope: !199)
!250 = !DILocation(line: 0, scope: !211)
!251 = !DILocation(line: 307, column: 5, scope: !211)
!252 = !DILocation(line: 314, column: 5, scope: !199)
!253 = !DILocation(line: 0, scope: !214)
!254 = !DILocation(line: 320, column: 5, scope: !214)
!255 = !DILocation(line: 308, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 307, column: 33)
!257 = distinct !DILexicalBlock(scope: !211, file: !3, line: 307, column: 5)
!258 = !DILocation(line: 308, column: 14, scope: !256)
!259 = !DILocation(line: 309, column: 9, scope: !256)
!260 = !DILocation(line: 309, column: 14, scope: !256)
!261 = !DILocation(line: 310, column: 9, scope: !256)
!262 = !DILocation(line: 310, column: 14, scope: !256)
!263 = !DILocation(line: 311, column: 22, scope: !256)
!264 = !DILocation(line: 311, column: 27, scope: !256)
!265 = !DILocation(line: 311, column: 9, scope: !256)
!266 = !DILocation(line: 311, column: 17, scope: !256)
!267 = !DILocation(line: 307, column: 28, scope: !257)
!268 = !DILocation(line: 307, column: 23, scope: !257)
!269 = distinct !{!269, !251, !270, !148, !149}
!270 = !DILocation(line: 312, column: 5, scope: !211)
!271 = !DILocation(line: 324, column: 5, scope: !199)
!272 = !DILocation(line: 326, column: 10, scope: !199)
!273 = !DILocation(line: 326, column: 5, scope: !199)
!274 = !DILocation(line: 327, column: 10, scope: !199)
!275 = !DILocation(line: 327, column: 5, scope: !199)
!276 = !DILocation(line: 328, column: 10, scope: !199)
!277 = !DILocation(line: 328, column: 5, scope: !199)
!278 = !DILocation(line: 329, column: 10, scope: !199)
!279 = !DILocation(line: 329, column: 5, scope: !199)
!280 = !DILocation(line: 331, column: 53, scope: !199)
!281 = !{!282, !282, i64 0}
!282 = !{!"long long", !64, i64 0}
!283 = !DILocation(line: 331, column: 5, scope: !199)
!284 = !DILocation(line: 332, column: 36, scope: !199)
!285 = !DILocation(line: 332, column: 5, scope: !199)
!286 = !DILocation(line: 333, column: 50, scope: !199)
!287 = !DILocation(line: 333, column: 5, scope: !199)
!288 = !DILocation(line: 334, column: 49, scope: !199)
!289 = !DILocation(line: 334, column: 5, scope: !199)
!290 = !DILocation(line: 335, column: 40, scope: !199)
!291 = !DILocation(line: 335, column: 5, scope: !199)
!292 = !DILocation(line: 337, column: 38, scope: !293)
!293 = distinct !DILexicalBlock(scope: !199, file: !3, line: 337, column: 9)
!294 = !DILocation(line: 337, column: 19, scope: !293)
!295 = !DILocation(line: 337, column: 72, scope: !293)
!296 = !DILocation(line: 337, column: 9, scope: !199)
!297 = !DILocation(line: 321, column: 16, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 320, column: 33)
!299 = distinct !DILexicalBlock(scope: !214, file: !3, line: 320, column: 5)
!300 = !DILocation(line: 321, column: 13, scope: !298)
!301 = !DILocation(line: 320, column: 28, scope: !299)
!302 = !DILocation(line: 320, column: 23, scope: !299)
!303 = distinct !{!303, !254, !304, !148, !149}
!304 = !DILocation(line: 322, column: 5, scope: !214)
!305 = !DILocation(line: 337, column: 84, scope: !306)
!306 = distinct !DILexicalBlock(scope: !293, file: !3, line: 337, column: 84)
!307 = !DILocation(line: 340, column: 19, scope: !308)
!308 = distinct !DILexicalBlock(scope: !199, file: !3, line: 340, column: 9)
!309 = !DILocation(line: 340, column: 53, scope: !308)
!310 = !DILocation(line: 340, column: 9, scope: !199)
!311 = !DILocation(line: 340, column: 65, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !3, line: 340, column: 65)
!313 = !DILocation(line: 343, column: 5, scope: !199)
!314 = !DILocation(line: 346, column: 1, scope: !199)
!315 = !DILocation(line: 345, column: 5, scope: !199)
!316 = !DISubprogram(name: "PAPI_library_init", scope: !159, file: !159, line: 1172, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!317 = !DISubprogram(name: "PAPI_create_eventset", scope: !159, file: !159, line: 1147, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!318 = !DISubroutineType(types: !319)
!319 = !{!6, !5}
!320 = !DISubprogram(name: "PAPI_add_events", scope: !159, file: !159, line: 1143, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!321 = !DISubroutineType(types: !322)
!322 = !{!6, !6, !5, !6}
!323 = !DISubprogram(name: "srand", scope: !324, file: !324, line: 455, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!324 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!325 = !DISubroutineType(types: !326)
!326 = !{null, !327}
!327 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!328 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !333}
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !332, line: 7, baseType: !52)
!332 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!334 = !DISubprogram(name: "PAPI_remove_events", scope: !159, file: !159, line: 1192, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!335 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !159, file: !159, line: 1149, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!336 = !DISubprogram(name: "PAPI_shutdown", scope: !159, file: !159, line: 1202, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!337 = !DISubroutineType(types: !338)
!338 = !{null}
