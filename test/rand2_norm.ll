; ModuleID = 'rand2.ll'
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
@seed2 = internal global i32 0, align 4, !dbg !9
@iv = internal global [32 x i32] zeroinitializer, align 16, !dbg !11
@iy = internal global i32 0, align 4, !dbg !16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @rand2() #0 !dbg !22 {
  %1 = call double @rand2a(i32* @seed3), !dbg !26
  ret double %1, !dbg !27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @rand2a(i32* %0) #0 !dbg !28 {
  %2 = alloca double, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %4, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %5, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata double* %6, metadata !38, metadata !DIExpression()), !dbg !39
  %7 = load i32*, i32** %3, align 8, !dbg !40
  %8 = load i32, i32* %7, align 4, !dbg !42
  %9 = icmp sle i32 %8, 0, !dbg !43
  br i1 %9, label %10, label %64, !dbg !44

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8, !dbg !45
  %12 = load i32, i32* %11, align 4, !dbg !48
  %13 = sub nsw i32 0, %12, !dbg !49
  %14 = icmp slt i32 %13, 1, !dbg !50
  br i1 %14, label %15, label %17, !dbg !51

15:                                               ; preds = %10
  %16 = load i32*, i32** %3, align 8, !dbg !52
  store i32 1, i32* %16, align 4, !dbg !53
  br label %22, !dbg !54

17:                                               ; preds = %10
  %18 = load i32*, i32** %3, align 8, !dbg !55
  %19 = load i32, i32* %18, align 4, !dbg !56
  %20 = sub nsw i32 0, %19, !dbg !57
  %21 = load i32*, i32** %3, align 8, !dbg !58
  store i32 %20, i32* %21, align 4, !dbg !59
  br label %22

22:                                               ; preds = %17, %15
  %23 = load i32*, i32** %3, align 8, !dbg !60
  %24 = load i32, i32* %23, align 4, !dbg !61
  store i32 %24, i32* @seed2, align 4, !dbg !62
  store i32 39, i32* %4, align 4, !dbg !63
  br label %25, !dbg !65

25:                                               ; preds = %59, %22
  %26 = load i32, i32* %4, align 4, !dbg !66
  %27 = icmp sge i32 %26, 0, !dbg !68
  br i1 %27, label %28, label %62, !dbg !69

28:                                               ; preds = %25
  %29 = load i32*, i32** %3, align 8, !dbg !70
  %30 = load i32, i32* %29, align 4, !dbg !72
  %31 = sdiv i32 %30, 53668, !dbg !73
  store i32 %31, i32* %5, align 4, !dbg !74
  %32 = load i32*, i32** %3, align 8, !dbg !75
  %33 = load i32, i32* %32, align 4, !dbg !76
  %34 = load i32, i32* %5, align 4, !dbg !77
  %35 = mul nsw i32 %34, 53668, !dbg !78
  %36 = sub nsw i32 %33, %35, !dbg !79
  %37 = mul nsw i32 40014, %36, !dbg !80
  %38 = load i32, i32* %5, align 4, !dbg !81
  %39 = mul nsw i32 %38, 12211, !dbg !82
  %40 = sub nsw i32 %37, %39, !dbg !83
  %41 = load i32*, i32** %3, align 8, !dbg !84
  store i32 %40, i32* %41, align 4, !dbg !85
  %42 = load i32*, i32** %3, align 8, !dbg !86
  %43 = load i32, i32* %42, align 4, !dbg !88
  %44 = icmp slt i32 %43, 0, !dbg !89
  br i1 %44, label %45, label %49, !dbg !90

45:                                               ; preds = %28
  %46 = load i32*, i32** %3, align 8, !dbg !91
  %47 = load i32, i32* %46, align 4, !dbg !92
  %48 = add nsw i32 %47, 2147483563, !dbg !92
  store i32 %48, i32* %46, align 4, !dbg !92
  br label %49, !dbg !93

49:                                               ; preds = %45, %28
  %50 = load i32, i32* %4, align 4, !dbg !94
  %51 = icmp slt i32 %50, 32, !dbg !96
  br i1 %51, label %52, label %58, !dbg !97

52:                                               ; preds = %49
  %53 = load i32*, i32** %3, align 8, !dbg !98
  %54 = load i32, i32* %53, align 4, !dbg !99
  %55 = load i32, i32* %4, align 4, !dbg !100
  %56 = sext i32 %55 to i64, !dbg !101
  %57 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %56, !dbg !101
  store i32 %54, i32* %57, align 4, !dbg !102
  br label %58, !dbg !101

