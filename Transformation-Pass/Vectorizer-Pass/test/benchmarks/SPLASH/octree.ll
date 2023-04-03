; ModuleID = 'octree.c'
source_filename = "octree.c"
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

@opc_len = external local_unnamed_addr global [3 x i16], align 2
@pyr_levels = dso_local global i16 0, align 2, !dbg !0
@.str = private unnamed_addr constant [46 x i8] c"    Computing binary pyramid of %d levels...\0A\00", align 1
@pyr_len = dso_local global [10 x [3 x i16]] zeroinitializer, align 16, !dbg !18
@pyr_voxlen = dso_local global [10 x [3 x i16]] zeroinitializer, align 16, !dbg !24
@pyr_length = dso_local global [10 x i32] zeroinitializer, align 16, !dbg !26
@pyr_address = dso_local global [10 x ptr] zeroinitializer, align 16, !dbg !31
@Global = external local_unnamed_addr global ptr, align 8
@opc_address = external local_unnamed_addr global ptr, align 8
@pyr_offset1 = dso_local local_unnamed_addr global i64 0, align 8, !dbg !34
@pyr_offset2 = dso_local local_unnamed_addr global i64 0, align 8, !dbg !36
@pyr_address2 = dso_local local_unnamed_addr global ptr null, align 8, !dbg !38
@.str.3 = private unnamed_addr constant [48 x i8] c"      Allocating pyramid level of %ld bytes...\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"    No space available for pyramid level.\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"      Computing pyramid level %ld from level %ld...\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".pyr\00", align 1
@pyr_version = dso_local global i16 0, align 2, !dbg !15
@.str.7 = private unnamed_addr constant [33 x i8] c"    Can't load version %ld file\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"    Loading binary pyramid of %d levels...\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"      Loading pyramid level %ld from .pyr file...\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"    Storing binary pyramid of %d levels...\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"      Storing pyramid level %ld into .pyr file...\0A\00", align 1
@str = private unnamed_addr constant [29 x i8] c"    Computing octree base...\00", align 1
@str.12 = private unnamed_addr constant [55 x i8] c"    Performing OR of eight neighbors in binary mask...\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Compute_Octree() local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i64 0, metadata !52, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i64 0, metadata !53, metadata !DIExpression()), !dbg !54
  br label %for.body, !dbg !55

for.body:                                         ; preds = %entry, %for.body
  %i.0134 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %max_len.0133 = phi i64 [ 0, %entry ], [ %1, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.0134, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i64 %max_len.0133, metadata !52, metadata !DIExpression()), !dbg !54
  %arrayidx = getelementptr inbounds [3 x i16], ptr @opc_len, i64 0, i64 %i.0134, !dbg !57
  %0 = load i16, ptr %arrayidx, align 2, !dbg !57
  %conv = sext i16 %0 to i64, !dbg !57
  %1 = tail call i64 @llvm.smax.i64(i64 %max_len.0133, i64 %conv), !dbg !57
  call void @llvm.dbg.value(metadata i64 %1, metadata !52, metadata !DIExpression()), !dbg !54
  %inc = add nuw nsw i64 %i.0134, 1, !dbg !60
  call void @llvm.dbg.value(metadata i64 %inc, metadata !53, metadata !DIExpression()), !dbg !54
  %exitcond.not = icmp eq i64 %inc, 3, !dbg !61
  br i1 %exitcond.not, label %while.cond, label %for.body, !dbg !55, !llvm.loop !62

while.cond:                                       ; preds = %for.body, %while.cond
  %storemerge = phi i16 [ %inc9, %while.cond ], [ 1, %for.body ], !dbg !54
  %conv5 = sext i16 %storemerge to i32, !dbg !66
  %sub = add nsw i32 %conv5, -1, !dbg !67
  %shl = shl nuw i32 1, %sub, !dbg !68
  %conv6 = sext i32 %shl to i64, !dbg !69
  %cmp7 = icmp sgt i64 %1, %conv6, !dbg !70
  %inc9 = add i16 %storemerge, 1, !dbg !71
  br i1 %cmp7, label %while.cond, label %while.end, !dbg !72, !llvm.loop !73

while.end:                                        ; preds = %while.cond
  store i16 %storemerge, ptr @pyr_levels, align 2, !dbg !54
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %conv5), !dbg !74
  call void @llvm.dbg.value(metadata i64 0, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) @pyr_len, ptr noundef nonnull align 2 dereferenceable(6) @opc_len, i64 6, i1 false), !dbg !75
  br label %for.body14, !dbg !79

for.body14:                                       ; preds = %while.end, %for.body14
  %i.1135 = phi i64 [ 0, %while.end ], [ %inc19, %for.body14 ]
  call void @llvm.dbg.value(metadata i64 %i.1135, metadata !53, metadata !DIExpression()), !dbg !54
  %arrayidx17 = getelementptr inbounds [3 x i16], ptr @pyr_voxlen, i64 0, i64 %i.1135, !dbg !80
  store i16 1, ptr %arrayidx17, align 2, !dbg !81
  %inc19 = add nuw nsw i64 %i.1135, 1, !dbg !82
  call void @llvm.dbg.value(metadata i64 %inc19, metadata !53, metadata !DIExpression()), !dbg !54
  %exitcond141.not = icmp eq i64 %inc19, 3, !dbg !83
  br i1 %exitcond141.not, label %for.end20, label %for.body14, !dbg !79, !llvm.loop !84

for.end20:                                        ; preds = %for.body14
  %2 = load i16, ptr @pyr_len, align 16, !dbg !86
  %conv21 = sext i16 %2 to i32, !dbg !86
  %3 = load i16, ptr getelementptr inbounds ([10 x [3 x i16]], ptr @pyr_len, i64 0, i64 0, i64 1), align 2, !dbg !87
  %conv22 = sext i16 %3 to i32, !dbg !87
  %mul = mul nsw i32 %conv22, %conv21, !dbg !88
  %4 = load i16, ptr getelementptr inbounds ([10 x [3 x i16]], ptr @pyr_len, i64 0, i64 0, i64 2), align 4, !dbg !89
  %conv23 = sext i16 %4 to i32, !dbg !89
  %mul24 = mul nsw i32 %mul, %conv23, !dbg !90
  %add = add nsw i32 %mul24, 7, !dbg !91
  %div = sdiv i32 %add, 8, !dbg !92
  store i32 %div, ptr @pyr_length, align 16, !dbg !93
  %conv25 = sext i32 %div to i64, !dbg !94
  tail call void @Allocate_Pyramid_Level(ptr noundef nonnull @pyr_address, i64 noundef %conv25), !dbg !95
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !96
  %5 = load ptr, ptr @Global, align 8, !dbg !97
  store i64 0, ptr %5, align 8, !dbg !98
  tail call void @Compute_Base(), !dbg !99
  %puts131 = tail call i32 @puts(ptr nonnull @str.12), !dbg !100
  %6 = load ptr, ptr @Global, align 8, !dbg !101
  store i64 0, ptr %6, align 8, !dbg !102
  tail call void @Or_Neighbors_In_Base(), !dbg !103
  call void @llvm.dbg.value(metadata i64 1, metadata !51, metadata !DIExpression()), !dbg !54
  %7 = load i16, ptr @pyr_levels, align 2, !dbg !104
  %cmp31139 = icmp sgt i16 %7, 1, !dbg !107
  br i1 %cmp31139, label %for.cond34.preheader, label %for.end92, !dbg !108

for.cond34.preheader:                             ; preds = %for.end20, %for.end72
  %level.0140 = phi i64 [ %inc91, %for.end72 ], [ 1, %for.end20 ]
  call void @llvm.dbg.value(metadata i64 %level.0140, metadata !51, metadata !DIExpression()), !dbg !54
  %sub38 = add nsw i64 %level.0140, -1
  call void @llvm.dbg.value(metadata i64 0, metadata !53, metadata !DIExpression()), !dbg !54
  br label %for.body37, !dbg !109

for.body37:                                       ; preds = %for.cond34.preheader, %for.inc70
  %i.2136 = phi i64 [ 0, %for.cond34.preheader ], [ %inc71, %for.inc70 ]
  call void @llvm.dbg.value(metadata i64 %i.2136, metadata !53, metadata !DIExpression()), !dbg !54
  %arrayidx40 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_len, i64 0, i64 %sub38, i64 %i.2136, !dbg !112
  %8 = load i16, ptr %arrayidx40, align 2, !dbg !112
  %cmp42 = icmp sgt i16 %8, 1, !dbg !116
  br i1 %cmp42, label %if.then, label %if.else, !dbg !117

if.then:                                          ; preds = %for.body37
  %conv41132 = zext i16 %8 to i32, !dbg !112
  %add48 = add nuw nsw i32 %conv41132, 1, !dbg !118
  %9 = lshr i32 %add48, 1, !dbg !120
  %conv49 = trunc i32 %9 to i16, !dbg !121
  %arrayidx54 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_voxlen, i64 0, i64 %sub38, i64 %i.2136, !dbg !122
  %10 = load i16, ptr %arrayidx54, align 2, !dbg !122
  %shl56 = shl i16 %10, 1, !dbg !123
  br label %for.inc70, !dbg !124

if.else:                                          ; preds = %for.body37
  %arrayidx67 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_voxlen, i64 0, i64 %sub38, i64 %i.2136, !dbg !125
  %11 = load i16, ptr %arrayidx67, align 2, !dbg !125
  br label %for.inc70

for.inc70:                                        ; preds = %if.then, %if.else
  %.sink143 = phi i16 [ %conv49, %if.then ], [ %8, %if.else ], !dbg !127
  %.sink = phi i16 [ %shl56, %if.then ], [ %11, %if.else ], !dbg !127
  %12 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_len, i64 0, i64 %level.0140, i64 %i.2136, !dbg !128
  store i16 %.sink143, ptr %12, align 2, !dbg !129
  %13 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_voxlen, i64 0, i64 %level.0140, i64 %i.2136, !dbg !130
  store i16 %.sink, ptr %13, align 2, !dbg !131
  %inc71 = add nuw nsw i64 %i.2136, 1, !dbg !132
  call void @llvm.dbg.value(metadata i64 %inc71, metadata !53, metadata !DIExpression()), !dbg !54
  %exitcond142.not = icmp eq i64 %inc71, 3, !dbg !133
  br i1 %exitcond142.not, label %for.end72, label %for.body37, !dbg !109, !llvm.loop !134

for.end72:                                        ; preds = %for.inc70
  %arrayidx73 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_len, i64 0, i64 %level.0140, !dbg !136
  %14 = load i16, ptr %arrayidx73, align 2, !dbg !136
  %conv75 = sext i16 %14 to i32, !dbg !136
  %arrayidx77 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_len, i64 0, i64 %level.0140, i64 1, !dbg !137
  %15 = load i16, ptr %arrayidx77, align 2, !dbg !137
  %conv78 = sext i16 %15 to i32, !dbg !137
  %mul79 = mul nsw i32 %conv78, %conv75, !dbg !138
  %arrayidx81 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_len, i64 0, i64 %level.0140, i64 2, !dbg !139
  %16 = load i16, ptr %arrayidx81, align 2, !dbg !139
  %conv82 = sext i16 %16 to i32, !dbg !139
  %mul83 = mul nsw i32 %mul79, %conv82, !dbg !140
  %add84 = add nsw i32 %mul83, 7, !dbg !141
  %div85 = sdiv i32 %add84, 8, !dbg !142
  %arrayidx86 = getelementptr inbounds [10 x i32], ptr @pyr_length, i64 0, i64 %level.0140, !dbg !143
  store i32 %div85, ptr %arrayidx86, align 4, !dbg !144
  %arrayidx87 = getelementptr inbounds [10 x ptr], ptr @pyr_address, i64 0, i64 %level.0140, !dbg !145
  %conv89 = sext i32 %div85 to i64, !dbg !146
  tail call void @Allocate_Pyramid_Level(ptr noundef nonnull %arrayidx87, i64 noundef %conv89), !dbg !147
  tail call void @Compute_Pyramid_Level(i64 noundef %level.0140), !dbg !148
  %inc91 = add nuw nsw i64 %level.0140, 1, !dbg !149
  call void @llvm.dbg.value(metadata i64 %inc91, metadata !51, metadata !DIExpression()), !dbg !54
  %17 = load i16, ptr @pyr_levels, align 2, !dbg !104
  %conv30 = sext i16 %17 to i64, !dbg !104
  %cmp31 = icmp slt i64 %inc91, %conv30, !dbg !107
  br i1 %cmp31, label %for.cond34.preheader, label %for.end92, !dbg !108, !llvm.loop !150

for.end92:                                        ; preds = %for.end72, %for.end20
  ret void, !dbg !152
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Allocate_Pyramid_Level(ptr nocapture noundef %address, i64 noundef %length) local_unnamed_addr #0 !dbg !153 {
entry:
  call void @llvm.dbg.value(metadata ptr %address, metadata !158, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata i64 %length, metadata !159, metadata !DIExpression()), !dbg !161
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, i64 noundef %length), !dbg !162
  %call2 = tail call noalias ptr @malloc(i64 noundef %length) #13, !dbg !163
  store ptr %call2, ptr %address, align 8, !dbg !164
  %cmp = icmp eq ptr %call2, null, !dbg !165
  br i1 %cmp, label %if.then, label %if.end, !dbg !167

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str.4) #14, !dbg !168
  br label %if.end, !dbg !168

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !160, metadata !DIExpression()), !dbg !161
  %cmp310 = icmp sgt i64 %length, 0, !dbg !169
  br i1 %cmp310, label %for.body, label %for.end, !dbg !172

