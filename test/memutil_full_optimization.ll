; ModuleID = 'memutil.c'
source_filename = "memutil.c"
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
  call void @llvm.dbg.value(metadata i8* %0, metadata !86, metadata !DIExpression()), !dbg !87
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !88, !tbaa !89
  %3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %0) #6, !dbg !93
  tail call void @exit(i32 1) #7, !dbg !94
  unreachable, !dbg !94
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias double* @vector(i64 %0, i64 %1) local_unnamed_addr #3 !dbg !95 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !99, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 %1, metadata !100, metadata !DIExpression()), !dbg !102
  %3 = sub i64 %1, %0, !dbg !103
  %4 = shl i64 %3, 3, !dbg !104
  %5 = add i64 %4, 8, !dbg !104
  %6 = tail call noalias i8* @malloc(i64 %5) #8, !dbg !105
  call void @llvm.dbg.value(metadata i8* %6, metadata !101, metadata !DIExpression()), !dbg !102
  %7 = icmp eq i8* %6, null, !dbg !106
  br i1 %7, label %8, label %13, !dbg !108

8:                                                ; preds = %2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @nabout, align 8, !dbg !109, !tbaa !89
  %10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %1), !dbg !111
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @nabout, align 8, !dbg !112, !tbaa !89
  %12 = tail call i32 @fflush(%struct._IO_FILE* %11), !dbg !113
  tail call void @nrerror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)), !dbg !114
  unreachable

13:                                               ; preds = %2
  %14 = bitcast i8* %6 to double*, !dbg !115
  call void @llvm.dbg.value(metadata double* %14, metadata !101, metadata !DIExpression()), !dbg !102
  %15 = sub i64 0, %0, !dbg !116
  %16 = getelementptr inbounds double, double* %14, i64 %15, !dbg !116
  ret double* %16, !dbg !117
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !7 dso_local i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noalias i32* @ivector(i32 %0, i32 %1) local_unnamed_addr #3 !dbg !118 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !122, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i32 %1, metadata !123, metadata !DIExpression()), !dbg !125
  %3 = sub i32 1, %0, !dbg !126
  %4 = add i32 %3, %1, !dbg !127
  %5 = sext i32 %4 to i64, !dbg !128
  %6 = shl nsw i64 %5, 2, !dbg !129
  %7 = tail call noalias i8* @malloc(i64 %6) #8, !dbg !130
  call void @llvm.dbg.value(metadata i8* %7, metadata !124, metadata !DIExpression()), !dbg !125
  %8 = icmp eq i8* %7, null, !dbg !131
  br i1 %8, label %9, label %10, !dbg !133

9:                                                ; preds = %2
  tail call void @nrerror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !134
  unreachable

10:                                               ; preds = %2
  %11 = bitcast i8* %7 to i32*, !dbg !135
  call void @llvm.dbg.value(metadata i32* %11, metadata !124, metadata !DIExpression()), !dbg !125
  %12 = sext i32 %0 to i64, !dbg !136
  %13 = sub nsw i64 0, %12, !dbg !136
  %14 = getelementptr inbounds i32, i32* %11, i64 %13, !dbg !136
  ret i32* %14, !dbg !137
}

; Function Attrs: nounwind uwtable
define dso_local noalias i32* @ipvector(i32 %0, i32 %1) local_unnamed_addr #3 !dbg !138 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !140, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i32 %1, metadata !141, metadata !DIExpression()), !dbg !143
  %3 = sub i32 1, %0, !dbg !144
  %4 = add i32 %3, %1, !dbg !145
  %5 = sext i32 %4 to i64, !dbg !146
  %6 = shl nsw i64 %5, 3, !dbg !147
  %7 = tail call noalias i8* @malloc(i64 %6) #8, !dbg !148
  call void @llvm.dbg.value(metadata i8* %7, metadata !142, metadata !DIExpression()), !dbg !143
  %8 = icmp eq i8* %7, null, !dbg !149
  br i1 %8, label %9, label %10, !dbg !151

9:                                                ; preds = %2
  tail call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0)), !dbg !152
  unreachable

10:                                               ; preds = %2
  %11 = bitcast i8* %7 to i32*, !dbg !153
  call void @llvm.dbg.value(metadata i32* %11, metadata !142, metadata !DIExpression()), !dbg !143
  %12 = sext i32 %0 to i64, !dbg !154
  %13 = sub nsw i64 0, %12, !dbg !154
  %14 = getelementptr inbounds i32, i32* %11, i64 %13, !dbg !154
  ret i32* %14, !dbg !155
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull double** @matrix(i32 %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #3 !dbg !156 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !160, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata i32 %1, metadata !161, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata i32 %2, metadata !162, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata i32 %3, metadata !163, metadata !DIExpression()), !dbg !168
  %5 = sub nsw i32 %1, %0, !dbg !169
  call void @llvm.dbg.value(metadata i32 %5, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !168
  %6 = sub nsw i32 %3, %2, !dbg !170
  %7 = add nsw i32 %6, 1, !dbg !171
  call void @llvm.dbg.value(metadata i32 %7, metadata !166, metadata !DIExpression()), !dbg !168
  %8 = add nsw i32 %5, 2, !dbg !172
  %9 = sext i32 %8 to i64, !dbg !173
  %10 = shl nsw i64 %9, 3, !dbg !174
  %11 = tail call noalias i8* @malloc(i64 %10) #8, !dbg !175
  call void @llvm.dbg.value(metadata i8* %11, metadata !167, metadata !DIExpression()), !dbg !168
  %12 = icmp eq i8* %11, null, !dbg !176
  br i1 %12, label %13, label %14, !dbg !178

13:                                               ; preds = %4
  tail call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)), !dbg !179
  unreachable

