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
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %0) #6, !dbg !93
  call void @exit(i32 1) #7, !dbg !94
  unreachable, !dbg !94
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: nounwind uwtable
define dso_local double* @vector(i64 %0, i64 %1) #0 !dbg !95 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !99, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 %1, metadata !100, metadata !DIExpression()), !dbg !102
  %3 = sub i64 %1, %0, !dbg !103
  %4 = shl i64 %3, 3, !dbg !104
  %5 = add i64 %4, 8, !dbg !104
  %6 = call noalias i8* @malloc(i64 %5) #8, !dbg !105
  call void @llvm.dbg.value(metadata i8* %6, metadata !101, metadata !DIExpression()), !dbg !102
  %.not = icmp eq i8* %6, null, !dbg !106
  br i1 %.not, label %7, label %12, !dbg !108

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @nabout, align 8, !dbg !109, !tbaa !89
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %1) #8, !dbg !111
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @nabout, align 8, !dbg !112, !tbaa !89
  %11 = call i32 @fflush(%struct._IO_FILE* %10) #8, !dbg !113
  call void @nrerror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)), !dbg !114
  br label %12, !dbg !115

12:                                               ; preds = %7, %2
  %13 = bitcast i8* %6 to double*, !dbg !116
  call void @llvm.dbg.value(metadata double* %13, metadata !101, metadata !DIExpression()), !dbg !102
  %14 = sub i64 0, %0, !dbg !117
  %15 = getelementptr inbounds double, double* %13, i64 %14, !dbg !117
  ret double* %15, !dbg !118
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

declare !dbg !7 dso_local i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local i32* @ivector(i32 %0, i32 %1) #0 !dbg !119 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !123, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %1, metadata !124, metadata !DIExpression()), !dbg !126
  %3 = sub nsw i32 %1, %0, !dbg !127
  %4 = add nsw i32 %3, 1, !dbg !128
  %5 = sext i32 %4 to i64, !dbg !129
  %6 = shl nsw i64 %5, 2, !dbg !130
  %7 = call noalias i8* @malloc(i64 %6) #8, !dbg !131
  call void @llvm.dbg.value(metadata i8* %7, metadata !125, metadata !DIExpression()), !dbg !126
  %.not = icmp eq i8* %7, null, !dbg !132
  br i1 %.not, label %8, label %9, !dbg !134

8:                                                ; preds = %2
  call void @nrerror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !135
  br label %9, !dbg !135

9:                                                ; preds = %8, %2
  %10 = bitcast i8* %7 to i32*, !dbg !136
  call void @llvm.dbg.value(metadata i32* %10, metadata !125, metadata !DIExpression()), !dbg !126
  %11 = sext i32 %0 to i64, !dbg !137
  %12 = sub nsw i64 0, %11, !dbg !137
  %13 = getelementptr inbounds i32, i32* %10, i64 %12, !dbg !137
  ret i32* %13, !dbg !138
}

; Function Attrs: nounwind uwtable
define dso_local i32* @ipvector(i32 %0, i32 %1) #0 !dbg !139 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !141, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i32 %1, metadata !142, metadata !DIExpression()), !dbg !144
  %3 = sub nsw i32 %1, %0, !dbg !145
  %4 = add nsw i32 %3, 1, !dbg !146
  %5 = sext i32 %4 to i64, !dbg !147
  %6 = shl nsw i64 %5, 3, !dbg !148
  %7 = call noalias i8* @malloc(i64 %6) #8, !dbg !149
  call void @llvm.dbg.value(metadata i8* %7, metadata !143, metadata !DIExpression()), !dbg !144
  %.not = icmp eq i8* %7, null, !dbg !150
  br i1 %.not, label %8, label %9, !dbg !152

8:                                                ; preds = %2
  call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0)), !dbg !153
  br label %9, !dbg !153

9:                                                ; preds = %8, %2
  %10 = bitcast i8* %7 to i32*, !dbg !154
  call void @llvm.dbg.value(metadata i32* %10, metadata !143, metadata !DIExpression()), !dbg !144
  %11 = sext i32 %0 to i64, !dbg !155
  %12 = sub nsw i64 0, %11, !dbg !155
  %13 = getelementptr inbounds i32, i32* %10, i64 %12, !dbg !155
  ret i32* %13, !dbg !156
}

