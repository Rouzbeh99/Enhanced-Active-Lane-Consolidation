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

13:                                               ; preds = %71, %4
  %14 = load i32, i32* %9, align 4, !dbg !36, !tbaa !31
  %15 = load i32, i32* %8, align 4, !dbg !37, !tbaa !31
  %16 = icmp slt i32 %14, %15, !dbg !38
  br i1 %16, label %19, label %17, !dbg !39

17:                                               ; preds = %13
  store i32 2, i32* %10, align 4
  %18 = bitcast i32* %9 to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3, !dbg !40
  br label %74

19:                                               ; preds = %13
  %20 = bitcast i32* %11 to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %11, metadata !20, metadata !DIExpression()), !dbg !42
  store i32 0, i32* %11, align 4, !dbg !42, !tbaa !31
  br label %21, !dbg !41

21:                                               ; preds = %67, %19
  %22 = load i32, i32* %11, align 4, !dbg !43, !tbaa !31
  %23 = load i32, i32* %8, align 4, !dbg !45, !tbaa !31
  %24 = icmp slt i32 %22, %23, !dbg !46
  br i1 %24, label %27, label %25, !dbg !47

25:                                               ; preds = %21
  store i32 5, i32* %10, align 4
  %26 = bitcast i32* %11 to i8*, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #3, !dbg !48
  br label %70

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4, !dbg !49, !tbaa !31
  %29 = icmp eq i32 %28, 1, !dbg !52
  br i1 %29, label %30, label %40, !dbg !53

30:                                               ; preds = %27
  %31 = load float*, float** %7, align 8, !dbg !54, !tbaa !24
  %32 = load i32, i32* %9, align 4, !dbg !56, !tbaa !31
  %33 = sext i32 %32 to i64, !dbg !54
  %34 = getelementptr inbounds float, float* %31, i64 %33, !dbg !54
  %35 = load float, float* %34, align 4, !dbg !54, !tbaa !57
  %36 = load float*, float** %5, align 8, !dbg !59, !tbaa !24
  %37 = load i32, i32* %9, align 4, !dbg !60, !tbaa !31
  %38 = sext i32 %37 to i64, !dbg !59
  %39 = getelementptr inbounds float, float* %36, i64 %38, !dbg !59
  store float %35, float* %39, align 4, !dbg !61, !tbaa !57
  br label %40, !dbg !62

40:                                               ; preds = %30, %27
  %41 = load i32, i32* %8, align 4, !dbg !63, !tbaa !31
  %42 = icmp sgt i32 %41, 5, !dbg !65
  br i1 %42, label %43, label %66, !dbg !66

43:                                               ; preds = %40
  %44 = load float*, float** %5, align 8, !dbg !67, !tbaa !24
  %45 = load i32, i32* %9, align 4, !dbg !69, !tbaa !31
  %46 = sext i32 %45 to i64, !dbg !67
  %47 = getelementptr inbounds float, float* %44, i64 %46, !dbg !67
  %48 = load float, float* %47, align 4, !dbg !67, !tbaa !57
  %49 = load float*, float** %7, align 8, !dbg !70, !tbaa !24
  %50 = load i32, i32* %9, align 4, !dbg !71, !tbaa !31
  %51 = sext i32 %50 to i64, !dbg !70
  %52 = getelementptr inbounds float, float* %49, i64 %51, !dbg !70
  store float %48, float* %52, align 4, !dbg !72, !tbaa !57
  %53 = load i32, i32* %8, align 4, !dbg !73, !tbaa !31
  %54 = icmp ne i32 %53, 0, !dbg !73
  br i1 %54, label %55, label %65, !dbg !75

