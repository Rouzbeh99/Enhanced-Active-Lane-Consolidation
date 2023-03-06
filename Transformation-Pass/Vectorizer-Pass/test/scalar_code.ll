; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.St = type { [5000000 x i32], [5000000 x i32] }
%struct.timespec = type { i64, i64 }

@EventSet = dso_local global i32 -1, align 4, !dbg !0
@CounterValues = dso_local global [8 x i64] zeroinitializer, align 8, !dbg !11
@EventCodes = dso_local global [8 x i32] [i32 -2147483598, i32 -2147483589, i32 -2147483648, i32 -2147483602, i32 -2147483614, i32 -2147483591, i32 -2147483630, i32 -2147483609], align 4, !dbg !17
@ExecutionTime = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !20
@n = dso_local local_unnamed_addr constant i32 5000000, align 4, !dbg !23
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Error %d %s:line %d: \0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@a = dso_local local_unnamed_addr global ptr null, align 8, !dbg !40
@b = dso_local local_unnamed_addr global ptr null, align 8, !dbg !42
@c = dso_local local_unnamed_addr global ptr null, align 8, !dbg !44
@cond = dso_local local_unnamed_addr global ptr null, align 8, !dbg !46
@.str.4 = private unnamed_addr constant [16 x i8] c"checksum:  %d \0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\0ATotal instructions executed: %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Total program_cycles: %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Total L1 data cache misses: %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Total branch mispredicted: %lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Total cycles for memory_stall ops: %lld\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Total cycles for any resource_stall: %lld\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Total FPU idle cycles: %lld\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Total Cycles with no_instructions executed: %lld\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Execution time: %lf ms\0A\00", align 1
@s = dso_local local_unnamed_addr global %struct.St zeroinitializer, align 4, !dbg !26
@arr2D = dso_local local_unnamed_addr global [3 x [5000000 x i32]] zeroinitializer, align 4, !dbg !35
@str.15 = private unnamed_addr constant [33 x i8] c"error: failed to allocate memory\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @getTimeMiliSeconds() local_unnamed_addr #0 !dbg !60 {
entry:
  %ts = alloca %struct.timespec, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #11, !dbg !74
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !64, metadata !DIExpression()), !dbg !75
  %call = call i32 @clock_gettime(i32 noundef 2, ptr noundef nonnull %ts) #11, !dbg !76
  %0 = load i64, ptr %ts, align 8, !dbg !77, !tbaa !78
  %conv = sitofp i64 %0 to double, !dbg !83
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %ts, i64 0, i32 1, !dbg !84
  %1 = load i64, ptr %tv_nsec, align 8, !dbg !84, !tbaa !85
  %conv1 = sitofp i64 %1 to double, !dbg !86
  %mul2 = fmul double %conv1, 0x3EB0C6F7A0B5ED8D, !dbg !87
  %2 = call double @llvm.fmuladd.f64(double %conv, double 1.000000e+03, double %mul2), !dbg !88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #11, !dbg !89
  ret double %2, !dbg !90
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare !dbg !91 i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_if(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !100 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !106, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr %b, metadata !107, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr %c, metadata !108, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr %cond, metadata !109, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i32 %n, metadata !110, metadata !DIExpression()), !dbg !115
  %call = tail call double @getTimeMiliSeconds(), !dbg !116
  call void @llvm.dbg.value(metadata double %call, metadata !112, metadata !DIExpression()), !dbg !115
  %0 = load i32, ptr @EventSet, align 4, !dbg !117, !tbaa !119
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #11, !dbg !121
  call void @llvm.dbg.value(metadata i32 %call1, metadata !111, metadata !DIExpression()), !dbg !115
  %cmp.not = icmp eq i32 %call1, 0, !dbg !122
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !123

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !113, metadata !DIExpression()), !dbg !124
  %cmp3131 = icmp sgt i32 %n, 0, !dbg !125
  br i1 %cmp3131, label %for.body.preheader, label %for.cond.cleanup, !dbg !127

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !125
  br label %for.body, !dbg !127

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !128, !tbaa !130
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 47) #12, !dbg !128
  tail call void @exit(i32 noundef %call1) #13, !dbg !128
  unreachable, !dbg !128