14:                                               ; preds = %4
  %15 = add nsw i32 %5, 1, !dbg !180
  call void @llvm.dbg.value(metadata i32 %15, metadata !165, metadata !DIExpression()), !dbg !168
  %16 = getelementptr inbounds i8, i8* %11, i64 8, !dbg !181
  %17 = bitcast i8* %16 to double**, !dbg !181
  call void @llvm.dbg.value(metadata double** %17, metadata !167, metadata !DIExpression()), !dbg !168
  %18 = sext i32 %0 to i64, !dbg !182
  %19 = sub nsw i64 0, %18, !dbg !182
  %20 = getelementptr inbounds double*, double** %17, i64 %19, !dbg !182
  call void @llvm.dbg.value(metadata double** %20, metadata !167, metadata !DIExpression()), !dbg !168
  %21 = mul nsw i32 %7, %15, !dbg !183
  %22 = add nsw i32 %21, 1, !dbg !184
  %23 = sext i32 %22 to i64, !dbg !185
  %24 = shl nsw i64 %23, 3, !dbg !186
  %25 = tail call noalias i8* @malloc(i64 %24) #8, !dbg !187
  %26 = bitcast i8* %16 to i8**, !dbg !188
  store i8* %25, i8** %26, align 8, !dbg !188, !tbaa !89
  %27 = icmp eq i8* %25, null, !dbg !189
  br i1 %27, label %28, label %29, !dbg !191

28:                                               ; preds = %14
  tail call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0)), !dbg !192
  unreachable

