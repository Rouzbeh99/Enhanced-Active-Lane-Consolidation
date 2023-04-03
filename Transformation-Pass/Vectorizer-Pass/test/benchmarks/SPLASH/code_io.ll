; ModuleID = 'code_io.c'
source_filename = "code_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_memory = type { [512 x i64], double, double, i64, i64, i64, [3 x double], [3 x double], i64, i64, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, ptr, [3 x double], double, [3 x double], [3 x double], double, ptr, ptr, [3 x i64], double, [3 x double], [3 x [3 x double]], [3 x [3 x double]], [2 x [3 x double]], [3 x double], [512 x i64] }
%struct._node = type { i64, double, [3 x double], i64, i64, ptr, i64 }
%struct._body = type { i64, double, [3 x double], i64, i64, ptr, i64, [3 x double], [3 x double], double }
%struct.GlobalMemory = type { i64, i64, i64, double, [3 x double], [3 x [3 x double]], [3 x [3 x double]], [2 x [3 x double]], [3 x double], ptr, [3 x double], [3 x double], [3 x double], double, %struct.anon.2, %struct.anon.3, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.anon.7, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.2 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.0, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%struct.anon.3 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.4 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.5 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.6 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.7 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@inputdata.headbuf = internal global [128 x i8] zeroinitializer, align 16, !dbg !0
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [25 x i8] c"reading input file : %s\0A\00", align 1
@infile = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"inputdata: cannot find file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Hack code: input file %s\0A\00", align 1
@headline = external local_unnamed_addr global ptr, align 8
@nbody = external global i64, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"inputdata: nbody = %ld is absurd\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"inputdata: NDIM = %ld ndim = %ld is absurd\0A\00", align 1
@Local = external local_unnamed_addr global [1024 x %struct.local_memory], align 16
@bodytab = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"\0A\09\09%s\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"%10s%10s%10s%10s%10s%10s%10s%10s\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"nbody\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"dtime\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"eps\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"tol\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"dtout\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"tstop\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"fcells\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"NPROC\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"%10ld%10.5f%10.4f%10.2f%10.3f%10.3f%10.2f%10ld\0A\0A\00", align 1
@dtime = external local_unnamed_addr global double, align 8
@eps = external local_unnamed_addr global double, align 8
@tol = external local_unnamed_addr global double, align 8
@dtout = external local_unnamed_addr global double, align 8
@tstop = external local_unnamed_addr global double, align 8
@fcells = external local_unnamed_addr global double, align 8
@NPROC = external local_unnamed_addr global i64, align 8
@Global = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"  %ld\0A\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c" %21.14E\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c" %21.14E %21.14E\00", align 1
@str = private unnamed_addr constant [27 x i8] c"inputdata: not enuf memory\00", align 1
@str.27 = private unnamed_addr constant [37 x i8] c"in_int: input conversion print_error\00", align 1
@str.28 = private unnamed_addr constant [38 x i8] c"in_real: input conversion print_error\00", align 1
@str.29 = private unnamed_addr constant [40 x i8] c"in_vector: input conversion print_error\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @inputdata() local_unnamed_addr #0 !dbg !2 {
entry:
  %ndim = alloca i64, align 8
  %tnow = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ndim) #12, !dbg !215
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tnow) #12, !dbg !216
  %0 = load ptr, ptr @stderr, align 8, !dbg !217
  %1 = load ptr, ptr @infile, align 8, !dbg !218
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %1) #13, !dbg !219
  %2 = load ptr, ptr @stderr, align 8, !dbg !220
  %call1 = tail call i32 @fflush(ptr noundef %2), !dbg !221
  %3 = load ptr, ptr @infile, align 8, !dbg !222
  %call2 = tail call ptr @fopen(ptr noundef %3, ptr noundef nonnull @.str.1), !dbg !223
  call void @llvm.dbg.value(metadata ptr %call2, metadata !134, metadata !DIExpression()), !dbg !224
  %cmp = icmp eq ptr %call2, null, !dbg !225
  br i1 %cmp, label %if.then, label %if.end, !dbg !227

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr @infile, align 8, !dbg !228
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, ptr noundef %4), !dbg !228
  br label %if.end, !dbg !228

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr @infile, align 8, !dbg !229
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @inputdata.headbuf, ptr noundef nonnull @.str.3, ptr noundef %5) #12, !dbg !230
  store ptr @inputdata.headbuf, ptr @headline, align 8, !dbg !231
  tail call void @in_int(ptr noundef %call2, ptr noundef nonnull @nbody), !dbg !232
  %6 = load i64, ptr @nbody, align 8, !dbg !233
  %cmp5 = icmp slt i64 %6, 1, !dbg !235
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !236

if.then6:                                         ; preds = %if.end
  %call7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i64 noundef %6), !dbg !237
  br label %if.end8, !dbg !237

if.end8:                                          ; preds = %if.then6, %if.end
  call void @llvm.dbg.value(metadata ptr %ndim, metadata !196, metadata !DIExpression(DW_OP_deref)), !dbg !224
  call void @in_int(ptr noundef %call2, ptr noundef nonnull %ndim), !dbg !238
  %7 = load i64, ptr %ndim, align 8, !dbg !239
  call void @llvm.dbg.value(metadata i64 %7, metadata !196, metadata !DIExpression()), !dbg !224
  %cmp9.not = icmp eq i64 %7, 3, !dbg !241
  br i1 %cmp9.not, label %if.end12, label %if.then10, !dbg !242

if.then10:                                        ; preds = %if.end8
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef 3, i64 noundef %7), !dbg !243
  br label %if.end12, !dbg !243

if.end12:                                         ; preds = %if.then10, %if.end8
  call void @llvm.dbg.value(metadata ptr %tnow, metadata !197, metadata !DIExpression(DW_OP_deref)), !dbg !224
  call void @in_real(ptr noundef %call2, ptr noundef nonnull %tnow), !dbg !244
  call void @llvm.dbg.value(metadata i64 0, metadata !199, metadata !DIExpression()), !dbg !224
  %8 = load double, ptr %tnow, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !199, metadata !DIExpression()), !dbg !224
  br label %for.body, !dbg !245

for.body:                                         ; preds = %if.end12, %for.body
  %i.083 = phi i64 [ 0, %if.end12 ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.083, metadata !199, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata double %8, metadata !197, metadata !DIExpression()), !dbg !224
  %tnow14 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %i.083, i32 1, !dbg !247
  store double %8, ptr %tnow14, align 8, !dbg !250
  %inc = add nuw nsw i64 %i.083, 1, !dbg !251
  call void @llvm.dbg.value(metadata i64 %inc, metadata !199, metadata !DIExpression()), !dbg !224
  %exitcond.not = icmp eq i64 %inc, 1024, !dbg !252
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !245, !llvm.loop !253

for.end:                                          ; preds = %for.body
  %9 = load i64, ptr @nbody, align 8, !dbg !257
  %mul = shl i64 %9, 7, !dbg !258
  %call15 = call noalias ptr @malloc(i64 noundef %mul) #14, !dbg !259
  store ptr %call15, ptr @bodytab, align 8, !dbg !260
  %cmp16 = icmp eq ptr %call15, null, !dbg !261
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !263

if.then17:                                        ; preds = %for.end
  %puts = call i32 @puts(ptr nonnull @str), !dbg !264
  %.pre = load ptr, ptr @bodytab, align 8, !dbg !265
  %.pre102 = load i64, ptr @nbody, align 8, !dbg !266
  br label %if.end19, !dbg !264

if.end19:                                         ; preds = %if.then17, %for.end
  %10 = phi i64 [ %.pre102, %if.then17 ], [ %9, %for.end ], !dbg !266
  %11 = phi ptr [ %.pre, %if.then17 ], [ %call15, %for.end ], !dbg !265
  call void @llvm.dbg.value(metadata ptr %11, metadata !198, metadata !DIExpression()), !dbg !224
  %cmp2186 = icmp sgt i64 %10, 0, !dbg !267
  br i1 %cmp2186, label %for.body22, label %for.end53, !dbg !268

for.cond32.preheader:                             ; preds = %for.body22
  call void @llvm.dbg.value(metadata ptr %14, metadata !198, metadata !DIExpression()), !dbg !224
  %cmp3489 = icmp sgt i64 %15, 0, !dbg !269
  br i1 %cmp3489, label %for.body35, label %for.end53, !dbg !272

for.body22:                                       ; preds = %if.end19, %for.body22
  %indvar = phi i64 [ %indvar.next, %for.body22 ], [ 0, %if.end19 ]
  %p.087 = phi ptr [ %incdec.ptr, %for.body22 ], [ %11, %if.end19 ]
  call void @llvm.dbg.value(metadata ptr %p.087, metadata !198, metadata !DIExpression()), !dbg !224
  %12 = shl i64 %indvar, 7, !dbg !273
  %13 = or i64 %12, 96, !dbg !273
  %uglygep = getelementptr i8, ptr %11, i64 %13, !dbg !273
  store i64 1, ptr %p.087, align 8, !dbg !273
  %cost = getelementptr inbounds %struct._node, ptr %p.087, i64 0, i32 3, !dbg !274
  store i64 1, ptr %cost, align 8, !dbg !275
  %phi = getelementptr inbounds %struct._body, ptr %p.087, i64 0, i32 9, !dbg !276
  store double 0.000000e+00, ptr %phi, align 8, !dbg !277
  call void @llvm.dbg.value(metadata i64 0, metadata !200, metadata !DIExpression()), !dbg !278
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %uglygep, i8 0, i64 24, i1 false), !dbg !279
  call void @llvm.dbg.value(metadata i32 undef, metadata !200, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !278
  %incdec.ptr = getelementptr inbounds %struct._body, ptr %p.087, i64 1, !dbg !282
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !198, metadata !DIExpression()), !dbg !224
  %14 = load ptr, ptr @bodytab, align 8, !dbg !283
  %15 = load i64, ptr @nbody, align 8, !dbg !266
  %add.ptr = getelementptr inbounds %struct._body, ptr %14, i64 %15, !dbg !284
  %cmp21 = icmp ult ptr %incdec.ptr, %add.ptr, !dbg !267
  %indvar.next = add nuw nsw i64 %indvar, 1, !dbg !268
  br i1 %cmp21, label %for.body22, label %for.cond32.preheader, !dbg !268, !llvm.loop !285

for.cond39.preheader:                             ; preds = %for.body35
  call void @llvm.dbg.value(metadata ptr %16, metadata !198, metadata !DIExpression()), !dbg !224
  %cmp4193 = icmp sgt i64 %17, 0, !dbg !287
  br i1 %cmp4193, label %for.body42, label %for.end53, !dbg !290

for.body35:                                       ; preds = %for.cond32.preheader, %for.body35
  %p.190 = phi ptr [ %incdec.ptr37, %for.body35 ], [ %14, %for.cond32.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.190, metadata !198, metadata !DIExpression()), !dbg !224
  %mass = getelementptr inbounds %struct._node, ptr %p.190, i64 0, i32 1, !dbg !291
  call void @in_real(ptr noundef %call2, ptr noundef nonnull %mass), !dbg !292
  %incdec.ptr37 = getelementptr inbounds %struct._body, ptr %p.190, i64 1, !dbg !293
  call void @llvm.dbg.value(metadata ptr %incdec.ptr37, metadata !198, metadata !DIExpression()), !dbg !224
  %16 = load ptr, ptr @bodytab, align 8, !dbg !294
  %17 = load i64, ptr @nbody, align 8, !dbg !295
  %add.ptr33 = getelementptr inbounds %struct._body, ptr %16, i64 %17, !dbg !296
  %cmp34 = icmp ult ptr %incdec.ptr37, %add.ptr33, !dbg !269
  br i1 %cmp34, label %for.body35, label %for.cond39.preheader, !dbg !272, !llvm.loop !297

for.cond46.preheader:                             ; preds = %for.body42
  call void @llvm.dbg.value(metadata ptr %18, metadata !198, metadata !DIExpression()), !dbg !224
  %cmp4897 = icmp sgt i64 %19, 0, !dbg !299
  br i1 %cmp4897, label %for.body49, label %for.end53, !dbg !302

for.body42:                                       ; preds = %for.cond39.preheader, %for.body42
  %p.294 = phi ptr [ %incdec.ptr44, %for.body42 ], [ %16, %for.cond39.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.294, metadata !198, metadata !DIExpression()), !dbg !224
  %pos = getelementptr inbounds %struct._node, ptr %p.294, i64 0, i32 2, !dbg !303
  call void @in_vector(ptr noundef %call2, ptr noundef nonnull %pos), !dbg !304
  %incdec.ptr44 = getelementptr inbounds %struct._body, ptr %p.294, i64 1, !dbg !305
  call void @llvm.dbg.value(metadata ptr %incdec.ptr44, metadata !198, metadata !DIExpression()), !dbg !224
  %18 = load ptr, ptr @bodytab, align 8, !dbg !306
  %19 = load i64, ptr @nbody, align 8, !dbg !307
  %add.ptr40 = getelementptr inbounds %struct._body, ptr %18, i64 %19, !dbg !308
  %cmp41 = icmp ult ptr %incdec.ptr44, %add.ptr40, !dbg !287
  br i1 %cmp41, label %for.body42, label %for.cond46.preheader, !dbg !290, !llvm.loop !309

for.body49:                                       ; preds = %for.cond46.preheader, %for.body49
  %p.398 = phi ptr [ %incdec.ptr52, %for.body49 ], [ %18, %for.cond46.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.398, metadata !198, metadata !DIExpression()), !dbg !224
  %vel = getelementptr inbounds %struct._body, ptr %p.398, i64 0, i32 7, !dbg !311
  call void @in_vector(ptr noundef %call2, ptr noundef nonnull %vel), !dbg !312
  %incdec.ptr52 = getelementptr inbounds %struct._body, ptr %p.398, i64 1, !dbg !313
  call void @llvm.dbg.value(metadata ptr %incdec.ptr52, metadata !198, metadata !DIExpression()), !dbg !224
  %20 = load ptr, ptr @bodytab, align 8, !dbg !314
  %21 = load i64, ptr @nbody, align 8, !dbg !315
  %add.ptr47 = getelementptr inbounds %struct._body, ptr %20, i64 %21, !dbg !316
  %cmp48 = icmp ult ptr %incdec.ptr52, %add.ptr47, !dbg !299
  br i1 %cmp48, label %for.body49, label %for.end53, !dbg !302, !llvm.loop !317

for.end53:                                        ; preds = %for.body49, %if.end19, %for.cond32.preheader, %for.cond39.preheader, %for.cond46.preheader
  %call54 = call i32 @fclose(ptr noundef %call2), !dbg !319
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tnow) #12, !dbg !320
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ndim) #12, !dbg !320
  ret void, !dbg !320
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !321 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @in_int(ptr noundef %str, ptr noundef %iptr) local_unnamed_addr #0 !dbg !326 {
entry:
  call void @llvm.dbg.value(metadata ptr %str, metadata !331, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata ptr %iptr, metadata !332, metadata !DIExpression()), !dbg !333
  %call = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %str, ptr noundef nonnull @.str.18, ptr noundef %iptr) #12, !dbg !334
  %cmp.not = icmp eq i32 %call, 1, !dbg !336
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !337

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.27), !dbg !338
  br label %if.end, !dbg !338

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !339
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @in_real(ptr noundef %str, ptr nocapture noundef writeonly %rptr) local_unnamed_addr #0 !dbg !340 {
entry:
  %tmp = alloca double, align 8
  call void @llvm.dbg.value(metadata ptr %str, metadata !345, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata ptr %rptr, metadata !346, metadata !DIExpression()), !dbg !348
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #12, !dbg !349
  call void @llvm.dbg.value(metadata ptr %tmp, metadata !347, metadata !DIExpression(DW_OP_deref)), !dbg !348
  %call = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %str, ptr noundef nonnull @.str.20, ptr noundef nonnull %tmp) #12, !dbg !350
  %cmp.not = icmp eq i32 %call, 1, !dbg !352
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !353

if.then:                                          ; preds = %entry
  %puts = call i32 @puts(ptr nonnull @str.28), !dbg !354
  br label %if.end, !dbg !354

if.end:                                           ; preds = %if.then, %entry
  %0 = load double, ptr %tmp, align 8, !dbg !355
  call void @llvm.dbg.value(metadata double %0, metadata !347, metadata !DIExpression()), !dbg !348
  store double %0, ptr %rptr, align 8, !dbg !356
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #12, !dbg !357
  ret void, !dbg !357
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @in_vector(ptr noundef %str, ptr nocapture noundef writeonly %vec) local_unnamed_addr #0 !dbg !358 {
entry:
  %tmpx = alloca double, align 8
  %tmpy = alloca double, align 8
  %tmpz = alloca double, align 8
  call void @llvm.dbg.value(metadata ptr %str, metadata !360, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata ptr %vec, metadata !361, metadata !DIExpression()), !dbg !365
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmpx) #12, !dbg !366
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmpy) #12, !dbg !366
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmpz) #12, !dbg !366
  call void @llvm.dbg.value(metadata ptr %tmpx, metadata !362, metadata !DIExpression(DW_OP_deref)), !dbg !365
  call void @llvm.dbg.value(metadata ptr %tmpy, metadata !363, metadata !DIExpression(DW_OP_deref)), !dbg !365
  call void @llvm.dbg.value(metadata ptr %tmpz, metadata !364, metadata !DIExpression(DW_OP_deref)), !dbg !365
  %call = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %str, ptr noundef nonnull @.str.22, ptr noundef nonnull %tmpx, ptr noundef nonnull %tmpy, ptr noundef nonnull %tmpz) #12, !dbg !367
  %cmp.not = icmp eq i32 %call, 3, !dbg !369
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !370

