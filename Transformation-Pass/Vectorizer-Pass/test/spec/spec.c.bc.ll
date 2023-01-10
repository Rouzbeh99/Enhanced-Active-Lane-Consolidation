; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/src/spec.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spec_fd_t = type { i64, i64, i64, i32, ptr }

@.str = private unnamed_addr constant [46 x i8] c"main: Error mallocing memory for SHA-%d sum!\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"Error: Supplied original hash value is not the correct length to be SHA-%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [127 x i8] c"Usage: %s <input filename> <input size> <input raw SHA-%d> <compressed minimum> <compressed maximum> <compression level, ...>\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"SPEC CPU XZ driver: input=%s insize=%ld\0A\00", align 1
@spec_fd = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Error allocating in-memory file descriptors\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Input data %ld bytes in length\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Error: compression level '%s' is not valid\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Compressing Input Data, level %d%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" (extreme)\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Compressed data %ld bytes in length\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"Compressed data length is %ld bytes in length\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"Compressed data is between %ld and %ld bytes in length\0A\00", align 1
@.str.14 = private unnamed_addr constant [75 x i8] c"Compressed data length of %ld does not match expected length of %ld bytes\0A\00", align 1
@.str.15 = private unnamed_addr constant [82 x i8] c"Compressed data length of %ld is outside the allowable range of %ld to %ld bytes\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Uncompressed data %ld bytes in length\0A\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"Computed SHA-%d sum for decompression step did not match expected\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"  Generated: \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [14 x i8] c"   Expected: \00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Tested %ld MiB buffer: OK!\0A\00", align 1
@str = private unnamed_addr constant [19 x i8] c"Loading Input Data\00", align 1
@str.25 = private unnamed_addr constant [26 x i8] c"Finished compressing data\00", align 1
@str.26 = private unnamed_addr constant [41 x i8] c"Uncompressing previously compressed data\00", align 1
@str.27 = private unnamed_addr constant [37 x i8] c"Uncompressed data compared correctly\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 !dbg !13 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !22, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata ptr %argv, metadata !23, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i32 0, metadata !24, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i64 0, metadata !28, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i64 -1, metadata !34, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i64 -1, metadata !35, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata ptr null, metadata !36, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata ptr null, metadata !37, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata ptr null, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata ptr null, metadata !39, metadata !DIExpression()), !dbg !40
  %call = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #9, !dbg !41
  call void @llvm.dbg.value(metadata ptr %call, metadata !39, metadata !DIExpression()), !dbg !40
  %cmp = icmp eq ptr %call, null, !dbg !42
  br i1 %cmp, label %if.then, label %if.end, !dbg !44

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef 512), !dbg !45
  tail call void @exit(i32 noundef 1) #10, !dbg !47
  unreachable, !dbg !47

if.end:                                           ; preds = %entry
  %cmp2 = icmp sgt i32 %argc, 1, !dbg !48
  br i1 %cmp2, label %if.end4, label %if.end35.thread, !dbg !50

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 1, !dbg !51
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !51, !tbaa !52
  call void @llvm.dbg.value(metadata ptr %0, metadata !36, metadata !DIExpression()), !dbg !40
  %cmp5.not = icmp eq i32 %argc, 2, !dbg !56
  br i1 %cmp5.not, label %if.end35.thread, label %if.end9, !dbg !58

if.end9:                                          ; preds = %if.end4
  %arrayidx7 = getelementptr inbounds ptr, ptr %argv, i64 2, !dbg !59
  %1 = load ptr, ptr %arrayidx7, align 8, !dbg !59, !tbaa !52
  %call8 = tail call i64 @strtol(ptr nocapture noundef %1, ptr noundef null, i32 noundef 10) #11, !dbg !60
  call void @llvm.dbg.value(metadata i64 %call8, metadata !28, metadata !DIExpression()), !dbg !40
  %cmp10 = icmp ugt i32 %argc, 3, !dbg !61
  br i1 %cmp10, label %if.then11, label %if.end35.thread, !dbg !63

if.then11:                                        ; preds = %if.end9
  %arrayidx12 = getelementptr inbounds ptr, ptr %argv, i64 3, !dbg !64
  %2 = load ptr, ptr %arrayidx12, align 8, !dbg !64, !tbaa !52
  %call13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #12, !dbg !67
  %mul.mask = and i64 %call13, 4611686018427387903, !dbg !68
  %cmp14.not = icmp eq i64 %mul.mask, 128, !dbg !68
  br i1 %cmp14.not, label %if.end23, label %if.then15, !dbg !69

if.then15:                                        ; preds = %if.then11
  %3 = load ptr, ptr @stderr, align 8, !dbg !70, !tbaa !52
  %call16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 512) #13, !dbg !72
  tail call void @exit(i32 noundef 1) #10, !dbg !73
  unreachable, !dbg !73

if.end23:                                         ; preds = %if.then11
  %call21 = tail call ptr @sum_str_to_hex(ptr noundef %2, i32 noundef 512) #11, !dbg !74
  call void @llvm.dbg.value(metadata ptr %call21, metadata !37, metadata !DIExpression()), !dbg !40
  %cmp24 = icmp ugt i32 %argc, 4, !dbg !75
  br i1 %cmp24, label %if.end29, label %if.end35.thread, !dbg !77

