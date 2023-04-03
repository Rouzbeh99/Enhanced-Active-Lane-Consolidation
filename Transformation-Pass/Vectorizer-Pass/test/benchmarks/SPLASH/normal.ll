; ModuleID = 'normal.c'
source_filename = "normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalMemory = type { i64, [1025 x [256 x i64]], %struct.anon, %struct.anon.3, %union.pthread_mutex_t, %union.pthread_mutex_t, [1025 x %union.pthread_mutex_t] }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.1, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.1 = type { i64 }
%struct.anon.3 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@map_len = external local_unnamed_addr global [3 x i16], align 2
@norm_len = dso_local global [3 x i16] zeroinitializer, align 2, !dbg !0
@norm_length = dso_local global i32 0, align 4, !dbg !18
@norm_address = dso_local global ptr null, align 8, !dbg !21
@Global = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"    Allocating normal map of %ld bytes...\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"    No space available for map.\0A\00", align 1
@magnitude_epsilon = external local_unnamed_addr global i64, align 8
@nmag_epsilon = dso_local local_unnamed_addr global float 0.000000e+00, align 4, !dbg !23
@map_address = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c".norm\00", align 1
@norm_version = dso_local global i16 0, align 2, !dbg !16
@.str.4 = private unnamed_addr constant [32 x i8] c"    Can't load version %d file\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [24 x i8] c"    Computing normal...\00", align 1
@str.8 = private unnamed_addr constant [42 x i8] c"    Loading normal map from .norm file...\00", align 1
@str.9 = private unnamed_addr constant [42 x i8] c"    Storing normal map into .norm file...\00", align 1
@str.10 = private unnamed_addr constant [31 x i8] c"    Deallocating normal map...\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Compute_Normal() local_unnamed_addr #0 !dbg !35 {
entry:
  call void @llvm.dbg.value(metadata i64 0, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.body, !dbg !41

for.body:                                         ; preds = %entry, %for.body
  %i.011 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.011, metadata !39, metadata !DIExpression()), !dbg !40
  %arrayidx = getelementptr inbounds [3 x i16], ptr @map_len, i64 0, i64 %i.011, !dbg !43
  %0 = load i16, ptr %arrayidx, align 2, !dbg !43
  %sub = add i16 %0, -2, !dbg !46
  %arrayidx2 = getelementptr inbounds [3 x i16], ptr @norm_len, i64 0, i64 %i.011, !dbg !47
  store i16 %sub, ptr %arrayidx2, align 2, !dbg !48
  %inc = add nuw nsw i64 %i.011, 1, !dbg !49
  call void @llvm.dbg.value(metadata i64 %inc, metadata !39, metadata !DIExpression()), !dbg !40
  %exitcond.not = icmp eq i64 %inc, 3, !dbg !50
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !41, !llvm.loop !51

for.end:                                          ; preds = %for.body
  %1 = load i16, ptr @norm_len, align 2, !dbg !55
  %conv3 = sext i16 %1 to i32, !dbg !55
  %2 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @norm_len, i64 0, i64 1), align 2, !dbg !56
  %conv4 = sext i16 %2 to i32, !dbg !56
  %mul = mul nsw i32 %conv4, %conv3, !dbg !57
  %3 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @norm_len, i64 0, i64 2), align 2, !dbg !58
  %conv5 = sext i16 %3 to i32, !dbg !58
  %mul6 = mul nsw i32 %mul, %conv5, !dbg !59
  store i32 %mul6, ptr @norm_length, align 4, !dbg !60
  %conv7 = sext i32 %mul6 to i64, !dbg !61
  tail call void @Allocate_Normal(ptr noundef nonnull @norm_address, i64 noundef %conv7), !dbg !62
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !63
  %4 = load ptr, ptr @Global, align 8, !dbg !64
  store i64 0, ptr %4, align 8, !dbg !65
  tail call void @Normal_Compute(), !dbg !66
  ret void, !dbg !67
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Allocate_Normal(ptr nocapture noundef %address, i64 noundef %length) local_unnamed_addr #0 !dbg !68 {
entry:
  call void @llvm.dbg.value(metadata ptr %address, metadata !73, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i64 %length, metadata !74, metadata !DIExpression()), !dbg !76
  %mul = shl i64 %length, 1, !dbg !77
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i64 noundef %mul), !dbg !78
  %call2 = tail call noalias ptr @malloc(i64 noundef %mul) #14, !dbg !79
  store ptr %call2, ptr %address, align 8, !dbg !80
  %cmp = icmp eq ptr %call2, null, !dbg !81
  br i1 %cmp, label %if.then, label %if.end, !dbg !83

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str.2) #15, !dbg !84
  br label %if.end, !dbg !84

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !75, metadata !DIExpression()), !dbg !76
  %cmp310 = icmp sgt i64 %length, 0, !dbg !85
  br i1 %cmp310, label %for.body, label %for.end, !dbg !88

for.body:                                         ; preds = %if.end, %for.body
  %i.011 = phi i64 [ %inc, %for.body ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.011, metadata !75, metadata !DIExpression()), !dbg !76
  %0 = load ptr, ptr %address, align 8, !dbg !89
  %add.ptr = getelementptr inbounds i16, ptr %0, i64 %i.011, !dbg !90
  store i16 0, ptr %add.ptr, align 2, !dbg !91
  %inc = add nuw nsw i64 %i.011, 1, !dbg !92
  call void @llvm.dbg.value(metadata i64 %inc, metadata !75, metadata !DIExpression()), !dbg !76
  %exitcond.not = icmp eq i64 %inc, %length, !dbg !85
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !88, !llvm.loop !93

