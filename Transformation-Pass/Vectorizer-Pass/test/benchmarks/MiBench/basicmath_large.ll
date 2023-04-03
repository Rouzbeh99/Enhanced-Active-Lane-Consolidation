; ModuleID = 'basicmath_large.c'
source_filename = "basicmath_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_sqrt = type { i32, i32 }

@.str.1 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"sqrt(%lX) = %X\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%3.0f degrees = %.12f radians\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%.12f radians = %3.0f degrees\0A\00", align 1
@str = private unnamed_addr constant [38 x i8] c"********* CUBIC FUNCTIONS ***********\00", align 1
@str.11 = private unnamed_addr constant [40 x i8] c"********* INTEGER SQR ROOTS ***********\00", align 1
@str.12 = private unnamed_addr constant [39 x i8] c"********* ANGLE CONVERSION ***********\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %x = alloca [3 x double], align 16
  %solutions = alloca i32, align 4
  %q = alloca %struct.int_sqrt, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %x) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %solutions) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q) #6
  %puts = tail call i32 @puts(ptr nonnull @str) #6
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.050000e+01, double noundef 3.200000e+01, double noundef -3.000000e+01, ptr noundef nonnull %solutions, ptr noundef nonnull %x) #6
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1)
  %0 = load i32, ptr %solutions, align 4, !tbaa !5
  %cmp261 = icmp sgt i32 %0, 0
  br i1 %cmp261, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %indvars.iv
  %1 = load double, ptr %arrayidx, align 8, !tbaa !9
  %call2 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %solutions, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !11

for.end:                                          ; preds = %for.body, %entry
  %putchar = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -4.500000e+00, double noundef 1.700000e+01, double noundef -3.000000e+01, ptr noundef nonnull %solutions, ptr noundef nonnull %x) #6
  %call5 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1)
  %4 = load i32, ptr %solutions, align 4, !tbaa !5
  %cmp7263 = icmp sgt i32 %4, 0
  br i1 %cmp7263, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.end, %for.body8
  %indvars.iv289 = phi i64 [ %indvars.iv.next290, %for.body8 ], [ 0, %for.end ]
  %arrayidx10 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %indvars.iv289
  %5 = load double, ptr %arrayidx10, align 8, !tbaa !9
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %5)
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1
  %6 = load i32, ptr %solutions, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp7 = icmp slt i64 %indvars.iv.next290, %7
  br i1 %cmp7, label %for.body8, label %for.end14, !llvm.loop !14

for.end14:                                        ; preds = %for.body8, %for.end
  %putchar250 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -3.500000e+00, double noundef 2.200000e+01, double noundef -3.100000e+01, ptr noundef nonnull %solutions, ptr noundef nonnull %x) #6
  %call17 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1)
  %8 = load i32, ptr %solutions, align 4, !tbaa !5
  %cmp19265 = icmp sgt i32 %8, 0
  br i1 %cmp19265, label %for.body20, label %for.end26

for.body20:                                       ; preds = %for.end14, %for.body20
  %indvars.iv292 = phi i64 [ %indvars.iv.next293, %for.body20 ], [ 0, %for.end14 ]
  %arrayidx22 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %indvars.iv292
  %9 = load double, ptr %arrayidx22, align 8, !tbaa !9
  %call23 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %9)
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1
  %10 = load i32, ptr %solutions, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp19 = icmp slt i64 %indvars.iv.next293, %11
  br i1 %cmp19, label %for.body20, label %for.end26, !llvm.loop !15

for.end26:                                        ; preds = %for.body20, %for.end14
  %putchar251 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.370000e+01, double noundef 1.000000e+00, double noundef -3.500000e+01, ptr noundef nonnull %solutions, ptr noundef nonnull %x) #6
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1)
  %12 = load i32, ptr %solutions, align 4, !tbaa !5
  %cmp31267 = icmp sgt i32 %12, 0
  br i1 %cmp31267, label %for.body32, label %for.end38

