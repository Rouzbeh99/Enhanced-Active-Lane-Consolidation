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
@.str.6 = private unnamed_addr constant [36 x i8] c"\0ATotal instructions_executed: %lld\0A\00", align 1
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
define dso_local void @simple_if_else(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !100 {
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
  %cmp3221 = icmp sgt i32 %n, 0, !dbg !125
  br i1 %cmp3221, label %for.body.preheader, label %for.cond.cleanup, !dbg !127

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !125
  br label %for.body, !dbg !127

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !128, !tbaa !130
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 77) #12, !dbg !128
  tail call void @exit(i32 noundef %call1) #13, !dbg !128
  unreachable, !dbg !128

for.cond.cleanup:                                 ; preds = %for.inc, %for.cond.preheader
  %2 = load i32, ptr @EventSet, align 4, !dbg !132, !tbaa !119
  %call127 = tail call i32 @PAPI_stop(i32 noundef %2, ptr noundef nonnull @CounterValues) #11, !dbg !134
  call void @llvm.dbg.value(metadata i32 %call127, metadata !111, metadata !DIExpression()), !dbg !115
  %cmp128.not = icmp eq i32 %call127, 0, !dbg !135
  br i1 %cmp128.not, label %if.end131, label %if.then129, !dbg !136

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !113, metadata !DIExpression()), !dbg !124
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !137
  %3 = load i8, ptr %arrayidx, align 1, !dbg !137, !tbaa !140, !range !142
  %tobool.not = icmp eq i8 %3, 0, !dbg !137
  br i1 %tobool.not, label %if.else, label %if.then4, !dbg !143

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !144
  %arrayidx8 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !146
  %4 = load i32, ptr %arrayidx8, align 4, !dbg !146, !tbaa !119
  %arrayidx11 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !147
  %5 = load i32, ptr %arrayidx11, align 4, !dbg !147, !tbaa !119
  %mul21214 = add i32 %5, 2, !dbg !148
  %6 = trunc i64 %indvars.iv to i32, !dbg !148
  %add22 = mul i32 %mul21214, %6, !dbg !148
  %.neg = mul i32 %4, -2
  %add = add i32 %add22, %5, !dbg !149
  %add25 = add i32 %add, %.neg, !dbg !150
  store i32 %add25, ptr %arrayidx6, align 4, !dbg !150, !tbaa !119
  %mul43215.neg = sub i32 -3, %4, !dbg !151
  %add44.neg224 = mul i32 %mul43215.neg, %6, !dbg !151
  %7 = add i32 %4, %5
  %reass.add217 = sub i32 %add25, %7
  %reass.mul218 = shl i32 %reass.add217, 1
  %add37 = add i32 %add44.neg224, 2, !dbg !152
  %sub47 = add i32 %add37, %reass.mul218, !dbg !153
  store i32 %sub47, ptr %arrayidx11, align 4, !dbg !153, !tbaa !119
  %8 = add nsw i32 %sub47, %add25, !dbg !154
  %add54 = shl nsw i32 %8, 1, !dbg !154
  %9 = sub nsw i32 %4, %sub47, !dbg !155
  %sub61 = shl nsw i32 %9, 1, !dbg !155
  %mul62 = mul nsw i32 %6, %6, !dbg !156
  %add63 = add nsw i32 %sub61, %mul62, !dbg !157
  %mul64.neg = mul i32 %add63, -3, !dbg !158
  %sub65 = add i32 %add54, %4, !dbg !159
  %add68 = add i32 %sub65, %mul64.neg, !dbg !160
  store i32 %add68, ptr %arrayidx8, align 4, !dbg !160, !tbaa !119
  br label %for.inc, !dbg !161