58:                                               ; preds = %52, %49
  br label %59, !dbg !103

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4, !dbg !104
  %61 = add nsw i32 %60, -1, !dbg !104
  store i32 %61, i32* %4, align 4, !dbg !104
  br label %25, !dbg !105, !llvm.loop !106

62:                                               ; preds = %25
  %63 = load i32, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @iv, i64 0, i64 0), align 16, !dbg !108
  store i32 %63, i32* @iy, align 4, !dbg !109
  br label %64, !dbg !110

64:                                               ; preds = %62, %1
  %65 = load i32*, i32** %3, align 8, !dbg !111
  %66 = load i32, i32* %65, align 4, !dbg !112
  %67 = sdiv i32 %66, 53668, !dbg !113
  store i32 %67, i32* %5, align 4, !dbg !114
  %68 = load i32*, i32** %3, align 8, !dbg !115
  %69 = load i32, i32* %68, align 4, !dbg !116
  %70 = load i32, i32* %5, align 4, !dbg !117
  %71 = mul nsw i32 %70, 53668, !dbg !118
  %72 = sub nsw i32 %69, %71, !dbg !119
  %73 = mul nsw i32 40014, %72, !dbg !120
  %74 = load i32, i32* %5, align 4, !dbg !121
  %75 = mul nsw i32 %74, 12211, !dbg !122
  %76 = sub nsw i32 %73, %75, !dbg !123
  %77 = load i32*, i32** %3, align 8, !dbg !124
  store i32 %76, i32* %77, align 4, !dbg !125
  %78 = load i32*, i32** %3, align 8, !dbg !126
  %79 = load i32, i32* %78, align 4, !dbg !128
  %80 = icmp slt i32 %79, 0, !dbg !129
  br i1 %80, label %81, label %85, !dbg !130

81:                                               ; preds = %64
  %82 = load i32*, i32** %3, align 8, !dbg !131
  %83 = load i32, i32* %82, align 4, !dbg !132
  %84 = add nsw i32 %83, 2147483563, !dbg !132
  store i32 %84, i32* %82, align 4, !dbg !132
  br label %85, !dbg !133

85:                                               ; preds = %81, %64
  %86 = load i32, i32* @seed2, align 4, !dbg !134
  %87 = sdiv i32 %86, 52774, !dbg !135
  store i32 %87, i32* %5, align 4, !dbg !136
  %88 = load i32, i32* @seed2, align 4, !dbg !137
  %89 = load i32, i32* %5, align 4, !dbg !138
  %90 = mul nsw i32 %89, 52774, !dbg !139
  %91 = sub nsw i32 %88, %90, !dbg !140
  %92 = mul nsw i32 40692, %91, !dbg !141
  %93 = load i32, i32* %5, align 4, !dbg !142
  %94 = mul nsw i32 %93, 3791, !dbg !143
  %95 = sub nsw i32 %92, %94, !dbg !144
  store i32 %95, i32* @seed2, align 4, !dbg !145
  %96 = load i32, i32* @seed2, align 4, !dbg !146
  %97 = icmp slt i32 %96, 0, !dbg !148
  br i1 %97, label %98, label %101, !dbg !149

98:                                               ; preds = %85
  %99 = load i32, i32* @seed2, align 4, !dbg !150
  %100 = add nsw i32 %99, 2147483399, !dbg !150
  store i32 %100, i32* @seed2, align 4, !dbg !150
  br label %101, !dbg !151

101:                                              ; preds = %98, %85
  %102 = load i32, i32* @iy, align 4, !dbg !152
  %103 = sdiv i32 %102, 67108862, !dbg !153
  store i32 %103, i32* %4, align 4, !dbg !154
  %104 = load i32, i32* %4, align 4, !dbg !155
  %105 = sext i32 %104 to i64, !dbg !156
  %106 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %105, !dbg !156
  %107 = load i32, i32* %106, align 4, !dbg !156
  %108 = load i32, i32* @seed2, align 4, !dbg !157
  %109 = sub nsw i32 %107, %108, !dbg !158
  store i32 %109, i32* @iy, align 4, !dbg !159
  %110 = load i32*, i32** %3, align 8, !dbg !160
  %111 = load i32, i32* %110, align 4, !dbg !161
  %112 = load i32, i32* %4, align 4, !dbg !162
  %113 = sext i32 %112 to i64, !dbg !163
  %114 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %113, !dbg !163
  store i32 %111, i32* %114, align 4, !dbg !164
  %115 = load i32, i32* @iy, align 4, !dbg !165
  %116 = icmp slt i32 %115, 1, !dbg !167
  br i1 %116, label %117, label %120, !dbg !168