; Function Attrs: nounwind uwtable
define dso_local double** @matrix(i32 %0, i32 %1, i32 %2, i32 %3) #0 !dbg !157 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !161, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i32 %1, metadata !162, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i32 %2, metadata !163, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i32 %3, metadata !164, metadata !DIExpression()), !dbg !169
  %5 = sub nsw i32 %1, %0, !dbg !170
  %6 = add nsw i32 %5, 1, !dbg !171
  call void @llvm.dbg.value(metadata i32 %6, metadata !166, metadata !DIExpression()), !dbg !169
  %7 = sub nsw i32 %3, %2, !dbg !172
  %8 = add nsw i32 %7, 1, !dbg !173
  call void @llvm.dbg.value(metadata i32 %8, metadata !167, metadata !DIExpression()), !dbg !169
  %9 = add nsw i32 %5, 2, !dbg !174
  %10 = sext i32 %9 to i64, !dbg !175
  %11 = shl nsw i64 %10, 3, !dbg !176
  %12 = call noalias i8* @malloc(i64 %11) #8, !dbg !177
  %13 = bitcast i8* %12 to double**, !dbg !178
  call void @llvm.dbg.value(metadata double** %13, metadata !168, metadata !DIExpression()), !dbg !169
  %.not = icmp eq i8* %12, null, !dbg !179
  br i1 %.not, label %14, label %15, !dbg !181

14:                                               ; preds = %4
  call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)), !dbg !182
  br label %15, !dbg !182

15:                                               ; preds = %14, %4
  %16 = getelementptr inbounds double*, double** %13, i64 1, !dbg !183
  call void @llvm.dbg.value(metadata double** %16, metadata !168, metadata !DIExpression()), !dbg !169
  %17 = sext i32 %0 to i64, !dbg !184
  %18 = sub nsw i64 0, %17, !dbg !184
  %19 = getelementptr inbounds double*, double** %16, i64 %18, !dbg !184
  call void @llvm.dbg.value(metadata double** %19, metadata !168, metadata !DIExpression()), !dbg !169
  %20 = mul nsw i32 %6, %8, !dbg !185
  %21 = add nsw i32 %20, 1, !dbg !186
  %22 = sext i32 %21 to i64, !dbg !187
  %23 = shl nsw i64 %22, 3, !dbg !188
  %24 = call noalias i8* @malloc(i64 %23) #8, !dbg !189
  %25 = sext i32 %0 to i64, !dbg !190
  %26 = getelementptr inbounds double*, double** %19, i64 %25, !dbg !190
  %27 = bitcast double** %26 to i8**, !dbg !191
  store i8* %24, i8** %27, align 8, !dbg !191, !tbaa !89
  %28 = sext i32 %0 to i64, !dbg !192
  %29 = getelementptr inbounds double*, double** %19, i64 %28, !dbg !192
  %30 = load double*, double** %29, align 8, !dbg !192, !tbaa !89
  %.not3 = icmp eq double* %30, null, !dbg !192
  br i1 %.not3, label %31, label %32, !dbg !194

31:                                               ; preds = %15
  call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0)), !dbg !195
  br label %32, !dbg !195

32:                                               ; preds = %31, %15
  %33 = sext i32 %0 to i64, !dbg !196
  %34 = getelementptr inbounds double*, double** %19, i64 %33, !dbg !196
  %35 = load double*, double** %34, align 8, !dbg !197, !tbaa !89
  %36 = getelementptr inbounds double, double* %35, i64 1, !dbg !197
  store double* %36, double** %34, align 8, !dbg !197, !tbaa !89
  %37 = sext i32 %0 to i64, !dbg !198
  %38 = getelementptr inbounds double*, double** %19, i64 %37, !dbg !198
  %39 = load double*, double** %38, align 8, !dbg !199, !tbaa !89
  %40 = sext i32 %2 to i64, !dbg !199
  %41 = sub nsw i64 0, %40, !dbg !199
  %42 = getelementptr inbounds double, double* %39, i64 %41, !dbg !199
  store double* %42, double** %38, align 8, !dbg !199, !tbaa !89
  %43 = add i32 %0, 1, !dbg !200
  call void @llvm.dbg.value(metadata i32 %43, metadata !165, metadata !DIExpression()), !dbg !169
  %44 = sext i32 %43 to i64, !dbg !202
  %45 = sext i32 %1 to i64, !dbg !202
  call void @llvm.dbg.value(metadata i64 %44, metadata !165, metadata !DIExpression()), !dbg !169
  %.not4 = icmp sgt i32 %43, %1, !dbg !203
  br i1 %.not4, label %._crit_edge, label %.lr.ph, !dbg !205

