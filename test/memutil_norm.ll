; ModuleID = 'memutil.ll'
source_filename = "memutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"FATAL: %s\0A\00", align 1
@nabout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"allocation failure in vector: nh = %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"allocation failure in vector()\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"allocation failure in ivector()\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"allocation failure in ipvector()\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"allocation failure 1 in matrix()\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"allocation failure 2 in matrix()\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @nrerror(i8* %0) #0 !dbg !82 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !86, metadata !DIExpression()), !dbg !87
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !88, !tbaa !89
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %0), !dbg !93
  call void @exit(i32 1) #6, !dbg !94
  unreachable, !dbg !94
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: nounwind uwtable
define dso_local double* @vector(i64 %0, i64 %1) #0 !dbg !95 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !99, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 %1, metadata !100, metadata !DIExpression()), !dbg !102
  %3 = sub i64 %1, %0, !dbg !103
  %4 = add i64 %3, 1, !dbg !104
  %5 = mul i64 %4, 8, !dbg !105
  %6 = call noalias i8* @malloc(i64 %5) #7, !dbg !106
  %7 = bitcast i8* %6 to double*, !dbg !107
  call void @llvm.dbg.value(metadata double* %7, metadata !101, metadata !DIExpression()), !dbg !102
  %8 = icmp ne double* %7, null, !dbg !108
  br i1 %8, label %14, label %9, !dbg !110

9:                                                ; preds = %2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @nabout, align 8, !dbg !111, !tbaa !89
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %1), !dbg !113
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @nabout, align 8, !dbg !114, !tbaa !89
  %13 = call i32 @fflush(%struct._IO_FILE* %12), !dbg !115
  call void @nrerror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)), !dbg !116
  br label %14, !dbg !117

14:                                               ; preds = %9, %2
  %15 = sub i64 0, %0, !dbg !118
  %16 = getelementptr inbounds double, double* %7, i64 %15, !dbg !118
  ret double* %16, !dbg !119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

declare !dbg !7 dso_local i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local i32* @ivector(i32 %0, i32 %1) #0 !dbg !120 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !124, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.value(metadata i32 %1, metadata !125, metadata !DIExpression()), !dbg !127
  %3 = sub nsw i32 %1, %0, !dbg !128
  %4 = add nsw i32 %3, 1, !dbg !129
  %5 = sext i32 %4 to i64, !dbg !130
  %6 = mul i64 %5, 4, !dbg !131
  %7 = call noalias i8* @malloc(i64 %6) #7, !dbg !132
  %8 = bitcast i8* %7 to i32*, !dbg !133
  call void @llvm.dbg.value(metadata i32* %8, metadata !126, metadata !DIExpression()), !dbg !127
  %9 = icmp ne i32* %8, null, !dbg !134
  br i1 %9, label %11, label %10, !dbg !136

10:                                               ; preds = %2
  call void @nrerror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !137
  br label %11, !dbg !137

11:                                               ; preds = %10, %2
  %12 = sext i32 %0 to i64, !dbg !138
  %13 = sub i64 0, %12, !dbg !138
  %14 = getelementptr inbounds i32, i32* %8, i64 %13, !dbg !138
  ret i32* %14, !dbg !139
}

; Function Attrs: nounwind uwtable
define dso_local i32* @ipvector(i32 %0, i32 %1) #0 !dbg !140 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !142, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 %1, metadata !143, metadata !DIExpression()), !dbg !145
  %3 = sub nsw i32 %1, %0, !dbg !146
  %4 = add nsw i32 %3, 1, !dbg !147
  %5 = sext i32 %4 to i64, !dbg !148
  %6 = mul i64 %5, 8, !dbg !149
  %7 = call noalias i8* @malloc(i64 %6) #7, !dbg !150
  %8 = bitcast i8* %7 to i32*, !dbg !151
  call void @llvm.dbg.value(metadata i32* %8, metadata !144, metadata !DIExpression()), !dbg !145
  %9 = icmp ne i32* %8, null, !dbg !152
  br i1 %9, label %11, label %10, !dbg !154

10:                                               ; preds = %2
  call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0)), !dbg !155
  br label %11, !dbg !155

11:                                               ; preds = %10, %2
  %12 = sext i32 %0 to i64, !dbg !156
  %13 = sub i64 0, %12, !dbg !156
  %14 = getelementptr inbounds i32, i32* %8, i64 %13, !dbg !156
  ret i32* %14, !dbg !157
}