55:                                               ; preds = %43
  %56 = load float*, float** %5, align 8, !dbg !76, !tbaa !24
  %57 = load i32, i32* %9, align 4, !dbg !77, !tbaa !31
  %58 = sext i32 %57 to i64, !dbg !76
  %59 = getelementptr inbounds float, float* %56, i64 %58, !dbg !76
  %60 = load float, float* %59, align 4, !dbg !76, !tbaa !57
  %61 = load float*, float** %6, align 8, !dbg !78, !tbaa !24
  %62 = load i32, i32* %9, align 4, !dbg !79, !tbaa !31
  %63 = sext i32 %62 to i64, !dbg !78
  %64 = getelementptr inbounds float, float* %61, i64 %63, !dbg !78
  store float %60, float* %64, align 4, !dbg !80, !tbaa !57
  br label %65, !dbg !78

65:                                               ; preds = %55, %43
  br label %66, !dbg !81

66:                                               ; preds = %65, %40
  br label %67, !dbg !82

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4, !dbg !83, !tbaa !31
  %69 = add nsw i32 %68, 1, !dbg !83
  store i32 %69, i32* %11, align 4, !dbg !83, !tbaa !31
  br label %21, !dbg !48, !llvm.loop !84

70:                                               ; preds = %25
  br label %71, !dbg !86

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4, !dbg !87, !tbaa !31
  %73 = add nsw i32 %72, 1, !dbg !87
  store i32 %73, i32* %9, align 4, !dbg !87, !tbaa !31
  br label %13, !dbg !40, !llvm.loop !88

74:                                               ; preds = %17
  ret i32 0, !dbg !90
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @bar(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !91 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %5, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %5, metadata !93, metadata !DIExpression()), !dbg !104
  store float* %1, float** %6, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %6, metadata !94, metadata !DIExpression()), !dbg !105
  store float* %2, float** %7, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %7, metadata !95, metadata !DIExpression()), !dbg !106
  store i32 %3, i32* %8, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %8, metadata !96, metadata !DIExpression()), !dbg !107
  %12 = bitcast i32* %9 to i8*, !dbg !108
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !108
  call void @llvm.dbg.declare(metadata i32* %9, metadata !97, metadata !DIExpression()), !dbg !109
  store i32 0, i32* %9, align 4, !dbg !109, !tbaa !31
  br label %13, !dbg !108

13:                                               ; preds = %35, %4
  %14 = load i32, i32* %9, align 4, !dbg !110, !tbaa !31
  %15 = load i32, i32* %8, align 4, !dbg !112, !tbaa !31
  %16 = icmp slt i32 %14, %15, !dbg !113
  br i1 %16, label %19, label %17, !dbg !114

17:                                               ; preds = %13
  %18 = bitcast i32* %9 to i8*, !dbg !115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3, !dbg !115
  br label %38

19:                                               ; preds = %13
  %20 = load float*, float** %5, align 8, !dbg !116, !tbaa !24
  %21 = load i32, i32* %9, align 4, !dbg !118, !tbaa !31
  %22 = sext i32 %21 to i64, !dbg !116
  %23 = getelementptr inbounds float, float* %20, i64 %22, !dbg !116
  %24 = load float, float* %23, align 4, !dbg !116, !tbaa !57
  %25 = load float*, float** %6, align 8, !dbg !119, !tbaa !24
  %26 = load i32, i32* %9, align 4, !dbg !120, !tbaa !31
  %27 = sext i32 %26 to i64, !dbg !119
  %28 = getelementptr inbounds float, float* %25, i64 %27, !dbg !119
  %29 = load float, float* %28, align 4, !dbg !119, !tbaa !57
  %30 = fmul float %24, %29, !dbg !121
  %31 = load float*, float** %5, align 8, !dbg !122, !tbaa !24
  %32 = load i32, i32* %9, align 4, !dbg !123, !tbaa !31
  %33 = sext i32 %32 to i64, !dbg !122
  %34 = getelementptr inbounds float, float* %31, i64 %33, !dbg !122
  store float %30, float* %34, align 4, !dbg !124, !tbaa !57
  br label %35, !dbg !125

