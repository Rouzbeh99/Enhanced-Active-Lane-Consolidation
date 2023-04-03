; ModuleID = 'opacity.c'
source_filename = "opacity.c"
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
@opc_len = dso_local global [3 x i16] zeroinitializer, align 2, !dbg !0
@opc_length = dso_local global i32 0, align 4, !dbg !17
@opc_address = dso_local global ptr null, align 8, !dbg !20
@Global = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"    Allocating opacity map of %ld bytes...\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"    No space available for map.\0A\00", align 1
@map_address = external local_unnamed_addr global ptr, align 8
@density_epsilon = external local_unnamed_addr global i64, align 8
@nmag_epsilon = external local_unnamed_addr global float, align 4
@density_opacity = external local_unnamed_addr global [256 x float], align 16
@magnitude_opacity = external local_unnamed_addr global [443 x float], align 16
@opacity_epsilon = external local_unnamed_addr global float, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c".opc\00", align 1
@opc_version = dso_local global i16 0, align 2, !dbg !14
@.str.4 = private unnamed_addr constant [32 x i8] c"    Can't load version %d file\0A\00", align 1
@str = private unnamed_addr constant [29 x i8] c"    Computing opacity map...\00", align 1
@str.8 = private unnamed_addr constant [42 x i8] c"    Loading opacity map from .opc file...\00", align 1
@str.9 = private unnamed_addr constant [42 x i8] c"    Storing opacity map into .opc file...\00", align 1
@str.10 = private unnamed_addr constant [32 x i8] c"    Deallocating opacity map...\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Compute_Opacity() local_unnamed_addr #0 !dbg !32 {
entry:
  call void @llvm.dbg.value(metadata i64 0, metadata !36, metadata !DIExpression()), !dbg !37
  br label %for.body, !dbg !38

for.body:                                         ; preds = %entry, %for.body
  %i.011 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.011, metadata !36, metadata !DIExpression()), !dbg !37
  %arrayidx = getelementptr inbounds [3 x i16], ptr @map_len, i64 0, i64 %i.011, !dbg !40
  %0 = load i16, ptr %arrayidx, align 2, !dbg !40
  %sub = add i16 %0, -2, !dbg !43
  %arrayidx2 = getelementptr inbounds [3 x i16], ptr @opc_len, i64 0, i64 %i.011, !dbg !44
  store i16 %sub, ptr %arrayidx2, align 2, !dbg !45
  %inc = add nuw nsw i64 %i.011, 1, !dbg !46
  call void @llvm.dbg.value(metadata i64 %inc, metadata !36, metadata !DIExpression()), !dbg !37
  %exitcond.not = icmp eq i64 %inc, 3, !dbg !47
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !38, !llvm.loop !48

for.end:                                          ; preds = %for.body
  %1 = load i16, ptr @opc_len, align 2, !dbg !52
  %conv3 = sext i16 %1 to i32, !dbg !52
  %2 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @opc_len, i64 0, i64 1), align 2, !dbg !53
  %conv4 = sext i16 %2 to i32, !dbg !53
  %mul = mul nsw i32 %conv4, %conv3, !dbg !54
  %3 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @opc_len, i64 0, i64 2), align 2, !dbg !55
  %conv5 = sext i16 %3 to i32, !dbg !55
  %mul6 = mul nsw i32 %mul, %conv5, !dbg !56
  store i32 %mul6, ptr @opc_length, align 4, !dbg !57
  %conv7 = sext i32 %mul6 to i64, !dbg !58
  tail call void @Allocate_Opacity(ptr noundef nonnull @opc_address, i64 noundef %conv7), !dbg !59
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !60
  %4 = load ptr, ptr @Global, align 8, !dbg !61
  store i64 0, ptr %4, align 8, !dbg !62
  tail call void @Opacity_Compute(), !dbg !63
  ret void, !dbg !64
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Allocate_Opacity(ptr nocapture noundef %address, i64 noundef %length) local_unnamed_addr #0 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata ptr %address, metadata !70, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i64 %length, metadata !71, metadata !DIExpression()), !dbg !73
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i64 noundef %length), !dbg !74
  %call2 = tail call noalias ptr @malloc(i64 noundef %length) #14, !dbg !75
  store ptr %call2, ptr %address, align 8, !dbg !76
  %cmp = icmp eq ptr %call2, null, !dbg !77
  br i1 %cmp, label %if.then, label %if.end, !dbg !79

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str.2) #15, !dbg !80
  br label %if.end, !dbg !80

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !72, metadata !DIExpression()), !dbg !73
  %cmp310 = icmp sgt i64 %length, 0, !dbg !81
  br i1 %cmp310, label %for.body, label %for.end, !dbg !84

for.body:                                         ; preds = %if.end, %for.body
  %i.011 = phi i64 [ %inc, %for.body ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.011, metadata !72, metadata !DIExpression()), !dbg !73
  %0 = load ptr, ptr %address, align 8, !dbg !85
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %i.011, !dbg !86
  store i8 0, ptr %add.ptr, align 1, !dbg !87
  %inc = add nuw nsw i64 %i.011, 1, !dbg !88
  call void @llvm.dbg.value(metadata i64 %inc, metadata !72, metadata !DIExpression()), !dbg !73
  %exitcond.not = icmp eq i64 %inc, %length, !dbg !81
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !84, !llvm.loop !89

