; ModuleID = 'select_atoms.ll'
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
  %4 = call i32 @select_atoms(%struct.molecule_t* %0, i8* %1)
  %5 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  %7 = icmp ne %struct.strand_t* %6, null
  br i1 %7, label %.lr.ph51, label %71

.lr.ph51:                                         ; preds = %3
  br label %8

8:                                                ; preds = %.lr.ph51, %67
  %.0149 = phi double [ 0.000000e+00, %.lr.ph51 ], [ %.5, %67 ]
  %.0248 = phi double [ 0.000000e+00, %.lr.ph51 ], [ %.57, %67 ]
  %.0847 = phi double [ 0.000000e+00, %.lr.ph51 ], [ %.513, %67 ]
  %.01646 = phi i32 [ 0, %.lr.ph51 ], [ %.521, %67 ]
  %.02245 = phi %struct.strand_t* [ %6, %.lr.ph51 ], [ %69, %67 ]
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02245, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = and i32 1, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02245, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 0, %16
  br i1 %17, label %.lr.ph39, label %65

.lr.ph39:                                         ; preds = %13
  br label %18

18:                                               ; preds = %.lr.ph39, %61
  %.137 = phi double [ %.0149, %.lr.ph39 ], [ %.4, %61 ]
  %.1336 = phi double [ %.0248, %.lr.ph39 ], [ %.46, %61 ]
  %.1935 = phi double [ %.0847, %.lr.ph39 ], [ %.412, %61 ]
  %.11734 = phi i32 [ %.01646, %.lr.ph39 ], [ %.420, %61 ]
  %indvars.iv2333 = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next24, %61 ]
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02245, i32 0, i32 7
  %20 = load %struct.residue_t**, %struct.residue_t*** %19, align 8
  %21 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %20, i64 %indvars.iv2333
  %22 = load %struct.residue_t*, %struct.residue_t** %21, align 8
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = and i32 1, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 15
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 0, %30
  br i1 %31, label %.lr.ph, label %59

.lr.ph:                                           ; preds = %27
  br label %32

32:                                               ; preds = %.lr.ph, %55
  %.229 = phi double [ %.137, %.lr.ph ], [ %.3, %55 ]
  %.2428 = phi double [ %.1336, %.lr.ph ], [ %.35, %55 ]
  %.21027 = phi double [ %.1935, %.lr.ph ], [ %.311, %55 ]
  %.21826 = phi i32 [ %.11734, %.lr.ph ], [ %.319, %55 ]
  %indvars.iv25 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %55 ]
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 17
  %34 = load %struct.atom_t*, %struct.atom_t** %33, align 8
  %35 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %indvars.iv25
  %36 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = and i32 1, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %35, i32 0, i32 17
  %42 = getelementptr inbounds [3 x double], [3 x double]* %41, i64 0, i64 0
  %43 = load double, double* %42, align 8
  %44 = fadd double %.21027, %43
  %45 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %35, i32 0, i32 17
  %46 = getelementptr inbounds [3 x double], [3 x double]* %45, i64 0, i64 1
  %47 = load double, double* %46, align 8
  %48 = fadd double %.2428, %47
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %35, i32 0, i32 17
  %50 = getelementptr inbounds [3 x double], [3 x double]* %49, i64 0, i64 2
  %51 = load double, double* %50, align 8
  %52 = fadd double %.229, %51
  %53 = add nsw i32 %.21826, 1
  br label %54

54:                                               ; preds = %40, %32
  %.319 = phi i32 [ %53, %40 ], [ %.21826, %32 ]
  %.311 = phi double [ %44, %40 ], [ %.21027, %32 ]
  %.35 = phi double [ %48, %40 ], [ %.2428, %32 ]
  %.3 = phi double [ %52, %40 ], [ %.229, %32 ]
  br label %55

55:                                               ; preds = %54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv25, 1
  %56 = load i32, i32* %28, align 8
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %indvars.iv.next, %57
  br i1 %58, label %32, label %._crit_edge

._crit_edge:                                      ; preds = %55
  %split = phi i32 [ %.319, %55 ]
  %split30 = phi double [ %.311, %55 ]
  %split31 = phi double [ %.35, %55 ]
  %split32 = phi double [ %.3, %55 ]
  br label %59

59:                                               ; preds = %._crit_edge, %27
  %.218.lcssa = phi i32 [ %split, %._crit_edge ], [ %.11734, %27 ]
  %.210.lcssa = phi double [ %split30, %._crit_edge ], [ %.1935, %27 ]
  %.24.lcssa = phi double [ %split31, %._crit_edge ], [ %.1336, %27 ]
  %.2.lcssa = phi double [ %split32, %._crit_edge ], [ %.137, %27 ]
  br label %60

60:                                               ; preds = %59, %18
  %.420 = phi i32 [ %.218.lcssa, %59 ], [ %.11734, %18 ]
  %.412 = phi double [ %.210.lcssa, %59 ], [ %.1935, %18 ]
  %.46 = phi double [ %.24.lcssa, %59 ], [ %.1336, %18 ]
  %.4 = phi double [ %.2.lcssa, %59 ], [ %.137, %18 ]
  br label %61

61:                                               ; preds = %60
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv2333, 1
  %62 = load i32, i32* %14, align 8
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %indvars.iv.next24, %63
  br i1 %64, label %18, label %._crit_edge40

._crit_edge40:                                    ; preds = %61
  %split41 = phi i32 [ %.420, %61 ]
  %split42 = phi double [ %.412, %61 ]
  %split43 = phi double [ %.46, %61 ]
  %split44 = phi double [ %.4, %61 ]
  br label %65

65:                                               ; preds = %._crit_edge40, %13
  %.117.lcssa = phi i32 [ %split41, %._crit_edge40 ], [ %.01646, %13 ]
  %.19.lcssa = phi double [ %split42, %._crit_edge40 ], [ %.0847, %13 ]
  %.13.lcssa = phi double [ %split43, %._crit_edge40 ], [ %.0248, %13 ]
  %.1.lcssa = phi double [ %split44, %._crit_edge40 ], [ %.0149, %13 ]
  br label %66

66:                                               ; preds = %65, %8
  %.521 = phi i32 [ %.117.lcssa, %65 ], [ %.01646, %8 ]
  %.513 = phi double [ %.19.lcssa, %65 ], [ %.0847, %8 ]
  %.57 = phi double [ %.13.lcssa, %65 ], [ %.0248, %8 ]
  %.5 = phi double [ %.1.lcssa, %65 ], [ %.0149, %8 ]
  br label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02245, i32 0, i32 4
  %69 = load %struct.strand_t*, %struct.strand_t** %68, align 8
  %70 = icmp ne %struct.strand_t* %69, null
  br i1 %70, label %8, label %._crit_edge52

._crit_edge52:                                    ; preds = %67
  %split53 = phi i32 [ %.521, %67 ]
  %split54 = phi double [ %.513, %67 ]
  %split55 = phi double [ %.57, %67 ]
  %split56 = phi double [ %.5, %67 ]
  br label %71

71:                                               ; preds = %._crit_edge52, %3
  %.016.lcssa = phi i32 [ %split53, %._crit_edge52 ], [ 0, %3 ]
  %.08.lcssa = phi double [ %split54, %._crit_edge52 ], [ 0.000000e+00, %3 ]
  %.02.lcssa = phi double [ %split55, %._crit_edge52 ], [ 0.000000e+00, %3 ]
  %.01.lcssa = phi double [ %split56, %._crit_edge52 ], [ 0.000000e+00, %3 ]
  %72 = icmp eq i32 %.016.lcssa, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %1)
  br label %87