; Function Attrs: nounwind uwtable
define dso_local double** @matrix(i32 %0, i32 %1, i32 %2, i32 %3) #0 !dbg !158 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !162, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32 %1, metadata !163, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32 %2, metadata !164, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32 %3, metadata !165, metadata !DIExpression()), !dbg !170
  %5 = sub nsw i32 %1, %0, !dbg !171
  %6 = add nsw i32 %5, 1, !dbg !172
  call void @llvm.dbg.value(metadata i32 %6, metadata !167, metadata !DIExpression()), !dbg !170
  %7 = sub nsw i32 %3, %2, !dbg !173
  %8 = add nsw i32 %7, 1, !dbg !174
  call void @llvm.dbg.value(metadata i32 %8, metadata !168, metadata !DIExpression()), !dbg !170
  %9 = add nsw i32 %6, 1, !dbg !175
  %10 = sext i32 %9 to i64, !dbg !176
  %11 = mul i64 %10, 8, !dbg !177
  %12 = call noalias i8* @malloc(i64 %11) #7, !dbg !178
  %13 = bitcast i8* %12 to double**, !dbg !179
  call void @llvm.dbg.value(metadata double** %13, metadata !169, metadata !DIExpression()), !dbg !170
  %14 = icmp ne double** %13, null, !dbg !180
  br i1 %14, label %16, label %15, !dbg !182

15:                                               ; preds = %4
  call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)), !dbg !183
  br label %16, !dbg !183

16:                                               ; preds = %15, %4
  %17 = getelementptr inbounds double*, double** %13, i64 1, !dbg !184
  call void @llvm.dbg.value(metadata double** %17, metadata !169, metadata !DIExpression()), !dbg !170
  %18 = sext i32 %0 to i64, !dbg !185
  %19 = sub i64 0, %18, !dbg !185
  %20 = getelementptr inbounds double*, double** %17, i64 %19, !dbg !185
  call void @llvm.dbg.value(metadata double** %20, metadata !169, metadata !DIExpression()), !dbg !170
  %21 = mul nsw i32 %6, %8, !dbg !186
  %22 = add nsw i32 %21, 1, !dbg !187
  %23 = sext i32 %22 to i64, !dbg !188
  %24 = mul i64 %23, 8, !dbg !189
  %25 = call noalias i8* @malloc(i64 %24) #7, !dbg !190
  %26 = bitcast i8* %25 to double*, !dbg !191
  %27 = sext i32 %0 to i64, !dbg !192
  %28 = getelementptr inbounds double*, double** %20, i64 %27, !dbg !192
  store double* %26, double** %28, align 8, !dbg !193, !tbaa !89
  %29 = sext i32 %0 to i64, !dbg !194
  %30 = getelementptr inbounds double*, double** %20, i64 %29, !dbg !194
  %31 = load double*, double** %30, align 8, !dbg !194, !tbaa !89
  %32 = icmp ne double* %31, null, !dbg !194
  br i1 %32, label %34, label %33, !dbg !196

33:                                               ; preds = %16
  call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0)), !dbg !197
  br label %34, !dbg !197

34:                                               ; preds = %33, %16
  %35 = sext i32 %0 to i64, !dbg !198
  %36 = getelementptr inbounds double*, double** %20, i64 %35, !dbg !198
  %37 = load double*, double** %36, align 8, !dbg !199, !tbaa !89
  %38 = getelementptr inbounds double, double* %37, i64 1, !dbg !199
  store double* %38, double** %36, align 8, !dbg !199, !tbaa !89
  %39 = sext i32 %0 to i64, !dbg !200
  %40 = getelementptr inbounds double*, double** %20, i64 %39, !dbg !200
  %41 = load double*, double** %40, align 8, !dbg !201, !tbaa !89
  %42 = sext i32 %2 to i64, !dbg !201
  %43 = sub i64 0, %42, !dbg !201
  %44 = getelementptr inbounds double, double* %41, i64 %43, !dbg !201
  store double* %44, double** %40, align 8, !dbg !201, !tbaa !89
  call void @llvm.dbg.value(metadata i32 %0, metadata !166, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !170
  %45 = add i32 %0, 1, !dbg !202
  %46 = sext i32 %45 to i64, !dbg !202
  %47 = sext i32 %1 to i64, !dbg !202
  call void @llvm.dbg.value(metadata i64 %46, metadata !166, metadata !DIExpression()), !dbg !170
  %48 = icmp sle i64 %46, %47, !dbg !204
  br i1 %48, label %.lr.ph, label %58, !dbg !206

.lr.ph:                                           ; preds = %34
  br label %49, !dbg !206

49:                                               ; preds = %.lr.ph, %56
  %indvars.iv1 = phi i64 [ %46, %.lr.ph ], [ %indvars.iv.next, %56 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !166, metadata !DIExpression()), !dbg !170
  %50 = sub nsw i64 %indvars.iv1, 1, !dbg !207
  %51 = getelementptr inbounds double*, double** %20, i64 %50, !dbg !208
  %52 = load double*, double** %51, align 8, !dbg !208, !tbaa !89
  %53 = sext i32 %8 to i64, !dbg !209
  %54 = getelementptr inbounds double, double* %52, i64 %53, !dbg !209
  %55 = getelementptr inbounds double*, double** %20, i64 %indvars.iv1, !dbg !210
  store double* %54, double** %55, align 8, !dbg !211, !tbaa !89
  br label %56, !dbg !210

56:                                               ; preds = %49
  %indvars.iv.next = add i64 %indvars.iv1, 1, !dbg !212
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !166, metadata !DIExpression()), !dbg !170
  %57 = icmp sle i64 %indvars.iv.next, %47, !dbg !204
  br i1 %57, label %49, label %._crit_edge, !dbg !206, !llvm.loop !213

