; ModuleID = 'loops.c'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @foo(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !7 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %5, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %5, metadata !14, metadata !DIExpression()), !dbg !28
  store float* %1, float** %6, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %6, metadata !15, metadata !DIExpression()), !dbg !29
  store float* %2, float** %7, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %7, metadata !16, metadata !DIExpression()), !dbg !30
  store i32 %3, i32* %8, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %8, metadata !17, metadata !DIExpression()), !dbg !33
  %12 = bitcast i32* %9 to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %9, metadata !18, metadata !DIExpression()), !dbg !35
  store i32 0, i32* %9, align 4, !dbg !35, !tbaa !31
  br label %13, !dbg !34

13:                                               ; preds = %89, %4
  %14 = load i32, i32* %9, align 4, !dbg !36, !tbaa !31
  %15 = load i32, i32* %8, align 4, !dbg !37, !tbaa !31
  %16 = icmp slt i32 %14, %15, !dbg !38
  br i1 %16, label %19, label %17, !dbg !39

17:                                               ; preds = %13
  store i32 2, i32* %10, align 4
  %18 = bitcast i32* %9 to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3, !dbg !40
  br label %92

19:                                               ; preds = %13
  %20 = bitcast i32* %11 to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %11, metadata !20, metadata !DIExpression()), !dbg !42
  store i32 0, i32* %11, align 4, !dbg !42, !tbaa !31
  br label %21, !dbg !41

21:                                               ; preds = %85, %19
  %22 = load i32, i32* %11, align 4, !dbg !43, !tbaa !31
  %23 = load i32, i32* %8, align 4, !dbg !45, !tbaa !31
  %24 = icmp slt i32 %22, %23, !dbg !46
  br i1 %24, label %27, label %25, !dbg !47

25:                                               ; preds = %21
  store i32 5, i32* %10, align 4
  %26 = bitcast i32* %11 to i8*, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #3, !dbg !48
  br label %88

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4, !dbg !49, !tbaa !31
  %29 = icmp eq i32 %28, 1, !dbg !52
  br i1 %29, label %30, label %46, !dbg !53

30:                                               ; preds = %27
  %31 = load float*, float** %6, align 8, !dbg !54, !tbaa !24
  %32 = load i32, i32* %11, align 4, !dbg !56, !tbaa !31
  %33 = sext i32 %32 to i64, !dbg !54
  %34 = getelementptr inbounds float, float* %31, i64 %33, !dbg !54
  %35 = load float, float* %34, align 4, !dbg !54, !tbaa !57
  %36 = load float*, float** %7, align 8, !dbg !59, !tbaa !24
  %37 = load i32, i32* %11, align 4, !dbg !60, !tbaa !31
  %38 = sext i32 %37 to i64, !dbg !59
  %39 = getelementptr inbounds float, float* %36, i64 %38, !dbg !59
  %40 = load float, float* %39, align 4, !dbg !59, !tbaa !57
  %41 = fadd float %35, %40, !dbg !61
  %42 = load float*, float** %5, align 8, !dbg !62, !tbaa !24
  %43 = load i32, i32* %9, align 4, !dbg !63, !tbaa !31
  %44 = sext i32 %43 to i64, !dbg !62
  %45 = getelementptr inbounds float, float* %42, i64 %44, !dbg !62
  store float %41, float* %45, align 4, !dbg !64, !tbaa !57
  br label %46, !dbg !65

46:                                               ; preds = %30, %27
  %47 = load i32, i32* %8, align 4, !dbg !66, !tbaa !31
  %48 = icmp sgt i32 %47, 5, !dbg !68
  br i1 %48, label %49, label %65, !dbg !69

49:                                               ; preds = %46
  %50 = load float*, float** %6, align 8, !dbg !70, !tbaa !24
  %51 = load i32, i32* %11, align 4, !dbg !72, !tbaa !31
  %52 = sext i32 %51 to i64, !dbg !70
  %53 = getelementptr inbounds float, float* %50, i64 %52, !dbg !70
  %54 = load float, float* %53, align 4, !dbg !70, !tbaa !57
  %55 = load float*, float** %7, align 8, !dbg !73, !tbaa !24
  %56 = load i32, i32* %11, align 4, !dbg !74, !tbaa !31
  %57 = sext i32 %56 to i64, !dbg !73
  %58 = getelementptr inbounds float, float* %55, i64 %57, !dbg !73
  %59 = load float, float* %58, align 4, !dbg !73, !tbaa !57
  %60 = fsub float %54, %59, !dbg !75
  %61 = load float*, float** %5, align 8, !dbg !76, !tbaa !24
  %62 = load i32, i32* %9, align 4, !dbg !77, !tbaa !31
  %63 = sext i32 %62 to i64, !dbg !76
  %64 = getelementptr inbounds float, float* %61, i64 %63, !dbg !76
  store float %60, float* %64, align 4, !dbg !78, !tbaa !57
  br label %65, !dbg !79