76:                                               ; preds = %71
  %77 = sitofp i32 %.016.lcssa to double
  %78 = fdiv double %.08.lcssa, %77
  %79 = getelementptr inbounds double, double* %2, i64 0
  store double %78, double* %79, align 8
  %80 = sitofp i32 %.016.lcssa to double
  %81 = fdiv double %.02.lcssa, %80
  %82 = getelementptr inbounds double, double* %2, i64 1
  store double %81, double* %82, align 8
  %83 = sitofp i32 %.016.lcssa to double
  %84 = fdiv double %.01.lcssa, %83
  %85 = getelementptr inbounds double, double* %2, i64 2
  store double %84, double* %85, align 8
  br label %86

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %73
  %.0 = phi i32 [ 1, %73 ], [ 0, %86 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @select_atoms(%struct.molecule_t* %0, i8* %1) #0 {
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  call void @select_all(%struct.molecule_t* %0)
  br label %36

5:                                                ; preds = %2
  call void @clear_work(%struct.molecule_t* %0)
  call void @clear_select(%struct.molecule_t* %0)
  %6 = call i8* @strchr(i8* %1, i32 124) #5
  %7 = icmp ne i8* %1, null
  br i1 %7, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %5
  br label %8

8:                                                ; preds = %.lr.ph, %33
  %.026 = phi i8* [ %6, %.lr.ph ], [ %.2, %33 ]
  %.034 = phi i8* [ %1, %.lr.ph ], [ %.1, %33 ]
  %9 = icmp ne i8* %.026, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = ptrtoint i8* %.026 to i64
  %12 = ptrtoint i8* %.034 to i64
  %13 = sub i64 %11, %12
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds i8, i8* %.026, i32 1
  br label %19

16:                                               ; preds = %8
  %17 = call i64 @strlen(i8* %.034) #5
  %18 = trunc i64 %17 to i32
  br label %19

19:                                               ; preds = %16, %10
  %.035 = phi i8* [ %.034, %10 ], [ %.034, %16 ]
  %.1 = phi i8* [ %15, %10 ], [ %.026, %16 ]
  %.01 = phi i32 [ %14, %10 ], [ %18, %16 ]
  %20 = icmp sge i32 %.01, 1000
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %36

24:                                               ; preds = %19
  %25 = sext i32 %.01 to i64
  %26 = call i8* @strncpy(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* %.035, i64 %25) #6
  %27 = sext i32 %.01 to i64
  %28 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %27
  store i8 0, i8* %28, align 1
  %29 = call i32 @eval_1_aexpr(%struct.molecule_t* %0, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0))
  call void @or_select(%struct.molecule_t* %0)
  %30 = icmp ne i8* %.1, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i8* @strchr(i8* %.1, i32 124) #5
  br label %33

33:                                               ; preds = %31, %24
  %.2 = phi i8* [ %32, %31 ], [ %.1, %24 ]
  call void @clear_select(%struct.molecule_t* %0)
  %34 = icmp ne i8* %.1, null
  br i1 %34, label %8, label %._crit_edge

._crit_edge:                                      ; preds = %33
  br label %35

35:                                               ; preds = %._crit_edge, %5
  call void @set_select(%struct.molecule_t* %0)
  br label %36

36:                                               ; preds = %35, %21, %4
  %.0 = phi i32 [ 0, %4 ], [ 1, %21 ], [ 0, %35 ]
  ret i32 %.0
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_all(%struct.molecule_t* %0) #0 {
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8
  %4 = icmp ne %struct.strand_t* %3, null
  br i1 %4, label %.lr.ph12, label %46

.lr.ph12:                                         ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph12, %42
  %.010 = phi %struct.strand_t* [ %3, %.lr.ph12 ], [ %44, %42 ]
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = or i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 0, %11
  br i1 %12, label %.lr.ph8, label %41

.lr.ph8:                                          ; preds = %5
  br label %13

13:                                               ; preds = %.lr.ph8, %37
  %indvars.iv36 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next4, %37 ]
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 7
  %15 = load %struct.residue_t**, %struct.residue_t*** %14, align 8
  %16 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %15, i64 %indvars.iv36
  %17 = load %struct.residue_t*, %struct.residue_t** %16, align 8
  %18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 15
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 0, %23
  br i1 %24, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %13
  br label %25

25:                                               ; preds = %.lr.ph, %32
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %32 ]
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 17
  %27 = load %struct.atom_t*, %struct.atom_t** %26, align 8
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %27, i64 %indvars.iv5
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, 1
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1
  %33 = load i32, i32* %21, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %indvars.iv.next, %34
  br i1 %35, label %25, label %._crit_edge

._crit_edge:                                      ; preds = %32
  br label %36

36:                                               ; preds = %._crit_edge, %13
  br label %37

37:                                               ; preds = %36
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv36, 1
  %38 = load i32, i32* %9, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %indvars.iv.next4, %39
  br i1 %40, label %13, label %._crit_edge9

._crit_edge9:                                     ; preds = %37
  br label %41

41:                                               ; preds = %._crit_edge9, %5
  br label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 4
  %44 = load %struct.strand_t*, %struct.strand_t** %43, align 8
  %45 = icmp ne %struct.strand_t* %44, null
  br i1 %45, label %5, label %._crit_edge13

._crit_edge13:                                    ; preds = %42
  br label %46

46:                                               ; preds = %._crit_edge13, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_work(%struct.molecule_t* %0) #0 {
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8
  %4 = icmp ne %struct.strand_t* %3, null
  br i1 %4, label %.lr.ph12, label %46

.lr.ph12:                                         ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph12, %42
  %.010 = phi %struct.strand_t* [ %3, %.lr.ph12 ], [ %44, %42 ]
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, -129
  store i32 %8, i32* %6, align 4
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 0, %11
  br i1 %12, label %.lr.ph8, label %41

.lr.ph8:                                          ; preds = %5
  br label %13

13:                                               ; preds = %.lr.ph8, %37
  %indvars.iv36 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next4, %37 ]
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 7
  %15 = load %struct.residue_t**, %struct.residue_t*** %14, align 8
  %16 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %15, i64 %indvars.iv36
  %17 = load %struct.residue_t*, %struct.residue_t** %16, align 8
  %18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, -129
  store i32 %20, i32* %18, align 8
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 15
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 0, %23
  br i1 %24, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %13
  br label %25

25:                                               ; preds = %.lr.ph, %32
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %32 ]
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 17
  %27 = load %struct.atom_t*, %struct.atom_t** %26, align 8
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %27, i64 %indvars.iv5
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, -129
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1
  %33 = load i32, i32* %21, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %indvars.iv.next, %34
  br i1 %35, label %25, label %._crit_edge

._crit_edge:                                      ; preds = %32
  br label %36

36:                                               ; preds = %._crit_edge, %13
  br label %37

37:                                               ; preds = %36
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv36, 1
  %38 = load i32, i32* %9, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %indvars.iv.next4, %39
  br i1 %40, label %13, label %._crit_edge9

._crit_edge9:                                     ; preds = %37
  br label %41

41:                                               ; preds = %._crit_edge9, %5
  br label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 4
  %44 = load %struct.strand_t*, %struct.strand_t** %43, align 8
  %45 = icmp ne %struct.strand_t* %44, null
  br i1 %45, label %5, label %._crit_edge13

._crit_edge13:                                    ; preds = %42
  br label %46

46:                                               ; preds = %._crit_edge13, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_select(%struct.molecule_t* %0) #0 {
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8
  %4 = icmp ne %struct.strand_t* %3, null
  br i1 %4, label %.lr.ph12, label %46

.lr.ph12:                                         ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph12, %42
  %.010 = phi %struct.strand_t* [ %3, %.lr.ph12 ], [ %44, %42 ]
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, -2
  store i32 %8, i32* %6, align 4
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 0, %11
  br i1 %12, label %.lr.ph8, label %41

.lr.ph8:                                          ; preds = %5
  br label %13