for.cond.cleanup:                                 ; preds = %for.inc, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !132, !tbaa !119
  %call73 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #11, !dbg !134
  call void @llvm.dbg.value(metadata i32 %call73, metadata !111, metadata !DIExpression()), !dbg !115
  %cmp74.not = icmp eq i32 %call73, 0, !dbg !135
  br i1 %cmp74.not, label %if.end77, label %if.then75, !dbg !136

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !113, metadata !DIExpression()), !dbg !124
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !137
  %3 = load i8, ptr %arrayidx, align 1, !dbg !137, !tbaa !140, !range !142
  %tobool.not = icmp eq i8 %3, 0, !dbg !137
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !143

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !144
  %arrayidx8 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !146
  %4 = load i32, ptr %arrayidx8, align 4, !dbg !146, !tbaa !119
  %arrayidx11 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !147
  %5 = load i32, ptr %arrayidx11, align 4, !dbg !147, !tbaa !119
  %6 = trunc i64 %indvars.iv to i32, !dbg !148
  %mul21 = mul nsw i32 %5, %6, !dbg !148
  %.neg = mul i32 %4, -2
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !149
  %7 = shl i32 %indvars.iv.tr, 1, !dbg !149
  %sub15 = add i32 %5, %7, !dbg !149
  %add = add i32 %sub15, %mul21, !dbg !150
  %add25 = add i32 %add, %.neg, !dbg !151
  store i32 %add25, ptr %arrayidx6, align 4, !dbg !151, !tbaa !119
  %mul43127.neg = sub i32 -3, %4, !dbg !152
  %add44.neg134 = mul i32 %mul43127.neg, %6, !dbg !152
  %8 = add i32 %4, %5
  %reass.add129 = sub i32 %add25, %8
  %reass.mul130 = shl i32 %reass.add129, 1
  %add37 = add i32 %add44.neg134, 2, !dbg !153
  %sub47 = add i32 %add37, %reass.mul130, !dbg !154
  store i32 %sub47, ptr %arrayidx11, align 4, !dbg !154, !tbaa !119
  %9 = add nsw i32 %sub47, %add25, !dbg !155
  %10 = sub nsw i32 %4, %sub47, !dbg !156
  %sub61 = shl nsw i32 %10, 1, !dbg !156
  %mul62 = mul nsw i32 %6, %6, !dbg !157
  %add63 = add nsw i32 %sub61, %mul62, !dbg !158
  %mul64.neg = mul i32 %add63, -3, !dbg !159
  %11 = sub i32 %9, %6, !dbg !160
  %sub65 = shl i32 %11, 1, !dbg !160
  %sub71 = add i32 %sub65, %mul64.neg, !dbg !161
  store i32 %sub71, ptr %arrayidx8, align 4, !dbg !161, !tbaa !119
  br label %for.inc, !dbg !162

for.inc:                                          ; preds = %for.body, %if.then4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !163
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !113, metadata !DIExpression()), !dbg !124
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !125
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !127, !llvm.loop !164

if.then75:                                        ; preds = %for.cond.cleanup
  %12 = load ptr, ptr @stderr, align 8, !dbg !168, !tbaa !130
  %call76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str, i32 noundef %call73, ptr noundef nonnull @.str.1, i32 noundef 63) #12, !dbg !168
  tail call void @exit(i32 noundef %call73) #13, !dbg !168
  unreachable, !dbg !168

if.end77:                                         ; preds = %for.cond.cleanup
  %call78 = tail call double @getTimeMiliSeconds(), !dbg !170
  %sub79 = fsub double %call78, %call, !dbg !171
  store double %sub79, ptr @ExecutionTime, align 8, !dbg !172, !tbaa !173
  ret void, !dbg !175
}

declare !dbg !176 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !180 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !184 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !188, metadata !DIExpression()), !dbg !190
  %conv = sext i32 %n to i64, !dbg !191
  %mul = shl nsw i64 %conv, 2, !dbg !192
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #14, !dbg !193
  call void @llvm.dbg.value(metadata ptr %call, metadata !189, metadata !DIExpression()), !dbg !190
  %cmp = icmp eq ptr %call, null, !dbg !194
  br i1 %cmp, label %if.then, label %if.end, !dbg !196

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.15), !dbg !197
  tail call void @exit(i32 noundef 1) #13, !dbg !199
  unreachable, !dbg !199

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !200
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !201 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !205, metadata !DIExpression()), !dbg !207
  %conv = sext i32 %n to i64, !dbg !208
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #14, !dbg !209
  call void @llvm.dbg.value(metadata ptr %call, metadata !206, metadata !DIExpression()), !dbg !207
  %cmp = icmp eq ptr %call, null, !dbg !210
  br i1 %cmp, label %if.then, label %if.end, !dbg !212

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.15), !dbg !213
  tail call void @exit(i32 noundef 1) #13, !dbg !215
  unreachable, !dbg !215

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !216
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !217 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #11, !dbg !232
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !222, metadata !DIExpression()), !dbg !233
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #11, !dbg !234
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !236
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !237

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !238, !tbaa !130
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #12, !dbg !240
  call void @exit(i32 noundef 1) #13, !dbg !241
  unreachable, !dbg !241

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #11, !dbg !242
  call void @llvm.dbg.value(metadata i32 %call2, metadata !221, metadata !DIExpression()), !dbg !244
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !245
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !246

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !247, !tbaa !130
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 317) #12, !dbg !247
  tail call void @exit(i32 noundef %call2) #13, !dbg !247
  unreachable, !dbg !247

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !249, !tbaa !119
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 8) #11, !dbg !251
  call void @llvm.dbg.value(metadata i32 %call7, metadata !221, metadata !DIExpression()), !dbg !244
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !252
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !253

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !254, !tbaa !130
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 320) #12, !dbg !254
  tail call void @exit(i32 noundef %call7) #13, !dbg !254
  unreachable, !dbg !254

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !256
  store ptr %call12, ptr @a, align 8, !dbg !257, !tbaa !130
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !258
  store ptr %call13, ptr @b, align 8, !dbg !259, !tbaa !130
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !260
  store ptr %call14, ptr @c, align 8, !dbg !261, !tbaa !130
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !262
  store ptr %call15, ptr @cond, align 8, !dbg !263, !tbaa !130
  store i8 0, ptr %call15, align 1, !dbg !264, !tbaa !140
  %call16 = tail call i64 @time(ptr noundef null) #11, !dbg !265
  %conv = trunc i64 %call16 to i32, !dbg !265
  tail call void @srand(i32 noundef %conv) #11, !dbg !266
  call void @llvm.dbg.value(metadata i32 1, metadata !227, metadata !DIExpression()), !dbg !267
  br label %for.body, !dbg !268

