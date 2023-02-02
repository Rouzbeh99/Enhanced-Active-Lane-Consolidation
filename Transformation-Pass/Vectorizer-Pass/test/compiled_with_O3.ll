; ModuleID = 'test.c'
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
@.str.4 = private unnamed_addr constant [16 x i8] c"checksum:  %d \0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\0ATotal instructions executed: %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Total cycles: %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Total L1 data cache misses: %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Total branch mispredicted: %lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Execution time: %lf ms\0A\00", align 1
@str.11 = private unnamed_addr constant [33 x i8] c"error: failed to allocate memory\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @getTimeMiliSeconds() local_unnamed_addr #0 !dbg !43 {
entry:
  %ts = alloca %struct.timespec, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #11, !dbg !57
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !47, metadata !DIExpression()), !dbg !58
  %call = call i32 @clock_gettime(i32 noundef 2, ptr noundef nonnull %ts) #11, !dbg !59
  %0 = load i64, ptr %ts, align 8, !dbg !60, !tbaa !61
  %conv = sitofp i64 %0 to double, !dbg !66
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %ts, i64 0, i32 1, !dbg !67
  %1 = load i64, ptr %tv_nsec, align 8, !dbg !67, !tbaa !68
  %conv1 = sitofp i64 %1 to double, !dbg !69
  %mul2 = fmul double %conv1, 0x3EB0C6F7A0B5ED8D, !dbg !70
  %2 = call double @llvm.fmuladd.f64(double %conv, double 1.000000e+03, double %mul2), !dbg !71
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #11, !dbg !72
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
define dso_local void @simple_if_else(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !83 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !89, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata ptr %b, metadata !90, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata ptr %c, metadata !91, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata ptr %cond, metadata !92, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i32 %n, metadata !93, metadata !DIExpression()), !dbg !98
  %call = tail call double @getTimeMiliSeconds(), !dbg !99
  call void @llvm.dbg.value(metadata double %call, metadata !95, metadata !DIExpression()), !dbg !98
  %0 = load i32, ptr @EventSet, align 4, !dbg !100, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #11, !dbg !104
  call void @llvm.dbg.value(metadata i32 %call1, metadata !94, metadata !DIExpression()), !dbg !98
  %cmp.not = icmp eq i32 %call1, 0, !dbg !105
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !106

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !107
  %cmp3191 = icmp sgt i32 %n, 0, !dbg !108
  br i1 %cmp3191, label %for.body.preheader, label %for.cond.cleanup, !dbg !110

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !108
  br label %for.body, !dbg !110

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !111, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 65) #12, !dbg !111
  tail call void @exit(i32 noundef %call1) #13, !dbg !111
  unreachable, !dbg !111

for.cond.cleanup:                                 ; preds = %for.inc, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !115, !tbaa !102
  %call109 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #11, !dbg !117
  call void @llvm.dbg.value(metadata i32 %call109, metadata !94, metadata !DIExpression()), !dbg !98
  %cmp110.not = icmp eq i32 %call109, 0, !dbg !118
  br i1 %cmp110.not, label %if.end113, label %if.then111, !dbg !119

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !96, metadata !DIExpression()), !dbg !107
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !120
  %3 = load i8, ptr %arrayidx, align 1, !dbg !120, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %3, 0, !dbg !120
  %arrayidx69 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !126
  br i1 %tobool.not, label %if.else, label %if.then4, !dbg !127