for.body32:                                       ; preds = %for.end26, %for.body32
  %indvars.iv295 = phi i64 [ %indvars.iv.next296, %for.body32 ], [ 0, %for.end26 ]
  %arrayidx34 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %indvars.iv295
  %13 = load double, ptr %arrayidx34, align 8, !tbaa !9
  %call35 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %13)
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1
  %14 = load i32, ptr %solutions, align 4, !tbaa !5
  %15 = sext i32 %14 to i64
  %cmp31 = icmp slt i64 %indvars.iv.next296, %15
  br i1 %cmp31, label %for.body32, label %for.end38, !llvm.loop !16

for.end38:                                        ; preds = %for.body32, %for.end26
  %putchar252 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 3.000000e+00, double noundef 1.234000e+01, double noundef 5.000000e+00, double noundef 1.200000e+01, ptr noundef nonnull %solutions, ptr noundef nonnull %x) #6
  %call41 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1)
  %16 = load i32, ptr %solutions, align 4, !tbaa !5
  %cmp43269 = icmp sgt i32 %16, 0
  br i1 %cmp43269, label %for.body44, label %for.end50

for.body44:                                       ; preds = %for.end38, %for.body44
  %indvars.iv298 = phi i64 [ %indvars.iv.next299, %for.body44 ], [ 0, %for.end38 ]
  %arrayidx46 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %indvars.iv298
  %17 = load double, ptr %arrayidx46, align 8, !tbaa !9
  %call47 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %17)
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1
  %18 = load i32, ptr %solutions, align 4, !tbaa !5
  %19 = sext i32 %18 to i64
  %cmp43 = icmp slt i64 %indvars.iv.next299, %19
  br i1 %cmp43, label %for.body44, label %for.end50, !llvm.loop !17

for.end50:                                        ; preds = %for.body44, %for.end38
  %putchar253 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef -8.000000e+00, double noundef -6.789000e+01, double noundef 6.000000e+00, double noundef -2.360000e+01, ptr noundef nonnull %solutions, ptr noundef nonnull %x) #6
  %call53 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1)
  %20 = load i32, ptr %solutions, align 4, !tbaa !5
  %cmp55271 = icmp sgt i32 %20, 0
  br i1 %cmp55271, label %for.body56, label %for.end62

for.body56:                                       ; preds = %for.end50, %for.body56
  %indvars.iv301 = phi i64 [ %indvars.iv.next302, %for.body56 ], [ 0, %for.end50 ]
  %arrayidx58 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %indvars.iv301
  %21 = load double, ptr %arrayidx58, align 8, !tbaa !9
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %21)
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1
  %22 = load i32, ptr %solutions, align 4, !tbaa !5
  %23 = sext i32 %22 to i64
  %cmp55 = icmp slt i64 %indvars.iv.next302, %23
  br i1 %cmp55, label %for.body56, label %for.end62, !llvm.loop !18

for.end62:                                        ; preds = %for.body56, %for.end50
  %putchar254 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 4.500000e+01, double noundef 8.670000e+00, double noundef 7.500000e+00, double noundef 3.400000e+01, ptr noundef nonnull %solutions, ptr noundef nonnull %x) #6
  %call65 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1)
  %24 = load i32, ptr %solutions, align 4, !tbaa !5
  %cmp67273 = icmp sgt i32 %24, 0
  br i1 %cmp67273, label %for.body68, label %for.end74

for.body68:                                       ; preds = %for.end62, %for.body68
  %indvars.iv304 = phi i64 [ %indvars.iv.next305, %for.body68 ], [ 0, %for.end62 ]
  %arrayidx70 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %indvars.iv304
  %25 = load double, ptr %arrayidx70, align 8, !tbaa !9
  %call71 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %25)
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1
  %26 = load i32, ptr %solutions, align 4, !tbaa !5
  %27 = sext i32 %26 to i64
  %cmp67 = icmp slt i64 %indvars.iv.next305, %27
  br i1 %cmp67, label %for.body68, label %for.end74, !llvm.loop !19

for.end74:                                        ; preds = %for.body68, %for.end62
  %putchar255 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef -1.200000e+01, double noundef -1.700000e+00, double noundef 5.300000e+00, double noundef 1.600000e+01, ptr noundef nonnull %solutions, ptr noundef nonnull %x) #6
  %call77 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1)
  %28 = load i32, ptr %solutions, align 4, !tbaa !5
  %cmp79275 = icmp sgt i32 %28, 0
  br i1 %cmp79275, label %for.body80, label %for.end86