65:                                               ; preds = %49, %46
  %66 = load i32, i32* %8, align 4, !dbg !80, !tbaa !31
  %67 = icmp ne i32 %66, 0, !dbg !80
  br i1 %67, label %68, label %84, !dbg !82

68:                                               ; preds = %65
  %69 = load float*, float** %6, align 8, !dbg !83, !tbaa !24
  %70 = load i32, i32* %11, align 4, !dbg !85, !tbaa !31
  %71 = sext i32 %70 to i64, !dbg !83
  %72 = getelementptr inbounds float, float* %69, i64 %71, !dbg !83
  %73 = load float, float* %72, align 4, !dbg !83, !tbaa !57
  %74 = load float*, float** %7, align 8, !dbg !86, !tbaa !24
  %75 = load i32, i32* %11, align 4, !dbg !87, !tbaa !31
  %76 = sext i32 %75 to i64, !dbg !86
  %77 = getelementptr inbounds float, float* %74, i64 %76, !dbg !86
  %78 = load float, float* %77, align 4, !dbg !86, !tbaa !57
  %79 = fmul float %73, %78, !dbg !88
  %80 = load float*, float** %5, align 8, !dbg !89, !tbaa !24
  %81 = load i32, i32* %9, align 4, !dbg !90, !tbaa !31
  %82 = sext i32 %81 to i64, !dbg !89
  %83 = getelementptr inbounds float, float* %80, i64 %82, !dbg !89
  store float %79, float* %83, align 4, !dbg !91, !tbaa !57
  br label %84, !dbg !92

84:                                               ; preds = %68, %65
  br label %85, !dbg !93

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4, !dbg !94, !tbaa !31
  %87 = add nsw i32 %86, 1, !dbg !94
  store i32 %87, i32* %11, align 4, !dbg !94, !tbaa !31
  br label %21, !dbg !48, !llvm.loop !95

88:                                               ; preds = %25
  br label %89, !dbg !97

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4, !dbg !98, !tbaa !31
  %91 = add nsw i32 %90, 1, !dbg !98
  store i32 %91, i32* %9, align 4, !dbg !98, !tbaa !31
  br label %13, !dbg !40, !llvm.loop !99

92:                                               ; preds = %17
  ret i32 0, !dbg !101
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @bar(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !102 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %5, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %5, metadata !104, metadata !DIExpression()), !dbg !115
  store float* %1, float** %6, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %6, metadata !105, metadata !DIExpression()), !dbg !116
  store float* %2, float** %7, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %7, metadata !106, metadata !DIExpression()), !dbg !117
  store i32 %3, i32* %8, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %8, metadata !107, metadata !DIExpression()), !dbg !118
  %12 = bitcast i32* %9 to i8*, !dbg !119
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !119
  call void @llvm.dbg.declare(metadata i32* %9, metadata !108, metadata !DIExpression()), !dbg !120
  store i32 0, i32* %9, align 4, !dbg !120, !tbaa !31
  br label %13, !dbg !119

13:                                               ; preds = %35, %4
  %14 = load i32, i32* %9, align 4, !dbg !121, !tbaa !31
  %15 = load i32, i32* %8, align 4, !dbg !123, !tbaa !31
  %16 = icmp slt i32 %14, %15, !dbg !124
  br i1 %16, label %19, label %17, !dbg !125

17:                                               ; preds = %13
  %18 = bitcast i32* %9 to i8*, !dbg !126
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3, !dbg !126
  br label %38

19:                                               ; preds = %13
  %20 = load float*, float** %5, align 8, !dbg !127, !tbaa !24
  %21 = load i32, i32* %9, align 4, !dbg !129, !tbaa !31
  %22 = sext i32 %21 to i64, !dbg !127
  %23 = getelementptr inbounds float, float* %20, i64 %22, !dbg !127
  %24 = load float, float* %23, align 4, !dbg !127, !tbaa !57
  %25 = load float*, float** %6, align 8, !dbg !130, !tbaa !24
  %26 = load i32, i32* %9, align 4, !dbg !131, !tbaa !31
  %27 = sext i32 %26 to i64, !dbg !130
  %28 = getelementptr inbounds float, float* %25, i64 %27, !dbg !130
  %29 = load float, float* %28, align 4, !dbg !130, !tbaa !57
  %30 = fmul float %24, %29, !dbg !132
  %31 = load float*, float** %5, align 8, !dbg !133, !tbaa !24
  %32 = load i32, i32* %9, align 4, !dbg !134, !tbaa !31
  %33 = sext i32 %32 to i64, !dbg !133
  %34 = getelementptr inbounds float, float* %31, i64 %33, !dbg !133
  store float %30, float* %34, align 4, !dbg !135, !tbaa !57
  br label %35, !dbg !136