if.then:                                          ; preds = %entry
  %puts = call i32 @puts(ptr nonnull @str.29), !dbg !371
  br label %if.end, !dbg !371

if.end:                                           ; preds = %if.then, %entry
  %0 = load double, ptr %tmpx, align 8, !dbg !372
  call void @llvm.dbg.value(metadata double %0, metadata !362, metadata !DIExpression()), !dbg !365
  store double %0, ptr %vec, align 8, !dbg !373
  %1 = load double, ptr %tmpy, align 8, !dbg !374
  call void @llvm.dbg.value(metadata double %1, metadata !363, metadata !DIExpression()), !dbg !365
  %arrayidx2 = getelementptr inbounds double, ptr %vec, i64 1, !dbg !375
  store double %1, ptr %arrayidx2, align 8, !dbg !376
  %2 = load double, ptr %tmpz, align 8, !dbg !377
  call void @llvm.dbg.value(metadata double %2, metadata !364, metadata !DIExpression()), !dbg !365
  %arrayidx3 = getelementptr inbounds double, ptr %vec, i64 2, !dbg !378
  store double %2, ptr %arrayidx3, align 8, !dbg !379
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmpz) #12, !dbg !380
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmpy) #12, !dbg !380
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmpx) #12, !dbg !380
  ret void, !dbg !380
}

; Function Attrs: nofree nounwind
declare !dbg !381 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @initoutput() local_unnamed_addr #5 !dbg !382 {
entry:
  %0 = load ptr, ptr @headline, align 8, !dbg !383
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, ptr noundef %0), !dbg !384
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16), !dbg !385
  %1 = load i64, ptr @nbody, align 8, !dbg !386
  %2 = load double, ptr @dtime, align 8, !dbg !387
  %3 = load double, ptr @eps, align 8, !dbg !388
  %4 = load double, ptr @tol, align 8, !dbg !389
  %5 = load double, ptr @dtout, align 8, !dbg !390
  %6 = load double, ptr @tstop, align 8, !dbg !391
  %7 = load double, ptr @fcells, align 8, !dbg !392
  %8 = load i64, ptr @NPROC, align 8, !dbg !393
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.17, i64 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, i64 noundef %8), !dbg !394
  ret void, !dbg !395
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output(i64 noundef %ProcessId) local_unnamed_addr #0 !dbg !396 {
entry:
  %tempv1 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata i64 %ProcessId, metadata !400, metadata !DIExpression()), !dbg !443
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tempv1) #12, !dbg !444
  call void @llvm.dbg.declare(metadata ptr %tempv1, metadata !405, metadata !DIExpression()), !dbg !445
  %tout = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 2, !dbg !446
  %0 = load double, ptr %tout, align 8, !dbg !446
  %1 = load double, ptr @dtime, align 8, !dbg !448
  %2 = tail call double @llvm.fmuladd.f64(double %1, double -1.000000e-02, double %0), !dbg !449
  %tnow = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 1, !dbg !450
  %3 = load double, ptr %tnow, align 8, !dbg !450
  %cmp = fcmp ugt double %2, %3, !dbg !451
  br i1 %cmp, label %if.end, label %if.then, !dbg !452

if.then:                                          ; preds = %entry
  %4 = load double, ptr @dtout, align 8, !dbg !453
  %add = fadd double %0, %4, !dbg !455
  store double %add, ptr %tout, align 8, !dbg !455
  br label %if.end, !dbg !456

if.end:                                           ; preds = %if.then, %entry
  tail call void @diagnostics(i64 noundef %ProcessId), !dbg !457
  %mymtot = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 33, !dbg !458
  %5 = load double, ptr %mymtot, align 8, !dbg !458
  %cmp5 = fcmp une double %5, 0.000000e+00, !dbg !459
  br i1 %cmp5, label %if.then6, label %if.end209, !dbg !460

if.then6:                                         ; preds = %if.end
  %6 = load ptr, ptr @Global, align 8, !dbg !461
  %CountLock = getelementptr inbounds %struct.GlobalMemory, ptr %6, i64 0, i32 20, !dbg !463
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %CountLock) #12, !dbg !464
  %myn2bcalc = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 18, !dbg !465
  %7 = load i64, ptr %myn2bcalc, align 8, !dbg !465
  %8 = load ptr, ptr @Global, align 8, !dbg !466
  %9 = load i64, ptr %8, align 8, !dbg !467
  %add8 = add nsw i64 %9, %7, !dbg !467
  store i64 %add8, ptr %8, align 8, !dbg !467
  %mynbccalc = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 19, !dbg !468
  %10 = load i64, ptr %mynbccalc, align 8, !dbg !468
  %11 = load ptr, ptr @Global, align 8, !dbg !469
  %nbccalc = getelementptr inbounds %struct.GlobalMemory, ptr %11, i64 0, i32 1, !dbg !470
  %12 = load i64, ptr %nbccalc, align 8, !dbg !471
  %add10 = add nsw i64 %12, %10, !dbg !471
  store i64 %add10, ptr %nbccalc, align 8, !dbg !471
  %myselfint = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 20, !dbg !472
  %13 = load i64, ptr %myselfint, align 8, !dbg !472
  %selfint = getelementptr inbounds %struct.GlobalMemory, ptr %11, i64 0, i32 2, !dbg !473
  %14 = load i64, ptr %selfint, align 8, !dbg !474
  %add12 = add nsw i64 %14, %13, !dbg !474
  store i64 %add12, ptr %selfint, align 8, !dbg !474
  call void @llvm.dbg.value(metadata i64 0, metadata !407, metadata !DIExpression()), !dbg !475
  br label %for.cond14.preheader, !dbg !476

for.cond14.preheader:                             ; preds = %if.then6, %for.inc26
  %_i.0334 = phi i64 [ 0, %if.then6 ], [ %inc27, %for.inc26 ]
  call void @llvm.dbg.value(metadata i64 %_i.0334, metadata !407, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i64 0, metadata !411, metadata !DIExpression()), !dbg !475
  br label %for.body16, !dbg !478

for.body16:                                       ; preds = %for.cond14.preheader, %for.body16
  %_j.0333 = phi i64 [ 0, %for.cond14.preheader ], [ %inc, %for.body16 ]
  call void @llvm.dbg.value(metadata i64 %_j.0333, metadata !411, metadata !DIExpression()), !dbg !475
  %15 = load ptr, ptr @Global, align 8, !dbg !481
  %arrayidx18 = getelementptr inbounds %struct.GlobalMemory, ptr %15, i64 0, i32 5, i64 %_i.0334, i64 %_j.0333, !dbg !481
  %16 = load double, ptr %arrayidx18, align 8, !dbg !481
  %arrayidx21 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 35, i64 %_i.0334, i64 %_j.0333, !dbg !481
  %17 = load double, ptr %arrayidx21, align 8, !dbg !481
  %add22 = fadd double %16, %17, !dbg !481
  store double %add22, ptr %arrayidx18, align 8, !dbg !481
  %inc = add nuw nsw i64 %_j.0333, 1, !dbg !481
  call void @llvm.dbg.value(metadata i64 %inc, metadata !411, metadata !DIExpression()), !dbg !475
  %exitcond.not = icmp eq i64 %inc, 3, !dbg !481
  br i1 %exitcond.not, label %for.inc26, label %for.body16, !dbg !478, !llvm.loop !483

for.inc26:                                        ; preds = %for.body16
  %inc27 = add nuw nsw i64 %_i.0334, 1, !dbg !484
  call void @llvm.dbg.value(metadata i64 %inc27, metadata !407, metadata !DIExpression()), !dbg !475
  %exitcond340.not = icmp eq i64 %inc27, 3, !dbg !484
  br i1 %exitcond340.not, label %for.cond34.preheader, label %for.cond14.preheader, !dbg !476, !llvm.loop !485

for.cond34.preheader:                             ; preds = %for.inc26, %for.inc49
  %_i29.0336 = phi i64 [ %inc50, %for.inc49 ], [ 0, %for.inc26 ]
  call void @llvm.dbg.value(metadata i64 %_i29.0336, metadata !412, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata i64 0, metadata !414, metadata !DIExpression()), !dbg !486
  br label %for.body36, !dbg !487

for.body36:                                       ; preds = %for.cond34.preheader, %for.body36
  %_j30.0335 = phi i64 [ 0, %for.cond34.preheader ], [ %inc47, %for.body36 ]
  call void @llvm.dbg.value(metadata i64 %_j30.0335, metadata !414, metadata !DIExpression()), !dbg !486
  %18 = load ptr, ptr @Global, align 8, !dbg !491
  %arrayidx38 = getelementptr inbounds %struct.GlobalMemory, ptr %18, i64 0, i32 6, i64 %_i29.0336, i64 %_j30.0335, !dbg !491
  %19 = load double, ptr %arrayidx38, align 8, !dbg !491
  %arrayidx41 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 36, i64 %_i29.0336, i64 %_j30.0335, !dbg !491
  %20 = load double, ptr %arrayidx41, align 8, !dbg !491
  %add42 = fadd double %19, %20, !dbg !491
  store double %add42, ptr %arrayidx38, align 8, !dbg !491
  %inc47 = add nuw nsw i64 %_j30.0335, 1, !dbg !491
  call void @llvm.dbg.value(metadata i64 %inc47, metadata !414, metadata !DIExpression()), !dbg !486
  %exitcond341.not = icmp eq i64 %inc47, 3, !dbg !491
  br i1 %exitcond341.not, label %for.inc49, label %for.body36, !dbg !487, !llvm.loop !493

for.inc49:                                        ; preds = %for.body36
  %inc50 = add nuw nsw i64 %_i29.0336, 1, !dbg !494
  call void @llvm.dbg.value(metadata i64 %inc50, metadata !412, metadata !DIExpression()), !dbg !486
  %exitcond342.not = icmp eq i64 %inc50, 3, !dbg !494
  br i1 %exitcond342.not, label %for.body54, label %for.cond34.preheader, !dbg !495, !llvm.loop !496

for.body54:                                       ; preds = %for.inc49, %for.body54
  %k.0337 = phi i64 [ %inc60, %for.body54 ], [ 0, %for.inc49 ]
  call void @llvm.dbg.value(metadata i64 %k.0337, metadata !404, metadata !DIExpression()), !dbg !443
  %arrayidx56 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 34, i64 %k.0337, !dbg !497
  %21 = load double, ptr %arrayidx56, align 8, !dbg !497
  %22 = load ptr, ptr @Global, align 8, !dbg !500
  %arrayidx57 = getelementptr inbounds %struct.GlobalMemory, ptr %22, i64 0, i32 4, i64 %k.0337, !dbg !500
  %23 = load double, ptr %arrayidx57, align 8, !dbg !501
  %add58 = fadd double %21, %23, !dbg !501
  store double %add58, ptr %arrayidx57, align 8, !dbg !501
  %inc60 = add nuw nsw i64 %k.0337, 1, !dbg !502
  call void @llvm.dbg.value(metadata i64 %inc60, metadata !404, metadata !DIExpression()), !dbg !443
  %exitcond343.not = icmp eq i64 %inc60, 3, !dbg !503
  br i1 %exitcond343.not, label %for.end61, label %for.body54, !dbg !504, !llvm.loop !505

