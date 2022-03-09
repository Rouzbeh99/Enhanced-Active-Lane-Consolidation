; ModuleID = 'loops.c'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @foo(float* noalias %0, float* noalias %1, float* noalias %2, i32 %3) #0 !dbg !7 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %5, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata float** %5, metadata !15, metadata !DIExpression()), !dbg !29
  store float* %1, float** %6, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata float** %6, metadata !16, metadata !DIExpression()), !dbg !30
  store float* %2, float** %7, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata float** %7, metadata !17, metadata !DIExpression()), !dbg !31
  store i32 %3, i32* %8, align 4, !tbaa !32
  call void @llvm.dbg.declare(metadata i32* %8, metadata !18, metadata !DIExpression()), !dbg !34
  %12 = bitcast i32* %9 to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %9, metadata !19, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %9, align 4, !dbg !36, !tbaa !32
  br label %13, !dbg !35

13:                                               ; preds = %107, %4
  %14 = load i32, i32* %9, align 4, !dbg !37, !tbaa !32
  %15 = load i32, i32* %8, align 4, !dbg !38, !tbaa !32
  %16 = icmp slt i32 %14, %15, !dbg !39
  br i1 %16, label %19, label %17, !dbg !40

17:                                               ; preds = %13
  store i32 2, i32* %10, align 4
  %18 = bitcast i32* %9 to i8*, !dbg !41
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3, !dbg !41
  br label %110

19:                                               ; preds = %13
  %20 = bitcast i32* %11 to i8*, !dbg !42
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %11, metadata !21, metadata !DIExpression()), !dbg !43
  store i32 0, i32* %11, align 4, !dbg !43, !tbaa !32
  br label %21, !dbg !42

21:                                               ; preds = %103, %19
  %22 = load i32, i32* %11, align 4, !dbg !44, !tbaa !32
  %23 = load i32, i32* %8, align 4, !dbg !46, !tbaa !32
  %24 = icmp slt i32 %22, %23, !dbg !47
  br i1 %24, label %27, label %25, !dbg !48

25:                                               ; preds = %21
  store i32 5, i32* %10, align 4
  %26 = bitcast i32* %11 to i8*, !dbg !49
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #3, !dbg !49
  br label %106

27:                                               ; preds = %21
  %28 = load float*, float** %5, align 8, !dbg !50, !tbaa !25
  %29 = load i32, i32* %11, align 4, !dbg !53, !tbaa !32
  %30 = sext i32 %29 to i64, !dbg !50
  %31 = getelementptr inbounds float, float* %28, i64 %30, !dbg !50
  %32 = load float, float* %31, align 4, !dbg !50, !tbaa !54
  %33 = fcmp ogt float %32, 0.000000e+00, !dbg !56
  br i1 %33, label %34, label %52, !dbg !57

34:                                               ; preds = %27
  %35 = load float*, float** %6, align 8, !dbg !58, !tbaa !25
  %36 = load i32, i32* %11, align 4, !dbg !60, !tbaa !32
  %37 = sext i32 %36 to i64, !dbg !58
  %38 = getelementptr inbounds float, float* %35, i64 %37, !dbg !58
  %39 = load float, float* %38, align 4, !dbg !58, !tbaa !54
  %40 = load float*, float** %7, align 8, !dbg !61, !tbaa !25
  %41 = load i32, i32* %11, align 4, !dbg !62, !tbaa !32
  %42 = sext i32 %41 to i64, !dbg !61
  %43 = getelementptr inbounds float, float* %40, i64 %42, !dbg !61
  %44 = load float, float* %43, align 4, !dbg !61, !tbaa !54
  %45 = fadd float %39, %44, !dbg !63
  %46 = load float*, float** %5, align 8, !dbg !64, !tbaa !25
  %47 = load i32, i32* %11, align 4, !dbg !65, !tbaa !32
  %48 = sext i32 %47 to i64, !dbg !64
  %49 = getelementptr inbounds float, float* %46, i64 %48, !dbg !64
  %50 = load float, float* %49, align 4, !dbg !66, !tbaa !54
  %51 = fadd float %50, %45, !dbg !66
  store float %51, float* %49, align 4, !dbg !66, !tbaa !54
  br label %52, !dbg !67

52:                                               ; preds = %34, %27
  %53 = load float*, float** %5, align 8, !dbg !68, !tbaa !25
  %54 = load i32, i32* %11, align 4, !dbg !70, !tbaa !32
  %55 = sext i32 %54 to i64, !dbg !68
  %56 = getelementptr inbounds float, float* %53, i64 %55, !dbg !68
  %57 = load float, float* %56, align 4, !dbg !68, !tbaa !54
  %58 = fcmp ogt float %57, 5.000000e+00, !dbg !71
  br i1 %58, label %59, label %77, !dbg !72