._crit_edge:                                      ; preds = %56
  br label %58, !dbg !206

58:                                               ; preds = %._crit_edge, %34
  ret double** %20, !dbg !215
}

; Function Attrs: nounwind uwtable
define dso_local i32** @imatrix(i32 %0, i32 %1, i32 %2, i32 %3) #0 !dbg !216 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !220, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 %1, metadata !221, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 %2, metadata !222, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 %3, metadata !223, metadata !DIExpression()), !dbg !228
  %5 = sub nsw i32 %1, %0, !dbg !229
  %6 = add nsw i32 %5, 1, !dbg !230
  call void @llvm.dbg.value(metadata i32 %6, metadata !225, metadata !DIExpression()), !dbg !228
  %7 = sub nsw i32 %3, %2, !dbg !231
  %8 = add nsw i32 %7, 1, !dbg !232
  call void @llvm.dbg.value(metadata i32 %8, metadata !226, metadata !DIExpression()), !dbg !228
  %9 = add nsw i32 %6, 1, !dbg !233
  %10 = sext i32 %9 to i64, !dbg !234
  %11 = mul i64 %10, 8, !dbg !235
  %12 = call noalias i8* @malloc(i64 %11) #7, !dbg !236
  %13 = bitcast i8* %12 to i32**, !dbg !237
  call void @llvm.dbg.value(metadata i32** %13, metadata !227, metadata !DIExpression()), !dbg !228
  %14 = icmp ne i32** %13, null, !dbg !238
  br i1 %14, label %16, label %15, !dbg !240

15:                                               ; preds = %4
  call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)), !dbg !241
  br label %16, !dbg !241

16:                                               ; preds = %15, %4
  %17 = getelementptr inbounds i32*, i32** %13, i64 1, !dbg !242
  call void @llvm.dbg.value(metadata i32** %17, metadata !227, metadata !DIExpression()), !dbg !228
  %18 = sext i32 %0 to i64, !dbg !243
  %19 = sub i64 0, %18, !dbg !243
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19, !dbg !243
  call void @llvm.dbg.value(metadata i32** %20, metadata !227, metadata !DIExpression()), !dbg !228
  %21 = mul nsw i32 %6, %8, !dbg !244
  %22 = add nsw i32 %21, 1, !dbg !245
  %23 = sext i32 %22 to i64, !dbg !246
  %24 = mul i64 %23, 4, !dbg !247
  %25 = call noalias i8* @malloc(i64 %24) #7, !dbg !248
  %26 = bitcast i8* %25 to i32*, !dbg !249
  %27 = sext i32 %0 to i64, !dbg !250
  %28 = getelementptr inbounds i32*, i32** %20, i64 %27, !dbg !250
  store i32* %26, i32** %28, align 8, !dbg !251, !tbaa !89
  %29 = sext i32 %0 to i64, !dbg !252
  %30 = getelementptr inbounds i32*, i32** %20, i64 %29, !dbg !252
  %31 = load i32*, i32** %30, align 8, !dbg !252, !tbaa !89
  %32 = icmp ne i32* %31, null, !dbg !252
  br i1 %32, label %34, label %33, !dbg !254

33:                                               ; preds = %16
  call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0)), !dbg !255
  br label %34, !dbg !255