35:                                               ; preds = %19
  %36 = load i32, i32* %9, align 4, !dbg !137, !tbaa !31
  %37 = add nsw i32 %36, 1, !dbg !137
  store i32 %37, i32* %9, align 4, !dbg !137, !tbaa !31
  br label %13, !dbg !126, !llvm.loop !138

38:                                               ; preds = %17
  %39 = bitcast i32* %10 to i8*, !dbg !140
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %39) #3, !dbg !140
  call void @llvm.dbg.declare(metadata i32* %10, metadata !110, metadata !DIExpression()), !dbg !141
  store i32 0, i32* %10, align 4, !dbg !141, !tbaa !31
  br label %40, !dbg !140

40:                                               ; preds = %65, %38
  %41 = load i32, i32* %10, align 4, !dbg !142, !tbaa !31
  %42 = load i32, i32* %8, align 4, !dbg !143, !tbaa !31
  %43 = icmp slt i32 %41, %42, !dbg !144
  br i1 %43, label %46, label %44, !dbg !145

44:                                               ; preds = %40
  %45 = bitcast i32* %10 to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #3, !dbg !146
  br label %68

46:                                               ; preds = %40
  %47 = load float*, float** %5, align 8, !dbg !147, !tbaa !24
  %48 = load i32, i32* %10, align 4, !dbg !148, !tbaa !31
  %49 = sext i32 %48 to i64, !dbg !147
  %50 = getelementptr inbounds float, float* %47, i64 %49, !dbg !147
  store float 0.000000e+00, float* %50, align 4, !dbg !149, !tbaa !57
  %51 = bitcast i32* %11 to i8*, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %51) #3, !dbg !150
  call void @llvm.dbg.declare(metadata i32* %11, metadata !112, metadata !DIExpression()), !dbg !151
  %52 = load float*, float** %6, align 8, !dbg !152, !tbaa !24
  %53 = load i32, i32* %10, align 4, !dbg !153, !tbaa !31
  %54 = sext i32 %53 to i64, !dbg !152
  %55 = getelementptr inbounds float, float* %52, i64 %54, !dbg !152
  %56 = load float, float* %55, align 4, !dbg !152, !tbaa !57
  %57 = load float*, float** %7, align 8, !dbg !154, !tbaa !24
  %58 = load i32, i32* %10, align 4, !dbg !155, !tbaa !31
  %59 = sext i32 %58 to i64, !dbg !154
  %60 = getelementptr inbounds float, float* %57, i64 %59, !dbg !154
  %61 = load float, float* %60, align 4, !dbg !154, !tbaa !57
  %62 = fadd float %56, %61, !dbg !156
  %63 = fptosi float %62 to i32, !dbg !152
  store i32 %63, i32* %11, align 4, !dbg !151, !tbaa !31
  %64 = bitcast i32* %11 to i8*, !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #3, !dbg !157
  br label %65, !dbg !158

65:                                               ; preds = %46
  %66 = load i32, i32* %10, align 4, !dbg !159, !tbaa !31
  %67 = add nsw i32 %66, 1, !dbg !159
  store i32 %67, i32* %10, align 4, !dbg !159, !tbaa !31
  br label %40, !dbg !146, !llvm.loop !160

68:                                               ; preds = %44
  ret i32 0, !dbg !162
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bar2(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !163 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store float* %0, float** %5, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %5, metadata !165, metadata !DIExpression()), !dbg !171
  store float* %1, float** %6, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %6, metadata !166, metadata !DIExpression()), !dbg !172
  store float* %2, float** %7, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %7, metadata !167, metadata !DIExpression()), !dbg !173
  store i32 %3, i32* %8, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %8, metadata !168, metadata !DIExpression()), !dbg !174
  %10 = bitcast i32* %9 to i8*, !dbg !175
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !175
  call void @llvm.dbg.declare(metadata i32* %9, metadata !169, metadata !DIExpression()), !dbg !176
  store i32 0, i32* %9, align 4, !dbg !176, !tbaa !31
  br label %11, !dbg !175