if.end29:                                         ; preds = %if.end23
  %arrayidx27 = getelementptr inbounds ptr, ptr %argv, i64 4, !dbg !78
  %4 = load ptr, ptr %arrayidx27, align 8, !dbg !78, !tbaa !52
  %call28 = tail call i64 @strtol(ptr nocapture noundef %4, ptr noundef null, i32 noundef 10) #11, !dbg !79
  call void @llvm.dbg.value(metadata i64 %call28, metadata !34, metadata !DIExpression()), !dbg !40
  %cmp30.not = icmp eq i32 %argc, 5, !dbg !80
  br i1 %cmp30.not, label %if.end35.thread, label %if.end35, !dbg !82

if.end35:                                         ; preds = %if.end29
  %arrayidx33 = getelementptr inbounds ptr, ptr %argv, i64 5, !dbg !83
  %5 = load ptr, ptr %arrayidx33, align 8, !dbg !83, !tbaa !52
  %call34 = tail call i64 @strtol(ptr nocapture noundef %5, ptr noundef null, i32 noundef 10) #11, !dbg !84
  call void @llvm.dbg.value(metadata i64 %call34, metadata !35, metadata !DIExpression()), !dbg !40
  %cmp36 = icmp slt i64 %call34, 0, !dbg !85
  br i1 %cmp36, label %if.end35.thread, label %6, !dbg !87

if.end35.thread:                                  ; preds = %if.end, %if.end4, %if.end9, %if.end23, %if.end29, %if.end35
  %sha.0259265282 = phi ptr [ %call21, %if.end35 ], [ %call21, %if.end29 ], [ %call21, %if.end23 ], [ null, %if.end9 ], [ null, %if.end4 ], [ null, %if.end ]
  %input_name.0247251258266280 = phi ptr [ %0, %if.end35 ], [ %0, %if.end29 ], [ %0, %if.end23 ], [ %0, %if.end9 ], [ %0, %if.end4 ], [ null, %if.end ]
  %input_size.0252257267278 = phi i64 [ %call8, %if.end35 ], [ %call8, %if.end29 ], [ %call8, %if.end23 ], [ %call8, %if.end9 ], [ 0, %if.end4 ], [ 0, %if.end ]
  %compressed_min.0268276 = phi i64 [ %call28, %if.end35 ], [ %call28, %if.end29 ], [ -1, %if.end23 ], [ -1, %if.end9 ], [ -1, %if.end4 ], [ -1, %if.end ]
  br label %6, !dbg !87

6:                                                ; preds = %if.end35, %if.end35.thread
  %sha.0259265281 = phi ptr [ %sha.0259265282, %if.end35.thread ], [ %call21, %if.end35 ]
  %input_name.0247251258266279 = phi ptr [ %input_name.0247251258266280, %if.end35.thread ], [ %0, %if.end35 ]
  %input_size.0252257267277 = phi i64 [ %input_size.0252257267278, %if.end35.thread ], [ %call8, %if.end35 ]
  %compressed_min.0268275 = phi i64 [ %compressed_min.0268276, %if.end35.thread ], [ %call28, %if.end35 ]
  %7 = phi i64 [ %compressed_min.0268276, %if.end35.thread ], [ %call34, %if.end35 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !35, metadata !DIExpression()), !dbg !40
  %cmp40 = icmp eq ptr %input_name.0247251258266279, null, !dbg !88
  %cmp42 = icmp slt i64 %input_size.0252257267277, 1
  %or.cond = select i1 %cmp40, i1 true, i1 %cmp42, !dbg !90
  %cmp45 = icmp eq ptr %sha.0259265281, null
  %or.cond183 = select i1 %or.cond, i1 true, i1 %cmp45, !dbg !90
  %cmp48 = icmp eq i64 %compressed_min.0268275, 0
  %or.cond184 = select i1 %or.cond183, i1 true, i1 %cmp48, !dbg !90
  %cmp51 = icmp eq i64 %7, 0
  %or.cond185 = select i1 %or.cond184, i1 true, i1 %cmp51, !dbg !90
  %cmp54 = icmp slt i32 %argc, 6
  %or.cond186 = or i1 %cmp54, %or.cond185, !dbg !90
  br i1 %or.cond186, label %if.then56, label %if.end59, !dbg !90

if.then56:                                        ; preds = %6
  %8 = load ptr, ptr %argv, align 8, !dbg !91, !tbaa !52
  %call58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, ptr noundef %8, i32 noundef 512), !dbg !93
  tail call void @exit(i32 noundef 1) #10, !dbg !94
  unreachable, !dbg !94

if.end59:                                         ; preds = %6
  %call60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, ptr noundef nonnull %input_name.0247251258266279, i64 noundef %input_size.0252257267277), !dbg !95
  %call61 = tail call ptr @spec_mem_alloc_fds(i32 noundef 3) #11, !dbg !96
  store ptr %call61, ptr @spec_fd, align 8, !dbg !97, !tbaa !52
  %cmp62 = icmp eq ptr %call61, null, !dbg !98
  br i1 %cmp62, label %if.then64, label %if.end66, !dbg !100

if.then64:                                        ; preds = %if.end59
  %9 = load ptr, ptr @stderr, align 8, !dbg !101, !tbaa !52
  %10 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 44, i64 1, ptr %9) #13, !dbg !103
  tail call void @exit(i32 noundef 1) #10, !dbg !104
  unreachable, !dbg !104

