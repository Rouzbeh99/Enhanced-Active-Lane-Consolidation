; ModuleID = 'rand2.c'
source_filename = "rand2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }

@seed3 = internal global i32 -1, align 4, !dbg !0
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"argument to setseed must be negative!\0A\00", align 1
@seed2 = internal global i32 0, align 4, !dbg !23
@iv = internal global [32 x i32] zeroinitializer, align 16, !dbg !25
@iy = internal global i32 0, align 4, !dbg !30

; Function Attrs: nounwind uwtable
define dso_local double @rand2() #0 !dbg !36 {
  %1 = call double @rand2a(i32* @seed3), !dbg !40
  ret double %1, !dbg !41
}

; Function Attrs: nounwind uwtable
define internal double @rand2a(i32* %0) #0 !dbg !42 {
  %2 = alloca double, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %3, metadata !47, metadata !DIExpression()), !dbg !55
  %8 = bitcast i32* %4 to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %4, metadata !48, metadata !DIExpression()), !dbg !57
  %9 = bitcast i32* %5 to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %5, metadata !49, metadata !DIExpression()), !dbg !58
  %10 = bitcast double* %6 to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #5, !dbg !59
  call void @llvm.dbg.declare(metadata double* %6, metadata !50, metadata !DIExpression()), !dbg !60
  %11 = load i32*, i32** %3, align 8, !dbg !61, !tbaa !51
  %12 = load i32, i32* %11, align 4, !dbg !63, !tbaa !64
  %13 = icmp sle i32 %12, 0, !dbg !66
  br i1 %13, label %14, label %68, !dbg !67

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8, !dbg !68, !tbaa !51
  %16 = load i32, i32* %15, align 4, !dbg !71, !tbaa !64
  %17 = sub nsw i32 0, %16, !dbg !72
  %18 = icmp slt i32 %17, 1, !dbg !73
  br i1 %18, label %19, label %21, !dbg !74

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8, !dbg !75, !tbaa !51
  store i32 1, i32* %20, align 4, !dbg !76, !tbaa !64
  br label %26, !dbg !77

21:                                               ; preds = %14
  %22 = load i32*, i32** %3, align 8, !dbg !78, !tbaa !51
  %23 = load i32, i32* %22, align 4, !dbg !79, !tbaa !64
  %24 = sub nsw i32 0, %23, !dbg !80
  %25 = load i32*, i32** %3, align 8, !dbg !81, !tbaa !51
  store i32 %24, i32* %25, align 4, !dbg !82, !tbaa !64
  br label %26

26:                                               ; preds = %21, %19
  %27 = load i32*, i32** %3, align 8, !dbg !83, !tbaa !51
  %28 = load i32, i32* %27, align 4, !dbg !84, !tbaa !64
  store i32 %28, i32* @seed2, align 4, !dbg !85, !tbaa !64
  store i32 39, i32* %4, align 4, !dbg !86, !tbaa !64
  br label %29, !dbg !88

29:                                               ; preds = %63, %26
  %30 = load i32, i32* %4, align 4, !dbg !89, !tbaa !64
  %31 = icmp sge i32 %30, 0, !dbg !91
  br i1 %31, label %32, label %66, !dbg !92

32:                                               ; preds = %29
  %33 = load i32*, i32** %3, align 8, !dbg !93, !tbaa !51
  %34 = load i32, i32* %33, align 4, !dbg !95, !tbaa !64
  %35 = sdiv i32 %34, 53668, !dbg !96
  store i32 %35, i32* %5, align 4, !dbg !97, !tbaa !64
  %36 = load i32*, i32** %3, align 8, !dbg !98, !tbaa !51
  %37 = load i32, i32* %36, align 4, !dbg !99, !tbaa !64
  %38 = load i32, i32* %5, align 4, !dbg !100, !tbaa !64
  %39 = mul nsw i32 %38, 53668, !dbg !101
  %40 = sub nsw i32 %37, %39, !dbg !102
  %41 = mul nsw i32 40014, %40, !dbg !103
  %42 = load i32, i32* %5, align 4, !dbg !104, !tbaa !64
  %43 = mul nsw i32 %42, 12211, !dbg !105
  %44 = sub nsw i32 %41, %43, !dbg !106
  %45 = load i32*, i32** %3, align 8, !dbg !107, !tbaa !51
  store i32 %44, i32* %45, align 4, !dbg !108, !tbaa !64
  %46 = load i32*, i32** %3, align 8, !dbg !109, !tbaa !51
  %47 = load i32, i32* %46, align 4, !dbg !111, !tbaa !64
  %48 = icmp slt i32 %47, 0, !dbg !112
  br i1 %48, label %49, label %53, !dbg !113

49:                                               ; preds = %32
  %50 = load i32*, i32** %3, align 8, !dbg !114, !tbaa !51
  %51 = load i32, i32* %50, align 4, !dbg !115, !tbaa !64
  %52 = add nsw i32 %51, 2147483563, !dbg !115
  store i32 %52, i32* %50, align 4, !dbg !115, !tbaa !64
  br label %53, !dbg !116

53:                                               ; preds = %49, %32
  %54 = load i32, i32* %4, align 4, !dbg !117, !tbaa !64
  %55 = icmp slt i32 %54, 32, !dbg !119
  br i1 %55, label %56, label %62, !dbg !120