11:                                               ; preds = %47, %4
  %12 = load i32, i32* %9, align 4, !dbg !177, !tbaa !31
  %13 = load i32, i32* %8, align 4, !dbg !179, !tbaa !31
  %14 = icmp slt i32 %12, %13, !dbg !180
  br i1 %14, label %17, label %15, !dbg !181

15:                                               ; preds = %11
  %16 = bitcast i32* %9 to i8*, !dbg !182
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3, !dbg !182
  br label %50

17:                                               ; preds = %11
  %18 = load float*, float** %6, align 8, !dbg !183, !tbaa !24
  %19 = load i32, i32* %9, align 4, !dbg !185, !tbaa !31
  %20 = sext i32 %19 to i64, !dbg !183
  %21 = getelementptr inbounds float, float* %18, i64 %20, !dbg !183
  %22 = load float, float* %21, align 4, !dbg !183, !tbaa !57
  %23 = load float*, float** %7, align 8, !dbg !186, !tbaa !24
  %24 = load i32, i32* %9, align 4, !dbg !187, !tbaa !31
  %25 = sext i32 %24 to i64, !dbg !186
  %26 = getelementptr inbounds float, float* %23, i64 %25, !dbg !186
  %27 = load float, float* %26, align 4, !dbg !186, !tbaa !57
  %28 = fmul float %22, %27, !dbg !188
  %29 = load float*, float** %5, align 8, !dbg !189, !tbaa !24
  %30 = load i32, i32* %9, align 4, !dbg !190, !tbaa !31
  %31 = sext i32 %30 to i64, !dbg !189
  %32 = getelementptr inbounds float, float* %29, i64 %31, !dbg !189
  store float %28, float* %32, align 4, !dbg !191, !tbaa !57
  %33 = load i32, i32* %8, align 4, !dbg !192, !tbaa !31
  %34 = icmp ne i32 %33, 0, !dbg !192
  br i1 %34, label %35, label %46, !dbg !194

35:                                               ; preds = %17
  %36 = load float*, float** %5, align 8, !dbg !195, !tbaa !24
  %37 = load i32, i32* %9, align 4, !dbg !197, !tbaa !31
  %38 = sub nsw i32 %37, 1, !dbg !198
  %39 = sext i32 %38 to i64, !dbg !195
  %40 = getelementptr inbounds float, float* %36, i64 %39, !dbg !195
  %41 = load float, float* %40, align 4, !dbg !195, !tbaa !57
  %42 = load float*, float** %7, align 8, !dbg !199, !tbaa !24
  %43 = load i32, i32* %9, align 4, !dbg !200, !tbaa !31
  %44 = sext i32 %43 to i64, !dbg !199
  %45 = getelementptr inbounds float, float* %42, i64 %44, !dbg !199
  store float %41, float* %45, align 4, !dbg !201, !tbaa !57
  br label %46, !dbg !202

46:                                               ; preds = %35, %17
  br label %47, !dbg !203

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4, !dbg !204, !tbaa !31
  %49 = add nsw i32 %48, 1, !dbg !204
  store i32 %49, i32* %9, align 4, !dbg !204, !tbaa !31
  br label %11, !dbg !182, !llvm.loop !205

50:                                               ; preds = %15
  ret i32 0, !dbg !207
}

; Function Attrs: nounwind uwtable
define dso_local i32 @test(i32* %0, float* %1, float* %2, float* %3, i32 %4) #0 !dbg !208 {
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %6, metadata !213, metadata !DIExpression()), !dbg !220
  store float* %1, float** %7, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %7, metadata !214, metadata !DIExpression()), !dbg !221
  store float* %2, float** %8, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %8, metadata !215, metadata !DIExpression()), !dbg !222
  store float* %3, float** %9, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %9, metadata !216, metadata !DIExpression()), !dbg !223
  store i32 %4, i32* %10, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %10, metadata !217, metadata !DIExpression()), !dbg !224
  %12 = bitcast i32* %11 to i8*, !dbg !225
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !225
  call void @llvm.dbg.declare(metadata i32* %11, metadata !218, metadata !DIExpression()), !dbg !226
  store i32 0, i32* %11, align 4, !dbg !226, !tbaa !31
  br label %13, !dbg !225

13:                                               ; preds = %32, %5
  %14 = load i32, i32* %11, align 4, !dbg !227, !tbaa !31
  %15 = icmp slt i32 %14, 10, !dbg !229
  br i1 %15, label %18, label %16, !dbg !230

16:                                               ; preds = %13
  %17 = bitcast i32* %11 to i8*, !dbg !231
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #3, !dbg !231
  br label %35