117:                                              ; preds = %101
  %118 = load i32, i32* @iy, align 4, !dbg !169
  %119 = add nsw i32 %118, 2147483562, !dbg !169
  store i32 %119, i32* @iy, align 4, !dbg !169
  br label %120, !dbg !170

120:                                              ; preds = %117, %101
  %121 = load i32, i32* @iy, align 4, !dbg !171
  %122 = sitofp i32 %121 to double, !dbg !171
  %123 = fmul double 0x3E0000000AA00007, %122, !dbg !173
  store double %123, double* %6, align 8, !dbg !174
  %124 = fcmp ogt double %123, 0x3FEFFFFFFFFFFBC7, !dbg !175
  br i1 %124, label %125, label %126, !dbg !176

125:                                              ; preds = %120
  store double 0x3FEFFFFFFFFFFBC7, double* %2, align 8, !dbg !177
  br label %128, !dbg !177

126:                                              ; preds = %120
  %127 = load double, double* %6, align 8, !dbg !178
  store double %127, double* %2, align 8, !dbg !179
  br label %128, !dbg !179

128:                                              ; preds = %126, %125
  %129 = load double, double* %2, align 8, !dbg !180
  ret double %129, !dbg !180
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @gauss(double* %0, double* %1) #0 !dbg !181 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  store double* %0, double** %3, align 8
  call void @llvm.dbg.declare(metadata double** %3, metadata !185, metadata !DIExpression()), !dbg !186
  store double* %1, double** %4, align 8
  call void @llvm.dbg.declare(metadata double** %4, metadata !187, metadata !DIExpression()), !dbg !188
  %5 = load double*, double** %3, align 8, !dbg !189
  %6 = load double*, double** %4, align 8, !dbg !190
  %7 = call double @gaussa(double* %5, double* %6, i32* @seed3), !dbg !191
  ret double %7, !dbg !192
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal double @gaussa(double* %0, double* %1, i32* %2) #0 !dbg !193 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double* %0, double** %4, align 8
  call void @llvm.dbg.declare(metadata double** %4, metadata !196, metadata !DIExpression()), !dbg !197
  store double* %1, double** %5, align 8
  call void @llvm.dbg.declare(metadata double** %5, metadata !198, metadata !DIExpression()), !dbg !199
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata double* %7, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata double* %8, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata double* %9, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata double* %10, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata double* %11, metadata !210, metadata !DIExpression()), !dbg !211
  br label %12, !dbg !212

12:                                               ; preds = %34, %3
  %13 = load i32*, i32** %6, align 8, !dbg !213
  %14 = call double @rand2a(i32* %13), !dbg !215
  %15 = fmul double 2.000000e+00, %14, !dbg !216
  %16 = fsub double %15, 1.000000e+00, !dbg !217
  store double %16, double* %10, align 8, !dbg !218
  %17 = load i32*, i32** %6, align 8, !dbg !219
  %18 = call double @rand2a(i32* %17), !dbg !220
  %19 = fmul double 2.000000e+00, %18, !dbg !221
  %20 = fsub double %19, 1.000000e+00, !dbg !222
  store double %20, double* %11, align 8, !dbg !223
  %21 = load double, double* %10, align 8, !dbg !224
  %22 = load double, double* %10, align 8, !dbg !225
  %23 = fmul double %21, %22, !dbg !226
  %24 = load double, double* %11, align 8, !dbg !227
  %25 = load double, double* %11, align 8, !dbg !228
  %26 = fmul double %24, %25, !dbg !229
  %27 = fadd double %23, %26, !dbg !230
  store double %27, double* %9, align 8, !dbg !231
  br label %28, !dbg !232

28:                                               ; preds = %12
  %29 = load double, double* %9, align 8, !dbg !233
  %30 = fcmp oge double %29, 1.000000e+00, !dbg !234
  br i1 %30, label %34, label %31, !dbg !235

31:                                               ; preds = %28
  %32 = load double, double* %9, align 8, !dbg !236
  %33 = fcmp oeq double %32, 0.000000e+00, !dbg !237
  br label %34, !dbg !235

34:                                               ; preds = %31, %28
  %35 = phi i1 [ true, %28 ], [ %33, %31 ]
  br i1 %35, label %12, label %36, !dbg !232, !llvm.loop !238