for.end:                                          ; preds = %for.body, %if.end
  ret void, !dbg !95
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Normal_Compute() local_unnamed_addr #0 !dbg !96 {
entry:
  %0 = load ptr, ptr @Global, align 8, !dbg !126
  %IndexLock = getelementptr inbounds %struct.GlobalMemory, ptr %0, i64 0, i32 4, !dbg !128
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %IndexLock) #15, !dbg !129
  %1 = load ptr, ptr @Global, align 8, !dbg !130
  %2 = load i64, ptr %1, align 8, !dbg !131
  %inc = add nsw i64 %2, 1, !dbg !131
  store i64 %inc, ptr %1, align 8, !dbg !131
  call void @llvm.dbg.value(metadata i64 %2, metadata !125, metadata !DIExpression()), !dbg !132
  %3 = load ptr, ptr @Global, align 8, !dbg !133
  %IndexLock1 = getelementptr inbounds %struct.GlobalMemory, ptr %3, i64 0, i32 4, !dbg !135
  %call2 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %IndexLock1) #15, !dbg !136
  call void @llvm.dbg.value(metadata !DIArgList(i64 %2, i64 undef), metadata !125, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mod, DW_OP_stack_value)), !dbg !132
  call void @llvm.dbg.value(metadata i64 31, metadata !116, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata double -3.100000e+01, metadata !107, metadata !DIExpression()), !dbg !132
  %4 = load i64, ptr @magnitude_epsilon, align 8, !dbg !137
  %conv = sitofp i64 %4 to float, !dbg !137
  store float %conv, ptr @nmag_epsilon, align 4, !dbg !138
  %5 = load i16, ptr @norm_len, align 2, !dbg !139
  call void @llvm.dbg.value(metadata i64 undef, metadata !117, metadata !DIExpression()), !dbg !132
  %6 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @norm_len, i64 0, i64 1), align 2, !dbg !140
  call void @llvm.dbg.value(metadata i64 undef, metadata !118, metadata !DIExpression()), !dbg !132
  %7 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @norm_len, i64 0, i64 2), align 2, !dbg !141
  call void @llvm.dbg.value(metadata i64 undef, metadata !119, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef), metadata !120, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !132
  call void @llvm.dbg.value(metadata !DIArgList(i64 %2, i64 undef, i64 undef, i64 undef), metadata !121, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_mod, DW_OP_LLVM_arg, 2, DW_OP_mod, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !132
  call void @llvm.dbg.value(metadata i64 undef, metadata !122, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata !DIArgList(i64 %2, i64 undef, i64 undef, i64 undef, i64 undef), metadata !123, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_mod, DW_OP_LLVM_arg, 3, DW_OP_div, DW_OP_LLVM_arg, 2, DW_OP_mod, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !132
  %conv82 = sext i16 %6 to i64, !dbg !142
  call void @llvm.dbg.value(metadata i64 undef, metadata !124, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata !DIArgList(i64 %2, i64 undef, i64 undef, i64 undef, i64 undef), metadata !111, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_mod, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_div, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !132
  %conv95 = sext i16 %7 to i64, !dbg !143
  call void @llvm.dbg.value(metadata i64 undef, metadata !112, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i64 0, metadata !111, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i64 %conv95, metadata !112, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i64 0, metadata !123, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i64 %conv82, metadata !124, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i64 0, metadata !121, metadata !DIExpression()), !dbg !132
  %conv106 = sext i16 %5 to i64, !dbg !144
  call void @llvm.dbg.value(metadata i64 %conv106, metadata !122, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i64 0, metadata !103, metadata !DIExpression()), !dbg !132
  %cmp107278 = icmp sgt i16 %7, 0, !dbg !145
  %cmp110275 = icmp sgt i16 %6, 0
  %or.cond = select i1 %cmp107278, i1 %cmp110275, i1 false, !dbg !148
  %cmp114273 = icmp sgt i16 %5, 0
  %or.cond292 = select i1 %or.cond, i1 %cmp114273, i1 false, !dbg !148
  br i1 %or.cond292, label %for.cond109.preheader.us.us, label %for.end220, !dbg !148

for.cond109.preheader.us.us:                      ; preds = %entry, %for.cond109.for.inc218_crit_edge.split.us.us.us
  %outz.0279.us.us = phi i64 [ %add119.us.us, %for.cond109.for.inc218_crit_edge.split.us.us.us ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %outz.0279.us.us, metadata !103, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i64 0, metadata !102, metadata !DIExpression()), !dbg !132
  %add119.us.us = add nuw nsw i64 %outz.0279.us.us, 1
  %add158.us.us = add nuw nsw i64 %outz.0279.us.us, 2
  br label %for.cond113.preheader.us.us.us, !dbg !149

for.cond113.preheader.us.us.us:                   ; preds = %for.cond113.for.inc215_crit_edge.us.us.us, %for.cond109.preheader.us.us
  %outy.0276.us.us.us = phi i64 [ 0, %for.cond109.preheader.us.us ], [ %add118.us.us.us, %for.cond113.for.inc215_crit_edge.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %outy.0276.us.us.us, metadata !102, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i64 0, metadata !101, metadata !DIExpression()), !dbg !132
  %add118.us.us.us = add nuw nsw i64 %outy.0276.us.us.us, 1
  br label %for.body116.us.us.us, !dbg !152

for.body116.us.us.us:                             ; preds = %for.inc.us.us.us, %for.cond113.preheader.us.us.us
  %outx.0274.us.us.us = phi i64 [ 0, %for.cond113.preheader.us.us.us ], [ %add117.us.us.us, %for.inc.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %outx.0274.us.us.us, metadata !101, metadata !DIExpression()), !dbg !132
  %add117.us.us.us = add nuw nsw i64 %outx.0274.us.us.us, 1, !dbg !156
  call void @llvm.dbg.value(metadata i64 %add117.us.us.us, metadata !98, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i64 %add118.us.us.us, metadata !99, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i64 %add119.us.us, metadata !100, metadata !DIExpression()), !dbg !132
  %8 = load ptr, ptr @map_address, align 8, !dbg !159
  %9 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @map_len, i64 0, i64 1), align 2, !dbg !159
  %conv120.us.us.us = sext i16 %9 to i64, !dbg !159
  %mul121.us.us.us = mul nsw i64 %add119.us.us, %conv120.us.us.us, !dbg !159
  %add122.us.us.us = add nsw i64 %mul121.us.us.us, %add118.us.us.us, !dbg !159
  %10 = load i16, ptr @map_len, align 2, !dbg !159
  %conv123.us.us.us = sext i16 %10 to i64, !dbg !159
  %mul124.us.us.us = mul nsw i64 %add122.us.us.us, %conv123.us.us.us, !dbg !159
  %add.ptr.us.us.us = getelementptr inbounds i8, ptr %8, i64 %mul124.us.us.us, !dbg !159
  %add125.us.us.us = add nuw nsw i64 %outx.0274.us.us.us, 2, !dbg !159
  %add.ptr126.us.us.us = getelementptr inbounds i8, ptr %add.ptr.us.us.us, i64 %add125.us.us.us, !dbg !159
  %11 = load i8, ptr %add.ptr126.us.us.us, align 1, !dbg !159
  %conv127.us.us.us = zext i8 %11 to i64, !dbg !160
  %add.ptr134.us.us.us = getelementptr inbounds i8, ptr %add.ptr.us.us.us, i64 %outx.0274.us.us.us, !dbg !161
  %12 = load i8, ptr %add.ptr134.us.us.us, align 1, !dbg !161
  %conv135.us.us.us = zext i8 %12 to i64, !dbg !162
  %sub136.us.us.us = sub nsw i64 %conv127.us.us.us, %conv135.us.us.us, !dbg !163
  %conv137.us.us.us = sitofp i64 %sub136.us.us.us to double, !dbg !164
  call void @llvm.dbg.value(metadata double %conv137.us.us.us, metadata !108, metadata !DIExpression()), !dbg !132
  %add140.us.us.us = add nsw i64 %mul121.us.us.us, %outy.0276.us.us.us, !dbg !165
  %add141.us.us.us = add i64 %add140.us.us.us, 2, !dbg !165
  %mul143.us.us.us = mul nsw i64 %add141.us.us.us, %conv123.us.us.us, !dbg !165
  %add.ptr144.us.us.us = getelementptr inbounds i8, ptr %8, i64 %mul143.us.us.us, !dbg !165
  %add.ptr145.us.us.us = getelementptr inbounds i8, ptr %add.ptr144.us.us.us, i64 %add117.us.us.us, !dbg !165
  %13 = load i8, ptr %add.ptr145.us.us.us, align 1, !dbg !165
  %conv146.us.us.us = zext i8 %13 to i64, !dbg !166
  %mul152.us.us.us = mul nsw i64 %add140.us.us.us, %conv123.us.us.us, !dbg !167
  %add.ptr153.us.us.us = getelementptr inbounds i8, ptr %8, i64 %mul152.us.us.us, !dbg !167
  %add.ptr154.us.us.us = getelementptr inbounds i8, ptr %add.ptr153.us.us.us, i64 %add117.us.us.us, !dbg !167
  %14 = load i8, ptr %add.ptr154.us.us.us, align 1, !dbg !167
  %conv155.us.us.us = zext i8 %14 to i64, !dbg !168
  %sub156.us.us.us = sub nsw i64 %conv146.us.us.us, %conv155.us.us.us, !dbg !169
  %conv157.us.us.us = sitofp i64 %sub156.us.us.us to double, !dbg !170
  call void @llvm.dbg.value(metadata double %conv157.us.us.us, metadata !109, metadata !DIExpression()), !dbg !132
  %mul160.us.us.us = mul nsw i64 %add158.us.us, %conv120.us.us.us, !dbg !171
  %add161.us.us.us = add nsw i64 %mul160.us.us.us, %add118.us.us.us, !dbg !171
  %mul163.us.us.us = mul nsw i64 %add161.us.us.us, %conv123.us.us.us, !dbg !171
  %add.ptr164.us.us.us = getelementptr inbounds i8, ptr %8, i64 %mul163.us.us.us, !dbg !171
  %add.ptr165.us.us.us = getelementptr inbounds i8, ptr %add.ptr164.us.us.us, i64 %add117.us.us.us, !dbg !171
  %15 = load i8, ptr %add.ptr165.us.us.us, align 1, !dbg !171
  %conv166.us.us.us = zext i8 %15 to i64, !dbg !172
  %mul169.us.us.us = mul nsw i64 %outz.0279.us.us, %conv120.us.us.us, !dbg !173
  %add170.us.us.us = add nsw i64 %mul169.us.us.us, %add118.us.us.us, !dbg !173
  %mul172.us.us.us = mul nsw i64 %add170.us.us.us, %conv123.us.us.us, !dbg !173
  %add.ptr173.us.us.us = getelementptr inbounds i8, ptr %8, i64 %mul172.us.us.us, !dbg !173
  %add.ptr174.us.us.us = getelementptr inbounds i8, ptr %add.ptr173.us.us.us, i64 %add117.us.us.us, !dbg !173
  %16 = load i8, ptr %add.ptr174.us.us.us, align 1, !dbg !173
  %conv175.us.us.us = zext i8 %16 to i64, !dbg !174
  %sub176.us.us.us = sub nsw i64 %conv166.us.us.us, %conv175.us.us.us, !dbg !175
  %conv177.us.us.us = sitofp i64 %sub176.us.us.us to double, !dbg !176
  call void @llvm.dbg.value(metadata double %conv177.us.us.us, metadata !110, metadata !DIExpression()), !dbg !132
  %mul179.us.us.us = fmul double %conv157.us.us.us, %conv157.us.us.us, !dbg !177
  %17 = tail call double @llvm.fmuladd.f64(double %conv137.us.us.us, double %conv137.us.us.us, double %mul179.us.us.us), !dbg !178
  %18 = tail call double @llvm.fmuladd.f64(double %conv177.us.us.us, double %conv177.us.us.us, double %17), !dbg !179
  call void @llvm.dbg.value(metadata double %18, metadata !106, metadata !DIExpression()), !dbg !132
  %19 = load ptr, ptr @norm_address, align 8, !dbg !180
  %20 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @norm_len, i64 0, i64 1), align 2, !dbg !180
  %conv181.us.us.us = sext i16 %20 to i64, !dbg !180
  %mul182.us.us.us = mul nsw i64 %outz.0279.us.us, %conv181.us.us.us, !dbg !180
  %add183.us.us.us = add nsw i64 %mul182.us.us.us, %outy.0276.us.us.us, !dbg !180
  %21 = load i16, ptr @norm_len, align 2, !dbg !180
  %conv184.us.us.us = sext i16 %21 to i64, !dbg !180
  %mul185.us.us.us = mul nsw i64 %add183.us.us.us, %conv184.us.us.us, !dbg !180
  %add.ptr186.us.us.us = getelementptr inbounds i16, ptr %19, i64 %mul185.us.us.us, !dbg !180
  %add.ptr187.us.us.us = getelementptr inbounds i16, ptr %add.ptr186.us.us.us, i64 %outx.0274.us.us.us, !dbg !180
  call void @llvm.dbg.value(metadata ptr %add.ptr187.us.us.us, metadata !104, metadata !DIExpression()), !dbg !132
  %cmp188.us.us.us = fcmp ogt double %18, 1.000000e-05, !dbg !181
  br i1 %cmp188.us.us.us, label %if.then.us.us.us, label %for.inc.us.us.us, !dbg !183

if.then.us.us.us:                                 ; preds = %for.body116.us.us.us
  %call190.us.us.us = tail call double @sqrt(double noundef %18) #15, !dbg !184
  %div191.us.us.us = fdiv double -3.100000e+01, %call190.us.us.us, !dbg !186
  call void @llvm.dbg.value(metadata double %div191.us.us.us, metadata !105, metadata !DIExpression()), !dbg !132
  %mul192.us.us.us = fmul double %div191.us.us.us, %conv137.us.us.us, !dbg !187
  %cmp193.us.us.us = fcmp ogt double %mul192.us.us.us, 0.000000e+00, !dbg !189
  %..us.us.us = zext i1 %cmp193.us.us.us to i64
  call void @llvm.dbg.value(metadata i64 %..us.us.us, metadata !113, metadata !DIExpression()), !dbg !132
  %mul196.us.us.us = fmul double %div191.us.us.us, %conv157.us.us.us, !dbg !190
  %conv197.us.us.us = fptosi double %mul196.us.us.us to i64, !dbg !191
  call void @llvm.dbg.value(metadata i64 %conv197.us.us.us, metadata !114, metadata !DIExpression()), !dbg !132
  %mul198.us.us.us = fmul double %div191.us.us.us, %conv177.us.us.us, !dbg !192
  %conv199.us.us.us = fptosi double %mul198.us.us.us to i64, !dbg !193
  call void @llvm.dbg.value(metadata i64 %conv199.us.us.us, metadata !115, metadata !DIExpression()), !dbg !132
  %mul200.us.us.us = mul nsw i64 %conv199.us.us.us, 63, !dbg !194
  %add201.us.us.us = add nsw i64 %mul200.us.us.us, %conv197.us.us.us, !dbg !194
  %mul202.us.us.us = shl nsw i64 %add201.us.us.us, 1, !dbg !194
  %add203.us.us.us = add nsw i64 %mul202.us.us.us, 3968, !dbg !194
  %add204.us.us.us = or i64 %add203.us.us.us, %..us.us.us, !dbg !194
  %conv205.us.us.us = trunc i64 %add204.us.us.us to i16, !dbg !194
  br label %for.inc.us.us.us, !dbg !195

for.inc.us.us.us:                                 ; preds = %if.then.us.us.us, %for.body116.us.us.us
  %storemerge.us.us.us = phi i16 [ %conv205.us.us.us, %if.then.us.us.us ], [ 7879, %for.body116.us.us.us ], !dbg !196
  store i16 %storemerge.us.us.us, ptr %add.ptr187.us.us.us, align 2, !dbg !196
  call void @llvm.dbg.value(metadata i64 %add117.us.us.us, metadata !101, metadata !DIExpression()), !dbg !132
  %exitcond.not = icmp eq i64 %add117.us.us.us, %conv106, !dbg !197
  br i1 %exitcond.not, label %for.cond113.for.inc215_crit_edge.us.us.us, label %for.body116.us.us.us, !dbg !152, !llvm.loop !198

for.cond113.for.inc215_crit_edge.us.us.us:        ; preds = %for.inc.us.us.us
  call void @llvm.dbg.value(metadata i64 %add118.us.us.us, metadata !102, metadata !DIExpression()), !dbg !132
  %exitcond290.not = icmp eq i64 %add118.us.us.us, %conv82, !dbg !200
  br i1 %exitcond290.not, label %for.cond109.for.inc218_crit_edge.split.us.us.us, label %for.cond113.preheader.us.us.us, !dbg !149, !llvm.loop !201

for.cond109.for.inc218_crit_edge.split.us.us.us:  ; preds = %for.cond113.for.inc215_crit_edge.us.us.us
  call void @llvm.dbg.value(metadata i64 %add119.us.us, metadata !103, metadata !DIExpression()), !dbg !132
  %exitcond291.not = icmp eq i64 %add119.us.us, %conv95, !dbg !145
  br i1 %exitcond291.not, label %for.end220, label %for.cond109.preheader.us.us, !dbg !148, !llvm.loop !203

for.end220:                                       ; preds = %for.cond109.for.inc218_crit_edge.split.us.us.us, %entry
  ret void, !dbg !205
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare !dbg !206 void @Error(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !213 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !247 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @Load_Normal(ptr nocapture noundef readonly %filename) local_unnamed_addr #0 !dbg !248 {
entry:
  %local_filename = alloca [201 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %filename, metadata !252, metadata !DIExpression()), !dbg !258
  call void @llvm.lifetime.start.p0(i64 201, ptr nonnull %local_filename) #15, !dbg !259
  call void @llvm.dbg.declare(metadata ptr %local_filename, metadata !253, metadata !DIExpression()), !dbg !260
  %call = call ptr @strcpy(ptr noundef nonnull %local_filename, ptr noundef nonnull dereferenceable(1) %filename) #15, !dbg !261
  %strlen = call i64 @strlen(ptr noundef nonnull %local_filename), !dbg !262
  %endptr = getelementptr i8, ptr %local_filename, i64 %strlen, !dbg !262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false), !dbg !262
  %call4 = call i32 @Open_File(ptr noundef nonnull %local_filename) #15, !dbg !263
  call void @llvm.dbg.value(metadata i32 %call4, metadata !257, metadata !DIExpression()), !dbg !258
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @norm_version, i64 noundef 2) #15, !dbg !264
  %0 = load i16, ptr @norm_version, align 2, !dbg !265
  %cmp.not = icmp eq i16 %0, 1, !dbg !267
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !268