18:                                               ; preds = %13
  %19 = load float*, float** %7, align 8, !dbg !232, !tbaa !24
  %20 = load float*, float** %8, align 8, !dbg !234, !tbaa !24
  %21 = load float*, float** %9, align 8, !dbg !235, !tbaa !24
  %22 = load i32, i32* %10, align 4, !dbg !236, !tbaa !31
  %23 = call i32 @bar2(float* %19, float* %20, float* %21, i32 %22), !dbg !237
  %24 = load i32*, i32** %6, align 8, !dbg !238, !tbaa !24
  %25 = load i32, i32* %24, align 4, !dbg !240, !tbaa !31
  %26 = icmp ne i32 %25, 0, !dbg !240
  br i1 %26, label %27, label %29, !dbg !241

27:                                               ; preds = %18
  %28 = load i32*, i32** %6, align 8, !dbg !242, !tbaa !24
  store i32 1, i32* %28, align 4, !dbg !244, !tbaa !31
  br label %31, !dbg !245

29:                                               ; preds = %18
  %30 = load i32*, i32** %6, align 8, !dbg !246, !tbaa !24
  store i32 0, i32* %30, align 4, !dbg !248, !tbaa !31
  br label %31

31:                                               ; preds = %29, %27
  br label %32, !dbg !249

32:                                               ; preds = %31
  %33 = load i32, i32* %11, align 4, !dbg !250, !tbaa !31
  %34 = add nsw i32 %33, 1, !dbg !250
  store i32 %34, i32* %11, align 4, !dbg !250, !tbaa !31
  br label %13, !dbg !231, !llvm.loop !251