for.end61:                                        ; preds = %for.body54
  %24 = load ptr, ptr @Global, align 8, !dbg !507
  %amvec = getelementptr inbounds %struct.GlobalMemory, ptr %24, i64 0, i32 8, !dbg !507
  call void @llvm.dbg.value(metadata ptr %amvec, metadata !415, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata ptr %amvec, metadata !417, metadata !DIExpression()), !dbg !508
  %myamvec = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 38, !dbg !507
  call void @llvm.dbg.value(metadata ptr %myamvec, metadata !418, metadata !DIExpression()), !dbg !508
  %incdec.ptr = getelementptr inbounds double, ptr %amvec, i64 1, !dbg !507
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !417, metadata !DIExpression()), !dbg !508
  %25 = load double, ptr %amvec, align 8, !dbg !507
  %incdec.ptr66 = getelementptr inbounds double, ptr %myamvec, i64 1, !dbg !507
  call void @llvm.dbg.value(metadata ptr %incdec.ptr66, metadata !418, metadata !DIExpression()), !dbg !508
  %26 = load double, ptr %myamvec, align 8, !dbg !507
  %add67 = fadd double %25, %26, !dbg !507
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !415, metadata !DIExpression()), !dbg !508
  store double %add67, ptr %amvec, align 8, !dbg !507
  %incdec.ptr69 = getelementptr inbounds double, ptr %amvec, i64 2, !dbg !507
  call void @llvm.dbg.value(metadata ptr %incdec.ptr69, metadata !417, metadata !DIExpression()), !dbg !508
  %27 = load double, ptr %incdec.ptr, align 8, !dbg !507
  %incdec.ptr70 = getelementptr inbounds double, ptr %myamvec, i64 2, !dbg !507
  call void @llvm.dbg.value(metadata ptr %incdec.ptr70, metadata !418, metadata !DIExpression()), !dbg !508
  %28 = load double, ptr %incdec.ptr66, align 8, !dbg !507
  %add71 = fadd double %27, %28, !dbg !507
  call void @llvm.dbg.value(metadata ptr %incdec.ptr69, metadata !415, metadata !DIExpression()), !dbg !508
  store double %add71, ptr %incdec.ptr, align 8, !dbg !507
  %29 = load double, ptr %incdec.ptr69, align 8, !dbg !507
  %30 = load double, ptr %incdec.ptr70, align 8, !dbg !507
  %add73 = fadd double %29, %30, !dbg !507
  store double %add73, ptr %incdec.ptr69, align 8, !dbg !507
  call void @llvm.dbg.value(metadata ptr %tempv1, metadata !419, metadata !DIExpression()), !dbg !509
  %cmphase = getelementptr inbounds %struct.GlobalMemory, ptr %24, i64 0, i32 7, !dbg !510
  call void @llvm.dbg.value(metadata ptr %cmphase, metadata !421, metadata !DIExpression()), !dbg !509
  %incdec.ptr79 = getelementptr inbounds double, ptr %cmphase, i64 1, !dbg !510
  call void @llvm.dbg.value(metadata ptr %incdec.ptr79, metadata !421, metadata !DIExpression()), !dbg !509
  %31 = load double, ptr %cmphase, align 8, !dbg !510
  %mtot = getelementptr inbounds %struct.GlobalMemory, ptr %24, i64 0, i32 3, !dbg !510
  %32 = load double, ptr %mtot, align 8, !dbg !510
  %mul = fmul double %31, %32, !dbg !510
  %incdec.ptr80 = getelementptr inbounds double, ptr %tempv1, i64 1, !dbg !510
  call void @llvm.dbg.value(metadata ptr %incdec.ptr80, metadata !419, metadata !DIExpression()), !dbg !509
  %incdec.ptr81 = getelementptr inbounds double, ptr %cmphase, i64 2, !dbg !510
  call void @llvm.dbg.value(metadata ptr %incdec.ptr81, metadata !421, metadata !DIExpression()), !dbg !509
  %33 = load double, ptr %incdec.ptr79, align 8, !dbg !510
  %mul83 = fmul double %32, %33, !dbg !510
  %incdec.ptr84 = getelementptr inbounds double, ptr %tempv1, i64 2, !dbg !510
  call void @llvm.dbg.value(metadata ptr %incdec.ptr84, metadata !419, metadata !DIExpression()), !dbg !509
  %34 = load double, ptr %incdec.ptr81, align 8, !dbg !510
  %mul86 = fmul double %32, %34, !dbg !510
  call void @llvm.dbg.value(metadata ptr undef, metadata !422, metadata !DIExpression()), !dbg !511
  %mycmphase = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 37, !dbg !512
  call void @llvm.dbg.value(metadata ptr %mycmphase, metadata !424, metadata !DIExpression()), !dbg !511
  %incdec.ptr93 = getelementptr inbounds double, ptr %mycmphase, i64 1, !dbg !512
  call void @llvm.dbg.value(metadata ptr %incdec.ptr93, metadata !424, metadata !DIExpression()), !dbg !511
  %35 = load double, ptr %mycmphase, align 8, !dbg !512
  %36 = load double, ptr %mymtot, align 8, !dbg !512
  %mul96 = fmul double %35, %36, !dbg !512
  call void @llvm.dbg.value(metadata ptr undef, metadata !422, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata double %mul96, metadata !406, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !443
  %incdec.ptr98 = getelementptr inbounds double, ptr %mycmphase, i64 2, !dbg !512
  call void @llvm.dbg.value(metadata ptr %incdec.ptr98, metadata !424, metadata !DIExpression()), !dbg !511
  %37 = load double, ptr %incdec.ptr93, align 8, !dbg !512
  %mul101 = fmul double %36, %37, !dbg !512
  call void @llvm.dbg.value(metadata ptr undef, metadata !422, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata double %mul101, metadata !406, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !443
  %38 = load double, ptr %incdec.ptr98, align 8, !dbg !512
  %mul105 = fmul double %36, %38, !dbg !512
  call void @llvm.dbg.value(metadata double %mul105, metadata !406, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !443
  call void @llvm.dbg.value(metadata ptr %tempv1, metadata !425, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata ptr %tempv1, metadata !427, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata ptr undef, metadata !428, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata ptr %incdec.ptr80, metadata !427, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata ptr undef, metadata !428, metadata !DIExpression()), !dbg !513
  %add114 = fadd double %mul, %mul96, !dbg !514
  call void @llvm.dbg.value(metadata ptr %incdec.ptr80, metadata !425, metadata !DIExpression()), !dbg !513
  store double %add114, ptr %tempv1, align 16, !dbg !514
  call void @llvm.dbg.value(metadata ptr %incdec.ptr84, metadata !427, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata ptr undef, metadata !428, metadata !DIExpression()), !dbg !513
  %add118 = fadd double %mul83, %mul101, !dbg !514
  call void @llvm.dbg.value(metadata ptr %incdec.ptr84, metadata !425, metadata !DIExpression()), !dbg !513
  store double %add118, ptr %incdec.ptr80, align 8, !dbg !514
  %add120 = fadd double %mul86, %mul105, !dbg !514
  store double %add120, ptr %incdec.ptr84, align 16, !dbg !514
  call void @llvm.dbg.value(metadata i64 0, metadata !429, metadata !DIExpression()), !dbg !515
  %add129353 = fadd double %32, %36, !dbg !516
  %div354 = fdiv double %add114, %add129353, !dbg !516
  %cmphase130355 = getelementptr inbounds %struct.GlobalMemory, ptr %24, i64 0, i32 7, !dbg !516
  store double %div354, ptr %cmphase130355, align 8, !dbg !516
  call void @llvm.dbg.value(metadata i64 1, metadata !429, metadata !DIExpression()), !dbg !515
  br label %for.body124.for.body124_crit_edge, !dbg !519

for.body124.for.body124_crit_edge:                ; preds = %for.end61, %for.body124.for.body124_crit_edge
  %inc134356 = phi i64 [ 1, %for.end61 ], [ %inc134, %for.body124.for.body124_crit_edge ]
  %arrayidx125.phi.trans.insert = getelementptr inbounds [3 x double], ptr %tempv1, i64 0, i64 %inc134356
  %.pre = load double, ptr %arrayidx125.phi.trans.insert, align 8, !dbg !516
  %.pre346 = load ptr, ptr @Global, align 8, !dbg !516
  %mtot126.phi.trans.insert = getelementptr inbounds %struct.GlobalMemory, ptr %.pre346, i64 0, i32 3
  %.pre347 = load double, ptr %mtot126.phi.trans.insert, align 8, !dbg !516
  %.pre348 = load double, ptr %mymtot, align 8, !dbg !516
  call void @llvm.dbg.value(metadata i64 %inc134356, metadata !429, metadata !DIExpression()), !dbg !515
  %add129 = fadd double %.pre347, %.pre348, !dbg !516
  %div = fdiv double %.pre, %add129, !dbg !516
  %cmphase130 = getelementptr inbounds %struct.GlobalMemory, ptr %.pre346, i64 0, i32 7, !dbg !516
  %arrayidx132 = getelementptr inbounds [3 x double], ptr %cmphase130, i64 0, i64 %inc134356, !dbg !516
  store double %div, ptr %arrayidx132, align 8, !dbg !516
  %inc134 = add nuw nsw i64 %inc134356, 1, !dbg !516
  call void @llvm.dbg.value(metadata i64 %inc134, metadata !429, metadata !DIExpression()), !dbg !515
  %exitcond344.not = icmp eq i64 %inc134, 3, !dbg !516
  br i1 %exitcond344.not, label %for.end135, label %for.body124.for.body124_crit_edge, !dbg !519, !llvm.loop !520

for.end135:                                       ; preds = %for.body124.for.body124_crit_edge
  call void @llvm.dbg.value(metadata ptr %tempv1, metadata !431, metadata !DIExpression()), !dbg !521
  %39 = load ptr, ptr @Global, align 8, !dbg !522
  %arrayidx140 = getelementptr inbounds %struct.GlobalMemory, ptr %39, i64 0, i32 7, i64 1, !dbg !522
  call void @llvm.dbg.value(metadata ptr %arrayidx140, metadata !433, metadata !DIExpression()), !dbg !521
  %incdec.ptr142 = getelementptr inbounds double, ptr %arrayidx140, i64 1, !dbg !522
  call void @llvm.dbg.value(metadata ptr %incdec.ptr142, metadata !433, metadata !DIExpression()), !dbg !521
  %40 = load double, ptr %arrayidx140, align 8, !dbg !522
  %mtot143 = getelementptr inbounds %struct.GlobalMemory, ptr %39, i64 0, i32 3, !dbg !522
  %41 = load double, ptr %mtot143, align 8, !dbg !522
  %mul144 = fmul double %40, %41, !dbg !522
  call void @llvm.dbg.value(metadata ptr %incdec.ptr80, metadata !431, metadata !DIExpression()), !dbg !521
  %incdec.ptr146 = getelementptr inbounds double, ptr %arrayidx140, i64 2, !dbg !522
  call void @llvm.dbg.value(metadata ptr %incdec.ptr146, metadata !433, metadata !DIExpression()), !dbg !521
  %42 = load double, ptr %incdec.ptr142, align 8, !dbg !522
  %mul148 = fmul double %41, %42, !dbg !522
  call void @llvm.dbg.value(metadata ptr %incdec.ptr84, metadata !431, metadata !DIExpression()), !dbg !521
  %43 = load double, ptr %incdec.ptr146, align 8, !dbg !522
  %mul151 = fmul double %41, %43, !dbg !522
  call void @llvm.dbg.value(metadata ptr undef, metadata !434, metadata !DIExpression()), !dbg !523
  %arrayidx157 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 37, i64 1, !dbg !524
  call void @llvm.dbg.value(metadata ptr %arrayidx157, metadata !436, metadata !DIExpression()), !dbg !523
  %incdec.ptr159 = getelementptr inbounds double, ptr %arrayidx157, i64 1, !dbg !524
  call void @llvm.dbg.value(metadata ptr %incdec.ptr159, metadata !436, metadata !DIExpression()), !dbg !523
  %44 = load double, ptr %arrayidx157, align 8, !dbg !524
  %45 = load double, ptr %mymtot, align 8, !dbg !524
  %mul162 = fmul double %44, %45, !dbg !524
  call void @llvm.dbg.value(metadata ptr undef, metadata !434, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata double %mul162, metadata !406, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !443
  %incdec.ptr164 = getelementptr inbounds double, ptr %arrayidx157, i64 2, !dbg !524
  call void @llvm.dbg.value(metadata ptr %incdec.ptr164, metadata !436, metadata !DIExpression()), !dbg !523
  %46 = load double, ptr %incdec.ptr159, align 8, !dbg !524
  %mul167 = fmul double %45, %46, !dbg !524
  call void @llvm.dbg.value(metadata ptr undef, metadata !434, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata double %mul167, metadata !406, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !443
  %47 = load double, ptr %incdec.ptr164, align 8, !dbg !524
  %mul171 = fmul double %45, %47, !dbg !524
  call void @llvm.dbg.value(metadata double %mul171, metadata !406, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !443
  call void @llvm.dbg.value(metadata ptr %tempv1, metadata !437, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata ptr %tempv1, metadata !439, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata ptr undef, metadata !440, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata ptr %incdec.ptr80, metadata !439, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata ptr undef, metadata !440, metadata !DIExpression()), !dbg !525
  %add180 = fadd double %mul144, %mul162, !dbg !526
  call void @llvm.dbg.value(metadata ptr %incdec.ptr80, metadata !437, metadata !DIExpression()), !dbg !525
  store double %add180, ptr %tempv1, align 16, !dbg !526
  call void @llvm.dbg.value(metadata ptr %incdec.ptr84, metadata !439, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata ptr undef, metadata !440, metadata !DIExpression()), !dbg !525
  %add184 = fadd double %mul148, %mul167, !dbg !526
  call void @llvm.dbg.value(metadata ptr %incdec.ptr84, metadata !437, metadata !DIExpression()), !dbg !525
  store double %add184, ptr %incdec.ptr80, align 8, !dbg !526
  %add186 = fadd double %mul151, %mul171, !dbg !526
  store double %add186, ptr %incdec.ptr84, align 16, !dbg !526
  call void @llvm.dbg.value(metadata i64 0, metadata !441, metadata !DIExpression()), !dbg !527
  %add195357 = fadd double %41, %45, !dbg !528
  %div196358 = fdiv double %add180, %add195357, !dbg !528
  %arrayidx199359 = getelementptr inbounds %struct.GlobalMemory, ptr %39, i64 0, i32 7, i64 1, i64 0, !dbg !528
  store double %div196358, ptr %arrayidx199359, align 8, !dbg !528
  call void @llvm.dbg.value(metadata i64 1, metadata !441, metadata !DIExpression()), !dbg !527
  br label %for.body190.for.body190_crit_edge, !dbg !531

for.body190.for.body190_crit_edge:                ; preds = %for.end135, %for.body190.for.body190_crit_edge
  %inc201360 = phi i64 [ 1, %for.end135 ], [ %inc201, %for.body190.for.body190_crit_edge ]
  %arrayidx191.phi.trans.insert = getelementptr inbounds [3 x double], ptr %tempv1, i64 0, i64 %inc201360
  %.pre349 = load double, ptr %arrayidx191.phi.trans.insert, align 8, !dbg !528
  %.pre350 = load ptr, ptr @Global, align 8, !dbg !528
  %mtot192.phi.trans.insert = getelementptr inbounds %struct.GlobalMemory, ptr %.pre350, i64 0, i32 3
  %.pre351 = load double, ptr %mtot192.phi.trans.insert, align 8, !dbg !528
  %.pre352 = load double, ptr %mymtot, align 8, !dbg !528
  call void @llvm.dbg.value(metadata i64 %inc201360, metadata !441, metadata !DIExpression()), !dbg !527
  %add195 = fadd double %.pre351, %.pre352, !dbg !528
  %div196 = fdiv double %.pre349, %add195, !dbg !528
  %arrayidx199 = getelementptr inbounds %struct.GlobalMemory, ptr %.pre350, i64 0, i32 7, i64 1, i64 %inc201360, !dbg !528
  store double %div196, ptr %arrayidx199, align 8, !dbg !528
  %inc201 = add nuw nsw i64 %inc201360, 1, !dbg !528
  call void @llvm.dbg.value(metadata i64 %inc201, metadata !441, metadata !DIExpression()), !dbg !527
  %exitcond345.not = icmp eq i64 %inc201, 3, !dbg !528
  br i1 %exitcond345.not, label %for.end202, label %for.body190.for.body190_crit_edge, !dbg !531, !llvm.loop !532

for.end202:                                       ; preds = %for.body190.for.body190_crit_edge
  %48 = load double, ptr %mymtot, align 8, !dbg !533
  %49 = load ptr, ptr @Global, align 8, !dbg !534
  %mtot205 = getelementptr inbounds %struct.GlobalMemory, ptr %49, i64 0, i32 3, !dbg !535
  %50 = load double, ptr %mtot205, align 8, !dbg !536
  %add206 = fadd double %48, %50, !dbg !536
  store double %add206, ptr %mtot205, align 8, !dbg !536
  %CountLock207 = getelementptr inbounds %struct.GlobalMemory, ptr %49, i64 0, i32 20, !dbg !537
  %call208 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %CountLock207) #12, !dbg !539
  br label %if.end209, !dbg !540

if.end209:                                        ; preds = %for.end202, %if.end
  %51 = load ptr, ptr @Global, align 8, !dbg !541
  %Baraccel = getelementptr inbounds %struct.GlobalMemory, ptr %51, i64 0, i32 18, !dbg !543
  %call210 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %Baraccel) #12, !dbg !544
  %52 = load ptr, ptr @Global, align 8, !dbg !545
  %bar_teller = getelementptr inbounds %struct.GlobalMemory, ptr %52, i64 0, i32 18, i32 2, !dbg !546
  %53 = load i32, ptr %bar_teller, align 8, !dbg !547
  %inc212 = add i32 %53, 1, !dbg !547
  store i32 %inc212, ptr %bar_teller, align 8, !dbg !547
  %conv = zext i32 %inc212 to i64, !dbg !548
  %54 = load i64, ptr @NPROC, align 8, !dbg !550
  %cmp215 = icmp eq i64 %54, %conv, !dbg !551
  br i1 %cmp215, label %if.then217, label %if.else, !dbg !552

if.then217:                                       ; preds = %if.end209
  store i32 0, ptr %bar_teller, align 8, !dbg !553
  %bar_cond = getelementptr inbounds %struct.GlobalMemory, ptr %52, i64 0, i32 18, i32 1, !dbg !555
  %call221 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond) #12, !dbg !556
  br label %if.end227, !dbg !557

if.else:                                          ; preds = %if.end209
  %Baraccel213 = getelementptr inbounds %struct.GlobalMemory, ptr %52, i64 0, i32 18, !dbg !558
  %bar_cond223 = getelementptr inbounds %struct.GlobalMemory, ptr %52, i64 0, i32 18, i32 1, !dbg !559
  %call226 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond223, ptr noundef nonnull %Baraccel213) #12, !dbg !561
  br label %if.end227

if.end227:                                        ; preds = %if.else, %if.then217
  %55 = load ptr, ptr @Global, align 8, !dbg !562
  %Baraccel228 = getelementptr inbounds %struct.GlobalMemory, ptr %55, i64 0, i32 18, !dbg !563
  %call230 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %Baraccel228) #12, !dbg !564
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tempv1) #12, !dbg !565
  ret void, !dbg !565
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @diagnostics(i64 noundef %ProcessId) local_unnamed_addr #6 !dbg !566 {
entry:
  %tmpv = alloca [3 x double], align 16
  %tmpt = alloca [3 x [3 x double]], align 16
  call void @llvm.dbg.value(metadata i64 %ProcessId, metadata !568, metadata !DIExpression()), !dbg !641
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmpv) #12, !dbg !642
  call void @llvm.dbg.declare(metadata ptr %tmpv, metadata !573, metadata !DIExpression()), !dbg !643
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %tmpt) #12, !dbg !644
  call void @llvm.dbg.declare(metadata ptr %tmpt, metadata !574, metadata !DIExpression()), !dbg !645
  %mymtot = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 33, !dbg !646
  store double 0.000000e+00, ptr %mymtot, align 8, !dbg !647
  %arrayidx2 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 34, i64 2, !dbg !648
  %arrayidx5 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 34, i64 1, !dbg !649
  call void @llvm.dbg.value(metadata i64 0, metadata !578, metadata !DIExpression()), !dbg !650
  %0 = mul i64 %ProcessId, 8792, !dbg !651
  %1 = add nsw i64 %0, 4480, !dbg !651
  %uglygep587 = getelementptr i8, ptr @Local, i64 %1, !dbg !651
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx5, i8 0, i64 16, i1 false), !dbg !653
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %uglygep587, i8 0, i64 72, i1 false), !dbg !654
  call void @llvm.dbg.value(metadata i32 undef, metadata !578, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata i32 undef, metadata !580, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata i32 undef, metadata !580, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !650
  call void @llvm.dbg.value(metadata i32 undef, metadata !578, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !650
  %2 = add i64 %0, 4552, !dbg !658
  %uglygep588 = getelementptr i8, ptr @Local, i64 %2, !dbg !658
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %uglygep588, i8 0, i64 72, i1 false), !dbg !660
  call void @llvm.dbg.value(metadata i32 undef, metadata !581, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i32 undef, metadata !583, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i32 undef, metadata !583, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !664
  call void @llvm.dbg.value(metadata i32 undef, metadata !581, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !664
  %mycmphase = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 37
  call void @llvm.dbg.value(metadata i64 0, metadata !584, metadata !DIExpression()), !dbg !665
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %mycmphase, i8 0, i64 24, i1 false), !dbg !666
  call void @llvm.dbg.value(metadata i32 undef, metadata !584, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i32 undef, metadata !584, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !665
  %3 = add i64 %0, 4648, !dbg !669
  %uglygep = getelementptr i8, ptr @Local, i64 %3, !dbg !669
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %uglygep, i8 0, i64 24, i1 false), !dbg !671
  call void @llvm.dbg.value(metadata i32 undef, metadata !586, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata i32 undef, metadata !586, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !673
  %4 = add i64 %0, 4672, !dbg !674
  %uglygep589 = getelementptr i8, ptr @Local, i64 %4, !dbg !674
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %uglygep589, i8 0, i64 24, i1 false), !dbg !676
  call void @llvm.dbg.value(metadata i32 undef, metadata !588, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 undef, metadata !588, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !678
  %myetot = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 34, !dbg !679
  %mybodytab = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 11, !dbg !680
  %5 = load ptr, ptr %mybodytab, align 8, !dbg !680
  %mynbody = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 10, !dbg !681
  %6 = load i64, ptr %mynbody, align 8, !dbg !681
  %add.ptr = getelementptr inbounds ptr, ptr %5, i64 %6, !dbg !682
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !570, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !641
  %pp.0582 = getelementptr inbounds ptr, ptr %add.ptr, i64 -1, !dbg !683
  call void @llvm.dbg.value(metadata ptr %pp.0582, metadata !570, metadata !DIExpression()), !dbg !641
  %cmp68.not583 = icmp ult ptr %pp.0582, %5, !dbg !684
  br i1 %cmp68.not583, label %for.end353.thread, label %for.body69.lr.ph, !dbg !685

for.end353.thread:                                ; preds = %entry
  store double 0.000000e+00, ptr %myetot, align 8, !dbg !686
  br label %if.end, !dbg !687

for.body69.lr.ph:                                 ; preds = %entry
  %incdec.ptr100 = getelementptr inbounds double, ptr %tmpv, i64 1
  %incdec.ptr105 = getelementptr inbounds double, ptr %tmpv, i64 2
  %incdec.ptr238 = getelementptr inbounds double, ptr %mycmphase, i64 1
  %incdec.ptr242 = getelementptr inbounds double, ptr %mycmphase, i64 2
  %arrayidx265 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 37, i64 1
  %incdec.ptr274 = getelementptr inbounds double, ptr %arrayidx265, i64 1
  %incdec.ptr278 = getelementptr inbounds double, ptr %arrayidx265, i64 2
  %myamvec334 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 38
  %incdec.ptr342 = getelementptr inbounds double, ptr %myamvec334, i64 1
  %incdec.ptr346 = getelementptr inbounds double, ptr %myamvec334, i64 2
  br label %for.body69, !dbg !685

for.body69:                                       ; preds = %for.end211.for.body69_crit_edge, %for.body69.lr.ph
  %7 = phi double [ 0.000000e+00, %for.body69.lr.ph ], [ %.pre600, %for.end211.for.body69_crit_edge ], !dbg !688
  %8 = phi double [ 0.000000e+00, %for.body69.lr.ph ], [ %.pre599, %for.end211.for.body69_crit_edge ], !dbg !689
  %9 = phi double [ 0.000000e+00, %for.body69.lr.ph ], [ %.pre, %for.end211.for.body69_crit_edge ], !dbg !690
  %pp.0584 = phi ptr [ %pp.0582, %for.body69.lr.ph ], [ %pp.0, %for.end211.for.body69_crit_edge ]
  %10 = load ptr, ptr %pp.0584, align 8, !dbg !691
  call void @llvm.dbg.value(metadata ptr %10, metadata !569, metadata !DIExpression()), !dbg !641
  %mass = getelementptr inbounds %struct._node, ptr %10, i64 0, i32 1, !dbg !692
  %11 = load double, ptr %mass, align 8, !dbg !692
  %add = fadd double %11, %9, !dbg !690
  store double %add, ptr %mymtot, align 8, !dbg !690
  %vel = getelementptr inbounds %struct._body, ptr %10, i64 0, i32 7, !dbg !693
  call void @llvm.dbg.value(metadata ptr %vel, metadata !590, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata ptr %vel, metadata !595, metadata !DIExpression()), !dbg !694
  %incdec.ptr = getelementptr inbounds double, ptr %vel, i64 1, !dbg !693
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !590, metadata !DIExpression()), !dbg !694
  %12 = load double, ptr %vel, align 8, !dbg !693
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !595, metadata !DIExpression()), !dbg !694
  %mul = fmul double %12, %12, !dbg !693
  call void @llvm.dbg.value(metadata double %mul, metadata !572, metadata !DIExpression()), !dbg !641
  %incdec.ptr75 = getelementptr inbounds double, ptr %vel, i64 2, !dbg !693
  call void @llvm.dbg.value(metadata ptr %incdec.ptr75, metadata !590, metadata !DIExpression()), !dbg !694
  %13 = load double, ptr %incdec.ptr, align 8, !dbg !693
  call void @llvm.dbg.value(metadata ptr %incdec.ptr75, metadata !595, metadata !DIExpression()), !dbg !694
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %mul), !dbg !693
  call void @llvm.dbg.value(metadata double %14, metadata !572, metadata !DIExpression()), !dbg !641
  %15 = load double, ptr %incdec.ptr75, align 8, !dbg !693
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %14), !dbg !693
  call void @llvm.dbg.value(metadata double %16, metadata !572, metadata !DIExpression()), !dbg !641
  %17 = load double, ptr %mass, align 8, !dbg !695
  %mul80 = fmul double %17, 5.000000e-01, !dbg !696
  %18 = tail call double @llvm.fmuladd.f64(double %mul80, double %16, double %8), !dbg !689
  store double %18, ptr %arrayidx5, align 8, !dbg !689
  %19 = load double, ptr %mass, align 8, !dbg !697
  %mul86 = fmul double %19, 5.000000e-01, !dbg !698
  %phi = getelementptr inbounds %struct._body, ptr %10, i64 0, i32 9, !dbg !699
  %20 = load double, ptr %phi, align 8, !dbg !699
  %21 = tail call double @llvm.fmuladd.f64(double %mul86, double %20, double %7), !dbg !688
  store double %21, ptr %arrayidx2, align 8, !dbg !688
  call void @llvm.dbg.value(metadata ptr %tmpv, metadata !596, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata ptr %vel, metadata !598, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !598, metadata !DIExpression()), !dbg !700
  %22 = load double, ptr %vel, align 8, !dbg !701
  %23 = load double, ptr %mass, align 8, !dbg !701
  %mul98 = fmul double %23, 5.000000e-01, !dbg !701
  %mul99 = fmul double %22, %mul98, !dbg !701
  call void @llvm.dbg.value(metadata ptr %incdec.ptr100, metadata !596, metadata !DIExpression()), !dbg !700
  store double %mul99, ptr %tmpv, align 16, !dbg !701
  call void @llvm.dbg.value(metadata ptr %incdec.ptr75, metadata !598, metadata !DIExpression()), !dbg !700
  %24 = load double, ptr %incdec.ptr, align 8, !dbg !701
  %mul104 = fmul double %mul98, %24, !dbg !701
  call void @llvm.dbg.value(metadata ptr %incdec.ptr105, metadata !596, metadata !DIExpression()), !dbg !700
  store double %mul104, ptr %incdec.ptr100, align 8, !dbg !701
  %25 = load double, ptr %incdec.ptr75, align 8, !dbg !701
  %mul108 = fmul double %mul98, %25, !dbg !701
  store double %mul108, ptr %incdec.ptr105, align 16, !dbg !701
  call void @llvm.dbg.value(metadata i64 0, metadata !599, metadata !DIExpression()), !dbg !702
  br label %for.cond114.preheader, !dbg !703