if.else:                                          ; preds = %for.body
  %arrayidx70 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !162
  %10 = load i32, ptr %arrayidx70, align 4, !dbg !162, !tbaa !119
  %add71 = add nsw i32 %10, 2, !dbg !164
  %arrayidx73 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !165
  %11 = load i32, ptr %arrayidx73, align 4, !dbg !165, !tbaa !119
  %mul74.neg = mul i32 %11, -3, !dbg !166
  %sub75 = add i32 %add71, %mul74.neg, !dbg !167
  %arrayidx77 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !168
  %12 = load i32, ptr %arrayidx77, align 4, !dbg !169, !tbaa !119
  %mul78 = mul nsw i32 %sub75, %12, !dbg !169
  %mul83 = mul nsw i32 %mul78, %10, !dbg !170
  %sub84 = add i32 %11, -1, !dbg !171
  %add87 = add i32 %sub84, %mul83, !dbg !172
  %mul92 = mul nsw i32 %mul78, 3, !dbg !173
  %reass.mul220 = mul i32 %add87, -4
  %add105.neg = sub i32 -7, %mul78, !dbg !174
  %sub96 = add i32 %add105.neg, %mul92, !dbg !175
  %sub108 = add i32 %sub96, %reass.mul220, !dbg !176
  store i32 %sub108, ptr %arrayidx70, align 4, !dbg !176, !tbaa !119
  %mul111.neg = mul i32 %sub108, -2, !dbg !177
  %add112.neg = add i32 %mul78, -4, !dbg !178
  %sub115 = add i32 %add112.neg, %mul111.neg, !dbg !179
  store i32 %sub115, ptr %arrayidx77, align 4, !dbg !179, !tbaa !119
  %mul118 = mul nsw i32 %sub115, 5, !dbg !180
  %mul121 = shl nsw i32 %sub108, 1, !dbg !181
  %add122 = add i32 %mul121, %add87, !dbg !182
  %add125 = add i32 %add122, %mul118, !dbg !183
  store i32 %add125, ptr %arrayidx73, align 4, !dbg !183, !tbaa !119
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.else
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !184
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !113, metadata !DIExpression()), !dbg !124
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !125
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !127, !llvm.loop !185

if.then129:                                       ; preds = %for.cond.cleanup
  %13 = load ptr, ptr @stderr, align 8, !dbg !189, !tbaa !130
  %call130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef %call127, ptr noundef nonnull @.str.1, i32 noundef 103) #12, !dbg !189
  tail call void @exit(i32 noundef %call127) #13, !dbg !189
  unreachable, !dbg !189

if.end131:                                        ; preds = %for.cond.cleanup
  %call132 = tail call double @getTimeMiliSeconds(), !dbg !191
  %sub133 = fsub double %call132, %call, !dbg !192
  store double %sub133, ptr @ExecutionTime, align 8, !dbg !193, !tbaa !194
  ret void, !dbg !196
}

declare !dbg !197 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !201 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !205 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !209, metadata !DIExpression()), !dbg !211
  %conv = sext i32 %n to i64, !dbg !212
  %mul = shl nsw i64 %conv, 2, !dbg !213
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #14, !dbg !214
  call void @llvm.dbg.value(metadata ptr %call, metadata !210, metadata !DIExpression()), !dbg !211
  %cmp = icmp eq ptr %call, null, !dbg !215
  br i1 %cmp, label %if.then, label %if.end, !dbg !217

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.15), !dbg !218
  tail call void @exit(i32 noundef 1) #13, !dbg !220
  unreachable, !dbg !220

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !221
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !222 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !226, metadata !DIExpression()), !dbg !228
  %conv = sext i32 %n to i64, !dbg !229
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #14, !dbg !230
  call void @llvm.dbg.value(metadata ptr %call, metadata !227, metadata !DIExpression()), !dbg !228
  %cmp = icmp eq ptr %call, null, !dbg !231
  br i1 %cmp, label %if.then, label %if.end, !dbg !233

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.15), !dbg !234
  tail call void @exit(i32 noundef 1) #13, !dbg !236
  unreachable, !dbg !236

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !237
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !238 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #11, !dbg !253
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !243, metadata !DIExpression()), !dbg !254
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #11, !dbg !255
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !257
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !258

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !259, !tbaa !130
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #12, !dbg !261
  call void @exit(i32 noundef 1) #13, !dbg !262
  unreachable, !dbg !262

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #11, !dbg !263
  call void @llvm.dbg.value(metadata i32 %call2, metadata !242, metadata !DIExpression()), !dbg !265
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !266
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !267

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !268, !tbaa !130
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 318) #12, !dbg !268
  tail call void @exit(i32 noundef %call2) #13, !dbg !268
  unreachable, !dbg !268

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !270, !tbaa !119
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 8) #11, !dbg !272
  call void @llvm.dbg.value(metadata i32 %call7, metadata !242, metadata !DIExpression()), !dbg !265
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !273
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !274

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !275, !tbaa !130
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 321) #12, !dbg !275
  tail call void @exit(i32 noundef %call7) #13, !dbg !275
  unreachable, !dbg !275

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !277
  store ptr %call12, ptr @a, align 8, !dbg !278, !tbaa !130
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !279
  store ptr %call13, ptr @b, align 8, !dbg !280, !tbaa !130
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !281
  store ptr %call14, ptr @c, align 8, !dbg !282, !tbaa !130
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !283
  store ptr %call15, ptr @cond, align 8, !dbg !284, !tbaa !130
  store i8 0, ptr %call15, align 1, !dbg !285, !tbaa !140
  %call16 = tail call i64 @time(ptr noundef null) #11, !dbg !286
  %conv = trunc i64 %call16 to i32, !dbg !286
  tail call void @srand(i32 noundef %conv) #11, !dbg !287
  call void @llvm.dbg.value(metadata i32 1, metadata !248, metadata !DIExpression()), !dbg !288
  br label %for.body, !dbg !289