for.body:                                         ; preds = %if.end, %for.body
  %i.011 = phi i64 [ %inc, %for.body ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.011, metadata !160, metadata !DIExpression()), !dbg !161
  %0 = load ptr, ptr %address, align 8, !dbg !173
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %i.011, !dbg !174
  store i8 0, ptr %add.ptr, align 1, !dbg !175
  %inc = add nuw nsw i64 %i.011, 1, !dbg !176
  call void @llvm.dbg.value(metadata i64 %inc, metadata !160, metadata !DIExpression()), !dbg !161
  %exitcond.not = icmp eq i64 %inc, %length, !dbg !169
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !172, !llvm.loop !177

for.end:                                          ; preds = %for.body, %if.end
  ret void, !dbg !179
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Compute_Base() local_unnamed_addr #0 !dbg !180 {
entry:
  %0 = load ptr, ptr @Global, align 8, !dbg !196
  %IndexLock = getelementptr inbounds %struct.GlobalMemory, ptr %0, i64 0, i32 4, !dbg !198
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %IndexLock) #14, !dbg !199
  %1 = load ptr, ptr @Global, align 8, !dbg !200
  %2 = load i64, ptr %1, align 8, !dbg !201
  %inc = add nsw i64 %2, 1, !dbg !201
  store i64 %inc, ptr %1, align 8, !dbg !201
  call void @llvm.dbg.value(metadata i64 %2, metadata !195, metadata !DIExpression()), !dbg !202
  %3 = load ptr, ptr @Global, align 8, !dbg !203
  %IndexLock1 = getelementptr inbounds %struct.GlobalMemory, ptr %3, i64 0, i32 4, !dbg !205
  %call2 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %IndexLock1) #14, !dbg !206
  call void @llvm.dbg.value(metadata !DIArgList(i64 %2, i64 undef), metadata !195, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mod, DW_OP_stack_value)), !dbg !202
  %4 = load i16, ptr @pyr_len, align 16, !dbg !207
  call void @llvm.dbg.value(metadata i64 undef, metadata !187, metadata !DIExpression()), !dbg !202
  %5 = load i16, ptr getelementptr inbounds ([10 x [3 x i16]], ptr @pyr_len, i64 0, i64 0, i64 1), align 2, !dbg !208
  call void @llvm.dbg.value(metadata i64 undef, metadata !188, metadata !DIExpression()), !dbg !202
  %6 = load i16, ptr getelementptr inbounds ([10 x [3 x i16]], ptr @pyr_len, i64 0, i64 0, i64 2), align 4, !dbg !209
  call void @llvm.dbg.value(metadata i64 undef, metadata !189, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef), metadata !190, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !202
  call void @llvm.dbg.value(metadata !DIArgList(i64 %2, i64 undef, i64 undef, i64 undef), metadata !191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_mod, DW_OP_LLVM_arg, 2, DW_OP_mod, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !202
  call void @llvm.dbg.value(metadata i64 undef, metadata !192, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata !DIArgList(i64 %2, i64 undef, i64 undef, i64 undef, i64 undef), metadata !193, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_mod, DW_OP_LLVM_arg, 3, DW_OP_div, DW_OP_LLVM_arg, 2, DW_OP_mod, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !202
  %conv81 = sext i16 %5 to i64, !dbg !210
  call void @llvm.dbg.value(metadata i64 undef, metadata !194, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata !DIArgList(i64 %2, i64 undef, i64 undef, i64 undef, i64 undef), metadata !185, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_mod, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_div, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !202
  %conv94 = sext i16 %6 to i64, !dbg !211
  call void @llvm.dbg.value(metadata i64 undef, metadata !186, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i64 0, metadata !185, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i64 %conv94, metadata !186, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i64 0, metadata !193, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i64 %conv81, metadata !194, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i64 0, metadata !191, metadata !DIExpression()), !dbg !202
  %conv105 = sext i16 %4 to i64, !dbg !212
  call void @llvm.dbg.value(metadata i64 %conv105, metadata !192, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i64 0, metadata !184, metadata !DIExpression()), !dbg !202
  %cmp106191 = icmp sgt i16 %6, 0, !dbg !213
  %cmp109188 = icmp sgt i16 %5, 0
  %or.cond = select i1 %cmp106191, i1 %cmp109188, i1 false, !dbg !216
  %cmp113185 = icmp sgt i16 %4, 0
  %or.cond231 = select i1 %or.cond, i1 %cmp113185, i1 false, !dbg !216
  br i1 %or.cond231, label %for.cond108.preheader.us.us.preheader, label %for.end154, !dbg !216

for.cond108.preheader.us.us.preheader:            ; preds = %entry
  %.pre205.pre.pre = load ptr, ptr @opc_address, align 8, !dbg !217
  %.pre207.pre.pre = load i16, ptr getelementptr inbounds ([3 x i16], ptr @opc_len, i64 0, i64 1), align 2, !dbg !217
  %.pre209.pre.pre = load i16, ptr @opc_len, align 2, !dbg !217
  br label %for.cond108.preheader.us.us, !dbg !216

for.cond108.preheader.us.us:                      ; preds = %for.cond108.preheader.us.us.preheader, %for.cond108.for.inc152_crit_edge.split.us.us.us
  %.pre209.pre = phi i16 [ %.pre209.pre227, %for.cond108.for.inc152_crit_edge.split.us.us.us ], [ %.pre209.pre.pre, %for.cond108.preheader.us.us.preheader ], !dbg !217
  %.pre207.pre = phi i16 [ %.pre207.pre223, %for.cond108.for.inc152_crit_edge.split.us.us.us ], [ %.pre207.pre.pre, %for.cond108.preheader.us.us.preheader ], !dbg !217
  %.pre205.pre = phi ptr [ %.pre205.pre219, %for.cond108.for.inc152_crit_edge.split.us.us.us ], [ %.pre205.pre.pre, %for.cond108.preheader.us.us.preheader ], !dbg !217
  %outz.0192.us.us = phi i64 [ %inc153.us.us, %for.cond108.for.inc152_crit_edge.split.us.us.us ], [ 0, %for.cond108.preheader.us.us.preheader ]
  call void @llvm.dbg.value(metadata i64 %outz.0192.us.us, metadata !184, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i64 0, metadata !183, metadata !DIExpression()), !dbg !202
  br label %for.cond112.preheader.us.us.us, !dbg !226

for.cond112.preheader.us.us.us:                   ; preds = %for.cond112.for.inc149_crit_edge.us.us.us, %for.cond108.preheader.us.us
  %.pre209.pre229 = phi i16 [ %.pre209.pre, %for.cond108.preheader.us.us ], [ %.pre209.pre227, %for.cond112.for.inc149_crit_edge.us.us.us ]
  %.pre207.pre225 = phi i16 [ %.pre207.pre, %for.cond108.preheader.us.us ], [ %.pre207.pre223, %for.cond112.for.inc149_crit_edge.us.us.us ]
  %.pre205.pre221 = phi ptr [ %.pre205.pre, %for.cond108.preheader.us.us ], [ %.pre205.pre219, %for.cond112.for.inc149_crit_edge.us.us.us ]
  %.pre209 = phi i16 [ %.pre209.pre, %for.cond108.preheader.us.us ], [ %.pre209216, %for.cond112.for.inc149_crit_edge.us.us.us ], !dbg !217
  %.pre207 = phi i16 [ %.pre207.pre, %for.cond108.preheader.us.us ], [ %.pre207213, %for.cond112.for.inc149_crit_edge.us.us.us ], !dbg !217
  %.pre205 = phi ptr [ %.pre205.pre, %for.cond108.preheader.us.us ], [ %.pre205210, %for.cond112.for.inc149_crit_edge.us.us.us ], !dbg !217
  %outy.0189.us.us.us = phi i64 [ 0, %for.cond108.preheader.us.us ], [ %inc150.us.us.us, %for.cond112.for.inc149_crit_edge.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %outy.0189.us.us.us, metadata !183, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i64 0, metadata !182, metadata !DIExpression()), !dbg !202
  br label %for.body115.us.us.us, !dbg !227

for.body115.us.us.us:                             ; preds = %for.inc.us.us.us, %for.cond112.preheader.us.us.us
  %.pre209.pre228 = phi i16 [ %.pre209.pre229, %for.cond112.preheader.us.us.us ], [ %.pre209.pre227, %for.inc.us.us.us ]
  %.pre207.pre224 = phi i16 [ %.pre207.pre225, %for.cond112.preheader.us.us.us ], [ %.pre207.pre223, %for.inc.us.us.us ]
  %.pre205.pre220 = phi ptr [ %.pre205.pre221, %for.cond112.preheader.us.us.us ], [ %.pre205.pre219, %for.inc.us.us.us ]
  %.pre209217 = phi i16 [ %.pre209, %for.cond112.preheader.us.us.us ], [ %.pre209216, %for.inc.us.us.us ]
  %.pre207214 = phi i16 [ %.pre207, %for.cond112.preheader.us.us.us ], [ %.pre207213, %for.inc.us.us.us ]
  %.pre205211 = phi ptr [ %.pre205, %for.cond112.preheader.us.us.us ], [ %.pre205210, %for.inc.us.us.us ]
  %7 = phi i16 [ %.pre209, %for.cond112.preheader.us.us.us ], [ %15, %for.inc.us.us.us ], !dbg !217
  %8 = phi i16 [ %.pre207, %for.cond112.preheader.us.us.us ], [ %16, %for.inc.us.us.us ], !dbg !217
  %9 = phi ptr [ %.pre205, %for.cond112.preheader.us.us.us ], [ %17, %for.inc.us.us.us ], !dbg !217
  %outx.0186.us.us.us = phi i64 [ 0, %for.cond112.preheader.us.us.us ], [ %inc148.us.us.us, %for.inc.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %outx.0186.us.us.us, metadata !182, metadata !DIExpression()), !dbg !202
  %conv116.us.us.us = sext i16 %8 to i64, !dbg !217
  %mul117.us.us.us = mul nsw i64 %outz.0192.us.us, %conv116.us.us.us, !dbg !217
  %add118.us.us.us = add nsw i64 %mul117.us.us.us, %outy.0189.us.us.us, !dbg !217
  %conv119.us.us.us = sext i16 %7 to i64, !dbg !217
  %mul120.us.us.us = mul nsw i64 %add118.us.us.us, %conv119.us.us.us, !dbg !217
  %add.ptr.us.us.us = getelementptr inbounds i8, ptr %9, i64 %mul120.us.us.us, !dbg !217
  %add.ptr121.us.us.us = getelementptr inbounds i8, ptr %add.ptr.us.us.us, i64 %outx.0186.us.us.us, !dbg !217
  %10 = load i8, ptr %add.ptr121.us.us.us, align 1, !dbg !217
  %cmp123.us.us.us = icmp eq i8 %10, 0, !dbg !228
  %11 = load i16, ptr getelementptr inbounds ([10 x [3 x i16]], ptr @pyr_len, i64 0, i64 0, i64 1), align 2, !dbg !229
  %conv125.us.us.us = sext i16 %11 to i64, !dbg !229
  %mul126.us.us.us = mul nsw i64 %outz.0192.us.us, %conv125.us.us.us, !dbg !229
  %add127.us.us.us = add nsw i64 %mul126.us.us.us, %outy.0189.us.us.us, !dbg !229
  %12 = load i16, ptr @pyr_len, align 16, !dbg !229
  %conv128.us.us.us = sext i16 %12 to i64, !dbg !229
  %mul129.us.us.us = mul nsw i64 %add127.us.us.us, %conv128.us.us.us, !dbg !229
  %add130.us.us.us = add nsw i64 %mul129.us.us.us, %outx.0186.us.us.us, !dbg !229
  store i64 %add130.us.us.us, ptr @pyr_offset1, align 8, !dbg !229
  %and.us.us.us = and i64 %add130.us.us.us, 7, !dbg !229
  store i64 %and.us.us.us, ptr @pyr_offset2, align 8, !dbg !229
  %13 = load ptr, ptr @pyr_address, align 16, !dbg !229
  %shr.us.us.us = ashr i64 %add130.us.us.us, 3, !dbg !229
  %add.ptr131.us.us.us = getelementptr inbounds i8, ptr %13, i64 %shr.us.us.us, !dbg !229
  store ptr %add.ptr131.us.us.us, ptr @pyr_address2, align 8, !dbg !229
  br i1 %cmp123.us.us.us, label %for.inc.us.us.us, label %if.else.us.us.us, !dbg !230

if.else.us.us.us:                                 ; preds = %for.body115.us.us.us
  %sh_prom143.us.us.us = trunc i64 %and.us.us.us to i8, !dbg !231
  %shl144.us.us.us = shl nuw i8 1, %sh_prom143.us.us.us, !dbg !231
  %14 = load i8, ptr %add.ptr131.us.us.us, align 1, !dbg !231
  %or146.us.us.us = or i8 %shl144.us.us.us, %14, !dbg !231
  store i8 %or146.us.us.us, ptr %add.ptr131.us.us.us, align 1, !dbg !231
  %.pre = load ptr, ptr @opc_address, align 8, !dbg !217
  %.pre206 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @opc_len, i64 0, i64 1), align 2, !dbg !217
  %.pre208 = load i16, ptr @opc_len, align 2, !dbg !217
  br label %for.inc.us.us.us

for.inc.us.us.us:                                 ; preds = %for.body115.us.us.us, %if.else.us.us.us
  %.pre209.pre227 = phi i16 [ %.pre208, %if.else.us.us.us ], [ %.pre209.pre228, %for.body115.us.us.us ]
  %.pre207.pre223 = phi i16 [ %.pre206, %if.else.us.us.us ], [ %.pre207.pre224, %for.body115.us.us.us ]
  %.pre205.pre219 = phi ptr [ %.pre, %if.else.us.us.us ], [ %.pre205.pre220, %for.body115.us.us.us ]
  %.pre209216 = phi i16 [ %.pre208, %if.else.us.us.us ], [ %.pre209217, %for.body115.us.us.us ]
  %.pre207213 = phi i16 [ %.pre206, %if.else.us.us.us ], [ %.pre207214, %for.body115.us.us.us ]
  %.pre205210 = phi ptr [ %.pre, %if.else.us.us.us ], [ %.pre205211, %for.body115.us.us.us ]
  %15 = phi i16 [ %.pre208, %if.else.us.us.us ], [ %7, %for.body115.us.us.us ]
  %16 = phi i16 [ %.pre206, %if.else.us.us.us ], [ %8, %for.body115.us.us.us ]
  %17 = phi ptr [ %.pre, %if.else.us.us.us ], [ %9, %for.body115.us.us.us ]
  %inc148.us.us.us = add nuw nsw i64 %outx.0186.us.us.us, 1, !dbg !232
  call void @llvm.dbg.value(metadata i64 %inc148.us.us.us, metadata !182, metadata !DIExpression()), !dbg !202
  %exitcond.not = icmp eq i64 %inc148.us.us.us, %conv105, !dbg !233
  br i1 %exitcond.not, label %for.cond112.for.inc149_crit_edge.us.us.us, label %for.body115.us.us.us, !dbg !227, !llvm.loop !234

for.cond112.for.inc149_crit_edge.us.us.us:        ; preds = %for.inc.us.us.us
  %inc150.us.us.us = add nuw nsw i64 %outy.0189.us.us.us, 1, !dbg !236
  call void @llvm.dbg.value(metadata i64 %inc150.us.us.us, metadata !183, metadata !DIExpression()), !dbg !202
  %exitcond203.not = icmp eq i64 %inc150.us.us.us, %conv81, !dbg !237
  br i1 %exitcond203.not, label %for.cond108.for.inc152_crit_edge.split.us.us.us, label %for.cond112.preheader.us.us.us, !dbg !226, !llvm.loop !238

for.cond108.for.inc152_crit_edge.split.us.us.us:  ; preds = %for.cond112.for.inc149_crit_edge.us.us.us
  %inc153.us.us = add nuw nsw i64 %outz.0192.us.us, 1, !dbg !240
  call void @llvm.dbg.value(metadata i64 %inc153.us.us, metadata !184, metadata !DIExpression()), !dbg !202
  %exitcond204.not = icmp eq i64 %inc153.us.us, %conv94, !dbg !213
  br i1 %exitcond204.not, label %for.end154, label %for.cond108.preheader.us.us, !dbg !216, !llvm.loop !241

for.end154:                                       ; preds = %for.cond108.for.inc152_crit_edge.split.us.us.us, %entry
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Or_Neighbors_In_Base() local_unnamed_addr #0 !dbg !244 {
entry:
  %0 = load ptr, ptr @Global, align 8, !dbg !259
  %IndexLock = getelementptr inbounds %struct.GlobalMemory, ptr %0, i64 0, i32 4, !dbg !261
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %IndexLock) #14, !dbg !262
  %1 = load ptr, ptr @Global, align 8, !dbg !263
  %2 = load i64, ptr %1, align 8, !dbg !264
  %inc = add nsw i64 %2, 1, !dbg !264
  store i64 %inc, ptr %1, align 8, !dbg !264
  call void @llvm.dbg.value(metadata i64 %2, metadata !258, metadata !DIExpression()), !dbg !265
  %3 = load ptr, ptr @Global, align 8, !dbg !266
  %IndexLock1 = getelementptr inbounds %struct.GlobalMemory, ptr %3, i64 0, i32 4, !dbg !268
  %call2 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %IndexLock1) #14, !dbg !269
  call void @llvm.dbg.value(metadata !DIArgList(i64 %2, i64 undef), metadata !258, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mod, DW_OP_stack_value)), !dbg !265
  %4 = load i16, ptr getelementptr inbounds ([10 x [3 x i16]], ptr @pyr_len, i64 0, i64 0, i64 2), align 4, !dbg !270
  call void @llvm.dbg.value(metadata i64 undef, metadata !257, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i64 0, metadata !256, metadata !DIExpression()), !dbg !265
  %conv28 = sext i16 %4 to i64, !dbg !271
  call void @llvm.dbg.value(metadata i64 %conv28, metadata !257, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !265
  %cmp29284 = icmp sgt i16 %4, 0, !dbg !272
  br i1 %cmp29284, label %for.body.preheader, label %for.end223, !dbg !275

for.body.preheader:                               ; preds = %entry
  %.pre286 = load i16, ptr getelementptr inbounds ([10 x [3 x i16]], ptr @pyr_len, i64 0, i64 0, i64 1), align 2, !dbg !276
  br label %for.body, !dbg !275

for.cond.loopexit:                                ; preds = %for.cond44.loopexit, %for.body
  %5 = phi i16 [ %7, %for.body ], [ %11, %for.cond44.loopexit ]
  %6 = phi i16 [ %8, %for.body ], [ %11, %for.cond44.loopexit ]
  call void @llvm.dbg.value(metadata i64 %add31, metadata !248, metadata !DIExpression()), !dbg !265
  %exitcond.not = icmp eq i64 %add31, %conv28, !dbg !272
  br i1 %exitcond.not, label %for.end223, label %for.cond.loopexit.for.body_crit_edge, !dbg !275, !llvm.loop !280

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  %.pre = load i16, ptr getelementptr inbounds ([10 x [3 x i16]], ptr @pyr_len, i64 0, i64 0, i64 2), align 4, !dbg !282
  br label %for.body, !dbg !275

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.preheader
  %7 = phi i16 [ %5, %for.cond.loopexit.for.body_crit_edge ], [ %.pre286, %for.body.preheader ]
  %8 = phi i16 [ %6, %for.cond.loopexit.for.body_crit_edge ], [ %.pre286, %for.body.preheader ], !dbg !276
  %9 = phi i16 [ %.pre, %for.cond.loopexit.for.body_crit_edge ], [ %4, %for.body.preheader ], !dbg !282
  %outz.0285 = phi i64 [ %add31, %for.cond.loopexit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %outz.0285, metadata !248, metadata !DIExpression()), !dbg !265
  %add31 = add nuw nsw i64 %outz.0285, 1, !dbg !282
  %conv32 = sext i16 %9 to i64, !dbg !282
  %sub = add nsw i64 %conv32, -1, !dbg !282
  %10 = tail call i64 @llvm.smin.i64(i64 %add31, i64 %sub), !dbg !282
  call void @llvm.dbg.value(metadata i64 %10, metadata !251, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i64 0, metadata !247, metadata !DIExpression()), !dbg !265
  %cmp46281 = icmp sgt i16 %8, 0, !dbg !283
  br i1 %cmp46281, label %for.body48.preheader, label %for.cond.loopexit, !dbg !284

for.body48.preheader:                             ; preds = %for.body
  %conv45280290 = zext i16 %8 to i64, !dbg !276
  %.pre287 = load i16, ptr @pyr_len, align 16, !dbg !285
  br label %for.body48, !dbg !284

for.cond44.loopexit:                              ; preds = %for.body67, %for.body48
  %11 = phi i16 [ %13, %for.body48 ], [ %.pre288, %for.body67 ], !dbg !276
  %12 = phi i16 [ %15, %for.body48 ], [ %29, %for.body67 ]
  call void @llvm.dbg.value(metadata i64 %add49, metadata !247, metadata !DIExpression()), !dbg !265
  %conv45 = sext i16 %11 to i64, !dbg !276
  %cmp46 = icmp slt i64 %add49, %conv45, !dbg !283
  br i1 %cmp46, label %for.body48, label %for.cond.loopexit, !dbg !284, !llvm.loop !289

for.body48:                                       ; preds = %for.body48.preheader, %for.cond44.loopexit
  %13 = phi i16 [ %11, %for.cond44.loopexit ], [ %7, %for.body48.preheader ]
  %14 = phi i16 [ %11, %for.cond44.loopexit ], [ %8, %for.body48.preheader ]
  %15 = phi i16 [ %12, %for.cond44.loopexit ], [ %.pre287, %for.body48.preheader ], !dbg !285
  %conv45283 = phi i64 [ %conv45, %for.cond44.loopexit ], [ %conv45280290, %for.body48.preheader ]
  %outy.0282 = phi i64 [ %add49, %for.cond44.loopexit ], [ 0, %for.body48.preheader ]
  call void @llvm.dbg.value(metadata i64 %outy.0282, metadata !247, metadata !DIExpression()), !dbg !265
  %add49 = add nuw nsw i64 %outy.0282, 1, !dbg !291
  %sub51 = add nsw i64 %conv45283, -1, !dbg !291
  %16 = tail call i64 @llvm.smin.i64(i64 %add49, i64 %sub51), !dbg !291
  call void @llvm.dbg.value(metadata i64 %16, metadata !250, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !265
  %cmp65277 = icmp sgt i16 %15, 0, !dbg !292
  br i1 %cmp65277, label %for.body67.preheader, label %for.cond44.loopexit, !dbg !293

for.body67.preheader:                             ; preds = %for.body48
  %conv64276291 = zext i16 %15 to i64, !dbg !285
  br label %for.body67, !dbg !293

for.body67:                                       ; preds = %for.body67, %for.body67.preheader
  %17 = phi i16 [ %14, %for.body67.preheader ], [ %.pre288, %for.body67 ], !dbg !294
  %conv64279 = phi i64 [ %conv64276291, %for.body67.preheader ], [ %conv64, %for.body67 ]
  %outx.0278 = phi i64 [ 0, %for.body67.preheader ], [ %add68, %for.body67 ]
  call void @llvm.dbg.value(metadata i64 %outx.0278, metadata !246, metadata !DIExpression()), !dbg !265
  %add68 = add nuw nsw i64 %outx.0278, 1, !dbg !296
  %sub70 = add nsw i64 %conv64279, -1, !dbg !296
  %18 = tail call i64 @llvm.smin.i64(i64 %add68, i64 %sub70), !dbg !296
  call void @llvm.dbg.value(metadata i64 %18, metadata !249, metadata !DIExpression()), !dbg !265
  %conv82 = sext i16 %17 to i64, !dbg !294
  %mul83 = mul nsw i64 %outz.0285, %conv82, !dbg !294
  %add84 = add nsw i64 %mul83, %outy.0282, !dbg !294
  %mul86 = mul nsw i64 %add84, %conv64279, !dbg !294
  %add87 = add nsw i64 %mul86, %outx.0278, !dbg !294
  store i64 %add87, ptr @pyr_offset1, align 8, !dbg !294
  %and = and i64 %add87, 7, !dbg !294
  store i64 %and, ptr @pyr_offset2, align 8, !dbg !294
  %19 = load ptr, ptr @pyr_address, align 16, !dbg !294
  %shr = ashr i64 %add87, 3, !dbg !294
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 %shr, !dbg !294
  store ptr %add.ptr, ptr @pyr_address2, align 8, !dbg !294
  %20 = load i8, ptr %add.ptr, align 1, !dbg !294
  %sh_prom = trunc i64 %and to i8, !dbg !294
  %shr89 = lshr i8 %20, %sh_prom, !dbg !294
  call void @llvm.dbg.value(metadata i32 undef, metadata !252, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !265
  %add97 = add nsw i64 %mul86, %18, !dbg !297
  store i64 %add97, ptr @pyr_offset1, align 8, !dbg !297
  %and98 = and i64 %add97, 7, !dbg !297
  store i64 %and98, ptr @pyr_offset2, align 8, !dbg !297
  %shr99 = ashr i64 %add97, 3, !dbg !297
  %add.ptr100 = getelementptr inbounds i8, ptr %19, i64 %shr99, !dbg !297
  store ptr %add.ptr100, ptr @pyr_address2, align 8, !dbg !297
  %21 = load i8, ptr %add.ptr100, align 1, !dbg !297
  %sh_prom102 = trunc i64 %and98 to i8, !dbg !297
  %shr103 = lshr i8 %21, %sh_prom102, !dbg !297
  %conv91269 = or i8 %shr103, %shr89, !dbg !298
  %add109 = add nsw i64 %mul83, %16, !dbg !299
  %mul111 = mul nsw i64 %add109, %conv64279, !dbg !299
  %add112 = add nsw i64 %mul111, %outx.0278, !dbg !299
  store i64 %add112, ptr @pyr_offset1, align 8, !dbg !299
  %and113 = and i64 %add112, 7, !dbg !299
  store i64 %and113, ptr @pyr_offset2, align 8, !dbg !299
  %shr114 = ashr i64 %add112, 3, !dbg !299
  %add.ptr115 = getelementptr inbounds i8, ptr %19, i64 %shr114, !dbg !299
  store ptr %add.ptr115, ptr @pyr_address2, align 8, !dbg !299
  %22 = load i8, ptr %add.ptr115, align 1, !dbg !299
  %sh_prom117 = trunc i64 %and113 to i8, !dbg !299
  %shr118 = lshr i8 %22, %sh_prom117, !dbg !299
  %conv106270 = or i8 %conv91269, %shr118, !dbg !300
  %add128 = add nsw i64 %mul111, %18, !dbg !301
  store i64 %add128, ptr @pyr_offset1, align 8, !dbg !301
  %and129 = and i64 %add128, 7, !dbg !301
  store i64 %and129, ptr @pyr_offset2, align 8, !dbg !301
  %shr130 = ashr i64 %add128, 3, !dbg !301
  %add.ptr131 = getelementptr inbounds i8, ptr %19, i64 %shr130, !dbg !301
  store ptr %add.ptr131, ptr @pyr_address2, align 8, !dbg !301
  %23 = load i8, ptr %add.ptr131, align 1, !dbg !301
  %sh_prom133 = trunc i64 %and129 to i8, !dbg !301
  %shr134 = lshr i8 %23, %sh_prom133, !dbg !301
  %conv122271 = or i8 %conv106270, %shr134, !dbg !302
  %mul140 = mul nsw i64 %10, %conv82, !dbg !303
  %add141 = add nsw i64 %mul140, %outy.0282, !dbg !303
  %mul143 = mul nsw i64 %add141, %conv64279, !dbg !303
  %add144 = add nsw i64 %mul143, %outx.0278, !dbg !303
  store i64 %add144, ptr @pyr_offset1, align 8, !dbg !303
  %and145 = and i64 %add144, 7, !dbg !303
  store i64 %and145, ptr @pyr_offset2, align 8, !dbg !303
  %shr146 = ashr i64 %add144, 3, !dbg !303
  %add.ptr147 = getelementptr inbounds i8, ptr %19, i64 %shr146, !dbg !303
  store ptr %add.ptr147, ptr @pyr_address2, align 8, !dbg !303
  %24 = load i8, ptr %add.ptr147, align 1, !dbg !303
  %sh_prom149 = trunc i64 %and145 to i8, !dbg !303
  %shr150 = lshr i8 %24, %sh_prom149, !dbg !303
  %conv138272 = or i8 %conv122271, %shr150, !dbg !304
  %add160 = add nsw i64 %mul143, %18, !dbg !305
  store i64 %add160, ptr @pyr_offset1, align 8, !dbg !305
  %and161 = and i64 %add160, 7, !dbg !305
  store i64 %and161, ptr @pyr_offset2, align 8, !dbg !305
  %shr162 = ashr i64 %add160, 3, !dbg !305
  %add.ptr163 = getelementptr inbounds i8, ptr %19, i64 %shr162, !dbg !305
  store ptr %add.ptr163, ptr @pyr_address2, align 8, !dbg !305
  %25 = load i8, ptr %add.ptr163, align 1, !dbg !305
  %sh_prom165 = trunc i64 %and161 to i8, !dbg !305
  %shr166 = lshr i8 %25, %sh_prom165, !dbg !305
  %conv154273 = or i8 %conv138272, %shr166, !dbg !306
  %add173 = add nsw i64 %mul140, %16, !dbg !307
  %mul175 = mul nsw i64 %add173, %conv64279, !dbg !307
  %add176 = add nsw i64 %mul175, %outx.0278, !dbg !307
  store i64 %add176, ptr @pyr_offset1, align 8, !dbg !307
  %and177 = and i64 %add176, 7, !dbg !307
  store i64 %and177, ptr @pyr_offset2, align 8, !dbg !307
  %shr178 = ashr i64 %add176, 3, !dbg !307
  %add.ptr179 = getelementptr inbounds i8, ptr %19, i64 %shr178, !dbg !307
  store ptr %add.ptr179, ptr @pyr_address2, align 8, !dbg !307
  %26 = load i8, ptr %add.ptr179, align 1, !dbg !307
  %sh_prom181 = trunc i64 %and177 to i8, !dbg !307
  %shr182 = lshr i8 %26, %sh_prom181, !dbg !307
  %conv170274 = or i8 %conv154273, %shr182, !dbg !308
  %add192 = add nsw i64 %mul175, %18, !dbg !309
  store i64 %add192, ptr @pyr_offset1, align 8, !dbg !309
  %and193 = and i64 %add192, 7, !dbg !309
  store i64 %and193, ptr @pyr_offset2, align 8, !dbg !309
  %shr194 = ashr i64 %add192, 3, !dbg !309
  %add.ptr195 = getelementptr inbounds i8, ptr %19, i64 %shr194, !dbg !309
  store ptr %add.ptr195, ptr @pyr_address2, align 8, !dbg !309
  %27 = load i8, ptr %add.ptr195, align 1, !dbg !309
  %sh_prom197 = trunc i64 %and193 to i8, !dbg !309
  %shr198 = lshr i8 %27, %sh_prom197, !dbg !309
  %conv186275 = or i8 %conv170274, %shr198, !dbg !310
  %conv202 = and i8 %conv186275, 1, !dbg !310
  store i64 %add87, ptr @pyr_offset1, align 8, !dbg !311
  store i64 %and, ptr @pyr_offset2, align 8, !dbg !311
  store ptr %add.ptr, ptr @pyr_address2, align 8, !dbg !311
  %shl = shl nuw i8 %conv202, %sh_prom, !dbg !311
  %28 = load i8, ptr %add.ptr, align 1, !dbg !311
  %conv216 = or i8 %28, %shl, !dbg !311
  store i8 %conv216, ptr %add.ptr, align 1, !dbg !311
  call void @llvm.dbg.value(metadata i64 %add68, metadata !246, metadata !DIExpression()), !dbg !265
  %29 = load i16, ptr @pyr_len, align 16, !dbg !285
  %conv64 = sext i16 %29 to i64, !dbg !285
  %cmp65 = icmp slt i64 %add68, %conv64, !dbg !292
  %.pre288 = load i16, ptr getelementptr inbounds ([10 x [3 x i16]], ptr @pyr_len, i64 0, i64 0, i64 1), align 2, !dbg !312
  br i1 %cmp65, label %for.body67, label %for.cond44.loopexit, !dbg !293, !llvm.loop !313

for.end223:                                       ; preds = %for.cond.loopexit, %entry
  ret void, !dbg !315
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @Compute_Pyramid_Level(i64 noundef %level) local_unnamed_addr #4 !dbg !316 {
entry:
  call void @llvm.dbg.value(metadata i64 %level, metadata !320, metadata !DIExpression()), !dbg !331
  %sub = add nsw i64 %level, -1, !dbg !332
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %level, i64 noundef %sub), !dbg !333
  call void @llvm.dbg.value(metadata i64 0, metadata !323, metadata !DIExpression()), !dbg !331
  %arrayidx = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_len, i64 0, i64 %level
  %arrayidx1 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_len, i64 0, i64 %level, i64 2
  call void @llvm.dbg.value(metadata i64 0, metadata !323, metadata !DIExpression()), !dbg !331
  %0 = load i16, ptr %arrayidx1, align 2, !dbg !334
  %cmp377 = icmp sgt i16 %0, 0, !dbg !337
  br i1 %cmp377, label %for.body.lr.ph, label %for.end283, !dbg !338

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx4 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_len, i64 0, i64 %sub
  %arrayidx5 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_len, i64 0, i64 %sub, i64 2
  %arrayidx20 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_len, i64 0, i64 %level, i64 1
  %arrayidx29 = getelementptr inbounds [10 x [3 x i16]], ptr @pyr_len, i64 0, i64 %sub, i64 1
  %arrayidx86 = getelementptr inbounds [10 x ptr], ptr @pyr_address, i64 0, i64 %sub
  %arrayidx269 = getelementptr inbounds [10 x ptr], ptr @pyr_address, i64 0, i64 %level
  %.pre = load i16, ptr %arrayidx20, align 2, !dbg !339
  br label %for.body, !dbg !338

for.body:                                         ; preds = %for.body.lr.ph, %for.inc281
  %1 = phi i16 [ %0, %for.body.lr.ph ], [ %28, %for.inc281 ]
  %2 = phi i16 [ %.pre, %for.body.lr.ph ], [ %29, %for.inc281 ]
  %3 = phi i16 [ %.pre, %for.body.lr.ph ], [ %30, %for.inc281 ], !dbg !339
  %outz.0378 = phi i64 [ 0, %for.body.lr.ph ], [ %inc282, %for.inc281 ]
  call void @llvm.dbg.value(metadata i64 %outz.0378, metadata !323, metadata !DIExpression()), !dbg !331
  %shl = shl nuw i64 %outz.0378, 1, !dbg !343
  call void @llvm.dbg.value(metadata i64 %shl, metadata !326, metadata !DIExpression()), !dbg !331
  %add = or i64 %shl, 1, !dbg !344
  %4 = load i16, ptr %arrayidx5, align 2, !dbg !344
  %conv6 = sext i16 %4 to i64, !dbg !344
  %sub7 = add nsw i64 %conv6, -1, !dbg !344
  %5 = tail call i64 @llvm.smin.i64(i64 %add, i64 %sub7), !dbg !344
  call void @llvm.dbg.value(metadata i64 %5, metadata !329, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i64 0, metadata !322, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i64 0, metadata !322, metadata !DIExpression()), !dbg !331
  %cmp22373 = icmp sgt i16 %3, 0, !dbg !345
  br i1 %cmp22373, label %for.body24.preheader, label %for.inc281, !dbg !346

for.body24.preheader:                             ; preds = %for.body
  %.pre380 = load i16, ptr %arrayidx, align 2, !dbg !347
  br label %for.body24, !dbg !346

for.body24:                                       ; preds = %for.body24.preheader, %for.inc278
  %6 = phi i16 [ %26, %for.inc278 ], [ %2, %for.body24.preheader ]
  %7 = phi i16 [ %27, %for.inc278 ], [ %.pre380, %for.body24.preheader ], !dbg !347
  %outy.0374 = phi i64 [ %inc279, %for.inc278 ], [ 0, %for.body24.preheader ]
  call void @llvm.dbg.value(metadata i64 %outy.0374, metadata !322, metadata !DIExpression()), !dbg !331
  %shl25 = shl nuw i64 %outy.0374, 1, !dbg !351
  call void @llvm.dbg.value(metadata i64 %shl25, metadata !325, metadata !DIExpression()), !dbg !331
  %add26 = or i64 %shl25, 1, !dbg !352
  %8 = load i16, ptr %arrayidx29, align 2, !dbg !352
  %conv30 = sext i16 %8 to i64, !dbg !352
  %sub31 = add nsw i64 %conv30, -1, !dbg !352
  %9 = tail call i64 @llvm.smin.i64(i64 %add26, i64 %sub31), !dbg !352
  call void @llvm.dbg.value(metadata i64 %9, metadata !328, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i64 0, metadata !321, metadata !DIExpression()), !dbg !331
  %cmp50369 = icmp sgt i16 %7, 0, !dbg !353
  br i1 %cmp50369, label %for.body52.preheader, label %for.inc278, !dbg !354

for.body52.preheader:                             ; preds = %for.body24
  %conv49368384 = zext i16 %7 to i64, !dbg !347
  br label %for.body52, !dbg !354

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %for.body52.preheader
  %10 = phi i16 [ %.pre381, %for.body52.for.body52_crit_edge ], [ %8, %for.body52.preheader ], !dbg !355
  %conv49371 = phi i64 [ %conv49, %for.body52.for.body52_crit_edge ], [ %conv49368384, %for.body52.preheader ]
  %outx.0370 = phi i64 [ %inc, %for.body52.for.body52_crit_edge ], [ 0, %for.body52.preheader ]
  call void @llvm.dbg.value(metadata i64 %outx.0370, metadata !321, metadata !DIExpression()), !dbg !331
  %shl53 = shl nuw i64 %outx.0370, 1, !dbg !357
  call void @llvm.dbg.value(metadata i64 %shl53, metadata !324, metadata !DIExpression()), !dbg !331
  %add54 = or i64 %shl53, 1, !dbg !358
  %11 = load i16, ptr %arrayidx4, align 2, !dbg !358
  %conv58 = sext i16 %11 to i64, !dbg !358
  %sub59 = add nsw i64 %conv58, -1, !dbg !358
  %12 = tail call i64 @llvm.smin.i64(i64 %add54, i64 %sub59), !dbg !358
  call void @llvm.dbg.value(metadata i64 %12, metadata !327, metadata !DIExpression()), !dbg !331
  %conv77 = sext i16 %10 to i64, !dbg !355
  %mul = mul nsw i64 %shl, %conv77, !dbg !355
  %add78 = add nsw i64 %mul, %shl25, !dbg !355
  %mul83 = mul nsw i64 %add78, %conv58, !dbg !355
  %add84 = add nsw i64 %mul83, %shl53, !dbg !355
  store i64 %add84, ptr @pyr_offset1, align 8, !dbg !355
  %and = and i64 %add84, 6, !dbg !355
  store i64 %and, ptr @pyr_offset2, align 8, !dbg !355
  %13 = load ptr, ptr %arrayidx86, align 8, !dbg !355
  %shr = ashr i64 %add84, 3, !dbg !355
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %shr, !dbg !355
  store ptr %add.ptr, ptr @pyr_address2, align 8, !dbg !355
  %14 = load i8, ptr %add.ptr, align 1, !dbg !355
  %sh_prom = trunc i64 %and to i8, !dbg !355
  %shr88 = lshr i8 %14, %sh_prom, !dbg !355
  call void @llvm.dbg.value(metadata !DIArgList(i8 %14, i64 %and), metadata !330, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !331
  %add102 = add nsw i64 %mul83, %12, !dbg !359
  store i64 %add102, ptr @pyr_offset1, align 8, !dbg !359
  %and103 = and i64 %add102, 7, !dbg !359
  store i64 %and103, ptr @pyr_offset2, align 8, !dbg !359
  %shr106 = ashr i64 %add102, 3, !dbg !359
  %add.ptr107 = getelementptr inbounds i8, ptr %13, i64 %shr106, !dbg !359
  store ptr %add.ptr107, ptr @pyr_address2, align 8, !dbg !359
  %15 = load i8, ptr %add.ptr107, align 1, !dbg !359
  %sh_prom109 = trunc i64 %and103 to i8, !dbg !359
  %shr110 = lshr i8 %15, %sh_prom109, !dbg !359
  %conv90361 = or i8 %shr110, %shr88, !dbg !360
  call void @llvm.dbg.value(metadata !DIArgList(i8 %14, i8 %15, i64 %and103, i64 %and), metadata !330, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !331
  %add119 = add nsw i64 %mul, %9, !dbg !361
  %mul124 = mul nsw i64 %add119, %conv58, !dbg !361
  %add125 = add nsw i64 %mul124, %shl53, !dbg !361
  store i64 %add125, ptr @pyr_offset1, align 8, !dbg !361
  %and126 = and i64 %add125, 7, !dbg !361
  store i64 %and126, ptr @pyr_offset2, align 8, !dbg !361
  %shr129 = ashr i64 %add125, 3, !dbg !361
  %add.ptr130 = getelementptr inbounds i8, ptr %13, i64 %shr129, !dbg !361
  store ptr %add.ptr130, ptr @pyr_address2, align 8, !dbg !361
  %16 = load i8, ptr %add.ptr130, align 1, !dbg !361
  %sh_prom132 = trunc i64 %and126 to i8, !dbg !361
  %shr133 = lshr i8 %16, %sh_prom132, !dbg !361
  %conv113362 = or i8 %conv90361, %shr133, !dbg !362
  call void @llvm.dbg.value(metadata !DIArgList(i8 %14, i8 %16, i64 %and126, i8 %15, i64 %and103, i64 %and), metadata !330, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !331
  %add149 = add nsw i64 %mul124, %12, !dbg !363
  store i64 %add149, ptr @pyr_offset1, align 8, !dbg !363
  %and150 = and i64 %add149, 7, !dbg !363
  store i64 %and150, ptr @pyr_offset2, align 8, !dbg !363
  %shr153 = ashr i64 %add149, 3, !dbg !363
  %add.ptr154 = getelementptr inbounds i8, ptr %13, i64 %shr153, !dbg !363
  store ptr %add.ptr154, ptr @pyr_address2, align 8, !dbg !363
  %17 = load i8, ptr %add.ptr154, align 1, !dbg !363
  %sh_prom156 = trunc i64 %and150 to i8, !dbg !363
  %shr157 = lshr i8 %17, %sh_prom156, !dbg !363
  %conv137363 = or i8 %conv113362, %shr157, !dbg !364
  call void @llvm.dbg.value(metadata !DIArgList(i8 %14, i8 %17, i64 %and150, i8 %16, i64 %and126, i8 %15, i64 %and103, i64 %and), metadata !330, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !331
  %mul166 = mul nsw i64 %5, %conv77, !dbg !365
  %add167 = add nsw i64 %mul166, %shl25, !dbg !365
  %mul172 = mul nsw i64 %add167, %conv58, !dbg !365
  %add173 = add nsw i64 %mul172, %shl53, !dbg !365
  store i64 %add173, ptr @pyr_offset1, align 8, !dbg !365
  %and174 = and i64 %add173, 7, !dbg !365
  store i64 %and174, ptr @pyr_offset2, align 8, !dbg !365
  %shr177 = ashr i64 %add173, 3, !dbg !365
  %add.ptr178 = getelementptr inbounds i8, ptr %13, i64 %shr177, !dbg !365
  store ptr %add.ptr178, ptr @pyr_address2, align 8, !dbg !365
  %18 = load i8, ptr %add.ptr178, align 1, !dbg !365
  %sh_prom180 = trunc i64 %and174 to i8, !dbg !365
  %shr181 = lshr i8 %18, %sh_prom180, !dbg !365
  %conv161364 = or i8 %conv137363, %shr181, !dbg !366
  call void @llvm.dbg.value(metadata !DIArgList(i8 %14, i8 %18, i64 %and174, i8 %17, i64 %and150, i8 %16, i64 %and126, i8 %15, i64 %and103, i64 %and), metadata !330, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !331
  %add197 = add nsw i64 %mul172, %12, !dbg !367
  store i64 %add197, ptr @pyr_offset1, align 8, !dbg !367
  %and198 = and i64 %add197, 7, !dbg !367
  store i64 %and198, ptr @pyr_offset2, align 8, !dbg !367
  %shr201 = ashr i64 %add197, 3, !dbg !367
  %add.ptr202 = getelementptr inbounds i8, ptr %13, i64 %shr201, !dbg !367
  store ptr %add.ptr202, ptr @pyr_address2, align 8, !dbg !367
  %19 = load i8, ptr %add.ptr202, align 1, !dbg !367
  %sh_prom204 = trunc i64 %and198 to i8, !dbg !367
  %shr205 = lshr i8 %19, %sh_prom204, !dbg !367
  %conv185365 = or i8 %conv161364, %shr205, !dbg !368
  call void @llvm.dbg.value(metadata !DIArgList(i8 %14, i8 %19, i64 %and198, i8 %18, i64 %and174, i8 %17, i64 %and150, i8 %16, i64 %and126, i8 %15, i64 %and103, i64 %and), metadata !330, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 11, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !331
  %add215 = add nsw i64 %mul166, %9, !dbg !369
  %mul220 = mul nsw i64 %add215, %conv58, !dbg !369
  %add221 = add nsw i64 %mul220, %shl53, !dbg !369
  store i64 %add221, ptr @pyr_offset1, align 8, !dbg !369
  %and222 = and i64 %add221, 7, !dbg !369
  store i64 %and222, ptr @pyr_offset2, align 8, !dbg !369
  %shr225 = ashr i64 %add221, 3, !dbg !369
  %add.ptr226 = getelementptr inbounds i8, ptr %13, i64 %shr225, !dbg !369
  store ptr %add.ptr226, ptr @pyr_address2, align 8, !dbg !369
  %20 = load i8, ptr %add.ptr226, align 1, !dbg !369
  %sh_prom228 = trunc i64 %and222 to i8, !dbg !369
  %shr229 = lshr i8 %20, %sh_prom228, !dbg !369
  %conv209366 = or i8 %conv185365, %shr229, !dbg !370
  call void @llvm.dbg.value(metadata !DIArgList(i8 undef, i8 %20, i64 %and222, i8 %19, i64 %and198, i8 %18, i64 %and174, i8 %17, i64 %and150, i8 %16, i64 %and126, i8 %15, i64 %and103, i64 undef), metadata !330, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_shr, DW_OP_LLVM_arg, 11, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 12, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !331
  %add245 = add nsw i64 %mul220, %12, !dbg !371
  store i64 %add245, ptr @pyr_offset1, align 8, !dbg !371
  %and246 = and i64 %add245, 7, !dbg !371
  store i64 %and246, ptr @pyr_offset2, align 8, !dbg !371
  %shr249 = ashr i64 %add245, 3, !dbg !371
  %add.ptr250 = getelementptr inbounds i8, ptr %13, i64 %shr249, !dbg !371
  store ptr %add.ptr250, ptr @pyr_address2, align 8, !dbg !371
  %21 = load i8, ptr %add.ptr250, align 1, !dbg !371
  %sh_prom252 = trunc i64 %and246 to i8, !dbg !371
  %shr253 = lshr i8 %21, %sh_prom252, !dbg !371
  %conv233367 = or i8 %conv209366, %shr253, !dbg !372
  %conv257 = and i8 %conv233367, 1, !dbg !372
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i8 %21, i64 %and246, i8 %20, i64 %and222, i8 %19, i64 %and198, i8 %18, i64 %and174, i8 %17, i64 %and150, i8 %16, i64 %and126, i8 undef, i64 undef), metadata !330, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 11, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 12, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_shr, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !331
  %22 = load i16, ptr %arrayidx20, align 2, !dbg !373
  %conv260 = sext i16 %22 to i64, !dbg !373
  %mul261 = mul nsw i64 %outz.0378, %conv260, !dbg !373
  %add262 = add nsw i64 %mul261, %outy.0374, !dbg !373
  %mul266 = mul nsw i64 %add262, %conv49371, !dbg !373
  %add267 = add nsw i64 %mul266, %outx.0370, !dbg !373
  store i64 %add267, ptr @pyr_offset1, align 8, !dbg !373
  %and268 = and i64 %add267, 7, !dbg !373
  store i64 %and268, ptr @pyr_offset2, align 8, !dbg !373
  %23 = load ptr, ptr %arrayidx269, align 8, !dbg !373
  %shr270 = ashr i64 %add267, 3, !dbg !373
  %add.ptr271 = getelementptr inbounds i8, ptr %23, i64 %shr270, !dbg !373
  store ptr %add.ptr271, ptr @pyr_address2, align 8, !dbg !373
  %sh_prom273 = trunc i64 %and268 to i8, !dbg !373
  %shl274 = shl nuw i8 %conv257, %sh_prom273, !dbg !373
  %24 = load i8, ptr %add.ptr271, align 1, !dbg !373
  %conv277 = or i8 %shl274, %24, !dbg !373
  store i8 %conv277, ptr %add.ptr271, align 1, !dbg !373
  %inc = add nuw nsw i64 %outx.0370, 1, !dbg !374
  call void @llvm.dbg.value(metadata i64 %inc, metadata !321, metadata !DIExpression()), !dbg !331
  %25 = load i16, ptr %arrayidx, align 2, !dbg !347
  %conv49 = sext i16 %25 to i64, !dbg !347
  %cmp50 = icmp slt i64 %inc, %conv49, !dbg !353
  br i1 %cmp50, label %for.body52.for.body52_crit_edge, label %for.inc278.loopexit, !dbg !354, !llvm.loop !375

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  %.pre381 = load i16, ptr %arrayidx29, align 2, !dbg !355
  br label %for.body52, !dbg !354

for.inc278.loopexit:                              ; preds = %for.body52
  %.pre382 = load i16, ptr %arrayidx20, align 2, !dbg !339
  br label %for.inc278, !dbg !377

for.inc278:                                       ; preds = %for.inc278.loopexit, %for.body24
  %26 = phi i16 [ %.pre382, %for.inc278.loopexit ], [ %6, %for.body24 ], !dbg !339
  %27 = phi i16 [ %25, %for.inc278.loopexit ], [ %7, %for.body24 ]
  %inc279 = add nuw nsw i64 %outy.0374, 1, !dbg !377
  call void @llvm.dbg.value(metadata i64 %inc279, metadata !322, metadata !DIExpression()), !dbg !331
  %conv21 = sext i16 %26 to i64, !dbg !339
  %cmp22 = icmp slt i64 %inc279, %conv21, !dbg !345
  br i1 %cmp22, label %for.body24, label %for.inc281.loopexit, !dbg !346, !llvm.loop !378

for.inc281.loopexit:                              ; preds = %for.inc278
  %.pre383 = load i16, ptr %arrayidx1, align 2, !dbg !334
  br label %for.inc281, !dbg !380

for.inc281:                                       ; preds = %for.inc281.loopexit, %for.body
  %28 = phi i16 [ %.pre383, %for.inc281.loopexit ], [ %1, %for.body ], !dbg !334
  %29 = phi i16 [ %26, %for.inc281.loopexit ], [ %2, %for.body ]
  %30 = phi i16 [ %26, %for.inc281.loopexit ], [ %3, %for.body ]
  %inc282 = add nuw nsw i64 %outz.0378, 1, !dbg !380
  call void @llvm.dbg.value(metadata i64 %inc282, metadata !323, metadata !DIExpression()), !dbg !331
  %conv = sext i16 %28 to i64, !dbg !334
  %cmp = icmp slt i64 %inc282, %conv, !dbg !337
  br i1 %cmp, label %for.body, label %for.end283, !dbg !338, !llvm.loop !381

for.end283:                                       ; preds = %for.inc281, %entry
  ret void, !dbg !383
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !dbg !384 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !420 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

declare !dbg !421 void @Error(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @Load_Octree(ptr nocapture noundef readonly %filename) local_unnamed_addr #0 !dbg !426 {
entry:
  %local_filename = alloca [201 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %filename, metadata !430, metadata !DIExpression()), !dbg !437
  call void @llvm.lifetime.start.p0(i64 201, ptr nonnull %local_filename) #14, !dbg !438
  call void @llvm.dbg.declare(metadata ptr %local_filename, metadata !431, metadata !DIExpression()), !dbg !439
  %call = call ptr @strcpy(ptr noundef nonnull %local_filename, ptr noundef nonnull dereferenceable(1) %filename) #14, !dbg !440
  %strlen = call i64 @strlen(ptr noundef nonnull %local_filename), !dbg !441
  %endptr = getelementptr i8, ptr %local_filename, i64 %strlen, !dbg !441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false), !dbg !441
  %call4 = call i32 @Open_File(ptr noundef nonnull %local_filename) #14, !dbg !442
  call void @llvm.dbg.value(metadata i32 %call4, metadata !435, metadata !DIExpression()), !dbg !437
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @pyr_version, i64 noundef 2) #14, !dbg !443
  %0 = load i16, ptr @pyr_version, align 2, !dbg !444
  %cmp.not = icmp eq i16 %0, 1, !dbg !446
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !447

if.then:                                          ; preds = %entry
  %conv = sext i16 %0 to i32, !dbg !444
  call void (ptr, ...) @Error(ptr noundef nonnull @.str.7, i32 noundef %conv) #14, !dbg !448
  br label %if.end, !dbg !448

if.end:                                           ; preds = %if.then, %entry
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @pyr_levels, i64 noundef 2) #14, !dbg !449
  %1 = load i16, ptr @pyr_levels, align 2, !dbg !450
  %conv7 = sext i16 %1 to i64, !dbg !450
  %mul9 = mul nsw i64 %conv7, 24, !dbg !451
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @pyr_len, i64 noundef %mul9) #14, !dbg !452
  %2 = load i16, ptr @pyr_levels, align 2, !dbg !453
  %conv10 = sext i16 %2 to i64, !dbg !453
  %mul13 = mul nsw i64 %conv10, 24, !dbg !454
  call void @Read_Shorts(i32 noundef %call4, ptr noundef nonnull @pyr_voxlen, i64 noundef %mul13) #14, !dbg !455
  %3 = load i16, ptr @pyr_levels, align 2, !dbg !456
  %conv14 = sext i16 %3 to i64, !dbg !456
  %mul15 = shl nsw i64 %conv14, 2, !dbg !457
  call void @Read_Longs(i32 noundef %call4, ptr noundef nonnull @pyr_length, i64 noundef %mul15) #14, !dbg !458
  %4 = load i16, ptr @pyr_levels, align 2, !dbg !459
  %conv16 = sext i16 %4 to i32, !dbg !459
  %call17 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i32 noundef %conv16), !dbg !460
  call void @llvm.dbg.value(metadata i64 0, metadata !436, metadata !DIExpression()), !dbg !437
  %5 = load i16, ptr @pyr_levels, align 2, !dbg !461
  %cmp1941 = icmp sgt i16 %5, 0, !dbg !464
  br i1 %cmp1941, label %for.body, label %for.end, !dbg !465

for.body:                                         ; preds = %if.end, %for.body
  %level.042 = phi i64 [ %inc, %for.body ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %level.042, metadata !436, metadata !DIExpression()), !dbg !437
  %arrayidx = getelementptr inbounds [10 x ptr], ptr @pyr_address, i64 0, i64 %level.042, !dbg !466
  %arrayidx21 = getelementptr inbounds [10 x i32], ptr @pyr_length, i64 0, i64 %level.042, !dbg !468
  %6 = load i32, ptr %arrayidx21, align 4, !dbg !468
  %conv22 = sext i32 %6 to i64, !dbg !468
  call void @Allocate_Pyramid_Level(ptr noundef nonnull %arrayidx, i64 noundef %conv22), !dbg !469
  %call23 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %level.042), !dbg !470
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !471
  %8 = load i32, ptr %arrayidx21, align 4, !dbg !472
  %conv26 = sext i32 %8 to i64, !dbg !472
  call void @Read_Bytes(i32 noundef %call4, ptr noundef %7, i64 noundef %conv26) #14, !dbg !473
  %inc = add nuw nsw i64 %level.042, 1, !dbg !474
  call void @llvm.dbg.value(metadata i64 %inc, metadata !436, metadata !DIExpression()), !dbg !437
  %9 = load i16, ptr @pyr_levels, align 2, !dbg !461
  %conv18 = sext i16 %9 to i64, !dbg !461
  %cmp19 = icmp slt i64 %inc, %conv18, !dbg !464
  br i1 %cmp19, label %for.body, label %for.end, !dbg !465, !llvm.loop !475

for.end:                                          ; preds = %for.body, %if.end
  call void @Close_File(i32 noundef %call4) #14, !dbg !477
  call void @llvm.lifetime.end.p0(i64 201, ptr nonnull %local_filename) #14, !dbg !478
  ret void, !dbg !478
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

declare !dbg !479 i32 @Open_File(ptr noundef) local_unnamed_addr #7

declare !dbg !482 void @Read_Shorts(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !485 void @Read_Longs(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !486 void @Read_Bytes(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !487 void @Close_File(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @Store_Octree(ptr nocapture noundef readonly %filename) local_unnamed_addr #0 !dbg !490 {
entry:
  %local_filename = alloca [201 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %filename, metadata !492, metadata !DIExpression()), !dbg !496
  call void @llvm.lifetime.start.p0(i64 201, ptr nonnull %local_filename) #14, !dbg !497
  call void @llvm.dbg.declare(metadata ptr %local_filename, metadata !493, metadata !DIExpression()), !dbg !498
  %call = call ptr @strcpy(ptr noundef nonnull %local_filename, ptr noundef nonnull dereferenceable(1) %filename) #14, !dbg !499
  %strlen = call i64 @strlen(ptr noundef nonnull %local_filename), !dbg !500
  %endptr = getelementptr i8, ptr %local_filename, i64 %strlen, !dbg !500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false), !dbg !500
  %call4 = call i32 @Create_File(ptr noundef nonnull %local_filename) #14, !dbg !501
  call void @llvm.dbg.value(metadata i32 %call4, metadata !494, metadata !DIExpression()), !dbg !496
  store i16 1, ptr @pyr_version, align 2, !dbg !502
  call void @Write_Shorts(i32 noundef %call4, ptr noundef nonnull @pyr_version, i64 noundef 2) #14, !dbg !503
  call void @Write_Shorts(i32 noundef %call4, ptr noundef nonnull @pyr_levels, i64 noundef 2) #14, !dbg !504
  %0 = load i16, ptr @pyr_levels, align 2, !dbg !505
  %conv = sext i16 %0 to i64, !dbg !505
  %mul6 = mul nsw i64 %conv, 24, !dbg !506
  call void @Write_Shorts(i32 noundef %call4, ptr noundef nonnull @pyr_len, i64 noundef %mul6) #14, !dbg !507
  %1 = load i16, ptr @pyr_levels, align 2, !dbg !508
  %conv7 = sext i16 %1 to i64, !dbg !508
  %mul10 = mul nsw i64 %conv7, 24, !dbg !509
  call void @Write_Shorts(i32 noundef %call4, ptr noundef nonnull @pyr_voxlen, i64 noundef %mul10) #14, !dbg !510
  %2 = load i16, ptr @pyr_levels, align 2, !dbg !511
  %conv11 = sext i16 %2 to i64, !dbg !511
  %mul12 = shl nsw i64 %conv11, 2, !dbg !512
  call void @Write_Longs(i32 noundef %call4, ptr noundef nonnull @pyr_length, i64 noundef %mul12) #14, !dbg !513
  %3 = load i16, ptr @pyr_levels, align 2, !dbg !514
  %conv13 = sext i16 %3 to i32, !dbg !514
  %call14 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, i32 noundef %conv13), !dbg !515
  call void @llvm.dbg.value(metadata i64 0, metadata !495, metadata !DIExpression()), !dbg !496
  %4 = load i16, ptr @pyr_levels, align 2, !dbg !516
  %cmp32 = icmp sgt i16 %4, 0, !dbg !519
  br i1 %cmp32, label %for.body, label %for.end, !dbg !520

for.body:                                         ; preds = %entry, %for.body
  %level.033 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %level.033, metadata !495, metadata !DIExpression()), !dbg !496
  %call17 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, i64 noundef %level.033), !dbg !521
  %arrayidx = getelementptr inbounds [10 x ptr], ptr @pyr_address, i64 0, i64 %level.033, !dbg !523
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !523
  %arrayidx18 = getelementptr inbounds [10 x i32], ptr @pyr_length, i64 0, i64 %level.033, !dbg !524
  %6 = load i32, ptr %arrayidx18, align 4, !dbg !524
  %conv19 = sext i32 %6 to i64, !dbg !524
  call void @Write_Bytes(i32 noundef %call4, ptr noundef %5, i64 noundef %conv19) #14, !dbg !525
  %inc = add nuw nsw i64 %level.033, 1, !dbg !526
  call void @llvm.dbg.value(metadata i64 %inc, metadata !495, metadata !DIExpression()), !dbg !496
  %7 = load i16, ptr @pyr_levels, align 2, !dbg !516
  %conv15 = sext i16 %7 to i64, !dbg !516
  %cmp = icmp slt i64 %inc, %conv15, !dbg !519
  br i1 %cmp, label %for.body, label %for.end, !dbg !520, !llvm.loop !527

for.end:                                          ; preds = %for.body, %entry
  call void @Close_File(i32 noundef %call4) #14, !dbg !529
  call void @llvm.lifetime.end.p0(i64 201, ptr nonnull %local_filename) #14, !dbg !530
  ret void, !dbg !530
}

declare !dbg !531 i32 @Create_File(ptr noundef) local_unnamed_addr #7

declare !dbg !532 void @Write_Shorts(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !533 void @Write_Longs(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !534 void @Write_Bytes(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pyr_levels", scope: !2, file: !3, line: 40, type: !17, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "octree.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "f3ee0f6b21430e12e172a94faed46227")
!4 = !{!5, !6, !7, !8, !12, !13}
!5 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!6 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "BYTE", file: !10, line: 28, baseType: !11)
!10 = !DIFile(filename: "./my_types.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "1c0e36810bc34cd72ba4bfe4a2cdcc97")
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!14 = !{!15, !0, !18, !24, !26, !31, !34, !36, !38}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "pyr_version", scope: !2, file: !3, line: 38, type: !17, isLocal: false, isDefinition: true)
!17 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "pyr_len", scope: !2, file: !3, line: 42, type: !20, isLocal: false, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 480, elements: !21)
!21 = !{!22, !23}
!22 = !DISubrange(count: 10)
!23 = !DISubrange(count: 3)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "pyr_voxlen", scope: !2, file: !3, line: 43, type: !20, isLocal: false, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "pyr_length", scope: !2, file: !3, line: 45, type: !28, isLocal: false, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 320, elements: !30)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !{!22}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "pyr_address", scope: !2, file: !3, line: 47, type: !33, isLocal: false, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 640, elements: !30)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "pyr_offset1", scope: !2, file: !3, line: 66, type: !6, isLocal: false, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "pyr_offset2", scope: !2, file: !3, line: 67, type: !6, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "pyr_address2", scope: !2, file: !3, line: 68, type: !8, isLocal: false, isDefinition: true)
!40 = !{i32 7, !"Dwarf Version", i32 5}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 4}
!43 = !{i32 7, !"PIC Level", i32 2}
!44 = !{i32 7, !"PIE Level", i32 2}
!45 = !{i32 7, !"uwtable", i32 2}
!46 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!47 = distinct !DISubprogram(name: "Compute_Octree", scope: !3, file: !3, line: 90, type: !48, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{null}
!50 = !{!51, !52, !53}
!51 = !DILocalVariable(name: "level", scope: !47, file: !3, line: 92, type: !6)
!52 = !DILocalVariable(name: "max_len", scope: !47, file: !3, line: 92, type: !6)
!53 = !DILocalVariable(name: "i", scope: !47, file: !3, line: 93, type: !6)
!54 = !DILocation(line: 0, scope: !47)
!55 = !DILocation(line: 95, column: 3, scope: !56)
!56 = distinct !DILexicalBlock(scope: !47, file: !3, line: 95, column: 3)
!57 = !DILocation(line: 96, column: 15, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !3, line: 95, column: 24)
!59 = distinct !DILexicalBlock(scope: !56, file: !3, line: 95, column: 3)
!60 = !DILocation(line: 95, column: 20, scope: !59)
!61 = !DILocation(line: 95, column: 14, scope: !59)
!62 = distinct !{!62, !55, !63, !64, !65}
!63 = !DILocation(line: 97, column: 3, scope: !56)
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !DILocation(line: 99, column: 15, scope: !47)
!67 = !DILocation(line: 99, column: 25, scope: !47)
!68 = !DILocation(line: 99, column: 12, scope: !47)
!69 = !DILocation(line: 99, column: 10, scope: !47)
!70 = !DILocation(line: 99, column: 30, scope: !47)
!71 = !DILocation(line: 100, column: 15, scope: !47)
!72 = !DILocation(line: 99, column: 3, scope: !47)
!73 = distinct !{!73, !72, !71, !64, !65}
!74 = !DILocation(line: 101, column: 3, scope: !47)
!75 = !DILocation(line: 105, column: 19, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 104, column: 24)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 104, column: 3)
!78 = distinct !DILexicalBlock(scope: !47, file: !3, line: 104, column: 3)
!79 = !DILocation(line: 104, column: 3, scope: !78)
!80 = !DILocation(line: 106, column: 5, scope: !76)
!81 = !DILocation(line: 106, column: 22, scope: !76)
!82 = !DILocation(line: 104, column: 20, scope: !77)
!83 = !DILocation(line: 104, column: 14, scope: !77)
!84 = distinct !{!84, !79, !85, !64, !65}
!85 = !DILocation(line: 107, column: 3, scope: !78)
!86 = !DILocation(line: 108, column: 20, scope: !47)
!87 = !DILocation(line: 108, column: 34, scope: !47)
!88 = !DILocation(line: 108, column: 33, scope: !47)
!89 = !DILocation(line: 108, column: 48, scope: !47)
!90 = !DILocation(line: 108, column: 47, scope: !47)
!91 = !DILocation(line: 108, column: 61, scope: !47)
!92 = !DILocation(line: 108, column: 64, scope: !47)
!93 = !DILocation(line: 108, column: 17, scope: !47)
!94 = !DILocation(line: 109, column: 43, scope: !47)
!95 = !DILocation(line: 109, column: 3, scope: !47)
!96 = !DILocation(line: 111, column: 3, scope: !47)
!97 = !DILocation(line: 113, column: 3, scope: !47)
!98 = !DILocation(line: 113, column: 17, scope: !47)
!99 = !DILocation(line: 137, column: 3, scope: !47)
!100 = !DILocation(line: 140, column: 3, scope: !47)
!101 = !DILocation(line: 142, column: 3, scope: !47)
!102 = !DILocation(line: 142, column: 17, scope: !47)
!103 = !DILocation(line: 167, column: 3, scope: !47)
!104 = !DILocation(line: 170, column: 23, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !3, line: 170, column: 3)
!106 = distinct !DILexicalBlock(scope: !47, file: !3, line: 170, column: 3)
!107 = !DILocation(line: 170, column: 22, scope: !105)
!108 = !DILocation(line: 170, column: 3, scope: !106)
!109 = !DILocation(line: 171, column: 5, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !3, line: 171, column: 5)
!111 = distinct !DILexicalBlock(scope: !105, file: !3, line: 170, column: 44)
!112 = !DILocation(line: 172, column: 11, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !3, line: 172, column: 11)
!114 = distinct !DILexicalBlock(scope: !115, file: !3, line: 171, column: 26)
!115 = distinct !DILexicalBlock(scope: !110, file: !3, line: 171, column: 5)
!116 = !DILocation(line: 172, column: 31, scope: !113)
!117 = !DILocation(line: 172, column: 11, scope: !114)
!118 = !DILocation(line: 174, column: 24, scope: !119)
!119 = distinct !DILexicalBlock(scope: !113, file: !3, line: 172, column: 36)
!120 = !DILocation(line: 174, column: 27, scope: !119)
!121 = !DILocation(line: 174, column: 4, scope: !119)
!122 = !DILocation(line: 176, column: 4, scope: !119)
!123 = !DILocation(line: 176, column: 26, scope: !119)
!124 = !DILocation(line: 177, column: 7, scope: !119)
!125 = !DILocation(line: 182, column: 4, scope: !126)
!126 = distinct !DILexicalBlock(scope: !113, file: !3, line: 178, column: 12)
!127 = !DILocation(line: 0, scope: !113)
!128 = !DILocation(line: 173, column: 2, scope: !119)
!129 = !DILocation(line: 173, column: 20, scope: !119)
!130 = !DILocation(line: 175, column: 2, scope: !119)
!131 = !DILocation(line: 175, column: 23, scope: !119)
!132 = !DILocation(line: 171, column: 22, scope: !115)
!133 = !DILocation(line: 171, column: 16, scope: !115)
!134 = distinct !{!134, !109, !135, !64, !65}
!135 = !DILocation(line: 184, column: 5, scope: !110)
!136 = !DILocation(line: 185, column: 26, scope: !111)
!137 = !DILocation(line: 186, column: 5, scope: !111)
!138 = !DILocation(line: 185, column: 43, scope: !111)
!139 = !DILocation(line: 186, column: 23, scope: !111)
!140 = !DILocation(line: 186, column: 22, scope: !111)
!141 = !DILocation(line: 186, column: 40, scope: !111)
!142 = !DILocation(line: 186, column: 43, scope: !111)
!143 = !DILocation(line: 185, column: 5, scope: !111)
!144 = !DILocation(line: 185, column: 23, scope: !111)
!145 = !DILocation(line: 187, column: 29, scope: !111)
!146 = !DILocation(line: 187, column: 49, scope: !111)
!147 = !DILocation(line: 187, column: 5, scope: !111)
!148 = !DILocation(line: 188, column: 5, scope: !111)
!149 = !DILocation(line: 170, column: 40, scope: !105)
!150 = distinct !{!150, !108, !151, !64, !65}
!151 = !DILocation(line: 189, column: 3, scope: !106)
!152 = !DILocation(line: 190, column: 1, scope: !47)
!153 = distinct !DISubprogram(name: "Allocate_Pyramid_Level", scope: !3, file: !3, line: 340, type: !154, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !157)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !156, !6}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!157 = !{!158, !159, !160}
!158 = !DILocalVariable(name: "address", arg: 1, scope: !153, file: !3, line: 341, type: !156)
!159 = !DILocalVariable(name: "length", arg: 2, scope: !153, file: !3, line: 342, type: !6)
!160 = !DILocalVariable(name: "i", scope: !153, file: !3, line: 344, type: !6)
!161 = !DILocation(line: 0, scope: !153)
!162 = !DILocation(line: 346, column: 3, scope: !153)
!163 = !DILocation(line: 353, column: 22, scope: !153)
!164 = !DILocation(line: 353, column: 12, scope: !153)
!165 = !DILocation(line: 355, column: 16, scope: !166)
!166 = distinct !DILexicalBlock(scope: !153, file: !3, line: 355, column: 7)
!167 = !DILocation(line: 355, column: 7, scope: !153)
!168 = !DILocation(line: 356, column: 5, scope: !166)
!169 = !DILocation(line: 362, column: 14, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 362, column: 3)
!171 = distinct !DILexicalBlock(scope: !153, file: !3, line: 362, column: 3)
!172 = !DILocation(line: 362, column: 3, scope: !171)
!173 = !DILocation(line: 362, column: 30, scope: !170)
!174 = !DILocation(line: 362, column: 38, scope: !170)
!175 = !DILocation(line: 362, column: 42, scope: !170)
!176 = !DILocation(line: 362, column: 24, scope: !170)
!177 = distinct !{!177, !172, !178, !64, !65}
!178 = !DILocation(line: 362, column: 44, scope: !171)
!179 = !DILocation(line: 364, column: 1, scope: !153)
!180 = distinct !DISubprogram(name: "Compute_Base", scope: !3, file: !3, line: 193, type: !48, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !181)
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195}
!182 = !DILocalVariable(name: "outx", scope: !180, file: !3, line: 195, type: !6)
!183 = !DILocalVariable(name: "outy", scope: !180, file: !3, line: 195, type: !6)
!184 = !DILocalVariable(name: "outz", scope: !180, file: !3, line: 195, type: !6)
!185 = !DILocalVariable(name: "zstart", scope: !180, file: !3, line: 196, type: !6)
!186 = !DILocalVariable(name: "zstop", scope: !180, file: !3, line: 196, type: !6)
!187 = !DILocalVariable(name: "num_xqueue", scope: !180, file: !3, line: 197, type: !6)
!188 = !DILocalVariable(name: "num_yqueue", scope: !180, file: !3, line: 197, type: !6)
!189 = !DILocalVariable(name: "num_zqueue", scope: !180, file: !3, line: 197, type: !6)
!190 = !DILocalVariable(name: "num_queue", scope: !180, file: !3, line: 197, type: !6)
!191 = !DILocalVariable(name: "xstart", scope: !180, file: !3, line: 198, type: !6)
!192 = !DILocalVariable(name: "xstop", scope: !180, file: !3, line: 198, type: !6)
!193 = !DILocalVariable(name: "ystart", scope: !180, file: !3, line: 198, type: !6)
!194 = !DILocalVariable(name: "ystop", scope: !180, file: !3, line: 198, type: !6)
!195 = !DILocalVariable(name: "my_node", scope: !180, file: !3, line: 199, type: !6)
!196 = !DILocation(line: 201, column: 25, scope: !197)
!197 = distinct !DILexicalBlock(scope: !180, file: !3, line: 201, column: 3)
!198 = !DILocation(line: 201, column: 33, scope: !197)
!199 = !DILocation(line: 201, column: 4, scope: !197)
!200 = !DILocation(line: 202, column: 13, scope: !180)
!201 = !DILocation(line: 202, column: 26, scope: !180)
!202 = !DILocation(line: 0, scope: !180)
!203 = !DILocation(line: 203, column: 27, scope: !204)
!204 = distinct !DILexicalBlock(scope: !180, file: !3, line: 203, column: 3)
!205 = !DILocation(line: 203, column: 35, scope: !204)
!206 = !DILocation(line: 203, column: 4, scope: !204)
!207 = !DILocation(line: 210, column: 16, scope: !180)
!208 = !DILocation(line: 211, column: 16, scope: !180)
!209 = !DILocation(line: 212, column: 16, scope: !180)
!210 = !DILocation(line: 217, column: 11, scope: !180)
!211 = !DILocation(line: 219, column: 11, scope: !180)
!212 = !DILocation(line: 231, column: 11, scope: !180)
!213 = !DILocation(line: 234, column: 25, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 234, column: 3)
!215 = distinct !DILexicalBlock(scope: !180, file: !3, line: 234, column: 3)
!216 = !DILocation(line: 234, column: 3, scope: !215)
!217 = !DILocation(line: 237, column: 6, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !3, line: 237, column: 6)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 236, column: 45)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 236, column: 7)
!221 = distinct !DILexicalBlock(scope: !222, file: !3, line: 236, column: 7)
!222 = distinct !DILexicalBlock(scope: !223, file: !3, line: 235, column: 43)
!223 = distinct !DILexicalBlock(scope: !224, file: !3, line: 235, column: 5)
!224 = distinct !DILexicalBlock(scope: !225, file: !3, line: 235, column: 5)
!225 = distinct !DILexicalBlock(scope: !214, file: !3, line: 234, column: 41)
!226 = !DILocation(line: 235, column: 5, scope: !224)
!227 = !DILocation(line: 236, column: 7, scope: !221)
!228 = !DILocation(line: 237, column: 26, scope: !218)
!229 = !DILocation(line: 0, scope: !218)
!230 = !DILocation(line: 237, column: 6, scope: !219)
!231 = !DILocation(line: 240, column: 4, scope: !218)
!232 = !DILocation(line: 236, column: 41, scope: !220)
!233 = !DILocation(line: 236, column: 29, scope: !220)
!234 = distinct !{!234, !227, !235, !64, !65}
!235 = !DILocation(line: 241, column: 7, scope: !221)
!236 = !DILocation(line: 235, column: 39, scope: !223)
!237 = !DILocation(line: 235, column: 27, scope: !223)
!238 = distinct !{!238, !226, !239, !64, !65}
!239 = !DILocation(line: 242, column: 5, scope: !224)
!240 = !DILocation(line: 234, column: 37, scope: !214)
!241 = distinct !{!241, !216, !242, !64, !65}
!242 = !DILocation(line: 243, column: 3, scope: !215)
!243 = !DILocation(line: 263, column: 1, scope: !180)
!244 = distinct !DISubprogram(name: "Or_Neighbors_In_Base", scope: !3, file: !3, line: 266, type: !48, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !255, !256, !257, !258}
!246 = !DILocalVariable(name: "outx", scope: !244, file: !3, line: 268, type: !6)
!247 = !DILocalVariable(name: "outy", scope: !244, file: !3, line: 268, type: !6)
!248 = !DILocalVariable(name: "outz", scope: !244, file: !3, line: 268, type: !6)
!249 = !DILocalVariable(name: "outx_plus_one", scope: !244, file: !3, line: 269, type: !6)
!250 = !DILocalVariable(name: "outy_plus_one", scope: !244, file: !3, line: 269, type: !6)
!251 = !DILocalVariable(name: "outz_plus_one", scope: !244, file: !3, line: 269, type: !6)
!252 = !DILocalVariable(name: "bit", scope: !244, file: !3, line: 270, type: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOLEAN", file: !10, line: 34, baseType: !254)
!254 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!255 = !DILocalVariable(name: "pmap_partition", scope: !244, file: !3, line: 271, type: !6)
!256 = !DILocalVariable(name: "zstart", scope: !244, file: !3, line: 271, type: !6)
!257 = !DILocalVariable(name: "zstop", scope: !244, file: !3, line: 271, type: !6)
!258 = !DILocalVariable(name: "my_node", scope: !244, file: !3, line: 272, type: !6)
!259 = !DILocation(line: 274, column: 25, scope: !260)
!260 = distinct !DILexicalBlock(scope: !244, file: !3, line: 274, column: 3)
!261 = !DILocation(line: 274, column: 33, scope: !260)
!262 = !DILocation(line: 274, column: 4, scope: !260)
!263 = !DILocation(line: 275, column: 13, scope: !244)
!264 = !DILocation(line: 275, column: 26, scope: !244)
!265 = !DILocation(line: 0, scope: !244)
!266 = !DILocation(line: 276, column: 27, scope: !267)
!267 = distinct !DILexicalBlock(scope: !244, file: !3, line: 276, column: 3)
!268 = !DILocation(line: 276, column: 35, scope: !267)
!269 = !DILocation(line: 276, column: 4, scope: !267)
!270 = !DILocation(line: 284, column: 20, scope: !244)
!271 = !DILocation(line: 295, column: 11, scope: !244)
!272 = !DILocation(line: 298, column: 25, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 298, column: 3)
!274 = distinct !DILexicalBlock(scope: !244, file: !3, line: 298, column: 3)
!275 = !DILocation(line: 298, column: 3, scope: !274)
!276 = !DILocation(line: 300, column: 23, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !3, line: 300, column: 5)
!278 = distinct !DILexicalBlock(scope: !279, file: !3, line: 300, column: 5)
!279 = distinct !DILexicalBlock(scope: !273, file: !3, line: 298, column: 41)
!280 = distinct !{!280, !275, !281, !64, !65}
!281 = !DILocation(line: 317, column: 3, scope: !274)
!282 = !DILocation(line: 299, column: 21, scope: !279)
!283 = !DILocation(line: 300, column: 22, scope: !277)
!284 = !DILocation(line: 300, column: 5, scope: !278)
!285 = !DILocation(line: 302, column: 25, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !3, line: 302, column: 7)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 302, column: 7)
!288 = distinct !DILexicalBlock(scope: !277, file: !3, line: 300, column: 46)
!289 = distinct !{!289, !284, !290, !64, !65}
!290 = !DILocation(line: 316, column: 5, scope: !278)
!291 = !DILocation(line: 301, column: 23, scope: !288)
!292 = !DILocation(line: 302, column: 24, scope: !286)
!293 = !DILocation(line: 302, column: 7, scope: !287)
!294 = !DILocation(line: 305, column: 8, scope: !295)
!295 = distinct !DILexicalBlock(scope: !286, file: !3, line: 302, column: 48)
!296 = !DILocation(line: 303, column: 18, scope: !295)
!297 = !DILocation(line: 306, column: 9, scope: !295)
!298 = !DILocation(line: 306, column: 6, scope: !295)
!299 = !DILocation(line: 307, column: 9, scope: !295)
!300 = !DILocation(line: 307, column: 6, scope: !295)
!301 = !DILocation(line: 308, column: 9, scope: !295)
!302 = !DILocation(line: 308, column: 6, scope: !295)
!303 = !DILocation(line: 309, column: 9, scope: !295)
!304 = !DILocation(line: 309, column: 6, scope: !295)
!305 = !DILocation(line: 310, column: 9, scope: !295)
!306 = !DILocation(line: 310, column: 6, scope: !295)
!307 = !DILocation(line: 311, column: 9, scope: !295)
!308 = !DILocation(line: 311, column: 6, scope: !295)
!309 = !DILocation(line: 312, column: 9, scope: !295)
!310 = !DILocation(line: 312, column: 6, scope: !295)
!311 = !DILocation(line: 314, column: 2, scope: !295)
!312 = !DILocation(line: 0, scope: !277)
!313 = distinct !{!313, !293, !314, !64, !65}
!314 = !DILocation(line: 315, column: 7, scope: !287)
!315 = !DILocation(line: 337, column: 1, scope: !244)
!316 = distinct !DISubprogram(name: "Compute_Pyramid_Level", scope: !3, file: !3, line: 367, type: !317, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !319)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !6}
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!320 = !DILocalVariable(name: "level", arg: 1, scope: !316, file: !3, line: 368, type: !6)
!321 = !DILocalVariable(name: "outx", scope: !316, file: !3, line: 370, type: !6)
!322 = !DILocalVariable(name: "outy", scope: !316, file: !3, line: 370, type: !6)
!323 = !DILocalVariable(name: "outz", scope: !316, file: !3, line: 370, type: !6)
!324 = !DILocalVariable(name: "inx", scope: !316, file: !3, line: 371, type: !6)
!325 = !DILocalVariable(name: "iny", scope: !316, file: !3, line: 371, type: !6)
!326 = !DILocalVariable(name: "inz", scope: !316, file: !3, line: 371, type: !6)
!327 = !DILocalVariable(name: "inx_plus_one", scope: !316, file: !3, line: 372, type: !6)
!328 = !DILocalVariable(name: "iny_plus_one", scope: !316, file: !3, line: 372, type: !6)
!329 = !DILocalVariable(name: "inz_plus_one", scope: !316, file: !3, line: 372, type: !6)
!330 = !DILocalVariable(name: "bit", scope: !316, file: !3, line: 373, type: !253)
!331 = !DILocation(line: 0, scope: !316)
!332 = !DILocation(line: 376, column: 14, scope: !316)
!333 = !DILocation(line: 375, column: 3, scope: !316)
!334 = !DILocation(line: 377, column: 21, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !3, line: 377, column: 3)
!336 = distinct !DILexicalBlock(scope: !316, file: !3, line: 377, column: 3)
!337 = !DILocation(line: 377, column: 20, scope: !335)
!338 = !DILocation(line: 377, column: 3, scope: !336)
!339 = !DILocation(line: 380, column: 23, scope: !340)
!340 = distinct !DILexicalBlock(scope: !341, file: !3, line: 380, column: 5)
!341 = distinct !DILexicalBlock(scope: !342, file: !3, line: 380, column: 5)
!342 = distinct !DILexicalBlock(scope: !335, file: !3, line: 377, column: 48)
!343 = !DILocation(line: 378, column: 15, scope: !342)
!344 = !DILocation(line: 379, column: 20, scope: !342)
!345 = !DILocation(line: 380, column: 22, scope: !340)
!346 = !DILocation(line: 380, column: 5, scope: !341)
!347 = !DILocation(line: 383, column: 25, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !3, line: 383, column: 7)
!349 = distinct !DILexicalBlock(scope: !350, file: !3, line: 383, column: 7)
!350 = distinct !DILexicalBlock(scope: !340, file: !3, line: 380, column: 50)
!351 = !DILocation(line: 381, column: 17, scope: !350)
!352 = !DILocation(line: 382, column: 22, scope: !350)
!353 = !DILocation(line: 383, column: 24, scope: !348)
!354 = !DILocation(line: 383, column: 7, scope: !349)
!355 = !DILocation(line: 387, column: 8, scope: !356)
!356 = distinct !DILexicalBlock(scope: !348, file: !3, line: 383, column: 52)
!357 = !DILocation(line: 384, column: 12, scope: !356)
!358 = !DILocation(line: 385, column: 17, scope: !356)
!359 = !DILocation(line: 388, column: 9, scope: !356)
!360 = !DILocation(line: 388, column: 6, scope: !356)
!361 = !DILocation(line: 389, column: 9, scope: !356)
!362 = !DILocation(line: 389, column: 6, scope: !356)
!363 = !DILocation(line: 390, column: 9, scope: !356)
!364 = !DILocation(line: 390, column: 6, scope: !356)
!365 = !DILocation(line: 391, column: 9, scope: !356)
!366 = !DILocation(line: 391, column: 6, scope: !356)
!367 = !DILocation(line: 392, column: 9, scope: !356)
!368 = !DILocation(line: 392, column: 6, scope: !356)
!369 = !DILocation(line: 393, column: 9, scope: !356)
!370 = !DILocation(line: 393, column: 6, scope: !356)
!371 = !DILocation(line: 394, column: 9, scope: !356)
!372 = !DILocation(line: 394, column: 6, scope: !356)
!373 = !DILocation(line: 396, column: 2, scope: !356)
!374 = !DILocation(line: 383, column: 48, scope: !348)
!375 = distinct !{!375, !354, !376, !64, !65}
!376 = !DILocation(line: 397, column: 7, scope: !349)
!377 = !DILocation(line: 380, column: 46, scope: !340)
!378 = distinct !{!378, !346, !379, !64, !65}
!379 = !DILocation(line: 398, column: 5, scope: !341)
!380 = !DILocation(line: 377, column: 44, scope: !335)
!381 = distinct !{!381, !338, !382, !64, !65}
!382 = !DILocation(line: 399, column: 3, scope: !336)
!383 = !DILocation(line: 400, column: 1, scope: !316)
!384 = !DISubprogram(name: "pthread_mutex_lock", scope: !385, file: !385, line: 738, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !419)
!385 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!386 = !DISubroutineType(types: !387)
!387 = !{!29, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !390, line: 72, baseType: !391)
!390 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!391 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !390, line: 67, size: 320, elements: !392)
!392 = !{!393, !413, !418}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !391, file: !390, line: 69, baseType: !394, size: 320)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !395, line: 22, size: 320, elements: !396)
!395 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!396 = !{!397, !398, !400, !401, !402, !403, !404, !405}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !394, file: !395, line: 24, baseType: !29, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !394, file: !395, line: 25, baseType: !399, size: 32, offset: 32)
!399 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !394, file: !395, line: 26, baseType: !29, size: 32, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !394, file: !395, line: 28, baseType: !399, size: 32, offset: 96)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !394, file: !395, line: 32, baseType: !29, size: 32, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !394, file: !395, line: 34, baseType: !17, size: 16, offset: 160)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !394, file: !395, line: 35, baseType: !17, size: 16, offset: 176)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !394, file: !395, line: 36, baseType: !406, size: 128, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !407, line: 53, baseType: !408)
!407 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !407, line: 49, size: 128, elements: !409)
!409 = !{!410, !412}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !408, file: !407, line: 51, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !408, file: !407, line: 52, baseType: !411, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !391, file: !390, line: 70, baseType: !414, size: 320)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 320, elements: !416)
!415 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!416 = !{!417}
!417 = !DISubrange(count: 40)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !391, file: !390, line: 71, baseType: !6, size: 64)
!419 = !{}
!420 = !DISubprogram(name: "pthread_mutex_unlock", scope: !385, file: !385, line: 756, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !419)
!421 = !DISubprogram(name: "Error", scope: !422, file: !422, line: 187, type: !423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !419)
!422 = !DIFile(filename: "./global.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "f049690031a7f12768b0765e4f4983eb")
!423 = !DISubroutineType(types: !424)
!424 = !{null, !425, null}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!426 = distinct !DISubprogram(name: "Load_Octree", scope: !3, file: !3, line: 403, type: !427, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !429)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !425}
!429 = !{!430, !431, !435, !436}
!430 = !DILocalVariable(name: "filename", arg: 1, scope: !426, file: !3, line: 404, type: !425)
!431 = !DILocalVariable(name: "local_filename", scope: !426, file: !3, line: 406, type: !432)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 1608, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 201)
!435 = !DILocalVariable(name: "fd", scope: !426, file: !3, line: 407, type: !29)
!436 = !DILocalVariable(name: "level", scope: !426, file: !3, line: 408, type: !6)
!437 = !DILocation(line: 0, scope: !426)
!438 = !DILocation(line: 406, column: 3, scope: !426)
!439 = !DILocation(line: 406, column: 8, scope: !426)
!440 = !DILocation(line: 410, column: 3, scope: !426)
!441 = !DILocation(line: 411, column: 3, scope: !426)
!442 = !DILocation(line: 412, column: 8, scope: !426)
!443 = !DILocation(line: 414, column: 3, scope: !426)
!444 = !DILocation(line: 415, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !426, file: !3, line: 415, column: 7)
!446 = !DILocation(line: 415, column: 19, scope: !445)
!447 = !DILocation(line: 415, column: 7, scope: !426)
!448 = !DILocation(line: 416, column: 5, scope: !445)
!449 = !DILocation(line: 418, column: 3, scope: !426)
!450 = !DILocation(line: 419, column: 50, scope: !426)
!451 = !DILocation(line: 419, column: 63, scope: !426)
!452 = !DILocation(line: 419, column: 3, scope: !426)
!453 = !DILocation(line: 420, column: 53, scope: !426)
!454 = !DILocation(line: 420, column: 66, scope: !426)
!455 = !DILocation(line: 420, column: 3, scope: !426)
!456 = !DILocation(line: 421, column: 52, scope: !426)
!457 = !DILocation(line: 421, column: 62, scope: !426)
!458 = !DILocation(line: 421, column: 3, scope: !426)
!459 = !DILocation(line: 423, column: 57, scope: !426)
!460 = !DILocation(line: 423, column: 3, scope: !426)
!461 = !DILocation(line: 424, column: 23, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 424, column: 3)
!463 = distinct !DILexicalBlock(scope: !426, file: !3, line: 424, column: 3)
!464 = !DILocation(line: 424, column: 22, scope: !462)
!465 = !DILocation(line: 424, column: 3, scope: !463)
!466 = !DILocation(line: 425, column: 29, scope: !467)
!467 = distinct !DILexicalBlock(scope: !462, file: !3, line: 424, column: 44)
!468 = !DILocation(line: 425, column: 48, scope: !467)
!469 = !DILocation(line: 425, column: 5, scope: !467)
!470 = !DILocation(line: 426, column: 5, scope: !467)
!471 = !DILocation(line: 427, column: 36, scope: !467)
!472 = !DILocation(line: 427, column: 62, scope: !467)
!473 = !DILocation(line: 427, column: 5, scope: !467)
!474 = !DILocation(line: 424, column: 40, scope: !462)
!475 = distinct !{!475, !465, !476, !64, !65}
!476 = !DILocation(line: 428, column: 3, scope: !463)
!477 = !DILocation(line: 429, column: 3, scope: !426)
!478 = !DILocation(line: 430, column: 1, scope: !426)
!479 = !DISubprogram(name: "Open_File", scope: !422, file: !422, line: 174, type: !480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !419)
!480 = !DISubroutineType(types: !481)
!481 = !{!29, !425}
!482 = !DISubprogram(name: "Read_Shorts", scope: !422, file: !422, line: 179, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !419)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !29, !13, !6}
!485 = !DISubprogram(name: "Read_Longs", scope: !422, file: !422, line: 180, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !419)
!486 = !DISubprogram(name: "Read_Bytes", scope: !422, file: !422, line: 178, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !419)
!487 = !DISubprogram(name: "Close_File", scope: !422, file: !422, line: 181, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !419)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !29}
!490 = distinct !DISubprogram(name: "Store_Octree", scope: !3, file: !3, line: 433, type: !427, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !491)
!491 = !{!492, !493, !494, !495}
!492 = !DILocalVariable(name: "filename", arg: 1, scope: !490, file: !3, line: 434, type: !425)
!493 = !DILocalVariable(name: "local_filename", scope: !490, file: !3, line: 436, type: !432)
!494 = !DILocalVariable(name: "fd", scope: !490, file: !3, line: 437, type: !29)
!495 = !DILocalVariable(name: "level", scope: !490, file: !3, line: 438, type: !6)
!496 = !DILocation(line: 0, scope: !490)
!497 = !DILocation(line: 436, column: 3, scope: !490)
!498 = !DILocation(line: 436, column: 8, scope: !490)
!499 = !DILocation(line: 440, column: 3, scope: !490)
!500 = !DILocation(line: 441, column: 3, scope: !490)
!501 = !DILocation(line: 442, column: 8, scope: !490)
!502 = !DILocation(line: 444, column: 15, scope: !490)
!503 = !DILocation(line: 445, column: 3, scope: !490)
!504 = !DILocation(line: 447, column: 3, scope: !490)
!505 = !DILocation(line: 448, column: 51, scope: !490)
!506 = !DILocation(line: 448, column: 64, scope: !490)
!507 = !DILocation(line: 448, column: 3, scope: !490)
!508 = !DILocation(line: 449, column: 54, scope: !490)
!509 = !DILocation(line: 449, column: 67, scope: !490)
!510 = !DILocation(line: 449, column: 3, scope: !490)
!511 = !DILocation(line: 450, column: 53, scope: !490)
!512 = !DILocation(line: 450, column: 63, scope: !490)
!513 = !DILocation(line: 450, column: 3, scope: !490)
!514 = !DILocation(line: 452, column: 57, scope: !490)
!515 = !DILocation(line: 452, column: 3, scope: !490)
!516 = !DILocation(line: 453, column: 23, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 453, column: 3)
!518 = distinct !DILexicalBlock(scope: !490, file: !3, line: 453, column: 3)
!519 = !DILocation(line: 453, column: 22, scope: !517)
!520 = !DILocation(line: 453, column: 3, scope: !518)
!521 = !DILocation(line: 454, column: 5, scope: !522)
!522 = distinct !DILexicalBlock(scope: !517, file: !3, line: 453, column: 44)
!523 = !DILocation(line: 456, column: 37, scope: !522)
!524 = !DILocation(line: 456, column: 63, scope: !522)
!525 = !DILocation(line: 456, column: 5, scope: !522)
!526 = !DILocation(line: 453, column: 40, scope: !517)
!527 = distinct !{!527, !520, !528, !64, !65}
!528 = !DILocation(line: 457, column: 3, scope: !518)
!529 = !DILocation(line: 458, column: 3, scope: !490)
!530 = !DILocation(line: 459, column: 1, scope: !490)
!531 = !DISubprogram(name: "Create_File", scope: !422, file: !422, line: 173, type: !480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !419)
!532 = !DISubprogram(name: "Write_Shorts", scope: !422, file: !422, line: 176, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !419)
!533 = !DISubprogram(name: "Write_Longs", scope: !422, file: !422, line: 177, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !419)
!534 = !DISubprogram(name: "Write_Bytes", scope: !422, file: !422, line: 175, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !419)