56:                                               ; preds = %53
  %57 = load i32*, i32** %3, align 8, !dbg !121, !tbaa !51
  %58 = load i32, i32* %57, align 4, !dbg !122, !tbaa !64
  %59 = load i32, i32* %4, align 4, !dbg !123, !tbaa !64
  %60 = sext i32 %59 to i64, !dbg !124
  %61 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %60, !dbg !124
  store i32 %58, i32* %61, align 4, !dbg !125, !tbaa !64
  br label %62, !dbg !124

62:                                               ; preds = %56, %53
  br label %63, !dbg !126

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4, !dbg !127, !tbaa !64
  %65 = add nsw i32 %64, -1, !dbg !127
  store i32 %65, i32* %4, align 4, !dbg !127, !tbaa !64
  br label %29, !dbg !128, !llvm.loop !129

66:                                               ; preds = %29
  %67 = load i32, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @iv, i64 0, i64 0), align 16, !dbg !131, !tbaa !64
  store i32 %67, i32* @iy, align 4, !dbg !132, !tbaa !64
  br label %68, !dbg !133

68:                                               ; preds = %66, %1
  %69 = load i32*, i32** %3, align 8, !dbg !134, !tbaa !51
  %70 = load i32, i32* %69, align 4, !dbg !135, !tbaa !64
  %71 = sdiv i32 %70, 53668, !dbg !136
  store i32 %71, i32* %5, align 4, !dbg !137, !tbaa !64
  %72 = load i32*, i32** %3, align 8, !dbg !138, !tbaa !51
  %73 = load i32, i32* %72, align 4, !dbg !139, !tbaa !64
  %74 = load i32, i32* %5, align 4, !dbg !140, !tbaa !64
  %75 = mul nsw i32 %74, 53668, !dbg !141
  %76 = sub nsw i32 %73, %75, !dbg !142
  %77 = mul nsw i32 40014, %76, !dbg !143
  %78 = load i32, i32* %5, align 4, !dbg !144, !tbaa !64
  %79 = mul nsw i32 %78, 12211, !dbg !145
  %80 = sub nsw i32 %77, %79, !dbg !146
  %81 = load i32*, i32** %3, align 8, !dbg !147, !tbaa !51
  store i32 %80, i32* %81, align 4, !dbg !148, !tbaa !64
  %82 = load i32*, i32** %3, align 8, !dbg !149, !tbaa !51
  %83 = load i32, i32* %82, align 4, !dbg !151, !tbaa !64
  %84 = icmp slt i32 %83, 0, !dbg !152
  br i1 %84, label %85, label %89, !dbg !153

85:                                               ; preds = %68
  %86 = load i32*, i32** %3, align 8, !dbg !154, !tbaa !51
  %87 = load i32, i32* %86, align 4, !dbg !155, !tbaa !64
  %88 = add nsw i32 %87, 2147483563, !dbg !155
  store i32 %88, i32* %86, align 4, !dbg !155, !tbaa !64
  br label %89, !dbg !156

89:                                               ; preds = %85, %68
  %90 = load i32, i32* @seed2, align 4, !dbg !157, !tbaa !64
  %91 = sdiv i32 %90, 52774, !dbg !158
  store i32 %91, i32* %5, align 4, !dbg !159, !tbaa !64
  %92 = load i32, i32* @seed2, align 4, !dbg !160, !tbaa !64
  %93 = load i32, i32* %5, align 4, !dbg !161, !tbaa !64
  %94 = mul nsw i32 %93, 52774, !dbg !162
  %95 = sub nsw i32 %92, %94, !dbg !163
  %96 = mul nsw i32 40692, %95, !dbg !164
  %97 = load i32, i32* %5, align 4, !dbg !165, !tbaa !64
  %98 = mul nsw i32 %97, 3791, !dbg !166
  %99 = sub nsw i32 %96, %98, !dbg !167
  store i32 %99, i32* @seed2, align 4, !dbg !168, !tbaa !64
  %100 = load i32, i32* @seed2, align 4, !dbg !169, !tbaa !64
  %101 = icmp slt i32 %100, 0, !dbg !171
  br i1 %101, label %102, label %105, !dbg !172

102:                                              ; preds = %89
  %103 = load i32, i32* @seed2, align 4, !dbg !173, !tbaa !64
  %104 = add nsw i32 %103, 2147483399, !dbg !173
  store i32 %104, i32* @seed2, align 4, !dbg !173, !tbaa !64
  br label %105, !dbg !174

