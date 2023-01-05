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
define dso_local void @foo(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !83 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !89, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata ptr %b, metadata !90, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata ptr %c, metadata !91, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata ptr %cond, metadata !92, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i32 %n, metadata !93, metadata !DIExpression()), !dbg !102
  %call = tail call double @getTimeMiliSeconds(), !dbg !103
  call void @llvm.dbg.value(metadata double %call, metadata !95, metadata !DIExpression()), !dbg !102
  %0 = load i32, ptr @EventSet, align 4, !dbg !104, !tbaa !106
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #11, !dbg !108
  call void @llvm.dbg.value(metadata i32 %call1, metadata !94, metadata !DIExpression()), !dbg !102
  %cmp.not = icmp eq i32 %call1, 0, !dbg !109
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !110

for.cond.preheader:                               ; preds = %entry
  %cmp5139 = icmp sgt i32 %n, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !111
  br i1 %cmp5139, label %for.cond4.preheader.us.preheader, label %for.cond.cleanup, !dbg !112

for.cond4.preheader.us.preheader:                 ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond4.preheader.us, !dbg !113

for.cond4.preheader.us:                           ; preds = %for.cond4.preheader.us.preheader, %for.cond4.for.cond.cleanup6_crit_edge.us
  %j.0142.us = phi i32 [ %inc78.us, %for.cond4.for.cond.cleanup6_crit_edge.us ], [ 0, %for.cond4.preheader.us.preheader ]
  call void @llvm.dbg.value(metadata i32 %j.0142.us, metadata !96, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i32 0, metadata !98, metadata !DIExpression()), !dbg !114
  br label %for.body7.us, !dbg !112

for.body7.us:                                     ; preds = %for.cond4.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !98, metadata !DIExpression()), !dbg !114
  %arrayidx.us = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !115
  %1 = load i8, ptr %arrayidx.us, align 1, !dbg !115, !tbaa !119, !range !121
  %tobool.not.us = icmp eq i8 %1, 0, !dbg !115
  br i1 %tobool.not.us, label %for.inc.us, label %if.then8.us, !dbg !122

if.then8.us:                                      ; preds = %for.body7.us
  %arrayidx10.us = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !123
  %arrayidx12.us = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !125
  %2 = load i32, ptr %arrayidx12.us, align 4, !dbg !125, !tbaa !106
  %arrayidx15.us = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !126
  %3 = load i32, ptr %arrayidx15.us, align 4, !dbg !126, !tbaa !106
  %4 = trunc i64 %indvars.iv to i32, !dbg !127
  %mul25.us = mul nsw i32 %3, %4, !dbg !127
  %.neg = mul i32 %2, -2
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !128
  %5 = shl i32 %indvars.iv.tr, 1, !dbg !128
  %sub19.us = add i32 %3, %5, !dbg !128
  %add.us = add i32 %sub19.us, %mul25.us, !dbg !129
  %add29.us = add i32 %add.us, %.neg, !dbg !130
  store i32 %add29.us, ptr %arrayidx10.us, align 4, !dbg !130, !tbaa !106
  %mul47135.us.neg = sub i32 -3, %2, !dbg !131
  %add48.us.neg = mul i32 %mul47135.us.neg, %4, !dbg !131
  %6 = add i32 %2, %3
  %reass.add137.us = sub i32 %add29.us, %6
  %reass.mul138.us = shl i32 %reass.add137.us, 1
  %add41.us = add i32 %add48.us.neg, 2, !dbg !132
  %sub51.us = add i32 %add41.us, %reass.mul138.us, !dbg !133
  store i32 %sub51.us, ptr %arrayidx15.us, align 4, !dbg !133, !tbaa !106
  %7 = add nsw i32 %sub51.us, %add29.us, !dbg !134
  %8 = sub nsw i32 %2, %sub51.us, !dbg !135
  %sub65.us = shl nsw i32 %8, 1, !dbg !135
  %mul66.us = mul nsw i32 %4, %4, !dbg !136
  %add67.us = add nsw i32 %sub65.us, %mul66.us, !dbg !137
  %mul68.neg.us = mul i32 %add67.us, -3, !dbg !138
  %9 = sub i32 %7, %4, !dbg !139
  %sub69.us = shl i32 %9, 1, !dbg !139
  %sub75.us = add i32 %sub69.us, %mul68.neg.us, !dbg !140
  store i32 %sub75.us, ptr %arrayidx12.us, align 4, !dbg !140, !tbaa !106
  br label %for.inc.us, !dbg !141

