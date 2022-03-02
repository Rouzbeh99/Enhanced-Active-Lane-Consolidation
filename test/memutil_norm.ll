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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nrerror(i8* %0) #0 !dbg !17 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !20, metadata !DIExpression()), !dbg !21
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !22
  %4 = load i8*, i8** %2, align 8, !dbg !23
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %4), !dbg !24
  call void @exit(i32 1) #5, !dbg !25
  unreachable, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double* @vector(i64 %0, i64 %1) #0 !dbg !26 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca double*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !32, metadata !DIExpression()), !dbg !33
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata double** %5, metadata !36, metadata !DIExpression()), !dbg !37
  %6 = load i64, i64* %4, align 8, !dbg !38
  %7 = load i64, i64* %3, align 8, !dbg !39
  %8 = sub i64 %6, %7, !dbg !40
  %9 = add i64 %8, 1, !dbg !41
  %10 = mul i64 %9, 8, !dbg !42
  %11 = call noalias i8* @malloc(i64 %10) #6, !dbg !43
  %12 = bitcast i8* %11 to double*, !dbg !44
  store double* %12, double** %5, align 8, !dbg !45
  %13 = load double*, double** %5, align 8, !dbg !46
  %14 = icmp ne double* %13, null, !dbg !46
  br i1 %14, label %21, label %15, !dbg !48

15:                                               ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @nabout, align 8, !dbg !49
  %17 = load i64, i64* %4, align 8, !dbg !51
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %17), !dbg !52
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @nabout, align 8, !dbg !53
  %20 = call i32 @fflush(%struct._IO_FILE* %19), !dbg !54
  call void @nrerror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)), !dbg !55
  br label %21, !dbg !56

21:                                               ; preds = %15, %2
  %22 = load double*, double** %5, align 8, !dbg !57
  %23 = load i64, i64* %3, align 8, !dbg !58
  %24 = sub i64 0, %23, !dbg !59
  %25 = getelementptr inbounds double, double* %22, i64 %24, !dbg !59
  ret double* %25, !dbg !60
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

declare dso_local i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ivector(i32 %0, i32 %1) #0 !dbg !61 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !64, metadata !DIExpression()), !dbg !65
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i32** %5, metadata !68, metadata !DIExpression()), !dbg !69
  %6 = load i32, i32* %4, align 4, !dbg !70
  %7 = load i32, i32* %3, align 4, !dbg !71
  %8 = sub nsw i32 %6, %7, !dbg !72
  %9 = add nsw i32 %8, 1, !dbg !73
  %10 = sext i32 %9 to i64, !dbg !74
  %11 = mul i64 %10, 4, !dbg !75
  %12 = call noalias i8* @malloc(i64 %11) #6, !dbg !76
  %13 = bitcast i8* %12 to i32*, !dbg !77
  store i32* %13, i32** %5, align 8, !dbg !78
  %14 = load i32*, i32** %5, align 8, !dbg !79
  %15 = icmp ne i32* %14, null, !dbg !79
  br i1 %15, label %17, label %16, !dbg !81

16:                                               ; preds = %2
  call void @nrerror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !82
  br label %17, !dbg !82

17:                                               ; preds = %16, %2
  %18 = load i32*, i32** %5, align 8, !dbg !83
  %19 = load i32, i32* %3, align 4, !dbg !84
  %20 = sext i32 %19 to i64, !dbg !85
  %21 = sub i64 0, %20, !dbg !85
  %22 = getelementptr inbounds i32, i32* %18, i64 %21, !dbg !85
  ret i32* %22, !dbg !86
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ipvector(i32 %0, i32 %1) #0 !dbg !87 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !88, metadata !DIExpression()), !dbg !89
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32** %5, metadata !92, metadata !DIExpression()), !dbg !93
  %6 = load i32, i32* %4, align 4, !dbg !94
  %7 = load i32, i32* %3, align 4, !dbg !95
  %8 = sub nsw i32 %6, %7, !dbg !96
  %9 = add nsw i32 %8, 1, !dbg !97
  %10 = sext i32 %9 to i64, !dbg !98
  %11 = mul i64 %10, 8, !dbg !99
  %12 = call noalias i8* @malloc(i64 %11) #6, !dbg !100
  %13 = bitcast i8* %12 to i32*, !dbg !101
  store i32* %13, i32** %5, align 8, !dbg !102
  %14 = load i32*, i32** %5, align 8, !dbg !103
  %15 = icmp ne i32* %14, null, !dbg !103
  br i1 %15, label %17, label %16, !dbg !105

16:                                               ; preds = %2
  call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0)), !dbg !106
  br label %17, !dbg !106

17:                                               ; preds = %16, %2
  %18 = load i32*, i32** %5, align 8, !dbg !107
  %19 = load i32, i32* %3, align 4, !dbg !108
  %20 = sext i32 %19 to i64, !dbg !109
  %21 = sub i64 0, %20, !dbg !109
  %22 = getelementptr inbounds i32, i32* %18, i64 %21, !dbg !109
  ret i32* %22, !dbg !110
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double** @matrix(i32 %0, i32 %1, i32 %2, i32 %3) #0 !dbg !111 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double**, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !116, metadata !DIExpression()), !dbg !117
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !118, metadata !DIExpression()), !dbg !119
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata i32* %9, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata i32* %10, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %11, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata double*** %12, metadata !128, metadata !DIExpression()), !dbg !129
  %13 = load i32, i32* %6, align 4, !dbg !130
  %14 = load i32, i32* %5, align 4, !dbg !131
  %15 = sub nsw i32 %13, %14, !dbg !132
  %16 = add nsw i32 %15, 1, !dbg !133
  store i32 %16, i32* %10, align 4, !dbg !134
  %17 = load i32, i32* %8, align 4, !dbg !135
  %18 = load i32, i32* %7, align 4, !dbg !136
  %19 = sub nsw i32 %17, %18, !dbg !137
  %20 = add nsw i32 %19, 1, !dbg !138
  store i32 %20, i32* %11, align 4, !dbg !139
  %21 = load i32, i32* %10, align 4, !dbg !140
  %22 = add nsw i32 %21, 1, !dbg !141
  %23 = sext i32 %22 to i64, !dbg !142
  %24 = mul i64 %23, 8, !dbg !143
  %25 = call noalias i8* @malloc(i64 %24) #6, !dbg !144
  %26 = bitcast i8* %25 to double**, !dbg !145
  store double** %26, double*** %12, align 8, !dbg !146
  %27 = load double**, double*** %12, align 8, !dbg !147
  %28 = icmp ne double** %27, null, !dbg !147
  br i1 %28, label %30, label %29, !dbg !149