35:                                               ; preds = %19
  %36 = load i32, i32* %9, align 4, !dbg !126, !tbaa !31
  %37 = add nsw i32 %36, 1, !dbg !126
  store i32 %37, i32* %9, align 4, !dbg !126, !tbaa !31
  br label %13, !dbg !115, !llvm.loop !127

38:                                               ; preds = %17
  %39 = bitcast i32* %10 to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %39) #3, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %10, metadata !99, metadata !DIExpression()), !dbg !130
  store i32 0, i32* %10, align 4, !dbg !130, !tbaa !31
  br label %40, !dbg !129

40:                                               ; preds = %65, %38
  %41 = load i32, i32* %10, align 4, !dbg !131, !tbaa !31
  %42 = load i32, i32* %8, align 4, !dbg !132, !tbaa !31
  %43 = icmp slt i32 %41, %42, !dbg !133
  br i1 %43, label %46, label %44, !dbg !134

44:                                               ; preds = %40
  %45 = bitcast i32* %10 to i8*, !dbg !135
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #3, !dbg !135
  br label %68

46:                                               ; preds = %40
  %47 = load float*, float** %5, align 8, !dbg !136, !tbaa !24
  %48 = load i32, i32* %10, align 4, !dbg !137, !tbaa !31
  %49 = sext i32 %48 to i64, !dbg !136
  %50 = getelementptr inbounds float, float* %47, i64 %49, !dbg !136
  store float 0.000000e+00, float* %50, align 4, !dbg !138, !tbaa !57
  %51 = bitcast i32* %11 to i8*, !dbg !139
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %51) #3, !dbg !139
  call void @llvm.dbg.declare(metadata i32* %11, metadata !101, metadata !DIExpression()), !dbg !140
  %52 = load float*, float** %6, align 8, !dbg !141, !tbaa !24
  %53 = load i32, i32* %10, align 4, !dbg !142, !tbaa !31
  %54 = sext i32 %53 to i64, !dbg !141
  %55 = getelementptr inbounds float, float* %52, i64 %54, !dbg !141
  %56 = load float, float* %55, align 4, !dbg !141, !tbaa !57
  %57 = load float*, float** %7, align 8, !dbg !143, !tbaa !24
  %58 = load i32, i32* %10, align 4, !dbg !144, !tbaa !31
  %59 = sext i32 %58 to i64, !dbg !143
  %60 = getelementptr inbounds float, float* %57, i64 %59, !dbg !143
  %61 = load float, float* %60, align 4, !dbg !143, !tbaa !57
  %62 = fadd float %56, %61, !dbg !145
  %63 = fptosi float %62 to i32, !dbg !141
  store i32 %63, i32* %11, align 4, !dbg !140, !tbaa !31
  %64 = bitcast i32* %11 to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #3, !dbg !146
  br label %65, !dbg !147

65:                                               ; preds = %46
  %66 = load i32, i32* %10, align 4, !dbg !148, !tbaa !31
  %67 = add nsw i32 %66, 1, !dbg !148
  store i32 %67, i32* %10, align 4, !dbg !148, !tbaa !31
  br label %40, !dbg !135, !llvm.loop !149

68:                                               ; preds = %44
  ret i32 0, !dbg !151
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bar2(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !152 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store float* %0, float** %5, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %5, metadata !154, metadata !DIExpression()), !dbg !160
  store float* %1, float** %6, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %6, metadata !155, metadata !DIExpression()), !dbg !161
  store float* %2, float** %7, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %7, metadata !156, metadata !DIExpression()), !dbg !162
  store i32 %3, i32* %8, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %8, metadata !157, metadata !DIExpression()), !dbg !163
  %10 = bitcast i32* %9 to i8*, !dbg !164
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !164
  call void @llvm.dbg.declare(metadata i32* %9, metadata !158, metadata !DIExpression()), !dbg !165
  store i32 0, i32* %9, align 4, !dbg !165, !tbaa !31
  br label %11, !dbg !164