35:                                               ; preds = %16
  ret i32 0, !dbg !253
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "loops.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/ALC/test")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !11, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !{!14, !15, !16, !17, !18, !20}
!14 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 1, type: !11)
!15 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 1, type: !11)
!16 = !DILocalVariable(name: "c", arg: 3, scope: !7, file: !1, line: 1, type: !11)
!17 = !DILocalVariable(name: "n", arg: 4, scope: !7, file: !1, line: 1, type: !10)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 2, type: !10)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 2, column: 5)
!20 = !DILocalVariable(name: "j", scope: !21, file: !1, line: 3, type: !10)
!21 = distinct !DILexicalBlock(scope: !22, file: !1, line: 3, column: 9)
!22 = distinct !DILexicalBlock(scope: !23, file: !1, line: 2, column: 33)
!23 = distinct !DILexicalBlock(scope: !19, file: !1, line: 2, column: 5)
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 1, column: 16, scope: !7)
!29 = !DILocation(line: 1, column: 26, scope: !7)
!30 = !DILocation(line: 1, column: 36, scope: !7)
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !26, i64 0}
!33 = !DILocation(line: 1, column: 43, scope: !7)
!34 = !DILocation(line: 2, column: 10, scope: !19)
!35 = !DILocation(line: 2, column: 14, scope: !19)
!36 = !DILocation(line: 2, column: 21, scope: !23)
!37 = !DILocation(line: 2, column: 25, scope: !23)
!38 = !DILocation(line: 2, column: 23, scope: !23)
!39 = !DILocation(line: 2, column: 5, scope: !19)
!40 = !DILocation(line: 2, column: 5, scope: !23)
!41 = !DILocation(line: 3, column: 14, scope: !21)
!42 = !DILocation(line: 3, column: 18, scope: !21)
!43 = !DILocation(line: 3, column: 25, scope: !44)
!44 = distinct !DILexicalBlock(scope: !21, file: !1, line: 3, column: 9)
!45 = !DILocation(line: 3, column: 29, scope: !44)
!46 = !DILocation(line: 3, column: 27, scope: !44)
!47 = !DILocation(line: 3, column: 9, scope: !21)
!48 = !DILocation(line: 3, column: 9, scope: !44)
!49 = !DILocation(line: 4, column: 16, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 4, column: 16)
!51 = distinct !DILexicalBlock(scope: !44, file: !1, line: 3, column: 37)
!52 = !DILocation(line: 4, column: 18, scope: !50)
!53 = !DILocation(line: 4, column: 16, scope: !51)
!54 = !DILocation(line: 5, column: 24, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 4, column: 23)
!56 = !DILocation(line: 5, column: 26, scope: !55)
!57 = !{!58, !58, i64 0}
!58 = !{!"float", !26, i64 0}
!59 = !DILocation(line: 5, column: 31, scope: !55)
!60 = !DILocation(line: 5, column: 33, scope: !55)
!61 = !DILocation(line: 5, column: 29, scope: !55)
!62 = !DILocation(line: 5, column: 17, scope: !55)
!63 = !DILocation(line: 5, column: 19, scope: !55)
!64 = !DILocation(line: 5, column: 22, scope: !55)
!65 = !DILocation(line: 6, column: 13, scope: !55)
!66 = !DILocation(line: 7, column: 17, scope: !67)
!67 = distinct !DILexicalBlock(scope: !51, file: !1, line: 7, column: 17)
!68 = !DILocation(line: 7, column: 19, scope: !67)
!69 = !DILocation(line: 7, column: 17, scope: !51)
!70 = !DILocation(line: 8, column: 24, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 7, column: 23)
!72 = !DILocation(line: 8, column: 26, scope: !71)
!73 = !DILocation(line: 8, column: 31, scope: !71)
!74 = !DILocation(line: 8, column: 33, scope: !71)
!75 = !DILocation(line: 8, column: 29, scope: !71)
!76 = !DILocation(line: 8, column: 17, scope: !71)
!77 = !DILocation(line: 8, column: 19, scope: !71)
!78 = !DILocation(line: 8, column: 22, scope: !71)
!79 = !DILocation(line: 9, column: 13, scope: !71)
!80 = !DILocation(line: 10, column: 16, scope: !81)
!81 = distinct !DILexicalBlock(scope: !51, file: !1, line: 10, column: 16)
!82 = !DILocation(line: 10, column: 16, scope: !51)
!83 = !DILocation(line: 11, column: 24, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 10, column: 18)
!85 = !DILocation(line: 11, column: 26, scope: !84)
!86 = !DILocation(line: 11, column: 31, scope: !84)
!87 = !DILocation(line: 11, column: 33, scope: !84)
!88 = !DILocation(line: 11, column: 29, scope: !84)
!89 = !DILocation(line: 11, column: 17, scope: !84)
!90 = !DILocation(line: 11, column: 19, scope: !84)
!91 = !DILocation(line: 11, column: 22, scope: !84)
!92 = !DILocation(line: 12, column: 13, scope: !84)
!93 = !DILocation(line: 14, column: 9, scope: !51)
!94 = !DILocation(line: 3, column: 32, scope: !44)
!95 = distinct !{!95, !47, !96}
!96 = !DILocation(line: 14, column: 9, scope: !21)
!97 = !DILocation(line: 15, column: 5, scope: !22)
!98 = !DILocation(line: 2, column: 28, scope: !23)
!99 = distinct !{!99, !39, !100}
!100 = !DILocation(line: 15, column: 5, scope: !19)
!101 = !DILocation(line: 16, column: 5, scope: !7)
!102 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 19, type: !8, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!103 = !{!104, !105, !106, !107, !108, !110, !112}
!104 = !DILocalVariable(name: "a", arg: 1, scope: !102, file: !1, line: 19, type: !11)
!105 = !DILocalVariable(name: "b", arg: 2, scope: !102, file: !1, line: 19, type: !11)
!106 = !DILocalVariable(name: "c", arg: 3, scope: !102, file: !1, line: 19, type: !11)
!107 = !DILocalVariable(name: "n", arg: 4, scope: !102, file: !1, line: 19, type: !10)
!108 = !DILocalVariable(name: "i", scope: !109, file: !1, line: 20, type: !10)
!109 = distinct !DILexicalBlock(scope: !102, file: !1, line: 20, column: 5)
!110 = !DILocalVariable(name: "i", scope: !111, file: !1, line: 23, type: !10)
!111 = distinct !DILexicalBlock(scope: !102, file: !1, line: 23, column: 5)
!112 = !DILocalVariable(name: "d", scope: !113, file: !1, line: 25, type: !10)
!113 = distinct !DILexicalBlock(scope: !114, file: !1, line: 23, column: 33)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 23, column: 5)
!115 = !DILocation(line: 19, column: 16, scope: !102)
!116 = !DILocation(line: 19, column: 26, scope: !102)
!117 = !DILocation(line: 19, column: 36, scope: !102)
!118 = !DILocation(line: 19, column: 43, scope: !102)
!119 = !DILocation(line: 20, column: 10, scope: !109)
!120 = !DILocation(line: 20, column: 14, scope: !109)
!121 = !DILocation(line: 20, column: 21, scope: !122)
!122 = distinct !DILexicalBlock(scope: !109, file: !1, line: 20, column: 5)
!123 = !DILocation(line: 20, column: 25, scope: !122)
!124 = !DILocation(line: 20, column: 23, scope: !122)
!125 = !DILocation(line: 20, column: 5, scope: !109)
!126 = !DILocation(line: 20, column: 5, scope: !122)
!127 = !DILocation(line: 21, column: 14, scope: !128)
!128 = distinct !DILexicalBlock(scope: !122, file: !1, line: 20, column: 33)
!129 = !DILocation(line: 21, column: 16, scope: !128)
!130 = !DILocation(line: 21, column: 21, scope: !128)
!131 = !DILocation(line: 21, column: 23, scope: !128)
!132 = !DILocation(line: 21, column: 19, scope: !128)
!133 = !DILocation(line: 21, column: 7, scope: !128)
!134 = !DILocation(line: 21, column: 9, scope: !128)
!135 = !DILocation(line: 21, column: 12, scope: !128)
!136 = !DILocation(line: 22, column: 5, scope: !128)
!137 = !DILocation(line: 20, column: 28, scope: !122)
!138 = distinct !{!138, !125, !139}
!139 = !DILocation(line: 22, column: 5, scope: !109)
!140 = !DILocation(line: 23, column: 10, scope: !111)
!141 = !DILocation(line: 23, column: 14, scope: !111)
!142 = !DILocation(line: 23, column: 21, scope: !114)
!143 = !DILocation(line: 23, column: 25, scope: !114)
!144 = !DILocation(line: 23, column: 23, scope: !114)
!145 = !DILocation(line: 23, column: 5, scope: !111)
!146 = !DILocation(line: 23, column: 5, scope: !114)
!147 = !DILocation(line: 24, column: 7, scope: !113)
!148 = !DILocation(line: 24, column: 9, scope: !113)
!149 = !DILocation(line: 24, column: 12, scope: !113)
!150 = !DILocation(line: 25, column: 7, scope: !113)
!151 = !DILocation(line: 25, column: 11, scope: !113)
!152 = !DILocation(line: 25, column: 15, scope: !113)
!153 = !DILocation(line: 25, column: 17, scope: !113)
!154 = !DILocation(line: 25, column: 22, scope: !113)
!155 = !DILocation(line: 25, column: 24, scope: !113)
!156 = !DILocation(line: 25, column: 20, scope: !113)
!157 = !DILocation(line: 27, column: 5, scope: !114)
!158 = !DILocation(line: 27, column: 5, scope: !113)
!159 = !DILocation(line: 23, column: 28, scope: !114)
!160 = distinct !{!160, !145, !161}
!161 = !DILocation(line: 27, column: 5, scope: !111)
!162 = !DILocation(line: 28, column: 5, scope: !102)
!163 = distinct !DISubprogram(name: "bar2", scope: !1, file: !1, line: 32, type: !8, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !164)
!164 = !{!165, !166, !167, !168, !169}
!165 = !DILocalVariable(name: "a", arg: 1, scope: !163, file: !1, line: 32, type: !11)
!166 = !DILocalVariable(name: "b", arg: 2, scope: !163, file: !1, line: 32, type: !11)
!167 = !DILocalVariable(name: "c", arg: 3, scope: !163, file: !1, line: 32, type: !11)
!168 = !DILocalVariable(name: "n", arg: 4, scope: !163, file: !1, line: 32, type: !10)
!169 = !DILocalVariable(name: "i", scope: !170, file: !1, line: 34, type: !10)
!170 = distinct !DILexicalBlock(scope: !163, file: !1, line: 34, column: 6)
!171 = !DILocation(line: 32, column: 17, scope: !163)
!172 = !DILocation(line: 32, column: 27, scope: !163)
!173 = !DILocation(line: 32, column: 37, scope: !163)
!174 = !DILocation(line: 32, column: 44, scope: !163)
!175 = !DILocation(line: 34, column: 11, scope: !170)
!176 = !DILocation(line: 34, column: 15, scope: !170)
!177 = !DILocation(line: 34, column: 22, scope: !178)
!178 = distinct !DILexicalBlock(scope: !170, file: !1, line: 34, column: 6)
!179 = !DILocation(line: 34, column: 26, scope: !178)
!180 = !DILocation(line: 34, column: 24, scope: !178)
!181 = !DILocation(line: 34, column: 6, scope: !170)
!182 = !DILocation(line: 34, column: 6, scope: !178)
!183 = !DILocation(line: 35, column: 14, scope: !184)
!184 = distinct !DILexicalBlock(scope: !178, file: !1, line: 34, column: 34)
!185 = !DILocation(line: 35, column: 16, scope: !184)
!186 = !DILocation(line: 35, column: 21, scope: !184)
!187 = !DILocation(line: 35, column: 23, scope: !184)
!188 = !DILocation(line: 35, column: 19, scope: !184)
!189 = !DILocation(line: 35, column: 7, scope: !184)
!190 = !DILocation(line: 35, column: 9, scope: !184)
!191 = !DILocation(line: 35, column: 12, scope: !184)
!192 = !DILocation(line: 37, column: 10, scope: !193)
!193 = distinct !DILexicalBlock(scope: !184, file: !1, line: 37, column: 10)
!194 = !DILocation(line: 37, column: 10, scope: !184)
!195 = !DILocation(line: 38, column: 16, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !1, line: 37, column: 12)
!197 = !DILocation(line: 38, column: 18, scope: !196)
!198 = !DILocation(line: 38, column: 19, scope: !196)
!199 = !DILocation(line: 38, column: 9, scope: !196)
!200 = !DILocation(line: 38, column: 11, scope: !196)
!201 = !DILocation(line: 38, column: 14, scope: !196)
!202 = !DILocation(line: 39, column: 7, scope: !196)
!203 = !DILocation(line: 40, column: 5, scope: !184)
!204 = !DILocation(line: 34, column: 29, scope: !178)
!205 = distinct !{!205, !181, !206}
!206 = !DILocation(line: 40, column: 5, scope: !170)
!207 = !DILocation(line: 42, column: 5, scope: !163)
!208 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 45, type: !209, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !212)
!209 = !DISubroutineType(types: !210)
!210 = !{!10, !211, !11, !11, !11, !10}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!212 = !{!213, !214, !215, !216, !217, !218}
!213 = !DILocalVariable(name: "number", arg: 1, scope: !208, file: !1, line: 45, type: !211)
!214 = !DILocalVariable(name: "a", arg: 2, scope: !208, file: !1, line: 45, type: !11)
!215 = !DILocalVariable(name: "b", arg: 3, scope: !208, file: !1, line: 45, type: !11)
!216 = !DILocalVariable(name: "c", arg: 4, scope: !208, file: !1, line: 45, type: !11)
!217 = !DILocalVariable(name: "n", arg: 5, scope: !208, file: !1, line: 45, type: !10)
!218 = !DILocalVariable(name: "i", scope: !219, file: !1, line: 46, type: !10)
!219 = distinct !DILexicalBlock(scope: !208, file: !1, line: 46, column: 4)
!220 = !DILocation(line: 45, column: 15, scope: !208)
!221 = !DILocation(line: 45, column: 30, scope: !208)
!222 = !DILocation(line: 45, column: 40, scope: !208)
!223 = !DILocation(line: 45, column: 50, scope: !208)
!224 = !DILocation(line: 45, column: 57, scope: !208)
!225 = !DILocation(line: 46, column: 9, scope: !219)
!226 = !DILocation(line: 46, column: 13, scope: !219)
!227 = !DILocation(line: 46, column: 20, scope: !228)
!228 = distinct !DILexicalBlock(scope: !219, file: !1, line: 46, column: 4)
!229 = !DILocation(line: 46, column: 22, scope: !228)
!230 = !DILocation(line: 46, column: 4, scope: !219)
!231 = !DILocation(line: 46, column: 4, scope: !228)
!232 = !DILocation(line: 47, column: 10, scope: !233)
!233 = distinct !DILexicalBlock(scope: !228, file: !1, line: 46, column: 32)
!234 = !DILocation(line: 47, column: 13, scope: !233)
!235 = !DILocation(line: 47, column: 16, scope: !233)
!236 = !DILocation(line: 47, column: 19, scope: !233)
!237 = !DILocation(line: 47, column: 5, scope: !233)
!238 = !DILocation(line: 49, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !233, file: !1, line: 49, column: 8)
!240 = !DILocation(line: 49, column: 8, scope: !239)
!241 = !DILocation(line: 49, column: 8, scope: !233)
!242 = !DILocation(line: 50, column: 10, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !1, line: 49, column: 16)
!244 = !DILocation(line: 50, column: 16, scope: !243)
!245 = !DILocation(line: 51, column: 5, scope: !243)
!246 = !DILocation(line: 52, column: 10, scope: !247)
!247 = distinct !DILexicalBlock(scope: !239, file: !1, line: 51, column: 10)
!248 = !DILocation(line: 52, column: 17, scope: !247)
!249 = !DILocation(line: 54, column: 4, scope: !233)
!250 = !DILocation(line: 46, column: 28, scope: !228)
!251 = distinct !{!251, !230, !252}
!252 = !DILocation(line: 54, column: 4, scope: !219)
!253 = !DILocation(line: 55, column: 5, scope: !208)