for.inc.us:                                       ; preds = %if.then8.us, %for.body7.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !142
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !98, metadata !DIExpression()), !dbg !114
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !143
  br i1 %exitcond.not, label %for.cond4.for.cond.cleanup6_crit_edge.us, label %for.body7.us, !dbg !112, !llvm.loop !144

for.cond4.for.cond.cleanup6_crit_edge.us:         ; preds = %for.inc.us
  %inc78.us = add nuw nsw i32 %j.0142.us, 1, !dbg !148
  call void @llvm.dbg.value(metadata i32 %inc78.us, metadata !96, metadata !DIExpression()), !dbg !111
  %exitcond146.not = icmp eq i32 %inc78.us, 10, !dbg !149
  br i1 %exitcond146.not, label %for.cond.cleanup, label %for.cond4.preheader.us, !dbg !113, !llvm.loop !150

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr @stderr, align 8, !dbg !152, !tbaa !154
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 36) #12, !dbg !152
  tail call void @exit(i32 noundef %call1) #13, !dbg !152
  unreachable, !dbg !152

for.cond.cleanup:                                 ; preds = %for.cond4.for.cond.cleanup6_crit_edge.us, %for.cond.preheader
  %11 = load i32, ptr @EventSet, align 4, !dbg !156, !tbaa !106
  %call80 = tail call i32 @PAPI_stop(i32 noundef %11, ptr noundef nonnull @CounterValues) #11, !dbg !158
  call void @llvm.dbg.value(metadata i32 %call80, metadata !94, metadata !DIExpression()), !dbg !102
  %cmp81.not = icmp eq i32 %call80, 0, !dbg !159
  br i1 %cmp81.not, label %if.end84, label %if.then82, !dbg !160

if.then82:                                        ; preds = %for.cond.cleanup
  %12 = load ptr, ptr @stderr, align 8, !dbg !161, !tbaa !154
  %call83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str, i32 noundef %call80, ptr noundef nonnull @.str.1, i32 noundef 52) #12, !dbg !161
  tail call void @exit(i32 noundef %call80) #13, !dbg !161
  unreachable, !dbg !161

if.end84:                                         ; preds = %for.cond.cleanup
  %call85 = tail call double @getTimeMiliSeconds(), !dbg !163
  %sub86 = fsub double %call85, %call, !dbg !164
  store double %sub86, ptr @ExecutionTime, align 8, !dbg !165, !tbaa !166
  ret void, !dbg !168
}

