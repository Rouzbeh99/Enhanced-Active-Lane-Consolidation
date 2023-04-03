; ModuleID = 'rad2deg.c'
source_filename = "rad2deg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline nounwind willreturn writeonly uwtable
define dso_local double @rad2deg(double noundef %rad) local_unnamed_addr #0 {
entry:
  %mul = fmul double %rad, 1.800000e+02
  %call = tail call double @atan(double noundef 1.000000e+00) #2
  %div = fdiv double %mul, 0x400921FB54442D18
  ret double %div
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @atan(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind willreturn writeonly uwtable
define dso_local double @deg2rad(double noundef %deg) local_unnamed_addr #0 {
entry:
  %call = tail call double @atan(double noundef 1.000000e+00) #2
  %mul1 = fmul double %deg, 0x400921FB54442D18
  %div = fdiv double %mul1, 1.800000e+02
  ret double %div
}

attributes #0 = { mustprogress nofree noinline nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