59:                                               ; preds = %52
  %60 = load float*, float** %6, align 8, !dbg !73, !tbaa !25
  %61 = load i32, i32* %11, align 4, !dbg !75, !tbaa !32
  %62 = sext i32 %61 to i64, !dbg !73
  %63 = getelementptr inbounds float, float* %60, i64 %62, !dbg !73
  %64 = load float, float* %63, align 4, !dbg !73, !tbaa !54
  %65 = load float*, float** %7, align 8, !dbg !76, !tbaa !25
  %66 = load i32, i32* %11, align 4, !dbg !77, !tbaa !32
  %67 = sext i32 %66 to i64, !dbg !76
  %68 = getelementptr inbounds float, float* %65, i64 %67, !dbg !76
  %69 = load float, float* %68, align 4, !dbg !76, !tbaa !54
  %70 = fsub float %64, %69, !dbg !78
  %71 = load float*, float** %5, align 8, !dbg !79, !tbaa !25
  %72 = load i32, i32* %11, align 4, !dbg !80, !tbaa !32
  %73 = sext i32 %72 to i64, !dbg !79
  %74 = getelementptr inbounds float, float* %71, i64 %73, !dbg !79
  %75 = load float, float* %74, align 4, !dbg !81, !tbaa !54
  %76 = fadd float %75, %70, !dbg !81
  store float %76, float* %74, align 4, !dbg !81, !tbaa !54
  br label %77, !dbg !82

77:                                               ; preds = %59, %52
  %78 = load float*, float** %5, align 8, !dbg !83, !tbaa !25
  %79 = load i32, i32* %11, align 4, !dbg !85, !tbaa !32
  %80 = sext i32 %79 to i64, !dbg !83
  %81 = getelementptr inbounds float, float* %78, i64 %80, !dbg !83
  %82 = load float, float* %81, align 4, !dbg !83, !tbaa !54
  %83 = fcmp ogt float %82, 7.000000e+00, !dbg !86
  br i1 %83, label %84, label %102, !dbg !87

84:                                               ; preds = %77
  %85 = load float*, float** %6, align 8, !dbg !88, !tbaa !25
  %86 = load i32, i32* %11, align 4, !dbg !90, !tbaa !32
  %87 = sext i32 %86 to i64, !dbg !88
  %88 = getelementptr inbounds float, float* %85, i64 %87, !dbg !88
  %89 = load float, float* %88, align 4, !dbg !88, !tbaa !54
  %90 = load float*, float** %7, align 8, !dbg !91, !tbaa !25
  %91 = load i32, i32* %11, align 4, !dbg !92, !tbaa !32
  %92 = sext i32 %91 to i64, !dbg !91
  %93 = getelementptr inbounds float, float* %90, i64 %92, !dbg !91
  %94 = load float, float* %93, align 4, !dbg !91, !tbaa !54
  %95 = fmul float %89, %94, !dbg !93
  %96 = load float*, float** %5, align 8, !dbg !94, !tbaa !25
  %97 = load i32, i32* %11, align 4, !dbg !95, !tbaa !32
  %98 = sext i32 %97 to i64, !dbg !94
  %99 = getelementptr inbounds float, float* %96, i64 %98, !dbg !94
  %100 = load float, float* %99, align 4, !dbg !96, !tbaa !54
  %101 = fadd float %100, %95, !dbg !96
  store float %101, float* %99, align 4, !dbg !96, !tbaa !54
  br label %102, !dbg !97

102:                                              ; preds = %84, %77
  br label %103, !dbg !98

103:                                              ; preds = %102
  %104 = load i32, i32* %11, align 4, !dbg !99, !tbaa !32
  %105 = add nsw i32 %104, 1, !dbg !99
  store i32 %105, i32* %11, align 4, !dbg !99, !tbaa !32
  br label %21, !dbg !49, !llvm.loop !100

106:                                              ; preds = %25
  br label %107, !dbg !102

107:                                              ; preds = %106
  %108 = load i32, i32* %9, align 4, !dbg !103, !tbaa !32
  %109 = add nsw i32 %108, 1, !dbg !103
  store i32 %109, i32* %9, align 4, !dbg !103, !tbaa !32
  br label %13, !dbg !41, !llvm.loop !104

110:                                              ; preds = %17
  ret i32 0, !dbg !106
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @bar(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !107 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %5, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata float** %5, metadata !111, metadata !DIExpression()), !dbg !120
  store float* %1, float** %6, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata float** %6, metadata !112, metadata !DIExpression()), !dbg !121
  store float* %2, float** %7, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata float** %7, metadata !113, metadata !DIExpression()), !dbg !122
  store i32 %3, i32* %8, align 4, !tbaa !32
  call void @llvm.dbg.declare(metadata i32* %8, metadata !114, metadata !DIExpression()), !dbg !123
  %12 = bitcast i32* %9 to i8*, !dbg !124
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !124
  call void @llvm.dbg.declare(metadata i32* %9, metadata !115, metadata !DIExpression()), !dbg !125
  store i32 0, i32* %9, align 4, !dbg !125, !tbaa !32
  %13 = bitcast i32* %10 to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %10, metadata !116, metadata !DIExpression()), !dbg !127
  store i32 0, i32* %10, align 4, !dbg !127, !tbaa !32
  br label %14, !dbg !126