if.then4:                                         ; preds = %for.body
  %arrayidx8 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !128
  %4 = load i32, ptr %arrayidx8, align 4, !dbg !128, !tbaa !102
  %arrayidx11 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !130
  %5 = load i32, ptr %arrayidx11, align 4, !dbg !130, !tbaa !102
  %mul21186 = add i32 %5, 2, !dbg !131
  %6 = trunc i64 %indvars.iv to i32, !dbg !131
  %add22 = mul i32 %mul21186, %6, !dbg !131
  %.neg = mul i32 %4, -2
  %add = add i32 %add22, %5, !dbg !132
  %add25 = add i32 %add, %.neg, !dbg !133
  store i32 %add25, ptr %arrayidx69, align 4, !dbg !133, !tbaa !102
  %mul43187.neg = sub i32 -3, %4, !dbg !134
  %add44.neg194 = mul i32 %mul43187.neg, %6, !dbg !134
  %7 = add i32 %4, %5
  %reass.add189 = sub i32 %add25, %7
  %reass.mul190 = shl i32 %reass.add189, 1
  %add37 = add i32 %add44.neg194, 2, !dbg !135
  %sub47 = add i32 %add37, %reass.mul190, !dbg !136
  store i32 %sub47, ptr %arrayidx11, align 4, !dbg !136, !tbaa !102
  %8 = add nsw i32 %sub47, %add25, !dbg !137
  %add54 = shl nsw i32 %8, 1, !dbg !137
  %9 = sub nsw i32 %4, %sub47, !dbg !138
  %sub61 = shl nsw i32 %9, 1, !dbg !138
  %mul62 = mul nsw i32 %6, %6, !dbg !139
  %add63 = add nsw i32 %sub61, %mul62, !dbg !140
  %mul64.neg = mul i32 %add63, -3, !dbg !141
  %sub65 = add i32 %mul64.neg, %add54, !dbg !142
  store i32 %sub65, ptr %arrayidx8, align 4, !dbg !143, !tbaa !102
  br label %for.inc, !dbg !144

if.else:                                          ; preds = %for.body
  %10 = load i32, ptr %arrayidx69, align 4, !dbg !145, !tbaa !102
  %mul70 = shl nsw i32 %10, 1, !dbg !145
  %arrayidx74 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !147
  %sub80 = shl i32 %10, 2, !dbg !148
  %arrayidx82 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !149
  %mul85.neg = mul i32 %10, -4, !dbg !150
  %add86.neg = add i32 %mul85.neg, -7, !dbg !151
  %sub89 = add i32 %add86.neg, %sub80, !dbg !152
  store i32 %sub89, ptr %arrayidx82, align 4, !dbg !152, !tbaa !102
  %mul92.neg = mul i32 %sub89, -2, !dbg !153
  %add93.neg = add i32 %mul70, -4, !dbg !154
  %sub96 = add i32 %add93.neg, %mul92.neg, !dbg !155
  store i32 %sub96, ptr %arrayidx69, align 4, !dbg !155, !tbaa !102
  %add103 = mul nsw i32 %sub96, 7, !dbg !156
  %add104 = add i32 %mul70, 2, !dbg !157
  %add107 = add i32 %add104, %add103, !dbg !158
  store i32 %add107, ptr %arrayidx74, align 4, !dbg !158, !tbaa !102
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.else
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !159
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !96, metadata !DIExpression()), !dbg !107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !108
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !110, !llvm.loop !160

if.then111:                                       ; preds = %for.cond.cleanup
  %11 = load ptr, ptr @stderr, align 8, !dbg !164, !tbaa !113
  %call112 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef %call109, ptr noundef nonnull @.str.1, i32 noundef 88) #12, !dbg !164
  tail call void @exit(i32 noundef %call109) #13, !dbg !164
  unreachable, !dbg !164

if.end113:                                        ; preds = %for.cond.cleanup
  %call114 = tail call double @getTimeMiliSeconds(), !dbg !166
  %sub115 = fsub double %call114, %call, !dbg !167
  store double %sub115, ptr @ExecutionTime, align 8, !dbg !168, !tbaa !169
  ret void, !dbg !171
}