for.end:                                          ; preds = %for.body, %if.end
  ret void, !dbg !91
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Opacity_Compute() local_unnamed_addr #0 !dbg !92 {
entry:
  %0 = load ptr, ptr @Global, align 8, !dbg !117
  %IndexLock = getelementptr inbounds %struct.GlobalMemory, ptr %0, i64 0, i32 4, !dbg !119
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %IndexLock) #15, !dbg !120
  %1 = load ptr, ptr @Global, align 8, !dbg !121
  %2 = load i64, ptr %1, align 8, !dbg !122
  %inc = add nsw i64 %2, 1, !dbg !122
  store i64 %inc, ptr %1, align 8, !dbg !122
  call void @llvm.dbg.value(metadata i64 %2, metadata !116, metadata !DIExpression()), !dbg !123
  %3 = load ptr, ptr @Global, align 8, !dbg !124
  %IndexLock1 = getelementptr inbounds %struct.GlobalMemory, ptr %3, i64 0, i32 4, !dbg !126
  %call2 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %IndexLock1) #15, !dbg !127
  call void @llvm.dbg.value(metadata !DIArgList(i64 %2, i64 undef), metadata !116, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mod, DW_OP_stack_value)), !dbg !123
  %4 = load i16, ptr @opc_len, align 2, !dbg !128
  call void @llvm.dbg.value(metadata i64 undef, metadata !108, metadata !DIExpression()), !dbg !123
  %5 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @opc_len, i64 0, i64 1), align 2, !dbg !129
  call void @llvm.dbg.value(metadata i64 undef, metadata !109, metadata !DIExpression()), !dbg !123
  %6 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @opc_len, i64 0, i64 2), align 2, !dbg !130
  call void @llvm.dbg.value(metadata i64 undef, metadata !110, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef), metadata !111, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !123
  call void @llvm.dbg.value(metadata !DIArgList(i64 %2, i64 undef, i64 undef, i64 undef), metadata !112, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_mod, DW_OP_LLVM_arg, 2, DW_OP_mod, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !123
  call void @llvm.dbg.value(metadata i64 undef, metadata !113, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata !DIArgList(i64 %2, i64 undef, i64 undef, i64 undef, i64 undef), metadata !114, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_mod, DW_OP_LLVM_arg, 3, DW_OP_div, DW_OP_LLVM_arg, 2, DW_OP_mod, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !123
  %conv81 = sext i16 %5 to i64, !dbg !131
  call void @llvm.dbg.value(metadata i64 undef, metadata !115, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata !DIArgList(i64 %2, i64 undef, i64 undef, i64 undef, i64 undef), metadata !106, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_mod, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_div, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !123
  %conv94 = sext i16 %6 to i64, !dbg !132
  call void @llvm.dbg.value(metadata i64 undef, metadata !107, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i64 0, metadata !106, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i64 %conv94, metadata !107, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i64 0, metadata !114, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i64 %conv81, metadata !115, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i64 0, metadata !112, metadata !DIExpression()), !dbg !123
  %conv105 = sext i16 %4 to i64, !dbg !133
  call void @llvm.dbg.value(metadata i64 %conv105, metadata !113, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i64 0, metadata !99, metadata !DIExpression()), !dbg !123
  %cmp106291 = icmp sgt i16 %6, 0, !dbg !134
  %cmp109288 = icmp sgt i16 %5, 0
  %or.cond = select i1 %cmp106291, i1 %cmp109288, i1 false, !dbg !137
  %cmp113286 = icmp sgt i16 %4, 0
  %or.cond305 = select i1 %or.cond, i1 %cmp113286, i1 false, !dbg !137
  br i1 %or.cond305, label %for.cond108.preheader.us.us, label %for.end230, !dbg !137

for.cond108.preheader.us.us:                      ; preds = %entry, %for.cond108.for.inc228_crit_edge.split.us.us.us
  %outz.0292.us.us = phi i64 [ %add118.us.us, %for.cond108.for.inc228_crit_edge.split.us.us.us ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %outz.0292.us.us, metadata !99, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i64 0, metadata !98, metadata !DIExpression()), !dbg !123
  %add118.us.us = add nuw nsw i64 %outz.0292.us.us, 1
  %add167.us.us = add nuw nsw i64 %outz.0292.us.us, 2
  br label %for.cond112.preheader.us.us.us, !dbg !138

for.cond112.preheader.us.us.us:                   ; preds = %for.cond112.for.inc225_crit_edge.us.us.us, %for.cond108.preheader.us.us
  %outy.0289.us.us.us = phi i64 [ 0, %for.cond108.preheader.us.us ], [ %add117.us.us.us, %for.cond112.for.inc225_crit_edge.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %outy.0289.us.us.us, metadata !98, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i64 0, metadata !97, metadata !DIExpression()), !dbg !123
  %add117.us.us.us = add nuw nsw i64 %outy.0289.us.us.us, 1
  br label %for.body115.us.us.us, !dbg !141

for.body115.us.us.us:                             ; preds = %for.inc.us.us.us, %for.cond112.preheader.us.us.us
  %outx.0287.us.us.us = phi i64 [ 0, %for.cond112.preheader.us.us.us ], [ %add116.us.us.us, %for.inc.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %outx.0287.us.us.us, metadata !97, metadata !DIExpression()), !dbg !123
  %add116.us.us.us = add nuw nsw i64 %outx.0287.us.us.us, 1, !dbg !145
  call void @llvm.dbg.value(metadata i64 %add116.us.us.us, metadata !94, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i64 %add117.us.us.us, metadata !95, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i64 %add118.us.us, metadata !96, metadata !DIExpression()), !dbg !123
  %7 = load ptr, ptr @map_address, align 8, !dbg !148
  %8 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @map_len, i64 0, i64 1), align 2, !dbg !148
  %conv119.us.us.us = sext i16 %8 to i64, !dbg !148
  %mul120.us.us.us = mul nsw i64 %add118.us.us, %conv119.us.us.us, !dbg !148
  %add121.us.us.us = add nsw i64 %mul120.us.us.us, %add117.us.us.us, !dbg !148
  %9 = load i16, ptr @map_len, align 2, !dbg !148
  %conv122.us.us.us = sext i16 %9 to i64, !dbg !148
  %mul123.us.us.us = mul nsw i64 %add121.us.us.us, %conv122.us.us.us, !dbg !148
  %add.ptr.us.us.us = getelementptr inbounds i8, ptr %7, i64 %mul123.us.us.us, !dbg !148
  %add.ptr124.us.us.us = getelementptr inbounds i8, ptr %add.ptr.us.us.us, i64 %add116.us.us.us, !dbg !148
  %10 = load i8, ptr %add.ptr124.us.us.us, align 1, !dbg !148
  %conv125.us.us.us = zext i8 %10 to i64, !dbg !148
  call void @llvm.dbg.value(metadata i64 %conv125.us.us.us, metadata !100, metadata !DIExpression()), !dbg !123
  %11 = load i64, ptr @density_epsilon, align 8, !dbg !149
  %cmp126.us.us.us = icmp slt i64 %11, %conv125.us.us.us, !dbg !151
  br i1 %cmp126.us.us.us, label %if.then.us.us.us, label %for.inc.us.us.us.sink.split, !dbg !152

if.then.us.us.us:                                 ; preds = %for.body115.us.us.us
  %add134.us.us.us = add nuw nsw i64 %outx.0287.us.us.us, 2, !dbg !153
  %add.ptr135.us.us.us = getelementptr inbounds i8, ptr %add.ptr.us.us.us, i64 %add134.us.us.us, !dbg !153
  %12 = load i8, ptr %add.ptr135.us.us.us, align 1, !dbg !153
  %conv136.us.us.us = zext i8 %12 to i64, !dbg !155
  %add.ptr143.us.us.us = getelementptr inbounds i8, ptr %add.ptr.us.us.us, i64 %outx.0287.us.us.us, !dbg !156
  %13 = load i8, ptr %add.ptr143.us.us.us, align 1, !dbg !156
  %conv144.us.us.us = zext i8 %13 to i64, !dbg !157
  %sub145.us.us.us = sub nsw i64 %conv136.us.us.us, %conv144.us.us.us, !dbg !158
  %conv146.us.us.us = sitofp i64 %sub145.us.us.us to float, !dbg !159
  call void @llvm.dbg.value(metadata float %conv146.us.us.us, metadata !103, metadata !DIExpression()), !dbg !123
  %add149.us.us.us = add i64 %mul120.us.us.us, %outy.0289.us.us.us, !dbg !160
  %add150.us.us.us = add i64 %add149.us.us.us, 2, !dbg !160
  %mul152.us.us.us = mul nsw i64 %add150.us.us.us, %conv122.us.us.us, !dbg !160
  %add.ptr153.us.us.us = getelementptr inbounds i8, ptr %7, i64 %mul152.us.us.us, !dbg !160
  %add.ptr154.us.us.us = getelementptr inbounds i8, ptr %add.ptr153.us.us.us, i64 %add116.us.us.us, !dbg !160
  %14 = load i8, ptr %add.ptr154.us.us.us, align 1, !dbg !160
  %conv155.us.us.us = zext i8 %14 to i64, !dbg !161
  %mul161.us.us.us = mul nsw i64 %add149.us.us.us, %conv122.us.us.us, !dbg !162
  %add.ptr162.us.us.us = getelementptr inbounds i8, ptr %7, i64 %mul161.us.us.us, !dbg !162
  %add.ptr163.us.us.us = getelementptr inbounds i8, ptr %add.ptr162.us.us.us, i64 %add116.us.us.us, !dbg !162
  %15 = load i8, ptr %add.ptr163.us.us.us, align 1, !dbg !162
  %conv164.us.us.us = zext i8 %15 to i64, !dbg !163
  %sub165.us.us.us = sub nsw i64 %conv155.us.us.us, %conv164.us.us.us, !dbg !164
  %conv166.us.us.us = sitofp i64 %sub165.us.us.us to float, !dbg !165
  call void @llvm.dbg.value(metadata float %conv166.us.us.us, metadata !104, metadata !DIExpression()), !dbg !123
  %mul169.us.us.us = mul nsw i64 %add167.us.us, %conv119.us.us.us, !dbg !166
  %add170.us.us.us = add nsw i64 %mul169.us.us.us, %add117.us.us.us, !dbg !166
  %mul172.us.us.us = mul nsw i64 %add170.us.us.us, %conv122.us.us.us, !dbg !166
  %add.ptr173.us.us.us = getelementptr inbounds i8, ptr %7, i64 %mul172.us.us.us, !dbg !166
  %add.ptr174.us.us.us = getelementptr inbounds i8, ptr %add.ptr173.us.us.us, i64 %add116.us.us.us, !dbg !166
  %16 = load i8, ptr %add.ptr174.us.us.us, align 1, !dbg !166
  %conv175.us.us.us = zext i8 %16 to i64, !dbg !167
  %mul178.us.us.us = mul nsw i64 %outz.0292.us.us, %conv119.us.us.us, !dbg !168
  %add179.us.us.us = add nsw i64 %mul178.us.us.us, %add117.us.us.us, !dbg !168
  %mul181.us.us.us = mul nsw i64 %add179.us.us.us, %conv122.us.us.us, !dbg !168
  %add.ptr182.us.us.us = getelementptr inbounds i8, ptr %7, i64 %mul181.us.us.us, !dbg !168
  %add.ptr183.us.us.us = getelementptr inbounds i8, ptr %add.ptr182.us.us.us, i64 %add116.us.us.us, !dbg !168
  %17 = load i8, ptr %add.ptr183.us.us.us, align 1, !dbg !168
  %conv184.us.us.us = zext i8 %17 to i64, !dbg !169
  %sub185.us.us.us = sub nsw i64 %conv175.us.us.us, %conv184.us.us.us, !dbg !170
  %conv186.us.us.us = sitofp i64 %sub185.us.us.us to float, !dbg !171
  call void @llvm.dbg.value(metadata float %conv186.us.us.us, metadata !105, metadata !DIExpression()), !dbg !123
  %mul188.us.us.us = fmul float %conv166.us.us.us, %conv166.us.us.us, !dbg !172
  %18 = tail call float @llvm.fmuladd.f32(float %conv146.us.us.us, float %conv146.us.us.us, float %mul188.us.us.us), !dbg !173
  %19 = tail call float @llvm.fmuladd.f32(float %conv186.us.us.us, float %conv186.us.us.us, float %18), !dbg !174
  call void @llvm.dbg.value(metadata float %19, metadata !101, metadata !DIExpression()), !dbg !123
  %20 = load float, ptr @nmag_epsilon, align 4, !dbg !175
  %cmp190.us.us.us = fcmp ogt float %19, %20, !dbg !177
  br i1 %cmp190.us.us.us, label %if.then192.us.us.us, label %for.inc.us.us.us, !dbg !178

if.then192.us.us.us:                              ; preds = %if.then.us.us.us
  %conv193.us.us.us = fpext float %19 to double, !dbg !179
  %call194.us.us.us = tail call double @sqrt(double noundef %conv193.us.us.us) #15, !dbg !181
  %mul195.us.us.us = fmul double %call194.us.us.us, 5.000000e-01, !dbg !182
  %conv196.us.us.us = fptrunc double %mul195.us.us.us to float, !dbg !183
  call void @llvm.dbg.value(metadata float %conv196.us.us.us, metadata !101, metadata !DIExpression()), !dbg !123
  %arrayidx.us.us.us = getelementptr inbounds [256 x float], ptr @density_opacity, i64 0, i64 %conv125.us.us.us, !dbg !184
  %21 = load float, ptr %arrayidx.us.us.us, align 4, !dbg !184
  %conv197.us.us.us = fptosi float %conv196.us.us.us to i64, !dbg !185
  %arrayidx198.us.us.us = getelementptr inbounds [443 x float], ptr @magnitude_opacity, i64 0, i64 %conv197.us.us.us, !dbg !186
  %22 = load float, ptr %arrayidx198.us.us.us, align 4, !dbg !186
  %mul199.us.us.us = fmul float %21, %22, !dbg !187
  call void @llvm.dbg.value(metadata float %mul199.us.us.us, metadata !102, metadata !DIExpression()), !dbg !123
  %23 = load float, ptr @opacity_epsilon, align 4, !dbg !188
  %cmp200.us.us.us = fcmp ogt float %mul199.us.us.us, %23, !dbg !190
  br i1 %cmp200.us.us.us, label %if.then202.us.us.us, label %for.inc.us.us.us, !dbg !191

if.then202.us.us.us:                              ; preds = %if.then192.us.us.us
  %mul203.us.us.us = fmul float %mul199.us.us.us, 2.550000e+02, !dbg !192
  %conv204.us.us.us = fpext float %mul203.us.us.us to double, !dbg !192
  %add205.us.us.us = fadd double %conv204.us.us.us, 5.000000e-01, !dbg !192
  %conv206.us.us.us = fptosi double %add205.us.us.us to i64, !dbg !192
  %conv207.us.us.us = trunc i64 %conv206.us.us.us to i8, !dbg !192
  br label %for.inc.us.us.us.sink.split, !dbg !193

for.inc.us.us.us.sink.split:                      ; preds = %for.body115.us.us.us, %if.then202.us.us.us
  %conv207.us.us.us.sink = phi i8 [ %conv207.us.us.us, %if.then202.us.us.us ], [ 0, %for.body115.us.us.us ]
  %24 = load ptr, ptr @opc_address, align 8, !dbg !194
  %25 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @opc_len, i64 0, i64 1), align 2, !dbg !194
  %conv208.us.us.us = sext i16 %25 to i64, !dbg !194
  %mul209.us.us.us = mul nsw i64 %outz.0292.us.us, %conv208.us.us.us, !dbg !194
  %add210.us.us.us = add nsw i64 %mul209.us.us.us, %outy.0289.us.us.us, !dbg !194
  %26 = load i16, ptr @opc_len, align 2, !dbg !194
  %conv211.us.us.us = sext i16 %26 to i64, !dbg !194
  %mul212.us.us.us = mul nsw i64 %add210.us.us.us, %conv211.us.us.us, !dbg !194
  %add.ptr213.us.us.us = getelementptr inbounds i8, ptr %24, i64 %mul212.us.us.us, !dbg !194
  %add.ptr214.us.us.us = getelementptr inbounds i8, ptr %add.ptr213.us.us.us, i64 %outx.0287.us.us.us, !dbg !194
  store i8 %conv207.us.us.us.sink, ptr %add.ptr214.us.us.us, align 1, !dbg !194
  br label %for.inc.us.us.us, !dbg !195

for.inc.us.us.us:                                 ; preds = %for.inc.us.us.us.sink.split, %if.then192.us.us.us, %if.then.us.us.us
  call void @llvm.dbg.value(metadata i64 %add116.us.us.us, metadata !97, metadata !DIExpression()), !dbg !123
  %exitcond.not = icmp eq i64 %add116.us.us.us, %conv105, !dbg !195
  br i1 %exitcond.not, label %for.cond112.for.inc225_crit_edge.us.us.us, label %for.body115.us.us.us, !dbg !141, !llvm.loop !196

for.cond112.for.inc225_crit_edge.us.us.us:        ; preds = %for.inc.us.us.us
  call void @llvm.dbg.value(metadata i64 %add117.us.us.us, metadata !98, metadata !DIExpression()), !dbg !123
  %exitcond303.not = icmp eq i64 %add117.us.us.us, %conv81, !dbg !198
  br i1 %exitcond303.not, label %for.cond108.for.inc228_crit_edge.split.us.us.us, label %for.cond112.preheader.us.us.us, !dbg !138, !llvm.loop !199

for.cond108.for.inc228_crit_edge.split.us.us.us:  ; preds = %for.cond112.for.inc225_crit_edge.us.us.us
  call void @llvm.dbg.value(metadata i64 %add118.us.us, metadata !99, metadata !DIExpression()), !dbg !123
  %exitcond304.not = icmp eq i64 %add118.us.us, %conv94, !dbg !134
  br i1 %exitcond304.not, label %for.end230, label %for.cond108.preheader.us.us, !dbg !137, !llvm.loop !201

for.end230:                                       ; preds = %for.cond108.for.inc228_crit_edge.split.us.us.us, %entry
  ret void, !dbg !203
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare !dbg !204 void @Error(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !211 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !245 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @Load_Opacity(ptr nocapture noundef readonly %filename) local_unnamed_addr #0 !dbg !246 {
entry:
  %local_filename = alloca [201 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %filename, metadata !250, metadata !DIExpression()), !dbg !256
  call void @llvm.lifetime.start.p0(i64 201, ptr nonnull %local_filename) #15, !dbg !257
  call void @llvm.dbg.declare(metadata ptr %local_filename, metadata !251, metadata !DIExpression()), !dbg !258
  %call = call ptr @strcpy(ptr noundef nonnull %local_filename, ptr noundef nonnull dereferenceable(1) %filename) #15, !dbg !259
  %strlen = call i64 @strlen(ptr noundef nonnull %local_filename), !dbg !260
  %endptr = getelementptr i8, ptr %local_filename, i64 %strlen, !dbg !260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false), !dbg !260
  %call4 = call i32 @Open_File(ptr noundef nonnull %local_filename) #15, !dbg !261
  call void @llvm.dbg.value(metadata i32 %call4, metadata !255, metadata !DIExpression()), !dbg !256
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @opc_version, i64 noundef 2) #15, !dbg !262
  %0 = load i16, ptr @opc_version, align 2, !dbg !263
  %cmp.not = icmp eq i16 %0, 1, !dbg !265
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !266