105:                                              ; preds = %102, %89
  %106 = load i32, i32* @iy, align 4, !dbg !175, !tbaa !64
  %107 = sdiv i32 %106, 67108862, !dbg !176
  store i32 %107, i32* %4, align 4, !dbg !177, !tbaa !64
  %108 = load i32, i32* %4, align 4, !dbg !178, !tbaa !64
  %109 = sext i32 %108 to i64, !dbg !179
  %110 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %109, !dbg !179
  %111 = load i32, i32* %110, align 4, !dbg !179, !tbaa !64
  %112 = load i32, i32* @seed2, align 4, !dbg !180, !tbaa !64
  %113 = sub nsw i32 %111, %112, !dbg !181
  store i32 %113, i32* @iy, align 4, !dbg !182, !tbaa !64
  %114 = load i32*, i32** %3, align 8, !dbg !183, !tbaa !51
  %115 = load i32, i32* %114, align 4, !dbg !184, !tbaa !64
  %116 = load i32, i32* %4, align 4, !dbg !185, !tbaa !64
  %117 = sext i32 %116 to i64, !dbg !186
  %118 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %117, !dbg !186
  store i32 %115, i32* %118, align 4, !dbg !187, !tbaa !64
  %119 = load i32, i32* @iy, align 4, !dbg !188, !tbaa !64
  %120 = icmp slt i32 %119, 1, !dbg !190
  br i1 %120, label %121, label %124, !dbg !191

121:                                              ; preds = %105
  %122 = load i32, i32* @iy, align 4, !dbg !192, !tbaa !64
  %123 = add nsw i32 %122, 2147483562, !dbg !192
  store i32 %123, i32* @iy, align 4, !dbg !192, !tbaa !64
  br label %124, !dbg !193

124:                                              ; preds = %121, %105
  %125 = load i32, i32* @iy, align 4, !dbg !194, !tbaa !64
  %126 = sitofp i32 %125 to double, !dbg !194
  %127 = fmul double 0x3E0000000AA00007, %126, !dbg !196
  store double %127, double* %6, align 8, !dbg !197, !tbaa !198
  %128 = fcmp ogt double %127, 0x3FEFFFFFFFFFFBC7, !dbg !200
  br i1 %128, label %129, label %130, !dbg !201

129:                                              ; preds = %124
  store double 0x3FEFFFFFFFFFFBC7, double* %2, align 8, !dbg !202
  store i32 1, i32* %7, align 4
  br label %132, !dbg !202

130:                                              ; preds = %124
  %131 = load double, double* %6, align 8, !dbg !203, !tbaa !198
  store double %131, double* %2, align 8, !dbg !204
  store i32 1, i32* %7, align 4
  br label %132, !dbg !204

132:                                              ; preds = %130, %129
  %133 = bitcast double* %6 to i8*, !dbg !205
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %133) #5, !dbg !205
  %134 = bitcast i32* %5 to i8*, !dbg !205
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %134) #5, !dbg !205
  %135 = bitcast i32* %4 to i8*, !dbg !205
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %135) #5, !dbg !205
  %136 = load double, double* %2, align 8, !dbg !205
  ret double %136, !dbg !205
}

; Function Attrs: nounwind uwtable
define dso_local double @gauss(double* %0, double* %1) #0 !dbg !206 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  store double* %0, double** %3, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata double** %3, metadata !211, metadata !DIExpression()), !dbg !213
  store double* %1, double** %4, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata double** %4, metadata !212, metadata !DIExpression()), !dbg !214
  %5 = load double*, double** %3, align 8, !dbg !215, !tbaa !51
  %6 = load double*, double** %4, align 8, !dbg !216, !tbaa !51
  %7 = call double @gaussa(double* %5, double* %6, i32* @seed3), !dbg !217
  ret double %7, !dbg !218
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal double @gaussa(double* %0, double* %1, i32* %2) #0 !dbg !219 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double* %0, double** %4, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata double** %4, metadata !223, metadata !DIExpression()), !dbg !231
  store double* %1, double** %5, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata double** %5, metadata !224, metadata !DIExpression()), !dbg !232
  store i32* %2, i32** %6, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %6, metadata !225, metadata !DIExpression()), !dbg !233
  %12 = bitcast double* %7 to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #5, !dbg !234
  call void @llvm.dbg.declare(metadata double* %7, metadata !226, metadata !DIExpression()), !dbg !235
  %13 = bitcast double* %8 to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #5, !dbg !234
  call void @llvm.dbg.declare(metadata double* %8, metadata !227, metadata !DIExpression()), !dbg !236
  %14 = bitcast double* %9 to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #5, !dbg !234
  call void @llvm.dbg.declare(metadata double* %9, metadata !228, metadata !DIExpression()), !dbg !237
  %15 = bitcast double* %10 to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #5, !dbg !234
  call void @llvm.dbg.declare(metadata double* %10, metadata !229, metadata !DIExpression()), !dbg !238
  %16 = bitcast double* %11 to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #5, !dbg !234
  call void @llvm.dbg.declare(metadata double* %11, metadata !230, metadata !DIExpression()), !dbg !239
  br label %17, !dbg !240

17:                                               ; preds = %39, %3
  %18 = load i32*, i32** %6, align 8, !dbg !241, !tbaa !51
  %19 = call double @rand2a(i32* %18), !dbg !243
  %20 = fmul double 2.000000e+00, %19, !dbg !244
  %21 = fsub double %20, 1.000000e+00, !dbg !245
  store double %21, double* %10, align 8, !dbg !246, !tbaa !198
  %22 = load i32*, i32** %6, align 8, !dbg !247, !tbaa !51
  %23 = call double @rand2a(i32* %22), !dbg !248
  %24 = fmul double 2.000000e+00, %23, !dbg !249
  %25 = fsub double %24, 1.000000e+00, !dbg !250
  store double %25, double* %11, align 8, !dbg !251, !tbaa !198
  %26 = load double, double* %10, align 8, !dbg !252, !tbaa !198
  %27 = load double, double* %10, align 8, !dbg !253, !tbaa !198
  %28 = fmul double %26, %27, !dbg !254
  %29 = load double, double* %11, align 8, !dbg !255, !tbaa !198
  %30 = load double, double* %11, align 8, !dbg !256, !tbaa !198
  %31 = fmul double %29, %30, !dbg !257
  %32 = fadd double %28, %31, !dbg !258
  store double %32, double* %9, align 8, !dbg !259, !tbaa !198
  br label %33, !dbg !260