for.cond.cleanup:                                 ; preds = %for.body
  %4 = load ptr, ptr @a, align 8, !dbg !290, !tbaa !130
  %5 = load ptr, ptr @b, align 8, !dbg !291, !tbaa !130
  %6 = load ptr, ptr @c, align 8, !dbg !292, !tbaa !130
  tail call void @simple_if_else(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %11, i32 noundef 5000000), !dbg !293
  call void @llvm.dbg.value(metadata i32 0, metadata !250, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 0, metadata !251, metadata !DIExpression()), !dbg !294
  %7 = load ptr, ptr @c, align 8, !tbaa !130
  call void @llvm.dbg.value(metadata i32 0, metadata !251, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 0, metadata !250, metadata !DIExpression()), !dbg !265
  br label %for.body34, !dbg !295

for.body:                                         ; preds = %if.end11, %for.body
  %indvars.iv = phi i64 [ 1, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !248, metadata !DIExpression()), !dbg !288
  %8 = load ptr, ptr @a, align 8, !dbg !296, !tbaa !130
  %arrayidx19 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv, !dbg !296
  store i32 1, ptr %arrayidx19, align 4, !dbg !299, !tbaa !119
  %9 = load ptr, ptr @b, align 8, !dbg !300, !tbaa !130
  %arrayidx21 = getelementptr inbounds i32, ptr %9, i64 %indvars.iv, !dbg !300
  store i32 -1, ptr %arrayidx21, align 4, !dbg !301, !tbaa !119
  %10 = load ptr, ptr @c, align 8, !dbg !302, !tbaa !130
  %arrayidx23 = getelementptr inbounds i32, ptr %10, i64 %indvars.iv, !dbg !302
  store i32 0, ptr %arrayidx23, align 4, !dbg !303, !tbaa !119
  %call24 = tail call i32 @rand() #11, !dbg !304
  %rem = srem i32 %call24, 3, !dbg !305
  %cmp25 = icmp eq i32 %rem, 0, !dbg !306
  %11 = load ptr, ptr @cond, align 8, !dbg !307, !tbaa !130
  %arrayidx28 = getelementptr inbounds i8, ptr %11, i64 %indvars.iv, !dbg !307
  %frombool = zext i1 %cmp25 to i8, !dbg !308
  store i8 %frombool, ptr %arrayidx28, align 1, !dbg !308, !tbaa !140
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !309
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !248, metadata !DIExpression()), !dbg !288
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !310
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !289, !llvm.loop !311

for.cond.cleanup33:                               ; preds = %for.body34
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add), !dbg !313
  %putchar = tail call i32 @putchar(i32 10), !dbg !314
  %12 = load ptr, ptr @a, align 8, !dbg !315, !tbaa !130
  tail call void @free(ptr noundef %12) #11, !dbg !316
  %13 = load ptr, ptr @b, align 8, !dbg !317, !tbaa !130
  tail call void @free(ptr noundef %13) #11, !dbg !318
  %14 = load ptr, ptr @c, align 8, !dbg !319, !tbaa !130
  tail call void @free(ptr noundef %14) #11, !dbg !320
  %15 = load ptr, ptr @cond, align 8, !dbg !321, !tbaa !130
  tail call void @free(ptr noundef %15) #11, !dbg !322
  %16 = load i64, ptr @CounterValues, align 8, !dbg !323, !tbaa !324
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %16), !dbg !326
  %17 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !327, !tbaa !324
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %17), !dbg !328
  %18 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !329, !tbaa !324
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %18), !dbg !330
  %19 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !331, !tbaa !324
  %call45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %19), !dbg !332
  %20 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 4), align 8, !dbg !333, !tbaa !324
  %call46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, i64 noundef %20), !dbg !334
  %21 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 5), align 8, !dbg !335, !tbaa !324
  %call47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, i64 noundef %21), !dbg !336
  %22 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 6), align 8, !dbg !337, !tbaa !324
  %call48 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.12, i64 noundef %22), !dbg !338
  %23 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 7), align 8, !dbg !339, !tbaa !324
  %call49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.13, i64 noundef %23), !dbg !340
  %24 = load double, ptr @ExecutionTime, align 8, !dbg !341, !tbaa !194
  %call50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.14, double noundef %24), !dbg !342
  %25 = load i32, ptr @EventSet, align 4, !dbg !343, !tbaa !119
  %call51 = tail call i32 @PAPI_remove_events(i32 noundef %25, ptr noundef nonnull @EventCodes, i32 noundef 8) #11, !dbg !345
  call void @llvm.dbg.value(metadata i32 %call51, metadata !242, metadata !DIExpression()), !dbg !265
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !346
  br i1 %cmp52.not, label %if.end56, label %if.then54, !dbg !347