14:                                               ; preds = %37, %4
  %15 = load i32, i32* %10, align 4, !dbg !128, !tbaa !32
  %16 = load i32, i32* %8, align 4, !dbg !130, !tbaa !32
  %17 = icmp slt i32 %15, %16, !dbg !131
  br i1 %17, label %20, label %18, !dbg !132

18:                                               ; preds = %14
  %19 = bitcast i32* %10 to i8*, !dbg !133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #3, !dbg !133
  br label %40

20:                                               ; preds = %14
  %21 = load float*, float** %5, align 8, !dbg !134, !tbaa !25
  %22 = load i32, i32* %10, align 4, !dbg !136, !tbaa !32
  %23 = sub nsw i32 %22, 1, !dbg !137
  %24 = sext i32 %23 to i64, !dbg !134
  %25 = getelementptr inbounds float, float* %21, i64 %24, !dbg !134
  %26 = load float, float* %25, align 4, !dbg !134, !tbaa !54
  %27 = load float*, float** %6, align 8, !dbg !138, !tbaa !25
  %28 = load i32, i32* %10, align 4, !dbg !139, !tbaa !32
  %29 = sext i32 %28 to i64, !dbg !138
  %30 = getelementptr inbounds float, float* %27, i64 %29, !dbg !138
  %31 = load float, float* %30, align 4, !dbg !138, !tbaa !54
  %32 = fmul float %26, %31, !dbg !140
  %33 = load float*, float** %5, align 8, !dbg !141, !tbaa !25
  %34 = load i32, i32* %10, align 4, !dbg !142, !tbaa !32
  %35 = sext i32 %34 to i64, !dbg !141
  %36 = getelementptr inbounds float, float* %33, i64 %35, !dbg !141
  store float %32, float* %36, align 4, !dbg !143, !tbaa !54
  br label %37, !dbg !144

37:                                               ; preds = %20
  %38 = load i32, i32* %10, align 4, !dbg !145, !tbaa !32
  %39 = add nsw i32 %38, 1, !dbg !145
  store i32 %39, i32* %10, align 4, !dbg !145, !tbaa !32
  br label %14, !dbg !133, !llvm.loop !146

40:                                               ; preds = %18
  %41 = bitcast i32* %11 to i8*, !dbg !148
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %41) #3, !dbg !148
  call void @llvm.dbg.declare(metadata i32* %11, metadata !118, metadata !DIExpression()), !dbg !149
  store i32 0, i32* %11, align 4, !dbg !149, !tbaa !32
  br label %42, !dbg !148

42:                                               ; preds = %64, %40
  %43 = load i32, i32* %11, align 4, !dbg !150, !tbaa !32
  %44 = load i32, i32* %8, align 4, !dbg !152, !tbaa !32
  %45 = icmp slt i32 %43, %44, !dbg !153
  br i1 %45, label %48, label %46, !dbg !154

46:                                               ; preds = %42
  %47 = bitcast i32* %11 to i8*, !dbg !155
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #3, !dbg !155
  br label %67

48:                                               ; preds = %42
  %49 = load float*, float** %6, align 8, !dbg !156, !tbaa !25
  %50 = load i32, i32* %11, align 4, !dbg !158, !tbaa !32
  %51 = sext i32 %50 to i64, !dbg !156
  %52 = getelementptr inbounds float, float* %49, i64 %51, !dbg !156
  %53 = load float, float* %52, align 4, !dbg !156, !tbaa !54
  %54 = load float*, float** %7, align 8, !dbg !159, !tbaa !25
  %55 = load i32, i32* %11, align 4, !dbg !160, !tbaa !32
  %56 = sext i32 %55 to i64, !dbg !159
  %57 = getelementptr inbounds float, float* %54, i64 %56, !dbg !159
  %58 = load float, float* %57, align 4, !dbg !159, !tbaa !54
  %59 = fadd float %53, %58, !dbg !161
  %60 = load i32, i32* %9, align 4, !dbg !162, !tbaa !32
  %61 = sitofp i32 %60 to float, !dbg !162
  %62 = fadd float %61, %59, !dbg !162
  %63 = fptosi float %62 to i32, !dbg !162
  store i32 %63, i32* %9, align 4, !dbg !162, !tbaa !32
  br label %64, !dbg !163

64:                                               ; preds = %48
  %65 = load i32, i32* %11, align 4, !dbg !164, !tbaa !32
  %66 = add nsw i32 %65, 1, !dbg !164
  store i32 %66, i32* %11, align 4, !dbg !164, !tbaa !32
  br label %42, !dbg !155, !llvm.loop !165

