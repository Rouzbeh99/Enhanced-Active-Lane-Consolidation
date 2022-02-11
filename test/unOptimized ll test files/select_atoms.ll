; ModuleID = 'select_atoms.c'
source_filename = "select_atoms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.molecule_t = type { [4 x [3 x double]], i32, %struct.strand_t*, i32, i32, i32, %struct.parm* }
%struct.strand_t = type { i8*, i32, i32, %struct.molecule_t*, %struct.strand_t*, i32, i32, %struct.residue_t** }
%struct.residue_t = type { %struct.residue_t*, i32, i32, i32, i8*, i8*, i32, i32, i32, %struct.strand_t*, %struct.extbond_t*, i32, [2 x i32]*, i32, %struct.chiral_t*, i32, i32*, %struct.atom_t* }
%struct.extbond_t = type { %struct.extbond_t*, i32, i32, i32 }
%struct.chiral_t = type { [4 x i32], double }
%struct.atom_t = type { i8*, i8*, i32, i32, [8 x i32], %struct.residue_t*, double, double, double, double, i8*, i32, double, double, i32, i32, i8*, [3 x double], double }
%struct.parm = type { [81 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, [3 x double], double, double, double, double, double, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [33 x i8] c"setpoint: %s: no atoms selected\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"select_atoms: atom-expr too complicated\0A\00", align 1
@aexpr = internal global [1000 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [42 x i8] c"atom_in_aexpr: atom-expr too complicated\0A\00", align 1
@spart = internal global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@rpart = internal global i8* null, align 8
@apart = internal global i8* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"atom range not allowed\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rexpr = internal global [1000 x i8] zeroinitializer, align 16
@expbuf = internal global [1000 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setpoint(%struct.molecule_t* %0, i8* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.molecule_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.strand_t*, align 8
  %12 = alloca %struct.residue_t*, align 8
  %13 = alloca %struct.atom_t*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store double* %2, double** %7, align 8
  %17 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @select_atoms(%struct.molecule_t* %17, i8* %18)
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %14, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8
  %21 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %20, i32 0, i32 2
  %22 = load %struct.strand_t*, %struct.strand_t** %21, align 8
  store %struct.strand_t* %22, %struct.strand_t** %11, align 8
  br label %23

23:                                               ; preds = %103, %3
  %24 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %25 = icmp ne %struct.strand_t* %24, null
  br i1 %25, label %26, label %107

26:                                               ; preds = %23
  %27 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %28 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = and i32 1, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %102

32:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %98, %32
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %36 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %101

39:                                               ; preds = %33
  %40 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %41 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i32 0, i32 7
  %42 = load %struct.residue_t**, %struct.residue_t*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %42, i64 %44
  %46 = load %struct.residue_t*, %struct.residue_t** %45, align 8
  store %struct.residue_t* %46, %struct.residue_t** %12, align 8
  %47 = load %struct.residue_t*, %struct.residue_t** %12, align 8
  %48 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = and i32 1, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %97

52:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %93, %52
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.residue_t*, %struct.residue_t** %12, align 8
  %56 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %55, i32 0, i32 15
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %96

59:                                               ; preds = %53
  %60 = load %struct.residue_t*, %struct.residue_t** %12, align 8
  %61 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %60, i32 0, i32 17
  %62 = load %struct.atom_t*, %struct.atom_t** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 %64
  store %struct.atom_t* %65, %struct.atom_t** %13, align 8
  %66 = load %struct.atom_t*, %struct.atom_t** %13, align 8
  %67 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = and i32 1, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %59
  %72 = load %struct.atom_t*, %struct.atom_t** %13, align 8
  %73 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %72, i32 0, i32 17
  %74 = getelementptr inbounds [3 x double], [3 x double]* %73, i64 0, i64 0
  %75 = load double, double* %74, align 8
  %76 = load double, double* %14, align 8
  %77 = fadd double %76, %75
  store double %77, double* %14, align 8
  %78 = load %struct.atom_t*, %struct.atom_t** %13, align 8
  %79 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 17
  %80 = getelementptr inbounds [3 x double], [3 x double]* %79, i64 0, i64 1
  %81 = load double, double* %80, align 8
  %82 = load double, double* %15, align 8
  %83 = fadd double %82, %81
  store double %83, double* %15, align 8
  %84 = load %struct.atom_t*, %struct.atom_t** %13, align 8
  %85 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %84, i32 0, i32 17
  %86 = getelementptr inbounds [3 x double], [3 x double]* %85, i64 0, i64 2
  %87 = load double, double* %86, align 8
  %88 = load double, double* %16, align 8
  %89 = fadd double %88, %87
  store double %89, double* %16, align 8
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %71, %59
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %53

96:                                               ; preds = %53
  br label %97

97:                                               ; preds = %96, %39
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %33

101:                                              ; preds = %33
  br label %102

102:                                              ; preds = %101, %26
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %105 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %104, i32 0, i32 4
  %106 = load %struct.strand_t*, %struct.strand_t** %105, align 8
  store %struct.strand_t* %106, %struct.strand_t** %11, align 8
  br label %23

107:                                              ; preds = %23
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %112)
  store i32 1, i32* %4, align 4
  br label %134

114:                                              ; preds = %107
  %115 = load double, double* %14, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sitofp i32 %116 to double
  %118 = fdiv double %115, %117
  %119 = load double*, double** %7, align 8
  %120 = getelementptr inbounds double, double* %119, i64 0
  store double %118, double* %120, align 8
  %121 = load double, double* %15, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sitofp i32 %122 to double
  %124 = fdiv double %121, %123
  %125 = load double*, double** %7, align 8
  %126 = getelementptr inbounds double, double* %125, i64 1
  store double %124, double* %126, align 8
  %127 = load double, double* %16, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sitofp i32 %128 to double
  %130 = fdiv double %127, %129
  %131 = load double*, double** %7, align 8
  %132 = getelementptr inbounds double, double* %131, i64 2
  store double %130, double* %132, align 8
  br label %133

133:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %110
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @select_atoms(%struct.molecule_t* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.molecule_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.molecule_t* %0, %struct.molecule_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8
  call void @select_all(%struct.molecule_t* %12)
  store i32 0, i32* %3, align 4
  br label %65

13:                                               ; preds = %2
  %14 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8
  call void @clear_work(%struct.molecule_t* %14)
  %15 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8
  call void @clear_select(%struct.molecule_t* %15)
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @strchr(i8* %17, i32 124) #5
  store i8* %18, i8** %7, align 8
  br label %19

19:                                               ; preds = %61, %13
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %63

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %7, align 8
  br label %38

34:                                               ; preds = %22
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @strlen(i8* %35) #5
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %25
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %39, 1000
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %65

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = call i8* @strncpy(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* %45, i64 %47) #6
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8
  %53 = call i32 @eval_1_aexpr(%struct.molecule_t* %52, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0))
  %54 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8
  call void @or_select(%struct.molecule_t* %54)
  %55 = load i8*, i8** %7, align 8
  store i8* %55, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i8*, i8** %6, align 8
  %60 = call i8* @strchr(i8* %59, i32 124) #5
  store i8* %60, i8** %7, align 8
  br label %61

61:                                               ; preds = %58, %44
  %62 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8
  call void @clear_select(%struct.molecule_t* %62)
  br label %19

63:                                               ; preds = %19
  %64 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8
  call void @set_select(%struct.molecule_t* %64)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %41, %11
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_all(%struct.molecule_t* %0) #0 {
  %2 = alloca %struct.molecule_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.strand_t*, align 8
  %6 = alloca %struct.residue_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %2, align 8
  %7 = load %struct.molecule_t*, %struct.molecule_t** %2, align 8
  %8 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %7, i32 0, i32 2
  %9 = load %struct.strand_t*, %struct.strand_t** %8, align 8
  store %struct.strand_t* %9, %struct.strand_t** %5, align 8
  br label %10

10:                                               ; preds = %60, %1
  %11 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %12 = icmp ne %struct.strand_t* %11, null
  br i1 %12, label %13, label %64

13:                                               ; preds = %10
  %14 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, 1
  store i32 %17, i32* %15, align 4
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %56, %13
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %21 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %18
  %25 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %26 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %25, i32 0, i32 7
  %27 = load %struct.residue_t**, %struct.residue_t*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %27, i64 %29
  %31 = load %struct.residue_t*, %struct.residue_t** %30, align 8
  store %struct.residue_t* %31, %struct.residue_t** %6, align 8
  %32 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, 1
  store i32 %35, i32* %33, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %52, %24
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %39 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %38, i32 0, i32 15
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %44 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %43, i32 0, i32 17
  %45 = load %struct.atom_t*, %struct.atom_t** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %45, i64 %47
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %36

55:                                               ; preds = %36
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %18

59:                                               ; preds = %18
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %62 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %61, i32 0, i32 4
  %63 = load %struct.strand_t*, %struct.strand_t** %62, align 8
  store %struct.strand_t* %63, %struct.strand_t** %5, align 8
  br label %10

64:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_work(%struct.molecule_t* %0) #0 {
  %2 = alloca %struct.molecule_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.strand_t*, align 8
  %6 = alloca %struct.residue_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %2, align 8
  %7 = load %struct.molecule_t*, %struct.molecule_t** %2, align 8
  %8 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %7, i32 0, i32 2
  %9 = load %struct.strand_t*, %struct.strand_t** %8, align 8
  store %struct.strand_t* %9, %struct.strand_t** %5, align 8
  br label %10

10:                                               ; preds = %60, %1
  %11 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %12 = icmp ne %struct.strand_t* %11, null
  br i1 %12, label %13, label %64

13:                                               ; preds = %10
  %14 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, -129
  store i32 %17, i32* %15, align 4
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %56, %13
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %21 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %18
  %25 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %26 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %25, i32 0, i32 7
  %27 = load %struct.residue_t**, %struct.residue_t*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %27, i64 %29
  %31 = load %struct.residue_t*, %struct.residue_t** %30, align 8
  store %struct.residue_t* %31, %struct.residue_t** %6, align 8
  %32 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, -129
  store i32 %35, i32* %33, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %52, %24
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %39 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %38, i32 0, i32 15
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %44 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %43, i32 0, i32 17
  %45 = load %struct.atom_t*, %struct.atom_t** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %45, i64 %47
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, -129
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %36

55:                                               ; preds = %36
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %18

59:                                               ; preds = %18
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %62 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %61, i32 0, i32 4
  %63 = load %struct.strand_t*, %struct.strand_t** %62, align 8
  store %struct.strand_t* %63, %struct.strand_t** %5, align 8
  br label %10

64:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_select(%struct.molecule_t* %0) #0 {
  %2 = alloca %struct.molecule_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.strand_t*, align 8
  %6 = alloca %struct.residue_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %2, align 8
  %7 = load %struct.molecule_t*, %struct.molecule_t** %2, align 8
  %8 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %7, i32 0, i32 2
  %9 = load %struct.strand_t*, %struct.strand_t** %8, align 8
  store %struct.strand_t* %9, %struct.strand_t** %5, align 8
  br label %10

10:                                               ; preds = %60, %1
  %11 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %12 = icmp ne %struct.strand_t* %11, null
  br i1 %12, label %13, label %64

13:                                               ; preds = %10
  %14 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, -2
  store i32 %17, i32* %15, align 4
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %56, %13
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %21 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %18
  %25 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %26 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %25, i32 0, i32 7
  %27 = load %struct.residue_t**, %struct.residue_t*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %27, i64 %29
  %31 = load %struct.residue_t*, %struct.residue_t** %30, align 8
  store %struct.residue_t* %31, %struct.residue_t** %6, align 8
  %32 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, -2
  store i32 %35, i32* %33, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %52, %24
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %39 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %38, i32 0, i32 15
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %44 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %43, i32 0, i32 17
  %45 = load %struct.atom_t*, %struct.atom_t** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %45, i64 %47
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, -2
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %36

55:                                               ; preds = %36
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %18

59:                                               ; preds = %18
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %62 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %61, i32 0, i32 4
  %63 = load %struct.strand_t*, %struct.strand_t** %62, align 8
  store %struct.strand_t* %63, %struct.strand_t** %5, align 8
  br label %10

64:                                               ; preds = %10
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eval_1_aexpr(%struct.molecule_t* %0, i8* %1) #0 {
  %3 = alloca %struct.molecule_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.molecule_t* %0, %struct.molecule_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 58
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  store i8* null, i8** @spart, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  br label %25

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strtok(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  store i8* %19, i8** @spart, align 8
  %20 = load i8*, i8** @spart, align 8
  %21 = call i64 @strlen(i8* %20) #5
  %22 = add i64 %21, 1
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8* %24, i8** %5, align 8
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 58
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  store i8* null, i8** @rpart, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  br label %41

33:                                               ; preds = %25
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @strtok(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  store i8* %35, i8** @rpart, align 8
  %36 = load i8*, i8** @rpart, align 8
  %37 = call i64 @strlen(i8* %36) #5
  %38 = add i64 %37, 1
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %33, %30
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @strtok(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  store i8* %43, i8** @apart, align 8
  %44 = load i8*, i8** @spart, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %76

46:                                               ; preds = %41
  %47 = load i8*, i8** @spart, align 8
  %48 = call i8* @strtok(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @is_pattern(i8* %49, i32* %7, i32* %8)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %54 = load i8*, i8** %6, align 8
  call void @match_str_pat(%struct.molecule_t* %53, i8* %54)
  br label %59

55:                                               ; preds = %46
  %56 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  call void @match_str_range(%struct.molecule_t* %56, i32 %57, i32 %58)
  br label %59

59:                                               ; preds = %55, %52
  br label %60

60:                                               ; preds = %74, %59
  %61 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  store i8* %61, i8** %6, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @is_pattern(i8* %64, i32* %7, i32* %8)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %69 = load i8*, i8** %6, align 8
  call void @match_str_pat(%struct.molecule_t* %68, i8* %69)
  br label %74

70:                                               ; preds = %63
  %71 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  call void @match_str_range(%struct.molecule_t* %71, i32 %72, i32 %73)
  br label %74

74:                                               ; preds = %70, %67
  br label %60

75:                                               ; preds = %60
  br label %78

76:                                               ; preds = %41
  %77 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  call void @match_str_range(%struct.molecule_t* %77, i32 1, i32 -1)
  br label %78

78:                                               ; preds = %76, %75
  %79 = load i8*, i8** @rpart, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %111

81:                                               ; preds = %78
  %82 = load i8*, i8** @rpart, align 8
  %83 = call i8* @strtok(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  store i8* %83, i8** %6, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @is_pattern(i8* %84, i32* %7, i32* %8)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %89 = load i8*, i8** %6, align 8
  call void @match_res_pat(%struct.molecule_t* %88, i8* %89)
  br label %94

90:                                               ; preds = %81
  %91 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  call void @match_res_range(%struct.molecule_t* %91, i32 %92, i32 %93)
  br label %94

94:                                               ; preds = %90, %87
  br label %95

95:                                               ; preds = %109, %94
  %96 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  store i8* %96, i8** %6, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @is_pattern(i8* %99, i32* %7, i32* %8)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %104 = load i8*, i8** %6, align 8
  call void @match_res_pat(%struct.molecule_t* %103, i8* %104)
  br label %109

105:                                              ; preds = %98
  %106 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %8, align 4
  call void @match_res_range(%struct.molecule_t* %106, i32 %107, i32 %108)
  br label %109

109:                                              ; preds = %105, %102
  br label %95

110:                                              ; preds = %95
  br label %113

111:                                              ; preds = %78
  %112 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  call void @match_res_range(%struct.molecule_t* %112, i32 1, i32 -1)
  br label %113

113:                                              ; preds = %111, %110
  %114 = load i8*, i8** @apart, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %144

116:                                              ; preds = %113
  %117 = load i8*, i8** @apart, align 8
  %118 = call i8* @strtok(i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  store i8* %118, i8** %6, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @is_pattern(i8* %119, i32* %7, i32* %8)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %124 = load i8*, i8** %6, align 8
  call void @match_atom_pat(%struct.molecule_t* %123, i8* %124)
  br label %128

125:                                              ; preds = %116
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %122
  br label %129

129:                                              ; preds = %142, %128
  %130 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  store i8* %130, i8** %6, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @is_pattern(i8* %133, i32* %7, i32* %8)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %138 = load i8*, i8** %6, align 8
  call void @match_atom_pat(%struct.molecule_t* %137, i8* %138)
  br label %142

139:                                              ; preds = %132
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %136
  br label %129

143:                                              ; preds = %129
  br label %146

144:                                              ; preds = %113
  %145 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  call void @match_atom_pat(%struct.molecule_t* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %143
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @or_select(%struct.molecule_t* %0) #0 {
  %2 = alloca %struct.molecule_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.strand_t*, align 8
  %6 = alloca %struct.residue_t*, align 8
  %7 = alloca %struct.atom_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %2, align 8
  %8 = load %struct.molecule_t*, %struct.molecule_t** %2, align 8
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %8, i32 0, i32 2
  %10 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  store %struct.strand_t* %10, %struct.strand_t** %5, align 8
  br label %11

11:                                               ; preds = %83, %1
  %12 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %13 = icmp ne %struct.strand_t* %12, null
  br i1 %13, label %14, label %87

14:                                               ; preds = %11
  %15 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 128, i32 0
  %22 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %79, %14
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %29 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %82

32:                                               ; preds = %26
  %33 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %34 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %33, i32 0, i32 7
  %35 = load %struct.residue_t**, %struct.residue_t*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %35, i64 %37
  %39 = load %struct.residue_t*, %struct.residue_t** %38, align 8
  store %struct.residue_t* %39, %struct.residue_t** %6, align 8
  %40 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %41 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 128, i32 0
  %47 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %48 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %75, %32
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %54 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %53, i32 0, i32 15
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  %58 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %59 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %58, i32 0, i32 17
  %60 = load %struct.atom_t*, %struct.atom_t** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %60, i64 %62
  store %struct.atom_t* %63, %struct.atom_t** %7, align 8
  %64 = load %struct.atom_t*, %struct.atom_t** %7, align 8
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 128, i32 0
  %71 = load %struct.atom_t*, %struct.atom_t** %7, align 8
  %72 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %51

78:                                               ; preds = %51
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %26

82:                                               ; preds = %26
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %85 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %84, i32 0, i32 4
  %86 = load %struct.strand_t*, %struct.strand_t** %85, align 8
  store %struct.strand_t* %86, %struct.strand_t** %5, align 8
  br label %11

87:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_select(%struct.molecule_t* %0) #0 {
  %2 = alloca %struct.molecule_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.strand_t*, align 8
  %6 = alloca %struct.residue_t*, align 8
  %7 = alloca %struct.atom_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %2, align 8
  %8 = load %struct.molecule_t*, %struct.molecule_t** %2, align 8
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %8, i32 0, i32 2
  %10 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  store %struct.strand_t* %10, %struct.strand_t** %5, align 8
  br label %11

11:                                               ; preds = %83, %1
  %12 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %13 = icmp ne %struct.strand_t* %12, null
  br i1 %13, label %14, label %87

14:                                               ; preds = %11
  %15 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 128
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  %22 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %79, %14
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %29 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %82

32:                                               ; preds = %26
  %33 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %34 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %33, i32 0, i32 7
  %35 = load %struct.residue_t**, %struct.residue_t*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %35, i64 %37
  %39 = load %struct.residue_t*, %struct.residue_t** %38, align 8
  store %struct.residue_t* %39, %struct.residue_t** %6, align 8
  %40 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %41 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 128
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %48 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %75, %32
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %54 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %53, i32 0, i32 15
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  %58 = load %struct.residue_t*, %struct.residue_t** %6, align 8
  %59 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %58, i32 0, i32 17
  %60 = load %struct.atom_t*, %struct.atom_t** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %60, i64 %62
  store %struct.atom_t* %63, %struct.atom_t** %7, align 8
  %64 = load %struct.atom_t*, %struct.atom_t** %7, align 8
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  %71 = load %struct.atom_t*, %struct.atom_t** %7, align 8
  %72 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %51

78:                                               ; preds = %51
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %26

82:                                               ; preds = %26
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %85 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %84, i32 0, i32 4
  %86 = load %struct.strand_t*, %struct.strand_t** %85, align 8
  store %struct.strand_t* %86, %struct.strand_t** %5, align 8
  br label %11

87:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atom_in_aexpr(%struct.atom_t* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atom_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.atom_t* %0, %struct.atom_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @strchr(i8* %14, i32 124) #5
  store i8* %15, i8** %7, align 8
  br label %16

16:                                               ; preds = %60, %12
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %61

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  br label %35

31:                                               ; preds = %19
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strlen(i8* %32) #5
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %22
  %36 = load i32, i32* %8, align 4
  %37 = icmp sge i32 %36, 1000
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %62

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = call i8* @strncpy(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* %42, i64 %44) #6
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load %struct.atom_t*, %struct.atom_t** %4, align 8
  %50 = call i32 @atom_in_1_aexpr(%struct.atom_t* %49, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %62

53:                                               ; preds = %41
  %54 = load i8*, i8** %7, align 8
  store i8* %54, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = call i8* @strchr(i8* %58, i32 124) #5
  store i8* %59, i8** %7, align 8
  br label %60

60:                                               ; preds = %57, %53
  br label %16

61:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %52, %38, %11
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_1_aexpr(%struct.atom_t* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atom_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atom_t* %0, %struct.atom_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 58
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  store i8* null, i8** @spart, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %6, align 8
  br label %26

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @strtok(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  store i8* %20, i8** @spart, align 8
  %21 = load i8*, i8** @spart, align 8
  %22 = call i64 @strlen(i8* %21) #5
  %23 = add i64 %22, 1
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 %23
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %18, %15
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 58
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  store i8* null, i8** @rpart, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  br label %42

34:                                               ; preds = %26
  %35 = load i8*, i8** %6, align 8
  %36 = call i8* @strtok(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  store i8* %36, i8** @rpart, align 8
  %37 = load i8*, i8** @rpart, align 8
  %38 = call i64 @strlen(i8* %37) #5
  %39 = add i64 %38, 1
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 %39
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %34, %31
  %43 = load i8*, i8** %6, align 8
  %44 = call i8* @strtok(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  store i8* %44, i8** @apart, align 8
  %45 = load i8*, i8** @spart, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %93

47:                                               ; preds = %42
  %48 = load i8*, i8** @spart, align 8
  %49 = call i8* @strtok(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @is_pattern(i8* %50, i32* %8, i32* %9)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.atom_t*, %struct.atom_t** %4, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @atom_in_str_pat(%struct.atom_t* %54, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %94

59:                                               ; preds = %53
  br label %68

60:                                               ; preds = %47
  %61 = load %struct.atom_t*, %struct.atom_t** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @atom_in_str_range(%struct.atom_t* %61, i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %94

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %59
  br label %69

69:                                               ; preds = %91, %68
  %70 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  store i8* %70, i8** %7, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %92

72:                                               ; preds = %69
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @is_pattern(i8* %73, i32* %8, i32* %9)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load %struct.atom_t*, %struct.atom_t** %4, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @atom_in_str_pat(%struct.atom_t* %77, i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %94

82:                                               ; preds = %76
  br label %91

83:                                               ; preds = %72
  %84 = load %struct.atom_t*, %struct.atom_t** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @atom_in_str_range(%struct.atom_t* %84, i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %94

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %82
  br label %69

92:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %185

93:                                               ; preds = %42
  br label %94

94:                                               ; preds = %93, %89, %81, %66, %58
  %95 = load i8*, i8** @rpart, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %143

97:                                               ; preds = %94
  %98 = load i8*, i8** @rpart, align 8
  %99 = call i8* @strtok(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  store i8* %99, i8** %7, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @is_pattern(i8* %100, i32* %8, i32* %9)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load %struct.atom_t*, %struct.atom_t** %4, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @atom_in_res_pat(%struct.atom_t* %104, i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %144

109:                                              ; preds = %103
  br label %118

110:                                              ; preds = %97
  %111 = load %struct.atom_t*, %struct.atom_t** %4, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @atom_in_res_range(%struct.atom_t* %111, i32 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %144

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %109
  br label %119

119:                                              ; preds = %141, %118
  %120 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  store i8* %120, i8** %7, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %142

122:                                              ; preds = %119
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @is_pattern(i8* %123, i32* %8, i32* %9)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load %struct.atom_t*, %struct.atom_t** %4, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 @atom_in_res_pat(%struct.atom_t* %127, i8* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %144

132:                                              ; preds = %126
  br label %141

133:                                              ; preds = %122
  %134 = load %struct.atom_t*, %struct.atom_t** %4, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @atom_in_res_range(%struct.atom_t* %134, i32 %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %144

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %132
  br label %119

142:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %185

143:                                              ; preds = %94
  br label %144

144:                                              ; preds = %143, %139, %131, %116, %108
  %145 = load i8*, i8** @apart, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %183

147:                                              ; preds = %144
  %148 = load i8*, i8** @apart, align 8
  %149 = call i8* @strtok(i8* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  store i8* %149, i8** %7, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 @is_pattern(i8* %150, i32* %8, i32* %9)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load %struct.atom_t*, %struct.atom_t** %4, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @atom_in_atom_pat(%struct.atom_t* %154, i8* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  store i32 1, i32* %3, align 4
  br label %185

159:                                              ; preds = %153
  br label %163

160:                                              ; preds = %147
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %161, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %185

163:                                              ; preds = %159
  br label %164

164:                                              ; preds = %181, %163
  %165 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  store i8* %165, i8** %7, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %182

167:                                              ; preds = %164
  %168 = load i8*, i8** %7, align 8
  %169 = call i32 @is_pattern(i8* %168, i32* %8, i32* %9)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %167
  %172 = load %struct.atom_t*, %struct.atom_t** %4, align 8
  %173 = load i8*, i8** %7, align 8
  %174 = call i32 @atom_in_atom_pat(%struct.atom_t* %172, i8* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  store i32 1, i32* %3, align 4
  br label %185

177:                                              ; preds = %171
  br label %181

178:                                              ; preds = %167
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %185

181:                                              ; preds = %177
  br label %164

182:                                              ; preds = %164
  br label %184

183:                                              ; preds = %144
  store i32 1, i32* %3, align 4
  br label %185

184:                                              ; preds = %182
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %184, %183, %178, %176, %160, %158, %142, %92
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_attr_if(%struct.molecule_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.molecule_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.strand_t*, align 8
  %10 = alloca %struct.residue_t*, align 8
  %11 = alloca %struct.atom_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %12, i32 0, i32 2
  %14 = load %struct.strand_t*, %struct.strand_t** %13, align 8
  store %struct.strand_t* %14, %struct.strand_t** %9, align 8
  br label %15

15:                                               ; preds = %99, %3
  %16 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  %17 = icmp ne %struct.strand_t* %16, null
  br i1 %17, label %18, label %103

18:                                               ; preds = %15
  %19 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  %20 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  br label %28

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %95, %28
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  %37 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %98

40:                                               ; preds = %34
  %41 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  %42 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %41, i32 0, i32 7
  %43 = load %struct.residue_t**, %struct.residue_t*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %43, i64 %45
  %47 = load %struct.residue_t*, %struct.residue_t** %46, align 8
  store %struct.residue_t* %47, %struct.residue_t** %10, align 8
  %48 = load %struct.residue_t*, %struct.residue_t** %10, align 8
  %49 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i32, i32* %5, align 4
  br label %57

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %59 = load %struct.residue_t*, %struct.residue_t** %10, align 8
  %60 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %91, %57
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.residue_t*, %struct.residue_t** %10, align 8
  %66 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %65, i32 0, i32 15
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %63
  %70 = load %struct.residue_t*, %struct.residue_t** %10, align 8
  %71 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %70, i32 0, i32 17
  %72 = load %struct.atom_t*, %struct.atom_t** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %72, i64 %74
  store %struct.atom_t* %75, %struct.atom_t** %11, align 8
  %76 = load %struct.atom_t*, %struct.atom_t** %11, align 8
  %77 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = load i32, i32* %5, align 4
  br label %85

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ]
  %87 = load %struct.atom_t*, %struct.atom_t** %11, align 8
  %88 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %63

94:                                               ; preds = %63
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %34

98:                                               ; preds = %34
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  %101 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %100, i32 0, i32 4
  %102 = load %struct.strand_t*, %struct.strand_t** %101, align 8
  store %struct.strand_t* %102, %struct.strand_t** %9, align 8
  br label %15

103:                                              ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_attr(%struct.molecule_t* %0, i32 %1) #0 {
  %3 = alloca %struct.molecule_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.strand_t*, align 8
  %8 = alloca %struct.residue_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %10 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %9, i32 0, i32 2
  %11 = load %struct.strand_t*, %struct.strand_t** %10, align 8
  store %struct.strand_t* %11, %struct.strand_t** %7, align 8
  br label %12

12:                                               ; preds = %68, %2
  %13 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %14 = icmp ne %struct.strand_t* %13, null
  br i1 %14, label %15, label %72

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %64, %15
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %22
  %29 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %30 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %29, i32 0, i32 7
  %31 = load %struct.residue_t**, %struct.residue_t*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %31, i64 %33
  %35 = load %struct.residue_t*, %struct.residue_t** %34, align 8
  store %struct.residue_t* %35, %struct.residue_t** %8, align 8
  %36 = load i32, i32* %4, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %39 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %60, %28
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %45 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %44, i32 0, i32 15
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %52 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %51, i32 0, i32 17
  %53 = load %struct.atom_t*, %struct.atom_t** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %53, i64 %55
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %50
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %42

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %22

67:                                               ; preds = %22
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %70 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %69, i32 0, i32 4
  %71 = load %struct.strand_t*, %struct.strand_t** %70, align 8
  store %struct.strand_t* %71, %struct.strand_t** %7, align 8
  br label %12

72:                                               ; preds = %12
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_pattern(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call i16** @__ctype_b_loc() #7
  %11 = load i16*, i16** %10, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, i16* %11, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 2048
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 45
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %187

27:                                               ; preds = %21, %3
  %28 = call i16** @__ctype_b_loc() #7
  %29 = load i16*, i16** %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %29, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 2048
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %133

39:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  %40 = load i8*, i8** %5, align 8
  store i8* %40, i8** %9, align 8
  br label %41

41:                                               ; preds = %61, %39
  %42 = call i16** @__ctype_b_loc() #7
  %43 = load i16*, i16** %42, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i16, i16* %43, i64 %47
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 %50, 2048
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %41
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 10, %54
  %56 = load i8*, i8** %9, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %55, %58
  %60 = sub nsw i32 %59, 48
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %53
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %9, align 8
  br label %41

64:                                               ; preds = %41
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = load i8, i8* %67, align 1
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  store i32 0, i32* %4, align 4
  br label %187

74:                                               ; preds = %64
  %75 = load i8*, i8** %9, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 45
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %9, align 8
  br label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82
  %84 = load i8*, i8** %9, align 8
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load i32*, i32** %7, align 8
  store i32 -1, i32* %88, align 4
  store i32 0, i32* %4, align 4
  br label %187

89:                                               ; preds = %83
  %90 = call i16** @__ctype_b_loc() #7
  %91 = load i16*, i16** %90, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i16, i16* %91, i64 %95
  %97 = load i16, i16* %96, align 2
  %98 = zext i16 %97 to i32
  %99 = and i32 %98, 2048
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %89
  store i32 1, i32* %4, align 4
  br label %187

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %124, %103
  %105 = call i16** @__ctype_b_loc() #7
  %106 = load i16*, i16** %105, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i16, i16* %106, i64 %110
  %112 = load i16, i16* %111, align 2
  %113 = zext i16 %112 to i32
  %114 = and i32 %113, 2048
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %104
  %117 = load i32, i32* %8, align 4
  %118 = mul nsw i32 10, %117
  %119 = load i8*, i8** %9, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = add nsw i32 %118, %121
  %123 = sub nsw i32 %122, 48
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %116
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %9, align 8
  br label %104

127:                                              ; preds = %104
  %128 = load i32, i32* %8, align 4
  %129 = load i32*, i32** %7, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i8*, i8** %9, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  store i32 %132, i32* %4, align 4
  br label %187

133:                                              ; preds = %27
  %134 = load i32*, i32** %6, align 8
  store i32 1, i32* %134, align 4
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  store i8* %136, i8** %9, align 8
  br label %137

137:                                              ; preds = %133
  %138 = load i8*, i8** %9, align 8
  %139 = load i8, i8* %138, align 1
  %140 = icmp ne i8 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %137
  %142 = load i32*, i32** %7, align 8
  store i32 -1, i32* %142, align 4
  store i32 0, i32* %4, align 4
  br label %187

143:                                              ; preds = %137
  %144 = call i16** @__ctype_b_loc() #7
  %145 = load i16*, i16** %144, align 8
  %146 = load i8*, i8** %9, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i16, i16* %145, i64 %149
  %151 = load i16, i16* %150, align 2
  %152 = zext i16 %151 to i32
  %153 = and i32 %152, 2048
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %185

155:                                              ; preds = %143
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %176, %155
  %157 = call i16** @__ctype_b_loc() #7
  %158 = load i16*, i16** %157, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i16, i16* %158, i64 %162
  %164 = load i16, i16* %163, align 2
  %165 = zext i16 %164 to i32
  %166 = and i32 %165, 2048
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %156
  %169 = load i32, i32* %8, align 4
  %170 = mul nsw i32 10, %169
  %171 = load i8*, i8** %9, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = add nsw i32 %170, %173
  %175 = sub nsw i32 %174, 48
  store i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %168
  %177 = load i8*, i8** %9, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %9, align 8
  br label %156

179:                                              ; preds = %156
  %180 = load i32, i32* %8, align 4
  %181 = load i32*, i32** %7, align 8
  store i32 %180, i32* %181, align 4
  %182 = load i8*, i8** %9, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  store i32 %184, i32* %4, align 4
  br label %187

185:                                              ; preds = %143
  br label %186

186:                                              ; preds = %185
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %186, %179, %141, %127, %101, %87, %70, %26
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_str_pat(%struct.molecule_t* %0, i8* %1) #0 {
  %3 = alloca %struct.molecule_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strand_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  call void @aexpr2rexpr(i8* %6, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0))
  %7 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0)
  %8 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %8, i32 0, i32 2
  %10 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  store %struct.strand_t* %10, %struct.strand_t** %5, align 8
  br label %11

11:                                               ; preds = %26, %2
  %12 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %13 = icmp ne %struct.strand_t* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @step(i8* %17, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  %22 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %14
  %27 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %28 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %27, i32 0, i32 4
  %29 = load %struct.strand_t*, %struct.strand_t** %28, align 8
  store %struct.strand_t* %29, %struct.strand_t** %5, align 8
  br label %11

30:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_str_range(%struct.molecule_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.molecule_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.strand_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %11, %3
  store i32 1, i32* %7, align 4
  %16 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8
  %17 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %16, i32 0, i32 2
  %18 = load %struct.strand_t*, %struct.strand_t** %17, align 8
  store %struct.strand_t* %18, %struct.strand_t** %8, align 8
  br label %19

19:                                               ; preds = %39, %15
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8
  %22 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.strand_t*, %struct.strand_t** %8, align 8
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %29, %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load %struct.strand_t*, %struct.strand_t** %8, align 8
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %42, i32 0, i32 4
  %44 = load %struct.strand_t*, %struct.strand_t** %43, align 8
  store %struct.strand_t* %44, %struct.strand_t** %8, align 8
  br label %19

45:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_res_pat(%struct.molecule_t* %0, i8* %1) #0 {
  %3 = alloca %struct.molecule_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strand_t*, align 8
  %7 = alloca %struct.residue_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  call void @aexpr2rexpr(i8* %8, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0))
  %9 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0)
  %10 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %11 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %10, i32 0, i32 2
  %12 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  store %struct.strand_t* %12, %struct.strand_t** %6, align 8
  br label %13

13:                                               ; preds = %53, %2
  %14 = load %struct.strand_t*, %struct.strand_t** %6, align 8
  %15 = icmp ne %struct.strand_t* %14, null
  br i1 %15, label %16, label %57

16:                                               ; preds = %13
  %17 = load %struct.strand_t*, %struct.strand_t** %6, align 8
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = and i32 1, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %48, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.strand_t*, %struct.strand_t** %6, align 8
  %26 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load %struct.strand_t*, %struct.strand_t** %6, align 8
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %30, i32 0, i32 7
  %32 = load %struct.residue_t**, %struct.residue_t*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %32, i64 %34
  %36 = load %struct.residue_t*, %struct.residue_t** %35, align 8
  store %struct.residue_t* %36, %struct.residue_t** %7, align 8
  %37 = load %struct.residue_t*, %struct.residue_t** %7, align 8
  %38 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @step(i8* %39, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = load %struct.residue_t*, %struct.residue_t** %7, align 8
  %45 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %29
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %23

51:                                               ; preds = %23
  br label %52

52:                                               ; preds = %51, %16
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.strand_t*, %struct.strand_t** %6, align 8
  %55 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %54, i32 0, i32 4
  %56 = load %struct.strand_t*, %struct.strand_t** %55, align 8
  store %struct.strand_t* %56, %struct.strand_t** %6, align 8
  br label %13

57:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_res_range(%struct.molecule_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.molecule_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.strand_t*, align 8
  %10 = alloca %struct.residue_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.molecule_t*, %struct.molecule_t** %4, align 8
  %12 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %11, i32 0, i32 2
  %13 = load %struct.strand_t*, %struct.strand_t** %12, align 8
  store %struct.strand_t* %13, %struct.strand_t** %9, align 8
  br label %14

14:                                               ; preds = %68, %3
  %15 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  %16 = icmp ne %struct.strand_t* %15, null
  br i1 %16, label %17, label %72

17:                                               ; preds = %14
  %18 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = and i32 1, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %67

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  %28 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %29, %26 ], [ %31, %30 ]
  store i32 %33, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %63, %32
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  %37 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %34
  %41 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  %42 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %41, i32 0, i32 7
  %43 = load %struct.residue_t**, %struct.residue_t*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %43, i64 %45
  %47 = load %struct.residue_t*, %struct.residue_t** %46, align 8
  store %struct.residue_t* %47, %struct.residue_t** %10, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  %51 = icmp sle i32 %48, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %40
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %8, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.residue_t*, %struct.residue_t** %10, align 8
  %59 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %57, %52, %40
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %34

66:                                               ; preds = %34
  br label %67

67:                                               ; preds = %66, %17
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  %70 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %69, i32 0, i32 4
  %71 = load %struct.strand_t*, %struct.strand_t** %70, align 8
  store %struct.strand_t* %71, %struct.strand_t** %9, align 8
  br label %14

72:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_atom_pat(%struct.molecule_t* %0, i8* %1) #0 {
  %3 = alloca %struct.molecule_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.strand_t*, align 8
  %8 = alloca %struct.residue_t*, align 8
  %9 = alloca %struct.atom_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  call void @aexpr2rexpr(i8* %10, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0))
  %11 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0)
  %12 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %12, i32 0, i32 2
  %14 = load %struct.strand_t*, %struct.strand_t** %13, align 8
  store %struct.strand_t* %14, %struct.strand_t** %7, align 8
  br label %15

15:                                               ; preds = %79, %2
  %16 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %17 = icmp ne %struct.strand_t* %16, null
  br i1 %17, label %18, label %83

18:                                               ; preds = %15
  %19 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %20 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = and i32 1, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %78

24:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %74, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %28 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %25
  %32 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %33 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %32, i32 0, i32 7
  %34 = load %struct.residue_t**, %struct.residue_t*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %34, i64 %36
  %38 = load %struct.residue_t*, %struct.residue_t** %37, align 8
  store %struct.residue_t* %38, %struct.residue_t** %8, align 8
  %39 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %40 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = and i32 1, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %69, %44
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %48 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %47, i32 0, i32 15
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %45
  %52 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %53 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %52, i32 0, i32 17
  %54 = load %struct.atom_t*, %struct.atom_t** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %54, i64 %56
  store %struct.atom_t* %57, %struct.atom_t** %9, align 8
  %58 = load %struct.atom_t*, %struct.atom_t** %9, align 8
  %59 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @step(i8* %60, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  %65 = load %struct.atom_t*, %struct.atom_t** %9, align 8
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %51
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %45

72:                                               ; preds = %45
  br label %73

73:                                               ; preds = %72, %31
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %25

77:                                               ; preds = %25
  br label %78

78:                                               ; preds = %77, %18
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %81 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %80, i32 0, i32 4
  %82 = load %struct.strand_t*, %struct.strand_t** %81, align 8
  store %struct.strand_t* %82, %struct.strand_t** %7, align 8
  br label %15

83:                                               ; preds = %15
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aexpr2rexpr(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %6, align 8
  store i8 94, i8* %8, align 1
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %5, align 8
  br label %11

11:                                               ; preds = %40, %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 42
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  store i8 46, i8* %21, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  store i8 42, i8* %23, align 1
  br label %39

25:                                               ; preds = %15
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 63
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  store i8 46, i8* %31, align 1
  br label %38

33:                                               ; preds = %25
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  store i8 %35, i8* %36, align 1
  br label %38

38:                                               ; preds = %33, %30
  br label %39

39:                                               ; preds = %38, %20
  br label %40

40:                                               ; preds = %39
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %5, align 8
  br label %11

43:                                               ; preds = %11
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  store i8 36, i8* %44, align 1
  %46 = load i8*, i8** %6, align 8
  store i8 0, i8* %46, align 1
  ret void
}

declare dso_local i8* @compile(i8*, i8*, i8*, i32) #1

declare dso_local i32 @step(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_str_pat(%struct.atom_t* %0, i8* %1) #0 {
  %3 = alloca %struct.atom_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.residue_t*, align 8
  %6 = alloca %struct.strand_t*, align 8
  store %struct.atom_t* %0, %struct.atom_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.atom_t*, %struct.atom_t** %3, align 8
  %8 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %7, i32 0, i32 5
  %9 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  store %struct.residue_t* %9, %struct.residue_t** %5, align 8
  %10 = load %struct.residue_t*, %struct.residue_t** %5, align 8
  %11 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %10, i32 0, i32 9
  %12 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  store %struct.strand_t* %12, %struct.strand_t** %6, align 8
  %13 = load i8*, i8** %4, align 8
  call void @aexpr2rexpr(i8* %13, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0))
  %14 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0)
  %15 = load %struct.strand_t*, %struct.strand_t** %6, align 8
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @step(i8* %17, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0))
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_str_range(%struct.atom_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atom_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.residue_t*, align 8
  %10 = alloca %struct.strand_t*, align 8
  %11 = alloca %struct.strand_t*, align 8
  %12 = alloca %struct.molecule_t*, align 8
  store %struct.atom_t* %0, %struct.atom_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %14 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i32 0, i32 5
  %15 = load %struct.residue_t*, %struct.residue_t** %14, align 8
  store %struct.residue_t* %15, %struct.residue_t** %9, align 8
  %16 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i32 0, i32 9
  %18 = load %struct.strand_t*, %struct.strand_t** %17, align 8
  store %struct.strand_t* %18, %struct.strand_t** %10, align 8
  %19 = load %struct.strand_t*, %struct.strand_t** %10, align 8
  %20 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %19, i32 0, i32 3
  %21 = load %struct.molecule_t*, %struct.molecule_t** %20, align 8
  store %struct.molecule_t* %21, %struct.molecule_t** %12, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.molecule_t*, %struct.molecule_t** %12, align 8
  %26 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %3
  store i32 1, i32* %8, align 4
  %29 = load %struct.molecule_t*, %struct.molecule_t** %12, align 8
  %30 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %29, i32 0, i32 2
  %31 = load %struct.strand_t*, %struct.strand_t** %30, align 8
  store %struct.strand_t* %31, %struct.strand_t** %11, align 8
  br label %32

32:                                               ; preds = %53, %28
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.molecule_t*, %struct.molecule_t** %12, align 8
  %35 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp sle i32 %33, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %32
  %39 = load %struct.strand_t*, %struct.strand_t** %10, align 8
  %40 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %41 = icmp eq %struct.strand_t* %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %60

51:                                               ; preds = %46, %42
  br label %52

52:                                               ; preds = %51, %38
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = load %struct.strand_t*, %struct.strand_t** %11, align 8
  %57 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %56, i32 0, i32 4
  %58 = load %struct.strand_t*, %struct.strand_t** %57, align 8
  store %struct.strand_t* %58, %struct.strand_t** %11, align 8
  br label %32

59:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %50
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_res_pat(%struct.atom_t* %0, i8* %1) #0 {
  %3 = alloca %struct.atom_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.residue_t*, align 8
  store %struct.atom_t* %0, %struct.atom_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.atom_t*, %struct.atom_t** %3, align 8
  %7 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i32 0, i32 5
  %8 = load %struct.residue_t*, %struct.residue_t** %7, align 8
  store %struct.residue_t* %8, %struct.residue_t** %5, align 8
  %9 = load i8*, i8** %4, align 8
  call void @aexpr2rexpr(i8* %9, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0))
  %10 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0)
  %11 = load %struct.residue_t*, %struct.residue_t** %5, align 8
  %12 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %11, i32 0, i32 4
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @step(i8* %13, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0))
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_res_range(%struct.atom_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atom_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.strand_t*, align 8
  %11 = alloca %struct.residue_t*, align 8
  %12 = alloca %struct.residue_t*, align 8
  store %struct.atom_t* %0, %struct.atom_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %14 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i32 0, i32 5
  %15 = load %struct.residue_t*, %struct.residue_t** %14, align 8
  store %struct.residue_t* %15, %struct.residue_t** %11, align 8
  %16 = load %struct.residue_t*, %struct.residue_t** %11, align 8
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i32 0, i32 9
  %18 = load %struct.strand_t*, %struct.strand_t** %17, align 8
  store %struct.strand_t* %18, %struct.strand_t** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.strand_t*, %struct.strand_t** %10, align 8
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %24, %21 ], [ %26, %25 ]
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %59, %27
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.strand_t*, %struct.strand_t** %10, align 8
  %32 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %29
  %36 = load %struct.strand_t*, %struct.strand_t** %10, align 8
  %37 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %36, i32 0, i32 7
  %38 = load %struct.residue_t**, %struct.residue_t*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %38, i64 %40
  %42 = load %struct.residue_t*, %struct.residue_t** %41, align 8
  store %struct.residue_t* %42, %struct.residue_t** %12, align 8
  %43 = load %struct.residue_t*, %struct.residue_t** %11, align 8
  %44 = load %struct.residue_t*, %struct.residue_t** %12, align 8
  %45 = icmp eq %struct.residue_t* %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = icmp sle i32 %47, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %9, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %63

57:                                               ; preds = %51, %46
  br label %58

58:                                               ; preds = %57, %35
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %29

62:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_atom_pat(%struct.atom_t* %0, i8* %1) #0 {
  %3 = alloca %struct.atom_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.atom_t* %0, %struct.atom_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  call void @aexpr2rexpr(i8* %5, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0))
  %6 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0)
  %7 = load %struct.atom_t*, %struct.atom_t** %3, align 8
  %8 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @step(i8* %9, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0))
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