33:                                               ; preds = %17
  %34 = load double, double* %9, align 8, !dbg !261, !tbaa !198
  %35 = fcmp oge double %34, 1.000000e+00, !dbg !262
  br i1 %35, label %39, label %36, !dbg !263

36:                                               ; preds = %33
  %37 = load double, double* %9, align 8, !dbg !264, !tbaa !198
  %38 = fcmp oeq double %37, 0.000000e+00, !dbg !265
  br label %39, !dbg !263

39:                                               ; preds = %36, %33
  %40 = phi i1 [ true, %33 ], [ %38, %36 ]
  br i1 %40, label %17, label %41, !dbg !260, !llvm.loop !266

41:                                               ; preds = %39
  %42 = load double, double* %9, align 8, !dbg !268, !tbaa !198
  %43 = call double @log(double %42) #5, !dbg !269
  %44 = fmul double -2.000000e+00, %43, !dbg !270
  %45 = load double, double* %9, align 8, !dbg !271, !tbaa !198
  %46 = fdiv double %44, %45, !dbg !272
  %47 = call double @sqrt(double %46) #5, !dbg !273
  store double %47, double* %7, align 8, !dbg !274, !tbaa !198
  %48 = load double, double* %10, align 8, !dbg !275, !tbaa !198
  %49 = load double, double* %7, align 8, !dbg !276, !tbaa !198
  %50 = fmul double %48, %49, !dbg !277
  store double %50, double* %8, align 8, !dbg !278, !tbaa !198
  %51 = load double*, double** %5, align 8, !dbg !279, !tbaa !51
  %52 = load double, double* %51, align 8, !dbg !280, !tbaa !198
  %53 = load double, double* %8, align 8, !dbg !281, !tbaa !198
  %54 = fmul double %52, %53, !dbg !282
  %55 = load double*, double** %4, align 8, !dbg !283, !tbaa !51
  %56 = load double, double* %55, align 8, !dbg !284, !tbaa !198
  %57 = fadd double %54, %56, !dbg !285
  %58 = bitcast double* %11 to i8*, !dbg !286
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %58) #5, !dbg !286
  %59 = bitcast double* %10 to i8*, !dbg !286
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %59) #5, !dbg !286
  %60 = bitcast double* %9 to i8*, !dbg !286
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %60) #5, !dbg !286
  %61 = bitcast double* %8 to i8*, !dbg !286
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %61) #5, !dbg !286
  %62 = bitcast double* %7 to i8*, !dbg !286
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %62) #5, !dbg !286
  ret double %57, !dbg !287
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setseed(i32* %0) #0 !dbg !288 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %3, metadata !292, metadata !DIExpression()), !dbg !293
  %4 = load i32*, i32** %3, align 8, !dbg !294, !tbaa !51
  %5 = load i32, i32* %4, align 4, !dbg !296, !tbaa !64
  %6 = icmp sge i32 %5, 0, !dbg !297
  br i1 %6, label %7, label %10, !dbg !298

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !299, !tbaa !51
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)), !dbg !301
  store i32 1, i32* %2, align 4, !dbg !302
  br label %13, !dbg !302

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8, !dbg !303, !tbaa !51
  %12 = load i32, i32* %11, align 4, !dbg !305, !tbaa !64
  store i32 %12, i32* @seed3, align 4, !dbg !306, !tbaa !64
  store i32 0, i32* %2, align 4, !dbg !307
  br label %13, !dbg !307