if.then:                                          ; preds = %entry
  %conv = sext i16 %0 to i32, !dbg !265
  call void (ptr, ...) @Error(ptr noundef nonnull @.str.4, i32 noundef %conv) #15, !dbg !269
  br label %if.end, !dbg !269

if.end:                                           ; preds = %if.then, %entry
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @norm_len, i64 noundef 6) #15, !dbg !270
  call void @Read_Longs(i32 noundef %call4, ptr noundef nonnull @norm_length, i64 noundef 4) #15, !dbg !271
  %1 = load i32, ptr @norm_length, align 4, !dbg !272
  %conv7 = sext i32 %1 to i64, !dbg !272
  call void @Allocate_Normal(ptr noundef nonnull @norm_address, i64 noundef %conv7), !dbg !273
  %puts = call i32 @puts(ptr nonnull @str.8), !dbg !274
  %2 = load ptr, ptr @norm_address, align 8, !dbg !275
  %3 = load i32, ptr @norm_length, align 4, !dbg !276
  %conv9 = sext i32 %3 to i64, !dbg !276
  %mul = shl nsw i64 %conv9, 1, !dbg !277
  call void @Read_Shorts(i32 noundef %call4, ptr noundef %2, i64 noundef %mul) #15, !dbg !278
  %4 = load ptr, ptr @stdout, align 8, !dbg !279
  %call10 = call i32 @fflush(ptr noundef %4), !dbg !280
  call void @Close_File(i32 noundef %call4) #15, !dbg !281
  call void @llvm.lifetime.end.p0(i64 201, ptr nonnull %local_filename) #15, !dbg !282
  ret void, !dbg !282
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