for.body34:                                       ; preds = %for.cond.cleanup, %for.body34
  %indvars.iv82 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next83, %for.body34 ]
  %sum.079 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body34 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv82, metadata !251, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %sum.079, metadata !250, metadata !DIExpression()), !dbg !265
  %arrayidx36 = getelementptr inbounds i32, ptr %7, i64 %indvars.iv82, !dbg !348
  %26 = load i32, ptr %arrayidx36, align 4, !dbg !348, !tbaa !119
  %add = add nsw i32 %26, %sum.079, !dbg !351
  call void @llvm.dbg.value(metadata i32 %add, metadata !250, metadata !DIExpression()), !dbg !265
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1, !dbg !352
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next83, metadata !251, metadata !DIExpression()), !dbg !294
  %exitcond85.not = icmp eq i64 %indvars.iv.next83, 5000000, !dbg !353
  br i1 %exitcond85.not, label %for.cond.cleanup33, label %for.body34, !dbg !295, !llvm.loop !354

if.then54:                                        ; preds = %for.cond.cleanup33
  %27 = load ptr, ptr @stderr, align 8, !dbg !356, !tbaa !130
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str, i32 noundef %call51, ptr noundef nonnull @.str.1, i32 noundef 375) #12, !dbg !356
  tail call void @exit(i32 noundef %call51) #13, !dbg !356
  unreachable, !dbg !356

if.end56:                                         ; preds = %for.cond.cleanup33
  %call57 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #11, !dbg !358
  call void @llvm.dbg.value(metadata i32 %call57, metadata !242, metadata !DIExpression()), !dbg !265
  %cmp58.not = icmp eq i32 %call57, 0, !dbg !360
  br i1 %cmp58.not, label %if.end62, label %if.then60, !dbg !361

if.then60:                                        ; preds = %if.end56
  %28 = load ptr, ptr @stderr, align 8, !dbg !362, !tbaa !130
  %call61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str, i32 noundef %call57, ptr noundef nonnull @.str.1, i32 noundef 378) #12, !dbg !362
  tail call void @exit(i32 noundef %call57) #13, !dbg !362
  unreachable, !dbg !362

if.end62:                                         ; preds = %if.end56
  tail call void @PAPI_shutdown() #11, !dbg !364
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #11, !dbg !365
  ret i32 0, !dbg !366
}