13:                                               ; preds = %10, %7
  %14 = load i32, i32* %2, align 4, !dbg !308
  ret i32 %14, !dbg !308
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rseed() #0 !dbg !309 {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*, !dbg !314
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #5, !dbg !314
  call void @llvm.dbg.declare(metadata %struct.timeval* %1, metadata !313, metadata !DIExpression()), !dbg !315
  %3 = call i32 @gettimeofday(%struct.timeval* %1, i8* null) #5, !dbg !316
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0, !dbg !317
  %5 = load i64, i64* %4, align 8, !dbg !317, !tbaa !318
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1, !dbg !321
  %7 = load i64, i64* %6, align 8, !dbg !321, !tbaa !322
  %8 = xor i64 %5, %7, !dbg !323
  %9 = trunc i64 %8 to i32, !dbg !324
  %10 = sub nsw i32 0, %9, !dbg !325
  store i32 %10, i32* @seed3, align 4, !dbg !326, !tbaa !64
  %11 = load i32, i32* @seed3, align 4, !dbg !327, !tbaa !64
  %12 = bitcast %struct.timeval* %1 to i8*, !dbg !328
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %12) #5, !dbg !328
  ret i32 %11, !dbg !329
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare !dbg !7 dso_local i32 @gettimeofday(%struct.timeval*, i8*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #4

; Function Attrs: nounwind
declare dso_local double @log(double) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!32, !33, !34}
!llvm.ident = !{!35}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "seed3", scope: !2, file: !3, line: 73, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "rand2.c", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!4 = !{}
!5 = !{!6, !7, !11}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DISubprogram(name: "gettimeofday", scope: !8, file: !8, line: 66, type: !9, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/time.h", directory: "")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12, !6}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !14, line: 8, size: 128, elements: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "")
!15 = !{!16, !20}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !13, file: !14, line: 10, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !18, line: 160, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!19 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !13, file: !14, line: 11, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !18, line: 162, baseType: !19)
!22 = !{!23, !25, !30, !0}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "seed2", scope: !2, file: !3, line: 72, type: !11, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "iv", scope: !2, file: !3, line: 75, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 32)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "iy", scope: !2, file: !3, line: 74, type: !11, isLocal: true, isDefinition: true)
!32 = !{i32 7, !"Dwarf Version", i32 4}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{!"clang version 10.0.0-4ubuntu1 "}
!36 = distinct !DISubprogram(name: "rand2", scope: !3, file: !3, line: 169, type: !37, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!37 = !DISubroutineType(types: !38)
!38 = !{!39}
!39 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!40 = !DILocation(line: 172, column: 9, scope: !36)
!41 = !DILocation(line: 172, column: 2, scope: !36)
!42 = distinct !DISubprogram(name: "rand2a", scope: !3, file: !3, line: 99, type: !43, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!43 = !DISubroutineType(types: !44)
!44 = !{!39, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!46 = !{!47, !48, !49, !50}
!47 = !DILocalVariable(name: "seed", arg: 1, scope: !42, file: !3, line: 99, type: !45)
!48 = !DILocalVariable(name: "j", scope: !42, file: !3, line: 101, type: !11)
!49 = !DILocalVariable(name: "k", scope: !42, file: !3, line: 101, type: !11)
!50 = !DILocalVariable(name: "temp", scope: !42, file: !3, line: 102, type: !39)
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 99, column: 21, scope: !42)
!56 = !DILocation(line: 101, column: 2, scope: !42)
!57 = !DILocation(line: 101, column: 7, scope: !42)
!58 = !DILocation(line: 101, column: 10, scope: !42)
!59 = !DILocation(line: 102, column: 2, scope: !42)
!60 = !DILocation(line: 102, column: 9, scope: !42)
!61 = !DILocation(line: 104, column: 7, scope: !62)
!62 = distinct !DILexicalBlock(scope: !42, file: !3, line: 104, column: 6)
!63 = !DILocation(line: 104, column: 6, scope: !62)
!64 = !{!65, !65, i64 0}
!65 = !{!"int", !53, i64 0}
!66 = !DILocation(line: 104, column: 12, scope: !62)
!67 = !DILocation(line: 104, column: 6, scope: !42)
!68 = !DILocation(line: 105, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !3, line: 105, column: 7)
!70 = distinct !DILexicalBlock(scope: !62, file: !3, line: 104, column: 18)
!71 = !DILocation(line: 105, column: 8, scope: !69)
!72 = !DILocation(line: 105, column: 7, scope: !69)
!73 = !DILocation(line: 105, column: 14, scope: !69)
!74 = !DILocation(line: 105, column: 7, scope: !70)
!75 = !DILocation(line: 106, column: 5, scope: !69)
!76 = !DILocation(line: 106, column: 10, scope: !69)
!77 = !DILocation(line: 106, column: 4, scope: !69)
!78 = !DILocation(line: 108, column: 14, scope: !69)
!79 = !DILocation(line: 108, column: 13, scope: !69)
!80 = !DILocation(line: 108, column: 12, scope: !69)
!81 = !DILocation(line: 108, column: 5, scope: !69)
!82 = !DILocation(line: 108, column: 10, scope: !69)
!83 = !DILocation(line: 109, column: 12, scope: !70)
!84 = !DILocation(line: 109, column: 11, scope: !70)
!85 = !DILocation(line: 109, column: 9, scope: !70)
!86 = !DILocation(line: 110, column: 10, scope: !87)
!87 = distinct !DILexicalBlock(scope: !70, file: !3, line: 110, column: 3)
!88 = !DILocation(line: 110, column: 8, scope: !87)
!89 = !DILocation(line: 110, column: 22, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !3, line: 110, column: 3)
!91 = !DILocation(line: 110, column: 24, scope: !90)
!92 = !DILocation(line: 110, column: 3, scope: !87)
!93 = !DILocation(line: 111, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !3, line: 110, column: 35)
!95 = !DILocation(line: 111, column: 8, scope: !94)
!96 = !DILocation(line: 111, column: 14, scope: !94)
!97 = !DILocation(line: 111, column: 6, scope: !94)
!98 = !DILocation(line: 112, column: 21, scope: !94)
!99 = !DILocation(line: 112, column: 20, scope: !94)
!100 = !DILocation(line: 112, column: 28, scope: !94)
!101 = !DILocation(line: 112, column: 30, scope: !94)
!102 = !DILocation(line: 112, column: 26, scope: !94)
!103 = !DILocation(line: 112, column: 16, scope: !94)
!104 = !DILocation(line: 112, column: 40, scope: !94)
!105 = !DILocation(line: 112, column: 42, scope: !94)
!106 = !DILocation(line: 112, column: 38, scope: !94)
!107 = !DILocation(line: 112, column: 5, scope: !94)
!108 = !DILocation(line: 112, column: 10, scope: !94)
!109 = !DILocation(line: 113, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !94, file: !3, line: 113, column: 8)
!111 = !DILocation(line: 113, column: 8, scope: !110)
!112 = !DILocation(line: 113, column: 14, scope: !110)
!113 = !DILocation(line: 113, column: 8, scope: !94)
!114 = !DILocation(line: 114, column: 6, scope: !110)
!115 = !DILocation(line: 114, column: 11, scope: !110)
!116 = !DILocation(line: 114, column: 5, scope: !110)
!117 = !DILocation(line: 115, column: 8, scope: !118)
!118 = distinct !DILexicalBlock(scope: !94, file: !3, line: 115, column: 8)
!119 = !DILocation(line: 115, column: 10, scope: !118)
!120 = !DILocation(line: 115, column: 8, scope: !94)
!121 = !DILocation(line: 116, column: 16, scope: !118)
!122 = !DILocation(line: 116, column: 15, scope: !118)
!123 = !DILocation(line: 116, column: 9, scope: !118)
!124 = !DILocation(line: 116, column: 5, scope: !118)
!125 = !DILocation(line: 116, column: 13, scope: !118)
!126 = !DILocation(line: 117, column: 3, scope: !94)
!127 = !DILocation(line: 110, column: 31, scope: !90)
!128 = !DILocation(line: 110, column: 3, scope: !90)
!129 = distinct !{!129, !92, !130}
!130 = !DILocation(line: 117, column: 3, scope: !87)
!131 = !DILocation(line: 118, column: 8, scope: !70)
!132 = !DILocation(line: 118, column: 6, scope: !70)
!133 = !DILocation(line: 119, column: 2, scope: !70)
!134 = !DILocation(line: 120, column: 7, scope: !42)
!135 = !DILocation(line: 120, column: 6, scope: !42)
!136 = !DILocation(line: 120, column: 12, scope: !42)
!137 = !DILocation(line: 120, column: 4, scope: !42)
!138 = !DILocation(line: 121, column: 19, scope: !42)
!139 = !DILocation(line: 121, column: 18, scope: !42)
!140 = !DILocation(line: 121, column: 26, scope: !42)
!141 = !DILocation(line: 121, column: 28, scope: !42)
!142 = !DILocation(line: 121, column: 24, scope: !42)
!143 = !DILocation(line: 121, column: 14, scope: !42)
!144 = !DILocation(line: 121, column: 38, scope: !42)
!145 = !DILocation(line: 121, column: 40, scope: !42)
!146 = !DILocation(line: 121, column: 36, scope: !42)
!147 = !DILocation(line: 121, column: 3, scope: !42)
!148 = !DILocation(line: 121, column: 8, scope: !42)
!149 = !DILocation(line: 122, column: 7, scope: !150)
!150 = distinct !DILexicalBlock(scope: !42, file: !3, line: 122, column: 6)
!151 = !DILocation(line: 122, column: 6, scope: !150)
!152 = !DILocation(line: 122, column: 12, scope: !150)
!153 = !DILocation(line: 122, column: 6, scope: !42)
!154 = !DILocation(line: 123, column: 4, scope: !150)
!155 = !DILocation(line: 123, column: 9, scope: !150)
!156 = !DILocation(line: 123, column: 3, scope: !150)
!157 = !DILocation(line: 124, column: 6, scope: !42)
!158 = !DILocation(line: 124, column: 12, scope: !42)
!159 = !DILocation(line: 124, column: 4, scope: !42)
!160 = !DILocation(line: 125, column: 18, scope: !42)
!161 = !DILocation(line: 125, column: 26, scope: !42)
!162 = !DILocation(line: 125, column: 28, scope: !42)
!163 = !DILocation(line: 125, column: 24, scope: !42)
!164 = !DILocation(line: 125, column: 14, scope: !42)
!165 = !DILocation(line: 125, column: 38, scope: !42)
!166 = !DILocation(line: 125, column: 40, scope: !42)
!167 = !DILocation(line: 125, column: 36, scope: !42)
!168 = !DILocation(line: 125, column: 8, scope: !42)
!169 = !DILocation(line: 126, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !42, file: !3, line: 126, column: 6)
!171 = !DILocation(line: 126, column: 12, scope: !170)
!172 = !DILocation(line: 126, column: 6, scope: !42)
!173 = !DILocation(line: 127, column: 9, scope: !170)
!174 = !DILocation(line: 127, column: 3, scope: !170)
!175 = !DILocation(line: 128, column: 6, scope: !42)
!176 = !DILocation(line: 128, column: 9, scope: !42)
!177 = !DILocation(line: 128, column: 4, scope: !42)
!178 = !DILocation(line: 129, column: 11, scope: !42)
!179 = !DILocation(line: 129, column: 7, scope: !42)
!180 = !DILocation(line: 129, column: 17, scope: !42)
!181 = !DILocation(line: 129, column: 15, scope: !42)
!182 = !DILocation(line: 129, column: 5, scope: !42)
!183 = !DILocation(line: 130, column: 13, scope: !42)
!184 = !DILocation(line: 130, column: 12, scope: !42)
!185 = !DILocation(line: 130, column: 6, scope: !42)
!186 = !DILocation(line: 130, column: 2, scope: !42)
!187 = !DILocation(line: 130, column: 10, scope: !42)
!188 = !DILocation(line: 131, column: 6, scope: !189)
!189 = distinct !DILexicalBlock(scope: !42, file: !3, line: 131, column: 6)
!190 = !DILocation(line: 131, column: 9, scope: !189)
!191 = !DILocation(line: 131, column: 6, scope: !42)
!192 = !DILocation(line: 132, column: 6, scope: !189)
!193 = !DILocation(line: 132, column: 3, scope: !189)
!194 = !DILocation(line: 133, column: 20, scope: !195)
!195 = distinct !DILexicalBlock(scope: !42, file: !3, line: 133, column: 6)
!196 = !DILocation(line: 133, column: 18, scope: !195)
!197 = !DILocation(line: 133, column: 13, scope: !195)
!198 = !{!199, !199, i64 0}
!199 = !{!"double", !53, i64 0}
!200 = !DILocation(line: 133, column: 25, scope: !195)
!201 = !DILocation(line: 133, column: 6, scope: !42)
!202 = !DILocation(line: 134, column: 3, scope: !195)
!203 = !DILocation(line: 136, column: 11, scope: !195)
!204 = !DILocation(line: 136, column: 3, scope: !195)
!205 = !DILocation(line: 137, column: 1, scope: !42)
!206 = distinct !DISubprogram(name: "gauss", scope: !3, file: !3, line: 175, type: !207, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!207 = !DISubroutineType(types: !208)
!208 = !{!39, !209, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!210 = !{!211, !212}
!211 = !DILocalVariable(name: "mean", arg: 1, scope: !206, file: !3, line: 175, type: !209)
!212 = !DILocalVariable(name: "sd", arg: 2, scope: !206, file: !3, line: 175, type: !209)
!213 = !DILocation(line: 175, column: 23, scope: !206)
!214 = !DILocation(line: 175, column: 37, scope: !206)
!215 = !DILocation(line: 177, column: 17, scope: !206)
!216 = !DILocation(line: 177, column: 23, scope: !206)
!217 = !DILocation(line: 177, column: 9, scope: !206)
!218 = !DILocation(line: 177, column: 2, scope: !206)
!219 = distinct !DISubprogram(name: "gaussa", scope: !3, file: !3, line: 147, type: !220, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!39, !209, !209, !45}
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230}
!223 = !DILocalVariable(name: "mean", arg: 1, scope: !219, file: !3, line: 147, type: !209)
!224 = !DILocalVariable(name: "sd", arg: 2, scope: !219, file: !3, line: 147, type: !209)
!225 = !DILocalVariable(name: "seed", arg: 3, scope: !219, file: !3, line: 147, type: !45)
!226 = !DILocalVariable(name: "fac", scope: !219, file: !3, line: 149, type: !39)
!227 = !DILocalVariable(name: "gdev1", scope: !219, file: !3, line: 149, type: !39)
!228 = !DILocalVariable(name: "rsq", scope: !219, file: !3, line: 149, type: !39)
!229 = !DILocalVariable(name: "s1", scope: !219, file: !3, line: 149, type: !39)
!230 = !DILocalVariable(name: "s2", scope: !219, file: !3, line: 149, type: !39)
!231 = !DILocation(line: 147, column: 24, scope: !219)
!232 = !DILocation(line: 147, column: 38, scope: !219)
!233 = !DILocation(line: 147, column: 47, scope: !219)
!234 = !DILocation(line: 149, column: 2, scope: !219)
!235 = !DILocation(line: 149, column: 9, scope: !219)
!236 = !DILocation(line: 149, column: 13, scope: !219)
!237 = !DILocation(line: 149, column: 19, scope: !219)
!238 = !DILocation(line: 149, column: 23, scope: !219)
!239 = !DILocation(line: 149, column: 26, scope: !219)
!240 = !DILocation(line: 151, column: 3, scope: !219)
!241 = !DILocation(line: 152, column: 19, scope: !242)
!242 = distinct !DILexicalBlock(scope: !219, file: !3, line: 151, column: 6)
!243 = !DILocation(line: 152, column: 12, scope: !242)
!244 = !DILocation(line: 152, column: 11, scope: !242)
!245 = !DILocation(line: 152, column: 25, scope: !242)
!246 = !DILocation(line: 152, column: 7, scope: !242)
!247 = !DILocation(line: 153, column: 19, scope: !242)
!248 = !DILocation(line: 153, column: 12, scope: !242)
!249 = !DILocation(line: 153, column: 11, scope: !242)
!250 = !DILocation(line: 153, column: 25, scope: !242)
!251 = !DILocation(line: 153, column: 7, scope: !242)
!252 = !DILocation(line: 154, column: 10, scope: !242)
!253 = !DILocation(line: 154, column: 13, scope: !242)
!254 = !DILocation(line: 154, column: 12, scope: !242)
!255 = !DILocation(line: 154, column: 18, scope: !242)
!256 = !DILocation(line: 154, column: 21, scope: !242)
!257 = !DILocation(line: 154, column: 20, scope: !242)
!258 = !DILocation(line: 154, column: 16, scope: !242)
!259 = !DILocation(line: 154, column: 8, scope: !242)
!260 = !DILocation(line: 155, column: 3, scope: !242)
!261 = !DILocation(line: 155, column: 13, scope: !219)
!262 = !DILocation(line: 155, column: 17, scope: !219)
!263 = !DILocation(line: 155, column: 23, scope: !219)
!264 = !DILocation(line: 155, column: 26, scope: !219)
!265 = !DILocation(line: 155, column: 30, scope: !219)
!266 = distinct !{!266, !240, !267}
!267 = !DILocation(line: 155, column: 37, scope: !219)
!268 = !DILocation(line: 156, column: 22, scope: !219)
!269 = !DILocation(line: 156, column: 18, scope: !219)
!270 = !DILocation(line: 156, column: 17, scope: !219)
!271 = !DILocation(line: 156, column: 27, scope: !219)
!272 = !DILocation(line: 156, column: 26, scope: !219)
!273 = !DILocation(line: 156, column: 9, scope: !219)
!274 = !DILocation(line: 156, column: 7, scope: !219)
!275 = !DILocation(line: 157, column: 11, scope: !219)
!276 = !DILocation(line: 157, column: 14, scope: !219)
!277 = !DILocation(line: 157, column: 13, scope: !219)
!278 = !DILocation(line: 157, column: 9, scope: !219)
!279 = !DILocation(line: 159, column: 12, scope: !219)
!280 = !DILocation(line: 159, column: 11, scope: !219)
!281 = !DILocation(line: 159, column: 15, scope: !219)
!282 = !DILocation(line: 159, column: 14, scope: !219)
!283 = !DILocation(line: 159, column: 24, scope: !219)
!284 = !DILocation(line: 159, column: 23, scope: !219)
!285 = !DILocation(line: 159, column: 21, scope: !219)
!286 = !DILocation(line: 161, column: 1, scope: !219)
!287 = !DILocation(line: 159, column: 3, scope: !219)
!288 = distinct !DISubprogram(name: "setseed", scope: !3, file: !3, line: 184, type: !289, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !291)
!289 = !DISubroutineType(types: !290)
!290 = !{!11, !45}
!291 = !{!292}
!292 = !DILocalVariable(name: "seed4", arg: 1, scope: !288, file: !3, line: 184, type: !45)
!293 = !DILocation(line: 184, column: 21, scope: !288)
!294 = !DILocation(line: 186, column: 7, scope: !295)
!295 = distinct !DILexicalBlock(scope: !288, file: !3, line: 186, column: 6)
!296 = !DILocation(line: 186, column: 6, scope: !295)
!297 = !DILocation(line: 186, column: 13, scope: !295)
!298 = !DILocation(line: 186, column: 6, scope: !288)
!299 = !DILocation(line: 187, column: 12, scope: !300)
!300 = distinct !DILexicalBlock(scope: !295, file: !3, line: 186, column: 19)
!301 = !DILocation(line: 187, column: 3, scope: !300)
!302 = !DILocation(line: 188, column: 3, scope: !300)
!303 = !DILocation(line: 190, column: 12, scope: !304)
!304 = distinct !DILexicalBlock(scope: !295, file: !3, line: 189, column: 9)
!305 = !DILocation(line: 190, column: 11, scope: !304)
!306 = !DILocation(line: 190, column: 9, scope: !304)
!307 = !DILocation(line: 191, column: 3, scope: !304)
!308 = !DILocation(line: 193, column: 1, scope: !288)
!309 = distinct !DISubprogram(name: "rseed", scope: !3, file: !3, line: 200, type: !310, scopeLine: 201, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!310 = !DISubroutineType(types: !311)
!311 = !{!11}
!312 = !{!313}
!313 = !DILocalVariable(name: "tv", scope: !309, file: !3, line: 202, type: !13)
!314 = !DILocation(line: 202, column: 2, scope: !309)
!315 = !DILocation(line: 202, column: 17, scope: !309)
!316 = !DILocation(line: 203, column: 2, scope: !309)
!317 = !DILocation(line: 204, column: 21, scope: !309)
!318 = !{!319, !320, i64 0}
!319 = !{!"timeval", !320, i64 0, !320, i64 8}
!320 = !{!"long", !53, i64 0}
!321 = !DILocation(line: 204, column: 33, scope: !309)
!322 = !{!319, !320, i64 8}
!323 = !DILocation(line: 204, column: 28, scope: !309)
!324 = !DILocation(line: 204, column: 12, scope: !309)
!325 = !DILocation(line: 204, column: 10, scope: !309)
!326 = !DILocation(line: 204, column: 8, scope: !309)
!327 = !DILocation(line: 205, column: 9, scope: !309)
!328 = !DILocation(line: 206, column: 1, scope: !309)
!329 = !DILocation(line: 205, column: 2, scope: !309)