.lr.ph:                                           ; preds = %32, %.lr.ph
  %indvars.iv2 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %44, %32 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !165, metadata !DIExpression()), !dbg !169
  %46 = add nsw i64 %indvars.iv2, -1, !dbg !206
  %47 = getelementptr inbounds double*, double** %19, i64 %46, !dbg !207
  %48 = load double*, double** %47, align 8, !dbg !207, !tbaa !89
  %49 = sext i32 %8 to i64, !dbg !208
  %50 = getelementptr inbounds double, double* %48, i64 %49, !dbg !208
  %51 = getelementptr inbounds double*, double** %19, i64 %indvars.iv2, !dbg !209
  store double* %50, double** %51, align 8, !dbg !210, !tbaa !89
  %indvars.iv.next = add i64 %indvars.iv2, 1, !dbg !211
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !165, metadata !DIExpression()), !dbg !169
  %.not5 = icmp sgt i64 %indvars.iv.next, %45, !dbg !203
  br i1 %.not5, label %._crit_edge, label %.lr.ph, !dbg !205, !llvm.loop !212

._crit_edge:                                      ; preds = %.lr.ph, %32
  ret double** %19, !dbg !214
}

; Function Attrs: nounwind uwtable
define dso_local i32** @imatrix(i32 %0, i32 %1, i32 %2, i32 %3) #0 !dbg !215 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !219, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i32 %1, metadata !220, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i32 %2, metadata !221, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i32 %3, metadata !222, metadata !DIExpression()), !dbg !227
  %5 = sub nsw i32 %1, %0, !dbg !228
  %6 = add nsw i32 %5, 1, !dbg !229
  call void @llvm.dbg.value(metadata i32 %6, metadata !224, metadata !DIExpression()), !dbg !227
  %7 = sub nsw i32 %3, %2, !dbg !230
  %8 = add nsw i32 %7, 1, !dbg !231
  call void @llvm.dbg.value(metadata i32 %8, metadata !225, metadata !DIExpression()), !dbg !227
  %9 = add nsw i32 %5, 2, !dbg !232
  %10 = sext i32 %9 to i64, !dbg !233
  %11 = shl nsw i64 %10, 3, !dbg !234
  %12 = call noalias i8* @malloc(i64 %11) #8, !dbg !235
  %13 = bitcast i8* %12 to i32**, !dbg !236
  call void @llvm.dbg.value(metadata i32** %13, metadata !226, metadata !DIExpression()), !dbg !227
  %.not = icmp eq i8* %12, null, !dbg !237
  br i1 %.not, label %14, label %15, !dbg !239

14:                                               ; preds = %4
  call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)), !dbg !240
  br label %15, !dbg !240

15:                                               ; preds = %14, %4
  %16 = getelementptr inbounds i32*, i32** %13, i64 1, !dbg !241
  call void @llvm.dbg.value(metadata i32** %16, metadata !226, metadata !DIExpression()), !dbg !227
  %17 = sext i32 %0 to i64, !dbg !242
  %18 = sub nsw i64 0, %17, !dbg !242
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18, !dbg !242
  call void @llvm.dbg.value(metadata i32** %19, metadata !226, metadata !DIExpression()), !dbg !227
  %20 = mul nsw i32 %6, %8, !dbg !243
  %21 = add nsw i32 %20, 1, !dbg !244
  %22 = sext i32 %21 to i64, !dbg !245
  %23 = shl nsw i64 %22, 2, !dbg !246
  %24 = call noalias i8* @malloc(i64 %23) #8, !dbg !247
  %25 = sext i32 %0 to i64, !dbg !248
  %26 = getelementptr inbounds i32*, i32** %19, i64 %25, !dbg !248
  %27 = bitcast i32** %26 to i8**, !dbg !249
  store i8* %24, i8** %27, align 8, !dbg !249, !tbaa !89
  %28 = sext i32 %0 to i64, !dbg !250
  %29 = getelementptr inbounds i32*, i32** %19, i64 %28, !dbg !250
  %30 = load i32*, i32** %29, align 8, !dbg !250, !tbaa !89
  %.not3 = icmp eq i32* %30, null, !dbg !250
  br i1 %.not3, label %31, label %32, !dbg !252

31:                                               ; preds = %15
  call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0)), !dbg !253
  br label %32, !dbg !253

