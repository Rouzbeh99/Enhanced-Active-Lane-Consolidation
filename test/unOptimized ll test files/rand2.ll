; ModuleID = 'rand2.c'
source_filename = "rand2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }

@seed3 = internal global i32 -1, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"argument to setseed must be negative!\0A\00", align 1
@seed2 = internal global i32 0, align 4
@iv = internal global [32 x i32] zeroinitializer, align 16
@iy = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @rand2() #0 {
  %1 = call double @rand2a(i32* @seed3)
  ret double %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @rand2a(i32* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %64

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32*, i32** %3, align 8
  store i32 1, i32* %16, align 4
  br label %22

17:                                               ; preds = %10
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 0, %19
  %21 = load i32*, i32** %3, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %17, %15
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* @seed2, align 4
  store i32 39, i32* %4, align 4
  br label %25

25:                                               ; preds = %59, %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %25
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 53668
  store i32 %31, i32* %5, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 53668
  %36 = sub nsw i32 %33, %35
  %37 = mul nsw i32 40014, %36
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 12211
  %40 = sub nsw i32 %37, %39
  %41 = load i32*, i32** %3, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %28
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 2147483563
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %45, %28
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 32
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %52, %49
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %4, align 4
  br label %25

62:                                               ; preds = %25
  %63 = load i32, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @iv, i64 0, i64 0), align 16
  store i32 %63, i32* @iy, align 4
  br label %64

64:                                               ; preds = %62, %1
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %66, 53668
  store i32 %67, i32* %5, align 4
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = mul nsw i32 %70, 53668
  %72 = sub nsw i32 %69, %71
  %73 = mul nsw i32 40014, %72
  %74 = load i32, i32* %5, align 4
  %75 = mul nsw i32 %74, 12211
  %76 = sub nsw i32 %73, %75
  %77 = load i32*, i32** %3, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %64
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 2147483563
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %81, %64
  %86 = load i32, i32* @seed2, align 4
  %87 = sdiv i32 %86, 52774
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* @seed2, align 4
  %89 = load i32, i32* %5, align 4
  %90 = mul nsw i32 %89, 52774
  %91 = sub nsw i32 %88, %90
  %92 = mul nsw i32 40692, %91
  %93 = load i32, i32* %5, align 4
  %94 = mul nsw i32 %93, 3791
  %95 = sub nsw i32 %92, %94
  store i32 %95, i32* @seed2, align 4
  %96 = load i32, i32* @seed2, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %85
  %99 = load i32, i32* @seed2, align 4
  %100 = add nsw i32 %99, 2147483399
  store i32 %100, i32* @seed2, align 4
  br label %101

101:                                              ; preds = %98, %85
  %102 = load i32, i32* @iy, align 4
  %103 = sdiv i32 %102, 67108862
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @seed2, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* @iy, align 4
  %110 = load i32*, i32** %3, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %113
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* @iy, align 4
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %101
  %118 = load i32, i32* @iy, align 4
  %119 = add nsw i32 %118, 2147483562
  store i32 %119, i32* @iy, align 4
  br label %120

120:                                              ; preds = %117, %101
  %121 = load i32, i32* @iy, align 4
  %122 = sitofp i32 %121 to double
  %123 = fmul double 0x3E0000000AA00007, %122
  store double %123, double* %6, align 8
  %124 = fcmp ogt double %123, 0x3FEFFFFFFFFFFBC7
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store double 0x3FEFFFFFFFFFFBC7, double* %2, align 8
  br label %128

126:                                              ; preds = %120
  %127 = load double, double* %6, align 8
  store double %127, double* %2, align 8
  br label %128

128:                                              ; preds = %126, %125
  %129 = load double, double* %2, align 8
  ret double %129
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @gauss(double* %0, double* %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load double*, double** %3, align 8
  %6 = load double*, double** %4, align 8
  %7 = call double @gaussa(double* %5, double* %6, i32* @seed3)
  ret double %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @gaussa(double* %0, double* %1, i32* %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store i32* %2, i32** %6, align 8
  br label %12

12:                                               ; preds = %34, %3
  %13 = load i32*, i32** %6, align 8
  %14 = call double @rand2a(i32* %13)
  %15 = fmul double 2.000000e+00, %14
  %16 = fsub double %15, 1.000000e+00
  store double %16, double* %10, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call double @rand2a(i32* %17)
  %19 = fmul double 2.000000e+00, %18
  %20 = fsub double %19, 1.000000e+00
  store double %20, double* %11, align 8
  %21 = load double, double* %10, align 8
  %22 = load double, double* %10, align 8
  %23 = fmul double %21, %22
  %24 = load double, double* %11, align 8
  %25 = load double, double* %11, align 8
  %26 = fmul double %24, %25
  %27 = fadd double %23, %26
  store double %27, double* %9, align 8
  br label %28

28:                                               ; preds = %12
  %29 = load double, double* %9, align 8
  %30 = fcmp oge double %29, 1.000000e+00
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load double, double* %9, align 8
  %33 = fcmp oeq double %32, 0.000000e+00
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ true, %28 ], [ %33, %31 ]
  br i1 %35, label %12, label %36

36:                                               ; preds = %34
  %37 = load double, double* %9, align 8
  %38 = call double @log(double %37) #3
  %39 = fmul double -2.000000e+00, %38
  %40 = load double, double* %9, align 8
  %41 = fdiv double %39, %40
  %42 = call double @sqrt(double %41) #3
  store double %42, double* %7, align 8
  %43 = load double, double* %10, align 8
  %44 = load double, double* %7, align 8
  %45 = fmul double %43, %44
  store double %45, double* %8, align 8
  %46 = load double*, double** %5, align 8
  %47 = load double, double* %46, align 8
  %48 = load double, double* %8, align 8
  %49 = fmul double %47, %48
  %50 = load double*, double** %4, align 8
  %51 = load double, double* %50, align 8
  %52 = fadd double %49, %51
  ret double %52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setseed(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @seed3, align 4
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rseed() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* %1, i8* null) #3
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = xor i64 %4, %6
  %8 = trunc i64 %7 to i32
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* @seed3, align 4
  %10 = load i32, i32* @seed3, align 4
  ret i32 %10
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, i8*) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare dso_local double @log(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
