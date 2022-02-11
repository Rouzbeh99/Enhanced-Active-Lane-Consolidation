; ModuleID = 'rand2.ll'
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

; Function Attrs: nounwind uwtable
define dso_local double @rand2() #0 {
  %1 = call double @rand2a(i32* @seed3)
  ret double %1
}

; Function Attrs: nounwind uwtable
define internal double @rand2a(i32* %0) #0 {
  %2 = load i32, i32* %0, align 4, !tbaa !2
  %3 = icmp sle i32 %2, 0
  br i1 %3, label %4, label %38

4:                                                ; preds = %1
  %5 = load i32, i32* %0, align 4, !tbaa !2
  %6 = sub nsw i32 0, %5
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i32 1, i32* %0, align 4, !tbaa !2
  br label %12

9:                                                ; preds = %4
  %10 = load i32, i32* %0, align 4, !tbaa !2
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %0, align 4, !tbaa !2
  br label %12

12:                                               ; preds = %9, %8
  %13 = load i32, i32* %0, align 4, !tbaa !2
  store i32 %13, i32* @seed2, align 4, !tbaa !2
  br label %14

14:                                               ; preds = %12, %34
  %indvars.iv2 = phi i64 [ 39, %12 ], [ %indvars.iv.next, %34 ]
  %15 = load i32, i32* %0, align 4, !tbaa !2
  %16 = sdiv i32 %15, 53668
  %17 = load i32, i32* %0, align 4, !tbaa !2
  %18 = mul nsw i32 %16, 53668
  %19 = sub nsw i32 %17, %18
  %20 = mul nsw i32 40014, %19
  %21 = mul nsw i32 %16, 12211
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %0, align 4, !tbaa !2
  %23 = load i32, i32* %0, align 4, !tbaa !2
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load i32, i32* %0, align 4, !tbaa !2
  %27 = add nsw i32 %26, 2147483563
  store i32 %27, i32* %0, align 4, !tbaa !2
  br label %28

28:                                               ; preds = %25, %14
  %29 = icmp slt i64 %indvars.iv2, 32
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i32, i32* %0, align 4, !tbaa !2
  %32 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %indvars.iv2
  store i32 %31, i32* %32, align 4, !tbaa !2
  br label %33

33:                                               ; preds = %30, %28
  %indvars.iv3 = phi i64 [ %indvars.iv2, %30 ], [ %indvars.iv2, %28 ]
  br label %34

34:                                               ; preds = %33
  %indvars.iv.next = add nsw i64 %indvars.iv3, -1
  %35 = icmp sge i64 %indvars.iv.next, 0
  br i1 %35, label %14, label %36

36:                                               ; preds = %34
  %37 = load i32, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @iv, i64 0, i64 0), align 16, !tbaa !2
  store i32 %37, i32* @iy, align 4, !tbaa !2
  br label %38

38:                                               ; preds = %36, %1
  %39 = load i32, i32* %0, align 4, !tbaa !2
  %40 = sdiv i32 %39, 53668
  %41 = load i32, i32* %0, align 4, !tbaa !2
  %42 = mul nsw i32 %40, 53668
  %43 = sub nsw i32 %41, %42
  %44 = mul nsw i32 40014, %43
  %45 = mul nsw i32 %40, 12211
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %0, align 4, !tbaa !2
  %47 = load i32, i32* %0, align 4, !tbaa !2
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i32, i32* %0, align 4, !tbaa !2
  %51 = add nsw i32 %50, 2147483563
  store i32 %51, i32* %0, align 4, !tbaa !2
  br label %52

52:                                               ; preds = %49, %38
  %53 = load i32, i32* @seed2, align 4, !tbaa !2
  %54 = sdiv i32 %53, 52774
  %55 = load i32, i32* @seed2, align 4, !tbaa !2
  %56 = mul nsw i32 %54, 52774
  %57 = sub nsw i32 %55, %56
  %58 = mul nsw i32 40692, %57
  %59 = mul nsw i32 %54, 3791
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* @seed2, align 4, !tbaa !2
  %61 = load i32, i32* @seed2, align 4, !tbaa !2
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i32, i32* @seed2, align 4, !tbaa !2
  %65 = add nsw i32 %64, 2147483399
  store i32 %65, i32* @seed2, align 4, !tbaa !2
  br label %66