13:                                               ; preds = %.lr.ph8, %37
  %indvars.iv36 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next4, %37 ]
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 7
  %15 = load %struct.residue_t**, %struct.residue_t*** %14, align 8
  %16 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %15, i64 %indvars.iv36
  %17 = load %struct.residue_t*, %struct.residue_t** %16, align 8
  %18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, -2
  store i32 %20, i32* %18, align 8
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 15
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 0, %23
  br i1 %24, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %13
  br label %25

25:                                               ; preds = %.lr.ph, %32
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %32 ]
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 17
  %27 = load %struct.atom_t*, %struct.atom_t** %26, align 8
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %27, i64 %indvars.iv5
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, -2
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1
  %33 = load i32, i32* %21, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %indvars.iv.next, %34
  br i1 %35, label %25, label %._crit_edge

._crit_edge:                                      ; preds = %32
  br label %36

36:                                               ; preds = %._crit_edge, %13
  br label %37

37:                                               ; preds = %36
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv36, 1
  %38 = load i32, i32* %9, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %indvars.iv.next4, %39
  br i1 %40, label %13, label %._crit_edge9

._crit_edge9:                                     ; preds = %37
  br label %41

41:                                               ; preds = %._crit_edge9, %5
  br label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 4
  %44 = load %struct.strand_t*, %struct.strand_t** %43, align 8
  %45 = icmp ne %struct.strand_t* %44, null
  br i1 %45, label %5, label %._crit_edge13

._crit_edge13:                                    ; preds = %42
  br label %46

46:                                               ; preds = %._crit_edge13, %1
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i8, i8* %1, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 58
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  store i8* null, i8** @spart, align 8
  %9 = getelementptr inbounds i8, i8* %1, i32 1
  br label %16

10:                                               ; preds = %2
  %11 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  store i8* %11, i8** @spart, align 8
  %12 = load i8*, i8** @spart, align 8
  %13 = call i64 @strlen(i8* %12) #5
  %14 = add i64 %13, 1
  %15 = getelementptr inbounds i8, i8* %1, i64 %14
  br label %16

16:                                               ; preds = %10, %8
  %.0 = phi i8* [ %9, %8 ], [ %15, %10 ]
  %17 = load i8, i8* %.0, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 58
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  store i8* null, i8** @rpart, align 8
  %21 = getelementptr inbounds i8, i8* %.0, i32 1
  br label %28

