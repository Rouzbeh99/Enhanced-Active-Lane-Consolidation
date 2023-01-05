; ModuleID = '/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/memutil.c'
source_filename = "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/memutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"FATAL: %s\0A\00", align 1
@nabout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"allocation failure in vector: nh = %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"allocation failure in vector()\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"allocation failure in ivector()\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"allocation failure in ipvector()\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"allocation failure 1 in matrix()\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"allocation failure 2 in matrix()\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @nrerror(i8* %0) local_unnamed_addr #0 !dbg !82 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !87, metadata !DIExpression()), !dbg !88
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !89, !tbaa !90
  %3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %0) #6, !dbg !94
  tail call void @exit(i32 1) #7, !dbg !95
  unreachable, !dbg !95
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias double* @vector(i64 %0, i64 %1) local_unnamed_addr #3 !dbg !96 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !100, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.value(metadata i64 %1, metadata !101, metadata !DIExpression()), !dbg !103
  %3 = sub i64 %1, %0, !dbg !104
  %4 = shl i64 %3, 3, !dbg !105
  %5 = add i64 %4, 8, !dbg !105
  %6 = tail call noalias i8* @malloc(i64 %5) #8, !dbg !106
  call void @llvm.dbg.value(metadata i8* %6, metadata !102, metadata !DIExpression()), !dbg !103
  %7 = icmp eq i8* %6, null, !dbg !107
  br i1 %7, label %8, label %13, !dbg !109

8:                                                ; preds = %2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @nabout, align 8, !dbg !110, !tbaa !90
  %10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %1), !dbg !112
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @nabout, align 8, !dbg !113, !tbaa !90
  %12 = tail call i32 @fflush(%struct._IO_FILE* %11), !dbg !114
  tail call void @nrerror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)), !dbg !115
  unreachable

13:                                               ; preds = %2
  %14 = bitcast i8* %6 to double*, !dbg !116
  call void @llvm.dbg.value(metadata double* %14, metadata !102, metadata !DIExpression()), !dbg !103
  %15 = sub i64 0, %0, !dbg !117
  %16 = getelementptr inbounds double, double* %14, i64 %15, !dbg !117
  ret double* %16, !dbg !118
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !7 dso_local i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noalias i32* @ivector(i32 %0, i32 %1) local_unnamed_addr #3 !dbg !119 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !123, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %1, metadata !124, metadata !DIExpression()), !dbg !126
  %3 = sub i32 1, %0, !dbg !127
  %4 = add i32 %3, %1, !dbg !128
  %5 = sext i32 %4 to i64, !dbg !129
  %6 = shl nsw i64 %5, 2, !dbg !130
  %7 = tail call noalias i8* @malloc(i64 %6) #8, !dbg !131
  call void @llvm.dbg.value(metadata i8* %7, metadata !125, metadata !DIExpression()), !dbg !126
  %8 = icmp eq i8* %7, null, !dbg !132
  br i1 %8, label %9, label %10, !dbg !134

9:                                                ; preds = %2
  tail call void @nrerror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !135
  unreachable

10:                                               ; preds = %2
  %11 = bitcast i8* %7 to i32*, !dbg !136
  call void @llvm.dbg.value(metadata i32* %11, metadata !125, metadata !DIExpression()), !dbg !126
  %12 = sext i32 %0 to i64, !dbg !137
  %13 = sub nsw i64 0, %12, !dbg !137
  %14 = getelementptr inbounds i32, i32* %11, i64 %13, !dbg !137
  ret i32* %14, !dbg !138
}

; Function Attrs: nounwind uwtable
define dso_local noalias i32* @ipvector(i32 %0, i32 %1) local_unnamed_addr #3 !dbg !139 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !141, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i32 %1, metadata !142, metadata !DIExpression()), !dbg !144
  %3 = sub i32 1, %0, !dbg !145
  %4 = add i32 %3, %1, !dbg !146
  %5 = sext i32 %4 to i64, !dbg !147
  %6 = shl nsw i64 %5, 3, !dbg !148
  %7 = tail call noalias i8* @malloc(i64 %6) #8, !dbg !149
  call void @llvm.dbg.value(metadata i8* %7, metadata !143, metadata !DIExpression()), !dbg !144
  %8 = icmp eq i8* %7, null, !dbg !150
  br i1 %8, label %9, label %10, !dbg !152

9:                                                ; preds = %2
  tail call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0)), !dbg !153
  unreachable