for.cond.cleanup:                                 ; preds = %for.body
  %4 = load ptr, ptr @a, align 8, !dbg !269, !tbaa !130
  %5 = load ptr, ptr @b, align 8, !dbg !270, !tbaa !130
  %6 = load ptr, ptr @c, align 8, !dbg !271, !tbaa !130
  tail call void @simple_if(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %11, i32 noundef 5000000), !dbg !272
  call void @llvm.dbg.value(metadata i32 0, metadata !229, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i32 0, metadata !230, metadata !DIExpression()), !dbg !273
  %7 = load ptr, ptr @c, align 8, !tbaa !130
  call void @llvm.dbg.value(metadata i32 0, metadata !230, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i32 0, metadata !229, metadata !DIExpression()), !dbg !244
  br label %for.body34, !dbg !274

for.body:                                         ; preds = %if.end11, %for.body
  %indvars.iv = phi i64 [ 1, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !227, metadata !DIExpression()), !dbg !267
  %8 = load ptr, ptr @a, align 8, !dbg !275, !tbaa !130
  %arrayidx19 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv, !dbg !275
  store i32 1, ptr %arrayidx19, align 4, !dbg !278, !tbaa !119
  %9 = load ptr, ptr @b, align 8, !dbg !279, !tbaa !130
  %arrayidx21 = getelementptr inbounds i32, ptr %9, i64 %indvars.iv, !dbg !279
  store i32 -1, ptr %arrayidx21, align 4, !dbg !280, !tbaa !119
  %10 = load ptr, ptr @c, align 8, !dbg !281, !tbaa !130
  %arrayidx23 = getelementptr inbounds i32, ptr %10, i64 %indvars.iv, !dbg !281
  store i32 0, ptr %arrayidx23, align 4, !dbg !282, !tbaa !119
  %call24 = tail call i32 @rand() #11, !dbg !283
  %rem = srem i32 %call24, 50, !dbg !284
  %cmp25 = icmp eq i32 %rem, 0, !dbg !285
  %11 = load ptr, ptr @cond, align 8, !dbg !286, !tbaa !130
  %arrayidx28 = getelementptr inbounds i8, ptr %11, i64 %indvars.iv, !dbg !286
  %frombool = zext i1 %cmp25 to i8, !dbg !287
  store i8 %frombool, ptr %arrayidx28, align 1, !dbg !287, !tbaa !140
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !288
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !227, metadata !DIExpression()), !dbg !267
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !289
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !268, !llvm.loop !290

for.cond.cleanup33:                               ; preds = %for.body34
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add), !dbg !292
  %putchar = tail call i32 @putchar(i32 10), !dbg !293
  %12 = load ptr, ptr @a, align 8, !dbg !294, !tbaa !130
  tail call void @free(ptr noundef %12) #11, !dbg !295
  %13 = load ptr, ptr @b, align 8, !dbg !296, !tbaa !130
  tail call void @free(ptr noundef %13) #11, !dbg !297
  %14 = load ptr, ptr @c, align 8, !dbg !298, !tbaa !130
  tail call void @free(ptr noundef %14) #11, !dbg !299
  %15 = load ptr, ptr @cond, align 8, !dbg !300, !tbaa !130
  tail call void @free(ptr noundef %15) #11, !dbg !301
  %16 = load i64, ptr @CounterValues, align 8, !dbg !302, !tbaa !303
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %16), !dbg !305
  %17 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !306, !tbaa !303
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %17), !dbg !307
  %18 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !308, !tbaa !303
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %18), !dbg !309
  %19 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !310, !tbaa !303
  %call45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %19), !dbg !311
  %20 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 4), align 8, !dbg !312, !tbaa !303
  %call46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, i64 noundef %20), !dbg !313
  %21 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 5), align 8, !dbg !314, !tbaa !303
  %call47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, i64 noundef %21), !dbg !315
  %22 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 6), align 8, !dbg !316, !tbaa !303
  %call48 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.12, i64 noundef %22), !dbg !317
  %23 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 7), align 8, !dbg !318, !tbaa !303
  %call49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.13, i64 noundef %23), !dbg !319
  %24 = load double, ptr @ExecutionTime, align 8, !dbg !320, !tbaa !173
  %call50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.14, double noundef %24), !dbg !321
  %25 = load i32, ptr @EventSet, align 4, !dbg !322, !tbaa !119
  %call51 = tail call i32 @PAPI_remove_events(i32 noundef %25, ptr noundef nonnull @EventCodes, i32 noundef 8) #11, !dbg !324
  call void @llvm.dbg.value(metadata i32 %call51, metadata !221, metadata !DIExpression()), !dbg !244
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !325
  br i1 %cmp52.not, label %if.end56, label %if.then54, !dbg !326