declare !dbg !172 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !176 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !180 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !184, metadata !DIExpression()), !dbg !186
  %conv = sext i32 %n to i64, !dbg !187
  %mul = shl nsw i64 %conv, 2, !dbg !188
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #14, !dbg !189
  call void @llvm.dbg.value(metadata ptr %call, metadata !185, metadata !DIExpression()), !dbg !186
  %cmp = icmp eq ptr %call, null, !dbg !190
  br i1 %cmp, label %if.then, label %if.end, !dbg !192

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.11), !dbg !193
  tail call void @exit(i32 noundef 1) #13, !dbg !195
  unreachable, !dbg !195

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !196
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !197 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !201, metadata !DIExpression()), !dbg !203
  %conv = sext i32 %n to i64, !dbg !204
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #14, !dbg !205
  call void @llvm.dbg.value(metadata ptr %call, metadata !202, metadata !DIExpression()), !dbg !203
  %cmp = icmp eq ptr %call, null, !dbg !206
  br i1 %cmp, label %if.then, label %if.end, !dbg !208

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.11), !dbg !209
  tail call void @exit(i32 noundef 1) #13, !dbg !211
  unreachable, !dbg !211

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !212
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !213 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #11, !dbg !229
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !218, metadata !DIExpression()), !dbg !230
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #11, !dbg !231
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !233
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !234

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !235, !tbaa !113
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #12, !dbg !237
  call void @exit(i32 noundef 1) #13, !dbg !238
  unreachable, !dbg !238

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #11, !dbg !239
  call void @llvm.dbg.value(metadata i32 %call2, metadata !217, metadata !DIExpression()), !dbg !241
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !242
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !243

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !244, !tbaa !113
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 303) #12, !dbg !244
  tail call void @exit(i32 noundef %call2) #13, !dbg !244
  unreachable, !dbg !244

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !246, !tbaa !102
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #11, !dbg !248
  call void @llvm.dbg.value(metadata i32 %call7, metadata !217, metadata !DIExpression()), !dbg !241
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !249
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !250

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !251, !tbaa !113
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 306) #12, !dbg !251
  tail call void @exit(i32 noundef %call7) #13, !dbg !251
  unreachable, !dbg !251

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 5000000, metadata !223, metadata !DIExpression()), !dbg !241
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !253
  store ptr %call12, ptr @a, align 8, !dbg !254, !tbaa !113
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !255
  store ptr %call13, ptr @b, align 8, !dbg !256, !tbaa !113
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !257
  store ptr %call14, ptr @c, align 8, !dbg !258, !tbaa !113
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !259
  store ptr %call15, ptr @cond, align 8, !dbg !260, !tbaa !113
  store i8 0, ptr %call15, align 1, !dbg !261, !tbaa !123
  %call16 = tail call i64 @time(ptr noundef null) #11, !dbg !262
  %conv = trunc i64 %call16 to i32, !dbg !262
  tail call void @srand(i32 noundef %conv) #11, !dbg !263
  call void @llvm.dbg.value(metadata i32 1, metadata !224, metadata !DIExpression()), !dbg !264
  %4 = load ptr, ptr @a, align 8, !tbaa !113
  %5 = load ptr, ptr @b, align 8, !tbaa !113
  %6 = load ptr, ptr @c, align 8, !tbaa !113
  %7 = load ptr, ptr @cond, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 1, metadata !224, metadata !DIExpression()), !dbg !264
  br label %for.body, !dbg !265

for.cond.cleanup:                                 ; preds = %for.body
  tail call void @simple_if_else(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 5000000), !dbg !266
  call void @llvm.dbg.value(metadata i32 0, metadata !226, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i32 0, metadata !227, metadata !DIExpression()), !dbg !267
  %8 = load ptr, ptr @c, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !227, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32 0, metadata !226, metadata !DIExpression()), !dbg !241
  br label %for.body33, !dbg !268

for.body:                                         ; preds = %if.end11, %for.body
  %indvars.iv = phi i64 [ 1, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !224, metadata !DIExpression()), !dbg !264
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !269
  store i32 1, ptr %arrayidx19, align 4, !dbg !272, !tbaa !102
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !273
  store i32 2, ptr %arrayidx21, align 4, !dbg !274, !tbaa !102
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !275
  store i32 0, ptr %arrayidx23, align 4, !dbg !276, !tbaa !102
  %9 = trunc i64 %indvars.iv to i32, !dbg !277
  %rem = urem i32 %9, 10, !dbg !277
  %cmp24 = icmp eq i32 %rem, 0, !dbg !278
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !279
  %frombool = zext i1 %cmp24 to i8, !dbg !280
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !280, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !281
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !224, metadata !DIExpression()), !dbg !264
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !282
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !265, !llvm.loop !283