22:                                               ; preds = %16
  %23 = call i8* @strtok(i8* %.0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  store i8* %23, i8** @rpart, align 8
  %24 = load i8*, i8** @rpart, align 8
  %25 = call i64 @strlen(i8* %24) #5
  %26 = add i64 %25, 1
  %27 = getelementptr inbounds i8, i8* %.0, i64 %26
  br label %28

28:                                               ; preds = %22, %20
  %.1 = phi i8* [ %21, %20 ], [ %27, %22 ]
  %29 = call i8* @strtok(i8* %.1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  store i8* %29, i8** @apart, align 8
  %30 = load i8*, i8** @spart, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load i8*, i8** @spart, align 8
  %34 = call i8* @strtok(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %35 = call i32 @is_pattern(i8* %34, i32* %3, i32* %4)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  call void @match_str_pat(%struct.molecule_t* %0, i8* %34)
  br label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  call void @match_str_range(%struct.molecule_t* %0, i32 %39, i32 %40)
  br label %41

41:                                               ; preds = %38, %37
  %42 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %43 = icmp ne i8* %42, null
  br i1 %43, label %.lr.ph, label %55

.lr.ph:                                           ; preds = %41
  br label %44

44:                                               ; preds = %.lr.ph, %52
  %45 = phi i8* [ %42, %.lr.ph ], [ %53, %52 ]
  %46 = call i32 @is_pattern(i8* %45, i32* %3, i32* %4)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  call void @match_str_pat(%struct.molecule_t* %0, i8* %45)
  br label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  call void @match_str_range(%struct.molecule_t* %0, i32 %50, i32 %51)
  br label %52

52:                                               ; preds = %49, %48
  %53 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %54 = icmp ne i8* %53, null
  br i1 %54, label %44, label %._crit_edge

._crit_edge:                                      ; preds = %52
  br label %55

55:                                               ; preds = %._crit_edge, %41
  br label %57

56:                                               ; preds = %28
  call void @match_str_range(%struct.molecule_t* %0, i32 1, i32 -1)
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i8*, i8** @rpart, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load i8*, i8** @rpart, align 8
  %62 = call i8* @strtok(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %63 = call i32 @is_pattern(i8* %62, i32* %3, i32* %4)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  call void @match_res_pat(%struct.molecule_t* %0, i8* %62)
  br label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %4, align 4
  call void @match_res_range(%struct.molecule_t* %0, i32 %67, i32 %68)
  br label %69

69:                                               ; preds = %66, %65
  %70 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %71 = icmp ne i8* %70, null
  br i1 %71, label %.lr.ph2, label %83

.lr.ph2:                                          ; preds = %69
  br label %72

72:                                               ; preds = %.lr.ph2, %80
  %73 = phi i8* [ %70, %.lr.ph2 ], [ %81, %80 ]
  %74 = call i32 @is_pattern(i8* %73, i32* %3, i32* %4)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  call void @match_res_pat(%struct.molecule_t* %0, i8* %73)
  br label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %4, align 4
  call void @match_res_range(%struct.molecule_t* %0, i32 %78, i32 %79)
  br label %80

80:                                               ; preds = %77, %76
  %81 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %82 = icmp ne i8* %81, null
  br i1 %82, label %72, label %._crit_edge3

._crit_edge3:                                     ; preds = %80
  br label %83

83:                                               ; preds = %._crit_edge3, %69
  br label %85

84:                                               ; preds = %57
  call void @match_res_range(%struct.molecule_t* %0, i32 1, i32 -1)
  br label %85

85:                                               ; preds = %84, %83
  %86 = load i8*, i8** @apart, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %112

88:                                               ; preds = %85
  %89 = load i8*, i8** @apart, align 8
  %90 = call i8* @strtok(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %91 = call i32 @is_pattern(i8* %90, i32* %3, i32* %4)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  call void @match_atom_pat(%struct.molecule_t* %0, i8* %90)
  br label %97

94:                                               ; preds = %88
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %93
  %98 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %99 = icmp ne i8* %98, null
  br i1 %99, label %.lr.ph5, label %111

.lr.ph5:                                          ; preds = %97
  br label %100

100:                                              ; preds = %.lr.ph5, %108
  %101 = phi i8* [ %98, %.lr.ph5 ], [ %109, %108 ]
  %102 = call i32 @is_pattern(i8* %101, i32* %3, i32* %4)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  call void @match_atom_pat(%struct.molecule_t* %0, i8* %101)
  br label %108

105:                                              ; preds = %100
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %104
  %109 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %110 = icmp ne i8* %109, null
  br i1 %110, label %100, label %._crit_edge6

._crit_edge6:                                     ; preds = %108
  br label %111

111:                                              ; preds = %._crit_edge6, %97
  br label %113

112:                                              ; preds = %85
  call void @match_atom_pat(%struct.molecule_t* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %113

113:                                              ; preds = %112, %111
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @or_select(%struct.molecule_t* %0) #0 {
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8
  %4 = icmp ne %struct.strand_t* %3, null
  br i1 %4, label %.lr.ph12, label %64

.lr.ph12:                                         ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph12, %60
  %.010 = phi %struct.strand_t* [ %3, %.lr.ph12 ], [ %62, %60 ]
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %9, i32 128, i32 0
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %10
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 0, %16
  br i1 %17, label %.lr.ph8, label %58

.lr.ph8:                                          ; preds = %5
  br label %18

18:                                               ; preds = %.lr.ph8, %54
  %indvars.iv36 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next4, %54 ]
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 7
  %20 = load %struct.residue_t**, %struct.residue_t*** %19, align 8
  %21 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %20, i64 %indvars.iv36
  %22 = load %struct.residue_t*, %struct.residue_t** %21, align 8
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %26, i32 128, i32 0
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 8
  %31 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 15
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 0, %33
  br i1 %34, label %.lr.ph, label %52

.lr.ph:                                           ; preds = %18
  br label %35

35:                                               ; preds = %.lr.ph, %48
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %48 ]
  %36 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 17
  %37 = load %struct.atom_t*, %struct.atom_t** %36, align 8
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %indvars.iv5
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 128, i32 0
  %45 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %38, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1
  %49 = load i32, i32* %31, align 8
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %indvars.iv.next, %50
  br i1 %51, label %35, label %._crit_edge

._crit_edge:                                      ; preds = %48
  br label %52

52:                                               ; preds = %._crit_edge, %18
  %53 = zext i1 %26 to i64
  br label %54

54:                                               ; preds = %52
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv36, 1
  %55 = load i32, i32* %14, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %indvars.iv.next4, %56
  br i1 %57, label %18, label %._crit_edge9

._crit_edge9:                                     ; preds = %54
  br label %58

58:                                               ; preds = %._crit_edge9, %5
  %59 = zext i1 %9 to i64
  br label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 4
  %62 = load %struct.strand_t*, %struct.strand_t** %61, align 8
  %63 = icmp ne %struct.strand_t* %62, null
  br i1 %63, label %5, label %._crit_edge13

._crit_edge13:                                    ; preds = %60
  br label %64

64:                                               ; preds = %._crit_edge13, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_select(%struct.molecule_t* %0) #0 {
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8
  %4 = icmp ne %struct.strand_t* %3, null
  br i1 %4, label %.lr.ph12, label %64

.lr.ph12:                                         ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph12, %60
  %.010 = phi %struct.strand_t* [ %3, %.lr.ph12 ], [ %62, %60 ]
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 128
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %9, i32 1, i32 0
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %10
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 0, %16
  br i1 %17, label %.lr.ph8, label %58

.lr.ph8:                                          ; preds = %5
  br label %18

18:                                               ; preds = %.lr.ph8, %54
  %indvars.iv36 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next4, %54 ]
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 7
  %20 = load %struct.residue_t**, %struct.residue_t*** %19, align 8
  %21 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %20, i64 %indvars.iv36
  %22 = load %struct.residue_t*, %struct.residue_t** %21, align 8
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 128
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %26, i32 1, i32 0
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 8
  %31 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 15
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 0, %33
  br i1 %34, label %.lr.ph, label %52

.lr.ph:                                           ; preds = %18
  br label %35

35:                                               ; preds = %.lr.ph, %48
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %48 ]
  %36 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %22, i32 0, i32 17
  %37 = load %struct.atom_t*, %struct.atom_t** %36, align 8
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i64 %indvars.iv5
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 128
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %38, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1
  %49 = load i32, i32* %31, align 8
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %indvars.iv.next, %50
  br i1 %51, label %35, label %._crit_edge

._crit_edge:                                      ; preds = %48
  br label %52

52:                                               ; preds = %._crit_edge, %18
  %53 = zext i1 %26 to i64
  br label %54

54:                                               ; preds = %52
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv36, 1
  %55 = load i32, i32* %14, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %indvars.iv.next4, %56
  br i1 %57, label %18, label %._crit_edge9

._crit_edge9:                                     ; preds = %54
  br label %58

58:                                               ; preds = %._crit_edge9, %5
  %59 = zext i1 %9 to i64
  br label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 4
  %62 = load %struct.strand_t*, %struct.strand_t** %61, align 8
  %63 = icmp ne %struct.strand_t* %62, null
  br i1 %63, label %5, label %._crit_edge13

._crit_edge13:                                    ; preds = %60
  br label %64

64:                                               ; preds = %._crit_edge13, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atom_in_aexpr(%struct.atom_t* %0, i8* %1) #0 {
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %39

5:                                                ; preds = %2
  %6 = call i8* @strchr(i8* %1, i32 124) #5
  %7 = icmp ne i8* %1, null
  br i1 %7, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %5
  br label %8

8:                                                ; preds = %.lr.ph, %36
  %.026 = phi i8* [ %6, %.lr.ph ], [ %.2, %36 ]
  %.034 = phi i8* [ %1, %.lr.ph ], [ %.1, %36 ]
  %9 = icmp ne i8* %.026, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = ptrtoint i8* %.026 to i64
  %12 = ptrtoint i8* %.034 to i64
  %13 = sub i64 %11, %12
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds i8, i8* %.026, i32 1
  br label %19

16:                                               ; preds = %8
  %17 = call i64 @strlen(i8* %.034) #5
  %18 = trunc i64 %17 to i32
  br label %19

19:                                               ; preds = %16, %10
  %.035 = phi i8* [ %.034, %10 ], [ %.034, %16 ]
  %.1 = phi i8* [ %15, %10 ], [ %.026, %16 ]
  %.01 = phi i32 [ %14, %10 ], [ %18, %16 ]
  %20 = icmp sge i32 %.01, 1000
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %39

24:                                               ; preds = %19
  %25 = sext i32 %.01 to i64
  %26 = call i8* @strncpy(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0), i8* %.035, i64 %25) #6
  %27 = sext i32 %.01 to i64
  %28 = getelementptr inbounds [1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 %27
  store i8 0, i8* %28, align 1
  %29 = call i32 @atom_in_1_aexpr(%struct.atom_t* %0, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @aexpr, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %39

32:                                               ; preds = %24
  %33 = icmp ne i8* %.1, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = call i8* @strchr(i8* %.1, i32 124) #5
  br label %36

36:                                               ; preds = %34, %32
  %.2 = phi i8* [ %35, %34 ], [ %.1, %32 ]
  %37 = icmp ne i8* %.1, null
  br i1 %37, label %8, label %._crit_edge

._crit_edge:                                      ; preds = %36
  br label %38

38:                                               ; preds = %._crit_edge, %5
  br label %39

39:                                               ; preds = %38, %31, %21, %4
  %.0 = phi i32 [ 0, %4 ], [ 0, %21 ], [ 1, %31 ], [ 0, %38 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_1_aexpr(%struct.atom_t* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i8, i8* %1, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 58
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  store i8* null, i8** @spart, align 8
  %9 = getelementptr inbounds i8, i8* %1, i32 1
  br label %16

10:                                               ; preds = %2
  %11 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  store i8* %11, i8** @spart, align 8
  %12 = load i8*, i8** @spart, align 8
  %13 = call i64 @strlen(i8* %12) #5
  %14 = add i64 %13, 1
  %15 = getelementptr inbounds i8, i8* %1, i64 %14
  br label %16

16:                                               ; preds = %10, %8
  %.01 = phi i8* [ %9, %8 ], [ %15, %10 ]
  %17 = load i8, i8* %.01, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 58
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  store i8* null, i8** @rpart, align 8
  %21 = getelementptr inbounds i8, i8* %.01, i32 1
  br label %28

22:                                               ; preds = %16
  %23 = call i8* @strtok(i8* %.01, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  store i8* %23, i8** @rpart, align 8
  %24 = load i8*, i8** @rpart, align 8
  %25 = call i64 @strlen(i8* %24) #5
  %26 = add i64 %25, 1
  %27 = getelementptr inbounds i8, i8* %.01, i64 %26
  br label %28

28:                                               ; preds = %22, %20
  %.1 = phi i8* [ %21, %20 ], [ %27, %22 ]
  %29 = call i8* @strtok(i8* %.1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  store i8* %29, i8** @apart, align 8
  %30 = load i8*, i8** @spart, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  %33 = load i8*, i8** @spart, align 8
  %34 = call i8* @strtok(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %35 = call i32 @is_pattern(i8* %34, i32* %3, i32* %4)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = call i32 @atom_in_str_pat(%struct.atom_t* %0, i8* %34)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %73

41:                                               ; preds = %37
  br label %49

42:                                               ; preds = %32
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @atom_in_str_range(%struct.atom_t* %0, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %73

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %41
  %50 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %51 = icmp ne i8* %50, null
  br i1 %51, label %.lr.ph, label %71

.lr.ph:                                           ; preds = %49
  br label %52

52:                                               ; preds = %.lr.ph, %68
  %53 = phi i8* [ %50, %.lr.ph ], [ %69, %68 ]
  %54 = call i32 @is_pattern(i8* %53, i32* %3, i32* %4)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = call i32 @atom_in_str_pat(%struct.atom_t* %0, i8* %53)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %73

60:                                               ; preds = %56
  br label %68

61:                                               ; preds = %52
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @atom_in_str_range(%struct.atom_t* %0, i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %73

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %60
  %69 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %70 = icmp ne i8* %69, null
  br i1 %70, label %52, label %._crit_edge

._crit_edge:                                      ; preds = %68
  br label %71

71:                                               ; preds = %._crit_edge, %49
  br label %154

72:                                               ; preds = %28
  br label %73

73:                                               ; preds = %72, %66, %59, %47, %40
  %74 = load i8*, i8** @rpart, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %116

76:                                               ; preds = %73
  %77 = load i8*, i8** @rpart, align 8
  %78 = call i8* @strtok(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %79 = call i32 @is_pattern(i8* %78, i32* %3, i32* %4)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = call i32 @atom_in_res_pat(%struct.atom_t* %0, i8* %78)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %117

85:                                               ; preds = %81
  br label %93

86:                                               ; preds = %76
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @atom_in_res_range(%struct.atom_t* %0, i32 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %117

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %85
  %94 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %95 = icmp ne i8* %94, null
  br i1 %95, label %.lr.ph3, label %115

.lr.ph3:                                          ; preds = %93
  br label %96

96:                                               ; preds = %.lr.ph3, %112
  %97 = phi i8* [ %94, %.lr.ph3 ], [ %113, %112 ]
  %98 = call i32 @is_pattern(i8* %97, i32* %3, i32* %4)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = call i32 @atom_in_res_pat(%struct.atom_t* %0, i8* %97)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %117

104:                                              ; preds = %100
  br label %112

105:                                              ; preds = %96
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @atom_in_res_range(%struct.atom_t* %0, i32 %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %117

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %104
  %113 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %114 = icmp ne i8* %113, null
  br i1 %114, label %96, label %._crit_edge4

._crit_edge4:                                     ; preds = %112
  br label %115

115:                                              ; preds = %._crit_edge4, %93
  br label %154

116:                                              ; preds = %73
  br label %117

117:                                              ; preds = %116, %110, %103, %91, %84
  %118 = load i8*, i8** @apart, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %152

120:                                              ; preds = %117
  %121 = load i8*, i8** @apart, align 8
  %122 = call i8* @strtok(i8* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %123 = call i32 @is_pattern(i8* %122, i32* %3, i32* %4)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = call i32 @atom_in_atom_pat(%struct.atom_t* %0, i8* %122)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %154

129:                                              ; preds = %125
  br label %133

130:                                              ; preds = %120
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %154

133:                                              ; preds = %129
  %134 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %135 = icmp ne i8* %134, null
  br i1 %135, label %.lr.ph6, label %151

.lr.ph6:                                          ; preds = %133
  br label %136

136:                                              ; preds = %.lr.ph6, %148
  %137 = phi i8* [ %134, %.lr.ph6 ], [ %149, %148 ]
  %138 = call i32 @is_pattern(i8* %137, i32* %3, i32* %4)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = call i32 @atom_in_atom_pat(%struct.atom_t* %0, i8* %137)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %154

144:                                              ; preds = %140
  br label %148

145:                                              ; preds = %136
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %154

148:                                              ; preds = %144
  %149 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6
  %150 = icmp ne i8* %149, null
  br i1 %150, label %136, label %._crit_edge7

._crit_edge7:                                     ; preds = %148
  br label %151

151:                                              ; preds = %._crit_edge7, %133
  br label %153

152:                                              ; preds = %117
  br label %154

153:                                              ; preds = %151
  br label %154

154:                                              ; preds = %153, %152, %145, %143, %130, %128, %115, %71
  %.0 = phi i32 [ 1, %128 ], [ 1, %143 ], [ 0, %145 ], [ 0, %153 ], [ 0, %130 ], [ 1, %152 ], [ 0, %115 ], [ 0, %71 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_attr_if(%struct.molecule_t* %0, i32 %1, i32 %2) #0 {
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %6 = icmp ne %struct.strand_t* %5, null
  br i1 %6, label %.lr.ph12, label %72

.lr.ph12:                                         ; preds = %3
  br label %7

7:                                                ; preds = %.lr.ph12, %68
  %.010 = phi %struct.strand_t* [ %5, %.lr.ph12 ], [ %70, %68 ]
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %2
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %14

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13, %12
  %15 = phi i32 [ %1, %12 ], [ 0, %13 ]
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %15
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 0, %21
  br i1 %22, label %.lr.ph8, label %67

.lr.ph8:                                          ; preds = %14
  br label %23

23:                                               ; preds = %.lr.ph8, %63
  %indvars.iv36 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next4, %63 ]
  %24 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 7
  %25 = load %struct.residue_t**, %struct.residue_t*** %24, align 8
  %26 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %25, i64 %indvars.iv36
  %27 = load %struct.residue_t*, %struct.residue_t** %26, align 8
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %34

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %32
  %35 = phi i32 [ %1, %32 ], [ 0, %33 ]
  %36 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %27, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 8
  %39 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %27, i32 0, i32 15
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 0, %41
  br i1 %42, label %.lr.ph, label %62

.lr.ph:                                           ; preds = %34
  br label %43

43:                                               ; preds = %.lr.ph, %58
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %58 ]
  %44 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %27, i32 0, i32 17
  %45 = load %struct.atom_t*, %struct.atom_t** %44, align 8
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %45, i64 %indvars.iv5
  %47 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %2
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %51
  %54 = phi i32 [ %1, %51 ], [ 0, %52 ]
  %55 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %46, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1
  %59 = load i32, i32* %39, align 8
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %indvars.iv.next, %60
  br i1 %61, label %43, label %._crit_edge

._crit_edge:                                      ; preds = %58
  br label %62

62:                                               ; preds = %._crit_edge, %34
  br label %63

63:                                               ; preds = %62
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv36, 1
  %64 = load i32, i32* %19, align 8
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %indvars.iv.next4, %65
  br i1 %66, label %23, label %._crit_edge9

._crit_edge9:                                     ; preds = %63
  br label %67

67:                                               ; preds = %._crit_edge9, %14
  br label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 4
  %70 = load %struct.strand_t*, %struct.strand_t** %69, align 8
  %71 = icmp ne %struct.strand_t* %70, null
  br i1 %71, label %7, label %._crit_edge13

._crit_edge13:                                    ; preds = %68
  br label %72

72:                                               ; preds = %._crit_edge13, %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_attr(%struct.molecule_t* %0, i32 %1) #0 {
  %3 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2
  %4 = load %struct.strand_t*, %struct.strand_t** %3, align 8
  %5 = icmp ne %struct.strand_t* %4, null
  br i1 %5, label %.lr.ph12, label %50

.lr.ph12:                                         ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph12, %46
  %.010 = phi %struct.strand_t* [ %4, %.lr.ph12 ], [ %48, %46 ]
  %7 = xor i32 %1, -1
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %7
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 0, %13
  br i1 %14, label %.lr.ph8, label %45

.lr.ph8:                                          ; preds = %6
  br label %15

15:                                               ; preds = %.lr.ph8, %41
  %indvars.iv36 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next4, %41 ]
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 7
  %17 = load %struct.residue_t**, %struct.residue_t*** %16, align 8
  %18 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %17, i64 %indvars.iv36
  %19 = load %struct.residue_t*, %struct.residue_t** %18, align 8
  %20 = xor i32 %1, -1
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %20
  store i32 %23, i32* %21, align 8
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i32 0, i32 15
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 0, %26
  br i1 %27, label %.lr.ph, label %40

.lr.ph:                                           ; preds = %15
  br label %28

28:                                               ; preds = %.lr.ph, %36
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %36 ]
  %29 = xor i32 %1, -1
  %30 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i32 0, i32 17
  %31 = load %struct.atom_t*, %struct.atom_t** %30, align 8
  %32 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %31, i64 %indvars.iv5
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %29
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1
  %37 = load i32, i32* %24, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %indvars.iv.next, %38
  br i1 %39, label %28, label %._crit_edge

._crit_edge:                                      ; preds = %36
  br label %40

40:                                               ; preds = %._crit_edge, %15
  br label %41

41:                                               ; preds = %40
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv36, 1
  %42 = load i32, i32* %11, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %indvars.iv.next4, %43
  br i1 %44, label %15, label %._crit_edge9

._crit_edge9:                                     ; preds = %41
  br label %45

45:                                               ; preds = %._crit_edge9, %6
  br label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 4
  %48 = load %struct.strand_t*, %struct.strand_t** %47, align 8
  %49 = icmp ne %struct.strand_t* %48, null
  br i1 %49, label %6, label %._crit_edge13

._crit_edge13:                                    ; preds = %46
  br label %50

50:                                               ; preds = %._crit_edge13, %2
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_pattern(i8* %0, i32* %1, i32* %2) #0 {
  %4 = call i16** @__ctype_b_loc() #7
  %5 = load i16*, i16** %4, align 8
  %6 = load i8, i8* %0, align 1
  %7 = sext i8 %6 to i32
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i16, i16* %5, i64 %8
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 2048
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i8, i8* %0, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 45
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %168

19:                                               ; preds = %14, %3
  %20 = call i16** @__ctype_b_loc() #7
  %21 = load i16*, i16** %20, align 8
  %22 = load i8, i8* %0, align 1
  %23 = sext i8 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i16, i16* %21, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 2048
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %118

30:                                               ; preds = %19
  %31 = call i16** @__ctype_b_loc() #7
  %32 = load i16*, i16** %31, align 8
  %33 = load i8, i8* %0, align 1
  %34 = sext i8 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %32, i64 %35
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 2048
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %.lr.ph11, label %58

.lr.ph11:                                         ; preds = %30
  br label %41

41:                                               ; preds = %.lr.ph11, %47
  %.019 = phi i8* [ %0, %.lr.ph11 ], [ %48, %47 ]
  %.028 = phi i32 [ 0, %.lr.ph11 ], [ %46, %47 ]
  %42 = mul nsw i32 10, %.028
  %43 = load i8, i8* %.019, align 1
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %42, %44
  %46 = sub nsw i32 %45, 48
  br label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds i8, i8* %.019, i32 1
  %49 = load i16*, i16** %31, align 8
  %50 = load i8, i8* %48, align 1
  %51 = sext i8 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16, i16* %49, i64 %52
  %54 = load i16, i16* %53, align 2
  %55 = zext i16 %54 to i32
  %56 = and i32 %55, 2048
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %41, label %._crit_edge12

._crit_edge12:                                    ; preds = %47
  %split13 = phi i32 [ %46, %47 ]
  %split14 = phi i8* [ %48, %47 ]
  br label %58

58:                                               ; preds = %._crit_edge12, %30
  %.02.lcssa = phi i32 [ %split13, %._crit_edge12 ], [ 0, %30 ]
  %.01.lcssa = phi i8* [ %split14, %._crit_edge12 ], [ %0, %30 ]
  store i32 %.02.lcssa, i32* %1, align 4
  %59 = load i8, i8* %.01.lcssa, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %1, align 4
  store i32 %62, i32* %2, align 4
  br label %168

63:                                               ; preds = %58
  %64 = load i8, i8* %.01.lcssa, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 45
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, i8* %.01.lcssa, i32 1
  br label %69

69:                                               ; preds = %67, %63
  %.1 = phi i8* [ %68, %67 ], [ %.01.lcssa, %63 ]
  br label %70

70:                                               ; preds = %69
  %71 = load i8, i8* %.1, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  store i32 -1, i32* %2, align 4
  br label %168

74:                                               ; preds = %70
  %75 = call i16** @__ctype_b_loc() #7
  %76 = load i16*, i16** %75, align 8
  %77 = load i8, i8* %.1, align 1
  %78 = sext i8 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i16, i16* %76, i64 %79
  %81 = load i16, i16* %80, align 2
  %82 = zext i16 %81 to i32
  %83 = and i32 %82, 2048
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %74
  br label %168

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86
  %88 = call i16** @__ctype_b_loc() #7
  %89 = load i16*, i16** %88, align 8
  %90 = load i8, i8* %.1, align 1
  %91 = sext i8 %90 to i32
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i16, i16* %89, i64 %92
  %94 = load i16, i16* %93, align 2
  %95 = zext i16 %94 to i32
  %96 = and i32 %95, 2048
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %.lr.ph18, label %115

.lr.ph18:                                         ; preds = %87
  br label %98

98:                                               ; preds = %.lr.ph18, %104
  %.216 = phi i8* [ %.1, %.lr.ph18 ], [ %105, %104 ]
  %.1315 = phi i32 [ 0, %.lr.ph18 ], [ %103, %104 ]
  %99 = mul nsw i32 10, %.1315
  %100 = load i8, i8* %.216, align 1
  %101 = sext i8 %100 to i32
  %102 = add nsw i32 %99, %101
  %103 = sub nsw i32 %102, 48
  br label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds i8, i8* %.216, i32 1
  %106 = load i16*, i16** %88, align 8
  %107 = load i8, i8* %105, align 1
  %108 = sext i8 %107 to i32
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i16, i16* %106, i64 %109
  %111 = load i16, i16* %110, align 2
  %112 = zext i16 %111 to i32
  %113 = and i32 %112, 2048
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %98, label %._crit_edge19

._crit_edge19:                                    ; preds = %104
  %split20 = phi i32 [ %103, %104 ]
  %split21 = phi i8* [ %105, %104 ]
  br label %115

115:                                              ; preds = %._crit_edge19, %87
  %.13.lcssa = phi i32 [ %split20, %._crit_edge19 ], [ 0, %87 ]
  %.2.lcssa = phi i8* [ %split21, %._crit_edge19 ], [ %.1, %87 ]
  store i32 %.13.lcssa, i32* %2, align 4
  %116 = load i8, i8* %.2.lcssa, align 1
  %117 = sext i8 %116 to i32
  br label %168

118:                                              ; preds = %19
  store i32 1, i32* %1, align 4
  %119 = getelementptr inbounds i8, i8* %0, i64 1
  br label %120

120:                                              ; preds = %118
  %121 = load i8, i8* %119, align 1
  %122 = icmp ne i8 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  store i32 -1, i32* %2, align 4
  br label %168

124:                                              ; preds = %120
  %125 = call i16** @__ctype_b_loc() #7
  %126 = load i16*, i16** %125, align 8
  %127 = load i8, i8* %119, align 1
  %128 = sext i8 %127 to i32
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i16, i16* %126, i64 %129
  %131 = load i16, i16* %130, align 2
  %132 = zext i16 %131 to i32
  %133 = and i32 %132, 2048
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %166

135:                                              ; preds = %124
  %136 = call i16** @__ctype_b_loc() #7
  %137 = load i16*, i16** %136, align 8
  %138 = load i8, i8* %119, align 1
  %139 = sext i8 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i16, i16* %137, i64 %140
  %142 = load i16, i16* %141, align 2
  %143 = zext i16 %142 to i32
  %144 = and i32 %143, 2048
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %.lr.ph, label %163

.lr.ph:                                           ; preds = %135
  br label %146

146:                                              ; preds = %.lr.ph, %152
  %.36 = phi i8* [ %119, %.lr.ph ], [ %153, %152 ]
  %.245 = phi i32 [ 0, %.lr.ph ], [ %151, %152 ]
  %147 = mul nsw i32 10, %.245
  %148 = load i8, i8* %.36, align 1
  %149 = sext i8 %148 to i32
  %150 = add nsw i32 %147, %149
  %151 = sub nsw i32 %150, 48
  br label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds i8, i8* %.36, i32 1
  %154 = load i16*, i16** %136, align 8
  %155 = load i8, i8* %153, align 1
  %156 = sext i8 %155 to i32
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i16, i16* %154, i64 %157
  %159 = load i16, i16* %158, align 2
  %160 = zext i16 %159 to i32
  %161 = and i32 %160, 2048
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %146, label %._crit_edge

._crit_edge:                                      ; preds = %152
  %split = phi i32 [ %151, %152 ]
  %split7 = phi i8* [ %153, %152 ]
  br label %163

163:                                              ; preds = %._crit_edge, %135
  %.24.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %135 ]
  %.3.lcssa = phi i8* [ %split7, %._crit_edge ], [ %119, %135 ]
  store i32 %.24.lcssa, i32* %2, align 4
  %164 = load i8, i8* %.3.lcssa, align 1
  %165 = sext i8 %164 to i32
  br label %168

166:                                              ; preds = %124
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167, %163, %123, %115, %85, %73, %61, %18
  %.0 = phi i32 [ %117, %115 ], [ 1, %85 ], [ 0, %73 ], [ 0, %61 ], [ %165, %163 ], [ 0, %167 ], [ 0, %123 ], [ 1, %18 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_str_pat(%struct.molecule_t* %0, i8* %1) #0 {
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0))
  %3 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0)
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %6 = icmp ne %struct.strand_t* %5, null
  br i1 %6, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %17
  %.01 = phi %struct.strand_t* [ %5, %.lr.ph ], [ %19, %17 ]
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @step(i8* %9, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 4
  %19 = load %struct.strand_t*, %struct.strand_t** %18, align 8
  %20 = icmp ne %struct.strand_t* %19, null
  br i1 %20, label %7, label %._crit_edge

._crit_edge:                                      ; preds = %17
  br label %21

21:                                               ; preds = %._crit_edge, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_str_range(%struct.molecule_t* %0, i32 %1, i32 %2) #0 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  br label %8

8:                                                ; preds = %5, %3
  %.02 = phi i32 [ %7, %5 ], [ %2, %3 ]
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2
  %10 = load %struct.strand_t*, %struct.strand_t** %9, align 8
  %11 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 1, %12
  br i1 %13, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %8
  br label %14

14:                                               ; preds = %.lr.ph, %23
  %.04 = phi %struct.strand_t* [ %10, %.lr.ph ], [ %26, %23 ]
  %.013 = phi i32 [ 1, %.lr.ph ], [ %24, %23 ]
  %15 = icmp sle i32 %1, %.013
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = icmp sle i32 %.013, %.02
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.04, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %18, %16, %14
  br label %23

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.013, 1
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.04, i32 0, i32 4
  %26 = load %struct.strand_t*, %struct.strand_t** %25, align 8
  %27 = load i32, i32* %11, align 8
  %28 = icmp sle i32 %24, %27
  br i1 %28, label %14, label %._crit_edge

._crit_edge:                                      ; preds = %23
  br label %29

29:                                               ; preds = %._crit_edge, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_res_pat(%struct.molecule_t* %0, i8* %1) #0 {
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0))
  %3 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0)
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %6 = icmp ne %struct.strand_t* %5, null
  br i1 %6, label %.lr.ph5, label %41

.lr.ph5:                                          ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph5, %37
  %.03 = phi %struct.strand_t* [ %5, %.lr.ph5 ], [ %39, %37 ]
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = and i32 1, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 0, %15
  br i1 %16, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %12
  br label %17

17:                                               ; preds = %.lr.ph, %31
  %indvars.iv2 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %31 ]
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 7
  %19 = load %struct.residue_t**, %struct.residue_t*** %18, align 8
  %20 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %19, i64 %indvars.iv2
  %21 = load %struct.residue_t*, %struct.residue_t** %20, align 8
  %22 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %21, i32 0, i32 4
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @step(i8* %23, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %21, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv2, 1
  %32 = load i32, i32* %13, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %indvars.iv.next, %33
  br i1 %34, label %17, label %._crit_edge

._crit_edge:                                      ; preds = %31
  br label %35

35:                                               ; preds = %._crit_edge, %12
  br label %36

36:                                               ; preds = %35, %7
  br label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 4
  %39 = load %struct.strand_t*, %struct.strand_t** %38, align 8
  %40 = icmp ne %struct.strand_t* %39, null
  br i1 %40, label %7, label %._crit_edge6

._crit_edge6:                                     ; preds = %37
  br label %41

41:                                               ; preds = %._crit_edge6, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_res_range(%struct.molecule_t* %0, i32 %1, i32 %2) #0 {
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %6 = sext i32 %1 to i64
  %7 = icmp ne %struct.strand_t* %5, null
  br i1 %7, label %.lr.ph5, label %49

.lr.ph5:                                          ; preds = %3
  br label %8

8:                                                ; preds = %.lr.ph5, %45
  %.03 = phi %struct.strand_t* [ %5, %.lr.ph5 ], [ %47, %45 ]
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = and i32 1, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %8
  %14 = icmp eq i32 %2, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  br label %19

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi i32 [ %17, %15 ], [ %2, %18 ]
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 0, %24
  br i1 %25, label %.lr.ph, label %43

.lr.ph:                                           ; preds = %19
  br label %26

26:                                               ; preds = %.lr.ph, %39
  %indvars.iv2 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %39 ]
  %27 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 7
  %28 = load %struct.residue_t**, %struct.residue_t*** %27, align 8
  %29 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %28, i64 %indvars.iv2
  %30 = load %struct.residue_t*, %struct.residue_t** %29, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv2, 1
  %31 = icmp sle i64 %6, %indvars.iv.next
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = icmp sle i64 %indvars.iv.next, %21
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %30, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %34, %32, %26
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %22, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %indvars.iv.next, %41
  br i1 %42, label %26, label %._crit_edge

._crit_edge:                                      ; preds = %39
  br label %43

43:                                               ; preds = %._crit_edge, %19
  br label %44

44:                                               ; preds = %43, %8
  br label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 4
  %47 = load %struct.strand_t*, %struct.strand_t** %46, align 8
  %48 = icmp ne %struct.strand_t* %47, null
  br i1 %48, label %8, label %._crit_edge6

._crit_edge6:                                     ; preds = %45
  br label %49

49:                                               ; preds = %._crit_edge6, %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match_atom_pat(%struct.molecule_t* %0, i8* %1) #0 {
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0))
  %3 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0)
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %6 = icmp ne %struct.strand_t* %5, null
  br i1 %6, label %.lr.ph12, label %60

.lr.ph12:                                         ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph12, %56
  %.010 = phi %struct.strand_t* [ %5, %.lr.ph12 ], [ %58, %56 ]
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = and i32 1, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 0, %15
  br i1 %16, label %.lr.ph8, label %54

.lr.ph8:                                          ; preds = %12
  br label %17

17:                                               ; preds = %.lr.ph8, %50
  %indvars.iv36 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next4, %50 ]
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 7
  %19 = load %struct.residue_t**, %struct.residue_t*** %18, align 8
  %20 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %19, i64 %indvars.iv36
  %21 = load %struct.residue_t*, %struct.residue_t** %20, align 8
  %22 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = and i32 1, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %21, i32 0, i32 15
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 0, %29
  br i1 %30, label %.lr.ph, label %48

.lr.ph:                                           ; preds = %26
  br label %31

31:                                               ; preds = %.lr.ph, %44
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %44 ]
  %32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %21, i32 0, i32 17
  %33 = load %struct.atom_t*, %struct.atom_t** %32, align 8
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i64 %indvars.iv5
  %35 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @step(i8* %36, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1
  %45 = load i32, i32* %27, align 8
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %indvars.iv.next, %46
  br i1 %47, label %31, label %._crit_edge

._crit_edge:                                      ; preds = %44
  br label %48

48:                                               ; preds = %._crit_edge, %26
  br label %49

49:                                               ; preds = %48, %17
  br label %50

50:                                               ; preds = %49
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv36, 1
  %51 = load i32, i32* %13, align 8
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %indvars.iv.next4, %52
  br i1 %53, label %17, label %._crit_edge9

._crit_edge9:                                     ; preds = %50
  br label %54

54:                                               ; preds = %._crit_edge9, %12
  br label %55

55:                                               ; preds = %54, %7
  br label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.010, i32 0, i32 4
  %58 = load %struct.strand_t*, %struct.strand_t** %57, align 8
  %59 = icmp ne %struct.strand_t* %58, null
  br i1 %59, label %7, label %._crit_edge13

._crit_edge13:                                    ; preds = %56
  br label %60

60:                                               ; preds = %._crit_edge13, %2
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aexpr2rexpr(i8* %0, i8* %1) #0 {
  %3 = getelementptr inbounds i8, i8* %1, i32 1
  store i8 94, i8* %1, align 1
  %4 = load i8, i8* %0, align 1
  %5 = icmp ne i8 %4, 0
  br i1 %5, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %24
  %.05 = phi i8* [ %3, %.lr.ph ], [ %.2, %24 ]
  %.012 = phi i8* [ %0, %.lr.ph ], [ %25, %24 ]
  %7 = load i8, i8* %.012, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 42
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %.05, i32 1
  store i8 46, i8* %.05, align 1
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8 42, i8* %11, align 1
  br label %23

13:                                               ; preds = %6
  %14 = load i8, i8* %.012, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 63
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, i8* %.05, i32 1
  store i8 46, i8* %.05, align 1
  br label %22

19:                                               ; preds = %13
  %20 = load i8, i8* %.012, align 1
  %21 = getelementptr inbounds i8, i8* %.05, i32 1
  store i8 %20, i8* %.05, align 1
  br label %22

22:                                               ; preds = %19, %17
  %.014 = phi i8* [ %.012, %17 ], [ %.012, %19 ]
  %.1 = phi i8* [ %18, %17 ], [ %21, %19 ]
  br label %23

23:                                               ; preds = %22, %10
  %.013 = phi i8* [ %.012, %10 ], [ %.014, %22 ]
  %.2 = phi i8* [ %12, %10 ], [ %.1, %22 ]
  br label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds i8, i8* %.013, i32 1
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %6, label %._crit_edge

._crit_edge:                                      ; preds = %24
  %split = phi i8* [ %.2, %24 ]
  br label %28

28:                                               ; preds = %._crit_edge, %2
  %.0.lcssa = phi i8* [ %split, %._crit_edge ], [ %3, %2 ]
  %29 = getelementptr inbounds i8, i8* %.0.lcssa, i32 1
  store i8 36, i8* %.0.lcssa, align 1
  store i8 0, i8* %29, align 1
  ret void
}