for.cond114.preheader:                            ; preds = %for.inc126.for.cond114.preheader_crit_edge, %for.body69
  %26 = phi double [ %mul99, %for.body69 ], [ %.pre601, %for.inc126.for.cond114.preheader_crit_edge ]
  %_i109.0575 = phi i64 [ 0, %for.body69 ], [ %inc127, %for.inc126.for.cond114.preheader_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %_i109.0575, metadata !599, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata i64 0, metadata !601, metadata !DIExpression()), !dbg !702
  br label %for.body116, !dbg !705

for.body116:                                      ; preds = %for.cond114.preheader, %for.body116
  %_j110.0574 = phi i64 [ 0, %for.cond114.preheader ], [ %inc124, %for.body116 ]
  call void @llvm.dbg.value(metadata i64 %_j110.0574, metadata !601, metadata !DIExpression()), !dbg !702
  %arrayidx119 = getelementptr inbounds %struct._body, ptr %10, i64 0, i32 7, i64 %_j110.0574, !dbg !708
  %27 = load double, ptr %arrayidx119, align 8, !dbg !708
  %mul120 = fmul double %26, %27, !dbg !708
  %arrayidx122 = getelementptr inbounds [3 x [3 x double]], ptr %tmpt, i64 0, i64 %_i109.0575, i64 %_j110.0574, !dbg !708
  store double %mul120, ptr %arrayidx122, align 8, !dbg !708
  %inc124 = add nuw nsw i64 %_j110.0574, 1, !dbg !708
  call void @llvm.dbg.value(metadata i64 %inc124, metadata !601, metadata !DIExpression()), !dbg !702
  %exitcond.not = icmp eq i64 %inc124, 3, !dbg !708
  br i1 %exitcond.not, label %for.inc126, label %for.body116, !dbg !705, !llvm.loop !710

for.inc126:                                       ; preds = %for.body116
  %inc127 = add nuw nsw i64 %_i109.0575, 1, !dbg !711
  call void @llvm.dbg.value(metadata i64 %inc127, metadata !599, metadata !DIExpression()), !dbg !702
  %exitcond590.not = icmp eq i64 %inc127, 3, !dbg !711
  br i1 %exitcond590.not, label %for.cond134.preheader, label %for.inc126.for.cond114.preheader_crit_edge, !dbg !703, !llvm.loop !712

for.inc126.for.cond114.preheader_crit_edge:       ; preds = %for.inc126
  %arrayidx117.phi.trans.insert = getelementptr inbounds [3 x double], ptr %tmpv, i64 0, i64 %inc127
  %.pre601 = load double, ptr %arrayidx117.phi.trans.insert, align 8
  br label %for.cond114.preheader, !dbg !703

for.cond134.preheader:                            ; preds = %for.inc126, %for.inc151
  %_i129.0577 = phi i64 [ %inc152, %for.inc151 ], [ 0, %for.inc126 ]
  call void @llvm.dbg.value(metadata i64 %_i129.0577, metadata !602, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata i64 0, metadata !604, metadata !DIExpression()), !dbg !713
  br label %for.body136, !dbg !714

for.body136:                                      ; preds = %for.cond134.preheader, %for.body136
  %_j130.0576 = phi i64 [ 0, %for.cond134.preheader ], [ %inc149, %for.body136 ]
  call void @llvm.dbg.value(metadata i64 %_j130.0576, metadata !604, metadata !DIExpression()), !dbg !713
  %arrayidx140 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 35, i64 %_i129.0577, i64 %_j130.0576, !dbg !718
  %28 = load double, ptr %arrayidx140, align 8, !dbg !718
  %arrayidx142 = getelementptr inbounds [3 x [3 x double]], ptr %tmpt, i64 0, i64 %_i129.0577, i64 %_j130.0576, !dbg !718
  %29 = load double, ptr %arrayidx142, align 8, !dbg !718
  %add143 = fadd double %28, %29, !dbg !718
  store double %add143, ptr %arrayidx140, align 8, !dbg !718
  %inc149 = add nuw nsw i64 %_j130.0576, 1, !dbg !718
  call void @llvm.dbg.value(metadata i64 %inc149, metadata !604, metadata !DIExpression()), !dbg !713
  %exitcond591.not = icmp eq i64 %inc149, 3, !dbg !718
  br i1 %exitcond591.not, label %for.inc151, label %for.body136, !dbg !714, !llvm.loop !720

for.inc151:                                       ; preds = %for.body136
  %inc152 = add nuw nsw i64 %_i129.0577, 1, !dbg !721
  call void @llvm.dbg.value(metadata i64 %inc152, metadata !602, metadata !DIExpression()), !dbg !713
  %exitcond592.not = icmp eq i64 %inc152, 3, !dbg !721
  br i1 %exitcond592.not, label %for.end153, label %for.cond134.preheader, !dbg !722, !llvm.loop !723

for.end153:                                       ; preds = %for.inc151
  call void @llvm.dbg.value(metadata ptr %tmpv, metadata !605, metadata !DIExpression()), !dbg !724
  %pos = getelementptr inbounds %struct._node, ptr %10, i64 0, i32 2, !dbg !725
  call void @llvm.dbg.value(metadata ptr %pos, metadata !607, metadata !DIExpression()), !dbg !724
  %incdec.ptr158 = getelementptr inbounds double, ptr %pos, i64 1, !dbg !725
  call void @llvm.dbg.value(metadata ptr %incdec.ptr158, metadata !607, metadata !DIExpression()), !dbg !724
  %30 = load double, ptr %pos, align 8, !dbg !725
  %31 = load double, ptr %mass, align 8, !dbg !725
  %mul160 = fmul double %30, %31, !dbg !725
  call void @llvm.dbg.value(metadata ptr %incdec.ptr100, metadata !605, metadata !DIExpression()), !dbg !724
  store double %mul160, ptr %tmpv, align 16, !dbg !725
  %incdec.ptr162 = getelementptr inbounds double, ptr %pos, i64 2, !dbg !725
  call void @llvm.dbg.value(metadata ptr %incdec.ptr162, metadata !607, metadata !DIExpression()), !dbg !724
  %32 = load double, ptr %incdec.ptr158, align 8, !dbg !725
  %mul164 = fmul double %31, %32, !dbg !725
  call void @llvm.dbg.value(metadata ptr %incdec.ptr105, metadata !605, metadata !DIExpression()), !dbg !724
  store double %mul164, ptr %incdec.ptr100, align 8, !dbg !725
  %33 = load double, ptr %incdec.ptr162, align 8, !dbg !725
  %mul167 = fmul double %31, %33, !dbg !725
  store double %mul167, ptr %incdec.ptr105, align 16, !dbg !725
  call void @llvm.dbg.value(metadata i64 0, metadata !608, metadata !DIExpression()), !dbg !726
  br label %for.cond173.preheader, !dbg !727

for.cond173.preheader:                            ; preds = %for.inc184.for.cond173.preheader_crit_edge, %for.end153
  %34 = phi double [ %mul160, %for.end153 ], [ %.pre602, %for.inc184.for.cond173.preheader_crit_edge ]
  %_i168.0579 = phi i64 [ 0, %for.end153 ], [ %inc185, %for.inc184.for.cond173.preheader_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %_i168.0579, metadata !608, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i64 0, metadata !610, metadata !DIExpression()), !dbg !726
  br label %for.body175, !dbg !729

for.body175:                                      ; preds = %for.cond173.preheader, %for.body175
  %_j169.0578 = phi i64 [ 0, %for.cond173.preheader ], [ %inc182, %for.body175 ]
  call void @llvm.dbg.value(metadata i64 %_j169.0578, metadata !610, metadata !DIExpression()), !dbg !726
  %arrayidx177 = getelementptr inbounds %struct._body, ptr %10, i64 0, i32 8, i64 %_j169.0578, !dbg !732
  %35 = load double, ptr %arrayidx177, align 8, !dbg !732
  %mul178 = fmul double %34, %35, !dbg !732
  %arrayidx180 = getelementptr inbounds [3 x [3 x double]], ptr %tmpt, i64 0, i64 %_i168.0579, i64 %_j169.0578, !dbg !732
  store double %mul178, ptr %arrayidx180, align 8, !dbg !732
  %inc182 = add nuw nsw i64 %_j169.0578, 1, !dbg !732
  call void @llvm.dbg.value(metadata i64 %inc182, metadata !610, metadata !DIExpression()), !dbg !726
  %exitcond593.not = icmp eq i64 %inc182, 3, !dbg !732
  br i1 %exitcond593.not, label %for.inc184, label %for.body175, !dbg !729, !llvm.loop !734

for.inc184:                                       ; preds = %for.body175
  %inc185 = add nuw nsw i64 %_i168.0579, 1, !dbg !735
  call void @llvm.dbg.value(metadata i64 %inc185, metadata !608, metadata !DIExpression()), !dbg !726
  %exitcond594.not = icmp eq i64 %inc185, 3, !dbg !735
  br i1 %exitcond594.not, label %for.cond192.preheader, label %for.inc184.for.cond173.preheader_crit_edge, !dbg !727, !llvm.loop !736

for.inc184.for.cond173.preheader_crit_edge:       ; preds = %for.inc184
  %arrayidx176.phi.trans.insert = getelementptr inbounds [3 x double], ptr %tmpv, i64 0, i64 %inc185
  %.pre602 = load double, ptr %arrayidx176.phi.trans.insert, align 8
  br label %for.cond173.preheader, !dbg !727

for.cond192.preheader:                            ; preds = %for.inc184, %for.inc209
  %_i187.0581 = phi i64 [ %inc210, %for.inc209 ], [ 0, %for.inc184 ]
  call void @llvm.dbg.value(metadata i64 %_i187.0581, metadata !611, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i64 0, metadata !613, metadata !DIExpression()), !dbg !737
  br label %for.body194, !dbg !738

for.body194:                                      ; preds = %for.cond192.preheader, %for.body194
  %_j188.0580 = phi i64 [ 0, %for.cond192.preheader ], [ %inc207, %for.body194 ]
  call void @llvm.dbg.value(metadata i64 %_j188.0580, metadata !613, metadata !DIExpression()), !dbg !737
  %arrayidx198 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 36, i64 %_i187.0581, i64 %_j188.0580, !dbg !742
  %36 = load double, ptr %arrayidx198, align 8, !dbg !742
  %arrayidx200 = getelementptr inbounds [3 x [3 x double]], ptr %tmpt, i64 0, i64 %_i187.0581, i64 %_j188.0580, !dbg !742
  %37 = load double, ptr %arrayidx200, align 8, !dbg !742
  %add201 = fadd double %36, %37, !dbg !742
  store double %add201, ptr %arrayidx198, align 8, !dbg !742
  %inc207 = add nuw nsw i64 %_j188.0580, 1, !dbg !742
  call void @llvm.dbg.value(metadata i64 %inc207, metadata !613, metadata !DIExpression()), !dbg !737
  %exitcond595.not = icmp eq i64 %inc207, 3, !dbg !742
  br i1 %exitcond595.not, label %for.inc209, label %for.body194, !dbg !738, !llvm.loop !744

for.inc209:                                       ; preds = %for.body194
  %inc210 = add nuw nsw i64 %_i187.0581, 1, !dbg !745
  call void @llvm.dbg.value(metadata i64 %inc210, metadata !611, metadata !DIExpression()), !dbg !737
  %exitcond596.not = icmp eq i64 %inc210, 3, !dbg !745
  br i1 %exitcond596.not, label %for.end211, label %for.cond192.preheader, !dbg !746, !llvm.loop !747