for.body80:                                       ; preds = %for.end74, %for.body80
  %indvars.iv307 = phi i64 [ %indvars.iv.next308, %for.body80 ], [ 0, %for.end74 ]
  %arrayidx82 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %indvars.iv307
  %29 = load double, ptr %arrayidx82, align 8, !tbaa !9
  %call83 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %29)
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1
  %30 = load i32, ptr %solutions, align 4, !tbaa !5
  %31 = sext i32 %30 to i64
  %cmp79 = icmp slt i64 %indvars.iv.next308, %31
  br i1 %cmp79, label %for.body80, label %for.end86, !llvm.loop !20

for.end86:                                        ; preds = %for.body80, %for.end74
  %putchar256 = call i32 @putchar(i32 10)
  br label %for.cond91.preheader

for.cond91.preheader:                             ; preds = %for.end86, %for.inc119
  %a1.0282.int = phi i32 [ 1, %for.end86 ], [ %add120.int, %for.inc119 ]
  %indvar.conv = sitofp i32 %a1.0282.int to double
  br label %for.cond94.preheader

for.cond94.preheader:                             ; preds = %for.cond91.preheader, %for.inc116
  %b1.0281 = phi double [ 1.000000e+01, %for.cond91.preheader ], [ %sub117, %for.inc116 ]
  br label %for.cond97.preheader

for.cond97.preheader:                             ; preds = %for.cond94.preheader, %for.inc114
  %c1.0280 = phi double [ 5.000000e+00, %for.cond94.preheader ], [ %add, %for.inc114 ]
  br label %for.body99

for.body99:                                       ; preds = %for.cond97.preheader, %for.end110
  %d1.0279 = phi double [ -1.000000e+00, %for.cond97.preheader ], [ %sub, %for.end110 ]
  call void @SolveCubic(double noundef %indvar.conv, double noundef %b1.0281, double noundef %c1.0280, double noundef %d1.0279, ptr noundef nonnull %solutions, ptr noundef nonnull %x) #6
  %call101 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1)
  %32 = load i32, ptr %solutions, align 4, !tbaa !5
  %cmp103277 = icmp sgt i32 %32, 0
  br i1 %cmp103277, label %for.body104, label %for.end110

for.body104:                                      ; preds = %for.body99, %for.body104
  %indvars.iv310 = phi i64 [ %indvars.iv.next311, %for.body104 ], [ 0, %for.body99 ]
  %arrayidx106 = getelementptr inbounds [3 x double], ptr %x, i64 0, i64 %indvars.iv310
  %33 = load double, ptr %arrayidx106, align 8, !tbaa !9
  %call107 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %33)
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 1
  %34 = load i32, ptr %solutions, align 4, !tbaa !5
  %35 = sext i32 %34 to i64
  %cmp103 = icmp slt i64 %indvars.iv.next311, %35
  br i1 %cmp103, label %for.body104, label %for.end110, !llvm.loop !21

for.end110:                                       ; preds = %for.body104, %for.body99
  %putchar260 = call i32 @putchar(i32 10)
  %sub = fadd double %d1.0279, -4.510000e-01
  %cmp98 = fcmp ogt double %sub, -5.000000e+00
  br i1 %cmp98, label %for.body99, label %for.inc114, !llvm.loop !22

for.inc114:                                       ; preds = %for.end110
  %add = fadd double %c1.0280, 6.100000e-01
  %cmp95 = fcmp olt double %add, 1.500000e+01
  br i1 %cmp95, label %for.cond97.preheader, label %for.inc116, !llvm.loop !23

for.inc116:                                       ; preds = %for.inc114
  %sub117 = fadd double %b1.0281, -2.500000e-01
  %cmp92 = fcmp ogt double %sub117, 0.000000e+00
  br i1 %cmp92, label %for.cond94.preheader, label %for.inc119, !llvm.loop !24

for.inc119:                                       ; preds = %for.inc116
  %add120.int = add nuw nsw i32 %a1.0282.int, 1
  %exitcond.not = icmp eq i32 %add120.int, 10
  br i1 %exitcond.not, label %for.end121, label %for.cond91.preheader, !llvm.loop !25

for.end121:                                       ; preds = %for.inc119
  %puts257 = call i32 @puts(ptr nonnull @str.11) #6
  br label %for.body125