if.end66:                                         ; preds = %if.end59
  %mul67 = shl nsw i64 %input_size.0252257267277, 20, !dbg !105
  %cmp68 = icmp ult i64 %input_size.0252257267277, 254, !dbg !107
  %spec.select = select i1 %cmp68, i64 266338304, i64 %mul67, !dbg !108
  %11 = getelementptr inbounds %struct.spec_fd_t, ptr %call61, i64 1, !dbg !109
  store i64 %spec.select, ptr %11, align 8, !dbg !111
  store i64 %spec.select, ptr %call61, align 8, !dbg !112, !tbaa !113
  %call81 = tail call i32 @spec_mem_init(ptr noundef nonnull %call61, i32 noundef 3, i32 noundef 1) #11, !dbg !117
  %call82 = tail call i32 @debug_time() #11, !dbg !118
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !119
  %12 = load ptr, ptr @spec_fd, align 8, !dbg !120, !tbaa !52
  %call85 = tail call ptr @spec_mem_load(ptr noundef %12, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %input_name.0247251258266279, i64 noundef %mul67, i32 noundef 1, ptr noundef nonnull %sha.0259265281, i32 noundef 512) #11, !dbg !120
  call void @llvm.dbg.value(metadata ptr %call85, metadata !38, metadata !DIExpression()), !dbg !40
  %13 = load ptr, ptr @spec_fd, align 8, !dbg !121, !tbaa !52
  %len = getelementptr inbounds %struct.spec_fd_t, ptr %13, i64 0, i32 1, !dbg !122
  %14 = load i64, ptr %len, align 8, !dbg !122, !tbaa !123
  %call87 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %14), !dbg !124
  %15 = load ptr, ptr @spec_fd, align 8, !dbg !125, !tbaa !52
  %open = getelementptr inbounds %struct.spec_fd_t, ptr %15, i64 2, i32 3, !dbg !126
  store i32 1, ptr %open, align 8, !dbg !127, !tbaa !128
  %open90 = getelementptr inbounds %struct.spec_fd_t, ptr %15, i64 1, i32 3, !dbg !129
  store i32 1, ptr %open90, align 8, !dbg !130, !tbaa !128
  %open92 = getelementptr inbounds %struct.spec_fd_t, ptr %15, i64 0, i32 3, !dbg !131
  store i32 1, ptr %open92, align 8, !dbg !132, !tbaa !128
  tail call void (...) @spec_initbufs() #11, !dbg !133
  call void @llvm.dbg.value(metadata i32 6, metadata !25, metadata !DIExpression()), !dbg !40
  %cmp93284 = icmp ugt i32 %argc, 6, !dbg !134
  br i1 %cmp93284, label %for.body.lr.ph, label %for.end, !dbg !137

for.body.lr.ph:                                   ; preds = %if.end66
  %cmp125 = icmp sgt i64 %compressed_min.0268275, 0
  %cmp137 = icmp eq i64 %compressed_min.0268275, %7
  %wide.trip.count = zext i32 %argc to i64, !dbg !134
  br label %for.body, !dbg !137

for.body:                                         ; preds = %for.body.lr.ph, %if.end176
  %indvars.iv = phi i64 [ 6, %for.body.lr.ph ], [ %indvars.iv.next, %if.end176 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !25, metadata !DIExpression()), !dbg !40
  %arrayidx95 = getelementptr inbounds ptr, ptr %argv, i64 %indvars.iv, !dbg !138
  %16 = load ptr, ptr %arrayidx95, align 8, !dbg !138, !tbaa !52
  %17 = load i8, ptr %16, align 1, !dbg !138, !tbaa !140
  call void @llvm.dbg.value(metadata i8 %17, metadata !24, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !40
  call void @llvm.dbg.value(metadata i32 undef, metadata !26, metadata !DIExpression()), !dbg !40
  %18 = add i8 %17, -58, !dbg !141
  %19 = icmp ult i8 %18, -10, !dbg !141
  br i1 %19, label %if.then112, label %if.end118, !dbg !141

if.then112:                                       ; preds = %for.body
  %call115 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, ptr noundef nonnull %16), !dbg !143
  %20 = load ptr, ptr %argv, align 8, !dbg !145, !tbaa !52
  %call117 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, ptr noundef %20, i32 noundef 512), !dbg !146
  tail call void @exit(i32 noundef 1) #10, !dbg !147
  unreachable, !dbg !147