67:                                               ; preds = %46
  %68 = load i32, i32* %9, align 4, !dbg !167, !tbaa !32
  %69 = bitcast i32* %9 to i8*, !dbg !168
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #3, !dbg !168
  ret i32 %68, !dbg !169
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bar2(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !170 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store float* %0, float** %5, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata float** %5, metadata !172, metadata !DIExpression()), !dbg !178
  store float* %1, float** %6, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata float** %6, metadata !173, metadata !DIExpression()), !dbg !179
  store float* %2, float** %7, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata float** %7, metadata !174, metadata !DIExpression()), !dbg !180
  store i32 %3, i32* %8, align 4, !tbaa !32
  call void @llvm.dbg.declare(metadata i32* %8, metadata !175, metadata !DIExpression()), !dbg !181
  %10 = bitcast i32* %9 to i8*, !dbg !182
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !182
  call void @llvm.dbg.declare(metadata i32* %9, metadata !176, metadata !DIExpression()), !dbg !183
  store i32 0, i32* %9, align 4, !dbg !183, !tbaa !32
  br label %11, !dbg !182

11:                                               ; preds = %51, %4
  %12 = load i32, i32* %9, align 4, !dbg !184, !tbaa !32
  %13 = load i32, i32* %8, align 4, !dbg !186, !tbaa !32
  %14 = icmp slt i32 %12, %13, !dbg !187
  br i1 %14, label %17, label %15, !dbg !188

15:                                               ; preds = %11
  %16 = bitcast i32* %9 to i8*, !dbg !189
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3, !dbg !189
  br label %54

17:                                               ; preds = %11
  %18 = load float*, float** %5, align 8, !dbg !190, !tbaa !25
  %19 = load i32, i32* %9, align 4, !dbg !192, !tbaa !32
  %20 = sext i32 %19 to i64, !dbg !190
  %21 = getelementptr inbounds float, float* %18, i64 %20, !dbg !190
  %22 = load float, float* %21, align 4, !dbg !190, !tbaa !54
  %23 = load float*, float** %7, align 8, !dbg !193, !tbaa !25
  %24 = load i32, i32* %9, align 4, !dbg !194, !tbaa !32
  %25 = sext i32 %24 to i64, !dbg !193
  %26 = getelementptr inbounds float, float* %23, i64 %25, !dbg !193
  %27 = load float, float* %26, align 4, !dbg !193, !tbaa !54
  %28 = fmul float %22, %27, !dbg !195
  %29 = load float*, float** %5, align 8, !dbg !196, !tbaa !25
  %30 = load i32, i32* %9, align 4, !dbg !197, !tbaa !32
  %31 = sext i32 %30 to i64, !dbg !196
  %32 = getelementptr inbounds float, float* %29, i64 %31, !dbg !196
  store float %28, float* %32, align 4, !dbg !198, !tbaa !54
  %33 = load float*, float** %5, align 8, !dbg !199, !tbaa !25
  %34 = load i32, i32* %9, align 4, !dbg !201, !tbaa !32
  %35 = sext i32 %34 to i64, !dbg !199
  %36 = getelementptr inbounds float, float* %33, i64 %35, !dbg !199
  %37 = load float, float* %36, align 4, !dbg !199, !tbaa !54
  %38 = fcmp ogt float %37, 5.000000e+00, !dbg !202
  br i1 %38, label %39, label %50, !dbg !203

39:                                               ; preds = %17
  %40 = load float*, float** %5, align 8, !dbg !204, !tbaa !25
  %41 = load i32, i32* %9, align 4, !dbg !206, !tbaa !32
  %42 = sub nsw i32 %41, 1, !dbg !207
  %43 = sext i32 %42 to i64, !dbg !204
  %44 = getelementptr inbounds float, float* %40, i64 %43, !dbg !204
  %45 = load float, float* %44, align 4, !dbg !204, !tbaa !54
  %46 = load float*, float** %7, align 8, !dbg !208, !tbaa !25
  %47 = load i32, i32* %9, align 4, !dbg !209, !tbaa !32
  %48 = sext i32 %47 to i64, !dbg !208
  %49 = getelementptr inbounds float, float* %46, i64 %48, !dbg !208
  store float %45, float* %49, align 4, !dbg !210, !tbaa !54
  br label %50, !dbg !211

50:                                               ; preds = %39, %17
  br label %51, !dbg !212

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4, !dbg !213, !tbaa !32
  %53 = add nsw i32 %52, 1, !dbg !213
  store i32 %53, i32* %9, align 4, !dbg !213, !tbaa !32
  br label %11, !dbg !189, !llvm.loop !214

54:                                               ; preds = %15
  ret i32 0, !dbg !216
}

; Function Attrs: nounwind uwtable
define dso_local i32 @test(i32* %0, float* %1, float* %2, float* %3, i32 %4) #0 !dbg !217 {
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %6, metadata !222, metadata !DIExpression()), !dbg !229
  store float* %1, float** %7, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata float** %7, metadata !223, metadata !DIExpression()), !dbg !230
  store float* %2, float** %8, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata float** %8, metadata !224, metadata !DIExpression()), !dbg !231
  store float* %3, float** %9, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata float** %9, metadata !225, metadata !DIExpression()), !dbg !232
  store i32 %4, i32* %10, align 4, !tbaa !32
  call void @llvm.dbg.declare(metadata i32* %10, metadata !226, metadata !DIExpression()), !dbg !233
  %12 = bitcast i32* %11 to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !234
  call void @llvm.dbg.declare(metadata i32* %11, metadata !227, metadata !DIExpression()), !dbg !235
  store i32 0, i32* %11, align 4, !dbg !235, !tbaa !32
  br label %13, !dbg !234