29:                                               ; preds = %4
  call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)), !dbg !150
  br label %30, !dbg !150

30:                                               ; preds = %29, %4
  %31 = load double**, double*** %12, align 8, !dbg !151
  %32 = getelementptr inbounds double*, double** %31, i64 1, !dbg !151
  store double** %32, double*** %12, align 8, !dbg !151
  %33 = load i32, i32* %5, align 4, !dbg !152
  %34 = load double**, double*** %12, align 8, !dbg !153
  %35 = sext i32 %33 to i64, !dbg !153
  %36 = sub i64 0, %35, !dbg !153
  %37 = getelementptr inbounds double*, double** %34, i64 %36, !dbg !153
  store double** %37, double*** %12, align 8, !dbg !153
  %38 = load i32, i32* %10, align 4, !dbg !154
  %39 = load i32, i32* %11, align 4, !dbg !155
  %40 = mul nsw i32 %38, %39, !dbg !156
  %41 = add nsw i32 %40, 1, !dbg !157
  %42 = sext i32 %41 to i64, !dbg !158
  %43 = mul i64 %42, 8, !dbg !159
  %44 = call noalias i8* @malloc(i64 %43) #6, !dbg !160
  %45 = bitcast i8* %44 to double*, !dbg !161
  %46 = load double**, double*** %12, align 8, !dbg !162
  %47 = load i32, i32* %5, align 4, !dbg !163
  %48 = sext i32 %47 to i64, !dbg !162
  %49 = getelementptr inbounds double*, double** %46, i64 %48, !dbg !162
  store double* %45, double** %49, align 8, !dbg !164
  %50 = load double**, double*** %12, align 8, !dbg !165
  %51 = load i32, i32* %5, align 4, !dbg !167
  %52 = sext i32 %51 to i64, !dbg !165
  %53 = getelementptr inbounds double*, double** %50, i64 %52, !dbg !165
  %54 = load double*, double** %53, align 8, !dbg !165
  %55 = icmp ne double* %54, null, !dbg !165
  br i1 %55, label %57, label %56, !dbg !168

56:                                               ; preds = %30
  call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0)), !dbg !169
  br label %57, !dbg !169

57:                                               ; preds = %56, %30
  %58 = load double**, double*** %12, align 8, !dbg !170
  %59 = load i32, i32* %5, align 4, !dbg !171
  %60 = sext i32 %59 to i64, !dbg !170
  %61 = getelementptr inbounds double*, double** %58, i64 %60, !dbg !170
  %62 = load double*, double** %61, align 8, !dbg !172
  %63 = getelementptr inbounds double, double* %62, i64 1, !dbg !172
  store double* %63, double** %61, align 8, !dbg !172
  %64 = load i32, i32* %7, align 4, !dbg !173
  %65 = load double**, double*** %12, align 8, !dbg !174
  %66 = load i32, i32* %5, align 4, !dbg !175
  %67 = sext i32 %66 to i64, !dbg !174
  %68 = getelementptr inbounds double*, double** %65, i64 %67, !dbg !174
  %69 = load double*, double** %68, align 8, !dbg !176
  %70 = sext i32 %64 to i64, !dbg !176
  %71 = sub i64 0, %70, !dbg !176
  %72 = getelementptr inbounds double, double* %69, i64 %71, !dbg !176
  store double* %72, double** %68, align 8, !dbg !176
  %73 = load i32, i32* %5, align 4, !dbg !177
  %74 = add nsw i32 %73, 1, !dbg !179
  store i32 %74, i32* %9, align 4, !dbg !180
  br label %75, !dbg !181

75:                                               ; preds = %93, %57
  %76 = load i32, i32* %9, align 4, !dbg !182
  %77 = load i32, i32* %6, align 4, !dbg !184
  %78 = icmp sle i32 %76, %77, !dbg !185
  br i1 %78, label %79, label %96, !dbg !186

79:                                               ; preds = %75
  %80 = load double**, double*** %12, align 8, !dbg !187
  %81 = load i32, i32* %9, align 4, !dbg !188
  %82 = sub nsw i32 %81, 1, !dbg !189
  %83 = sext i32 %82 to i64, !dbg !187
  %84 = getelementptr inbounds double*, double** %80, i64 %83, !dbg !187
  %85 = load double*, double** %84, align 8, !dbg !187
  %86 = load i32, i32* %11, align 4, !dbg !190
  %87 = sext i32 %86 to i64, !dbg !191
  %88 = getelementptr inbounds double, double* %85, i64 %87, !dbg !191
  %89 = load double**, double*** %12, align 8, !dbg !192
  %90 = load i32, i32* %9, align 4, !dbg !193
  %91 = sext i32 %90 to i64, !dbg !192
  %92 = getelementptr inbounds double*, double** %89, i64 %91, !dbg !192
  store double* %88, double** %92, align 8, !dbg !194
  br label %93, !dbg !192

93:                                               ; preds = %79
  %94 = load i32, i32* %9, align 4, !dbg !195
  %95 = add nsw i32 %94, 1, !dbg !195
  store i32 %95, i32* %9, align 4, !dbg !195
  br label %75, !dbg !196, !llvm.loop !197