for.cond.cleanup32:                               ; preds = %for.body33
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add), !dbg !285
  %putchar = tail call i32 @putchar(i32 10), !dbg !286
  %10 = load ptr, ptr @a, align 8, !dbg !287, !tbaa !113
  tail call void @free(ptr noundef %10) #11, !dbg !288
  %11 = load ptr, ptr @b, align 8, !dbg !289, !tbaa !113
  tail call void @free(ptr noundef %11) #11, !dbg !290
  %12 = load ptr, ptr @c, align 8, !dbg !291, !tbaa !113
  tail call void @free(ptr noundef %12) #11, !dbg !292
  %13 = load ptr, ptr @cond, align 8, !dbg !293, !tbaa !113
  tail call void @free(ptr noundef %13) #11, !dbg !294
  %14 = load i64, ptr @CounterValues, align 8, !dbg !295, !tbaa !296
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %14), !dbg !298
  %15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !299, !tbaa !296
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %15), !dbg !300
  %16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !301, !tbaa !296
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %16), !dbg !302
  %17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !303, !tbaa !296
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %17), !dbg !304
  %18 = load double, ptr @ExecutionTime, align 8, !dbg !305, !tbaa !169
  %call45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, double noundef %18), !dbg !306
  %19 = load i32, ptr @EventSet, align 4, !dbg !307, !tbaa !102
  %call46 = tail call i32 @PAPI_remove_events(i32 noundef %19, ptr noundef nonnull @EventCodes, i32 noundef 4) #11, !dbg !309
  call void @llvm.dbg.value(metadata i32 %call46, metadata !217, metadata !DIExpression()), !dbg !241
  %cmp47.not = icmp eq i32 %call46, 0, !dbg !310
  br i1 %cmp47.not, label %if.end51, label %if.then49, !dbg !311

for.body33:                                       ; preds = %for.cond.cleanup, %for.body33
  %indvars.iv84 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next85, %for.body33 ]
  %sum.081 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body33 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv84, metadata !227, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32 %sum.081, metadata !226, metadata !DIExpression()), !dbg !241
  %arrayidx35 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv84, !dbg !312
  %20 = load i32, ptr %arrayidx35, align 4, !dbg !312, !tbaa !102
  %add = add nsw i32 %20, %sum.081, !dbg !315
  call void @llvm.dbg.value(metadata i32 %add, metadata !226, metadata !DIExpression()), !dbg !241
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1, !dbg !316
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next85, metadata !227, metadata !DIExpression()), !dbg !267
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 5000000, !dbg !317
  br i1 %exitcond87.not, label %for.cond.cleanup32, label %for.body33, !dbg !268, !llvm.loop !318

if.then49:                                        ; preds = %for.cond.cleanup32
  %21 = load ptr, ptr @stderr, align 8, !dbg !320, !tbaa !113
  %call50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %call46, ptr noundef nonnull @.str.1, i32 noundef 351) #12, !dbg !320
  tail call void @exit(i32 noundef %call46) #13, !dbg !320
  unreachable, !dbg !320

if.end51:                                         ; preds = %for.cond.cleanup32
  %call52 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #11, !dbg !322
  call void @llvm.dbg.value(metadata i32 %call52, metadata !217, metadata !DIExpression()), !dbg !241
  %cmp53.not = icmp eq i32 %call52, 0, !dbg !324
  br i1 %cmp53.not, label %if.end57, label %if.then55, !dbg !325

if.then55:                                        ; preds = %if.end51
  %22 = load ptr, ptr @stderr, align 8, !dbg !326, !tbaa !113
  %call56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str, i32 noundef %call52, ptr noundef nonnull @.str.1, i32 noundef 354) #12, !dbg !326
  tail call void @exit(i32 noundef %call52) #13, !dbg !326
  unreachable, !dbg !326

if.end57:                                         ; preds = %if.end51
  tail call void @PAPI_shutdown() #11, !dbg !328
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #11, !dbg !329
  ret i32 0, !dbg !330
}