36:                                               ; preds = %34
  %37 = load double, double* %9, align 8, !dbg !240
  %38 = call double @log(double %37) #4, !dbg !241
  %39 = fmul double -2.000000e+00, %38, !dbg !242
  %40 = load double, double* %9, align 8, !dbg !243
  %41 = fdiv double %39, %40, !dbg !244
  %42 = call double @sqrt(double %41) #4, !dbg !245
  store double %42, double* %7, align 8, !dbg !246
  %43 = load double, double* %10, align 8, !dbg !247
  %44 = load double, double* %7, align 8, !dbg !248
  %45 = fmul double %43, %44, !dbg !249
  store double %45, double* %8, align 8, !dbg !250
  %46 = load double*, double** %5, align 8, !dbg !251
  %47 = load double, double* %46, align 8, !dbg !252
  %48 = load double, double* %8, align 8, !dbg !253
  %49 = fmul double %47, %48, !dbg !254
  %50 = load double*, double** %4, align 8, !dbg !255
  %51 = load double, double* %50, align 8, !dbg !256
  %52 = fadd double %49, %51, !dbg !257
  ret double %52, !dbg !258
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setseed(i32* %0) #0 !dbg !259 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !262, metadata !DIExpression()), !dbg !263
  %4 = load i32*, i32** %3, align 8, !dbg !264
  %5 = load i32, i32* %4, align 4, !dbg !266
  %6 = icmp sge i32 %5, 0, !dbg !267
  br i1 %6, label %7, label %10, !dbg !268

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !269
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)), !dbg !271
  store i32 1, i32* %2, align 4, !dbg !272
  br label %13, !dbg !272

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8, !dbg !273
  %12 = load i32, i32* %11, align 4, !dbg !275
  store i32 %12, i32* @seed3, align 4, !dbg !276
  store i32 0, i32* %2, align 4, !dbg !277
  br label %13, !dbg !277

13:                                               ; preds = %10, %7
  %14 = load i32, i32* %2, align 4, !dbg !278
  ret i32 %14, !dbg !278
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rseed() #0 !dbg !279 {
  %1 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %1, metadata !282, metadata !DIExpression()), !dbg !292
  %2 = call i32 @gettimeofday(%struct.timeval* %1, i8* null) #4, !dbg !293
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0, !dbg !294
  %4 = load i64, i64* %3, align 8, !dbg !294
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1, !dbg !295
  %6 = load i64, i64* %5, align 8, !dbg !295
  %7 = xor i64 %4, %6, !dbg !296
  %8 = trunc i64 %7 to i32, !dbg !297
  %9 = sub nsw i32 0, %8, !dbg !298
  store i32 %9, i32* @seed3, align 4, !dbg !299
  %10 = load i32, i32* @seed3, align 4, !dbg !300
  ret i32 %10, !dbg !301
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, i8*) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