11:                                               ; preds = %47, %4
  %12 = load i32, i32* %9, align 4, !dbg !166, !tbaa !31
  %13 = load i32, i32* %8, align 4, !dbg !168, !tbaa !31
  %14 = icmp slt i32 %12, %13, !dbg !169
  br i1 %14, label %17, label %15, !dbg !170

15:                                               ; preds = %11
  %16 = bitcast i32* %9 to i8*, !dbg !171
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3, !dbg !171
  br label %50

17:                                               ; preds = %11
  %18 = load float*, float** %6, align 8, !dbg !172, !tbaa !24
  %19 = load i32, i32* %9, align 4, !dbg !174, !tbaa !31
  %20 = sext i32 %19 to i64, !dbg !172
  %21 = getelementptr inbounds float, float* %18, i64 %20, !dbg !172
  %22 = load float, float* %21, align 4, !dbg !172, !tbaa !57
  %23 = load float*, float** %7, align 8, !dbg !175, !tbaa !24
  %24 = load i32, i32* %9, align 4, !dbg !176, !tbaa !31
  %25 = sext i32 %24 to i64, !dbg !175
  %26 = getelementptr inbounds float, float* %23, i64 %25, !dbg !175
  %27 = load float, float* %26, align 4, !dbg !175, !tbaa !57
  %28 = fmul float %22, %27, !dbg !177
  %29 = load float*, float** %5, align 8, !dbg !178, !tbaa !24
  %30 = load i32, i32* %9, align 4, !dbg !179, !tbaa !31
  %31 = sext i32 %30 to i64, !dbg !178
  %32 = getelementptr inbounds float, float* %29, i64 %31, !dbg !178
  store float %28, float* %32, align 4, !dbg !180, !tbaa !57
  %33 = load i32, i32* %8, align 4, !dbg !181, !tbaa !31
  %34 = icmp ne i32 %33, 0, !dbg !181
  br i1 %34, label %35, label %46, !dbg !183

35:                                               ; preds = %17
  %36 = load float*, float** %5, align 8, !dbg !184, !tbaa !24
  %37 = load i32, i32* %9, align 4, !dbg !186, !tbaa !31
  %38 = sub nsw i32 %37, 1, !dbg !187
  %39 = sext i32 %38 to i64, !dbg !184
  %40 = getelementptr inbounds float, float* %36, i64 %39, !dbg !184
  %41 = load float, float* %40, align 4, !dbg !184, !tbaa !57
  %42 = load float*, float** %7, align 8, !dbg !188, !tbaa !24
  %43 = load i32, i32* %9, align 4, !dbg !189, !tbaa !31
  %44 = sext i32 %43 to i64, !dbg !188
  %45 = getelementptr inbounds float, float* %42, i64 %44, !dbg !188
  store float %41, float* %45, align 4, !dbg !190, !tbaa !57
  br label %46, !dbg !191

46:                                               ; preds = %35, %17
  br label %47, !dbg !192

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4, !dbg !193, !tbaa !31
  %49 = add nsw i32 %48, 1, !dbg !193
  store i32 %49, i32* %9, align 4, !dbg !193, !tbaa !31
  br label %11, !dbg !171, !llvm.loop !194

50:                                               ; preds = %15
  ret i32 0, !dbg !196
}

; Function Attrs: nounwind uwtable
define dso_local i32 @test(i32* %0, float* %1, float* %2, float* %3, i32 %4) #0 !dbg !197 {
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %6, metadata !202, metadata !DIExpression()), !dbg !209
  store float* %1, float** %7, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %7, metadata !203, metadata !DIExpression()), !dbg !210
  store float* %2, float** %8, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %8, metadata !204, metadata !DIExpression()), !dbg !211
  store float* %3, float** %9, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata float** %9, metadata !205, metadata !DIExpression()), !dbg !212
  store i32 %4, i32* %10, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %10, metadata !206, metadata !DIExpression()), !dbg !213
  %12 = bitcast i32* %11 to i8*, !dbg !214
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !214
  call void @llvm.dbg.declare(metadata i32* %11, metadata !207, metadata !DIExpression()), !dbg !215
  store i32 0, i32* %11, align 4, !dbg !215, !tbaa !31
  br label %13, !dbg !214