declare !dbg !169 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !173 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !177 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !181, metadata !DIExpression()), !dbg !183
  %conv = sext i32 %n to i64, !dbg !184
  %mul = shl nsw i64 %conv, 2, !dbg !185
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #14, !dbg !186
  call void @llvm.dbg.value(metadata ptr %call, metadata !182, metadata !DIExpression()), !dbg !183
  %cmp = icmp eq ptr %call, null, !dbg !187
  br i1 %cmp, label %if.then, label %if.end, !dbg !189

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !190
  tail call void @exit(i32 noundef 1) #13, !dbg !192
  unreachable, !dbg !192

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !193
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !194 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !198, metadata !DIExpression()), !dbg !200
  %conv = sext i32 %n to i64, !dbg !201
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #14, !dbg !202
  call void @llvm.dbg.value(metadata ptr %call, metadata !199, metadata !DIExpression()), !dbg !200
  %cmp = icmp eq ptr %call, null, !dbg !203
  br i1 %cmp, label %if.then, label %if.end, !dbg !205

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !206
  tail call void @exit(i32 noundef 1) #13, !dbg !208
  unreachable, !dbg !208

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !209
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !210 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #11, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !215, metadata !DIExpression()), !dbg !227
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #11, !dbg !228
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !230
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !231

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !232, !tbaa !154
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #12, !dbg !234
  call void @exit(i32 noundef 1) #13, !dbg !235
  unreachable, !dbg !235

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #11, !dbg !236
  call void @llvm.dbg.value(metadata i32 %call2, metadata !214, metadata !DIExpression()), !dbg !238
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !239
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !240

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !241, !tbaa !154
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 90) #12, !dbg !241
  tail call void @exit(i32 noundef %call2) #13, !dbg !241
  unreachable, !dbg !241

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !243, !tbaa !106
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #11, !dbg !245
  call void @llvm.dbg.value(metadata i32 %call7, metadata !214, metadata !DIExpression()), !dbg !238
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !246
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !247

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !248, !tbaa !154
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 93) #12, !dbg !248
  tail call void @exit(i32 noundef %call7) #13, !dbg !248
  unreachable, !dbg !248

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 5000000, metadata !220, metadata !DIExpression()), !dbg !238
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !250
  store ptr %call12, ptr @a, align 8, !dbg !251, !tbaa !154
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !252
  store ptr %call13, ptr @b, align 8, !dbg !253, !tbaa !154
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !254
  store ptr %call14, ptr @c, align 8, !dbg !255, !tbaa !154
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !256
  store ptr %call15, ptr @cond, align 8, !dbg !257, !tbaa !154
  store i8 0, ptr %call15, align 1, !dbg !258, !tbaa !119
  %call16 = tail call i64 @time(ptr noundef null) #11, !dbg !259
  %conv = trunc i64 %call16 to i32, !dbg !259
  tail call void @srand(i32 noundef %conv) #11, !dbg !260
  call void @llvm.dbg.value(metadata i32 0, metadata !221, metadata !DIExpression()), !dbg !261
  %4 = load ptr, ptr @a, align 8, !tbaa !154
  %5 = load ptr, ptr @b, align 8, !tbaa !154
  %6 = load ptr, ptr @c, align 8, !tbaa !154
  %7 = load ptr, ptr @cond, align 8, !tbaa !154
  call void @llvm.dbg.value(metadata i32 0, metadata !221, metadata !DIExpression()), !dbg !261
  br label %for.body, !dbg !262

for.cond.cleanup:                                 ; preds = %for.body
  tail call void @foo(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 5000000), !dbg !263
  call void @llvm.dbg.value(metadata i32 0, metadata !223, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !264
  %8 = load ptr, ptr @c, align 8, !tbaa !154
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i32 0, metadata !223, metadata !DIExpression()), !dbg !238
  br label %for.body33, !dbg !265

for.body:                                         ; preds = %if.end11, %for.body
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !221, metadata !DIExpression()), !dbg !261
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !266
  %9 = trunc i64 %indvars.iv to i32, !dbg !269
  store i32 %9, ptr %arrayidx19, align 4, !dbg !269, !tbaa !106
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !270
  store i32 2, ptr %arrayidx21, align 4, !dbg !271, !tbaa !106
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !272
  store i32 0, ptr %arrayidx23, align 4, !dbg !273, !tbaa !106
  %rem = urem i32 %9, 100, !dbg !274
  %cmp24 = icmp ult i32 %rem, 40, !dbg !275
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !276
  %frombool = zext i1 %cmp24 to i8, !dbg !277
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !277, !tbaa !119
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !278
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !221, metadata !DIExpression()), !dbg !261
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !279
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !262, !llvm.loop !280