66:                                               ; preds = %63, %52
  %67 = load i32, i32* @iy, align 4, !tbaa !2
  %68 = sdiv i32 %67, 67108862
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4, !tbaa !2
  %72 = load i32, i32* @seed2, align 4, !tbaa !2
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* @iy, align 4, !tbaa !2
  %74 = load i32, i32* %0, align 4, !tbaa !2
  %75 = sext i32 %68 to i64
  %76 = getelementptr inbounds [32 x i32], [32 x i32]* @iv, i64 0, i64 %75
  store i32 %74, i32* %76, align 4, !tbaa !2
  %77 = load i32, i32* @iy, align 4, !tbaa !2
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %82

79:                                               ; preds = %66
  %80 = load i32, i32* @iy, align 4, !tbaa !2
  %81 = add nsw i32 %80, 2147483562
  store i32 %81, i32* @iy, align 4, !tbaa !2
  br label %82

82:                                               ; preds = %79, %66
  %83 = load i32, i32* @iy, align 4, !tbaa !2
  %84 = sitofp i32 %83 to double
  %85 = fmul double 0x3E0000000AA00007, %84
  %86 = fcmp ogt double %85, 0x3FEFFFFFFFFFFBC7
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %89

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %87
  %.0 = phi double [ 0x3FEFFFFFFFFFFBC7, %87 ], [ %85, %88 ]
  ret double %.0
}

; Function Attrs: nounwind uwtable
define dso_local double @gauss(double* %0, double* %1) #0 {
  %3 = call double @gaussa(double* %0, double* %1, i32* @seed3)
  ret double %3
}

; Function Attrs: nounwind uwtable
define internal double @gaussa(double* %0, double* %1, i32* %2) #0 {
  br label %4

4:                                                ; preds = %18, %3
  %5 = call double @rand2a(i32* %2)
  %6 = fmul double 2.000000e+00, %5
  %7 = fsub double %6, 1.000000e+00
  %8 = call double @rand2a(i32* %2)
  %9 = fmul double 2.000000e+00, %8
  %10 = fsub double %9, 1.000000e+00
  %11 = fmul double %7, %7
  %12 = fmul double %10, %10
  %13 = fadd double %11, %12
  br label %14

14:                                               ; preds = %4
  %15 = fcmp oge double %13, 1.000000e+00
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = fcmp oeq double %13, 0.000000e+00
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i1 [ true, %14 ], [ %17, %16 ]
  br i1 %19, label %4, label %20

20:                                               ; preds = %18
  %.lcssa1 = phi double [ %7, %18 ]
  %.lcssa = phi double [ %13, %18 ]
  %21 = call double @log(double %.lcssa) #4
  %22 = fmul double -2.000000e+00, %21
  %23 = fdiv double %22, %.lcssa
  %24 = call double @sqrt(double %23) #4
  %25 = fmul double %.lcssa1, %24
  %26 = load double, double* %1, align 8, !tbaa !6
  %27 = fmul double %26, %25
  %28 = load double, double* %0, align 8, !tbaa !6
  %29 = fadd double %27, %28
  ret double %29
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setseed(i32* %0) #0 {
  %2 = load i32, i32* %0, align 4, !tbaa !2
  %3 = icmp sge i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %9

7:                                                ; preds = %1
  %8 = load i32, i32* %0, align 4, !tbaa !2
  store i32 %8, i32* @seed3, align 4, !tbaa !2
  br label %9

9:                                                ; preds = %7, %4
  %.0 = phi i32 [ 1, %4 ], [ 0, %7 ]
  ret i32 %.0
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @rseed() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #4
  %3 = call i32 @gettimeofday(%struct.timeval* %1, i8* null) #4
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !13
  %8 = xor i64 %5, %7
  %9 = trunc i64 %8 to i32
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* @seed3, align 4, !tbaa !2
  %11 = load i32, i32* @seed3, align 4, !tbaa !2
  %12 = bitcast %struct.timeval* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %12) #4
  ret i32 %11
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, i8*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

; Function Attrs: nounwind
declare dso_local double @log(double) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"timeval", !12, i64 0, !12, i64 8}
!12 = !{!"long", !4, i64 0}
!13 = !{!11, !12, i64 8}