declare dso_local i8* @compile(i8*, i8*, i8*, i32) #1

declare dso_local i32 @step(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_str_pat(%struct.atom_t* %0, i8* %1) #0 {
  %3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5
  %4 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %5 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %4, i32 0, i32 9
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0))
  %7 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0)
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %6, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @step(i8* %9, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0))
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_str_range(%struct.atom_t* %0, i32 %1, i32 %2) #0 {
  %4 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5
  %5 = load %struct.residue_t*, %struct.residue_t** %4, align 8
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %5, i32 0, i32 9
  %7 = load %struct.strand_t*, %struct.strand_t** %6, align 8
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %7, i32 0, i32 3
  %9 = load %struct.molecule_t*, %struct.molecule_t** %8, align 8
  %10 = icmp eq i32 %2, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %9, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  br label %14

14:                                               ; preds = %11, %3
  %.03 = phi i32 [ %13, %11 ], [ %2, %3 ]
  %15 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %9, i32 0, i32 2
  %16 = load %struct.strand_t*, %struct.strand_t** %15, align 8
  %17 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %9, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 1, %18
  br i1 %19, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %14
  br label %20

20:                                               ; preds = %.lr.ph, %29
  %.015 = phi %struct.strand_t* [ %16, %.lr.ph ], [ %32, %29 ]
  %.024 = phi i32 [ 1, %.lr.ph ], [ %30, %29 ]
  %21 = icmp eq %struct.strand_t* %7, %.015
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = icmp sle i32 %1, %.024
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = icmp sle i32 %.024, %.03
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  br label %36