for.cond.cleanup32:                               ; preds = %for.body33
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add), !dbg !282
  %10 = load ptr, ptr @a, align 8, !dbg !283, !tbaa !154
  tail call void @free(ptr noundef %10) #11, !dbg !284
  %11 = load ptr, ptr @b, align 8, !dbg !285, !tbaa !154
  tail call void @free(ptr noundef %11) #11, !dbg !286
  %12 = load ptr, ptr @c, align 8, !dbg !287, !tbaa !154
  tail call void @free(ptr noundef %12) #11, !dbg !288
  %13 = load ptr, ptr @cond, align 8, !dbg !289, !tbaa !154
  tail call void @free(ptr noundef %13) #11, !dbg !290
  %14 = load i64, ptr @CounterValues, align 8, !dbg !291, !tbaa !292
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %14), !dbg !294
  %15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !295, !tbaa !292
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %15), !dbg !296
  %16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !297, !tbaa !292
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %16), !dbg !298
  %17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !299, !tbaa !292
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %17), !dbg !300
  %18 = load double, ptr @ExecutionTime, align 8, !dbg !301, !tbaa !166
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %18), !dbg !302
  %19 = load i32, ptr @EventSet, align 4, !dbg !303, !tbaa !106
  %call45 = tail call i32 @PAPI_remove_events(i32 noundef %19, ptr noundef nonnull @EventCodes, i32 noundef 4) #11, !dbg !305
  call void @llvm.dbg.value(metadata i32 %call45, metadata !214, metadata !DIExpression()), !dbg !238
  %cmp46.not = icmp eq i32 %call45, 0, !dbg !306
  br i1 %cmp46.not, label %if.end50, label %if.then48, !dbg !307

for.body33:                                       ; preds = %for.cond.cleanup, %for.body33
  %indvars.iv84 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next85, %for.body33 ]
  %sum.081 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body33 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv84, metadata !224, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i32 %sum.081, metadata !223, metadata !DIExpression()), !dbg !238
  %arrayidx35 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv84, !dbg !308
  %20 = load i32, ptr %arrayidx35, align 4, !dbg !308, !tbaa !106
  %add = add nsw i32 %20, %sum.081, !dbg !311
  call void @llvm.dbg.value(metadata i32 %add, metadata !223, metadata !DIExpression()), !dbg !238
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1, !dbg !312
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next85, metadata !224, metadata !DIExpression()), !dbg !264
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 5000000, !dbg !313
  br i1 %exitcond87.not, label %for.cond.cleanup32, label %for.body33, !dbg !265, !llvm.loop !314

if.then48:                                        ; preds = %for.cond.cleanup32
  %21 = load ptr, ptr @stderr, align 8, !dbg !316, !tbaa !154
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %call45, ptr noundef nonnull @.str.1, i32 noundef 134) #12, !dbg !316
  tail call void @exit(i32 noundef %call45) #13, !dbg !316
  unreachable, !dbg !316

if.end50:                                         ; preds = %for.cond.cleanup32
  %call51 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #11, !dbg !318
  call void @llvm.dbg.value(metadata i32 %call51, metadata !214, metadata !DIExpression()), !dbg !238
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !320
  br i1 %cmp52.not, label %if.end56, label %if.then54, !dbg !321

if.then54:                                        ; preds = %if.end50
  %22 = load ptr, ptr @stderr, align 8, !dbg !322, !tbaa !154
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str, i32 noundef %call51, ptr noundef nonnull @.str.1, i32 noundef 137) #12, !dbg !322
  tail call void @exit(i32 noundef %call51) #13, !dbg !322
  unreachable, !dbg !322

if.end56:                                         ; preds = %if.end50
  tail call void @PAPI_shutdown() #11, !dbg !324
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #11, !dbg !325
  ret i32 0, !dbg !326
}