32:                                               ; preds = %31, %15
  %33 = sext i32 %0 to i64, !dbg !254
  %34 = getelementptr inbounds i32*, i32** %19, i64 %33, !dbg !254
  %35 = load i32*, i32** %34, align 8, !dbg !255, !tbaa !89
  %36 = getelementptr inbounds i32, i32* %35, i64 1, !dbg !255
  store i32* %36, i32** %34, align 8, !dbg !255, !tbaa !89
  %37 = sext i32 %0 to i64, !dbg !256
  %38 = getelementptr inbounds i32*, i32** %19, i64 %37, !dbg !256
  %39 = load i32*, i32** %38, align 8, !dbg !257, !tbaa !89
  %40 = sext i32 %2 to i64, !dbg !257
  %41 = sub nsw i64 0, %40, !dbg !257
  %42 = getelementptr inbounds i32, i32* %39, i64 %41, !dbg !257
  store i32* %42, i32** %38, align 8, !dbg !257, !tbaa !89
  %43 = add i32 %0, 1, !dbg !258
  call void @llvm.dbg.value(metadata i32 %43, metadata !223, metadata !DIExpression()), !dbg !227
  %44 = sext i32 %43 to i64, !dbg !260
  %45 = sext i32 %1 to i64, !dbg !260
  call void @llvm.dbg.value(metadata i64 %44, metadata !223, metadata !DIExpression()), !dbg !227
  %.not4 = icmp sgt i32 %43, %1, !dbg !261
  br i1 %.not4, label %._crit_edge, label %.lr.ph, !dbg !263

.lr.ph:                                           ; preds = %32, %.lr.ph
  %indvars.iv2 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %44, %32 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !223, metadata !DIExpression()), !dbg !227
  %46 = add nsw i64 %indvars.iv2, -1, !dbg !264
  %47 = getelementptr inbounds i32*, i32** %19, i64 %46, !dbg !265
  %48 = load i32*, i32** %47, align 8, !dbg !265, !tbaa !89
  %49 = sext i32 %8 to i64, !dbg !266
  %50 = getelementptr inbounds i32, i32* %48, i64 %49, !dbg !266
  %51 = getelementptr inbounds i32*, i32** %19, i64 %indvars.iv2, !dbg !267
  store i32* %50, i32** %51, align 8, !dbg !268, !tbaa !89
  %indvars.iv.next = add i64 %indvars.iv2, 1, !dbg !269
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !223, metadata !DIExpression()), !dbg !227
  %.not5 = icmp sgt i64 %indvars.iv.next, %45, !dbg !261
  br i1 %.not5, label %._crit_edge, label %.lr.ph, !dbg !263, !llvm.loop !270

._crit_edge:                                      ; preds = %.lr.ph, %32
  ret i32** %19, !dbg !272
}

; Function Attrs: nounwind uwtable
define dso_local void @free_vector(double* %0, i64 %1, i64 %2) #0 !dbg !273 {
  call void @llvm.dbg.value(metadata double* %0, metadata !277, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i64 %1, metadata !278, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i64 %2, metadata !279, metadata !DIExpression()), !dbg !280
  %4 = getelementptr inbounds double, double* %0, i64 %1, !dbg !281
  %5 = bitcast double* %4 to i8*, !dbg !282
  call void @free(i8* %5) #8, !dbg !283
  ret void, !dbg !284
}

; Function Attrs: nounwind
declare !dbg !74 dso_local void @free(i8*) #5

; Function Attrs: nounwind uwtable
define dso_local void @free_ivector(i32* %0, i32 %1, i32 %2) #0 !dbg !285 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !289, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 %1, metadata !290, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 %2, metadata !291, metadata !DIExpression()), !dbg !292
  %4 = sext i32 %1 to i64, !dbg !293
  %5 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !293
  %6 = bitcast i32* %5 to i8*, !dbg !294
  call void @free(i8* %6) #8, !dbg !295
  ret void, !dbg !296
}