if.then:                                          ; preds = %entry
  %conv = sext i16 %0 to i32, !dbg !263
  call void (ptr, ...) @Error(ptr noundef nonnull @.str.4, i32 noundef %conv) #15, !dbg !267
  br label %if.end, !dbg !267

if.end:                                           ; preds = %if.then, %entry
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @opc_len, i64 noundef 6) #15, !dbg !268
  call void @Read_Longs(i32 noundef %call4, ptr noundef nonnull @opc_length, i64 noundef 4) #15, !dbg !269
  %1 = load i32, ptr @opc_length, align 4, !dbg !270
  %conv7 = sext i32 %1 to i64, !dbg !270
  call void @Allocate_Opacity(ptr noundef nonnull @opc_address, i64 noundef %conv7), !dbg !271
  %puts = call i32 @puts(ptr nonnull @str.8), !dbg !272
  %2 = load ptr, ptr @opc_address, align 8, !dbg !273
  %3 = load i32, ptr @opc_length, align 4, !dbg !274
  %conv9 = sext i32 %3 to i64, !dbg !274
  call void @Read_Bytes(i32 noundef %call4, ptr noundef %2, i64 noundef %conv9) #15, !dbg !275
  call void @Close_File(i32 noundef %call4) #15, !dbg !276
  call void @llvm.lifetime.end.p0(i64 201, ptr nonnull %local_filename) #15, !dbg !277
  ret void, !dbg !277
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