for.end211:                                       ; preds = %for.inc209
  call void @llvm.dbg.value(metadata ptr %tmpv, metadata !614, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata ptr %incdec.ptr158, metadata !616, metadata !DIExpression()), !dbg !748
  %38 = load double, ptr %pos, align 8, !dbg !749
  %39 = load double, ptr %mass, align 8, !dbg !749
  %mul219 = fmul double %38, %39, !dbg !749
  call void @llvm.dbg.value(metadata ptr %incdec.ptr100, metadata !614, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata ptr %incdec.ptr162, metadata !616, metadata !DIExpression()), !dbg !748
  %40 = load double, ptr %incdec.ptr158, align 8, !dbg !749
  %mul223 = fmul double %39, %40, !dbg !749
  call void @llvm.dbg.value(metadata ptr %incdec.ptr105, metadata !614, metadata !DIExpression()), !dbg !748
  %41 = load double, ptr %incdec.ptr162, align 8, !dbg !749
  %mul226 = fmul double %39, %41, !dbg !749
  call void @llvm.dbg.value(metadata ptr %mycmphase, metadata !617, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata ptr %mycmphase, metadata !619, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata ptr %tmpv, metadata !620, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata ptr %incdec.ptr238, metadata !619, metadata !DIExpression()), !dbg !750
  %42 = load double, ptr %mycmphase, align 8, !dbg !751
  call void @llvm.dbg.value(metadata ptr %incdec.ptr100, metadata !620, metadata !DIExpression()), !dbg !750
  %add240 = fadd double %mul219, %42, !dbg !751
  call void @llvm.dbg.value(metadata ptr %incdec.ptr238, metadata !617, metadata !DIExpression()), !dbg !750
  store double %add240, ptr %mycmphase, align 8, !dbg !751
  call void @llvm.dbg.value(metadata ptr %incdec.ptr242, metadata !619, metadata !DIExpression()), !dbg !750
  %43 = load double, ptr %incdec.ptr238, align 8, !dbg !751
  call void @llvm.dbg.value(metadata ptr %incdec.ptr105, metadata !620, metadata !DIExpression()), !dbg !750
  %add244 = fadd double %mul223, %43, !dbg !751
  call void @llvm.dbg.value(metadata ptr %incdec.ptr242, metadata !617, metadata !DIExpression()), !dbg !750
  store double %add244, ptr %incdec.ptr238, align 8, !dbg !751
  %44 = load double, ptr %incdec.ptr242, align 8, !dbg !751
  %add246 = fadd double %mul226, %44, !dbg !751
  store double %add246, ptr %incdec.ptr242, align 8, !dbg !751
  call void @llvm.dbg.value(metadata ptr %tmpv, metadata !621, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !623, metadata !DIExpression()), !dbg !752
  %45 = load double, ptr %vel, align 8, !dbg !753
  %46 = load double, ptr %mass, align 8, !dbg !753
  %mul254 = fmul double %45, %46, !dbg !753
  call void @llvm.dbg.value(metadata ptr %incdec.ptr100, metadata !621, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata ptr %incdec.ptr75, metadata !623, metadata !DIExpression()), !dbg !752
  %47 = load double, ptr %incdec.ptr, align 8, !dbg !753
  %mul258 = fmul double %46, %47, !dbg !753
  call void @llvm.dbg.value(metadata ptr %incdec.ptr105, metadata !621, metadata !DIExpression()), !dbg !752
  %48 = load double, ptr %incdec.ptr75, align 8, !dbg !753
  %mul261 = fmul double %46, %48, !dbg !753
  call void @llvm.dbg.value(metadata ptr %arrayidx265, metadata !624, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata ptr %arrayidx265, metadata !626, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata ptr %tmpv, metadata !627, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata ptr %incdec.ptr274, metadata !626, metadata !DIExpression()), !dbg !754
  %49 = load double, ptr %arrayidx265, align 8, !dbg !755
  call void @llvm.dbg.value(metadata ptr %incdec.ptr100, metadata !627, metadata !DIExpression()), !dbg !754
  %add276 = fadd double %mul254, %49, !dbg !755
  call void @llvm.dbg.value(metadata ptr %incdec.ptr274, metadata !624, metadata !DIExpression()), !dbg !754
  store double %add276, ptr %arrayidx265, align 8, !dbg !755
  call void @llvm.dbg.value(metadata ptr %incdec.ptr278, metadata !626, metadata !DIExpression()), !dbg !754
  %50 = load double, ptr %incdec.ptr274, align 8, !dbg !755
  call void @llvm.dbg.value(metadata ptr %incdec.ptr105, metadata !627, metadata !DIExpression()), !dbg !754
  %add280 = fadd double %mul258, %50, !dbg !755
  call void @llvm.dbg.value(metadata ptr %incdec.ptr278, metadata !624, metadata !DIExpression()), !dbg !754
  store double %add280, ptr %incdec.ptr274, align 8, !dbg !755
  %51 = load double, ptr %incdec.ptr278, align 8, !dbg !755
  %add282 = fadd double %mul261, %51, !dbg !755
  store double %add282, ptr %incdec.ptr278, align 8, !dbg !755
  %arrayidx284 = getelementptr inbounds %struct._node, ptr %10, i64 0, i32 2, i64 1, !dbg !756
  %52 = load double, ptr %arrayidx284, align 8, !dbg !756
  %arrayidx286 = getelementptr inbounds %struct._body, ptr %10, i64 0, i32 7, i64 2, !dbg !756
  %53 = load double, ptr %arrayidx286, align 8, !dbg !756
  %arrayidx289 = getelementptr inbounds %struct._node, ptr %10, i64 0, i32 2, i64 2, !dbg !756
  %54 = load double, ptr %arrayidx289, align 8, !dbg !756
  %arrayidx291 = getelementptr inbounds %struct._body, ptr %10, i64 0, i32 7, i64 1, !dbg !756
  %55 = load double, ptr %arrayidx291, align 8, !dbg !756
  %56 = fneg double %54, !dbg !756
  %neg = fmul double %55, %56, !dbg !756
  %57 = tail call double @llvm.fmuladd.f64(double %52, double %53, double %neg), !dbg !756
  %58 = load double, ptr %vel, align 8, !dbg !756
  %59 = load double, ptr %pos, align 8, !dbg !756
  %60 = fneg double %59, !dbg !756
  %neg304 = fmul double %53, %60, !dbg !756
  %61 = tail call double @llvm.fmuladd.f64(double %54, double %58, double %neg304), !dbg !756
  %62 = fneg double %52, !dbg !756
  %neg316 = fmul double %58, %62, !dbg !756
  %63 = tail call double @llvm.fmuladd.f64(double %59, double %55, double %neg316), !dbg !756
  call void @llvm.dbg.value(metadata ptr %tmpv, metadata !628, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata ptr %incdec.ptr100, metadata !630, metadata !DIExpression()), !dbg !758
  %64 = load double, ptr %mass, align 8, !dbg !759
  %mul324 = fmul double %57, %64, !dbg !759
  call void @llvm.dbg.value(metadata ptr %incdec.ptr100, metadata !628, metadata !DIExpression()), !dbg !758
  store double %mul324, ptr %tmpv, align 16, !dbg !759
  call void @llvm.dbg.value(metadata ptr %incdec.ptr105, metadata !630, metadata !DIExpression()), !dbg !758
  %mul328 = fmul double %64, %61, !dbg !759
  call void @llvm.dbg.value(metadata ptr %incdec.ptr105, metadata !628, metadata !DIExpression()), !dbg !758
  store double %mul328, ptr %incdec.ptr100, align 8, !dbg !759
  %mul331 = fmul double %64, %63, !dbg !759
  store double %mul331, ptr %incdec.ptr105, align 16, !dbg !759
  call void @llvm.dbg.value(metadata ptr %myamvec334, metadata !631, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata ptr %myamvec334, metadata !633, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata ptr %tmpv, metadata !634, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata ptr %incdec.ptr342, metadata !633, metadata !DIExpression()), !dbg !760
  %65 = load double, ptr %myamvec334, align 8, !dbg !761
  call void @llvm.dbg.value(metadata ptr %incdec.ptr100, metadata !634, metadata !DIExpression()), !dbg !760
  %add344 = fadd double %mul324, %65, !dbg !761
  call void @llvm.dbg.value(metadata ptr %incdec.ptr342, metadata !631, metadata !DIExpression()), !dbg !760
  store double %add344, ptr %myamvec334, align 8, !dbg !761
  call void @llvm.dbg.value(metadata ptr %incdec.ptr346, metadata !633, metadata !DIExpression()), !dbg !760
  %66 = load double, ptr %incdec.ptr342, align 8, !dbg !761
  call void @llvm.dbg.value(metadata ptr %incdec.ptr105, metadata !634, metadata !DIExpression()), !dbg !760
  %add348 = fadd double %mul328, %66, !dbg !761
  call void @llvm.dbg.value(metadata ptr %incdec.ptr346, metadata !631, metadata !DIExpression()), !dbg !760
  store double %add348, ptr %incdec.ptr342, align 8, !dbg !761
  %67 = load double, ptr %incdec.ptr346, align 8, !dbg !761
  %add350 = fadd double %mul331, %67, !dbg !761
  store double %add350, ptr %incdec.ptr346, align 8, !dbg !761
  call void @llvm.dbg.value(metadata ptr %pp.0584, metadata !570, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !641
  %pp.0 = getelementptr inbounds ptr, ptr %pp.0584, i64 -1, !dbg !683
  call void @llvm.dbg.value(metadata ptr %pp.0, metadata !570, metadata !DIExpression()), !dbg !641
  %68 = load ptr, ptr %mybodytab, align 8, !dbg !762
  %cmp68.not = icmp ult ptr %pp.0, %68, !dbg !684
  br i1 %cmp68.not, label %for.end353, label %for.end211.for.body69_crit_edge, !dbg !685, !llvm.loop !763

for.end211.for.body69_crit_edge:                  ; preds = %for.end211
  %.pre = load double, ptr %mymtot, align 8, !dbg !690
  %.pre599 = load double, ptr %arrayidx5, align 8, !dbg !689
  %.pre600 = load double, ptr %arrayidx2, align 8, !dbg !688
  br label %for.body69, !dbg !685

for.end353:                                       ; preds = %for.end211
  %.pre603 = load double, ptr %arrayidx5, align 8, !dbg !765
  %.pre604 = load double, ptr %arrayidx2, align 8, !dbg !766
  %.pre605 = load double, ptr %mymtot, align 8, !dbg !767
  %69 = fadd double %.pre603, %.pre604, !dbg !765
  store double %69, ptr %myetot, align 8, !dbg !686
  %cmp366 = fcmp une double %.pre605, 0.000000e+00, !dbg !768
  br i1 %cmp366, label %for.body370.preheader, label %if.end, !dbg !687

for.body370.preheader:                            ; preds = %for.end353
  call void @llvm.dbg.value(metadata i64 0, metadata !635, metadata !DIExpression()), !dbg !769
  %div609 = fdiv double %add240, %.pre605, !dbg !770
  store double %div609, ptr %mycmphase, align 8, !dbg !770
  call void @llvm.dbg.value(metadata i64 1, metadata !635, metadata !DIExpression()), !dbg !769
  br label %for.body370.for.body370_crit_edge, !dbg !773

for.body370.for.body370_crit_edge:                ; preds = %for.body370.preheader, %for.body370.for.body370_crit_edge
  %inc382610 = phi i64 [ 1, %for.body370.preheader ], [ %inc382, %for.body370.for.body370_crit_edge ]
  %arrayidx374.phi.trans.insert = getelementptr inbounds [3 x double], ptr %mycmphase, i64 0, i64 %inc382610
  %.pre606 = load double, ptr %arrayidx374.phi.trans.insert, align 8, !dbg !770
  call void @llvm.dbg.value(metadata i64 %inc382610, metadata !635, metadata !DIExpression()), !dbg !769
  %arrayidx374 = getelementptr inbounds [3 x double], ptr %mycmphase, i64 0, i64 %inc382610, !dbg !770
  %div = fdiv double %.pre606, %.pre605, !dbg !770
  store double %div, ptr %arrayidx374, align 8, !dbg !770
  %inc382 = add nuw nsw i64 %inc382610, 1, !dbg !770
  call void @llvm.dbg.value(metadata i64 %inc382, metadata !635, metadata !DIExpression()), !dbg !769
  %exitcond597.not = icmp eq i64 %inc382, 3, !dbg !770
  br i1 %exitcond597.not, label %for.body387, label %for.body370.for.body370_crit_edge, !dbg !773, !llvm.loop !774

for.body387:                                      ; preds = %for.body370.for.body370_crit_edge, %for.body387
  %_i384.0586 = phi i64 [ %inc400, %for.body387 ], [ 0, %for.body370.for.body370_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %_i384.0586, metadata !639, metadata !DIExpression()), !dbg !775
  %arrayidx391 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 37, i64 1, i64 %_i384.0586, !dbg !776
  %70 = load double, ptr %arrayidx391, align 8, !dbg !776
  %div394 = fdiv double %70, %.pre605, !dbg !776
  store double %div394, ptr %arrayidx391, align 8, !dbg !776
  %inc400 = add nuw nsw i64 %_i384.0586, 1, !dbg !776
  call void @llvm.dbg.value(metadata i64 %inc400, metadata !639, metadata !DIExpression()), !dbg !775
  %exitcond598.not = icmp eq i64 %inc400, 3, !dbg !776
  br i1 %exitcond598.not, label %if.end, label %for.body387, !dbg !779, !llvm.loop !780

if.end:                                           ; preds = %for.body387, %for.end353.thread, %for.end353
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %tmpt) #12, !dbg !781
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmpv) #12, !dbg !781
  ret void, !dbg !781
}

; Function Attrs: nounwind
declare !dbg !782 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !814 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !815 i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #7