27:                                               ; preds = %24, %22
  br label %28

28:                                               ; preds = %27, %20
  br label %29

29:                                               ; preds = %28
  %30 = add nuw nsw i32 %.024, 1
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 4
  %32 = load %struct.strand_t*, %struct.strand_t** %31, align 8
  %33 = load i32, i32* %17, align 8
  %34 = icmp sle i32 %30, %33
  br i1 %34, label %20, label %._crit_edge

._crit_edge:                                      ; preds = %29
  br label %35

35:                                               ; preds = %._crit_edge, %14
  br label %36

36:                                               ; preds = %35, %26
  %.0 = phi i32 [ 1, %26 ], [ 0, %35 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_res_pat(%struct.atom_t* %0, i8* %1) #0 {
  %3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5
  %4 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0))
  %5 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0)
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %4, i32 0, i32 4
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @step(i8* %7, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0))
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_res_range(%struct.atom_t* %0, i32 %1, i32 %2) #0 {
  %4 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5
  %5 = load %struct.residue_t*, %struct.residue_t** %4, align 8
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %5, i32 0, i32 9
  %7 = load %struct.strand_t*, %struct.strand_t** %6, align 8
  %8 = icmp eq i32 %2, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %7, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  br label %13

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i32 [ %11, %9 ], [ %2, %12 ]
  %15 = sext i32 %1 to i64
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %7, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 0, %19
  br i1 %20, label %.lr.ph, label %40