if.end118:                                        ; preds = %for.body
  %arrayidx100 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !148
  %21 = load i8, ptr %arrayidx100, align 1, !dbg !148, !tbaa !140
  %cmp102 = icmp eq i8 %21, 101, !dbg !150
  %. = select i1 %cmp102, i32 -2147483648, i32 0
  call void @llvm.dbg.value(metadata i32 %., metadata !26, metadata !DIExpression()), !dbg !40
  %conv97289 = zext i8 %17 to i32, !dbg !138
  call void @llvm.dbg.value(metadata i32 %conv97289, metadata !24, metadata !DIExpression(DW_OP_constu, 48, DW_OP_minus, DW_OP_stack_value)), !dbg !40
  %sub = add nsw i32 %conv97289, -48, !dbg !151
  call void @llvm.dbg.value(metadata i32 %sub, metadata !24, metadata !DIExpression()), !dbg !40
  %call119 = tail call i32 @debug_time() #11, !dbg !152
  %cond = select i1 %cmp102, ptr @.str.9, ptr @.str.10, !dbg !153
  %call120 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i32 noundef %sub, ptr noundef nonnull %cond), !dbg !154
  %or = or i32 %., %sub, !dbg !155
  tail call void @spec_compress(i32 noundef 0, i32 noundef 1, i32 noundef %or) #11, !dbg !156
  %call121 = tail call i32 @debug_time() #11, !dbg !157
  %22 = load ptr, ptr @stderr, align 8, !dbg !158, !tbaa !52
  %23 = load ptr, ptr @spec_fd, align 8, !dbg !159, !tbaa !52
  %len123 = getelementptr inbounds %struct.spec_fd_t, ptr %23, i64 1, i32 1, !dbg !160
  %24 = load i64, ptr %len123, align 8, !dbg !160, !tbaa !123
  %call124 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.11, i64 noundef %24) #13, !dbg !161
  br i1 %cmp125, label %if.then127, label %if.end157, !dbg !162

if.then127:                                       ; preds = %if.end118
  %25 = load ptr, ptr @spec_fd, align 8, !dbg !163, !tbaa !52
  %len129 = getelementptr inbounds %struct.spec_fd_t, ptr %25, i64 1, i32 1, !dbg !167
  %26 = load i64, ptr %len129, align 8, !dbg !167, !tbaa !123
  %cmp130.not = icmp slt i64 %26, %compressed_min.0268275, !dbg !168
  %cmp134.not = icmp sgt i64 %26, %7
  %or.cond244 = select i1 %cmp130.not, i1 true, i1 %cmp134.not, !dbg !169
  br i1 %or.cond244, label %if.else144, label %if.then136, !dbg !169

if.then136:                                       ; preds = %if.then127
  br i1 %cmp137, label %if.then139, label %if.else141, !dbg !170

if.then139:                                       ; preds = %if.then136
  %call140 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.12, i64 noundef %compressed_min.0268275), !dbg !172
  br label %if.end157, !dbg !172

if.else141:                                       ; preds = %if.then136
  %call142 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.13, i64 noundef %compressed_min.0268275, i64 noundef %7), !dbg !174
  br label %if.end157

if.else144:                                       ; preds = %if.then127
  br i1 %cmp137, label %if.then147, label %if.else151, !dbg !175

if.then147:                                       ; preds = %if.else144
  %call150 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.14, i64 noundef %26, i64 noundef %compressed_min.0268275), !dbg !177
  br label %if.end157, !dbg !177

if.else151:                                       ; preds = %if.else144
  %call154 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.15, i64 noundef %26, i64 noundef %compressed_min.0268275, i64 noundef %7), !dbg !179
  br label %if.end157

if.end157:                                        ; preds = %if.else141, %if.then139, %if.else151, %if.then147, %if.end118
  %puts240 = tail call i32 @puts(ptr nonnull @str.25), !dbg !180
  %27 = load ptr, ptr @spec_fd, align 8, !dbg !181, !tbaa !52
  %call159 = tail call i32 @spec_mem_reset(ptr noundef %27, i32 noundef 3, i32 noundef 0) #11, !dbg !181
  %28 = load ptr, ptr @spec_fd, align 8, !dbg !182, !tbaa !52
  %call160 = tail call i32 @spec_mem_rewind(ptr noundef %28, i32 noundef 3, i32 noundef 1) #11, !dbg !182
  %call161 = tail call i32 @debug_time() #11, !dbg !183
  %puts241 = tail call i32 @puts(ptr nonnull @str.26), !dbg !184
  tail call void @spec_uncompress(i32 noundef 1, i32 noundef 0) #11, !dbg !185
  %call163 = tail call i32 @debug_time() #11, !dbg !186
  %29 = load ptr, ptr @spec_fd, align 8, !dbg !187, !tbaa !52
  %len165 = getelementptr inbounds %struct.spec_fd_t, ptr %29, i64 0, i32 1, !dbg !188
  %30 = load i64, ptr %len165, align 8, !dbg !188, !tbaa !123
  %call166 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.18, i64 noundef %30), !dbg !189
  %31 = load ptr, ptr @spec_fd, align 8, !dbg !190, !tbaa !52
  %call167 = tail call ptr @spec_mem_sum(ptr noundef %31, ptr noundef nonnull %call, i32 noundef 512) #11, !dbg !190
  %call168 = tail call i32 @compare_sum(ptr noundef %call85, ptr noundef nonnull %call, i32 noundef 512) #11, !dbg !192
  %tobool169.not = icmp eq i32 %call168, 0, !dbg !192
  br i1 %tobool169.not, label %if.end176, label %if.then170, !dbg !194

if.then170:                                       ; preds = %if.end157
  %call171 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.19, i32 noundef 512), !dbg !195
  %call172 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.20), !dbg !197
  %32 = load ptr, ptr @stdout, align 8, !dbg !198, !tbaa !52
  tail call void @print_sum(ptr noundef %32, ptr noundef nonnull %call, i32 noundef 512) #11, !dbg !199
  %putchar = tail call i32 @putchar(i32 10), !dbg !200
  %call174 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.22), !dbg !201
  %33 = load ptr, ptr @stdout, align 8, !dbg !202, !tbaa !52
  tail call void @print_sum(ptr noundef %33, ptr noundef %call85, i32 noundef 512) #11, !dbg !203
  %putchar243 = tail call i32 @putchar(i32 10), !dbg !204
  tail call void @exit(i32 noundef 0) #10, !dbg !205
  unreachable, !dbg !205