13:                                               ; preds = %32, %5
  %14 = load i32, i32* %11, align 4, !dbg !236, !tbaa !32
  %15 = icmp slt i32 %14, 10, !dbg !238
  br i1 %15, label %18, label %16, !dbg !239

16:                                               ; preds = %13
  %17 = bitcast i32* %11 to i8*, !dbg !240
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #3, !dbg !240
  br label %35

18:                                               ; preds = %13
  %19 = load float*, float** %7, align 8, !dbg !241, !tbaa !25
  %20 = load float*, float** %8, align 8, !dbg !243, !tbaa !25
  %21 = load float*, float** %9, align 8, !dbg !244, !tbaa !25
  %22 = load i32, i32* %10, align 4, !dbg !245, !tbaa !32
  %23 = call i32 @bar2(float* %19, float* %20, float* %21, i32 %22), !dbg !246
  %24 = load i32*, i32** %6, align 8, !dbg !247, !tbaa !25
  %25 = load i32, i32* %24, align 4, !dbg !249, !tbaa !32
  %26 = icmp ne i32 %25, 0, !dbg !249
  br i1 %26, label %27, label %29, !dbg !250

27:                                               ; preds = %18
  %28 = load i32*, i32** %6, align 8, !dbg !251, !tbaa !25
  store i32 1, i32* %28, align 4, !dbg !253, !tbaa !32
  br label %31, !dbg !254

29:                                               ; preds = %18
  %30 = load i32*, i32** %6, align 8, !dbg !255, !tbaa !25
  store i32 0, i32* %30, align 4, !dbg !257, !tbaa !32
  br label %31

31:                                               ; preds = %29, %27
  br label %32, !dbg !258

32:                                               ; preds = %31
  %33 = load i32, i32* %11, align 4, !dbg !259, !tbaa !32
  %34 = add nsw i32 %33, 1, !dbg !259
  store i32 %34, i32* %11, align 4, !dbg !259, !tbaa !32
  br label %13, !dbg !240, !llvm.loop !260