declare !dbg !283 i32 @Open_File(ptr noundef) local_unnamed_addr #5

declare !dbg !286 void @Read_Shorts(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !289 void @Read_Longs(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !290 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

declare !dbg !352 void @Close_File(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @Store_Normal(ptr nocapture noundef readonly %filename) local_unnamed_addr #0 !dbg !355 {
entry:
  %local_filename = alloca [201 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %filename, metadata !357, metadata !DIExpression()), !dbg !360
  call void @llvm.lifetime.start.p0(i64 201, ptr nonnull %local_filename) #15, !dbg !361
  call void @llvm.dbg.declare(metadata ptr %local_filename, metadata !358, metadata !DIExpression()), !dbg !362
  %call = call ptr @strcpy(ptr noundef nonnull %local_filename, ptr noundef nonnull dereferenceable(1) %filename) #15, !dbg !363
  %strlen = call i64 @strlen(ptr noundef nonnull %local_filename), !dbg !364
  %endptr = getelementptr i8, ptr %local_filename, i64 %strlen, !dbg !364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false), !dbg !364
  %call4 = call i32 @Create_File(ptr noundef nonnull %local_filename) #15, !dbg !365
  call void @llvm.dbg.value(metadata i32 %call4, metadata !359, metadata !DIExpression()), !dbg !360
  store i16 1, ptr @norm_version, align 2, !dbg !366
  %call6 = call ptr @strcpy(ptr noundef nonnull %local_filename, ptr noundef nonnull dereferenceable(1) %filename) #15, !dbg !367
  %strlen17 = call i64 @strlen(ptr noundef nonnull %local_filename), !dbg !368
  %endptr18 = getelementptr i8, ptr %local_filename, i64 %strlen17, !dbg !368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr18, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false), !dbg !368
  %call10 = call i32 @Create_File(ptr noundef nonnull %local_filename) #15, !dbg !369
  call void @llvm.dbg.value(metadata i32 %call10, metadata !359, metadata !DIExpression()), !dbg !360
  call void @Write_Shorts(i32 noundef %call10, ptr noundef nonnull @norm_version, i64 noundef 2) #15, !dbg !370
  call void @Write_Shorts(i32 noundef %call10, ptr noundef nonnull @norm_len, i64 noundef 6) #15, !dbg !371
  call void @Write_Longs(i32 noundef %call10, ptr noundef nonnull @norm_length, i64 noundef 4) #15, !dbg !372
  %puts = call i32 @puts(ptr nonnull @str.9), !dbg !373
  %0 = load ptr, ptr @norm_address, align 8, !dbg !374
  %1 = load i32, ptr @norm_length, align 4, !dbg !375
  %conv = sext i32 %1 to i64, !dbg !375
  %mul = shl nsw i64 %conv, 1, !dbg !376
  call void @Write_Shorts(i32 noundef %call10, ptr noundef %0, i64 noundef %mul) #15, !dbg !377
  call void @Close_File(i32 noundef %call10) #15, !dbg !378
  call void @llvm.lifetime.end.p0(i64 201, ptr nonnull %local_filename) #15, !dbg !379
  ret void, !dbg !379
}