for.body125:                                      ; preds = %for.end121, %for.body125
  %indvars.iv314 = phi i64 [ 0, %for.end121 ], [ %indvars.iv.next315, %for.body125 ]
  call void @usqrt(i64 noundef %indvars.iv314, ptr noundef nonnull %q) #6
  %36 = load i32, ptr %q, align 4, !tbaa !26
  %37 = trunc i64 %indvars.iv314 to i32
  %call126 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %37, i32 noundef %36)
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 2
  %cmp124 = icmp ult i64 %indvars.iv314, 99998
  br i1 %cmp124, label %for.body125, label %for.end129, !llvm.loop !28

for.end129:                                       ; preds = %for.body125
  %putchar258 = call i32 @putchar(i32 10)
  br label %for.body134

for.body134:                                      ; preds = %for.end129, %for.body134
  %l.0284 = phi i64 [ 1072497001, %for.end129 ], [ %inc138, %for.body134 ]
  call void @usqrt(i64 noundef %l.0284, ptr noundef nonnull %q) #6
  %38 = load i32, ptr %q, align 4, !tbaa !26
  %call136 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %l.0284, i32 noundef %38)
  %inc138 = add nuw nsw i64 %l.0284, 1
  %exitcond317.not = icmp eq i64 %inc138, 1072513385
  br i1 %exitcond317.not, label %for.end139, label %for.body134, !llvm.loop !29

for.end139:                                       ; preds = %for.body134
  %puts259 = call i32 @puts(ptr nonnull @str.12) #6
  br label %for.body144

for.body144:                                      ; preds = %for.end139, %for.body144
  %X.0285 = phi double [ 0.000000e+00, %for.end139 ], [ %add149, %for.body144 ]
  %call145 = call double @atan(double noundef 1.000000e+00) #6
  %mul146 = fmul double %X.0285, 0x400921FB54442D18
  %div = fdiv double %mul146, 1.800000e+02
  %call147 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, double noundef %X.0285, double noundef %div)
  %add149 = fadd double %X.0285, 1.000000e-03
  %cmp142 = fcmp ugt double %add149, 3.600000e+02
  br i1 %cmp142, label %for.end150, label %for.body144, !llvm.loop !30

for.end150:                                       ; preds = %for.body144
  %call151 = call i32 (ptr, ...) @puts(ptr noundef nonnull @.str.9) #6
  %call153286 = call double @atan(double noundef 1.000000e+00) #6
  br label %for.body158

for.body158:                                      ; preds = %for.end150, %for.body158
  %X.1287 = phi double [ 0.000000e+00, %for.end150 ], [ %add168, %for.body158 ]
  %mul159 = fmul double %X.1287, 1.800000e+02
  %call160 = call double @atan(double noundef 1.000000e+00) #6
  %div162 = fdiv double %mul159, 0x400921FB54442D18
  %call163 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, double noundef %X.1287, double noundef %div162)
  %call165 = call double @atan(double noundef 1.000000e+00) #6
  %add168 = fadd double %X.1287, 0x3F41DF46A2529D39
  %call153 = call double @atan(double noundef 1.000000e+00) #6
  %cmp156 = fcmp ugt double %add168, 0x401921FB97600B9B
  br i1 %cmp156, label %for.end169, label %for.body158, !llvm.loop !31

for.end169:                                       ; preds = %for.body158
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %solutions) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %x) #6
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare void @SolveCubic(double noundef, double noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @usqrt(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @atan(double noundef) local_unnamed_addr #4

declare i32 @puts(...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
!19 = distinct !{!19, !12, !13}
!20 = distinct !{!20, !12, !13}
!21 = distinct !{!21, !12, !13}
!22 = distinct !{!22, !12, !13}
!23 = distinct !{!23, !12, !13}
!24 = distinct !{!24, !12, !13}
!25 = distinct !{!25, !12, !13}
!26 = !{!27, !6, i64 0}
!27 = !{!"int_sqrt", !6, i64 0, !6, i64 4}
!28 = distinct !{!28, !12, !13}
!29 = distinct !{!29, !12, !13}
!30 = distinct !{!30, !12, !13}
!31 = distinct !{!31, !12, !13}