for.body34:                                       ; preds = %for.cond.cleanup, %for.body34
  %indvars.iv82 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next83, %for.body34 ]
  %sum.079 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body34 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv82, metadata !230, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i32 %sum.079, metadata !229, metadata !DIExpression()), !dbg !244
  %arrayidx36 = getelementptr inbounds i32, ptr %7, i64 %indvars.iv82, !dbg !327
  %26 = load i32, ptr %arrayidx36, align 4, !dbg !327, !tbaa !119
  %add = add nsw i32 %26, %sum.079, !dbg !330
  call void @llvm.dbg.value(metadata i32 %add, metadata !229, metadata !DIExpression()), !dbg !244
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1, !dbg !331
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next83, metadata !230, metadata !DIExpression()), !dbg !273
  %exitcond85.not = icmp eq i64 %indvars.iv.next83, 5000000, !dbg !332
  br i1 %exitcond85.not, label %for.cond.cleanup33, label %for.body34, !dbg !274, !llvm.loop !333

if.then54:                                        ; preds = %for.cond.cleanup33
  %27 = load ptr, ptr @stderr, align 8, !dbg !335, !tbaa !130
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str, i32 noundef %call51, ptr noundef nonnull @.str.1, i32 noundef 374) #12, !dbg !335
  tail call void @exit(i32 noundef %call51) #13, !dbg !335
  unreachable, !dbg !335

if.end56:                                         ; preds = %for.cond.cleanup33
  %call57 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #11, !dbg !337
  call void @llvm.dbg.value(metadata i32 %call57, metadata !221, metadata !DIExpression()), !dbg !244
  %cmp58.not = icmp eq i32 %call57, 0, !dbg !339
  br i1 %cmp58.not, label %if.end62, label %if.then60, !dbg !340

if.then60:                                        ; preds = %if.end56
  %28 = load ptr, ptr @stderr, align 8, !dbg !341, !tbaa !130
  %call61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str, i32 noundef %call57, ptr noundef nonnull @.str.1, i32 noundef 377) #12, !dbg !341
  tail call void @exit(i32 noundef %call57) #13, !dbg !341
  unreachable, !dbg !341

if.end62:                                         ; preds = %if.end56
  tail call void @PAPI_shutdown() #11, !dbg !343
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #11, !dbg !344
  ret i32 0, !dbg !345
}