96:                                               ; preds = %75
  %97 = load double**, double*** %12, align 8, !dbg !199
  ret double** %97, !dbg !200
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @imatrix(i32 %0, i32 %1, i32 %2, i32 %3) #0 !dbg !201 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !204, metadata !DIExpression()), !dbg !205
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !206, metadata !DIExpression()), !dbg !207
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !208, metadata !DIExpression()), !dbg !209
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata i32* %9, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i32* %10, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %11, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata i32*** %12, metadata !218, metadata !DIExpression()), !dbg !219
  %13 = load i32, i32* %6, align 4, !dbg !220
  %14 = load i32, i32* %5, align 4, !dbg !221
  %15 = sub nsw i32 %13, %14, !dbg !222
  %16 = add nsw i32 %15, 1, !dbg !223
  store i32 %16, i32* %10, align 4, !dbg !224
  %17 = load i32, i32* %8, align 4, !dbg !225
  %18 = load i32, i32* %7, align 4, !dbg !226
  %19 = sub nsw i32 %17, %18, !dbg !227
  %20 = add nsw i32 %19, 1, !dbg !228
  store i32 %20, i32* %11, align 4, !dbg !229
  %21 = load i32, i32* %10, align 4, !dbg !230
  %22 = add nsw i32 %21, 1, !dbg !231
  %23 = sext i32 %22 to i64, !dbg !232
  %24 = mul i64 %23, 8, !dbg !233
  %25 = call noalias i8* @malloc(i64 %24) #6, !dbg !234
  %26 = bitcast i8* %25 to i32**, !dbg !235
  store i32** %26, i32*** %12, align 8, !dbg !236
  %27 = load i32**, i32*** %12, align 8, !dbg !237
  %28 = icmp ne i32** %27, null, !dbg !237
  br i1 %28, label %30, label %29, !dbg !239

29:                                               ; preds = %4
  call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)), !dbg !240
  br label %30, !dbg !240

30:                                               ; preds = %29, %4
  %31 = load i32**, i32*** %12, align 8, !dbg !241
  %32 = getelementptr inbounds i32*, i32** %31, i64 1, !dbg !241
  store i32** %32, i32*** %12, align 8, !dbg !241
  %33 = load i32, i32* %5, align 4, !dbg !242
  %34 = load i32**, i32*** %12, align 8, !dbg !243
  %35 = sext i32 %33 to i64, !dbg !243
  %36 = sub i64 0, %35, !dbg !243
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36, !dbg !243
  store i32** %37, i32*** %12, align 8, !dbg !243
  %38 = load i32, i32* %10, align 4, !dbg !244
  %39 = load i32, i32* %11, align 4, !dbg !245
  %40 = mul nsw i32 %38, %39, !dbg !246
  %41 = add nsw i32 %40, 1, !dbg !247
  %42 = sext i32 %41 to i64, !dbg !248
  %43 = mul i64 %42, 4, !dbg !249
  %44 = call noalias i8* @malloc(i64 %43) #6, !dbg !250
  %45 = bitcast i8* %44 to i32*, !dbg !251
  %46 = load i32**, i32*** %12, align 8, !dbg !252
  %47 = load i32, i32* %5, align 4, !dbg !253
  %48 = sext i32 %47 to i64, !dbg !252
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48, !dbg !252
  store i32* %45, i32** %49, align 8, !dbg !254
  %50 = load i32**, i32*** %12, align 8, !dbg !255
  %51 = load i32, i32* %5, align 4, !dbg !257
  %52 = sext i32 %51 to i64, !dbg !255
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52, !dbg !255
  %54 = load i32*, i32** %53, align 8, !dbg !255
  %55 = icmp ne i32* %54, null, !dbg !255
  br i1 %55, label %57, label %56, !dbg !258

56:                                               ; preds = %30
  call void @nrerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0)), !dbg !259
  br label %57, !dbg !259

57:                                               ; preds = %56, %30
  %58 = load i32**, i32*** %12, align 8, !dbg !260
  %59 = load i32, i32* %5, align 4, !dbg !261
  %60 = sext i32 %59 to i64, !dbg !260
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60, !dbg !260
  %62 = load i32*, i32** %61, align 8, !dbg !262
  %63 = getelementptr inbounds i32, i32* %62, i64 1, !dbg !262
  store i32* %63, i32** %61, align 8, !dbg !262
  %64 = load i32, i32* %7, align 4, !dbg !263
  %65 = load i32**, i32*** %12, align 8, !dbg !264
  %66 = load i32, i32* %5, align 4, !dbg !265
  %67 = sext i32 %66 to i64, !dbg !264
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67, !dbg !264
  %69 = load i32*, i32** %68, align 8, !dbg !266
  %70 = sext i32 %64 to i64, !dbg !266
  %71 = sub i64 0, %70, !dbg !266
  %72 = getelementptr inbounds i32, i32* %69, i64 %71, !dbg !266
  store i32* %72, i32** %68, align 8, !dbg !266
  %73 = load i32, i32* %5, align 4, !dbg !267
  %74 = add nsw i32 %73, 1, !dbg !269
  store i32 %74, i32* %9, align 4, !dbg !270
  br label %75, !dbg !271

75:                                               ; preds = %93, %57
  %76 = load i32, i32* %9, align 4, !dbg !272
  %77 = load i32, i32* %6, align 4, !dbg !274
  %78 = icmp sle i32 %76, %77, !dbg !275
  br i1 %78, label %79, label %96, !dbg !276

79:                                               ; preds = %75
  %80 = load i32**, i32*** %12, align 8, !dbg !277
  %81 = load i32, i32* %9, align 4, !dbg !278
  %82 = sub nsw i32 %81, 1, !dbg !279
  %83 = sext i32 %82 to i64, !dbg !277
  %84 = getelementptr inbounds i32*, i32** %80, i64 %83, !dbg !277
  %85 = load i32*, i32** %84, align 8, !dbg !277
  %86 = load i32, i32* %11, align 4, !dbg !280
  %87 = sext i32 %86 to i64, !dbg !281
  %88 = getelementptr inbounds i32, i32* %85, i64 %87, !dbg !281
  %89 = load i32**, i32*** %12, align 8, !dbg !282
  %90 = load i32, i32* %9, align 4, !dbg !283
  %91 = sext i32 %90 to i64, !dbg !282
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91, !dbg !282
  store i32* %88, i32** %92, align 8, !dbg !284
  br label %93, !dbg !282

93:                                               ; preds = %79
  %94 = load i32, i32* %9, align 4, !dbg !285
  %95 = add nsw i32 %94, 1, !dbg !285
  store i32 %95, i32* %9, align 4, !dbg !285
  br label %75, !dbg !286, !llvm.loop !287