declare !dbg !331 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !332 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !335 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !338 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !343 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !349 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !350 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !351 void @PAPI_shutdown() local_unnamed_addr #4

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
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "EventSet", scope: !2, file: !3, line: 22, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "d8d2d1c5df4e3e0fb6003f8d4ca5fcbc")
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
!24 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 270, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 271, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 272, type: !5, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 273, type: !8, isLocal: false, isDefinition: true)
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
!96 = !DILocalVariable(name: "i", scope: !97, file: !3, line: 69, type: !6)
!97 = distinct !DILexicalBlock(scope: !83, file: !3, line: 69, column: 5)
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
!108 = !DILocation(line: 69, column: 23, scope: !109)
!109 = distinct !DILexicalBlock(scope: !97, file: !3, line: 69, column: 5)
!110 = !DILocation(line: 69, column: 5, scope: !97)
!111 = !DILocation(line: 65, column: 53, scope: !112)
!112 = distinct !DILexicalBlock(scope: !101, file: !3, line: 65, column: 53)
!113 = !{!114, !114, i64 0}
!114 = !{!"any pointer", !64, i64 0}
!115 = !DILocation(line: 88, column: 29, scope: !116)
!116 = distinct !DILexicalBlock(scope: !83, file: !3, line: 88, column: 9)
!117 = !DILocation(line: 88, column: 19, scope: !116)
!118 = !DILocation(line: 88, column: 55, scope: !116)
!119 = !DILocation(line: 88, column: 9, scope: !83)
!120 = !DILocation(line: 70, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 70, column: 13)
!122 = distinct !DILexicalBlock(scope: !109, file: !3, line: 69, column: 33)
!123 = !{!124, !124, i64 0}
!124 = !{!"_Bool", !64, i64 0}
!125 = !{i8 0, i8 2}
!126 = !DILocation(line: 0, scope: !121)
!127 = !DILocation(line: 70, column: 13, scope: !122)
!128 = !DILocation(line: 71, column: 36, scope: !129)
!129 = distinct !DILexicalBlock(scope: !121, file: !3, line: 70, column: 22)
!130 = !DILocation(line: 71, column: 45, scope: !129)
!131 = !DILocation(line: 72, column: 27, scope: !129)
!132 = !DILocation(line: 71, column: 42, scope: !129)
!133 = !DILocation(line: 72, column: 18, scope: !129)
!134 = !DILocation(line: 74, column: 27, scope: !129)
!135 = !DILocation(line: 73, column: 33, scope: !129)
!136 = !DILocation(line: 74, column: 18, scope: !129)
!137 = !DILocation(line: 75, column: 29, scope: !129)
!138 = !DILocation(line: 75, column: 56, scope: !129)
!139 = !DILocation(line: 75, column: 71, scope: !129)
!140 = !DILocation(line: 75, column: 67, scope: !129)
!141 = !DILocation(line: 75, column: 44, scope: !129)
!142 = !DILocation(line: 75, column: 40, scope: !129)
!143 = !DILocation(line: 75, column: 18, scope: !129)
!144 = !DILocation(line: 76, column: 9, scope: !129)
!145 = !DILocation(line: 77, column: 18, scope: !146)
!146 = distinct !DILexicalBlock(scope: !121, file: !3, line: 76, column: 16)
!147 = !DILocation(line: 78, column: 13, scope: !146)
!148 = !DILocation(line: 79, column: 29, scope: !146)
!149 = !DILocation(line: 79, column: 13, scope: !146)
!150 = !DILocation(line: 80, column: 23, scope: !146)
!151 = !DILocation(line: 80, column: 30, scope: !146)
!152 = !DILocation(line: 80, column: 18, scope: !146)
!153 = !DILocation(line: 81, column: 30, scope: !146)
!154 = !DILocation(line: 81, column: 23, scope: !146)
!155 = !DILocation(line: 81, column: 18, scope: !146)
!156 = !DILocation(line: 82, column: 30, scope: !146)
!157 = !DILocation(line: 82, column: 41, scope: !146)
!158 = !DILocation(line: 82, column: 18, scope: !146)
!159 = !DILocation(line: 69, column: 28, scope: !109)
!160 = distinct !{!160, !110, !161, !162, !163}
!161 = !DILocation(line: 84, column: 5, scope: !97)
!162 = !{!"llvm.loop.mustprogress"}
!163 = !{!"llvm.loop.unroll.disable"}
!164 = !DILocation(line: 88, column: 67, scope: !165)
!165 = distinct !DILexicalBlock(scope: !116, file: !3, line: 88, column: 67)
!166 = !DILocation(line: 90, column: 21, scope: !83)
!167 = !DILocation(line: 90, column: 42, scope: !83)
!168 = !DILocation(line: 90, column: 19, scope: !83)
!169 = !{!170, !170, i64 0}
!170 = !{!"double", !64, i64 0}
!171 = !DILocation(line: 91, column: 1, scope: !83)
!172 = !DISubprogram(name: "PAPI_start", scope: !173, file: !173, line: 1204, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!173 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!174 = !DISubroutineType(types: !175)
!175 = !{!6, !6}
!176 = !DISubprogram(name: "PAPI_stop", scope: !173, file: !173, line: 1206, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!177 = !DISubroutineType(types: !178)
!178 = !{!6, !6, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!180 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 275, type: !181, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !183)
!181 = !DISubroutineType(types: !182)
!182 = !{!5, !6}
!183 = !{!184, !185}
!184 = !DILocalVariable(name: "n", arg: 1, scope: !180, file: !3, line: 275, type: !6)
!185 = !DILocalVariable(name: "ptr", scope: !180, file: !3, line: 276, type: !5)
!186 = !DILocation(line: 0, scope: !180)
!187 = !DILocation(line: 276, column: 45, scope: !180)
!188 = !DILocation(line: 276, column: 43, scope: !180)
!189 = !DILocation(line: 276, column: 24, scope: !180)
!190 = !DILocation(line: 277, column: 13, scope: !191)
!191 = distinct !DILexicalBlock(scope: !180, file: !3, line: 277, column: 9)
!192 = !DILocation(line: 277, column: 9, scope: !180)
!193 = !DILocation(line: 278, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !3, line: 277, column: 22)
!195 = !DILocation(line: 279, column: 9, scope: !194)
!196 = !DILocation(line: 281, column: 5, scope: !180)
!197 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 284, type: !198, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{!8, !6}
!200 = !{!201, !202}
!201 = !DILocalVariable(name: "n", arg: 1, scope: !197, file: !3, line: 284, type: !6)
!202 = !DILocalVariable(name: "ptr", scope: !197, file: !3, line: 285, type: !8)
!203 = !DILocation(line: 0, scope: !197)
!204 = !DILocation(line: 285, column: 48, scope: !197)
!205 = !DILocation(line: 285, column: 26, scope: !197)
!206 = !DILocation(line: 286, column: 13, scope: !207)
!207 = distinct !DILexicalBlock(scope: !197, file: !3, line: 286, column: 9)
!208 = !DILocation(line: 286, column: 9, scope: !197)
!209 = !DILocation(line: 287, column: 9, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !3, line: 286, column: 22)
!211 = !DILocation(line: 288, column: 9, scope: !210)
!212 = !DILocation(line: 290, column: 5, scope: !197)
!213 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 293, type: !214, scopeLine: 293, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !216)
!214 = !DISubroutineType(types: !215)
!215 = !{!6}
!216 = !{!217, !218, !223, !224, !226, !227}
!217 = !DILocalVariable(name: "status", scope: !213, file: !3, line: 294, type: !6)
!218 = !DILocalVariable(name: "errstring", scope: !213, file: !3, line: 295, type: !219)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 1024, elements: !221)
!220 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!221 = !{!222}
!222 = !DISubrange(count: 128)
!223 = !DILocalVariable(name: "n", scope: !213, file: !3, line: 308, type: !6)
!224 = !DILocalVariable(name: "i", scope: !225, file: !3, line: 319, type: !6)
!225 = distinct !DILexicalBlock(scope: !213, file: !3, line: 319, column: 5)
!226 = !DILocalVariable(name: "sum", scope: !213, file: !3, line: 331, type: !6)
!227 = !DILocalVariable(name: "i", scope: !228, file: !3, line: 333, type: !6)
!228 = distinct !DILexicalBlock(scope: !213, file: !3, line: 333, column: 5)
!229 = !DILocation(line: 295, column: 5, scope: !213)
!230 = !DILocation(line: 295, column: 10, scope: !213)
!231 = !DILocation(line: 297, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !213, file: !3, line: 297, column: 9)
!233 = !DILocation(line: 297, column: 45, scope: !232)
!234 = !DILocation(line: 297, column: 9, scope: !213)
!235 = !DILocation(line: 298, column: 17, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !3, line: 297, column: 66)
!237 = !DILocation(line: 298, column: 9, scope: !236)
!238 = !DILocation(line: 299, column: 9, scope: !236)
!239 = !DILocation(line: 303, column: 19, scope: !240)
!240 = distinct !DILexicalBlock(scope: !213, file: !3, line: 303, column: 9)
!241 = !DILocation(line: 0, scope: !213)
!242 = !DILocation(line: 303, column: 52, scope: !240)
!243 = !DILocation(line: 303, column: 9, scope: !213)
!244 = !DILocation(line: 303, column: 64, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !3, line: 303, column: 64)
!246 = !DILocation(line: 306, column: 35, scope: !247)
!247 = distinct !DILexicalBlock(scope: !213, file: !3, line: 306, column: 9)
!248 = !DILocation(line: 306, column: 19, scope: !247)
!249 = !DILocation(line: 306, column: 69, scope: !247)
!250 = !DILocation(line: 306, column: 9, scope: !213)
!251 = !DILocation(line: 306, column: 81, scope: !252)
!252 = distinct !DILexicalBlock(scope: !247, file: !3, line: 306, column: 81)
!253 = !DILocation(line: 310, column: 9, scope: !213)
!254 = !DILocation(line: 310, column: 7, scope: !213)
!255 = !DILocation(line: 311, column: 9, scope: !213)
!256 = !DILocation(line: 311, column: 7, scope: !213)
!257 = !DILocation(line: 312, column: 9, scope: !213)
!258 = !DILocation(line: 312, column: 7, scope: !213)
!259 = !DILocation(line: 313, column: 12, scope: !213)
!260 = !DILocation(line: 313, column: 10, scope: !213)
!261 = !DILocation(line: 315, column: 13, scope: !213)
!262 = !DILocation(line: 317, column: 11, scope: !213)
!263 = !DILocation(line: 317, column: 5, scope: !213)
!264 = !DILocation(line: 0, scope: !225)
!265 = !DILocation(line: 319, column: 5, scope: !225)
!266 = !DILocation(line: 328, column: 5, scope: !213)
!267 = !DILocation(line: 0, scope: !228)
!268 = !DILocation(line: 333, column: 5, scope: !228)
!269 = !DILocation(line: 320, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !3, line: 319, column: 33)
!271 = distinct !DILexicalBlock(scope: !225, file: !3, line: 319, column: 5)
!272 = !DILocation(line: 320, column: 14, scope: !270)
!273 = !DILocation(line: 321, column: 9, scope: !270)
!274 = !DILocation(line: 321, column: 14, scope: !270)
!275 = !DILocation(line: 322, column: 9, scope: !270)
!276 = !DILocation(line: 322, column: 14, scope: !270)
!277 = !DILocation(line: 323, column: 22, scope: !270)
!278 = !DILocation(line: 323, column: 27, scope: !270)
!279 = !DILocation(line: 323, column: 9, scope: !270)
!280 = !DILocation(line: 323, column: 17, scope: !270)
!281 = !DILocation(line: 319, column: 28, scope: !271)
!282 = !DILocation(line: 319, column: 23, scope: !271)
!283 = distinct !{!283, !265, !284, !162, !163}
!284 = !DILocation(line: 324, column: 5, scope: !225)
!285 = !DILocation(line: 337, column: 5, scope: !213)
!286 = !DILocation(line: 338, column: 5, scope: !213)
!287 = !DILocation(line: 340, column: 10, scope: !213)
!288 = !DILocation(line: 340, column: 5, scope: !213)
!289 = !DILocation(line: 341, column: 10, scope: !213)
!290 = !DILocation(line: 341, column: 5, scope: !213)
!291 = !DILocation(line: 342, column: 10, scope: !213)
!292 = !DILocation(line: 342, column: 5, scope: !213)
!293 = !DILocation(line: 343, column: 10, scope: !213)
!294 = !DILocation(line: 343, column: 5, scope: !213)
!295 = !DILocation(line: 345, column: 53, scope: !213)
!296 = !{!297, !297, i64 0}
!297 = !{!"long long", !64, i64 0}
!298 = !DILocation(line: 345, column: 5, scope: !213)
!299 = !DILocation(line: 346, column: 36, scope: !213)
!300 = !DILocation(line: 346, column: 5, scope: !213)
!301 = !DILocation(line: 347, column: 50, scope: !213)
!302 = !DILocation(line: 347, column: 5, scope: !213)
!303 = !DILocation(line: 348, column: 49, scope: !213)
!304 = !DILocation(line: 348, column: 5, scope: !213)
!305 = !DILocation(line: 349, column: 40, scope: !213)
!306 = !DILocation(line: 349, column: 5, scope: !213)
!307 = !DILocation(line: 351, column: 38, scope: !308)
!308 = distinct !DILexicalBlock(scope: !213, file: !3, line: 351, column: 9)
!309 = !DILocation(line: 351, column: 19, scope: !308)
!310 = !DILocation(line: 351, column: 72, scope: !308)
!311 = !DILocation(line: 351, column: 9, scope: !213)
!312 = !DILocation(line: 334, column: 16, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !3, line: 333, column: 33)
!314 = distinct !DILexicalBlock(scope: !228, file: !3, line: 333, column: 5)
!315 = !DILocation(line: 334, column: 13, scope: !313)
!316 = !DILocation(line: 333, column: 28, scope: !314)
!317 = !DILocation(line: 333, column: 23, scope: !314)
!318 = distinct !{!318, !268, !319, !162, !163}
!319 = !DILocation(line: 335, column: 5, scope: !228)
!320 = !DILocation(line: 351, column: 84, scope: !321)
!321 = distinct !DILexicalBlock(scope: !308, file: !3, line: 351, column: 84)
!322 = !DILocation(line: 354, column: 19, scope: !323)
!323 = distinct !DILexicalBlock(scope: !213, file: !3, line: 354, column: 9)
!324 = !DILocation(line: 354, column: 53, scope: !323)
!325 = !DILocation(line: 354, column: 9, scope: !213)
!326 = !DILocation(line: 354, column: 65, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !3, line: 354, column: 65)
!328 = !DILocation(line: 357, column: 5, scope: !213)
!329 = !DILocation(line: 360, column: 1, scope: !213)
!330 = !DILocation(line: 359, column: 5, scope: !213)
!331 = !DISubprogram(name: "PAPI_library_init", scope: !173, file: !173, line: 1172, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!332 = !DISubprogram(name: "PAPI_create_eventset", scope: !173, file: !173, line: 1147, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!333 = !DISubroutineType(types: !334)
!334 = !{!6, !5}
!335 = !DISubprogram(name: "PAPI_add_events", scope: !173, file: !173, line: 1143, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!336 = !DISubroutineType(types: !337)
!337 = !{!6, !6, !5, !6}
!338 = !DISubprogram(name: "srand", scope: !339, file: !339, line: 455, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!339 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!340 = !DISubroutineType(types: !341)
!341 = !{null, !342}
!342 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!343 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!344 = !DISubroutineType(types: !345)
!345 = !{!346, !348}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !347, line: 7, baseType: !52)
!347 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!349 = !DISubprogram(name: "PAPI_remove_events", scope: !173, file: !173, line: 1192, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!350 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !173, file: !173, line: 1149, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!351 = !DISubprogram(name: "PAPI_shutdown", scope: !173, file: !173, line: 1202, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!352 = !DISubroutineType(types: !353)
!353 = !{null}