10:                                               ; preds = %2
  %11 = bitcast i8* %7 to i32*, !dbg !154
  call void @llvm.dbg.value(metadata i32* %11, metadata !143, metadata !DIExpression()), !dbg !144
  %12 = sext i32 %0 to i64, !dbg !155
  %13 = sub nsw i64 0, %12, !dbg !155
  %14 = getelementptr inbounds i32, i32* %11, i64 %13, !dbg !155
  ret i32* %14, !dbg !156
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull double** @matrix(i32 %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #3 !dbg !157 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !161, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i32 %1, metadata !162, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i32 %2, metadata !163, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i32 %3, metadata !164, metadata !DIExpression()), !dbg !169
  %5 = sub nsw i32 %1, %0, !dbg !170
  call void @llvm.dbg.value(metadata i32 %5, metadata !166, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !169
  %6 = sub nsw i32 %3, %2, !dbg !171
  %7 = add nsw i32 %6, 1, !dbg !172
  call void @llvm.dbg.value(metadata i32 %7, metadata !167, metadata !DIExpression()), !dbg !169
  %8 = add nsw i32 %5, 2, !dbg !173
  %9 = sext i32 %8 to i64, !dbg !174
  %10 = shl nsw i64 %9, 3, !dbg !175
  %11 = tail call noalias i8* @malloc(i64 %10) #8, !dbg !176
  call void @llvm.dbg.value(metadata i8* %11, metadata !168, metadata !DIExpression()), !dbg !169
  %12 = icmp eq i8* %11, null, !dbg !177
  br i1 %12, label %13, label %14, !dbg !179

13:                                               ; preds = %4
  tail call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)), !dbg !180
  unreachable

14:                                               ; preds = %4
  %15 = add nsw i32 %5, 1, !dbg !181
  call void @llvm.dbg.value(metadata i32 %15, metadata !166, metadata !DIExpression()), !dbg !169
  %16 = getelementptr inbounds i8, i8* %11, i64 8, !dbg !182
  %17 = bitcast i8* %16 to double**, !dbg !182
  call void @llvm.dbg.value(metadata double** %17, metadata !168, metadata !DIExpression()), !dbg !169
  %18 = sext i32 %0 to i64, !dbg !183
  %19 = sub nsw i64 0, %18, !dbg !183
  %20 = getelementptr inbounds double*, double** %17, i64 %19, !dbg !183
  call void @llvm.dbg.value(metadata double** %20, metadata !168, metadata !DIExpression()), !dbg !169
  %21 = mul nsw i32 %7, %15, !dbg !184
  %22 = add nsw i32 %21, 1, !dbg !185
  %23 = sext i32 %22 to i64, !dbg !186
  %24 = shl nsw i64 %23, 3, !dbg !187
  %25 = tail call noalias i8* @malloc(i64 %24) #8, !dbg !188
  %26 = bitcast i8* %16 to i8**, !dbg !189
  store i8* %25, i8** %26, align 8, !dbg !189, !tbaa !90
  %27 = icmp eq i8* %25, null, !dbg !190
  br i1 %27, label %28, label %29, !dbg !192

28:                                               ; preds = %14
  tail call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0)), !dbg !193
  unreachable