declare !dbg !327 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !328 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !331 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !334 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !339 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !345 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !346 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !347 void @PAPI_shutdown() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

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
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "d791212f2aade6c4ac1fc5f2b8ccd3f2")
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
!24 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 57, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 58, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 59, type: !5, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 60, type: !8, isLocal: false, isDefinition: true)
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
!83 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 29, type: !84, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !86, !86, !87, !6}
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !98}
!89 = !DILocalVariable(name: "a", arg: 1, scope: !83, file: !3, line: 29, type: !86)
!90 = !DILocalVariable(name: "b", arg: 2, scope: !83, file: !3, line: 29, type: !86)
!91 = !DILocalVariable(name: "c", arg: 3, scope: !83, file: !3, line: 29, type: !86)
!92 = !DILocalVariable(name: "cond", arg: 4, scope: !83, file: !3, line: 30, type: !87)
!93 = !DILocalVariable(name: "n", arg: 5, scope: !83, file: !3, line: 30, type: !6)
!94 = !DILocalVariable(name: "status", scope: !83, file: !3, line: 32, type: !6)
!95 = !DILocalVariable(name: "t", scope: !83, file: !3, line: 34, type: !22)
!96 = !DILocalVariable(name: "j", scope: !97, file: !3, line: 38, type: !6)
!97 = distinct !DILexicalBlock(scope: !83, file: !3, line: 38, column: 5)
!98 = !DILocalVariable(name: "i", scope: !99, file: !3, line: 39, type: !6)
!99 = distinct !DILexicalBlock(scope: !100, file: !3, line: 39, column: 9)
!100 = distinct !DILexicalBlock(scope: !101, file: !3, line: 38, column: 34)
!101 = distinct !DILexicalBlock(scope: !97, file: !3, line: 38, column: 5)
!102 = !DILocation(line: 0, scope: !83)
!103 = !DILocation(line: 34, column: 16, scope: !83)
!104 = !DILocation(line: 36, column: 30, scope: !105)
!105 = distinct !DILexicalBlock(scope: !83, file: !3, line: 36, column: 9)
!106 = !{!107, !107, i64 0}
!107 = !{!"int", !64, i64 0}
!108 = !DILocation(line: 36, column: 19, scope: !105)
!109 = !DILocation(line: 36, column: 41, scope: !105)
!110 = !DILocation(line: 36, column: 9, scope: !83)
!111 = !DILocation(line: 0, scope: !97)
!112 = !DILocation(line: 39, column: 9, scope: !99)
!113 = !DILocation(line: 38, column: 5, scope: !97)
!114 = !DILocation(line: 0, scope: !99)
!115 = !DILocation(line: 40, column: 17, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 40, column: 17)
!117 = distinct !DILexicalBlock(scope: !118, file: !3, line: 39, column: 37)
!118 = distinct !DILexicalBlock(scope: !99, file: !3, line: 39, column: 9)
!119 = !{!120, !120, i64 0}
!120 = !{!"_Bool", !64, i64 0}
!121 = !{i8 0, i8 2}
!122 = !DILocation(line: 40, column: 17, scope: !117)
!123 = !DILocation(line: 41, column: 29, scope: !124)
!124 = distinct !DILexicalBlock(scope: !116, file: !3, line: 40, column: 26)
!125 = !DILocation(line: 41, column: 40, scope: !124)
!126 = !DILocation(line: 41, column: 49, scope: !124)
!127 = !DILocation(line: 42, column: 35, scope: !124)
!128 = !DILocation(line: 41, column: 54, scope: !124)
!129 = !DILocation(line: 41, column: 46, scope: !124)
!130 = !DILocation(line: 42, column: 22, scope: !124)
!131 = !DILocation(line: 44, column: 31, scope: !124)
!132 = !DILocation(line: 43, column: 37, scope: !124)
!133 = !DILocation(line: 44, column: 22, scope: !124)
!134 = !DILocation(line: 45, column: 33, scope: !124)
!135 = !DILocation(line: 45, column: 60, scope: !124)
!136 = !DILocation(line: 45, column: 75, scope: !124)
!137 = !DILocation(line: 45, column: 71, scope: !124)
!138 = !DILocation(line: 45, column: 48, scope: !124)
!139 = !DILocation(line: 45, column: 44, scope: !124)
!140 = !DILocation(line: 46, column: 22, scope: !124)
!141 = !DILocation(line: 47, column: 13, scope: !124)
!142 = !DILocation(line: 39, column: 32, scope: !118)
!143 = !DILocation(line: 39, column: 27, scope: !118)
!144 = distinct !{!144, !112, !145, !146, !147}
!145 = !DILocation(line: 48, column: 9, scope: !99)
!146 = !{!"llvm.loop.mustprogress"}
!147 = !{!"llvm.loop.unroll.disable"}
!148 = !DILocation(line: 38, column: 29, scope: !101)
!149 = !DILocation(line: 38, column: 23, scope: !101)
!150 = distinct !{!150, !113, !151, !146, !147}
!151 = !DILocation(line: 49, column: 5, scope: !97)
!152 = !DILocation(line: 36, column: 53, scope: !153)
!153 = distinct !DILexicalBlock(scope: !105, file: !3, line: 36, column: 53)
!154 = !{!155, !155, i64 0}
!155 = !{!"any pointer", !64, i64 0}
!156 = !DILocation(line: 52, column: 29, scope: !157)
!157 = distinct !DILexicalBlock(scope: !83, file: !3, line: 52, column: 9)
!158 = !DILocation(line: 52, column: 19, scope: !157)
!159 = !DILocation(line: 52, column: 55, scope: !157)
!160 = !DILocation(line: 52, column: 9, scope: !83)
!161 = !DILocation(line: 52, column: 67, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !3, line: 52, column: 67)
!163 = !DILocation(line: 54, column: 21, scope: !83)
!164 = !DILocation(line: 54, column: 42, scope: !83)
!165 = !DILocation(line: 54, column: 19, scope: !83)
!166 = !{!167, !167, i64 0}
!167 = !{!"double", !64, i64 0}
!168 = !DILocation(line: 55, column: 1, scope: !83)
!169 = !DISubprogram(name: "PAPI_start", scope: !170, file: !170, line: 1204, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!170 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!171 = !DISubroutineType(types: !172)
!172 = !{!6, !6}
!173 = !DISubprogram(name: "PAPI_stop", scope: !170, file: !170, line: 1206, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!174 = !DISubroutineType(types: !175)
!175 = !{!6, !6, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!177 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 62, type: !178, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !180)
!178 = !DISubroutineType(types: !179)
!179 = !{!5, !6}
!180 = !{!181, !182}
!181 = !DILocalVariable(name: "n", arg: 1, scope: !177, file: !3, line: 62, type: !6)
!182 = !DILocalVariable(name: "ptr", scope: !177, file: !3, line: 63, type: !5)
!183 = !DILocation(line: 0, scope: !177)
!184 = !DILocation(line: 63, column: 45, scope: !177)
!185 = !DILocation(line: 63, column: 43, scope: !177)
!186 = !DILocation(line: 63, column: 24, scope: !177)
!187 = !DILocation(line: 64, column: 13, scope: !188)
!188 = distinct !DILexicalBlock(scope: !177, file: !3, line: 64, column: 9)
!189 = !DILocation(line: 64, column: 9, scope: !177)
!190 = !DILocation(line: 65, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 64, column: 22)
!192 = !DILocation(line: 66, column: 9, scope: !191)
!193 = !DILocation(line: 68, column: 5, scope: !177)
!194 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 71, type: !195, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{!8, !6}
!197 = !{!198, !199}
!198 = !DILocalVariable(name: "n", arg: 1, scope: !194, file: !3, line: 71, type: !6)
!199 = !DILocalVariable(name: "ptr", scope: !194, file: !3, line: 72, type: !8)
!200 = !DILocation(line: 0, scope: !194)
!201 = !DILocation(line: 72, column: 48, scope: !194)
!202 = !DILocation(line: 72, column: 26, scope: !194)
!203 = !DILocation(line: 73, column: 13, scope: !204)
!204 = distinct !DILexicalBlock(scope: !194, file: !3, line: 73, column: 9)
!205 = !DILocation(line: 73, column: 9, scope: !194)
!206 = !DILocation(line: 74, column: 9, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !3, line: 73, column: 22)
!208 = !DILocation(line: 75, column: 9, scope: !207)
!209 = !DILocation(line: 77, column: 5, scope: !194)
!210 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 80, type: !211, scopeLine: 80, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!211 = !DISubroutineType(types: !212)
!212 = !{!6}
!213 = !{!214, !215, !220, !221, !223, !224}
!214 = !DILocalVariable(name: "status", scope: !210, file: !3, line: 81, type: !6)
!215 = !DILocalVariable(name: "errstring", scope: !210, file: !3, line: 82, type: !216)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 1024, elements: !218)
!217 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!218 = !{!219}
!219 = !DISubrange(count: 128)
!220 = !DILocalVariable(name: "n", scope: !210, file: !3, line: 95, type: !6)
!221 = !DILocalVariable(name: "i", scope: !222, file: !3, line: 106, type: !6)
!222 = distinct !DILexicalBlock(scope: !210, file: !3, line: 106, column: 5)
!223 = !DILocalVariable(name: "sum", scope: !210, file: !3, line: 115, type: !6)
!224 = !DILocalVariable(name: "i", scope: !225, file: !3, line: 117, type: !6)
!225 = distinct !DILexicalBlock(scope: !210, file: !3, line: 117, column: 5)
!226 = !DILocation(line: 82, column: 5, scope: !210)
!227 = !DILocation(line: 82, column: 10, scope: !210)
!228 = !DILocation(line: 84, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !210, file: !3, line: 84, column: 9)
!230 = !DILocation(line: 84, column: 45, scope: !229)
!231 = !DILocation(line: 84, column: 9, scope: !210)
!232 = !DILocation(line: 85, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !3, line: 84, column: 66)
!234 = !DILocation(line: 85, column: 9, scope: !233)
!235 = !DILocation(line: 86, column: 9, scope: !233)
!236 = !DILocation(line: 90, column: 19, scope: !237)
!237 = distinct !DILexicalBlock(scope: !210, file: !3, line: 90, column: 9)
!238 = !DILocation(line: 0, scope: !210)
!239 = !DILocation(line: 90, column: 52, scope: !237)
!240 = !DILocation(line: 90, column: 9, scope: !210)
!241 = !DILocation(line: 90, column: 64, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !3, line: 90, column: 64)
!243 = !DILocation(line: 93, column: 35, scope: !244)
!244 = distinct !DILexicalBlock(scope: !210, file: !3, line: 93, column: 9)
!245 = !DILocation(line: 93, column: 19, scope: !244)
!246 = !DILocation(line: 93, column: 69, scope: !244)
!247 = !DILocation(line: 93, column: 9, scope: !210)
!248 = !DILocation(line: 93, column: 81, scope: !249)
!249 = distinct !DILexicalBlock(scope: !244, file: !3, line: 93, column: 81)
!250 = !DILocation(line: 97, column: 9, scope: !210)
!251 = !DILocation(line: 97, column: 7, scope: !210)
!252 = !DILocation(line: 98, column: 9, scope: !210)
!253 = !DILocation(line: 98, column: 7, scope: !210)
!254 = !DILocation(line: 99, column: 9, scope: !210)
!255 = !DILocation(line: 99, column: 7, scope: !210)
!256 = !DILocation(line: 100, column: 12, scope: !210)
!257 = !DILocation(line: 100, column: 10, scope: !210)
!258 = !DILocation(line: 102, column: 13, scope: !210)
!259 = !DILocation(line: 104, column: 11, scope: !210)
!260 = !DILocation(line: 104, column: 5, scope: !210)
!261 = !DILocation(line: 0, scope: !222)
!262 = !DILocation(line: 106, column: 5, scope: !222)
!263 = !DILocation(line: 113, column: 5, scope: !210)
!264 = !DILocation(line: 0, scope: !225)
!265 = !DILocation(line: 117, column: 5, scope: !225)
!266 = !DILocation(line: 107, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !3, line: 106, column: 33)
!268 = distinct !DILexicalBlock(scope: !222, file: !3, line: 106, column: 5)
!269 = !DILocation(line: 107, column: 14, scope: !267)
!270 = !DILocation(line: 108, column: 9, scope: !267)
!271 = !DILocation(line: 108, column: 14, scope: !267)
!272 = !DILocation(line: 109, column: 9, scope: !267)
!273 = !DILocation(line: 109, column: 14, scope: !267)
!274 = !DILocation(line: 110, column: 22, scope: !267)
!275 = !DILocation(line: 110, column: 28, scope: !267)
!276 = !DILocation(line: 110, column: 9, scope: !267)
!277 = !DILocation(line: 110, column: 17, scope: !267)
!278 = !DILocation(line: 106, column: 28, scope: !268)
!279 = !DILocation(line: 106, column: 23, scope: !268)
!280 = distinct !{!280, !262, !281, !146, !147}
!281 = !DILocation(line: 111, column: 5, scope: !222)
!282 = !DILocation(line: 121, column: 5, scope: !210)
!283 = !DILocation(line: 123, column: 10, scope: !210)
!284 = !DILocation(line: 123, column: 5, scope: !210)
!285 = !DILocation(line: 124, column: 10, scope: !210)
!286 = !DILocation(line: 124, column: 5, scope: !210)
!287 = !DILocation(line: 125, column: 10, scope: !210)
!288 = !DILocation(line: 125, column: 5, scope: !210)
!289 = !DILocation(line: 126, column: 10, scope: !210)
!290 = !DILocation(line: 126, column: 5, scope: !210)
!291 = !DILocation(line: 128, column: 53, scope: !210)
!292 = !{!293, !293, i64 0}
!293 = !{!"long long", !64, i64 0}
!294 = !DILocation(line: 128, column: 5, scope: !210)
!295 = !DILocation(line: 129, column: 36, scope: !210)
!296 = !DILocation(line: 129, column: 5, scope: !210)
!297 = !DILocation(line: 130, column: 50, scope: !210)
!298 = !DILocation(line: 130, column: 5, scope: !210)
!299 = !DILocation(line: 131, column: 49, scope: !210)
!300 = !DILocation(line: 131, column: 5, scope: !210)
!301 = !DILocation(line: 132, column: 40, scope: !210)
!302 = !DILocation(line: 132, column: 5, scope: !210)
!303 = !DILocation(line: 134, column: 38, scope: !304)
!304 = distinct !DILexicalBlock(scope: !210, file: !3, line: 134, column: 9)
!305 = !DILocation(line: 134, column: 19, scope: !304)
!306 = !DILocation(line: 134, column: 72, scope: !304)
!307 = !DILocation(line: 134, column: 9, scope: !210)
!308 = !DILocation(line: 118, column: 16, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !3, line: 117, column: 33)
!310 = distinct !DILexicalBlock(scope: !225, file: !3, line: 117, column: 5)
!311 = !DILocation(line: 118, column: 13, scope: !309)
!312 = !DILocation(line: 117, column: 28, scope: !310)
!313 = !DILocation(line: 117, column: 23, scope: !310)
!314 = distinct !{!314, !265, !315, !146, !147}
!315 = !DILocation(line: 119, column: 5, scope: !225)
!316 = !DILocation(line: 134, column: 84, scope: !317)
!317 = distinct !DILexicalBlock(scope: !304, file: !3, line: 134, column: 84)
!318 = !DILocation(line: 137, column: 19, scope: !319)
!319 = distinct !DILexicalBlock(scope: !210, file: !3, line: 137, column: 9)
!320 = !DILocation(line: 137, column: 53, scope: !319)
!321 = !DILocation(line: 137, column: 9, scope: !210)
!322 = !DILocation(line: 137, column: 65, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !3, line: 137, column: 65)
!324 = !DILocation(line: 140, column: 5, scope: !210)
!325 = !DILocation(line: 143, column: 1, scope: !210)
!326 = !DILocation(line: 142, column: 5, scope: !210)
!327 = !DISubprogram(name: "PAPI_library_init", scope: !170, file: !170, line: 1172, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!328 = !DISubprogram(name: "PAPI_create_eventset", scope: !170, file: !170, line: 1147, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!329 = !DISubroutineType(types: !330)
!330 = !{!6, !5}
!331 = !DISubprogram(name: "PAPI_add_events", scope: !170, file: !170, line: 1143, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!332 = !DISubroutineType(types: !333)
!333 = !{!6, !6, !5, !6}
!334 = !DISubprogram(name: "srand", scope: !335, file: !335, line: 455, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!335 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!336 = !DISubroutineType(types: !337)
!337 = !{null, !338}
!338 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!339 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!340 = !DISubroutineType(types: !341)
!341 = !{!342, !344}
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !343, line: 7, baseType: !52)
!343 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!345 = !DISubprogram(name: "PAPI_remove_events", scope: !170, file: !170, line: 1192, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!346 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !170, file: !170, line: 1149, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!347 = !DISubprogram(name: "PAPI_shutdown", scope: !170, file: !170, line: 1202, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!348 = !DISubroutineType(types: !349)
!349 = !{null}