declare !dbg !278 i32 @Open_File(ptr noundef) local_unnamed_addr #5

declare !dbg !281 void @Read_Shorts(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !284 void @Read_Longs(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !285 void @Read_Bytes(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !286 void @Close_File(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @Store_Opacity(ptr nocapture noundef readonly %filename) local_unnamed_addr #0 !dbg !289 {
entry:
  %local_filename = alloca [201 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %filename, metadata !291, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 201, ptr nonnull %local_filename) #15, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %local_filename, metadata !292, metadata !DIExpression()), !dbg !296
  %call = call ptr @strcpy(ptr noundef nonnull %local_filename, ptr noundef nonnull dereferenceable(1) %filename) #15, !dbg !297
  %strlen = call i64 @strlen(ptr noundef nonnull %local_filename), !dbg !298
  %endptr = getelementptr i8, ptr %local_filename, i64 %strlen, !dbg !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false), !dbg !298
  %call4 = call i32 @Create_File(ptr noundef nonnull %local_filename) #15, !dbg !299
  call void @llvm.dbg.value(metadata i32 %call4, metadata !293, metadata !DIExpression()), !dbg !294
  store i16 1, ptr @opc_version, align 2, !dbg !300
  %call6 = call ptr @strcpy(ptr noundef nonnull %local_filename, ptr noundef nonnull dereferenceable(1) %filename) #15, !dbg !301
  %strlen17 = call i64 @strlen(ptr noundef nonnull %local_filename), !dbg !302
  %endptr18 = getelementptr i8, ptr %local_filename, i64 %strlen17, !dbg !302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr18, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false), !dbg !302
  %call10 = call i32 @Create_File(ptr noundef nonnull %local_filename) #15, !dbg !303
  call void @llvm.dbg.value(metadata i32 %call10, metadata !293, metadata !DIExpression()), !dbg !294
  call void @Write_Shorts(i32 noundef %call10, ptr noundef nonnull @opc_version, i64 noundef 2) #15, !dbg !304
  call void @Write_Shorts(i32 noundef %call10, ptr noundef nonnull @opc_len, i64 noundef 6) #15, !dbg !305
  call void @Write_Longs(i32 noundef %call10, ptr noundef nonnull @opc_length, i64 noundef 4) #15, !dbg !306
  %puts = call i32 @puts(ptr nonnull @str.9), !dbg !307
  %0 = load ptr, ptr @opc_address, align 8, !dbg !308
  %1 = load i32, ptr @opc_length, align 4, !dbg !309
  %conv = sext i32 %1 to i64, !dbg !309
  call void @Write_Bytes(i32 noundef %call10, ptr noundef %0, i64 noundef %conv) #15, !dbg !310
  call void @Close_File(i32 noundef %call10) #15, !dbg !311
  call void @llvm.lifetime.end.p0(i64 201, ptr nonnull %local_filename) #15, !dbg !312
  ret void, !dbg !312
}

declare !dbg !313 i32 @Create_File(ptr noundef) local_unnamed_addr #5

declare !dbg !314 void @Write_Shorts(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !315 void @Write_Longs(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !316 void @Write_Bytes(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @Deallocate_Opacity(ptr nocapture noundef writeonly %address) local_unnamed_addr #9 !dbg !317 {
entry:
  call void @llvm.dbg.value(metadata ptr %address, metadata !321, metadata !DIExpression()), !dbg !322
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !323
  store ptr null, ptr %address, align 8, !dbg !324
  ret void, !dbg !325
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
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "opc_len", scope: !2, file: !3, line: 37, type: !22, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "opacity.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "efc039a5e79fe5f8cb2c794d1d4d2281")
!4 = !{!5, !9, !10, !11, !12}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "OPACITY", file: !7, line: 33, baseType: !8)
!7 = !DIFile(filename: "./my_types.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "1c0e36810bc34cd72ba4bfe4a2cdcc97")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!11 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!13 = !{!14, !0, !17, !20}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "opc_version", scope: !2, file: !3, line: 35, type: !16, isLocal: false, isDefinition: true)
!16 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "opc_length", scope: !2, file: !3, line: 39, type: !19, isLocal: false, isDefinition: true)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "opc_address", scope: !2, file: !3, line: 41, type: !5, isLocal: false, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 48, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 3)
!25 = !{i32 7, !"Dwarf Version", i32 5}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{i32 7, !"PIC Level", i32 2}
!29 = !{i32 7, !"PIE Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 2}
!31 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!32 = distinct !DISubprogram(name: "Compute_Opacity", scope: !3, file: !3, line: 65, type: !33, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{null}
!35 = !{!36}
!36 = !DILocalVariable(name: "i", scope: !32, file: !3, line: 67, type: !11)
!37 = !DILocation(line: 0, scope: !32)
!38 = !DILocation(line: 72, column: 3, scope: !39)
!39 = distinct !DILexicalBlock(scope: !32, file: !3, line: 72, column: 3)
!40 = !DILocation(line: 73, column: 18, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !3, line: 72, column: 24)
!42 = distinct !DILexicalBlock(scope: !39, file: !3, line: 72, column: 3)
!43 = !DILocation(line: 73, column: 29, scope: !41)
!44 = !DILocation(line: 73, column: 5, scope: !41)
!45 = !DILocation(line: 73, column: 16, scope: !41)
!46 = !DILocation(line: 72, column: 20, scope: !42)
!47 = !DILocation(line: 72, column: 14, scope: !42)
!48 = distinct !{!48, !38, !49, !50, !51}
!49 = !DILocation(line: 74, column: 3, scope: !39)
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !DILocation(line: 75, column: 16, scope: !32)
!53 = !DILocation(line: 75, column: 29, scope: !32)
!54 = !DILocation(line: 75, column: 27, scope: !32)
!55 = !DILocation(line: 75, column: 42, scope: !32)
!56 = !DILocation(line: 75, column: 40, scope: !32)
!57 = !DILocation(line: 75, column: 14, scope: !32)
!58 = !DILocation(line: 76, column: 34, scope: !32)
!59 = !DILocation(line: 76, column: 3, scope: !32)
!60 = !DILocation(line: 78, column: 3, scope: !32)
!61 = !DILocation(line: 80, column: 3, scope: !32)
!62 = !DILocation(line: 80, column: 17, scope: !32)
!63 = !DILocation(line: 100, column: 3, scope: !32)
!64 = !DILocation(line: 102, column: 1, scope: !32)
!65 = distinct !DISubprogram(name: "Allocate_Opacity", scope: !3, file: !3, line: 105, type: !66, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !69)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68, !11}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!69 = !{!70, !71, !72}
!70 = !DILocalVariable(name: "address", arg: 1, scope: !65, file: !3, line: 106, type: !68)
!71 = !DILocalVariable(name: "length", arg: 2, scope: !65, file: !3, line: 107, type: !11)
!72 = !DILocalVariable(name: "i", scope: !65, file: !3, line: 109, type: !11)
!73 = !DILocation(line: 0, scope: !65)
!74 = !DILocation(line: 111, column: 3, scope: !65)
!75 = !DILocation(line: 114, column: 25, scope: !65)
!76 = !DILocation(line: 114, column: 12, scope: !65)
!77 = !DILocation(line: 116, column: 16, scope: !78)
!78 = distinct !DILexicalBlock(scope: !65, file: !3, line: 116, column: 7)
!79 = !DILocation(line: 116, column: 7, scope: !65)
!80 = !DILocation(line: 117, column: 5, scope: !78)
!81 = !DILocation(line: 123, column: 14, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !3, line: 123, column: 3)
!83 = distinct !DILexicalBlock(scope: !65, file: !3, line: 123, column: 3)
!84 = !DILocation(line: 123, column: 3, scope: !83)
!85 = !DILocation(line: 123, column: 30, scope: !82)
!86 = !DILocation(line: 123, column: 38, scope: !82)
!87 = !DILocation(line: 123, column: 42, scope: !82)
!88 = !DILocation(line: 123, column: 24, scope: !82)
!89 = distinct !{!89, !84, !90, !50, !51}
!90 = !DILocation(line: 123, column: 44, scope: !83)
!91 = !DILocation(line: 125, column: 1, scope: !65)
!92 = distinct !DISubprogram(name: "Opacity_Compute", scope: !3, file: !3, line: 128, type: !33, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!94 = !DILocalVariable(name: "inx", scope: !92, file: !3, line: 130, type: !11)
!95 = !DILocalVariable(name: "iny", scope: !92, file: !3, line: 130, type: !11)
!96 = !DILocalVariable(name: "inz", scope: !92, file: !3, line: 130, type: !11)
!97 = !DILocalVariable(name: "outx", scope: !92, file: !3, line: 131, type: !11)
!98 = !DILocalVariable(name: "outy", scope: !92, file: !3, line: 131, type: !11)
!99 = !DILocalVariable(name: "outz", scope: !92, file: !3, line: 131, type: !11)
!100 = !DILocalVariable(name: "density", scope: !92, file: !3, line: 132, type: !11)
!101 = !DILocalVariable(name: "magnitude", scope: !92, file: !3, line: 133, type: !10)
!102 = !DILocalVariable(name: "opacity", scope: !92, file: !3, line: 134, type: !10)
!103 = !DILocalVariable(name: "grd_x", scope: !92, file: !3, line: 134, type: !10)
!104 = !DILocalVariable(name: "grd_y", scope: !92, file: !3, line: 134, type: !10)
!105 = !DILocalVariable(name: "grd_z", scope: !92, file: !3, line: 134, type: !10)
!106 = !DILocalVariable(name: "zstart", scope: !92, file: !3, line: 135, type: !11)
!107 = !DILocalVariable(name: "zstop", scope: !92, file: !3, line: 135, type: !11)
!108 = !DILocalVariable(name: "num_xqueue", scope: !92, file: !3, line: 136, type: !11)
!109 = !DILocalVariable(name: "num_yqueue", scope: !92, file: !3, line: 136, type: !11)
!110 = !DILocalVariable(name: "num_zqueue", scope: !92, file: !3, line: 136, type: !11)
!111 = !DILocalVariable(name: "num_queue", scope: !92, file: !3, line: 136, type: !11)
!112 = !DILocalVariable(name: "xstart", scope: !92, file: !3, line: 137, type: !11)
!113 = !DILocalVariable(name: "xstop", scope: !92, file: !3, line: 137, type: !11)
!114 = !DILocalVariable(name: "ystart", scope: !92, file: !3, line: 137, type: !11)
!115 = !DILocalVariable(name: "ystop", scope: !92, file: !3, line: 137, type: !11)
!116 = !DILocalVariable(name: "my_node", scope: !92, file: !3, line: 138, type: !11)
!117 = !DILocation(line: 140, column: 25, scope: !118)
!118 = distinct !DILexicalBlock(scope: !92, file: !3, line: 140, column: 3)
!119 = !DILocation(line: 140, column: 33, scope: !118)
!120 = !DILocation(line: 140, column: 4, scope: !118)
!121 = !DILocation(line: 141, column: 13, scope: !92)
!122 = !DILocation(line: 141, column: 26, scope: !92)
!123 = !DILocation(line: 0, scope: !92)
!124 = !DILocation(line: 142, column: 27, scope: !125)
!125 = distinct !DILexicalBlock(scope: !92, file: !3, line: 142, column: 3)
!126 = !DILocation(line: 142, column: 35, scope: !125)
!127 = !DILocation(line: 142, column: 4, scope: !125)
!128 = !DILocation(line: 149, column: 16, scope: !92)
!129 = !DILocation(line: 150, column: 16, scope: !92)
!130 = !DILocation(line: 151, column: 16, scope: !92)
!131 = !DILocation(line: 156, column: 11, scope: !92)
!132 = !DILocation(line: 158, column: 11, scope: !92)
!133 = !DILocation(line: 166, column: 11, scope: !92)
!134 = !DILocation(line: 169, column: 25, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !3, line: 169, column: 3)
!136 = distinct !DILexicalBlock(scope: !92, file: !3, line: 169, column: 3)
!137 = !DILocation(line: 169, column: 3, scope: !136)
!138 = !DILocation(line: 170, column: 5, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !3, line: 170, column: 5)
!140 = distinct !DILexicalBlock(scope: !135, file: !3, line: 169, column: 41)
!141 = !DILocation(line: 171, column: 7, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !3, line: 171, column: 7)
!143 = distinct !DILexicalBlock(scope: !144, file: !3, line: 170, column: 43)
!144 = distinct !DILexicalBlock(scope: !139, file: !3, line: 170, column: 5)
!145 = !DILocation(line: 173, column: 14, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !3, line: 171, column: 45)
!147 = distinct !DILexicalBlock(scope: !142, file: !3, line: 171, column: 7)
!148 = !DILocation(line: 177, column: 12, scope: !146)
!149 = !DILocation(line: 178, column: 16, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !3, line: 178, column: 6)
!151 = !DILocation(line: 178, column: 14, scope: !150)
!152 = !DILocation(line: 178, column: 6, scope: !146)
!153 = !DILocation(line: 180, column: 26, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !3, line: 178, column: 33)
!155 = !DILocation(line: 180, column: 20, scope: !154)
!156 = !DILocation(line: 180, column: 53, scope: !154)
!157 = !DILocation(line: 180, column: 47, scope: !154)
!158 = !DILocation(line: 180, column: 45, scope: !154)
!159 = !DILocation(line: 180, column: 12, scope: !154)
!160 = !DILocation(line: 181, column: 26, scope: !154)
!161 = !DILocation(line: 181, column: 20, scope: !154)
!162 = !DILocation(line: 181, column: 53, scope: !154)
!163 = !DILocation(line: 181, column: 47, scope: !154)
!164 = !DILocation(line: 181, column: 45, scope: !154)
!165 = !DILocation(line: 181, column: 12, scope: !154)
!166 = !DILocation(line: 182, column: 26, scope: !154)
!167 = !DILocation(line: 182, column: 20, scope: !154)
!168 = !DILocation(line: 182, column: 53, scope: !154)
!169 = !DILocation(line: 182, column: 47, scope: !154)
!170 = !DILocation(line: 182, column: 45, scope: !154)
!171 = !DILocation(line: 182, column: 12, scope: !154)
!172 = !DILocation(line: 183, column: 33, scope: !154)
!173 = !DILocation(line: 183, column: 27, scope: !154)
!174 = !DILocation(line: 183, column: 39, scope: !154)
!175 = !DILocation(line: 186, column: 20, scope: !176)
!176 = distinct !DILexicalBlock(scope: !154, file: !3, line: 186, column: 8)
!177 = !DILocation(line: 186, column: 18, scope: !176)
!178 = !DILocation(line: 186, column: 8, scope: !154)
!179 = !DILocation(line: 187, column: 26, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !3, line: 186, column: 34)
!181 = !DILocation(line: 187, column: 21, scope: !180)
!182 = !DILocation(line: 187, column: 20, scope: !180)
!183 = !DILocation(line: 187, column: 18, scope: !180)
!184 = !DILocation(line: 192, column: 16, scope: !180)
!185 = !DILocation(line: 193, column: 26, scope: !180)
!186 = !DILocation(line: 193, column: 8, scope: !180)
!187 = !DILocation(line: 192, column: 41, scope: !180)
!188 = !DILocation(line: 195, column: 20, scope: !189)
!189 = distinct !DILexicalBlock(scope: !180, file: !3, line: 195, column: 10)
!190 = !DILocation(line: 195, column: 18, scope: !189)
!191 = !DILocation(line: 195, column: 10, scope: !180)
!192 = !DILocation(line: 196, column: 30, scope: !189)
!193 = !DILocation(line: 196, column: 8, scope: !189)
!194 = !DILocation(line: 0, scope: !150)
!195 = !DILocation(line: 171, column: 29, scope: !147)
!196 = distinct !{!196, !141, !197, !50, !51}
!197 = !DILocation(line: 201, column: 7, scope: !142)
!198 = !DILocation(line: 170, column: 27, scope: !144)
!199 = distinct !{!199, !138, !200, !50, !51}
!200 = !DILocation(line: 202, column: 5, scope: !139)
!201 = distinct !{!201, !137, !202, !50, !51}
!202 = !DILocation(line: 203, column: 3, scope: !136)
!203 = !DILocation(line: 217, column: 1, scope: !92)
!204 = !DISubprogram(name: "Error", scope: !205, file: !205, line: 187, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!205 = !DIFile(filename: "./global.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "f049690031a7f12768b0765e4f4983eb")
!206 = !DISubroutineType(types: !207)
!207 = !{null, !208, null}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!210 = !{}
!211 = !DISubprogram(name: "pthread_mutex_lock", scope: !212, file: !212, line: 738, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!212 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!213 = !DISubroutineType(types: !214)
!214 = !{!19, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !217, line: 72, baseType: !218)
!217 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !217, line: 67, size: 320, elements: !219)
!219 = !{!220, !240, !244}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !218, file: !217, line: 69, baseType: !221, size: 320)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !222, line: 22, size: 320, elements: !223)
!222 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!223 = !{!224, !225, !227, !228, !229, !230, !231, !232}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !221, file: !222, line: 24, baseType: !19, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !221, file: !222, line: 25, baseType: !226, size: 32, offset: 32)
!226 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !221, file: !222, line: 26, baseType: !19, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !221, file: !222, line: 28, baseType: !226, size: 32, offset: 96)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !221, file: !222, line: 32, baseType: !19, size: 32, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !221, file: !222, line: 34, baseType: !16, size: 16, offset: 160)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !221, file: !222, line: 35, baseType: !16, size: 16, offset: 176)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !221, file: !222, line: 36, baseType: !233, size: 128, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !234, line: 53, baseType: !235)
!234 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !234, line: 49, size: 128, elements: !236)
!236 = !{!237, !239}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !235, file: !234, line: 51, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !235, file: !234, line: 52, baseType: !238, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !218, file: !217, line: 70, baseType: !241, size: 320)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 320, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 40)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !218, file: !217, line: 71, baseType: !11, size: 64)
!245 = !DISubprogram(name: "pthread_mutex_unlock", scope: !212, file: !212, line: 756, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!246 = distinct !DISubprogram(name: "Load_Opacity", scope: !3, file: !3, line: 220, type: !247, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !249)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !208}
!249 = !{!250, !251, !255}
!250 = !DILocalVariable(name: "filename", arg: 1, scope: !246, file: !3, line: 221, type: !208)
!251 = !DILocalVariable(name: "local_filename", scope: !246, file: !3, line: 223, type: !252)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 1608, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 201)
!255 = !DILocalVariable(name: "fd", scope: !246, file: !3, line: 224, type: !19)
!256 = !DILocation(line: 0, scope: !246)
!257 = !DILocation(line: 223, column: 3, scope: !246)
!258 = !DILocation(line: 223, column: 8, scope: !246)
!259 = !DILocation(line: 226, column: 3, scope: !246)
!260 = !DILocation(line: 227, column: 3, scope: !246)
!261 = !DILocation(line: 228, column: 8, scope: !246)
!262 = !DILocation(line: 230, column: 3, scope: !246)
!263 = !DILocation(line: 231, column: 7, scope: !264)
!264 = distinct !DILexicalBlock(scope: !246, file: !3, line: 231, column: 7)
!265 = !DILocation(line: 231, column: 19, scope: !264)
!266 = !DILocation(line: 231, column: 7, scope: !246)
!267 = !DILocation(line: 232, column: 5, scope: !264)
!268 = !DILocation(line: 234, column: 3, scope: !246)
!269 = !DILocation(line: 236, column: 3, scope: !246)
!270 = !DILocation(line: 238, column: 33, scope: !246)
!271 = !DILocation(line: 238, column: 3, scope: !246)
!272 = !DILocation(line: 240, column: 3, scope: !246)
!273 = !DILocation(line: 241, column: 34, scope: !246)
!274 = !DILocation(line: 241, column: 53, scope: !246)
!275 = !DILocation(line: 241, column: 3, scope: !246)
!276 = !DILocation(line: 242, column: 3, scope: !246)
!277 = !DILocation(line: 243, column: 1, scope: !246)
!278 = !DISubprogram(name: "Open_File", scope: !205, file: !205, line: 174, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!279 = !DISubroutineType(types: !280)
!280 = !{!19, !208}
!281 = !DISubprogram(name: "Read_Shorts", scope: !205, file: !205, line: 179, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !19, !12, !11}
!284 = !DISubprogram(name: "Read_Longs", scope: !205, file: !205, line: 180, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!285 = !DISubprogram(name: "Read_Bytes", scope: !205, file: !205, line: 178, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!286 = !DISubprogram(name: "Close_File", scope: !205, file: !205, line: 181, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !19}
!289 = distinct !DISubprogram(name: "Store_Opacity", scope: !3, file: !3, line: 246, type: !247, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !290)
!290 = !{!291, !292, !293}
!291 = !DILocalVariable(name: "filename", arg: 1, scope: !289, file: !3, line: 247, type: !208)
!292 = !DILocalVariable(name: "local_filename", scope: !289, file: !3, line: 249, type: !252)
!293 = !DILocalVariable(name: "fd", scope: !289, file: !3, line: 250, type: !19)
!294 = !DILocation(line: 0, scope: !289)
!295 = !DILocation(line: 249, column: 3, scope: !289)
!296 = !DILocation(line: 249, column: 8, scope: !289)
!297 = !DILocation(line: 252, column: 3, scope: !289)
!298 = !DILocation(line: 253, column: 3, scope: !289)
!299 = !DILocation(line: 254, column: 8, scope: !289)
!300 = !DILocation(line: 256, column: 15, scope: !289)
!301 = !DILocation(line: 257, column: 3, scope: !289)
!302 = !DILocation(line: 258, column: 3, scope: !289)
!303 = !DILocation(line: 259, column: 8, scope: !289)
!304 = !DILocation(line: 260, column: 3, scope: !289)
!305 = !DILocation(line: 262, column: 3, scope: !289)
!306 = !DILocation(line: 263, column: 3, scope: !289)
!307 = !DILocation(line: 265, column: 3, scope: !289)
!308 = !DILocation(line: 266, column: 35, scope: !289)
!309 = !DILocation(line: 266, column: 54, scope: !289)
!310 = !DILocation(line: 266, column: 3, scope: !289)
!311 = !DILocation(line: 267, column: 3, scope: !289)
!312 = !DILocation(line: 268, column: 1, scope: !289)
!313 = !DISubprogram(name: "Create_File", scope: !205, file: !205, line: 173, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!314 = !DISubprogram(name: "Write_Shorts", scope: !205, file: !205, line: 176, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!315 = !DISubprogram(name: "Write_Longs", scope: !205, file: !205, line: 177, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!316 = !DISubprogram(name: "Write_Bytes", scope: !205, file: !205, line: 175, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !210)
!317 = distinct !DISubprogram(name: "Deallocate_Opacity", scope: !3, file: !3, line: 271, type: !318, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !68}
!320 = !{!321}
!321 = !DILocalVariable(name: "address", arg: 1, scope: !317, file: !3, line: 272, type: !68)
!322 = !DILocation(line: 0, scope: !317)
!323 = !DILocation(line: 274, column: 3, scope: !317)
!324 = !DILocation(line: 278, column: 12, scope: !317)
!325 = !DILocation(line: 279, column: 1, scope: !317)