34:                                               ; preds = %33, %16
  %35 = sext i32 %0 to i64, !dbg !256
  %36 = getelementptr inbounds i32*, i32** %20, i64 %35, !dbg !256
  %37 = load i32*, i32** %36, align 8, !dbg !257, !tbaa !89
  %38 = getelementptr inbounds i32, i32* %37, i64 1, !dbg !257
  store i32* %38, i32** %36, align 8, !dbg !257, !tbaa !89
  %39 = sext i32 %0 to i64, !dbg !258
  %40 = getelementptr inbounds i32*, i32** %20, i64 %39, !dbg !258
  %41 = load i32*, i32** %40, align 8, !dbg !259, !tbaa !89
  %42 = sext i32 %2 to i64, !dbg !259
  %43 = sub i64 0, %42, !dbg !259
  %44 = getelementptr inbounds i32, i32* %41, i64 %43, !dbg !259
  store i32* %44, i32** %40, align 8, !dbg !259, !tbaa !89
  call void @llvm.dbg.value(metadata i32 %0, metadata !224, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !228
  %45 = add i32 %0, 1, !dbg !260
  %46 = sext i32 %45 to i64, !dbg !260
  %47 = sext i32 %1 to i64, !dbg !260
  call void @llvm.dbg.value(metadata i64 %46, metadata !224, metadata !DIExpression()), !dbg !228
  %48 = icmp sle i64 %46, %47, !dbg !262
  br i1 %48, label %.lr.ph, label %58, !dbg !264

.lr.ph:                                           ; preds = %34
  br label %49, !dbg !264

49:                                               ; preds = %.lr.ph, %56
  %indvars.iv1 = phi i64 [ %46, %.lr.ph ], [ %indvars.iv.next, %56 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !224, metadata !DIExpression()), !dbg !228
  %50 = sub nsw i64 %indvars.iv1, 1, !dbg !265
  %51 = getelementptr inbounds i32*, i32** %20, i64 %50, !dbg !266
  %52 = load i32*, i32** %51, align 8, !dbg !266, !tbaa !89
  %53 = sext i32 %8 to i64, !dbg !267
  %54 = getelementptr inbounds i32, i32* %52, i64 %53, !dbg !267
  %55 = getelementptr inbounds i32*, i32** %20, i64 %indvars.iv1, !dbg !268
  store i32* %54, i32** %55, align 8, !dbg !269, !tbaa !89
  br label %56, !dbg !268

56:                                               ; preds = %49
  %indvars.iv.next = add i64 %indvars.iv1, 1, !dbg !270
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !224, metadata !DIExpression()), !dbg !228
  %57 = icmp sle i64 %indvars.iv.next, %47, !dbg !262
  br i1 %57, label %49, label %._crit_edge, !dbg !264, !llvm.loop !271

._crit_edge:                                      ; preds = %56
  br label %58, !dbg !264

58:                                               ; preds = %._crit_edge, %34
  ret i32** %20, !dbg !273
}

; Function Attrs: nounwind uwtable
define dso_local void @free_vector(double* %0, i64 %1, i64 %2) #0 !dbg !274 {
  call void @llvm.dbg.value(metadata double* %0, metadata !278, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i64 %1, metadata !279, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i64 %2, metadata !280, metadata !DIExpression()), !dbg !281
  %4 = getelementptr inbounds double, double* %0, i64 %1, !dbg !282
  %5 = bitcast double* %4 to i8*, !dbg !283
  call void @free(i8* %5) #7, !dbg !284
  ret void, !dbg !285
}

; Function Attrs: nounwind
declare !dbg !74 dso_local void @free(i8*) #5

; Function Attrs: nounwind uwtable
define dso_local void @free_ivector(i32* %0, i32 %1, i32 %2) #0 !dbg !286 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !290, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %1, metadata !291, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32 %2, metadata !292, metadata !DIExpression()), !dbg !293
  %4 = sext i32 %1 to i64, !dbg !294
  %5 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !294
  %6 = bitcast i32* %5 to i8*, !dbg !295
  call void @free(i8* %6) #7, !dbg !296
  ret void, !dbg !297
}