.lr.ph:                                           ; preds = %13
  br label %21

21:                                               ; preds = %.lr.ph, %36
  %indvars.iv2 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %36 ]
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %7, i32 0, i32 7
  %23 = load %struct.residue_t**, %struct.residue_t*** %22, align 8
  %24 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %23, i64 %indvars.iv2
  %25 = load %struct.residue_t*, %struct.residue_t** %24, align 8
  %26 = icmp eq %struct.residue_t* %5, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = add nuw nsw i64 %indvars.iv2, 1
  %29 = icmp sle i64 %15, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = add nuw nsw i64 %indvars.iv2, 1
  %32 = icmp sle i64 %31, %16
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %41

34:                                               ; preds = %30, %27
  %indvars.iv4 = phi i64 [ %indvars.iv2, %30 ], [ %indvars.iv2, %27 ]
  br label %35

35:                                               ; preds = %34, %21
  %indvars.iv3 = phi i64 [ %indvars.iv4, %34 ], [ %indvars.iv2, %21 ]
  br label %36

36:                                               ; preds = %35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %37 = load i32, i32* %17, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %indvars.iv.next, %38
  br i1 %39, label %21, label %._crit_edge

._crit_edge:                                      ; preds = %36
  br label %40

40:                                               ; preds = %._crit_edge, %13
  br label %41

41:                                               ; preds = %40, %33
  %.0 = phi i32 [ 1, %33 ], [ 0, %40 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_in_atom_pat(%struct.atom_t* %0, i8* %1) #0 {
  call void @aexpr2rexpr(i8* %1, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0))
  %3 = call i8* @compile(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @rexpr, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0), i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 1, i64 0), i32 0)
  %4 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @step(i8* %5, i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expbuf, i64 0, i64 0))
  ret i32 %6
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