declare !dbg !367 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !368 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !371 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !374 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !379 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !385 i32 @rand() local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !386 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !387 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !388 void @PAPI_shutdown() local_unnamed_addr #4

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
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "c239ea237e07a7066f6479d99f148368")
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
!21 = distinct !DIGlobalVariable(name: "ExecutionTime", scope: !2, file: !3, line: 28, type: !22, isLocal: false, isDefinition: true)
!22 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 31, type: !25, isLocal: false, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "s", scope: !2, file: !3, line: 38, type: !28, isLocal: false, isDefinition: true)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "St", file: !3, line: 33, size: 320000000, elements: !29)
!29 = !{!30, !34}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "array1", scope: !28, file: !3, line: 34, baseType: !31, size: 160000000)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 160000000, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 5000000)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "array2", scope: !28, file: !3, line: 35, baseType: !31, size: 160000000, offset: 160000000)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "arr2D", scope: !2, file: !3, line: 39, type: !37, isLocal: false, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 480000000, elements: !38)
!38 = !{!39, !33}
!39 = !DISubrange(count: 3)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 285, type: !5, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 286, type: !5, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 287, type: !5, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 288, type: !8, isLocal: false, isDefinition: true)
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
!100 = distinct !DISubprogram(name: "simple_if_else", scope: !3, file: !3, line: 70, type: !101, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !105)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !103, !103, !103, !104, !6}
!103 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!104 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113}
!106 = !DILocalVariable(name: "a", arg: 1, scope: !100, file: !3, line: 70, type: !103)
!107 = !DILocalVariable(name: "b", arg: 2, scope: !100, file: !3, line: 70, type: !103)
!108 = !DILocalVariable(name: "c", arg: 3, scope: !100, file: !3, line: 70, type: !103)
!109 = !DILocalVariable(name: "cond", arg: 4, scope: !100, file: !3, line: 71, type: !104)
!110 = !DILocalVariable(name: "n", arg: 5, scope: !100, file: !3, line: 71, type: !6)
!111 = !DILocalVariable(name: "status", scope: !100, file: !3, line: 73, type: !6)
!112 = !DILocalVariable(name: "t", scope: !100, file: !3, line: 75, type: !22)
!113 = !DILocalVariable(name: "i", scope: !114, file: !3, line: 81, type: !6)
!114 = distinct !DILexicalBlock(scope: !100, file: !3, line: 81, column: 5)
!115 = !DILocation(line: 0, scope: !100)
!116 = !DILocation(line: 75, column: 16, scope: !100)
!117 = !DILocation(line: 77, column: 30, scope: !118)
!118 = distinct !DILexicalBlock(scope: !100, file: !3, line: 77, column: 9)
!119 = !{!120, !120, i64 0}
!120 = !{!"int", !81, i64 0}
!121 = !DILocation(line: 77, column: 19, scope: !118)
!122 = !DILocation(line: 77, column: 41, scope: !118)
!123 = !DILocation(line: 77, column: 9, scope: !100)
!124 = !DILocation(line: 0, scope: !114)
!125 = !DILocation(line: 81, column: 23, scope: !126)
!126 = distinct !DILexicalBlock(scope: !114, file: !3, line: 81, column: 5)
!127 = !DILocation(line: 81, column: 5, scope: !114)
!128 = !DILocation(line: 77, column: 53, scope: !129)
!129 = distinct !DILexicalBlock(scope: !118, file: !3, line: 77, column: 53)
!130 = !{!131, !131, i64 0}
!131 = !{!"any pointer", !81, i64 0}
!132 = !DILocation(line: 103, column: 29, scope: !133)
!133 = distinct !DILexicalBlock(scope: !100, file: !3, line: 103, column: 9)
!134 = !DILocation(line: 103, column: 19, scope: !133)
!135 = !DILocation(line: 103, column: 55, scope: !133)
!136 = !DILocation(line: 103, column: 9, scope: !100)
!137 = !DILocation(line: 83, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 83, column: 13)
!139 = distinct !DILexicalBlock(scope: !126, file: !3, line: 81, column: 33)
!140 = !{!141, !141, i64 0}
!141 = !{!"_Bool", !81, i64 0}
!142 = !{i8 0, i8 2}
!143 = !DILocation(line: 83, column: 13, scope: !139)
!144 = !DILocation(line: 84, column: 25, scope: !145)
!145 = distinct !DILexicalBlock(scope: !138, file: !3, line: 83, column: 22)
!146 = !DILocation(line: 84, column: 36, scope: !145)
!147 = !DILocation(line: 84, column: 45, scope: !145)
!148 = !DILocation(line: 85, column: 27, scope: !145)
!149 = !DILocation(line: 84, column: 42, scope: !145)
!150 = !DILocation(line: 85, column: 18, scope: !145)
!151 = !DILocation(line: 87, column: 27, scope: !145)
!152 = !DILocation(line: 86, column: 33, scope: !145)
!153 = !DILocation(line: 87, column: 18, scope: !145)
!154 = !DILocation(line: 88, column: 30, scope: !145)
!155 = !DILocation(line: 88, column: 57, scope: !145)
!156 = !DILocation(line: 88, column: 72, scope: !145)
!157 = !DILocation(line: 88, column: 68, scope: !145)
!158 = !DILocation(line: 88, column: 45, scope: !145)
!159 = !DILocation(line: 88, column: 41, scope: !145)
!160 = !DILocation(line: 88, column: 18, scope: !145)
!161 = !DILocation(line: 89, column: 9, scope: !145)
!162 = !DILocation(line: 90, column: 25, scope: !163)
!163 = distinct !DILexicalBlock(scope: !138, file: !3, line: 89, column: 16)
!164 = !DILocation(line: 90, column: 23, scope: !163)
!165 = !DILocation(line: 90, column: 36, scope: !163)
!166 = !DILocation(line: 90, column: 34, scope: !163)
!167 = !DILocation(line: 90, column: 30, scope: !163)
!168 = !DILocation(line: 90, column: 13, scope: !163)
!169 = !DILocation(line: 90, column: 18, scope: !163)
!170 = !DILocation(line: 91, column: 25, scope: !163)
!171 = !DILocation(line: 91, column: 32, scope: !163)
!172 = !DILocation(line: 91, column: 36, scope: !163)
!173 = !DILocation(line: 92, column: 22, scope: !163)
!174 = !DILocation(line: 93, column: 34, scope: !163)
!175 = !DILocation(line: 92, column: 29, scope: !163)
!176 = !DILocation(line: 93, column: 18, scope: !163)
!177 = !DILocation(line: 94, column: 30, scope: !163)
!178 = !DILocation(line: 94, column: 23, scope: !163)
!179 = !DILocation(line: 94, column: 18, scope: !163)
!180 = !DILocation(line: 95, column: 23, scope: !163)
!181 = !DILocation(line: 95, column: 34, scope: !163)
!182 = !DILocation(line: 95, column: 30, scope: !163)
!183 = !DILocation(line: 95, column: 18, scope: !163)
!184 = !DILocation(line: 81, column: 28, scope: !126)
!185 = distinct !{!185, !127, !186, !187, !188}
!186 = !DILocation(line: 99, column: 5, scope: !114)
!187 = !{!"llvm.loop.mustprogress"}
!188 = !{!"llvm.loop.unroll.disable"}
!189 = !DILocation(line: 103, column: 67, scope: !190)
!190 = distinct !DILexicalBlock(scope: !133, file: !3, line: 103, column: 67)
!191 = !DILocation(line: 105, column: 21, scope: !100)
!192 = !DILocation(line: 105, column: 42, scope: !100)
!193 = !DILocation(line: 105, column: 19, scope: !100)
!194 = !{!195, !195, i64 0}
!195 = !{!"double", !81, i64 0}
!196 = !DILocation(line: 106, column: 1, scope: !100)
!197 = !DISubprogram(name: "PAPI_start", scope: !198, file: !198, line: 1204, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!198 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!199 = !DISubroutineType(types: !200)
!200 = !{!6, !6}
!201 = !DISubprogram(name: "PAPI_stop", scope: !198, file: !198, line: 1206, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!202 = !DISubroutineType(types: !203)
!203 = !{!6, !6, !204}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!205 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 290, type: !206, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !208)
!206 = !DISubroutineType(types: !207)
!207 = !{!5, !6}
!208 = !{!209, !210}
!209 = !DILocalVariable(name: "n", arg: 1, scope: !205, file: !3, line: 290, type: !6)
!210 = !DILocalVariable(name: "ptr", scope: !205, file: !3, line: 291, type: !5)
!211 = !DILocation(line: 0, scope: !205)
!212 = !DILocation(line: 291, column: 45, scope: !205)
!213 = !DILocation(line: 291, column: 43, scope: !205)
!214 = !DILocation(line: 291, column: 24, scope: !205)
!215 = !DILocation(line: 292, column: 13, scope: !216)
!216 = distinct !DILexicalBlock(scope: !205, file: !3, line: 292, column: 9)
!217 = !DILocation(line: 292, column: 9, scope: !205)
!218 = !DILocation(line: 293, column: 9, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !3, line: 292, column: 22)
!220 = !DILocation(line: 294, column: 9, scope: !219)
!221 = !DILocation(line: 296, column: 5, scope: !205)
!222 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 299, type: !223, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{!8, !6}
!225 = !{!226, !227}
!226 = !DILocalVariable(name: "n", arg: 1, scope: !222, file: !3, line: 299, type: !6)
!227 = !DILocalVariable(name: "ptr", scope: !222, file: !3, line: 300, type: !8)
!228 = !DILocation(line: 0, scope: !222)
!229 = !DILocation(line: 300, column: 48, scope: !222)
!230 = !DILocation(line: 300, column: 26, scope: !222)
!231 = !DILocation(line: 301, column: 13, scope: !232)
!232 = distinct !DILexicalBlock(scope: !222, file: !3, line: 301, column: 9)
!233 = !DILocation(line: 301, column: 9, scope: !222)
!234 = !DILocation(line: 302, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !3, line: 301, column: 22)
!236 = !DILocation(line: 303, column: 9, scope: !235)
!237 = !DILocation(line: 305, column: 5, scope: !222)
!238 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 308, type: !239, scopeLine: 308, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{!6}
!241 = !{!242, !243, !248, !250, !251}
!242 = !DILocalVariable(name: "status", scope: !238, file: !3, line: 309, type: !6)
!243 = !DILocalVariable(name: "errstring", scope: !238, file: !3, line: 310, type: !244)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 1024, elements: !246)
!245 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!246 = !{!247}
!247 = !DISubrange(count: 128)
!248 = !DILocalVariable(name: "i", scope: !249, file: !3, line: 334, type: !6)
!249 = distinct !DILexicalBlock(scope: !238, file: !3, line: 334, column: 5)
!250 = !DILocalVariable(name: "sum", scope: !238, file: !3, line: 350, type: !6)
!251 = !DILocalVariable(name: "i", scope: !252, file: !3, line: 352, type: !6)
!252 = distinct !DILexicalBlock(scope: !238, file: !3, line: 352, column: 5)
!253 = !DILocation(line: 310, column: 5, scope: !238)
!254 = !DILocation(line: 310, column: 10, scope: !238)
!255 = !DILocation(line: 312, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !238, file: !3, line: 312, column: 9)
!257 = !DILocation(line: 312, column: 45, scope: !256)
!258 = !DILocation(line: 312, column: 9, scope: !238)
!259 = !DILocation(line: 313, column: 17, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !3, line: 312, column: 66)
!261 = !DILocation(line: 313, column: 9, scope: !260)
!262 = !DILocation(line: 314, column: 9, scope: !260)
!263 = !DILocation(line: 318, column: 19, scope: !264)
!264 = distinct !DILexicalBlock(scope: !238, file: !3, line: 318, column: 9)
!265 = !DILocation(line: 0, scope: !238)
!266 = !DILocation(line: 318, column: 52, scope: !264)
!267 = !DILocation(line: 318, column: 9, scope: !238)
!268 = !DILocation(line: 318, column: 64, scope: !269)
!269 = distinct !DILexicalBlock(scope: !264, file: !3, line: 318, column: 64)
!270 = !DILocation(line: 321, column: 35, scope: !271)
!271 = distinct !DILexicalBlock(scope: !238, file: !3, line: 321, column: 9)
!272 = !DILocation(line: 321, column: 19, scope: !271)
!273 = !DILocation(line: 321, column: 69, scope: !271)
!274 = !DILocation(line: 321, column: 9, scope: !238)
!275 = !DILocation(line: 321, column: 81, scope: !276)
!276 = distinct !DILexicalBlock(scope: !271, file: !3, line: 321, column: 81)
!277 = !DILocation(line: 324, column: 9, scope: !238)
!278 = !DILocation(line: 324, column: 7, scope: !238)
!279 = !DILocation(line: 325, column: 9, scope: !238)
!280 = !DILocation(line: 325, column: 7, scope: !238)
!281 = !DILocation(line: 326, column: 9, scope: !238)
!282 = !DILocation(line: 326, column: 7, scope: !238)
!283 = !DILocation(line: 327, column: 12, scope: !238)
!284 = !DILocation(line: 327, column: 10, scope: !238)
!285 = !DILocation(line: 329, column: 13, scope: !238)
!286 = !DILocation(line: 331, column: 11, scope: !238)
!287 = !DILocation(line: 331, column: 5, scope: !238)
!288 = !DILocation(line: 0, scope: !249)
!289 = !DILocation(line: 334, column: 5, scope: !249)
!290 = !DILocation(line: 347, column: 20, scope: !238)
!291 = !DILocation(line: 347, column: 23, scope: !238)
!292 = !DILocation(line: 347, column: 26, scope: !238)
!293 = !DILocation(line: 347, column: 5, scope: !238)
!294 = !DILocation(line: 0, scope: !252)
!295 = !DILocation(line: 352, column: 5, scope: !252)
!296 = !DILocation(line: 335, column: 9, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !3, line: 334, column: 33)
!298 = distinct !DILexicalBlock(scope: !249, file: !3, line: 334, column: 5)
!299 = !DILocation(line: 335, column: 14, scope: !297)
!300 = !DILocation(line: 336, column: 9, scope: !297)
!301 = !DILocation(line: 336, column: 14, scope: !297)
!302 = !DILocation(line: 337, column: 9, scope: !297)
!303 = !DILocation(line: 337, column: 14, scope: !297)
!304 = !DILocation(line: 342, column: 20, scope: !297)
!305 = !DILocation(line: 342, column: 27, scope: !297)
!306 = !DILocation(line: 342, column: 32, scope: !297)
!307 = !DILocation(line: 342, column: 9, scope: !297)
!308 = !DILocation(line: 342, column: 17, scope: !297)
!309 = !DILocation(line: 334, column: 28, scope: !298)
!310 = !DILocation(line: 334, column: 23, scope: !298)
!311 = distinct !{!311, !289, !312, !187, !188}
!312 = !DILocation(line: 343, column: 5, scope: !249)
!313 = !DILocation(line: 357, column: 5, scope: !238)
!314 = !DILocation(line: 358, column: 5, scope: !238)
!315 = !DILocation(line: 360, column: 10, scope: !238)
!316 = !DILocation(line: 360, column: 5, scope: !238)
!317 = !DILocation(line: 361, column: 10, scope: !238)
!318 = !DILocation(line: 361, column: 5, scope: !238)
!319 = !DILocation(line: 362, column: 10, scope: !238)
!320 = !DILocation(line: 362, column: 5, scope: !238)
!321 = !DILocation(line: 363, column: 10, scope: !238)
!322 = !DILocation(line: 363, column: 5, scope: !238)
!323 = !DILocation(line: 365, column: 53, scope: !238)
!324 = !{!325, !325, i64 0}
!325 = !{!"long long", !81, i64 0}
!326 = !DILocation(line: 365, column: 5, scope: !238)
!327 = !DILocation(line: 366, column: 44, scope: !238)
!328 = !DILocation(line: 366, column: 5, scope: !238)
!329 = !DILocation(line: 367, column: 50, scope: !238)
!330 = !DILocation(line: 367, column: 5, scope: !238)
!331 = !DILocation(line: 368, column: 49, scope: !238)
!332 = !DILocation(line: 368, column: 5, scope: !238)
!333 = !DILocation(line: 369, column: 57, scope: !238)
!334 = !DILocation(line: 369, column: 5, scope: !238)
!335 = !DILocation(line: 370, column: 59, scope: !238)
!336 = !DILocation(line: 370, column: 5, scope: !238)
!337 = !DILocation(line: 371, column: 45, scope: !238)
!338 = !DILocation(line: 371, column: 5, scope: !238)
!339 = !DILocation(line: 372, column: 66, scope: !238)
!340 = !DILocation(line: 372, column: 5, scope: !238)
!341 = !DILocation(line: 373, column: 40, scope: !238)
!342 = !DILocation(line: 373, column: 5, scope: !238)
!343 = !DILocation(line: 375, column: 38, scope: !344)
!344 = distinct !DILexicalBlock(scope: !238, file: !3, line: 375, column: 9)
!345 = !DILocation(line: 375, column: 19, scope: !344)
!346 = !DILocation(line: 375, column: 72, scope: !344)
!347 = !DILocation(line: 375, column: 9, scope: !238)
!348 = !DILocation(line: 353, column: 16, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !3, line: 352, column: 33)
!350 = distinct !DILexicalBlock(scope: !252, file: !3, line: 352, column: 5)
!351 = !DILocation(line: 353, column: 13, scope: !349)
!352 = !DILocation(line: 352, column: 28, scope: !350)
!353 = !DILocation(line: 352, column: 23, scope: !350)
!354 = distinct !{!354, !295, !355, !187, !188}
!355 = !DILocation(line: 354, column: 5, scope: !252)
!356 = !DILocation(line: 375, column: 84, scope: !357)
!357 = distinct !DILexicalBlock(scope: !344, file: !3, line: 375, column: 84)
!358 = !DILocation(line: 378, column: 19, scope: !359)
!359 = distinct !DILexicalBlock(scope: !238, file: !3, line: 378, column: 9)
!360 = !DILocation(line: 378, column: 53, scope: !359)
!361 = !DILocation(line: 378, column: 9, scope: !238)
!362 = !DILocation(line: 378, column: 65, scope: !363)
!363 = distinct !DILexicalBlock(scope: !359, file: !3, line: 378, column: 65)
!364 = !DILocation(line: 381, column: 5, scope: !238)
!365 = !DILocation(line: 384, column: 1, scope: !238)
!366 = !DILocation(line: 383, column: 5, scope: !238)
!367 = !DISubprogram(name: "PAPI_library_init", scope: !198, file: !198, line: 1172, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!368 = !DISubprogram(name: "PAPI_create_eventset", scope: !198, file: !198, line: 1147, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!369 = !DISubroutineType(types: !370)
!370 = !{!6, !5}
!371 = !DISubprogram(name: "PAPI_add_events", scope: !198, file: !198, line: 1143, type: !372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!372 = !DISubroutineType(types: !373)
!373 = !{!6, !6, !5, !6}
!374 = !DISubprogram(name: "srand", scope: !375, file: !375, line: 455, type: !376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!375 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!376 = !DISubroutineType(types: !377)
!377 = !{null, !378}
!378 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!379 = !DISubprogram(name: "time", scope: !92, file: !92, line: 75, type: !380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!380 = !DISubroutineType(types: !381)
!381 = !{!382, !384}
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !383, line: 7, baseType: !69)
!383 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!385 = !DISubprogram(name: "rand", scope: !375, file: !375, line: 453, type: !239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!386 = !DISubprogram(name: "PAPI_remove_events", scope: !198, file: !198, line: 1192, type: !372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!387 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !198, file: !198, line: 1149, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!388 = !DISubprogram(name: "PAPI_shutdown", scope: !198, file: !198, line: 1202, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!389 = !DISubroutineType(types: !390)
!390 = !{null}