13:                                               ; preds = %32, %5
  %14 = load i32, i32* %11, align 4, !dbg !216, !tbaa !31
  %15 = icmp slt i32 %14, 10, !dbg !218
  br i1 %15, label %18, label %16, !dbg !219

16:                                               ; preds = %13
  %17 = bitcast i32* %11 to i8*, !dbg !220
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #3, !dbg !220
  br label %35

18:                                               ; preds = %13
  %19 = load float*, float** %7, align 8, !dbg !221, !tbaa !24
  %20 = load float*, float** %8, align 8, !dbg !223, !tbaa !24
  %21 = load float*, float** %9, align 8, !dbg !224, !tbaa !24
  %22 = load i32, i32* %10, align 4, !dbg !225, !tbaa !31
  %23 = call i32 @bar2(float* %19, float* %20, float* %21, i32 %22), !dbg !226
  %24 = load i32*, i32** %6, align 8, !dbg !227, !tbaa !24
  %25 = load i32, i32* %24, align 4, !dbg !229, !tbaa !31
  %26 = icmp ne i32 %25, 0, !dbg !229
  br i1 %26, label %27, label %29, !dbg !230

27:                                               ; preds = %18
  %28 = load i32*, i32** %6, align 8, !dbg !231, !tbaa !24
  store i32 1, i32* %28, align 4, !dbg !233, !tbaa !31
  br label %31, !dbg !234

29:                                               ; preds = %18
  %30 = load i32*, i32** %6, align 8, !dbg !235, !tbaa !24
  store i32 0, i32* %30, align 4, !dbg !237, !tbaa !31
  br label %31

31:                                               ; preds = %29, %27
  br label %32, !dbg !238

32:                                               ; preds = %31
  %33 = load i32, i32* %11, align 4, !dbg !239, !tbaa !31
  %34 = add nsw i32 %33, 1, !dbg !239
  store i32 %34, i32* %11, align 4, !dbg !239, !tbaa !31
  br label %13, !dbg !220, !llvm.loop !240