; Function Attrs: nounwind uwtable
define dso_local void @free_matrix(double** %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 !dbg !297 {
  call void @llvm.dbg.value(metadata double** %0, metadata !301, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i32 %1, metadata !302, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i32 %2, metadata !303, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i32 %3, metadata !304, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.value(metadata i32 %4, metadata !305, metadata !DIExpression()), !dbg !306
  %6 = sext i32 %1 to i64, !dbg !307
  %7 = getelementptr inbounds double*, double** %0, i64 %6, !dbg !307
  %8 = load double*, double** %7, align 8, !dbg !307, !tbaa !89
  %9 = sext i32 %3 to i64, !dbg !308
  %10 = getelementptr inbounds double, double* %8, i64 %9, !dbg !308
  %11 = getelementptr inbounds double, double* %10, i64 -1, !dbg !309
  %12 = bitcast double* %11 to i8*, !dbg !310
  call void @free(i8* %12) #8, !dbg !311
  %13 = sext i32 %1 to i64, !dbg !312
  %14 = getelementptr inbounds double*, double** %0, i64 %13, !dbg !312
  %15 = getelementptr inbounds double*, double** %14, i64 -1, !dbg !313
  %16 = bitcast double** %15 to i8*, !dbg !314
  call void @free(i8* %16) #8, !dbg !315
  ret void, !dbg !316
}

; Function Attrs: nounwind uwtable
define dso_local void @free_imatrix(i32** %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 !dbg !317 {
  call void @llvm.dbg.value(metadata i32** %0, metadata !321, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i32 %1, metadata !322, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i32 %2, metadata !323, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i32 %3, metadata !324, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i32 %4, metadata !325, metadata !DIExpression()), !dbg !326
  %6 = sext i32 %1 to i64, !dbg !327
  %7 = getelementptr inbounds i32*, i32** %0, i64 %6, !dbg !327
  %8 = load i32*, i32** %7, align 8, !dbg !327, !tbaa !89
  %9 = sext i32 %3 to i64, !dbg !328
  %10 = getelementptr inbounds i32, i32* %8, i64 %9, !dbg !328
  %11 = getelementptr inbounds i32, i32* %10, i64 -1, !dbg !329
  %12 = bitcast i32* %11 to i8*, !dbg !330
  call void @free(i8* %12) #8, !dbg !331
  %13 = sext i32 %1 to i64, !dbg !332
  %14 = getelementptr inbounds i32*, i32** %0, i64 %13, !dbg !332
  %15 = getelementptr inbounds i32*, i32** %14, i64 -1, !dbg !333
  %16 = bitcast i32** %15 to i8*, !dbg !334
  call void @free(i8* %16) #8, !dbg !335
  ret void, !dbg !336
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { cold nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

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
!104 = !DILocation(line: 29, column: 42, scope: !95)
!105 = !DILocation(line: 29, column: 18, scope: !95)
!106 = !DILocation(line: 30, column: 7, scope: !107)
!107 = distinct !DILexicalBlock(scope: !95, file: !1, line: 30, column: 6)
!108 = !DILocation(line: 30, column: 6, scope: !95)
!109 = !DILocation(line: 31, column: 19, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !1, line: 30, column: 11)
!111 = !DILocation(line: 31, column: 10, scope: !110)
!112 = !DILocation(line: 32, column: 10, scope: !110)
!113 = !DILocation(line: 32, column: 3, scope: !110)
!114 = !DILocation(line: 33, column: 3, scope: !110)
!115 = !DILocation(line: 34, column: 2, scope: !110)
!116 = !DILocation(line: 29, column: 6, scope: !95)
!117 = !DILocation(line: 39, column: 12, scope: !95)
!118 = !DILocation(line: 39, column: 2, scope: !95)
!119 = distinct !DISubprogram(name: "ivector", scope: !1, file: !1, line: 42, type: !120, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{!71, !11, !11}
!122 = !{!123, !124, !125}
!123 = !DILocalVariable(name: "nl", arg: 1, scope: !119, file: !1, line: 42, type: !11)
!124 = !DILocalVariable(name: "nh", arg: 2, scope: !119, file: !1, line: 42, type: !11)
!125 = !DILocalVariable(name: "v", scope: !119, file: !1, line: 47, type: !71)
!126 = !DILocation(line: 0, scope: !119)
!127 = !DILocation(line: 49, column: 28, scope: !119)
!128 = !DILocation(line: 49, column: 33, scope: !119)
!129 = !DILocation(line: 49, column: 23, scope: !119)
!130 = !DILocation(line: 49, column: 39, scope: !119)
!131 = !DILocation(line: 49, column: 15, scope: !119)
!132 = !DILocation(line: 50, column: 7, scope: !133)
!133 = distinct !DILexicalBlock(scope: !119, file: !1, line: 50, column: 6)
!134 = !DILocation(line: 50, column: 6, scope: !119)
!135 = !DILocation(line: 51, column: 3, scope: !133)
!136 = !DILocation(line: 49, column: 6, scope: !119)
!137 = !DILocation(line: 52, column: 12, scope: !119)
!138 = !DILocation(line: 52, column: 2, scope: !119)
!139 = distinct !DISubprogram(name: "ipvector", scope: !1, file: !1, line: 55, type: !120, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !140)
!140 = !{!141, !142, !143}
!141 = !DILocalVariable(name: "nl", arg: 1, scope: !139, file: !1, line: 55, type: !11)
!142 = !DILocalVariable(name: "nh", arg: 2, scope: !139, file: !1, line: 55, type: !11)
!143 = !DILocalVariable(name: "v", scope: !139, file: !1, line: 60, type: !71)
!144 = !DILocation(line: 0, scope: !139)
!145 = !DILocation(line: 62, column: 28, scope: !139)
!146 = !DILocation(line: 62, column: 33, scope: !139)
!147 = !DILocation(line: 62, column: 23, scope: !139)
!148 = !DILocation(line: 62, column: 39, scope: !139)
!149 = !DILocation(line: 62, column: 15, scope: !139)
!150 = !DILocation(line: 63, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !139, file: !1, line: 63, column: 6)
!152 = !DILocation(line: 63, column: 6, scope: !139)
!153 = !DILocation(line: 64, column: 3, scope: !151)
!154 = !DILocation(line: 62, column: 6, scope: !139)
!155 = !DILocation(line: 65, column: 12, scope: !139)
!156 = !DILocation(line: 65, column: 2, scope: !139)
!157 = distinct !DISubprogram(name: "matrix", scope: !1, file: !1, line: 69, type: !158, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{!72, !11, !11, !11, !11}
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168}
!161 = !DILocalVariable(name: "nrl", arg: 1, scope: !157, file: !1, line: 69, type: !11)
!162 = !DILocalVariable(name: "nrh", arg: 2, scope: !157, file: !1, line: 69, type: !11)
!163 = !DILocalVariable(name: "ncl", arg: 3, scope: !157, file: !1, line: 69, type: !11)
!164 = !DILocalVariable(name: "nch", arg: 4, scope: !157, file: !1, line: 69, type: !11)
!165 = !DILocalVariable(name: "i", scope: !157, file: !1, line: 74, type: !11)
!166 = !DILocalVariable(name: "nrow", scope: !157, file: !1, line: 75, type: !11)
!167 = !DILocalVariable(name: "ncol", scope: !157, file: !1, line: 75, type: !11)
!168 = !DILocalVariable(name: "m", scope: !157, file: !1, line: 76, type: !72)
!169 = !DILocation(line: 0, scope: !157)
!170 = !DILocation(line: 78, column: 13, scope: !157)
!171 = !DILocation(line: 78, column: 19, scope: !157)
!172 = !DILocation(line: 79, column: 13, scope: !157)
!173 = !DILocation(line: 79, column: 19, scope: !157)
!174 = !DILocation(line: 81, column: 34, scope: !157)
!175 = !DILocation(line: 81, column: 27, scope: !157)
!176 = !DILocation(line: 81, column: 45, scope: !157)
!177 = !DILocation(line: 81, column: 19, scope: !157)
!178 = !DILocation(line: 81, column: 6, scope: !157)
!179 = !DILocation(line: 82, column: 7, scope: !180)
!180 = distinct !DILexicalBlock(scope: !157, file: !1, line: 82, column: 6)
!181 = !DILocation(line: 82, column: 6, scope: !157)
!182 = !DILocation(line: 83, column: 3, scope: !180)
!183 = !DILocation(line: 84, column: 4, scope: !157)
!184 = !DILocation(line: 85, column: 4, scope: !157)
!185 = !DILocation(line: 88, column: 18, scope: !157)
!186 = !DILocation(line: 88, column: 25, scope: !157)
!187 = !DILocation(line: 88, column: 11, scope: !157)
!188 = !DILocation(line: 88, column: 36, scope: !157)
!189 = !DILocation(line: 88, column: 3, scope: !157)
!190 = !DILocation(line: 87, column: 2, scope: !157)
!191 = !DILocation(line: 87, column: 11, scope: !157)
!192 = !DILocation(line: 89, column: 7, scope: !193)
!193 = distinct !DILexicalBlock(scope: !157, file: !1, line: 89, column: 6)
!194 = !DILocation(line: 89, column: 6, scope: !157)
!195 = !DILocation(line: 90, column: 3, scope: !193)
!196 = !DILocation(line: 91, column: 2, scope: !157)
!197 = !DILocation(line: 91, column: 11, scope: !157)
!198 = !DILocation(line: 92, column: 2, scope: !157)
!199 = !DILocation(line: 92, column: 11, scope: !157)
!200 = !DILocation(line: 94, column: 15, scope: !201)
!201 = distinct !DILexicalBlock(scope: !157, file: !1, line: 94, column: 2)
!202 = !DILocation(line: 94, column: 7, scope: !201)
!203 = !DILocation(line: 94, column: 22, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !1, line: 94, column: 2)
!205 = !DILocation(line: 94, column: 2, scope: !201)
!206 = !DILocation(line: 95, column: 17, scope: !204)
!207 = !DILocation(line: 95, column: 12, scope: !204)
!208 = !DILocation(line: 95, column: 23, scope: !204)
!209 = !DILocation(line: 95, column: 3, scope: !204)
!210 = !DILocation(line: 95, column: 10, scope: !204)
!211 = !DILocation(line: 94, column: 31, scope: !204)
!212 = distinct !{!212, !205, !213}
!213 = !DILocation(line: 95, column: 25, scope: !201)
!214 = !DILocation(line: 96, column: 2, scope: !157)
!215 = distinct !DISubprogram(name: "imatrix", scope: !1, file: !1, line: 99, type: !216, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{!73, !11, !11, !11, !11}
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226}
!219 = !DILocalVariable(name: "nrl", arg: 1, scope: !215, file: !1, line: 99, type: !11)
!220 = !DILocalVariable(name: "nrh", arg: 2, scope: !215, file: !1, line: 99, type: !11)
!221 = !DILocalVariable(name: "ncl", arg: 3, scope: !215, file: !1, line: 99, type: !11)
!222 = !DILocalVariable(name: "nch", arg: 4, scope: !215, file: !1, line: 99, type: !11)
!223 = !DILocalVariable(name: "i", scope: !215, file: !1, line: 104, type: !11)
!224 = !DILocalVariable(name: "nrow", scope: !215, file: !1, line: 105, type: !11)
!225 = !DILocalVariable(name: "ncol", scope: !215, file: !1, line: 105, type: !11)
!226 = !DILocalVariable(name: "m", scope: !215, file: !1, line: 106, type: !73)
!227 = !DILocation(line: 0, scope: !215)
!228 = !DILocation(line: 108, column: 13, scope: !215)
!229 = !DILocation(line: 108, column: 19, scope: !215)
!230 = !DILocation(line: 109, column: 13, scope: !215)
!231 = !DILocation(line: 109, column: 19, scope: !215)
!232 = !DILocation(line: 111, column: 31, scope: !215)
!233 = !DILocation(line: 111, column: 24, scope: !215)
!234 = !DILocation(line: 111, column: 42, scope: !215)
!235 = !DILocation(line: 111, column: 16, scope: !215)
!236 = !DILocation(line: 111, column: 6, scope: !215)
!237 = !DILocation(line: 112, column: 7, scope: !238)
!238 = distinct !DILexicalBlock(scope: !215, file: !1, line: 112, column: 6)
!239 = !DILocation(line: 112, column: 6, scope: !215)
!240 = !DILocation(line: 113, column: 3, scope: !238)
!241 = !DILocation(line: 114, column: 4, scope: !215)
!242 = !DILocation(line: 115, column: 4, scope: !215)
!243 = !DILocation(line: 118, column: 18, scope: !215)
!244 = !DILocation(line: 118, column: 25, scope: !215)
!245 = !DILocation(line: 118, column: 11, scope: !215)
!246 = !DILocation(line: 118, column: 36, scope: !215)
!247 = !DILocation(line: 118, column: 3, scope: !215)
!248 = !DILocation(line: 117, column: 2, scope: !215)
!249 = !DILocation(line: 117, column: 11, scope: !215)
!250 = !DILocation(line: 119, column: 7, scope: !251)
!251 = distinct !DILexicalBlock(scope: !215, file: !1, line: 119, column: 6)
!252 = !DILocation(line: 119, column: 6, scope: !215)
!253 = !DILocation(line: 120, column: 3, scope: !251)
!254 = !DILocation(line: 121, column: 2, scope: !215)
!255 = !DILocation(line: 121, column: 11, scope: !215)
!256 = !DILocation(line: 122, column: 2, scope: !215)
!257 = !DILocation(line: 122, column: 11, scope: !215)
!258 = !DILocation(line: 124, column: 15, scope: !259)
!259 = distinct !DILexicalBlock(scope: !215, file: !1, line: 124, column: 2)
!260 = !DILocation(line: 124, column: 7, scope: !259)
!261 = !DILocation(line: 124, column: 22, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !1, line: 124, column: 2)
!263 = !DILocation(line: 124, column: 2, scope: !259)
!264 = !DILocation(line: 125, column: 17, scope: !262)
!265 = !DILocation(line: 125, column: 12, scope: !262)
!266 = !DILocation(line: 125, column: 23, scope: !262)
!267 = !DILocation(line: 125, column: 3, scope: !262)
!268 = !DILocation(line: 125, column: 10, scope: !262)
!269 = !DILocation(line: 124, column: 31, scope: !262)
!270 = distinct !{!270, !263, !271}
!271 = !DILocation(line: 125, column: 25, scope: !259)
!272 = !DILocation(line: 126, column: 2, scope: !215)
!273 = distinct !DISubprogram(name: "free_vector", scope: !1, file: !1, line: 129, type: !274, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !276)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !4, !63, !63}
!276 = !{!277, !278, !279}
!277 = !DILocalVariable(name: "v", arg: 1, scope: !273, file: !1, line: 129, type: !4)
!278 = !DILocalVariable(name: "nl", arg: 2, scope: !273, file: !1, line: 129, type: !63)
!279 = !DILocalVariable(name: "nh", arg: 3, scope: !273, file: !1, line: 129, type: !63)
!280 = !DILocation(line: 0, scope: !273)
!281 = !DILocation(line: 132, column: 22, scope: !273)
!282 = !DILocation(line: 132, column: 8, scope: !273)
!283 = !DILocation(line: 132, column: 2, scope: !273)
!284 = !DILocation(line: 133, column: 1, scope: !273)
!285 = distinct !DISubprogram(name: "free_ivector", scope: !1, file: !1, line: 135, type: !286, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !288)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !71, !11, !11}
!288 = !{!289, !290, !291}
!289 = !DILocalVariable(name: "v", arg: 1, scope: !285, file: !1, line: 135, type: !71)
!290 = !DILocalVariable(name: "nl", arg: 2, scope: !285, file: !1, line: 135, type: !11)
!291 = !DILocalVariable(name: "nh", arg: 3, scope: !285, file: !1, line: 135, type: !11)
!292 = !DILocation(line: 0, scope: !285)
!293 = !DILocation(line: 142, column: 22, scope: !285)
!294 = !DILocation(line: 142, column: 8, scope: !285)
!295 = !DILocation(line: 142, column: 2, scope: !285)
!296 = !DILocation(line: 143, column: 1, scope: !285)
!297 = distinct !DISubprogram(name: "free_matrix", scope: !1, file: !1, line: 145, type: !298, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !72, !11, !11, !11, !11}
!300 = !{!301, !302, !303, !304, !305}
!301 = !DILocalVariable(name: "m", arg: 1, scope: !297, file: !1, line: 145, type: !72)
!302 = !DILocalVariable(name: "nrl", arg: 2, scope: !297, file: !1, line: 145, type: !11)
!303 = !DILocalVariable(name: "nrh", arg: 3, scope: !297, file: !1, line: 145, type: !11)
!304 = !DILocalVariable(name: "ncl", arg: 4, scope: !297, file: !1, line: 145, type: !11)
!305 = !DILocalVariable(name: "nch", arg: 5, scope: !297, file: !1, line: 145, type: !11)
!306 = !DILocation(line: 0, scope: !297)
!307 = !DILocation(line: 151, column: 20, scope: !297)
!308 = !DILocation(line: 151, column: 29, scope: !297)
!309 = !DILocation(line: 151, column: 35, scope: !297)
!310 = !DILocation(line: 151, column: 8, scope: !297)
!311 = !DILocation(line: 151, column: 2, scope: !297)
!312 = !DILocation(line: 152, column: 22, scope: !297)
!313 = !DILocation(line: 152, column: 28, scope: !297)
!314 = !DILocation(line: 152, column: 8, scope: !297)
!315 = !DILocation(line: 152, column: 2, scope: !297)
!316 = !DILocation(line: 153, column: 1, scope: !297)
!317 = distinct !DISubprogram(name: "free_imatrix", scope: !1, file: !1, line: 155, type: !318, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !73, !11, !11, !11, !11}
!320 = !{!321, !322, !323, !324, !325}
!321 = !DILocalVariable(name: "m", arg: 1, scope: !317, file: !1, line: 155, type: !73)
!322 = !DILocalVariable(name: "nrl", arg: 2, scope: !317, file: !1, line: 155, type: !11)
!323 = !DILocalVariable(name: "nrh", arg: 3, scope: !317, file: !1, line: 155, type: !11)
!324 = !DILocalVariable(name: "ncl", arg: 4, scope: !317, file: !1, line: 155, type: !11)
!325 = !DILocalVariable(name: "nch", arg: 5, scope: !317, file: !1, line: 155, type: !11)
!326 = !DILocation(line: 0, scope: !317)
!327 = !DILocation(line: 161, column: 20, scope: !317)
!328 = !DILocation(line: 161, column: 29, scope: !317)
!329 = !DILocation(line: 161, column: 35, scope: !317)
!330 = !DILocation(line: 161, column: 8, scope: !317)
!331 = !DILocation(line: 161, column: 2, scope: !317)
!332 = !DILocation(line: 162, column: 22, scope: !317)
!333 = !DILocation(line: 162, column: 28, scope: !317)
!334 = !DILocation(line: 162, column: 8, scope: !317)
!335 = !DILocation(line: 162, column: 2, scope: !317)
!336 = !DILocation(line: 163, column: 1, scope: !317)