if.end176:                                        ; preds = %if.end157
  %call177 = tail call i32 @debug_time() #11, !dbg !206
  %puts242 = tail call i32 @puts(ptr nonnull @str.27), !dbg !207
  %34 = load ptr, ptr @spec_fd, align 8, !dbg !208, !tbaa !52
  %call179 = tail call i32 @spec_mem_reset(ptr noundef %34, i32 noundef 3, i32 noundef 1) #11, !dbg !208
  %35 = load ptr, ptr @spec_fd, align 8, !dbg !209, !tbaa !52
  %call180 = tail call i32 @spec_mem_rewind(ptr noundef %35, i32 noundef 3, i32 noundef 0) #11, !dbg !209
  %call181 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.24, i64 noundef %input_size.0252257267277), !dbg !210
  %36 = load ptr, ptr @stdout, align 8, !dbg !211, !tbaa !52
  %call182 = tail call i32 @fflush(ptr noundef %36), !dbg !212
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !213
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !25, metadata !DIExpression()), !dbg !40
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !134
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !137, !llvm.loop !214

for.end:                                          ; preds = %if.end176, %if.end66
  ret i32 0, !dbg !218
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare !dbg !219 ptr @sum_str_to_hex(ptr noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !224 ptr @spec_mem_alloc_fds(i32 noundef) local_unnamed_addr #6

declare !dbg !236 i32 @spec_mem_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !239 i32 @debug_time() local_unnamed_addr #6

declare !dbg !242 ptr @spec_mem_load(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !245 void @spec_initbufs(...) local_unnamed_addr #6

declare !dbg !248 void @spec_compress(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !251 i32 @spec_mem_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !254 i32 @spec_mem_rewind(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !255 void @spec_uncompress(i32 noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !258 ptr @spec_mem_sum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !261 i32 @compare_sum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !264 void @print_sum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !324 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { cold }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/spec.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "d78d7e82cc4121814f31761ecc6ce2c6")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!13 = distinct !DISubprogram(name: "main", scope: !14, file: !14, line: 25, type: !15, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!14 = !DIFile(filename: "apps/557.xz_r/src/spec.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d78d7e82cc4121814f31761ecc6ce2c6")
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17, !18}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !{!22, !23, !24, !25, !26, !28, !34, !35, !36, !37, !38, !39}
!22 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !14, line: 25, type: !17)
!23 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !14, line: 25, type: !18)
!24 = !DILocalVariable(name: "level", scope: !13, file: !14, line: 26, type: !17)
!25 = !DILocalVariable(name: "i", scope: !13, file: !14, line: 26, type: !17)
!26 = !DILocalVariable(name: "extreme", scope: !13, file: !14, line: 27, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DILocalVariable(name: "input_size", scope: !13, file: !14, line: 28, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !30, line: 27, baseType: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !32, line: 44, baseType: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!33 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!34 = !DILocalVariable(name: "compressed_min", scope: !13, file: !14, line: 29, type: !29)
!35 = !DILocalVariable(name: "compressed_max", scope: !13, file: !14, line: 30, type: !29)
!36 = !DILocalVariable(name: "input_name", scope: !13, file: !14, line: 31, type: !19)
!37 = !DILocalVariable(name: "sha", scope: !13, file: !14, line: 32, type: !3)
!38 = !DILocalVariable(name: "input_sha", scope: !13, file: !14, line: 33, type: !3)
!39 = !DILocalVariable(name: "check_sha", scope: !13, file: !14, line: 33, type: !3)
!40 = !DILocation(line: 0, scope: !13)
!41 = !DILocation(line: 40, column: 34, scope: !13)
!42 = !DILocation(line: 41, column: 19, scope: !43)
!43 = distinct !DILexicalBlock(scope: !13, file: !14, line: 41, column: 9)
!44 = !DILocation(line: 41, column: 9, scope: !13)
!45 = !DILocation(line: 42, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !14, line: 41, column: 28)
!47 = !DILocation(line: 43, column: 9, scope: !46)
!48 = !DILocation(line: 47, column: 14, scope: !49)
!49 = distinct !DILexicalBlock(scope: !13, file: !14, line: 47, column: 9)
!50 = !DILocation(line: 47, column: 9, scope: !13)
!51 = !DILocation(line: 47, column: 37, scope: !49)
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !DILocation(line: 48, column: 14, scope: !57)
!57 = distinct !DILexicalBlock(scope: !13, file: !14, line: 48, column: 9)
!58 = !DILocation(line: 48, column: 9, scope: !13)
!59 = !DILocation(line: 48, column: 44, scope: !57)
!60 = !DILocation(line: 48, column: 37, scope: !57)
!61 = !DILocation(line: 49, column: 14, scope: !62)
!62 = distinct !DILexicalBlock(scope: !13, file: !14, line: 49, column: 9)
!63 = !DILocation(line: 49, column: 9, scope: !13)
!64 = !DILocation(line: 50, column: 18, scope: !65)
!65 = distinct !DILexicalBlock(scope: !66, file: !14, line: 50, column: 11)
!66 = distinct !DILexicalBlock(scope: !62, file: !14, line: 49, column: 19)
!67 = !DILocation(line: 50, column: 11, scope: !65)
!68 = !DILocation(line: 50, column: 31, scope: !65)
!69 = !DILocation(line: 50, column: 11, scope: !66)
!70 = !DILocation(line: 51, column: 17, scope: !71)
!71 = distinct !DILexicalBlock(scope: !65, file: !14, line: 50, column: 43)
!72 = !DILocation(line: 51, column: 9, scope: !71)
!73 = !DILocation(line: 52, column: 9, scope: !71)
!74 = !DILocation(line: 54, column: 37, scope: !65)
!75 = !DILocation(line: 56, column: 14, scope: !76)
!76 = distinct !DILexicalBlock(scope: !13, file: !14, line: 56, column: 9)
!77 = !DILocation(line: 56, column: 9, scope: !13)
!78 = !DILocation(line: 56, column: 44, scope: !76)
!79 = !DILocation(line: 56, column: 37, scope: !76)
!80 = !DILocation(line: 57, column: 14, scope: !81)
!81 = distinct !DILexicalBlock(scope: !13, file: !14, line: 57, column: 9)
!82 = !DILocation(line: 57, column: 9, scope: !13)
!83 = !DILocation(line: 57, column: 44, scope: !81)
!84 = !DILocation(line: 57, column: 37, scope: !81)
!85 = !DILocation(line: 58, column: 24, scope: !86)
!86 = distinct !DILexicalBlock(scope: !13, file: !14, line: 58, column: 9)
!87 = !DILocation(line: 58, column: 9, scope: !13)
!88 = !DILocation(line: 61, column: 20, scope: !89)
!89 = distinct !DILexicalBlock(scope: !13, file: !14, line: 61, column: 9)
!90 = !DILocation(line: 61, column: 28, scope: !89)
!91 = !DILocation(line: 62, column: 147, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !14, line: 61, column: 121)
!93 = !DILocation(line: 62, column: 9, scope: !92)
!94 = !DILocation(line: 63, column: 9, scope: !92)
!95 = !DILocation(line: 65, column: 5, scope: !13)
!96 = !DILocation(line: 67, column: 15, scope: !13)
!97 = !DILocation(line: 67, column: 13, scope: !13)
!98 = !DILocation(line: 68, column: 17, scope: !99)
!99 = distinct !DILexicalBlock(scope: !13, file: !14, line: 68, column: 9)
!100 = !DILocation(line: 68, column: 9, scope: !13)
!101 = !DILocation(line: 69, column: 17, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !14, line: 68, column: 26)
!103 = !DILocation(line: 69, column: 9, scope: !102)
!104 = !DILocation(line: 70, column: 9, scope: !102)
!105 = !DILocation(line: 76, column: 20, scope: !106)
!106 = distinct !DILexicalBlock(scope: !13, file: !14, line: 76, column: 9)
!107 = !DILocation(line: 76, column: 26, scope: !106)
!108 = !DILocation(line: 76, column: 9, scope: !13)
!109 = !DILocation(line: 77, column: 28, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !14, line: 76, column: 40)
!111 = !DILocation(line: 77, column: 45, scope: !110)
!112 = !DILocation(line: 0, scope: !106)
!113 = !{!114, !115, i64 0}
!114 = !{!"", !115, i64 0, !115, i64 8, !115, i64 16, !116, i64 24, !53, i64 32}
!115 = !{!"long", !54, i64 0}
!116 = !{!"int", !54, i64 0}
!117 = !DILocation(line: 81, column: 5, scope: !13)
!118 = !DILocation(line: 83, column: 5, scope: !13)
!119 = !DILocation(line: 84, column: 5, scope: !13)
!120 = !DILocation(line: 85, column: 17, scope: !13)
!121 = !DILocation(line: 86, column: 56, scope: !13)
!122 = !DILocation(line: 86, column: 67, scope: !13)
!123 = !{!114, !115, i64 8}
!124 = !DILocation(line: 86, column: 5, scope: !13)
!125 = !DILocation(line: 95, column: 41, scope: !13)
!126 = !DILocation(line: 95, column: 52, scope: !13)
!127 = !DILocation(line: 95, column: 57, scope: !13)
!128 = !{!114, !116, i64 24}
!129 = !DILocation(line: 95, column: 34, scope: !13)
!130 = !DILocation(line: 95, column: 39, scope: !13)
!131 = !DILocation(line: 95, column: 16, scope: !13)
!132 = !DILocation(line: 95, column: 21, scope: !13)
!133 = !DILocation(line: 97, column: 5, scope: !13)
!134 = !DILocation(line: 100, column: 18, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !14, line: 100, column: 5)
!136 = distinct !DILexicalBlock(scope: !13, file: !14, line: 100, column: 5)
!137 = !DILocation(line: 100, column: 5, scope: !136)
!138 = !DILocation(line: 102, column: 17, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !14, line: 100, column: 31)
!140 = !{!54, !54, i64 0}
!141 = !DILocation(line: 108, column: 23, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !14, line: 108, column: 13)
!143 = !DILocation(line: 109, column: 13, scope: !144)
!144 = distinct !DILexicalBlock(scope: !142, file: !14, line: 108, column: 37)
!145 = !DILocation(line: 110, column: 151, scope: !144)
!146 = !DILocation(line: 110, column: 13, scope: !144)
!147 = !DILocation(line: 111, column: 13, scope: !144)
!148 = !DILocation(line: 103, column: 13, scope: !149)
!149 = distinct !DILexicalBlock(scope: !139, file: !14, line: 103, column: 13)
!150 = !DILocation(line: 103, column: 24, scope: !149)
!151 = !DILocation(line: 102, column: 28, scope: !139)
!152 = !DILocation(line: 114, column: 9, scope: !139)
!153 = !DILocation(line: 115, column: 63, scope: !139)
!154 = !DILocation(line: 115, column: 9, scope: !139)
!155 = !DILocation(line: 117, column: 34, scope: !139)
!156 = !DILocation(line: 117, column: 9, scope: !139)
!157 = !DILocation(line: 119, column: 9, scope: !139)
!158 = !DILocation(line: 120, column: 17, scope: !139)
!159 = !DILocation(line: 120, column: 74, scope: !139)
!160 = !DILocation(line: 120, column: 85, scope: !139)
!161 = !DILocation(line: 120, column: 9, scope: !139)
!162 = !DILocation(line: 121, column: 13, scope: !139)
!163 = !DILocation(line: 122, column: 15, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !14, line: 122, column: 15)
!165 = distinct !DILexicalBlock(scope: !166, file: !14, line: 121, column: 33)
!166 = distinct !DILexicalBlock(scope: !139, file: !14, line: 121, column: 13)
!167 = !DILocation(line: 122, column: 26, scope: !164)
!168 = !DILocation(line: 122, column: 30, scope: !164)
!169 = !DILocation(line: 122, column: 48, scope: !164)
!170 = !DILocation(line: 123, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !164, file: !14, line: 122, column: 85)
!172 = !DILocation(line: 124, column: 15, scope: !173)
!173 = distinct !DILexicalBlock(scope: !171, file: !14, line: 123, column: 17)
!174 = !DILocation(line: 127, column: 15, scope: !173)
!175 = !DILocation(line: 130, column: 17, scope: !176)
!176 = distinct !DILexicalBlock(scope: !164, file: !14, line: 129, column: 18)
!177 = !DILocation(line: 131, column: 15, scope: !178)
!178 = distinct !DILexicalBlock(scope: !176, file: !14, line: 130, column: 17)
!179 = !DILocation(line: 134, column: 15, scope: !178)
!180 = !DILocation(line: 138, column: 9, scope: !139)
!181 = !DILocation(line: 150, column: 9, scope: !139)
!182 = !DILocation(line: 151, column: 9, scope: !139)
!183 = !DILocation(line: 153, column: 9, scope: !139)
!184 = !DILocation(line: 154, column: 9, scope: !139)
!185 = !DILocation(line: 155, column: 9, scope: !139)
!186 = !DILocation(line: 156, column: 9, scope: !139)
!187 = !DILocation(line: 157, column: 67, scope: !139)
!188 = !DILocation(line: 157, column: 78, scope: !139)
!189 = !DILocation(line: 157, column: 9, scope: !139)
!190 = !DILocation(line: 169, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !139, file: !14, line: 169, column: 9)
!192 = !DILocation(line: 170, column: 13, scope: !193)
!193 = distinct !DILexicalBlock(scope: !139, file: !14, line: 170, column: 13)
!194 = !DILocation(line: 170, column: 13, scope: !139)
!195 = !DILocation(line: 171, column: 13, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !14, line: 170, column: 57)
!197 = !DILocation(line: 172, column: 13, scope: !196)
!198 = !DILocation(line: 173, column: 23, scope: !196)
!199 = !DILocation(line: 173, column: 13, scope: !196)
!200 = !DILocation(line: 174, column: 13, scope: !196)
!201 = !DILocation(line: 175, column: 13, scope: !196)
!202 = !DILocation(line: 176, column: 23, scope: !196)
!203 = !DILocation(line: 176, column: 13, scope: !196)
!204 = !DILocation(line: 177, column: 13, scope: !196)
!205 = !DILocation(line: 178, column: 13, scope: !196)
!206 = !DILocation(line: 180, column: 9, scope: !139)
!207 = !DILocation(line: 181, column: 9, scope: !139)
!208 = !DILocation(line: 182, column: 9, scope: !139)
!209 = !DILocation(line: 183, column: 9, scope: !139)
!210 = !DILocation(line: 184, column: 9, scope: !139)
!211 = !DILocation(line: 185, column: 16, scope: !139)
!212 = !DILocation(line: 185, column: 9, scope: !139)
!213 = !DILocation(line: 100, column: 27, scope: !135)
!214 = distinct !{!214, !137, !215, !216, !217}
!215 = !DILocation(line: 186, column: 5, scope: !136)
!216 = !{!"llvm.loop.mustprogress"}
!217 = !{!"llvm.loop.unroll.disable"}
!218 = !DILocation(line: 188, column: 5, scope: !13)
!219 = !DISubprogram(name: "sum_str_to_hex", scope: !220, file: !220, line: 68, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!220 = !DIFile(filename: "apps/557.xz_r/src/spec_mem_io/spec_mem_io.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "20f82235716911ab040d2b344ceb3e0d")
!221 = !DISubroutineType(types: !222)
!222 = !{!3, !19, !17}
!223 = !{}
!224 = !DISubprogram(name: "spec_mem_alloc_fds", scope: !220, file: !220, line: 43, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !27}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "spec_fd_t", file: !220, line: 40, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 34, size: 320, elements: !230)
!230 = !{!231, !232, !233, !234, !235}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !229, file: !220, line: 35, baseType: !29, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !229, file: !220, line: 36, baseType: !29, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !229, file: !220, line: 37, baseType: !29, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !229, file: !220, line: 38, baseType: !17, size: 32, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !229, file: !220, line: 39, baseType: !3, size: 64, offset: 256)
!236 = !DISubprogram(name: "spec_mem_init", scope: !220, file: !220, line: 48, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!237 = !DISubroutineType(types: !238)
!238 = !{!17, !227, !27, !27}
!239 = !DISubprogram(name: "debug_time", scope: !220, file: !220, line: 66, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!240 = !DISubroutineType(types: !241)
!241 = !{!17}
!242 = !DISubprogram(name: "spec_mem_load", scope: !220, file: !220, line: 49, type: !243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!243 = !DISubroutineType(types: !244)
!244 = !{!3, !227, !27, !17, !19, !29, !17, !3, !17}
!245 = !DISubprogram(name: "spec_initbufs", scope: !220, file: !220, line: 45, type: !246, spFlags: DISPFlagOptimized, retainedNodes: !223)
!246 = !DISubroutineType(types: !247)
!247 = !{null}
!248 = !DISubprogram(name: "spec_compress", scope: !220, file: !220, line: 46, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !17, !17, !27}
!251 = !DISubprogram(name: "spec_mem_reset", scope: !220, file: !220, line: 53, type: !252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!252 = !DISubroutineType(types: !253)
!253 = !{!17, !227, !27, !17}
!254 = !DISubprogram(name: "spec_mem_rewind", scope: !220, file: !220, line: 61, type: !252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!255 = !DISubprogram(name: "spec_uncompress", scope: !220, file: !220, line: 47, type: !256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !17, !17}
!258 = !DISubprogram(name: "spec_mem_sum", scope: !220, file: !220, line: 70, type: !259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!259 = !DISubroutineType(types: !260)
!260 = !{!3, !227, !3, !17}
!261 = !DISubprogram(name: "compare_sum", scope: !220, file: !220, line: 67, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!262 = !DISubroutineType(types: !263)
!263 = !{!17, !3, !3, !17}
!264 = !DISubprogram(name: "print_sum", scope: !220, file: !220, line: 69, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !267, !3, !17}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !269, line: 7, baseType: !270)
!269 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !271, line: 49, size: 1728, elements: !272)
!271 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !288, !290, !291, !292, !294, !296, !298, !302, !305, !307, !310, !313, !314, !315, !319, !320}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !270, file: !271, line: 51, baseType: !17, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !270, file: !271, line: 54, baseType: !19, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !270, file: !271, line: 55, baseType: !19, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !270, file: !271, line: 56, baseType: !19, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !270, file: !271, line: 57, baseType: !19, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !270, file: !271, line: 58, baseType: !19, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !270, file: !271, line: 59, baseType: !19, size: 64, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !270, file: !271, line: 60, baseType: !19, size: 64, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !270, file: !271, line: 61, baseType: !19, size: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !270, file: !271, line: 64, baseType: !19, size: 64, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !270, file: !271, line: 65, baseType: !19, size: 64, offset: 640)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !270, file: !271, line: 66, baseType: !19, size: 64, offset: 704)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !270, file: !271, line: 68, baseType: !286, size: 64, offset: 768)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !271, line: 36, flags: DIFlagFwdDecl)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !270, file: !271, line: 70, baseType: !289, size: 64, offset: 832)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !270, file: !271, line: 72, baseType: !17, size: 32, offset: 896)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !270, file: !271, line: 73, baseType: !17, size: 32, offset: 928)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !270, file: !271, line: 74, baseType: !293, size: 64, offset: 960)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !32, line: 152, baseType: !33)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !270, file: !271, line: 77, baseType: !295, size: 16, offset: 1024)
!295 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !270, file: !271, line: 78, baseType: !297, size: 8, offset: 1040)
!297 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !270, file: !271, line: 79, baseType: !299, size: 8, offset: 1048)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 1)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !270, file: !271, line: 81, baseType: !303, size: 64, offset: 1088)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !271, line: 43, baseType: null)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !270, file: !271, line: 89, baseType: !306, size: 64, offset: 1152)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !32, line: 153, baseType: !33)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !270, file: !271, line: 91, baseType: !308, size: 64, offset: 1216)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !271, line: 37, flags: DIFlagFwdDecl)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !270, file: !271, line: 92, baseType: !311, size: 64, offset: 1280)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !271, line: 38, flags: DIFlagFwdDecl)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !270, file: !271, line: 93, baseType: !289, size: 64, offset: 1344)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !270, file: !271, line: 94, baseType: !5, size: 64, offset: 1408)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !270, file: !271, line: 95, baseType: !316, size: 64, offset: 1472)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !317, line: 46, baseType: !318)
!317 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!318 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !270, file: !271, line: 96, baseType: !17, size: 32, offset: 1536)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !270, file: !271, line: 98, baseType: !321, size: 160, offset: 1568)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 160, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 20)
!324 = !DISubprogram(name: "fflush", scope: !325, file: !325, line: 218, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!325 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!326 = !DISubroutineType(types: !327)
!327 = !{!17, !267}