declare !dbg !380 i32 @Create_File(ptr noundef) local_unnamed_addr #5

declare !dbg !381 void @Write_Shorts(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !382 void @Write_Longs(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @Deallocate_Normal(ptr nocapture noundef writeonly %address) local_unnamed_addr #9 !dbg !383 {
entry:
  call void @llvm.dbg.value(metadata ptr %address, metadata !387, metadata !DIExpression()), !dbg !388
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !389
  store ptr null, ptr %address, align 8, !dbg !390
  ret void, !dbg !391
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nounwind }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "norm_len", scope: !2, file: !3, line: 37, type: !25, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "normal.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "d5e2c9a8c5e12217a30455a1bc0c9e24")
!4 = !{!5, !9, !10, !11, !12, !13}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "NORMAL", file: !7, line: 29, baseType: !8)
!7 = !DIFile(filename: "./my_types.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "1c0e36810bc34cd72ba4bfe4a2cdcc97")
!8 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{!16, !0, !18, !21, !23}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "norm_version", scope: !2, file: !3, line: 35, type: !8, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "norm_length", scope: !2, file: !3, line: 39, type: !20, isLocal: false, isDefinition: true)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "norm_address", scope: !2, file: !3, line: 41, type: !5, isLocal: false, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "nmag_epsilon", scope: !2, file: !3, line: 45, type: !11, isLocal: false, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 48, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 3)
!28 = !{i32 7, !"Dwarf Version", i32 5}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{i32 7, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!35 = distinct !DISubprogram(name: "Compute_Normal", scope: !3, file: !3, line: 67, type: !36, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !38)
!36 = !DISubroutineType(types: !37)
!37 = !{null}
!38 = !{!39}
!39 = !DILocalVariable(name: "i", scope: !35, file: !3, line: 69, type: !10)
!40 = !DILocation(line: 0, scope: !35)
!41 = !DILocation(line: 71, column: 3, scope: !42)
!42 = distinct !DILexicalBlock(scope: !35, file: !3, line: 71, column: 3)
!43 = !DILocation(line: 72, column: 19, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !3, line: 71, column: 24)
!45 = distinct !DILexicalBlock(scope: !42, file: !3, line: 71, column: 3)
!46 = !DILocation(line: 72, column: 29, scope: !44)
!47 = !DILocation(line: 72, column: 5, scope: !44)
!48 = !DILocation(line: 72, column: 17, scope: !44)
!49 = !DILocation(line: 71, column: 20, scope: !45)
!50 = !DILocation(line: 71, column: 14, scope: !45)
!51 = distinct !{!51, !41, !52, !53, !54}
!52 = !DILocation(line: 73, column: 3, scope: !42)
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !DILocation(line: 75, column: 17, scope: !35)
!56 = !DILocation(line: 75, column: 31, scope: !35)
!57 = !DILocation(line: 75, column: 29, scope: !35)
!58 = !DILocation(line: 75, column: 45, scope: !35)
!59 = !DILocation(line: 75, column: 43, scope: !35)
!60 = !DILocation(line: 75, column: 15, scope: !35)
!61 = !DILocation(line: 77, column: 34, scope: !35)
!62 = !DILocation(line: 77, column: 3, scope: !35)
!63 = !DILocation(line: 79, column: 3, scope: !35)
!64 = !DILocation(line: 81, column: 3, scope: !35)
!65 = !DILocation(line: 81, column: 17, scope: !35)
!66 = !DILocation(line: 101, column: 3, scope: !35)
!67 = !DILocation(line: 103, column: 1, scope: !35)
!68 = distinct !DISubprogram(name: "Allocate_Normal", scope: !3, file: !3, line: 106, type: !69, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !10}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!72 = !{!73, !74, !75}
!73 = !DILocalVariable(name: "address", arg: 1, scope: !68, file: !3, line: 107, type: !71)
!74 = !DILocalVariable(name: "length", arg: 2, scope: !68, file: !3, line: 108, type: !10)
!75 = !DILocalVariable(name: "i", scope: !68, file: !3, line: 110, type: !10)
!76 = !DILocation(line: 0, scope: !68)
!77 = !DILocation(line: 113, column: 9, scope: !68)
!78 = !DILocation(line: 112, column: 3, scope: !68)
!79 = !DILocation(line: 115, column: 24, scope: !68)
!80 = !DILocation(line: 115, column: 12, scope: !68)
!81 = !DILocation(line: 117, column: 16, scope: !82)
!82 = distinct !DILexicalBlock(scope: !68, file: !3, line: 117, column: 7)
!83 = !DILocation(line: 117, column: 7, scope: !68)
!84 = !DILocation(line: 118, column: 5, scope: !82)
!85 = !DILocation(line: 124, column: 14, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 124, column: 3)
!87 = distinct !DILexicalBlock(scope: !68, file: !3, line: 124, column: 3)
!88 = !DILocation(line: 124, column: 3, scope: !87)
!89 = !DILocation(line: 124, column: 30, scope: !86)
!90 = !DILocation(line: 124, column: 38, scope: !86)
!91 = !DILocation(line: 124, column: 42, scope: !86)
!92 = !DILocation(line: 124, column: 24, scope: !86)
!93 = distinct !{!93, !88, !94, !53, !54}
!94 = !DILocation(line: 124, column: 44, scope: !87)
!95 = !DILocation(line: 126, column: 1, scope: !68)
!96 = distinct !DISubprogram(name: "Normal_Compute", scope: !3, file: !3, line: 129, type: !36, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !97)
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!98 = !DILocalVariable(name: "inx", scope: !96, file: !3, line: 131, type: !10)
!99 = !DILocalVariable(name: "iny", scope: !96, file: !3, line: 131, type: !10)
!100 = !DILocalVariable(name: "inz", scope: !96, file: !3, line: 131, type: !10)
!101 = !DILocalVariable(name: "outx", scope: !96, file: !3, line: 132, type: !10)
!102 = !DILocalVariable(name: "outy", scope: !96, file: !3, line: 132, type: !10)
!103 = !DILocalVariable(name: "outz", scope: !96, file: !3, line: 132, type: !10)
!104 = !DILocalVariable(name: "local_norm_address", scope: !96, file: !3, line: 133, type: !5)
!105 = !DILocalVariable(name: "inv_mag_shift", scope: !96, file: !3, line: 134, type: !12)
!106 = !DILocalVariable(name: "magnitude", scope: !96, file: !3, line: 134, type: !12)
!107 = !DILocalVariable(name: "norm_lshift", scope: !96, file: !3, line: 134, type: !12)
!108 = !DILocalVariable(name: "grd_x", scope: !96, file: !3, line: 134, type: !12)
!109 = !DILocalVariable(name: "grd_y", scope: !96, file: !3, line: 134, type: !12)
!110 = !DILocalVariable(name: "grd_z", scope: !96, file: !3, line: 134, type: !12)
!111 = !DILocalVariable(name: "zstart", scope: !96, file: !3, line: 135, type: !10)
!112 = !DILocalVariable(name: "zstop", scope: !96, file: !3, line: 135, type: !10)
!113 = !DILocalVariable(name: "xnorm", scope: !96, file: !3, line: 136, type: !10)
!114 = !DILocalVariable(name: "ynorm", scope: !96, file: !3, line: 136, type: !10)
!115 = !DILocalVariable(name: "znorm", scope: !96, file: !3, line: 136, type: !10)
!116 = !DILocalVariable(name: "norm0", scope: !96, file: !3, line: 136, type: !10)
!117 = !DILocalVariable(name: "num_xqueue", scope: !96, file: !3, line: 137, type: !10)
!118 = !DILocalVariable(name: "num_yqueue", scope: !96, file: !3, line: 137, type: !10)
!119 = !DILocalVariable(name: "num_zqueue", scope: !96, file: !3, line: 137, type: !10)
!120 = !DILocalVariable(name: "num_queue", scope: !96, file: !3, line: 137, type: !10)
!121 = !DILocalVariable(name: "xstart", scope: !96, file: !3, line: 138, type: !10)
!122 = !DILocalVariable(name: "xstop", scope: !96, file: !3, line: 138, type: !10)
!123 = !DILocalVariable(name: "ystart", scope: !96, file: !3, line: 138, type: !10)
!124 = !DILocalVariable(name: "ystop", scope: !96, file: !3, line: 138, type: !10)
!125 = !DILocalVariable(name: "my_node", scope: !96, file: !3, line: 139, type: !10)
!126 = !DILocation(line: 141, column: 25, scope: !127)
!127 = distinct !DILexicalBlock(scope: !96, file: !3, line: 141, column: 3)
!128 = !DILocation(line: 141, column: 33, scope: !127)
!129 = !DILocation(line: 141, column: 4, scope: !127)
!130 = !DILocation(line: 142, column: 13, scope: !96)
!131 = !DILocation(line: 142, column: 26, scope: !96)
!132 = !DILocation(line: 0, scope: !96)
!133 = !DILocation(line: 143, column: 27, scope: !134)
!134 = distinct !DILexicalBlock(scope: !96, file: !3, line: 143, column: 3)
!135 = !DILocation(line: 143, column: 35, scope: !134)
!136 = !DILocation(line: 143, column: 4, scope: !134)
!137 = !DILocation(line: 153, column: 18, scope: !96)
!138 = !DILocation(line: 153, column: 16, scope: !96)
!139 = !DILocation(line: 155, column: 16, scope: !96)
!140 = !DILocation(line: 156, column: 16, scope: !96)
!141 = !DILocation(line: 157, column: 16, scope: !96)
!142 = !DILocation(line: 162, column: 11, scope: !96)
!143 = !DILocation(line: 164, column: 11, scope: !96)
!144 = !DILocation(line: 172, column: 11, scope: !96)
!145 = !DILocation(line: 175, column: 25, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !3, line: 175, column: 3)
!147 = distinct !DILexicalBlock(scope: !96, file: !3, line: 175, column: 3)
!148 = !DILocation(line: 175, column: 3, scope: !147)
!149 = !DILocation(line: 176, column: 5, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !3, line: 176, column: 5)
!151 = distinct !DILexicalBlock(scope: !146, file: !3, line: 175, column: 41)
!152 = !DILocation(line: 177, column: 7, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 177, column: 7)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 176, column: 43)
!155 = distinct !DILexicalBlock(scope: !150, file: !3, line: 176, column: 5)
!156 = !DILocation(line: 179, column: 14, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !3, line: 177, column: 45)
!158 = distinct !DILexicalBlock(scope: !153, file: !3, line: 177, column: 7)
!159 = !DILocation(line: 184, column: 25, scope: !157)
!160 = !DILocation(line: 184, column: 19, scope: !157)
!161 = !DILocation(line: 184, column: 52, scope: !157)
!162 = !DILocation(line: 184, column: 46, scope: !157)
!163 = !DILocation(line: 184, column: 44, scope: !157)
!164 = !DILocation(line: 184, column: 10, scope: !157)
!165 = !DILocation(line: 185, column: 25, scope: !157)
!166 = !DILocation(line: 185, column: 19, scope: !157)
!167 = !DILocation(line: 185, column: 52, scope: !157)
!168 = !DILocation(line: 185, column: 46, scope: !157)
!169 = !DILocation(line: 185, column: 44, scope: !157)
!170 = !DILocation(line: 185, column: 10, scope: !157)
!171 = !DILocation(line: 186, column: 25, scope: !157)
!172 = !DILocation(line: 186, column: 19, scope: !157)
!173 = !DILocation(line: 186, column: 52, scope: !157)
!174 = !DILocation(line: 186, column: 46, scope: !157)
!175 = !DILocation(line: 186, column: 44, scope: !157)
!176 = !DILocation(line: 186, column: 10, scope: !157)
!177 = !DILocation(line: 191, column: 31, scope: !157)
!178 = !DILocation(line: 191, column: 25, scope: !157)
!179 = !DILocation(line: 191, column: 37, scope: !157)
!180 = !DILocation(line: 193, column: 23, scope: !157)
!181 = !DILocation(line: 194, column: 16, scope: !182)
!182 = distinct !DILexicalBlock(scope: !157, file: !3, line: 194, column: 6)
!183 = !DILocation(line: 194, column: 6, scope: !157)
!184 = !DILocation(line: 195, column: 32, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !3, line: 194, column: 25)
!186 = !DILocation(line: 195, column: 31, scope: !185)
!187 = !DILocation(line: 196, column: 13, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 196, column: 8)
!189 = !DILocation(line: 196, column: 28, scope: !188)
!190 = !DILocation(line: 198, column: 24, scope: !185)
!191 = !DILocation(line: 198, column: 12, scope: !185)
!192 = !DILocation(line: 199, column: 24, scope: !185)
!193 = !DILocation(line: 199, column: 12, scope: !185)
!194 = !DILocation(line: 200, column: 26, scope: !185)
!195 = !DILocation(line: 201, column: 2, scope: !185)
!196 = !DILocation(line: 0, scope: !182)
!197 = !DILocation(line: 177, column: 29, scope: !158)
!198 = distinct !{!198, !152, !199, !53, !54}
!199 = !DILocation(line: 205, column: 7, scope: !153)
!200 = !DILocation(line: 176, column: 27, scope: !155)
!201 = distinct !{!201, !149, !202, !53, !54}
!202 = !DILocation(line: 206, column: 5, scope: !150)
!203 = distinct !{!203, !148, !204, !53, !54}
!204 = !DILocation(line: 207, column: 3, scope: !147)
!205 = !DILocation(line: 222, column: 1, scope: !96)
!206 = !DISubprogram(name: "Error", scope: !207, file: !207, line: 187, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !212)
!207 = !DIFile(filename: "./global.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "f049690031a7f12768b0765e4f4983eb")
!208 = !DISubroutineType(types: !209)
!209 = !{null, !210, null}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!212 = !{}
!213 = !DISubprogram(name: "pthread_mutex_lock", scope: !214, file: !214, line: 738, type: !215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !212)
!214 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!215 = !DISubroutineType(types: !216)
!216 = !{!20, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !219, line: 72, baseType: !220)
!219 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !219, line: 67, size: 320, elements: !221)
!221 = !{!222, !242, !246}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !220, file: !219, line: 69, baseType: !223, size: 320)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !224, line: 22, size: 320, elements: !225)
!224 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!225 = !{!226, !227, !229, !230, !231, !232, !233, !234}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !223, file: !224, line: 24, baseType: !20, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !223, file: !224, line: 25, baseType: !228, size: 32, offset: 32)
!228 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !223, file: !224, line: 26, baseType: !20, size: 32, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !223, file: !224, line: 28, baseType: !228, size: 32, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !223, file: !224, line: 32, baseType: !20, size: 32, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !223, file: !224, line: 34, baseType: !8, size: 16, offset: 160)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !223, file: !224, line: 35, baseType: !8, size: 16, offset: 176)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !223, file: !224, line: 36, baseType: !235, size: 128, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !236, line: 53, baseType: !237)
!236 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !236, line: 49, size: 128, elements: !238)
!238 = !{!239, !241}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !237, file: !236, line: 51, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !237, file: !236, line: 52, baseType: !240, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !220, file: !219, line: 70, baseType: !243, size: 320)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 320, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 40)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !220, file: !219, line: 71, baseType: !10, size: 64)
!247 = !DISubprogram(name: "pthread_mutex_unlock", scope: !214, file: !214, line: 756, type: !215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !212)
!248 = distinct !DISubprogram(name: "Load_Normal", scope: !3, file: !3, line: 225, type: !249, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !251)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !210}
!251 = !{!252, !253, !257}
!252 = !DILocalVariable(name: "filename", arg: 1, scope: !248, file: !3, line: 226, type: !210)
!253 = !DILocalVariable(name: "local_filename", scope: !248, file: !3, line: 228, type: !254)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 1608, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 201)
!257 = !DILocalVariable(name: "fd", scope: !248, file: !3, line: 229, type: !20)
!258 = !DILocation(line: 0, scope: !248)
!259 = !DILocation(line: 228, column: 3, scope: !248)
!260 = !DILocation(line: 228, column: 8, scope: !248)
!261 = !DILocation(line: 231, column: 3, scope: !248)
!262 = !DILocation(line: 232, column: 3, scope: !248)
!263 = !DILocation(line: 233, column: 8, scope: !248)
!264 = !DILocation(line: 235, column: 3, scope: !248)
!265 = !DILocation(line: 236, column: 7, scope: !266)
!266 = distinct !DILexicalBlock(scope: !248, file: !3, line: 236, column: 7)
!267 = !DILocation(line: 236, column: 20, scope: !266)
!268 = !DILocation(line: 236, column: 7, scope: !248)
!269 = !DILocation(line: 237, column: 5, scope: !266)
!270 = !DILocation(line: 239, column: 3, scope: !248)
!271 = !DILocation(line: 241, column: 3, scope: !248)
!272 = !DILocation(line: 243, column: 33, scope: !248)
!273 = !DILocation(line: 243, column: 3, scope: !248)
!274 = !DILocation(line: 245, column: 3, scope: !248)
!275 = !DILocation(line: 246, column: 35, scope: !248)
!276 = !DILocation(line: 246, column: 55, scope: !248)
!277 = !DILocation(line: 246, column: 66, scope: !248)
!278 = !DILocation(line: 246, column: 3, scope: !248)
!279 = !DILocation(line: 247, column: 10, scope: !248)
!280 = !DILocation(line: 247, column: 3, scope: !248)
!281 = !DILocation(line: 248, column: 3, scope: !248)
!282 = !DILocation(line: 249, column: 1, scope: !248)
!283 = !DISubprogram(name: "Open_File", scope: !207, file: !207, line: 174, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !212)
!284 = !DISubroutineType(types: !285)
!285 = !{!20, !210}
!286 = !DISubprogram(name: "Read_Shorts", scope: !207, file: !207, line: 179, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !212)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !20, !13, !10}
!289 = !DISubprogram(name: "Read_Longs", scope: !207, file: !207, line: 180, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !212)
!290 = !DISubprogram(name: "fflush", scope: !291, file: !291, line: 218, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !212)
!291 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!292 = !DISubroutineType(types: !293)
!293 = !{!20, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !296, line: 7, baseType: !297)
!296 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !298, line: 49, size: 1728, elements: !299)
!298 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !315, !317, !318, !319, !322, !324, !326, !330, !333, !335, !338, !341, !342, !343, !347, !348}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !297, file: !298, line: 51, baseType: !20, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !297, file: !298, line: 54, baseType: !210, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !297, file: !298, line: 55, baseType: !210, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !297, file: !298, line: 56, baseType: !210, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !297, file: !298, line: 57, baseType: !210, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !297, file: !298, line: 58, baseType: !210, size: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !297, file: !298, line: 59, baseType: !210, size: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !297, file: !298, line: 60, baseType: !210, size: 64, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !297, file: !298, line: 61, baseType: !210, size: 64, offset: 512)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !297, file: !298, line: 64, baseType: !210, size: 64, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !297, file: !298, line: 65, baseType: !210, size: 64, offset: 640)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !297, file: !298, line: 66, baseType: !210, size: 64, offset: 704)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !297, file: !298, line: 68, baseType: !313, size: 64, offset: 768)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !298, line: 36, flags: DIFlagFwdDecl)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !297, file: !298, line: 70, baseType: !316, size: 64, offset: 832)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !297, file: !298, line: 72, baseType: !20, size: 32, offset: 896)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !297, file: !298, line: 73, baseType: !20, size: 32, offset: 928)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !297, file: !298, line: 74, baseType: !320, size: 64, offset: 960)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !321, line: 152, baseType: !10)
!321 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !297, file: !298, line: 77, baseType: !323, size: 16, offset: 1024)
!323 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !297, file: !298, line: 78, baseType: !325, size: 8, offset: 1040)
!325 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !297, file: !298, line: 79, baseType: !327, size: 8, offset: 1048)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 8, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 1)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !297, file: !298, line: 81, baseType: !331, size: 64, offset: 1088)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !298, line: 43, baseType: null)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !297, file: !298, line: 89, baseType: !334, size: 64, offset: 1152)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !321, line: 153, baseType: !10)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !297, file: !298, line: 91, baseType: !336, size: 64, offset: 1216)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !298, line: 37, flags: DIFlagFwdDecl)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !297, file: !298, line: 92, baseType: !339, size: 64, offset: 1280)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !298, line: 38, flags: DIFlagFwdDecl)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !297, file: !298, line: 93, baseType: !316, size: 64, offset: 1344)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !297, file: !298, line: 94, baseType: !9, size: 64, offset: 1408)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !297, file: !298, line: 95, baseType: !344, size: 64, offset: 1472)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !345, line: 46, baseType: !346)
!345 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!346 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !297, file: !298, line: 96, baseType: !20, size: 32, offset: 1536)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !297, file: !298, line: 98, baseType: !349, size: 160, offset: 1568)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 160, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 20)
!352 = !DISubprogram(name: "Close_File", scope: !207, file: !207, line: 181, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !212)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !20}
!355 = distinct !DISubprogram(name: "Store_Normal", scope: !3, file: !3, line: 252, type: !249, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !356)
!356 = !{!357, !358, !359}
!357 = !DILocalVariable(name: "filename", arg: 1, scope: !355, file: !3, line: 253, type: !210)
!358 = !DILocalVariable(name: "local_filename", scope: !355, file: !3, line: 255, type: !254)
!359 = !DILocalVariable(name: "fd", scope: !355, file: !3, line: 256, type: !20)
!360 = !DILocation(line: 0, scope: !355)
!361 = !DILocation(line: 255, column: 3, scope: !355)
!362 = !DILocation(line: 255, column: 8, scope: !355)
!363 = !DILocation(line: 258, column: 3, scope: !355)
!364 = !DILocation(line: 259, column: 3, scope: !355)
!365 = !DILocation(line: 260, column: 8, scope: !355)
!366 = !DILocation(line: 262, column: 16, scope: !355)
!367 = !DILocation(line: 263, column: 3, scope: !355)
!368 = !DILocation(line: 264, column: 3, scope: !355)
!369 = !DILocation(line: 265, column: 8, scope: !355)
!370 = !DILocation(line: 266, column: 3, scope: !355)
!371 = !DILocation(line: 268, column: 3, scope: !355)
!372 = !DILocation(line: 269, column: 3, scope: !355)
!373 = !DILocation(line: 271, column: 3, scope: !355)
!374 = !DILocation(line: 272, column: 36, scope: !355)
!375 = !DILocation(line: 272, column: 56, scope: !355)
!376 = !DILocation(line: 272, column: 67, scope: !355)
!377 = !DILocation(line: 272, column: 3, scope: !355)
!378 = !DILocation(line: 273, column: 3, scope: !355)
!379 = !DILocation(line: 274, column: 1, scope: !355)
!380 = !DISubprogram(name: "Create_File", scope: !207, file: !207, line: 173, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !212)
!381 = !DISubprogram(name: "Write_Shorts", scope: !207, file: !207, line: 176, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !212)
!382 = !DISubprogram(name: "Write_Longs", scope: !207, file: !207, line: 177, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !212)
!383 = distinct !DISubprogram(name: "Deallocate_Normal", scope: !3, file: !3, line: 277, type: !384, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !386)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !71}
!386 = !{!387}
!387 = !DILocalVariable(name: "address", arg: 1, scope: !383, file: !3, line: 278, type: !71)
!388 = !DILocation(line: 0, scope: !383)
!389 = !DILocation(line: 280, column: 3, scope: !383)
!390 = !DILocation(line: 284, column: 12, scope: !383)
!391 = !DILocation(line: 285, column: 1, scope: !383)