declare !dbg !819 i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @out_int(ptr nocapture noundef %str, i64 noundef %ival) local_unnamed_addr #5 !dbg !824 {
entry:
  call void @llvm.dbg.value(metadata ptr %str, metadata !828, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i64 %ival, metadata !829, metadata !DIExpression()), !dbg !830
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %str, ptr noundef nonnull @.str.24, i64 noundef %ival), !dbg !831
  ret void, !dbg !832
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @out_real(ptr nocapture noundef %str, double noundef %rval) local_unnamed_addr #5 !dbg !833 {
entry:
  call void @llvm.dbg.value(metadata ptr %str, metadata !837, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata double %rval, metadata !838, metadata !DIExpression()), !dbg !839
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %str, ptr noundef nonnull @.str.25, double noundef %rval), !dbg !840
  ret void, !dbg !841
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @out_vector(ptr nocapture noundef %str, ptr nocapture noundef readonly %vec) local_unnamed_addr #5 !dbg !842 {
entry:
  call void @llvm.dbg.value(metadata ptr %str, metadata !844, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata ptr %vec, metadata !845, metadata !DIExpression()), !dbg !846
  %0 = load double, ptr %vec, align 8, !dbg !847
  %arrayidx1 = getelementptr inbounds double, ptr %vec, i64 1, !dbg !848
  %1 = load double, ptr %arrayidx1, align 8, !dbg !848
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %str, ptr noundef nonnull @.str.26, double noundef %0, double noundef %1), !dbg !849
  %arrayidx2 = getelementptr inbounds double, ptr %vec, i64 2, !dbg !850
  %2 = load double, ptr %arrayidx2, align 8, !dbg !850
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %str, ptr noundef nonnull @.str.25, double noundef %2), !dbg !851
  ret void, !dbg !852
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!6}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213}
!llvm.ident = !{!214}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "headbuf", scope: !2, file: !3, line: 50, type: !205, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "inputdata", scope: !3, file: !3, line: 47, type: !4, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !133)
!3 = !DIFile(filename: "code_io.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/barnes", checksumkind: CSK_MD5, checksum: "c8af6cdb84d38d7505fa7736edd5519a")
!4 = !DISubroutineType(types: !5)
!5 = !{null}
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !7, globals: !132, splitDebugInlining: false, nameTableKind: None)
!7 = !{!8, !9, !101, !15, !17}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "bodyptr", file: !10, line: 81, baseType: !11)
!10 = !DIFile(filename: "./defs.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/barnes", checksumkind: CSK_MD5, checksum: "a70fd3172df660c9d5c631c3b06e5de2")
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_body", file: !10, line: 87, size: 1024, elements: !13)
!13 = !{!14, !16, !20, !26, !27, !28, !128, !129, !130, !131}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !10, line: 88, baseType: !15, size: 64)
!15 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "mass", scope: !12, file: !10, line: 89, baseType: !17, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !18, line: 70, baseType: !19)
!18 = !DIFile(filename: "./stdinc.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/barnes", checksumkind: CSK_MD5, checksum: "7e5b049cdc5bbb3d00ff9fe2a55bf64e")
!19 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !12, file: !10, line: 90, baseType: !21, size: 192, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector", file: !22, line: 30, baseType: !23)
!22 = !DIFile(filename: "./vectmath.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/barnes", checksumkind: CSK_MD5, checksum: "0ae09f78c47e66d21f2861f9ccfce29c")
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 192, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 3)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !12, file: !10, line: 91, baseType: !15, size: 64, offset: 320)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !12, file: !10, line: 92, baseType: !15, size: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !12, file: !10, line: 93, baseType: !29, size: 64, offset: 448)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "leafptr", file: !10, line: 82, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_leaf", file: !10, line: 137, size: 1984, elements: !32)
!32 = !{!33, !34, !35, !36, !37, !38, !116, !117, !118, !119, !120, !121, !122, !123, !124}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !31, file: !10, line: 138, baseType: !15, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "mass", scope: !31, file: !10, line: 139, baseType: !17, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !31, file: !10, line: 140, baseType: !21, size: 192, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !31, file: !10, line: 141, baseType: !15, size: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !31, file: !10, line: 142, baseType: !15, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !31, file: !10, line: 143, baseType: !39, size: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "cellptr", file: !10, line: 83, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cell", file: !10, line: 110, size: 1792, elements: !42)
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !98, !99}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !10, line: 111, baseType: !15, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "mass", scope: !41, file: !10, line: 112, baseType: !17, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !41, file: !10, line: 113, baseType: !21, size: 192, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !41, file: !10, line: 114, baseType: !15, size: 64, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !41, file: !10, line: 115, baseType: !15, size: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !41, file: !10, line: 116, baseType: !39, size: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "child_num", scope: !41, file: !10, line: 117, baseType: !15, size: 64, offset: 512)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !41, file: !10, line: 118, baseType: !15, size: 64, offset: 576)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !41, file: !10, line: 119, baseType: !40, size: 64, offset: 640)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !41, file: !10, line: 119, baseType: !40, size: 64, offset: 704)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !41, file: !10, line: 120, baseType: !15, size: 64, offset: 768)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "done_cv", scope: !41, file: !10, line: 124, baseType: !55, size: 384, offset: 832)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !56, line: 80, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!57 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !56, line: 75, size: 384, elements: !58)
!58 = !{!59, !91, !96}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !57, file: !56, line: 77, baseType: !60, size: 384)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !61, line: 92, size: 384, elements: !62)
!61 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!62 = !{!63, !74, !83, !87, !88, !89, !90}
!63 = !DIDerivedType(tag: DW_TAG_member, scope: !60, file: !61, line: 94, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !60, file: !61, line: 94, size: 64, elements: !65)
!65 = !{!66, !68}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !64, file: !61, line: 96, baseType: !67, size: 64)
!67 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !64, file: !61, line: 101, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !64, file: !61, line: 97, size: 64, elements: !70)
!70 = !{!71, !73}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !69, file: !61, line: 99, baseType: !72, size: 32)
!72 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !69, file: !61, line: 100, baseType: !72, size: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, scope: !60, file: !61, line: 103, baseType: !75, size: 64, offset: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !60, file: !61, line: 103, size: 64, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !75, file: !61, line: 105, baseType: !67, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !75, file: !61, line: 110, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !75, file: !61, line: 106, size: 64, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !79, file: !61, line: 108, baseType: !72, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !79, file: !61, line: 109, baseType: !72, size: 32, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !60, file: !61, line: 112, baseType: !84, size: 64, offset: 128)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 64, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 2)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !60, file: !61, line: 113, baseType: !84, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !60, file: !61, line: 114, baseType: !72, size: 32, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !60, file: !61, line: 115, baseType: !72, size: 32, offset: 288)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !60, file: !61, line: 116, baseType: !84, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !57, file: !56, line: 78, baseType: !92, size: 384)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 384, elements: !94)
!93 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!94 = !{!95}
!95 = !DISubrange(count: 48)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !57, file: !56, line: 79, baseType: !97, size: 64)
!97 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !41, file: !10, line: 125, baseType: !15, size: 64, offset: 1216)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "subp", scope: !41, file: !10, line: 126, baseType: !100, size: 512, offset: 1280)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 512, elements: !114)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodeptr", file: !10, line: 67, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "node", file: !10, line: 65, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_node", file: !10, line: 56, size: 576, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !113}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !10, line: 57, baseType: !15, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "mass", scope: !104, file: !10, line: 58, baseType: !17, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !104, file: !10, line: 59, baseType: !21, size: 192, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !104, file: !10, line: 60, baseType: !15, size: 64, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !104, file: !10, line: 61, baseType: !15, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !104, file: !10, line: 62, baseType: !112, size: 64, offset: 448)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "child_num", scope: !104, file: !10, line: 63, baseType: !15, size: 64, offset: 512)
!114 = !{!115}
!115 = !DISubrange(count: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "child_num", scope: !31, file: !10, line: 144, baseType: !15, size: 64, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !31, file: !10, line: 145, baseType: !15, size: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !31, file: !10, line: 146, baseType: !30, size: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !31, file: !10, line: 146, baseType: !30, size: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !31, file: !10, line: 147, baseType: !15, size: 64, offset: 768)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "done_cv", scope: !31, file: !10, line: 151, baseType: !55, size: 384, offset: 832)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !31, file: !10, line: 152, baseType: !15, size: 64, offset: 1216)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "num_bodies", scope: !31, file: !10, line: 153, baseType: !15, size: 64, offset: 1280)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "bodyp", scope: !31, file: !10, line: 154, baseType: !125, size: 640, offset: 1344)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 640, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 10)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "child_num", scope: !12, file: !10, line: 94, baseType: !15, size: 64, offset: 512)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "vel", scope: !12, file: !10, line: 95, baseType: !21, size: 192, offset: 576)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !12, file: !10, line: 96, baseType: !21, size: 192, offset: 768)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "phi", scope: !12, file: !10, line: 97, baseType: !17, size: 64, offset: 960)
!132 = !{!0}
!133 = !{!134, !196, !197, !198, !199, !200}
!134 = !DILocalVariable(name: "instr", scope: !2, file: !3, line: 49, type: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream", file: !18, line: 39, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !138, line: 7, baseType: !139)
!138 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !140, line: 49, size: 1728, elements: !141)
!140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!141 = !{!142, !144, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !159, !161, !162, !163, !166, !168, !170, !174, !177, !179, !182, !185, !186, !187, !191, !192}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !139, file: !140, line: 51, baseType: !143, size: 32)
!143 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !139, file: !140, line: 54, baseType: !145, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !139, file: !140, line: 55, baseType: !145, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !139, file: !140, line: 56, baseType: !145, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !139, file: !140, line: 57, baseType: !145, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !139, file: !140, line: 58, baseType: !145, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !139, file: !140, line: 59, baseType: !145, size: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !139, file: !140, line: 60, baseType: !145, size: 64, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !139, file: !140, line: 61, baseType: !145, size: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !139, file: !140, line: 64, baseType: !145, size: 64, offset: 576)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !139, file: !140, line: 65, baseType: !145, size: 64, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !139, file: !140, line: 66, baseType: !145, size: 64, offset: 704)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !139, file: !140, line: 68, baseType: !157, size: 64, offset: 768)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !140, line: 36, flags: DIFlagFwdDecl)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !139, file: !140, line: 70, baseType: !160, size: 64, offset: 832)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !139, file: !140, line: 72, baseType: !143, size: 32, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !139, file: !140, line: 73, baseType: !143, size: 32, offset: 928)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !139, file: !140, line: 74, baseType: !164, size: 64, offset: 960)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !165, line: 152, baseType: !15)
!165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !139, file: !140, line: 77, baseType: !167, size: 16, offset: 1024)
!167 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !139, file: !140, line: 78, baseType: !169, size: 8, offset: 1040)
!169 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !139, file: !140, line: 79, baseType: !171, size: 8, offset: 1048)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 8, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 1)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !139, file: !140, line: 81, baseType: !175, size: 64, offset: 1088)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !140, line: 43, baseType: null)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !139, file: !140, line: 89, baseType: !178, size: 64, offset: 1152)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !165, line: 153, baseType: !15)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !139, file: !140, line: 91, baseType: !180, size: 64, offset: 1216)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !140, line: 37, flags: DIFlagFwdDecl)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !139, file: !140, line: 92, baseType: !183, size: 64, offset: 1280)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !140, line: 38, flags: DIFlagFwdDecl)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !139, file: !140, line: 93, baseType: !160, size: 64, offset: 1344)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !139, file: !140, line: 94, baseType: !8, size: 64, offset: 1408)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !139, file: !140, line: 95, baseType: !188, size: 64, offset: 1472)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 46, baseType: !190)
!189 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!190 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !139, file: !140, line: 96, baseType: !143, size: 32, offset: 1536)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !139, file: !140, line: 98, baseType: !193, size: 160, offset: 1568)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 160, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 20)
!196 = !DILocalVariable(name: "ndim", scope: !2, file: !3, line: 51, type: !15)
!197 = !DILocalVariable(name: "tnow", scope: !2, file: !3, line: 52, type: !17)
!198 = !DILocalVariable(name: "p", scope: !2, file: !3, line: 53, type: !9)
!199 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 54, type: !15)
!200 = !DILocalVariable(name: "_i", scope: !201, file: !3, line: 80, type: !15)
!201 = distinct !DILexicalBlock(scope: !202, file: !3, line: 80, column: 7)
!202 = distinct !DILexicalBlock(scope: !203, file: !3, line: 76, column: 46)
!203 = distinct !DILexicalBlock(scope: !204, file: !3, line: 76, column: 4)
!204 = distinct !DILexicalBlock(scope: !2, file: !3, line: 76, column: 4)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 1024, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 128)
!208 = !{i32 7, !"Dwarf Version", i32 5}
!209 = !{i32 2, !"Debug Info Version", i32 3}
!210 = !{i32 1, !"wchar_size", i32 4}
!211 = !{i32 7, !"PIC Level", i32 2}
!212 = !{i32 7, !"PIE Level", i32 2}
!213 = !{i32 7, !"uwtable", i32 2}
!214 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!215 = !DILocation(line: 51, column: 4, scope: !2)
!216 = !DILocation(line: 52, column: 4, scope: !2)
!217 = !DILocation(line: 56, column: 12, scope: !2)
!218 = !DILocation(line: 56, column: 47, scope: !2)
!219 = !DILocation(line: 56, column: 4, scope: !2)
!220 = !DILocation(line: 57, column: 11, scope: !2)
!221 = !DILocation(line: 57, column: 4, scope: !2)
!222 = !DILocation(line: 58, column: 18, scope: !2)
!223 = !DILocation(line: 58, column: 12, scope: !2)
!224 = !DILocation(line: 0, scope: !2)
!225 = !DILocation(line: 59, column: 14, scope: !226)
!226 = distinct !DILexicalBlock(scope: !2, file: !3, line: 59, column: 8)
!227 = !DILocation(line: 59, column: 8, scope: !2)
!228 = !DILocation(line: 60, column: 7, scope: !226)
!229 = !DILocation(line: 61, column: 51, scope: !2)
!230 = !DILocation(line: 61, column: 4, scope: !2)
!231 = !DILocation(line: 62, column: 13, scope: !2)
!232 = !DILocation(line: 63, column: 4, scope: !2)
!233 = !DILocation(line: 64, column: 8, scope: !234)
!234 = distinct !DILexicalBlock(scope: !2, file: !3, line: 64, column: 8)
!235 = !DILocation(line: 64, column: 14, scope: !234)
!236 = !DILocation(line: 64, column: 8, scope: !2)
!237 = !DILocation(line: 65, column: 7, scope: !234)
!238 = !DILocation(line: 66, column: 4, scope: !2)
!239 = !DILocation(line: 67, column: 8, scope: !240)
!240 = distinct !DILexicalBlock(scope: !2, file: !3, line: 67, column: 8)
!241 = !DILocation(line: 67, column: 13, scope: !240)
!242 = !DILocation(line: 67, column: 8, scope: !2)
!243 = !DILocation(line: 68, column: 7, scope: !240)
!244 = !DILocation(line: 69, column: 4, scope: !2)
!245 = !DILocation(line: 70, column: 4, scope: !246)
!246 = distinct !DILexicalBlock(scope: !2, file: !3, line: 70, column: 4)
!247 = !DILocation(line: 71, column: 16, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 70, column: 35)
!249 = distinct !DILexicalBlock(scope: !246, file: !3, line: 70, column: 4)
!250 = !DILocation(line: 71, column: 21, scope: !248)
!251 = !DILocation(line: 70, column: 31, scope: !249)
!252 = !DILocation(line: 70, column: 18, scope: !249)
!253 = distinct !{!253, !245, !254, !255, !256}
!254 = !DILocation(line: 72, column: 4, scope: !246)
!255 = !{!"llvm.loop.mustprogress"}
!256 = !{!"llvm.loop.unroll.disable"}
!257 = !DILocation(line: 73, column: 31, scope: !2)
!258 = !DILocation(line: 73, column: 37, scope: !2)
!259 = !DILocation(line: 73, column: 24, scope: !2)
!260 = !DILocation(line: 73, column: 12, scope: !2)
!261 = !DILocation(line: 74, column: 16, scope: !262)
!262 = distinct !DILexicalBlock(scope: !2, file: !3, line: 74, column: 8)
!263 = !DILocation(line: 74, column: 8, scope: !2)
!264 = !DILocation(line: 75, column: 7, scope: !262)
!265 = !DILocation(line: 76, column: 13, scope: !204)
!266 = !DILocation(line: 76, column: 34, scope: !203)
!267 = !DILocation(line: 76, column: 24, scope: !203)
!268 = !DILocation(line: 76, column: 4, scope: !204)
!269 = !DILocation(line: 82, column: 24, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !3, line: 82, column: 4)
!271 = distinct !DILexicalBlock(scope: !2, file: !3, line: 82, column: 4)
!272 = !DILocation(line: 82, column: 4, scope: !271)
!273 = !DILocation(line: 77, column: 15, scope: !202)
!274 = !DILocation(line: 78, column: 7, scope: !202)
!275 = !DILocation(line: 78, column: 15, scope: !202)
!276 = !DILocation(line: 79, column: 7, scope: !202)
!277 = !DILocation(line: 79, column: 14, scope: !202)
!278 = !DILocation(line: 0, scope: !201)
!279 = !DILocation(line: 80, column: 7, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !3, line: 80, column: 7)
!281 = distinct !DILexicalBlock(scope: !201, file: !3, line: 80, column: 7)
!282 = !DILocation(line: 76, column: 42, scope: !203)
!283 = !DILocation(line: 76, column: 26, scope: !203)
!284 = !DILocation(line: 76, column: 33, scope: !203)
!285 = distinct !{!285, !268, !286, !255, !256}
!286 = !DILocation(line: 81, column: 4, scope: !204)
!287 = !DILocation(line: 84, column: 24, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 84, column: 4)
!289 = distinct !DILexicalBlock(scope: !2, file: !3, line: 84, column: 4)
!290 = !DILocation(line: 84, column: 4, scope: !289)
!291 = !DILocation(line: 83, column: 23, scope: !270)
!292 = !DILocation(line: 83, column: 7, scope: !270)
!293 = !DILocation(line: 82, column: 42, scope: !270)
!294 = !DILocation(line: 82, column: 26, scope: !270)
!295 = !DILocation(line: 82, column: 34, scope: !270)
!296 = !DILocation(line: 82, column: 33, scope: !270)
!297 = distinct !{!297, !272, !298, !255, !256}
!298 = !DILocation(line: 83, column: 30, scope: !271)
!299 = !DILocation(line: 86, column: 24, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !3, line: 86, column: 4)
!301 = distinct !DILexicalBlock(scope: !2, file: !3, line: 86, column: 4)
!302 = !DILocation(line: 86, column: 4, scope: !301)
!303 = !DILocation(line: 85, column: 24, scope: !288)
!304 = !DILocation(line: 85, column: 7, scope: !288)
!305 = !DILocation(line: 84, column: 42, scope: !288)
!306 = !DILocation(line: 84, column: 26, scope: !288)
!307 = !DILocation(line: 84, column: 34, scope: !288)
!308 = !DILocation(line: 84, column: 33, scope: !288)
!309 = distinct !{!309, !290, !310, !255, !256}
!310 = !DILocation(line: 85, column: 30, scope: !289)
!311 = !DILocation(line: 87, column: 24, scope: !300)
!312 = !DILocation(line: 87, column: 7, scope: !300)
!313 = !DILocation(line: 86, column: 42, scope: !300)
!314 = !DILocation(line: 86, column: 26, scope: !300)
!315 = !DILocation(line: 86, column: 34, scope: !300)
!316 = !DILocation(line: 86, column: 33, scope: !300)
!317 = distinct !{!317, !302, !318, !255, !256}
!318 = !DILocation(line: 87, column: 30, scope: !301)
!319 = !DILocation(line: 88, column: 4, scope: !2)
!320 = !DILocation(line: 89, column: 1, scope: !2)
!321 = !DISubprogram(name: "fflush", scope: !322, file: !322, line: 218, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!322 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!323 = !DISubroutineType(types: !324)
!324 = !{!143, !136}
!325 = !{}
!326 = distinct !DISubprogram(name: "in_int", scope: !3, file: !3, line: 224, type: !327, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !330)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !135, !329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!330 = !{!331, !332}
!331 = !DILocalVariable(name: "str", arg: 1, scope: !326, file: !3, line: 224, type: !135)
!332 = !DILocalVariable(name: "iptr", arg: 2, scope: !326, file: !3, line: 224, type: !329)
!333 = !DILocation(line: 0, scope: !326)
!334 = !DILocation(line: 226, column: 8, scope: !335)
!335 = distinct !DILexicalBlock(scope: !326, file: !3, line: 226, column: 8)
!336 = !DILocation(line: 226, column: 33, scope: !335)
!337 = !DILocation(line: 226, column: 8, scope: !326)
!338 = !DILocation(line: 227, column: 7, scope: !335)
!339 = !DILocation(line: 228, column: 1, scope: !326)
!340 = distinct !DISubprogram(name: "in_real", scope: !3, file: !3, line: 230, type: !341, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !344)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !135, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!344 = !{!345, !346, !347}
!345 = !DILocalVariable(name: "str", arg: 1, scope: !340, file: !3, line: 230, type: !135)
!346 = !DILocalVariable(name: "rptr", arg: 2, scope: !340, file: !3, line: 230, type: !343)
!347 = !DILocalVariable(name: "tmp", scope: !340, file: !3, line: 232, type: !19)
!348 = !DILocation(line: 0, scope: !340)
!349 = !DILocation(line: 232, column: 4, scope: !340)
!350 = !DILocation(line: 234, column: 8, scope: !351)
!351 = distinct !DILexicalBlock(scope: !340, file: !3, line: 234, column: 8)
!352 = !DILocation(line: 234, column: 33, scope: !351)
!353 = !DILocation(line: 234, column: 8, scope: !340)
!354 = !DILocation(line: 235, column: 7, scope: !351)
!355 = !DILocation(line: 236, column: 12, scope: !340)
!356 = !DILocation(line: 236, column: 10, scope: !340)
!357 = !DILocation(line: 237, column: 1, scope: !340)
!358 = distinct !DISubprogram(name: "in_vector", scope: !3, file: !3, line: 239, type: !341, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !359)
!359 = !{!360, !361, !362, !363, !364}
!360 = !DILocalVariable(name: "str", arg: 1, scope: !358, file: !3, line: 239, type: !135)
!361 = !DILocalVariable(name: "vec", arg: 2, scope: !358, file: !3, line: 239, type: !343)
!362 = !DILocalVariable(name: "tmpx", scope: !358, file: !3, line: 241, type: !19)
!363 = !DILocalVariable(name: "tmpy", scope: !358, file: !3, line: 241, type: !19)
!364 = !DILocalVariable(name: "tmpz", scope: !358, file: !3, line: 241, type: !19)
!365 = !DILocation(line: 0, scope: !358)
!366 = !DILocation(line: 241, column: 4, scope: !358)
!367 = !DILocation(line: 243, column: 8, scope: !368)
!368 = distinct !DILexicalBlock(scope: !358, file: !3, line: 243, column: 8)
!369 = !DILocation(line: 243, column: 54, scope: !368)
!370 = !DILocation(line: 243, column: 8, scope: !358)
!371 = !DILocation(line: 244, column: 7, scope: !368)
!372 = !DILocation(line: 245, column: 13, scope: !358)
!373 = !DILocation(line: 245, column: 11, scope: !358)
!374 = !DILocation(line: 245, column: 31, scope: !358)
!375 = !DILocation(line: 245, column: 22, scope: !358)
!376 = !DILocation(line: 245, column: 29, scope: !358)
!377 = !DILocation(line: 245, column: 49, scope: !358)
!378 = !DILocation(line: 245, column: 40, scope: !358)
!379 = !DILocation(line: 245, column: 47, scope: !358)
!380 = !DILocation(line: 246, column: 1, scope: !358)
!381 = !DISubprogram(name: "fclose", scope: !322, file: !322, line: 213, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!382 = distinct !DISubprogram(name: "initoutput", scope: !3, file: !3, line: 96, type: !4, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !325)
!383 = !DILocation(line: 98, column: 27, scope: !382)
!384 = !DILocation(line: 98, column: 4, scope: !382)
!385 = !DILocation(line: 99, column: 4, scope: !382)
!386 = !DILocation(line: 102, column: 4, scope: !382)
!387 = !DILocation(line: 102, column: 11, scope: !382)
!388 = !DILocation(line: 102, column: 18, scope: !382)
!389 = !DILocation(line: 102, column: 23, scope: !382)
!390 = !DILocation(line: 102, column: 28, scope: !382)
!391 = !DILocation(line: 102, column: 35, scope: !382)
!392 = !DILocation(line: 102, column: 42, scope: !382)
!393 = !DILocation(line: 102, column: 50, scope: !382)
!394 = !DILocation(line: 101, column: 4, scope: !382)
!395 = !DILocation(line: 103, column: 1, scope: !382)
!396 = distinct !DISubprogram(name: "output", scope: !3, file: !3, line: 114, type: !397, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !15}
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !411, !412, !414, !415, !417, !418, !419, !421, !422, !424, !425, !427, !428, !429, !431, !433, !434, !436, !437, !439, !440, !441}
!400 = !DILocalVariable(name: "ProcessId", arg: 1, scope: !396, file: !3, line: 114, type: !15)
!401 = !DILocalVariable(name: "nttot", scope: !396, file: !3, line: 116, type: !15)
!402 = !DILocalVariable(name: "nbavg", scope: !396, file: !3, line: 116, type: !15)
!403 = !DILocalVariable(name: "ncavg", scope: !396, file: !3, line: 116, type: !15)
!404 = !DILocalVariable(name: "k", scope: !396, file: !3, line: 116, type: !15)
!405 = !DILocalVariable(name: "tempv1", scope: !396, file: !3, line: 117, type: !21)
!406 = !DILocalVariable(name: "tempv2", scope: !396, file: !3, line: 117, type: !21)
!407 = !DILocalVariable(name: "_i", scope: !408, file: !3, line: 130, type: !15)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 130, column: 7)
!409 = distinct !DILexicalBlock(scope: !410, file: !3, line: 125, column: 36)
!410 = distinct !DILexicalBlock(scope: !396, file: !3, line: 125, column: 8)
!411 = !DILocalVariable(name: "_j", scope: !408, file: !3, line: 130, type: !15)
!412 = !DILocalVariable(name: "_i", scope: !413, file: !3, line: 131, type: !15)
!413 = distinct !DILexicalBlock(scope: !409, file: !3, line: 131, column: 7)
!414 = !DILocalVariable(name: "_j", scope: !413, file: !3, line: 131, type: !15)
!415 = !DILocalVariable(name: "_vp", scope: !416, file: !3, line: 133, type: !343)
!416 = distinct !DILexicalBlock(scope: !409, file: !3, line: 133, column: 7)
!417 = !DILocalVariable(name: "_up", scope: !416, file: !3, line: 133, type: !343)
!418 = !DILocalVariable(name: "_wp", scope: !416, file: !3, line: 133, type: !343)
!419 = !DILocalVariable(name: "_vp", scope: !420, file: !3, line: 135, type: !343)
!420 = distinct !DILexicalBlock(scope: !409, file: !3, line: 135, column: 7)
!421 = !DILocalVariable(name: "_up", scope: !420, file: !3, line: 135, type: !343)
!422 = !DILocalVariable(name: "_vp", scope: !423, file: !3, line: 136, type: !343)
!423 = distinct !DILexicalBlock(scope: !409, file: !3, line: 136, column: 7)
!424 = !DILocalVariable(name: "_up", scope: !423, file: !3, line: 136, type: !343)
!425 = !DILocalVariable(name: "_vp", scope: !426, file: !3, line: 137, type: !343)
!426 = distinct !DILexicalBlock(scope: !409, file: !3, line: 137, column: 7)
!427 = !DILocalVariable(name: "_up", scope: !426, file: !3, line: 137, type: !343)
!428 = !DILocalVariable(name: "_wp", scope: !426, file: !3, line: 137, type: !343)
!429 = !DILocalVariable(name: "_i", scope: !430, file: !3, line: 138, type: !15)
!430 = distinct !DILexicalBlock(scope: !409, file: !3, line: 138, column: 7)
!431 = !DILocalVariable(name: "_vp", scope: !432, file: !3, line: 140, type: !343)
!432 = distinct !DILexicalBlock(scope: !409, file: !3, line: 140, column: 7)
!433 = !DILocalVariable(name: "_up", scope: !432, file: !3, line: 140, type: !343)
!434 = !DILocalVariable(name: "_vp", scope: !435, file: !3, line: 141, type: !343)
!435 = distinct !DILexicalBlock(scope: !409, file: !3, line: 141, column: 7)
!436 = !DILocalVariable(name: "_up", scope: !435, file: !3, line: 141, type: !343)
!437 = !DILocalVariable(name: "_vp", scope: !438, file: !3, line: 142, type: !343)
!438 = distinct !DILexicalBlock(scope: !409, file: !3, line: 142, column: 7)
!439 = !DILocalVariable(name: "_up", scope: !438, file: !3, line: 142, type: !343)
!440 = !DILocalVariable(name: "_wp", scope: !438, file: !3, line: 142, type: !343)
!441 = !DILocalVariable(name: "_i", scope: !442, file: !3, line: 143, type: !15)
!442 = distinct !DILexicalBlock(scope: !409, file: !3, line: 143, column: 7)
!443 = !DILocation(line: 0, scope: !396)
!444 = !DILocation(line: 117, column: 4, scope: !396)
!445 = !DILocation(line: 117, column: 11, scope: !396)
!446 = !DILocation(line: 119, column: 26, scope: !447)
!447 = distinct !DILexicalBlock(scope: !396, file: !3, line: 119, column: 8)
!448 = !DILocation(line: 119, column: 40, scope: !447)
!449 = !DILocation(line: 119, column: 31, scope: !447)
!450 = !DILocation(line: 119, column: 67, scope: !447)
!451 = !DILocation(line: 119, column: 47, scope: !447)
!452 = !DILocation(line: 119, column: 8, scope: !396)
!453 = !DILocation(line: 120, column: 32, scope: !454)
!454 = distinct !DILexicalBlock(scope: !447, file: !3, line: 119, column: 73)
!455 = !DILocation(line: 120, column: 29, scope: !454)
!456 = !DILocation(line: 121, column: 4, scope: !454)
!457 = !DILocation(line: 123, column: 4, scope: !396)
!458 = !DILocation(line: 125, column: 25, scope: !410)
!459 = !DILocation(line: 125, column: 31, scope: !410)
!460 = !DILocation(line: 125, column: 8, scope: !396)
!461 = !DILocation(line: 126, column: 29, scope: !462)
!462 = distinct !DILexicalBlock(scope: !409, file: !3, line: 126, column: 7)
!463 = !DILocation(line: 126, column: 37, scope: !462)
!464 = !DILocation(line: 126, column: 8, scope: !462)
!465 = !DILocation(line: 127, column: 43, scope: !409)
!466 = !DILocation(line: 127, column: 7, scope: !409)
!467 = !DILocation(line: 127, column: 23, scope: !409)
!468 = !DILocation(line: 128, column: 43, scope: !409)
!469 = !DILocation(line: 128, column: 7, scope: !409)
!470 = !DILocation(line: 128, column: 15, scope: !409)
!471 = !DILocation(line: 128, column: 23, scope: !409)
!472 = !DILocation(line: 129, column: 43, scope: !409)
!473 = !DILocation(line: 129, column: 15, scope: !409)
!474 = !DILocation(line: 129, column: 23, scope: !409)
!475 = !DILocation(line: 0, scope: !408)
!476 = !DILocation(line: 130, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !408, file: !3, line: 130, column: 7)
!478 = !DILocation(line: 130, column: 7, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !3, line: 130, column: 7)
!480 = distinct !DILexicalBlock(scope: !477, file: !3, line: 130, column: 7)
!481 = !DILocation(line: 130, column: 7, scope: !482)
!482 = distinct !DILexicalBlock(scope: !479, file: !3, line: 130, column: 7)
!483 = distinct !{!483, !478, !478, !255, !256}
!484 = !DILocation(line: 130, column: 7, scope: !480)
!485 = distinct !{!485, !476, !476, !255, !256}
!486 = !DILocation(line: 0, scope: !413)
!487 = !DILocation(line: 131, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !489, file: !3, line: 131, column: 7)
!489 = distinct !DILexicalBlock(scope: !490, file: !3, line: 131, column: 7)
!490 = distinct !DILexicalBlock(scope: !413, file: !3, line: 131, column: 7)
!491 = !DILocation(line: 131, column: 7, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !3, line: 131, column: 7)
!493 = distinct !{!493, !487, !487, !255, !256}
!494 = !DILocation(line: 131, column: 7, scope: !489)
!495 = !DILocation(line: 131, column: 7, scope: !490)
!496 = distinct !{!496, !495, !495, !255, !256}
!497 = !DILocation(line: 132, column: 45, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !3, line: 132, column: 7)
!499 = distinct !DILexicalBlock(scope: !409, file: !3, line: 132, column: 7)
!500 = !DILocation(line: 132, column: 25, scope: !498)
!501 = !DILocation(line: 132, column: 41, scope: !498)
!502 = !DILocation(line: 132, column: 21, scope: !498)
!503 = !DILocation(line: 132, column: 17, scope: !498)
!504 = !DILocation(line: 132, column: 7, scope: !499)
!505 = distinct !{!505, !504, !506, !255, !256}
!506 = !DILocation(line: 132, column: 70, scope: !499)
!507 = !DILocation(line: 133, column: 7, scope: !416)
!508 = !DILocation(line: 0, scope: !416)
!509 = !DILocation(line: 0, scope: !420)
!510 = !DILocation(line: 135, column: 7, scope: !420)
!511 = !DILocation(line: 0, scope: !423)
!512 = !DILocation(line: 136, column: 7, scope: !423)
!513 = !DILocation(line: 0, scope: !426)
!514 = !DILocation(line: 137, column: 7, scope: !426)
!515 = !DILocation(line: 0, scope: !430)
!516 = !DILocation(line: 138, column: 7, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 138, column: 7)
!518 = distinct !DILexicalBlock(scope: !430, file: !3, line: 138, column: 7)
!519 = !DILocation(line: 138, column: 7, scope: !518)
!520 = distinct !{!520, !519, !519, !255, !256}
!521 = !DILocation(line: 0, scope: !432)
!522 = !DILocation(line: 140, column: 7, scope: !432)
!523 = !DILocation(line: 0, scope: !435)
!524 = !DILocation(line: 141, column: 7, scope: !435)
!525 = !DILocation(line: 0, scope: !438)
!526 = !DILocation(line: 142, column: 7, scope: !438)
!527 = !DILocation(line: 0, scope: !442)
!528 = !DILocation(line: 143, column: 7, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !3, line: 143, column: 7)
!530 = distinct !DILexicalBlock(scope: !442, file: !3, line: 143, column: 7)
!531 = !DILocation(line: 143, column: 7, scope: !530)
!532 = distinct !{!532, !531, !531, !255, !256}
!533 = !DILocation(line: 144, column: 39, scope: !409)
!534 = !DILocation(line: 144, column: 7, scope: !409)
!535 = !DILocation(line: 144, column: 15, scope: !409)
!536 = !DILocation(line: 144, column: 20, scope: !409)
!537 = !DILocation(line: 145, column: 39, scope: !538)
!538 = distinct !DILexicalBlock(scope: !409, file: !3, line: 145, column: 7)
!539 = !DILocation(line: 145, column: 8, scope: !538)
!540 = !DILocation(line: 146, column: 4, scope: !409)
!541 = !DILocation(line: 149, column: 23, scope: !542)
!542 = distinct !DILexicalBlock(scope: !396, file: !3, line: 148, column: 4)
!543 = !DILocation(line: 149, column: 31, scope: !542)
!544 = !DILocation(line: 149, column: 1, scope: !542)
!545 = !DILocation(line: 150, column: 2, scope: !542)
!546 = !DILocation(line: 150, column: 20, scope: !542)
!547 = !DILocation(line: 150, column: 30, scope: !542)
!548 = !DILocation(line: 151, column: 5, scope: !549)
!549 = distinct !DILexicalBlock(scope: !542, file: !3, line: 151, column: 5)
!550 = !DILocation(line: 151, column: 39, scope: !549)
!551 = !DILocation(line: 151, column: 35, scope: !549)
!552 = !DILocation(line: 151, column: 5, scope: !542)
!553 = !DILocation(line: 152, column: 32, scope: !554)
!554 = distinct !DILexicalBlock(scope: !549, file: !3, line: 151, column: 47)
!555 = !DILocation(line: 153, column: 46, scope: !554)
!556 = !DILocation(line: 153, column: 2, scope: !554)
!557 = !DILocation(line: 154, column: 1, scope: !554)
!558 = !DILocation(line: 151, column: 14, scope: !549)
!559 = !DILocation(line: 155, column: 41, scope: !560)
!560 = distinct !DILexicalBlock(scope: !549, file: !3, line: 154, column: 8)
!561 = !DILocation(line: 155, column: 2, scope: !560)
!562 = !DILocation(line: 157, column: 25, scope: !542)
!563 = !DILocation(line: 157, column: 33, scope: !542)
!564 = !DILocation(line: 157, column: 1, scope: !542)
!565 = !DILocation(line: 165, column: 1, scope: !396)
!566 = distinct !DISubprogram(name: "diagnostics", scope: !3, file: !3, line: 173, type: !397, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !567)
!567 = !{!568, !569, !570, !572, !573, !574, !578, !580, !581, !583, !584, !586, !588, !590, !595, !596, !598, !599, !601, !602, !604, !605, !607, !608, !610, !611, !613, !614, !616, !617, !619, !620, !621, !623, !624, !626, !627, !628, !630, !631, !633, !634, !635, !639}
!568 = !DILocalVariable(name: "ProcessId", arg: 1, scope: !566, file: !3, line: 173, type: !15)
!569 = !DILocalVariable(name: "p", scope: !566, file: !3, line: 175, type: !9)
!570 = !DILocalVariable(name: "pp", scope: !566, file: !3, line: 175, type: !571)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!572 = !DILocalVariable(name: "velsq", scope: !566, file: !3, line: 176, type: !17)
!573 = !DILocalVariable(name: "tmpv", scope: !566, file: !3, line: 177, type: !21)
!574 = !DILocalVariable(name: "tmpt", scope: !566, file: !3, line: 178, type: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "matrix", file: !22, line: 30, baseType: !576)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 576, elements: !577)
!577 = !{!25, !25}
!578 = !DILocalVariable(name: "_i", scope: !579, file: !3, line: 182, type: !15)
!579 = distinct !DILexicalBlock(scope: !566, file: !3, line: 182, column: 4)
!580 = !DILocalVariable(name: "_j", scope: !579, file: !3, line: 182, type: !15)
!581 = !DILocalVariable(name: "_i", scope: !582, file: !3, line: 183, type: !15)
!582 = distinct !DILexicalBlock(scope: !566, file: !3, line: 183, column: 4)
!583 = !DILocalVariable(name: "_j", scope: !582, file: !3, line: 183, type: !15)
!584 = !DILocalVariable(name: "_i", scope: !585, file: !3, line: 184, type: !15)
!585 = distinct !DILexicalBlock(scope: !566, file: !3, line: 184, column: 4)
!586 = !DILocalVariable(name: "_i", scope: !587, file: !3, line: 185, type: !15)
!587 = distinct !DILexicalBlock(scope: !566, file: !3, line: 185, column: 4)
!588 = !DILocalVariable(name: "_i", scope: !589, file: !3, line: 186, type: !15)
!589 = distinct !DILexicalBlock(scope: !566, file: !3, line: 186, column: 4)
!590 = !DILocalVariable(name: "_vp", scope: !591, file: !3, line: 191, type: !343)
!591 = distinct !DILexicalBlock(scope: !592, file: !3, line: 191, column: 7)
!592 = distinct !DILexicalBlock(scope: !593, file: !3, line: 188, column: 42)
!593 = distinct !DILexicalBlock(scope: !594, file: !3, line: 187, column: 4)
!594 = distinct !DILexicalBlock(scope: !566, file: !3, line: 187, column: 4)
!595 = !DILocalVariable(name: "_up", scope: !591, file: !3, line: 191, type: !343)
!596 = !DILocalVariable(name: "_vp", scope: !597, file: !3, line: 194, type: !343)
!597 = distinct !DILexicalBlock(scope: !592, file: !3, line: 194, column: 7)
!598 = !DILocalVariable(name: "_up", scope: !597, file: !3, line: 194, type: !343)
!599 = !DILocalVariable(name: "_i", scope: !600, file: !3, line: 195, type: !15)
!600 = distinct !DILexicalBlock(scope: !592, file: !3, line: 195, column: 7)
!601 = !DILocalVariable(name: "_j", scope: !600, file: !3, line: 195, type: !15)
!602 = !DILocalVariable(name: "_i", scope: !603, file: !3, line: 196, type: !15)
!603 = distinct !DILexicalBlock(scope: !592, file: !3, line: 196, column: 7)
!604 = !DILocalVariable(name: "_j", scope: !603, file: !3, line: 196, type: !15)
!605 = !DILocalVariable(name: "_vp", scope: !606, file: !3, line: 197, type: !343)
!606 = distinct !DILexicalBlock(scope: !592, file: !3, line: 197, column: 7)
!607 = !DILocalVariable(name: "_up", scope: !606, file: !3, line: 197, type: !343)
!608 = !DILocalVariable(name: "_i", scope: !609, file: !3, line: 198, type: !15)
!609 = distinct !DILexicalBlock(scope: !592, file: !3, line: 198, column: 7)
!610 = !DILocalVariable(name: "_j", scope: !609, file: !3, line: 198, type: !15)
!611 = !DILocalVariable(name: "_i", scope: !612, file: !3, line: 199, type: !15)
!612 = distinct !DILexicalBlock(scope: !592, file: !3, line: 199, column: 7)
!613 = !DILocalVariable(name: "_j", scope: !612, file: !3, line: 199, type: !15)
!614 = !DILocalVariable(name: "_vp", scope: !615, file: !3, line: 200, type: !343)
!615 = distinct !DILexicalBlock(scope: !592, file: !3, line: 200, column: 7)
!616 = !DILocalVariable(name: "_up", scope: !615, file: !3, line: 200, type: !343)
!617 = !DILocalVariable(name: "_vp", scope: !618, file: !3, line: 201, type: !343)
!618 = distinct !DILexicalBlock(scope: !592, file: !3, line: 201, column: 7)
!619 = !DILocalVariable(name: "_up", scope: !618, file: !3, line: 201, type: !343)
!620 = !DILocalVariable(name: "_wp", scope: !618, file: !3, line: 201, type: !343)
!621 = !DILocalVariable(name: "_vp", scope: !622, file: !3, line: 202, type: !343)
!622 = distinct !DILexicalBlock(scope: !592, file: !3, line: 202, column: 7)
!623 = !DILocalVariable(name: "_up", scope: !622, file: !3, line: 202, type: !343)
!624 = !DILocalVariable(name: "_vp", scope: !625, file: !3, line: 203, type: !343)
!625 = distinct !DILexicalBlock(scope: !592, file: !3, line: 203, column: 7)
!626 = !DILocalVariable(name: "_up", scope: !625, file: !3, line: 203, type: !343)
!627 = !DILocalVariable(name: "_wp", scope: !625, file: !3, line: 203, type: !343)
!628 = !DILocalVariable(name: "_vp", scope: !629, file: !3, line: 205, type: !343)
!629 = distinct !DILexicalBlock(scope: !592, file: !3, line: 205, column: 7)
!630 = !DILocalVariable(name: "_up", scope: !629, file: !3, line: 205, type: !343)
!631 = !DILocalVariable(name: "_vp", scope: !632, file: !3, line: 206, type: !343)
!632 = distinct !DILexicalBlock(scope: !592, file: !3, line: 206, column: 7)
!633 = !DILocalVariable(name: "_up", scope: !632, file: !3, line: 206, type: !343)
!634 = !DILocalVariable(name: "_wp", scope: !632, file: !3, line: 206, type: !343)
!635 = !DILocalVariable(name: "_i", scope: !636, file: !3, line: 211, type: !15)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 211, column: 7)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 210, column: 35)
!638 = distinct !DILexicalBlock(scope: !566, file: !3, line: 210, column: 8)
!639 = !DILocalVariable(name: "_i", scope: !640, file: !3, line: 213, type: !15)
!640 = distinct !DILexicalBlock(scope: !637, file: !3, line: 213, column: 7)
!641 = !DILocation(line: 0, scope: !566)
!642 = !DILocation(line: 177, column: 4, scope: !566)
!643 = !DILocation(line: 177, column: 11, scope: !566)
!644 = !DILocation(line: 178, column: 4, scope: !566)
!645 = !DILocation(line: 178, column: 11, scope: !566)
!646 = !DILocation(line: 180, column: 21, scope: !566)
!647 = !DILocation(line: 180, column: 28, scope: !566)
!648 = !DILocation(line: 181, column: 33, scope: !566)
!649 = !DILocation(line: 181, column: 4, scope: !566)
!650 = !DILocation(line: 0, scope: !579)
!651 = !DILocation(line: 182, column: 4, scope: !652)
!652 = distinct !DILexicalBlock(scope: !579, file: !3, line: 182, column: 4)
!653 = !DILocation(line: 181, column: 60, scope: !566)
!654 = !DILocation(line: 182, column: 4, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !3, line: 182, column: 4)
!656 = distinct !DILexicalBlock(scope: !657, file: !3, line: 182, column: 4)
!657 = distinct !DILexicalBlock(scope: !652, file: !3, line: 182, column: 4)
!658 = !DILocation(line: 183, column: 4, scope: !659)
!659 = distinct !DILexicalBlock(scope: !582, file: !3, line: 183, column: 4)
!660 = !DILocation(line: 183, column: 4, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !3, line: 183, column: 4)
!662 = distinct !DILexicalBlock(scope: !663, file: !3, line: 183, column: 4)
!663 = distinct !DILexicalBlock(scope: !659, file: !3, line: 183, column: 4)
!664 = !DILocation(line: 0, scope: !582)
!665 = !DILocation(line: 0, scope: !585)
!666 = !DILocation(line: 184, column: 4, scope: !667)
!667 = distinct !DILexicalBlock(scope: !668, file: !3, line: 184, column: 4)
!668 = distinct !DILexicalBlock(scope: !585, file: !3, line: 184, column: 4)
!669 = !DILocation(line: 185, column: 4, scope: !670)
!670 = distinct !DILexicalBlock(scope: !587, file: !3, line: 185, column: 4)
!671 = !DILocation(line: 185, column: 4, scope: !672)
!672 = distinct !DILexicalBlock(scope: !670, file: !3, line: 185, column: 4)
!673 = !DILocation(line: 0, scope: !587)
!674 = !DILocation(line: 186, column: 4, scope: !675)
!675 = distinct !DILexicalBlock(scope: !589, file: !3, line: 186, column: 4)
!676 = !DILocation(line: 186, column: 4, scope: !677)
!677 = distinct !DILexicalBlock(scope: !675, file: !3, line: 186, column: 4)
!678 = !DILocation(line: 0, scope: !589)
!679 = !DILocation(line: 181, column: 50, scope: !566)
!680 = !DILocation(line: 187, column: 31, scope: !594)
!681 = !DILocation(line: 187, column: 58, scope: !594)
!682 = !DILocation(line: 187, column: 40, scope: !594)
!683 = !DILocation(line: 0, scope: !594)
!684 = !DILocation(line: 188, column: 5, scope: !593)
!685 = !DILocation(line: 187, column: 4, scope: !594)
!686 = !DILocation(line: 208, column: 31, scope: !566)
!687 = !DILocation(line: 210, column: 8, scope: !566)
!688 = !DILocation(line: 193, column: 34, scope: !592)
!689 = !DILocation(line: 192, column: 34, scope: !592)
!690 = !DILocation(line: 190, column: 31, scope: !592)
!691 = !DILocation(line: 189, column: 10, scope: !592)
!692 = !DILocation(line: 190, column: 34, scope: !592)
!693 = !DILocation(line: 191, column: 7, scope: !591)
!694 = !DILocation(line: 0, scope: !591)
!695 = !DILocation(line: 192, column: 43, scope: !592)
!696 = !DILocation(line: 192, column: 41, scope: !592)
!697 = !DILocation(line: 193, column: 43, scope: !592)
!698 = !DILocation(line: 193, column: 41, scope: !592)
!699 = !DILocation(line: 193, column: 53, scope: !592)
!700 = !DILocation(line: 0, scope: !597)
!701 = !DILocation(line: 194, column: 7, scope: !597)
!702 = !DILocation(line: 0, scope: !600)
!703 = !DILocation(line: 195, column: 7, scope: !704)
!704 = distinct !DILexicalBlock(scope: !600, file: !3, line: 195, column: 7)
!705 = !DILocation(line: 195, column: 7, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 195, column: 7)
!707 = distinct !DILexicalBlock(scope: !704, file: !3, line: 195, column: 7)
!708 = !DILocation(line: 195, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !706, file: !3, line: 195, column: 7)
!710 = distinct !{!710, !705, !705, !255, !256}
!711 = !DILocation(line: 195, column: 7, scope: !707)
!712 = distinct !{!712, !703, !703, !255, !256}
!713 = !DILocation(line: 0, scope: !603)
!714 = !DILocation(line: 196, column: 7, scope: !715)
!715 = distinct !DILexicalBlock(scope: !716, file: !3, line: 196, column: 7)
!716 = distinct !DILexicalBlock(scope: !717, file: !3, line: 196, column: 7)
!717 = distinct !DILexicalBlock(scope: !603, file: !3, line: 196, column: 7)
!718 = !DILocation(line: 196, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !715, file: !3, line: 196, column: 7)
!720 = distinct !{!720, !714, !714, !255, !256}
!721 = !DILocation(line: 196, column: 7, scope: !716)
!722 = !DILocation(line: 196, column: 7, scope: !717)
!723 = distinct !{!723, !722, !722, !255, !256}
!724 = !DILocation(line: 0, scope: !606)
!725 = !DILocation(line: 197, column: 7, scope: !606)
!726 = !DILocation(line: 0, scope: !609)
!727 = !DILocation(line: 198, column: 7, scope: !728)
!728 = distinct !DILexicalBlock(scope: !609, file: !3, line: 198, column: 7)
!729 = !DILocation(line: 198, column: 7, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !3, line: 198, column: 7)
!731 = distinct !DILexicalBlock(scope: !728, file: !3, line: 198, column: 7)
!732 = !DILocation(line: 198, column: 7, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !3, line: 198, column: 7)
!734 = distinct !{!734, !729, !729, !255, !256}
!735 = !DILocation(line: 198, column: 7, scope: !731)
!736 = distinct !{!736, !727, !727, !255, !256}
!737 = !DILocation(line: 0, scope: !612)
!738 = !DILocation(line: 199, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !3, line: 199, column: 7)
!740 = distinct !DILexicalBlock(scope: !741, file: !3, line: 199, column: 7)
!741 = distinct !DILexicalBlock(scope: !612, file: !3, line: 199, column: 7)
!742 = !DILocation(line: 199, column: 7, scope: !743)
!743 = distinct !DILexicalBlock(scope: !739, file: !3, line: 199, column: 7)
!744 = distinct !{!744, !738, !738, !255, !256}
!745 = !DILocation(line: 199, column: 7, scope: !740)
!746 = !DILocation(line: 199, column: 7, scope: !741)
!747 = distinct !{!747, !746, !746, !255, !256}
!748 = !DILocation(line: 0, scope: !615)
!749 = !DILocation(line: 200, column: 7, scope: !615)
!750 = !DILocation(line: 0, scope: !618)
!751 = !DILocation(line: 201, column: 7, scope: !618)
!752 = !DILocation(line: 0, scope: !622)
!753 = !DILocation(line: 202, column: 7, scope: !622)
!754 = !DILocation(line: 0, scope: !625)
!755 = !DILocation(line: 203, column: 7, scope: !625)
!756 = !DILocation(line: 204, column: 7, scope: !757)
!757 = distinct !DILexicalBlock(scope: !592, file: !3, line: 204, column: 7)
!758 = !DILocation(line: 0, scope: !629)
!759 = !DILocation(line: 205, column: 7, scope: !629)
!760 = !DILocation(line: 0, scope: !632)
!761 = !DILocation(line: 206, column: 7, scope: !632)
!762 = !DILocation(line: 188, column: 25, scope: !593)
!763 = distinct !{!763, !685, !764, !255, !256}
!764 = !DILocation(line: 207, column: 4, scope: !594)
!765 = !DILocation(line: 208, column: 33, scope: !566)
!766 = !DILocation(line: 209, column: 9, scope: !566)
!767 = !DILocation(line: 210, column: 25, scope: !638)
!768 = !DILocation(line: 210, column: 31, scope: !638)
!769 = !DILocation(line: 0, scope: !636)
!770 = !DILocation(line: 211, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 211, column: 7)
!772 = distinct !DILexicalBlock(scope: !636, file: !3, line: 211, column: 7)
!773 = !DILocation(line: 211, column: 7, scope: !772)
!774 = distinct !{!774, !773, !773, !255, !256}
!775 = !DILocation(line: 0, scope: !640)
!776 = !DILocation(line: 213, column: 7, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 213, column: 7)
!778 = distinct !DILexicalBlock(scope: !640, file: !3, line: 213, column: 7)
!779 = !DILocation(line: 213, column: 7, scope: !778)
!780 = distinct !{!780, !779, !779, !255, !256}
!781 = !DILocation(line: 216, column: 1, scope: !566)
!782 = !DISubprogram(name: "pthread_mutex_lock", scope: !783, file: !783, line: 738, type: !784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!783 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!784 = !DISubroutineType(types: !785)
!785 = !{!143, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !56, line: 72, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !56, line: 67, size: 320, elements: !789)
!789 = !{!790, !809, !813}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !788, file: !56, line: 69, baseType: !791, size: 320)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !792, line: 22, size: 320, elements: !793)
!792 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!793 = !{!794, !795, !796, !797, !798, !799, !801, !802}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !791, file: !792, line: 24, baseType: !143, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !791, file: !792, line: 25, baseType: !72, size: 32, offset: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !791, file: !792, line: 26, baseType: !143, size: 32, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !791, file: !792, line: 28, baseType: !72, size: 32, offset: 96)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !791, file: !792, line: 32, baseType: !143, size: 32, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !791, file: !792, line: 34, baseType: !800, size: 16, offset: 160)
!800 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !791, file: !792, line: 35, baseType: !800, size: 16, offset: 176)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !791, file: !792, line: 36, baseType: !803, size: 128, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !61, line: 53, baseType: !804)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !61, line: 49, size: 128, elements: !805)
!805 = !{!806, !808}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !804, file: !61, line: 51, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !804, file: !61, line: 52, baseType: !807, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !788, file: !56, line: 70, baseType: !810, size: 320)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 320, elements: !811)
!811 = !{!812}
!812 = !DISubrange(count: 40)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !788, file: !56, line: 71, baseType: !15, size: 64)
!814 = !DISubprogram(name: "pthread_mutex_unlock", scope: !783, file: !783, line: 756, type: !784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!815 = !DISubprogram(name: "pthread_cond_broadcast", scope: !783, file: !783, line: 978, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!816 = !DISubroutineType(types: !817)
!817 = !{!143, !818}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!819 = !DISubprogram(name: "pthread_cond_wait", scope: !783, file: !783, line: 986, type: !820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !325)
!820 = !DISubroutineType(types: !821)
!821 = !{!143, !822, !823}
!822 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !818)
!823 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !786)
!824 = distinct !DISubprogram(name: "out_int", scope: !3, file: !3, line: 248, type: !825, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !827)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !135, !15}
!827 = !{!828, !829}
!828 = !DILocalVariable(name: "str", arg: 1, scope: !824, file: !3, line: 248, type: !135)
!829 = !DILocalVariable(name: "ival", arg: 2, scope: !824, file: !3, line: 248, type: !15)
!830 = !DILocation(line: 0, scope: !824)
!831 = !DILocation(line: 250, column: 4, scope: !824)
!832 = !DILocation(line: 251, column: 1, scope: !824)
!833 = distinct !DISubprogram(name: "out_real", scope: !3, file: !3, line: 253, type: !834, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !135, !17}
!836 = !{!837, !838}
!837 = !DILocalVariable(name: "str", arg: 1, scope: !833, file: !3, line: 253, type: !135)
!838 = !DILocalVariable(name: "rval", arg: 2, scope: !833, file: !3, line: 253, type: !17)
!839 = !DILocation(line: 0, scope: !833)
!840 = !DILocation(line: 255, column: 4, scope: !833)
!841 = !DILocation(line: 256, column: 1, scope: !833)
!842 = distinct !DISubprogram(name: "out_vector", scope: !3, file: !3, line: 258, type: !341, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !843)
!843 = !{!844, !845}
!844 = !DILocalVariable(name: "str", arg: 1, scope: !842, file: !3, line: 258, type: !135)
!845 = !DILocalVariable(name: "vec", arg: 2, scope: !842, file: !3, line: 258, type: !343)
!846 = !DILocation(line: 0, scope: !842)
!847 = !DILocation(line: 260, column: 37, scope: !842)
!848 = !DILocation(line: 260, column: 45, scope: !842)
!849 = !DILocation(line: 260, column: 4, scope: !842)
!850 = !DILocation(line: 261, column: 30, scope: !842)
!851 = !DILocation(line: 261, column: 4, scope: !842)
!852 = !DILocation(line: 262, column: 1, scope: !842)