29:                                               ; preds = %14
  %30 = getelementptr inbounds i8, i8* %25, i64 8, !dbg !193
  %31 = bitcast i8* %30 to double*, !dbg !193
  %32 = sext i32 %2 to i64, !dbg !194
  %33 = sub nsw i64 0, %32, !dbg !194
  %34 = getelementptr inbounds double, double* %31, i64 %33, !dbg !194
  store double* %34, double** %17, align 8, !dbg !194, !tbaa !89
  call void @llvm.dbg.value(metadata i32 %0, metadata !164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !168
  call void @llvm.dbg.value(metadata i32 %0, metadata !164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !168
  %35 = icmp sgt i32 %1, %0, !dbg !195
  br i1 %35, label %36, label %86, !dbg !198

36:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 %0, metadata !164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !168
  %37 = sext i32 %7 to i64, !dbg !199
  %38 = sext i32 %1 to i64, !dbg !195
  %39 = load double*, double** %17, align 8, !dbg !200, !tbaa !89
  %40 = sub nsw i64 %38, %18, !dbg !198
  %41 = xor i64 %18, -1, !dbg !198
  %42 = add nsw i64 %41, %38, !dbg !198
  %43 = and i64 %40, 7, !dbg !198
  %44 = icmp eq i64 %43, 0, !dbg !198
  br i1 %44, label %54, label %45, !dbg !198

45:                                               ; preds = %36, %45
  %46 = phi double* [ %50, %45 ], [ %39, %36 ], !dbg !200
  %47 = phi i64 [ %49, %45 ], [ %18, %36 ]
  %48 = phi i64 [ %52, %45 ], [ %43, %36 ]
  %49 = add nsw i64 %47, 1, !dbg !201
  %50 = getelementptr inbounds double, double* %46, i64 %37, !dbg !202
  %51 = getelementptr inbounds double*, double** %20, i64 %49, !dbg !203
  store double* %50, double** %51, align 8, !dbg !204, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %49, metadata !164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !168
  call void @llvm.dbg.value(metadata i64 %49, metadata !164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !168
  %52 = add i64 %48, -1, !dbg !198
  %53 = icmp eq i64 %52, 0, !dbg !198
  br i1 %53, label %54, label %45, !dbg !198, !llvm.loop !205

54:                                               ; preds = %45, %36
  %55 = phi double* [ %39, %36 ], [ %50, %45 ]
  %56 = phi i64 [ %18, %36 ], [ %49, %45 ]
  %57 = icmp ult i64 %42, 7, !dbg !198
  br i1 %57, label %86, label %58, !dbg !198

58:                                               ; preds = %54, %58
  %59 = phi double* [ %83, %58 ], [ %55, %54 ], !dbg !200
  %60 = phi i64 [ %82, %58 ], [ %56, %54 ]
  %61 = add nsw i64 %60, 1, !dbg !201
  %62 = getelementptr inbounds double, double* %59, i64 %37, !dbg !202
  %63 = getelementptr inbounds double*, double** %20, i64 %61, !dbg !203
  store double* %62, double** %63, align 8, !dbg !204, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %61, metadata !164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !168
  %64 = add nsw i64 %60, 2, !dbg !201
  %65 = getelementptr inbounds double, double* %62, i64 %37, !dbg !202
  %66 = getelementptr inbounds double*, double** %20, i64 %64, !dbg !203
  store double* %65, double** %66, align 8, !dbg !204, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %64, metadata !164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !168
  %67 = add nsw i64 %60, 3, !dbg !201
  %68 = getelementptr inbounds double, double* %65, i64 %37, !dbg !202
  %69 = getelementptr inbounds double*, double** %20, i64 %67, !dbg !203
  store double* %68, double** %69, align 8, !dbg !204, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %67, metadata !164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !168
  %70 = add nsw i64 %60, 4, !dbg !201
  %71 = getelementptr inbounds double, double* %68, i64 %37, !dbg !202
  %72 = getelementptr inbounds double*, double** %20, i64 %70, !dbg !203
  store double* %71, double** %72, align 8, !dbg !204, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %70, metadata !164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !168
  %73 = add nsw i64 %60, 5, !dbg !201
  %74 = getelementptr inbounds double, double* %71, i64 %37, !dbg !202
  %75 = getelementptr inbounds double*, double** %20, i64 %73, !dbg !203
  store double* %74, double** %75, align 8, !dbg !204, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %73, metadata !164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !168
  %76 = add nsw i64 %60, 6, !dbg !201
  %77 = getelementptr inbounds double, double* %74, i64 %37, !dbg !202
  %78 = getelementptr inbounds double*, double** %20, i64 %76, !dbg !203
  store double* %77, double** %78, align 8, !dbg !204, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %76, metadata !164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !168
  %79 = add nsw i64 %60, 7, !dbg !201
  %80 = getelementptr inbounds double, double* %77, i64 %37, !dbg !202
  %81 = getelementptr inbounds double*, double** %20, i64 %79, !dbg !203
  store double* %80, double** %81, align 8, !dbg !204, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %79, metadata !164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !168
  %82 = add nsw i64 %60, 8, !dbg !201
  %83 = getelementptr inbounds double, double* %80, i64 %37, !dbg !202
  %84 = getelementptr inbounds double*, double** %20, i64 %82, !dbg !203
  store double* %83, double** %84, align 8, !dbg !204, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %82, metadata !164, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !168
  %85 = icmp eq i64 %82, %38, !dbg !195
  br i1 %85, label %86, label %58, !dbg !198, !llvm.loop !207

86:                                               ; preds = %54, %58, %29
  ret double** %20, !dbg !209
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i32** @imatrix(i32 %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #3 !dbg !210 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !214, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i32 %1, metadata !215, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i32 %2, metadata !216, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i32 %3, metadata !217, metadata !DIExpression()), !dbg !222
  %5 = sub nsw i32 %1, %0, !dbg !223
  call void @llvm.dbg.value(metadata i32 %5, metadata !219, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !222
  %6 = sub nsw i32 %3, %2, !dbg !224
  %7 = add nsw i32 %6, 1, !dbg !225
  call void @llvm.dbg.value(metadata i32 %7, metadata !220, metadata !DIExpression()), !dbg !222
  %8 = add nsw i32 %5, 2, !dbg !226
  %9 = sext i32 %8 to i64, !dbg !227
  %10 = shl nsw i64 %9, 3, !dbg !228
  %11 = tail call noalias i8* @malloc(i64 %10) #8, !dbg !229
  call void @llvm.dbg.value(metadata i8* %11, metadata !221, metadata !DIExpression()), !dbg !222
  %12 = icmp eq i8* %11, null, !dbg !230
  br i1 %12, label %13, label %14, !dbg !232

13:                                               ; preds = %4
  tail call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)), !dbg !233
  unreachable

14:                                               ; preds = %4
  %15 = add nsw i32 %5, 1, !dbg !234
  call void @llvm.dbg.value(metadata i32 %15, metadata !219, metadata !DIExpression()), !dbg !222
  %16 = getelementptr inbounds i8, i8* %11, i64 8, !dbg !235
  %17 = bitcast i8* %16 to i32**, !dbg !235
  call void @llvm.dbg.value(metadata i32** %17, metadata !221, metadata !DIExpression()), !dbg !222
  %18 = sext i32 %0 to i64, !dbg !236
  %19 = sub nsw i64 0, %18, !dbg !236
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19, !dbg !236
  call void @llvm.dbg.value(metadata i32** %20, metadata !221, metadata !DIExpression()), !dbg !222
  %21 = mul nsw i32 %7, %15, !dbg !237
  %22 = add nsw i32 %21, 1, !dbg !238
  %23 = sext i32 %22 to i64, !dbg !239
  %24 = shl nsw i64 %23, 2, !dbg !240
  %25 = tail call noalias i8* @malloc(i64 %24) #8, !dbg !241
  %26 = bitcast i8* %16 to i8**, !dbg !242
  store i8* %25, i8** %26, align 8, !dbg !242, !tbaa !89
  %27 = icmp eq i8* %25, null, !dbg !243
  br i1 %27, label %28, label %29, !dbg !245

28:                                               ; preds = %14
  tail call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0)), !dbg !246
  unreachable

29:                                               ; preds = %14
  %30 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !247
  %31 = bitcast i8* %30 to i32*, !dbg !247
  %32 = sext i32 %2 to i64, !dbg !248
  %33 = sub nsw i64 0, %32, !dbg !248
  %34 = getelementptr inbounds i32, i32* %31, i64 %33, !dbg !248
  store i32* %34, i32** %17, align 8, !dbg !248, !tbaa !89
  call void @llvm.dbg.value(metadata i32 %0, metadata !218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !222
  call void @llvm.dbg.value(metadata i32 %0, metadata !218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !222
  %35 = icmp sgt i32 %1, %0, !dbg !249
  br i1 %35, label %36, label %86, !dbg !252

36:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 %0, metadata !218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !222
  %37 = sext i32 %7 to i64, !dbg !253
  %38 = sext i32 %1 to i64, !dbg !249
  %39 = load i32*, i32** %17, align 8, !dbg !254, !tbaa !89
  %40 = sub nsw i64 %38, %18, !dbg !252
  %41 = xor i64 %18, -1, !dbg !252
  %42 = add nsw i64 %41, %38, !dbg !252
  %43 = and i64 %40, 7, !dbg !252
  %44 = icmp eq i64 %43, 0, !dbg !252
  br i1 %44, label %54, label %45, !dbg !252

45:                                               ; preds = %36, %45
  %46 = phi i32* [ %50, %45 ], [ %39, %36 ], !dbg !254
  %47 = phi i64 [ %49, %45 ], [ %18, %36 ]
  %48 = phi i64 [ %52, %45 ], [ %43, %36 ]
  %49 = add nsw i64 %47, 1, !dbg !255
  %50 = getelementptr inbounds i32, i32* %46, i64 %37, !dbg !256
  %51 = getelementptr inbounds i32*, i32** %20, i64 %49, !dbg !257
  store i32* %50, i32** %51, align 8, !dbg !258, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %49, metadata !218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !222
  call void @llvm.dbg.value(metadata i64 %49, metadata !218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !222
  %52 = add i64 %48, -1, !dbg !252
  %53 = icmp eq i64 %52, 0, !dbg !252
  br i1 %53, label %54, label %45, !dbg !252, !llvm.loop !259

54:                                               ; preds = %45, %36
  %55 = phi i32* [ %39, %36 ], [ %50, %45 ]
  %56 = phi i64 [ %18, %36 ], [ %49, %45 ]
  %57 = icmp ult i64 %42, 7, !dbg !252
  br i1 %57, label %86, label %58, !dbg !252

58:                                               ; preds = %54, %58
  %59 = phi i32* [ %83, %58 ], [ %55, %54 ], !dbg !254
  %60 = phi i64 [ %82, %58 ], [ %56, %54 ]
  %61 = add nsw i64 %60, 1, !dbg !255
  %62 = getelementptr inbounds i32, i32* %59, i64 %37, !dbg !256
  %63 = getelementptr inbounds i32*, i32** %20, i64 %61, !dbg !257
  store i32* %62, i32** %63, align 8, !dbg !258, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %61, metadata !218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !222
  %64 = add nsw i64 %60, 2, !dbg !255
  %65 = getelementptr inbounds i32, i32* %62, i64 %37, !dbg !256
  %66 = getelementptr inbounds i32*, i32** %20, i64 %64, !dbg !257
  store i32* %65, i32** %66, align 8, !dbg !258, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %64, metadata !218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !222
  %67 = add nsw i64 %60, 3, !dbg !255
  %68 = getelementptr inbounds i32, i32* %65, i64 %37, !dbg !256
  %69 = getelementptr inbounds i32*, i32** %20, i64 %67, !dbg !257
  store i32* %68, i32** %69, align 8, !dbg !258, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %67, metadata !218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !222
  %70 = add nsw i64 %60, 4, !dbg !255
  %71 = getelementptr inbounds i32, i32* %68, i64 %37, !dbg !256
  %72 = getelementptr inbounds i32*, i32** %20, i64 %70, !dbg !257
  store i32* %71, i32** %72, align 8, !dbg !258, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %70, metadata !218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !222
  %73 = add nsw i64 %60, 5, !dbg !255
  %74 = getelementptr inbounds i32, i32* %71, i64 %37, !dbg !256
  %75 = getelementptr inbounds i32*, i32** %20, i64 %73, !dbg !257
  store i32* %74, i32** %75, align 8, !dbg !258, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %73, metadata !218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !222
  %76 = add nsw i64 %60, 6, !dbg !255
  %77 = getelementptr inbounds i32, i32* %74, i64 %37, !dbg !256
  %78 = getelementptr inbounds i32*, i32** %20, i64 %76, !dbg !257
  store i32* %77, i32** %78, align 8, !dbg !258, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %76, metadata !218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !222
  %79 = add nsw i64 %60, 7, !dbg !255
  %80 = getelementptr inbounds i32, i32* %77, i64 %37, !dbg !256
  %81 = getelementptr inbounds i32*, i32** %20, i64 %79, !dbg !257
  store i32* %80, i32** %81, align 8, !dbg !258, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %79, metadata !218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !222
  %82 = add nsw i64 %60, 8, !dbg !255
  %83 = getelementptr inbounds i32, i32* %80, i64 %37, !dbg !256
  %84 = getelementptr inbounds i32*, i32** %20, i64 %82, !dbg !257
  store i32* %83, i32** %84, align 8, !dbg !258, !tbaa !89
  call void @llvm.dbg.value(metadata i64 %82, metadata !218, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !222
  %85 = icmp eq i64 %82, %38, !dbg !249
  br i1 %85, label %86, label %58, !dbg !252, !llvm.loop !260

86:                                               ; preds = %54, %58, %29
  ret i32** %20, !dbg !262
}

; Function Attrs: nounwind uwtable
define dso_local void @free_vector(double* nocapture %0, i64 %1, i64 %2) local_unnamed_addr #3 !dbg !263 {
  call void @llvm.dbg.value(metadata double* %0, metadata !267, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i64 %1, metadata !268, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i64 %2, metadata !269, metadata !DIExpression()), !dbg !270
  %4 = getelementptr inbounds double, double* %0, i64 %1, !dbg !271
  %5 = bitcast double* %4 to i8*, !dbg !272
  tail call void @free(i8* %5) #8, !dbg !273
  ret void, !dbg !274
}

; Function Attrs: nounwind
declare !dbg !74 dso_local void @free(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @free_ivector(i32* nocapture %0, i32 %1, i32 %2) local_unnamed_addr #3 !dbg !275 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !279, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %1, metadata !280, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %2, metadata !281, metadata !DIExpression()), !dbg !282
  %4 = sext i32 %1 to i64, !dbg !283
  %5 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !283
  %6 = bitcast i32* %5 to i8*, !dbg !284
  tail call void @free(i8* %6) #8, !dbg !285
  ret void, !dbg !286
}

; Function Attrs: nounwind uwtable
define dso_local void @free_matrix(double** nocapture %0, i32 %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #3 !dbg !287 {
  call void @llvm.dbg.value(metadata double** %0, metadata !291, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i32 %1, metadata !292, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i32 %2, metadata !293, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i32 %3, metadata !294, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i32 %4, metadata !295, metadata !DIExpression()), !dbg !296
  %6 = sext i32 %1 to i64, !dbg !297
  %7 = getelementptr inbounds double*, double** %0, i64 %6, !dbg !297
  %8 = load double*, double** %7, align 8, !dbg !297, !tbaa !89
  %9 = sext i32 %3 to i64, !dbg !298
  %10 = getelementptr inbounds double, double* %8, i64 %9, !dbg !298
  %11 = getelementptr inbounds double, double* %10, i64 -1, !dbg !299
  %12 = bitcast double* %11 to i8*, !dbg !300
  tail call void @free(i8* nonnull %12) #8, !dbg !301
  %13 = getelementptr inbounds double*, double** %7, i64 -1, !dbg !302
  %14 = bitcast double** %13 to i8*, !dbg !303
  tail call void @free(i8* nonnull %14) #8, !dbg !304
  ret void, !dbg !305
}

; Function Attrs: nounwind uwtable
define dso_local void @free_imatrix(i32** nocapture %0, i32 %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #3 !dbg !306 {
  call void @llvm.dbg.value(metadata i32** %0, metadata !310, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i32 %1, metadata !311, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i32 %2, metadata !312, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i32 %3, metadata !313, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i32 %4, metadata !314, metadata !DIExpression()), !dbg !315
  %6 = sext i32 %1 to i64, !dbg !316
  %7 = getelementptr inbounds i32*, i32** %0, i64 %6, !dbg !316
  %8 = load i32*, i32** %7, align 8, !dbg !316, !tbaa !89
  %9 = sext i32 %3 to i64, !dbg !317
  %10 = getelementptr inbounds i32, i32* %8, i64 %9, !dbg !317
  %11 = getelementptr inbounds i32, i32* %10, i64 -1, !dbg !318
  %12 = bitcast i32* %11 to i8*, !dbg !319
  tail call void @free(i8* nonnull %12) #8, !dbg !320
  %13 = getelementptr inbounds i32*, i32** %7, i64 -1, !dbg !321
  %14 = bitcast i32** %13 to i8*, !dbg !322
  tail call void @free(i8* nonnull %14) #8, !dbg !323
  ret void, !dbg !324
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
!115 = !DILocation(line: 29, column: 6, scope: !95)
!116 = !DILocation(line: 39, column: 12, scope: !95)
!117 = !DILocation(line: 39, column: 2, scope: !95)
!118 = distinct !DISubprogram(name: "ivector", scope: !1, file: !1, line: 42, type: !119, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!119 = !DISubroutineType(types: !120)
!120 = !{!71, !11, !11}
!121 = !{!122, !123, !124}
!122 = !DILocalVariable(name: "nl", arg: 1, scope: !118, file: !1, line: 42, type: !11)
!123 = !DILocalVariable(name: "nh", arg: 2, scope: !118, file: !1, line: 42, type: !11)
!124 = !DILocalVariable(name: "v", scope: !118, file: !1, line: 47, type: !71)
!125 = !DILocation(line: 0, scope: !118)
!126 = !DILocation(line: 49, column: 28, scope: !118)
!127 = !DILocation(line: 49, column: 33, scope: !118)
!128 = !DILocation(line: 49, column: 23, scope: !118)
!129 = !DILocation(line: 49, column: 39, scope: !118)
!130 = !DILocation(line: 49, column: 15, scope: !118)
!131 = !DILocation(line: 50, column: 7, scope: !132)
!132 = distinct !DILexicalBlock(scope: !118, file: !1, line: 50, column: 6)
!133 = !DILocation(line: 50, column: 6, scope: !118)
!134 = !DILocation(line: 51, column: 3, scope: !132)
!135 = !DILocation(line: 49, column: 6, scope: !118)
!136 = !DILocation(line: 52, column: 12, scope: !118)
!137 = !DILocation(line: 52, column: 2, scope: !118)
!138 = distinct !DISubprogram(name: "ipvector", scope: !1, file: !1, line: 55, type: !119, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
!139 = !{!140, !141, !142}
!140 = !DILocalVariable(name: "nl", arg: 1, scope: !138, file: !1, line: 55, type: !11)
!141 = !DILocalVariable(name: "nh", arg: 2, scope: !138, file: !1, line: 55, type: !11)
!142 = !DILocalVariable(name: "v", scope: !138, file: !1, line: 60, type: !71)
!143 = !DILocation(line: 0, scope: !138)
!144 = !DILocation(line: 62, column: 28, scope: !138)
!145 = !DILocation(line: 62, column: 33, scope: !138)
!146 = !DILocation(line: 62, column: 23, scope: !138)
!147 = !DILocation(line: 62, column: 39, scope: !138)
!148 = !DILocation(line: 62, column: 15, scope: !138)
!149 = !DILocation(line: 63, column: 7, scope: !150)
!150 = distinct !DILexicalBlock(scope: !138, file: !1, line: 63, column: 6)
!151 = !DILocation(line: 63, column: 6, scope: !138)
!152 = !DILocation(line: 64, column: 3, scope: !150)
!153 = !DILocation(line: 62, column: 6, scope: !138)
!154 = !DILocation(line: 65, column: 12, scope: !138)
!155 = !DILocation(line: 65, column: 2, scope: !138)
!156 = distinct !DISubprogram(name: "matrix", scope: !1, file: !1, line: 69, type: !157, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !159)
!157 = !DISubroutineType(types: !158)
!158 = !{!72, !11, !11, !11, !11}
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167}
!160 = !DILocalVariable(name: "nrl", arg: 1, scope: !156, file: !1, line: 69, type: !11)
!161 = !DILocalVariable(name: "nrh", arg: 2, scope: !156, file: !1, line: 69, type: !11)
!162 = !DILocalVariable(name: "ncl", arg: 3, scope: !156, file: !1, line: 69, type: !11)
!163 = !DILocalVariable(name: "nch", arg: 4, scope: !156, file: !1, line: 69, type: !11)
!164 = !DILocalVariable(name: "i", scope: !156, file: !1, line: 74, type: !11)
!165 = !DILocalVariable(name: "nrow", scope: !156, file: !1, line: 75, type: !11)
!166 = !DILocalVariable(name: "ncol", scope: !156, file: !1, line: 75, type: !11)
!167 = !DILocalVariable(name: "m", scope: !156, file: !1, line: 76, type: !72)
!168 = !DILocation(line: 0, scope: !156)
!169 = !DILocation(line: 78, column: 13, scope: !156)
!170 = !DILocation(line: 79, column: 13, scope: !156)
!171 = !DILocation(line: 79, column: 19, scope: !156)
!172 = !DILocation(line: 81, column: 34, scope: !156)
!173 = !DILocation(line: 81, column: 27, scope: !156)
!174 = !DILocation(line: 81, column: 45, scope: !156)
!175 = !DILocation(line: 81, column: 19, scope: !156)
!176 = !DILocation(line: 82, column: 7, scope: !177)
!177 = distinct !DILexicalBlock(scope: !156, file: !1, line: 82, column: 6)
!178 = !DILocation(line: 82, column: 6, scope: !156)
!179 = !DILocation(line: 83, column: 3, scope: !177)
!180 = !DILocation(line: 78, column: 19, scope: !156)
!181 = !DILocation(line: 84, column: 4, scope: !156)
!182 = !DILocation(line: 85, column: 4, scope: !156)
!183 = !DILocation(line: 88, column: 18, scope: !156)
!184 = !DILocation(line: 88, column: 25, scope: !156)
!185 = !DILocation(line: 88, column: 11, scope: !156)
!186 = !DILocation(line: 88, column: 36, scope: !156)
!187 = !DILocation(line: 88, column: 3, scope: !156)
!188 = !DILocation(line: 87, column: 11, scope: !156)
!189 = !DILocation(line: 89, column: 7, scope: !190)
!190 = distinct !DILexicalBlock(scope: !156, file: !1, line: 89, column: 6)
!191 = !DILocation(line: 89, column: 6, scope: !156)
!192 = !DILocation(line: 90, column: 3, scope: !190)
!193 = !DILocation(line: 91, column: 11, scope: !156)
!194 = !DILocation(line: 92, column: 11, scope: !156)
!195 = !DILocation(line: 94, column: 22, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !1, line: 94, column: 2)
!197 = distinct !DILexicalBlock(scope: !156, file: !1, line: 94, column: 2)
!198 = !DILocation(line: 94, column: 2, scope: !197)
!199 = !DILocation(line: 0, scope: !196)
!200 = !DILocation(line: 95, column: 12, scope: !196)
!201 = !DILocation(line: 0, scope: !197)
!202 = !DILocation(line: 95, column: 23, scope: !196)
!203 = !DILocation(line: 95, column: 3, scope: !196)
!204 = !DILocation(line: 95, column: 10, scope: !196)
!205 = distinct !{!205, !206}
!206 = !{!"llvm.loop.unroll.disable"}
!207 = distinct !{!207, !198, !208}
!208 = !DILocation(line: 95, column: 25, scope: !197)
!209 = !DILocation(line: 96, column: 2, scope: !156)
!210 = distinct !DISubprogram(name: "imatrix", scope: !1, file: !1, line: 99, type: !211, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !213)
!211 = !DISubroutineType(types: !212)
!212 = !{!73, !11, !11, !11, !11}
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221}
!214 = !DILocalVariable(name: "nrl", arg: 1, scope: !210, file: !1, line: 99, type: !11)
!215 = !DILocalVariable(name: "nrh", arg: 2, scope: !210, file: !1, line: 99, type: !11)
!216 = !DILocalVariable(name: "ncl", arg: 3, scope: !210, file: !1, line: 99, type: !11)
!217 = !DILocalVariable(name: "nch", arg: 4, scope: !210, file: !1, line: 99, type: !11)
!218 = !DILocalVariable(name: "i", scope: !210, file: !1, line: 104, type: !11)
!219 = !DILocalVariable(name: "nrow", scope: !210, file: !1, line: 105, type: !11)
!220 = !DILocalVariable(name: "ncol", scope: !210, file: !1, line: 105, type: !11)
!221 = !DILocalVariable(name: "m", scope: !210, file: !1, line: 106, type: !73)
!222 = !DILocation(line: 0, scope: !210)
!223 = !DILocation(line: 108, column: 13, scope: !210)
!224 = !DILocation(line: 109, column: 13, scope: !210)
!225 = !DILocation(line: 109, column: 19, scope: !210)
!226 = !DILocation(line: 111, column: 31, scope: !210)
!227 = !DILocation(line: 111, column: 24, scope: !210)
!228 = !DILocation(line: 111, column: 42, scope: !210)
!229 = !DILocation(line: 111, column: 16, scope: !210)
!230 = !DILocation(line: 112, column: 7, scope: !231)
!231 = distinct !DILexicalBlock(scope: !210, file: !1, line: 112, column: 6)
!232 = !DILocation(line: 112, column: 6, scope: !210)
!233 = !DILocation(line: 113, column: 3, scope: !231)
!234 = !DILocation(line: 108, column: 19, scope: !210)
!235 = !DILocation(line: 114, column: 4, scope: !210)
!236 = !DILocation(line: 115, column: 4, scope: !210)
!237 = !DILocation(line: 118, column: 18, scope: !210)
!238 = !DILocation(line: 118, column: 25, scope: !210)
!239 = !DILocation(line: 118, column: 11, scope: !210)
!240 = !DILocation(line: 118, column: 36, scope: !210)
!241 = !DILocation(line: 118, column: 3, scope: !210)
!242 = !DILocation(line: 117, column: 11, scope: !210)
!243 = !DILocation(line: 119, column: 7, scope: !244)
!244 = distinct !DILexicalBlock(scope: !210, file: !1, line: 119, column: 6)
!245 = !DILocation(line: 119, column: 6, scope: !210)
!246 = !DILocation(line: 120, column: 3, scope: !244)
!247 = !DILocation(line: 121, column: 11, scope: !210)
!248 = !DILocation(line: 122, column: 11, scope: !210)
!249 = !DILocation(line: 124, column: 22, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 124, column: 2)
!251 = distinct !DILexicalBlock(scope: !210, file: !1, line: 124, column: 2)
!252 = !DILocation(line: 124, column: 2, scope: !251)
!253 = !DILocation(line: 0, scope: !250)
!254 = !DILocation(line: 125, column: 12, scope: !250)
!255 = !DILocation(line: 0, scope: !251)
!256 = !DILocation(line: 125, column: 23, scope: !250)
!257 = !DILocation(line: 125, column: 3, scope: !250)
!258 = !DILocation(line: 125, column: 10, scope: !250)
!259 = distinct !{!259, !206}
!260 = distinct !{!260, !252, !261}
!261 = !DILocation(line: 125, column: 25, scope: !251)
!262 = !DILocation(line: 126, column: 2, scope: !210)
!263 = distinct !DISubprogram(name: "free_vector", scope: !1, file: !1, line: 129, type: !264, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !4, !63, !63}
!266 = !{!267, !268, !269}
!267 = !DILocalVariable(name: "v", arg: 1, scope: !263, file: !1, line: 129, type: !4)
!268 = !DILocalVariable(name: "nl", arg: 2, scope: !263, file: !1, line: 129, type: !63)
!269 = !DILocalVariable(name: "nh", arg: 3, scope: !263, file: !1, line: 129, type: !63)
!270 = !DILocation(line: 0, scope: !263)
!271 = !DILocation(line: 132, column: 22, scope: !263)
!272 = !DILocation(line: 132, column: 8, scope: !263)
!273 = !DILocation(line: 132, column: 2, scope: !263)
!274 = !DILocation(line: 133, column: 1, scope: !263)
!275 = distinct !DISubprogram(name: "free_ivector", scope: !1, file: !1, line: 135, type: !276, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !71, !11, !11}
!278 = !{!279, !280, !281}
!279 = !DILocalVariable(name: "v", arg: 1, scope: !275, file: !1, line: 135, type: !71)
!280 = !DILocalVariable(name: "nl", arg: 2, scope: !275, file: !1, line: 135, type: !11)
!281 = !DILocalVariable(name: "nh", arg: 3, scope: !275, file: !1, line: 135, type: !11)
!282 = !DILocation(line: 0, scope: !275)
!283 = !DILocation(line: 142, column: 22, scope: !275)
!284 = !DILocation(line: 142, column: 8, scope: !275)
!285 = !DILocation(line: 142, column: 2, scope: !275)
!286 = !DILocation(line: 143, column: 1, scope: !275)
!287 = distinct !DISubprogram(name: "free_matrix", scope: !1, file: !1, line: 145, type: !288, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !290)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !72, !11, !11, !11, !11}
!290 = !{!291, !292, !293, !294, !295}
!291 = !DILocalVariable(name: "m", arg: 1, scope: !287, file: !1, line: 145, type: !72)
!292 = !DILocalVariable(name: "nrl", arg: 2, scope: !287, file: !1, line: 145, type: !11)
!293 = !DILocalVariable(name: "nrh", arg: 3, scope: !287, file: !1, line: 145, type: !11)
!294 = !DILocalVariable(name: "ncl", arg: 4, scope: !287, file: !1, line: 145, type: !11)
!295 = !DILocalVariable(name: "nch", arg: 5, scope: !287, file: !1, line: 145, type: !11)
!296 = !DILocation(line: 0, scope: !287)
!297 = !DILocation(line: 151, column: 20, scope: !287)
!298 = !DILocation(line: 151, column: 29, scope: !287)
!299 = !DILocation(line: 151, column: 35, scope: !287)
!300 = !DILocation(line: 151, column: 8, scope: !287)
!301 = !DILocation(line: 151, column: 2, scope: !287)
!302 = !DILocation(line: 152, column: 28, scope: !287)
!303 = !DILocation(line: 152, column: 8, scope: !287)
!304 = !DILocation(line: 152, column: 2, scope: !287)
!305 = !DILocation(line: 153, column: 1, scope: !287)
!306 = distinct !DISubprogram(name: "free_imatrix", scope: !1, file: !1, line: 155, type: !307, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !73, !11, !11, !11, !11}
!309 = !{!310, !311, !312, !313, !314}
!310 = !DILocalVariable(name: "m", arg: 1, scope: !306, file: !1, line: 155, type: !73)
!311 = !DILocalVariable(name: "nrl", arg: 2, scope: !306, file: !1, line: 155, type: !11)
!312 = !DILocalVariable(name: "nrh", arg: 3, scope: !306, file: !1, line: 155, type: !11)
!313 = !DILocalVariable(name: "ncl", arg: 4, scope: !306, file: !1, line: 155, type: !11)
!314 = !DILocalVariable(name: "nch", arg: 5, scope: !306, file: !1, line: 155, type: !11)
!315 = !DILocation(line: 0, scope: !306)
!316 = !DILocation(line: 161, column: 20, scope: !306)
!317 = !DILocation(line: 161, column: 29, scope: !306)
!318 = !DILocation(line: 161, column: 35, scope: !306)
!319 = !DILocation(line: 161, column: 8, scope: !306)
!320 = !DILocation(line: 161, column: 2, scope: !306)
!321 = !DILocation(line: 162, column: 28, scope: !306)
!322 = !DILocation(line: 162, column: 8, scope: !306)
!323 = !DILocation(line: 162, column: 2, scope: !306)
!324 = !DILocation(line: 163, column: 1, scope: !306)