declare !dbg !346 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !347 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !350 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !353 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !358 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !364 i32 @rand() local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !365 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !366 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !367 void @PAPI_shutdown() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #6 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "EventSet", scope: !2, file: !3, line: 22, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "f671bbd2b3d4888af78fddba48dc02d8")
!4 = !{!5, !7, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = !{!0, !11, !17, !20, !23, !26, !35, !40, !42, !44, !46}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CounterValues", scope: !2, file: !3, line: 24, type: !13, isLocal: false, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !15)
!14 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!15 = !{!16}
!16 = !DISubrange(count: 8)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "EventCodes", scope: !2, file: !3, line: 26, type: !19, isLocal: false, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !15)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "ExecutionTime", scope: !2, file: !3, line: 27, type: !22, isLocal: false, isDefinition: true)
!22 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 30, type: !25, isLocal: false, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "s", scope: !2, file: !3, line: 37, type: !28, isLocal: false, isDefinition: true)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "St", file: !3, line: 32, size: 320000000, elements: !29)
!29 = !{!30, !34}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "array1", scope: !28, file: !3, line: 33, baseType: !31, size: 160000000)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 160000000, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 5000000)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "array2", scope: !28, file: !3, line: 34, baseType: !31, size: 160000000, offset: 160000000)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "arr2D", scope: !2, file: !3, line: 38, type: !37, isLocal: false, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 480000000, elements: !38)
!38 = !{!39, !33}
!39 = !DISubrange(count: 3)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 284, type: !5, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 285, type: !5, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 286, type: !5, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 287, type: !8, isLocal: false, isDefinition: true)
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"PIC Level", i32 2}
!56 = !{i32 7, !"PIE Level", i32 2}
!57 = !{i32 7, !"uwtable", i32 2}
!58 = !{i32 7, !"frame-pointer", i32 1}
!59 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!60 = distinct !DISubprogram(name: "getTimeMiliSeconds", scope: !3, file: !3, line: 15, type: !61, scopeLine: 15, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !63)
!61 = !DISubroutineType(types: !62)
!62 = !{!22}
!63 = !{!64}
!64 = !DILocalVariable(name: "ts", scope: !60, file: !3, line: 16, type: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !66, line: 10, size: 128, elements: !67)
!66 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!67 = !{!68, !72}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !65, file: !66, line: 12, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !70, line: 160, baseType: !71)
!70 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!71 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !65, file: !66, line: 16, baseType: !73, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !70, line: 196, baseType: !71)
!74 = !DILocation(line: 16, column: 5, scope: !60)
!75 = !DILocation(line: 16, column: 21, scope: !60)
!76 = !DILocation(line: 17, column: 5, scope: !60)
!77 = !DILocation(line: 18, column: 15, scope: !60)
!78 = !{!79, !80, i64 0}
!79 = !{!"timespec", !80, i64 0, !80, i64 8}
!80 = !{!"long", !81, i64 0}
!81 = !{!"omnipotent char", !82, i64 0}
!82 = !{!"Simple C/C++ TBAA"}
!83 = !DILocation(line: 18, column: 12, scope: !60)
!84 = !DILocation(line: 18, column: 35, scope: !60)
!85 = !{!79, !80, i64 8}
!86 = !DILocation(line: 18, column: 32, scope: !60)
!87 = !DILocation(line: 18, column: 43, scope: !60)
!88 = !DILocation(line: 18, column: 30, scope: !60)
!89 = !DILocation(line: 19, column: 1, scope: !60)
!90 = !DILocation(line: 18, column: 5, scope: !60)
!91 = !DISubprogram(name: "clock_gettime", scope: !92, file: !92, line: 213, type: !93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!92 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!93 = !DISubroutineType(types: !94)
!94 = !{!6, !95, !98}
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !96, line: 7, baseType: !97)
!96 = !DIFile(filename: "/usr/include/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !70, line: 168, baseType: !6)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!99 = !{}
!100 = distinct !DISubprogram(name: "simple_if", scope: !3, file: !3, line: 40, type: !101, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !105)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !103, !103, !103, !104, !6}
!103 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!104 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113}
!106 = !DILocalVariable(name: "a", arg: 1, scope: !100, file: !3, line: 40, type: !103)
!107 = !DILocalVariable(name: "b", arg: 2, scope: !100, file: !3, line: 40, type: !103)
!108 = !DILocalVariable(name: "c", arg: 3, scope: !100, file: !3, line: 40, type: !103)
!109 = !DILocalVariable(name: "cond", arg: 4, scope: !100, file: !3, line: 41, type: !104)
!110 = !DILocalVariable(name: "n", arg: 5, scope: !100, file: !3, line: 41, type: !6)
!111 = !DILocalVariable(name: "status", scope: !100, file: !3, line: 43, type: !6)
!112 = !DILocalVariable(name: "t", scope: !100, file: !3, line: 45, type: !22)
!113 = !DILocalVariable(name: "i", scope: !114, file: !3, line: 50, type: !6)
!114 = distinct !DILexicalBlock(scope: !100, file: !3, line: 50, column: 5)
!115 = !DILocation(line: 0, scope: !100)
!116 = !DILocation(line: 45, column: 16, scope: !100)
!117 = !DILocation(line: 47, column: 30, scope: !118)
!118 = distinct !DILexicalBlock(scope: !100, file: !3, line: 47, column: 9)
!119 = !{!120, !120, i64 0}
!120 = !{!"int", !81, i64 0}
!121 = !DILocation(line: 47, column: 19, scope: !118)
!122 = !DILocation(line: 47, column: 41, scope: !118)
!123 = !DILocation(line: 47, column: 9, scope: !100)
!124 = !DILocation(line: 0, scope: !114)
!125 = !DILocation(line: 50, column: 23, scope: !126)
!126 = distinct !DILexicalBlock(scope: !114, file: !3, line: 50, column: 5)
!127 = !DILocation(line: 50, column: 5, scope: !114)
!128 = !DILocation(line: 47, column: 53, scope: !129)
!129 = distinct !DILexicalBlock(scope: !118, file: !3, line: 47, column: 53)
!130 = !{!131, !131, i64 0}
!131 = !{!"any pointer", !81, i64 0}
!132 = !DILocation(line: 63, column: 29, scope: !133)
!133 = distinct !DILexicalBlock(scope: !100, file: !3, line: 63, column: 9)
!134 = !DILocation(line: 63, column: 19, scope: !133)
!135 = !DILocation(line: 63, column: 55, scope: !133)
!136 = !DILocation(line: 63, column: 9, scope: !100)
!137 = !DILocation(line: 51, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 51, column: 13)
!139 = distinct !DILexicalBlock(scope: !126, file: !3, line: 50, column: 33)
!140 = !{!141, !141, i64 0}
!141 = !{!"_Bool", !81, i64 0}
!142 = !{i8 0, i8 2}
!143 = !DILocation(line: 51, column: 13, scope: !139)
!144 = !DILocation(line: 52, column: 29, scope: !145)
!145 = distinct !DILexicalBlock(scope: !138, file: !3, line: 51, column: 22)
!146 = !DILocation(line: 52, column: 40, scope: !145)
!147 = !DILocation(line: 52, column: 49, scope: !145)
!148 = !DILocation(line: 53, column: 35, scope: !145)
!149 = !DILocation(line: 52, column: 54, scope: !145)
!150 = !DILocation(line: 52, column: 46, scope: !145)
!151 = !DILocation(line: 53, column: 22, scope: !145)
!152 = !DILocation(line: 55, column: 31, scope: !145)
!153 = !DILocation(line: 54, column: 37, scope: !145)
!154 = !DILocation(line: 55, column: 22, scope: !145)
!155 = !DILocation(line: 56, column: 33, scope: !145)
!156 = !DILocation(line: 56, column: 60, scope: !145)
!157 = !DILocation(line: 56, column: 75, scope: !145)
!158 = !DILocation(line: 56, column: 71, scope: !145)
!159 = !DILocation(line: 56, column: 48, scope: !145)
!160 = !DILocation(line: 56, column: 44, scope: !145)
!161 = !DILocation(line: 57, column: 22, scope: !145)
!162 = !DILocation(line: 58, column: 9, scope: !145)
!163 = !DILocation(line: 50, column: 28, scope: !126)
!164 = distinct !{!164, !127, !165, !166, !167}
!165 = !DILocation(line: 59, column: 5, scope: !114)
!166 = !{!"llvm.loop.mustprogress"}
!167 = !{!"llvm.loop.unroll.disable"}
!168 = !DILocation(line: 63, column: 67, scope: !169)
!169 = distinct !DILexicalBlock(scope: !133, file: !3, line: 63, column: 67)
!170 = !DILocation(line: 65, column: 21, scope: !100)
!171 = !DILocation(line: 65, column: 42, scope: !100)
!172 = !DILocation(line: 65, column: 19, scope: !100)
!173 = !{!174, !174, i64 0}
!174 = !{!"double", !81, i64 0}
!175 = !DILocation(line: 66, column: 1, scope: !100)
!176 = !DISubprogram(name: "PAPI_start", scope: !177, file: !177, line: 1204, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!177 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!178 = !DISubroutineType(types: !179)
!179 = !{!6, !6}
!180 = !DISubprogram(name: "PAPI_stop", scope: !177, file: !177, line: 1206, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!181 = !DISubroutineType(types: !182)
!182 = !{!6, !6, !183}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!184 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 289, type: !185, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !187)
!185 = !DISubroutineType(types: !186)
!186 = !{!5, !6}
!187 = !{!188, !189}
!188 = !DILocalVariable(name: "n", arg: 1, scope: !184, file: !3, line: 289, type: !6)
!189 = !DILocalVariable(name: "ptr", scope: !184, file: !3, line: 290, type: !5)
!190 = !DILocation(line: 0, scope: !184)
!191 = !DILocation(line: 290, column: 45, scope: !184)
!192 = !DILocation(line: 290, column: 43, scope: !184)
!193 = !DILocation(line: 290, column: 24, scope: !184)
!194 = !DILocation(line: 291, column: 13, scope: !195)
!195 = distinct !DILexicalBlock(scope: !184, file: !3, line: 291, column: 9)
!196 = !DILocation(line: 291, column: 9, scope: !184)
!197 = !DILocation(line: 292, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !3, line: 291, column: 22)
!199 = !DILocation(line: 293, column: 9, scope: !198)
!200 = !DILocation(line: 295, column: 5, scope: !184)
!201 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 298, type: !202, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !204)
!202 = !DISubroutineType(types: !203)
!203 = !{!8, !6}
!204 = !{!205, !206}
!205 = !DILocalVariable(name: "n", arg: 1, scope: !201, file: !3, line: 298, type: !6)
!206 = !DILocalVariable(name: "ptr", scope: !201, file: !3, line: 299, type: !8)
!207 = !DILocation(line: 0, scope: !201)
!208 = !DILocation(line: 299, column: 48, scope: !201)
!209 = !DILocation(line: 299, column: 26, scope: !201)
!210 = !DILocation(line: 300, column: 13, scope: !211)
!211 = distinct !DILexicalBlock(scope: !201, file: !3, line: 300, column: 9)
!212 = !DILocation(line: 300, column: 9, scope: !201)
!213 = !DILocation(line: 301, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !3, line: 300, column: 22)
!215 = !DILocation(line: 302, column: 9, scope: !214)
!216 = !DILocation(line: 304, column: 5, scope: !201)
!217 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 307, type: !218, scopeLine: 307, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !220)
!218 = !DISubroutineType(types: !219)
!219 = !{!6}
!220 = !{!221, !222, !227, !229, !230}
!221 = !DILocalVariable(name: "status", scope: !217, file: !3, line: 308, type: !6)
!222 = !DILocalVariable(name: "errstring", scope: !217, file: !3, line: 309, type: !223)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 1024, elements: !225)
!224 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!225 = !{!226}
!226 = !DISubrange(count: 128)
!227 = !DILocalVariable(name: "i", scope: !228, file: !3, line: 333, type: !6)
!228 = distinct !DILexicalBlock(scope: !217, file: !3, line: 333, column: 5)
!229 = !DILocalVariable(name: "sum", scope: !217, file: !3, line: 349, type: !6)
!230 = !DILocalVariable(name: "i", scope: !231, file: !3, line: 351, type: !6)
!231 = distinct !DILexicalBlock(scope: !217, file: !3, line: 351, column: 5)
!232 = !DILocation(line: 309, column: 5, scope: !217)
!233 = !DILocation(line: 309, column: 10, scope: !217)
!234 = !DILocation(line: 311, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !217, file: !3, line: 311, column: 9)
!236 = !DILocation(line: 311, column: 45, scope: !235)
!237 = !DILocation(line: 311, column: 9, scope: !217)
!238 = !DILocation(line: 312, column: 17, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !3, line: 311, column: 66)
!240 = !DILocation(line: 312, column: 9, scope: !239)
!241 = !DILocation(line: 313, column: 9, scope: !239)
!242 = !DILocation(line: 317, column: 19, scope: !243)
!243 = distinct !DILexicalBlock(scope: !217, file: !3, line: 317, column: 9)
!244 = !DILocation(line: 0, scope: !217)
!245 = !DILocation(line: 317, column: 52, scope: !243)
!246 = !DILocation(line: 317, column: 9, scope: !217)
!247 = !DILocation(line: 317, column: 64, scope: !248)
!248 = distinct !DILexicalBlock(scope: !243, file: !3, line: 317, column: 64)
!249 = !DILocation(line: 320, column: 35, scope: !250)
!250 = distinct !DILexicalBlock(scope: !217, file: !3, line: 320, column: 9)
!251 = !DILocation(line: 320, column: 19, scope: !250)
!252 = !DILocation(line: 320, column: 69, scope: !250)
!253 = !DILocation(line: 320, column: 9, scope: !217)
!254 = !DILocation(line: 320, column: 81, scope: !255)
!255 = distinct !DILexicalBlock(scope: !250, file: !3, line: 320, column: 81)
!256 = !DILocation(line: 323, column: 9, scope: !217)
!257 = !DILocation(line: 323, column: 7, scope: !217)
!258 = !DILocation(line: 324, column: 9, scope: !217)
!259 = !DILocation(line: 324, column: 7, scope: !217)
!260 = !DILocation(line: 325, column: 9, scope: !217)
!261 = !DILocation(line: 325, column: 7, scope: !217)
!262 = !DILocation(line: 326, column: 12, scope: !217)
!263 = !DILocation(line: 326, column: 10, scope: !217)
!264 = !DILocation(line: 328, column: 13, scope: !217)
!265 = !DILocation(line: 330, column: 11, scope: !217)
!266 = !DILocation(line: 330, column: 5, scope: !217)
!267 = !DILocation(line: 0, scope: !228)
!268 = !DILocation(line: 333, column: 5, scope: !228)
!269 = !DILocation(line: 345, column: 15, scope: !217)
!270 = !DILocation(line: 345, column: 18, scope: !217)
!271 = !DILocation(line: 345, column: 21, scope: !217)
!272 = !DILocation(line: 345, column: 5, scope: !217)
!273 = !DILocation(line: 0, scope: !231)
!274 = !DILocation(line: 351, column: 5, scope: !231)
!275 = !DILocation(line: 334, column: 9, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 333, column: 33)
!277 = distinct !DILexicalBlock(scope: !228, file: !3, line: 333, column: 5)
!278 = !DILocation(line: 334, column: 14, scope: !276)
!279 = !DILocation(line: 335, column: 9, scope: !276)
!280 = !DILocation(line: 335, column: 14, scope: !276)
!281 = !DILocation(line: 336, column: 9, scope: !276)
!282 = !DILocation(line: 336, column: 14, scope: !276)
!283 = !DILocation(line: 341, column: 20, scope: !276)
!284 = !DILocation(line: 341, column: 27, scope: !276)
!285 = !DILocation(line: 341, column: 33, scope: !276)
!286 = !DILocation(line: 341, column: 9, scope: !276)
!287 = !DILocation(line: 341, column: 17, scope: !276)
!288 = !DILocation(line: 333, column: 28, scope: !277)
!289 = !DILocation(line: 333, column: 23, scope: !277)
!290 = distinct !{!290, !268, !291, !166, !167}
!291 = !DILocation(line: 342, column: 5, scope: !228)
!292 = !DILocation(line: 356, column: 5, scope: !217)
!293 = !DILocation(line: 357, column: 5, scope: !217)
!294 = !DILocation(line: 359, column: 10, scope: !217)
!295 = !DILocation(line: 359, column: 5, scope: !217)
!296 = !DILocation(line: 360, column: 10, scope: !217)
!297 = !DILocation(line: 360, column: 5, scope: !217)
!298 = !DILocation(line: 361, column: 10, scope: !217)
!299 = !DILocation(line: 361, column: 5, scope: !217)
!300 = !DILocation(line: 362, column: 10, scope: !217)
!301 = !DILocation(line: 362, column: 5, scope: !217)
!302 = !DILocation(line: 364, column: 53, scope: !217)
!303 = !{!304, !304, i64 0}
!304 = !{!"long long", !81, i64 0}
!305 = !DILocation(line: 364, column: 5, scope: !217)
!306 = !DILocation(line: 365, column: 44, scope: !217)
!307 = !DILocation(line: 365, column: 5, scope: !217)
!308 = !DILocation(line: 366, column: 50, scope: !217)
!309 = !DILocation(line: 366, column: 5, scope: !217)
!310 = !DILocation(line: 367, column: 49, scope: !217)
!311 = !DILocation(line: 367, column: 5, scope: !217)
!312 = !DILocation(line: 368, column: 57, scope: !217)
!313 = !DILocation(line: 368, column: 5, scope: !217)
!314 = !DILocation(line: 369, column: 59, scope: !217)
!315 = !DILocation(line: 369, column: 5, scope: !217)
!316 = !DILocation(line: 370, column: 45, scope: !217)
!317 = !DILocation(line: 370, column: 5, scope: !217)
!318 = !DILocation(line: 371, column: 66, scope: !217)
!319 = !DILocation(line: 371, column: 5, scope: !217)
!320 = !DILocation(line: 372, column: 40, scope: !217)
!321 = !DILocation(line: 372, column: 5, scope: !217)
!322 = !DILocation(line: 374, column: 38, scope: !323)
!323 = distinct !DILexicalBlock(scope: !217, file: !3, line: 374, column: 9)
!324 = !DILocation(line: 374, column: 19, scope: !323)
!325 = !DILocation(line: 374, column: 72, scope: !323)
!326 = !DILocation(line: 374, column: 9, scope: !217)
!327 = !DILocation(line: 352, column: 16, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !3, line: 351, column: 33)
!329 = distinct !DILexicalBlock(scope: !231, file: !3, line: 351, column: 5)
!330 = !DILocation(line: 352, column: 13, scope: !328)
!331 = !DILocation(line: 351, column: 28, scope: !329)
!332 = !DILocation(line: 351, column: 23, scope: !329)
!333 = distinct !{!333, !274, !334, !166, !167}
!334 = !DILocation(line: 353, column: 5, scope: !231)
!335 = !DILocation(line: 374, column: 84, scope: !336)
!336 = distinct !DILexicalBlock(scope: !323, file: !3, line: 374, column: 84)
!337 = !DILocation(line: 377, column: 19, scope: !338)
!338 = distinct !DILexicalBlock(scope: !217, file: !3, line: 377, column: 9)
!339 = !DILocation(line: 377, column: 53, scope: !338)
!340 = !DILocation(line: 377, column: 9, scope: !217)
!341 = !DILocation(line: 377, column: 65, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !3, line: 377, column: 65)
!343 = !DILocation(line: 380, column: 5, scope: !217)
!344 = !DILocation(line: 383, column: 1, scope: !217)
!345 = !DILocation(line: 382, column: 5, scope: !217)
!346 = !DISubprogram(name: "PAPI_library_init", scope: !177, file: !177, line: 1172, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!347 = !DISubprogram(name: "PAPI_create_eventset", scope: !177, file: !177, line: 1147, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!348 = !DISubroutineType(types: !349)
!349 = !{!6, !5}
!350 = !DISubprogram(name: "PAPI_add_events", scope: !177, file: !177, line: 1143, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!351 = !DISubroutineType(types: !352)
!352 = !{!6, !6, !5, !6}
!353 = !DISubprogram(name: "srand", scope: !354, file: !354, line: 455, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!354 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!355 = !DISubroutineType(types: !356)
!356 = !{null, !357}
!357 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!358 = !DISubprogram(name: "time", scope: !92, file: !92, line: 75, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!359 = !DISubroutineType(types: !360)
!360 = !{!361, !363}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !362, line: 7, baseType: !69)
!362 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!364 = !DISubprogram(name: "rand", scope: !354, file: !354, line: 453, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!365 = !DISubprogram(name: "PAPI_remove_events", scope: !177, file: !177, line: 1192, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!366 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !177, file: !177, line: 1149, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!367 = !DISubprogram(name: "PAPI_shutdown", scope: !177, file: !177, line: 1202, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!368 = !DISubroutineType(types: !369)
!369 = !{null}