; Function Attrs: nounwind
declare dso_local double @log(double) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "seed3", scope: !2, file: !3, line: 73, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "rand2.c", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !11, !16, !0}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "seed2", scope: !2, file: !3, line: 72, type: !7, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "iv", scope: !2, file: !3, line: 75, type: !13, isLocal: true, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 32)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "iy", scope: !2, file: !3, line: 74, type: !7, isLocal: true, isDefinition: true)
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{!"clang version 10.0.0-4ubuntu1 "}
!22 = distinct !DISubprogram(name: "rand2", scope: !3, file: !3, line: 169, type: !23, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!23 = !DISubroutineType(types: !24)
!24 = !{!25}
!25 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!26 = !DILocation(line: 172, column: 9, scope: !22)
!27 = !DILocation(line: 172, column: 2, scope: !22)
!28 = distinct !DISubprogram(name: "rand2a", scope: !3, file: !3, line: 99, type: !29, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!29 = !DISubroutineType(types: !30)
!30 = !{!25, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!32 = !DILocalVariable(name: "seed", arg: 1, scope: !28, file: !3, line: 99, type: !31)
!33 = !DILocation(line: 99, column: 21, scope: !28)
!34 = !DILocalVariable(name: "j", scope: !28, file: !3, line: 101, type: !7)
!35 = !DILocation(line: 101, column: 7, scope: !28)
!36 = !DILocalVariable(name: "k", scope: !28, file: !3, line: 101, type: !7)
!37 = !DILocation(line: 101, column: 10, scope: !28)
!38 = !DILocalVariable(name: "temp", scope: !28, file: !3, line: 102, type: !25)
!39 = !DILocation(line: 102, column: 9, scope: !28)
!40 = !DILocation(line: 104, column: 7, scope: !41)
!41 = distinct !DILexicalBlock(scope: !28, file: !3, line: 104, column: 6)
!42 = !DILocation(line: 104, column: 6, scope: !41)
!43 = !DILocation(line: 104, column: 12, scope: !41)
!44 = !DILocation(line: 104, column: 6, scope: !28)
!45 = !DILocation(line: 105, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !3, line: 105, column: 7)
!47 = distinct !DILexicalBlock(scope: !41, file: !3, line: 104, column: 18)
!48 = !DILocation(line: 105, column: 8, scope: !46)
!49 = !DILocation(line: 105, column: 7, scope: !46)
!50 = !DILocation(line: 105, column: 14, scope: !46)
!51 = !DILocation(line: 105, column: 7, scope: !47)
!52 = !DILocation(line: 106, column: 5, scope: !46)
!53 = !DILocation(line: 106, column: 10, scope: !46)
!54 = !DILocation(line: 106, column: 4, scope: !46)
!55 = !DILocation(line: 108, column: 14, scope: !46)
!56 = !DILocation(line: 108, column: 13, scope: !46)
!57 = !DILocation(line: 108, column: 12, scope: !46)
!58 = !DILocation(line: 108, column: 5, scope: !46)
!59 = !DILocation(line: 108, column: 10, scope: !46)
!60 = !DILocation(line: 109, column: 12, scope: !47)
!61 = !DILocation(line: 109, column: 11, scope: !47)
!62 = !DILocation(line: 109, column: 9, scope: !47)
!63 = !DILocation(line: 110, column: 10, scope: !64)
!64 = distinct !DILexicalBlock(scope: !47, file: !3, line: 110, column: 3)
!65 = !DILocation(line: 110, column: 8, scope: !64)
!66 = !DILocation(line: 110, column: 22, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !3, line: 110, column: 3)
!68 = !DILocation(line: 110, column: 24, scope: !67)
!69 = !DILocation(line: 110, column: 3, scope: !64)
!70 = !DILocation(line: 111, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !3, line: 110, column: 35)
!72 = !DILocation(line: 111, column: 8, scope: !71)
!73 = !DILocation(line: 111, column: 14, scope: !71)
!74 = !DILocation(line: 111, column: 6, scope: !71)
!75 = !DILocation(line: 112, column: 21, scope: !71)
!76 = !DILocation(line: 112, column: 20, scope: !71)
!77 = !DILocation(line: 112, column: 28, scope: !71)
!78 = !DILocation(line: 112, column: 30, scope: !71)
!79 = !DILocation(line: 112, column: 26, scope: !71)
!80 = !DILocation(line: 112, column: 16, scope: !71)
!81 = !DILocation(line: 112, column: 40, scope: !71)
!82 = !DILocation(line: 112, column: 42, scope: !71)
!83 = !DILocation(line: 112, column: 38, scope: !71)
!84 = !DILocation(line: 112, column: 5, scope: !71)
!85 = !DILocation(line: 112, column: 10, scope: !71)
!86 = !DILocation(line: 113, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !71, file: !3, line: 113, column: 8)
!88 = !DILocation(line: 113, column: 8, scope: !87)
!89 = !DILocation(line: 113, column: 14, scope: !87)
!90 = !DILocation(line: 113, column: 8, scope: !71)
!91 = !DILocation(line: 114, column: 6, scope: !87)
!92 = !DILocation(line: 114, column: 11, scope: !87)
!93 = !DILocation(line: 114, column: 5, scope: !87)
!94 = !DILocation(line: 115, column: 8, scope: !95)
!95 = distinct !DILexicalBlock(scope: !71, file: !3, line: 115, column: 8)
!96 = !DILocation(line: 115, column: 10, scope: !95)
!97 = !DILocation(line: 115, column: 8, scope: !71)
!98 = !DILocation(line: 116, column: 16, scope: !95)
!99 = !DILocation(line: 116, column: 15, scope: !95)
!100 = !DILocation(line: 116, column: 9, scope: !95)
!101 = !DILocation(line: 116, column: 5, scope: !95)
!102 = !DILocation(line: 116, column: 13, scope: !95)
!103 = !DILocation(line: 117, column: 3, scope: !71)
!104 = !DILocation(line: 110, column: 31, scope: !67)
!105 = !DILocation(line: 110, column: 3, scope: !67)
!106 = distinct !{!106, !69, !107}
!107 = !DILocation(line: 117, column: 3, scope: !64)
!108 = !DILocation(line: 118, column: 8, scope: !47)
!109 = !DILocation(line: 118, column: 6, scope: !47)
!110 = !DILocation(line: 119, column: 2, scope: !47)
!111 = !DILocation(line: 120, column: 7, scope: !28)
!112 = !DILocation(line: 120, column: 6, scope: !28)
!113 = !DILocation(line: 120, column: 12, scope: !28)
!114 = !DILocation(line: 120, column: 4, scope: !28)
!115 = !DILocation(line: 121, column: 19, scope: !28)
!116 = !DILocation(line: 121, column: 18, scope: !28)
!117 = !DILocation(line: 121, column: 26, scope: !28)
!118 = !DILocation(line: 121, column: 28, scope: !28)
!119 = !DILocation(line: 121, column: 24, scope: !28)
!120 = !DILocation(line: 121, column: 14, scope: !28)
!121 = !DILocation(line: 121, column: 38, scope: !28)
!122 = !DILocation(line: 121, column: 40, scope: !28)
!123 = !DILocation(line: 121, column: 36, scope: !28)
!124 = !DILocation(line: 121, column: 3, scope: !28)
!125 = !DILocation(line: 121, column: 8, scope: !28)
!126 = !DILocation(line: 122, column: 7, scope: !127)
!127 = distinct !DILexicalBlock(scope: !28, file: !3, line: 122, column: 6)
!128 = !DILocation(line: 122, column: 6, scope: !127)
!129 = !DILocation(line: 122, column: 12, scope: !127)
!130 = !DILocation(line: 122, column: 6, scope: !28)
!131 = !DILocation(line: 123, column: 4, scope: !127)
!132 = !DILocation(line: 123, column: 9, scope: !127)
!133 = !DILocation(line: 123, column: 3, scope: !127)
!134 = !DILocation(line: 124, column: 6, scope: !28)
!135 = !DILocation(line: 124, column: 12, scope: !28)
!136 = !DILocation(line: 124, column: 4, scope: !28)
!137 = !DILocation(line: 125, column: 18, scope: !28)
!138 = !DILocation(line: 125, column: 26, scope: !28)
!139 = !DILocation(line: 125, column: 28, scope: !28)
!140 = !DILocation(line: 125, column: 24, scope: !28)
!141 = !DILocation(line: 125, column: 14, scope: !28)
!142 = !DILocation(line: 125, column: 38, scope: !28)
!143 = !DILocation(line: 125, column: 40, scope: !28)
!144 = !DILocation(line: 125, column: 36, scope: !28)
!145 = !DILocation(line: 125, column: 8, scope: !28)
!146 = !DILocation(line: 126, column: 6, scope: !147)
!147 = distinct !DILexicalBlock(scope: !28, file: !3, line: 126, column: 6)
!148 = !DILocation(line: 126, column: 12, scope: !147)
!149 = !DILocation(line: 126, column: 6, scope: !28)
!150 = !DILocation(line: 127, column: 9, scope: !147)
!151 = !DILocation(line: 127, column: 3, scope: !147)
!152 = !DILocation(line: 128, column: 6, scope: !28)
!153 = !DILocation(line: 128, column: 9, scope: !28)
!154 = !DILocation(line: 128, column: 4, scope: !28)
!155 = !DILocation(line: 129, column: 11, scope: !28)
!156 = !DILocation(line: 129, column: 7, scope: !28)
!157 = !DILocation(line: 129, column: 17, scope: !28)
!158 = !DILocation(line: 129, column: 15, scope: !28)
!159 = !DILocation(line: 129, column: 5, scope: !28)
!160 = !DILocation(line: 130, column: 13, scope: !28)
!161 = !DILocation(line: 130, column: 12, scope: !28)
!162 = !DILocation(line: 130, column: 6, scope: !28)
!163 = !DILocation(line: 130, column: 2, scope: !28)
!164 = !DILocation(line: 130, column: 10, scope: !28)
!165 = !DILocation(line: 131, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !28, file: !3, line: 131, column: 6)
!167 = !DILocation(line: 131, column: 9, scope: !166)
!168 = !DILocation(line: 131, column: 6, scope: !28)
!169 = !DILocation(line: 132, column: 6, scope: !166)
!170 = !DILocation(line: 132, column: 3, scope: !166)
!171 = !DILocation(line: 133, column: 20, scope: !172)
!172 = distinct !DILexicalBlock(scope: !28, file: !3, line: 133, column: 6)
!173 = !DILocation(line: 133, column: 18, scope: !172)
!174 = !DILocation(line: 133, column: 13, scope: !172)
!175 = !DILocation(line: 133, column: 25, scope: !172)
!176 = !DILocation(line: 133, column: 6, scope: !28)
!177 = !DILocation(line: 134, column: 3, scope: !172)
!178 = !DILocation(line: 136, column: 11, scope: !172)
!179 = !DILocation(line: 136, column: 3, scope: !172)
!180 = !DILocation(line: 137, column: 1, scope: !28)
!181 = distinct !DISubprogram(name: "gauss", scope: !3, file: !3, line: 175, type: !182, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!182 = !DISubroutineType(types: !183)
!183 = !{!25, !184, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!185 = !DILocalVariable(name: "mean", arg: 1, scope: !181, file: !3, line: 175, type: !184)
!186 = !DILocation(line: 175, column: 23, scope: !181)
!187 = !DILocalVariable(name: "sd", arg: 2, scope: !181, file: !3, line: 175, type: !184)
!188 = !DILocation(line: 175, column: 37, scope: !181)
!189 = !DILocation(line: 177, column: 17, scope: !181)
!190 = !DILocation(line: 177, column: 23, scope: !181)
!191 = !DILocation(line: 177, column: 9, scope: !181)
!192 = !DILocation(line: 177, column: 2, scope: !181)
!193 = distinct !DISubprogram(name: "gaussa", scope: !3, file: !3, line: 147, type: !194, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!194 = !DISubroutineType(types: !195)
!195 = !{!25, !184, !184, !31}
!196 = !DILocalVariable(name: "mean", arg: 1, scope: !193, file: !3, line: 147, type: !184)
!197 = !DILocation(line: 147, column: 24, scope: !193)
!198 = !DILocalVariable(name: "sd", arg: 2, scope: !193, file: !3, line: 147, type: !184)
!199 = !DILocation(line: 147, column: 38, scope: !193)
!200 = !DILocalVariable(name: "seed", arg: 3, scope: !193, file: !3, line: 147, type: !31)
!201 = !DILocation(line: 147, column: 47, scope: !193)
!202 = !DILocalVariable(name: "fac", scope: !193, file: !3, line: 149, type: !25)
!203 = !DILocation(line: 149, column: 9, scope: !193)
!204 = !DILocalVariable(name: "gdev1", scope: !193, file: !3, line: 149, type: !25)
!205 = !DILocation(line: 149, column: 13, scope: !193)
!206 = !DILocalVariable(name: "rsq", scope: !193, file: !3, line: 149, type: !25)
!207 = !DILocation(line: 149, column: 19, scope: !193)
!208 = !DILocalVariable(name: "s1", scope: !193, file: !3, line: 149, type: !25)
!209 = !DILocation(line: 149, column: 23, scope: !193)
!210 = !DILocalVariable(name: "s2", scope: !193, file: !3, line: 149, type: !25)
!211 = !DILocation(line: 149, column: 26, scope: !193)
!212 = !DILocation(line: 151, column: 3, scope: !193)
!213 = !DILocation(line: 152, column: 19, scope: !214)
!214 = distinct !DILexicalBlock(scope: !193, file: !3, line: 151, column: 6)
!215 = !DILocation(line: 152, column: 12, scope: !214)
!216 = !DILocation(line: 152, column: 11, scope: !214)
!217 = !DILocation(line: 152, column: 25, scope: !214)
!218 = !DILocation(line: 152, column: 7, scope: !214)
!219 = !DILocation(line: 153, column: 19, scope: !214)
!220 = !DILocation(line: 153, column: 12, scope: !214)
!221 = !DILocation(line: 153, column: 11, scope: !214)
!222 = !DILocation(line: 153, column: 25, scope: !214)
!223 = !DILocation(line: 153, column: 7, scope: !214)
!224 = !DILocation(line: 154, column: 10, scope: !214)
!225 = !DILocation(line: 154, column: 13, scope: !214)
!226 = !DILocation(line: 154, column: 12, scope: !214)
!227 = !DILocation(line: 154, column: 18, scope: !214)
!228 = !DILocation(line: 154, column: 21, scope: !214)
!229 = !DILocation(line: 154, column: 20, scope: !214)
!230 = !DILocation(line: 154, column: 16, scope: !214)
!231 = !DILocation(line: 154, column: 8, scope: !214)
!232 = !DILocation(line: 155, column: 3, scope: !214)
!233 = !DILocation(line: 155, column: 13, scope: !193)
!234 = !DILocation(line: 155, column: 17, scope: !193)
!235 = !DILocation(line: 155, column: 23, scope: !193)
!236 = !DILocation(line: 155, column: 26, scope: !193)
!237 = !DILocation(line: 155, column: 30, scope: !193)
!238 = distinct !{!238, !212, !239}
!239 = !DILocation(line: 155, column: 37, scope: !193)
!240 = !DILocation(line: 156, column: 22, scope: !193)
!241 = !DILocation(line: 156, column: 18, scope: !193)
!242 = !DILocation(line: 156, column: 17, scope: !193)
!243 = !DILocation(line: 156, column: 27, scope: !193)
!244 = !DILocation(line: 156, column: 26, scope: !193)
!245 = !DILocation(line: 156, column: 9, scope: !193)
!246 = !DILocation(line: 156, column: 7, scope: !193)
!247 = !DILocation(line: 157, column: 11, scope: !193)
!248 = !DILocation(line: 157, column: 14, scope: !193)
!249 = !DILocation(line: 157, column: 13, scope: !193)
!250 = !DILocation(line: 157, column: 9, scope: !193)
!251 = !DILocation(line: 159, column: 12, scope: !193)
!252 = !DILocation(line: 159, column: 11, scope: !193)
!253 = !DILocation(line: 159, column: 15, scope: !193)
!254 = !DILocation(line: 159, column: 14, scope: !193)
!255 = !DILocation(line: 159, column: 24, scope: !193)
!256 = !DILocation(line: 159, column: 23, scope: !193)
!257 = !DILocation(line: 159, column: 21, scope: !193)
!258 = !DILocation(line: 159, column: 3, scope: !193)
!259 = distinct !DISubprogram(name: "setseed", scope: !3, file: !3, line: 184, type: !260, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!260 = !DISubroutineType(types: !261)
!261 = !{!7, !31}
!262 = !DILocalVariable(name: "seed4", arg: 1, scope: !259, file: !3, line: 184, type: !31)
!263 = !DILocation(line: 184, column: 21, scope: !259)
!264 = !DILocation(line: 186, column: 7, scope: !265)
!265 = distinct !DILexicalBlock(scope: !259, file: !3, line: 186, column: 6)
!266 = !DILocation(line: 186, column: 6, scope: !265)
!267 = !DILocation(line: 186, column: 13, scope: !265)
!268 = !DILocation(line: 186, column: 6, scope: !259)
!269 = !DILocation(line: 187, column: 12, scope: !270)
!270 = distinct !DILexicalBlock(scope: !265, file: !3, line: 186, column: 19)
!271 = !DILocation(line: 187, column: 3, scope: !270)
!272 = !DILocation(line: 188, column: 3, scope: !270)
!273 = !DILocation(line: 190, column: 12, scope: !274)
!274 = distinct !DILexicalBlock(scope: !265, file: !3, line: 189, column: 9)
!275 = !DILocation(line: 190, column: 11, scope: !274)
!276 = !DILocation(line: 190, column: 9, scope: !274)
!277 = !DILocation(line: 191, column: 3, scope: !274)
!278 = !DILocation(line: 193, column: 1, scope: !259)
!279 = distinct !DISubprogram(name: "rseed", scope: !3, file: !3, line: 200, type: !280, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!280 = !DISubroutineType(types: !281)
!281 = !{!7}
!282 = !DILocalVariable(name: "tv", scope: !279, file: !3, line: 202, type: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !284, line: 8, size: 128, elements: !285)
!284 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "")
!285 = !{!286, !290}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !283, file: !284, line: 10, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !288, line: 160, baseType: !289)
!288 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!289 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !283, file: !284, line: 11, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !288, line: 162, baseType: !289)
!292 = !DILocation(line: 202, column: 17, scope: !279)
!293 = !DILocation(line: 203, column: 2, scope: !279)
!294 = !DILocation(line: 204, column: 21, scope: !279)
!295 = !DILocation(line: 204, column: 33, scope: !279)
!296 = !DILocation(line: 204, column: 28, scope: !279)
!297 = !DILocation(line: 204, column: 12, scope: !279)
!298 = !DILocation(line: 204, column: 10, scope: !279)
!299 = !DILocation(line: 204, column: 8, scope: !279)
!300 = !DILocation(line: 205, column: 9, scope: !279)
!301 = !DILocation(line: 205, column: 2, scope: !279)