; Function Attrs: nounwind uwtable
define dso_local void @free_matrix(double** %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 !dbg !298 {
  call void @llvm.dbg.value(metadata double** %0, metadata !302, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i32 %1, metadata !303, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i32 %2, metadata !304, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i32 %3, metadata !305, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i32 %4, metadata !306, metadata !DIExpression()), !dbg !307
  %6 = sext i32 %1 to i64, !dbg !308
  %7 = getelementptr inbounds double*, double** %0, i64 %6, !dbg !308
  %8 = load double*, double** %7, align 8, !dbg !308, !tbaa !89
  %9 = sext i32 %3 to i64, !dbg !309
  %10 = getelementptr inbounds double, double* %8, i64 %9, !dbg !309
  %11 = getelementptr inbounds double, double* %10, i64 -1, !dbg !310
  %12 = bitcast double* %11 to i8*, !dbg !311
  call void @free(i8* %12) #7, !dbg !312
  %13 = sext i32 %1 to i64, !dbg !313
  %14 = getelementptr inbounds double*, double** %0, i64 %13, !dbg !313
  %15 = getelementptr inbounds double*, double** %14, i64 -1, !dbg !314
  %16 = bitcast double** %15 to i8*, !dbg !315
  call void @free(i8* %16) #7, !dbg !316
  ret void, !dbg !317
}

; Function Attrs: nounwind uwtable
define dso_local void @free_imatrix(i32** %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 !dbg !318 {
  call void @llvm.dbg.value(metadata i32** %0, metadata !322, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i32 %1, metadata !323, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i32 %2, metadata !324, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i32 %3, metadata !325, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i32 %4, metadata !326, metadata !DIExpression()), !dbg !327
  %6 = sext i32 %1 to i64, !dbg !328
  %7 = getelementptr inbounds i32*, i32** %0, i64 %6, !dbg !328
  %8 = load i32*, i32** %7, align 8, !dbg !328, !tbaa !89
  %9 = sext i32 %3 to i64, !dbg !329
  %10 = getelementptr inbounds i32, i32* %8, i64 %9, !dbg !329
  %11 = getelementptr inbounds i32, i32* %10, i64 -1, !dbg !330
  %12 = bitcast i32* %11 to i8*, !dbg !331
  call void @free(i8* %12) #7, !dbg !332
  %13 = sext i32 %1 to i64, !dbg !333
  %14 = getelementptr inbounds i32*, i32** %0, i64 %13, !dbg !333
  %15 = getelementptr inbounds i32*, i32** %14, i64 -1, !dbg !334
  %16 = bitcast i32** %15 to i8*, !dbg !335
  call void @free(i8* %16) #7, !dbg !336
  ret void, !dbg !337
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!78, !79, !80}
!llvm.ident = !{!81}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "memutil.c", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
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
!82 = distinct !DISubprogram(name: "nrerror", scope: !1, file: !1, line: 6, type: !83, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !85)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !18}
!85 = !{!86}
!86 = !DILocalVariable(name: "msg", arg: 1, scope: !82, file: !1, line: 6, type: !18)
!87 = !DILocation(line: 0, scope: !82)
!88 = !DILocation(line: 12, column: 11, scope: !82)
!89 = !{!90, !90, i64 0}
!90 = !{!"any pointer", !91, i64 0}
!91 = !{!"omnipotent char", !92, i64 0}
!92 = !{!"Simple C/C++ TBAA"}
!93 = !DILocation(line: 12, column: 2, scope: !82)
!94 = !DILocation(line: 13, column: 2, scope: !82)
!95 = distinct !DISubprogram(name: "vector", scope: !1, file: !1, line: 16, type: !96, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !98)
!96 = !DISubroutineType(types: !97)
!97 = !{!4, !63, !63}
!98 = !{!99, !100, !101}
!99 = !DILocalVariable(name: "nl", arg: 1, scope: !95, file: !1, line: 16, type: !63)
!100 = !DILocalVariable(name: "nh", arg: 2, scope: !95, file: !1, line: 16, type: !63)
!101 = !DILocalVariable(name: "v", scope: !95, file: !1, line: 18, type: !4)
!102 = !DILocation(line: 0, scope: !95)
!103 = !DILocation(line: 29, column: 31, scope: !95)
!104 = !DILocation(line: 29, column: 36, scope: !95)
!105 = !DILocation(line: 29, column: 42, scope: !95)
!106 = !DILocation(line: 29, column: 18, scope: !95)
!107 = !DILocation(line: 29, column: 6, scope: !95)
!108 = !DILocation(line: 30, column: 7, scope: !109)
!109 = distinct !DILexicalBlock(scope: !95, file: !1, line: 30, column: 6)
!110 = !DILocation(line: 30, column: 6, scope: !95)
!111 = !DILocation(line: 31, column: 19, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 30, column: 11)
!113 = !DILocation(line: 31, column: 10, scope: !112)
!114 = !DILocation(line: 32, column: 10, scope: !112)
!115 = !DILocation(line: 32, column: 3, scope: !112)
!116 = !DILocation(line: 33, column: 3, scope: !112)
!117 = !DILocation(line: 34, column: 2, scope: !112)
!118 = !DILocation(line: 39, column: 12, scope: !95)
!119 = !DILocation(line: 39, column: 2, scope: !95)
!120 = distinct !DISubprogram(name: "ivector", scope: !1, file: !1, line: 42, type: !121, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !123)
!121 = !DISubroutineType(types: !122)
!122 = !{!71, !11, !11}
!123 = !{!124, !125, !126}
!124 = !DILocalVariable(name: "nl", arg: 1, scope: !120, file: !1, line: 42, type: !11)
!125 = !DILocalVariable(name: "nh", arg: 2, scope: !120, file: !1, line: 42, type: !11)
!126 = !DILocalVariable(name: "v", scope: !120, file: !1, line: 47, type: !71)
!127 = !DILocation(line: 0, scope: !120)
!128 = !DILocation(line: 49, column: 28, scope: !120)
!129 = !DILocation(line: 49, column: 33, scope: !120)
!130 = !DILocation(line: 49, column: 23, scope: !120)
!131 = !DILocation(line: 49, column: 39, scope: !120)
!132 = !DILocation(line: 49, column: 15, scope: !120)
!133 = !DILocation(line: 49, column: 6, scope: !120)
!134 = !DILocation(line: 50, column: 7, scope: !135)
!135 = distinct !DILexicalBlock(scope: !120, file: !1, line: 50, column: 6)
!136 = !DILocation(line: 50, column: 6, scope: !120)
!137 = !DILocation(line: 51, column: 3, scope: !135)
!138 = !DILocation(line: 52, column: 12, scope: !120)
!139 = !DILocation(line: 52, column: 2, scope: !120)
!140 = distinct !DISubprogram(name: "ipvector", scope: !1, file: !1, line: 55, type: !121, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !141)
!141 = !{!142, !143, !144}
!142 = !DILocalVariable(name: "nl", arg: 1, scope: !140, file: !1, line: 55, type: !11)
!143 = !DILocalVariable(name: "nh", arg: 2, scope: !140, file: !1, line: 55, type: !11)
!144 = !DILocalVariable(name: "v", scope: !140, file: !1, line: 60, type: !71)
!145 = !DILocation(line: 0, scope: !140)
!146 = !DILocation(line: 62, column: 28, scope: !140)
!147 = !DILocation(line: 62, column: 33, scope: !140)
!148 = !DILocation(line: 62, column: 23, scope: !140)
!149 = !DILocation(line: 62, column: 39, scope: !140)
!150 = !DILocation(line: 62, column: 15, scope: !140)
!151 = !DILocation(line: 62, column: 6, scope: !140)
!152 = !DILocation(line: 63, column: 7, scope: !153)
!153 = distinct !DILexicalBlock(scope: !140, file: !1, line: 63, column: 6)
!154 = !DILocation(line: 63, column: 6, scope: !140)
!155 = !DILocation(line: 64, column: 3, scope: !153)
!156 = !DILocation(line: 65, column: 12, scope: !140)
!157 = !DILocation(line: 65, column: 2, scope: !140)
!158 = distinct !DISubprogram(name: "matrix", scope: !1, file: !1, line: 69, type: !159, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !161)
!159 = !DISubroutineType(types: !160)
!160 = !{!72, !11, !11, !11, !11}
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169}
!162 = !DILocalVariable(name: "nrl", arg: 1, scope: !158, file: !1, line: 69, type: !11)
!163 = !DILocalVariable(name: "nrh", arg: 2, scope: !158, file: !1, line: 69, type: !11)
!164 = !DILocalVariable(name: "ncl", arg: 3, scope: !158, file: !1, line: 69, type: !11)
!165 = !DILocalVariable(name: "nch", arg: 4, scope: !158, file: !1, line: 69, type: !11)
!166 = !DILocalVariable(name: "i", scope: !158, file: !1, line: 74, type: !11)
!167 = !DILocalVariable(name: "nrow", scope: !158, file: !1, line: 75, type: !11)
!168 = !DILocalVariable(name: "ncol", scope: !158, file: !1, line: 75, type: !11)
!169 = !DILocalVariable(name: "m", scope: !158, file: !1, line: 76, type: !72)
!170 = !DILocation(line: 0, scope: !158)
!171 = !DILocation(line: 78, column: 13, scope: !158)
!172 = !DILocation(line: 78, column: 19, scope: !158)
!173 = !DILocation(line: 79, column: 13, scope: !158)
!174 = !DILocation(line: 79, column: 19, scope: !158)
!175 = !DILocation(line: 81, column: 34, scope: !158)
!176 = !DILocation(line: 81, column: 27, scope: !158)
!177 = !DILocation(line: 81, column: 45, scope: !158)
!178 = !DILocation(line: 81, column: 19, scope: !158)
!179 = !DILocation(line: 81, column: 6, scope: !158)
!180 = !DILocation(line: 82, column: 7, scope: !181)
!181 = distinct !DILexicalBlock(scope: !158, file: !1, line: 82, column: 6)
!182 = !DILocation(line: 82, column: 6, scope: !158)
!183 = !DILocation(line: 83, column: 3, scope: !181)
!184 = !DILocation(line: 84, column: 4, scope: !158)
!185 = !DILocation(line: 85, column: 4, scope: !158)
!186 = !DILocation(line: 88, column: 18, scope: !158)
!187 = !DILocation(line: 88, column: 25, scope: !158)
!188 = !DILocation(line: 88, column: 11, scope: !158)
!189 = !DILocation(line: 88, column: 36, scope: !158)
!190 = !DILocation(line: 88, column: 3, scope: !158)
!191 = !DILocation(line: 87, column: 13, scope: !158)
!192 = !DILocation(line: 87, column: 2, scope: !158)
!193 = !DILocation(line: 87, column: 11, scope: !158)
!194 = !DILocation(line: 89, column: 7, scope: !195)
!195 = distinct !DILexicalBlock(scope: !158, file: !1, line: 89, column: 6)
!196 = !DILocation(line: 89, column: 6, scope: !158)
!197 = !DILocation(line: 90, column: 3, scope: !195)
!198 = !DILocation(line: 91, column: 2, scope: !158)
!199 = !DILocation(line: 91, column: 11, scope: !158)
!200 = !DILocation(line: 92, column: 2, scope: !158)
!201 = !DILocation(line: 92, column: 11, scope: !158)
!202 = !DILocation(line: 94, column: 7, scope: !203)
!203 = distinct !DILexicalBlock(scope: !158, file: !1, line: 94, column: 2)
!204 = !DILocation(line: 94, column: 22, scope: !205)
!205 = distinct !DILexicalBlock(scope: !203, file: !1, line: 94, column: 2)
!206 = !DILocation(line: 94, column: 2, scope: !203)
!207 = !DILocation(line: 95, column: 17, scope: !205)
!208 = !DILocation(line: 95, column: 12, scope: !205)
!209 = !DILocation(line: 95, column: 23, scope: !205)
!210 = !DILocation(line: 95, column: 3, scope: !205)
!211 = !DILocation(line: 95, column: 10, scope: !205)
!212 = !DILocation(line: 94, column: 31, scope: !205)
!213 = distinct !{!213, !206, !214}
!214 = !DILocation(line: 95, column: 25, scope: !203)
!215 = !DILocation(line: 96, column: 2, scope: !158)
!216 = distinct !DISubprogram(name: "imatrix", scope: !1, file: !1, line: 99, type: !217, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!217 = !DISubroutineType(types: !218)
!218 = !{!73, !11, !11, !11, !11}
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227}
!220 = !DILocalVariable(name: "nrl", arg: 1, scope: !216, file: !1, line: 99, type: !11)
!221 = !DILocalVariable(name: "nrh", arg: 2, scope: !216, file: !1, line: 99, type: !11)
!222 = !DILocalVariable(name: "ncl", arg: 3, scope: !216, file: !1, line: 99, type: !11)
!223 = !DILocalVariable(name: "nch", arg: 4, scope: !216, file: !1, line: 99, type: !11)
!224 = !DILocalVariable(name: "i", scope: !216, file: !1, line: 104, type: !11)
!225 = !DILocalVariable(name: "nrow", scope: !216, file: !1, line: 105, type: !11)
!226 = !DILocalVariable(name: "ncol", scope: !216, file: !1, line: 105, type: !11)
!227 = !DILocalVariable(name: "m", scope: !216, file: !1, line: 106, type: !73)
!228 = !DILocation(line: 0, scope: !216)
!229 = !DILocation(line: 108, column: 13, scope: !216)
!230 = !DILocation(line: 108, column: 19, scope: !216)
!231 = !DILocation(line: 109, column: 13, scope: !216)
!232 = !DILocation(line: 109, column: 19, scope: !216)
!233 = !DILocation(line: 111, column: 31, scope: !216)
!234 = !DILocation(line: 111, column: 24, scope: !216)
!235 = !DILocation(line: 111, column: 42, scope: !216)
!236 = !DILocation(line: 111, column: 16, scope: !216)
!237 = !DILocation(line: 111, column: 6, scope: !216)
!238 = !DILocation(line: 112, column: 7, scope: !239)
!239 = distinct !DILexicalBlock(scope: !216, file: !1, line: 112, column: 6)
!240 = !DILocation(line: 112, column: 6, scope: !216)
!241 = !DILocation(line: 113, column: 3, scope: !239)
!242 = !DILocation(line: 114, column: 4, scope: !216)
!243 = !DILocation(line: 115, column: 4, scope: !216)
!244 = !DILocation(line: 118, column: 18, scope: !216)
!245 = !DILocation(line: 118, column: 25, scope: !216)
!246 = !DILocation(line: 118, column: 11, scope: !216)
!247 = !DILocation(line: 118, column: 36, scope: !216)
!248 = !DILocation(line: 118, column: 3, scope: !216)
!249 = !DILocation(line: 117, column: 13, scope: !216)
!250 = !DILocation(line: 117, column: 2, scope: !216)
!251 = !DILocation(line: 117, column: 11, scope: !216)
!252 = !DILocation(line: 119, column: 7, scope: !253)
!253 = distinct !DILexicalBlock(scope: !216, file: !1, line: 119, column: 6)
!254 = !DILocation(line: 119, column: 6, scope: !216)
!255 = !DILocation(line: 120, column: 3, scope: !253)
!256 = !DILocation(line: 121, column: 2, scope: !216)
!257 = !DILocation(line: 121, column: 11, scope: !216)
!258 = !DILocation(line: 122, column: 2, scope: !216)
!259 = !DILocation(line: 122, column: 11, scope: !216)
!260 = !DILocation(line: 124, column: 7, scope: !261)
!261 = distinct !DILexicalBlock(scope: !216, file: !1, line: 124, column: 2)
!262 = !DILocation(line: 124, column: 22, scope: !263)
!263 = distinct !DILexicalBlock(scope: !261, file: !1, line: 124, column: 2)
!264 = !DILocation(line: 124, column: 2, scope: !261)
!265 = !DILocation(line: 125, column: 17, scope: !263)
!266 = !DILocation(line: 125, column: 12, scope: !263)
!267 = !DILocation(line: 125, column: 23, scope: !263)
!268 = !DILocation(line: 125, column: 3, scope: !263)
!269 = !DILocation(line: 125, column: 10, scope: !263)
!270 = !DILocation(line: 124, column: 31, scope: !263)
!271 = distinct !{!271, !264, !272}
!272 = !DILocation(line: 125, column: 25, scope: !261)
!273 = !DILocation(line: 126, column: 2, scope: !216)
!274 = distinct !DISubprogram(name: "free_vector", scope: !1, file: !1, line: 129, type: !275, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !277)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !4, !63, !63}
!277 = !{!278, !279, !280}
!278 = !DILocalVariable(name: "v", arg: 1, scope: !274, file: !1, line: 129, type: !4)
!279 = !DILocalVariable(name: "nl", arg: 2, scope: !274, file: !1, line: 129, type: !63)
!280 = !DILocalVariable(name: "nh", arg: 3, scope: !274, file: !1, line: 129, type: !63)
!281 = !DILocation(line: 0, scope: !274)
!282 = !DILocation(line: 132, column: 22, scope: !274)
!283 = !DILocation(line: 132, column: 8, scope: !274)
!284 = !DILocation(line: 132, column: 2, scope: !274)
!285 = !DILocation(line: 133, column: 1, scope: !274)
!286 = distinct !DISubprogram(name: "free_ivector", scope: !1, file: !1, line: 135, type: !287, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !289)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !71, !11, !11}
!289 = !{!290, !291, !292}
!290 = !DILocalVariable(name: "v", arg: 1, scope: !286, file: !1, line: 135, type: !71)
!291 = !DILocalVariable(name: "nl", arg: 2, scope: !286, file: !1, line: 135, type: !11)
!292 = !DILocalVariable(name: "nh", arg: 3, scope: !286, file: !1, line: 135, type: !11)
!293 = !DILocation(line: 0, scope: !286)
!294 = !DILocation(line: 142, column: 22, scope: !286)
!295 = !DILocation(line: 142, column: 8, scope: !286)
!296 = !DILocation(line: 142, column: 2, scope: !286)
!297 = !DILocation(line: 143, column: 1, scope: !286)
!298 = distinct !DISubprogram(name: "free_matrix", scope: !1, file: !1, line: 145, type: !299, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !72, !11, !11, !11, !11}
!301 = !{!302, !303, !304, !305, !306}
!302 = !DILocalVariable(name: "m", arg: 1, scope: !298, file: !1, line: 145, type: !72)
!303 = !DILocalVariable(name: "nrl", arg: 2, scope: !298, file: !1, line: 145, type: !11)
!304 = !DILocalVariable(name: "nrh", arg: 3, scope: !298, file: !1, line: 145, type: !11)
!305 = !DILocalVariable(name: "ncl", arg: 4, scope: !298, file: !1, line: 145, type: !11)
!306 = !DILocalVariable(name: "nch", arg: 5, scope: !298, file: !1, line: 145, type: !11)
!307 = !DILocation(line: 0, scope: !298)
!308 = !DILocation(line: 151, column: 20, scope: !298)
!309 = !DILocation(line: 151, column: 29, scope: !298)
!310 = !DILocation(line: 151, column: 35, scope: !298)
!311 = !DILocation(line: 151, column: 8, scope: !298)
!312 = !DILocation(line: 151, column: 2, scope: !298)
!313 = !DILocation(line: 152, column: 22, scope: !298)
!314 = !DILocation(line: 152, column: 28, scope: !298)
!315 = !DILocation(line: 152, column: 8, scope: !298)
!316 = !DILocation(line: 152, column: 2, scope: !298)
!317 = !DILocation(line: 153, column: 1, scope: !298)
!318 = distinct !DISubprogram(name: "free_imatrix", scope: !1, file: !1, line: 155, type: !319, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !73, !11, !11, !11, !11}
!321 = !{!322, !323, !324, !325, !326}
!322 = !DILocalVariable(name: "m", arg: 1, scope: !318, file: !1, line: 155, type: !73)
!323 = !DILocalVariable(name: "nrl", arg: 2, scope: !318, file: !1, line: 155, type: !11)
!324 = !DILocalVariable(name: "nrh", arg: 3, scope: !318, file: !1, line: 155, type: !11)
!325 = !DILocalVariable(name: "ncl", arg: 4, scope: !318, file: !1, line: 155, type: !11)
!326 = !DILocalVariable(name: "nch", arg: 5, scope: !318, file: !1, line: 155, type: !11)
!327 = !DILocation(line: 0, scope: !318)
!328 = !DILocation(line: 161, column: 20, scope: !318)
!329 = !DILocation(line: 161, column: 29, scope: !318)
!330 = !DILocation(line: 161, column: 35, scope: !318)
!331 = !DILocation(line: 161, column: 8, scope: !318)
!332 = !DILocation(line: 161, column: 2, scope: !318)
!333 = !DILocation(line: 162, column: 22, scope: !318)
!334 = !DILocation(line: 162, column: 28, scope: !318)
!335 = !DILocation(line: 162, column: 8, scope: !318)
!336 = !DILocation(line: 162, column: 2, scope: !318)
!337 = !DILocation(line: 163, column: 1, scope: !318)