96:                                               ; preds = %75
  %97 = load i32**, i32*** %12, align 8, !dbg !289
  ret i32** %97, !dbg !290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_vector(double* %0, i64 %1, i64 %2) #0 !dbg !291 {
  %4 = alloca double*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store double* %0, double** %4, align 8
  call void @llvm.dbg.declare(metadata double** %4, metadata !294, metadata !DIExpression()), !dbg !295
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !296, metadata !DIExpression()), !dbg !297
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !298, metadata !DIExpression()), !dbg !299
  %7 = load double*, double** %4, align 8, !dbg !300
  %8 = load i64, i64* %5, align 8, !dbg !301
  %9 = getelementptr inbounds double, double* %7, i64 %8, !dbg !302
  %10 = bitcast double* %9 to i8*, !dbg !303
  call void @free(i8* %10) #6, !dbg !304
  ret void, !dbg !305
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_ivector(i32* %0, i32 %1, i32 %2) #0 !dbg !306 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !309, metadata !DIExpression()), !dbg !310
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !311, metadata !DIExpression()), !dbg !312
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !313, metadata !DIExpression()), !dbg !314
  %7 = load i32*, i32** %4, align 8, !dbg !315
  %8 = load i32, i32* %5, align 4, !dbg !316
  %9 = sext i32 %8 to i64, !dbg !317
  %10 = getelementptr inbounds i32, i32* %7, i64 %9, !dbg !317
  %11 = bitcast i32* %10 to i8*, !dbg !318
  call void @free(i8* %11) #6, !dbg !319
  ret void, !dbg !320
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_matrix(double** %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 !dbg !321 {
  %6 = alloca double**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store double** %0, double*** %6, align 8
  call void @llvm.dbg.declare(metadata double*** %6, metadata !324, metadata !DIExpression()), !dbg !325
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !326, metadata !DIExpression()), !dbg !327
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !328, metadata !DIExpression()), !dbg !329
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !330, metadata !DIExpression()), !dbg !331
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !332, metadata !DIExpression()), !dbg !333
  %11 = load double**, double*** %6, align 8, !dbg !334
  %12 = load i32, i32* %7, align 4, !dbg !335
  %13 = sext i32 %12 to i64, !dbg !334
  %14 = getelementptr inbounds double*, double** %11, i64 %13, !dbg !334
  %15 = load double*, double** %14, align 8, !dbg !334
  %16 = load i32, i32* %9, align 4, !dbg !336
  %17 = sext i32 %16 to i64, !dbg !337
  %18 = getelementptr inbounds double, double* %15, i64 %17, !dbg !337
  %19 = getelementptr inbounds double, double* %18, i64 -1, !dbg !338
  %20 = bitcast double* %19 to i8*, !dbg !339
  call void @free(i8* %20) #6, !dbg !340
  %21 = load double**, double*** %6, align 8, !dbg !341
  %22 = load i32, i32* %7, align 4, !dbg !342
  %23 = sext i32 %22 to i64, !dbg !343
  %24 = getelementptr inbounds double*, double** %21, i64 %23, !dbg !343
  %25 = getelementptr inbounds double*, double** %24, i64 -1, !dbg !344
  %26 = bitcast double** %25 to i8*, !dbg !345
  call void @free(i8* %26) #6, !dbg !346
  ret void, !dbg !347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_imatrix(i32** %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 !dbg !348 {
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  call void @llvm.dbg.declare(metadata i32*** %6, metadata !351, metadata !DIExpression()), !dbg !352
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !353, metadata !DIExpression()), !dbg !354
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !355, metadata !DIExpression()), !dbg !356
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !357, metadata !DIExpression()), !dbg !358
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !359, metadata !DIExpression()), !dbg !360
  %11 = load i32**, i32*** %6, align 8, !dbg !361
  %12 = load i32, i32* %7, align 4, !dbg !362
  %13 = sext i32 %12 to i64, !dbg !361
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13, !dbg !361
  %15 = load i32*, i32** %14, align 8, !dbg !361
  %16 = load i32, i32* %9, align 4, !dbg !363
  %17 = sext i32 %16 to i64, !dbg !364
  %18 = getelementptr inbounds i32, i32* %15, i64 %17, !dbg !364
  %19 = getelementptr inbounds i32, i32* %18, i64 -1, !dbg !365
  %20 = bitcast i32* %19 to i8*, !dbg !366
  call void @free(i8* %20) #6, !dbg !367
  %21 = load i32**, i32*** %6, align 8, !dbg !368
  %22 = load i32, i32* %7, align 4, !dbg !369
  %23 = sext i32 %22 to i64, !dbg !370
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23, !dbg !370
  %25 = getelementptr inbounds i32*, i32** %24, i64 -1, !dbg !371
  %26 = bitcast i32** %25 to i8*, !dbg !372
  call void @free(i8* %26) #6, !dbg !373
  ret void, !dbg !374
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "memutil.c", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!2 = !{}
!3 = !{!4, !6, !7, !9, !10, !11}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{i32 7, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 10.0.0-4ubuntu1 "}
!17 = distinct !DISubprogram(name: "nrerror", scope: !1, file: !1, line: 6, type: !18, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !11}
!20 = !DILocalVariable(name: "msg", arg: 1, scope: !17, file: !1, line: 6, type: !11)
!21 = !DILocation(line: 6, column: 20, scope: !17)
!22 = !DILocation(line: 12, column: 11, scope: !17)
!23 = !DILocation(line: 12, column: 34, scope: !17)
!24 = !DILocation(line: 12, column: 2, scope: !17)
!25 = !DILocation(line: 13, column: 2, scope: !17)
!26 = distinct !DISubprogram(name: "vector", scope: !1, file: !1, line: 16, type: !27, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!27 = !DISubroutineType(types: !28)
!28 = !{!4, !29, !29}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DILocalVariable(name: "nl", arg: 1, scope: !26, file: !1, line: 16, type: !29)
!33 = !DILocation(line: 16, column: 24, scope: !26)
!34 = !DILocalVariable(name: "nh", arg: 2, scope: !26, file: !1, line: 16, type: !29)
!35 = !DILocation(line: 16, column: 35, scope: !26)
!36 = !DILocalVariable(name: "v", scope: !26, file: !1, line: 18, type: !4)
!37 = !DILocation(line: 18, column: 10, scope: !26)
!38 = !DILocation(line: 29, column: 28, scope: !26)
!39 = !DILocation(line: 29, column: 33, scope: !26)
!40 = !DILocation(line: 29, column: 31, scope: !26)
!41 = !DILocation(line: 29, column: 36, scope: !26)
!42 = !DILocation(line: 29, column: 42, scope: !26)
!43 = !DILocation(line: 29, column: 18, scope: !26)
!44 = !DILocation(line: 29, column: 6, scope: !26)
!45 = !DILocation(line: 29, column: 4, scope: !26)
!46 = !DILocation(line: 30, column: 7, scope: !47)
!47 = distinct !DILexicalBlock(scope: !26, file: !1, line: 30, column: 6)
!48 = !DILocation(line: 30, column: 6, scope: !26)
!49 = !DILocation(line: 31, column: 19, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !1, line: 30, column: 11)
!51 = !DILocation(line: 31, column: 82, scope: !50)
!52 = !DILocation(line: 31, column: 10, scope: !50)
!53 = !DILocation(line: 32, column: 10, scope: !50)
!54 = !DILocation(line: 32, column: 3, scope: !50)
!55 = !DILocation(line: 33, column: 3, scope: !50)
!56 = !DILocation(line: 34, column: 2, scope: !50)
!57 = !DILocation(line: 39, column: 10, scope: !26)
!58 = !DILocation(line: 39, column: 14, scope: !26)
!59 = !DILocation(line: 39, column: 12, scope: !26)
!60 = !DILocation(line: 39, column: 2, scope: !26)
!61 = distinct !DISubprogram(name: "ivector", scope: !1, file: !1, line: 42, type: !62, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!62 = !DISubroutineType(types: !63)
!63 = !{!7, !8, !8}
!64 = !DILocalVariable(name: "nl", arg: 1, scope: !61, file: !1, line: 42, type: !8)
!65 = !DILocation(line: 42, column: 19, scope: !61)
!66 = !DILocalVariable(name: "nh", arg: 2, scope: !61, file: !1, line: 42, type: !8)
!67 = !DILocation(line: 42, column: 27, scope: !61)
!68 = !DILocalVariable(name: "v", scope: !61, file: !1, line: 47, type: !7)
!69 = !DILocation(line: 47, column: 7, scope: !61)
!70 = !DILocation(line: 49, column: 25, scope: !61)
!71 = !DILocation(line: 49, column: 30, scope: !61)
!72 = !DILocation(line: 49, column: 28, scope: !61)
!73 = !DILocation(line: 49, column: 33, scope: !61)
!74 = !DILocation(line: 49, column: 23, scope: !61)
!75 = !DILocation(line: 49, column: 39, scope: !61)
!76 = !DILocation(line: 49, column: 15, scope: !61)
!77 = !DILocation(line: 49, column: 6, scope: !61)
!78 = !DILocation(line: 49, column: 4, scope: !61)
!79 = !DILocation(line: 50, column: 7, scope: !80)
!80 = distinct !DILexicalBlock(scope: !61, file: !1, line: 50, column: 6)
!81 = !DILocation(line: 50, column: 6, scope: !61)
!82 = !DILocation(line: 51, column: 3, scope: !80)
!83 = !DILocation(line: 52, column: 10, scope: !61)
!84 = !DILocation(line: 52, column: 14, scope: !61)
!85 = !DILocation(line: 52, column: 12, scope: !61)
!86 = !DILocation(line: 52, column: 2, scope: !61)
!87 = distinct !DISubprogram(name: "ipvector", scope: !1, file: !1, line: 55, type: !62, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!88 = !DILocalVariable(name: "nl", arg: 1, scope: !87, file: !1, line: 55, type: !8)
!89 = !DILocation(line: 55, column: 20, scope: !87)
!90 = !DILocalVariable(name: "nh", arg: 2, scope: !87, file: !1, line: 55, type: !8)
!91 = !DILocation(line: 55, column: 28, scope: !87)
!92 = !DILocalVariable(name: "v", scope: !87, file: !1, line: 60, type: !7)
!93 = !DILocation(line: 60, column: 7, scope: !87)
!94 = !DILocation(line: 62, column: 25, scope: !87)
!95 = !DILocation(line: 62, column: 30, scope: !87)
!96 = !DILocation(line: 62, column: 28, scope: !87)
!97 = !DILocation(line: 62, column: 33, scope: !87)
!98 = !DILocation(line: 62, column: 23, scope: !87)
!99 = !DILocation(line: 62, column: 39, scope: !87)
!100 = !DILocation(line: 62, column: 15, scope: !87)
!101 = !DILocation(line: 62, column: 6, scope: !87)
!102 = !DILocation(line: 62, column: 4, scope: !87)
!103 = !DILocation(line: 63, column: 7, scope: !104)
!104 = distinct !DILexicalBlock(scope: !87, file: !1, line: 63, column: 6)
!105 = !DILocation(line: 63, column: 6, scope: !87)
!106 = !DILocation(line: 64, column: 3, scope: !104)
!107 = !DILocation(line: 65, column: 10, scope: !87)
!108 = !DILocation(line: 65, column: 14, scope: !87)
!109 = !DILocation(line: 65, column: 12, scope: !87)
!110 = !DILocation(line: 65, column: 2, scope: !87)
!111 = distinct !DISubprogram(name: "matrix", scope: !1, file: !1, line: 69, type: !112, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!112 = !DISubroutineType(types: !113)
!113 = !{!9, !8, !8, !8, !8}
!114 = !DILocalVariable(name: "nrl", arg: 1, scope: !111, file: !1, line: 69, type: !8)
!115 = !DILocation(line: 69, column: 22, scope: !111)
!116 = !DILocalVariable(name: "nrh", arg: 2, scope: !111, file: !1, line: 69, type: !8)
!117 = !DILocation(line: 69, column: 31, scope: !111)
!118 = !DILocalVariable(name: "ncl", arg: 3, scope: !111, file: !1, line: 69, type: !8)
!119 = !DILocation(line: 69, column: 40, scope: !111)
!120 = !DILocalVariable(name: "nch", arg: 4, scope: !111, file: !1, line: 69, type: !8)
!121 = !DILocation(line: 69, column: 49, scope: !111)
!122 = !DILocalVariable(name: "i", scope: !111, file: !1, line: 74, type: !8)
!123 = !DILocation(line: 74, column: 6, scope: !111)
!124 = !DILocalVariable(name: "nrow", scope: !111, file: !1, line: 75, type: !8)
!125 = !DILocation(line: 75, column: 6, scope: !111)
!126 = !DILocalVariable(name: "ncol", scope: !111, file: !1, line: 75, type: !8)
!127 = !DILocation(line: 75, column: 12, scope: !111)
!128 = !DILocalVariable(name: "m", scope: !111, file: !1, line: 76, type: !9)
!129 = !DILocation(line: 76, column: 11, scope: !111)
!130 = !DILocation(line: 78, column: 9, scope: !111)
!131 = !DILocation(line: 78, column: 15, scope: !111)
!132 = !DILocation(line: 78, column: 13, scope: !111)
!133 = !DILocation(line: 78, column: 19, scope: !111)
!134 = !DILocation(line: 78, column: 7, scope: !111)
!135 = !DILocation(line: 79, column: 9, scope: !111)
!136 = !DILocation(line: 79, column: 15, scope: !111)
!137 = !DILocation(line: 79, column: 13, scope: !111)
!138 = !DILocation(line: 79, column: 19, scope: !111)
!139 = !DILocation(line: 79, column: 7, scope: !111)
!140 = !DILocation(line: 81, column: 29, scope: !111)
!141 = !DILocation(line: 81, column: 34, scope: !111)
!142 = !DILocation(line: 81, column: 27, scope: !111)
!143 = !DILocation(line: 81, column: 45, scope: !111)
!144 = !DILocation(line: 81, column: 19, scope: !111)
!145 = !DILocation(line: 81, column: 6, scope: !111)
!146 = !DILocation(line: 81, column: 4, scope: !111)
!147 = !DILocation(line: 82, column: 7, scope: !148)
!148 = distinct !DILexicalBlock(scope: !111, file: !1, line: 82, column: 6)
!149 = !DILocation(line: 82, column: 6, scope: !111)
!150 = !DILocation(line: 83, column: 3, scope: !148)
!151 = !DILocation(line: 84, column: 4, scope: !111)
!152 = !DILocation(line: 85, column: 7, scope: !111)
!153 = !DILocation(line: 85, column: 4, scope: !111)
!154 = !DILocation(line: 88, column: 13, scope: !111)
!155 = !DILocation(line: 88, column: 20, scope: !111)
!156 = !DILocation(line: 88, column: 18, scope: !111)
!157 = !DILocation(line: 88, column: 25, scope: !111)
!158 = !DILocation(line: 88, column: 11, scope: !111)
!159 = !DILocation(line: 88, column: 36, scope: !111)
!160 = !DILocation(line: 88, column: 3, scope: !111)
!161 = !DILocation(line: 87, column: 13, scope: !111)
!162 = !DILocation(line: 87, column: 2, scope: !111)
!163 = !DILocation(line: 87, column: 5, scope: !111)
!164 = !DILocation(line: 87, column: 11, scope: !111)
!165 = !DILocation(line: 89, column: 7, scope: !166)
!166 = distinct !DILexicalBlock(scope: !111, file: !1, line: 89, column: 6)
!167 = !DILocation(line: 89, column: 10, scope: !166)
!168 = !DILocation(line: 89, column: 6, scope: !111)
!169 = !DILocation(line: 90, column: 3, scope: !166)
!170 = !DILocation(line: 91, column: 2, scope: !111)
!171 = !DILocation(line: 91, column: 5, scope: !111)
!172 = !DILocation(line: 91, column: 11, scope: !111)
!173 = !DILocation(line: 92, column: 14, scope: !111)
!174 = !DILocation(line: 92, column: 2, scope: !111)
!175 = !DILocation(line: 92, column: 5, scope: !111)
!176 = !DILocation(line: 92, column: 11, scope: !111)
!177 = !DILocation(line: 94, column: 11, scope: !178)
!178 = distinct !DILexicalBlock(scope: !111, file: !1, line: 94, column: 2)
!179 = !DILocation(line: 94, column: 15, scope: !178)
!180 = !DILocation(line: 94, column: 9, scope: !178)
!181 = !DILocation(line: 94, column: 7, scope: !178)
!182 = !DILocation(line: 94, column: 20, scope: !183)
!183 = distinct !DILexicalBlock(scope: !178, file: !1, line: 94, column: 2)
!184 = !DILocation(line: 94, column: 25, scope: !183)
!185 = !DILocation(line: 94, column: 22, scope: !183)
!186 = !DILocation(line: 94, column: 2, scope: !178)
!187 = !DILocation(line: 95, column: 12, scope: !183)
!188 = !DILocation(line: 95, column: 15, scope: !183)
!189 = !DILocation(line: 95, column: 17, scope: !183)
!190 = !DILocation(line: 95, column: 25, scope: !183)
!191 = !DILocation(line: 95, column: 23, scope: !183)
!192 = !DILocation(line: 95, column: 3, scope: !183)
!193 = !DILocation(line: 95, column: 6, scope: !183)
!194 = !DILocation(line: 95, column: 10, scope: !183)
!195 = !DILocation(line: 94, column: 31, scope: !183)
!196 = !DILocation(line: 94, column: 2, scope: !183)
!197 = distinct !{!197, !186, !198}
!198 = !DILocation(line: 95, column: 25, scope: !178)
!199 = !DILocation(line: 96, column: 10, scope: !111)
!200 = !DILocation(line: 96, column: 2, scope: !111)
!201 = distinct !DISubprogram(name: "imatrix", scope: !1, file: !1, line: 99, type: !202, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!202 = !DISubroutineType(types: !203)
!203 = !{!10, !8, !8, !8, !8}
!204 = !DILocalVariable(name: "nrl", arg: 1, scope: !201, file: !1, line: 99, type: !8)
!205 = !DILocation(line: 99, column: 20, scope: !201)
!206 = !DILocalVariable(name: "nrh", arg: 2, scope: !201, file: !1, line: 99, type: !8)
!207 = !DILocation(line: 99, column: 29, scope: !201)
!208 = !DILocalVariable(name: "ncl", arg: 3, scope: !201, file: !1, line: 99, type: !8)
!209 = !DILocation(line: 99, column: 38, scope: !201)
!210 = !DILocalVariable(name: "nch", arg: 4, scope: !201, file: !1, line: 99, type: !8)
!211 = !DILocation(line: 99, column: 47, scope: !201)
!212 = !DILocalVariable(name: "i", scope: !201, file: !1, line: 104, type: !8)
!213 = !DILocation(line: 104, column: 6, scope: !201)
!214 = !DILocalVariable(name: "nrow", scope: !201, file: !1, line: 105, type: !8)
!215 = !DILocation(line: 105, column: 6, scope: !201)
!216 = !DILocalVariable(name: "ncol", scope: !201, file: !1, line: 105, type: !8)
!217 = !DILocation(line: 105, column: 12, scope: !201)
!218 = !DILocalVariable(name: "m", scope: !201, file: !1, line: 106, type: !10)
!219 = !DILocation(line: 106, column: 8, scope: !201)
!220 = !DILocation(line: 108, column: 9, scope: !201)
!221 = !DILocation(line: 108, column: 15, scope: !201)
!222 = !DILocation(line: 108, column: 13, scope: !201)
!223 = !DILocation(line: 108, column: 19, scope: !201)
!224 = !DILocation(line: 108, column: 7, scope: !201)
!225 = !DILocation(line: 109, column: 9, scope: !201)
!226 = !DILocation(line: 109, column: 15, scope: !201)
!227 = !DILocation(line: 109, column: 13, scope: !201)
!228 = !DILocation(line: 109, column: 19, scope: !201)
!229 = !DILocation(line: 109, column: 7, scope: !201)
!230 = !DILocation(line: 111, column: 26, scope: !201)
!231 = !DILocation(line: 111, column: 31, scope: !201)
!232 = !DILocation(line: 111, column: 24, scope: !201)
!233 = !DILocation(line: 111, column: 42, scope: !201)
!234 = !DILocation(line: 111, column: 16, scope: !201)
!235 = !DILocation(line: 111, column: 6, scope: !201)
!236 = !DILocation(line: 111, column: 4, scope: !201)
!237 = !DILocation(line: 112, column: 7, scope: !238)
!238 = distinct !DILexicalBlock(scope: !201, file: !1, line: 112, column: 6)
!239 = !DILocation(line: 112, column: 6, scope: !201)
!240 = !DILocation(line: 113, column: 3, scope: !238)
!241 = !DILocation(line: 114, column: 4, scope: !201)
!242 = !DILocation(line: 115, column: 7, scope: !201)
!243 = !DILocation(line: 115, column: 4, scope: !201)
!244 = !DILocation(line: 118, column: 13, scope: !201)
!245 = !DILocation(line: 118, column: 20, scope: !201)
!246 = !DILocation(line: 118, column: 18, scope: !201)
!247 = !DILocation(line: 118, column: 25, scope: !201)
!248 = !DILocation(line: 118, column: 11, scope: !201)
!249 = !DILocation(line: 118, column: 36, scope: !201)
!250 = !DILocation(line: 118, column: 3, scope: !201)
!251 = !DILocation(line: 117, column: 13, scope: !201)
!252 = !DILocation(line: 117, column: 2, scope: !201)
!253 = !DILocation(line: 117, column: 5, scope: !201)
!254 = !DILocation(line: 117, column: 11, scope: !201)
!255 = !DILocation(line: 119, column: 7, scope: !256)
!256 = distinct !DILexicalBlock(scope: !201, file: !1, line: 119, column: 6)
!257 = !DILocation(line: 119, column: 10, scope: !256)
!258 = !DILocation(line: 119, column: 6, scope: !201)
!259 = !DILocation(line: 120, column: 3, scope: !256)
!260 = !DILocation(line: 121, column: 2, scope: !201)
!261 = !DILocation(line: 121, column: 5, scope: !201)
!262 = !DILocation(line: 121, column: 11, scope: !201)
!263 = !DILocation(line: 122, column: 14, scope: !201)
!264 = !DILocation(line: 122, column: 2, scope: !201)
!265 = !DILocation(line: 122, column: 5, scope: !201)
!266 = !DILocation(line: 122, column: 11, scope: !201)
!267 = !DILocation(line: 124, column: 11, scope: !268)
!268 = distinct !DILexicalBlock(scope: !201, file: !1, line: 124, column: 2)
!269 = !DILocation(line: 124, column: 15, scope: !268)
!270 = !DILocation(line: 124, column: 9, scope: !268)
!271 = !DILocation(line: 124, column: 7, scope: !268)
!272 = !DILocation(line: 124, column: 20, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !1, line: 124, column: 2)
!274 = !DILocation(line: 124, column: 25, scope: !273)
!275 = !DILocation(line: 124, column: 22, scope: !273)
!276 = !DILocation(line: 124, column: 2, scope: !268)
!277 = !DILocation(line: 125, column: 12, scope: !273)
!278 = !DILocation(line: 125, column: 15, scope: !273)
!279 = !DILocation(line: 125, column: 17, scope: !273)
!280 = !DILocation(line: 125, column: 25, scope: !273)
!281 = !DILocation(line: 125, column: 23, scope: !273)
!282 = !DILocation(line: 125, column: 3, scope: !273)
!283 = !DILocation(line: 125, column: 6, scope: !273)
!284 = !DILocation(line: 125, column: 10, scope: !273)
!285 = !DILocation(line: 124, column: 31, scope: !273)
!286 = !DILocation(line: 124, column: 2, scope: !273)
!287 = distinct !{!287, !276, !288}
!288 = !DILocation(line: 125, column: 25, scope: !268)
!289 = !DILocation(line: 126, column: 10, scope: !201)
!290 = !DILocation(line: 126, column: 2, scope: !201)
!291 = distinct !DISubprogram(name: "free_vector", scope: !1, file: !1, line: 129, type: !292, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !4, !29, !29}
!294 = !DILocalVariable(name: "v", arg: 1, scope: !291, file: !1, line: 129, type: !4)
!295 = !DILocation(line: 129, column: 27, scope: !291)
!296 = !DILocalVariable(name: "nl", arg: 2, scope: !291, file: !1, line: 129, type: !29)
!297 = !DILocation(line: 129, column: 37, scope: !291)
!298 = !DILocalVariable(name: "nh", arg: 3, scope: !291, file: !1, line: 129, type: !29)
!299 = !DILocation(line: 129, column: 48, scope: !291)
!300 = !DILocation(line: 132, column: 20, scope: !291)
!301 = !DILocation(line: 132, column: 24, scope: !291)
!302 = !DILocation(line: 132, column: 22, scope: !291)
!303 = !DILocation(line: 132, column: 8, scope: !291)
!304 = !DILocation(line: 132, column: 2, scope: !291)
!305 = !DILocation(line: 133, column: 1, scope: !291)
!306 = distinct !DISubprogram(name: "free_ivector", scope: !1, file: !1, line: 135, type: !307, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !7, !8, !8}
!309 = !DILocalVariable(name: "v", arg: 1, scope: !306, file: !1, line: 135, type: !7)
!310 = !DILocation(line: 135, column: 25, scope: !306)
!311 = !DILocalVariable(name: "nl", arg: 2, scope: !306, file: !1, line: 135, type: !8)
!312 = !DILocation(line: 135, column: 32, scope: !306)
!313 = !DILocalVariable(name: "nh", arg: 3, scope: !306, file: !1, line: 135, type: !8)
!314 = !DILocation(line: 135, column: 40, scope: !306)
!315 = !DILocation(line: 142, column: 20, scope: !306)
!316 = !DILocation(line: 142, column: 24, scope: !306)
!317 = !DILocation(line: 142, column: 22, scope: !306)
!318 = !DILocation(line: 142, column: 8, scope: !306)
!319 = !DILocation(line: 142, column: 2, scope: !306)
!320 = !DILocation(line: 143, column: 1, scope: !306)
!321 = distinct !DISubprogram(name: "free_matrix", scope: !1, file: !1, line: 145, type: !322, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !9, !8, !8, !8, !8}
!324 = !DILocalVariable(name: "m", arg: 1, scope: !321, file: !1, line: 145, type: !9)
!325 = !DILocation(line: 145, column: 28, scope: !321)
!326 = !DILocalVariable(name: "nrl", arg: 2, scope: !321, file: !1, line: 145, type: !8)
!327 = !DILocation(line: 145, column: 35, scope: !321)
!328 = !DILocalVariable(name: "nrh", arg: 3, scope: !321, file: !1, line: 145, type: !8)
!329 = !DILocation(line: 145, column: 44, scope: !321)
!330 = !DILocalVariable(name: "ncl", arg: 4, scope: !321, file: !1, line: 145, type: !8)
!331 = !DILocation(line: 145, column: 53, scope: !321)
!332 = !DILocalVariable(name: "nch", arg: 5, scope: !321, file: !1, line: 145, type: !8)
!333 = !DILocation(line: 145, column: 62, scope: !321)
!334 = !DILocation(line: 151, column: 20, scope: !321)
!335 = !DILocation(line: 151, column: 23, scope: !321)
!336 = !DILocation(line: 151, column: 31, scope: !321)
!337 = !DILocation(line: 151, column: 29, scope: !321)
!338 = !DILocation(line: 151, column: 35, scope: !321)
!339 = !DILocation(line: 151, column: 8, scope: !321)
!340 = !DILocation(line: 151, column: 2, scope: !321)
!341 = !DILocation(line: 152, column: 20, scope: !321)
!342 = !DILocation(line: 152, column: 24, scope: !321)
!343 = !DILocation(line: 152, column: 22, scope: !321)
!344 = !DILocation(line: 152, column: 28, scope: !321)
!345 = !DILocation(line: 152, column: 8, scope: !321)
!346 = !DILocation(line: 152, column: 2, scope: !321)
!347 = !DILocation(line: 153, column: 1, scope: !321)
!348 = distinct !DISubprogram(name: "free_imatrix", scope: !1, file: !1, line: 155, type: !349, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !10, !8, !8, !8, !8}
!351 = !DILocalVariable(name: "m", arg: 1, scope: !348, file: !1, line: 155, type: !10)
!352 = !DILocation(line: 155, column: 26, scope: !348)
!353 = !DILocalVariable(name: "nrl", arg: 2, scope: !348, file: !1, line: 155, type: !8)
!354 = !DILocation(line: 155, column: 33, scope: !348)
!355 = !DILocalVariable(name: "nrh", arg: 3, scope: !348, file: !1, line: 155, type: !8)
!356 = !DILocation(line: 155, column: 42, scope: !348)
!357 = !DILocalVariable(name: "ncl", arg: 4, scope: !348, file: !1, line: 155, type: !8)
!358 = !DILocation(line: 155, column: 51, scope: !348)
!359 = !DILocalVariable(name: "nch", arg: 5, scope: !348, file: !1, line: 155, type: !8)
!360 = !DILocation(line: 155, column: 60, scope: !348)
!361 = !DILocation(line: 161, column: 20, scope: !348)
!362 = !DILocation(line: 161, column: 23, scope: !348)
!363 = !DILocation(line: 161, column: 31, scope: !348)
!364 = !DILocation(line: 161, column: 29, scope: !348)
!365 = !DILocation(line: 161, column: 35, scope: !348)
!366 = !DILocation(line: 161, column: 8, scope: !348)
!367 = !DILocation(line: 161, column: 2, scope: !348)
!368 = !DILocation(line: 162, column: 20, scope: !348)
!369 = !DILocation(line: 162, column: 24, scope: !348)
!370 = !DILocation(line: 162, column: 22, scope: !348)
!371 = !DILocation(line: 162, column: 28, scope: !348)
!372 = !DILocation(line: 162, column: 8, scope: !348)
!373 = !DILocation(line: 162, column: 2, scope: !348)
!374 = !DILocation(line: 163, column: 1, scope: !348)