35:                                               ; preds = %16
  ret i32 0, !dbg !242
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
!59 = !DILocation(line: 5, column: 17, scope: !55)
!60 = !DILocation(line: 5, column: 19, scope: !55)
!61 = !DILocation(line: 5, column: 22, scope: !55)
!62 = !DILocation(line: 6, column: 13, scope: !55)
!63 = !DILocation(line: 7, column: 17, scope: !64)
!64 = distinct !DILexicalBlock(scope: !51, file: !1, line: 7, column: 17)
!65 = !DILocation(line: 7, column: 19, scope: !64)
!66 = !DILocation(line: 7, column: 17, scope: !51)
!67 = !DILocation(line: 8, column: 24, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 7, column: 23)
!69 = !DILocation(line: 8, column: 26, scope: !68)
!70 = !DILocation(line: 8, column: 17, scope: !68)
!71 = !DILocation(line: 8, column: 19, scope: !68)
!72 = !DILocation(line: 8, column: 22, scope: !68)
!73 = !DILocation(line: 9, column: 16, scope: !74)
!74 = distinct !DILexicalBlock(scope: !68, file: !1, line: 9, column: 16)
!75 = !DILocation(line: 9, column: 16, scope: !68)
!76 = !DILocation(line: 10, column: 25, scope: !74)
!77 = !DILocation(line: 10, column: 27, scope: !74)
!78 = !DILocation(line: 10, column: 17, scope: !74)
!79 = !DILocation(line: 10, column: 20, scope: !74)
!80 = !DILocation(line: 10, column: 23, scope: !74)
!81 = !DILocation(line: 11, column: 13, scope: !68)
!82 = !DILocation(line: 13, column: 9, scope: !51)
!83 = !DILocation(line: 3, column: 32, scope: !44)
!84 = distinct !{!84, !47, !85}
!85 = !DILocation(line: 13, column: 9, scope: !21)
!86 = !DILocation(line: 14, column: 5, scope: !22)
!87 = !DILocation(line: 2, column: 28, scope: !23)
!88 = distinct !{!88, !39, !89}
!89 = !DILocation(line: 14, column: 5, scope: !19)
!90 = !DILocation(line: 15, column: 5, scope: !7)
!91 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 18, type: !8, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!92 = !{!93, !94, !95, !96, !97, !99, !101}
!93 = !DILocalVariable(name: "a", arg: 1, scope: !91, file: !1, line: 18, type: !11)
!94 = !DILocalVariable(name: "b", arg: 2, scope: !91, file: !1, line: 18, type: !11)
!95 = !DILocalVariable(name: "c", arg: 3, scope: !91, file: !1, line: 18, type: !11)
!96 = !DILocalVariable(name: "n", arg: 4, scope: !91, file: !1, line: 18, type: !10)
!97 = !DILocalVariable(name: "i", scope: !98, file: !1, line: 19, type: !10)
!98 = distinct !DILexicalBlock(scope: !91, file: !1, line: 19, column: 5)
!99 = !DILocalVariable(name: "i", scope: !100, file: !1, line: 22, type: !10)
!100 = distinct !DILexicalBlock(scope: !91, file: !1, line: 22, column: 5)
!101 = !DILocalVariable(name: "d", scope: !102, file: !1, line: 24, type: !10)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 22, column: 33)
!103 = distinct !DILexicalBlock(scope: !100, file: !1, line: 22, column: 5)
!104 = !DILocation(line: 18, column: 16, scope: !91)
!105 = !DILocation(line: 18, column: 26, scope: !91)
!106 = !DILocation(line: 18, column: 36, scope: !91)
!107 = !DILocation(line: 18, column: 43, scope: !91)
!108 = !DILocation(line: 19, column: 10, scope: !98)
!109 = !DILocation(line: 19, column: 14, scope: !98)
!110 = !DILocation(line: 19, column: 21, scope: !111)
!111 = distinct !DILexicalBlock(scope: !98, file: !1, line: 19, column: 5)
!112 = !DILocation(line: 19, column: 25, scope: !111)
!113 = !DILocation(line: 19, column: 23, scope: !111)
!114 = !DILocation(line: 19, column: 5, scope: !98)
!115 = !DILocation(line: 19, column: 5, scope: !111)
!116 = !DILocation(line: 20, column: 14, scope: !117)
!117 = distinct !DILexicalBlock(scope: !111, file: !1, line: 19, column: 33)
!118 = !DILocation(line: 20, column: 16, scope: !117)
!119 = !DILocation(line: 20, column: 21, scope: !117)
!120 = !DILocation(line: 20, column: 23, scope: !117)
!121 = !DILocation(line: 20, column: 19, scope: !117)
!122 = !DILocation(line: 20, column: 7, scope: !117)
!123 = !DILocation(line: 20, column: 9, scope: !117)
!124 = !DILocation(line: 20, column: 12, scope: !117)
!125 = !DILocation(line: 21, column: 5, scope: !117)
!126 = !DILocation(line: 19, column: 28, scope: !111)
!127 = distinct !{!127, !114, !128}
!128 = !DILocation(line: 21, column: 5, scope: !98)
!129 = !DILocation(line: 22, column: 10, scope: !100)
!130 = !DILocation(line: 22, column: 14, scope: !100)
!131 = !DILocation(line: 22, column: 21, scope: !103)
!132 = !DILocation(line: 22, column: 25, scope: !103)
!133 = !DILocation(line: 22, column: 23, scope: !103)
!134 = !DILocation(line: 22, column: 5, scope: !100)
!135 = !DILocation(line: 22, column: 5, scope: !103)
!136 = !DILocation(line: 23, column: 7, scope: !102)
!137 = !DILocation(line: 23, column: 9, scope: !102)
!138 = !DILocation(line: 23, column: 12, scope: !102)
!139 = !DILocation(line: 24, column: 7, scope: !102)
!140 = !DILocation(line: 24, column: 11, scope: !102)
!141 = !DILocation(line: 24, column: 15, scope: !102)
!142 = !DILocation(line: 24, column: 17, scope: !102)
!143 = !DILocation(line: 24, column: 22, scope: !102)
!144 = !DILocation(line: 24, column: 24, scope: !102)
!145 = !DILocation(line: 24, column: 20, scope: !102)
!146 = !DILocation(line: 26, column: 5, scope: !103)
!147 = !DILocation(line: 26, column: 5, scope: !102)
!148 = !DILocation(line: 22, column: 28, scope: !103)
!149 = distinct !{!149, !134, !150}
!150 = !DILocation(line: 26, column: 5, scope: !100)
!151 = !DILocation(line: 27, column: 5, scope: !91)
!152 = distinct !DISubprogram(name: "bar2", scope: !1, file: !1, line: 31, type: !8, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !153)
!153 = !{!154, !155, !156, !157, !158}
!154 = !DILocalVariable(name: "a", arg: 1, scope: !152, file: !1, line: 31, type: !11)
!155 = !DILocalVariable(name: "b", arg: 2, scope: !152, file: !1, line: 31, type: !11)
!156 = !DILocalVariable(name: "c", arg: 3, scope: !152, file: !1, line: 31, type: !11)
!157 = !DILocalVariable(name: "n", arg: 4, scope: !152, file: !1, line: 31, type: !10)
!158 = !DILocalVariable(name: "i", scope: !159, file: !1, line: 33, type: !10)
!159 = distinct !DILexicalBlock(scope: !152, file: !1, line: 33, column: 6)
!160 = !DILocation(line: 31, column: 17, scope: !152)
!161 = !DILocation(line: 31, column: 27, scope: !152)
!162 = !DILocation(line: 31, column: 37, scope: !152)
!163 = !DILocation(line: 31, column: 44, scope: !152)
!164 = !DILocation(line: 33, column: 11, scope: !159)
!165 = !DILocation(line: 33, column: 15, scope: !159)
!166 = !DILocation(line: 33, column: 22, scope: !167)
!167 = distinct !DILexicalBlock(scope: !159, file: !1, line: 33, column: 6)
!168 = !DILocation(line: 33, column: 26, scope: !167)
!169 = !DILocation(line: 33, column: 24, scope: !167)
!170 = !DILocation(line: 33, column: 6, scope: !159)
!171 = !DILocation(line: 33, column: 6, scope: !167)
!172 = !DILocation(line: 34, column: 14, scope: !173)
!173 = distinct !DILexicalBlock(scope: !167, file: !1, line: 33, column: 34)
!174 = !DILocation(line: 34, column: 16, scope: !173)
!175 = !DILocation(line: 34, column: 21, scope: !173)
!176 = !DILocation(line: 34, column: 23, scope: !173)
!177 = !DILocation(line: 34, column: 19, scope: !173)
!178 = !DILocation(line: 34, column: 7, scope: !173)
!179 = !DILocation(line: 34, column: 9, scope: !173)
!180 = !DILocation(line: 34, column: 12, scope: !173)
!181 = !DILocation(line: 36, column: 10, scope: !182)
!182 = distinct !DILexicalBlock(scope: !173, file: !1, line: 36, column: 10)
!183 = !DILocation(line: 36, column: 10, scope: !173)
!184 = !DILocation(line: 37, column: 16, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 36, column: 12)
!186 = !DILocation(line: 37, column: 18, scope: !185)
!187 = !DILocation(line: 37, column: 19, scope: !185)
!188 = !DILocation(line: 37, column: 9, scope: !185)
!189 = !DILocation(line: 37, column: 11, scope: !185)
!190 = !DILocation(line: 37, column: 14, scope: !185)
!191 = !DILocation(line: 38, column: 7, scope: !185)
!192 = !DILocation(line: 39, column: 5, scope: !173)
!193 = !DILocation(line: 33, column: 29, scope: !167)
!194 = distinct !{!194, !170, !195}
!195 = !DILocation(line: 39, column: 5, scope: !159)
!196 = !DILocation(line: 41, column: 5, scope: !152)
!197 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 44, type: !198, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !201)
!198 = !DISubroutineType(types: !199)
!199 = !{!10, !200, !11, !11, !11, !10}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!201 = !{!202, !203, !204, !205, !206, !207}
!202 = !DILocalVariable(name: "number", arg: 1, scope: !197, file: !1, line: 44, type: !200)
!203 = !DILocalVariable(name: "a", arg: 2, scope: !197, file: !1, line: 44, type: !11)
!204 = !DILocalVariable(name: "b", arg: 3, scope: !197, file: !1, line: 44, type: !11)
!205 = !DILocalVariable(name: "c", arg: 4, scope: !197, file: !1, line: 44, type: !11)
!206 = !DILocalVariable(name: "n", arg: 5, scope: !197, file: !1, line: 44, type: !10)
!207 = !DILocalVariable(name: "i", scope: !208, file: !1, line: 45, type: !10)
!208 = distinct !DILexicalBlock(scope: !197, file: !1, line: 45, column: 4)
!209 = !DILocation(line: 44, column: 15, scope: !197)
!210 = !DILocation(line: 44, column: 30, scope: !197)
!211 = !DILocation(line: 44, column: 40, scope: !197)
!212 = !DILocation(line: 44, column: 50, scope: !197)
!213 = !DILocation(line: 44, column: 57, scope: !197)
!214 = !DILocation(line: 45, column: 9, scope: !208)
!215 = !DILocation(line: 45, column: 13, scope: !208)
!216 = !DILocation(line: 45, column: 20, scope: !217)
!217 = distinct !DILexicalBlock(scope: !208, file: !1, line: 45, column: 4)
!218 = !DILocation(line: 45, column: 22, scope: !217)
!219 = !DILocation(line: 45, column: 4, scope: !208)
!220 = !DILocation(line: 45, column: 4, scope: !217)
!221 = !DILocation(line: 46, column: 10, scope: !222)
!222 = distinct !DILexicalBlock(scope: !217, file: !1, line: 45, column: 32)
!223 = !DILocation(line: 46, column: 13, scope: !222)
!224 = !DILocation(line: 46, column: 16, scope: !222)
!225 = !DILocation(line: 46, column: 19, scope: !222)
!226 = !DILocation(line: 46, column: 5, scope: !222)
!227 = !DILocation(line: 48, column: 9, scope: !228)
!228 = distinct !DILexicalBlock(scope: !222, file: !1, line: 48, column: 8)
!229 = !DILocation(line: 48, column: 8, scope: !228)
!230 = !DILocation(line: 48, column: 8, scope: !222)
!231 = !DILocation(line: 49, column: 10, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !1, line: 48, column: 16)
!233 = !DILocation(line: 49, column: 16, scope: !232)
!234 = !DILocation(line: 50, column: 5, scope: !232)
!235 = !DILocation(line: 51, column: 10, scope: !236)
!236 = distinct !DILexicalBlock(scope: !228, file: !1, line: 50, column: 10)
!237 = !DILocation(line: 51, column: 17, scope: !236)
!238 = !DILocation(line: 53, column: 4, scope: !222)
!239 = !DILocation(line: 45, column: 28, scope: !217)
!240 = distinct !{!240, !219, !241}
!241 = !DILocation(line: 53, column: 4, scope: !208)
!242 = !DILocation(line: 54, column: 5, scope: !197)