29:                                               ; preds = %14
  %30 = getelementptr inbounds i8, i8* %25, i64 8, !dbg !194
  %31 = bitcast i8* %30 to double*, !dbg !194
  %32 = sext i32 %2 to i64, !dbg !195
  %33 = sub nsw i64 0, %32, !dbg !195
  %34 = getelementptr inbounds double, double* %31, i64 %33, !dbg !195
  store double* %34, double** %17, align 8, !dbg !195, !tbaa !90
  call void @llvm.dbg.value(metadata i32 %0, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !169
  call void @llvm.dbg.value(metadata i32 %0, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !169
  %35 = icmp sgt i32 %1, %0, !dbg !196
  br i1 %35, label %36, label %47, !dbg !199

36:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 %0, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !169
  %37 = sext i32 %7 to i64, !dbg !200
  %38 = sext i32 %1 to i64, !dbg !196
  %39 = load double*, double** %17, align 8, !dbg !201, !tbaa !90
  br label %40, !dbg !199

40:                                               ; preds = %40, %36
  %41 = phi double* [ %39, %36 ], [ %44, %40 ], !dbg !201
  %42 = phi i64 [ %18, %36 ], [ %43, %40 ]
  %43 = add nsw i64 %42, 1, !dbg !202
  %44 = getelementptr inbounds double, double* %41, i64 %37, !dbg !203
  %45 = getelementptr inbounds double*, double** %20, i64 %43, !dbg !204
  store double* %44, double** %45, align 8, !dbg !205, !tbaa !90
  call void @llvm.dbg.value(metadata i64 %43, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !169
  call void @llvm.dbg.value(metadata i64 %43, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !169
  %46 = icmp eq i64 %43, %38, !dbg !196
  br i1 %46, label %47, label %40, !dbg !199, !llvm.loop !206

47:                                               ; preds = %40, %29
  ret double** %20, !dbg !208
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i32** @imatrix(i32 %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #3 !dbg !209 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !213, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 %1, metadata !214, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 %2, metadata !215, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 %3, metadata !216, metadata !DIExpression()), !dbg !221
  %5 = sub nsw i32 %1, %0, !dbg !222
  call void @llvm.dbg.value(metadata i32 %5, metadata !218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !221
  %6 = sub nsw i32 %3, %2, !dbg !223
  %7 = add nsw i32 %6, 1, !dbg !224
  call void @llvm.dbg.value(metadata i32 %7, metadata !219, metadata !DIExpression()), !dbg !221
  %8 = add nsw i32 %5, 2, !dbg !225
  %9 = sext i32 %8 to i64, !dbg !226
  %10 = shl nsw i64 %9, 3, !dbg !227
  %11 = tail call noalias i8* @malloc(i64 %10) #8, !dbg !228
  call void @llvm.dbg.value(metadata i8* %11, metadata !220, metadata !DIExpression()), !dbg !221
  %12 = icmp eq i8* %11, null, !dbg !229
  br i1 %12, label %13, label %14, !dbg !231

13:                                               ; preds = %4
  tail call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)), !dbg !232
  unreachable

14:                                               ; preds = %4
  %15 = add nsw i32 %5, 1, !dbg !233
  call void @llvm.dbg.value(metadata i32 %15, metadata !218, metadata !DIExpression()), !dbg !221
  %16 = getelementptr inbounds i8, i8* %11, i64 8, !dbg !234
  %17 = bitcast i8* %16 to i32**, !dbg !234
  call void @llvm.dbg.value(metadata i32** %17, metadata !220, metadata !DIExpression()), !dbg !221
  %18 = sext i32 %0 to i64, !dbg !235
  %19 = sub nsw i64 0, %18, !dbg !235
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19, !dbg !235
  call void @llvm.dbg.value(metadata i32** %20, metadata !220, metadata !DIExpression()), !dbg !221
  %21 = mul nsw i32 %7, %15, !dbg !236
  %22 = add nsw i32 %21, 1, !dbg !237
  %23 = sext i32 %22 to i64, !dbg !238
  %24 = shl nsw i64 %23, 2, !dbg !239
  %25 = tail call noalias i8* @malloc(i64 %24) #8, !dbg !240
  %26 = bitcast i8* %16 to i8**, !dbg !241
  store i8* %25, i8** %26, align 8, !dbg !241, !tbaa !90
  %27 = icmp eq i8* %25, null, !dbg !242
  br i1 %27, label %28, label %29, !dbg !244

28:                                               ; preds = %14
  tail call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0)), !dbg !245
  unreachable

29:                                               ; preds = %14
  %30 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !246
  %31 = bitcast i8* %30 to i32*, !dbg !246
  %32 = sext i32 %2 to i64, !dbg !247
  %33 = sub nsw i64 0, %32, !dbg !247
  %34 = getelementptr inbounds i32, i32* %31, i64 %33, !dbg !247
  store i32* %34, i32** %17, align 8, !dbg !247, !tbaa !90
  call void @llvm.dbg.value(metadata i32 %0, metadata !217, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !221
  call void @llvm.dbg.value(metadata i32 %0, metadata !217, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !221
  %35 = icmp sgt i32 %1, %0, !dbg !248
  br i1 %35, label %36, label %47, !dbg !251

36:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 %0, metadata !217, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !221
  %37 = sext i32 %7 to i64, !dbg !252
  %38 = sext i32 %1 to i64, !dbg !248
  %39 = load i32*, i32** %17, align 8, !dbg !253, !tbaa !90
  br label %40, !dbg !251

40:                                               ; preds = %40, %36
  %41 = phi i32* [ %39, %36 ], [ %44, %40 ], !dbg !253
  %42 = phi i64 [ %18, %36 ], [ %43, %40 ]
  %43 = add nsw i64 %42, 1, !dbg !254
  %44 = getelementptr inbounds i32, i32* %41, i64 %37, !dbg !255
  %45 = getelementptr inbounds i32*, i32** %20, i64 %43, !dbg !256
  store i32* %44, i32** %45, align 8, !dbg !257, !tbaa !90
  call void @llvm.dbg.value(metadata i64 %43, metadata !217, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !221
  call void @llvm.dbg.value(metadata i64 %43, metadata !217, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !221
  %46 = icmp eq i64 %43, %38, !dbg !248
  br i1 %46, label %47, label %40, !dbg !251, !llvm.loop !258

47:                                               ; preds = %40, %29
  ret i32** %20, !dbg !260
}

; Function Attrs: nounwind uwtable
define dso_local void @free_vector(double* nocapture %0, i64 %1, i64 %2) local_unnamed_addr #3 !dbg !261 {
  call void @llvm.dbg.value(metadata double* %0, metadata !265, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i64 %1, metadata !266, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i64 %2, metadata !267, metadata !DIExpression()), !dbg !268
  %4 = getelementptr inbounds double, double* %0, i64 %1, !dbg !269
  %5 = bitcast double* %4 to i8*, !dbg !270
  tail call void @free(i8* %5) #8, !dbg !271
  ret void, !dbg !272
}

; Function Attrs: nounwind
declare !dbg !74 dso_local void @free(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @free_ivector(i32* nocapture %0, i32 %1, i32 %2) local_unnamed_addr #3 !dbg !273 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !277, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 %1, metadata !278, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 %2, metadata !279, metadata !DIExpression()), !dbg !280
  %4 = sext i32 %1 to i64, !dbg !281
  %5 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !281
  %6 = bitcast i32* %5 to i8*, !dbg !282
  tail call void @free(i8* %6) #8, !dbg !283
  ret void, !dbg !284
}

; Function Attrs: nounwind uwtable
define dso_local void @free_matrix(double** nocapture %0, i32 %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #3 !dbg !285 {
  call void @llvm.dbg.value(metadata double** %0, metadata !289, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %1, metadata !290, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %2, metadata !291, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %3, metadata !292, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %4, metadata !293, metadata !DIExpression()), !dbg !294
  %6 = sext i32 %1 to i64, !dbg !295
  %7 = getelementptr inbounds double*, double** %0, i64 %6, !dbg !295
  %8 = load double*, double** %7, align 8, !dbg !295, !tbaa !90
  %9 = sext i32 %3 to i64, !dbg !296
  %10 = getelementptr inbounds double, double* %8, i64 %9, !dbg !296
  %11 = getelementptr inbounds double, double* %10, i64 -1, !dbg !297
  %12 = bitcast double* %11 to i8*, !dbg !298
  tail call void @free(i8* nonnull %12) #8, !dbg !299
  %13 = getelementptr inbounds double*, double** %7, i64 -1, !dbg !300
  %14 = bitcast double** %13 to i8*, !dbg !301
  tail call void @free(i8* nonnull %14) #8, !dbg !302
  ret void, !dbg !303
}

; Function Attrs: nounwind uwtable
define dso_local void @free_imatrix(i32** nocapture %0, i32 %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #3 !dbg !304 {
  call void @llvm.dbg.value(metadata i32** %0, metadata !308, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i32 %1, metadata !309, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i32 %2, metadata !310, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i32 %3, metadata !311, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata i32 %4, metadata !312, metadata !DIExpression()), !dbg !313
  %6 = sext i32 %1 to i64, !dbg !314
  %7 = getelementptr inbounds i32*, i32** %0, i64 %6, !dbg !314
  %8 = load i32*, i32** %7, align 8, !dbg !314, !tbaa !90
  %9 = sext i32 %3 to i64, !dbg !315
  %10 = getelementptr inbounds i32, i32* %8, i64 %9, !dbg !315
  %11 = getelementptr inbounds i32, i32* %10, i64 -1, !dbg !316
  %12 = bitcast i32* %11 to i8*, !dbg !317
  tail call void @free(i8* nonnull %12) #8, !dbg !318
  %13 = getelementptr inbounds i32*, i32** %7, i64 -1, !dbg !319
  %14 = bitcast i32** %13 to i8*, !dbg !320
  tail call void @free(i8* nonnull %14) #8, !dbg !321
  ret void, !dbg !322
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable willreturn }
attributes #6 = { cold }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!78, !79, !80}
!llvm.ident = !{!81}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/memutil.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test/spec codes")
!2 = !{}
!3 = !{!4, !6, !7, !71, !72, !73, !18, !74}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!7 = !DISubprogram(name: "fflush", scope: !8, file: !8, line: 218, type: !9, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!8 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !14, line: 49, size: 1728, elements: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!15 = !{!16, !17, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !33, !34, !35, !36, !40, !42, !44, !48, !51, !53, !56, !59, !60, !62, !66, !67}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !13, file: !14, line: 51, baseType: !11, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !13, file: !14, line: 54, baseType: !18, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !13, file: !14, line: 55, baseType: !18, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !13, file: !14, line: 56, baseType: !18, size: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !13, file: !14, line: 57, baseType: !18, size: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !13, file: !14, line: 58, baseType: !18, size: 64, offset: 320)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !13, file: !14, line: 59, baseType: !18, size: 64, offset: 384)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !13, file: !14, line: 60, baseType: !18, size: 64, offset: 448)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !13, file: !14, line: 61, baseType: !18, size: 64, offset: 512)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !13, file: !14, line: 64, baseType: !18, size: 64, offset: 576)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !13, file: !14, line: 65, baseType: !18, size: 64, offset: 640)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !13, file: !14, line: 66, baseType: !18, size: 64, offset: 704)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !13, file: !14, line: 68, baseType: !31, size: 64, offset: 768)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !14, line: 36, flags: DIFlagFwdDecl)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !13, file: !14, line: 70, baseType: !12, size: 64, offset: 832)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !13, file: !14, line: 72, baseType: !11, size: 32, offset: 896)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !13, file: !14, line: 73, baseType: !11, size: 32, offset: 928)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !13, file: !14, line: 74, baseType: !37, size: 64, offset: 960)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !38, line: 152, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!39 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !13, file: !14, line: 77, baseType: !41, size: 16, offset: 1024)
!41 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !13, file: !14, line: 78, baseType: !43, size: 8, offset: 1040)
!43 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !13, file: !14, line: 79, baseType: !45, size: 8, offset: 1048)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 1)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !13, file: !14, line: 81, baseType: !49, size: 64, offset: 1088)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !14, line: 43, baseType: null)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !13, file: !14, line: 89, baseType: !52, size: 64, offset: 1152)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !38, line: 153, baseType: !39)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !13, file: !14, line: 91, baseType: !54, size: 64, offset: 1216)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !14, line: 37, flags: DIFlagFwdDecl)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !13, file: !14, line: 92, baseType: !57, size: 64, offset: 1280)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !14, line: 38, flags: DIFlagFwdDecl)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !13, file: !14, line: 93, baseType: !12, size: 64, offset: 1344)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !13, file: !14, line: 94, baseType: !61, size: 64, offset: 1408)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !13, file: !14, line: 95, baseType: !63, size: 64, offset: 1472)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 46, baseType: !65)
!64 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!65 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !13, file: !14, line: 96, baseType: !11, size: 32, offset: 1536)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !13, file: !14, line: 98, baseType: !68, size: 160, offset: 1568)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 20)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!74 = !DISubprogram(name: "free", scope: !75, file: !75, line: 565, type: !76, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!75 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!76 = !DISubroutineType(types: !77)
!77 = !{null, !61}
!78 = !{i32 7, !"Dwarf Version", i32 4}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{i32 1, !"wchar_size", i32 4}
!81 = !{!"clang version 10.0.0-4ubuntu1 "}
!82 = distinct !DISubprogram(name: "nrerror", scope: !83, file: !83, line: 6, type: !84, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!83 = !DIFile(filename: "Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/memutil.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation")
!84 = !DISubroutineType(types: !85)
!85 = !{null, !18}
!86 = !{!87}
!87 = !DILocalVariable(name: "msg", arg: 1, scope: !82, file: !83, line: 6, type: !18)
!88 = !DILocation(line: 0, scope: !82)
!89 = !DILocation(line: 12, column: 11, scope: !82)
!90 = !{!91, !91, i64 0}
!91 = !{!"any pointer", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = !DILocation(line: 12, column: 2, scope: !82)
!95 = !DILocation(line: 13, column: 2, scope: !82)
!96 = distinct !DISubprogram(name: "vector", scope: !83, file: !83, line: 16, type: !97, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !99)
!97 = !DISubroutineType(types: !98)
!98 = !{!4, !63, !63}
!99 = !{!100, !101, !102}
!100 = !DILocalVariable(name: "nl", arg: 1, scope: !96, file: !83, line: 16, type: !63)
!101 = !DILocalVariable(name: "nh", arg: 2, scope: !96, file: !83, line: 16, type: !63)
!102 = !DILocalVariable(name: "v", scope: !96, file: !83, line: 18, type: !4)
!103 = !DILocation(line: 0, scope: !96)
!104 = !DILocation(line: 29, column: 31, scope: !96)
!105 = !DILocation(line: 29, column: 42, scope: !96)
!106 = !DILocation(line: 29, column: 18, scope: !96)
!107 = !DILocation(line: 30, column: 7, scope: !108)
!108 = distinct !DILexicalBlock(scope: !96, file: !83, line: 30, column: 6)
!109 = !DILocation(line: 30, column: 6, scope: !96)
!110 = !DILocation(line: 31, column: 19, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !83, line: 30, column: 11)
!112 = !DILocation(line: 31, column: 10, scope: !111)
!113 = !DILocation(line: 32, column: 10, scope: !111)
!114 = !DILocation(line: 32, column: 3, scope: !111)
!115 = !DILocation(line: 33, column: 3, scope: !111)
!116 = !DILocation(line: 29, column: 6, scope: !96)
!117 = !DILocation(line: 39, column: 12, scope: !96)
!118 = !DILocation(line: 39, column: 2, scope: !96)
!119 = distinct !DISubprogram(name: "ivector", scope: !83, file: !83, line: 42, type: !120, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{!71, !11, !11}
!122 = !{!123, !124, !125}
!123 = !DILocalVariable(name: "nl", arg: 1, scope: !119, file: !83, line: 42, type: !11)
!124 = !DILocalVariable(name: "nh", arg: 2, scope: !119, file: !83, line: 42, type: !11)
!125 = !DILocalVariable(name: "v", scope: !119, file: !83, line: 47, type: !71)
!126 = !DILocation(line: 0, scope: !119)
!127 = !DILocation(line: 49, column: 28, scope: !119)
!128 = !DILocation(line: 49, column: 33, scope: !119)
!129 = !DILocation(line: 49, column: 23, scope: !119)
!130 = !DILocation(line: 49, column: 39, scope: !119)
!131 = !DILocation(line: 49, column: 15, scope: !119)
!132 = !DILocation(line: 50, column: 7, scope: !133)
!133 = distinct !DILexicalBlock(scope: !119, file: !83, line: 50, column: 6)
!134 = !DILocation(line: 50, column: 6, scope: !119)
!135 = !DILocation(line: 51, column: 3, scope: !133)
!136 = !DILocation(line: 49, column: 6, scope: !119)
!137 = !DILocation(line: 52, column: 12, scope: !119)
!138 = !DILocation(line: 52, column: 2, scope: !119)
!139 = distinct !DISubprogram(name: "ipvector", scope: !83, file: !83, line: 55, type: !120, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !140)
!140 = !{!141, !142, !143}
!141 = !DILocalVariable(name: "nl", arg: 1, scope: !139, file: !83, line: 55, type: !11)
!142 = !DILocalVariable(name: "nh", arg: 2, scope: !139, file: !83, line: 55, type: !11)
!143 = !DILocalVariable(name: "v", scope: !139, file: !83, line: 60, type: !71)
!144 = !DILocation(line: 0, scope: !139)
!145 = !DILocation(line: 62, column: 28, scope: !139)
!146 = !DILocation(line: 62, column: 33, scope: !139)
!147 = !DILocation(line: 62, column: 23, scope: !139)
!148 = !DILocation(line: 62, column: 39, scope: !139)
!149 = !DILocation(line: 62, column: 15, scope: !139)
!150 = !DILocation(line: 63, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !139, file: !83, line: 63, column: 6)
!152 = !DILocation(line: 63, column: 6, scope: !139)
!153 = !DILocation(line: 64, column: 3, scope: !151)
!154 = !DILocation(line: 62, column: 6, scope: !139)
!155 = !DILocation(line: 65, column: 12, scope: !139)
!156 = !DILocation(line: 65, column: 2, scope: !139)
!157 = distinct !DISubprogram(name: "matrix", scope: !83, file: !83, line: 69, type: !158, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{!72, !11, !11, !11, !11}
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168}
!161 = !DILocalVariable(name: "nrl", arg: 1, scope: !157, file: !83, line: 69, type: !11)
!162 = !DILocalVariable(name: "nrh", arg: 2, scope: !157, file: !83, line: 69, type: !11)
!163 = !DILocalVariable(name: "ncl", arg: 3, scope: !157, file: !83, line: 69, type: !11)
!164 = !DILocalVariable(name: "nch", arg: 4, scope: !157, file: !83, line: 69, type: !11)
!165 = !DILocalVariable(name: "i", scope: !157, file: !83, line: 74, type: !11)
!166 = !DILocalVariable(name: "nrow", scope: !157, file: !83, line: 75, type: !11)
!167 = !DILocalVariable(name: "ncol", scope: !157, file: !83, line: 75, type: !11)
!168 = !DILocalVariable(name: "m", scope: !157, file: !83, line: 76, type: !72)
!169 = !DILocation(line: 0, scope: !157)
!170 = !DILocation(line: 78, column: 13, scope: !157)
!171 = !DILocation(line: 79, column: 13, scope: !157)
!172 = !DILocation(line: 79, column: 19, scope: !157)
!173 = !DILocation(line: 81, column: 34, scope: !157)
!174 = !DILocation(line: 81, column: 27, scope: !157)
!175 = !DILocation(line: 81, column: 45, scope: !157)
!176 = !DILocation(line: 81, column: 19, scope: !157)
!177 = !DILocation(line: 82, column: 7, scope: !178)
!178 = distinct !DILexicalBlock(scope: !157, file: !83, line: 82, column: 6)
!179 = !DILocation(line: 82, column: 6, scope: !157)
!180 = !DILocation(line: 83, column: 3, scope: !178)
!181 = !DILocation(line: 78, column: 19, scope: !157)
!182 = !DILocation(line: 84, column: 4, scope: !157)
!183 = !DILocation(line: 85, column: 4, scope: !157)
!184 = !DILocation(line: 88, column: 18, scope: !157)
!185 = !DILocation(line: 88, column: 25, scope: !157)
!186 = !DILocation(line: 88, column: 11, scope: !157)
!187 = !DILocation(line: 88, column: 36, scope: !157)
!188 = !DILocation(line: 88, column: 3, scope: !157)
!189 = !DILocation(line: 87, column: 11, scope: !157)
!190 = !DILocation(line: 89, column: 7, scope: !191)
!191 = distinct !DILexicalBlock(scope: !157, file: !83, line: 89, column: 6)
!192 = !DILocation(line: 89, column: 6, scope: !157)
!193 = !DILocation(line: 90, column: 3, scope: !191)
!194 = !DILocation(line: 91, column: 11, scope: !157)
!195 = !DILocation(line: 92, column: 11, scope: !157)
!196 = !DILocation(line: 94, column: 22, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !83, line: 94, column: 2)
!198 = distinct !DILexicalBlock(scope: !157, file: !83, line: 94, column: 2)
!199 = !DILocation(line: 94, column: 2, scope: !198)
!200 = !DILocation(line: 0, scope: !197)
!201 = !DILocation(line: 95, column: 12, scope: !197)
!202 = !DILocation(line: 0, scope: !198)
!203 = !DILocation(line: 95, column: 23, scope: !197)
!204 = !DILocation(line: 95, column: 3, scope: !197)
!205 = !DILocation(line: 95, column: 10, scope: !197)
!206 = distinct !{!206, !199, !207}
!207 = !DILocation(line: 95, column: 25, scope: !198)
!208 = !DILocation(line: 96, column: 2, scope: !157)
!209 = distinct !DISubprogram(name: "imatrix", scope: !83, file: !83, line: 99, type: !210, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !212)
!210 = !DISubroutineType(types: !211)
!211 = !{!73, !11, !11, !11, !11}
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220}
!213 = !DILocalVariable(name: "nrl", arg: 1, scope: !209, file: !83, line: 99, type: !11)
!214 = !DILocalVariable(name: "nrh", arg: 2, scope: !209, file: !83, line: 99, type: !11)
!215 = !DILocalVariable(name: "ncl", arg: 3, scope: !209, file: !83, line: 99, type: !11)
!216 = !DILocalVariable(name: "nch", arg: 4, scope: !209, file: !83, line: 99, type: !11)
!217 = !DILocalVariable(name: "i", scope: !209, file: !83, line: 104, type: !11)
!218 = !DILocalVariable(name: "nrow", scope: !209, file: !83, line: 105, type: !11)
!219 = !DILocalVariable(name: "ncol", scope: !209, file: !83, line: 105, type: !11)
!220 = !DILocalVariable(name: "m", scope: !209, file: !83, line: 106, type: !73)
!221 = !DILocation(line: 0, scope: !209)
!222 = !DILocation(line: 108, column: 13, scope: !209)
!223 = !DILocation(line: 109, column: 13, scope: !209)
!224 = !DILocation(line: 109, column: 19, scope: !209)
!225 = !DILocation(line: 111, column: 31, scope: !209)
!226 = !DILocation(line: 111, column: 24, scope: !209)
!227 = !DILocation(line: 111, column: 42, scope: !209)
!228 = !DILocation(line: 111, column: 16, scope: !209)
!229 = !DILocation(line: 112, column: 7, scope: !230)
!230 = distinct !DILexicalBlock(scope: !209, file: !83, line: 112, column: 6)
!231 = !DILocation(line: 112, column: 6, scope: !209)
!232 = !DILocation(line: 113, column: 3, scope: !230)
!233 = !DILocation(line: 108, column: 19, scope: !209)
!234 = !DILocation(line: 114, column: 4, scope: !209)
!235 = !DILocation(line: 115, column: 4, scope: !209)
!236 = !DILocation(line: 118, column: 18, scope: !209)
!237 = !DILocation(line: 118, column: 25, scope: !209)
!238 = !DILocation(line: 118, column: 11, scope: !209)
!239 = !DILocation(line: 118, column: 36, scope: !209)
!240 = !DILocation(line: 118, column: 3, scope: !209)
!241 = !DILocation(line: 117, column: 11, scope: !209)
!242 = !DILocation(line: 119, column: 7, scope: !243)
!243 = distinct !DILexicalBlock(scope: !209, file: !83, line: 119, column: 6)
!244 = !DILocation(line: 119, column: 6, scope: !209)
!245 = !DILocation(line: 120, column: 3, scope: !243)
!246 = !DILocation(line: 121, column: 11, scope: !209)
!247 = !DILocation(line: 122, column: 11, scope: !209)
!248 = !DILocation(line: 124, column: 22, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !83, line: 124, column: 2)
!250 = distinct !DILexicalBlock(scope: !209, file: !83, line: 124, column: 2)
!251 = !DILocation(line: 124, column: 2, scope: !250)
!252 = !DILocation(line: 0, scope: !249)
!253 = !DILocation(line: 125, column: 12, scope: !249)
!254 = !DILocation(line: 0, scope: !250)
!255 = !DILocation(line: 125, column: 23, scope: !249)
!256 = !DILocation(line: 125, column: 3, scope: !249)
!257 = !DILocation(line: 125, column: 10, scope: !249)
!258 = distinct !{!258, !251, !259}
!259 = !DILocation(line: 125, column: 25, scope: !250)
!260 = !DILocation(line: 126, column: 2, scope: !209)
!261 = distinct !DISubprogram(name: "free_vector", scope: !83, file: !83, line: 129, type: !262, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !264)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !4, !63, !63}
!264 = !{!265, !266, !267}
!265 = !DILocalVariable(name: "v", arg: 1, scope: !261, file: !83, line: 129, type: !4)
!266 = !DILocalVariable(name: "nl", arg: 2, scope: !261, file: !83, line: 129, type: !63)
!267 = !DILocalVariable(name: "nh", arg: 3, scope: !261, file: !83, line: 129, type: !63)
!268 = !DILocation(line: 0, scope: !261)
!269 = !DILocation(line: 132, column: 22, scope: !261)
!270 = !DILocation(line: 132, column: 8, scope: !261)
!271 = !DILocation(line: 132, column: 2, scope: !261)
!272 = !DILocation(line: 133, column: 1, scope: !261)
!273 = distinct !DISubprogram(name: "free_ivector", scope: !83, file: !83, line: 135, type: !274, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !276)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !71, !11, !11}
!276 = !{!277, !278, !279}
!277 = !DILocalVariable(name: "v", arg: 1, scope: !273, file: !83, line: 135, type: !71)
!278 = !DILocalVariable(name: "nl", arg: 2, scope: !273, file: !83, line: 135, type: !11)
!279 = !DILocalVariable(name: "nh", arg: 3, scope: !273, file: !83, line: 135, type: !11)
!280 = !DILocation(line: 0, scope: !273)
!281 = !DILocation(line: 142, column: 22, scope: !273)
!282 = !DILocation(line: 142, column: 8, scope: !273)
!283 = !DILocation(line: 142, column: 2, scope: !273)
!284 = !DILocation(line: 143, column: 1, scope: !273)
!285 = distinct !DISubprogram(name: "free_matrix", scope: !83, file: !83, line: 145, type: !286, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !288)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !72, !11, !11, !11, !11}
!288 = !{!289, !290, !291, !292, !293}
!289 = !DILocalVariable(name: "m", arg: 1, scope: !285, file: !83, line: 145, type: !72)
!290 = !DILocalVariable(name: "nrl", arg: 2, scope: !285, file: !83, line: 145, type: !11)
!291 = !DILocalVariable(name: "nrh", arg: 3, scope: !285, file: !83, line: 145, type: !11)
!292 = !DILocalVariable(name: "ncl", arg: 4, scope: !285, file: !83, line: 145, type: !11)
!293 = !DILocalVariable(name: "nch", arg: 5, scope: !285, file: !83, line: 145, type: !11)
!294 = !DILocation(line: 0, scope: !285)
!295 = !DILocation(line: 151, column: 20, scope: !285)
!296 = !DILocation(line: 151, column: 29, scope: !285)
!297 = !DILocation(line: 151, column: 35, scope: !285)
!298 = !DILocation(line: 151, column: 8, scope: !285)
!299 = !DILocation(line: 151, column: 2, scope: !285)
!300 = !DILocation(line: 152, column: 28, scope: !285)
!301 = !DILocation(line: 152, column: 8, scope: !285)
!302 = !DILocation(line: 152, column: 2, scope: !285)
!303 = !DILocation(line: 153, column: 1, scope: !285)
!304 = distinct !DISubprogram(name: "free_imatrix", scope: !83, file: !83, line: 155, type: !305, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !307)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !73, !11, !11, !11, !11}
!307 = !{!308, !309, !310, !311, !312}
!308 = !DILocalVariable(name: "m", arg: 1, scope: !304, file: !83, line: 155, type: !73)
!309 = !DILocalVariable(name: "nrl", arg: 2, scope: !304, file: !83, line: 155, type: !11)
!310 = !DILocalVariable(name: "nrh", arg: 3, scope: !304, file: !83, line: 155, type: !11)
!311 = !DILocalVariable(name: "ncl", arg: 4, scope: !304, file: !83, line: 155, type: !11)
!312 = !DILocalVariable(name: "nch", arg: 5, scope: !304, file: !83, line: 155, type: !11)
!313 = !DILocation(line: 0, scope: !304)
!314 = !DILocation(line: 161, column: 20, scope: !304)
!315 = !DILocation(line: 161, column: 29, scope: !304)
!316 = !DILocation(line: 161, column: 35, scope: !304)
!317 = !DILocation(line: 161, column: 8, scope: !304)
!318 = !DILocation(line: 161, column: 2, scope: !304)
!319 = !DILocation(line: 162, column: 28, scope: !304)
!320 = !DILocation(line: 162, column: 8, scope: !304)
!321 = !DILocation(line: 162, column: 2, scope: !304)
!322 = !DILocation(line: 163, column: 1, scope: !304)