35:                                               ; preds = %16
  ret i32 0, !dbg !262
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
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !11, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!14 = !{!15, !16, !17, !18, !19, !21}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 1, type: !11)
!16 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 1, type: !11)
!17 = !DILocalVariable(name: "c", arg: 3, scope: !7, file: !1, line: 1, type: !11)
!18 = !DILocalVariable(name: "n", arg: 4, scope: !7, file: !1, line: 1, type: !10)
!19 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 2, type: !10)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 2, column: 5)
!21 = !DILocalVariable(name: "j", scope: !22, file: !1, line: 3, type: !10)
!22 = distinct !DILexicalBlock(scope: !23, file: !1, line: 3, column: 9)
!23 = distinct !DILexicalBlock(scope: !24, file: !1, line: 2, column: 33)
!24 = distinct !DILexicalBlock(scope: !20, file: !1, line: 2, column: 5)
!25 = !{!26, !26, i64 0}
!26 = !{!"any pointer", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 1, column: 29, scope: !7)
!30 = !DILocation(line: 1, column: 52, scope: !7)
!31 = !DILocation(line: 1, column: 75, scope: !7)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !27, i64 0}
!34 = !DILocation(line: 1, column: 82, scope: !7)
!35 = !DILocation(line: 2, column: 10, scope: !20)
!36 = !DILocation(line: 2, column: 14, scope: !20)
!37 = !DILocation(line: 2, column: 21, scope: !24)
!38 = !DILocation(line: 2, column: 25, scope: !24)
!39 = !DILocation(line: 2, column: 23, scope: !24)
!40 = !DILocation(line: 2, column: 5, scope: !20)
!41 = !DILocation(line: 2, column: 5, scope: !24)
!42 = !DILocation(line: 3, column: 14, scope: !22)
!43 = !DILocation(line: 3, column: 18, scope: !22)
!44 = !DILocation(line: 3, column: 25, scope: !45)
!45 = distinct !DILexicalBlock(scope: !22, file: !1, line: 3, column: 9)
!46 = !DILocation(line: 3, column: 29, scope: !45)
!47 = !DILocation(line: 3, column: 27, scope: !45)
!48 = !DILocation(line: 3, column: 9, scope: !22)
!49 = !DILocation(line: 3, column: 9, scope: !45)
!50 = !DILocation(line: 5, column: 16, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 5, column: 16)
!52 = distinct !DILexicalBlock(scope: !45, file: !1, line: 3, column: 37)
!53 = !DILocation(line: 5, column: 18, scope: !51)
!54 = !{!55, !55, i64 0}
!55 = !{!"float", !27, i64 0}
!56 = !DILocation(line: 5, column: 21, scope: !51)
!57 = !DILocation(line: 5, column: 16, scope: !52)
!58 = !DILocation(line: 6, column: 25, scope: !59)
!59 = distinct !DILexicalBlock(scope: !51, file: !1, line: 5, column: 25)
!60 = !DILocation(line: 6, column: 27, scope: !59)
!61 = !DILocation(line: 6, column: 32, scope: !59)
!62 = !DILocation(line: 6, column: 34, scope: !59)
!63 = !DILocation(line: 6, column: 30, scope: !59)
!64 = !DILocation(line: 6, column: 17, scope: !59)
!65 = !DILocation(line: 6, column: 19, scope: !59)
!66 = !DILocation(line: 6, column: 22, scope: !59)
!67 = !DILocation(line: 7, column: 13, scope: !59)
!68 = !DILocation(line: 8, column: 17, scope: !69)
!69 = distinct !DILexicalBlock(scope: !52, file: !1, line: 8, column: 17)
!70 = !DILocation(line: 8, column: 19, scope: !69)
!71 = !DILocation(line: 8, column: 22, scope: !69)
!72 = !DILocation(line: 8, column: 17, scope: !52)
!73 = !DILocation(line: 9, column: 25, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !1, line: 8, column: 26)
!75 = !DILocation(line: 9, column: 27, scope: !74)
!76 = !DILocation(line: 9, column: 32, scope: !74)
!77 = !DILocation(line: 9, column: 34, scope: !74)
!78 = !DILocation(line: 9, column: 30, scope: !74)
!79 = !DILocation(line: 9, column: 17, scope: !74)
!80 = !DILocation(line: 9, column: 19, scope: !74)
!81 = !DILocation(line: 9, column: 22, scope: !74)
!82 = !DILocation(line: 10, column: 13, scope: !74)
!83 = !DILocation(line: 11, column: 17, scope: !84)
!84 = distinct !DILexicalBlock(scope: !52, file: !1, line: 11, column: 17)
!85 = !DILocation(line: 11, column: 19, scope: !84)
!86 = !DILocation(line: 11, column: 22, scope: !84)
!87 = !DILocation(line: 11, column: 17, scope: !52)
!88 = !DILocation(line: 12, column: 25, scope: !89)
!89 = distinct !DILexicalBlock(scope: !84, file: !1, line: 11, column: 26)
!90 = !DILocation(line: 12, column: 27, scope: !89)
!91 = !DILocation(line: 12, column: 32, scope: !89)
!92 = !DILocation(line: 12, column: 34, scope: !89)
!93 = !DILocation(line: 12, column: 30, scope: !89)
!94 = !DILocation(line: 12, column: 17, scope: !89)
!95 = !DILocation(line: 12, column: 19, scope: !89)
!96 = !DILocation(line: 12, column: 22, scope: !89)
!97 = !DILocation(line: 13, column: 13, scope: !89)
!98 = !DILocation(line: 14, column: 9, scope: !52)
!99 = !DILocation(line: 3, column: 32, scope: !45)
!100 = distinct !{!100, !48, !101}
!101 = !DILocation(line: 14, column: 9, scope: !22)
!102 = !DILocation(line: 15, column: 5, scope: !23)
!103 = !DILocation(line: 2, column: 28, scope: !24)
!104 = distinct !{!104, !40, !105}
!105 = !DILocation(line: 15, column: 5, scope: !20)
!106 = !DILocation(line: 16, column: 5, scope: !7)
!107 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 19, type: !108, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{!10, !12, !12, !12, !10}
!110 = !{!111, !112, !113, !114, !115, !116, !118}
!111 = !DILocalVariable(name: "a", arg: 1, scope: !107, file: !1, line: 19, type: !12)
!112 = !DILocalVariable(name: "b", arg: 2, scope: !107, file: !1, line: 19, type: !12)
!113 = !DILocalVariable(name: "c", arg: 3, scope: !107, file: !1, line: 19, type: !12)
!114 = !DILocalVariable(name: "n", arg: 4, scope: !107, file: !1, line: 19, type: !10)
!115 = !DILocalVariable(name: "d", scope: !107, file: !1, line: 21, type: !10)
!116 = !DILocalVariable(name: "i", scope: !117, file: !1, line: 24, type: !10)
!117 = distinct !DILexicalBlock(scope: !107, file: !1, line: 24, column: 5)
!118 = !DILocalVariable(name: "i", scope: !119, file: !1, line: 29, type: !10)
!119 = distinct !DILexicalBlock(scope: !107, file: !1, line: 29, column: 5)
!120 = !DILocation(line: 19, column: 16, scope: !107)
!121 = !DILocation(line: 19, column: 26, scope: !107)
!122 = !DILocation(line: 19, column: 36, scope: !107)
!123 = !DILocation(line: 19, column: 43, scope: !107)
!124 = !DILocation(line: 21, column: 5, scope: !107)
!125 = !DILocation(line: 21, column: 9, scope: !107)
!126 = !DILocation(line: 24, column: 10, scope: !117)
!127 = !DILocation(line: 24, column: 14, scope: !117)
!128 = !DILocation(line: 24, column: 21, scope: !129)
!129 = distinct !DILexicalBlock(scope: !117, file: !1, line: 24, column: 5)
!130 = !DILocation(line: 24, column: 25, scope: !129)
!131 = !DILocation(line: 24, column: 23, scope: !129)
!132 = !DILocation(line: 24, column: 5, scope: !117)
!133 = !DILocation(line: 24, column: 5, scope: !129)
!134 = !DILocation(line: 25, column: 14, scope: !135)
!135 = distinct !DILexicalBlock(scope: !129, file: !1, line: 24, column: 33)
!136 = !DILocation(line: 25, column: 16, scope: !135)
!137 = !DILocation(line: 25, column: 18, scope: !135)
!138 = !DILocation(line: 25, column: 25, scope: !135)
!139 = !DILocation(line: 25, column: 27, scope: !135)
!140 = !DILocation(line: 25, column: 23, scope: !135)
!141 = !DILocation(line: 25, column: 7, scope: !135)
!142 = !DILocation(line: 25, column: 9, scope: !135)
!143 = !DILocation(line: 25, column: 12, scope: !135)
!144 = !DILocation(line: 26, column: 5, scope: !135)
!145 = !DILocation(line: 24, column: 28, scope: !129)
!146 = distinct !{!146, !132, !147}
!147 = !DILocation(line: 26, column: 5, scope: !117)
!148 = !DILocation(line: 29, column: 10, scope: !119)
!149 = !DILocation(line: 29, column: 14, scope: !119)
!150 = !DILocation(line: 29, column: 21, scope: !151)
!151 = distinct !DILexicalBlock(scope: !119, file: !1, line: 29, column: 5)
!152 = !DILocation(line: 29, column: 25, scope: !151)
!153 = !DILocation(line: 29, column: 23, scope: !151)
!154 = !DILocation(line: 29, column: 5, scope: !119)
!155 = !DILocation(line: 29, column: 5, scope: !151)
!156 = !DILocation(line: 30, column: 13, scope: !157)
!157 = distinct !DILexicalBlock(scope: !151, file: !1, line: 29, column: 33)
!158 = !DILocation(line: 30, column: 15, scope: !157)
!159 = !DILocation(line: 30, column: 20, scope: !157)
!160 = !DILocation(line: 30, column: 22, scope: !157)
!161 = !DILocation(line: 30, column: 18, scope: !157)
!162 = !DILocation(line: 30, column: 10, scope: !157)
!163 = !DILocation(line: 32, column: 5, scope: !157)
!164 = !DILocation(line: 29, column: 28, scope: !151)
!165 = distinct !{!165, !154, !166}
!166 = !DILocation(line: 32, column: 5, scope: !119)
!167 = !DILocation(line: 33, column: 12, scope: !107)
!168 = !DILocation(line: 35, column: 1, scope: !107)
!169 = !DILocation(line: 33, column: 5, scope: !107)
!170 = distinct !DISubprogram(name: "bar2", scope: !1, file: !1, line: 38, type: !108, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !171)
!171 = !{!172, !173, !174, !175, !176}
!172 = !DILocalVariable(name: "a", arg: 1, scope: !170, file: !1, line: 38, type: !12)
!173 = !DILocalVariable(name: "b", arg: 2, scope: !170, file: !1, line: 38, type: !12)
!174 = !DILocalVariable(name: "c", arg: 3, scope: !170, file: !1, line: 38, type: !12)
!175 = !DILocalVariable(name: "n", arg: 4, scope: !170, file: !1, line: 38, type: !10)
!176 = !DILocalVariable(name: "i", scope: !177, file: !1, line: 40, type: !10)
!177 = distinct !DILexicalBlock(scope: !170, file: !1, line: 40, column: 6)
!178 = !DILocation(line: 38, column: 17, scope: !170)
!179 = !DILocation(line: 38, column: 27, scope: !170)
!180 = !DILocation(line: 38, column: 37, scope: !170)
!181 = !DILocation(line: 38, column: 44, scope: !170)
!182 = !DILocation(line: 40, column: 11, scope: !177)
!183 = !DILocation(line: 40, column: 15, scope: !177)
!184 = !DILocation(line: 40, column: 22, scope: !185)
!185 = distinct !DILexicalBlock(scope: !177, file: !1, line: 40, column: 6)
!186 = !DILocation(line: 40, column: 26, scope: !185)
!187 = !DILocation(line: 40, column: 24, scope: !185)
!188 = !DILocation(line: 40, column: 6, scope: !177)
!189 = !DILocation(line: 40, column: 6, scope: !185)
!190 = !DILocation(line: 41, column: 14, scope: !191)
!191 = distinct !DILexicalBlock(scope: !185, file: !1, line: 40, column: 34)
!192 = !DILocation(line: 41, column: 16, scope: !191)
!193 = !DILocation(line: 41, column: 21, scope: !191)
!194 = !DILocation(line: 41, column: 23, scope: !191)
!195 = !DILocation(line: 41, column: 19, scope: !191)
!196 = !DILocation(line: 41, column: 7, scope: !191)
!197 = !DILocation(line: 41, column: 9, scope: !191)
!198 = !DILocation(line: 41, column: 12, scope: !191)
!199 = !DILocation(line: 43, column: 9, scope: !200)
!200 = distinct !DILexicalBlock(scope: !191, file: !1, line: 43, column: 9)
!201 = !DILocation(line: 43, column: 11, scope: !200)
!202 = !DILocation(line: 43, column: 14, scope: !200)
!203 = !DILocation(line: 43, column: 9, scope: !191)
!204 = !DILocation(line: 44, column: 15, scope: !205)
!205 = distinct !DILexicalBlock(scope: !200, file: !1, line: 43, column: 18)
!206 = !DILocation(line: 44, column: 17, scope: !205)
!207 = !DILocation(line: 44, column: 18, scope: !205)
!208 = !DILocation(line: 44, column: 8, scope: !205)
!209 = !DILocation(line: 44, column: 10, scope: !205)
!210 = !DILocation(line: 44, column: 13, scope: !205)
!211 = !DILocation(line: 45, column: 6, scope: !205)
!212 = !DILocation(line: 46, column: 5, scope: !191)
!213 = !DILocation(line: 40, column: 29, scope: !185)
!214 = distinct !{!214, !188, !215}
!215 = !DILocation(line: 46, column: 5, scope: !177)
!216 = !DILocation(line: 48, column: 5, scope: !170)
!217 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 52, type: !218, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !221)
!218 = !DISubroutineType(types: !219)
!219 = !{!10, !220, !12, !12, !12, !10}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!221 = !{!222, !223, !224, !225, !226, !227}
!222 = !DILocalVariable(name: "number", arg: 1, scope: !217, file: !1, line: 52, type: !220)
!223 = !DILocalVariable(name: "a", arg: 2, scope: !217, file: !1, line: 52, type: !12)
!224 = !DILocalVariable(name: "b", arg: 3, scope: !217, file: !1, line: 52, type: !12)
!225 = !DILocalVariable(name: "c", arg: 4, scope: !217, file: !1, line: 52, type: !12)
!226 = !DILocalVariable(name: "n", arg: 5, scope: !217, file: !1, line: 52, type: !10)
!227 = !DILocalVariable(name: "i", scope: !228, file: !1, line: 53, type: !10)
!228 = distinct !DILexicalBlock(scope: !217, file: !1, line: 53, column: 3)
!229 = !DILocation(line: 52, column: 15, scope: !217)
!230 = !DILocation(line: 52, column: 30, scope: !217)
!231 = !DILocation(line: 52, column: 40, scope: !217)
!232 = !DILocation(line: 52, column: 50, scope: !217)
!233 = !DILocation(line: 52, column: 57, scope: !217)
!234 = !DILocation(line: 53, column: 8, scope: !228)
!235 = !DILocation(line: 53, column: 12, scope: !228)
!236 = !DILocation(line: 53, column: 19, scope: !237)
!237 = distinct !DILexicalBlock(scope: !228, file: !1, line: 53, column: 3)
!238 = !DILocation(line: 53, column: 21, scope: !237)
!239 = !DILocation(line: 53, column: 3, scope: !228)
!240 = !DILocation(line: 53, column: 3, scope: !237)
!241 = !DILocation(line: 54, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 53, column: 31)
!243 = !DILocation(line: 54, column: 12, scope: !242)
!244 = !DILocation(line: 54, column: 15, scope: !242)
!245 = !DILocation(line: 54, column: 18, scope: !242)
!246 = !DILocation(line: 54, column: 4, scope: !242)
!247 = !DILocation(line: 56, column: 8, scope: !248)
!248 = distinct !DILexicalBlock(scope: !242, file: !1, line: 56, column: 7)
!249 = !DILocation(line: 56, column: 7, scope: !248)
!250 = !DILocation(line: 56, column: 7, scope: !242)
!251 = !DILocation(line: 57, column: 9, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !1, line: 56, column: 15)
!253 = !DILocation(line: 57, column: 15, scope: !252)
!254 = !DILocation(line: 58, column: 4, scope: !252)
!255 = !DILocation(line: 59, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !248, file: !1, line: 58, column: 9)
!257 = !DILocation(line: 59, column: 16, scope: !256)
!258 = !DILocation(line: 61, column: 3, scope: !242)
!259 = !DILocation(line: 53, column: 27, scope: !237)
!260 = distinct !{!260, !239, !261}
!261 = !DILocation(line: 61, column: 3, scope: !228)
!262 = !DILocation(line: 62, column: 4, scope: !217)
